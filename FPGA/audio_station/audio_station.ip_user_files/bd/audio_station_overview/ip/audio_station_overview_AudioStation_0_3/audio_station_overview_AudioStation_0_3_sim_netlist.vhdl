-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Thu Jan 13 13:15:49 2022
-- Host        : pop-os running 64-bit Pop!_OS 21.10
-- Command     : write_vhdl -force -mode funcsim
--               /home/hannes/Entwicklung/synthesizer/FPGA/audio_station/audio_station.srcs/sources_1/bd/audio_station_overview/ip/audio_station_overview_AudioStation_0_3/audio_station_overview_AudioStation_0_3_sim_netlist.vhdl
-- Design      : audio_station_overview_AudioStation_0_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3_FIFO is
  port (
    io_axi_r_payload_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_r_cnt_reg[2]\ : out STD_LOGIC;
    io_input_buffer_half : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_input_buffer_full : out STD_LOGIC;
    io_axi_r_payload_data_31_sp_1 : in STD_LOGIC;
    io_axi_r_ready : in STD_LOGIC;
    \io_axi_r_payload_data[31]_0\ : in STD_LOGIC;
    r_axi_ar_req_valid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    r_axi_rlast_reg : in STD_LOGIC;
    \w_addr_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    \io_axi_r_payload_data[31]_1\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \w_addr_reg[0]_1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_station_overview_AudioStation_0_3_FIFO : entity is "FIFO";
end audio_station_overview_AudioStation_0_3_FIFO;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3_FIFO is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \_zz_mem_port1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^axi_r_cnt_reg[2]\ : STD_LOGIC;
  signal \io_axi_r_payload_data[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \io_axi_r_payload_data[31]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal io_axi_r_payload_data_31_sn_1 : STD_LOGIC;
  signal io_input_buffer_full_INST_0_i_1_n_0 : STD_LOGIC;
  signal io_input_buffer_full_INST_0_i_2_n_0 : STD_LOGIC;
  signal io_input_buffer_half_INST_0_i_1_n_0 : STD_LOGIC;
  signal io_input_buffer_half_INST_0_i_2_n_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \r_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_addr[4]_i_3__0_n_0\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal \w_addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \w_addr[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_addr[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_addr[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \w_addr[4]_i_1_n_0\ : STD_LOGIC;
  signal \w_addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \w_addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \w_addr_reg_n_0_[2]\ : STD_LOGIC;
  signal \w_addr_reg_n_0_[3]\ : STD_LOGIC;
  signal \w_addr_reg_n_0_[4]\ : STD_LOGIC;
  signal when_FIFO_l65 : STD_LOGIC;
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of io_input_buffer_full_INST_0_i_2 : label is "soft_lutpair2";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_12_17 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_12_17 : label is 31;
  attribute ram_offset of mem_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of mem_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_18_23 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_18_23 : label is 31;
  attribute ram_offset of mem_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of mem_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_24_29 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_24_29 : label is 31;
  attribute ram_offset of mem_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of mem_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_30_31 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_30_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_30_31 : label is 31;
  attribute ram_offset of mem_reg_0_31_30_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_30_31 : label is 30;
  attribute ram_slice_end of mem_reg_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_11 : label is "inst/audio_data_mover/buffer_in/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_11 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \r_addr[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_addr[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \r_addr[3]_i_1__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \r_addr[4]_i_2__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \w_addr[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_addr[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \w_addr[2]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \w_addr[3]_i_1__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \w_addr[4]_i_1\ : label is "soft_lutpair0";
begin
  E(0) <= \^e\(0);
  \axi_r_cnt_reg[2]\ <= \^axi_r_cnt_reg[2]\;
  io_axi_r_payload_data_31_sn_1 <= io_axi_r_payload_data_31_sp_1;
\io_axi_r_payload_data[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(0),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(0)
    );
\io_axi_r_payload_data[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(10),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(10)
    );
\io_axi_r_payload_data[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(11),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(11)
    );
\io_axi_r_payload_data[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(12),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(12)
    );
\io_axi_r_payload_data[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(13),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(13)
    );
\io_axi_r_payload_data[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(14),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(14)
    );
\io_axi_r_payload_data[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(15),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(15)
    );
\io_axi_r_payload_data[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(16),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(16)
    );
\io_axi_r_payload_data[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(17),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(17)
    );
\io_axi_r_payload_data[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(18),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(18)
    );
\io_axi_r_payload_data[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(19),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(19)
    );
\io_axi_r_payload_data[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(1),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(1)
    );
\io_axi_r_payload_data[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(20),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(20)
    );
\io_axi_r_payload_data[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(21),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(21)
    );
\io_axi_r_payload_data[22]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(22),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(22)
    );
\io_axi_r_payload_data[23]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(23),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(23)
    );
\io_axi_r_payload_data[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(24),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(24)
    );
\io_axi_r_payload_data[25]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(25),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(25)
    );
\io_axi_r_payload_data[26]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(26),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(26)
    );
\io_axi_r_payload_data[27]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(27),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(27)
    );
\io_axi_r_payload_data[28]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(28),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(28)
    );
\io_axi_r_payload_data[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(29),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(29)
    );
\io_axi_r_payload_data[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(2),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(2)
    );
\io_axi_r_payload_data[30]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(30),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(30)
    );
\io_axi_r_payload_data[31]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(31),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(31)
    );
\io_axi_r_payload_data[31]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F6FFFFF6"
    )
        port map (
      I0 => \w_addr_reg_n_0_[3]\,
      I1 => \r_addr_reg_n_0_[3]\,
      I2 => \io_axi_r_payload_data[31]_INST_0_i_3_n_0\,
      I3 => \r_addr_reg_n_0_[4]\,
      I4 => \w_addr_reg_n_0_[4]\,
      O => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\
    );
\io_axi_r_payload_data[31]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6FF6FFFFFFFF6FF6"
    )
        port map (
      I0 => \w_addr_reg_n_0_[0]\,
      I1 => \r_addr_reg_n_0_[0]\,
      I2 => \r_addr_reg_n_0_[1]\,
      I3 => \w_addr_reg_n_0_[1]\,
      I4 => \r_addr_reg_n_0_[2]\,
      I5 => \w_addr_reg_n_0_[2]\,
      O => \io_axi_r_payload_data[31]_INST_0_i_3_n_0\
    );
\io_axi_r_payload_data[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(3),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(3)
    );
\io_axi_r_payload_data[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(4),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(4)
    );
\io_axi_r_payload_data[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(5),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(5)
    );
\io_axi_r_payload_data[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(6),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(6)
    );
\io_axi_r_payload_data[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(7),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(7)
    );
\io_axi_r_payload_data[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(8),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(8)
    );
\io_axi_r_payload_data[9]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \_zz_mem_port1\(9),
      I1 => io_axi_r_payload_data_31_sn_1,
      I2 => io_axi_r_ready,
      I3 => \io_axi_r_payload_data[31]_0\,
      I4 => r_axi_ar_req_valid,
      I5 => \io_axi_r_payload_data[31]_INST_0_i_2_n_0\,
      O => io_axi_r_payload_data(9)
    );
io_input_buffer_full_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0110200220021001"
    )
        port map (
      I0 => \r_addr_reg_n_0_[3]\,
      I1 => io_input_buffer_full_INST_0_i_1_n_0,
      I2 => \w_addr_reg_n_0_[4]\,
      I3 => \r_addr_reg_n_0_[4]\,
      I4 => io_input_buffer_full_INST_0_i_2_n_0,
      I5 => \w_addr_reg_n_0_[3]\,
      O => io_input_buffer_full
    );
io_input_buffer_full_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB7DEFFFEFFFFB7D"
    )
        port map (
      I0 => \r_addr_reg_n_0_[0]\,
      I1 => \r_addr_reg_n_0_[1]\,
      I2 => \w_addr_reg_n_0_[1]\,
      I3 => \w_addr_reg_n_0_[0]\,
      I4 => \r_addr_reg_n_0_[2]\,
      I5 => \w_addr_reg_n_0_[2]\,
      O => io_input_buffer_full_INST_0_i_1_n_0
    );
io_input_buffer_full_INST_0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \w_addr_reg_n_0_[2]\,
      I1 => \w_addr_reg_n_0_[1]\,
      I2 => \w_addr_reg_n_0_[0]\,
      O => io_input_buffer_full_INST_0_i_2_n_0
    );
io_input_buffer_half_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A599A595A559A59"
    )
        port map (
      I0 => io_input_buffer_half_INST_0_i_1_n_0,
      I1 => io_input_buffer_half_INST_0_i_2_n_0,
      I2 => \r_addr_reg_n_0_[3]\,
      I3 => \w_addr_reg_n_0_[3]\,
      I4 => \r_addr_reg_n_0_[2]\,
      I5 => \w_addr_reg_n_0_[2]\,
      O => io_input_buffer_half
    );
io_input_buffer_half_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_addr_reg_n_0_[4]\,
      I1 => \w_addr_reg_n_0_[4]\,
      O => io_input_buffer_half_INST_0_i_1_n_0
    );
io_input_buffer_half_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0FBB0FBFFFFB0FB"
    )
        port map (
      I0 => \w_addr_reg_n_0_[0]\,
      I1 => \r_addr_reg_n_0_[0]\,
      I2 => \w_addr_reg_n_0_[1]\,
      I3 => \r_addr_reg_n_0_[1]\,
      I4 => \w_addr_reg_n_0_[2]\,
      I5 => \r_addr_reg_n_0_[2]\,
      O => io_input_buffer_half_INST_0_i_2_n_0
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(1 downto 0),
      DIB(1 downto 0) => \io_axi_r_payload_data[31]_1\(3 downto 2),
      DIC(1 downto 0) => \io_axi_r_payload_data[31]_1\(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(1 downto 0),
      DOB(1 downto 0) => \_zz_mem_port1\(3 downto 2),
      DOC(1 downto 0) => \_zz_mem_port1\(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
\mem_reg_0_31_0_5_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA82AAAA2AA8"
    )
        port map (
      I0 => \w_addr_reg[0]_0\,
      I1 => \w_addr_reg_n_0_[3]\,
      I2 => io_input_buffer_full_INST_0_i_2_n_0,
      I3 => io_input_buffer_half_INST_0_i_1_n_0,
      I4 => io_input_buffer_full_INST_0_i_1_n_0,
      I5 => \r_addr_reg_n_0_[3]\,
      O => \^e\(0)
    );
mem_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(13 downto 12),
      DIB(1 downto 0) => \io_axi_r_payload_data[31]_1\(15 downto 14),
      DIC(1 downto 0) => \io_axi_r_payload_data[31]_1\(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(13 downto 12),
      DOB(1 downto 0) => \_zz_mem_port1\(15 downto 14),
      DOC(1 downto 0) => \_zz_mem_port1\(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
mem_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(19 downto 18),
      DIB(1 downto 0) => \io_axi_r_payload_data[31]_1\(21 downto 20),
      DIC(1 downto 0) => \io_axi_r_payload_data[31]_1\(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(19 downto 18),
      DOB(1 downto 0) => \_zz_mem_port1\(21 downto 20),
      DOC(1 downto 0) => \_zz_mem_port1\(23 downto 22),
      DOD(1 downto 0) => NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
mem_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(25 downto 24),
      DIB(1 downto 0) => \io_axi_r_payload_data[31]_1\(27 downto 26),
      DIC(1 downto 0) => \io_axi_r_payload_data[31]_1\(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(25 downto 24),
      DOB(1 downto 0) => \_zz_mem_port1\(27 downto 26),
      DOC(1 downto 0) => \_zz_mem_port1\(29 downto 28),
      DOD(1 downto 0) => NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
mem_reg_0_31_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(31 downto 30),
      DOB(1 downto 0) => NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
mem_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4) => \r_addr_reg_n_0_[4]\,
      ADDRA(3) => \r_addr_reg_n_0_[3]\,
      ADDRA(2) => \r_addr_reg_n_0_[2]\,
      ADDRA(1) => \r_addr_reg_n_0_[1]\,
      ADDRA(0) => \r_addr_reg_n_0_[0]\,
      ADDRB(4) => \r_addr_reg_n_0_[4]\,
      ADDRB(3) => \r_addr_reg_n_0_[3]\,
      ADDRB(2) => \r_addr_reg_n_0_[2]\,
      ADDRB(1) => \r_addr_reg_n_0_[1]\,
      ADDRB(0) => \r_addr_reg_n_0_[0]\,
      ADDRC(4) => \r_addr_reg_n_0_[4]\,
      ADDRC(3) => \r_addr_reg_n_0_[3]\,
      ADDRC(2) => \r_addr_reg_n_0_[2]\,
      ADDRC(1) => \r_addr_reg_n_0_[1]\,
      ADDRC(0) => \r_addr_reg_n_0_[0]\,
      ADDRD(4) => \w_addr_reg_n_0_[4]\,
      ADDRD(3) => \w_addr_reg_n_0_[3]\,
      ADDRD(2) => \w_addr_reg_n_0_[2]\,
      ADDRD(1) => \w_addr_reg_n_0_[1]\,
      ADDRD(0) => \w_addr_reg_n_0_[0]\,
      DIA(1 downto 0) => \io_axi_r_payload_data[31]_1\(7 downto 6),
      DIB(1 downto 0) => \io_axi_r_payload_data[31]_1\(9 downto 8),
      DIC(1 downto 0) => \io_axi_r_payload_data[31]_1\(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => \_zz_mem_port1\(7 downto 6),
      DOB(1 downto 0) => \_zz_mem_port1\(9 downto 8),
      DOC(1 downto 0) => \_zz_mem_port1\(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => \^e\(0)
    );
\r_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \r_addr_reg_n_0_[0]\,
      O => \r_addr[0]_i_1_n_0\
    );
\r_addr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \r_addr_reg_n_0_[1]\,
      I1 => \r_addr_reg_n_0_[0]\,
      O => \p_0_in__0\(1)
    );
\r_addr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \r_addr_reg_n_0_[2]\,
      I1 => \r_addr_reg_n_0_[0]\,
      I2 => \r_addr_reg_n_0_[1]\,
      O => \p_0_in__0\(2)
    );
\r_addr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \r_addr_reg_n_0_[3]\,
      I1 => \r_addr_reg_n_0_[1]\,
      I2 => \r_addr_reg_n_0_[0]\,
      I3 => \r_addr_reg_n_0_[2]\,
      O => \p_0_in__0\(3)
    );
\r_addr[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F6FFFFF6"
    )
        port map (
      I0 => \w_addr_reg_n_0_[4]\,
      I1 => \r_addr_reg_n_0_[4]\,
      I2 => \io_axi_r_payload_data[31]_INST_0_i_3_n_0\,
      I3 => \r_addr_reg_n_0_[3]\,
      I4 => \w_addr_reg_n_0_[3]\,
      I5 => \r_addr[4]_i_3__0_n_0\,
      O => when_FIFO_l65
    );
\r_addr[4]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \r_addr_reg_n_0_[4]\,
      I1 => \r_addr_reg_n_0_[2]\,
      I2 => \r_addr_reg_n_0_[0]\,
      I3 => \r_addr_reg_n_0_[1]\,
      I4 => \r_addr_reg_n_0_[3]\,
      O => \p_0_in__0\(4)
    );
\r_addr[4]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^axi_r_cnt_reg[2]\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => io_axi_r_ready,
      I4 => \io_axi_r_payload_data[31]_0\,
      I5 => r_axi_ar_req_valid,
      O => \r_addr[4]_i_3__0_n_0\
    );
\r_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_FIFO_l65,
      D => \r_addr[0]_i_1_n_0\,
      Q => \r_addr_reg_n_0_[0]\,
      R => \w_addr_reg[0]_1\
    );
\r_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_FIFO_l65,
      D => \p_0_in__0\(1),
      Q => \r_addr_reg_n_0_[1]\,
      R => \w_addr_reg[0]_1\
    );
\r_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_FIFO_l65,
      D => \p_0_in__0\(2),
      Q => \r_addr_reg_n_0_[2]\,
      R => \w_addr_reg[0]_1\
    );
\r_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_FIFO_l65,
      D => \p_0_in__0\(3),
      Q => \r_addr_reg_n_0_[3]\,
      R => \w_addr_reg[0]_1\
    );
\r_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_FIFO_l65,
      D => \p_0_in__0\(4),
      Q => \r_addr_reg_n_0_[4]\,
      R => \w_addr_reg[0]_1\
    );
