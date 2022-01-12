/*
 * utility.hpp
 *
 *  Created on: Jan 5, 2022
 *      Author: hannes
 */

#ifndef SRC_UTILITY_HPP_
#define SRC_UTILITY_HPP_

#include <stdint.h>

namespace Utility {
	void do_nothing();
	float convertInt16ToFloat(int16_t value);
	int16_t convertFloatToInt16(float value);
	float convertInt24ToFloat(int32_t value);
	int32_t convertFloatToInt24(float value);
}


#endif /* SRC_UTILITY_HPP_ */
