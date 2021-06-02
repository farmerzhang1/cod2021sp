package SingleCycle
import chisel3._
import chisel3.util._
import Control._

object Const {
    val PC_START = 0x3000 // 0x3000 = 0b11_00"00_0000_00"00
    val LED40 = 0x400 // 0x400 = 0b100_0000_0000
    val LED7 = 0x404
    val ANSEG = 0x408
    val SW40 = 0x40C
    val SW5 = 0x410
}

class DataPathIO extends Bundle {
    //val clock = Input(new Clock)
    //val inst = Input(UInt(32.W))
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
    // val address = Wire(UInt(32.W))
    // address := regfile.io.read_data1 + immgen.io.imm
    // io.io_bus.io_addr := alu.io.res(7, 0)
    io.io_bus.io_addr := alu.io.res(7, 0)
    io.io_bus.io_dout := regfile.io.read_data2
    io.io_bus.io_we := alu.io.res(10) && io.ctrl.mem_write
    io.imem.a := pc(9, 2) // 这里不太好说清楚 (我们通常读的是byte,但是这里一个地址就可以读出来指令)
    io.ctrl.inst := inst
    io.dmem.a := alu.io.res(7, 0)
    io.dmem.dpra := io.debug_bus.mem_rf_addr // additional port, for debug
    io.dmem.d := regfile.io.read_data2
    io.dmem.we := io.ctrl.mem_write && !alu.io.res(10)
    // io.dmem.clk := io.clock
    // val npc = Reg(UInt(32.W))
    // pc := Mux(
    //     io.ctrl.pc_sel === PC_4, pc + 4.U, Mux(
    //     io.ctrl.pc_sel === PC_JMP, pc + immgen.io.imm, Mux(
    //     brcond.io.taken, pc + immgen.io.imm, pc + 4.U
    //     )))
    pc := Mux (io.ctrl.pc_sel === PC_JMP || brcond.io.taken,
        alu.io.res,
        pc + 4.U)

    alu.io.a := Mux(io.ctrl.a_sel === A_PC, pc, regfile.io.read_data1)
    alu.io.b := Mux(io.ctrl.b_sel === B_RS2, regfile.io.read_data2, immgen.io.imm)
    alu.io.op := io.ctrl.alu_op

    regfile.io.read_addr1 := inst(19, 15)
    regfile.io.read_addr2 := inst(24, 20)
    regfile.io.read_addr_debug := io.debug_bus.mem_rf_addr(4, 0)
    regfile.io.write_addr := inst(11, 7)
    regfile.io.write_en := io.ctrl.reg_write
    regfile.io.write_data := MuxLookup (io.ctrl.wb_sel, 0.U, Seq (
        WB_ALU -> alu.io.res,
        WB_MEM -> (Mux(alu.io.res(10), io.io_bus.io_din,io.dmem.spo)),
        WB_PC4 -> (pc + 4.U)
    ))
    io.debug_bus.rf_data := regfile.io.read_data_debug
    io.debug_bus.mem_data := io.dmem.dpo
    io.debug_bus.pc := pc
    immgen.io.inst := inst
    immgen.io.sel := io.ctrl.imm_sel
    // brcond.io.rs1 := regfile.io.read_data1
    // brcond.io.rs2 := regfile.io.read_data2
    brcond.io.res := alu.io.res
    brcond.io.z := alu.io.z
    brcond.io.sel := io.ctrl.br_sel
}
