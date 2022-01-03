vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_8
vlib questa_lib/msim/processing_system7_vip_v1_0_10
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/xlconcat_v2_1_4
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/fifo_generator_v13_2_5
vlib questa_lib/msim/axi_data_fifo_v2_1_21
vlib questa_lib/msim/axi_register_slice_v2_1_22
vlib questa_lib/msim/axi_protocol_converter_v2_1_22

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_8 questa_lib/msim/axi_vip_v1_1_8
vmap processing_system7_vip_v1_0_10 questa_lib/msim/processing_system7_vip_v1_0_10
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap fifo_generator_v13_2_5 questa_lib/msim/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_21 questa_lib/msim/axi_data_fifo_v2_1_21
vmap axi_register_slice_v2_1_22 questa_lib/msim/axi_register_slice_v2_1_22
vmap axi_protocol_converter_v2_1_22 questa_lib/msim/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"/usr/local/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/usr/local/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/usr/local/Xilinx/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_10 -64 -sv -L axi_vip_v1_1_8 -L processing_system7_vip_v1_0_10 -L xilinx_vip "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/audio_station_overview/ip/audio_station_overview_processing_system7_0_0/sim/audio_station_overview_processing_system7_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/audio_station_overview/ip/audio_station_overview_rst_ps7_0_125M_0/sim/audio_station_overview_rst_ps7_0_125M_0.vhd" \

vlog -work xil_defaultlib -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/audio_station_overview/ipshared/5d29/AudioStation.v" \
"../../../bd/audio_station_overview/ip/audio_station_overview_AudioStation_0_3/sim/audio_station_overview_AudioStation_0_3.v" \

vlog -work xlconcat_v2_1_4 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/audio_station_overview/ip/audio_station_overview_xlconcat_0_0/sim/audio_station_overview_xlconcat_0_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -64 -93 \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_21 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_protocol_converter_v2_1_22 -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/ec67/hdl" "+incdir+../../../../audio_station.srcs/sources_1/bd/audio_station_overview/ipshared/34f8/hdl" "+incdir+/usr/local/Xilinx/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/audio_station_overview/ip/audio_station_overview_auto_pc_0/sim/audio_station_overview_auto_pc_0.v" \
"../../../bd/audio_station_overview/sim/audio_station_overview.v" \

vlog -work xil_defaultlib \
"glbl.v"

