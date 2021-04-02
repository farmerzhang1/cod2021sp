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
    
    inst alu of ALU @[FLS.scala 20:21]
    alu.clock <= clock
    alu.reset <= reset
    reg current_state : UInt<1>, clock with : (reset => (reset, UInt<1>("h00"))) @[FLS.scala 21:32]
    reg d0 : UInt, clock with : (reset => (reset, io.in)) @[FLS.scala 22:21]
    reg d1 : UInt, clock @[FLS.scala 23:21]
    d1 <= io.in @[FLS.scala 23:21]
    reg prev : UInt<7>, clock @[FLS.scala 25:19]
    reg current : UInt<7>, clock @[FLS.scala 26:22]
    alu.io.a <= prev @[FLS.scala 28:14]
    alu.io.b <= current @[FLS.scala 29:14]
    alu.io.op <= UInt<1>("h00") @[FLS.scala 30:15]
    node _T = eq(UInt<1>("h00"), current_state) @[Conditional.scala 37:30]
    when _T : @[Conditional.scala 40:58]
      prev <= d0 @[FLS.scala 34:14]
      current <= d1 @[FLS.scala 35:17]
      current_state <= UInt<1>("h01") @[FLS.scala 36:23]
      skip @[Conditional.scala 40:58]
    else : @[Conditional.scala 39:67]
      node _T_1 = eq(UInt<1>("h01"), current_state) @[Conditional.scala 37:30]
      when _T_1 : @[Conditional.scala 39:67]
        when io.en : @[FLS.scala 39:22]
          current <= alu.io.res @[FLS.scala 40:21]
          prev <= current @[FLS.scala 41:18]
          skip @[FLS.scala 39:22]
        skip @[Conditional.scala 39:67]
    io.out <= prev @[FLS.scala 45:12]
    
