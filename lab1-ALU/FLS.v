module ALU(
  input  [6:0] io_a,
  input  [6:0] io_b,
  output [6:0] io_res
);
  assign io_res = io_a + io_b; // @[ALU.scala 27:22]
endmodule
module FLS(
  input        clock,
  input        reset,
  input        io_en,
  input  [6:0] io_in,
  output [6:0] io_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  wire [6:0] alu_io_a; // @[FLS.scala 20:21]
  wire [6:0] alu_io_b; // @[FLS.scala 20:21]
  wire [6:0] alu_io_res; // @[FLS.scala 20:21]
  reg  current_state; // @[FLS.scala 21:32]
  reg [6:0] d0; // @[FLS.scala 22:21]
  reg [6:0] d1; // @[FLS.scala 23:21]
  reg [6:0] prev; // @[FLS.scala 25:19]
  reg [6:0] current; // @[FLS.scala 26:22]
  wire  _T = ~current_state; // @[Conditional.scala 37:30]
  wire  _GEN_6 = _T | current_state; // @[Conditional.scala 40:58 FLS.scala 36:23 FLS.scala 21:32]
  ALU alu ( // @[FLS.scala 20:21]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_res(alu_io_res)
  );
  assign io_out = prev; // @[FLS.scala 45:12]
  assign alu_io_a = prev; // @[FLS.scala 28:14]
  assign alu_io_b = current; // @[FLS.scala 29:14]
  always @(posedge clock) begin
    if (reset) begin // @[FLS.scala 21:32]
      current_state <= 1'h0; // @[FLS.scala 21:32]
    end else begin
      current_state <= _GEN_6;
    end
    if (reset) begin // @[FLS.scala 22:21]
      d0 <= io_in; // @[FLS.scala 22:21]
    end
    d1 <= d0; // @[FLS.scala 23:21]
    if (_T) begin // @[Conditional.scala 40:58]
      prev <= d0; // @[FLS.scala 34:14]
    end else if (current_state) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 39:22]
        prev <= current; // @[FLS.scala 41:18]
      end
    end
    if (_T) begin // @[Conditional.scala 40:58]
      current <= d1; // @[FLS.scala 35:17]
    end else if (current_state) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 39:22]
        current <= alu_io_res; // @[FLS.scala 40:21]
      end
    end
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
  current_state = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  d0 = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  d1 = _RAND_2[6:0];
  _RAND_3 = {1{`RANDOM}};
  prev = _RAND_3[6:0];
  _RAND_4 = {1{`RANDOM}};
  current = _RAND_4[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
