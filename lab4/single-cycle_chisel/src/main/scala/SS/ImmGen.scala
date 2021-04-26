package SingleCycle
import chisel3._

class ImmGen extends Module {
    val io = IO (new Bundle {
        val inst = Input(UInt(32.W))
        val imm = Output(UInt(32.W)) // seems like we need to sign-extend
    })
}