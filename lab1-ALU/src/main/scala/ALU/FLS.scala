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
// we should use finite state machines
// (enums
class FLS extends Module {
    val io = IO (new Bundle {
        val en = Input (Bool())
        val in = Input (UInt(7.W))
        val out = Output (UInt(7.W))
    })
    val s0::sn::Nil = Enum(2)
    val alu = Module(new ALU(7))
    val current_state = RegInit(s0)
    val d0 = RegInit(io.in)
    val d1 = RegNext(d0)

    val prev = Reg(UInt(7.W))
    val current = Reg(UInt(7.W))

    alu.io.a := prev
    alu.io.b := current
    alu.io.op := 0.U

    switch (current_state) {
    is (s0) {
        prev := d0
        current := d1
        current_state := sn
    }
    is (sn) {
        when (io.en) {
            current := alu.io.res
            prev := current
        }
    }
    }
    io.out := prev
}

object FLSDriver extends App {
  chisel3.Driver.execute(args, () => new FLS)
}