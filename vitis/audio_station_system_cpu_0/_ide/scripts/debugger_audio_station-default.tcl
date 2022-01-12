# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/hannes/Entwicklung/synthesizer/vitis/audio_station_system_cpu_0/_ide/scripts/debugger_audio_station-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/hannes/Entwicklung/synthesizer/vitis/audio_station_system_cpu_0/_ide/scripts/debugger_audio_station-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zybo Z7 210351A786B4A" && level==0 && jtag_device_ctx=="jsn-Zybo Z7-210351A786B4A-23727093-0"}
fpga -file /home/hannes/Entwicklung/synthesizer/vitis/audio_station/_ide/bitstream/audio_station_overview_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/hannes/Entwicklung/synthesizer/vitis/audio_station_overview_wrapper/export/audio_station_overview_wrapper/hw/audio_station_overview_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/hannes/Entwicklung/synthesizer/vitis/audio_station/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/hannes/Entwicklung/synthesizer/vitis/audio_station/Debug/audio_station.elf
configparams force-mem-access 0
bpadd -addr &main
