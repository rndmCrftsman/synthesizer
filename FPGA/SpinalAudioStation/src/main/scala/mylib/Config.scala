package mylib

import spinal.lib.bus.amba4.axi._

// Configuration of the AXI Interface
object AudDatMvAXIConfig {
  def getConfig = Axi4Config (
    addressWidth = 32,
    dataWidth = 32,
    idWidth = 12
  )
}
