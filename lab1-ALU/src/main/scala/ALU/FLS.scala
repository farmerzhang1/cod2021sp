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
    val S0::SN::Nil = Enum(2)
    val alu = Module(new ALU(7))
    val current_state = WireDefault(S0)
    switch (current_state) {
    is (S0) {
        
    }
    }

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