package SingleCycle

import chisel3._
import chisel3.util._

class IOBus extends Bundle {
    val io_din = Input(UInt(32.W))
    val io_addr = Output(UInt(8.W))
    val io_dout = Output(UInt(32.W))
    val io_we = Output(Bool())
}

class DebugBus extends Bundle {
    val mem_rf_addr = Input(UInt(8.W))
    val rf_data = Output(UInt(32.W))
    val mem_data = Output(UInt(32.W))
    val pc = Output(UInt(32.W))
}

// module cpu (
// input clk,
// input rst,
// //IO_BUS
// output [7:0] io_addr,    //led和seg的地址
// ouput [31:0] io_dout,    //输出led和seg的数据
// output io_we,            //输出led和seg数据时的使能信号
// input [31:0] io_din,     //来自sw的输入数据
// //Debug_BUS
// input [7:0] m_rf_addr,   //存储器(MEM)或寄存器堆(RF)的调试读口地址
// output [31:0] rf_data,   //从RF读取的数据
// output [31:0] m_data,    //从MEM读取的数据
// output [31:0] pc         //PC的内容
// );


// module pdu (
// input clk,
// input rst,
// //选择CPU工作方式
// input run,
// input step,
// output clk_cpu,
// //IO_BUS
// input [7:0] io_addr,
// input [31:0] io_dout,
// input io_we,
// output [31:0] io_din,
// //Debug_BUS
// output [7:0] m_rf_addr,
// input [31:0] rf_data,
// input [31:0] m_data,
// input [31:0] pc
// );

// 这几个东西感觉可以打包一下（
// //输入sw的端口
// input valid,
// input [4:0] in,
// //输出led和seg的端口
// output [1:0] check,  //led6-5:查看类型
// output [4:0] out0,   //led4-0
// output [2:0] an,     //8个数码管
// output [3:0] seg,
// output ready,        //led7

class SegDisIO extends Bundle {
    val check = Input(UInt(2.W))
    val out0 = Input(UInt(5.W))
    val an = Input(UInt(3.W))
    val seg = Input(UInt(8.W))
    val sw = Output(UInt(5.W))
}

class PDUIO extends Bundle {
    val io_bus = Flipped(new IOBus)
    val debug_bus = Flipped (new DebugBus)
    val run = Input(Bool())
    val step = Input(Bool())
    val clock_cpu = Output(Bool())
    val seg_dis = Flipped(Decoupled(new SegDisIO))
}