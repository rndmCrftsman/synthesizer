// (c) Copyright 1995-2021 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: hannes.stoll:myIP:AudioStation:0.5
// IP Revision: 26

(* X_CORE_INFO = "AudioStation,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "audio_station_overview_AudioStation_0_3,AudioStation,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module audio_station_overview_AudioStation_0_3 (
  io_enable,
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
  resetn
);

input wire io_enable;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWVALID" *)
input wire io_axi_aw_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWREADY" *)
output wire io_axi_aw_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWADDR" *)
input wire [31 : 0] io_axi_aw_payload_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWID" *)
input wire [11 : 0] io_axi_aw_payload_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWREGION" *)
input wire [3 : 0] io_axi_aw_payload_region;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWLEN" *)
input wire [7 : 0] io_axi_aw_payload_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWSIZE" *)
input wire [2 : 0] io_axi_aw_payload_size;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWBURST" *)
input wire [1 : 0] io_axi_aw_payload_burst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWLOCK" *)
input wire [0 : 0] io_axi_aw_payload_lock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWCACHE" *)
input wire [3 : 0] io_axi_aw_payload_cache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWQOS" *)
input wire [3 : 0] io_axi_aw_payload_qos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S AWPROT" *)
input wire [2 : 0] io_axi_aw_payload_prot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WVALID" *)
input wire io_axi_w_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WREADY" *)
output wire io_axi_w_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WDATA" *)
input wire [31 : 0] io_axi_w_payload_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WSTRB" *)
input wire [3 : 0] io_axi_w_payload_strb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S WLAST" *)
input wire io_axi_w_payload_last;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BVALID" *)
output wire io_axi_b_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BREADY" *)
input wire io_axi_b_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BID" *)
output wire [11 : 0] io_axi_b_payload_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S BRESP" *)
output wire [1 : 0] io_axi_b_payload_resp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARVALID" *)
input wire io_axi_ar_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARREADY" *)
output wire io_axi_ar_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARADDR" *)
input wire [31 : 0] io_axi_ar_payload_addr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARID" *)
input wire [11 : 0] io_axi_ar_payload_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARREGION" *)
input wire [3 : 0] io_axi_ar_payload_region;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARLEN" *)
input wire [7 : 0] io_axi_ar_payload_len;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARSIZE" *)
input wire [2 : 0] io_axi_ar_payload_size;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARBURST" *)
input wire [1 : 0] io_axi_ar_payload_burst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARLOCK" *)
input wire [0 : 0] io_axi_ar_payload_lock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARCACHE" *)
input wire [3 : 0] io_axi_ar_payload_cache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARQOS" *)
input wire [3 : 0] io_axi_ar_payload_qos;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S ARPROT" *)
input wire [2 : 0] io_axi_ar_payload_prot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RVALID" *)
output wire io_axi_r_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RREADY" *)
input wire io_axi_r_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RDATA" *)
output wire [31 : 0] io_axi_r_payload_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RID" *)
output wire [11 : 0] io_axi_r_payload_id;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RRESP" *)
output wire [1 : 0] io_axi_r_payload_resp;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_S, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS\
_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_S RLAST" *)
output wire io_axi_r_payload_last;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_input_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_input_buffer_half INTERRUPT" *)
output wire io_input_buffer_half;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_input_buffer_full, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_input_buffer_full INTERRUPT" *)
output wire io_input_buffer_full;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_output_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_output_buffer_half INTERRUPT" *)
output wire io_output_buffer_half;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_output_buffer_empty, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 io_output_buffer_empty INTERRUPT" *)
output wire io_output_buffer_empty;
output wire io_bclk;
output wire io_mclk;
output wire io_pblrc;
output wire io_pbdat;
output wire io_reclrc;
input wire io_recdat;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF AXI_S, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
input wire resetn;

  AudioStation inst (
    .io_enable(io_enable),
    .io_axi_aw_valid(io_axi_aw_valid),
    .io_axi_aw_ready(io_axi_aw_ready),
    .io_axi_aw_payload_addr(io_axi_aw_payload_addr),
    .io_axi_aw_payload_id(io_axi_aw_payload_id),
    .io_axi_aw_payload_region(io_axi_aw_payload_region),
    .io_axi_aw_payload_len(io_axi_aw_payload_len),
    .io_axi_aw_payload_size(io_axi_aw_payload_size),
    .io_axi_aw_payload_burst(io_axi_aw_payload_burst),
    .io_axi_aw_payload_lock(io_axi_aw_payload_lock),
    .io_axi_aw_payload_cache(io_axi_aw_payload_cache),
    .io_axi_aw_payload_qos(io_axi_aw_payload_qos),
    .io_axi_aw_payload_prot(io_axi_aw_payload_prot),
    .io_axi_w_valid(io_axi_w_valid),
    .io_axi_w_ready(io_axi_w_ready),
    .io_axi_w_payload_data(io_axi_w_payload_data),
    .io_axi_w_payload_strb(io_axi_w_payload_strb),
    .io_axi_w_payload_last(io_axi_w_payload_last),
    .io_axi_b_valid(io_axi_b_valid),
    .io_axi_b_ready(io_axi_b_ready),
    .io_axi_b_payload_id(io_axi_b_payload_id),
    .io_axi_b_payload_resp(io_axi_b_payload_resp),
    .io_axi_ar_valid(io_axi_ar_valid),
    .io_axi_ar_ready(io_axi_ar_ready),
    .io_axi_ar_payload_addr(io_axi_ar_payload_addr),
    .io_axi_ar_payload_id(io_axi_ar_payload_id),
    .io_axi_ar_payload_region(io_axi_ar_payload_region),
    .io_axi_ar_payload_len(io_axi_ar_payload_len),
    .io_axi_ar_payload_size(io_axi_ar_payload_size),
    .io_axi_ar_payload_burst(io_axi_ar_payload_burst),
    .io_axi_ar_payload_lock(io_axi_ar_payload_lock),
    .io_axi_ar_payload_cache(io_axi_ar_payload_cache),
    .io_axi_ar_payload_qos(io_axi_ar_payload_qos),
    .io_axi_ar_payload_prot(io_axi_ar_payload_prot),
    .io_axi_r_valid(io_axi_r_valid),
    .io_axi_r_ready(io_axi_r_ready),
    .io_axi_r_payload_data(io_axi_r_payload_data),
    .io_axi_r_payload_id(io_axi_r_payload_id),
    .io_axi_r_payload_resp(io_axi_r_payload_resp),
    .io_axi_r_payload_last(io_axi_r_payload_last),
    .io_input_buffer_half(io_input_buffer_half),
    .io_input_buffer_full(io_input_buffer_full),
    .io_output_buffer_half(io_output_buffer_half),
    .io_output_buffer_empty(io_output_buffer_empty),
    .io_bclk(io_bclk),
    .io_mclk(io_mclk),
    .io_pblrc(io_pblrc),
    .io_pbdat(io_pbdat),
    .io_reclrc(io_reclrc),
    .io_recdat(io_recdat),
    .clk(clk),
    .resetn(resetn)
  );
endmodule
