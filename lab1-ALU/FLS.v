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
`endif // RANDOMIZE_REG_INIT
  wire [6:0] alu_io_a; // @[FLS.scala 22:21]
  wire [6:0] alu_io_b; // @[FLS.scala 22:21]
  wire [6:0] alu_io_res; // @[FLS.scala 22:21]
  reg [1:0] current_state; // @[FLS.scala 23:32]
  reg [6:0] prev; // @[FLS.scala 27:19]
  reg [6:0] current; // @[FLS.scala 28:22]
  wire  _T = 2'h0 == current_state; // @[Conditional.scala 37:30]
  wire  _T_1 = 2'h1 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_0 = io_en ? io_in : current; // @[FLS.scala 40:22 FLS.scala 41:21 FLS.scala 28:22]
  wire  _T_2 = 2'h2 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_2 = io_en ? current : prev; // @[FLS.scala 46:22 FLS.scala 48:18 FLS.scala 27:19]
  wire [1:0] _GEN_3 = io_en ? 2'h3 : current_state; // @[FLS.scala 46:22 FLS.scala 49:27 FLS.scala 23:32]
  wire  _T_3 = 2'h3 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_4 = io_en ? alu_io_res : current; // @[FLS.scala 53:22 FLS.scala 54:21 FLS.scala 28:22]
  ALU alu ( // @[FLS.scala 22:21]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_res(alu_io_res)
  );
  assign io_out = current; // @[FLS.scala 59:12]
  assign alu_io_a = prev; // @[FLS.scala 30:14]
  assign alu_io_b = current; // @[FLS.scala 31:14]
  always @(posedge clock) begin
    if (reset) begin // @[FLS.scala 23:32]
      current_state <= 2'h0; // @[FLS.scala 23:32]
    end else if (_T) begin // @[Conditional.scala 40:58]
      current_state <= 2'h1; // @[FLS.scala 37:23]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 40:22]
        current_state <= 2'h2; // @[FLS.scala 42:27]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      current_state <= _GEN_3;
    end
    if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (_T_2) begin // @[Conditional.scala 39:67]
          prev <= _GEN_2;
        end else if (_T_3) begin // @[Conditional.scala 39:67]
          prev <= _GEN_2;
        end
      end
    end
    if (_T) begin // @[Conditional.scala 40:58]
      current <= 7'h0; // @[FLS.scala 36:17]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      current <= _GEN_0;
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      current <= _GEN_0;
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      current <= _GEN_4;
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
  current_state = _RAND_0[1:0];
  _RAND_1 = {1{`RANDOM}};
  prev = _RAND_1[6:0];
  _RAND_2 = {1{`RANDOM}};
  current = _RAND_2[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
