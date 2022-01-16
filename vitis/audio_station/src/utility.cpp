/*
 * utility.cpp
 *
 *  Created on: Jan 5, 2022
 *      Author: hannes
 */

#include "utility.hpp"

#include <stdint.h>

namespace Utility {
	void do_nothing() {
		;
	}

	float convertInt16ToFloat(int16_t value) {
		return (float) value / (-INT16_MIN);
	}

	int16_t convertFloatToInt16(float value) {
		return (int16_t) (value * -INT16_MIN);
	}

	float convertInt24ToFloat(int32_t value) {
		if(value & 0x800000) {
			value |= ~0xFFFFFF;
		}
		return (float) value / (INT24_ABS_MAX);
	}

	int32_t convertFloatToInt24(float value) {
		return (int32_t) (value * INT24_ABS_MAX);
	}
}

