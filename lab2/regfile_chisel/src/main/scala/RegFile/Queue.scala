package RegFile

import chisel3._
import chisel3.util._
import chisel3.experimental._

// deq, enq：出/⼊队列使能 (互斥)，⼀次有效仅允许操作⼀项数据
// out, in：出/⼊队列数据
// full, emp：队列满/空，满/空时忽略⼊/出队操作
// an, seg：数码管控制信号，显⽰队列状态


class Queue extends Module {
    val io = IO (new Bundle {
        val deq = Input(Bool())
        val enq = Input(Bool()) // deq and enq are mutually exclusive -- !(enq && deq)
        val in = Input(UInt(4.W))
        val out = Output(UInt(4.W)) // deque element
        val full = Output(Bool())
        val empty = Output(Bool())
        val an = Output(UInt(3.W)) // we have 2^3 displays
        val seg = Output(UInt(4.W))
    })
    val an_reg = Reg(UInt(3.W)) // because chisel can't have regs at its interface like verilog, so, a workaround
    val seg_reg = Reg(UInt(4.W))
    val enq_pulse = Wire(Bool()) // one-cycle pulse
    val deq_pulse = Wire(Bool())
    val hexplay_count = Reg(UInt(32.W)) // utility for generating lower frequency clock (?
    val head = RegInit(0.U(3.W))
    val tail = RegInit(0.U(3.W)) // head and tail are initially 0
    val regf = Module(new RegFile(3)(4)) // regfile of size 8*3
    val valids = RegInit(VecInit(Seq.fill(8)(false.B))) // a vector of validity of queue elements, initially false
    io.an := an_reg
    io.seg := seg_reg
    enq_pulse := RegNext(RegNext(io.enq)) && !io.enq //两级同步？
    deq_pulse := RegNext(RegNext(io.deq)) && !io.deq
    regf.io.read_addr1 := head
    regf.io.read_addr2 := an_reg
    regf.io.write_addr := tail
    regf.io.write_en := enq_pulse // tabnine is smart!
    regf.io.write_data := io.in
    when (enq_pulse) {
        valids(tail) := true.B
        tail := tail+1.U // when tail gets 7, it adds to 0, so the queue is circular queue!
    }
    when (deq_pulse) {
        valids(head) := false.B
        head := head+1.U }
    io.full := valids.reduce (_&&_)
    io.empty := valids.reduce {(x, y) => !x && !y}
    io.out := regf.io.read_data1

    hexplay_count := Mux(hexplay_count >= (2000000/8).U, 0.U, hexplay_count + 1.U)
    an_reg := Mux(hexplay_count === 0.U, an_reg + 1.U, an_reg)
    seg_reg := Mux(valids(an_reg), regf.io.read_data2, 0.U) // if invalid, zero (so don't input zero!)
}