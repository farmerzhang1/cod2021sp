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
  wire [6:0] alu_io_a; // @[FLS.scala 23:21]
  wire [6:0] alu_io_b; // @[FLS.scala 23:21]
  wire [6:0] alu_io_res; // @[FLS.scala 23:21]
  reg [2:0] current_state; // @[FLS.scala 24:49]
  reg [6:0] prev; // @[FLS.scala 26:40]
  reg [6:0] current; // @[FLS.scala 27:43]
  wire  _T = 3'h0 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_0 = io_en ? io_in : current; // @[FLS.scala 36:26 FLS.scala 37:25 FLS.scala 27:43]
  wire  _T_2 = 3'h1 == current_state; // @[Conditional.scala 37:30]
  wire  _T_3 = 3'h2 == current_state; // @[Conditional.scala 37:30]
  wire  _T_4 = ~io_en; // @[FLS.scala 49:15]
  wire [2:0] _GEN_5 = ~io_en ? 3'h3 : current_state; // @[FLS.scala 49:23 FLS.scala 50:27 FLS.scala 24:49]
  wire  _T_5 = 3'h3 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_6 = io_en ? current : prev; // @[FLS.scala 54:22 FLS.scala 56:18 FLS.scala 26:40]
  wire [2:0] _GEN_7 = io_en ? 3'h4 : current_state; // @[FLS.scala 54:22 FLS.scala 57:27 FLS.scala 24:49]
  wire  _T_6 = 3'h4 == current_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_8 = _T_4 ? 3'h5 : current_state; // @[FLS.scala 61:23 FLS.scala 62:27 FLS.scala 24:49]
  wire  _T_8 = 3'h5 == current_state; // @[Conditional.scala 37:30]
  wire [6:0] _GEN_9 = io_en ? alu_io_res : current; // @[FLS.scala 66:22 FLS.scala 67:21 FLS.scala 27:43]
  wire [2:0] _GEN_10 = io_en ? 3'h6 : current_state; // @[FLS.scala 66:22 FLS.scala 69:27 FLS.scala 24:49]
  wire  _T_9 = 3'h6 == current_state; // @[Conditional.scala 37:30]
  wire [2:0] _GEN_12 = _T_9 ? _GEN_8 : current_state; // @[Conditional.scala 39:67 FLS.scala 24:49]
  wire [6:0] _GEN_13 = _T_8 ? _GEN_9 : current; // @[Conditional.scala 39:67 FLS.scala 27:43]
  wire [6:0] _GEN_14 = _T_8 ? _GEN_6 : prev; // @[Conditional.scala 39:67 FLS.scala 26:40]
  wire [2:0] _GEN_15 = _T_8 ? _GEN_10 : _GEN_12; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_16 = _T_6 ? _GEN_8 : _GEN_15; // @[Conditional.scala 39:67]
  wire [6:0] _GEN_17 = _T_6 ? current : _GEN_13; // @[Conditional.scala 39:67 FLS.scala 27:43]
  wire [6:0] _GEN_18 = _T_6 ? prev : _GEN_14; // @[Conditional.scala 39:67 FLS.scala 26:40]
  wire [6:0] _GEN_19 = _T_5 ? _GEN_0 : _GEN_17; // @[Conditional.scala 39:67]
  wire [6:0] _GEN_20 = _T_5 ? _GEN_6 : _GEN_18; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_21 = _T_5 ? _GEN_7 : _GEN_16; // @[Conditional.scala 39:67]
  ALU alu ( // @[FLS.scala 23:21]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_res(alu_io_res)
  );
  assign io_out = current; // @[FLS.scala 78:12]
  assign alu_io_a = prev; // @[FLS.scala 29:14]
  assign alu_io_b = current; // @[FLS.scala 30:14]
  always @(posedge clock) begin
    if (reset) begin // @[FLS.scala 24:49]
      current_state <= 3'h0; // @[FLS.scala 24:49]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~reset) begin // @[FLS.scala 35:26]
        if (io_en) begin // @[FLS.scala 36:26]
          current_state <= 3'h2; // @[FLS.scala 38:31]
        end else begin
          current_state <= 3'h1; // @[FLS.scala 39:41]
        end
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      if (io_en) begin // @[FLS.scala 43:22]
        current_state <= 3'h2; // @[FLS.scala 45:27]
      end
    end else if (_T_3) begin // @[Conditional.scala 39:67]
      current_state <= _GEN_5;
    end else begin
      current_state <= _GEN_21;
    end
    if (reset) begin // @[FLS.scala 26:40]
      prev <= 7'h0; // @[FLS.scala 26:40]
    end else if (!(_T)) begin // @[Conditional.scala 40:58]
      if (!(_T_2)) begin // @[Conditional.scala 39:67]
        if (!(_T_3)) begin // @[Conditional.scala 39:67]
          prev <= _GEN_20;
        end
      end
    end
    if (reset) begin // @[FLS.scala 27:43]
      current <= 7'h0; // @[FLS.scala 27:43]
    end else if (_T) begin // @[Conditional.scala 40:58]
      if (~reset) begin // @[FLS.scala 35:26]
        current <= _GEN_0;
      end
    end else if (_T_2) begin // @[Conditional.scala 39:67]
      current <= _GEN_0;
    end else if (!(_T_3)) begin // @[Conditional.scala 39:67]
      current <= _GEN_19;
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
