/*
 * processing_pipeline.hpp
 *
 *  Created on: Jan 15, 2022
 *      Author: Hannes Stoll
 */

#ifndef __HPP_LOGGER
#define __HPP_LOGGER

#include <stdint.h>
#include <xstatus.h>

#define LOG_MAX_STRLEN

typedef enum {
	CRITICAL = 0,
	ERROR = 1,
	WARNING = 2,
	INFO = 3,
	DEBUG = 4
} LogLevel;

namespace Logger {
	void setLevel(LogLevel level);
	LogLevel level();
	XStatus log(int level, char message[]);
	bool messagesToPrint();
	XStatus nextMessage(char buffer[LOG_MAX_STRLEN]);
	XStatus printNextMessage();
}

#endif // __HPP_LOGGER
