package SingleCycle
import chisel3._
import chisel3.util._

object Control {
    val Y = true.B
    val N = false.B

    val IMM_X  = 0.U(3.W) // default value
    val IMM_R  = 1.U(3.W) // R-type
    val IMM_I  = 2.U(3.W) // I-type
    val IMM_S  = 3.U(3.W) // S-type (sw, lw)
    val IMM_J  = 4.U(3.W) // J-type
    val IMM_B  = 5.U(3.W) // B-type (is there such a type??)

    val ALU_ADD    = 0.U(3.W)
    val ALU_SUB    = 1.U(3.W)
    val ALU_AND    = 2.U(3.W)
    val ALU_OR     = 3.U(3.W)
    val ALU_XOR    = 4.U(3.W)

    val BR_XXX = 0.U(1.W) // default value for branches
    val BR_EQ  = 1.U(1.W) // right now we only have beq

    val ST_XXX = 0.U(1.W) // store
    val ST_SW  = 1.U(1.W)

    val LD_XXX = 0.U(1.W) // load
    val LD_LW  = 1.U(1.W)

    val PC_4 = 0.U(2.W)
    val PC_JMP = 1.U(2.W)
    val PC_BR = 2.U(2.W)
}

class ControlSignals extends Bundle {
    val inst = Input(UInt(32.W))
    val branch = Output(Bool()) // branch is here?
    val mem_read = Output(Bool())
    val mem_write = Output(Bool())
    val alu_op = Output(UInt(3.W))
    val reg_write = Output(Bool())
}

class Control extends Module {
    val io = IO (new ControlSignals)
}