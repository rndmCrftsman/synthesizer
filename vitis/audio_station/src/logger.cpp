/*
 * processing_pipeline.cpp
 *
 *  Created on: Jan 15, 2022
 *      Author: Hannes Stoll
 */

#include "logger.hpp"

#include <stdint.h>
//#include <array>

#include <xstatus.h>
//#include <xparameters.h>
//#include <xil_exception.h>
#ifndef UNIT_TEST
#include <xil_printf.h>
#else
#include <stdio.h>
#endif

namespace Logger {
	/* public  members */
	void setLevel(LogLevel level);
	LogLevel level();
	XStatus log(int level, char message[]);
	bool messagesToPrint();
	XStatus nextMessage(char buffer[LOG_MAX_STRLEN]);
	XStatus printNextMessage();

	/* private members */
	namespace {
//		XStatus Status;
		LogLevel i_level = INFO;
	}

	/* implementation of public functons */
	LogLevel level() {
		return i_level;
	}

	void setLevel(LogLevel level) {
		i_level = level;
	}

	/* implementation of private functions */
	namespace {

	};
};