r_axi_rlast_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => Q(2),
      I1 => r_axi_rlast_reg,
      I2 => Q(3),
      O => \^axi_r_cnt_reg[2]\
    );
\w_addr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \w_addr_reg_n_0_[0]\,
      O => \w_addr[0]_i_1_n_0\
    );
\w_addr[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \w_addr_reg_n_0_[0]\,
      I1 => \w_addr_reg_n_0_[1]\,
      O => \w_addr[1]_i_1__0_n_0\
    );
\w_addr[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \w_addr_reg_n_0_[2]\,
      I1 => \w_addr_reg_n_0_[1]\,
      I2 => \w_addr_reg_n_0_[0]\,
      O => \w_addr[2]_i_1__0_n_0\
    );
\w_addr[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \w_addr_reg_n_0_[3]\,
      I1 => \w_addr_reg_n_0_[0]\,
      I2 => \w_addr_reg_n_0_[1]\,
      I3 => \w_addr_reg_n_0_[2]\,
      O => \w_addr[3]_i_1__0_n_0\
    );
\w_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \w_addr_reg_n_0_[4]\,
      I1 => \w_addr_reg_n_0_[2]\,
      I2 => \w_addr_reg_n_0_[1]\,
      I3 => \w_addr_reg_n_0_[0]\,
      I4 => \w_addr_reg_n_0_[3]\,
      O => \w_addr[4]_i_1_n_0\
    );
\w_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \w_addr[0]_i_1_n_0\,
      Q => \w_addr_reg_n_0_[0]\,
      R => \w_addr_reg[0]_1\
    );
\w_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \w_addr[1]_i_1__0_n_0\,
      Q => \w_addr_reg_n_0_[1]\,
      R => \w_addr_reg[0]_1\
    );
\w_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \w_addr[2]_i_1__0_n_0\,
      Q => \w_addr_reg_n_0_[2]\,
      R => \w_addr_reg[0]_1\
    );
\w_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \w_addr[3]_i_1__0_n_0\,
      Q => \w_addr_reg_n_0_[3]\,
      R => \w_addr_reg[0]_1\
    );
\w_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^e\(0),
      D => \w_addr[4]_i_1_n_0\,
      Q => \w_addr_reg_n_0_[4]\,
      R => \w_addr_reg[0]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3_FIFO_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_enable_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_output_buffer_half : out STD_LOGIC;
    \axi_w_cnt_reg[3]\ : out STD_LOGIC;
    io_output_buffer_empty : out STD_LOGIC;
    clk_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    r_enable : in STD_LOGIC;
    r_axi_aw_req_valid : in STD_LOGIC;
    io_axi_w_valid : in STD_LOGIC;
    \w_addr_reg[4]_0\ : in STD_LOGIC;
    \w_addr_reg[4]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_enable : in STD_LOGIC;
    \r_addr_reg[0]_0\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    io_axi_w_payload_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \w_addr_reg[0]_0\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_station_overview_AudioStation_0_3_FIFO_0 : entity is "FIFO";
end audio_station_overview_AudioStation_0_3_FIFO_0;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3_FIFO_0 is
  signal \_zz_io_full\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^axi_w_cnt_reg[3]\ : STD_LOGIC;
  signal \^io_enable_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal io_output_buffer_empty_INST_0_i_1_n_0 : STD_LOGIC;
  signal io_output_buffer_empty_INST_0_i_2_n_0 : STD_LOGIC;
  signal io_output_buffer_empty_INST_0_i_3_n_0 : STD_LOGIC;
  signal io_output_buffer_half_INST_0_i_1_n_0 : STD_LOGIC;
  signal io_output_buffer_half_INST_0_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_31_0_5_i_1_n_0 : STD_LOGIC;
  signal mem_reg_0_31_0_5_i_2_n_0 : STD_LOGIC;
  signal mem_reg_0_31_0_5_i_4_n_0 : STD_LOGIC;
  signal mem_reg_0_31_0_5_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \r_addr[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \r_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal r_addr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \w_addr[4]_i_1__0_n_0\ : STD_LOGIC;
  signal w_addr_reg : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of io_output_buffer_empty_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of io_output_buffer_empty_INST_0_i_2 : label is "soft_lutpair8";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_0_5 : label is "";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of mem_reg_0_31_0_5 : label is 1024;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of mem_reg_0_31_0_5 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE : string;
  attribute RTL_RAM_TYPE of mem_reg_0_31_0_5 : label is "RAM_SDP";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of mem_reg_0_31_0_5 : label is 31;
  attribute ram_offset : integer;
  attribute ram_offset of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of mem_reg_0_31_0_5 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of mem_reg_0_31_0_5 : label is 5;
  attribute SOFT_HLUTNM of mem_reg_0_31_0_5_i_5 : label is "soft_lutpair9";
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_12_17 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_12_17 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_12_17 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_12_17 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_12_17 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_12_17 : label is 31;
  attribute ram_offset of mem_reg_0_31_12_17 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_12_17 : label is 12;
  attribute ram_slice_end of mem_reg_0_31_12_17 : label is 17;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_18_23 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_18_23 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_18_23 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_18_23 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_18_23 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_18_23 : label is 31;
  attribute ram_offset of mem_reg_0_31_18_23 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_18_23 : label is 18;
  attribute ram_slice_end of mem_reg_0_31_18_23 : label is 23;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_24_29 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_24_29 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_24_29 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_24_29 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_24_29 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_24_29 : label is 31;
  attribute ram_offset of mem_reg_0_31_24_29 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_24_29 : label is 24;
  attribute ram_slice_end of mem_reg_0_31_24_29 : label is 29;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_30_31 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_30_31 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_30_31 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_30_31 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_30_31 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_30_31 : label is 31;
  attribute ram_offset of mem_reg_0_31_30_31 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_30_31 : label is 30;
  attribute ram_slice_end of mem_reg_0_31_30_31 : label is 31;
  attribute METHODOLOGY_DRC_VIOS of mem_reg_0_31_6_11 : label is "";
  attribute RTL_RAM_BITS of mem_reg_0_31_6_11 : label is 1024;
  attribute RTL_RAM_NAME of mem_reg_0_31_6_11 : label is "inst/audio_data_mover/buffer_out/mem";
  attribute RTL_RAM_TYPE of mem_reg_0_31_6_11 : label is "RAM_SDP";
  attribute ram_addr_begin of mem_reg_0_31_6_11 : label is 0;
  attribute ram_addr_end of mem_reg_0_31_6_11 : label is 31;
  attribute ram_offset of mem_reg_0_31_6_11 : label is 0;
  attribute ram_slice_begin of mem_reg_0_31_6_11 : label is 6;
  attribute ram_slice_end of mem_reg_0_31_6_11 : label is 11;
  attribute SOFT_HLUTNM of \r_addr[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_addr[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r_addr[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \r_addr[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r_addr[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \w_addr[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \w_addr[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \w_addr[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \w_addr[4]_i_1__0\ : label is "soft_lutpair5";
begin
  \axi_w_cnt_reg[3]\ <= \^axi_w_cnt_reg[3]\;
  io_enable_0(0) <= \^io_enable_0\(0);
io_output_buffer_empty_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80080000"
    )
        port map (
      I0 => io_output_buffer_empty_INST_0_i_1_n_0,
      I1 => io_output_buffer_empty_INST_0_i_2_n_0,
      I2 => w_addr_reg(0),
      I3 => r_addr_reg(0),
      I4 => io_output_buffer_empty_INST_0_i_3_n_0,
      O => io_output_buffer_empty
    );
io_output_buffer_empty_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9099909900009099"
    )
        port map (
      I0 => w_addr_reg(4),
      I1 => r_addr_reg(4),
      I2 => r_addr_reg(3),
      I3 => w_addr_reg(3),
      I4 => r_addr_reg(1),
      I5 => w_addr_reg(1),
      O => io_output_buffer_empty_INST_0_i_1_n_0
    );
io_output_buffer_empty_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => w_addr_reg(2),
      I1 => r_addr_reg(2),
      I2 => r_addr_reg(1),
      I3 => w_addr_reg(1),
      O => io_output_buffer_empty_INST_0_i_2_n_0
    );
io_output_buffer_empty_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D0DD"
    )
        port map (
      I0 => r_addr_reg(3),
      I1 => w_addr_reg(3),
      I2 => w_addr_reg(2),
      I3 => r_addr_reg(2),
      O => io_output_buffer_empty_INST_0_i_3_n_0
    );
io_output_buffer_half_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA55AA59AA5559"
    )
        port map (
      I0 => io_output_buffer_half_INST_0_i_1_n_0,
      I1 => r_addr_reg(2),
      I2 => w_addr_reg(2),
      I3 => w_addr_reg(3),
      I4 => r_addr_reg(3),
      I5 => io_output_buffer_half_INST_0_i_2_n_0,
      O => io_output_buffer_half
    );
io_output_buffer_half_INST_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_addr_reg(4),
      I1 => w_addr_reg(4),
      O => io_output_buffer_half_INST_0_i_1_n_0
    );
io_output_buffer_half_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0B0BB00B000B0"
    )
        port map (
      I0 => r_addr_reg(2),
      I1 => w_addr_reg(2),
      I2 => r_addr_reg(1),
      I3 => w_addr_reg(1),
      I4 => w_addr_reg(0),
      I5 => r_addr_reg(0),
      O => io_output_buffer_half_INST_0_i_2_n_0
    );
mem_reg_0_31_0_5: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(1 downto 0),
      DIB(1 downto 0) => io_axi_w_payload_data(3 downto 2),
      DIC(1 downto 0) => io_axi_w_payload_data(5 downto 4),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(1 downto 0),
      DOB(1 downto 0) => clk_0(3 downto 2),
      DOC(1 downto 0) => clk_0(5 downto 4),
      DOD(1 downto 0) => NLW_mem_reg_0_31_0_5_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_0_5_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000800080000000"
    )
        port map (
      I0 => mem_reg_0_31_0_5_i_2_n_0,
      I1 => r_axi_aw_req_valid,
      I2 => io_axi_w_valid,
      I3 => \w_addr_reg[4]_0\,
      I4 => \w_addr_reg[4]_1\,
      I5 => \^axi_w_cnt_reg[3]\,
      O => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_0_5_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DEFDFFEFFFEFDEFD"
    )
        port map (
      I0 => r_addr_reg(3),
      I1 => mem_reg_0_31_0_5_i_4_n_0,
      I2 => w_addr_reg(3),
      I3 => mem_reg_0_31_0_5_i_5_n_0,
      I4 => w_addr_reg(4),
      I5 => r_addr_reg(4),
      O => mem_reg_0_31_0_5_i_2_n_0
    );
mem_reg_0_31_0_5_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => Q(0),
      I3 => Q(2),
      O => \^axi_w_cnt_reg[3]\
    );
mem_reg_0_31_0_5_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7BDEDEB7FFFF"
    )
        port map (
      I0 => r_addr_reg(2),
      I1 => w_addr_reg(1),
      I2 => w_addr_reg(2),
      I3 => r_addr_reg(1),
      I4 => w_addr_reg(0),
      I5 => r_addr_reg(0),
      O => mem_reg_0_31_0_5_i_4_n_0
    );
mem_reg_0_31_0_5_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => w_addr_reg(2),
      I1 => w_addr_reg(1),
      I2 => w_addr_reg(0),
      O => mem_reg_0_31_0_5_i_5_n_0
    );
mem_reg_0_31_12_17: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(13 downto 12),
      DIB(1 downto 0) => io_axi_w_payload_data(15 downto 14),
      DIC(1 downto 0) => io_axi_w_payload_data(17 downto 16),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(13 downto 12),
      DOB(1 downto 0) => clk_0(15 downto 14),
      DOC(1 downto 0) => clk_0(17 downto 16),
      DOD(1 downto 0) => NLW_mem_reg_0_31_12_17_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_18_23: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(19 downto 18),
      DIB(1 downto 0) => io_axi_w_payload_data(21 downto 20),
      DIC(1 downto 0) => io_axi_w_payload_data(23 downto 22),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(19 downto 18),
      DOB(1 downto 0) => clk_0(21 downto 20),
      DOC(1 downto 0) => clk_0(23 downto 22),
      DOD(1 downto 0) => NLW_mem_reg_0_31_18_23_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_24_29: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(25 downto 24),
      DIB(1 downto 0) => io_axi_w_payload_data(27 downto 26),
      DIC(1 downto 0) => io_axi_w_payload_data(29 downto 28),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(25 downto 24),
      DOB(1 downto 0) => clk_0(27 downto 26),
      DOC(1 downto 0) => clk_0(29 downto 28),
      DOD(1 downto 0) => NLW_mem_reg_0_31_24_29_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_30_31: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(31 downto 30),
      DIB(1 downto 0) => B"00",
      DIC(1 downto 0) => B"00",
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(31 downto 30),
      DOB(1 downto 0) => NLW_mem_reg_0_31_30_31_DOB_UNCONNECTED(1 downto 0),
      DOC(1 downto 0) => NLW_mem_reg_0_31_30_31_DOC_UNCONNECTED(1 downto 0),
      DOD(1 downto 0) => NLW_mem_reg_0_31_30_31_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
mem_reg_0_31_6_11: unisim.vcomponents.RAM32M
     port map (
      ADDRA(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRB(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRC(4 downto 0) => r_addr_reg(4 downto 0),
      ADDRD(4 downto 0) => w_addr_reg(4 downto 0),
      DIA(1 downto 0) => io_axi_w_payload_data(7 downto 6),
      DIB(1 downto 0) => io_axi_w_payload_data(9 downto 8),
      DIC(1 downto 0) => io_axi_w_payload_data(11 downto 10),
      DID(1 downto 0) => B"00",
      DOA(1 downto 0) => clk_0(7 downto 6),
      DOB(1 downto 0) => clk_0(9 downto 8),
      DOC(1 downto 0) => clk_0(11 downto 10),
      DOD(1 downto 0) => NLW_mem_reg_0_31_6_11_DOD_UNCONNECTED(1 downto 0),
      WCLK => clk,
      WE => mem_reg_0_31_0_5_i_1_n_0
    );
\r_addr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => r_addr_reg(0),
      O => \r_addr[0]_i_1__0_n_0\
    );
\r_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_addr_reg(1),
      I1 => r_addr_reg(0),
      O => p_0_in(1)
    );
\r_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => r_addr_reg(2),
      I1 => r_addr_reg(0),
      I2 => r_addr_reg(1),
      O => p_0_in(2)
    );
\r_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => r_addr_reg(3),
      I1 => r_addr_reg(1),
      I2 => r_addr_reg(0),
      I3 => r_addr_reg(2),
      O => p_0_in(3)
    );
\r_addr[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => io_output_buffer_empty_INST_0_i_3_n_0,
      I1 => \r_addr[4]_i_3_n_0\,
      I2 => io_output_buffer_empty_INST_0_i_1_n_0,
      I3 => io_enable,
      I4 => \r_addr_reg[0]_0\,
      O => \^io_enable_0\(0)
    );
\r_addr[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => r_addr_reg(4),
      I1 => r_addr_reg(2),
      I2 => r_addr_reg(0),
      I3 => r_addr_reg(1),
      I4 => r_addr_reg(3),
      O => p_0_in(4)
    );
\r_addr[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D0DD00000000D0DD"
    )
        port map (
      I0 => w_addr_reg(1),
      I1 => r_addr_reg(1),
      I2 => r_addr_reg(2),
      I3 => w_addr_reg(2),
      I4 => w_addr_reg(0),
      I5 => r_addr_reg(0),
      O => \r_addr[4]_i_3_n_0\
    );
\r_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^io_enable_0\(0),
      D => \r_addr[0]_i_1__0_n_0\,
      Q => r_addr_reg(0),
      R => \w_addr_reg[0]_0\
    );
\r_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^io_enable_0\(0),
      D => p_0_in(1),
      Q => r_addr_reg(1),
      R => \w_addr_reg[0]_0\
    );
\r_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^io_enable_0\(0),
      D => p_0_in(2),
      Q => r_addr_reg(2),
      R => \w_addr_reg[0]_0\
    );
\r_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^io_enable_0\(0),
      D => p_0_in(3),
      Q => r_addr_reg(3),
      R => \w_addr_reg[0]_0\
    );
\r_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \^io_enable_0\(0),
      D => p_0_in(4),
      Q => r_addr_reg(4),
      R => \w_addr_reg[0]_0\
    );
