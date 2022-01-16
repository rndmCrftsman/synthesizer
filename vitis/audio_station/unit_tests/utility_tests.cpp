/*
 * utility_tests.cpp
 *
 *  Created on: Jan 6, 2022
 *      Author: hannes
 */

#include "catch.hpp"
#include "../src/utility.hpp"

TEST_CASE("24bit Conversion", "[utility]") {
	REQUIRE(Utility::convertFloatToInt24(Utility::convertInt24ToFloat(15896)) == 15896);
}

TEST_CASE("24bit Minimum", "[utility]") {
	REQUIRE(Utility::convertInt24ToFloat(INT24_MIN) == -1);
}

TEST_CASE("24bit Half", "[utility]") {
	REQUIRE(Utility::convertFloatToInt24(0.5) == (INT24_MAX+1)/2);
}