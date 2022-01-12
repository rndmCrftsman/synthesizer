/*
 * AudioSubsystem.cpp
 *
 *  Created on: Jan 4, 2022
 *      Author: hannes
 */

#ifndef __HPP_AUDIOSUBSYSTEM
#define __HPP_AUDIOSUBSYSTEM

#include <stdint.h>
#include <xstatus.h>

#define AUDIO_BUFFER_LEN 16

typedef int32_t	audio_buffer[AUDIO_BUFFER_LEN];

namespace AudioSubsystem {
	XStatus init();
	bool newInputDataAvailable();
	XStatus readInputData(int32_t buffer[AUDIO_BUFFER_LEN]);
	XStatus writeOutputData(int32_t buffer[AUDIO_BUFFER_LEN]);
}

#endif // __HPP_AUDIOSUBSYSTEM
