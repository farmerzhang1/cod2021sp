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
    val inst = io.imem.spo
    val regfile = Module (new RegFile(5)(32))
    val alu     = Module (new ALU(32))
    val immgen  = Module (new ImmGen)
    val brcond  = Module (new BrCond)
    import Const._
    val pc = RegInit(PC_START.U(32.W))
    val stall = Reg(Bool()) // THE stall!
    /************ IF / ID ********************************/
    val inst_ifid = RegInit(0.U(32.W)) // TODO: add NOP instruction
    val pc_ifid = Reg(UInt(32.W))

    /************ ID / EX ********************************/
    val pc_idex = RegInit(0.U(32.W))
    val a = Reg(UInt(32.W))
    val b = Reg(UInt(32.W))
    val imm = Reg(UInt(32.W))
    val dest_reg = Reg(UInt(5.W))
    val id = io.ctrl.id
    val ex = RegNext(io.ctrl.ex)
    /************ EX / MEM *******************************/
    val mem = RegNext(RegNext(io.ctrl.mem))
    val alu_out = RegNext(alu.io.res)
    val dest_reg_mem = RegNext(dest_reg)
    val dmem_data = RegNext(b)
    /************ MEM / WB *******************************/
    val read_data = RegNext(io.dmem.dpo)
    val wb = RegNext(RegNext(RegNext(io.ctrl.wb)))
    val alu_out_wb = RegNext(alu_out)
    val dest_reg_wb = RegNext(dest_reg_mem)

    // the single cycle one (not changed)
    io.ctrl.inst := inst
    io.imem.a := pc(9, 2) // 这里不太好说清楚 (我们通常读的是byte,但是这里一个地址就可以读出来指令)
    io.dmem.a := alu.io.res(7, 0)
    io.dmem.dpra := io.debug_bus.mem_rf_addr // additional port, for debug
    io.dmem.d := regfile.io.read_data2
    io.dmem.we := mem.mem_write && !alu.io.res(10)

    pc := Mux(stall, pc, Mux (io.ctrl.ex.pc_sel === PC_JMP || brcond.io.taken,
        alu.io.res,
        pc + 4.U))

    alu.io.a := Mux(io.ctrl.ex.a_sel === A_PC, pc, regfile.io.read_data1)
    alu.io.b := Mux(io.ctrl.ex.b_sel === B_RS2, regfile.io.read_data2, immgen.io.imm)
    alu.io.op := io.ctrl.ex.alu_op

    regfile.io.read_addr1 := inst(19, 15)
    regfile.io.read_addr2 := inst(24, 20)
    regfile.io.read_addr_debug := io.debug_bus.mem_rf_addr(4, 0)
    regfile.io.write_addr := inst(11, 7)
    regfile.io.write_en := wb.reg_write
    regfile.io.write_data := MuxLookup (wb.wb_sel, 0.U, Seq (
        WB_ALU -> RegNext(RegNext(alu.io.res)),
        WB_MEM -> (Mux(alu.io.res(10), io.io_bus.io_din, io.dmem.spo)),
        WB_PC4 -> (pc + 4.U)
    ))

    io.io_bus.io_addr := alu.io.res(7, 0)
    io.io_bus.io_dout := regfile.io.read_data2
    io.io_bus.io_we := alu.io.res(10) && io.ctrl.mem.mem_write
    io.debug_bus.rf_data := regfile.io.read_data_debug
    io.debug_bus.mem_data := io.dmem.dpo
    io.debug_bus.pc := pc
    immgen.io.inst := inst
    immgen.io.sel := io.ctrl.id.imm_sel
    brcond.io.res := alu.io.res
    brcond.io.z := alu.io.z
    brcond.io.sel := io.ctrl.ex.br_sel
}
