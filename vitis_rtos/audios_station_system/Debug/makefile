#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = /home/hannes/Entwicklung/synthesizer/vitis/audio_station_platform/export/audio_station_platform/audio_station_platform.xpfm
SYS_CONFIG = audio_station_platform
DOMAINS = freertos10_xilinx_domain
BIF_PATH = /home/hannes/Entwicklung/synthesizer/vitis/audios_station_system/Debug/system.bif

BITSTREAM_PATH = /home/hannes/Entwicklung/synthesizer/vitis/audios_station_main_app/_ide/bitstream/audio_station_overview_wrapper.bit
SD_FILES = --elf /home/hannes/Entwicklung/synthesizer/vitis/audios_station_main_app/Debug/audios_station_main_app.elf,ps7_cortexa9_0

GENERATE_BIF_XSCT_CMD = ${GENERATE_BIF} -xpfm ${XPFM_PATH} -domains ${DOMAINS} -bifpath ${BIF_PATH}

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	-@echo Executing command \'${GENERATE_BIF_XSCT_CMD}\' on XSCT
	-@echo "connect -u TCP:localhost:46187; tcf send_command $$::xsdb::curchan xsdb eval s es [list \"${GENERATE_BIF_XSCT_CMD}\"]" | xsct
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


