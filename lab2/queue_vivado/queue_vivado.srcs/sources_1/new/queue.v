`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/14/2021 11:02:07 AM
// Design Name:
// Module Name: queue
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

module RegFile(
  input        clock,
  input        reset,
  input  [2:0] io_read_addr1,
  input  [2:0] io_read_addr2,
  input  [2:0] io_write_addr,
  input        io_write_en,
  input  [3:0] io_write_data,
  output [3:0] io_read_data1,
  output [3:0] io_read_data2
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] regf_0; // @[RegFile.scala 23:23]
  reg [3:0] regf_1; // @[RegFile.scala 23:23]
  reg [3:0] regf_2; // @[RegFile.scala 23:23]
  reg [3:0] regf_3; // @[RegFile.scala 23:23]
  reg [3:0] regf_4; // @[RegFile.scala 23:23]
  reg [3:0] regf_5; // @[RegFile.scala 23:23]
  reg [3:0] regf_6; // @[RegFile.scala 23:23]
  reg [3:0] regf_7; // @[RegFile.scala 23:23]
  wire [3:0] _GEN_17 = 3'h1 == io_read_addr1 ? regf_1 : regf_0; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_18 = 3'h2 == io_read_addr1 ? regf_2 : _GEN_17; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_19 = 3'h3 == io_read_addr1 ? regf_3 : _GEN_18; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_20 = 3'h4 == io_read_addr1 ? regf_4 : _GEN_19; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_21 = 3'h5 == io_read_addr1 ? regf_5 : _GEN_20; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_22 = 3'h6 == io_read_addr1 ? regf_6 : _GEN_21; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_25 = 3'h1 == io_read_addr2 ? regf_1 : regf_0; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_26 = 3'h2 == io_read_addr2 ? regf_2 : _GEN_25; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_27 = 3'h3 == io_read_addr2 ? regf_3 : _GEN_26; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_28 = 3'h4 == io_read_addr2 ? regf_4 : _GEN_27; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_29 = 3'h5 == io_read_addr2 ? regf_5 : _GEN_28; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_30 = 3'h6 == io_read_addr2 ? regf_6 : _GEN_29; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  assign io_read_data1 = 3'h7 == io_read_addr1 ? regf_7 : _GEN_22; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  assign io_read_data2 = 3'h7 == io_read_addr2 ? regf_7 : _GEN_30; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 23:23]
      regf_0 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h0 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_0 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_1 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h1 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_1 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_2 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h2 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_2 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_3 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h3 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_3 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_4 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h4 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_4 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_5 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h5 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_5 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_6 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h6 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_6 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_7 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (3'h7 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_7 <= io_write_data; // @[RegFile.scala 25:29]
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
  regf_0 = _RAND_0[3:0];
  _RAND_1 = {1{`RANDOM}};
  regf_1 = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  regf_2 = _RAND_2[3:0];
  _RAND_3 = {1{`RANDOM}};
  regf_3 = _RAND_3[3:0];
  _RAND_4 = {1{`RANDOM}};
  regf_4 = _RAND_4[3:0];
  _RAND_5 = {1{`RANDOM}};
  regf_5 = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  regf_6 = _RAND_6[3:0];
  _RAND_7 = {1{`RANDOM}};
  regf_7 = _RAND_7[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue(
  input        clock,
  input        reset,
  input        io_deq,
  input        io_enq,
  input  [3:0] io_in,
  output [3:0] io_out,
  output       io_full,
  output       io_empty,
  output [2:0] io_an,
  output [3:0] io_seg
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
`endif // RANDOMIZE_REG_INIT
  wire  regf_clock; // @[Queue.scala 33:22]
  wire  regf_reset; // @[Queue.scala 33:22]
  wire [2:0] regf_io_read_addr1; // @[Queue.scala 33:22]
  wire [2:0] regf_io_read_addr2; // @[Queue.scala 33:22]
  wire [2:0] regf_io_write_addr; // @[Queue.scala 33:22]
  wire  regf_io_write_en; // @[Queue.scala 33:22]
  wire [3:0] regf_io_write_data; // @[Queue.scala 33:22]
  wire [3:0] regf_io_read_data1; // @[Queue.scala 33:22]
  wire [3:0] regf_io_read_data2; // @[Queue.scala 33:22]
  reg [2:0] an_reg; // @[Queue.scala 24:21]
  reg [3:0] seg_reg; // @[Queue.scala 25:22]
  reg  enq_delay2_REG; // @[Queue.scala 26:37]
  reg  enq_delay2; // @[Queue.scala 26:29]
  reg  deq_delay2_REG; // @[Queue.scala 27:37]
  reg  deq_delay2; // @[Queue.scala 27:29]
  reg [31:0] hexplay_count; // @[Queue.scala 30:28]
  reg [2:0] head; // @[Queue.scala 31:23]
  reg [2:0] tail; // @[Queue.scala 32:23]
  reg  valids_0; // @[Queue.scala 34:25]
  reg  valids_1; // @[Queue.scala 34:25]
  reg  valids_2; // @[Queue.scala 34:25]
  reg  valids_3; // @[Queue.scala 34:25]
  reg  valids_4; // @[Queue.scala 34:25]
  reg  valids_5; // @[Queue.scala 34:25]
  reg  valids_6; // @[Queue.scala 34:25]
  reg  valids_7; // @[Queue.scala 34:25]
  reg  enq_pulse_REG; // @[Queue.scala 37:40]
  wire  enq_pulse = enq_delay2 & ~enq_pulse_REG; // @[Queue.scala 37:29]
  reg  deq_pulse_REG; // @[Queue.scala 38:40]
  wire  deq_pulse = deq_delay2 & ~deq_pulse_REG; // @[Queue.scala 38:29]
  wire  _GEN_0 = 3'h0 == tail | valids_0; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_1 = 3'h1 == tail | valids_1; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_2 = 3'h2 == tail | valids_2; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_3 = 3'h3 == tail | valids_3; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_4 = 3'h4 == tail | valids_4; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_5 = 3'h5 == tail | valids_5; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_6 = 3'h6 == tail | valids_6; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire  _GEN_7 = 3'h7 == tail | valids_7; // @[Queue.scala 45:22 Queue.scala 45:22 Queue.scala 34:25]
  wire [2:0] _tail_T_1 = tail + 3'h1; // @[Queue.scala 46:21]
  wire  _GEN_8 = enq_pulse ? _GEN_0 : valids_0; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_9 = enq_pulse ? _GEN_1 : valids_1; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_10 = enq_pulse ? _GEN_2 : valids_2; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_11 = enq_pulse ? _GEN_3 : valids_3; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_12 = enq_pulse ? _GEN_4 : valids_4; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_13 = enq_pulse ? _GEN_5 : valids_5; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_14 = enq_pulse ? _GEN_6 : valids_6; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire  _GEN_15 = enq_pulse ? _GEN_7 : valids_7; // @[Queue.scala 44:22 Queue.scala 34:25]
  wire [2:0] _head_T_1 = head + 3'h1; // @[Queue.scala 50:21]
  wire [31:0] _hexplay_count_T_2 = hexplay_count + 32'h1; // @[Queue.scala 55:77]
  wire [2:0] _an_reg_T_2 = an_reg + 3'h1; // @[Queue.scala 56:49]
  wire  _GEN_35 = 3'h1 == an_reg ? valids_1 : valids_0; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_36 = 3'h2 == an_reg ? valids_2 : _GEN_35; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_37 = 3'h3 == an_reg ? valids_3 : _GEN_36; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_38 = 3'h4 == an_reg ? valids_4 : _GEN_37; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_39 = 3'h5 == an_reg ? valids_5 : _GEN_38; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_40 = 3'h6 == an_reg ? valids_6 : _GEN_39; // @[Queue.scala 57:19 Queue.scala 57:19]
  wire  _GEN_41 = 3'h7 == an_reg ? valids_7 : _GEN_40; // @[Queue.scala 57:19 Queue.scala 57:19]
  RegFile regf ( // @[Queue.scala 33:22]
    .clock(regf_clock),
    .reset(regf_reset),
    .io_read_addr1(regf_io_read_addr1),
    .io_read_addr2(regf_io_read_addr2),
    .io_write_addr(regf_io_write_addr),
    .io_write_en(regf_io_write_en),
    .io_write_data(regf_io_write_data),
    .io_read_data1(regf_io_read_data1),
    .io_read_data2(regf_io_read_data2)
  );
  assign io_out = regf_io_read_data1; // @[Queue.scala 53:12]
  assign io_full = valids_0 & valids_1 & valids_2 & valids_3 & valids_4 & valids_5 & valids_6 & valids_7; // @[Queue.scala 51:32]
  assign io_empty = ~(~(~(~(~(~(~valids_0 & ~valids_1) & ~valids_2) & ~valids_3) & ~valids_4) & ~valids_5) & ~valids_6)
     & ~valids_7; // @[Queue.scala 52:45]
  assign io_an = an_reg; // @[Queue.scala 35:11]
  assign io_seg = seg_reg; // @[Queue.scala 36:12]
  assign regf_clock = clock;
  assign regf_reset = reset;
  assign regf_io_read_addr1 = head; // @[Queue.scala 39:24]
  assign regf_io_read_addr2 = an_reg; // @[Queue.scala 40:24]
  assign regf_io_write_addr = tail; // @[Queue.scala 41:24]
  assign regf_io_write_en = enq_delay2 & ~enq_pulse_REG; // @[Queue.scala 37:29]
  assign regf_io_write_data = io_in; // @[Queue.scala 43:24]
  always @(posedge clock) begin
    if (hexplay_count == 32'h0) begin // @[Queue.scala 56:18]
      an_reg <= _an_reg_T_2;
    end
    if (_GEN_41) begin // @[Queue.scala 57:19]
      seg_reg <= regf_io_read_data2;
    end else begin
      seg_reg <= 4'h0;
    end
    enq_delay2_REG <= io_enq; // @[Queue.scala 26:37]
    enq_delay2 <= enq_delay2_REG; // @[Queue.scala 26:29]
    deq_delay2_REG <= io_deq; // @[Queue.scala 27:37]
    deq_delay2 <= deq_delay2_REG; // @[Queue.scala 27:29]
    if (hexplay_count >= 32'h3d090) begin // @[Queue.scala 55:25]
      hexplay_count <= 32'h0;
    end else begin
      hexplay_count <= _hexplay_count_T_2;
    end
    if (reset) begin // @[Queue.scala 31:23]
      head <= 3'h0; // @[Queue.scala 31:23]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      head <= _head_T_1; // @[Queue.scala 50:14]
    end
    if (reset) begin // @[Queue.scala 32:23]
      tail <= 3'h0; // @[Queue.scala 32:23]
    end else if (enq_pulse) begin // @[Queue.scala 44:22]
      tail <= _tail_T_1; // @[Queue.scala 46:14]
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_0 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h0 == head) begin // @[Queue.scala 49:22]
        valids_0 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_0 <= _GEN_8;
      end
    end else begin
      valids_0 <= _GEN_8;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_1 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h1 == head) begin // @[Queue.scala 49:22]
        valids_1 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_1 <= _GEN_9;
      end
    end else begin
      valids_1 <= _GEN_9;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_2 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h2 == head) begin // @[Queue.scala 49:22]
        valids_2 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_2 <= _GEN_10;
      end
    end else begin
      valids_2 <= _GEN_10;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_3 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h3 == head) begin // @[Queue.scala 49:22]
        valids_3 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_3 <= _GEN_11;
      end
    end else begin
      valids_3 <= _GEN_11;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_4 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h4 == head) begin // @[Queue.scala 49:22]
        valids_4 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_4 <= _GEN_12;
      end
    end else begin
      valids_4 <= _GEN_12;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_5 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h5 == head) begin // @[Queue.scala 49:22]
        valids_5 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_5 <= _GEN_13;
      end
    end else begin
      valids_5 <= _GEN_13;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_6 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h6 == head) begin // @[Queue.scala 49:22]
        valids_6 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_6 <= _GEN_14;
      end
    end else begin
      valids_6 <= _GEN_14;
    end
    if (reset) begin // @[Queue.scala 34:25]
      valids_7 <= 1'h0; // @[Queue.scala 34:25]
    end else if (deq_pulse) begin // @[Queue.scala 48:22]
      if (3'h7 == head) begin // @[Queue.scala 49:22]
        valids_7 <= 1'h0; // @[Queue.scala 49:22]
      end else begin
        valids_7 <= _GEN_15;
      end
    end else begin
      valids_7 <= _GEN_15;
    end
    enq_pulse_REG <= enq_delay2; // @[Queue.scala 37:40]
    deq_pulse_REG <= deq_delay2; // @[Queue.scala 38:40]
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
  an_reg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  seg_reg = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  enq_delay2_REG = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  enq_delay2 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  deq_delay2_REG = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  deq_delay2 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  hexplay_count = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  head = _RAND_7[2:0];
  _RAND_8 = {1{`RANDOM}};
  tail = _RAND_8[2:0];
  _RAND_9 = {1{`RANDOM}};
  valids_0 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  valids_1 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  valids_2 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  valids_3 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  valids_4 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  valids_5 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  valids_6 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  valids_7 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  enq_pulse_REG = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  deq_pulse_REG = _RAND_18[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
