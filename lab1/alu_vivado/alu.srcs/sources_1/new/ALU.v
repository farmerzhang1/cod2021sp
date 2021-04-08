`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 03.04.2021 00:50:28
// Design Name:
// Module Name: alu
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

module ALU(
  input  [5:0] io_a,
  input  [5:0] io_b,
  input  [2:0] io_op,
  output [5:0] io_res,
  output       io_z
);
  wire [5:0] _io_res_T_1 = io_a + io_b; // @[ALU.scala 27:22]
  wire [5:0] _io_res_T_3 = io_a - io_b; // @[ALU.scala 28:22]
  wire [5:0] _io_res_T_4 = io_a & io_b; // @[ALU.scala 29:22]
  wire [5:0] _io_res_T_5 = io_a | io_b; // @[ALU.scala 30:22]
  wire [5:0] _io_res_T_6 = io_a ^ io_b; // @[ALU.scala 31:22]
  wire [5:0] _io_res_T_8 = 3'h0 == io_op ? _io_res_T_1 : 6'h0; // @[Mux.scala 80:57]
  wire [5:0] _io_res_T_10 = 3'h1 == io_op ? _io_res_T_3 : _io_res_T_8; // @[Mux.scala 80:57]
  wire [5:0] _io_res_T_12 = 3'h2 == io_op ? _io_res_T_4 : _io_res_T_10; // @[Mux.scala 80:57]
  wire [5:0] _io_res_T_14 = 3'h3 == io_op ? _io_res_T_5 : _io_res_T_12; // @[Mux.scala 80:57]
  assign io_res = 3'h4 == io_op ? _io_res_T_6 : _io_res_T_14; // @[Mux.scala 80:57]
  assign io_z = io_res == 6'h0; // @[ALU.scala 33:20]
endmodule
module ALU_test(
  input        clock,
  input  [5:0] io_op,
  input  [1:0] io_switch,
  input        io_en,
  output [5:0] io_led5_0,
  output       io_led7
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire [5:0] alu_io_a; // @[ALU.scala 53:21]
  wire [5:0] alu_io_b; // @[ALU.scala 53:21]
  wire [2:0] alu_io_op; // @[ALU.scala 53:21]
  wire [5:0] alu_io_res; // @[ALU.scala 53:21]
  wire  alu_io_z; // @[ALU.scala 53:21]
  reg [5:0] a; // @[ALU.scala 48:16]
  reg [5:0] b; // @[ALU.scala 49:16]
  reg [2:0] op; // @[ALU.scala 50:17]
  reg [5:0] res; // @[ALU.scala 51:18]
  reg  z; // @[ALU.scala 52:16]
  ALU alu ( // @[ALU.scala 53:21]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_op(alu_io_op),
    .io_res(alu_io_res),
    .io_z(alu_io_z)
  );
  assign io_led5_0 = res; // @[ALU.scala 59:15]
  assign io_led7 = z; // @[ALU.scala 60:13]
  assign alu_io_a = a; // @[ALU.scala 54:14]
  assign alu_io_b = b; // @[ALU.scala 55:14]
  assign alu_io_op = op; // @[ALU.scala 56:15]
  always @(posedge clock) begin
    if (io_en) begin // @[ALU.scala 61:18]
      if (io_switch == 2'h0) begin // @[ALU.scala 62:34]
        a <= io_op; // @[ALU.scala 62:38]
      end
    end
    if (io_en) begin // @[ALU.scala 61:18]
      if (!(io_switch == 2'h0)) begin // @[ALU.scala 62:34]
        if (io_switch == 2'h1) begin // @[ALU.scala 63:38]
          b <= io_op; // @[ALU.scala 63:42]
        end
      end
    end
    if (io_en) begin // @[ALU.scala 61:18]
      if (!(io_switch == 2'h0)) begin // @[ALU.scala 62:34]
        if (!(io_switch == 2'h1)) begin // @[ALU.scala 63:38]
          if (io_switch == 2'h2) begin // @[ALU.scala 64:38]
            op <= io_op[2:0]; // @[ALU.scala 64:43]
          end
        end
      end
    end
    res <= alu_io_res; // @[ALU.scala 57:9]
    z <= alu_io_z; // @[ALU.scala 58:7]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  a = _RAND_0[5:0];
  _RAND_1 = {1{`RANDOM}};
  b = _RAND_1[5:0];
  _RAND_2 = {1{`RANDOM}};
  op = _RAND_2[2:0];
  _RAND_3 = {1{`RANDOM}};
  res = _RAND_3[5:0];
  _RAND_4 = {1{`RANDOM}};
  z = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
