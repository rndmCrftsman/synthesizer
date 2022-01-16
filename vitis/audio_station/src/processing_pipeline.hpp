/*
 * processing_pipeline.hpp
 *
 *  Created on: Jan 15, 2022
 *      Author: Hannes Stoll
 */

#ifndef __HPP_PROCESSINGPIPELINE
#define __HPP_PROCESSINGPIPELINE

#include <stdint.h>
#include <xstatus.h>

#include "audio_subsystem.hpp"

namespace ProcessingPipeline {
	XStatus registerProcessingModule();
	XStatus processBuffer(audio_buffer buffer);
}

#endif // __HPP_PROCESSINGPIPELINE
