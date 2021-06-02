package CPU
import chisel3._
import chisel3.util._
import Control._

class ImmGen extends Module {
    val io = IO (new Bundle {
        val inst = Input(UInt(32.W))
        val sel = Input(UInt(3.W))
        val imm = Output(UInt(32.W)) // seems like we need to sign-extend
    })
    io.imm := MuxLookup (
        io.sel,
        0.S(32.W), // we specify the width here, so .asSInt() can do the sign extension for us
        Seq(
            IMM_X -> 0.S, // nothing
            IMM_R -> 0.S, // nothing
            IMM_I -> io.inst(31, 20).asSInt, // addi (the operand), lw(the offset)automatic sign-extension here
            IMM_S -> Cat(io.inst(31, 25), io.inst(11, 7)).asSInt, // the offset
            IMM_B -> Cat(io.inst(31), io.inst(7), io.inst(30, 25), io.inst(11, 8), 0.U(1.W)).asSInt, //offset, !shift left by one bit
            IMM_J -> Cat(io.inst(31), io.inst(19, 12), io.inst(20), io.inst(30, 21), 0.U(1.W)).asSInt //offset, also shift left 1
        )).asUInt
}
