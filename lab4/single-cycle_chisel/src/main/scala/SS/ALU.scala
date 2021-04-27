package SingleCycle
import chisel3._
import chisel3.util._

import Control._
class ALU (val w: Int) extends Module {
    val io = IO (new Bundle{
        val a = Input (UInt(w.W))
        val b = Input (UInt(w.W))
        val op = Input (UInt(3.W))
        val res = Output (UInt(w.W))
        val z = Output (Bool())
    })
    io.res := MuxLookup (io.op, 0.U, Seq(
        ALU_ADD -> (io.a + io.b),
        ALU_SUB -> (io.a - io.b),
        ALU_AND -> (io.a & io.b),
        ALU_OR  -> (io.a | io.b),
        ALU_XOR -> (io.a ^ io.b)
    ))
    io.z := io.res === 0.U
}
