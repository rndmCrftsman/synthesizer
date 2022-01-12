#include "platform.h"
#include <xil_printf.h>
#include <xparameters.h>
#include "xtime_l.h"

#include "audio_subsystem.hpp"
#include "utility.hpp"

int main(int argc, char **argv) {
	XStatus Status;
	int32_t main_buffer[AUDIO_BUFFER_LEN];
	bool temp = false;
	uint16_t counter = 0;
	XTime tStart;
	XTime tEnd;

	init_platform();

	print("Welcome to Audio Station v0.5\n");

	Status = AudioSubsystem::init();
	if(Status != XST_SUCCESS) {
		print("Could not initialize Audio Subsystem\n");
	}

	while(1) {
//		temp = false;
		if(AudioSubsystem::newInputDataAvailable()) {
			XTime_GetTime(&tStart);
			AudioSubsystem::readInputData(main_buffer);
			AudioSubsystem::writeOutputData(main_buffer);
//			temp = true;
//			counter++;
			XTime_GetTime(&tEnd);
//			print("T\n");
//			xil_printf("%li us\n", tEnd - tStart); //(COUNTS_PER_SECOND/1000000));
		}
//		if(!temp){
//			Utility::do_nothing();
//		}
//		if(counter >= 1000) {
////			xil_printf("Pt: %i\n", tEnd - tStart);
//			counter = 0;
//		}
		while(counter < 8000) {
			counter++;
		}
		counter = 0;
	}

	cleanup_platform();
	return 0;
}
