package mylib
 
import spinal.core._
import spinal.sim._
import spinal.core.sim._
 
import scala.util.Random
import scala.collection.mutable

object AudioDataMoverTestbench {
  def stream_master(dut : AudioDataMover, CLK_RATE : Int, CLK_RATE_DATA : Int, ITER : Int) : mutable.Queue[Long] = {
    var iterCount : Int = ITER
    var writeDone : Boolean = false
    val inputQueue = mutable.Queue[Long]()
    val counterResetValue = (CLK_RATE / CLK_RATE_DATA) - 1
    var counter : Int = 0

    dut.io.s_data_in.valid #= false
    dut.io.enable #= true

    dut.clockDomain.waitSampling()
    
    // Every Time Counter equals 0 => push out new data
    // on pushed data assert valid until valid and ready are asserted on positive clock edge
    while(iterCount > 0) {
      writeDone = false
      do {
        dut.clockDomain.waitRisingEdge()
        if(dut.io.s_data_in.valid.toBoolean == true && dut.io.s_data_in.ready.toBoolean == true) {
          dut.io.s_data_in.valid #= false
          writeDone = true
          inputQueue.enqueue(dut.io.s_data_in.payload.toLong)
        }
        if(writeDone == false) {
          dut.io.s_data_in.valid #= true
        } 
        dut.io.s_data_in.payload.randomize()
        if(counter != 0) {
          counter = counter - 1
        } else {
          counter = counterResetValue
        }
      } while(counter < counterResetValue)
      iterCount = iterCount - 1      
    }
    return inputQueue
  }
  
  def stream_slave(dut : AudioDataMover, CLK_RATE : Int, CLK_RATE_DATA : Int, ITER : Int) : mutable.Queue[Long] = {
    var iterCount : Int = ITER
    var readDone : Boolean = false
    val outputQueue = mutable.Queue[Long]()
    val counterResetValue = (CLK_RATE / CLK_RATE_DATA) - 1
    var counter : Int = 0

    dut.io.s_data_out.ready #= false
    dut.io.enable #= true

    dut.clockDomain.waitSampling()
    
    // Every Time Counter equals 0 => push out new data
    // on pushed data assert valid until valid and ready are asserted on positive clock edge
    while(iterCount > 0) {
      readDone = false
      do {
        dut.clockDomain.waitRisingEdge()
        if(dut.io.s_data_out.valid.toBoolean == true && dut.io.s_data_out.ready.toBoolean == true) {
          dut.io.s_data_out.ready #= false
          readDone = true
          outputQueue.enqueue(dut.io.s_data_out.payload.toLong)
        }
        if(readDone == false) {
          dut.io.s_data_out.ready #= true
        } 
        if(counter != 0) {
          counter = counter - 1
        } else {
          counter = counterResetValue
        }
      } while(counter < counterResetValue)
      iterCount = iterCount - 1      
    }
    return outputQueue
  }

