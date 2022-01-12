/*
 * AudioSubsystem.cpp
 *
 *  Created on: Jan 4, 2022
 *      Author: hannes
 */

#include "audio_subsystem.hpp"

#include <stdint.h>
#include <queue>

#include <xstatus.h>
#include "xil_printf.h"
#include "sleep.h"
#include "xparameters.h"
#include "xgpiops.h"
#include "xiicps.h"
#include "xdmaps.h"
#include "xil_exception.h"
#include "xscugic.h"

#include "ssm2603.hpp"
#include "utility.hpp"

#define CODEC_DEV_ID				XPAR_PS7_I2C_0_DEVICE_ID
#define INTERRUPT_DEV_ID			XPAR_PS7_SCUGIC_0_DEVICE_ID
#define DMA_PS_DEV_ID				XPAR_XDMAPS_1_DEVICE_ID

// #define CODEC_BASEADDR				XPAR_PS7_I2C_0_BASEADDR
#define CODEC_SCL_FREQ_HZ			100000
#define CODEC_IIC_ADDR				0x1A // equal to 0b0011010

#define DMA_DONE_INTR_0				XPAR_XDMAPS_0_DONE_INTR_0
#define DMA_DONE_INTR_1				XPAR_XDMAPS_0_DONE_INTR_1
#define DMA_DONE_INTR_2				XPAR_XDMAPS_0_DONE_INTR_2
#define DMA_DONE_INTR_3				XPAR_XDMAPS_0_DONE_INTR_3
#define DMA_DONE_INTR_4				XPAR_XDMAPS_0_DONE_INTR_4
#define DMA_DONE_INTR_5				XPAR_XDMAPS_0_DONE_INTR_5
#define DMA_DONE_INTR_6				XPAR_XDMAPS_0_DONE_INTR_6
#define DMA_DONE_INTR_7				XPAR_XDMAPS_0_DONE_INTR_7
#define DMA_FAULT_INTR				XPAR_XDMAPS_0_FAULT_INTR

#define AUDIO_BASEADDR 				XPAR_AUDIOSTATION_0_BASEADDR
#define AUDIO_INPUT_BUFFER_INTR 	XPAR_FABRIC_AUDIOSTATION_0_IO_INPUT_BUFFER_HALF_INTR
#define AUDIO_OUTPUT_BUFFER_INTR 	XPAR_FABRIC_AUDIOSTATION_0_IO_OUTPUT_BUFFER_HALF_INTR

#define AUDIO_ENABLE_GPIO_DEV_ID	XPAR_PS7_GPIO_0_DEVICE_ID
#define AUDIO_ENABLE_GPIO_PIN		54U

namespace AudioSubsystem {
	/* public  members */
	XStatus init();
	bool newInputDataAvailable();
	XStatus readInputData(int32_t buffer[AUDIO_BUFFER_LEN]);
	XStatus writeOutputData(int32_t buffer[AUDIO_BUFFER_LEN]);

	/* private members */
	namespace {
		XStatus Status;
		XGpioPs AudioDataMoverEnable;
		XIicPs IICInst;
		XScuGic IntrInst;
		XDmaPs DmaInst;
		const unsigned int DmaChannel = 0;
		XDmaPs_Cmd DmaRead;
		XDmaPs_Cmd DmaWrite;
		bool DmaAudioChannelActive = false;

		audio_buffer input_buffer;
		audio_buffer output_buffer;
//		std::queue<int32_t> input_queue;
//		std::queue<int32_t> output_queue;
		bool i_new_input_data_available = false;

		XStatus setup_GPIOs();
		XStatus setup_audio_codec();
		XStatus setup_dma();
		XStatus setup_interrupts();
		void AudioInputHandler(void *);
		void AudioOutputHandler(void *);
		void DmaReadDoneHandler(unsigned int Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef);
		void DmaWriteDoneHandler(unsigned int Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef);
		XStatus codec_write_reg(u8 Address, u16 Data);
		XStatus codec_read_reg(u8 Address, u16 *Data);
	}

