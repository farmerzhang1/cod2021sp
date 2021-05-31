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
    val stall = Reg(Bool()) // THE stall!
    /************ IF / ID ********************************/
    val inst = RegNext(io.imem.spo)
    val pc_id = RegNext(pc)

    /************ ID / EX ********************************/
    val pc_ex = RegNext(pc_id)
    val a = Reg(UInt(32.W))
    val b = Reg(UInt(32.W))
    val imm = RegNext(immgen.io.imm)
    val dest_reg = RegNext(inst(11, 7))
    val id = io.ctrl.id
    val ex = RegNext(io.ctrl.ex)

    /************ EX / MEM *******************************/
    val mem = RegNext(RegNext(io.ctrl.mem))
    val pc_mem = RegNext(pc_ex)
    val alu_out_mem = RegNext(alu.io.res)
    val dest_reg_mem = RegNext(dest_reg)
    val dmem_data = RegNext(b)
    /************ MEM / WB *******************************/
    val pc_wb = RegNext(pc_mem)
    val read_data = RegNext(io.dmem.spo)
    val wb = RegNext(RegNext(RegNext(io.ctrl.wb)))
    val alu_out_wb = RegNext(alu_out_mem)
    val dest_reg_wb = RegNext(dest_reg_mem)

    // Instruction Fetch
    io.imem.a := pc(9, 2)
    pc := Mux(stall, pc, Mux (io.ctrl.ex.pc_sel === PC_JMP || brcond.io.taken,
        alu.io.res,
        pc + 4.U))

    // Instruction Decode
    io.ctrl.inst := inst
    regfile.io.read_addr1 := inst(19, 15)
    regfile.io.read_addr2 := inst(24, 20)
    regfile.io.read_addr_debug := io.debug_bus.mem_rf_addr(4, 0)
    immgen.io.inst := inst
    immgen.io.sel := id.imm_sel

    // Execution
    a := Mux(ex.a_sel === A_PC, pc_ex, RegNext(regfile.io.read_data1))
    b := Mux(ex.b_sel === B_RS2, RegNext(regfile.io.read_data2), imm)
    alu.io.a := a
    alu.io.b := b
    alu.io.op := ex.alu_op
    brcond.io.res := alu.io.res
    brcond.io.z := alu.io.z
    brcond.io.sel := ex.br_sel

    // Memory
    io.dmem.a := alu_out_mem(7, 0)
    io.dmem.dpra := io.debug_bus.mem_rf_addr // additional port, for debug
    io.dmem.d := RegNext(RegNext(regfile.io.read_data2))
    io.dmem.we := mem.mem_write && !alu_out_mem(10)

    // Write Back
    regfile.io.write_addr := dest_reg_wb
    regfile.io.write_en := wb.reg_write
    regfile.io.write_data := MuxLookup (wb.wb_sel, 0.U, Seq (
        WB_ALU -> alu_out_wb,
        WB_MEM -> Mux(alu_out_wb(10), io.io_bus.io_din, RegNext(io.dmem.spo)),
        WB_PC4 -> (pc_wb + 4.U)
    ))

    io.io_bus.io_addr := alu.io.res(7, 0)
    io.io_bus.io_dout := regfile.io.read_data2
    io.io_bus.io_we := alu.io.res(10) && io.ctrl.mem.mem_write
    io.debug_bus.rf_data := regfile.io.read_data_debug
    io.debug_bus.mem_data := io.dmem.dpo
    io.debug_bus.pc := pc
}
