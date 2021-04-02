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
    val alu = Module(new ALU(7))
    val d0 = RegInit(io.in)
    val d1 = RegNext(io.in)
    val f0 = RegInit // TODO
    alu.io.a := prev
    alu.io.b := current
    alu.io.op := 0.U
    when (io.en) {
        io.out := current
        current := current + prev
        prev := current - prev
    } // TODO
    io.out := current

}

object FLSDriver extends App {
  chisel3.Driver.execute(args, () => new FLS)
}