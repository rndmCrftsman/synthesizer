-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Mon Jan  3 18:54:50 2022
-- Host        : pop-os running 64-bit Pop!_OS 21.10
-- Command     : write_vhdl -force -mode synth_stub
--               /home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station.srcs/sources_1/bd/audio_station_overview/ip/audio_station_overview_AudioStation_0_3/audio_station_overview_AudioStation_0_3_stub.vhdl
-- Design      : audio_station_overview_AudioStation_0_3
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity audio_station_overview_AudioStation_0_3 is
  Port ( 
    io_enable : in STD_LOGIC;
    io_axi_aw_valid : in STD_LOGIC;
    io_axi_aw_ready : out STD_LOGIC;
    io_axi_aw_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_aw_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_aw_payload_region : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_aw_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_aw_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_aw_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_aw_payload_lock : in STD_LOGIC_VECTOR ( 0 to 0 );
    io_axi_aw_payload_cache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_aw_payload_qos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_aw_payload_prot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_w_valid : in STD_LOGIC;
    io_axi_w_ready : out STD_LOGIC;
    io_axi_w_payload_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_w_payload_strb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_w_payload_last : in STD_LOGIC;
    io_axi_b_valid : out STD_LOGIC;
    io_axi_b_ready : in STD_LOGIC;
    io_axi_b_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_b_payload_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_valid : in STD_LOGIC;
    io_axi_ar_ready : out STD_LOGIC;
    io_axi_ar_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_ar_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_ar_payload_region : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ar_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_ar_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ar_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_payload_lock : in STD_LOGIC_VECTOR ( 0 to 0 );
    io_axi_ar_payload_cache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ar_payload_qos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ar_payload_prot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_r_valid : out STD_LOGIC;
    io_axi_r_ready : in STD_LOGIC;
    io_axi_r_payload_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_r_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_r_payload_resp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_r_payload_last : out STD_LOGIC;
    io_input_buffer_half : out STD_LOGIC;
    io_input_buffer_full : out STD_LOGIC;
    io_output_buffer_half : out STD_LOGIC;
    io_output_buffer_empty : out STD_LOGIC;
    io_bclk : out STD_LOGIC;
    io_mclk : out STD_LOGIC;
    io_pblrc : out STD_LOGIC;
    io_pbdat : out STD_LOGIC;
    io_reclrc : out STD_LOGIC;
    io_recdat : in STD_LOGIC;
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end audio_station_overview_AudioStation_0_3;

architecture stub of audio_station_overview_AudioStation_0_3 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "io_enable,io_axi_aw_valid,io_axi_aw_ready,io_axi_aw_payload_addr[31:0],io_axi_aw_payload_id[11:0],io_axi_aw_payload_region[3:0],io_axi_aw_payload_len[7:0],io_axi_aw_payload_size[2:0],io_axi_aw_payload_burst[1:0],io_axi_aw_payload_lock[0:0],io_axi_aw_payload_cache[3:0],io_axi_aw_payload_qos[3:0],io_axi_aw_payload_prot[2:0],io_axi_w_valid,io_axi_w_ready,io_axi_w_payload_data[31:0],io_axi_w_payload_strb[3:0],io_axi_w_payload_last,io_axi_b_valid,io_axi_b_ready,io_axi_b_payload_id[11:0],io_axi_b_payload_resp[1:0],io_axi_ar_valid,io_axi_ar_ready,io_axi_ar_payload_addr[31:0],io_axi_ar_payload_id[11:0],io_axi_ar_payload_region[3:0],io_axi_ar_payload_len[7:0],io_axi_ar_payload_size[2:0],io_axi_ar_payload_burst[1:0],io_axi_ar_payload_lock[0:0],io_axi_ar_payload_cache[3:0],io_axi_ar_payload_qos[3:0],io_axi_ar_payload_prot[2:0],io_axi_r_valid,io_axi_r_ready,io_axi_r_payload_data[31:0],io_axi_r_payload_id[11:0],io_axi_r_payload_resp[1:0],io_axi_r_payload_last,io_input_buffer_half,io_input_buffer_full,io_output_buffer_half,io_output_buffer_empty,io_bclk,io_mclk,io_pblrc,io_pbdat,io_reclrc,io_recdat,clk,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "AudioStation,Vivado 2020.2";
begin
end;
