/*
 * logger_tests.cpp
 *
 *  Created on: Jan 16, 2022
 *      Author: hannes
 */

#include "catch.hpp"
#include "../src/logger.hpp"

#define XST_SUCCESS 0L

TEST_CASE("Restricted Levels", "[logger]") {
	LogLevel level = CRITICAL;
	REQUIRE(level == LogLevel::CRITICAL);
	level = ERROR;
	REQUIRE(level == LogLevel::ERROR);
	level = WARNING;
	REQUIRE(level == LogLevel::WARNING);
	level = INFO;
	REQUIRE(level == LogLevel::INFO);
	level = DEBUG;
	REQUIRE(level == LogLevel::DEBUG);
}

TEST_CASE("Read Level", "[logger]") {
	REQUIRE(Logger::level() == LogLevel::INFO);
}

TEST_CASE("Set Critical Level", "[logger]") {
	Logger::setLevel(LogLevel::CRITICAL);
	REQUIRE(Logger::level() == LogLevel::CRITICAL);
}

TEST_CASE("Set Error Level", "[logger]") {
	Logger::setLevel(LogLevel::ERROR);
	REQUIRE(Logger::level() == LogLevel::ERROR);
}

TEST_CASE("Set Warning Level", "[logger]") {
	Logger::setLevel(LogLevel::WARNING);
	REQUIRE(Logger::level() == LogLevel::WARNING);
}

TEST_CASE("Set Info Level", "[logger]") {
	Logger::setLevel(LogLevel::INFO);
	REQUIRE(Logger::level() == LogLevel::INFO);
}

TEST_CASE("Set Debug Level", "[logger]") {
	Logger::setLevel(LogLevel::DEBUG);
	REQUIRE(Logger::level() == LogLevel::DEBUG);
}