	/* implementation of public functons */
	XStatus init() {
		Status |= setup_GPIOs();
		if (Status != XST_SUCCESS) {
			print("Failed to initialize GPIO\n");
		}

		Status |= setup_audio_codec();
		if (Status != XST_SUCCESS) {
			print("Failed to initialize Audio\n");
		}

		Status |= setup_dma();
		if (Status != XST_SUCCESS) {
			print("Failed to initialize DMA\n");
		}

		Status |= setup_interrupts();
		if (Status != XST_SUCCESS) {
			print("Failed to initialize Interrupts\n");
		}

		for (int i = 0; i < AUDIO_BUFFER_LEN; ++i) {
//			output_queue.push(0);
			output_buffer[i] = 0;
		}

		/* Enable Audio */
		XGpioPs_WritePin(&AudioDataMoverEnable, AUDIO_ENABLE_GPIO_PIN, 0x1);
		print("Audio Subsystem initalized\n");

		return Status;
	}

	bool newInputDataAvailable() {
//		return (input_queue.size() >= AUDIO_BUFFER_LEN);
		return i_new_input_data_available;
	}

	XStatus readInputData(int32_t buffer[AUDIO_BUFFER_LEN]) {
		XScuGic_Disable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
		if(DmaAudioChannelActive) {
			return XST_FAILURE;
		}
//		for (int i = 0; i < AUDIO_BUFFER_LEN; i++) {
//			buffer[i] = input_queue.front();
//			input_queue.pop();
//		}
		for (int i = 0; i < AUDIO_BUFFER_LEN; i++) {
			buffer[i] = input_buffer[i];
		}
		i_new_input_data_available = false;
		XScuGic_Enable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
		return XST_SUCCESS;
	}

	XStatus writeOutputData(int32_t buffer[AUDIO_BUFFER_LEN]) {
		XScuGic_Disable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
		if(DmaAudioChannelActive) {
			return XST_FAILURE;
		}
//		for (int i = 0; i < AUDIO_BUFFER_LEN; i++) {
//			output_queue.push(buffer[i]);
//		}
		for (int i = 0; i < AUDIO_BUFFER_LEN; i++) {
			output_buffer[i] = buffer[i];
		}
		XScuGic_Enable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
		return XST_SUCCESS;
	}

	/* implementation of private functions */
	namespace {
		XStatus setup_GPIOs()
		{
			XStatus Status;
			XGpioPs_Config *ConfigPtr;

			ConfigPtr = XGpioPs_LookupConfig(AUDIO_ENABLE_GPIO_DEV_ID);
			Status = XGpioPs_CfgInitialize(&AudioDataMoverEnable, ConfigPtr, ConfigPtr->BaseAddr);
			if (Status != XST_SUCCESS) {
				return XST_FAILURE;
			}

			XGpioPs_SetDirectionPin(&AudioDataMoverEnable, AUDIO_ENABLE_GPIO_PIN, 1);
			XGpioPs_SetOutputEnablePin(&AudioDataMoverEnable, AUDIO_ENABLE_GPIO_PIN, 1);

			/* Set the GPIO output to be low. */
			XGpioPs_WritePin(&AudioDataMoverEnable, AUDIO_ENABLE_GPIO_PIN, 0x0);

			return XST_SUCCESS;
		}