\r_buffer_in[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^io_enable_0\(0),
      I1 => r_enable,
      O => E(0)
    );
\w_addr[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => w_addr_reg(0),
      O => \_zz_io_full\(0)
    );
\w_addr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => w_addr_reg(0),
      I1 => w_addr_reg(1),
      O => \_zz_io_full\(1)
    );
\w_addr[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => w_addr_reg(2),
      I1 => w_addr_reg(1),
      I2 => w_addr_reg(0),
      O => \_zz_io_full\(2)
    );
\w_addr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => w_addr_reg(3),
      I1 => w_addr_reg(2),
      I2 => w_addr_reg(1),
      I3 => w_addr_reg(0),
      O => \_zz_io_full\(3)
    );
\w_addr[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => w_addr_reg(4),
      I1 => w_addr_reg(3),
      I2 => w_addr_reg(2),
      I3 => w_addr_reg(1),
      I4 => w_addr_reg(0),
      O => \w_addr[4]_i_1__0_n_0\
    );
\w_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_0_31_0_5_i_1_n_0,
      D => \_zz_io_full\(0),
      Q => w_addr_reg(0),
      R => \w_addr_reg[0]_0\
    );
\w_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_0_31_0_5_i_1_n_0,
      D => \_zz_io_full\(1),
      Q => w_addr_reg(1),
      R => \w_addr_reg[0]_0\
    );
\w_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_0_31_0_5_i_1_n_0,
      D => \_zz_io_full\(2),
      Q => w_addr_reg(2),
      R => \w_addr_reg[0]_0\
    );
\w_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_0_31_0_5_i_1_n_0,
      D => \_zz_io_full\(3),
      Q => w_addr_reg(3),
      R => \w_addr_reg[0]_0\
    );
\w_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mem_reg_0_31_0_5_i_1_n_0,
      D => \w_addr[4]_i_1__0_n_0\,
      Q => w_addr_reg(4),
      R => \w_addr_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3_I2S is
  port (
    resetn_0 : out STD_LOGIC;
    r_enable : out STD_LOGIC;
    io_mclk : out STD_LOGIC;
    r_buffer_in_full_reg_0 : out STD_LOGIC;
    io_reclrc : out STD_LOGIC;
    io_pbdat : out STD_LOGIC;
    io_enable_0 : out STD_LOGIC;
    r_bclk_reg_0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    r_buffer_in_full_reg_1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    io_enable : in STD_LOGIC;
    io_recdat : in STD_LOGIC;
    r_buffer_out_full_reg_0 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_station_overview_AudioStation_0_3_I2S : entity is "I2S";
end audio_station_overview_AudioStation_0_3_I2S;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3_I2S is
  signal \^io_mclk\ : STD_LOGIC;
  signal \^io_pbdat\ : STD_LOGIC;
  signal \^io_reclrc\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal p_2_in : STD_LOGIC_VECTOR ( 12 downto 1 );
  signal r_bclk_en : STD_LOGIC;
  signal r_bclk_i_1_n_0 : STD_LOGIC;
  signal \^r_bclk_reg_0\ : STD_LOGIC;
  signal r_buffer_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_buffer_in_full_i_1_n_0 : STD_LOGIC;
  signal \^r_buffer_in_full_reg_0\ : STD_LOGIC;
  signal r_buffer_out : STD_LOGIC;
  signal r_buffer_out_full_i_1_n_0 : STD_LOGIC;
  signal r_buffer_out_full_reg_n_0 : STD_LOGIC;
  signal \r_cnt_bclk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[3]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[4]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en[5]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_cnt_bclk_en_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__0_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__0_n_1\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__0_n_2\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__0_n_3\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__1_n_1\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__1_n_2\ : STD_LOGIC;
  signal \r_cnt_frame_en0_carry__1_n_3\ : STD_LOGIC;
  signal r_cnt_frame_en0_carry_n_0 : STD_LOGIC;
  signal r_cnt_frame_en0_carry_n_1 : STD_LOGIC;
  signal r_cnt_frame_en0_carry_n_2 : STD_LOGIC;
  signal r_cnt_frame_en0_carry_n_3 : STD_LOGIC;
  signal \r_cnt_frame_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[11]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_cnt_frame_en_reg_n_0_[9]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_1\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_2\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_3\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_4\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_5\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_6\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__0_n_7\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__1_n_2\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__1_n_3\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__1_n_5\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__1_n_6\ : STD_LOGIC;
  signal \r_cnt_lrclk_en0_carry__1_n_7\ : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_0 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_1 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_2 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_3 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_4 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_5 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_6 : STD_LOGIC;
  signal r_cnt_lrclk_en0_carry_n_7 : STD_LOGIC;
  signal \r_cnt_lrclk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[10]_i_2_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_cnt_lrclk_en_reg_n_0_[9]\ : STD_LOGIC;
  signal r_cnt_mclk_en : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \r_cnt_mclk_en[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_mclk_en[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_cnt_mclk_en[2]_i_1_n_0\ : STD_LOGIC;
  signal r_data : STD_LOGIC;
  signal \r_data[0]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[10]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[11]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[12]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[13]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[14]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[16]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[17]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[18]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[19]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[20]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[21]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[22]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[24]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[25]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[26]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[27]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[28]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[29]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[2]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[30]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[31]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[32]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[33]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[34]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[35]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[36]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[37]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[38]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[39]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[3]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[40]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[41]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[42]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[43]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[44]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[45]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[46]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[48]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[49]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[4]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[50]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[51]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[52]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[53]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[54]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[55]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[56]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[57]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[58]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[59]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[5]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[60]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[61]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[62]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[63]_i_2_n_0\ : STD_LOGIC;
  signal \r_data[6]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[7]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[8]_i_1_n_0\ : STD_LOGIC;
  signal \r_data[9]_i_1_n_0\ : STD_LOGIC;
  signal \r_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \r_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \^r_enable\ : STD_LOGIC;
  signal r_enable_i_1_n_0 : STD_LOGIC;
  signal r_frame_en : STD_LOGIC;
  signal r_frame_en_i_2_n_0 : STD_LOGIC;
  signal r_frame_en_i_3_n_0 : STD_LOGIC;
  signal r_lrclk : STD_LOGIC;
  signal r_lrclk_en : STD_LOGIC;
  signal r_lrclk_en_i_2_n_0 : STD_LOGIC;
  signal r_lrclk_en_i_3_n_0 : STD_LOGIC;
  signal r_lrclk_i_2_n_0 : STD_LOGIC;
  signal r_mclk_en : STD_LOGIC;
  signal r_mclk_i_1_n_0 : STD_LOGIC;
  signal r_out_i_1_n_0 : STD_LOGIC;
  signal \^resetn_0\ : STD_LOGIC;
  signal when_I2S_l113 : STD_LOGIC;
  signal when_I2S_l138 : STD_LOGIC;
  signal when_I2S_l146 : STD_LOGIC;
  signal when_I2S_l154 : STD_LOGIC;
  signal \NLW_r_cnt_frame_en0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_r_cnt_lrclk_en0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_r_cnt_lrclk_en0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \mem_reg_0_31_0_5_i_2__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of r_buffer_out_full_i_1 : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[3]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[4]_i_2\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \r_cnt_bclk_en[5]_i_2\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of r_cnt_frame_en0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_cnt_frame_en0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_cnt_frame_en0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \r_cnt_frame_en[0]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[11]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[2]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[5]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[7]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \r_cnt_frame_en[8]_i_1\ : label is "soft_lutpair61";
  attribute ADDER_THRESHOLD of r_cnt_lrclk_en0_carry : label is 35;
  attribute ADDER_THRESHOLD of \r_cnt_lrclk_en0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \r_cnt_lrclk_en0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[10]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[2]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[3]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[5]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[6]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \r_cnt_lrclk_en[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \r_cnt_mclk_en[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_cnt_mclk_en[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \r_data[0]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_data[10]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_data[11]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_data[12]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_data[13]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_data[14]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_data[15]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_data[16]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_data[17]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_data[18]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_data[19]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_data[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r_data[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_data[21]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_data[22]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_data[23]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_data[24]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_data[25]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_data[26]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_data[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_data[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_data[29]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_data[2]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r_data[30]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_data[31]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_data[32]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \r_data[33]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \r_data[34]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \r_data[35]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r_data[36]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \r_data[37]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \r_data[38]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_data[39]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_data[3]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \r_data[40]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_data[41]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \r_data[42]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \r_data[43]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \r_data[44]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \r_data[45]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \r_data[46]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \r_data[47]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \r_data[48]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \r_data[49]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \r_data[4]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \r_data[50]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \r_data[51]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \r_data[52]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \r_data[53]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \r_data[54]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \r_data[55]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \r_data[56]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \r_data[57]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \r_data[58]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \r_data[59]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \r_data[5]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \r_data[60]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \r_data[61]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \r_data[62]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \r_data[63]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \r_data[6]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \r_data[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \r_data[8]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \r_data[9]_i_1\ : label is "soft_lutpair44";
begin
  io_mclk <= \^io_mclk\;
  io_pbdat <= \^io_pbdat\;
  io_reclrc <= \^io_reclrc\;
  r_bclk_reg_0 <= \^r_bclk_reg_0\;
  r_buffer_in_full_reg_0 <= \^r_buffer_in_full_reg_0\;
  r_enable <= \^r_enable\;
  resetn_0 <= \^resetn_0\;
\mem_reg_0_31_0_5_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => io_enable,
      I1 => r_buffer_out_full_reg_n_0,
      O => io_enable_0
    );
\r_axi_bid[11]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \^resetn_0\
    );
r_bclk_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[1]\,
      I1 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I2 => \r_cnt_bclk_en_reg_n_0_[2]\,
      I3 => \r_cnt_bclk_en_reg_n_0_[4]\,
      I4 => \r_cnt_bclk_en_reg_n_0_[3]\,
      I5 => \r_cnt_bclk_en_reg_n_0_[5]\,
      O => when_I2S_l138
    );
r_bclk_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => when_I2S_l138,
      Q => r_bclk_en,
      R => r_lrclk
    );
r_bclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7B"
    )
        port map (
      I0 => r_bclk_en,
      I1 => \^r_enable\,
      I2 => \^r_bclk_reg_0\,
      O => r_bclk_i_1_n_0
    );
r_bclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_bclk_i_1_n_0,
      Q => \^r_bclk_reg_0\,
      R => \^resetn_0\
    );
r_buffer_in_full_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0E0C0"
    )
        port map (
      I0 => r_buffer_in_full_reg_1(0),
      I1 => \^r_buffer_in_full_reg_0\,
      I2 => resetn,
      I3 => \^r_enable\,
      I4 => r_frame_en,
      O => r_buffer_in_full_i_1_n_0
    );
r_buffer_in_full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_buffer_in_full_i_1_n_0,
      Q => \^r_buffer_in_full_reg_0\,
      R => '0'
    );
\r_buffer_in_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(0),
      Q => r_buffer_in(0),
      R => \^resetn_0\
    );
\r_buffer_in_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(10),
      Q => r_buffer_in(10),
      R => \^resetn_0\
    );
\r_buffer_in_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(11),
      Q => r_buffer_in(11),
      R => \^resetn_0\
    );
\r_buffer_in_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(12),
      Q => r_buffer_in(12),
      R => \^resetn_0\
    );
\r_buffer_in_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(13),
      Q => r_buffer_in(13),
      R => \^resetn_0\
    );
\r_buffer_in_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(14),
      Q => r_buffer_in(14),
      R => \^resetn_0\
    );
\r_buffer_in_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(15),
      Q => r_buffer_in(15),
      R => \^resetn_0\
    );
\r_buffer_in_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(16),
      Q => r_buffer_in(16),
      R => \^resetn_0\
    );
\r_buffer_in_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(17),
      Q => r_buffer_in(17),
      R => \^resetn_0\
    );
\r_buffer_in_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(18),
      Q => r_buffer_in(18),
      R => \^resetn_0\
    );
\r_buffer_in_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(19),
      Q => r_buffer_in(19),
      R => \^resetn_0\
    );
\r_buffer_in_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(1),
      Q => r_buffer_in(1),
      R => \^resetn_0\
    );
\r_buffer_in_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(20),
      Q => r_buffer_in(20),
      R => \^resetn_0\
    );
\r_buffer_in_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(21),
      Q => r_buffer_in(21),
      R => \^resetn_0\
    );
\r_buffer_in_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(22),
      Q => r_buffer_in(22),
      R => \^resetn_0\
    );
\r_buffer_in_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(23),
      Q => r_buffer_in(23),
      R => \^resetn_0\
    );
\r_buffer_in_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(24),
      Q => r_buffer_in(24),
      R => \^resetn_0\
    );
\r_buffer_in_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(25),
      Q => r_buffer_in(25),
      R => \^resetn_0\
    );
\r_buffer_in_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(26),
      Q => r_buffer_in(26),
      R => \^resetn_0\
    );
\r_buffer_in_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(27),
      Q => r_buffer_in(27),
      R => \^resetn_0\
    );
\r_buffer_in_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(28),
      Q => r_buffer_in(28),
      R => \^resetn_0\
    );
\r_buffer_in_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(29),
      Q => r_buffer_in(29),
      R => \^resetn_0\
    );
\r_buffer_in_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(2),
      Q => r_buffer_in(2),
      R => \^resetn_0\
    );
\r_buffer_in_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(30),
      Q => r_buffer_in(30),
      R => \^resetn_0\
    );
\r_buffer_in_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(31),
      Q => r_buffer_in(31),
      R => \^resetn_0\
    );
\r_buffer_in_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(3),
      Q => r_buffer_in(3),
      R => \^resetn_0\
    );
\r_buffer_in_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(4),
      Q => r_buffer_in(4),
      R => \^resetn_0\
    );
\r_buffer_in_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(5),
      Q => r_buffer_in(5),
      R => \^resetn_0\
    );
\r_buffer_in_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(6),
      Q => r_buffer_in(6),
      R => \^resetn_0\
    );
\r_buffer_in_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(7),
      Q => r_buffer_in(7),
      R => \^resetn_0\
    );
\r_buffer_in_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(8),
      Q => r_buffer_in(8),
      R => \^resetn_0\
    );
\r_buffer_in_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => E(0),
      D => D(9),
      Q => r_buffer_in(9),
      R => \^resetn_0\
    );
\r_buffer_out[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r_frame_en,
      I1 => \^r_enable\,
      O => r_buffer_out
    );
r_buffer_out_full_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F7A0"
    )
        port map (
      I0 => \^r_enable\,
      I1 => r_buffer_out_full_reg_0,
      I2 => r_frame_en,
      I3 => r_buffer_out_full_reg_n_0,
      O => r_buffer_out_full_i_1_n_0
    );
r_buffer_out_full_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_buffer_out_full_i_1_n_0,
      Q => r_buffer_out_full_reg_n_0,
      R => \^resetn_0\
    );
\r_buffer_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(0),
      Q => Q(0),
      R => \^resetn_0\
    );
\r_buffer_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(10),
      Q => Q(10),
      R => \^resetn_0\
    );
\r_buffer_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(11),
      Q => Q(11),
      R => \^resetn_0\
    );
\r_buffer_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(12),
      Q => Q(12),
      R => \^resetn_0\
    );
\r_buffer_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(13),
      Q => Q(13),
      R => \^resetn_0\
    );
\r_buffer_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(14),
      Q => Q(14),
      R => \^resetn_0\
    );
\r_buffer_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(15),
      Q => Q(15),
      R => \^resetn_0\
    );
\r_buffer_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(16),
      Q => Q(16),
      R => \^resetn_0\
    );
\r_buffer_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(17),
      Q => Q(17),
      R => \^resetn_0\
    );
\r_buffer_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(18),
      Q => Q(18),
      R => \^resetn_0\
    );
\r_buffer_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(19),
      Q => Q(19),
      R => \^resetn_0\
    );
\r_buffer_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(1),
      Q => Q(1),
      R => \^resetn_0\
    );
\r_buffer_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(20),
      Q => Q(20),
      R => \^resetn_0\
    );
\r_buffer_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(21),
      Q => Q(21),
      R => \^resetn_0\
    );
\r_buffer_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(22),
      Q => Q(22),
      R => \^resetn_0\
    );
\r_buffer_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(23),
      Q => Q(23),
      R => \^resetn_0\
    );
