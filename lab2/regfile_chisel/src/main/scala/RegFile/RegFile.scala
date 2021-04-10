package RegFile

import chisel3._
import chisel3.util._
import chisel3.experimental._
import scala.math._

// clk：时钟
// ra0, rd0：异步读端⼝0
// ra1, rd1：异步读端⼝1
// wa, wd, we：同步写端⼝

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
    val regf = RegInit(VecInit(Seq.fill(scala.math.pow(2,3).toInt)(0.U(w.W)))) // init a vector of register with 2^n zeros of width w 
    when(io.write_en) {
        regf(io.write_addr) := io.write_data
    }
    io.read_data1 := regf(io.read_addr1)
    io.read_data2 := regf(io.read_addr2)
}