  def axi_master_read(dut : AudioDataMover, READ_ADDRESS : Int, BURST_TYPE : Int, BURST_LEN : Int, BURST_SIZE : Int, NUM_READS : Int, OPT_RAND_ADDRESS : Boolean, OPT_RAND_DATA_READY : Float, OPT_ALWAYS_READ : Boolean) = {
    val axiReadQueue = mutable.Queue[Long]()
    val axiReadAddressQueue = mutable.Queue[Long]()
    val axiReadResponseQueue = mutable.Queue[Long]()
    val axiReadSentIDQueue = mutable.Queue[Long]()
    val axiReadReceivedIDQueue = mutable.Queue[Long]()
    
    var iter : Int = NUM_READS
    var busy : Boolean = false
    var dataCnt : Int = BURST_LEN
    val randomRead = new Random()

    dut.io.axi.ar.valid #= false
    
    dut.clockDomain.waitSampling()

    while(iter > 0) {
      dut.clockDomain.waitRisingEdge()
      if(!busy && (dut.io.input_buffer_half.toBoolean == true || OPT_ALWAYS_READ)) {
        // write address
        dut.io.axi.ar.valid #= true
        if(OPT_RAND_ADDRESS) {
          dut.io.axi.ar.addr.randomize()
        } else {
          dut.io.axi.ar.addr #= READ_ADDRESS
        }
        dut.io.axi.ar.id #= 0x400 //.randomize()
        dut.io.axi.ar.len #= BURST_LEN
        dut.io.axi.ar.size #= BURST_SIZE
        dut.io.axi.ar.burst #= BURST_TYPE
        
        axiReadAddressQueue.enqueue(dut.io.axi.ar.addr.toLong)
        axiReadSentIDQueue.enqueue(dut.io.axi.ar.id.toLong)

        dataCnt = BURST_LEN
        busy = true
      } else if(dut.io.axi.ar.valid.toBoolean == true && dut.io.axi.ar.ready.toBoolean == true) {
        dut.io.axi.ar.valid #= false
        dut.io.axi.r.ready #= true
      } else if(dut.io.axi.r.valid.toBoolean == true) {
        if(dut.io.axi.r.ready.toBoolean == true) {
          // Read Data
          axiReadQueue.enqueue(dut.io.axi.r.data.toLong)
          axiReadResponseQueue.enqueue(dut.io.axi.r.resp.toLong)
          axiReadReceivedIDQueue.enqueue(dut.io.axi.r.id.toLong)

          if(dataCnt == 0) {
            dut.io.axi.r.ready #= false
            busy = false
            iter = iter - 1
          } else {
            dataCnt = dataCnt - 1
          }
        } else if(OPT_RAND_DATA_READY != 0.0f) {
          if(OPT_RAND_DATA_READY >= randomRead.nextFloat()) {
            dut.io.axi.r.ready #= false
          } else {
            dut.io.axi.r.ready #= true
          }
        }
      }
    }
    (axiReadQueue, axiReadAddressQueue, axiReadResponseQueue, axiReadSentIDQueue, axiReadReceivedIDQueue)
  }

  def axi_master_write(dut : AudioDataMover, WRITE_ADDRESS : Int, BURST_TYPE : Int, BURST_LEN : Int, BURST_SIZE : Int, NUM_WRITES : Int, OPT_RAND_ADDRESS : Boolean, OPT_RAND_DATA_VALID : Float, OPT_ALWAYS_WRITE : Boolean) = {
    val axiWriteQueue = mutable.Queue[Long]()
    val axiWriteAddressQueue = mutable.Queue[Long]()
    val axiWriteResponseQueue = mutable.Queue[Long]()
    val axiWriteSentIDQueue = mutable.Queue[Long]()
    val axiWriteReceivedIDQueue = mutable.Queue[Long]()
    
    var iter : Int = NUM_WRITES
    var busy : Boolean = false
    var dataCnt : Int = BURST_LEN
    val randomWrite = new Random()

    dut.io.axi.aw.valid #= false
    
    dut.clockDomain.waitSampling()

    while(iter > 0) {
      dut.clockDomain.waitRisingEdge()
      if(!busy && (dut.io.output_buffer_half.toBoolean == true || OPT_ALWAYS_WRITE)) {
        // write address
        dut.io.axi.aw.valid #= true
        if(OPT_RAND_ADDRESS) {
          dut.io.axi.aw.addr.randomize()
        } else {
          dut.io.axi.aw.addr #= WRITE_ADDRESS
        }
        dut.io.axi.aw.id #= 0x400 // .randomize()
        dut.io.axi.aw.len #= BURST_LEN
        dut.io.axi.aw.size #= BURST_SIZE
        dut.io.axi.aw.burst #= BURST_TYPE
        
        axiWriteAddressQueue.enqueue(dut.io.axi.aw.addr.toLong)
        axiWriteSentIDQueue.enqueue(dut.io.axi.aw.id.toLong)

        dataCnt = BURST_LEN
        busy = true
      } else if(dut.io.axi.aw.valid.toBoolean == true && dut.io.axi.aw.ready.toBoolean == true) {
        dut.io.axi.aw.valid #= false
        dut.io.axi.w.valid #= true
        dut.io.axi.w.data.randomize()
        dut.io.axi.b.ready #= true
      } else if(dut.io.axi.w.ready.toBoolean == true) {
        if(dut.io.axi.w.valid.toBoolean == true) {
          // Write Data
          dut.io.axi.w.data.randomize
          axiWriteQueue.enqueue(dut.io.axi.w.data.toLong)

          if(dataCnt == 0) {
            dut.io.axi.w.valid #= false
            busy = false
            iter = iter - 1
          } else {
            dataCnt = dataCnt - 1
          }
        } else if(OPT_RAND_DATA_VALID != 0.0f) {
          if(OPT_RAND_DATA_VALID >= randomWrite.nextFloat()) {
            dut.io.axi.w.valid #= false
          } else {
            dut.io.axi.w.valid #= true
          }
        }
      }
      if(dut.io.axi.b.valid.toBoolean == true && dut.io.axi.b.ready.toBoolean == true){
        // Read Response
        dut.io.axi.b.ready #= false
        axiWriteResponseQueue.enqueue(dut.io.axi.b.resp.toLong)
        axiWriteReceivedIDQueue.enqueue(dut.io.axi.b.id.toLong)
      }
    }
    (axiWriteQueue, axiWriteAddressQueue, axiWriteResponseQueue, axiWriteSentIDQueue, axiWriteReceivedIDQueue)
  }

