/*
 * utility_tests.cpp
 *
 *  Created on: Jan 6, 2022
 *      Author: hannes
 */

#include "catch.hpp"

TEST_CASE("TESTING 1", "[trash]") {
	REQUIRE(0 == 0);
}

TEST_CASE("TESTING 2", "[nope]") {
	REQUIRE(3 == 3);
}