		XStatus setup_audio_codec()
		{
			XStatus Status;
			XIicPs_Config *IICConfig;
			static u16 TxData;
			static u16 RxData;
			u8 test = 0;

			IICConfig = XIicPs_LookupConfig(CODEC_DEV_ID);
			if (IICConfig == NULL)
				return XST_FAILURE;

			Status = XIicPs_CfgInitialize(&IICInst, IICConfig, IICConfig->BaseAddress);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			Status = XIicPs_SelfTest(&IICInst);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			// Reset
			TxData = 0x0000;
			Status = codec_write_reg(CODEC_SWRESET_ADDR, TxData);

			// Enable All Power Stages neseccary excluding the OUT Bin
			TxData = 0xFF & ~CODEC_PWR_PWROFF_MASK \
					& ~CODEC_PWR_CLKOUT_MASK \
					/*& ~CODEC_PWR_OSC_MASK*/ \
					& ~CODEC_PWR_DAC_MASK \
					& ~CODEC_PWR_ADC_MASK \
					/* & ~CODEC_PWR_MIC_MASK \ */
					& ~CODEC_PWR_LINEIN_MASK;
			test = TxData;

			Status = codec_write_reg(CODEC_PWR_ADDR, TxData);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			RxData = 0;
			Status = codec_read_reg(CODEC_PWR_ADDR, &RxData);
			if ((Status != XST_SUCCESS) || (test != RxData))
				return XST_FAILURE;

			TxData = 0b010111 \
					& ~CODEC_LADCIN_LINMUTE_MASK; /* \
					| CODEC_LADCIN_LRINBOTH_MASK; */
			Status = codec_write_reg(CODEC_LADCIN_ADDR, TxData);
			Status |= codec_write_reg(CODEC_RADCIN_ADDR, TxData);
			TxData = 0b1111001; /* \
					| CODEC_LDACOUT_LRHPBOTH_MASK; */
			Status |= codec_write_reg(CODEC_LDACOUT_ADDR, TxData);
			Status |= codec_write_reg(CODEC_RDACOUT_ADDR, TxData);

			TxData = 0x0000 \
					| CODEC_ANAPATH_DACSEL_MASK
					| CODEC_ANAPATH_MUTEMIC_MASK;
			Status |= codec_write_reg(CODEC_ANAPATH_ADDR, TxData);

			TxData = 0x0000;
			Status |= codec_write_reg(CODEC_DIGPATH_ADDR, TxData);

			TxData = 0b1000;
			Status |= codec_write_reg(CODEC_DIGIF_ADDR, TxData);

			TxData = (0b0111 << 2);
			Status |= codec_write_reg(CODEC_SAMPLE_ADDR, TxData);

		//	TxData = 0b001111011;
		//	Status |= codec_write_reg(CODEC_ALCCTRL1_ADDR, TxData);
		//
		//	TxData = 0b000110010;
		//	Status |= codec_write_reg(CODEC_ALCCTRL2_ADDR, TxData);
		//
		//	TxData = 0b000000000;
		//	Status |= codec_write_reg(CODEC_NSGATE_ADDR, TxData);

			// Datasheet Page 11 --> Wait until Coupling Capacitor is charged
			usleep(500000);

			// Set Active in R9
			Status |= codec_read_reg(CODEC_ACTIVE_ADDR, &TxData);
			TxData |= CODEC_ACTIVE_MASK;
			Status |= codec_write_reg(CODEC_ACTIVE_ADDR, TxData);

			// Set Out in R6
			Status |= codec_read_reg(CODEC_PWR_ADDR, &TxData);
			TxData &= ~CODEC_PWR_OUT_MASK;
			Status |= codec_write_reg(CODEC_PWR_ADDR, TxData);

			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			return XST_SUCCESS;
		}

		XStatus setup_dma()
		{
			XStatus Status;
			XDmaPs_Config *DmaConfig;

			memset(&DmaRead, 0, sizeof(XDmaPs_Cmd));
			memset(&DmaWrite, 0, sizeof(XDmaPs_Cmd));

			DmaRead.ChanCtrl.SrcBurstSize = 4;
			DmaRead.ChanCtrl.SrcBurstLen = AUDIO_BUFFER_LEN;
			DmaRead.ChanCtrl.SrcInc = 0;
			DmaRead.ChanCtrl.DstBurstSize = 4;
			DmaRead.ChanCtrl.DstBurstLen = AUDIO_BUFFER_LEN;
			DmaRead.ChanCtrl.DstInc = 1;
			DmaRead.BD.SrcAddr = (u32) AUDIO_BASEADDR;
			DmaRead.BD.DstAddr = (u32) input_buffer;
			DmaRead.BD.Length = AUDIO_BUFFER_LEN * sizeof(int);

			DmaWrite.ChanCtrl.SrcBurstSize = 4;
			DmaWrite.ChanCtrl.SrcBurstLen = AUDIO_BUFFER_LEN;
			DmaWrite.ChanCtrl.SrcInc = 1;
			DmaWrite.ChanCtrl.DstBurstSize = 4;
			DmaWrite.ChanCtrl.DstBurstLen = AUDIO_BUFFER_LEN;
			DmaWrite.ChanCtrl.DstInc = 0;
			DmaWrite.BD.SrcAddr = (u32) output_buffer;
			DmaWrite.BD.DstAddr = (u32) AUDIO_BASEADDR;
			DmaWrite.BD.Length = AUDIO_BUFFER_LEN * sizeof(int);

			DmaConfig = XDmaPs_LookupConfig(DMA_PS_DEV_ID);
			if (DmaConfig == NULL)
				return XST_FAILURE;

			Status = XDmaPs_CfgInitialize(&DmaInst, DmaConfig, DmaConfig->BaseAddress);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			return XST_SUCCESS;
		}

