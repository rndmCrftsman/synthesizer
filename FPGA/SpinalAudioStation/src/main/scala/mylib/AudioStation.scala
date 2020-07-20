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
class AudioStation() extends Component {
    val io = new Bundle {
        val s_data_out  = master Stream(UInt(32 bits))
        val s_data_in   = slave Stream(UInt(32 bits))
        val bclk_out    = out Bool
        val mclk_out    = out Bool
        val pblrc       = out Bool
        val pbdat       = out Bool
        val reclrc      = out Bool
        val recdat      = in Bool
    }
  
    // ########################################
    // Signals & Registers
    // ########################################

    // ########################################
    // Define Constants
    // ########################################

    // ########################################
    //  Combinatorial Logic
    // ########################################

    // ########################################
    // Registered Logic
    // ########################################

}
