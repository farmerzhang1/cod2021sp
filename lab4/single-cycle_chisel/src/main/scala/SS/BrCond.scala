package SingleCycle
import chisel3._
import Control._

class BrCondIO extends Bundle {
    val rs1 = Input(UInt(32.W))
    val rs2 = Input(UInt(32.W))
    val br_sel = Input(UInt(1.W))
    val taken = Output(Bool())
}

class BrCond extends Module {
    val io = IO(new BrCondIO)
    val eq = io.rs1 === io.rs2
    io.taken := io.br_sel === BR_EQ && eq // we have other kinds of branch though not implemented here
}