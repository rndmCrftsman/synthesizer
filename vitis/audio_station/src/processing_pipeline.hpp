/*
 * AudioSubsystem.cpp
 *
 *  Created on: Jan 4, 2022
 *      Author: hannes
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
