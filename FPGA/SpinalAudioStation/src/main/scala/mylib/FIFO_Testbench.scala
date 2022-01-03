package mylib
 
import spinal.core._
import spinal.sim._
import spinal.core.sim._
 
import scala.util.Random
import scala.collection.mutable

object FIFOTestbench {
  def main(args: Array[String]) {
    val compiled = SimConfig.withWave.allOptimisation.compile(
      rtl = new FIFO(
        WIDTH = 32,
        DEPTH = 64
      )
    )

//Run the simulation
compiled.doSimUntilVoid{dut =>
  val queueModel = mutable.Queue[Long]()

  dut.clockDomain.forkStimulus(period = 10)
  SimTimeout(1000000*10)

  //Push data randomly and fill the queueModel with pushed transactions
  val pushThread = fork{
    dut.io.w_en #= false
    while(true){
      dut.io.w_en.randomize()
      dut.io.w_data.randomize()
      dut.clockDomain.waitSampling()
      if(dut.io.w_en.toBoolean && !(dut.io.full.toBoolean)){
        queueModel.enqueue(dut.io.w_data.toLong)
      }
    }
  }

  //Pop data randomly and check that it match with the queueModel
  val popThread = fork{
    dut.io.r_en #= true
    for(i <- 0 until 100000){
      dut.io.r_en.randomize()
      dut.clockDomain.waitSampling()
      if(!(dut.io.empty.toBoolean) && dut.io.r_en.toBoolean){
        assert(dut.io.r_data.toLong == queueModel.dequeue())
      }
    }
    simSuccess()
  }
}

compiled.doSimUntilVoid{dut =>
  val queueModel = mutable.Queue[Long]()

  dut.clockDomain.forkStimulus(period = 10)
  SimTimeout(1000000*10)

  //Push data randomly and fill the queueModel with pushed transactions
  val pushThread = fork{
    dut.io.w_en #= false
    dut.io.r_en #= false
    for(i <- 0 until 32) {
      dut.io.w_en #= true
      println("Put in one Sample")
      dut.io.w_data.randomize()
      dut.clockDomain.waitSampling()
      if(dut.io.w_en.toBoolean && !(dut.io.full.toBoolean)) {
        queueModel.enqueue(dut.io.w_data.toLong)
      }
    }
    dut.io.w_en #= false
    dut.clockDomain.waitSampling()
    println("Half indicator test ended!")
    assert(dut.io.half.toBoolean == true)
    simSuccess()
  }
}

  }
}

