package ALU
/*
module fls (
input clk, rst, en,
input [6:0] d,
output [6:0] f
);
*/
import chisel3._
import chisel3.util._

class FLS extends Module {
    val io = IO (new Bundle {
        val en = Input (Bool())
        val in = Input (UInt(7.W))
        val out = Output (UInt(7.W))
    })
    val alu = new ALU(7)
    when (io.en) { } // TODO
}