package CPU
import chisel3._
import chisel3.util._
import Instructions._
object Control {
    val Y = true.B
    val N = false.B

    val IMM_X  = 0.U(3.W) // default value
    val IMM_R  = 1.U(3.W) // R-type
    val IMM_I  = 2.U(3.W) // I-type
    val IMM_S  = 3.U(3.W) // S-type (sw, lw is not S-type!)
    val IMM_J  = 4.U(3.W) // J-type
    val IMM_B  = 5.U(3.W) // B-type

    val A_XXX = 0.U(2.W) // 要送进ALU里的第一个操作数，通常为寄存器堆读出来的东西
    val A_RS1 = 1.U(2.W)
    val A_IMM = 2.U(2.W)
    val A_PC  = 3.U(2.W)

    val B_XXX = 0.U(2.W) // 送进ALU的第二个操作数
    val B_RS2 = 1.U(2.W)
    val B_IMM = 2.U(2.W)

    val ALU_ADD = 0.U(3.W)
    val ALU_SUB = 1.U(3.W)
    val ALU_AND = 2.U(3.W)
    val ALU_OR  = 3.U(3.W)
    val ALU_XOR = 4.U(3.W)
    val ALU_XXX = 5.U(3.W)

    val BR_XXX = 0.U(1.W) // default value for branches
    val BR_EQ  = 1.U(1.W) // right now we only have beq

    val ST_XXX = 0.U(1.W) // store
    val ST_SW  = 1.U(1.W)

    val LD_XXX = 0.U(1.W) // load
    val LD_LW  = 1.U(1.W)

    val WB_XXX = 0.U(2.W) // write back (from)
    val WB_ALU = 1.U(2.W)
    val WB_MEM = 2.U(2.W)
    val WB_PC4  = 3.U(2.W) // jump and LINK (store in the return address reg)

    val PC_4   = 0.U(2.W)
    val PC_JMP = 1.U(2.W)
    val PC_BR  = 2.U(2.W)
    // the xx_type might be more appropriate than xx_sel
    //                 pc_sel|imm_sel|alu_op|a_sel |b_sel |br_sel |st_sel| ld_sel | wb_sel|regwe
    val default = List(PC_4, IMM_X, ALU_XXX, A_XXX, B_XXX, BR_XXX, ST_XXX, LD_XXX, WB_XXX, N) // 暂时用这么多
    val table = Array (
        ADD  -> List(PC_4,   IMM_R, ALU_ADD, A_RS1, B_RS2, BR_XXX, ST_XXX, LD_XXX, WB_ALU, Y),
        ADDI -> List(PC_4,   IMM_I, ALU_ADD, A_RS1, B_IMM, BR_XXX, ST_XXX, LD_XXX, WB_ALU, Y),
        LW   -> List(PC_4,   IMM_I, ALU_ADD, A_RS1, B_IMM, BR_XXX, ST_XXX, LD_LW,  WB_MEM, Y),
        SW   -> List(PC_4,   IMM_S, ALU_ADD, A_RS1, B_IMM, BR_XXX, ST_SW,  LD_XXX, WB_ALU, N),
        BEQ  -> List(PC_BR,  IMM_B, ALU_SUB, A_PC , B_RS2, BR_EQ,  ST_XXX, LD_XXX, WB_ALU, N),
        JAL  -> List(PC_JMP, IMM_J, ALU_ADD, A_PC , B_RS2, BR_XXX, ST_XXX, LD_XXX, WB_PC4, Y)
    )
}
// try to classify the control signals of the five stages
class IF extends Bundle {
}
class ID extends Bundle {
    val imm_sel = UInt(3.W)
}
class EX extends Bundle {
    val a_sel = UInt(2.W)
    val b_sel = UInt(2.W)
    val alu_op = UInt(3.W)
    val br_sel = UInt(1.W) // 判定是否 branch 需要 alu 的结果
    val pc_sel = UInt(2.W) // 放在一起好了，感觉这样好处理一点
}
class MEM extends Bundle {
    val mem_write = Bool()
    val mem_read = Bool() // need it for load-use hazard detection
}
class WB extends Bundle {
    val wb_sel = UInt(2.W)
    val reg_write = Bool()
}
class ControlSignals extends Bundle {
    val inst = Input(UInt(32.W))
    // val imm_sel = Output(UInt(3.W))
    // val br_sel = Output(UInt(1.W))
    // val mem_write = Output(Bool())
    // val a_sel = Output(UInt(2.W))
    // val b_sel = Output(UInt(2.W))
    // val alu_op = Output(UInt(3.W))
    // val pc_sel = Output(UInt(2.W))
    // val reg_write = Output(Bool())
    // val wb_sel = Output(UInt(2.W))
    val id = Output(new ID)
    val ex = Output(new EX)
    val mem = Output(new MEM)
    val wb = Output(new WB)
}

class Control extends Module {
    import Control._
    val io = IO (new ControlSignals)
    val pc_sel :: imm_sel :: alu_op :: a_sel :: b_sel :: br_sel :: store_sel :: load_sel :: wb_sel :: wen :: Nil = ListLookup(io.inst, default, table)
    io.id.imm_sel := imm_sel

    io.ex.alu_op := alu_op
    io.ex.a_sel := a_sel
    io.ex.b_sel := b_sel
    io.ex.br_sel := br_sel
    io.ex.pc_sel := pc_sel

    io.mem.mem_write := store_sel =/= ST_XXX
    io.mem.mem_read := load_sel =/= LD_XXX

    io.wb.wb_sel := wb_sel
    io.wb.reg_write := wen
}
