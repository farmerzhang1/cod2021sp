circuit ALU :
  module ALU :
    input clock : Clock
    input reset : UInt<1>
    input io_a : UInt<32>
    input io_b : UInt<32>
    input io_op : UInt<3>
    output io_res : UInt<32>
    output io_z : UInt<1>

    node _io_res_T = add(io_a, io_b) @[ALU.scala 27:22]
    node _io_res_T_1 = tail(_io_res_T, 1) @[ALU.scala 27:22]
    node _io_res_T_2 = sub(io_a, io_b) @[ALU.scala 28:22]
    node _io_res_T_3 = tail(_io_res_T_2, 1) @[ALU.scala 28:22]
    node _io_res_T_4 = and(io_a, io_b) @[ALU.scala 29:22]
    node _io_res_T_5 = or(io_a, io_b) @[ALU.scala 30:22]
    node _io_res_T_6 = xor(io_a, io_b) @[ALU.scala 31:22]
    node _io_res_T_7 = eq(UInt<1>("h0"), io_op) @[Mux.scala 80:60]
    node _io_res_T_8 = mux(_io_res_T_7, _io_res_T_1, UInt<1>("h0")) @[Mux.scala 80:57]
    node _io_res_T_9 = eq(UInt<1>("h1"), io_op) @[Mux.scala 80:60]
    node _io_res_T_10 = mux(_io_res_T_9, _io_res_T_3, _io_res_T_8) @[Mux.scala 80:57]
    node _io_res_T_11 = eq(UInt<2>("h2"), io_op) @[Mux.scala 80:60]
    node _io_res_T_12 = mux(_io_res_T_11, _io_res_T_4, _io_res_T_10) @[Mux.scala 80:57]
    node _io_res_T_13 = eq(UInt<2>("h3"), io_op) @[Mux.scala 80:60]
    node _io_res_T_14 = mux(_io_res_T_13, _io_res_T_5, _io_res_T_12) @[Mux.scala 80:57]
    node _io_res_T_15 = eq(UInt<3>("h4"), io_op) @[Mux.scala 80:60]
    node _io_res_T_16 = mux(_io_res_T_15, _io_res_T_6, _io_res_T_14) @[Mux.scala 80:57]
    node _io_z_T = eq(io_res, UInt<1>("h0")) @[ALU.scala 33:20]
    io_res <= _io_res_T_16 @[ALU.scala 26:12]
    io_z <= _io_z_T @[ALU.scala 33:10]