		XStatus setup_interrupts()
		{
			XStatus Status;
			XScuGic_Config *IntrConfig;

			Xil_ExceptionInit();

			/*
			 * Initialize the interrupt controller driver so that it is ready to
			 * use.
			 */
			IntrConfig = XScuGic_LookupConfig(INTERRUPT_DEV_ID);
			if (NULL == IntrConfig)
				return XST_FAILURE;

			Status = XScuGic_CfgInitialize(&IntrInst, IntrConfig,
							   IntrConfig->CpuBaseAddress);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			/*
			 * Connect the interrupt controller interrupt handler to the hardware
			 * interrupt handling logic in the processor.
			 */
			Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_IRQ_INT,
					 (Xil_ExceptionHandler) XScuGic_InterruptHandler,
					 &IntrInst);

			/*
			 * 0x1 -> LEVEL HIGH Trigger
			 * 0x3 -> RAISING EDGE Trigger
			 */
			XScuGic_SetPriorityTriggerType(&IntrInst, AUDIO_INPUT_BUFFER_INTR, 0, 0x1);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			Status = XScuGic_Connect(&IntrInst, AUDIO_INPUT_BUFFER_INTR, AudioInputHandler, NULL);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			XScuGic_SetPriorityTriggerType(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR, 0, 0x1);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			Status = XScuGic_Connect(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR, AudioOutputHandler, NULL);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			Status = XScuGic_Connect(&IntrInst, DMA_FAULT_INTR, (Xil_InterruptHandler) XDmaPs_FaultISR, (void *) &DmaInst);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			Status = XScuGic_Connect(&IntrInst, DMA_DONE_INTR_0, (Xil_InterruptHandler) XDmaPs_DoneISR_0, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_1, (Xil_InterruptHandler) XDmaPs_DoneISR_1, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_2, (Xil_InterruptHandler) XDmaPs_DoneISR_2, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_3, (Xil_InterruptHandler) XDmaPs_DoneISR_3, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_4, (Xil_InterruptHandler) XDmaPs_DoneISR_4, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_5, (Xil_InterruptHandler) XDmaPs_DoneISR_5, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_6, (Xil_InterruptHandler) XDmaPs_DoneISR_6, (void *) &DmaInst);
			Status |= XScuGic_Connect(&IntrInst, DMA_DONE_INTR_7, (Xil_InterruptHandler) XDmaPs_DoneISR_7, (void *) &DmaInst);
			if (Status != XST_SUCCESS)
				return XST_FAILURE;

