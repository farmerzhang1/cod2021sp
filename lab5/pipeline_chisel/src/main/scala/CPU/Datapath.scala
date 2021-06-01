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
    // 我们需要控制信号的一堆输出（pc_sel, imm_sel等等），但是不能把它作为模块放在datapath里面，那样跟实际电路不符；所以把control翻转一下放到数据通路的interface里
    // 数据和指令内存同理
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
    val stall = RegInit(false.B) // THE stall!
    // 怎么只暂停部分的流水线呢？控制信号要怎么处理？
    // please refer to https://courses.cs.vt.edu/cs2506/Spring2013/Notes/L12.PipelineStalls.pdf (it's quite nice!)
    // 话说这个pdf里面的图跟老师给的ppt里面的图好像一样
    // 注意到状态间的命名方式：xx_id / xx_ex / xx_mem / xx_wb 代表右边的状态是id, ex, mem, wb
    /************ IF / ID ********************************/
    val inst = Reg(UInt(32.W))
    val pc_id = Reg(UInt(32.W))

    /************ ID / EX ********************************/
    val pc_ex = Reg(UInt(32.W))
    val a = Reg(UInt(32.W))
    val b = Reg(UInt(32.W))
    val imm = Reg(UInt(32.W))
    val dest_reg_ex = Reg(UInt(5.W))
    val id = io.ctrl.id
    val ex = Reg(new EX)
    val wb_ex = Reg(new WB)
    val mem_ex = Reg(new MEM)

    /************ EX / MEM *******************************/
    val mem = Reg(new MEM)
    val wb_mem = Reg(new WB)
    val pc_mem = Reg(UInt(32.W))
    val alu_out_mem = Reg(UInt(32.W))
    val dest_reg_mem = Reg(UInt(5.W))
    val dmem_write_data = Reg(UInt(32.W))
    /************ MEM / WB *******************************/
    val pc_wb = Reg(UInt(32.W))
    val wb = Reg(new WB)
    val alu_out_wb = Reg(UInt(32.W))
    val dest_reg_wb = Reg(UInt(5.W))

    // Instruction Fetch
    io.imem.a := pc(9, 2)
    pc := Mux(stall, pc, Mux (ex.pc_sel === PC_JMP || brcond.io.taken,
        alu.io.res, // TODO jump instruction not working (i think)
        pc + 4.U))

    // Instruction Decode
    val load_use_hazard_a = mem_ex.mem_read && dest_reg_ex === inst(19, 15)
    val load_use_hazard_b = mem_ex.mem_read && dest_reg_ex === inst(24, 20)
    stall := load_use_hazard_a || load_use_hazard_b
    io.ctrl.inst := inst
    regfile.io.read_addr1 := inst(19, 15)
    regfile.io.read_addr2 := inst(24, 20)
    regfile.io.read_addr_debug := io.debug_bus.mem_rf_addr(4, 0)
    immgen.io.inst := inst
    immgen.io.sel := id.imm_sel

    // Execution
    val hazard_a = wb_mem.reg_write && RegNext(inst(19, 15)) === dest_reg_mem
    val hazard_b = wb_mem.reg_write && RegNext(inst(24, 20)) === dest_reg_mem
    alu.io.a := Mux(ex.a_sel === A_PC, pc_ex,
                                       Mux(hazard_a, alu_out_mem, a))
    alu.io.b := Mux(ex.b_sel === B_RS2, Mux(hazard_b, alu_out_mem, b),
                                        imm)
    alu.io.op := ex.alu_op
    brcond.io.res := alu.io.res
    brcond.io.z := alu.io.z
    brcond.io.sel := ex.br_sel

    // Memory Access
    io.dmem.a := alu_out_mem(7, 0)
    io.dmem.dpra := io.debug_bus.mem_rf_addr // additional port, for debug
    io.dmem.d := RegNext(RegNext(regfile.io.read_data2))
    io.dmem.we := mem.mem_write && !alu_out_mem(10)

    // Register Write Back
    regfile.io.write_addr := dest_reg_wb
    regfile.io.write_en := wb.reg_write
    regfile.io.write_data := MuxLookup (wb.wb_sel, 0.U, Seq (
        WB_ALU -> alu_out_wb,
        WB_MEM -> Mux(alu_out_wb(10), io.io_bus.io_din, RegNext(io.dmem.spo)),
        WB_PC4 -> (pc_wb + 4.U)
    ))

    // Miscellaneous
    io.io_bus.io_addr := alu.io.res(7, 0)
    io.io_bus.io_dout := regfile.io.read_data2
    io.io_bus.io_we := alu.io.res(10) && io.ctrl.mem.mem_write
    io.debug_bus.rf_data := regfile.io.read_data_debug
    io.debug_bus.mem_data := io.dmem.dpo
    io.debug_bus.pc := pc

    // Pipelining
    when (!stall) {
        inst := io.imem.spo
        pc_id := pc
        pc_ex := pc_id
        a := regfile.io.read_data1
        b := regfile.io.read_data2
        imm := immgen.io.imm
        dest_reg_ex := inst(11, 7)
        ex := io.ctrl.ex
        wb_ex := io.ctrl.wb
        mem_ex := io.ctrl.mem
        mem := mem_ex
        wb_mem := wb_ex
        pc_mem := pc_ex
        alu_out_mem := alu.io.res
        dest_reg_mem := dest_reg_ex
        dmem_write_data := b
        pc_wb := pc_mem
        wb := wb_mem
        alu_out_wb := alu_out_mem
        dest_reg_wb := dest_reg_mem
    }.otherwise {
        // TODO
    }
}
