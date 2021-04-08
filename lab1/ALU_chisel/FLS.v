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
  reg [2:0] current_state; // @[FLS.scala 23:32]
  reg [6:0] prev; // @[FLS.scala 25:23]
  reg [6:0] current; // @[FLS.scala 26:26]
  wire  _T = 3'h0 == current_state; // @[Conditional.scala 37:30]
  wire  _T_1 = 3'h1 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_0 = io_en ? io_in : current; // @[FLS.scala 38:22 FLS.scala 39:21 FLS.scala 26:26]
  wire  _T_2 = 3'h2 == current_state; // @[Conditional.scala 37:30]
  wire  _T_3 = ~io_en; // @[FLS.scala 44:15]
  wire [2:0] _GEN_2 = ~io_en ? 3'h3 : current_state; // @[FLS.scala 44:23 FLS.scala 45:27 FLS.scala 23:32]
  wire  _T_4 = 3'h3 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_3 = io_en ? current : prev; // @[FLS.scala 49:22 FLS.scala 51:18 FLS.scala 25:23]
  wire [2:0] _GEN_4 = io_en ? 3'h4 : current_state; // @[FLS.scala 49:22 FLS.scala 52:27 FLS.scala 23:32]
  wire  _T_5 = 3'h4 == current_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_5 = _T_3 ? 3'h5 : current_state; // @[FLS.scala 56:23 FLS.scala 57:27 FLS.scala 23:32]
  wire  _T_7 = 3'h5 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_6 = io_en ? alu_io_res : current; // @[FLS.scala 61:22 FLS.scala 62:21 FLS.scala 26:26]
  wire [2:0] _GEN_7 = io_en ? 3'h6 : current_state; // @[FLS.scala 61:22 FLS.scala 64:27 FLS.scala 23:32]
  wire  _T_8 = 3'h6 == current_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_9 = _T_8 ? _GEN_5 : current_state; // @[Conditional.scala 39:67 FLS.scala 23:32]
  wire [6:0] _GEN_10 = _T_7 ? _GEN_6 : current; // @[Conditional.scala 39:67 FLS.scala 26:26]
  wire [6:0] _GEN_11 = _T_7 ? _GEN_3 : prev; // @[Conditional.scala 39:67 FLS.scala 25:23]
  wire [2:0] _GEN_12 = _T_7 ? _GEN_7 : _GEN_9; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_13 = _T_5 ? _GEN_5 : _GEN_12; // @[Conditional.scala 39:67]
  wire [6:0] _GEN_14 = _T_5 ? current : _GEN_10; // @[Conditional.scala 39:67 FLS.scala 26:26]
  wire [6:0] _GEN_15 = _T_5 ? prev : _GEN_11; // @[Conditional.scala 39:67 FLS.scala 25:23]
  wire [6:0] _GEN_16 = _T_4 ? _GEN_0 : _GEN_14; // @[Conditional.scala 39:67]
  wire [6:0] _GEN_17 = _T_4 ? _GEN_3 : _GEN_15; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_18 = _T_4 ? _GEN_4 : _GEN_13; // @[Conditional.scala 39:67]
  ALU alu ( // @[FLS.scala 22:21]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_res(alu_io_res)
  );
  assign io_out = current; // @[FLS.scala 73:12]
  assign alu_io_a = prev; // @[FLS.scala 28:14]
  assign alu_io_b = current; // @[FLS.scala 29:14]
  always @(posedge clock) begin
    if (reset) begin // @[FLS.scala 23:32]
      current_state <= 3'h0; // @[FLS.scala 23:32]
    end else if (_T) begin // @[Conditional.scala 40:58]
      current_state <= 3'h1; // @[FLS.scala 35:23]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 38:22]
        current_state <= 3'h2; // @[FLS.scala 40:27]
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      current_state <= _GEN_2;
    end else begin
      current_state <= _GEN_18;
    end
    if (reset) begin // @[FLS.scala 25:23]
      prev <= 7'h0; // @[FLS.scala 25:23]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_1)) begin // @[Conditional.scala 39:67]
        if (!(_T_2)) begin // @[Conditional.scala 39:67]
          prev <= _GEN_17;
        end
      end
    end
    if (reset) begin // @[FLS.scala 26:26]
      current <= 7'h0; // @[FLS.scala 26:26]
    end else if (_T) begin // @[Conditional.scala 40:58]
      current <= 7'h0; // @[FLS.scala 34:17]
    end else if (_T_1) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 38:22]
        current <= io_in; // @[FLS.scala 39:21]
      end
    end else if (!(_T_2)) begin // @[Conditional.scala 39:67]
      current <= _GEN_16;
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
  current_state = _RAND_0[2:0];
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