			XScuGic_Enable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
			XScuGic_Enable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
			XScuGic_Enable(&IntrInst, DMA_FAULT_INTR);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_0);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_1);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_2);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_3);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_4);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_5);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_6);
			XScuGic_Enable(&IntrInst, DMA_DONE_INTR_7);

			Xil_ExceptionEnable();

			return XST_SUCCESS;
		}

		void AudioInputHandler(void *)
		{
			XStatus Status;
			DmaAudioChannelActive = true;
			XScuGic_Disable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
			XScuGic_Disable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
			XDmaPs_SetDoneHandler(&DmaInst, DmaChannel, (XDmaPsDoneHandler) DmaReadDoneHandler, (void *) input_buffer);
			Status = XDmaPs_Start(&DmaInst, DmaChannel, &DmaRead, 0);
			if (Status != XST_SUCCESS)
				print("DMA Start not successfull\n\r");
		}

		void AudioOutputHandler(void *)
		{
			XStatus Status;
			DmaAudioChannelActive = true;
			XScuGic_Disable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
			XScuGic_Disable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
			XDmaPs_SetDoneHandler(&DmaInst, DmaChannel, (XDmaPsDoneHandler) DmaWriteDoneHandler, (void *) output_buffer);
			Status = XDmaPs_Start(&DmaInst, DmaChannel, &DmaWrite, 0);
			if (Status != XST_SUCCESS)
				print("DMA Start not successfull\n\r");
		}

		void DmaReadDoneHandler(unsigned int Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef)
		{
//			for (int i = 0; i < AUDIO_BUFFER_LEN; ++i) {
//				output_buffer[i] = input_buffer[i];
//			}

//			for (int i = 0; i < AUDIO_BUFFER_LEN; ++i) {
//				input_queue.push(input_buffer[i]);
//			}
//			if(output_queue.size() >= AUDIO_BUFFER_LEN) {
//				for (int i = 0; i < AUDIO_BUFFER_LEN; ++i) {
//					output_buffer[i] = output_queue.front();
//					output_queue.pop();
//				}
//			} else {
//				for (int i = 0; i < AUDIO_BUFFER_LEN; ++i) {
//					output_buffer[i] = 0;
//				}
//			}
			i_new_input_data_available = true;
			DmaAudioChannelActive = false;
			XScuGic_Enable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
			XScuGic_Enable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
		}

		void DmaWriteDoneHandler(unsigned int Channel, XDmaPs_Cmd *DmaCmd, void *CallbackRef)
		{
			DmaAudioChannelActive = false;
			XScuGic_Enable(&IntrInst, AUDIO_INPUT_BUFFER_INTR);
			XScuGic_Enable(&IntrInst, AUDIO_OUTPUT_BUFFER_INTR);
		}

		XStatus codec_write_reg(u8 Address, u16 Data)
		{
			unsigned char u8TxData[2];
			s32 Status;

			u8TxData[0] = (Address << 1) | ((Data >> 8) & 0x01);    //register address is 7 bit
			u8TxData[1] = Data & 0xFF;

			// disable sending STOP bit, 7-bit address mode
			XIicPs_SetOptions(&IICInst, XIICPS_7_BIT_ADDR_OPTION);

			Status = XIicPs_MasterSendPolled(&IICInst, u8TxData, 2, CODEC_IIC_ADDR);
			if (Status != XST_SUCCESS) {
				xil_printf("IIC write to address 0x%08x failed\r\n",u8TxData);
				return XST_FAILURE;
			}

			while(XIicPs_BusIsBusy(&IICInst)); // Wait for I2C to finish

			return XST_SUCCESS;
		}

		XStatus codec_read_reg(u8 Address, u16 *Data)
		{
			unsigned char u8RxData[2];
			unsigned char u8TxData[1];
			s32 Status;

			u8TxData[0] = Address << 1;    //register address is 7 bit

			// disable sending STOP bit, 7-bit address mode
			XIicPs_SetOptions(&IICInst, XIICPS_REP_START_OPTION | XIICPS_7_BIT_ADDR_OPTION);

			Status = XIicPs_MasterSendPolled(&IICInst, u8TxData, 1, CODEC_IIC_ADDR);
			if (Status != XST_SUCCESS) {
			   xil_printf("IIC write to address 0x%08x failed\r\n", u8TxData);
			   return XST_FAILURE;
			}
			XIicPs_ClearOptions(&IICInst, XIICPS_REP_START_OPTION);    //enable sending STOP bit after data transfer
			Status = XIicPs_MasterRecvPolled(&IICInst, u8RxData, 2, CODEC_IIC_ADDR);
			if (Status != XST_SUCCESS) {
				xil_printf("IIC read from address 0x%08x failed\r\n", u8TxData);
				return XST_FAILURE;
			}
			while(XIicPs_BusIsBusy(&IICInst)); // Wait for I2C to finish
			u8RxData[1] &= 0x01;
			*Data = ( (u8RxData[1] << 8) | u8RxData[0] );

			return XST_SUCCESS;
		}
	};
};
