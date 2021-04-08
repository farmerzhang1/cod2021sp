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
    val io = IO (new Bundle{
        val a = Input (UInt(w.W)) // .W method for width
        val b = Input (UInt(w.W))
        val op = Input (UInt(3.W))
        val res = Output (UInt(w.W))
        val z = Output (Bool())
    })
    io.res := MuxLookup (io.op, 0.U, Seq(
        0.U -> (io.a + io.b),
        1.U -> (io.a - io.b),
        2.U -> (io.a & io.b),
        3.U -> (io.a | io.b),
        4.U -> (io.a ^ io.b)
    ))
    io.z := io.res === 0.U
}

// object ALUDriver extends App {
//   chisel3.Driver.execute(args, () => new ALU(32))
// }

class ALU_test extends Module {
    val io = IO (new Bundle {
        val op = Input (UInt(6.W)) // operands and operator
        val switch = Input (UInt(2.W))
        val en = Input (Bool())
        val res = Output (UInt(6.W))
        val z = Output(Bool())
    })
    val a = Reg(UInt(6.W))
    val b = Reg(UInt(6.W))
    val op = Reg(UInt(3.W))
    val alu = Module(new ALU(6))
    alu.io.a := a
    alu.io.b := b
    alu.io.op := op
    io.res := alu.io.res
    io.z := alu.io.z
    when (io.en) {
        when (io.switch === 0.U) { a := io.op }
        .elsewhen(io.switch === 1.U) { b := io.op }
        .elsewhen(io.switch === 2.U) { op := io.op(2,0) }
    }
}
object ALUDriver extends App {
  chisel3.Driver.execute(args, () => new ALU_test)
}
