# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/hannes/Entwicklung/synthesizer/vitis/audio_station_overview_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/hannes/Entwicklung/synthesizer/vitis/audio_station_overview_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {audio_station_overview_wrapper}\
-hw {/home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station_overview_wrapper.xsa}\
-fsbl-target {psu_cortexa53_0} -out {/home/hannes/Entwicklung/synthesizer/vitis}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform active {audio_station_overview_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate
bsp config stdin "ps7_uart_1"
bsp reload
platform generate
platform active {audio_station_overview_wrapper}
platform config -updatehw {/home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station_overview_wrapper.xsa}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
bsp setlib -name xilffs -ver 4.4
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_ps7_cortexa9_0,zynq_fsbl 
platform active {audio_station_overview_wrapper}
platform config -updatehw {/home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station_overview_wrapper.xsa}
platform generate
platform config -updatehw {/home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station_overview_wrapper.xsa}
platform generate -domains 
platform active {audio_station_overview_wrapper}
domain active {zynq_fsbl}
bsp reload
domain active {standalone_ps7_cortexa9_0}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
platform clean
platform generate
