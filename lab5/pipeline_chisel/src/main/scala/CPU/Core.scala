package CPU

import chisel3._
import chisel3.util._
import chisel3.experimental._
class CPUIO extends Bundle {
    val io_bus = new IOBus
    val debug_bus = new DebugBus
}
class CPU extends Module {
    val io = IO (new CPUIO)
    val imem = Module (new IMem)
    val dmem = Module (new DMem)
    val datapath = Module (new DataPath)
    val ctrl = Module (new Control)
    datapath.io.ctrl <> ctrl.io
    datapath.io.dmem <> dmem.io
    datapath.io.imem <> imem.io
    // datapath.io.clock <> io.clock
    datapath.io.io_bus <> io.io_bus
    datapath.io.debug_bus <> io.debug_bus
}
