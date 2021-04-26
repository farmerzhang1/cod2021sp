package SingleCycle
import chisel3._

class ControlIO extends Bundle {
    val inst = Input(UInt(32.W))
    val branch = Output(Bool())
    val mem_read = Output(Bool())
    val mem_write = Output(Bool())
    val alu_op = Output(UInt(3.W))
    val reg_write = Output(Bool())
}

class Control extends Module {
    val io = IO (new ControlIO)
}