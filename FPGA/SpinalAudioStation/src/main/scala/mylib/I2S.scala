/*
 * SpinalHDL
 * Copyright (c) Dolu, All rights reserved.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 3.0 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.
 */

package mylib

import scala.math._

import spinal.core._
import spinal.lib._

//Hardware definition
class I2S() extends Component {
    val io = new Bundle {
        val enable      = in Bool
        val s_data_out  = master Stream(UInt(32 bits))
        val s_data_in   = slave Stream(UInt(32 bits))
        val bclk        = out Bool
        val mclk        = out Bool
        val pblrc       = out Bool
        val pbdat       = out Bool
        val reclrc      = out Bool
        val recdat      = in Bool
    }
    
    /* Important:
     * This Module is developed to work with a input clock of 122.88MHz
     * to produce a 96kHz Audiosignal with the SSM2603 chip. It's not 
     * including the I2C Bus for configuration of the IC.
     */
  
    // ########################################
    // Signals & Registers
    // ########################################

    // Memory for stream input and output
    val r_buffer_out      = Reg(UInt(32 bits)) init(0)
    val r_buffer_out_full = Reg(Bool)          init(False)
    val r_buffer_in       = Reg(UInt(32 bits)) init(0)
    val r_buffer_in_full  = Reg(Bool)          init(False)

    // Registers for generating enable signals to generate clocks
    val r_cnt_mclk_en = Reg(UInt(log2Up(4)+1 bits))   init(0)
    val r_cnt_bclk_en = Reg(UInt(log2Up(9)+1 bits))   init(0)
    val r_cnt_lrclk_en = Reg(UInt(log2Up(639)+1 bits)) init(0)
    val r_cnt_frame_en = Reg(UInt(log2Up(1279)+1 bits)) init(0)
    val r_mclk_en = Reg(Bool) init(False)
    val r_bclk_en = Reg(Bool) init(False)
    val r_lrclk_en = Reg(Bool) init(False)
    val r_frame_en = Reg(Bool) init(False)

    // Shiftregister for data input and output
    val r_data = Reg(UInt(64 bits)) init(0)

    // Register for data output
    val r_out = Reg(Bool) init(False)

    // Register for generating MCLK
    val r_mclk = Reg(Bool)  init(True)

    // Register for syncing mclk and the other I2S signals
    val r_enable = Reg(Bool) init(False)
    
    // Register for generating BCLK
    val r_bclk = Reg(Bool)  init(False)

    // Register for generating PBLRC/RECLRC
    val r_lrclk = Reg(Bool) init(False)

    // Registered flag for change between data write/read and stall on clock edges
    // val r_write_nread = Reg(Bool) init(True)

    // ########################################
    // Define Constants
    // ########################################

    // ########################################
    //  Combinatorial Logic
    // ########################################

    // Streams
    io.s_data_out.valid := r_buffer_out_full & io.enable
    io.s_data_out.payload := r_buffer_out
    io.s_data_in.ready  := ~r_buffer_in_full & io.enable

    // I2S
    io.mclk     := r_mclk
    io.bclk     := r_bclk
    io.pblrc    := r_lrclk
    io.reclrc   := r_lrclk
    // io.pbdat    := r_data(63)
    io.pbdat    := r_out

    // ########################################
    // Registered Logic
    // ########################################

    // Generation of enable and clock signals
    when(r_cnt_mclk_en === 4) {
        r_cnt_mclk_en := 0
        r_mclk_en := True
    } .otherwise {
        r_cnt_mclk_en := r_cnt_mclk_en + 1
        r_mclk_en := False
    }

    when(r_mclk_en) {
        r_mclk := ~r_mclk
    }

    when(r_cnt_mclk_en === 3) {
        when(~r_mclk) {
            when(io.enable) {
                r_enable := True
            } .otherwise {
                r_enable := False
            }
        }
    } .otherwise {
        r_enable := r_enable
    }

    when(r_enable) {
        when(r_cnt_bclk_en === 9) {
            r_cnt_bclk_en := 0
            r_bclk_en := True
        } .otherwise {
            r_cnt_bclk_en := r_cnt_bclk_en + 1
            r_bclk_en := False
        }

        when(r_cnt_lrclk_en === 639) {
            r_cnt_lrclk_en := 0
            r_lrclk_en := True
        } .otherwise {
            r_cnt_lrclk_en := r_cnt_lrclk_en + 1
            r_lrclk_en := False
        }
    
        when(r_cnt_frame_en === 1279) {
            r_cnt_frame_en := 0
            r_frame_en := True
        } .otherwise {
            r_cnt_frame_en := r_cnt_frame_en + 1
            r_frame_en := False
        }
    
        when(r_bclk_en) {
            r_bclk := ~r_bclk
        }
    
        when(r_lrclk_en) {
            r_lrclk := ~r_lrclk
        }
    
        // Stream Input
        when(io.s_data_in.valid & io.s_data_in.ready) {
            r_buffer_in := io.s_data_in.payload
            r_buffer_in_full := True
        }
    
        // Stream Output
        when(io.s_data_out.valid & io.s_data_out.ready) {
            r_buffer_out_full := False
        }
    
        // I2S Data Transmission
        // when(r_bclk_en) {
        //     r_write_nread := ~r_write_nread
        // }
    
        when(r_frame_en) {
            r_buffer_out := r_data(63 downto 32)
            r_buffer_out_full := True
            r_data := r_buffer_in @@ r_buffer_in
            r_buffer_in_full := False
        } .elsewhen(r_bclk_en) {
            // when(r_write_nread) {
            when(r_bclk) {
                // r_data := r_data(62 downto 0) @@ io.recdat
                r_out := r_data(63)
            } .otherwise {
                r_data := r_data(62 downto 0) @@ io.recdat
            }
        }
    } .otherwise {
        r_cnt_bclk_en := 9
        r_cnt_lrclk_en := 639
        r_cnt_frame_en := 1279
        r_bclk_en := False
        r_lrclk_en := False
        r_frame_en := False
        r_bclk := True
        r_lrclk := False
    }
}
