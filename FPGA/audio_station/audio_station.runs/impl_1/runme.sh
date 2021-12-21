#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/usr/local/Xilinx/Vitis/2020.2/bin:/usr/local/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/usr/local/Xilinx/Vivado/2020.2/bin
else
  PATH=/usr/local/Xilinx/Vitis/2020.2/bin:/usr/local/Xilinx/Vivado/2020.2/ids_lite/ISE/bin/lin64:/usr/local/Xilinx/Vivado/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .write_bitstream.begin.rst
EAStep vivado -log audio_station_overview_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source audio_station_overview_wrapper.tcl -notrace


