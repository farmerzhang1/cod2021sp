package SingleCycle

import chisel3._
import chisel3.util._
import chisel3.experimental._
// we need to blackboxing these two memory

// module data_mem(a, d, clk, we, spo)
// /* synthesis syn_black_box black_box_pad_pin="a[4:0],d[31:0],clk,we,spo[31:0]" */;
//   input [7:0]a;
//   input [31:0]d;
//   input clk;
//   input we;
//   output [31:0]spo;
// endmodule

// module inst_mem(a, spo)
// /* synthesis syn_black_box black_box_pad_pin="a[4:0],spo[31:0]" */;
//   input [7:0]a;
//   output [31:0]spo;
// endmodule