\r_buffer_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(24),
      Q => Q(24),
      R => \^resetn_0\
    );
\r_buffer_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(25),
      Q => Q(25),
      R => \^resetn_0\
    );
\r_buffer_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(26),
      Q => Q(26),
      R => \^resetn_0\
    );
\r_buffer_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(27),
      Q => Q(27),
      R => \^resetn_0\
    );
\r_buffer_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(28),
      Q => Q(28),
      R => \^resetn_0\
    );
\r_buffer_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(29),
      Q => Q(29),
      R => \^resetn_0\
    );
\r_buffer_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(2),
      Q => Q(2),
      R => \^resetn_0\
    );
\r_buffer_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(30),
      Q => Q(30),
      R => \^resetn_0\
    );
\r_buffer_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(31),
      Q => Q(31),
      R => \^resetn_0\
    );
\r_buffer_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(3),
      Q => Q(3),
      R => \^resetn_0\
    );
\r_buffer_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(4),
      Q => Q(4),
      R => \^resetn_0\
    );
\r_buffer_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(5),
      Q => Q(5),
      R => \^resetn_0\
    );
\r_buffer_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(6),
      Q => Q(6),
      R => \^resetn_0\
    );
\r_buffer_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(7),
      Q => Q(7),
      R => \^resetn_0\
    );
\r_buffer_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(8),
      Q => Q(8),
      R => \^resetn_0\
    );
\r_buffer_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_buffer_out,
      D => p_1_in(9),
      Q => Q(9),
      R => \^resetn_0\
    );
\r_cnt_bclk_en[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04CC"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I1 => resetn,
      I2 => when_I2S_l138,
      I3 => \^r_enable\,
      O => \r_cnt_bclk_en[0]_i_1_n_0\
    );
\r_cnt_bclk_en[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0060F0F0"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I1 => \r_cnt_bclk_en_reg_n_0_[1]\,
      I2 => resetn,
      I3 => when_I2S_l138,
      I4 => \^r_enable\,
      O => \r_cnt_bclk_en[1]_i_1_n_0\
    );
\r_cnt_bclk_en[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0078000000000000"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I1 => \r_cnt_bclk_en_reg_n_0_[1]\,
      I2 => \r_cnt_bclk_en_reg_n_0_[2]\,
      I3 => when_I2S_l138,
      I4 => resetn,
      I5 => \^r_enable\,
      O => \r_cnt_bclk_en[2]_i_1_n_0\
    );
\r_cnt_bclk_en[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[2]\,
      I1 => \r_cnt_bclk_en_reg_n_0_[1]\,
      I2 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I3 => \r_cnt_bclk_en_reg_n_0_[3]\,
      I4 => \r_cnt_bclk_en[3]_i_2_n_0\,
      O => \r_cnt_bclk_en[3]_i_1_n_0\
    );
\r_cnt_bclk_en[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^r_enable\,
      I1 => resetn,
      I2 => when_I2S_l138,
      O => \r_cnt_bclk_en[3]_i_2_n_0\
    );
\r_cnt_bclk_en[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007DDDDDDD"
    )
        port map (
      I0 => \^r_enable\,
      I1 => \r_cnt_bclk_en_reg_n_0_[4]\,
      I2 => \r_cnt_bclk_en_reg_n_0_[2]\,
      I3 => \r_cnt_bclk_en[5]_i_2_n_0\,
      I4 => \r_cnt_bclk_en_reg_n_0_[3]\,
      I5 => \r_cnt_bclk_en[4]_i_2_n_0\,
      O => \r_cnt_bclk_en[4]_i_1_n_0\
    );
\r_cnt_bclk_en[4]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^r_enable\,
      I1 => when_I2S_l138,
      I2 => resetn,
      O => \r_cnt_bclk_en[4]_i_2_n_0\
    );
\r_cnt_bclk_en[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \r_cnt_bclk_en[5]_i_2_n_0\,
      I1 => \r_cnt_bclk_en_reg_n_0_[2]\,
      I2 => \r_cnt_bclk_en_reg_n_0_[4]\,
      I3 => \r_cnt_bclk_en_reg_n_0_[3]\,
      I4 => \r_cnt_bclk_en_reg_n_0_[5]\,
      I5 => r_lrclk,
      O => \r_cnt_bclk_en[5]_i_1_n_0\
    );
\r_cnt_bclk_en[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \r_cnt_bclk_en_reg_n_0_[0]\,
      I1 => \r_cnt_bclk_en_reg_n_0_[1]\,
      O => \r_cnt_bclk_en[5]_i_2_n_0\
    );
\r_cnt_bclk_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[0]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[0]\,
      R => '0'
    );
\r_cnt_bclk_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[1]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[1]\,
      R => '0'
    );
\r_cnt_bclk_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[2]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[2]\,
      R => '0'
    );
\r_cnt_bclk_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[3]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[3]\,
      R => '0'
    );
\r_cnt_bclk_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[4]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[4]\,
      R => '0'
    );
\r_cnt_bclk_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_bclk_en[5]_i_1_n_0\,
      Q => \r_cnt_bclk_en_reg_n_0_[5]\,
      R => '0'
    );
r_cnt_frame_en0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_cnt_frame_en0_carry_n_0,
      CO(2) => r_cnt_frame_en0_carry_n_1,
      CO(1) => r_cnt_frame_en0_carry_n_2,
      CO(0) => r_cnt_frame_en0_carry_n_3,
      CYINIT => \r_cnt_frame_en_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(4 downto 1),
      S(3) => \r_cnt_frame_en_reg_n_0_[4]\,
      S(2) => \r_cnt_frame_en_reg_n_0_[3]\,
      S(1) => \r_cnt_frame_en_reg_n_0_[2]\,
      S(0) => \r_cnt_frame_en_reg_n_0_[1]\
    );
\r_cnt_frame_en0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_cnt_frame_en0_carry_n_0,
      CO(3) => \r_cnt_frame_en0_carry__0_n_0\,
      CO(2) => \r_cnt_frame_en0_carry__0_n_1\,
      CO(1) => \r_cnt_frame_en0_carry__0_n_2\,
      CO(0) => \r_cnt_frame_en0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(8 downto 5),
      S(3) => \r_cnt_frame_en_reg_n_0_[8]\,
      S(2) => \r_cnt_frame_en_reg_n_0_[7]\,
      S(1) => \r_cnt_frame_en_reg_n_0_[6]\,
      S(0) => \r_cnt_frame_en_reg_n_0_[5]\
    );
\r_cnt_frame_en0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_frame_en0_carry__0_n_0\,
      CO(3) => \NLW_r_cnt_frame_en0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => \r_cnt_frame_en0_carry__1_n_1\,
      CO(1) => \r_cnt_frame_en0_carry__1_n_2\,
      CO(0) => \r_cnt_frame_en0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_2_in(12 downto 9),
      S(3) => \r_cnt_frame_en_reg_n_0_[12]\,
      S(2) => \r_cnt_frame_en_reg_n_0_[11]\,
      S(1) => \r_cnt_frame_en_reg_n_0_[10]\,
      S(0) => \r_cnt_frame_en_reg_n_0_[9]\
    );
\r_cnt_frame_en[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_cnt_frame_en_reg_n_0_[0]\,
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[0]_i_1_n_0\
    );
\r_cnt_frame_en[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^r_enable\,
      I1 => when_I2S_l154,
      I2 => resetn,
      O => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(11),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[11]_i_2_n_0\
    );
\r_cnt_frame_en[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^r_enable\,
      I1 => resetn,
      I2 => when_I2S_l154,
      O => \r_cnt_frame_en[12]_i_1_n_0\
    );
\r_cnt_frame_en[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(1),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[1]_i_1_n_0\
    );
\r_cnt_frame_en[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(2),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[2]_i_1_n_0\
    );
\r_cnt_frame_en[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(3),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[3]_i_1_n_0\
    );
\r_cnt_frame_en[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(4),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[4]_i_1_n_0\
    );
\r_cnt_frame_en[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(5),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[5]_i_1_n_0\
    );
\r_cnt_frame_en[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(6),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[6]_i_1_n_0\
    );
\r_cnt_frame_en[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(7),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[7]_i_1_n_0\
    );
\r_cnt_frame_en[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => p_2_in(8),
      I1 => \^r_enable\,
      O => \r_cnt_frame_en[8]_i_1_n_0\
    );
\r_cnt_frame_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[0]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[0]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_2_in(10),
      Q => \r_cnt_frame_en_reg_n_0_[10]\,
      R => \r_cnt_frame_en[12]_i_1_n_0\
    );
\r_cnt_frame_en_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[11]_i_2_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[11]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_2_in(12),
      Q => \r_cnt_frame_en_reg_n_0_[12]\,
      R => \r_cnt_frame_en[12]_i_1_n_0\
    );
\r_cnt_frame_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[1]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[1]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[2]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[2]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[3]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[3]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[4]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[4]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[5]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[5]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[6]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[6]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[7]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[7]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_frame_en[8]_i_1_n_0\,
      Q => \r_cnt_frame_en_reg_n_0_[8]\,
      R => \r_cnt_frame_en[11]_i_1_n_0\
    );
\r_cnt_frame_en_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_2_in(9),
      Q => \r_cnt_frame_en_reg_n_0_[9]\,
      R => \r_cnt_frame_en[12]_i_1_n_0\
    );
r_cnt_lrclk_en0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => r_cnt_lrclk_en0_carry_n_0,
      CO(2) => r_cnt_lrclk_en0_carry_n_1,
      CO(1) => r_cnt_lrclk_en0_carry_n_2,
      CO(0) => r_cnt_lrclk_en0_carry_n_3,
      CYINIT => \r_cnt_lrclk_en_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => r_cnt_lrclk_en0_carry_n_4,
      O(2) => r_cnt_lrclk_en0_carry_n_5,
      O(1) => r_cnt_lrclk_en0_carry_n_6,
      O(0) => r_cnt_lrclk_en0_carry_n_7,
      S(3) => \r_cnt_lrclk_en_reg_n_0_[4]\,
      S(2) => \r_cnt_lrclk_en_reg_n_0_[3]\,
      S(1) => \r_cnt_lrclk_en_reg_n_0_[2]\,
      S(0) => \r_cnt_lrclk_en_reg_n_0_[1]\
    );
\r_cnt_lrclk_en0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => r_cnt_lrclk_en0_carry_n_0,
      CO(3) => \r_cnt_lrclk_en0_carry__0_n_0\,
      CO(2) => \r_cnt_lrclk_en0_carry__0_n_1\,
      CO(1) => \r_cnt_lrclk_en0_carry__0_n_2\,
      CO(0) => \r_cnt_lrclk_en0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r_cnt_lrclk_en0_carry__0_n_4\,
      O(2) => \r_cnt_lrclk_en0_carry__0_n_5\,
      O(1) => \r_cnt_lrclk_en0_carry__0_n_6\,
      O(0) => \r_cnt_lrclk_en0_carry__0_n_7\,
      S(3) => \r_cnt_lrclk_en_reg_n_0_[8]\,
      S(2) => \r_cnt_lrclk_en_reg_n_0_[7]\,
      S(1) => \r_cnt_lrclk_en_reg_n_0_[6]\,
      S(0) => \r_cnt_lrclk_en_reg_n_0_[5]\
    );
\r_cnt_lrclk_en0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r_cnt_lrclk_en0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_r_cnt_lrclk_en0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \r_cnt_lrclk_en0_carry__1_n_2\,
      CO(0) => \r_cnt_lrclk_en0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_r_cnt_lrclk_en0_carry__1_O_UNCONNECTED\(3),
      O(2) => \r_cnt_lrclk_en0_carry__1_n_5\,
      O(1) => \r_cnt_lrclk_en0_carry__1_n_6\,
      O(0) => \r_cnt_lrclk_en0_carry__1_n_7\,
      S(3) => '0',
      S(2) => \r_cnt_lrclk_en_reg_n_0_[11]\,
      S(1) => \r_cnt_lrclk_en_reg_n_0_[10]\,
      S(0) => \r_cnt_lrclk_en_reg_n_0_[9]\
    );
\r_cnt_lrclk_en[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \r_cnt_lrclk_en_reg_n_0_[0]\,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[0]_i_1_n_0\
    );
\r_cnt_lrclk_en[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^r_enable\,
      I1 => when_I2S_l146,
      I2 => resetn,
      O => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en[10]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_cnt_lrclk_en0_carry__1_n_6\,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[10]_i_2_n_0\
    );
\r_cnt_lrclk_en[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F7"
    )
        port map (
      I0 => \^r_enable\,
      I1 => resetn,
      I2 => when_I2S_l146,
      O => \r_cnt_lrclk_en[11]_i_1_n_0\
    );
\r_cnt_lrclk_en[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_cnt_lrclk_en0_carry_n_7,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[1]_i_1_n_0\
    );
\r_cnt_lrclk_en[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_cnt_lrclk_en0_carry_n_6,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[2]_i_1_n_0\
    );
\r_cnt_lrclk_en[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_cnt_lrclk_en0_carry_n_5,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[3]_i_1_n_0\
    );
\r_cnt_lrclk_en[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => r_cnt_lrclk_en0_carry_n_4,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[4]_i_1_n_0\
    );
\r_cnt_lrclk_en[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_cnt_lrclk_en0_carry__0_n_7\,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[5]_i_1_n_0\
    );
\r_cnt_lrclk_en[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_cnt_lrclk_en0_carry__0_n_6\,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[6]_i_1_n_0\
    );
\r_cnt_lrclk_en[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \r_cnt_lrclk_en0_carry__0_n_5\,
      I1 => \^r_enable\,
      O => \r_cnt_lrclk_en[7]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[0]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[0]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[10]_i_2_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[10]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en0_carry__1_n_5\,
      Q => \r_cnt_lrclk_en_reg_n_0_[11]\,
      R => \r_cnt_lrclk_en[11]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[1]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[1]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[2]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[2]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[3]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[3]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[4]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[4]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[5]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[5]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[6]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[6]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en[7]_i_1_n_0\,
      Q => \r_cnt_lrclk_en_reg_n_0_[7]\,
      R => \r_cnt_lrclk_en[10]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en0_carry__0_n_4\,
      Q => \r_cnt_lrclk_en_reg_n_0_[8]\,
      R => \r_cnt_lrclk_en[11]_i_1_n_0\
    );
\r_cnt_lrclk_en_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_lrclk_en0_carry__1_n_7\,
      Q => \r_cnt_lrclk_en_reg_n_0_[9]\,
      R => \r_cnt_lrclk_en[11]_i_1_n_0\
    );
\r_cnt_mclk_en[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A2"
    )
        port map (
      I0 => resetn,
      I1 => r_cnt_mclk_en(2),
      I2 => r_cnt_mclk_en(1),
      I3 => r_cnt_mclk_en(0),
      O => \r_cnt_mclk_en[0]_i_1_n_0\
    );
\r_cnt_mclk_en[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => resetn,
      I1 => r_cnt_mclk_en(1),
      I2 => r_cnt_mclk_en(0),
      O => \r_cnt_mclk_en[1]_i_1_n_0\
    );
\r_cnt_mclk_en[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2880"
    )
        port map (
      I0 => resetn,
      I1 => r_cnt_mclk_en(2),
      I2 => r_cnt_mclk_en(1),
      I3 => r_cnt_mclk_en(0),
      O => \r_cnt_mclk_en[2]_i_1_n_0\
    );
\r_cnt_mclk_en_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_mclk_en[0]_i_1_n_0\,
      Q => r_cnt_mclk_en(0),
      R => '0'
    );
\r_cnt_mclk_en_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_mclk_en[1]_i_1_n_0\,
      Q => r_cnt_mclk_en(1),
      R => '0'
    );
\r_cnt_mclk_en_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_cnt_mclk_en[2]_i_1_n_0\,
      Q => r_cnt_mclk_en(2),
      R => '0'
    );
\r_data[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(0),
      I1 => r_frame_en,
      I2 => io_recdat,
      O => \r_data[0]_i_1_n_0\
    );
\r_data[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(10),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[9]\,
      O => \r_data[10]_i_1_n_0\
    );
\r_data[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(11),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[10]\,
      O => \r_data[11]_i_1_n_0\
    );
\r_data[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(12),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[11]\,
      O => \r_data[12]_i_1_n_0\
    );
\r_data[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(13),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[12]\,
      O => \r_data[13]_i_1_n_0\
    );
