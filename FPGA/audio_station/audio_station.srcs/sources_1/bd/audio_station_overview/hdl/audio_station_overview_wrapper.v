//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Sat Jan  1 11:17:06 2022
//Host        : pop-os running 64-bit Pop!_OS 21.10
//Command     : generate_target audio_station_overview_wrapper.bd
//Design      : audio_station_overview_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module audio_station_overview_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    ac_bclk,
    ac_i2c_scl_io,
    ac_i2c_sda_io,
    ac_mclk,
    ac_muten,
    ac_pbdat,
    ac_pblrc,
    ac_recdat,
    ac_reclrc,
    led_0,
    led_1,
    led_2,
    led_3,
    sw_0);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output ac_bclk;
  inout ac_i2c_scl_io;
  inout ac_i2c_sda_io;
  output ac_mclk;
  output ac_muten;
  output ac_pbdat;
  output ac_pblrc;
  input ac_recdat;
  output ac_reclrc;
  output led_0;
  output led_1;
  output led_2;
  output led_3;
  input sw_0;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire ac_bclk;
  wire ac_i2c_scl_i;
  wire ac_i2c_scl_io;
  wire ac_i2c_scl_o;
  wire ac_i2c_scl_t;
  wire ac_i2c_sda_i;
  wire ac_i2c_sda_io;
  wire ac_i2c_sda_o;
  wire ac_i2c_sda_t;
  wire ac_mclk;
  wire ac_muten;
  wire ac_pbdat;
  wire ac_pblrc;
  wire ac_recdat;
  wire ac_reclrc;
  wire led_0;
  wire led_1;
  wire led_2;
  wire led_3;
  wire sw_0;

  IOBUF ac_i2c_scl_iobuf
       (.I(ac_i2c_scl_o),
        .IO(ac_i2c_scl_io),
        .O(ac_i2c_scl_i),
        .T(ac_i2c_scl_t));
  IOBUF ac_i2c_sda_iobuf
       (.I(ac_i2c_sda_o),
        .IO(ac_i2c_sda_io),
        .O(ac_i2c_sda_i),
        .T(ac_i2c_sda_t));
  audio_station_overview audio_station_overview_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .ac_bclk(ac_bclk),
        .ac_i2c_scl_i(ac_i2c_scl_i),
        .ac_i2c_scl_o(ac_i2c_scl_o),
        .ac_i2c_scl_t(ac_i2c_scl_t),
        .ac_i2c_sda_i(ac_i2c_sda_i),
        .ac_i2c_sda_o(ac_i2c_sda_o),
        .ac_i2c_sda_t(ac_i2c_sda_t),
        .ac_mclk(ac_mclk),
        .ac_muten(ac_muten),
        .ac_pbdat(ac_pbdat),
        .ac_pblrc(ac_pblrc),
        .ac_recdat(ac_recdat),
        .ac_reclrc(ac_reclrc),
        .led_0(led_0),
        .led_1(led_1),
        .led_2(led_2),
        .led_3(led_3),
        .sw_0(sw_0));
endmodule
