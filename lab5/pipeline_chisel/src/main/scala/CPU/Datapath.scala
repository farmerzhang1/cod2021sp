package CPU
import chisel3._
import chisel3.util._
import Control._
import Instructions._
object Const {
    val PC_START = 0x3000 // 0x3000 = 0b11_00"00_0000_00"00
    val LED40 = 0x400 // 0x400 = 0b100_0000_0000
    val LED7 = 0x404
    val ANSEG = 0x408
    val SW40 = 0x40C
    val SW5 = 0x410
}

class DataPathIO extends Bundle {
    val ctrl = Flipped(new ControlSignals)
    val dmem = Flipped(new DMemIO)
    val imem = Flipped(new IMemIO)
    val io_bus = new IOBus
    val debug_bus = new DebugBus
}

class DataPath extends Module {
    val io = IO (new DataPathIO)
    // val inst = io.imem.spo
    val regfile = Module (new RegFile(5)(32))
    val alu     = Module (new ALU(32))
    val immgen  = Module (new ImmGen)
    val brcond  = Module (new BrCond)
    import Const._
    val pc = RegInit(PC_START.U(32.W))
    val stall = Wire(Bool()) // THE stall!
    val flush = Wire(Bool())
    // 怎么只暂停部分的流水线呢？控制信号要怎么处理？
    // please refer to https://courses.cs.vt.edu/cs2506/Spring2013/Notes/L12.PipelineStalls.pdf (it's quite nice!)
    // 话说这个pdf里面的图跟老师给的ppt里面的图好像一样
    // 注意到状态间的命名方式：xx_id / xx_ex / xx_mem / xx_wb 代表右边的状态是id, ex, mem, wb
    /************ IF / ID ********************************/
    val inst_id = RegInit(0.U(32.W))
    val pc_id = RegInit(PC_START.U(32.W))

    /************ ID / EX ********************************/
    val inst_ex = RegInit(0.U(32.W))
    val pc_ex = RegInit(PC_START.U(32.W))
    val a = RegInit(0.U(32.W))
    val b = RegInit(0.U(32.W))
    val imm = RegInit(0.U(32.W))
    val dest_reg_ex = RegInit(0.U(5.W))
    val id = io.ctrl.id
    val ex = Reg(new EX)
    val wb_ex = Reg(new WB)
    val mem_ex = Reg(new MEM)

    /************ EX / MEM *******************************/
    val mem = Reg(new MEM)
    val wb_mem = Reg(new WB)
    val pc_mem = RegInit(PC_START.U(32.W))
    val alu_out_mem = RegInit(0.U(32.W))
    val dest_reg_mem = RegInit(0.U(5.W))
    val dmem_write_data = RegInit(0.U(32.W))
    /************ MEM / WB *******************************/
    val write_back = RegInit(0.U(32.W))
    val pc_wb = RegInit(PC_START.U(32.W))
    val dmem_read_data = RegInit(0.U(32.W))
    val wb = Reg(new WB)
    val alu_out_wb = RegInit(0.U(32.W))
    val dest_reg_wb = RegInit(0.U(5.W))

    // Instruction Fetch
    io.imem.a := pc(9, 2)
    flush := ex.pc_sel === PC_JMP || brcond.io.taken
    pc := Mux(stall, pc, Mux (ex.pc_sel === PC_JMP || brcond.io.taken,
        alu.io.res,
        pc + 4.U))

    // Instruction Decode
    val load_use_hazard_a = mem_ex.mem_read && dest_reg_ex === inst_id(19, 15)
    val load_use_hazard_b = mem_ex.mem_read && dest_reg_ex === inst_id(24, 20)
    stall := load_use_hazard_a || load_use_hazard_b
    io.ctrl.inst := inst_id
    regfile.io.read_addr1 := inst_id(19, 15)
    regfile.io.read_addr2 := inst_id(24, 20)
    regfile.io.read_addr_debug := io.debug_bus.mem_rf_addr(4, 0)
    immgen.io.inst := inst_id
    immgen.io.sel := id.imm_sel