\r_data[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(14),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[13]\,
      O => \r_data[14]_i_1_n_0\
    );
\r_data[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(15),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[14]\,
      O => \r_data[15]_i_1_n_0\
    );
\r_data[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(16),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[15]\,
      O => \r_data[16]_i_1_n_0\
    );
\r_data[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(17),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[16]\,
      O => \r_data[17]_i_1_n_0\
    );
\r_data[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(18),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[17]\,
      O => \r_data[18]_i_1_n_0\
    );
\r_data[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(19),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[18]\,
      O => \r_data[19]_i_1_n_0\
    );
\r_data[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(1),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[0]\,
      O => \r_data[1]_i_1_n_0\
    );
\r_data[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(20),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[19]\,
      O => \r_data[20]_i_1_n_0\
    );
\r_data[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(21),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[20]\,
      O => \r_data[21]_i_1_n_0\
    );
\r_data[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(22),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[21]\,
      O => \r_data[22]_i_1_n_0\
    );
\r_data[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(23),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[22]\,
      O => \r_data[23]_i_1_n_0\
    );
\r_data[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(24),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[23]\,
      O => \r_data[24]_i_1_n_0\
    );
\r_data[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(25),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[24]\,
      O => \r_data[25]_i_1_n_0\
    );
\r_data[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(26),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[25]\,
      O => \r_data[26]_i_1_n_0\
    );
\r_data[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(27),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[26]\,
      O => \r_data[27]_i_1_n_0\
    );
\r_data[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(28),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[27]\,
      O => \r_data[28]_i_1_n_0\
    );
\r_data[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(29),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[28]\,
      O => \r_data[29]_i_1_n_0\
    );
\r_data[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(2),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[1]\,
      O => \r_data[2]_i_1_n_0\
    );
\r_data[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(30),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[29]\,
      O => \r_data[30]_i_1_n_0\
    );
\r_data[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(31),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[30]\,
      O => \r_data[31]_i_1_n_0\
    );
\r_data[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(0),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[31]\,
      O => \r_data[32]_i_1_n_0\
    );
\r_data[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(1),
      I1 => r_frame_en,
      I2 => p_1_in(0),
      O => \r_data[33]_i_1_n_0\
    );
\r_data[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(2),
      I1 => r_frame_en,
      I2 => p_1_in(1),
      O => \r_data[34]_i_1_n_0\
    );
\r_data[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(3),
      I1 => r_frame_en,
      I2 => p_1_in(2),
      O => \r_data[35]_i_1_n_0\
    );
\r_data[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(4),
      I1 => r_frame_en,
      I2 => p_1_in(3),
      O => \r_data[36]_i_1_n_0\
    );
\r_data[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(5),
      I1 => r_frame_en,
      I2 => p_1_in(4),
      O => \r_data[37]_i_1_n_0\
    );
\r_data[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(6),
      I1 => r_frame_en,
      I2 => p_1_in(5),
      O => \r_data[38]_i_1_n_0\
    );
\r_data[39]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(7),
      I1 => r_frame_en,
      I2 => p_1_in(6),
      O => \r_data[39]_i_1_n_0\
    );
\r_data[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(3),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[2]\,
      O => \r_data[3]_i_1_n_0\
    );
\r_data[40]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(8),
      I1 => r_frame_en,
      I2 => p_1_in(7),
      O => \r_data[40]_i_1_n_0\
    );
\r_data[41]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(9),
      I1 => r_frame_en,
      I2 => p_1_in(8),
      O => \r_data[41]_i_1_n_0\
    );
\r_data[42]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(10),
      I1 => r_frame_en,
      I2 => p_1_in(9),
      O => \r_data[42]_i_1_n_0\
    );
\r_data[43]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(11),
      I1 => r_frame_en,
      I2 => p_1_in(10),
      O => \r_data[43]_i_1_n_0\
    );
\r_data[44]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(12),
      I1 => r_frame_en,
      I2 => p_1_in(11),
      O => \r_data[44]_i_1_n_0\
    );
\r_data[45]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(13),
      I1 => r_frame_en,
      I2 => p_1_in(12),
      O => \r_data[45]_i_1_n_0\
    );
\r_data[46]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(14),
      I1 => r_frame_en,
      I2 => p_1_in(13),
      O => \r_data[46]_i_1_n_0\
    );
\r_data[47]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(15),
      I1 => r_frame_en,
      I2 => p_1_in(14),
      O => \r_data[47]_i_1_n_0\
    );
\r_data[48]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(16),
      I1 => r_frame_en,
      I2 => p_1_in(15),
      O => \r_data[48]_i_1_n_0\
    );
\r_data[49]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(17),
      I1 => r_frame_en,
      I2 => p_1_in(16),
      O => \r_data[49]_i_1_n_0\
    );
\r_data[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(4),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[3]\,
      O => \r_data[4]_i_1_n_0\
    );
\r_data[50]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(18),
      I1 => r_frame_en,
      I2 => p_1_in(17),
      O => \r_data[50]_i_1_n_0\
    );
\r_data[51]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(19),
      I1 => r_frame_en,
      I2 => p_1_in(18),
      O => \r_data[51]_i_1_n_0\
    );
\r_data[52]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(20),
      I1 => r_frame_en,
      I2 => p_1_in(19),
      O => \r_data[52]_i_1_n_0\
    );
\r_data[53]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(21),
      I1 => r_frame_en,
      I2 => p_1_in(20),
      O => \r_data[53]_i_1_n_0\
    );
\r_data[54]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(22),
      I1 => r_frame_en,
      I2 => p_1_in(21),
      O => \r_data[54]_i_1_n_0\
    );
\r_data[55]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(23),
      I1 => r_frame_en,
      I2 => p_1_in(22),
      O => \r_data[55]_i_1_n_0\
    );
\r_data[56]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(24),
      I1 => r_frame_en,
      I2 => p_1_in(23),
      O => \r_data[56]_i_1_n_0\
    );
\r_data[57]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(25),
      I1 => r_frame_en,
      I2 => p_1_in(24),
      O => \r_data[57]_i_1_n_0\
    );
\r_data[58]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(26),
      I1 => r_frame_en,
      I2 => p_1_in(25),
      O => \r_data[58]_i_1_n_0\
    );
\r_data[59]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(27),
      I1 => r_frame_en,
      I2 => p_1_in(26),
      O => \r_data[59]_i_1_n_0\
    );
\r_data[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(5),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[4]\,
      O => \r_data[5]_i_1_n_0\
    );
\r_data[60]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(28),
      I1 => r_frame_en,
      I2 => p_1_in(27),
      O => \r_data[60]_i_1_n_0\
    );
\r_data[61]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(29),
      I1 => r_frame_en,
      I2 => p_1_in(28),
      O => \r_data[61]_i_1_n_0\
    );
\r_data[62]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(30),
      I1 => r_frame_en,
      I2 => p_1_in(29),
      O => \r_data[62]_i_1_n_0\
    );
\r_data[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B0A0"
    )
        port map (
      I0 => r_frame_en,
      I1 => \^r_bclk_reg_0\,
      I2 => \^r_enable\,
      I3 => r_bclk_en,
      O => r_data
    );
\r_data[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(31),
      I1 => r_frame_en,
      I2 => p_1_in(30),
      O => \r_data[63]_i_2_n_0\
    );
\r_data[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(6),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[5]\,
      O => \r_data[6]_i_1_n_0\
    );
\r_data[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(7),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[6]\,
      O => \r_data[7]_i_1_n_0\
    );
\r_data[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(8),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[7]\,
      O => \r_data[8]_i_1_n_0\
    );
\r_data[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => r_buffer_in(9),
      I1 => r_frame_en,
      I2 => \r_data_reg_n_0_[8]\,
      O => \r_data[9]_i_1_n_0\
    );
\r_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[0]_i_1_n_0\,
      Q => \r_data_reg_n_0_[0]\,
      R => \^resetn_0\
    );
\r_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[10]_i_1_n_0\,
      Q => \r_data_reg_n_0_[10]\,
      R => \^resetn_0\
    );
\r_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[11]_i_1_n_0\,
      Q => \r_data_reg_n_0_[11]\,
      R => \^resetn_0\
    );
\r_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[12]_i_1_n_0\,
      Q => \r_data_reg_n_0_[12]\,
      R => \^resetn_0\
    );
\r_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[13]_i_1_n_0\,
      Q => \r_data_reg_n_0_[13]\,
      R => \^resetn_0\
    );
\r_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[14]_i_1_n_0\,
      Q => \r_data_reg_n_0_[14]\,
      R => \^resetn_0\
    );
\r_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[15]_i_1_n_0\,
      Q => \r_data_reg_n_0_[15]\,
      R => \^resetn_0\
    );
\r_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[16]_i_1_n_0\,
      Q => \r_data_reg_n_0_[16]\,
      R => \^resetn_0\
    );
\r_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[17]_i_1_n_0\,
      Q => \r_data_reg_n_0_[17]\,
      R => \^resetn_0\
    );
\r_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[18]_i_1_n_0\,
      Q => \r_data_reg_n_0_[18]\,
      R => \^resetn_0\
    );
\r_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[19]_i_1_n_0\,
      Q => \r_data_reg_n_0_[19]\,
      R => \^resetn_0\
    );
\r_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[1]_i_1_n_0\,
      Q => \r_data_reg_n_0_[1]\,
      R => \^resetn_0\
    );
\r_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[20]_i_1_n_0\,
      Q => \r_data_reg_n_0_[20]\,
      R => \^resetn_0\
    );
\r_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[21]_i_1_n_0\,
      Q => \r_data_reg_n_0_[21]\,
      R => \^resetn_0\
    );
\r_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[22]_i_1_n_0\,
      Q => \r_data_reg_n_0_[22]\,
      R => \^resetn_0\
    );
\r_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[23]_i_1_n_0\,
      Q => \r_data_reg_n_0_[23]\,
      R => \^resetn_0\
    );
\r_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[24]_i_1_n_0\,
      Q => \r_data_reg_n_0_[24]\,
      R => \^resetn_0\
    );
\r_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[25]_i_1_n_0\,
      Q => \r_data_reg_n_0_[25]\,
      R => \^resetn_0\
    );
\r_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[26]_i_1_n_0\,
      Q => \r_data_reg_n_0_[26]\,
      R => \^resetn_0\
    );
\r_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[27]_i_1_n_0\,
      Q => \r_data_reg_n_0_[27]\,
      R => \^resetn_0\
    );
\r_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[28]_i_1_n_0\,
      Q => \r_data_reg_n_0_[28]\,
      R => \^resetn_0\
    );
\r_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[29]_i_1_n_0\,
      Q => \r_data_reg_n_0_[29]\,
      R => \^resetn_0\
    );
\r_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[2]_i_1_n_0\,
      Q => \r_data_reg_n_0_[2]\,
      R => \^resetn_0\
    );
\r_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[30]_i_1_n_0\,
      Q => \r_data_reg_n_0_[30]\,
      R => \^resetn_0\
    );
\r_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[31]_i_1_n_0\,
      Q => \r_data_reg_n_0_[31]\,
      R => \^resetn_0\
    );
\r_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[32]_i_1_n_0\,
      Q => p_1_in(0),
      R => \^resetn_0\
    );
\r_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[33]_i_1_n_0\,
      Q => p_1_in(1),
      R => \^resetn_0\
    );
\r_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[34]_i_1_n_0\,
      Q => p_1_in(2),
      R => \^resetn_0\
    );
\r_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[35]_i_1_n_0\,
      Q => p_1_in(3),
      R => \^resetn_0\
    );
\r_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[36]_i_1_n_0\,
      Q => p_1_in(4),
      R => \^resetn_0\
    );
\r_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[37]_i_1_n_0\,
      Q => p_1_in(5),
      R => \^resetn_0\
    );
\r_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[38]_i_1_n_0\,
      Q => p_1_in(6),
      R => \^resetn_0\
    );
\r_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[39]_i_1_n_0\,
      Q => p_1_in(7),
      R => \^resetn_0\
    );
\r_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[3]_i_1_n_0\,
      Q => \r_data_reg_n_0_[3]\,
      R => \^resetn_0\
    );
\r_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[40]_i_1_n_0\,
      Q => p_1_in(8),
      R => \^resetn_0\
    );
\r_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[41]_i_1_n_0\,
      Q => p_1_in(9),
      R => \^resetn_0\
    );
\r_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[42]_i_1_n_0\,
      Q => p_1_in(10),
      R => \^resetn_0\
    );
\r_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[43]_i_1_n_0\,
      Q => p_1_in(11),
      R => \^resetn_0\
    );
\r_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[44]_i_1_n_0\,
      Q => p_1_in(12),
      R => \^resetn_0\
    );
\r_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[45]_i_1_n_0\,
      Q => p_1_in(13),
      R => \^resetn_0\
    );
\r_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[46]_i_1_n_0\,
      Q => p_1_in(14),
      R => \^resetn_0\
    );
\r_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[47]_i_1_n_0\,
      Q => p_1_in(15),
      R => \^resetn_0\
    );
\r_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[48]_i_1_n_0\,
      Q => p_1_in(16),
      R => \^resetn_0\
    );
\r_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[49]_i_1_n_0\,
      Q => p_1_in(17),
      R => \^resetn_0\
    );
\r_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[4]_i_1_n_0\,
      Q => \r_data_reg_n_0_[4]\,
      R => \^resetn_0\
    );
\r_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[50]_i_1_n_0\,
      Q => p_1_in(18),
      R => \^resetn_0\
    );
\r_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[51]_i_1_n_0\,
      Q => p_1_in(19),
      R => \^resetn_0\
    );
\r_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[52]_i_1_n_0\,
      Q => p_1_in(20),
      R => \^resetn_0\
    );
\r_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[53]_i_1_n_0\,
      Q => p_1_in(21),
      R => \^resetn_0\
    );
\r_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[54]_i_1_n_0\,
      Q => p_1_in(22),
      R => \^resetn_0\
    );
\r_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[55]_i_1_n_0\,
      Q => p_1_in(23),
      R => \^resetn_0\
    );
\r_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[56]_i_1_n_0\,
      Q => p_1_in(24),
      R => \^resetn_0\
    );
\r_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[57]_i_1_n_0\,
      Q => p_1_in(25),
      R => \^resetn_0\
    );
\r_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[58]_i_1_n_0\,
      Q => p_1_in(26),
      R => \^resetn_0\
    );
\r_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[59]_i_1_n_0\,
      Q => p_1_in(27),
      R => \^resetn_0\
    );
\r_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[5]_i_1_n_0\,
      Q => \r_data_reg_n_0_[5]\,
      R => \^resetn_0\
    );
\r_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[60]_i_1_n_0\,
      Q => p_1_in(28),
      R => \^resetn_0\
    );
\r_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[61]_i_1_n_0\,
      Q => p_1_in(29),
      R => \^resetn_0\
    );
\r_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[62]_i_1_n_0\,
      Q => p_1_in(30),
      R => \^resetn_0\
    );
\r_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[63]_i_2_n_0\,
      Q => p_1_in(31),
      R => \^resetn_0\
    );
\r_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[6]_i_1_n_0\,
      Q => \r_data_reg_n_0_[6]\,
      R => \^resetn_0\
    );
\r_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[7]_i_1_n_0\,
      Q => \r_data_reg_n_0_[7]\,
      R => \^resetn_0\
    );
\r_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[8]_i_1_n_0\,
      Q => \r_data_reg_n_0_[8]\,
      R => \^resetn_0\
    );
\r_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => r_data,
      D => \r_data[9]_i_1_n_0\,
      Q => \r_data_reg_n_0_[9]\,
      R => \^resetn_0\
    );
r_enable_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFFF00002000"
    )
        port map (
      I0 => io_enable,
      I1 => r_cnt_mclk_en(2),
      I2 => r_cnt_mclk_en(0),
      I3 => r_cnt_mclk_en(1),
      I4 => \^io_mclk\,
      I5 => \^r_enable\,
      O => r_enable_i_1_n_0
    );
r_enable_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_enable_i_1_n_0,
      Q => \^r_enable\,
      R => \^resetn_0\
    );
r_frame_en_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => r_frame_en_i_2_n_0,
      I1 => r_frame_en_i_3_n_0,
      I2 => \r_cnt_frame_en_reg_n_0_[5]\,
      I3 => \r_cnt_frame_en_reg_n_0_[9]\,
      I4 => \r_cnt_frame_en_reg_n_0_[0]\,
      O => when_I2S_l154
    );
