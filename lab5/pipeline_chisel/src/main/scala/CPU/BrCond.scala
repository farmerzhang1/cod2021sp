package CPU
import chisel3._
import Control._

class BrCondIO extends Bundle {
    val res = Input(UInt(32.W)) // the result of alu(we need it for BGE/BLT), the op should be ALU_SUB
    val z = Input(Bool())
    val sel = Input(UInt(1.W))
    val taken = Output(Bool())
}

class BrCond extends Module {
    val io = IO(new BrCondIO)
    val eq = io.z
    io.taken := io.sel === BR_EQ && eq // we have other kinds of branch though not implemented here
}