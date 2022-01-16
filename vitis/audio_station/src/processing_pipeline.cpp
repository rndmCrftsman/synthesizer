/*
 * processing_pipeline.cpp
 *
 *  Created on: Jan 15, 2022
 *      Author: Hannes Stoll
 */

#include "processing_pipeline.hpp"

#include <stdint.h>
#include <vector>

#include <xstatus.h>
#include <xparameters.h>
#include <xil_exception.h>
#include <xil_printf.h>

#include "utility.hpp"


namespace ProcessingPipeline {
	/* public  members */
	XStatus registerProcessingModule();
	XStatus processBuffer(audio_buffer buffer);

	/* private members */
	namespace {
		XStatus Status;
	}

	/* implementation of public functons */
	XStatus registerProcessingModule() {
		Status = XST_SUCCESS;

		// print("Processing Module registered\n");

		return Status;
	}

	XStatus processBuffer(audio_buffer buffer) {
		return XST_SUCCESS;
	}

	/* implementation of private functions */
	namespace {

	};
};