r_frame_en_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => \r_cnt_frame_en_reg_n_0_[8]\,
      I1 => \r_cnt_frame_en_reg_n_0_[3]\,
      I2 => \r_cnt_frame_en_reg_n_0_[12]\,
      I3 => \r_cnt_frame_en_reg_n_0_[1]\,
      I4 => \r_cnt_frame_en_reg_n_0_[10]\,
      I5 => \r_cnt_frame_en_reg_n_0_[11]\,
      O => r_frame_en_i_2_n_0
    );
r_frame_en_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \r_cnt_frame_en_reg_n_0_[7]\,
      I1 => \r_cnt_frame_en_reg_n_0_[2]\,
      I2 => \r_cnt_frame_en_reg_n_0_[6]\,
      I3 => \r_cnt_frame_en_reg_n_0_[4]\,
      O => r_frame_en_i_3_n_0
    );
r_frame_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => when_I2S_l154,
      Q => r_frame_en,
      R => r_lrclk
    );
r_lrclk_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \r_cnt_lrclk_en_reg_n_0_[0]\,
      I1 => \r_cnt_lrclk_en_reg_n_0_[2]\,
      I2 => \r_cnt_lrclk_en_reg_n_0_[9]\,
      I3 => \r_cnt_lrclk_en_reg_n_0_[11]\,
      I4 => r_lrclk_en_i_2_n_0,
      I5 => r_lrclk_en_i_3_n_0,
      O => when_I2S_l146
    );
r_lrclk_en_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \r_cnt_lrclk_en_reg_n_0_[10]\,
      I1 => \r_cnt_lrclk_en_reg_n_0_[1]\,
      I2 => \r_cnt_lrclk_en_reg_n_0_[7]\,
      I3 => \r_cnt_lrclk_en_reg_n_0_[8]\,
      O => r_lrclk_en_i_2_n_0
    );
r_lrclk_en_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \r_cnt_lrclk_en_reg_n_0_[6]\,
      I1 => \r_cnt_lrclk_en_reg_n_0_[4]\,
      I2 => \r_cnt_lrclk_en_reg_n_0_[5]\,
      I3 => \r_cnt_lrclk_en_reg_n_0_[3]\,
      O => r_lrclk_en_i_3_n_0
    );
r_lrclk_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => when_I2S_l146,
      Q => r_lrclk_en,
      R => r_lrclk
    );
r_lrclk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => resetn,
      I1 => \^r_enable\,
      O => r_lrclk
    );
r_lrclk_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_lrclk_en,
      I1 => \^io_reclrc\,
      O => r_lrclk_i_2_n_0
    );
r_lrclk_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_lrclk_i_2_n_0,
      Q => \^io_reclrc\,
      R => r_lrclk
    );
r_mclk_en_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => r_cnt_mclk_en(2),
      I1 => r_cnt_mclk_en(1),
      I2 => r_cnt_mclk_en(0),
      O => when_I2S_l113
    );
r_mclk_en_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => when_I2S_l113,
      Q => r_mclk_en,
      R => \^resetn_0\
    );
r_mclk_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => r_mclk_en,
      I1 => \^io_mclk\,
      O => r_mclk_i_1_n_0
    );
r_mclk_reg: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => r_mclk_i_1_n_0,
      Q => \^io_mclk\,
      S => \^resetn_0\
    );
r_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => p_1_in(31),
      I1 => r_bclk_en,
      I2 => \^r_enable\,
      I3 => \^r_bclk_reg_0\,
      I4 => r_frame_en,
      I5 => \^io_pbdat\,
      O => r_out_i_1_n_0
    );
r_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_out_i_1_n_0,
      Q => \^io_pbdat\,
      R => \^resetn_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3_AudioDataMover is
  port (
    r_axi_wready_reg_0 : out STD_LOGIC;
    io_axi_b_valid : out STD_LOGIC;
    r_axi_awready_reg_0 : out STD_LOGIC;
    io_axi_b_payload_resp : out STD_LOGIC_VECTOR ( 0 to 0 );
    r_axi_rvalid_reg_0 : out STD_LOGIC;
    r_axi_arready_reg_0 : out STD_LOGIC;
    io_axi_r_payload_resp : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_axi_r_payload_last : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_enable_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_output_buffer_half : out STD_LOGIC;
    io_output_buffer_empty : out STD_LOGIC;
    io_axi_r_payload_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_input_buffer_half : out STD_LOGIC;
    \w_addr_reg[3]\ : out STD_LOGIC;
    io_input_buffer_full : out STD_LOGIC;
    clk_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_b_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_r_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    \w_addr_reg[0]\ : in STD_LOGIC;
    clk : in STD_LOGIC;
    io_axi_w_valid : in STD_LOGIC;
    io_axi_aw_valid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    r_enable : in STD_LOGIC;
    io_axi_r_ready : in STD_LOGIC;
    io_axi_ar_valid : in STD_LOGIC;
    io_enable : in STD_LOGIC;
    \r_addr_reg[0]\ : in STD_LOGIC;
    \w_addr_reg[0]_0\ : in STD_LOGIC;
    io_axi_aw_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_aw_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_aw_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_aw_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_ar_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ar_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_b_ready : in STD_LOGIC;
    io_axi_w_payload_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_aw_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_ar_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_station_overview_AudioStation_0_3_AudioDataMover : entity is "AudioDataMover";
end audio_station_overview_AudioStation_0_3_AudioDataMover;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3_AudioDataMover is
  signal axi_ar_req_valid : STD_LOGIC;
  signal axi_aw_req_valid : STD_LOGIC;
  signal axi_r_cnt0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axi_r_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_r_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_r_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_r_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_r_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_r_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_r_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_r_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_r_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_r_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal axi_w_cnt0 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \axi_w_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_w_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_w_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_w_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_w_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_w_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_w_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_w_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal buffer_in_n_32 : STD_LOGIC;
  signal buffer_out_n_3 : STD_LOGIC;
  signal \^io_axi_b_payload_resp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^io_axi_b_valid\ : STD_LOGIC;
  signal \io_axi_r_payload_data[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \^io_axi_r_payload_last\ : STD_LOGIC;
  signal \^io_axi_r_payload_resp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal r_axi_ar_req_valid : STD_LOGIC;
  signal r_axi_arready_i_1_n_0 : STD_LOGIC;
  signal r_axi_arready_i_2_n_0 : STD_LOGIC;
  signal \^r_axi_arready_reg_0\ : STD_LOGIC;
  signal r_axi_aw_req_valid : STD_LOGIC;
  signal r_axi_awready_i_1_n_0 : STD_LOGIC;
  signal \^r_axi_awready_reg_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_10_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_11_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_12_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_13_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_6_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_8_n_0\ : STD_LOGIC;
  signal \r_axi_bresp[1]_i_9_n_0\ : STD_LOGIC;
  signal r_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal r_axi_rlast_i_1_n_0 : STD_LOGIC;
  signal \r_axi_rresp[1]_i_10_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_11_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_12_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_13_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_1_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_2_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_3_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_4_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_5_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_6_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_7_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_8_n_0\ : STD_LOGIC;
  signal \r_axi_rresp[1]_i_9_n_0\ : STD_LOGIC;
  signal r_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^r_axi_rvalid_reg_0\ : STD_LOGIC;
  signal r_axi_wready : STD_LOGIC;
  signal r_axi_wready_i_1_n_0 : STD_LOGIC;
  signal \^r_axi_wready_reg_0\ : STD_LOGIC;
  signal when_AudioDataMover_l162 : STD_LOGIC;
  signal when_AudioDataMover_l176 : STD_LOGIC;
  signal when_AudioDataMover_l191 : STD_LOGIC;
  signal when_AudioDataMover_l205 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_r_cnt[0]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_r_cnt[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_r_cnt[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_r_cnt[3]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_r_cnt[4]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_w_cnt[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_w_cnt[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_w_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_w_cnt[3]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \io_axi_r_payload_data[31]_INST_0_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of r_axi_arready_i_1 : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r_axi_rresp[1]_i_6\ : label is "soft_lutpair13";
begin
  io_axi_b_payload_resp(0) <= \^io_axi_b_payload_resp\(0);
  io_axi_b_valid <= \^io_axi_b_valid\;
  io_axi_r_payload_last <= \^io_axi_r_payload_last\;
  io_axi_r_payload_resp(0) <= \^io_axi_r_payload_resp\(0);
  r_axi_arready_reg_0 <= \^r_axi_arready_reg_0\;
  r_axi_awready_reg_0 <= \^r_axi_awready_reg_0\;
  r_axi_rvalid_reg_0 <= \^r_axi_rvalid_reg_0\;
  r_axi_wready_reg_0 <= \^r_axi_wready_reg_0\;
\axi_r_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[0]\,
      O => axi_r_cnt0(0)
    );
\axi_r_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[0]\,
      I1 => \axi_r_cnt_reg_n_0_[1]\,
      O => \axi_r_cnt[1]_i_1_n_0\
    );
\axi_r_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[2]\,
      I1 => \axi_r_cnt_reg_n_0_[1]\,
      I2 => \axi_r_cnt_reg_n_0_[0]\,
      O => \axi_r_cnt[2]_i_1_n_0\
    );
\axi_r_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7000FFFF"
    )
        port map (
      I0 => io_axi_r_ready,
      I1 => \^r_axi_rvalid_reg_0\,
      I2 => io_axi_ar_valid,
      I3 => \^r_axi_arready_reg_0\,
      I4 => resetn,
      O => \axi_r_cnt[3]_i_1_n_0\
    );
\axi_r_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => io_axi_r_ready,
      I1 => \^r_axi_rvalid_reg_0\,
      O => when_AudioDataMover_l205
    );
\axi_r_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[3]\,
      I1 => \axi_r_cnt_reg_n_0_[0]\,
      I2 => \axi_r_cnt_reg_n_0_[1]\,
      I3 => \axi_r_cnt_reg_n_0_[2]\,
      O => axi_r_cnt0(3)
    );
\axi_r_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFEFF01FF0100"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[2]\,
      I1 => \axi_r_cnt[4]_i_2_n_0\,
      I2 => \axi_r_cnt_reg_n_0_[3]\,
      I3 => when_AudioDataMover_l205,
      I4 => when_AudioDataMover_l191,
      I5 => \axi_r_cnt_reg_n_0_[4]\,
      O => \axi_r_cnt[4]_i_1_n_0\
    );
\axi_r_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[0]\,
      I1 => \axi_r_cnt_reg_n_0_[1]\,
      O => \axi_r_cnt[4]_i_2_n_0\
    );
\axi_r_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l205,
      D => axi_r_cnt0(0),
      Q => \axi_r_cnt_reg_n_0_[0]\,
      R => \axi_r_cnt[3]_i_1_n_0\
    );
\axi_r_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l205,
      D => \axi_r_cnt[1]_i_1_n_0\,
      Q => \axi_r_cnt_reg_n_0_[1]\,
      R => \axi_r_cnt[3]_i_1_n_0\
    );
\axi_r_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l205,
      D => \axi_r_cnt[2]_i_1_n_0\,
      Q => \axi_r_cnt_reg_n_0_[2]\,
      R => \axi_r_cnt[3]_i_1_n_0\
    );
\axi_r_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l205,
      D => axi_r_cnt0(3),
      Q => \axi_r_cnt_reg_n_0_[3]\,
      R => \axi_r_cnt[3]_i_1_n_0\
    );
\axi_r_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_r_cnt[4]_i_1_n_0\,
      Q => \axi_r_cnt_reg_n_0_[4]\,
      R => \w_addr_reg[0]\
    );
\axi_w_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \axi_w_cnt_reg_n_0_[0]\,
      O => axi_w_cnt0(0)
    );
\axi_w_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \axi_w_cnt_reg_n_0_[1]\,
      I1 => \axi_w_cnt_reg_n_0_[0]\,
      O => \axi_w_cnt[1]_i_1_n_0\
    );
\axi_w_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => \axi_w_cnt_reg_n_0_[1]\,
      I1 => \axi_w_cnt_reg_n_0_[0]\,
      I2 => \axi_w_cnt_reg_n_0_[2]\,
      O => axi_w_cnt0(2)
    );
\axi_w_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7000FFFF"
    )
        port map (
      I0 => \^r_axi_wready_reg_0\,
      I1 => io_axi_w_valid,
      I2 => io_axi_aw_valid,
      I3 => \^r_axi_awready_reg_0\,
      I4 => resetn,
      O => \axi_w_cnt[3]_i_1_n_0\
    );
\axi_w_cnt[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^r_axi_wready_reg_0\,
      I1 => io_axi_w_valid,
      O => when_AudioDataMover_l176
    );
\axi_w_cnt[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE01"
    )
        port map (
      I0 => \axi_w_cnt_reg_n_0_[2]\,
      I1 => \axi_w_cnt_reg_n_0_[0]\,
      I2 => \axi_w_cnt_reg_n_0_[1]\,
      I3 => \axi_w_cnt_reg_n_0_[3]\,
      O => axi_w_cnt0(3)
    );
\axi_w_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBFBF7F404040"
    )
        port map (
      I0 => buffer_out_n_3,
      I1 => \^r_axi_wready_reg_0\,
      I2 => io_axi_w_valid,
      I3 => io_axi_aw_valid,
      I4 => \^r_axi_awready_reg_0\,
      I5 => \axi_w_cnt_reg_n_0_[4]\,
      O => \axi_w_cnt[4]_i_1_n_0\
    );
\axi_w_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l176,
      D => axi_w_cnt0(0),
      Q => \axi_w_cnt_reg_n_0_[0]\,
      R => \axi_w_cnt[3]_i_1_n_0\
    );
\axi_w_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l176,
      D => \axi_w_cnt[1]_i_1_n_0\,
      Q => \axi_w_cnt_reg_n_0_[1]\,
      R => \axi_w_cnt[3]_i_1_n_0\
    );
\axi_w_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l176,
      D => axi_w_cnt0(2),
      Q => \axi_w_cnt_reg_n_0_[2]\,
      R => \axi_w_cnt[3]_i_1_n_0\
    );
\axi_w_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l176,
      D => axi_w_cnt0(3),
      Q => \axi_w_cnt_reg_n_0_[3]\,
      R => \axi_w_cnt[3]_i_1_n_0\
    );
\axi_w_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_w_cnt[4]_i_1_n_0\,
      Q => \axi_w_cnt_reg_n_0_[4]\,
      R => \w_addr_reg[0]\
    );
buffer_in: entity work.audio_station_overview_AudioStation_0_3_FIFO
     port map (
      E(0) => \w_addr_reg[3]\,
      Q(3) => \axi_r_cnt_reg_n_0_[3]\,
      Q(2) => \axi_r_cnt_reg_n_0_[2]\,
      Q(1) => \axi_r_cnt_reg_n_0_[1]\,
      Q(0) => \axi_r_cnt_reg_n_0_[0]\,
      \axi_r_cnt_reg[2]\ => buffer_in_n_32,
      clk => clk,
      io_axi_r_payload_data(31 downto 0) => io_axi_r_payload_data(31 downto 0),
      \io_axi_r_payload_data[31]_0\ => \^r_axi_rvalid_reg_0\,
      \io_axi_r_payload_data[31]_1\(31 downto 0) => Q(31 downto 0),
      io_axi_r_payload_data_31_sp_1 => \io_axi_r_payload_data[31]_INST_0_i_1_n_0\,
      io_axi_r_ready => io_axi_r_ready,
      io_input_buffer_full => io_input_buffer_full,
      io_input_buffer_half => io_input_buffer_half,
      r_axi_ar_req_valid => r_axi_ar_req_valid,
      r_axi_rlast_reg => \axi_r_cnt_reg_n_0_[4]\,
      \w_addr_reg[0]_0\ => \w_addr_reg[0]_0\,
      \w_addr_reg[0]_1\ => \w_addr_reg[0]\
    );
