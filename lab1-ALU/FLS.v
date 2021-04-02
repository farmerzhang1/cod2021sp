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
`endif // RANDOMIZE_REG_INIT
  reg [6:0] prev; // @[FLS.scala 19:23]
  reg [6:0] current; // @[FLS.scala 20:26]
  wire [6:0] _current_T_1 = current + prev; // @[FLS.scala 26:28]
  wire [6:0] _prev_T_1 = current - prev; // @[FLS.scala 27:25]
  assign io_out = current; // @[FLS.scala 29:12]
  always @(posedge clock) begin
    if (reset) begin // @[FLS.scala 19:23]
      prev <= io_in; // @[FLS.scala 19:23]
    end else if (io_en) begin // @[FLS.scala 24:18]
      prev <= _prev_T_1; // @[FLS.scala 27:14]
    end
    if (io_en) begin // @[FLS.scala 24:18]
      current <= _current_T_1; // @[FLS.scala 26:17]
    end else begin
      current <= io_in; // @[FLS.scala 20:26]
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
  prev = _RAND_0[6:0];
  _RAND_1 = {1{`RANDOM}};
  current = _RAND_1[6:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
