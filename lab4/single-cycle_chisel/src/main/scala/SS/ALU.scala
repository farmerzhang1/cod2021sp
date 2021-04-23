package SingleCycle
import chisel3._
import chisel3.util._

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