buffer_out: entity work.audio_station_overview_AudioStation_0_3_FIFO_0
     port map (
      E(0) => E(0),
      Q(3) => \axi_w_cnt_reg_n_0_[3]\,
      Q(2) => \axi_w_cnt_reg_n_0_[2]\,
      Q(1) => \axi_w_cnt_reg_n_0_[1]\,
      Q(0) => \axi_w_cnt_reg_n_0_[0]\,
      \axi_w_cnt_reg[3]\ => buffer_out_n_3,
      clk => clk,
      clk_0(31 downto 0) => clk_0(31 downto 0),
      io_axi_w_payload_data(31 downto 0) => io_axi_w_payload_data(31 downto 0),
      io_axi_w_valid => io_axi_w_valid,
      io_enable => io_enable,
      io_enable_0(0) => io_enable_0(0),
      io_output_buffer_empty => io_output_buffer_empty,
      io_output_buffer_half => io_output_buffer_half,
      \r_addr_reg[0]_0\ => \r_addr_reg[0]\,
      r_axi_aw_req_valid => r_axi_aw_req_valid,
      r_enable => r_enable,
      \w_addr_reg[0]_0\ => \w_addr_reg[0]\,
      \w_addr_reg[4]_0\ => \^r_axi_wready_reg_0\,
      \w_addr_reg[4]_1\ => \axi_w_cnt_reg_n_0_[4]\
    );
\io_axi_r_payload_data[31]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[1]\,
      I1 => \axi_r_cnt_reg_n_0_[0]\,
      I2 => \axi_r_cnt_reg_n_0_[3]\,
      I3 => \axi_r_cnt_reg_n_0_[4]\,
      I4 => \axi_r_cnt_reg_n_0_[2]\,
      O => \io_axi_r_payload_data[31]_INST_0_i_1_n_0\
    );
r_axi_ar_req_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \r_axi_rresp[1]_i_2_n_0\,
      I1 => \r_axi_rresp[1]_i_3_n_0\,
      I2 => \r_axi_rresp[1]_i_4_n_0\,
      I3 => \r_axi_rresp[1]_i_5_n_0\,
      O => axi_ar_req_valid
    );
r_axi_ar_req_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => axi_ar_req_valid,
      Q => r_axi_ar_req_valid,
      R => \w_addr_reg[0]\
    );
r_axi_arready_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F2"
    )
        port map (
      I0 => \^r_axi_arready_reg_0\,
      I1 => io_axi_ar_valid,
      I2 => r_axi_arready_i_2_n_0,
      O => r_axi_arready_i_1_n_0
    );
r_axi_arready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004000FFFFFFFF"
    )
        port map (
      I0 => \axi_r_cnt_reg_n_0_[1]\,
      I1 => \axi_r_cnt_reg_n_0_[0]\,
      I2 => \^r_axi_rvalid_reg_0\,
      I3 => io_axi_r_ready,
      I4 => buffer_in_n_32,
      I5 => resetn,
      O => r_axi_arready_i_2_n_0
    );
r_axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_arready_i_1_n_0,
      Q => \^r_axi_arready_reg_0\,
      R => '0'
    );
r_axi_aw_req_valid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \r_axi_bresp[1]_i_2_n_0\,
      I1 => \r_axi_bresp[1]_i_3_n_0\,
      I2 => \r_axi_bresp[1]_i_4_n_0\,
      I3 => \r_axi_bresp[1]_i_5_n_0\,
      O => axi_aw_req_valid
    );
r_axi_aw_req_valid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => axi_aw_req_valid,
      Q => r_axi_aw_req_valid,
      R => \w_addr_reg[0]\
    );
r_axi_awready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF2F2F2F"
    )
        port map (
      I0 => \^r_axi_awready_reg_0\,
      I1 => io_axi_aw_valid,
      I2 => resetn,
      I3 => io_axi_b_ready,
      I4 => \^io_axi_b_valid\,
      O => r_axi_awready_i_1_n_0
    );
r_axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_awready_i_1_n_0,
      Q => \^r_axi_awready_reg_0\,
      R => '0'
    );
\r_axi_bid[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => io_axi_aw_valid,
      I1 => \^r_axi_awready_reg_0\,
      O => when_AudioDataMover_l162
    );
\r_axi_bid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(0),
      Q => io_axi_b_payload_id(0),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(10),
      Q => io_axi_b_payload_id(10),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(11),
      Q => io_axi_b_payload_id(11),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(1),
      Q => io_axi_b_payload_id(1),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(2),
      Q => io_axi_b_payload_id(2),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(3),
      Q => io_axi_b_payload_id(3),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(4),
      Q => io_axi_b_payload_id(4),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(5),
      Q => io_axi_b_payload_id(5),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(6),
      Q => io_axi_b_payload_id(6),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(7),
      Q => io_axi_b_payload_id(7),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(8),
      Q => io_axi_b_payload_id(8),
      R => \w_addr_reg[0]\
    );
\r_axi_bid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l162,
      D => io_axi_aw_payload_id(9),
      Q => io_axi_b_payload_id(9),
      R => \w_addr_reg[0]\
    );
\r_axi_bresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFEFFFF"
    )
        port map (
      I0 => \r_axi_bresp[1]_i_2_n_0\,
      I1 => \r_axi_bresp[1]_i_3_n_0\,
      I2 => \r_axi_bresp[1]_i_4_n_0\,
      I3 => \r_axi_bresp[1]_i_5_n_0\,
      I4 => when_AudioDataMover_l162,
      I5 => \r_axi_bresp[1]_i_6_n_0\,
      O => \r_axi_bresp[1]_i_1_n_0\
    );
\r_axi_bresp[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => io_axi_aw_payload_addr(30),
      I1 => io_axi_aw_payload_len(3),
      I2 => io_axi_aw_payload_addr(11),
      I3 => io_axi_aw_payload_addr(17),
      I4 => io_axi_aw_payload_addr(13),
      I5 => io_axi_aw_payload_addr(21),
      O => \r_axi_bresp[1]_i_10_n_0\
    );
\r_axi_bresp[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => io_axi_aw_payload_addr(22),
      I1 => io_axi_aw_payload_addr(28),
      I2 => io_axi_aw_payload_addr(4),
      I3 => io_axi_aw_payload_addr(6),
      O => \r_axi_bresp[1]_i_11_n_0\
    );
\r_axi_bresp[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_aw_payload_addr(14),
      I1 => io_axi_aw_payload_addr(12),
      I2 => io_axi_aw_payload_addr(8),
      I3 => io_axi_aw_payload_size(2),
      O => \r_axi_bresp[1]_i_12_n_0\
    );
\r_axi_bresp[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_aw_payload_addr(3),
      I1 => io_axi_aw_payload_addr(7),
      I2 => io_axi_aw_payload_len(5),
      I3 => io_axi_aw_payload_len(7),
      O => \r_axi_bresp[1]_i_13_n_0\
    );
\r_axi_bresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
        port map (
      I0 => \r_axi_bresp[1]_i_7_n_0\,
      I1 => \r_axi_bresp[1]_i_8_n_0\,
      I2 => \r_axi_bresp[1]_i_9_n_0\,
      I3 => io_axi_aw_payload_addr(1),
      I4 => io_axi_aw_payload_len(1),
      I5 => io_axi_aw_payload_burst(0),
      O => \r_axi_bresp[1]_i_2_n_0\
    );
\r_axi_bresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \r_axi_bresp[1]_i_10_n_0\,
      I1 => \r_axi_bresp[1]_i_11_n_0\,
      I2 => io_axi_aw_payload_addr(31),
      I3 => io_axi_aw_payload_addr(18),
      I4 => io_axi_aw_payload_len(4),
      I5 => io_axi_aw_payload_addr(16),
      O => \r_axi_bresp[1]_i_3_n_0\
    );
\r_axi_bresp[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => io_axi_aw_payload_burst(1),
      I1 => io_axi_aw_payload_addr(25),
      I2 => io_axi_aw_payload_addr(2),
      I3 => io_axi_aw_payload_addr(29),
      I4 => \r_axi_bresp[1]_i_12_n_0\,
      O => \r_axi_bresp[1]_i_4_n_0\
    );
\r_axi_bresp[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => io_axi_aw_payload_addr(20),
      I1 => io_axi_aw_payload_size(1),
      I2 => io_axi_aw_payload_addr(27),
      I3 => io_axi_aw_payload_len(0),
      I4 => \r_axi_bresp[1]_i_13_n_0\,
      O => \r_axi_bresp[1]_i_5_n_0\
    );
\r_axi_bresp[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5777"
    )
        port map (
      I0 => resetn,
      I1 => \^io_axi_b_payload_resp\(0),
      I2 => io_axi_aw_valid,
      I3 => \^r_axi_awready_reg_0\,
      O => \r_axi_bresp[1]_i_6_n_0\
    );
\r_axi_bresp[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => io_axi_aw_payload_addr(23),
      I1 => io_axi_aw_payload_addr(15),
      I2 => io_axi_aw_payload_len(6),
      I3 => io_axi_aw_payload_addr(10),
      O => \r_axi_bresp[1]_i_7_n_0\
    );
\r_axi_bresp[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => io_axi_aw_payload_addr(24),
      I1 => io_axi_aw_payload_len(2),
      I2 => io_axi_aw_payload_addr(0),
      I3 => io_axi_aw_payload_addr(19),
      O => \r_axi_bresp[1]_i_8_n_0\
    );
\r_axi_bresp[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_aw_payload_addr(5),
      I1 => io_axi_aw_payload_size(0),
      I2 => io_axi_aw_payload_addr(26),
      I3 => io_axi_aw_payload_addr(9),
      O => \r_axi_bresp[1]_i_9_n_0\
    );
\r_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_axi_bresp[1]_i_1_n_0\,
      Q => \^io_axi_b_payload_resp\(0),
      R => '0'
    );
r_axi_bvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0C88"
    )
        port map (
      I0 => r_axi_wready,
      I1 => resetn,
      I2 => io_axi_b_ready,
      I3 => \^io_axi_b_valid\,
      O => r_axi_bvalid_i_1_n_0
    );
r_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_bvalid_i_1_n_0,
      Q => \^io_axi_b_valid\,
      R => '0'
    );
\r_axi_rid[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => io_axi_ar_valid,
      I1 => \^r_axi_arready_reg_0\,
      O => when_AudioDataMover_l191
    );
\r_axi_rid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(0),
      Q => io_axi_r_payload_id(0),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(10),
      Q => io_axi_r_payload_id(10),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(11),
      Q => io_axi_r_payload_id(11),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(1),
      Q => io_axi_r_payload_id(1),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(2),
      Q => io_axi_r_payload_id(2),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(3),
      Q => io_axi_r_payload_id(3),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(4),
      Q => io_axi_r_payload_id(4),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(5),
      Q => io_axi_r_payload_id(5),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(6),
      Q => io_axi_r_payload_id(6),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(7),
      Q => io_axi_r_payload_id(7),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(8),
      Q => io_axi_r_payload_id(8),
      R => \w_addr_reg[0]\
    );
\r_axi_rid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => when_AudioDataMover_l191,
      D => io_axi_ar_payload_id(9),
      Q => io_axi_r_payload_id(9),
      R => \w_addr_reg[0]\
    );
r_axi_rlast_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFF00004000"
    )
        port map (
      I0 => buffer_in_n_32,
      I1 => io_axi_r_ready,
      I2 => \^r_axi_rvalid_reg_0\,
      I3 => \axi_r_cnt_reg_n_0_[1]\,
      I4 => \axi_r_cnt_reg_n_0_[0]\,
      I5 => \^io_axi_r_payload_last\,
      O => r_axi_rlast_i_1_n_0
    );
r_axi_rlast_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_rlast_i_1_n_0,
      Q => \^io_axi_r_payload_last\,
      R => \w_addr_reg[0]\
    );
\r_axi_rresp[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFDFFFF"
    )
        port map (
      I0 => \r_axi_rresp[1]_i_2_n_0\,
      I1 => \r_axi_rresp[1]_i_3_n_0\,
      I2 => \r_axi_rresp[1]_i_4_n_0\,
      I3 => \r_axi_rresp[1]_i_5_n_0\,
      I4 => when_AudioDataMover_l191,
      I5 => \r_axi_rresp[1]_i_6_n_0\,
      O => \r_axi_rresp[1]_i_1_n_0\
    );
\r_axi_rresp[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
        port map (
      I0 => io_axi_ar_payload_addr(30),
      I1 => io_axi_ar_payload_size(0),
      I2 => io_axi_ar_payload_addr(11),
      I3 => io_axi_ar_payload_addr(17),
      I4 => io_axi_ar_payload_addr(13),
      I5 => io_axi_ar_payload_addr(21),
      O => \r_axi_rresp[1]_i_10_n_0\
    );
\r_axi_rresp[1]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_ar_payload_addr(31),
      I1 => io_axi_ar_payload_addr(28),
      I2 => io_axi_ar_payload_addr(16),
      I3 => io_axi_ar_payload_addr(12),
      O => \r_axi_rresp[1]_i_11_n_0\
    );
\r_axi_rresp[1]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_ar_payload_addr(29),
      I1 => io_axi_ar_payload_addr(2),
      I2 => io_axi_ar_payload_len(4),
      I3 => io_axi_ar_payload_addr(3),
      O => \r_axi_rresp[1]_i_12_n_0\
    );
\r_axi_rresp[1]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => io_axi_ar_payload_addr(4),
      I1 => io_axi_ar_payload_addr(18),
      I2 => io_axi_ar_payload_len(3),
      I3 => io_axi_ar_payload_len(5),
      O => \r_axi_rresp[1]_i_13_n_0\
    );
\r_axi_rresp[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000040000000000"
    )
        port map (
      I0 => \r_axi_rresp[1]_i_7_n_0\,
      I1 => \r_axi_rresp[1]_i_8_n_0\,
      I2 => \r_axi_rresp[1]_i_9_n_0\,
      I3 => io_axi_ar_payload_addr(24),
      I4 => io_axi_ar_payload_len(6),
      I5 => io_axi_ar_payload_len(0),
      O => \r_axi_rresp[1]_i_2_n_0\
    );
\r_axi_rresp[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFEF"
    )
        port map (
      I0 => \r_axi_rresp[1]_i_10_n_0\,
      I1 => \r_axi_rresp[1]_i_11_n_0\,
      I2 => io_axi_ar_payload_addr(25),
      I3 => io_axi_ar_payload_burst(0),
      I4 => io_axi_ar_payload_addr(14),
      I5 => io_axi_ar_payload_addr(8),
      O => \r_axi_rresp[1]_i_3_n_0\
    );
\r_axi_rresp[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => io_axi_ar_payload_addr(6),
      I1 => io_axi_ar_payload_addr(22),
      I2 => io_axi_ar_payload_addr(7),
      I3 => io_axi_ar_payload_len(2),
      I4 => \r_axi_rresp[1]_i_12_n_0\,
      O => \r_axi_rresp[1]_i_4_n_0\
    );
\r_axi_rresp[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => io_axi_ar_payload_addr(20),
      I1 => io_axi_ar_payload_len(1),
      I2 => io_axi_ar_payload_burst(1),
      I3 => io_axi_ar_payload_addr(27),
      I4 => \r_axi_rresp[1]_i_13_n_0\,
      O => \r_axi_rresp[1]_i_5_n_0\
    );
\r_axi_rresp[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5777"
    )
        port map (
      I0 => resetn,
      I1 => \^io_axi_r_payload_resp\(0),
      I2 => io_axi_ar_valid,
      I3 => \^r_axi_arready_reg_0\,
      O => \r_axi_rresp[1]_i_6_n_0\
    );
\r_axi_rresp[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => io_axi_ar_payload_addr(23),
      I1 => io_axi_ar_payload_addr(15),
      I2 => io_axi_ar_payload_addr(1),
      I3 => io_axi_ar_payload_addr(10),
      O => \r_axi_rresp[1]_i_7_n_0\
    );
\r_axi_rresp[1]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => io_axi_ar_payload_addr(19),
      I1 => io_axi_ar_payload_size(1),
      I2 => io_axi_ar_payload_len(7),
      I3 => io_axi_ar_payload_size(2),
      O => \r_axi_rresp[1]_i_8_n_0\
    );
\r_axi_rresp[1]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => io_axi_ar_payload_addr(5),
      I1 => io_axi_ar_payload_addr(0),
      I2 => io_axi_ar_payload_addr(26),
      I3 => io_axi_ar_payload_addr(9),
      O => \r_axi_rresp[1]_i_9_n_0\
    );
\r_axi_rresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \r_axi_rresp[1]_i_1_n_0\,
      Q => \^io_axi_r_payload_resp\(0),
      R => '0'
    );
