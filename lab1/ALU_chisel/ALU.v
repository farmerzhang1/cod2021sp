module ALU(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [2:0]  io_op,
  output [31:0] io_res,
  output        io_z
);
  wire [31:0] _io_res_T_1 = io_a + io_b; // @[ALU.scala 27:22]
  wire [31:0] _io_res_T_3 = io_a - io_b; // @[ALU.scala 28:22]
  wire [31:0] _io_res_T_4 = io_a & io_b; // @[ALU.scala 29:22]
  wire [31:0] _io_res_T_5 = io_a | io_b; // @[ALU.scala 30:22]
  wire [31:0] _io_res_T_6 = io_a ^ io_b; // @[ALU.scala 31:22]
  wire [31:0] _io_res_T_8 = 3'h0 == io_op ? _io_res_T_1 : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_10 = 3'h1 == io_op ? _io_res_T_3 : _io_res_T_8; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_12 = 3'h2 == io_op ? _io_res_T_4 : _io_res_T_10; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_14 = 3'h3 == io_op ? _io_res_T_5 : _io_res_T_12; // @[Mux.scala 80:57]
  assign io_res = 3'h4 == io_op ? _io_res_T_6 : _io_res_T_14; // @[Mux.scala 80:57]
  assign io_z = io_res == 32'h0; // @[ALU.scala 33:20]
endmodule
