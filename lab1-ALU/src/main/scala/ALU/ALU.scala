package ALU

import chisel3._
import chisel3.util._
import chisel3.experimental._

/*
module alu #(
parameter WIDTH = 32 //
)(
input [WIDTH-1] a, b, // operands
input [2:0] f, // operator
output [WIDTH-1:0] y, // result
output z // zero sign
);
*/

class ALU (val w: Int) extends Module {
    val io = IO (new {
        val a = Input (UInt(w.W)), // .W method for width
        val b = Input (UInt(w.W)),
        val op = Input (UInt(3.W)),
        val res = Output (UInt(w.W)),
        val z = Output (Bool())
    })
}