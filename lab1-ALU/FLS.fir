;buildInfoPackage: chisel3, version: 3.4.2, scalaVersion: 2.12.12, sbtVersion: 1.3.10
circuit FLS : 
  module ALU : 
    input clock : Clock
    input reset : Reset
    output io : {flip a : UInt<7>, flip b : UInt<7>, flip op : UInt<3>, res : UInt<7>, z : UInt<1>}
    
    node _io_res_T = add(io.a, io.b) @[ALU.scala 27:22]
    node _io_res_T_1 = tail(_io_res_T, 1) @[ALU.scala 27:22]
    node _io_res_T_2 = sub(io.a, io.b) @[ALU.scala 28:22]
    node _io_res_T_3 = tail(_io_res_T_2, 1) @[ALU.scala 28:22]
    node _io_res_T_4 = and(io.a, io.b) @[ALU.scala 29:22]
    node _io_res_T_5 = or(io.a, io.b) @[ALU.scala 30:22]
    node _io_res_T_6 = xor(io.a, io.b) @[ALU.scala 31:22]
    node _io_res_T_7 = eq(UInt<1>("h00"), io.op) @[Mux.scala 80:60]
    node _io_res_T_8 = mux(_io_res_T_7, _io_res_T_1, UInt<1>("h00")) @[Mux.scala 80:57]
    node _io_res_T_9 = eq(UInt<1>("h01"), io.op) @[Mux.scala 80:60]
    node _io_res_T_10 = mux(_io_res_T_9, _io_res_T_3, _io_res_T_8) @[Mux.scala 80:57]
    node _io_res_T_11 = eq(UInt<2>("h02"), io.op) @[Mux.scala 80:60]
    node _io_res_T_12 = mux(_io_res_T_11, _io_res_T_4, _io_res_T_10) @[Mux.scala 80:57]
    node _io_res_T_13 = eq(UInt<2>("h03"), io.op) @[Mux.scala 80:60]
    node _io_res_T_14 = mux(_io_res_T_13, _io_res_T_5, _io_res_T_12) @[Mux.scala 80:57]
    node _io_res_T_15 = eq(UInt<3>("h04"), io.op) @[Mux.scala 80:60]
    node _io_res_T_16 = mux(_io_res_T_15, _io_res_T_6, _io_res_T_14) @[Mux.scala 80:57]
    io.res <= _io_res_T_16 @[ALU.scala 26:12]
    node _io_z_T = eq(io.res, UInt<1>("h00")) @[ALU.scala 33:20]
    io.z <= _io_z_T @[ALU.scala 33:10]
    
  module FLS : 
    input clock : Clock
    input reset : UInt<1>
    output io : {flip en : UInt<1>, flip in : UInt<7>, out : UInt<7>}
    
    inst alu of ALU @[FLS.scala 18:21]
    alu.clock <= clock
    alu.reset <= reset
    reg prev : UInt, clock with : (reset => (reset, io.in)) @[FLS.scala 19:23]
    reg current : UInt, clock @[FLS.scala 20:26]
    current <= io.in @[FLS.scala 20:26]
    alu.io.a <= prev @[FLS.scala 21:14]
    alu.io.b <= current @[FLS.scala 22:14]
    alu.io.op <= UInt<1>("h00") @[FLS.scala 23:15]
    when io.en : @[FLS.scala 24:18]
      io.out <= current @[FLS.scala 25:16]
      node _current_T = add(current, prev) @[FLS.scala 26:28]
      node _current_T_1 = tail(_current_T, 1) @[FLS.scala 26:28]
      current <= _current_T_1 @[FLS.scala 26:17]
      node _prev_T = sub(current, prev) @[FLS.scala 27:25]
      node _prev_T_1 = tail(_prev_T, 1) @[FLS.scala 27:25]
      prev <= _prev_T_1 @[FLS.scala 27:14]
      skip @[FLS.scala 24:18]
    io.out <= current @[FLS.scala 29:12]
    
