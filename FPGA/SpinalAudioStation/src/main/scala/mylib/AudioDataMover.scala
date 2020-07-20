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

// // Configuration of the AXI Interface
// object AudDatMvAXIConfig {
//   def getConfig = Axi4Config (
//     addressWidth = 32,
//     dataWidth = 32,
//     idWidth = 4
//   )
// }

//Hardware definition
class AudioDataMover(
  ADDRESS: Int,
  BUF_DEPTH: Int
) extends Component {
  val io = new Bundle {
    val s_data_out          = master Stream(UInt(32 bits))
    val s_data_in           = slave Stream(UInt(32 bits))
    val axi                 = slave(Axi4(AudDatMvAXIConfig.getConfig))
    val input_buffer_half   = out Bool
    val input_buffer_full   = out Bool
    val output_buffer_half  = out Bool
    val output_buffer_empty = out Bool
  }
  
  // ########################################
  // Signals & Registers
  // ########################################

  // Memory
  val buffer_out = FIFO(
    WIDTH = 32,
    DEPTH = BUF_DEPTH 
  )
  val buffer_in = FIFO(
    WIDTH = 32,
    DEPTH = BUF_DEPTH 
  )
  
  // AXI constants
  val AXI_ADDRESS           = UInt(32 bits)
  val AXI_RESP_OK           = UInt(2 bits)
  val AXI_RESP_SLVERR       = UInt(2 bits)
  //val AXI_BURST_TYPE_FIXED  = UInt(2 bits)
  val AXI_BURST_TYPE_FIXED  = UInt(2 bits)
  val AXI_BURST_SIZE_32bit  = UInt(3 bits)
  val AXI_BURST_LEN         = UInt(8 bits)

  // Registers for AXI Outputs
  val r_axi_awready   = Reg(Bool)           init(True)
  val r_axi_wready    = Reg(Bool)           init(False)
  val r_axi_bvalid    = Reg(Bool)           init(False)
  val r_axi_bresp     = Reg(UInt(2 bits))   init(0)         // Init with Response OKAY
  val r_axi_bid       = Reg(UInt(4 bits))   init(0)         // Transaction ID (need to be returned with Response)
  val r_axi_arready   = Reg(Bool)           init(True)
  val r_axi_rvalid    = Reg(Bool)           init(False)
  // val r_axi_rdata     = Reg(UInt(32 bits))  init(0)      // Not used -> Buffer is already synchronus
  val r_axi_rresp     = Reg(UInt(2 bits))   init(0)         // Init with Response OKAY
  val r_axi_rlast     = Reg(Bool)           init(False)
  val r_axi_rid       = Reg(UInt(4 bits))   init(0)         // Transaction ID (need to be returned with Response)

  
  // internal storage of AXI Transfer ID and Address
  val axi_r_cnt = Reg(UInt(log2Up(BUF_DEPTH/2)+1 bits)) init(0)
  val axi_w_cnt = Reg(UInt(log2Up(BUF_DEPTH/2)+1 bits)) init(0)

  // AXI additional signals
  val axi_aw_req_valid    = Bool
  val axi_ar_req_valid    = Bool
  val r_axi_aw_req_valid  = Reg(Bool) init(False)
  val r_axi_ar_req_valid  = Reg(Bool) init(False)


  // ########################################
  // Define Constants
  // ########################################
  AXI_ADDRESS           := ADDRESS            // One Address on the Read and Write Channel
  AXI_RESP_OK           := 0                  // Read/Write was Successfull
  AXI_RESP_SLVERR       := 2                  // Slave Error (Wrong Address, Width, Burst Len, etc...)
  AXI_BURST_TYPE_FIXED  := 0                  // Address stays the same during Burst Read/Write
  AXI_BURST_SIZE_32bit  := 2                  // 4 Bytes per Beat on Burst Transaction
  AXI_BURST_LEN         := ((BUF_DEPTH/2)-1)  // Burst Length is half of Buffer Depth (-1 due to AXI Spec)


  // ########################################
  //  Combinatorial Logic
  // ########################################

  // Stream input
  io.s_data_in.ready  := ~buffer_in.io.full
  buffer_in.io.w_en   := io.s_data_in.valid
  buffer_in.io.w_data := io.s_data_in.payload
  
  // Stream output
  io.s_data_out.valid   := ~buffer_out.io.empty
  buffer_out.io.r_en    := io.s_data_out.ready
  io.s_data_out.payload := buffer_out.io.r_data
  
  // Buffer status ouputs
  io.input_buffer_half    := buffer_in.io.half
  io.input_buffer_full    := buffer_in.io.full
  io.output_buffer_half   := buffer_out.io.half
  io.output_buffer_empty  := buffer_out.io.empty

  // AXI Write Address Channel
  io.axi.aw.ready := r_axi_awready
  axi_aw_req_valid := ((io.axi.aw.addr === AXI_ADDRESS)
                      & (io.axi.aw.len === AXI_BURST_LEN)
                      & (io.axi.aw.size === AXI_BURST_SIZE_32bit)
                      & (io.axi.aw.burst === B(AXI_BURST_TYPE_FIXED))
                      )

  // AXI Write Channel
  io.axi.w.ready        := r_axi_wready
  buffer_out.io.w_data  := U(io.axi.w.data)
  buffer_out.io.w_en    := (r_axi_aw_req_valid & r_axi_wready & io.axi.w.valid & (axi_w_cnt > 0))

  // AXI Write Response Channel
  io.axi.b.valid  := r_axi_bvalid
  io.axi.b.resp   := B(r_axi_bresp)
  io.axi.b.id     := r_axi_bid

  // AXI Read Address Channel
  io.axi.ar.ready := r_axi_arready
  axi_ar_req_valid := ((io.axi.ar.addr === AXI_ADDRESS)
                      & (io.axi.ar.len === AXI_BURST_LEN)
                      & (io.axi.ar.size === AXI_BURST_SIZE_32bit)
                      & (io.axi.ar.burst === B(AXI_BURST_TYPE_FIXED))
                      )

  // AXI Read Channel
  io.axi.r.valid    := r_axi_rvalid
  io.axi.r.resp     := B(r_axi_rresp)
  io.axi.r.last     := r_axi_rlast
  io.axi.r.id       := r_axi_rid
  buffer_in.io.r_en := (r_axi_ar_req_valid & r_axi_rvalid & io.axi.r.ready & (axi_r_cnt > 0))
  io.axi.r.data     := B(buffer_in.io.r_data)


  // ########################################
  // Registered Logic
  // ########################################

  // AXI Write Address Channel
  when(r_axi_awready & io.axi.aw.valid) {
    r_axi_bid           := io.axi.aw.id                                     // register transaction ID for the response
    axi_w_cnt           := (AXI_BURST_LEN+1).resize(log2Up(BUF_DEPTH/2)+1)  // set counter to set w_last signal
    r_axi_aw_req_valid  := axi_aw_req_valid                                 // register valid signal for use on write channel
    r_axi_wready        := True                                             // set ready signal in Write Data Channel
    r_axi_awready       := False
    when(axi_aw_req_valid) {
      r_axi_bresp := AXI_RESP_OK            // if request is valid write data to memory and respond with "Okay"
    }.otherwise{
      r_axi_bresp := AXI_RESP_SLVERR        // if request is not valid drop data and respond with "Slave Error"
    }
  }

  // AXI Write Channel
  when(r_axi_wready & io.axi.w.valid) {
    when(axi_w_cnt === 1) {
      r_axi_wready := False
      r_axi_bvalid := True
    }
    axi_w_cnt := axi_w_cnt - 1
  }

  // AXI Write Response Channel
  when(r_axi_bvalid & io.axi.b.ready) {
    r_axi_bvalid  := False
    r_axi_awready := True
  }

  // AXI Read Address Channel
  when(r_axi_arready & io.axi.ar.valid) {
    r_axi_rid           := io.axi.ar.id                                     // register transaction ID for the response
    axi_r_cnt           := (AXI_BURST_LEN+1).resize(log2Up(BUF_DEPTH/2)+1)  // set counter to set r_last signal
    r_axi_ar_req_valid  := axi_ar_req_valid                                 // register valid signal for use on write channel
    r_axi_rvalid        := True                                             // set ready signal in Read Data Channel
    r_axi_arready       := False
    when(axi_aw_req_valid) {
      r_axi_rresp := AXI_RESP_OK            // if request is valid write data to memory and respond with "Okay"
    }.otherwise{
      r_axi_rresp := AXI_RESP_SLVERR        // if request is not valid drop data and respond with "Slave Error"
    }
  }

  // AXI Read Channel
  when(r_axi_rvalid & io.axi.r.ready) {
    when(axi_r_cnt === 2) {
      r_axi_rlast   := True
    } elsewhen(axi_r_cnt === 1) {
      r_axi_rvalid  := False
      r_axi_rlast   := False
      r_axi_arready := True
    }
    axi_r_cnt := axi_r_cnt - 1
  }
}


//Define a custom SpinalHDL configuration with synchronous reset instead of the default asynchronous one. This configuration can be resued everywhere
object MySpinalConfig extends SpinalConfig(defaultConfigForClockDomains = ClockDomainConfig(resetKind = SYNC))

//Generate the MyTopLevel's Verilog using the above custom configuration.
object AudioDataMoverVerilogWithCustomConfig {
  def main(args: Array[String]) {
    MySpinalConfig.generateVerilog(new AudioDataMover(ADDRESS = 1024, BUF_DEPTH = 128)).printPruned()
  }
 }
