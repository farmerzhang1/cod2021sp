module RegFile(
  input        clock,
  input        reset,
  input  [4:0] io_read_addr1,
  input  [4:0] io_read_addr2,
  input  [4:0] io_write_addr,
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
  reg [3:0] regf_0; // @[RegFile.scala 24:23]
  reg [3:0] regf_1; // @[RegFile.scala 24:23]
  reg [3:0] regf_2; // @[RegFile.scala 24:23]
  reg [3:0] regf_3; // @[RegFile.scala 24:23]
  reg [3:0] regf_4; // @[RegFile.scala 24:23]
  reg [3:0] regf_5; // @[RegFile.scala 24:23]
  reg [3:0] regf_6; // @[RegFile.scala 24:23]
  reg [3:0] regf_7; // @[RegFile.scala 24:23]
  wire [3:0] _GEN_17 = 3'h1 == io_read_addr1[2:0] ? regf_1 : regf_0; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_18 = 3'h2 == io_read_addr1[2:0] ? regf_2 : _GEN_17; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_19 = 3'h3 == io_read_addr1[2:0] ? regf_3 : _GEN_18; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_20 = 3'h4 == io_read_addr1[2:0] ? regf_4 : _GEN_19; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_21 = 3'h5 == io_read_addr1[2:0] ? regf_5 : _GEN_20; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_22 = 3'h6 == io_read_addr1[2:0] ? regf_6 : _GEN_21; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_25 = 3'h1 == io_read_addr2[2:0] ? regf_1 : regf_0; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  wire [3:0] _GEN_26 = 3'h2 == io_read_addr2[2:0] ? regf_2 : _GEN_25; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  wire [3:0] _GEN_27 = 3'h3 == io_read_addr2[2:0] ? regf_3 : _GEN_26; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  wire [3:0] _GEN_28 = 3'h4 == io_read_addr2[2:0] ? regf_4 : _GEN_27; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  wire [3:0] _GEN_29 = 3'h5 == io_read_addr2[2:0] ? regf_5 : _GEN_28; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  wire [3:0] _GEN_30 = 3'h6 == io_read_addr2[2:0] ? regf_6 : _GEN_29; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  assign io_read_data1 = 3'h7 == io_read_addr1[2:0] ? regf_7 : _GEN_22; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  assign io_read_data2 = 3'h7 == io_read_addr2[2:0] ? regf_7 : _GEN_30; // @[RegFile.scala 29:19 RegFile.scala 29:19]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 24:23]
      regf_0 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h0 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_0 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_1 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h1 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_1 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_2 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h2 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_2 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_3 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h3 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_3 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_4 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h4 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_4 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_5 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h5 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_5 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_6 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h6 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_6 <= io_write_data; // @[RegFile.scala 26:29]
      end
    end
    if (reset) begin // @[RegFile.scala 24:23]
      regf_7 <= 4'h0; // @[RegFile.scala 24:23]
    end else if (io_write_en) begin // @[RegFile.scala 25:23]
      if (3'h7 == io_write_addr[2:0]) begin // @[RegFile.scala 26:29]
        regf_7 <= io_write_data; // @[RegFile.scala 26:29]
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
