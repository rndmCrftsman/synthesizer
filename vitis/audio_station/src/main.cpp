#include "platform.h"
#include <xil_printf.h>
#include <xparameters.h>
#include "xtime_l.h"

#include "audio_subsystem.hpp"
#include "utility.hpp"

int main(int argc, char **argv) {
	XStatus Status;
	XTime tStart;
	XTime tEnd;

	init_platform();

	print("Welcome to Audio Station v0.5\n");

	Status = AudioSubsystem::init();
	if(Status != XST_SUCCESS) {
		print("Could not initialize Audio Subsystem\n");
	}

	while(1) {
		;
	}

	cleanup_platform();
	return 0;
}
