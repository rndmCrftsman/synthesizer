package mylib
 
import spinal.core._
import spinal.sim._
import spinal.core.sim._
 
import scala.util.Random
import scala.collection.mutable

object I2STestbench {
  def main(args: Array[String]) {
    val compiled = SimConfig.withWave.allOptimisation.compile(
      rtl = new I2S()
    )

//Run the simulation
compiled.doSimUntilVoid{dut =>
  val queueModel = mutable.Queue[Long]()

  dut.clockDomain.forkStimulus(period = 10)
  SimTimeout(1000000*10)

  // wait and see how the clocks behave
  val waitingThread = fork{
    dut.io.s_data_in.valid #= true
    dut.io.s_data_in.payload #= 0
    dut.io.s_data_out.ready #= true
    dut.io.recdat #= true
    for(i <- 0 until 10000) {
        dut.clockDomain.waitSampling()
        // send data
        if(dut.io.s_data_in.ready.toBoolean == true) {
            dut.io.s_data_in.randomize()
        }
        if(dut.io.s_data_out.valid.toBoolean == true && dut.io.s_data_out.ready.toBoolean == true) {
            dut.io.s_data_out.ready #= false
            println(dut.io.s_data_out.payload.toLong)
        } else {
            dut.io.s_data_out.ready #= true
        }
    }
    simSuccess()
  }
}
  }
}