r_axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F08"
    )
        port map (
      I0 => \^r_axi_arready_reg_0\,
      I1 => io_axi_ar_valid,
      I2 => r_axi_arready_i_2_n_0,
      I3 => \^r_axi_rvalid_reg_0\,
      O => r_axi_rvalid_i_1_n_0
    );
r_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_rvalid_i_1_n_0,
      Q => \^r_axi_rvalid_reg_0\,
      R => '0'
    );
r_axi_wready_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F800"
    )
        port map (
      I0 => \^r_axi_awready_reg_0\,
      I1 => io_axi_aw_valid,
      I2 => \^r_axi_wready_reg_0\,
      I3 => resetn,
      I4 => r_axi_wready,
      O => r_axi_wready_i_1_n_0
    );
r_axi_wready_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => \axi_w_cnt_reg_n_0_[1]\,
      I1 => \axi_w_cnt_reg_n_0_[0]\,
      I2 => \axi_w_cnt_reg_n_0_[2]\,
      I3 => \axi_w_cnt_reg_n_0_[4]\,
      I4 => \axi_w_cnt_reg_n_0_[3]\,
      I5 => when_AudioDataMover_l176,
      O => r_axi_wready
    );
r_axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => r_axi_wready_i_1_n_0,
      Q => \^r_axi_wready_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3_AudioStation is
  port (
    r_axi_wready_reg : out STD_LOGIC;
    r_axi_awready_reg : out STD_LOGIC;
    io_output_buffer_half : out STD_LOGIC;
    r_axi_rvalid_reg : out STD_LOGIC;
    r_axi_arready_reg : out STD_LOGIC;
    io_axi_b_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_r_payload_id : out STD_LOGIC_VECTOR ( 11 downto 0 );
    r_bclk_reg : out STD_LOGIC;
    io_output_buffer_empty : out STD_LOGIC;
    io_axi_r_payload_data : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_input_buffer_half : out STD_LOGIC;
    io_input_buffer_full : out STD_LOGIC;
    io_axi_b_payload_resp : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_axi_r_payload_resp : out STD_LOGIC_VECTOR ( 0 to 0 );
    io_mclk : out STD_LOGIC;
    io_axi_r_payload_last : out STD_LOGIC;
    io_pbdat : out STD_LOGIC;
    io_axi_b_valid : out STD_LOGIC;
    io_reclrc : out STD_LOGIC;
    io_axi_w_valid : in STD_LOGIC;
    io_axi_aw_valid : in STD_LOGIC;
    resetn : in STD_LOGIC;
    io_axi_r_ready : in STD_LOGIC;
    io_axi_ar_valid : in STD_LOGIC;
    clk : in STD_LOGIC;
    io_axi_w_payload_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_aw_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 );
    io_axi_ar_payload_id : in STD_LOGIC_VECTOR ( 11 downto 0 );
    io_enable : in STD_LOGIC;
    io_axi_aw_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_aw_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_aw_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_aw_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_payload_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_axi_ar_payload_burst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ar_payload_size : in STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ar_payload_len : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_recdat : in STD_LOGIC;
    io_axi_b_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of audio_station_overview_AudioStation_0_3_AudioStation : entity is "AudioStation";
end audio_station_overview_AudioStation_0_3_AudioStation;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3_AudioStation is
  signal audio_data_mover_n_45 : STD_LOGIC;
  signal audio_data_mover_n_8 : STD_LOGIC;
  signal \buffer_out/when_FIFO_l65\ : STD_LOGIC;
  signal i2s_1_n_0 : STD_LOGIC;
  signal i2s_1_n_3 : STD_LOGIC;
  signal i2s_1_n_6 : STD_LOGIC;
  signal io_s_data_in_payload : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_buffer_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal r_enable : STD_LOGIC;
begin
audio_data_mover: entity work.audio_station_overview_AudioStation_0_3_AudioDataMover
     port map (
      E(0) => audio_data_mover_n_8,
      Q(31 downto 0) => r_buffer_out(31 downto 0),
      clk => clk,
      clk_0(31 downto 0) => io_s_data_in_payload(31 downto 0),
      io_axi_ar_payload_addr(31 downto 0) => io_axi_ar_payload_addr(31 downto 0),
      io_axi_ar_payload_burst(1 downto 0) => io_axi_ar_payload_burst(1 downto 0),
      io_axi_ar_payload_id(11 downto 0) => io_axi_ar_payload_id(11 downto 0),
      io_axi_ar_payload_len(7 downto 0) => io_axi_ar_payload_len(7 downto 0),
      io_axi_ar_payload_size(2 downto 0) => io_axi_ar_payload_size(2 downto 0),
      io_axi_ar_valid => io_axi_ar_valid,
      io_axi_aw_payload_addr(31 downto 0) => io_axi_aw_payload_addr(31 downto 0),
      io_axi_aw_payload_burst(1 downto 0) => io_axi_aw_payload_burst(1 downto 0),
      io_axi_aw_payload_id(11 downto 0) => io_axi_aw_payload_id(11 downto 0),
      io_axi_aw_payload_len(7 downto 0) => io_axi_aw_payload_len(7 downto 0),
      io_axi_aw_payload_size(2 downto 0) => io_axi_aw_payload_size(2 downto 0),
      io_axi_aw_valid => io_axi_aw_valid,
      io_axi_b_payload_id(11 downto 0) => io_axi_b_payload_id(11 downto 0),
      io_axi_b_payload_resp(0) => io_axi_b_payload_resp(0),
      io_axi_b_ready => io_axi_b_ready,
      io_axi_b_valid => io_axi_b_valid,
      io_axi_r_payload_data(31 downto 0) => io_axi_r_payload_data(31 downto 0),
      io_axi_r_payload_id(11 downto 0) => io_axi_r_payload_id(11 downto 0),
      io_axi_r_payload_last => io_axi_r_payload_last,
      io_axi_r_payload_resp(0) => io_axi_r_payload_resp(0),
      io_axi_r_ready => io_axi_r_ready,
      io_axi_w_payload_data(31 downto 0) => io_axi_w_payload_data(31 downto 0),
      io_axi_w_valid => io_axi_w_valid,
      io_enable => io_enable,
      io_enable_0(0) => \buffer_out/when_FIFO_l65\,
      io_input_buffer_full => io_input_buffer_full,
      io_input_buffer_half => io_input_buffer_half,
      io_output_buffer_empty => io_output_buffer_empty,
      io_output_buffer_half => io_output_buffer_half,
      \r_addr_reg[0]\ => i2s_1_n_3,
      r_axi_arready_reg_0 => r_axi_arready_reg,
      r_axi_awready_reg_0 => r_axi_awready_reg,
      r_axi_rvalid_reg_0 => r_axi_rvalid_reg,
      r_axi_wready_reg_0 => r_axi_wready_reg,
      r_enable => r_enable,
      resetn => resetn,
      \w_addr_reg[0]\ => i2s_1_n_0,
      \w_addr_reg[0]_0\ => i2s_1_n_6,
      \w_addr_reg[3]\ => audio_data_mover_n_45
    );
i2s_1: entity work.audio_station_overview_AudioStation_0_3_I2S
     port map (
      D(31 downto 0) => io_s_data_in_payload(31 downto 0),
      E(0) => audio_data_mover_n_8,
      Q(31 downto 0) => r_buffer_out(31 downto 0),
      clk => clk,
      io_enable => io_enable,
      io_enable_0 => i2s_1_n_6,
      io_mclk => io_mclk,
      io_pbdat => io_pbdat,
      io_recdat => io_recdat,
      io_reclrc => io_reclrc,
      r_bclk_reg_0 => r_bclk_reg,
      r_buffer_in_full_reg_0 => i2s_1_n_3,
      r_buffer_in_full_reg_1(0) => \buffer_out/when_FIFO_l65\,
      r_buffer_out_full_reg_0 => audio_data_mover_n_45,
      r_enable => r_enable,
      resetn => resetn,
      resetn_0 => i2s_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity audio_station_overview_AudioStation_0_3 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of audio_station_overview_AudioStation_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of audio_station_overview_AudioStation_0_3 : entity is "audio_station_overview_AudioStation_0_3,AudioStation,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of audio_station_overview_AudioStation_0_3 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of audio_station_overview_AudioStation_0_3 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of audio_station_overview_AudioStation_0_3 : entity is "AudioStation,Vivado 2020.2";
end audio_station_overview_AudioStation_0_3;

architecture STRUCTURE of audio_station_overview_AudioStation_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \^io_axi_b_payload_resp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^io_axi_r_payload_resp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^io_reclrc\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, ASSOCIATED_BUSIF AXI_S, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of io_axi_ar_ready : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARREADY";
  attribute X_INTERFACE_INFO of io_axi_ar_valid : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARVALID";
  attribute X_INTERFACE_INFO of io_axi_aw_ready : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWREADY";
  attribute X_INTERFACE_INFO of io_axi_aw_valid : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWVALID";
  attribute X_INTERFACE_INFO of io_axi_b_ready : signal is "xilinx.com:interface:aximm:1.0 AXI_S BREADY";
  attribute X_INTERFACE_INFO of io_axi_b_valid : signal is "xilinx.com:interface:aximm:1.0 AXI_S BVALID";
  attribute X_INTERFACE_INFO of io_axi_r_payload_last : signal is "xilinx.com:interface:aximm:1.0 AXI_S RLAST";
  attribute X_INTERFACE_PARAMETER of io_axi_r_payload_last : signal is "XIL_INTERFACENAME AXI_S, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 12, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN audio_station_overview_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of io_axi_r_ready : signal is "xilinx.com:interface:aximm:1.0 AXI_S RREADY";
  attribute X_INTERFACE_INFO of io_axi_r_valid : signal is "xilinx.com:interface:aximm:1.0 AXI_S RVALID";
  attribute X_INTERFACE_INFO of io_axi_w_payload_last : signal is "xilinx.com:interface:aximm:1.0 AXI_S WLAST";
  attribute X_INTERFACE_INFO of io_axi_w_ready : signal is "xilinx.com:interface:aximm:1.0 AXI_S WREADY";
  attribute X_INTERFACE_INFO of io_axi_w_valid : signal is "xilinx.com:interface:aximm:1.0 AXI_S WVALID";
  attribute X_INTERFACE_INFO of io_input_buffer_full : signal is "xilinx.com:signal:interrupt:1.0 io_input_buffer_full INTERRUPT";
  attribute X_INTERFACE_PARAMETER of io_input_buffer_full : signal is "XIL_INTERFACENAME io_input_buffer_full, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of io_input_buffer_half : signal is "xilinx.com:signal:interrupt:1.0 io_input_buffer_half INTERRUPT";
  attribute X_INTERFACE_PARAMETER of io_input_buffer_half : signal is "XIL_INTERFACENAME io_input_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of io_output_buffer_empty : signal is "xilinx.com:signal:interrupt:1.0 io_output_buffer_empty INTERRUPT";
  attribute X_INTERFACE_PARAMETER of io_output_buffer_empty : signal is "XIL_INTERFACENAME io_output_buffer_empty, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of io_output_buffer_half : signal is "xilinx.com:signal:interrupt:1.0 io_output_buffer_half INTERRUPT";
  attribute X_INTERFACE_PARAMETER of io_output_buffer_half : signal is "XIL_INTERFACENAME io_output_buffer_half, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_addr : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARADDR";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_burst : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARBURST";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_cache : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARCACHE";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_id : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARID";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_len : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARLEN";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_lock : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARLOCK";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_prot : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARPROT";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_qos : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARQOS";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_region : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARREGION";
  attribute X_INTERFACE_INFO of io_axi_ar_payload_size : signal is "xilinx.com:interface:aximm:1.0 AXI_S ARSIZE";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_addr : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWADDR";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_burst : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWBURST";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_cache : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWCACHE";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_id : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWID";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_len : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWLEN";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_lock : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWLOCK";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_prot : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWPROT";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_qos : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWQOS";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_region : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWREGION";
  attribute X_INTERFACE_INFO of io_axi_aw_payload_size : signal is "xilinx.com:interface:aximm:1.0 AXI_S AWSIZE";
  attribute X_INTERFACE_INFO of io_axi_b_payload_id : signal is "xilinx.com:interface:aximm:1.0 AXI_S BID";
  attribute X_INTERFACE_INFO of io_axi_b_payload_resp : signal is "xilinx.com:interface:aximm:1.0 AXI_S BRESP";
  attribute X_INTERFACE_INFO of io_axi_r_payload_data : signal is "xilinx.com:interface:aximm:1.0 AXI_S RDATA";
  attribute X_INTERFACE_INFO of io_axi_r_payload_id : signal is "xilinx.com:interface:aximm:1.0 AXI_S RID";
  attribute X_INTERFACE_INFO of io_axi_r_payload_resp : signal is "xilinx.com:interface:aximm:1.0 AXI_S RRESP";
  attribute X_INTERFACE_INFO of io_axi_w_payload_data : signal is "xilinx.com:interface:aximm:1.0 AXI_S WDATA";
  attribute X_INTERFACE_INFO of io_axi_w_payload_strb : signal is "xilinx.com:interface:aximm:1.0 AXI_S WSTRB";
begin
  io_axi_b_payload_resp(1) <= \^io_axi_b_payload_resp\(1);
  io_axi_b_payload_resp(0) <= \<const0>\;
  io_axi_r_payload_resp(1) <= \^io_axi_r_payload_resp\(1);
  io_axi_r_payload_resp(0) <= \<const0>\;
  io_pblrc <= \^io_reclrc\;
  io_reclrc <= \^io_reclrc\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.audio_station_overview_AudioStation_0_3_AudioStation
     port map (
      clk => clk,
      io_axi_ar_payload_addr(31 downto 0) => io_axi_ar_payload_addr(31 downto 0),
      io_axi_ar_payload_burst(1 downto 0) => io_axi_ar_payload_burst(1 downto 0),
      io_axi_ar_payload_id(11 downto 0) => io_axi_ar_payload_id(11 downto 0),
      io_axi_ar_payload_len(7 downto 0) => io_axi_ar_payload_len(7 downto 0),
      io_axi_ar_payload_size(2 downto 0) => io_axi_ar_payload_size(2 downto 0),
      io_axi_ar_valid => io_axi_ar_valid,
      io_axi_aw_payload_addr(31 downto 0) => io_axi_aw_payload_addr(31 downto 0),
      io_axi_aw_payload_burst(1 downto 0) => io_axi_aw_payload_burst(1 downto 0),
      io_axi_aw_payload_id(11 downto 0) => io_axi_aw_payload_id(11 downto 0),
      io_axi_aw_payload_len(7 downto 0) => io_axi_aw_payload_len(7 downto 0),
      io_axi_aw_payload_size(2 downto 0) => io_axi_aw_payload_size(2 downto 0),
      io_axi_aw_valid => io_axi_aw_valid,
      io_axi_b_payload_id(11 downto 0) => io_axi_b_payload_id(11 downto 0),
      io_axi_b_payload_resp(0) => \^io_axi_b_payload_resp\(1),
      io_axi_b_ready => io_axi_b_ready,
      io_axi_b_valid => io_axi_b_valid,
      io_axi_r_payload_data(31 downto 0) => io_axi_r_payload_data(31 downto 0),
      io_axi_r_payload_id(11 downto 0) => io_axi_r_payload_id(11 downto 0),
      io_axi_r_payload_last => io_axi_r_payload_last,
      io_axi_r_payload_resp(0) => \^io_axi_r_payload_resp\(1),
      io_axi_r_ready => io_axi_r_ready,
      io_axi_w_payload_data(31 downto 0) => io_axi_w_payload_data(31 downto 0),
      io_axi_w_valid => io_axi_w_valid,
      io_enable => io_enable,
      io_input_buffer_full => io_input_buffer_full,
      io_input_buffer_half => io_input_buffer_half,
      io_mclk => io_mclk,
      io_output_buffer_empty => io_output_buffer_empty,
      io_output_buffer_half => io_output_buffer_half,
      io_pbdat => io_pbdat,
      io_recdat => io_recdat,
      io_reclrc => \^io_reclrc\,
      r_axi_arready_reg => io_axi_ar_ready,
      r_axi_awready_reg => io_axi_aw_ready,
      r_axi_rvalid_reg => io_axi_r_valid,
      r_axi_wready_reg => io_axi_w_ready,
      r_bclk_reg => io_bclk,
      resetn => resetn
    );
end STRUCTURE;
