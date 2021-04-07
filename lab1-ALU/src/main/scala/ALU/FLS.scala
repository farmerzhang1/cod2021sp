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
    // 我們還得顯式提供一個reset

    val s0::s1::s2::s3::Nil = Enum(4)
    val alu = Module(new ALU(7))
    val current_state = RegInit(s0)
    val d0 = Reg(UInt(7.W))
    val d1 = Reg(UInt(7.W))

    val prev = Reg(UInt(7.W))
    val current = Reg(UInt(7.W))

    alu.io.a := prev
    alu.io.b := current
    alu.io.op := 0.U

    switch (current_state) {
    is (s0) {
        current := 0.U
        current_state := s1
    }
    is (s1) {
        when (io.en) {
            current := io.in
            current_state := s2
        }
    }
    is (s2) {
        when (io.en) {
            current := io.in
            prev := current
            current_state := s3
        }
    }
    is (s3) {
        when (io.en) {
            current := alu.io.res
            prev := current
        }
    }
    }
    io.out := current
}

object FLSDriver extends App {
  chisel3.Driver.execute(args, () => new FLS)
}