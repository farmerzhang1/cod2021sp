package CPU

import chisel3._
import chisel3.util._
import chisel3.experimental._
// we need to blackboxing these two memory

// module data_mem(a, d, dpra, clk, we, spo, dpo)
// /* synthesis syn_black_box black_box_pad_pin="a[7:0],d[31:0],dpra[7:0],clk,we,spo[31:0],dpo[31:0]" */;
//   input [7:0]a;
//   input [31:0]d;
//   input [7:0]dpra;
//   input clk;
//   input we;
//   output [31:0]spo;
//   output [31:0]dpo;
// endmodule

// module inst_mem(a, spo)
// /* synthesis syn_black_box black_box_pad_pin="a[4:0],spo[31:0]" */;
//   input [7:0]a;
//   output [31:0]spo;
// endmodule
class DMemIO extends Bundle {
    val a = Input(UInt(8.W)) // IO names will be the same
    val d = Input(UInt(32.W))  // (without 'io_' in prefix)
    // val clk = Input(Clock()) // remember to add the clock in verilog!
    val dpra = Input(UInt(8.W))
    val we = Input(Bool())
    val dpo = Output(UInt(32.W))
    val spo = Output(UInt(32.W))
}

class DMem extends BlackBox {
    val io = IO(new DMemIO)
}

class IMemIO extends Bundle {
    val a = Input(UInt(8.W)) // IO names will be the same
    val spo = Output(UInt(32.W))
}
class IMem extends BlackBox {
    val io = IO(new IMemIO)
}
