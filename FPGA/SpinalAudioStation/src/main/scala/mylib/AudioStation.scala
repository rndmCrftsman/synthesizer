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
import spinal.lib.bus.amba4.axi._

//Hardware definition
class AudioStation(
    ADDRESS: Int,
    BUF_DEPTH: Int
) extends Component {
    val io = new Bundle {
        val enable              = in Bool()
        val axi                 = slave(Axi4(AudDatMvAXIConfig.getConfig))
        val input_buffer_half   = out Bool()
        val input_buffer_full   = out Bool()
        val output_buffer_half  = out Bool()
        val output_buffer_empty = out Bool()
        val bclk                = out Bool()
        val mclk                = out Bool()
        val pblrc               = out Bool()
        val pbdat               = out Bool()
        val reclrc              = out Bool()
        val recdat              = in Bool()
    }

    // ########################################
    // Subcomponents
    // ########################################

    val audio_data_mover = new AudioDataMover(ADDRESS, BUF_DEPTH)
    val i2s              = new I2S()

    // ########################################
    // Routing
    // ########################################
    
    // Enable Signals
    i2s.io.enable               := io.enable
    audio_data_mover.io.enable  := io.enable
    
    // Internal Data Streams
    i2s.io.s_data_out >> audio_data_mover.io.s_data_in
    i2s.io.s_data_in << audio_data_mover.io.s_data_out

    // Connection to Module Ports
    io.axi <> audio_data_mover.io.axi

    io.input_buffer_half    := audio_data_mover.io.input_buffer_half
    io.input_buffer_full    := audio_data_mover.io.input_buffer_full
    io.output_buffer_half   := audio_data_mover.io.output_buffer_half
    io.output_buffer_empty  := audio_data_mover.io.output_buffer_empty

    io.bclk         := i2s.io.bclk
    io.mclk         := i2s.io.mclk
    io.pblrc        := i2s.io.pblrc
    io.pbdat        := i2s.io.pbdat
    io.reclrc       := i2s.io.reclrc
    i2s.io.recdat   := io.recdat
}

// Custom SpinalHDL configuration with synchronous reset instead of the default asynchronous one.
object MySpinalConfig extends SpinalConfig(defaultConfigForClockDomains = ClockDomainConfig(resetKind = SYNC, resetActiveLevel = LOW))

// Generate the AudioStation's Verilog using the above custom configuration.
object AudioStationVerilogWithCustomConfig {
  def main(args: Array[String]) {
    // Selected 32 as Buffer depth because zynq DMA ist limited to a burst lenght of 16 data beats
    MySpinalConfig.generateVerilog(new AudioStation(ADDRESS = 0x43c00000, BUF_DEPTH = 32)).printPruned()
  }
}
