// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Mon Jan  3 18:54:50 2022
// Host        : pop-os running 64-bit Pop!_OS 21.10
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ audio_station_overview_AudioStation_0_3_sim_netlist.v
// Design      : audio_station_overview_AudioStation_0_3
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AudioDataMover
   (r_axi_wready_reg_0,
    io_axi_b_valid,
    r_axi_awready_reg_0,
    io_axi_b_payload_resp,
    r_axi_rvalid_reg_0,
    r_axi_arready_reg_0,
    io_axi_r_payload_resp,
    io_axi_r_payload_last,
    E,
    io_enable_0,
    io_output_buffer_half,
    io_output_buffer_empty,
    io_axi_r_payload_data,
    io_input_buffer_half,
    \w_addr_reg[3] ,
    io_input_buffer_full,
    clk_0,
    io_axi_b_payload_id,
    io_axi_r_payload_id,
    \w_addr_reg[0] ,
    clk,
    io_axi_w_valid,
    io_axi_aw_valid,
    resetn,
    r_enable,
    io_axi_r_ready,
    io_axi_ar_valid,
    io_enable,
    \r_addr_reg[0] ,
    \w_addr_reg[0]_0 ,
    io_axi_aw_payload_len,
    io_axi_aw_payload_addr,
    io_axi_aw_payload_size,
    io_axi_aw_payload_burst,
    io_axi_ar_payload_addr,
    io_axi_ar_payload_burst,
    io_axi_ar_payload_size,
    io_axi_ar_payload_len,
    io_axi_b_ready,
    io_axi_w_payload_data,
    Q,
    io_axi_aw_payload_id,
    io_axi_ar_payload_id);
  output r_axi_wready_reg_0;
  output io_axi_b_valid;
  output r_axi_awready_reg_0;
  output [0:0]io_axi_b_payload_resp;
  output r_axi_rvalid_reg_0;
  output r_axi_arready_reg_0;
  output [0:0]io_axi_r_payload_resp;
  output io_axi_r_payload_last;
  output [0:0]E;
  output [0:0]io_enable_0;
  output io_output_buffer_half;
  output io_output_buffer_empty;
  output [31:0]io_axi_r_payload_data;
  output io_input_buffer_half;
  output \w_addr_reg[3] ;
  output io_input_buffer_full;
  output [31:0]clk_0;
  output [11:0]io_axi_b_payload_id;
  output [11:0]io_axi_r_payload_id;
  input \w_addr_reg[0] ;
  input clk;
  input io_axi_w_valid;
  input io_axi_aw_valid;
  input resetn;
  input r_enable;
  input io_axi_r_ready;
  input io_axi_ar_valid;
  input io_enable;
  input \r_addr_reg[0] ;
  input \w_addr_reg[0]_0 ;
  input [7:0]io_axi_aw_payload_len;
  input [31:0]io_axi_aw_payload_addr;
  input [2:0]io_axi_aw_payload_size;
  input [1:0]io_axi_aw_payload_burst;
  input [31:0]io_axi_ar_payload_addr;
  input [1:0]io_axi_ar_payload_burst;
  input [2:0]io_axi_ar_payload_size;
  input [7:0]io_axi_ar_payload_len;
  input io_axi_b_ready;
  input [31:0]io_axi_w_payload_data;
  input [31:0]Q;
  input [11:0]io_axi_aw_payload_id;
  input [11:0]io_axi_ar_payload_id;

  wire [0:0]E;
  wire [31:0]Q;
  wire axi_ar_req_valid;
  wire axi_aw_req_valid;
  wire [3:0]axi_r_cnt0;
  wire \axi_r_cnt[1]_i_1_n_0 ;
  wire \axi_r_cnt[2]_i_1_n_0 ;
  wire \axi_r_cnt[3]_i_1_n_0 ;
  wire \axi_r_cnt[4]_i_1_n_0 ;
  wire \axi_r_cnt[4]_i_2_n_0 ;
  wire \axi_r_cnt_reg_n_0_[0] ;
  wire \axi_r_cnt_reg_n_0_[1] ;
  wire \axi_r_cnt_reg_n_0_[2] ;
  wire \axi_r_cnt_reg_n_0_[3] ;
  wire \axi_r_cnt_reg_n_0_[4] ;
  wire [3:0]axi_w_cnt0;
  wire \axi_w_cnt[1]_i_1_n_0 ;
  wire \axi_w_cnt[3]_i_1_n_0 ;
  wire \axi_w_cnt[4]_i_1_n_0 ;
  wire \axi_w_cnt_reg_n_0_[0] ;
  wire \axi_w_cnt_reg_n_0_[1] ;
  wire \axi_w_cnt_reg_n_0_[2] ;
  wire \axi_w_cnt_reg_n_0_[3] ;
  wire \axi_w_cnt_reg_n_0_[4] ;
  wire buffer_in_n_33;
  wire buffer_out_n_3;
  wire clk;
  wire [31:0]clk_0;
  wire [31:0]io_axi_ar_payload_addr;
  wire [1:0]io_axi_ar_payload_burst;
  wire [11:0]io_axi_ar_payload_id;
  wire [7:0]io_axi_ar_payload_len;
  wire [2:0]io_axi_ar_payload_size;
  wire io_axi_ar_valid;
  wire [31:0]io_axi_aw_payload_addr;
  wire [1:0]io_axi_aw_payload_burst;
  wire [11:0]io_axi_aw_payload_id;
  wire [7:0]io_axi_aw_payload_len;
  wire [2:0]io_axi_aw_payload_size;
  wire io_axi_aw_valid;
  wire [11:0]io_axi_b_payload_id;
  wire [0:0]io_axi_b_payload_resp;
  wire io_axi_b_ready;
  wire io_axi_b_valid;
  wire [31:0]io_axi_r_payload_data;
  wire \io_axi_r_payload_data[31]_INST_0_i_1_n_0 ;
  wire [11:0]io_axi_r_payload_id;
  wire io_axi_r_payload_last;
  wire [0:0]io_axi_r_payload_resp;
  wire io_axi_r_ready;
  wire [31:0]io_axi_w_payload_data;
  wire io_axi_w_valid;
  wire io_enable;
  wire [0:0]io_enable_0;
  wire io_input_buffer_full;
  wire io_input_buffer_half;
  wire io_output_buffer_empty;
  wire io_output_buffer_half;
  wire \r_addr_reg[0] ;
  wire r_axi_ar_req_valid;
  wire r_axi_arready_i_1_n_0;
  wire r_axi_arready_i_2_n_0;
  wire r_axi_arready_reg_0;
  wire r_axi_aw_req_valid;
  wire r_axi_awready_i_1_n_0;
  wire r_axi_awready_reg_0;
  wire \r_axi_bresp[1]_i_10_n_0 ;
  wire \r_axi_bresp[1]_i_11_n_0 ;
  wire \r_axi_bresp[1]_i_12_n_0 ;
  wire \r_axi_bresp[1]_i_13_n_0 ;
  wire \r_axi_bresp[1]_i_1_n_0 ;
  wire \r_axi_bresp[1]_i_2_n_0 ;
  wire \r_axi_bresp[1]_i_3_n_0 ;
  wire \r_axi_bresp[1]_i_4_n_0 ;
  wire \r_axi_bresp[1]_i_5_n_0 ;
  wire \r_axi_bresp[1]_i_6_n_0 ;
  wire \r_axi_bresp[1]_i_7_n_0 ;
  wire \r_axi_bresp[1]_i_8_n_0 ;
  wire \r_axi_bresp[1]_i_9_n_0 ;
  wire r_axi_bvalid_i_1_n_0;
  wire r_axi_rlast_i_1_n_0;
  wire \r_axi_rresp[1]_i_10_n_0 ;
  wire \r_axi_rresp[1]_i_11_n_0 ;
  wire \r_axi_rresp[1]_i_12_n_0 ;
  wire \r_axi_rresp[1]_i_13_n_0 ;
  wire \r_axi_rresp[1]_i_1_n_0 ;
  wire \r_axi_rresp[1]_i_2_n_0 ;
  wire \r_axi_rresp[1]_i_3_n_0 ;
  wire \r_axi_rresp[1]_i_4_n_0 ;
  wire \r_axi_rresp[1]_i_5_n_0 ;
  wire \r_axi_rresp[1]_i_6_n_0 ;
  wire \r_axi_rresp[1]_i_7_n_0 ;
  wire \r_axi_rresp[1]_i_8_n_0 ;
  wire \r_axi_rresp[1]_i_9_n_0 ;
  wire r_axi_rvalid_i_1_n_0;
  wire r_axi_rvalid_reg_0;
  wire r_axi_wready;
  wire r_axi_wready_i_1_n_0;
  wire r_axi_wready_reg_0;
  wire r_enable;
  wire resetn;
  wire \w_addr_reg[0] ;
  wire \w_addr_reg[0]_0 ;
  wire \w_addr_reg[3] ;
  wire when_AudioDataMover_l162;
  wire when_AudioDataMover_l176;
  wire when_AudioDataMover_l191;
  wire when_AudioDataMover_l205;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_r_cnt[0]_i_1 
       (.I0(\axi_r_cnt_reg_n_0_[0] ),
        .O(axi_r_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \axi_r_cnt[1]_i_1 
       (.I0(\axi_r_cnt_reg_n_0_[0] ),
        .I1(\axi_r_cnt_reg_n_0_[1] ),
        .O(\axi_r_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \axi_r_cnt[2]_i_1 
       (.I0(\axi_r_cnt_reg_n_0_[2] ),
        .I1(\axi_r_cnt_reg_n_0_[1] ),
        .I2(\axi_r_cnt_reg_n_0_[0] ),
        .O(\axi_r_cnt[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    \axi_r_cnt[3]_i_1 
       (.I0(io_axi_r_ready),
        .I1(r_axi_rvalid_reg_0),
        .I2(io_axi_ar_valid),
        .I3(r_axi_arready_reg_0),
        .I4(resetn),
        .O(\axi_r_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \axi_r_cnt[3]_i_3 
       (.I0(\axi_r_cnt_reg_n_0_[3] ),
        .I1(\axi_r_cnt_reg_n_0_[0] ),
        .I2(\axi_r_cnt_reg_n_0_[1] ),
        .I3(\axi_r_cnt_reg_n_0_[2] ),
        .O(axi_r_cnt0[3]));
  LUT6 #(
    .INIT(64'hFEFFFEFF01FF0100)) 
    \axi_r_cnt[4]_i_1 
       (.I0(\axi_r_cnt_reg_n_0_[2] ),
        .I1(\axi_r_cnt[4]_i_2_n_0 ),
        .I2(\axi_r_cnt_reg_n_0_[3] ),
        .I3(when_AudioDataMover_l205),
        .I4(when_AudioDataMover_l191),
        .I5(\axi_r_cnt_reg_n_0_[4] ),
        .O(\axi_r_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \axi_r_cnt[4]_i_2 
       (.I0(\axi_r_cnt_reg_n_0_[0] ),
        .I1(\axi_r_cnt_reg_n_0_[1] ),
        .O(\axi_r_cnt[4]_i_2_n_0 ));
  FDRE \axi_r_cnt_reg[0] 
       (.C(clk),
        .CE(when_AudioDataMover_l205),
        .D(axi_r_cnt0[0]),
        .Q(\axi_r_cnt_reg_n_0_[0] ),
        .R(\axi_r_cnt[3]_i_1_n_0 ));
  FDRE \axi_r_cnt_reg[1] 
       (.C(clk),
        .CE(when_AudioDataMover_l205),
        .D(\axi_r_cnt[1]_i_1_n_0 ),
        .Q(\axi_r_cnt_reg_n_0_[1] ),
        .R(\axi_r_cnt[3]_i_1_n_0 ));
  FDRE \axi_r_cnt_reg[2] 
       (.C(clk),
        .CE(when_AudioDataMover_l205),
        .D(\axi_r_cnt[2]_i_1_n_0 ),
        .Q(\axi_r_cnt_reg_n_0_[2] ),
        .R(\axi_r_cnt[3]_i_1_n_0 ));
  FDRE \axi_r_cnt_reg[3] 
       (.C(clk),
        .CE(when_AudioDataMover_l205),
        .D(axi_r_cnt0[3]),
        .Q(\axi_r_cnt_reg_n_0_[3] ),
        .R(\axi_r_cnt[3]_i_1_n_0 ));
  FDRE \axi_r_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_r_cnt[4]_i_1_n_0 ),
        .Q(\axi_r_cnt_reg_n_0_[4] ),
        .R(\w_addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_w_cnt[0]_i_1 
       (.I0(\axi_w_cnt_reg_n_0_[0] ),
        .O(axi_w_cnt0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \axi_w_cnt[1]_i_1 
       (.I0(\axi_w_cnt_reg_n_0_[1] ),
        .I1(\axi_w_cnt_reg_n_0_[0] ),
        .O(\axi_w_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \axi_w_cnt[2]_i_1 
       (.I0(\axi_w_cnt_reg_n_0_[1] ),
        .I1(\axi_w_cnt_reg_n_0_[0] ),
        .I2(\axi_w_cnt_reg_n_0_[2] ),
        .O(axi_w_cnt0[2]));
  LUT5 #(
    .INIT(32'h7000FFFF)) 
    \axi_w_cnt[3]_i_1 
       (.I0(r_axi_wready_reg_0),
        .I1(io_axi_w_valid),
        .I2(io_axi_aw_valid),
        .I3(r_axi_awready_reg_0),
        .I4(resetn),
        .O(\axi_w_cnt[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_w_cnt[3]_i_2 
       (.I0(r_axi_wready_reg_0),
        .I1(io_axi_w_valid),
        .O(when_AudioDataMover_l176));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \axi_w_cnt[3]_i_3 
       (.I0(\axi_w_cnt_reg_n_0_[2] ),
        .I1(\axi_w_cnt_reg_n_0_[0] ),
        .I2(\axi_w_cnt_reg_n_0_[1] ),
        .I3(\axi_w_cnt_reg_n_0_[3] ),
        .O(axi_w_cnt0[3]));
  LUT6 #(
    .INIT(64'hBFBFBFBF7F404040)) 
    \axi_w_cnt[4]_i_1 
       (.I0(buffer_out_n_3),
        .I1(r_axi_wready_reg_0),
        .I2(io_axi_w_valid),
        .I3(io_axi_aw_valid),
        .I4(r_axi_awready_reg_0),
        .I5(\axi_w_cnt_reg_n_0_[4] ),
        .O(\axi_w_cnt[4]_i_1_n_0 ));
  FDRE \axi_w_cnt_reg[0] 
       (.C(clk),
        .CE(when_AudioDataMover_l176),
        .D(axi_w_cnt0[0]),
        .Q(\axi_w_cnt_reg_n_0_[0] ),
        .R(\axi_w_cnt[3]_i_1_n_0 ));
  FDRE \axi_w_cnt_reg[1] 
       (.C(clk),
        .CE(when_AudioDataMover_l176),
        .D(\axi_w_cnt[1]_i_1_n_0 ),
        .Q(\axi_w_cnt_reg_n_0_[1] ),
        .R(\axi_w_cnt[3]_i_1_n_0 ));
  FDRE \axi_w_cnt_reg[2] 
       (.C(clk),
        .CE(when_AudioDataMover_l176),
        .D(axi_w_cnt0[2]),
        .Q(\axi_w_cnt_reg_n_0_[2] ),
        .R(\axi_w_cnt[3]_i_1_n_0 ));
  FDRE \axi_w_cnt_reg[3] 
       (.C(clk),
        .CE(when_AudioDataMover_l176),
        .D(axi_w_cnt0[3]),
        .Q(\axi_w_cnt_reg_n_0_[3] ),
        .R(\axi_w_cnt[3]_i_1_n_0 ));
  FDRE \axi_w_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_w_cnt[4]_i_1_n_0 ),
        .Q(\axi_w_cnt_reg_n_0_[4] ),
        .R(\w_addr_reg[0] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO buffer_in
       (.E(when_AudioDataMover_l205),
        .Q({\axi_r_cnt_reg_n_0_[3] ,\axi_r_cnt_reg_n_0_[2] ,\axi_r_cnt_reg_n_0_[1] ,\axi_r_cnt_reg_n_0_[0] }),
        .\axi_r_cnt_reg[2] (buffer_in_n_33),
        .clk(clk),
        .io_axi_r_payload_data(io_axi_r_payload_data),
        .\io_axi_r_payload_data[31]_0 (r_axi_rvalid_reg_0),
        .\io_axi_r_payload_data[31]_1 (Q),
        .io_axi_r_payload_data_31_sp_1(\io_axi_r_payload_data[31]_INST_0_i_1_n_0 ),
        .io_axi_r_ready(io_axi_r_ready),
        .io_input_buffer_full(io_input_buffer_full),
        .io_input_buffer_half(io_input_buffer_half),
        .\r_addr_reg[0]_0 (\axi_r_cnt_reg_n_0_[4] ),
        .r_axi_ar_req_valid(r_axi_ar_req_valid),
        .\w_addr_reg[0]_0 (\w_addr_reg[0]_0 ),
        .\w_addr_reg[0]_1 (\w_addr_reg[0] ),
        .\w_addr_reg[3]_0 (\w_addr_reg[3] ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO_0 buffer_out
       (.E(E),
        .Q({\axi_w_cnt_reg_n_0_[3] ,\axi_w_cnt_reg_n_0_[2] ,\axi_w_cnt_reg_n_0_[1] ,\axi_w_cnt_reg_n_0_[0] }),
        .\axi_w_cnt_reg[3] (buffer_out_n_3),
        .clk(clk),
        .clk_0(clk_0),
        .io_axi_w_payload_data(io_axi_w_payload_data),
        .io_axi_w_valid(io_axi_w_valid),
        .io_enable(io_enable),
        .io_enable_0(io_enable_0),
        .io_output_buffer_empty(io_output_buffer_empty),
        .io_output_buffer_half(io_output_buffer_half),
        .\r_addr_reg[0]_0 (\r_addr_reg[0] ),
        .r_axi_aw_req_valid(r_axi_aw_req_valid),
        .r_enable(r_enable),
        .\w_addr_reg[0]_0 (\w_addr_reg[0] ),
        .\w_addr_reg[4]_0 (r_axi_wready_reg_0),
        .\w_addr_reg[4]_1 (\axi_w_cnt_reg_n_0_[4] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \io_axi_r_payload_data[31]_INST_0_i_1 
       (.I0(\axi_r_cnt_reg_n_0_[1] ),
        .I1(\axi_r_cnt_reg_n_0_[0] ),
        .I2(\axi_r_cnt_reg_n_0_[3] ),
        .I3(\axi_r_cnt_reg_n_0_[4] ),
        .I4(\axi_r_cnt_reg_n_0_[2] ),
        .O(\io_axi_r_payload_data[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0002)) 
    r_axi_ar_req_valid_i_1
       (.I0(\r_axi_rresp[1]_i_2_n_0 ),
        .I1(\r_axi_rresp[1]_i_3_n_0 ),
        .I2(\r_axi_rresp[1]_i_4_n_0 ),
        .I3(\r_axi_rresp[1]_i_5_n_0 ),
        .O(axi_ar_req_valid));
  FDRE r_axi_ar_req_valid_reg
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(axi_ar_req_valid),
        .Q(r_axi_ar_req_valid),
        .R(\w_addr_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hF2)) 
    r_axi_arready_i_1
       (.I0(r_axi_arready_reg_0),
        .I1(io_axi_ar_valid),
        .I2(r_axi_arready_i_2_n_0),
        .O(r_axi_arready_i_1_n_0));
  LUT6 #(
    .INIT(64'h00004000FFFFFFFF)) 
    r_axi_arready_i_2
       (.I0(\axi_r_cnt_reg_n_0_[1] ),
        .I1(\axi_r_cnt_reg_n_0_[0] ),
        .I2(r_axi_rvalid_reg_0),
        .I3(io_axi_r_ready),
        .I4(buffer_in_n_33),
        .I5(resetn),
        .O(r_axi_arready_i_2_n_0));
  FDRE r_axi_arready_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_arready_i_1_n_0),
        .Q(r_axi_arready_reg_0),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    r_axi_aw_req_valid_i_1
       (.I0(\r_axi_bresp[1]_i_2_n_0 ),
        .I1(\r_axi_bresp[1]_i_3_n_0 ),
        .I2(\r_axi_bresp[1]_i_4_n_0 ),
        .I3(\r_axi_bresp[1]_i_5_n_0 ),
        .O(axi_aw_req_valid));
  FDRE r_axi_aw_req_valid_reg
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(axi_aw_req_valid),
        .Q(r_axi_aw_req_valid),
        .R(\w_addr_reg[0] ));
  LUT5 #(
    .INIT(32'hFF2F2F2F)) 
    r_axi_awready_i_1
       (.I0(r_axi_awready_reg_0),
        .I1(io_axi_aw_valid),
        .I2(resetn),
        .I3(io_axi_b_ready),
        .I4(io_axi_b_valid),
        .O(r_axi_awready_i_1_n_0));
  FDRE r_axi_awready_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_awready_i_1_n_0),
        .Q(r_axi_awready_reg_0),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \r_axi_bid[11]_i_2 
       (.I0(io_axi_aw_valid),
        .I1(r_axi_awready_reg_0),
        .O(when_AudioDataMover_l162));
  FDRE \r_axi_bid_reg[0] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[0]),
        .Q(io_axi_b_payload_id[0]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[10] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[10]),
        .Q(io_axi_b_payload_id[10]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[11] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[11]),
        .Q(io_axi_b_payload_id[11]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[1] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[1]),
        .Q(io_axi_b_payload_id[1]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[2] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[2]),
        .Q(io_axi_b_payload_id[2]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[3] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[3]),
        .Q(io_axi_b_payload_id[3]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[4] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[4]),
        .Q(io_axi_b_payload_id[4]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[5] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[5]),
        .Q(io_axi_b_payload_id[5]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[6] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[6]),
        .Q(io_axi_b_payload_id[6]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[7] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[7]),
        .Q(io_axi_b_payload_id[7]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[8] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[8]),
        .Q(io_axi_b_payload_id[8]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_bid_reg[9] 
       (.C(clk),
        .CE(when_AudioDataMover_l162),
        .D(io_axi_aw_payload_id[9]),
        .Q(io_axi_b_payload_id[9]),
        .R(\w_addr_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
    \r_axi_bresp[1]_i_1 
       (.I0(\r_axi_bresp[1]_i_2_n_0 ),
        .I1(\r_axi_bresp[1]_i_3_n_0 ),
        .I2(\r_axi_bresp[1]_i_4_n_0 ),
        .I3(\r_axi_bresp[1]_i_5_n_0 ),
        .I4(when_AudioDataMover_l162),
        .I5(\r_axi_bresp[1]_i_6_n_0 ),
        .O(\r_axi_bresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_axi_bresp[1]_i_10 
       (.I0(io_axi_aw_payload_addr[14]),
        .I1(io_axi_aw_payload_size[2]),
        .I2(io_axi_aw_payload_burst[1]),
        .I3(io_axi_aw_payload_addr[2]),
        .I4(io_axi_aw_payload_addr[8]),
        .I5(io_axi_aw_payload_addr[29]),
        .O(\r_axi_bresp[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \r_axi_bresp[1]_i_11 
       (.I0(io_axi_aw_payload_addr[25]),
        .I1(io_axi_aw_payload_addr[3]),
        .I2(io_axi_aw_payload_addr[30]),
        .I3(io_axi_aw_payload_addr[7]),
        .O(\r_axi_bresp[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_axi_bresp[1]_i_12 
       (.I0(io_axi_aw_payload_addr[28]),
        .I1(io_axi_aw_payload_addr[11]),
        .I2(io_axi_aw_payload_len[4]),
        .I3(io_axi_aw_payload_addr[12]),
        .O(\r_axi_bresp[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_axi_bresp[1]_i_13 
       (.I0(io_axi_aw_payload_len[0]),
        .I1(io_axi_aw_payload_len[5]),
        .I2(io_axi_aw_payload_len[7]),
        .I3(io_axi_aw_payload_addr[27]),
        .O(\r_axi_bresp[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \r_axi_bresp[1]_i_2 
       (.I0(\r_axi_bresp[1]_i_7_n_0 ),
        .I1(\r_axi_bresp[1]_i_8_n_0 ),
        .I2(\r_axi_bresp[1]_i_9_n_0 ),
        .I3(io_axi_aw_payload_addr[16]),
        .I4(io_axi_aw_payload_addr[31]),
        .I5(io_axi_aw_payload_addr[1]),
        .O(\r_axi_bresp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \r_axi_bresp[1]_i_3 
       (.I0(\r_axi_bresp[1]_i_10_n_0 ),
        .I1(\r_axi_bresp[1]_i_11_n_0 ),
        .I2(io_axi_aw_payload_len[3]),
        .I3(io_axi_aw_payload_addr[21]),
        .I4(io_axi_aw_payload_addr[17]),
        .I5(io_axi_aw_payload_addr[13]),
        .O(\r_axi_bresp[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \r_axi_bresp[1]_i_4 
       (.I0(io_axi_aw_payload_addr[18]),
        .I1(io_axi_aw_payload_addr[4]),
        .I2(io_axi_aw_payload_addr[6]),
        .I3(io_axi_aw_payload_addr[22]),
        .I4(\r_axi_bresp[1]_i_12_n_0 ),
        .O(\r_axi_bresp[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \r_axi_bresp[1]_i_5 
       (.I0(io_axi_aw_payload_addr[15]),
        .I1(io_axi_aw_payload_addr[23]),
        .I2(io_axi_aw_payload_addr[20]),
        .I3(io_axi_aw_payload_size[1]),
        .I4(\r_axi_bresp[1]_i_13_n_0 ),
        .O(\r_axi_bresp[1]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h5777)) 
    \r_axi_bresp[1]_i_6 
       (.I0(resetn),
        .I1(io_axi_b_payload_resp),
        .I2(io_axi_aw_valid),
        .I3(r_axi_awready_reg_0),
        .O(\r_axi_bresp[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \r_axi_bresp[1]_i_7 
       (.I0(io_axi_aw_payload_len[6]),
        .I1(io_axi_aw_payload_addr[10]),
        .I2(io_axi_aw_payload_addr[24]),
        .I3(io_axi_aw_payload_len[2]),
        .O(\r_axi_bresp[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_axi_bresp[1]_i_8 
       (.I0(io_axi_aw_payload_addr[0]),
        .I1(io_axi_aw_payload_addr[19]),
        .I2(io_axi_aw_payload_addr[5]),
        .I3(io_axi_aw_payload_size[0]),
        .O(\r_axi_bresp[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \r_axi_bresp[1]_i_9 
       (.I0(io_axi_aw_payload_addr[26]),
        .I1(io_axi_aw_payload_addr[9]),
        .I2(io_axi_aw_payload_len[1]),
        .I3(io_axi_aw_payload_burst[0]),
        .O(\r_axi_bresp[1]_i_9_n_0 ));
  FDRE \r_axi_bresp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_axi_bresp[1]_i_1_n_0 ),
        .Q(io_axi_b_payload_resp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0C88)) 
    r_axi_bvalid_i_1
       (.I0(r_axi_wready),
        .I1(resetn),
        .I2(io_axi_b_ready),
        .I3(io_axi_b_valid),
        .O(r_axi_bvalid_i_1_n_0));
  FDRE r_axi_bvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_bvalid_i_1_n_0),
        .Q(io_axi_b_valid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \r_axi_rid[11]_i_1 
       (.I0(io_axi_ar_valid),
        .I1(r_axi_arready_reg_0),
        .O(when_AudioDataMover_l191));
  FDRE \r_axi_rid_reg[0] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[0]),
        .Q(io_axi_r_payload_id[0]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[10] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[10]),
        .Q(io_axi_r_payload_id[10]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[11] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[11]),
        .Q(io_axi_r_payload_id[11]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[1] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[1]),
        .Q(io_axi_r_payload_id[1]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[2] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[2]),
        .Q(io_axi_r_payload_id[2]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[3] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[3]),
        .Q(io_axi_r_payload_id[3]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[4] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[4]),
        .Q(io_axi_r_payload_id[4]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[5] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[5]),
        .Q(io_axi_r_payload_id[5]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[6] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[6]),
        .Q(io_axi_r_payload_id[6]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[7] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[7]),
        .Q(io_axi_r_payload_id[7]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[8] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[8]),
        .Q(io_axi_r_payload_id[8]),
        .R(\w_addr_reg[0] ));
  FDRE \r_axi_rid_reg[9] 
       (.C(clk),
        .CE(when_AudioDataMover_l191),
        .D(io_axi_ar_payload_id[9]),
        .Q(io_axi_r_payload_id[9]),
        .R(\w_addr_reg[0] ));
  LUT6 #(
    .INIT(64'hFFBFFFFF00004000)) 
    r_axi_rlast_i_1
       (.I0(buffer_in_n_33),
        .I1(io_axi_r_ready),
        .I2(r_axi_rvalid_reg_0),
        .I3(\axi_r_cnt_reg_n_0_[1] ),
        .I4(\axi_r_cnt_reg_n_0_[0] ),
        .I5(io_axi_r_payload_last),
        .O(r_axi_rlast_i_1_n_0));
  FDRE r_axi_rlast_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_rlast_i_1_n_0),
        .Q(io_axi_r_payload_last),
        .R(\w_addr_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FFFDFFFF)) 
    \r_axi_rresp[1]_i_1 
       (.I0(\r_axi_rresp[1]_i_2_n_0 ),
        .I1(\r_axi_rresp[1]_i_3_n_0 ),
        .I2(\r_axi_rresp[1]_i_4_n_0 ),
        .I3(\r_axi_rresp[1]_i_5_n_0 ),
        .I4(when_AudioDataMover_l191),
        .I5(\r_axi_rresp[1]_i_6_n_0 ),
        .O(\r_axi_rresp[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
    \r_axi_rresp[1]_i_10 
       (.I0(io_axi_ar_payload_addr[30]),
        .I1(io_axi_ar_payload_size[0]),
        .I2(io_axi_ar_payload_addr[11]),
        .I3(io_axi_ar_payload_addr[17]),
        .I4(io_axi_ar_payload_addr[13]),
        .I5(io_axi_ar_payload_addr[21]),
        .O(\r_axi_rresp[1]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_axi_rresp[1]_i_11 
       (.I0(io_axi_ar_payload_addr[31]),
        .I1(io_axi_ar_payload_addr[28]),
        .I2(io_axi_ar_payload_addr[16]),
        .I3(io_axi_ar_payload_addr[12]),
        .O(\r_axi_rresp[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_axi_rresp[1]_i_12 
       (.I0(io_axi_ar_payload_addr[29]),
        .I1(io_axi_ar_payload_addr[2]),
        .I2(io_axi_ar_payload_len[4]),
        .I3(io_axi_ar_payload_addr[3]),
        .O(\r_axi_rresp[1]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \r_axi_rresp[1]_i_13 
       (.I0(io_axi_ar_payload_addr[4]),
        .I1(io_axi_ar_payload_addr[18]),
        .I2(io_axi_ar_payload_len[3]),
        .I3(io_axi_ar_payload_len[5]),
        .O(\r_axi_rresp[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \r_axi_rresp[1]_i_2 
       (.I0(\r_axi_rresp[1]_i_7_n_0 ),
        .I1(\r_axi_rresp[1]_i_8_n_0 ),
        .I2(\r_axi_rresp[1]_i_9_n_0 ),
        .I3(io_axi_ar_payload_addr[24]),
        .I4(io_axi_ar_payload_len[6]),
        .I5(io_axi_ar_payload_len[0]),
        .O(\r_axi_rresp[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \r_axi_rresp[1]_i_3 
       (.I0(\r_axi_rresp[1]_i_10_n_0 ),
        .I1(\r_axi_rresp[1]_i_11_n_0 ),
        .I2(io_axi_ar_payload_addr[25]),
        .I3(io_axi_ar_payload_burst[0]),
        .I4(io_axi_ar_payload_addr[14]),
        .I5(io_axi_ar_payload_addr[8]),
        .O(\r_axi_rresp[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \r_axi_rresp[1]_i_4 
       (.I0(io_axi_ar_payload_addr[6]),
        .I1(io_axi_ar_payload_addr[22]),
        .I2(io_axi_ar_payload_addr[7]),
        .I3(io_axi_ar_payload_len[2]),
        .I4(\r_axi_rresp[1]_i_12_n_0 ),
        .O(\r_axi_rresp[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \r_axi_rresp[1]_i_5 
       (.I0(io_axi_ar_payload_addr[20]),
        .I1(io_axi_ar_payload_len[1]),
        .I2(io_axi_ar_payload_burst[1]),
        .I3(io_axi_ar_payload_addr[27]),
        .I4(\r_axi_rresp[1]_i_13_n_0 ),
        .O(\r_axi_rresp[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h5777)) 
    \r_axi_rresp[1]_i_6 
       (.I0(resetn),
        .I1(io_axi_r_payload_resp),
        .I2(io_axi_ar_valid),
        .I3(r_axi_arready_reg_0),
        .O(\r_axi_rresp[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \r_axi_rresp[1]_i_7 
       (.I0(io_axi_ar_payload_addr[23]),
        .I1(io_axi_ar_payload_addr[15]),
        .I2(io_axi_ar_payload_addr[1]),
        .I3(io_axi_ar_payload_addr[10]),
        .O(\r_axi_rresp[1]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \r_axi_rresp[1]_i_8 
       (.I0(io_axi_ar_payload_addr[19]),
        .I1(io_axi_ar_payload_size[1]),
        .I2(io_axi_ar_payload_len[7]),
        .I3(io_axi_ar_payload_size[2]),
        .O(\r_axi_rresp[1]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \r_axi_rresp[1]_i_9 
       (.I0(io_axi_ar_payload_addr[5]),
        .I1(io_axi_ar_payload_addr[0]),
        .I2(io_axi_ar_payload_addr[26]),
        .I3(io_axi_ar_payload_addr[9]),
        .O(\r_axi_rresp[1]_i_9_n_0 ));
  FDRE \r_axi_rresp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_axi_rresp[1]_i_1_n_0 ),
        .Q(io_axi_r_payload_resp),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0F08)) 
    r_axi_rvalid_i_1
       (.I0(r_axi_arready_reg_0),
        .I1(io_axi_ar_valid),
        .I2(r_axi_arready_i_2_n_0),
        .I3(r_axi_rvalid_reg_0),
        .O(r_axi_rvalid_i_1_n_0));
  FDRE r_axi_rvalid_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_rvalid_i_1_n_0),
        .Q(r_axi_rvalid_reg_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h0000F800)) 
    r_axi_wready_i_1
       (.I0(r_axi_awready_reg_0),
        .I1(io_axi_aw_valid),
        .I2(r_axi_wready_reg_0),
        .I3(resetn),
        .I4(r_axi_wready),
        .O(r_axi_wready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    r_axi_wready_i_2
       (.I0(\axi_w_cnt_reg_n_0_[1] ),
        .I1(\axi_w_cnt_reg_n_0_[0] ),
        .I2(\axi_w_cnt_reg_n_0_[2] ),
        .I3(\axi_w_cnt_reg_n_0_[4] ),
        .I4(\axi_w_cnt_reg_n_0_[3] ),
        .I5(when_AudioDataMover_l176),
        .O(r_axi_wready));
  FDRE r_axi_wready_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_axi_wready_i_1_n_0),
        .Q(r_axi_wready_reg_0),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AudioStation
   (r_axi_wready_reg,
    r_axi_awready_reg,
    io_output_buffer_half,
    r_axi_rvalid_reg,
    r_axi_arready_reg,
    io_axi_b_payload_id,
    io_axi_r_payload_id,
    r_bclk_reg,
    io_output_buffer_empty,
    io_axi_r_payload_data,
    io_input_buffer_half,
    io_input_buffer_full,
    io_axi_b_payload_resp,
    io_axi_r_payload_resp,
    io_mclk,
    io_axi_r_payload_last,
    io_pbdat,
    io_axi_b_valid,
    io_reclrc,
    io_axi_w_valid,
    io_axi_aw_valid,
    resetn,
    io_axi_r_ready,
    io_axi_ar_valid,
    clk,
    io_axi_w_payload_data,
    io_axi_aw_payload_id,
    io_axi_ar_payload_id,
    io_enable,
    io_axi_aw_payload_len,
    io_axi_aw_payload_addr,
    io_axi_aw_payload_size,
    io_axi_aw_payload_burst,
    io_axi_ar_payload_addr,
    io_axi_ar_payload_burst,
    io_axi_ar_payload_size,
    io_axi_ar_payload_len,
    io_recdat,
    io_axi_b_ready);
  output r_axi_wready_reg;
  output r_axi_awready_reg;
  output io_output_buffer_half;
  output r_axi_rvalid_reg;
  output r_axi_arready_reg;
  output [11:0]io_axi_b_payload_id;
  output [11:0]io_axi_r_payload_id;
  output r_bclk_reg;
  output io_output_buffer_empty;
  output [31:0]io_axi_r_payload_data;
  output io_input_buffer_half;
  output io_input_buffer_full;
  output [0:0]io_axi_b_payload_resp;
  output [0:0]io_axi_r_payload_resp;
  output io_mclk;
  output io_axi_r_payload_last;
  output io_pbdat;
  output io_axi_b_valid;
  output io_reclrc;
  input io_axi_w_valid;
  input io_axi_aw_valid;
  input resetn;
  input io_axi_r_ready;
  input io_axi_ar_valid;
  input clk;
  input [31:0]io_axi_w_payload_data;
  input [11:0]io_axi_aw_payload_id;
  input [11:0]io_axi_ar_payload_id;
  input io_enable;
  input [7:0]io_axi_aw_payload_len;
  input [31:0]io_axi_aw_payload_addr;
  input [2:0]io_axi_aw_payload_size;
  input [1:0]io_axi_aw_payload_burst;
  input [31:0]io_axi_ar_payload_addr;
  input [1:0]io_axi_ar_payload_burst;
  input [2:0]io_axi_ar_payload_size;
  input [7:0]io_axi_ar_payload_len;
  input io_recdat;
  input io_axi_b_ready;

  wire audio_data_mover_n_45;
  wire audio_data_mover_n_8;
  wire \buffer_out/when_FIFO_l65 ;
  wire clk;
  wire i2s_1_n_0;
  wire i2s_1_n_3;
  wire i2s_1_n_6;
  wire [31:0]io_axi_ar_payload_addr;
  wire [1:0]io_axi_ar_payload_burst;
  wire [11:0]io_axi_ar_payload_id;
  wire [7:0]io_axi_ar_payload_len;
  wire [2:0]io_axi_ar_payload_size;
  wire io_axi_ar_valid;
  wire [31:0]io_axi_aw_payload_addr;
  wire [1:0]io_axi_aw_payload_burst;
  wire [11:0]io_axi_aw_payload_id;
  wire [7:0]io_axi_aw_payload_len;
  wire [2:0]io_axi_aw_payload_size;
  wire io_axi_aw_valid;
  wire [11:0]io_axi_b_payload_id;
  wire [0:0]io_axi_b_payload_resp;
  wire io_axi_b_ready;
  wire io_axi_b_valid;
  wire [31:0]io_axi_r_payload_data;
  wire [11:0]io_axi_r_payload_id;
  wire io_axi_r_payload_last;
  wire [0:0]io_axi_r_payload_resp;
  wire io_axi_r_ready;
  wire [31:0]io_axi_w_payload_data;
  wire io_axi_w_valid;
  wire io_enable;
  wire io_input_buffer_full;
  wire io_input_buffer_half;
  wire io_mclk;
  wire io_output_buffer_empty;
  wire io_output_buffer_half;
  wire io_pbdat;
  wire io_recdat;
  wire io_reclrc;
  wire [31:0]io_s_data_in_payload;
  wire r_axi_arready_reg;
  wire r_axi_awready_reg;
  wire r_axi_rvalid_reg;
  wire r_axi_wready_reg;
  wire r_bclk_reg;
  wire [31:0]r_buffer_out;
  wire r_enable;
  wire resetn;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AudioDataMover audio_data_mover
       (.E(audio_data_mover_n_8),
        .Q(r_buffer_out),
        .clk(clk),
        .clk_0(io_s_data_in_payload),
        .io_axi_ar_payload_addr(io_axi_ar_payload_addr),
        .io_axi_ar_payload_burst(io_axi_ar_payload_burst),
        .io_axi_ar_payload_id(io_axi_ar_payload_id),
        .io_axi_ar_payload_len(io_axi_ar_payload_len),
        .io_axi_ar_payload_size(io_axi_ar_payload_size),
        .io_axi_ar_valid(io_axi_ar_valid),
        .io_axi_aw_payload_addr(io_axi_aw_payload_addr),
        .io_axi_aw_payload_burst(io_axi_aw_payload_burst),
        .io_axi_aw_payload_id(io_axi_aw_payload_id),
        .io_axi_aw_payload_len(io_axi_aw_payload_len),
        .io_axi_aw_payload_size(io_axi_aw_payload_size),
        .io_axi_aw_valid(io_axi_aw_valid),
        .io_axi_b_payload_id(io_axi_b_payload_id),
        .io_axi_b_payload_resp(io_axi_b_payload_resp),
        .io_axi_b_ready(io_axi_b_ready),
        .io_axi_b_valid(io_axi_b_valid),
        .io_axi_r_payload_data(io_axi_r_payload_data),
        .io_axi_r_payload_id(io_axi_r_payload_id),
        .io_axi_r_payload_last(io_axi_r_payload_last),
        .io_axi_r_payload_resp(io_axi_r_payload_resp),
        .io_axi_r_ready(io_axi_r_ready),
        .io_axi_w_payload_data(io_axi_w_payload_data),
        .io_axi_w_valid(io_axi_w_valid),
        .io_enable(io_enable),
        .io_enable_0(\buffer_out/when_FIFO_l65 ),
        .io_input_buffer_full(io_input_buffer_full),
        .io_input_buffer_half(io_input_buffer_half),
        .io_output_buffer_empty(io_output_buffer_empty),
        .io_output_buffer_half(io_output_buffer_half),
        .\r_addr_reg[0] (i2s_1_n_3),
        .r_axi_arready_reg_0(r_axi_arready_reg),
        .r_axi_awready_reg_0(r_axi_awready_reg),
        .r_axi_rvalid_reg_0(r_axi_rvalid_reg),
        .r_axi_wready_reg_0(r_axi_wready_reg),
        .r_enable(r_enable),
        .resetn(resetn),
        .\w_addr_reg[0] (i2s_1_n_0),
        .\w_addr_reg[0]_0 (i2s_1_n_6),
        .\w_addr_reg[3] (audio_data_mover_n_45));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2S i2s_1
       (.D(io_s_data_in_payload),
        .E(audio_data_mover_n_8),
        .Q(r_buffer_out),
        .clk(clk),
        .io_enable(io_enable),
        .io_enable_0(i2s_1_n_6),
        .io_mclk(io_mclk),
        .io_pbdat(io_pbdat),
        .io_recdat(io_recdat),
        .io_reclrc(io_reclrc),
        .r_bclk_reg_0(r_bclk_reg),
        .r_buffer_in_full_reg_0(i2s_1_n_3),
        .r_buffer_in_full_reg_1(\buffer_out/when_FIFO_l65 ),
        .r_buffer_out_full_reg_0(audio_data_mover_n_45),
        .r_enable(r_enable),
        .resetn(resetn),
        .resetn_0(i2s_1_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO
   (io_axi_r_payload_data,
    E,
    \axi_r_cnt_reg[2] ,
    io_input_buffer_half,
    \w_addr_reg[3]_0 ,
    io_input_buffer_full,
    io_axi_r_payload_data_31_sp_1,
    io_axi_r_ready,
    \io_axi_r_payload_data[31]_0 ,
    r_axi_ar_req_valid,
    Q,
    \r_addr_reg[0]_0 ,
    \w_addr_reg[0]_0 ,
    clk,
    \io_axi_r_payload_data[31]_1 ,
    \w_addr_reg[0]_1 );
  output [31:0]io_axi_r_payload_data;
  output [0:0]E;
  output \axi_r_cnt_reg[2] ;
  output io_input_buffer_half;
  output [0:0]\w_addr_reg[3]_0 ;
  output io_input_buffer_full;
  input io_axi_r_payload_data_31_sp_1;
  input io_axi_r_ready;
  input \io_axi_r_payload_data[31]_0 ;
  input r_axi_ar_req_valid;
  input [3:0]Q;
  input \r_addr_reg[0]_0 ;
  input \w_addr_reg[0]_0 ;
  input clk;
  input [31:0]\io_axi_r_payload_data[31]_1 ;
  input \w_addr_reg[0]_1 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [31:0]_zz_mem_port1;
  wire \axi_r_cnt_reg[2] ;
  wire clk;
  wire [31:0]io_axi_r_payload_data;
  wire \io_axi_r_payload_data[31]_0 ;
  wire [31:0]\io_axi_r_payload_data[31]_1 ;
  wire \io_axi_r_payload_data[31]_INST_0_i_2_n_0 ;
  wire \io_axi_r_payload_data[31]_INST_0_i_3_n_0 ;
  wire \io_axi_r_payload_data[31]_INST_0_i_4_n_0 ;
  wire io_axi_r_payload_data_31_sn_1;
  wire io_axi_r_ready;
  wire io_input_buffer_full;
  wire io_input_buffer_full_INST_0_i_1_n_0;
  wire io_input_buffer_full_INST_0_i_2_n_0;
  wire io_input_buffer_half;
  wire io_input_buffer_half_INST_0_i_1_n_0;
  wire io_input_buffer_half_INST_0_i_2_n_0;
  wire [4:1]p_0_in__0;
  wire \r_addr[0]_i_1_n_0 ;
  wire \r_addr_reg[0]_0 ;
  wire \r_addr_reg_n_0_[0] ;
  wire \r_addr_reg_n_0_[1] ;
  wire \r_addr_reg_n_0_[2] ;
  wire \r_addr_reg_n_0_[3] ;
  wire \r_addr_reg_n_0_[4] ;
  wire r_axi_ar_req_valid;
  wire \w_addr[0]_i_1_n_0 ;
  wire \w_addr[1]_i_1__0_n_0 ;
  wire \w_addr[2]_i_1__0_n_0 ;
  wire \w_addr[3]_i_1__0_n_0 ;
  wire \w_addr[4]_i_1_n_0 ;
  wire \w_addr_reg[0]_0 ;
  wire \w_addr_reg[0]_1 ;
  wire [0:0]\w_addr_reg[3]_0 ;
  wire \w_addr_reg_n_0_[0] ;
  wire \w_addr_reg_n_0_[1] ;
  wire \w_addr_reg_n_0_[2] ;
  wire \w_addr_reg_n_0_[3] ;
  wire \w_addr_reg_n_0_[4] ;
  wire when_FIFO_l65;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  assign io_axi_r_payload_data_31_sn_1 = io_axi_r_payload_data_31_sp_1;
  LUT2 #(
    .INIT(4'h8)) 
    \axi_r_cnt[3]_i_2 
       (.I0(io_axi_r_ready),
        .I1(\io_axi_r_payload_data[31]_0 ),
        .O(E));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[0]_INST_0 
       (.I0(_zz_mem_port1[0]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[0]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[10]_INST_0 
       (.I0(_zz_mem_port1[10]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[10]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[11]_INST_0 
       (.I0(_zz_mem_port1[11]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[11]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[12]_INST_0 
       (.I0(_zz_mem_port1[12]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[12]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[13]_INST_0 
       (.I0(_zz_mem_port1[13]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[13]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[14]_INST_0 
       (.I0(_zz_mem_port1[14]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[14]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[15]_INST_0 
       (.I0(_zz_mem_port1[15]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[15]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[16]_INST_0 
       (.I0(_zz_mem_port1[16]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[16]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[17]_INST_0 
       (.I0(_zz_mem_port1[17]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[17]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[18]_INST_0 
       (.I0(_zz_mem_port1[18]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[18]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[19]_INST_0 
       (.I0(_zz_mem_port1[19]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[19]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[1]_INST_0 
       (.I0(_zz_mem_port1[1]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[1]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[20]_INST_0 
       (.I0(_zz_mem_port1[20]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[20]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[21]_INST_0 
       (.I0(_zz_mem_port1[21]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[21]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[22]_INST_0 
       (.I0(_zz_mem_port1[22]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[22]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[23]_INST_0 
       (.I0(_zz_mem_port1[23]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[23]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[24]_INST_0 
       (.I0(_zz_mem_port1[24]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[24]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[25]_INST_0 
       (.I0(_zz_mem_port1[25]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[25]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[26]_INST_0 
       (.I0(_zz_mem_port1[26]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[26]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[27]_INST_0 
       (.I0(_zz_mem_port1[27]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[27]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[28]_INST_0 
       (.I0(_zz_mem_port1[28]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[28]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[29]_INST_0 
       (.I0(_zz_mem_port1[29]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[29]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[2]_INST_0 
       (.I0(_zz_mem_port1[2]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[2]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[30]_INST_0 
       (.I0(_zz_mem_port1[30]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[30]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[31]_INST_0 
       (.I0(_zz_mem_port1[31]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[31]));
  LUT6 #(
    .INIT(64'hDFFDFFFFFFFFDFFD)) 
    \io_axi_r_payload_data[31]_INST_0_i_2 
       (.I0(\io_axi_r_payload_data[31]_INST_0_i_3_n_0 ),
        .I1(\io_axi_r_payload_data[31]_INST_0_i_4_n_0 ),
        .I2(\w_addr_reg_n_0_[4] ),
        .I3(\r_addr_reg_n_0_[4] ),
        .I4(\r_addr_reg_n_0_[0] ),
        .I5(\w_addr_reg_n_0_[0] ),
        .O(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hD0DD00000000D0DD)) 
    \io_axi_r_payload_data[31]_INST_0_i_3 
       (.I0(\r_addr_reg_n_0_[2] ),
        .I1(\w_addr_reg_n_0_[2] ),
        .I2(\w_addr_reg_n_0_[1] ),
        .I3(\r_addr_reg_n_0_[1] ),
        .I4(\w_addr_reg_n_0_[3] ),
        .I5(\r_addr_reg_n_0_[3] ),
        .O(\io_axi_r_payload_data[31]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \io_axi_r_payload_data[31]_INST_0_i_4 
       (.I0(\r_addr_reg_n_0_[2] ),
        .I1(\w_addr_reg_n_0_[2] ),
        .I2(\r_addr_reg_n_0_[1] ),
        .I3(\w_addr_reg_n_0_[1] ),
        .O(\io_axi_r_payload_data[31]_INST_0_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[3]_INST_0 
       (.I0(_zz_mem_port1[3]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[3]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[4]_INST_0 
       (.I0(_zz_mem_port1[4]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[4]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[5]_INST_0 
       (.I0(_zz_mem_port1[5]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[5]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[6]_INST_0 
       (.I0(_zz_mem_port1[6]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[6]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[7]_INST_0 
       (.I0(_zz_mem_port1[7]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[7]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[8]_INST_0 
       (.I0(_zz_mem_port1[8]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[8]));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \io_axi_r_payload_data[9]_INST_0 
       (.I0(_zz_mem_port1[9]),
        .I1(io_axi_r_payload_data_31_sn_1),
        .I2(io_axi_r_ready),
        .I3(\io_axi_r_payload_data[31]_0 ),
        .I4(r_axi_ar_req_valid),
        .I5(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .O(io_axi_r_payload_data[9]));
  LUT6 #(
    .INIT(64'h0110200220021001)) 
    io_input_buffer_full_INST_0
       (.I0(\r_addr_reg_n_0_[3] ),
        .I1(io_input_buffer_full_INST_0_i_1_n_0),
        .I2(\w_addr_reg_n_0_[4] ),
        .I3(\r_addr_reg_n_0_[4] ),
        .I4(io_input_buffer_full_INST_0_i_2_n_0),
        .I5(\w_addr_reg_n_0_[3] ),
        .O(io_input_buffer_full));
  LUT6 #(
    .INIT(64'hF7BFFDEFEFF7BFFD)) 
    io_input_buffer_full_INST_0_i_1
       (.I0(\r_addr_reg_n_0_[0] ),
        .I1(\r_addr_reg_n_0_[2] ),
        .I2(\w_addr_reg_n_0_[0] ),
        .I3(\w_addr_reg_n_0_[1] ),
        .I4(\w_addr_reg_n_0_[2] ),
        .I5(\r_addr_reg_n_0_[1] ),
        .O(io_input_buffer_full_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    io_input_buffer_full_INST_0_i_2
       (.I0(\w_addr_reg_n_0_[2] ),
        .I1(\w_addr_reg_n_0_[1] ),
        .I2(\w_addr_reg_n_0_[0] ),
        .O(io_input_buffer_full_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9959AAAA55559959)) 
    io_input_buffer_half_INST_0
       (.I0(io_input_buffer_half_INST_0_i_1_n_0),
        .I1(io_input_buffer_half_INST_0_i_2_n_0),
        .I2(\r_addr_reg_n_0_[2] ),
        .I3(\w_addr_reg_n_0_[2] ),
        .I4(\r_addr_reg_n_0_[3] ),
        .I5(\w_addr_reg_n_0_[3] ),
        .O(io_input_buffer_half));
  LUT2 #(
    .INIT(4'h6)) 
    io_input_buffer_half_INST_0_i_1
       (.I0(\r_addr_reg_n_0_[4] ),
        .I1(\w_addr_reg_n_0_[4] ),
        .O(io_input_buffer_half_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'hFF2F2222FFFFFF2F)) 
    io_input_buffer_half_INST_0_i_2
       (.I0(\w_addr_reg_n_0_[2] ),
        .I1(\r_addr_reg_n_0_[2] ),
        .I2(\r_addr_reg_n_0_[0] ),
        .I3(\w_addr_reg_n_0_[0] ),
        .I4(\w_addr_reg_n_0_[1] ),
        .I5(\r_addr_reg_n_0_[1] ),
        .O(io_input_buffer_half_INST_0_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [1:0]),
        .DIB(\io_axi_r_payload_data[31]_1 [3:2]),
        .DIC(\io_axi_r_payload_data[31]_1 [5:4]),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[1:0]),
        .DOB(_zz_mem_port1[3:2]),
        .DOC(_zz_mem_port1[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAAAAAA82AAAA2AA8)) 
    mem_reg_0_31_0_5_i_1__0
       (.I0(\w_addr_reg[0]_0 ),
        .I1(\w_addr_reg_n_0_[3] ),
        .I2(io_input_buffer_full_INST_0_i_2_n_0),
        .I3(io_input_buffer_half_INST_0_i_1_n_0),
        .I4(io_input_buffer_full_INST_0_i_1_n_0),
        .I5(\r_addr_reg_n_0_[3] ),
        .O(\w_addr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M mem_reg_0_31_12_17
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [13:12]),
        .DIB(\io_axi_r_payload_data[31]_1 [15:14]),
        .DIC(\io_axi_r_payload_data[31]_1 [17:16]),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[13:12]),
        .DOB(_zz_mem_port1[15:14]),
        .DOC(_zz_mem_port1[17:16]),
        .DOD(NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M mem_reg_0_31_18_23
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [19:18]),
        .DIB(\io_axi_r_payload_data[31]_1 [21:20]),
        .DIC(\io_axi_r_payload_data[31]_1 [23:22]),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[19:18]),
        .DOB(_zz_mem_port1[21:20]),
        .DOC(_zz_mem_port1[23:22]),
        .DOD(NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M mem_reg_0_31_24_29
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [25:24]),
        .DIB(\io_axi_r_payload_data[31]_1 [27:26]),
        .DIC(\io_axi_r_payload_data[31]_1 [29:28]),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[25:24]),
        .DOB(_zz_mem_port1[27:26]),
        .DOC(_zz_mem_port1[29:28]),
        .DOD(NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M mem_reg_0_31_30_31
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[31:30]),
        .DOB(NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_in/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M mem_reg_0_31_6_11
       (.ADDRA({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRB({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRC({\r_addr_reg_n_0_[4] ,\r_addr_reg_n_0_[3] ,\r_addr_reg_n_0_[2] ,\r_addr_reg_n_0_[1] ,\r_addr_reg_n_0_[0] }),
        .ADDRD({\w_addr_reg_n_0_[4] ,\w_addr_reg_n_0_[3] ,\w_addr_reg_n_0_[2] ,\w_addr_reg_n_0_[1] ,\w_addr_reg_n_0_[0] }),
        .DIA(\io_axi_r_payload_data[31]_1 [7:6]),
        .DIB(\io_axi_r_payload_data[31]_1 [9:8]),
        .DIC(\io_axi_r_payload_data[31]_1 [11:10]),
        .DID({1'b0,1'b0}),
        .DOA(_zz_mem_port1[7:6]),
        .DOB(_zz_mem_port1[9:8]),
        .DOC(_zz_mem_port1[11:10]),
        .DOD(NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(\w_addr_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_addr[0]_i_1 
       (.I0(\r_addr_reg_n_0_[0] ),
        .O(\r_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_addr[1]_i_1__0 
       (.I0(\r_addr_reg_n_0_[1] ),
        .I1(\r_addr_reg_n_0_[0] ),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_addr[2]_i_1__0 
       (.I0(\r_addr_reg_n_0_[2] ),
        .I1(\r_addr_reg_n_0_[0] ),
        .I2(\r_addr_reg_n_0_[1] ),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_addr[3]_i_1__0 
       (.I0(\r_addr_reg_n_0_[3] ),
        .I1(\r_addr_reg_n_0_[1] ),
        .I2(\r_addr_reg_n_0_[0] ),
        .I3(\r_addr_reg_n_0_[2] ),
        .O(p_0_in__0[3]));
  LUT6 #(
    .INIT(64'h8080808080808000)) 
    \r_addr[4]_i_1__0 
       (.I0(\io_axi_r_payload_data[31]_INST_0_i_2_n_0 ),
        .I1(r_axi_ar_req_valid),
        .I2(E),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\axi_r_cnt_reg[2] ),
        .O(when_FIFO_l65));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_addr[4]_i_2__0 
       (.I0(\r_addr_reg_n_0_[4] ),
        .I1(\r_addr_reg_n_0_[2] ),
        .I2(\r_addr_reg_n_0_[0] ),
        .I3(\r_addr_reg_n_0_[1] ),
        .I4(\r_addr_reg_n_0_[3] ),
        .O(p_0_in__0[4]));
  FDRE \r_addr_reg[0] 
       (.C(clk),
        .CE(when_FIFO_l65),
        .D(\r_addr[0]_i_1_n_0 ),
        .Q(\r_addr_reg_n_0_[0] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \r_addr_reg[1] 
       (.C(clk),
        .CE(when_FIFO_l65),
        .D(p_0_in__0[1]),
        .Q(\r_addr_reg_n_0_[1] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \r_addr_reg[2] 
       (.C(clk),
        .CE(when_FIFO_l65),
        .D(p_0_in__0[2]),
        .Q(\r_addr_reg_n_0_[2] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \r_addr_reg[3] 
       (.C(clk),
        .CE(when_FIFO_l65),
        .D(p_0_in__0[3]),
        .Q(\r_addr_reg_n_0_[3] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \r_addr_reg[4] 
       (.C(clk),
        .CE(when_FIFO_l65),
        .D(p_0_in__0[4]),
        .Q(\r_addr_reg_n_0_[4] ),
        .R(\w_addr_reg[0]_1 ));
  LUT3 #(
    .INIT(8'hFE)) 
    r_axi_rlast_i_2
       (.I0(Q[2]),
        .I1(\r_addr_reg[0]_0 ),
        .I2(Q[3]),
        .O(\axi_r_cnt_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_addr[0]_i_1 
       (.I0(\w_addr_reg_n_0_[0] ),
        .O(\w_addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \w_addr[1]_i_1__0 
       (.I0(\w_addr_reg_n_0_[0] ),
        .I1(\w_addr_reg_n_0_[1] ),
        .O(\w_addr[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_addr[2]_i_1__0 
       (.I0(\w_addr_reg_n_0_[2] ),
        .I1(\w_addr_reg_n_0_[1] ),
        .I2(\w_addr_reg_n_0_[0] ),
        .O(\w_addr[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \w_addr[3]_i_1__0 
       (.I0(\w_addr_reg_n_0_[3] ),
        .I1(\w_addr_reg_n_0_[0] ),
        .I2(\w_addr_reg_n_0_[1] ),
        .I3(\w_addr_reg_n_0_[2] ),
        .O(\w_addr[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \w_addr[4]_i_1 
       (.I0(\w_addr_reg_n_0_[4] ),
        .I1(\w_addr_reg_n_0_[2] ),
        .I2(\w_addr_reg_n_0_[1] ),
        .I3(\w_addr_reg_n_0_[0] ),
        .I4(\w_addr_reg_n_0_[3] ),
        .O(\w_addr[4]_i_1_n_0 ));
  FDRE \w_addr_reg[0] 
       (.C(clk),
        .CE(\w_addr_reg[3]_0 ),
        .D(\w_addr[0]_i_1_n_0 ),
        .Q(\w_addr_reg_n_0_[0] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \w_addr_reg[1] 
       (.C(clk),
        .CE(\w_addr_reg[3]_0 ),
        .D(\w_addr[1]_i_1__0_n_0 ),
        .Q(\w_addr_reg_n_0_[1] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \w_addr_reg[2] 
       (.C(clk),
        .CE(\w_addr_reg[3]_0 ),
        .D(\w_addr[2]_i_1__0_n_0 ),
        .Q(\w_addr_reg_n_0_[2] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \w_addr_reg[3] 
       (.C(clk),
        .CE(\w_addr_reg[3]_0 ),
        .D(\w_addr[3]_i_1__0_n_0 ),
        .Q(\w_addr_reg_n_0_[3] ),
        .R(\w_addr_reg[0]_1 ));
  FDRE \w_addr_reg[4] 
       (.C(clk),
        .CE(\w_addr_reg[3]_0 ),
        .D(\w_addr[4]_i_1_n_0 ),
        .Q(\w_addr_reg_n_0_[4] ),
        .R(\w_addr_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "FIFO" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_FIFO_0
   (E,
    io_enable_0,
    io_output_buffer_half,
    \axi_w_cnt_reg[3] ,
    io_output_buffer_empty,
    clk_0,
    r_enable,
    r_axi_aw_req_valid,
    io_axi_w_valid,
    \w_addr_reg[4]_0 ,
    \w_addr_reg[4]_1 ,
    Q,
    io_enable,
    \r_addr_reg[0]_0 ,
    clk,
    io_axi_w_payload_data,
    \w_addr_reg[0]_0 );
  output [0:0]E;
  output [0:0]io_enable_0;
  output io_output_buffer_half;
  output \axi_w_cnt_reg[3] ;
  output io_output_buffer_empty;
  output [31:0]clk_0;
  input r_enable;
  input r_axi_aw_req_valid;
  input io_axi_w_valid;
  input \w_addr_reg[4]_0 ;
  input \w_addr_reg[4]_1 ;
  input [3:0]Q;
  input io_enable;
  input \r_addr_reg[0]_0 ;
  input clk;
  input [31:0]io_axi_w_payload_data;
  input \w_addr_reg[0]_0 ;

  wire [0:0]E;
  wire [3:0]Q;
  wire [3:0]_zz_io_full;
  wire \axi_w_cnt_reg[3] ;
  wire clk;
  wire [31:0]clk_0;
  wire [31:0]io_axi_w_payload_data;
  wire io_axi_w_valid;
  wire io_enable;
  wire [0:0]io_enable_0;
  wire io_output_buffer_empty;
  wire io_output_buffer_empty_INST_0_i_1_n_0;
  wire io_output_buffer_empty_INST_0_i_2_n_0;
  wire io_output_buffer_empty_INST_0_i_3_n_0;
  wire io_output_buffer_half;
  wire io_output_buffer_half_INST_0_i_1_n_0;
  wire io_output_buffer_half_INST_0_i_2_n_0;
  wire mem_reg_0_31_0_5_i_1_n_0;
  wire mem_reg_0_31_0_5_i_2_n_0;
  wire mem_reg_0_31_0_5_i_4_n_0;
  wire mem_reg_0_31_0_5_i_5_n_0;
  wire [4:1]p_0_in;
  wire \r_addr[0]_i_1__0_n_0 ;
  wire \r_addr[4]_i_3_n_0 ;
  wire [4:0]r_addr_reg;
  wire \r_addr_reg[0]_0 ;
  wire r_axi_aw_req_valid;
  wire r_enable;
  wire \w_addr[4]_i_1__0_n_0 ;
  wire [4:0]w_addr_reg;
  wire \w_addr_reg[0]_0 ;
  wire \w_addr_reg[4]_0 ;
  wire \w_addr_reg[4]_1 ;
  wire [1:0]NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED;
  wire [1:0]NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h80080000)) 
    io_output_buffer_empty_INST_0
       (.I0(io_output_buffer_empty_INST_0_i_1_n_0),
        .I1(io_output_buffer_empty_INST_0_i_2_n_0),
        .I2(w_addr_reg[0]),
        .I3(r_addr_reg[0]),
        .I4(io_output_buffer_empty_INST_0_i_3_n_0),
        .O(io_output_buffer_empty));
  LUT6 #(
    .INIT(64'h9099909900009099)) 
    io_output_buffer_empty_INST_0_i_1
       (.I0(w_addr_reg[4]),
        .I1(r_addr_reg[4]),
        .I2(r_addr_reg[3]),
        .I3(w_addr_reg[3]),
        .I4(r_addr_reg[1]),
        .I5(w_addr_reg[1]),
        .O(io_output_buffer_empty_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hD0DD)) 
    io_output_buffer_empty_INST_0_i_2
       (.I0(w_addr_reg[2]),
        .I1(r_addr_reg[2]),
        .I2(r_addr_reg[1]),
        .I3(w_addr_reg[1]),
        .O(io_output_buffer_empty_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'hD0DD)) 
    io_output_buffer_empty_INST_0_i_3
       (.I0(r_addr_reg[3]),
        .I1(w_addr_reg[3]),
        .I2(w_addr_reg[2]),
        .I3(r_addr_reg[2]),
        .O(io_output_buffer_empty_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAA55AA59AA5559)) 
    io_output_buffer_half_INST_0
       (.I0(io_output_buffer_half_INST_0_i_1_n_0),
        .I1(r_addr_reg[2]),
        .I2(w_addr_reg[2]),
        .I3(w_addr_reg[3]),
        .I4(r_addr_reg[3]),
        .I5(io_output_buffer_half_INST_0_i_2_n_0),
        .O(io_output_buffer_half));
  LUT2 #(
    .INIT(4'h6)) 
    io_output_buffer_half_INST_0_i_1
       (.I0(r_addr_reg[4]),
        .I1(w_addr_reg[4]),
        .O(io_output_buffer_half_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h00B0B0BB00B000B0)) 
    io_output_buffer_half_INST_0_i_2
       (.I0(r_addr_reg[2]),
        .I1(w_addr_reg[2]),
        .I2(r_addr_reg[1]),
        .I3(w_addr_reg[1]),
        .I4(w_addr_reg[0]),
        .I5(r_addr_reg[0]),
        .O(io_output_buffer_half_INST_0_i_2_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "5" *) 
  RAM32M mem_reg_0_31_0_5
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[1:0]),
        .DIB(io_axi_w_payload_data[3:2]),
        .DIC(io_axi_w_payload_data[5:4]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[1:0]),
        .DOB(clk_0[3:2]),
        .DOC(clk_0[5:4]),
        .DOD(NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    mem_reg_0_31_0_5_i_1
       (.I0(mem_reg_0_31_0_5_i_2_n_0),
        .I1(r_axi_aw_req_valid),
        .I2(io_axi_w_valid),
        .I3(\w_addr_reg[4]_0 ),
        .I4(\w_addr_reg[4]_1 ),
        .I5(\axi_w_cnt_reg[3] ),
        .O(mem_reg_0_31_0_5_i_1_n_0));
  LUT6 #(
    .INIT(64'hDEFDFFEFFFEFDEFD)) 
    mem_reg_0_31_0_5_i_2
       (.I0(r_addr_reg[3]),
        .I1(mem_reg_0_31_0_5_i_4_n_0),
        .I2(w_addr_reg[3]),
        .I3(mem_reg_0_31_0_5_i_5_n_0),
        .I4(w_addr_reg[4]),
        .I5(r_addr_reg[4]),
        .O(mem_reg_0_31_0_5_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    mem_reg_0_31_0_5_i_3
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\axi_w_cnt_reg[3] ));
  LUT6 #(
    .INIT(64'hFB7DEFFFEFFFFB7D)) 
    mem_reg_0_31_0_5_i_4
       (.I0(r_addr_reg[0]),
        .I1(r_addr_reg[1]),
        .I2(w_addr_reg[1]),
        .I3(w_addr_reg[0]),
        .I4(r_addr_reg[2]),
        .I5(w_addr_reg[2]),
        .O(mem_reg_0_31_0_5_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    mem_reg_0_31_0_5_i_5
       (.I0(w_addr_reg[2]),
        .I1(w_addr_reg[1]),
        .I2(w_addr_reg[0]),
        .O(mem_reg_0_31_0_5_i_5_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "12" *) 
  (* ram_slice_end = "17" *) 
  RAM32M mem_reg_0_31_12_17
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[13:12]),
        .DIB(io_axi_w_payload_data[15:14]),
        .DIC(io_axi_w_payload_data[17:16]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[13:12]),
        .DOB(clk_0[15:14]),
        .DOC(clk_0[17:16]),
        .DOD(NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "18" *) 
  (* ram_slice_end = "23" *) 
  RAM32M mem_reg_0_31_18_23
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[19:18]),
        .DIB(io_axi_w_payload_data[21:20]),
        .DIC(io_axi_w_payload_data[23:22]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[19:18]),
        .DOB(clk_0[21:20]),
        .DOC(clk_0[23:22]),
        .DOD(NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "24" *) 
  (* ram_slice_end = "29" *) 
  RAM32M mem_reg_0_31_24_29
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[25:24]),
        .DIB(io_axi_w_payload_data[27:26]),
        .DIC(io_axi_w_payload_data[29:28]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[25:24]),
        .DOB(clk_0[27:26]),
        .DOC(clk_0[29:28]),
        .DOD(NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "30" *) 
  (* ram_slice_end = "31" *) 
  RAM32M mem_reg_0_31_30_31
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[31:30]),
        .DIB({1'b0,1'b0}),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[31:30]),
        .DOB(NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED[1:0]),
        .DOC(NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED[1:0]),
        .DOD(NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "1024" *) 
  (* RTL_RAM_NAME = "inst/audio_data_mover/buffer_out/mem" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "31" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "6" *) 
  (* ram_slice_end = "11" *) 
  RAM32M mem_reg_0_31_6_11
       (.ADDRA(r_addr_reg),
        .ADDRB(r_addr_reg),
        .ADDRC(r_addr_reg),
        .ADDRD(w_addr_reg),
        .DIA(io_axi_w_payload_data[7:6]),
        .DIB(io_axi_w_payload_data[9:8]),
        .DIC(io_axi_w_payload_data[11:10]),
        .DID({1'b0,1'b0}),
        .DOA(clk_0[7:6]),
        .DOB(clk_0[9:8]),
        .DOC(clk_0[11:10]),
        .DOD(NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED[1:0]),
        .WCLK(clk),
        .WE(mem_reg_0_31_0_5_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \r_addr[0]_i_1__0 
       (.I0(r_addr_reg[0]),
        .O(\r_addr[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \r_addr[1]_i_1 
       (.I0(r_addr_reg[1]),
        .I1(r_addr_reg[0]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \r_addr[2]_i_1 
       (.I0(r_addr_reg[2]),
        .I1(r_addr_reg[0]),
        .I2(r_addr_reg[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \r_addr[3]_i_1 
       (.I0(r_addr_reg[3]),
        .I1(r_addr_reg[1]),
        .I2(r_addr_reg[0]),
        .I3(r_addr_reg[2]),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00007F00)) 
    \r_addr[4]_i_1 
       (.I0(io_output_buffer_empty_INST_0_i_3_n_0),
        .I1(\r_addr[4]_i_3_n_0 ),
        .I2(io_output_buffer_empty_INST_0_i_1_n_0),
        .I3(io_enable),
        .I4(\r_addr_reg[0]_0 ),
        .O(io_enable_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \r_addr[4]_i_2 
       (.I0(r_addr_reg[4]),
        .I1(r_addr_reg[2]),
        .I2(r_addr_reg[0]),
        .I3(r_addr_reg[1]),
        .I4(r_addr_reg[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hD0DD00000000D0DD)) 
    \r_addr[4]_i_3 
       (.I0(w_addr_reg[1]),
        .I1(r_addr_reg[1]),
        .I2(r_addr_reg[2]),
        .I3(w_addr_reg[2]),
        .I4(w_addr_reg[0]),
        .I5(r_addr_reg[0]),
        .O(\r_addr[4]_i_3_n_0 ));
  FDRE \r_addr_reg[0] 
       (.C(clk),
        .CE(io_enable_0),
        .D(\r_addr[0]_i_1__0_n_0 ),
        .Q(r_addr_reg[0]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \r_addr_reg[1] 
       (.C(clk),
        .CE(io_enable_0),
        .D(p_0_in[1]),
        .Q(r_addr_reg[1]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \r_addr_reg[2] 
       (.C(clk),
        .CE(io_enable_0),
        .D(p_0_in[2]),
        .Q(r_addr_reg[2]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \r_addr_reg[3] 
       (.C(clk),
        .CE(io_enable_0),
        .D(p_0_in[3]),
        .Q(r_addr_reg[3]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \r_addr_reg[4] 
       (.C(clk),
        .CE(io_enable_0),
        .D(p_0_in[4]),
        .Q(r_addr_reg[4]),
        .R(\w_addr_reg[0]_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \r_buffer_in[31]_i_1 
       (.I0(io_enable_0),
        .I1(r_enable),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \w_addr[0]_i_1__0 
       (.I0(w_addr_reg[0]),
        .O(_zz_io_full[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \w_addr[1]_i_1 
       (.I0(w_addr_reg[0]),
        .I1(w_addr_reg[1]),
        .O(_zz_io_full[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \w_addr[2]_i_1 
       (.I0(w_addr_reg[2]),
        .I1(w_addr_reg[1]),
        .I2(w_addr_reg[0]),
        .O(_zz_io_full[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \w_addr[3]_i_1 
       (.I0(w_addr_reg[3]),
        .I1(w_addr_reg[2]),
        .I2(w_addr_reg[1]),
        .I3(w_addr_reg[0]),
        .O(_zz_io_full[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \w_addr[4]_i_1__0 
       (.I0(w_addr_reg[4]),
        .I1(w_addr_reg[3]),
        .I2(w_addr_reg[2]),
        .I3(w_addr_reg[1]),
        .I4(w_addr_reg[0]),
        .O(\w_addr[4]_i_1__0_n_0 ));
  FDRE \w_addr_reg[0] 
       (.C(clk),
        .CE(mem_reg_0_31_0_5_i_1_n_0),
        .D(_zz_io_full[0]),
        .Q(w_addr_reg[0]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \w_addr_reg[1] 
       (.C(clk),
        .CE(mem_reg_0_31_0_5_i_1_n_0),
        .D(_zz_io_full[1]),
        .Q(w_addr_reg[1]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \w_addr_reg[2] 
       (.C(clk),
        .CE(mem_reg_0_31_0_5_i_1_n_0),
        .D(_zz_io_full[2]),
        .Q(w_addr_reg[2]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \w_addr_reg[3] 
       (.C(clk),
        .CE(mem_reg_0_31_0_5_i_1_n_0),
        .D(_zz_io_full[3]),
        .Q(w_addr_reg[3]),
        .R(\w_addr_reg[0]_0 ));
  FDRE \w_addr_reg[4] 
       (.C(clk),
        .CE(mem_reg_0_31_0_5_i_1_n_0),
        .D(\w_addr[4]_i_1__0_n_0 ),
        .Q(w_addr_reg[4]),
        .R(\w_addr_reg[0]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_I2S
   (resetn_0,
    r_enable,
    io_mclk,
    r_buffer_in_full_reg_0,
    io_reclrc,
    io_pbdat,
    io_enable_0,
    r_bclk_reg_0,
    Q,
    clk,
    resetn,
    r_buffer_in_full_reg_1,
    io_enable,
    io_recdat,
    r_buffer_out_full_reg_0,
    E,
    D);
  output resetn_0;
  output r_enable;
  output io_mclk;
  output r_buffer_in_full_reg_0;
  output io_reclrc;
  output io_pbdat;
  output io_enable_0;
  output r_bclk_reg_0;
  output [31:0]Q;
  input clk;
  input resetn;
  input [0:0]r_buffer_in_full_reg_1;
  input io_enable;
  input io_recdat;
  input r_buffer_out_full_reg_0;
  input [0:0]E;
  input [31:0]D;

  wire [31:0]D;
  wire [0:0]E;
  wire [31:0]Q;
  wire clk;
  wire io_enable;
  wire io_enable_0;
  wire io_mclk;
  wire io_pbdat;
  wire io_recdat;
  wire io_reclrc;
  wire [31:0]p_1_in;
  wire [11:1]p_2_in;
  wire r_bclk_en;
  wire r_bclk_i_1_n_0;
  wire r_bclk_reg_0;
  wire [31:0]r_buffer_in;
  wire r_buffer_in_full_i_1_n_0;
  wire r_buffer_in_full_reg_0;
  wire [0:0]r_buffer_in_full_reg_1;
  wire r_buffer_out;
  wire r_buffer_out_full_i_1_n_0;
  wire r_buffer_out_full_reg_0;
  wire r_buffer_out_full_reg_n_0;
  wire \r_cnt_bclk_en[0]_i_1_n_0 ;
  wire \r_cnt_bclk_en[1]_i_1_n_0 ;
  wire \r_cnt_bclk_en[2]_i_1_n_0 ;
  wire \r_cnt_bclk_en[3]_i_1_n_0 ;
  wire \r_cnt_bclk_en[3]_i_2_n_0 ;
  wire \r_cnt_bclk_en[4]_i_1_n_0 ;
  wire \r_cnt_bclk_en_reg_n_0_[0] ;
  wire \r_cnt_bclk_en_reg_n_0_[1] ;
  wire \r_cnt_bclk_en_reg_n_0_[2] ;
  wire \r_cnt_bclk_en_reg_n_0_[3] ;
  wire \r_cnt_bclk_en_reg_n_0_[4] ;
  wire r_cnt_frame_en0_carry__0_n_0;
  wire r_cnt_frame_en0_carry__0_n_1;
  wire r_cnt_frame_en0_carry__0_n_2;
  wire r_cnt_frame_en0_carry__0_n_3;
  wire r_cnt_frame_en0_carry__1_n_2;
  wire r_cnt_frame_en0_carry__1_n_3;
  wire r_cnt_frame_en0_carry_n_0;
  wire r_cnt_frame_en0_carry_n_1;
  wire r_cnt_frame_en0_carry_n_2;
  wire r_cnt_frame_en0_carry_n_3;
  wire \r_cnt_frame_en[0]_i_1_n_0 ;
  wire \r_cnt_frame_en[10]_i_1_n_0 ;
  wire \r_cnt_frame_en[10]_i_2_n_0 ;
  wire \r_cnt_frame_en[11]_i_1_n_0 ;
  wire \r_cnt_frame_en[1]_i_1_n_0 ;
  wire \r_cnt_frame_en[2]_i_1_n_0 ;
  wire \r_cnt_frame_en[3]_i_1_n_0 ;
  wire \r_cnt_frame_en[4]_i_1_n_0 ;
  wire \r_cnt_frame_en[5]_i_1_n_0 ;
  wire \r_cnt_frame_en[6]_i_1_n_0 ;
  wire \r_cnt_frame_en[7]_i_1_n_0 ;
  wire \r_cnt_frame_en_reg_n_0_[0] ;
  wire \r_cnt_frame_en_reg_n_0_[10] ;
  wire \r_cnt_frame_en_reg_n_0_[11] ;
  wire \r_cnt_frame_en_reg_n_0_[1] ;
  wire \r_cnt_frame_en_reg_n_0_[2] ;
  wire \r_cnt_frame_en_reg_n_0_[3] ;
  wire \r_cnt_frame_en_reg_n_0_[4] ;
  wire \r_cnt_frame_en_reg_n_0_[5] ;
  wire \r_cnt_frame_en_reg_n_0_[6] ;
  wire \r_cnt_frame_en_reg_n_0_[7] ;
  wire \r_cnt_frame_en_reg_n_0_[8] ;
  wire \r_cnt_frame_en_reg_n_0_[9] ;
  wire \r_cnt_lrclk_en[0]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[10]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[10]_i_2_n_0 ;
  wire \r_cnt_lrclk_en[1]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[2]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[3]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[4]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[5]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[5]_i_2_n_0 ;
  wire \r_cnt_lrclk_en[6]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[7]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[8]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[9]_i_1_n_0 ;
  wire \r_cnt_lrclk_en[9]_i_2_n_0 ;
  wire \r_cnt_lrclk_en[9]_i_3_n_0 ;
  wire \r_cnt_lrclk_en_reg_n_0_[0] ;
  wire \r_cnt_lrclk_en_reg_n_0_[10] ;
  wire \r_cnt_lrclk_en_reg_n_0_[1] ;
  wire \r_cnt_lrclk_en_reg_n_0_[2] ;
  wire \r_cnt_lrclk_en_reg_n_0_[3] ;
  wire \r_cnt_lrclk_en_reg_n_0_[4] ;
  wire \r_cnt_lrclk_en_reg_n_0_[5] ;
  wire \r_cnt_lrclk_en_reg_n_0_[6] ;
  wire \r_cnt_lrclk_en_reg_n_0_[7] ;
  wire \r_cnt_lrclk_en_reg_n_0_[8] ;
  wire \r_cnt_lrclk_en_reg_n_0_[9] ;
  wire [2:0]r_cnt_mclk_en;
  wire \r_cnt_mclk_en[0]_i_1_n_0 ;
  wire \r_cnt_mclk_en[1]_i_1_n_0 ;
  wire \r_cnt_mclk_en[2]_i_1_n_0 ;
  wire r_data;
  wire \r_data[0]_i_1_n_0 ;
  wire \r_data[10]_i_1_n_0 ;
  wire \r_data[11]_i_1_n_0 ;
  wire \r_data[12]_i_1_n_0 ;
  wire \r_data[13]_i_1_n_0 ;
  wire \r_data[14]_i_1_n_0 ;
  wire \r_data[15]_i_1_n_0 ;
  wire \r_data[16]_i_1_n_0 ;
  wire \r_data[17]_i_1_n_0 ;
  wire \r_data[18]_i_1_n_0 ;
  wire \r_data[19]_i_1_n_0 ;
  wire \r_data[1]_i_1_n_0 ;
  wire \r_data[20]_i_1_n_0 ;
  wire \r_data[21]_i_1_n_0 ;
  wire \r_data[22]_i_1_n_0 ;
  wire \r_data[23]_i_1_n_0 ;
  wire \r_data[24]_i_1_n_0 ;
  wire \r_data[25]_i_1_n_0 ;
  wire \r_data[26]_i_1_n_0 ;
  wire \r_data[27]_i_1_n_0 ;
  wire \r_data[28]_i_1_n_0 ;
  wire \r_data[29]_i_1_n_0 ;
  wire \r_data[2]_i_1_n_0 ;
  wire \r_data[30]_i_1_n_0 ;
  wire \r_data[31]_i_1_n_0 ;
  wire \r_data[32]_i_1_n_0 ;
  wire \r_data[33]_i_1_n_0 ;
  wire \r_data[34]_i_1_n_0 ;
  wire \r_data[35]_i_1_n_0 ;
  wire \r_data[36]_i_1_n_0 ;
  wire \r_data[37]_i_1_n_0 ;
  wire \r_data[38]_i_1_n_0 ;
  wire \r_data[39]_i_1_n_0 ;
  wire \r_data[3]_i_1_n_0 ;
  wire \r_data[40]_i_1_n_0 ;
  wire \r_data[41]_i_1_n_0 ;
  wire \r_data[42]_i_1_n_0 ;
  wire \r_data[43]_i_1_n_0 ;
  wire \r_data[44]_i_1_n_0 ;
  wire \r_data[45]_i_1_n_0 ;
  wire \r_data[46]_i_1_n_0 ;
  wire \r_data[47]_i_1_n_0 ;
  wire \r_data[48]_i_1_n_0 ;
  wire \r_data[49]_i_1_n_0 ;
  wire \r_data[4]_i_1_n_0 ;
  wire \r_data[50]_i_1_n_0 ;
  wire \r_data[51]_i_1_n_0 ;
  wire \r_data[52]_i_1_n_0 ;
  wire \r_data[53]_i_1_n_0 ;
  wire \r_data[54]_i_1_n_0 ;
  wire \r_data[55]_i_1_n_0 ;
  wire \r_data[56]_i_1_n_0 ;
  wire \r_data[57]_i_1_n_0 ;
  wire \r_data[58]_i_1_n_0 ;
  wire \r_data[59]_i_1_n_0 ;
  wire \r_data[5]_i_1_n_0 ;
  wire \r_data[60]_i_1_n_0 ;
  wire \r_data[61]_i_1_n_0 ;
  wire \r_data[62]_i_1_n_0 ;
  wire \r_data[63]_i_2_n_0 ;
  wire \r_data[6]_i_1_n_0 ;
  wire \r_data[7]_i_1_n_0 ;
  wire \r_data[8]_i_1_n_0 ;
  wire \r_data[9]_i_1_n_0 ;
  wire \r_data_reg_n_0_[0] ;
  wire \r_data_reg_n_0_[10] ;
  wire \r_data_reg_n_0_[11] ;
  wire \r_data_reg_n_0_[12] ;
  wire \r_data_reg_n_0_[13] ;
  wire \r_data_reg_n_0_[14] ;
  wire \r_data_reg_n_0_[15] ;
  wire \r_data_reg_n_0_[16] ;
  wire \r_data_reg_n_0_[17] ;
  wire \r_data_reg_n_0_[18] ;
  wire \r_data_reg_n_0_[19] ;
  wire \r_data_reg_n_0_[1] ;
  wire \r_data_reg_n_0_[20] ;
  wire \r_data_reg_n_0_[21] ;
  wire \r_data_reg_n_0_[22] ;
  wire \r_data_reg_n_0_[23] ;
  wire \r_data_reg_n_0_[24] ;
  wire \r_data_reg_n_0_[25] ;
  wire \r_data_reg_n_0_[26] ;
  wire \r_data_reg_n_0_[27] ;
  wire \r_data_reg_n_0_[28] ;
  wire \r_data_reg_n_0_[29] ;
  wire \r_data_reg_n_0_[2] ;
  wire \r_data_reg_n_0_[30] ;
  wire \r_data_reg_n_0_[31] ;
  wire \r_data_reg_n_0_[3] ;
  wire \r_data_reg_n_0_[4] ;
  wire \r_data_reg_n_0_[5] ;
  wire \r_data_reg_n_0_[6] ;
  wire \r_data_reg_n_0_[7] ;
  wire \r_data_reg_n_0_[8] ;
  wire \r_data_reg_n_0_[9] ;
  wire r_enable;
  wire r_enable_i_1_n_0;
  wire r_frame_en;
  wire r_frame_en_i_2_n_0;
  wire r_frame_en_i_3_n_0;
  wire r_lrclk;
  wire r_lrclk_en;
  wire r_lrclk_i_2_n_0;
  wire r_mclk_en;
  wire r_mclk_i_1_n_0;
  wire r_out_i_1_n_0;
  wire resetn;
  wire resetn_0;
  wire when_I2S_l113;
  wire when_I2S_l138;
  wire when_I2S_l146;
  wire when_I2S_l154;
  wire [3:2]NLW_r_cnt_frame_en0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_r_cnt_frame_en0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    mem_reg_0_31_0_5_i_2__0
       (.I0(io_enable),
        .I1(r_buffer_out_full_reg_n_0),
        .O(io_enable_0));
  LUT1 #(
    .INIT(2'h1)) 
    \r_axi_bid[11]_i_1 
       (.I0(resetn),
        .O(resetn_0));
  LUT5 #(
    .INIT(32'h00040000)) 
    r_bclk_en_i_1
       (.I0(\r_cnt_bclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_bclk_en_reg_n_0_[2] ),
        .I3(\r_cnt_bclk_en_reg_n_0_[4] ),
        .I4(\r_cnt_bclk_en_reg_n_0_[3] ),
        .O(when_I2S_l138));
  FDRE r_bclk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(when_I2S_l138),
        .Q(r_bclk_en),
        .R(r_lrclk));
  LUT3 #(
    .INIT(8'h7B)) 
    r_bclk_i_1
       (.I0(r_bclk_en),
        .I1(r_enable),
        .I2(r_bclk_reg_0),
        .O(r_bclk_i_1_n_0));
  FDRE r_bclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_bclk_i_1_n_0),
        .Q(r_bclk_reg_0),
        .R(resetn_0));
  LUT5 #(
    .INIT(32'h00C0E0C0)) 
    r_buffer_in_full_i_1
       (.I0(r_buffer_in_full_reg_1),
        .I1(r_buffer_in_full_reg_0),
        .I2(resetn),
        .I3(r_enable),
        .I4(r_frame_en),
        .O(r_buffer_in_full_i_1_n_0));
  FDRE r_buffer_in_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_buffer_in_full_i_1_n_0),
        .Q(r_buffer_in_full_reg_0),
        .R(1'b0));
  FDRE \r_buffer_in_reg[0] 
       (.C(clk),
        .CE(E),
        .D(D[0]),
        .Q(r_buffer_in[0]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[10] 
       (.C(clk),
        .CE(E),
        .D(D[10]),
        .Q(r_buffer_in[10]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[11] 
       (.C(clk),
        .CE(E),
        .D(D[11]),
        .Q(r_buffer_in[11]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[12] 
       (.C(clk),
        .CE(E),
        .D(D[12]),
        .Q(r_buffer_in[12]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[13] 
       (.C(clk),
        .CE(E),
        .D(D[13]),
        .Q(r_buffer_in[13]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[14] 
       (.C(clk),
        .CE(E),
        .D(D[14]),
        .Q(r_buffer_in[14]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[15] 
       (.C(clk),
        .CE(E),
        .D(D[15]),
        .Q(r_buffer_in[15]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[16] 
       (.C(clk),
        .CE(E),
        .D(D[16]),
        .Q(r_buffer_in[16]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[17] 
       (.C(clk),
        .CE(E),
        .D(D[17]),
        .Q(r_buffer_in[17]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[18] 
       (.C(clk),
        .CE(E),
        .D(D[18]),
        .Q(r_buffer_in[18]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[19] 
       (.C(clk),
        .CE(E),
        .D(D[19]),
        .Q(r_buffer_in[19]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[1] 
       (.C(clk),
        .CE(E),
        .D(D[1]),
        .Q(r_buffer_in[1]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[20] 
       (.C(clk),
        .CE(E),
        .D(D[20]),
        .Q(r_buffer_in[20]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[21] 
       (.C(clk),
        .CE(E),
        .D(D[21]),
        .Q(r_buffer_in[21]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[22] 
       (.C(clk),
        .CE(E),
        .D(D[22]),
        .Q(r_buffer_in[22]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[23] 
       (.C(clk),
        .CE(E),
        .D(D[23]),
        .Q(r_buffer_in[23]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[24] 
       (.C(clk),
        .CE(E),
        .D(D[24]),
        .Q(r_buffer_in[24]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[25] 
       (.C(clk),
        .CE(E),
        .D(D[25]),
        .Q(r_buffer_in[25]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[26] 
       (.C(clk),
        .CE(E),
        .D(D[26]),
        .Q(r_buffer_in[26]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[27] 
       (.C(clk),
        .CE(E),
        .D(D[27]),
        .Q(r_buffer_in[27]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[28] 
       (.C(clk),
        .CE(E),
        .D(D[28]),
        .Q(r_buffer_in[28]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[29] 
       (.C(clk),
        .CE(E),
        .D(D[29]),
        .Q(r_buffer_in[29]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[2] 
       (.C(clk),
        .CE(E),
        .D(D[2]),
        .Q(r_buffer_in[2]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[30] 
       (.C(clk),
        .CE(E),
        .D(D[30]),
        .Q(r_buffer_in[30]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[31] 
       (.C(clk),
        .CE(E),
        .D(D[31]),
        .Q(r_buffer_in[31]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[3] 
       (.C(clk),
        .CE(E),
        .D(D[3]),
        .Q(r_buffer_in[3]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[4] 
       (.C(clk),
        .CE(E),
        .D(D[4]),
        .Q(r_buffer_in[4]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[5] 
       (.C(clk),
        .CE(E),
        .D(D[5]),
        .Q(r_buffer_in[5]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[6] 
       (.C(clk),
        .CE(E),
        .D(D[6]),
        .Q(r_buffer_in[6]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[7] 
       (.C(clk),
        .CE(E),
        .D(D[7]),
        .Q(r_buffer_in[7]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[8] 
       (.C(clk),
        .CE(E),
        .D(D[8]),
        .Q(r_buffer_in[8]),
        .R(resetn_0));
  FDRE \r_buffer_in_reg[9] 
       (.C(clk),
        .CE(E),
        .D(D[9]),
        .Q(r_buffer_in[9]),
        .R(resetn_0));
  LUT2 #(
    .INIT(4'h8)) 
    \r_buffer_out[31]_i_1 
       (.I0(r_frame_en),
        .I1(r_enable),
        .O(r_buffer_out));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hF7A0)) 
    r_buffer_out_full_i_1
       (.I0(r_enable),
        .I1(r_buffer_out_full_reg_0),
        .I2(r_frame_en),
        .I3(r_buffer_out_full_reg_n_0),
        .O(r_buffer_out_full_i_1_n_0));
  FDRE r_buffer_out_full_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_buffer_out_full_i_1_n_0),
        .Q(r_buffer_out_full_reg_n_0),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[0] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[0]),
        .Q(Q[0]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[10] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[10]),
        .Q(Q[10]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[11] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[11]),
        .Q(Q[11]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[12] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[12]),
        .Q(Q[12]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[13] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[13]),
        .Q(Q[13]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[14] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[14]),
        .Q(Q[14]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[15] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[15]),
        .Q(Q[15]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[16] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[16]),
        .Q(Q[16]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[17] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[17]),
        .Q(Q[17]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[18] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[18]),
        .Q(Q[18]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[19] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[19]),
        .Q(Q[19]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[1] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[1]),
        .Q(Q[1]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[20] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[20]),
        .Q(Q[20]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[21] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[21]),
        .Q(Q[21]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[22] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[22]),
        .Q(Q[22]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[23] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[23]),
        .Q(Q[23]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[24] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[24]),
        .Q(Q[24]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[25] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[25]),
        .Q(Q[25]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[26] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[26]),
        .Q(Q[26]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[27] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[27]),
        .Q(Q[27]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[28] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[28]),
        .Q(Q[28]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[29] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[29]),
        .Q(Q[29]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[2] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[2]),
        .Q(Q[2]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[30] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[30]),
        .Q(Q[30]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[31] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[31]),
        .Q(Q[31]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[3] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[3]),
        .Q(Q[3]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[4] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[4]),
        .Q(Q[4]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[5] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[5]),
        .Q(Q[5]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[6] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[6]),
        .Q(Q[6]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[7] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[7]),
        .Q(Q[7]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[8] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[8]),
        .Q(Q[8]),
        .R(resetn_0));
  FDRE \r_buffer_out_reg[9] 
       (.C(clk),
        .CE(r_buffer_out),
        .D(p_1_in[9]),
        .Q(Q[9]),
        .R(resetn_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h04CC)) 
    \r_cnt_bclk_en[0]_i_1 
       (.I0(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I1(resetn),
        .I2(when_I2S_l138),
        .I3(r_enable),
        .O(\r_cnt_bclk_en[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000066626666)) 
    \r_cnt_bclk_en[1]_i_1 
       (.I0(\r_cnt_bclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_bclk_en_reg_n_0_[2] ),
        .I3(\r_cnt_bclk_en_reg_n_0_[4] ),
        .I4(\r_cnt_bclk_en_reg_n_0_[3] ),
        .I5(r_lrclk),
        .O(\r_cnt_bclk_en[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0078)) 
    \r_cnt_bclk_en[2]_i_1 
       (.I0(\r_cnt_bclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_bclk_en_reg_n_0_[2] ),
        .I3(r_lrclk),
        .O(\r_cnt_bclk_en[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007DDDDDDD)) 
    \r_cnt_bclk_en[3]_i_1 
       (.I0(r_enable),
        .I1(\r_cnt_bclk_en_reg_n_0_[3] ),
        .I2(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I3(\r_cnt_bclk_en_reg_n_0_[1] ),
        .I4(\r_cnt_bclk_en_reg_n_0_[2] ),
        .I5(\r_cnt_bclk_en[3]_i_2_n_0 ),
        .O(\r_cnt_bclk_en[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h8F)) 
    \r_cnt_bclk_en[3]_i_2 
       (.I0(r_enable),
        .I1(when_I2S_l138),
        .I2(resetn),
        .O(\r_cnt_bclk_en[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000007F80FF00)) 
    \r_cnt_bclk_en[4]_i_1 
       (.I0(\r_cnt_bclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_bclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_bclk_en_reg_n_0_[2] ),
        .I3(\r_cnt_bclk_en_reg_n_0_[4] ),
        .I4(\r_cnt_bclk_en_reg_n_0_[3] ),
        .I5(r_lrclk),
        .O(\r_cnt_bclk_en[4]_i_1_n_0 ));
  FDRE \r_cnt_bclk_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_bclk_en[0]_i_1_n_0 ),
        .Q(\r_cnt_bclk_en_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \r_cnt_bclk_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_bclk_en[1]_i_1_n_0 ),
        .Q(\r_cnt_bclk_en_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \r_cnt_bclk_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_bclk_en[2]_i_1_n_0 ),
        .Q(\r_cnt_bclk_en_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \r_cnt_bclk_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_bclk_en[3]_i_1_n_0 ),
        .Q(\r_cnt_bclk_en_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \r_cnt_bclk_en_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_bclk_en[4]_i_1_n_0 ),
        .Q(\r_cnt_bclk_en_reg_n_0_[4] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_cnt_frame_en0_carry
       (.CI(1'b0),
        .CO({r_cnt_frame_en0_carry_n_0,r_cnt_frame_en0_carry_n_1,r_cnt_frame_en0_carry_n_2,r_cnt_frame_en0_carry_n_3}),
        .CYINIT(\r_cnt_frame_en_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[4:1]),
        .S({\r_cnt_frame_en_reg_n_0_[4] ,\r_cnt_frame_en_reg_n_0_[3] ,\r_cnt_frame_en_reg_n_0_[2] ,\r_cnt_frame_en_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_cnt_frame_en0_carry__0
       (.CI(r_cnt_frame_en0_carry_n_0),
        .CO({r_cnt_frame_en0_carry__0_n_0,r_cnt_frame_en0_carry__0_n_1,r_cnt_frame_en0_carry__0_n_2,r_cnt_frame_en0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_2_in[8:5]),
        .S({\r_cnt_frame_en_reg_n_0_[8] ,\r_cnt_frame_en_reg_n_0_[7] ,\r_cnt_frame_en_reg_n_0_[6] ,\r_cnt_frame_en_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 r_cnt_frame_en0_carry__1
       (.CI(r_cnt_frame_en0_carry__0_n_0),
        .CO({NLW_r_cnt_frame_en0_carry__1_CO_UNCONNECTED[3:2],r_cnt_frame_en0_carry__1_n_2,r_cnt_frame_en0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_r_cnt_frame_en0_carry__1_O_UNCONNECTED[3],p_2_in[11:9]}),
        .S({1'b0,\r_cnt_frame_en_reg_n_0_[11] ,\r_cnt_frame_en_reg_n_0_[10] ,\r_cnt_frame_en_reg_n_0_[9] }));
  LUT2 #(
    .INIT(4'h7)) 
    \r_cnt_frame_en[0]_i_1 
       (.I0(\r_cnt_frame_en_reg_n_0_[0] ),
        .I1(r_enable),
        .O(\r_cnt_frame_en[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \r_cnt_frame_en[10]_i_1 
       (.I0(r_enable),
        .I1(when_I2S_l154),
        .I2(resetn),
        .O(\r_cnt_frame_en[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[10]_i_2 
       (.I0(p_2_in[10]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[10]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \r_cnt_frame_en[11]_i_1 
       (.I0(r_enable),
        .I1(resetn),
        .I2(when_I2S_l154),
        .O(\r_cnt_frame_en[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[1]_i_1 
       (.I0(p_2_in[1]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[2]_i_1 
       (.I0(p_2_in[2]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[3]_i_1 
       (.I0(p_2_in[3]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[4]_i_1 
       (.I0(p_2_in[4]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[5]_i_1 
       (.I0(p_2_in[5]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[6]_i_1 
       (.I0(p_2_in[6]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_frame_en[7]_i_1 
       (.I0(p_2_in[7]),
        .I1(r_enable),
        .O(\r_cnt_frame_en[7]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[0]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[0] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[10]_i_2_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[10] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in[11]),
        .Q(\r_cnt_frame_en_reg_n_0_[11] ),
        .R(\r_cnt_frame_en[11]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[1]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[1] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[2]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[2] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[3]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[3] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[4]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[4] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[5]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[5] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[6]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[6] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_frame_en[7]_i_1_n_0 ),
        .Q(\r_cnt_frame_en_reg_n_0_[7] ),
        .R(\r_cnt_frame_en[10]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in[8]),
        .Q(\r_cnt_frame_en_reg_n_0_[8] ),
        .R(\r_cnt_frame_en[11]_i_1_n_0 ));
  FDRE \r_cnt_frame_en_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_2_in[9]),
        .Q(\r_cnt_frame_en_reg_n_0_[9] ),
        .R(\r_cnt_frame_en[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \r_cnt_lrclk_en[0]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I1(r_enable),
        .O(\r_cnt_lrclk_en[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF007F80)) 
    \r_cnt_lrclk_en[10]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[9] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[10] ),
        .I4(\r_cnt_lrclk_en[10]_i_2_n_0 ),
        .I5(r_lrclk),
        .O(\r_cnt_lrclk_en[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \r_cnt_lrclk_en[10]_i_2 
       (.I0(\r_cnt_lrclk_en[9]_i_3_n_0 ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[6] ),
        .O(\r_cnt_lrclk_en[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \r_cnt_lrclk_en[1]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I2(r_enable),
        .O(\r_cnt_lrclk_en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h78FF)) 
    \r_cnt_lrclk_en[2]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .I3(r_enable),
        .O(\r_cnt_lrclk_en[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7F80FFFF)) 
    \r_cnt_lrclk_en[3]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[3] ),
        .I4(r_enable),
        .O(\r_cnt_lrclk_en[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF8000FFFFFFFF)) 
    \r_cnt_lrclk_en[4]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[3] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .I4(\r_cnt_lrclk_en_reg_n_0_[4] ),
        .I5(r_enable),
        .O(\r_cnt_lrclk_en[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \r_cnt_lrclk_en[5]_i_1 
       (.I0(\r_cnt_lrclk_en[5]_i_2_n_0 ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[5] ),
        .I2(r_enable),
        .O(\r_cnt_lrclk_en[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \r_cnt_lrclk_en[5]_i_2 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[3] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .I4(\r_cnt_lrclk_en_reg_n_0_[4] ),
        .O(\r_cnt_lrclk_en[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h9F)) 
    \r_cnt_lrclk_en[6]_i_1 
       (.I0(\r_cnt_lrclk_en[9]_i_3_n_0 ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[6] ),
        .I2(r_enable),
        .O(\r_cnt_lrclk_en[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AAAA5545)) 
    \r_cnt_lrclk_en[7]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[9] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[10] ),
        .I4(\r_cnt_lrclk_en[10]_i_2_n_0 ),
        .I5(r_lrclk),
        .O(\r_cnt_lrclk_en[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00C6)) 
    \r_cnt_lrclk_en[8]_i_1 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .I2(\r_cnt_lrclk_en[10]_i_2_n_0 ),
        .I3(r_lrclk),
        .O(\r_cnt_lrclk_en[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8F)) 
    \r_cnt_lrclk_en[9]_i_1 
       (.I0(r_enable),
        .I1(when_I2S_l146),
        .I2(resetn),
        .O(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF2000FFFFFFFF)) 
    \r_cnt_lrclk_en[9]_i_2 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .I1(\r_cnt_lrclk_en[9]_i_3_n_0 ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[6] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .I4(\r_cnt_lrclk_en_reg_n_0_[9] ),
        .I5(r_enable),
        .O(\r_cnt_lrclk_en[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \r_cnt_lrclk_en[9]_i_3 
       (.I0(\r_cnt_lrclk_en_reg_n_0_[4] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .I4(\r_cnt_lrclk_en_reg_n_0_[3] ),
        .I5(\r_cnt_lrclk_en_reg_n_0_[5] ),
        .O(\r_cnt_lrclk_en[9]_i_3_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[0]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[0] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[10]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \r_cnt_lrclk_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[1]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[1] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[2]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[2] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[3]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[3] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[4]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[4] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[5]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[5] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[6]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[6] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  FDRE \r_cnt_lrclk_en_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[7]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \r_cnt_lrclk_en_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[8]_i_1_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \r_cnt_lrclk_en_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_lrclk_en[9]_i_2_n_0 ),
        .Q(\r_cnt_lrclk_en_reg_n_0_[9] ),
        .R(\r_cnt_lrclk_en[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00A2)) 
    \r_cnt_mclk_en[0]_i_1 
       (.I0(resetn),
        .I1(r_cnt_mclk_en[2]),
        .I2(r_cnt_mclk_en[1]),
        .I3(r_cnt_mclk_en[0]),
        .O(\r_cnt_mclk_en[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \r_cnt_mclk_en[1]_i_1 
       (.I0(resetn),
        .I1(r_cnt_mclk_en[1]),
        .I2(r_cnt_mclk_en[0]),
        .O(\r_cnt_mclk_en[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h2880)) 
    \r_cnt_mclk_en[2]_i_1 
       (.I0(resetn),
        .I1(r_cnt_mclk_en[2]),
        .I2(r_cnt_mclk_en[1]),
        .I3(r_cnt_mclk_en[0]),
        .O(\r_cnt_mclk_en[2]_i_1_n_0 ));
  FDRE \r_cnt_mclk_en_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_mclk_en[0]_i_1_n_0 ),
        .Q(r_cnt_mclk_en[0]),
        .R(1'b0));
  FDRE \r_cnt_mclk_en_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_mclk_en[1]_i_1_n_0 ),
        .Q(r_cnt_mclk_en[1]),
        .R(1'b0));
  FDRE \r_cnt_mclk_en_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\r_cnt_mclk_en[2]_i_1_n_0 ),
        .Q(r_cnt_mclk_en[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[0]_i_1 
       (.I0(r_buffer_in[0]),
        .I1(r_frame_en),
        .I2(io_recdat),
        .O(\r_data[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[10]_i_1 
       (.I0(r_buffer_in[10]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[9] ),
        .O(\r_data[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[11]_i_1 
       (.I0(r_buffer_in[11]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[10] ),
        .O(\r_data[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[12]_i_1 
       (.I0(r_buffer_in[12]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[11] ),
        .O(\r_data[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[13]_i_1 
       (.I0(r_buffer_in[13]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[12] ),
        .O(\r_data[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[14]_i_1 
       (.I0(r_buffer_in[14]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[13] ),
        .O(\r_data[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[15]_i_1 
       (.I0(r_buffer_in[15]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[14] ),
        .O(\r_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[16]_i_1 
       (.I0(r_buffer_in[16]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[15] ),
        .O(\r_data[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[17]_i_1 
       (.I0(r_buffer_in[17]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[16] ),
        .O(\r_data[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[18]_i_1 
       (.I0(r_buffer_in[18]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[17] ),
        .O(\r_data[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[19]_i_1 
       (.I0(r_buffer_in[19]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[18] ),
        .O(\r_data[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[1]_i_1 
       (.I0(r_buffer_in[1]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[0] ),
        .O(\r_data[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[20]_i_1 
       (.I0(r_buffer_in[20]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[19] ),
        .O(\r_data[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[21]_i_1 
       (.I0(r_buffer_in[21]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[20] ),
        .O(\r_data[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[22]_i_1 
       (.I0(r_buffer_in[22]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[21] ),
        .O(\r_data[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[23]_i_1 
       (.I0(r_buffer_in[23]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[22] ),
        .O(\r_data[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[24]_i_1 
       (.I0(r_buffer_in[24]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[23] ),
        .O(\r_data[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[25]_i_1 
       (.I0(r_buffer_in[25]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[24] ),
        .O(\r_data[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[26]_i_1 
       (.I0(r_buffer_in[26]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[25] ),
        .O(\r_data[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[27]_i_1 
       (.I0(r_buffer_in[27]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[26] ),
        .O(\r_data[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[28]_i_1 
       (.I0(r_buffer_in[28]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[27] ),
        .O(\r_data[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[29]_i_1 
       (.I0(r_buffer_in[29]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[28] ),
        .O(\r_data[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[2]_i_1 
       (.I0(r_buffer_in[2]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[1] ),
        .O(\r_data[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[30]_i_1 
       (.I0(r_buffer_in[30]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[29] ),
        .O(\r_data[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[31]_i_1 
       (.I0(r_buffer_in[31]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[30] ),
        .O(\r_data[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[32]_i_1 
       (.I0(r_buffer_in[0]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[31] ),
        .O(\r_data[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[33]_i_1 
       (.I0(r_buffer_in[1]),
        .I1(r_frame_en),
        .I2(p_1_in[0]),
        .O(\r_data[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[34]_i_1 
       (.I0(r_buffer_in[2]),
        .I1(r_frame_en),
        .I2(p_1_in[1]),
        .O(\r_data[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[35]_i_1 
       (.I0(r_buffer_in[3]),
        .I1(r_frame_en),
        .I2(p_1_in[2]),
        .O(\r_data[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[36]_i_1 
       (.I0(r_buffer_in[4]),
        .I1(r_frame_en),
        .I2(p_1_in[3]),
        .O(\r_data[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[37]_i_1 
       (.I0(r_buffer_in[5]),
        .I1(r_frame_en),
        .I2(p_1_in[4]),
        .O(\r_data[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[38]_i_1 
       (.I0(r_buffer_in[6]),
        .I1(r_frame_en),
        .I2(p_1_in[5]),
        .O(\r_data[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[39]_i_1 
       (.I0(r_buffer_in[7]),
        .I1(r_frame_en),
        .I2(p_1_in[6]),
        .O(\r_data[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[3]_i_1 
       (.I0(r_buffer_in[3]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[2] ),
        .O(\r_data[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[40]_i_1 
       (.I0(r_buffer_in[8]),
        .I1(r_frame_en),
        .I2(p_1_in[7]),
        .O(\r_data[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[41]_i_1 
       (.I0(r_buffer_in[9]),
        .I1(r_frame_en),
        .I2(p_1_in[8]),
        .O(\r_data[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[42]_i_1 
       (.I0(r_buffer_in[10]),
        .I1(r_frame_en),
        .I2(p_1_in[9]),
        .O(\r_data[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[43]_i_1 
       (.I0(r_buffer_in[11]),
        .I1(r_frame_en),
        .I2(p_1_in[10]),
        .O(\r_data[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[44]_i_1 
       (.I0(r_buffer_in[12]),
        .I1(r_frame_en),
        .I2(p_1_in[11]),
        .O(\r_data[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[45]_i_1 
       (.I0(r_buffer_in[13]),
        .I1(r_frame_en),
        .I2(p_1_in[12]),
        .O(\r_data[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[46]_i_1 
       (.I0(r_buffer_in[14]),
        .I1(r_frame_en),
        .I2(p_1_in[13]),
        .O(\r_data[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[47]_i_1 
       (.I0(r_buffer_in[15]),
        .I1(r_frame_en),
        .I2(p_1_in[14]),
        .O(\r_data[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[48]_i_1 
       (.I0(r_buffer_in[16]),
        .I1(r_frame_en),
        .I2(p_1_in[15]),
        .O(\r_data[48]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[49]_i_1 
       (.I0(r_buffer_in[17]),
        .I1(r_frame_en),
        .I2(p_1_in[16]),
        .O(\r_data[49]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[4]_i_1 
       (.I0(r_buffer_in[4]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[3] ),
        .O(\r_data[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[50]_i_1 
       (.I0(r_buffer_in[18]),
        .I1(r_frame_en),
        .I2(p_1_in[17]),
        .O(\r_data[50]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[51]_i_1 
       (.I0(r_buffer_in[19]),
        .I1(r_frame_en),
        .I2(p_1_in[18]),
        .O(\r_data[51]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[52]_i_1 
       (.I0(r_buffer_in[20]),
        .I1(r_frame_en),
        .I2(p_1_in[19]),
        .O(\r_data[52]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[53]_i_1 
       (.I0(r_buffer_in[21]),
        .I1(r_frame_en),
        .I2(p_1_in[20]),
        .O(\r_data[53]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[54]_i_1 
       (.I0(r_buffer_in[22]),
        .I1(r_frame_en),
        .I2(p_1_in[21]),
        .O(\r_data[54]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[55]_i_1 
       (.I0(r_buffer_in[23]),
        .I1(r_frame_en),
        .I2(p_1_in[22]),
        .O(\r_data[55]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[56]_i_1 
       (.I0(r_buffer_in[24]),
        .I1(r_frame_en),
        .I2(p_1_in[23]),
        .O(\r_data[56]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[57]_i_1 
       (.I0(r_buffer_in[25]),
        .I1(r_frame_en),
        .I2(p_1_in[24]),
        .O(\r_data[57]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[58]_i_1 
       (.I0(r_buffer_in[26]),
        .I1(r_frame_en),
        .I2(p_1_in[25]),
        .O(\r_data[58]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[59]_i_1 
       (.I0(r_buffer_in[27]),
        .I1(r_frame_en),
        .I2(p_1_in[26]),
        .O(\r_data[59]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[5]_i_1 
       (.I0(r_buffer_in[5]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[4] ),
        .O(\r_data[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[60]_i_1 
       (.I0(r_buffer_in[28]),
        .I1(r_frame_en),
        .I2(p_1_in[27]),
        .O(\r_data[60]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[61]_i_1 
       (.I0(r_buffer_in[29]),
        .I1(r_frame_en),
        .I2(p_1_in[28]),
        .O(\r_data[61]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[62]_i_1 
       (.I0(r_buffer_in[30]),
        .I1(r_frame_en),
        .I2(p_1_in[29]),
        .O(\r_data[62]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hB0A0)) 
    \r_data[63]_i_1 
       (.I0(r_frame_en),
        .I1(r_bclk_reg_0),
        .I2(r_enable),
        .I3(r_bclk_en),
        .O(r_data));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[63]_i_2 
       (.I0(r_buffer_in[31]),
        .I1(r_frame_en),
        .I2(p_1_in[30]),
        .O(\r_data[63]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[6]_i_1 
       (.I0(r_buffer_in[6]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[5] ),
        .O(\r_data[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[7]_i_1 
       (.I0(r_buffer_in[7]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[6] ),
        .O(\r_data[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[8]_i_1 
       (.I0(r_buffer_in[8]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[7] ),
        .O(\r_data[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r_data[9]_i_1 
       (.I0(r_buffer_in[9]),
        .I1(r_frame_en),
        .I2(\r_data_reg_n_0_[8] ),
        .O(\r_data[9]_i_1_n_0 ));
  FDRE \r_data_reg[0] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[0]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[0] ),
        .R(resetn_0));
  FDRE \r_data_reg[10] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[10]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[10] ),
        .R(resetn_0));
  FDRE \r_data_reg[11] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[11]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[11] ),
        .R(resetn_0));
  FDRE \r_data_reg[12] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[12]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[12] ),
        .R(resetn_0));
  FDRE \r_data_reg[13] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[13]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[13] ),
        .R(resetn_0));
  FDRE \r_data_reg[14] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[14]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[14] ),
        .R(resetn_0));
  FDRE \r_data_reg[15] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[15]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[15] ),
        .R(resetn_0));
  FDRE \r_data_reg[16] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[16]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[16] ),
        .R(resetn_0));
  FDRE \r_data_reg[17] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[17]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[17] ),
        .R(resetn_0));
  FDRE \r_data_reg[18] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[18]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[18] ),
        .R(resetn_0));
  FDRE \r_data_reg[19] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[19]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[19] ),
        .R(resetn_0));
  FDRE \r_data_reg[1] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[1]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[1] ),
        .R(resetn_0));
  FDRE \r_data_reg[20] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[20]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[20] ),
        .R(resetn_0));
  FDRE \r_data_reg[21] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[21]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[21] ),
        .R(resetn_0));
  FDRE \r_data_reg[22] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[22]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[22] ),
        .R(resetn_0));
  FDRE \r_data_reg[23] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[23]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[23] ),
        .R(resetn_0));
  FDRE \r_data_reg[24] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[24]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[24] ),
        .R(resetn_0));
  FDRE \r_data_reg[25] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[25]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[25] ),
        .R(resetn_0));
  FDRE \r_data_reg[26] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[26]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[26] ),
        .R(resetn_0));
  FDRE \r_data_reg[27] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[27]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[27] ),
        .R(resetn_0));
  FDRE \r_data_reg[28] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[28]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[28] ),
        .R(resetn_0));
  FDRE \r_data_reg[29] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[29]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[29] ),
        .R(resetn_0));
  FDRE \r_data_reg[2] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[2]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[2] ),
        .R(resetn_0));
  FDRE \r_data_reg[30] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[30]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[30] ),
        .R(resetn_0));
  FDRE \r_data_reg[31] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[31]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[31] ),
        .R(resetn_0));
  FDRE \r_data_reg[32] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[32]_i_1_n_0 ),
        .Q(p_1_in[0]),
        .R(resetn_0));
  FDRE \r_data_reg[33] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[33]_i_1_n_0 ),
        .Q(p_1_in[1]),
        .R(resetn_0));
  FDRE \r_data_reg[34] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[34]_i_1_n_0 ),
        .Q(p_1_in[2]),
        .R(resetn_0));
  FDRE \r_data_reg[35] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[35]_i_1_n_0 ),
        .Q(p_1_in[3]),
        .R(resetn_0));
  FDRE \r_data_reg[36] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[36]_i_1_n_0 ),
        .Q(p_1_in[4]),
        .R(resetn_0));
  FDRE \r_data_reg[37] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[37]_i_1_n_0 ),
        .Q(p_1_in[5]),
        .R(resetn_0));
  FDRE \r_data_reg[38] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[38]_i_1_n_0 ),
        .Q(p_1_in[6]),
        .R(resetn_0));
  FDRE \r_data_reg[39] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[39]_i_1_n_0 ),
        .Q(p_1_in[7]),
        .R(resetn_0));
  FDRE \r_data_reg[3] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[3]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[3] ),
        .R(resetn_0));
  FDRE \r_data_reg[40] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[40]_i_1_n_0 ),
        .Q(p_1_in[8]),
        .R(resetn_0));
  FDRE \r_data_reg[41] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[41]_i_1_n_0 ),
        .Q(p_1_in[9]),
        .R(resetn_0));
  FDRE \r_data_reg[42] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[42]_i_1_n_0 ),
        .Q(p_1_in[10]),
        .R(resetn_0));
  FDRE \r_data_reg[43] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[43]_i_1_n_0 ),
        .Q(p_1_in[11]),
        .R(resetn_0));
  FDRE \r_data_reg[44] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[44]_i_1_n_0 ),
        .Q(p_1_in[12]),
        .R(resetn_0));
  FDRE \r_data_reg[45] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[45]_i_1_n_0 ),
        .Q(p_1_in[13]),
        .R(resetn_0));
  FDRE \r_data_reg[46] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[46]_i_1_n_0 ),
        .Q(p_1_in[14]),
        .R(resetn_0));
  FDRE \r_data_reg[47] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[47]_i_1_n_0 ),
        .Q(p_1_in[15]),
        .R(resetn_0));
  FDRE \r_data_reg[48] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[48]_i_1_n_0 ),
        .Q(p_1_in[16]),
        .R(resetn_0));
  FDRE \r_data_reg[49] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[49]_i_1_n_0 ),
        .Q(p_1_in[17]),
        .R(resetn_0));
  FDRE \r_data_reg[4] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[4]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[4] ),
        .R(resetn_0));
  FDRE \r_data_reg[50] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[50]_i_1_n_0 ),
        .Q(p_1_in[18]),
        .R(resetn_0));
  FDRE \r_data_reg[51] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[51]_i_1_n_0 ),
        .Q(p_1_in[19]),
        .R(resetn_0));
  FDRE \r_data_reg[52] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[52]_i_1_n_0 ),
        .Q(p_1_in[20]),
        .R(resetn_0));
  FDRE \r_data_reg[53] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[53]_i_1_n_0 ),
        .Q(p_1_in[21]),
        .R(resetn_0));
  FDRE \r_data_reg[54] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[54]_i_1_n_0 ),
        .Q(p_1_in[22]),
        .R(resetn_0));
  FDRE \r_data_reg[55] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[55]_i_1_n_0 ),
        .Q(p_1_in[23]),
        .R(resetn_0));
  FDRE \r_data_reg[56] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[56]_i_1_n_0 ),
        .Q(p_1_in[24]),
        .R(resetn_0));
  FDRE \r_data_reg[57] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[57]_i_1_n_0 ),
        .Q(p_1_in[25]),
        .R(resetn_0));
  FDRE \r_data_reg[58] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[58]_i_1_n_0 ),
        .Q(p_1_in[26]),
        .R(resetn_0));
  FDRE \r_data_reg[59] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[59]_i_1_n_0 ),
        .Q(p_1_in[27]),
        .R(resetn_0));
  FDRE \r_data_reg[5] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[5]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[5] ),
        .R(resetn_0));
  FDRE \r_data_reg[60] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[60]_i_1_n_0 ),
        .Q(p_1_in[28]),
        .R(resetn_0));
  FDRE \r_data_reg[61] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[61]_i_1_n_0 ),
        .Q(p_1_in[29]),
        .R(resetn_0));
  FDRE \r_data_reg[62] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[62]_i_1_n_0 ),
        .Q(p_1_in[30]),
        .R(resetn_0));
  FDRE \r_data_reg[63] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[63]_i_2_n_0 ),
        .Q(p_1_in[31]),
        .R(resetn_0));
  FDRE \r_data_reg[6] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[6]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[6] ),
        .R(resetn_0));
  FDRE \r_data_reg[7] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[7]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[7] ),
        .R(resetn_0));
  FDRE \r_data_reg[8] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[8]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[8] ),
        .R(resetn_0));
  FDRE \r_data_reg[9] 
       (.C(clk),
        .CE(r_data),
        .D(\r_data[9]_i_1_n_0 ),
        .Q(\r_data_reg_n_0_[9] ),
        .R(resetn_0));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    r_enable_i_1
       (.I0(io_enable),
        .I1(r_cnt_mclk_en[2]),
        .I2(r_cnt_mclk_en[0]),
        .I3(r_cnt_mclk_en[1]),
        .I4(io_mclk),
        .I5(r_enable),
        .O(r_enable_i_1_n_0));
  FDRE r_enable_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_enable_i_1_n_0),
        .Q(r_enable),
        .R(resetn_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    r_frame_en_i_1
       (.I0(\r_cnt_frame_en_reg_n_0_[0] ),
        .I1(\r_cnt_frame_en_reg_n_0_[2] ),
        .I2(\r_cnt_frame_en_reg_n_0_[9] ),
        .I3(\r_cnt_frame_en_reg_n_0_[11] ),
        .I4(r_frame_en_i_2_n_0),
        .I5(r_frame_en_i_3_n_0),
        .O(when_I2S_l154));
  LUT4 #(
    .INIT(16'hFF7F)) 
    r_frame_en_i_2
       (.I0(\r_cnt_frame_en_reg_n_0_[10] ),
        .I1(\r_cnt_frame_en_reg_n_0_[1] ),
        .I2(\r_cnt_frame_en_reg_n_0_[7] ),
        .I3(\r_cnt_frame_en_reg_n_0_[8] ),
        .O(r_frame_en_i_2_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    r_frame_en_i_3
       (.I0(\r_cnt_frame_en_reg_n_0_[6] ),
        .I1(\r_cnt_frame_en_reg_n_0_[4] ),
        .I2(\r_cnt_frame_en_reg_n_0_[5] ),
        .I3(\r_cnt_frame_en_reg_n_0_[3] ),
        .O(r_frame_en_i_3_n_0));
  FDRE r_frame_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(when_I2S_l154),
        .Q(r_frame_en),
        .R(r_lrclk));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    r_lrclk_en_i_1
       (.I0(\r_cnt_lrclk_en_reg_n_0_[7] ),
        .I1(\r_cnt_lrclk_en_reg_n_0_[8] ),
        .I2(\r_cnt_lrclk_en_reg_n_0_[9] ),
        .I3(\r_cnt_lrclk_en_reg_n_0_[10] ),
        .I4(\r_cnt_lrclk_en_reg_n_0_[6] ),
        .I5(\r_cnt_lrclk_en[9]_i_3_n_0 ),
        .O(when_I2S_l146));
  FDRE r_lrclk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(when_I2S_l146),
        .Q(r_lrclk_en),
        .R(r_lrclk));
  LUT2 #(
    .INIT(4'h7)) 
    r_lrclk_i_1
       (.I0(resetn),
        .I1(r_enable),
        .O(r_lrclk));
  LUT2 #(
    .INIT(4'h6)) 
    r_lrclk_i_2
       (.I0(r_lrclk_en),
        .I1(io_reclrc),
        .O(r_lrclk_i_2_n_0));
  FDRE r_lrclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_lrclk_i_2_n_0),
        .Q(io_reclrc),
        .R(r_lrclk));
  LUT3 #(
    .INIT(8'h02)) 
    r_mclk_en_i_1
       (.I0(r_cnt_mclk_en[2]),
        .I1(r_cnt_mclk_en[1]),
        .I2(r_cnt_mclk_en[0]),
        .O(when_I2S_l113));
  FDRE r_mclk_en_reg
       (.C(clk),
        .CE(1'b1),
        .D(when_I2S_l113),
        .Q(r_mclk_en),
        .R(resetn_0));
  LUT2 #(
    .INIT(4'h6)) 
    r_mclk_i_1
       (.I0(r_mclk_en),
        .I1(io_mclk),
        .O(r_mclk_i_1_n_0));
  FDSE r_mclk_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_mclk_i_1_n_0),
        .Q(io_mclk),
        .S(resetn_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    r_out_i_1
       (.I0(p_1_in[31]),
        .I1(r_bclk_en),
        .I2(r_enable),
        .I3(r_bclk_reg_0),
        .I4(r_frame_en),
        .I5(io_pbdat),
        .O(r_out_i_1_n_0));
  FDRE r_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(r_out_i_1_n_0),
        .Q(io_pbdat),
        .R(resetn_0));
endmodule

(* CHECK_LICENSE_TYPE = "audio_station_overview_AudioStation_0_3,AudioStation,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "AudioStation,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (io_enable,
    io_axi_aw_valid,
    io_axi_aw_ready,
    io_axi_aw_payload_addr,
    io_axi_aw_payload_id,
    io_axi_aw_payload_region,
    io_axi_aw_payload_len,
    io_axi_aw_payload_size,
    io_axi_aw_payload_burst,
    io_axi_aw_payload_lock,
    io_axi_aw_payload_cache,
    io_axi_aw_payload_qos,
    io_axi_aw_payload_prot,
    io_axi_w_valid,
    io_axi_w_ready,
    io_axi_w_payload_data,
    io_axi_w_payload_strb,
    io_axi_w_payload_last,
    io_axi_b_valid,
    io_axi_b_ready,
    io_axi_b_payload_id,
    io_axi_b_payload_resp,
    io_axi_ar_valid,
    io_axi_ar_ready,
    io_axi_ar_payload_addr,
    io_axi_ar_payload_id,
    io_axi_ar_payload_region,
    io_axi_ar_payload_len,
    io_axi_ar_payload_size,
    io_axi_ar_payload_burst,
    io_axi_ar_payload_lock,
    io_axi_ar_payload_cache,
    io_axi_ar_payload_qos,
    io_axi_ar_payload_prot,
    io_axi_r_valid,
    io_axi_r_ready,
    io_axi_r_payload_data,
    io_axi_r_payload_id,
    io_axi_r_payload_resp,
    io_axi_r_payload_last,
    io_input_buffer_half,
    io_input_buffer_full,
    io_output_buffer_half,
    io_output_buffer_empty,
    io_bclk,
    io_mclk,
    io_pblrc,
    io_pbdat,
    io_reclrc,
    io_recdat,
    clk,
    resetn);
  input io_enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWVALID" *) input io_axi_aw_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWREADY" *) output io_axi_aw_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWADDR" *) input [31:0]io_axi_aw_payload_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWID" *) input [11:0]io_axi_aw_payload_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWREGION" *) input [3:0]io_axi_aw_payload_region;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWLEN" *) input [7:0]io_axi_aw_payload_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWSIZE" *) input [2:0]io_axi_aw_payload_size;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWBURST" *) input [1:0]io_axi_aw_payload_burst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWLOCK" *) input [0:0]io_axi_aw_payload_lock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWCACHE" *) input [3:0]io_axi_aw_payload_cache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWQOS" *) input [3:0]io_axi_aw_payload_qos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWPROT" *) input [2:0]io_axi_aw_payload_prot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WVALID" *) input io_axi_w_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WREADY" *) output io_axi_w_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WDATA" *) input [31:0]io_axi_w_payload_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WSTRB" *) input [3:0]io_axi_w_payload_strb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WLAST" *) input io_axi_w_payload_last;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BVALID" *) output io_axi_b_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BREADY" *) input io_axi_b_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BID" *) output [11:0]io_axi_b_payload_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BRESP" *) output [1:0]io_axi_b_payload_resp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARVALID" *) input io_axi_ar_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARREADY" *) output io_axi_ar_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARADDR" *) input [31:0]io_axi_ar_payload_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARID" *) input [11:0]io_axi_ar_payload_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARREGION" *) input [3:0]io_axi_ar_payload_region;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARLEN" *) input [7:0]io_axi_ar_payload_len;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARSIZE" *) input [2:0]io_axi_ar_payload_size;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARBURST" *) input [1:0]io_axi_ar_payload_burst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARLOCK" *) input [0:0]io_axi_ar_payload_lock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARCACHE" *) input [3:0]io_axi_ar_payload_cache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARQOS" *) input [3:0]io_axi_ar_payload_qos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARPROT" *) input [2:0]io_axi_ar_payload_prot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RVALID" *) output io_axi_r_valid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RREADY" *) input io_axi_r_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RDATA" *) output [31:0]io_axi_r_payload_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RID" *) output [11:0]io_axi_r_payload_id;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RRESP" *) output [1:0]io_axi_r_payload_resp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_S, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output io_axi_r_payload_last;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_input_buffer_half INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_input_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output io_input_buffer_half;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_input_buffer_full INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_input_buffer_full, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output io_input_buffer_full;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_output_buffer_half INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_output_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output io_output_buffer_half;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_output_buffer_empty INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_output_buffer_empty, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output io_output_buffer_empty;
  output io_bclk;
  output io_mclk;
  output io_pblrc;
  output io_pbdat;
  output io_reclrc;
  input io_recdat;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF AXI_S, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;

  wire \<const0> ;
  wire clk;
  wire [31:0]io_axi_ar_payload_addr;
  wire [1:0]io_axi_ar_payload_burst;
  wire [11:0]io_axi_ar_payload_id;
  wire [7:0]io_axi_ar_payload_len;
  wire [2:0]io_axi_ar_payload_size;
  wire io_axi_ar_ready;
  wire io_axi_ar_valid;
  wire [31:0]io_axi_aw_payload_addr;
  wire [1:0]io_axi_aw_payload_burst;
  wire [11:0]io_axi_aw_payload_id;
  wire [7:0]io_axi_aw_payload_len;
  wire [2:0]io_axi_aw_payload_size;
  wire io_axi_aw_ready;
  wire io_axi_aw_valid;
  wire [11:0]io_axi_b_payload_id;
  wire [1:1]\^io_axi_b_payload_resp ;
  wire io_axi_b_ready;
  wire io_axi_b_valid;
  wire [31:0]io_axi_r_payload_data;
  wire [11:0]io_axi_r_payload_id;
  wire io_axi_r_payload_last;
  wire [1:1]\^io_axi_r_payload_resp ;
  wire io_axi_r_ready;
  wire io_axi_r_valid;
  wire [31:0]io_axi_w_payload_data;
  wire io_axi_w_ready;
  wire io_axi_w_valid;
  wire io_bclk;
  wire io_enable;
  wire io_input_buffer_full;
  wire io_input_buffer_half;
  wire io_mclk;
  wire io_output_buffer_empty;
  wire io_output_buffer_half;
  wire io_pbdat;
  wire io_recdat;
  wire io_reclrc;
  wire resetn;

  assign io_axi_b_payload_resp[1] = \^io_axi_b_payload_resp [1];
  assign io_axi_b_payload_resp[0] = \<const0> ;
  assign io_axi_r_payload_resp[1] = \^io_axi_r_payload_resp [1];
  assign io_axi_r_payload_resp[0] = \<const0> ;
  assign io_pblrc = io_reclrc;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AudioStation inst
       (.clk(clk),
        .io_axi_ar_payload_addr(io_axi_ar_payload_addr),
        .io_axi_ar_payload_burst(io_axi_ar_payload_burst),
        .io_axi_ar_payload_id(io_axi_ar_payload_id),
        .io_axi_ar_payload_len(io_axi_ar_payload_len),
        .io_axi_ar_payload_size(io_axi_ar_payload_size),
        .io_axi_ar_valid(io_axi_ar_valid),
        .io_axi_aw_payload_addr(io_axi_aw_payload_addr),
        .io_axi_aw_payload_burst(io_axi_aw_payload_burst),
        .io_axi_aw_payload_id(io_axi_aw_payload_id),
        .io_axi_aw_payload_len(io_axi_aw_payload_len),
        .io_axi_aw_payload_size(io_axi_aw_payload_size),
        .io_axi_aw_valid(io_axi_aw_valid),
        .io_axi_b_payload_id(io_axi_b_payload_id),
        .io_axi_b_payload_resp(\^io_axi_b_payload_resp ),
        .io_axi_b_ready(io_axi_b_ready),
        .io_axi_b_valid(io_axi_b_valid),
        .io_axi_r_payload_data(io_axi_r_payload_data),
        .io_axi_r_payload_id(io_axi_r_payload_id),
        .io_axi_r_payload_last(io_axi_r_payload_last),
        .io_axi_r_payload_resp(\^io_axi_r_payload_resp ),
        .io_axi_r_ready(io_axi_r_ready),
        .io_axi_w_payload_data(io_axi_w_payload_data),
        .io_axi_w_valid(io_axi_w_valid),
        .io_enable(io_enable),
        .io_input_buffer_full(io_input_buffer_full),
        .io_input_buffer_half(io_input_buffer_half),
        .io_mclk(io_mclk),
        .io_output_buffer_empty(io_output_buffer_empty),
        .io_output_buffer_half(io_output_buffer_half),
        .io_pbdat(io_pbdat),
        .io_recdat(io_recdat),
        .io_reclrc(io_reclrc),
        .r_axi_arready_reg(io_axi_ar_ready),
        .r_axi_awready_reg(io_axi_aw_ready),
        .r_axi_rvalid_reg(io_axi_r_valid),
        .r_axi_wready_reg(io_axi_w_ready),
        .r_bclk_reg(io_bclk),
        .resetn(resetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
