package SingleCycle
import chisel3._

class RegFile (val n : Int) (val w : Int) extends Module {
    val io = IO (new Bundle {
        val read_addr1 = Input(UInt(n.W))
        val read_addr2 = Input(UInt(n.W))
        val write_addr = Input(UInt(n.W))
        val write_en   = Input(Bool())
        val write_data = Input(UInt(w.W))
        val read_data1 = Output(UInt(w.W))
        val read_data2 = Output(UInt(w.W))
    })
    // val regf = Wire(Vec(2^n, UInt(w.W)))
    val regf = RegInit(VecInit(Seq.fill(scala.math.pow(2,n).toInt)(0.U(w.W)))) // init a vector of register with 2^n zeros of width w 
    when(io.write_en && io.write_addr =/= 0.U) { // x0 is not writable
        regf(io.write_addr) := io.write_data
    }
    io.read_data1 := regf(io.read_addr1)
    io.read_data2 := regf(io.read_addr2)
}
