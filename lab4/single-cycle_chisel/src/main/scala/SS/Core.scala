package SingleCycle

import chisel3._
import chisel3.util._
import chisel3.experimental._

class CPU extends Module {
    val io = IO (new Bundle {
        val clock = Input(new Clock)
    })
    val imem = Module (new IMem)
    val dmem = Module (new DMem)
    val datapath = Module (new DataPath)
    val ctrl = Module (new Control)
    datapath.io.ctrl <> ctrl.io
    datapath.io.dmem <> dmem.io
    datapath.io.imem <> imem.io
    datapath.io.clock <> io.clock
}
