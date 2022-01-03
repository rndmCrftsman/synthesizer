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
case class FIFO (WIDTH: Int, DEPTH: Int) extends Component {
  val io = new Bundle {
    val w_en = in Bool()
    val w_data = in UInt(WIDTH bits)
    val r_en = in Bool()
    val r_data = out UInt(WIDTH bits)
    val empty = out Bool()
    val half = out Bool()
    val full = out Bool()
  }
  // ----- Signals & Registers ----- 
  // Memory
  val mem = Mem(UInt(WIDTH bits), DEPTH)
  mem.setTechnology(distributedLut)

  // Address Memories
  val w_addr = Reg(UInt(log2Up(DEPTH) bits)) init(0)
  val r_addr = Reg(UInt(log2Up(DEPTH) bits)) init(0)
  
  val addr_dist = UInt(log2Up(DEPTH) bits)

  // ----- Combinatorial Logic -----
  // Signaling for FIFO status
  io.empty := (r_addr === w_addr) ? True | False
  io.full := (r_addr === (w_addr + 1)) ? True | False

  addr_dist := w_addr - r_addr
  io.half := (addr_dist(log2Up(DEPTH) - 1)) ? True | False

  // ----- Registered Logic
  // Write Control
  when (io.w_en & ~io.full) {
    mem(w_addr) := io.w_data
    w_addr := w_addr + 1
  }

  // Read Control
  io.r_data := 0
  when (io.r_en & ~io.empty) {
    io.r_data := mem(r_addr)
    r_addr := r_addr + 1
  }
}
