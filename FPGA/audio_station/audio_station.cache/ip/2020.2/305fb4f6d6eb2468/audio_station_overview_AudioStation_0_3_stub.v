// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jan 13 13:15:48 2022
// Host        : pop-os running 64-bit Pop!_OS 21.10
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_station_overview_AudioStation_0_3_stub.v
// Design      : audio_station_overview_AudioStation_0_3
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "AudioStation,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(io_enable, io_axi_aw_valid, io_axi_aw_ready, 
  io_axi_aw_payload_addr, io_axi_aw_payload_id, io_axi_aw_payload_region, 
  io_axi_aw_payload_len, io_axi_aw_payload_size, io_axi_aw_payload_burst, 
  io_axi_aw_payload_lock, io_axi_aw_payload_cache, io_axi_aw_payload_qos, 
  io_axi_aw_payload_prot, io_axi_w_valid, io_axi_w_ready, io_axi_w_payload_data, 
  io_axi_w_payload_strb, io_axi_w_payload_last, io_axi_b_valid, io_axi_b_ready, 
  io_axi_b_payload_id, io_axi_b_payload_resp, io_axi_ar_valid, io_axi_ar_ready, 
  io_axi_ar_payload_addr, io_axi_ar_payload_id, io_axi_ar_payload_region, 
  io_axi_ar_payload_len, io_axi_ar_payload_size, io_axi_ar_payload_burst, 
  io_axi_ar_payload_lock, io_axi_ar_payload_cache, io_axi_ar_payload_qos, 
  io_axi_ar_payload_prot, io_axi_r_valid, io_axi_r_ready, io_axi_r_payload_data, 
  io_axi_r_payload_id, io_axi_r_payload_resp, io_axi_r_payload_last, 
  io_input_buffer_half, io_input_buffer_full, io_output_buffer_half, 
  io_output_buffer_empty, io_bclk, io_mclk, io_pblrc, io_pbdat, io_reclrc, io_recdat, clk, resetn)
/* synthesis syn_black_box black_box_pad_pin="io_enable,io_axi_aw_valid,io_axi_aw_ready,io_axi_aw_payload_addr[31:0],io_axi_aw_payload_id[11:0],io_axi_aw_payload_region[3:0],io_axi_aw_payload_len[7:0],io_axi_aw_payload_size[2:0],io_axi_aw_payload_burst[1:0],io_axi_aw_payload_lock[0:0],io_axi_aw_payload_cache[3:0],io_axi_aw_payload_qos[3:0],io_axi_aw_payload_prot[2:0],io_axi_w_valid,io_axi_w_ready,io_axi_w_payload_data[31:0],io_axi_w_payload_strb[3:0],io_axi_w_payload_last,io_axi_b_valid,io_axi_b_ready,io_axi_b_payload_id[11:0],io_axi_b_payload_resp[1:0],io_axi_ar_valid,io_axi_ar_ready,io_axi_ar_payload_addr[31:0],io_axi_ar_payload_id[11:0],io_axi_ar_payload_region[3:0],io_axi_ar_payload_len[7:0],io_axi_ar_payload_size[2:0],io_axi_ar_payload_burst[1:0],io_axi_ar_payload_lock[0:0],io_axi_ar_payload_cache[3:0],io_axi_ar_payload_qos[3:0],io_axi_ar_payload_prot[2:0],io_axi_r_valid,io_axi_r_ready,io_axi_r_payload_data[31:0],io_axi_r_payload_id[11:0],io_axi_r_payload_resp[1:0],io_axi_r_payload_last,io_input_buffer_half,io_input_buffer_full,io_output_buffer_half,io_output_buffer_empty,io_bclk,io_mclk,io_pblrc,io_pbdat,io_reclrc,io_recdat,clk,resetn" */;
  input io_enable;
  input io_axi_aw_valid;
  output io_axi_aw_ready;
  input [31:0]io_axi_aw_payload_addr;
  input [11:0]io_axi_aw_payload_id;
  input [3:0]io_axi_aw_payload_region;
  input [7:0]io_axi_aw_payload_len;
  input [2:0]io_axi_aw_payload_size;
  input [1:0]io_axi_aw_payload_burst;
  input [0:0]io_axi_aw_payload_lock;
  input [3:0]io_axi_aw_payload_cache;
  input [3:0]io_axi_aw_payload_qos;
  input [2:0]io_axi_aw_payload_prot;
  input io_axi_w_valid;
  output io_axi_w_ready;
  input [31:0]io_axi_w_payload_data;
  input [3:0]io_axi_w_payload_strb;
  input io_axi_w_payload_last;
  output io_axi_b_valid;
  input io_axi_b_ready;
  output [11:0]io_axi_b_payload_id;
  output [1:0]io_axi_b_payload_resp;
  input io_axi_ar_valid;
  output io_axi_ar_ready;
  input [31:0]io_axi_ar_payload_addr;
  input [11:0]io_axi_ar_payload_id;
  input [3:0]io_axi_ar_payload_region;
  input [7:0]io_axi_ar_payload_len;
  input [2:0]io_axi_ar_payload_size;
  input [1:0]io_axi_ar_payload_burst;
  input [0:0]io_axi_ar_payload_lock;
  input [3:0]io_axi_ar_payload_cache;
  input [3:0]io_axi_ar_payload_qos;
  input [2:0]io_axi_ar_payload_prot;
  output io_axi_r_valid;
  input io_axi_r_ready;
  output [31:0]io_axi_r_payload_data;
  output [11:0]io_axi_r_payload_id;
  output [1:0]io_axi_r_payload_resp;
  output io_axi_r_payload_last;
  output io_input_buffer_half;
  output io_input_buffer_full;
  output io_output_buffer_half;
  output io_output_buffer_empty;
  output io_bclk;
  output io_mclk;
  output io_pblrc;
  output io_pbdat;
  output io_reclrc;
  input io_recdat;
  input clk;
  input resetn;
endmodule