  def main(args: Array[String]) {

    val DUT_ADDRESS = 0x43c00000
    
    // Set default Frequency of System
    val spinalConfig = SpinalConfig(defaultClockDomainFrequency = FixedFrequency(100 MHz))
    val compiled = SimConfig
        .withConfig(spinalConfig)
        .withWave
        .allOptimisation
        .compile(
          rtl = new AudioDataMover(
          ADDRESS = DUT_ADDRESS,      // AXI Address 32 bit in fixed mode only
          BUF_DEPTH = 32              // AXI Burst Len only allowed to be half of this value (-1 due to AXI spec)
        )
    )


    //Run the simulation
    compiled.doSimUntilVoid("Test_correct_requests"){dut =>
      dut.clockDomain.forkStimulus(period=10)
      SimTimeout(1000000*10)

      var inputQueue = mutable.Queue[Long]()
      //val axiReadQueue = mutable.Queue[Long]()
      //val axiReadAddressQueue = mutable.Queue[Long]()
      //val axiReadResponseQueue = mutable.Queue[Long]()
      //val axiReadSentIDQueue = mutable.Queue[Long]()
      //val axiReadReceivedIDQueue = mutable.Queue[Long]()
      //val axiWriteQueue = mutable.Queue[Long]()
      var outputQueue = mutable.Queue[Long]()

      // Push Data into the Stream Input
      val streamInputThread = fork{
        inputQueue = stream_master(dut = dut, CLK_RATE = 100000000, CLK_RATE_DATA = 5000000, ITER = 161)
        println("Stream Input Data")
        println(inputQueue.length)
        println(inputQueue)
      }
      
      // Read Data on the AXI Slave Interface
      val axiReadThread = fork{
        val (axiReadQueue, axiReadAddressQueue, axiReadResponseQueue, axiReadSentIDQueue, axiReadReceivedIDQueue) = axi_master_read(dut = dut, READ_ADDRESS = DUT_ADDRESS, BURST_TYPE = 0, BURST_LEN = 15, BURST_SIZE = 2, NUM_READS = 10, OPT_RAND_ADDRESS = false, OPT_RAND_DATA_READY = 0.0f, OPT_ALWAYS_READ = false)
        // wait until Stream Input Thread is finished
        streamInputThread.join()
        println("AXI Read Data")
        println(axiReadQueue.length)
        println(axiReadQueue)
        assert(inputQueue == axiReadQueue)
      }

      // Read Data on the Stream Output
      val streamOutputThread = fork{  
        outputQueue = stream_slave(dut = dut, CLK_RATE = 100000000, CLK_RATE_DATA = 5000000, ITER = 161)
        println("Stream Output Data")
        println(outputQueue.length)
        println(outputQueue)
      }

      // Write Data to the AXI Slave
      val axiWriteThread = fork{
        val (axiWriteQueue, axiWriteAddressQueue, axiWriteResponseQueue, axiWriteSentIDQueue, axiWriteReceivedIDQueue) = axi_master_write(dut = dut, WRITE_ADDRESS = DUT_ADDRESS, BURST_TYPE = 0, BURST_LEN = 15, BURST_SIZE = 2, NUM_WRITES = 10, OPT_RAND_ADDRESS = false, OPT_RAND_DATA_VALID = 0.05f, OPT_ALWAYS_WRITE = false)

        // wait until Stream Output Thread is finished
        streamOutputThread.join()
        println("AXI Write Data")
        println(axiWriteQueue.length)
        println(axiWriteQueue)
        assert(outputQueue == axiWriteQueue)

        axiReadThread.join()
        simSuccess()
      }
    }
  }
}