    // Execution
    val hazard_a = wb_mem.reg_write && inst_ex(19, 15) === dest_reg_mem
    val hazard_a1 = wb.reg_write && inst_ex(19, 15) === dest_reg_wb
    val hazard_b = wb_mem.reg_write && inst_ex(24, 20) === dest_reg_mem
    val hazard_b1 = wb.reg_write && inst_ex(24, 20) === dest_reg_wb
    // alu.io.a := Mux(ex.a_sel === A_PC, pc_ex,
    //                                    Mux(hazard_a, alu_out_mem, a))
    alu.io.a := MuxCase(a, Array(
        hazard_a -> alu_out_mem,
        hazard_a1 -> io.dmem.spo,
        (ex.a_sel === A_PC) -> pc_ex
    ))
    // alu.io.b := Mux(ex.b_sel === B_RS2, Mux(hazard_b, alu_out_mem, b),
    //                                     imm)
    alu.io.b := MuxCase(b, Array(
        hazard_b -> alu_out_mem,
        hazard_b1 -> io.dmem.spo,
        (ex.b_sel === B_IMM) -> imm
    ))
    alu.io.op := ex.alu_op
    brcond.io.res := alu.io.res
    brcond.io.z := alu.io.z
    brcond.io.sel := ex.br_sel

    // Memory Access
    io.dmem.a := alu_out_mem(7, 0)
    io.dmem.dpra := io.debug_bus.mem_rf_addr // additional port, for debug
    io.dmem.d := dmem_write_data
    io.dmem.we := mem.mem_write && !alu_out_mem(10)

    // Register Write Back
    regfile.io.write_addr := dest_reg_wb
    regfile.io.write_en := wb.reg_write
    regfile.io.write_data := MuxLookup (wb.wb_sel, 0.U, Seq (
        WB_ALU -> alu_out_wb,
        WB_MEM -> write_back,
        WB_PC4 -> (pc_wb + 4.U)
    ))

    // Miscellaneous
    io.io_bus.io_addr := alu_out_mem(7, 0)
    io.io_bus.io_dout := dmem_write_data // regfile.io.read_data2
    io.io_bus.io_we := alu_out_mem(10) && mem.mem_write
    io.debug_bus.rf_data := regfile.io.read_data_debug
    io.debug_bus.mem_data := io.dmem.dpo
    io.debug_bus.pc := pc
    io.debug_bus.pc_in := pc
    io.debug_bus.pcd := pc_id
    io.debug_bus.pce := pc_ex
    io.debug_bus.ir := inst_id
    io.debug_bus.imm := imm
    io.debug_bus.mdr := dmem_read_data
    io.debug_bus.a := a
    io.debug_bus.b := b
    io.debug_bus.y := alu_out_mem
    io.debug_bus.bm := dmem_write_data
    io.debug_bus.yw := alu_out_wb
    io.debug_bus.rd := dest_reg_ex
    io.debug_bus.rdm := dest_reg_mem
    io.debug_bus.rdw := dest_reg_wb
    // 懒得！
    io.debug_bus.ctrl := 0.U
    io.debug_bus.ctrlm := 0.U
    io.debug_bus.ctrlw := 0.U
    io.debug_bus.stall := stall
    io.debug_bus.flush := flush

    // Pipelining
    // IF/ID
    when (!stall && !flush) {
        inst_id := io.imem.spo
        pc_id := pc
    }.otherwise {
        inst_id := 0.U
    }

    // ID/EX
    when (!stall && !flush) {
        inst_ex := inst_id
        pc_ex := pc_id
        a := regfile.io.read_data1
        b := regfile.io.read_data2
        imm := immgen.io.imm
        dest_reg_ex := inst_id(11, 7)
        ex := io.ctrl.ex
        wb_ex := io.ctrl.wb
        mem_ex := io.ctrl.mem
    }.otherwise {
        inst_ex := 0.U
        ex.a_sel := A_XXX
        ex.b_sel := B_XXX
        ex.alu_op := ALU_XXX
        ex.br_sel := BR_XXX
        ex.pc_sel := PC_4
        wb_ex.wb_sel := WB_XXX
        wb_ex.reg_write := false.B
        mem_ex.mem_write := false.B
        mem_ex.mem_read := false.B
    }
    // EX/MEM
    mem := mem_ex
    wb_mem := wb_ex
    pc_mem := pc_ex
    alu_out_mem := alu.io.res
    dest_reg_mem := dest_reg_ex
    dmem_write_data := b
    // MEM/WB
    pc_wb := pc_mem
    dmem_read_data := io.dmem.spo
    write_back := Mux(alu_out_mem(10), io.io_bus.io_din, io.dmem.spo)
    wb := wb_mem
    alu_out_wb := alu_out_mem
    dest_reg_wb := dest_reg_mem
}
