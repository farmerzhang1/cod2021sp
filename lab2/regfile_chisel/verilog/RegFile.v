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
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
`endif // RANDOMIZE_REG_INIT
  reg [3:0] regf_0; // @[RegFile.scala 23:23]
  reg [3:0] regf_1; // @[RegFile.scala 23:23]
  reg [3:0] regf_2; // @[RegFile.scala 23:23]
  reg [3:0] regf_3; // @[RegFile.scala 23:23]
  reg [3:0] regf_4; // @[RegFile.scala 23:23]
  reg [3:0] regf_5; // @[RegFile.scala 23:23]
  reg [3:0] regf_6; // @[RegFile.scala 23:23]
  reg [3:0] regf_7; // @[RegFile.scala 23:23]
  reg [3:0] regf_8; // @[RegFile.scala 23:23]
  reg [3:0] regf_9; // @[RegFile.scala 23:23]
  reg [3:0] regf_10; // @[RegFile.scala 23:23]
  reg [3:0] regf_11; // @[RegFile.scala 23:23]
  reg [3:0] regf_12; // @[RegFile.scala 23:23]
  reg [3:0] regf_13; // @[RegFile.scala 23:23]
  reg [3:0] regf_14; // @[RegFile.scala 23:23]
  reg [3:0] regf_15; // @[RegFile.scala 23:23]
  reg [3:0] regf_16; // @[RegFile.scala 23:23]
  reg [3:0] regf_17; // @[RegFile.scala 23:23]
  reg [3:0] regf_18; // @[RegFile.scala 23:23]
  reg [3:0] regf_19; // @[RegFile.scala 23:23]
  reg [3:0] regf_20; // @[RegFile.scala 23:23]
  reg [3:0] regf_21; // @[RegFile.scala 23:23]
  reg [3:0] regf_22; // @[RegFile.scala 23:23]
  reg [3:0] regf_23; // @[RegFile.scala 23:23]
  reg [3:0] regf_24; // @[RegFile.scala 23:23]
  reg [3:0] regf_25; // @[RegFile.scala 23:23]
  reg [3:0] regf_26; // @[RegFile.scala 23:23]
  reg [3:0] regf_27; // @[RegFile.scala 23:23]
  reg [3:0] regf_28; // @[RegFile.scala 23:23]
  reg [3:0] regf_29; // @[RegFile.scala 23:23]
  reg [3:0] regf_30; // @[RegFile.scala 23:23]
  reg [3:0] regf_31; // @[RegFile.scala 23:23]
  wire [3:0] _GEN_65 = 5'h1 == io_read_addr1 ? regf_1 : regf_0; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_66 = 5'h2 == io_read_addr1 ? regf_2 : _GEN_65; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_67 = 5'h3 == io_read_addr1 ? regf_3 : _GEN_66; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_68 = 5'h4 == io_read_addr1 ? regf_4 : _GEN_67; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_69 = 5'h5 == io_read_addr1 ? regf_5 : _GEN_68; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_70 = 5'h6 == io_read_addr1 ? regf_6 : _GEN_69; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_71 = 5'h7 == io_read_addr1 ? regf_7 : _GEN_70; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_72 = 5'h8 == io_read_addr1 ? regf_8 : _GEN_71; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_73 = 5'h9 == io_read_addr1 ? regf_9 : _GEN_72; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_74 = 5'ha == io_read_addr1 ? regf_10 : _GEN_73; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_75 = 5'hb == io_read_addr1 ? regf_11 : _GEN_74; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_76 = 5'hc == io_read_addr1 ? regf_12 : _GEN_75; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_77 = 5'hd == io_read_addr1 ? regf_13 : _GEN_76; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_78 = 5'he == io_read_addr1 ? regf_14 : _GEN_77; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_79 = 5'hf == io_read_addr1 ? regf_15 : _GEN_78; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_80 = 5'h10 == io_read_addr1 ? regf_16 : _GEN_79; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_81 = 5'h11 == io_read_addr1 ? regf_17 : _GEN_80; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_82 = 5'h12 == io_read_addr1 ? regf_18 : _GEN_81; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_83 = 5'h13 == io_read_addr1 ? regf_19 : _GEN_82; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_84 = 5'h14 == io_read_addr1 ? regf_20 : _GEN_83; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_85 = 5'h15 == io_read_addr1 ? regf_21 : _GEN_84; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_86 = 5'h16 == io_read_addr1 ? regf_22 : _GEN_85; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_87 = 5'h17 == io_read_addr1 ? regf_23 : _GEN_86; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_88 = 5'h18 == io_read_addr1 ? regf_24 : _GEN_87; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_89 = 5'h19 == io_read_addr1 ? regf_25 : _GEN_88; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_90 = 5'h1a == io_read_addr1 ? regf_26 : _GEN_89; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_91 = 5'h1b == io_read_addr1 ? regf_27 : _GEN_90; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_92 = 5'h1c == io_read_addr1 ? regf_28 : _GEN_91; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_93 = 5'h1d == io_read_addr1 ? regf_29 : _GEN_92; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_94 = 5'h1e == io_read_addr1 ? regf_30 : _GEN_93; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  wire [3:0] _GEN_97 = 5'h1 == io_read_addr2 ? regf_1 : regf_0; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_98 = 5'h2 == io_read_addr2 ? regf_2 : _GEN_97; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_99 = 5'h3 == io_read_addr2 ? regf_3 : _GEN_98; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_100 = 5'h4 == io_read_addr2 ? regf_4 : _GEN_99; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_101 = 5'h5 == io_read_addr2 ? regf_5 : _GEN_100; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_102 = 5'h6 == io_read_addr2 ? regf_6 : _GEN_101; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_103 = 5'h7 == io_read_addr2 ? regf_7 : _GEN_102; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_104 = 5'h8 == io_read_addr2 ? regf_8 : _GEN_103; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_105 = 5'h9 == io_read_addr2 ? regf_9 : _GEN_104; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_106 = 5'ha == io_read_addr2 ? regf_10 : _GEN_105; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_107 = 5'hb == io_read_addr2 ? regf_11 : _GEN_106; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_108 = 5'hc == io_read_addr2 ? regf_12 : _GEN_107; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_109 = 5'hd == io_read_addr2 ? regf_13 : _GEN_108; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_110 = 5'he == io_read_addr2 ? regf_14 : _GEN_109; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_111 = 5'hf == io_read_addr2 ? regf_15 : _GEN_110; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_112 = 5'h10 == io_read_addr2 ? regf_16 : _GEN_111; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_113 = 5'h11 == io_read_addr2 ? regf_17 : _GEN_112; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_114 = 5'h12 == io_read_addr2 ? regf_18 : _GEN_113; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_115 = 5'h13 == io_read_addr2 ? regf_19 : _GEN_114; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_116 = 5'h14 == io_read_addr2 ? regf_20 : _GEN_115; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_117 = 5'h15 == io_read_addr2 ? regf_21 : _GEN_116; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_118 = 5'h16 == io_read_addr2 ? regf_22 : _GEN_117; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_119 = 5'h17 == io_read_addr2 ? regf_23 : _GEN_118; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_120 = 5'h18 == io_read_addr2 ? regf_24 : _GEN_119; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_121 = 5'h19 == io_read_addr2 ? regf_25 : _GEN_120; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_122 = 5'h1a == io_read_addr2 ? regf_26 : _GEN_121; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_123 = 5'h1b == io_read_addr2 ? regf_27 : _GEN_122; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_124 = 5'h1c == io_read_addr2 ? regf_28 : _GEN_123; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_125 = 5'h1d == io_read_addr2 ? regf_29 : _GEN_124; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  wire [3:0] _GEN_126 = 5'h1e == io_read_addr2 ? regf_30 : _GEN_125; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  assign io_read_data1 = 5'h1f == io_read_addr1 ? regf_31 : _GEN_94; // @[RegFile.scala 27:19 RegFile.scala 27:19]
  assign io_read_data2 = 5'h1f == io_read_addr2 ? regf_31 : _GEN_126; // @[RegFile.scala 28:19 RegFile.scala 28:19]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 23:23]
      regf_0 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h0 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_0 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_1 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_1 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_2 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h2 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_2 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_3 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h3 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_3 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_4 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h4 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_4 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_5 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h5 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_5 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_6 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h6 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_6 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_7 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h7 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_7 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_8 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h8 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_8 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_9 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h9 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_9 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_10 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'ha == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_10 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_11 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'hb == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_11 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_12 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'hc == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_12 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_13 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'hd == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_13 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_14 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'he == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_14 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_15 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'hf == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_15 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_16 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h10 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_16 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_17 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h11 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_17 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_18 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h12 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_18 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_19 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h13 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_19 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_20 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h14 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_20 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_21 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h15 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_21 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_22 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h16 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_22 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_23 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h17 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_23 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_24 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h18 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_24 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_25 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h19 == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_25 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_26 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1a == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_26 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_27 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1b == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_27 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_28 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1c == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_28 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_29 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1d == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_29 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_30 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1e == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_30 <= io_write_data; // @[RegFile.scala 25:29]
      end
    end
    if (reset) begin // @[RegFile.scala 23:23]
      regf_31 <= 4'h0; // @[RegFile.scala 23:23]
    end else if (io_write_en) begin // @[RegFile.scala 24:23]
      if (5'h1f == io_write_addr) begin // @[RegFile.scala 25:29]
        regf_31 <= io_write_data; // @[RegFile.scala 25:29]
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
  _RAND_8 = {1{`RANDOM}};
  regf_8 = _RAND_8[3:0];
  _RAND_9 = {1{`RANDOM}};
  regf_9 = _RAND_9[3:0];
  _RAND_10 = {1{`RANDOM}};
  regf_10 = _RAND_10[3:0];
  _RAND_11 = {1{`RANDOM}};
  regf_11 = _RAND_11[3:0];
  _RAND_12 = {1{`RANDOM}};
  regf_12 = _RAND_12[3:0];
  _RAND_13 = {1{`RANDOM}};
  regf_13 = _RAND_13[3:0];
  _RAND_14 = {1{`RANDOM}};
  regf_14 = _RAND_14[3:0];
  _RAND_15 = {1{`RANDOM}};
  regf_15 = _RAND_15[3:0];
  _RAND_16 = {1{`RANDOM}};
  regf_16 = _RAND_16[3:0];
  _RAND_17 = {1{`RANDOM}};
  regf_17 = _RAND_17[3:0];
  _RAND_18 = {1{`RANDOM}};
  regf_18 = _RAND_18[3:0];
  _RAND_19 = {1{`RANDOM}};
  regf_19 = _RAND_19[3:0];
  _RAND_20 = {1{`RANDOM}};
  regf_20 = _RAND_20[3:0];
  _RAND_21 = {1{`RANDOM}};
  regf_21 = _RAND_21[3:0];
  _RAND_22 = {1{`RANDOM}};
  regf_22 = _RAND_22[3:0];
  _RAND_23 = {1{`RANDOM}};
  regf_23 = _RAND_23[3:0];
  _RAND_24 = {1{`RANDOM}};
  regf_24 = _RAND_24[3:0];
  _RAND_25 = {1{`RANDOM}};
  regf_25 = _RAND_25[3:0];
  _RAND_26 = {1{`RANDOM}};
  regf_26 = _RAND_26[3:0];
  _RAND_27 = {1{`RANDOM}};
  regf_27 = _RAND_27[3:0];
  _RAND_28 = {1{`RANDOM}};
  regf_28 = _RAND_28[3:0];
  _RAND_29 = {1{`RANDOM}};
  regf_29 = _RAND_29[3:0];
  _RAND_30 = {1{`RANDOM}};
  regf_30 = _RAND_30[3:0];
  _RAND_31 = {1{`RANDOM}};
  regf_31 = _RAND_31[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
