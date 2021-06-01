module RegFile(
  input         clock,
  input         reset,
  input  [4:0]  io_read_addr1,
  input  [4:0]  io_read_addr2,
  input  [4:0]  io_read_addr_debug,
  input  [4:0]  io_write_addr,
  input         io_write_en,
  input  [31:0] io_write_data,
  output [31:0] io_read_data1,
  output [31:0] io_read_data2,
  output [31:0] io_read_data_debug
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
  reg [31:0] regf_0; // @[RegFile.scala 16:23]
  reg [31:0] regf_1; // @[RegFile.scala 16:23]
  reg [31:0] regf_2; // @[RegFile.scala 16:23]
  reg [31:0] regf_3; // @[RegFile.scala 16:23]
  reg [31:0] regf_4; // @[RegFile.scala 16:23]
  reg [31:0] regf_5; // @[RegFile.scala 16:23]
  reg [31:0] regf_6; // @[RegFile.scala 16:23]
  reg [31:0] regf_7; // @[RegFile.scala 16:23]
  reg [31:0] regf_8; // @[RegFile.scala 16:23]
  reg [31:0] regf_9; // @[RegFile.scala 16:23]
  reg [31:0] regf_10; // @[RegFile.scala 16:23]
  reg [31:0] regf_11; // @[RegFile.scala 16:23]
  reg [31:0] regf_12; // @[RegFile.scala 16:23]
  reg [31:0] regf_13; // @[RegFile.scala 16:23]
  reg [31:0] regf_14; // @[RegFile.scala 16:23]
  reg [31:0] regf_15; // @[RegFile.scala 16:23]
  reg [31:0] regf_16; // @[RegFile.scala 16:23]
  reg [31:0] regf_17; // @[RegFile.scala 16:23]
  reg [31:0] regf_18; // @[RegFile.scala 16:23]
  reg [31:0] regf_19; // @[RegFile.scala 16:23]
  reg [31:0] regf_20; // @[RegFile.scala 16:23]
  reg [31:0] regf_21; // @[RegFile.scala 16:23]
  reg [31:0] regf_22; // @[RegFile.scala 16:23]
  reg [31:0] regf_23; // @[RegFile.scala 16:23]
  reg [31:0] regf_24; // @[RegFile.scala 16:23]
  reg [31:0] regf_25; // @[RegFile.scala 16:23]
  reg [31:0] regf_26; // @[RegFile.scala 16:23]
  reg [31:0] regf_27; // @[RegFile.scala 16:23]
  reg [31:0] regf_28; // @[RegFile.scala 16:23]
  reg [31:0] regf_29; // @[RegFile.scala 16:23]
  reg [31:0] regf_30; // @[RegFile.scala 16:23]
  reg [31:0] regf_31; // @[RegFile.scala 16:23]
  wire [31:0] _GEN_65 = 5'h1 == io_read_addr1 ? regf_1 : regf_0; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_66 = 5'h2 == io_read_addr1 ? regf_2 : _GEN_65; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_67 = 5'h3 == io_read_addr1 ? regf_3 : _GEN_66; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_68 = 5'h4 == io_read_addr1 ? regf_4 : _GEN_67; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_69 = 5'h5 == io_read_addr1 ? regf_5 : _GEN_68; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_70 = 5'h6 == io_read_addr1 ? regf_6 : _GEN_69; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_71 = 5'h7 == io_read_addr1 ? regf_7 : _GEN_70; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_72 = 5'h8 == io_read_addr1 ? regf_8 : _GEN_71; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_73 = 5'h9 == io_read_addr1 ? regf_9 : _GEN_72; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_74 = 5'ha == io_read_addr1 ? regf_10 : _GEN_73; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_75 = 5'hb == io_read_addr1 ? regf_11 : _GEN_74; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_76 = 5'hc == io_read_addr1 ? regf_12 : _GEN_75; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_77 = 5'hd == io_read_addr1 ? regf_13 : _GEN_76; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_78 = 5'he == io_read_addr1 ? regf_14 : _GEN_77; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_79 = 5'hf == io_read_addr1 ? regf_15 : _GEN_78; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_80 = 5'h10 == io_read_addr1 ? regf_16 : _GEN_79; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_81 = 5'h11 == io_read_addr1 ? regf_17 : _GEN_80; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_82 = 5'h12 == io_read_addr1 ? regf_18 : _GEN_81; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_83 = 5'h13 == io_read_addr1 ? regf_19 : _GEN_82; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_84 = 5'h14 == io_read_addr1 ? regf_20 : _GEN_83; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_85 = 5'h15 == io_read_addr1 ? regf_21 : _GEN_84; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_86 = 5'h16 == io_read_addr1 ? regf_22 : _GEN_85; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_87 = 5'h17 == io_read_addr1 ? regf_23 : _GEN_86; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_88 = 5'h18 == io_read_addr1 ? regf_24 : _GEN_87; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_89 = 5'h19 == io_read_addr1 ? regf_25 : _GEN_88; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_90 = 5'h1a == io_read_addr1 ? regf_26 : _GEN_89; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_91 = 5'h1b == io_read_addr1 ? regf_27 : _GEN_90; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_92 = 5'h1c == io_read_addr1 ? regf_28 : _GEN_91; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_93 = 5'h1d == io_read_addr1 ? regf_29 : _GEN_92; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_94 = 5'h1e == io_read_addr1 ? regf_30 : _GEN_93; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_95 = 5'h1f == io_read_addr1 ? regf_31 : _GEN_94; // @[RegFile.scala 21:25 RegFile.scala 21:25]
  wire [31:0] _GEN_97 = 5'h1 == io_read_addr2 ? regf_1 : regf_0; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_98 = 5'h2 == io_read_addr2 ? regf_2 : _GEN_97; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_99 = 5'h3 == io_read_addr2 ? regf_3 : _GEN_98; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_100 = 5'h4 == io_read_addr2 ? regf_4 : _GEN_99; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_101 = 5'h5 == io_read_addr2 ? regf_5 : _GEN_100; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_102 = 5'h6 == io_read_addr2 ? regf_6 : _GEN_101; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_103 = 5'h7 == io_read_addr2 ? regf_7 : _GEN_102; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_104 = 5'h8 == io_read_addr2 ? regf_8 : _GEN_103; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_105 = 5'h9 == io_read_addr2 ? regf_9 : _GEN_104; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_106 = 5'ha == io_read_addr2 ? regf_10 : _GEN_105; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_107 = 5'hb == io_read_addr2 ? regf_11 : _GEN_106; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_108 = 5'hc == io_read_addr2 ? regf_12 : _GEN_107; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_109 = 5'hd == io_read_addr2 ? regf_13 : _GEN_108; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_110 = 5'he == io_read_addr2 ? regf_14 : _GEN_109; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_111 = 5'hf == io_read_addr2 ? regf_15 : _GEN_110; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_112 = 5'h10 == io_read_addr2 ? regf_16 : _GEN_111; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_113 = 5'h11 == io_read_addr2 ? regf_17 : _GEN_112; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_114 = 5'h12 == io_read_addr2 ? regf_18 : _GEN_113; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_115 = 5'h13 == io_read_addr2 ? regf_19 : _GEN_114; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_116 = 5'h14 == io_read_addr2 ? regf_20 : _GEN_115; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_117 = 5'h15 == io_read_addr2 ? regf_21 : _GEN_116; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_118 = 5'h16 == io_read_addr2 ? regf_22 : _GEN_117; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_119 = 5'h17 == io_read_addr2 ? regf_23 : _GEN_118; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_120 = 5'h18 == io_read_addr2 ? regf_24 : _GEN_119; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_121 = 5'h19 == io_read_addr2 ? regf_25 : _GEN_120; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_122 = 5'h1a == io_read_addr2 ? regf_26 : _GEN_121; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_123 = 5'h1b == io_read_addr2 ? regf_27 : _GEN_122; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_124 = 5'h1c == io_read_addr2 ? regf_28 : _GEN_123; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_125 = 5'h1d == io_read_addr2 ? regf_29 : _GEN_124; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_126 = 5'h1e == io_read_addr2 ? regf_30 : _GEN_125; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_127 = 5'h1f == io_read_addr2 ? regf_31 : _GEN_126; // @[RegFile.scala 22:25 RegFile.scala 22:25]
  wire [31:0] _GEN_129 = 5'h1 == io_read_addr_debug ? regf_1 : regf_0; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_130 = 5'h2 == io_read_addr_debug ? regf_2 : _GEN_129; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_131 = 5'h3 == io_read_addr_debug ? regf_3 : _GEN_130; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_132 = 5'h4 == io_read_addr_debug ? regf_4 : _GEN_131; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_133 = 5'h5 == io_read_addr_debug ? regf_5 : _GEN_132; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_134 = 5'h6 == io_read_addr_debug ? regf_6 : _GEN_133; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_135 = 5'h7 == io_read_addr_debug ? regf_7 : _GEN_134; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_136 = 5'h8 == io_read_addr_debug ? regf_8 : _GEN_135; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_137 = 5'h9 == io_read_addr_debug ? regf_9 : _GEN_136; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_138 = 5'ha == io_read_addr_debug ? regf_10 : _GEN_137; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_139 = 5'hb == io_read_addr_debug ? regf_11 : _GEN_138; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_140 = 5'hc == io_read_addr_debug ? regf_12 : _GEN_139; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_141 = 5'hd == io_read_addr_debug ? regf_13 : _GEN_140; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_142 = 5'he == io_read_addr_debug ? regf_14 : _GEN_141; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_143 = 5'hf == io_read_addr_debug ? regf_15 : _GEN_142; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_144 = 5'h10 == io_read_addr_debug ? regf_16 : _GEN_143; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_145 = 5'h11 == io_read_addr_debug ? regf_17 : _GEN_144; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_146 = 5'h12 == io_read_addr_debug ? regf_18 : _GEN_145; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_147 = 5'h13 == io_read_addr_debug ? regf_19 : _GEN_146; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_148 = 5'h14 == io_read_addr_debug ? regf_20 : _GEN_147; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_149 = 5'h15 == io_read_addr_debug ? regf_21 : _GEN_148; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_150 = 5'h16 == io_read_addr_debug ? regf_22 : _GEN_149; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_151 = 5'h17 == io_read_addr_debug ? regf_23 : _GEN_150; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_152 = 5'h18 == io_read_addr_debug ? regf_24 : _GEN_151; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_153 = 5'h19 == io_read_addr_debug ? regf_25 : _GEN_152; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_154 = 5'h1a == io_read_addr_debug ? regf_26 : _GEN_153; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_155 = 5'h1b == io_read_addr_debug ? regf_27 : _GEN_154; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_156 = 5'h1c == io_read_addr_debug ? regf_28 : _GEN_155; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_157 = 5'h1d == io_read_addr_debug ? regf_29 : _GEN_156; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  wire [31:0] _GEN_158 = 5'h1e == io_read_addr_debug ? regf_30 : _GEN_157; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  assign io_read_data1 = io_read_addr1 == io_write_addr ? io_write_data : _GEN_95; // @[RegFile.scala 21:25]
  assign io_read_data2 = io_read_addr2 == io_write_addr ? io_write_data : _GEN_127; // @[RegFile.scala 22:25]
  assign io_read_data_debug = 5'h1f == io_read_addr_debug ? regf_31 : _GEN_158; // @[RegFile.scala 23:24 RegFile.scala 23:24]
  always @(posedge clock) begin
    if (reset) begin // @[RegFile.scala 16:23]
      regf_0 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h0 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_0 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_1 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_1 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_2 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h2 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_2 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_3 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h3 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_3 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_4 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h4 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_4 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_5 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h5 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_5 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_6 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h6 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_6 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_7 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h7 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_7 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_8 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h8 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_8 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_9 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h9 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_9 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_10 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'ha == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_10 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_11 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'hb == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_11 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_12 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'hc == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_12 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_13 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'hd == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_13 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_14 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'he == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_14 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_15 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'hf == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_15 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_16 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h10 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_16 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_17 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h11 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_17 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_18 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h12 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_18 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_19 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h13 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_19 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_20 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h14 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_20 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_21 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h15 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_21 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_22 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h16 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_22 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_23 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h17 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_23 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_24 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h18 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_24 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_25 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h19 == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_25 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_26 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1a == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_26 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_27 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1b == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_27 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_28 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1c == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_28 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_29 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1d == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_29 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_30 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1e == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_30 <= io_write_data; // @[RegFile.scala 18:29]
      end
    end
    if (reset) begin // @[RegFile.scala 16:23]
      regf_31 <= 32'h0; // @[RegFile.scala 16:23]
    end else if (io_write_en & io_write_addr != 5'h0) begin // @[RegFile.scala 17:48]
      if (5'h1f == io_write_addr) begin // @[RegFile.scala 18:29]
        regf_31 <= io_write_data; // @[RegFile.scala 18:29]
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
  regf_0 = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  regf_1 = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  regf_2 = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  regf_3 = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  regf_4 = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  regf_5 = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  regf_6 = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  regf_7 = _RAND_7[31:0];
  _RAND_8 = {1{`RANDOM}};
  regf_8 = _RAND_8[31:0];
  _RAND_9 = {1{`RANDOM}};
  regf_9 = _RAND_9[31:0];
  _RAND_10 = {1{`RANDOM}};
  regf_10 = _RAND_10[31:0];
  _RAND_11 = {1{`RANDOM}};
  regf_11 = _RAND_11[31:0];
  _RAND_12 = {1{`RANDOM}};
  regf_12 = _RAND_12[31:0];
  _RAND_13 = {1{`RANDOM}};
  regf_13 = _RAND_13[31:0];
  _RAND_14 = {1{`RANDOM}};
  regf_14 = _RAND_14[31:0];
  _RAND_15 = {1{`RANDOM}};
  regf_15 = _RAND_15[31:0];
  _RAND_16 = {1{`RANDOM}};
  regf_16 = _RAND_16[31:0];
  _RAND_17 = {1{`RANDOM}};
  regf_17 = _RAND_17[31:0];
  _RAND_18 = {1{`RANDOM}};
  regf_18 = _RAND_18[31:0];
  _RAND_19 = {1{`RANDOM}};
  regf_19 = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  regf_20 = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  regf_21 = _RAND_21[31:0];
  _RAND_22 = {1{`RANDOM}};
  regf_22 = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  regf_23 = _RAND_23[31:0];
  _RAND_24 = {1{`RANDOM}};
  regf_24 = _RAND_24[31:0];
  _RAND_25 = {1{`RANDOM}};
  regf_25 = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  regf_26 = _RAND_26[31:0];
  _RAND_27 = {1{`RANDOM}};
  regf_27 = _RAND_27[31:0];
  _RAND_28 = {1{`RANDOM}};
  regf_28 = _RAND_28[31:0];
  _RAND_29 = {1{`RANDOM}};
  regf_29 = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  regf_30 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regf_31 = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ALU(
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [2:0]  io_op,
  output [31:0] io_res,
  output        io_z
);
  wire [31:0] _io_res_T_1 = io_a + io_b; // @[ALU.scala 16:26]
  wire [31:0] _io_res_T_3 = io_a - io_b; // @[ALU.scala 17:26]
  wire [31:0] _io_res_T_4 = io_a & io_b; // @[ALU.scala 18:26]
  wire [31:0] _io_res_T_5 = io_a | io_b; // @[ALU.scala 19:26]
  wire [31:0] _io_res_T_6 = io_a ^ io_b; // @[ALU.scala 20:26]
  wire [31:0] _io_res_T_8 = 3'h0 == io_op ? _io_res_T_1 : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_10 = 3'h1 == io_op ? _io_res_T_3 : _io_res_T_8; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_12 = 3'h2 == io_op ? _io_res_T_4 : _io_res_T_10; // @[Mux.scala 80:57]
  wire [31:0] _io_res_T_14 = 3'h3 == io_op ? _io_res_T_5 : _io_res_T_12; // @[Mux.scala 80:57]
  assign io_res = 3'h4 == io_op ? _io_res_T_6 : _io_res_T_14; // @[Mux.scala 80:57]
  assign io_z = io_res == 32'h0; // @[ALU.scala 22:20]
endmodule
module ImmGen(
  input  [31:0] io_inst,
  input  [2:0]  io_sel,
  output [31:0] io_imm
);
  wire [11:0] _io_imm_T_1 = io_inst[31:20]; // @[ImmGen.scala 18:38]
  wire [6:0] io_imm_hi = io_inst[31:25]; // @[ImmGen.scala 19:33]
  wire [4:0] io_imm_lo = io_inst[11:7]; // @[ImmGen.scala 19:50]
  wire [11:0] _io_imm_T_3 = {io_imm_hi,io_imm_lo}; // @[ImmGen.scala 19:59]
  wire  io_imm_hi_hi_hi = io_inst[31]; // @[ImmGen.scala 20:33]
  wire  io_imm_hi_hi_lo = io_inst[7]; // @[ImmGen.scala 20:46]
  wire [5:0] io_imm_hi_lo = io_inst[30:25]; // @[ImmGen.scala 20:58]
  wire [3:0] io_imm_lo_hi = io_inst[11:8]; // @[ImmGen.scala 20:75]
  wire [12:0] _io_imm_T_5 = {io_imm_hi_hi_hi,io_imm_hi_hi_lo,io_imm_hi_lo,io_imm_lo_hi,1'h0}; // @[ImmGen.scala 20:94]
  wire [7:0] io_imm_hi_hi_lo_1 = io_inst[19:12]; // @[ImmGen.scala 21:46]
  wire  io_imm_hi_lo_1 = io_inst[20]; // @[ImmGen.scala 21:63]
  wire [9:0] io_imm_lo_hi_1 = io_inst[30:21]; // @[ImmGen.scala 21:76]
  wire [20:0] _io_imm_T_7 = {io_imm_hi_hi_hi,io_imm_hi_hi_lo_1,io_imm_hi_lo_1,io_imm_lo_hi_1,1'h0}; // @[ImmGen.scala 21:96]
  wire [31:0] _io_imm_T_13 = 3'h2 == io_sel ? $signed({{20{_io_imm_T_1[11]}},_io_imm_T_1}) : $signed(32'sh0); // @[Mux.scala 80:57]
  wire [31:0] _io_imm_T_15 = 3'h3 == io_sel ? $signed({{20{_io_imm_T_3[11]}},_io_imm_T_3}) : $signed(_io_imm_T_13); // @[Mux.scala 80:57]
  wire [31:0] _io_imm_T_17 = 3'h5 == io_sel ? $signed({{19{_io_imm_T_5[12]}},_io_imm_T_5}) : $signed(_io_imm_T_15); // @[Mux.scala 80:57]
  assign io_imm = 3'h4 == io_sel ? $signed({{11{_io_imm_T_7[20]}},_io_imm_T_7}) : $signed(_io_imm_T_17); // @[ImmGen.scala 22:12]
endmodule
module BrCond(
  input   io_z,
  input   io_sel,
  output  io_taken
);
  assign io_taken = io_sel & io_z; // @[BrCond.scala 15:34]
endmodule
module DataPath(
  input         clock,
  input         reset,
  output [31:0] io_ctrl_inst,
  input  [2:0]  io_ctrl_id_imm_sel,
  input  [1:0]  io_ctrl_ex_a_sel,
  input  [1:0]  io_ctrl_ex_b_sel,
  input  [2:0]  io_ctrl_ex_alu_op,
  input         io_ctrl_ex_br_sel,
  input  [1:0]  io_ctrl_ex_pc_sel,
  input         io_ctrl_mem_mem_write,
  input  [1:0]  io_ctrl_wb_wb_sel,
  input         io_ctrl_wb_reg_write,
  output [7:0]  io_dmem_a,
  output [31:0] io_dmem_d,
  output [7:0]  io_dmem_dpra,
  output        io_dmem_we,
  input  [31:0] io_dmem_dpo,
  input  [31:0] io_dmem_spo,
  output [7:0]  io_imem_a,
  input  [31:0] io_imem_spo,
  input  [31:0] io_io_bus_io_din,
  output [7:0]  io_io_bus_io_addr,
  output [31:0] io_io_bus_io_dout,
  output        io_io_bus_io_we,
  input  [7:0]  io_debug_bus_mem_rf_addr,
  output [31:0] io_debug_bus_rf_data,
  output [31:0] io_debug_bus_mem_data,
  output [31:0] io_debug_bus_pc
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
  wire  regfile_clock; // @[Datapath.scala 28:26]
  wire  regfile_reset; // @[Datapath.scala 28:26]
  wire [4:0] regfile_io_read_addr1; // @[Datapath.scala 28:26]
  wire [4:0] regfile_io_read_addr2; // @[Datapath.scala 28:26]
  wire [4:0] regfile_io_read_addr_debug; // @[Datapath.scala 28:26]
  wire [4:0] regfile_io_write_addr; // @[Datapath.scala 28:26]
  wire  regfile_io_write_en; // @[Datapath.scala 28:26]
  wire [31:0] regfile_io_write_data; // @[Datapath.scala 28:26]
  wire [31:0] regfile_io_read_data1; // @[Datapath.scala 28:26]
  wire [31:0] regfile_io_read_data2; // @[Datapath.scala 28:26]
  wire [31:0] regfile_io_read_data_debug; // @[Datapath.scala 28:26]
  wire [31:0] alu_io_a; // @[Datapath.scala 29:26]
  wire [31:0] alu_io_b; // @[Datapath.scala 29:26]
  wire [2:0] alu_io_op; // @[Datapath.scala 29:26]
  wire [31:0] alu_io_res; // @[Datapath.scala 29:26]
  wire  alu_io_z; // @[Datapath.scala 29:26]
  wire [31:0] immgen_io_inst; // @[Datapath.scala 30:26]
  wire [2:0] immgen_io_sel; // @[Datapath.scala 30:26]
  wire [31:0] immgen_io_imm; // @[Datapath.scala 30:26]
  wire  brcond_io_z; // @[Datapath.scala 31:26]
  wire  brcond_io_sel; // @[Datapath.scala 31:26]
  wire  brcond_io_taken; // @[Datapath.scala 31:26]
  reg [31:0] pc; // @[Datapath.scala 33:21]
  reg [31:0] inst; // @[Datapath.scala 40:19]
  reg [31:0] pc_id; // @[Datapath.scala 41:20]
  reg [31:0] pc_ex; // @[Datapath.scala 44:20]
  reg [31:0] a; // @[Datapath.scala 45:16]
  reg [31:0] b; // @[Datapath.scala 46:16]
  reg [31:0] imm; // @[Datapath.scala 47:18]
  reg [4:0] dest_reg_ex; // @[Datapath.scala 48:26]
  reg [1:0] ex_a_sel; // @[Datapath.scala 50:17]
  reg [1:0] ex_b_sel; // @[Datapath.scala 50:17]
  reg [2:0] ex_alu_op; // @[Datapath.scala 50:17]
  reg  ex_br_sel; // @[Datapath.scala 50:17]
  reg [1:0] ex_pc_sel; // @[Datapath.scala 50:17]
  reg [1:0] wb_ex_wb_sel; // @[Datapath.scala 51:20]
  reg  wb_ex_reg_write; // @[Datapath.scala 51:20]
  reg  mem_ex_mem_write; // @[Datapath.scala 52:21]
  reg  mem_mem_write; // @[Datapath.scala 55:18]
  reg [1:0] wb_mem_wb_sel; // @[Datapath.scala 56:21]
  reg  wb_mem_reg_write; // @[Datapath.scala 56:21]
  reg [31:0] pc_mem; // @[Datapath.scala 57:21]
  reg [31:0] alu_out_mem; // @[Datapath.scala 58:26]
  reg [4:0] dest_reg_mem; // @[Datapath.scala 59:27]
  reg [31:0] pc_wb; // @[Datapath.scala 62:20]
  reg [1:0] wb_wb_sel; // @[Datapath.scala 63:17]
  reg  wb_reg_write; // @[Datapath.scala 63:17]
  reg [31:0] alu_out_wb; // @[Datapath.scala 64:25]
  reg [4:0] dest_reg_wb; // @[Datapath.scala 65:26]
  wire [31:0] _pc_T_3 = pc + 32'h4; // @[Datapath.scala 71:12]
  reg [4:0] hazard_a_REG; // @[Datapath.scala 84:47]
  wire  hazard_a = wb_mem_reg_write & hazard_a_REG == dest_reg_mem; // @[Datapath.scala 84:37]
  reg [4:0] hazard_b_REG; // @[Datapath.scala 85:47]
  wire  hazard_b = wb_mem_reg_write & hazard_b_REG == dest_reg_mem; // @[Datapath.scala 85:37]
  wire [31:0] _alu_io_a_T_1 = hazard_a ? alu_out_mem : a; // @[Datapath.scala 91:43]
  wire [31:0] _alu_io_b_T_1 = hazard_b ? alu_out_mem : b; // @[Datapath.scala 92:44]
  reg [31:0] io_dmem_d_REG; // @[Datapath.scala 102:33]
  reg [31:0] io_dmem_d_REG_1; // @[Datapath.scala 102:25]
  reg [31:0] regfile_io_write_data_REG; // @[Datapath.scala 110:64]
  wire [31:0] _regfile_io_write_data_T_1 = alu_out_wb[10] ? io_io_bus_io_din : regfile_io_write_data_REG; // @[Datapath.scala 110:22]
  wire [31:0] _regfile_io_write_data_T_3 = pc_wb + 32'h4; // @[Datapath.scala 111:26]
  wire [31:0] _regfile_io_write_data_T_5 = 2'h1 == wb_wb_sel ? alu_out_wb : 32'h0; // @[Mux.scala 80:57]
  wire [31:0] _regfile_io_write_data_T_7 = 2'h2 == wb_wb_sel ? _regfile_io_write_data_T_1 : _regfile_io_write_data_T_5; // @[Mux.scala 80:57]
  RegFile regfile ( // @[Datapath.scala 28:26]
    .clock(regfile_clock),
    .reset(regfile_reset),
    .io_read_addr1(regfile_io_read_addr1),
    .io_read_addr2(regfile_io_read_addr2),
    .io_read_addr_debug(regfile_io_read_addr_debug),
    .io_write_addr(regfile_io_write_addr),
    .io_write_en(regfile_io_write_en),
    .io_write_data(regfile_io_write_data),
    .io_read_data1(regfile_io_read_data1),
    .io_read_data2(regfile_io_read_data2),
    .io_read_data_debug(regfile_io_read_data_debug)
  );
  ALU alu ( // @[Datapath.scala 29:26]
    .io_a(alu_io_a),
    .io_b(alu_io_b),
    .io_op(alu_io_op),
    .io_res(alu_io_res),
    .io_z(alu_io_z)
  );
  ImmGen immgen ( // @[Datapath.scala 30:26]
    .io_inst(immgen_io_inst),
    .io_sel(immgen_io_sel),
    .io_imm(immgen_io_imm)
  );
  BrCond brcond ( // @[Datapath.scala 31:26]
    .io_z(brcond_io_z),
    .io_sel(brcond_io_sel),
    .io_taken(brcond_io_taken)
  );
  assign io_ctrl_inst = inst; // @[Datapath.scala 76:18]
  assign io_dmem_a = alu_out_mem[7:0]; // @[Datapath.scala 100:29]
  assign io_dmem_d = io_dmem_d_REG_1; // @[Datapath.scala 102:15]
  assign io_dmem_dpra = io_debug_bus_mem_rf_addr; // @[Datapath.scala 101:18]
  assign io_dmem_we = mem_mem_write & ~alu_out_mem[10]; // @[Datapath.scala 103:33]
  assign io_imem_a = pc[9:2]; // @[Datapath.scala 68:20]
  assign io_io_bus_io_addr = alu_io_res[7:0]; // @[Datapath.scala 115:36]
  assign io_io_bus_io_dout = regfile_io_read_data2; // @[Datapath.scala 116:23]
  assign io_io_bus_io_we = alu_io_res[10] & io_ctrl_mem_mem_write; // @[Datapath.scala 117:39]
  assign io_debug_bus_rf_data = regfile_io_read_data_debug; // @[Datapath.scala 118:26]
  assign io_debug_bus_mem_data = io_dmem_dpo; // @[Datapath.scala 119:27]
  assign io_debug_bus_pc = pc; // @[Datapath.scala 120:21]
  assign regfile_clock = clock;
  assign regfile_reset = reset;
  assign regfile_io_read_addr1 = inst[19:15]; // @[Datapath.scala 77:34]
  assign regfile_io_read_addr2 = inst[24:20]; // @[Datapath.scala 78:34]
  assign regfile_io_read_addr_debug = io_debug_bus_mem_rf_addr[4:0]; // @[Datapath.scala 79:59]
  assign regfile_io_write_addr = dest_reg_wb; // @[Datapath.scala 106:27]
  assign regfile_io_write_en = wb_reg_write; // @[Datapath.scala 107:25]
  assign regfile_io_write_data = 2'h3 == wb_wb_sel ? _regfile_io_write_data_T_3 : _regfile_io_write_data_T_7; // @[Mux.scala 80:57]
  assign alu_io_a = ex_a_sel == 2'h3 ? pc_ex : _alu_io_a_T_1; // @[Datapath.scala 90:20]
  assign alu_io_b = ex_b_sel == 2'h1 ? _alu_io_b_T_1 : imm; // @[Datapath.scala 92:20]
  assign alu_io_op = ex_alu_op; // @[Datapath.scala 94:15]
  assign immgen_io_inst = inst; // @[Datapath.scala 80:20]
  assign immgen_io_sel = io_ctrl_id_imm_sel; // @[Datapath.scala 81:19]
  assign brcond_io_z = alu_io_z; // @[Datapath.scala 96:17]
  assign brcond_io_sel = ex_br_sel; // @[Datapath.scala 97:19]
  always @(posedge clock) begin
    if (reset) begin // @[Datapath.scala 33:21]
      pc <= 32'h3000; // @[Datapath.scala 33:21]
    end else if (ex_pc_sel == 2'h1 | brcond_io_taken) begin // @[Datapath.scala 69:30]
      pc <= alu_io_res;
    end else begin
      pc <= _pc_T_3;
    end
    inst <= io_imem_spo; // @[Datapath.scala 122:19 Datapath.scala 123:14 Datapath.scala 40:19]
    pc_id <= pc; // @[Datapath.scala 122:19 Datapath.scala 124:15 Datapath.scala 41:20]
    pc_ex <= pc_id; // @[Datapath.scala 122:19 Datapath.scala 125:15 Datapath.scala 44:20]
    a <= regfile_io_read_data1; // @[Datapath.scala 122:19 Datapath.scala 126:11 Datapath.scala 45:16]
    b <= regfile_io_read_data2; // @[Datapath.scala 122:19 Datapath.scala 127:11 Datapath.scala 46:16]
    imm <= immgen_io_imm; // @[Datapath.scala 122:19 Datapath.scala 128:13 Datapath.scala 47:18]
    dest_reg_ex <= inst[11:7]; // @[Datapath.scala 129:28]
    ex_a_sel <= io_ctrl_ex_a_sel; // @[Datapath.scala 122:19 Datapath.scala 130:12 Datapath.scala 50:17]
    ex_b_sel <= io_ctrl_ex_b_sel; // @[Datapath.scala 122:19 Datapath.scala 130:12 Datapath.scala 50:17]
    ex_alu_op <= io_ctrl_ex_alu_op; // @[Datapath.scala 122:19 Datapath.scala 130:12 Datapath.scala 50:17]
    ex_br_sel <= io_ctrl_ex_br_sel; // @[Datapath.scala 122:19 Datapath.scala 130:12 Datapath.scala 50:17]
    ex_pc_sel <= io_ctrl_ex_pc_sel; // @[Datapath.scala 122:19 Datapath.scala 130:12 Datapath.scala 50:17]
    wb_ex_wb_sel <= io_ctrl_wb_wb_sel; // @[Datapath.scala 122:19 Datapath.scala 131:15 Datapath.scala 51:20]
    wb_ex_reg_write <= io_ctrl_wb_reg_write; // @[Datapath.scala 122:19 Datapath.scala 131:15 Datapath.scala 51:20]
    mem_ex_mem_write <= io_ctrl_mem_mem_write; // @[Datapath.scala 122:19 Datapath.scala 132:16 Datapath.scala 52:21]
    mem_mem_write <= mem_ex_mem_write; // @[Datapath.scala 122:19 Datapath.scala 133:13 Datapath.scala 55:18]
    wb_mem_wb_sel <= wb_ex_wb_sel; // @[Datapath.scala 122:19 Datapath.scala 134:16 Datapath.scala 56:21]
    wb_mem_reg_write <= wb_ex_reg_write; // @[Datapath.scala 122:19 Datapath.scala 134:16 Datapath.scala 56:21]
    pc_mem <= pc_ex; // @[Datapath.scala 122:19 Datapath.scala 135:16 Datapath.scala 57:21]
    alu_out_mem <= alu_io_res; // @[Datapath.scala 122:19 Datapath.scala 136:21 Datapath.scala 58:26]
    dest_reg_mem <= dest_reg_ex; // @[Datapath.scala 122:19 Datapath.scala 137:22 Datapath.scala 59:27]
    pc_wb <= pc_mem; // @[Datapath.scala 122:19 Datapath.scala 139:15 Datapath.scala 62:20]
    wb_wb_sel <= wb_mem_wb_sel; // @[Datapath.scala 122:19 Datapath.scala 140:12 Datapath.scala 63:17]
    wb_reg_write <= wb_mem_reg_write; // @[Datapath.scala 122:19 Datapath.scala 140:12 Datapath.scala 63:17]
    alu_out_wb <= alu_out_mem; // @[Datapath.scala 122:19 Datapath.scala 141:20 Datapath.scala 64:25]
    dest_reg_wb <= dest_reg_mem; // @[Datapath.scala 122:19 Datapath.scala 142:21 Datapath.scala 65:26]
    hazard_a_REG <= inst[19:15]; // @[Datapath.scala 84:52]
    hazard_b_REG <= inst[24:20]; // @[Datapath.scala 85:52]
    io_dmem_d_REG <= regfile_io_read_data2; // @[Datapath.scala 102:33]
    io_dmem_d_REG_1 <= io_dmem_d_REG; // @[Datapath.scala 102:25]
    regfile_io_write_data_REG <= io_dmem_spo; // @[Datapath.scala 110:64]
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
  pc = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  inst = _RAND_1[31:0];
  _RAND_2 = {1{`RANDOM}};
  pc_id = _RAND_2[31:0];
  _RAND_3 = {1{`RANDOM}};
  pc_ex = _RAND_3[31:0];
  _RAND_4 = {1{`RANDOM}};
  a = _RAND_4[31:0];
  _RAND_5 = {1{`RANDOM}};
  b = _RAND_5[31:0];
  _RAND_6 = {1{`RANDOM}};
  imm = _RAND_6[31:0];
  _RAND_7 = {1{`RANDOM}};
  dest_reg_ex = _RAND_7[4:0];
  _RAND_8 = {1{`RANDOM}};
  ex_a_sel = _RAND_8[1:0];
  _RAND_9 = {1{`RANDOM}};
  ex_b_sel = _RAND_9[1:0];
  _RAND_10 = {1{`RANDOM}};
  ex_alu_op = _RAND_10[2:0];
  _RAND_11 = {1{`RANDOM}};
  ex_br_sel = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  ex_pc_sel = _RAND_12[1:0];
  _RAND_13 = {1{`RANDOM}};
  wb_ex_wb_sel = _RAND_13[1:0];
  _RAND_14 = {1{`RANDOM}};
  wb_ex_reg_write = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  mem_ex_mem_write = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  mem_mem_write = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  wb_mem_wb_sel = _RAND_17[1:0];
  _RAND_18 = {1{`RANDOM}};
  wb_mem_reg_write = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  pc_mem = _RAND_19[31:0];
  _RAND_20 = {1{`RANDOM}};
  alu_out_mem = _RAND_20[31:0];
  _RAND_21 = {1{`RANDOM}};
  dest_reg_mem = _RAND_21[4:0];
  _RAND_22 = {1{`RANDOM}};
  pc_wb = _RAND_22[31:0];
  _RAND_23 = {1{`RANDOM}};
  wb_wb_sel = _RAND_23[1:0];
  _RAND_24 = {1{`RANDOM}};
  wb_reg_write = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  alu_out_wb = _RAND_25[31:0];
  _RAND_26 = {1{`RANDOM}};
  dest_reg_wb = _RAND_26[4:0];
  _RAND_27 = {1{`RANDOM}};
  hazard_a_REG = _RAND_27[4:0];
  _RAND_28 = {1{`RANDOM}};
  hazard_b_REG = _RAND_28[4:0];
  _RAND_29 = {1{`RANDOM}};
  io_dmem_d_REG = _RAND_29[31:0];
  _RAND_30 = {1{`RANDOM}};
  io_dmem_d_REG_1 = _RAND_30[31:0];
  _RAND_31 = {1{`RANDOM}};
  regfile_io_write_data_REG = _RAND_31[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Control(
  input  [31:0] io_inst,
  output [2:0]  io_id_imm_sel,
  output [1:0]  io_ex_a_sel,
  output [1:0]  io_ex_b_sel,
  output [2:0]  io_ex_alu_op,
  output        io_ex_br_sel,
  output [1:0]  io_ex_pc_sel,
  output        io_mem_mem_write,
  output [1:0]  io_wb_wb_sel,
  output        io_wb_reg_write
);
  wire [31:0] _T = io_inst & 32'hfe00707f; // @[Lookup.scala 31:38]
  wire  _T_1 = 32'h33 == _T; // @[Lookup.scala 31:38]
  wire [31:0] _T_2 = io_inst & 32'h707f; // @[Lookup.scala 31:38]
  wire  _T_3 = 32'h13 == _T_2; // @[Lookup.scala 31:38]
  wire  _T_5 = 32'h2003 == _T_2; // @[Lookup.scala 31:38]
  wire  _T_7 = 32'h2023 == _T_2; // @[Lookup.scala 31:38]
  wire  _T_9 = 32'h63 == _T_2; // @[Lookup.scala 31:38]
  wire [31:0] _T_10 = io_inst & 32'h7f; // @[Lookup.scala 31:38]
  wire  _T_11 = 32'h6f == _T_10; // @[Lookup.scala 31:38]
  wire [1:0] _T_12 = _T_11 ? 2'h1 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _T_13 = _T_9 ? 2'h2 : _T_12; // @[Lookup.scala 33:37]
  wire [1:0] _T_14 = _T_7 ? 2'h0 : _T_13; // @[Lookup.scala 33:37]
  wire [1:0] _T_15 = _T_5 ? 2'h0 : _T_14; // @[Lookup.scala 33:37]
  wire [1:0] _T_16 = _T_3 ? 2'h0 : _T_15; // @[Lookup.scala 33:37]
  wire [2:0] _T_17 = _T_11 ? 3'h4 : 3'h0; // @[Lookup.scala 33:37]
  wire [2:0] _T_18 = _T_9 ? 3'h5 : _T_17; // @[Lookup.scala 33:37]
  wire [2:0] _T_19 = _T_7 ? 3'h3 : _T_18; // @[Lookup.scala 33:37]
  wire [2:0] _T_20 = _T_5 ? 3'h2 : _T_19; // @[Lookup.scala 33:37]
  wire [2:0] _T_21 = _T_3 ? 3'h2 : _T_20; // @[Lookup.scala 33:37]
  wire [2:0] _T_22 = _T_11 ? 3'h0 : 3'h5; // @[Lookup.scala 33:37]
  wire [2:0] _T_23 = _T_9 ? 3'h1 : _T_22; // @[Lookup.scala 33:37]
  wire [2:0] _T_24 = _T_7 ? 3'h0 : _T_23; // @[Lookup.scala 33:37]
  wire [2:0] _T_25 = _T_5 ? 3'h0 : _T_24; // @[Lookup.scala 33:37]
  wire [2:0] _T_26 = _T_3 ? 3'h0 : _T_25; // @[Lookup.scala 33:37]
  wire [1:0] _T_27 = _T_11 ? 2'h3 : 2'h0; // @[Lookup.scala 33:37]
  wire [1:0] _T_28 = _T_9 ? 2'h3 : _T_27; // @[Lookup.scala 33:37]
  wire [1:0] _T_29 = _T_7 ? 2'h1 : _T_28; // @[Lookup.scala 33:37]
  wire [1:0] _T_30 = _T_5 ? 2'h1 : _T_29; // @[Lookup.scala 33:37]
  wire [1:0] _T_31 = _T_3 ? 2'h1 : _T_30; // @[Lookup.scala 33:37]
  wire [1:0] _T_33 = _T_9 ? 2'h1 : _T_12; // @[Lookup.scala 33:37]
  wire [1:0] _T_34 = _T_7 ? 2'h2 : _T_33; // @[Lookup.scala 33:37]
  wire [1:0] _T_35 = _T_5 ? 2'h2 : _T_34; // @[Lookup.scala 33:37]
  wire [1:0] _T_36 = _T_3 ? 2'h2 : _T_35; // @[Lookup.scala 33:37]
  wire  _T_39 = _T_7 ? 1'h0 : _T_9; // @[Lookup.scala 33:37]
  wire  _T_40 = _T_5 ? 1'h0 : _T_39; // @[Lookup.scala 33:37]
  wire  _T_41 = _T_3 ? 1'h0 : _T_40; // @[Lookup.scala 33:37]
  wire  _T_45 = _T_5 ? 1'h0 : _T_7; // @[Lookup.scala 33:37]
  wire  _T_46 = _T_3 ? 1'h0 : _T_45; // @[Lookup.scala 33:37]
  wire [1:0] _T_53 = _T_9 ? 2'h1 : _T_27; // @[Lookup.scala 33:37]
  wire [1:0] _T_54 = _T_7 ? 2'h1 : _T_53; // @[Lookup.scala 33:37]
  wire [1:0] _T_55 = _T_5 ? 2'h2 : _T_54; // @[Lookup.scala 33:37]
  wire [1:0] _T_56 = _T_3 ? 2'h1 : _T_55; // @[Lookup.scala 33:37]
  wire  _T_58 = _T_9 ? 1'h0 : _T_11; // @[Lookup.scala 33:37]
  wire  _T_59 = _T_7 ? 1'h0 : _T_58; // @[Lookup.scala 33:37]
  assign io_id_imm_sel = _T_1 ? 3'h1 : _T_21; // @[Lookup.scala 33:37]
  assign io_ex_a_sel = _T_1 ? 2'h1 : _T_31; // @[Lookup.scala 33:37]
  assign io_ex_b_sel = _T_1 ? 2'h1 : _T_36; // @[Lookup.scala 33:37]
  assign io_ex_alu_op = _T_1 ? 3'h0 : _T_26; // @[Lookup.scala 33:37]
  assign io_ex_br_sel = _T_1 ? 1'h0 : _T_41; // @[Lookup.scala 33:37]
  assign io_ex_pc_sel = _T_1 ? 2'h0 : _T_16; // @[Lookup.scala 33:37]
  assign io_mem_mem_write = _T_1 ? 1'h0 : _T_46; // @[Lookup.scala 33:37]
  assign io_wb_wb_sel = _T_1 ? 2'h1 : _T_56; // @[Lookup.scala 33:37]
  assign io_wb_reg_write = _T_1 | (_T_3 | (_T_5 | _T_59)); // @[Lookup.scala 33:37]
endmodule
module CPU(
  input         clock,
  input         reset,
  input  [31:0] io_io_bus_io_din,
  output [7:0]  io_io_bus_io_addr,
  output [31:0] io_io_bus_io_dout,
  output        io_io_bus_io_we,
  input  [7:0]  io_debug_bus_mem_rf_addr,
  output [31:0] io_debug_bus_rf_data,
  output [31:0] io_debug_bus_mem_data,
  output [31:0] io_debug_bus_pc
);
  wire [7:0] imem_a; // @[Core.scala 12:23]
  wire [31:0] imem_spo; // @[Core.scala 12:23]
  wire [7:0] dmem_a; // @[Core.scala 13:23]
  wire [31:0] dmem_d; // @[Core.scala 13:23]
  wire [7:0] dmem_dpra; // @[Core.scala 13:23]
  wire  dmem_we; // @[Core.scala 13:23]
  wire [31:0] dmem_dpo; // @[Core.scala 13:23]
  wire [31:0] dmem_spo; // @[Core.scala 13:23]
  wire  datapath_clock; // @[Core.scala 14:27]
  wire  datapath_reset; // @[Core.scala 14:27]
  wire [31:0] datapath_io_ctrl_inst; // @[Core.scala 14:27]
  wire [2:0] datapath_io_ctrl_id_imm_sel; // @[Core.scala 14:27]
  wire [1:0] datapath_io_ctrl_ex_a_sel; // @[Core.scala 14:27]
  wire [1:0] datapath_io_ctrl_ex_b_sel; // @[Core.scala 14:27]
  wire [2:0] datapath_io_ctrl_ex_alu_op; // @[Core.scala 14:27]
  wire  datapath_io_ctrl_ex_br_sel; // @[Core.scala 14:27]
  wire [1:0] datapath_io_ctrl_ex_pc_sel; // @[Core.scala 14:27]
  wire  datapath_io_ctrl_mem_mem_write; // @[Core.scala 14:27]
  wire [1:0] datapath_io_ctrl_wb_wb_sel; // @[Core.scala 14:27]
  wire  datapath_io_ctrl_wb_reg_write; // @[Core.scala 14:27]
  wire [7:0] datapath_io_dmem_a; // @[Core.scala 14:27]
  wire [31:0] datapath_io_dmem_d; // @[Core.scala 14:27]
  wire [7:0] datapath_io_dmem_dpra; // @[Core.scala 14:27]
  wire  datapath_io_dmem_we; // @[Core.scala 14:27]
  wire [31:0] datapath_io_dmem_dpo; // @[Core.scala 14:27]
  wire [31:0] datapath_io_dmem_spo; // @[Core.scala 14:27]
  wire [7:0] datapath_io_imem_a; // @[Core.scala 14:27]
  wire [31:0] datapath_io_imem_spo; // @[Core.scala 14:27]
  wire [31:0] datapath_io_io_bus_io_din; // @[Core.scala 14:27]
  wire [7:0] datapath_io_io_bus_io_addr; // @[Core.scala 14:27]
  wire [31:0] datapath_io_io_bus_io_dout; // @[Core.scala 14:27]
  wire  datapath_io_io_bus_io_we; // @[Core.scala 14:27]
  wire [7:0] datapath_io_debug_bus_mem_rf_addr; // @[Core.scala 14:27]
  wire [31:0] datapath_io_debug_bus_rf_data; // @[Core.scala 14:27]
  wire [31:0] datapath_io_debug_bus_mem_data; // @[Core.scala 14:27]
  wire [31:0] datapath_io_debug_bus_pc; // @[Core.scala 14:27]
  wire [31:0] ctrl_io_inst; // @[Core.scala 15:23]
  wire [2:0] ctrl_io_id_imm_sel; // @[Core.scala 15:23]
  wire [1:0] ctrl_io_ex_a_sel; // @[Core.scala 15:23]
  wire [1:0] ctrl_io_ex_b_sel; // @[Core.scala 15:23]
  wire [2:0] ctrl_io_ex_alu_op; // @[Core.scala 15:23]
  wire  ctrl_io_ex_br_sel; // @[Core.scala 15:23]
  wire [1:0] ctrl_io_ex_pc_sel; // @[Core.scala 15:23]
  wire  ctrl_io_mem_mem_write; // @[Core.scala 15:23]
  wire [1:0] ctrl_io_wb_wb_sel; // @[Core.scala 15:23]
  wire  ctrl_io_wb_reg_write; // @[Core.scala 15:23]
  IMem imem ( // @[Core.scala 12:23]
    .a(imem_a),
    .spo(imem_spo)
  );
  DMem dmem ( // @[Core.scala 13:23]
    .a(dmem_a),
    .d(dmem_d),
    .dpra(dmem_dpra),
    .we(dmem_we),
    .dpo(dmem_dpo),
    .spo(dmem_spo)
  );
  DataPath datapath ( // @[Core.scala 14:27]
    .clock(datapath_clock),
    .reset(datapath_reset),
    .io_ctrl_inst(datapath_io_ctrl_inst),
    .io_ctrl_id_imm_sel(datapath_io_ctrl_id_imm_sel),
    .io_ctrl_ex_a_sel(datapath_io_ctrl_ex_a_sel),
    .io_ctrl_ex_b_sel(datapath_io_ctrl_ex_b_sel),
    .io_ctrl_ex_alu_op(datapath_io_ctrl_ex_alu_op),
    .io_ctrl_ex_br_sel(datapath_io_ctrl_ex_br_sel),
    .io_ctrl_ex_pc_sel(datapath_io_ctrl_ex_pc_sel),
    .io_ctrl_mem_mem_write(datapath_io_ctrl_mem_mem_write),
    .io_ctrl_wb_wb_sel(datapath_io_ctrl_wb_wb_sel),
    .io_ctrl_wb_reg_write(datapath_io_ctrl_wb_reg_write),
    .io_dmem_a(datapath_io_dmem_a),
    .io_dmem_d(datapath_io_dmem_d),
    .io_dmem_dpra(datapath_io_dmem_dpra),
    .io_dmem_we(datapath_io_dmem_we),
    .io_dmem_dpo(datapath_io_dmem_dpo),
    .io_dmem_spo(datapath_io_dmem_spo),
    .io_imem_a(datapath_io_imem_a),
    .io_imem_spo(datapath_io_imem_spo),
    .io_io_bus_io_din(datapath_io_io_bus_io_din),
    .io_io_bus_io_addr(datapath_io_io_bus_io_addr),
    .io_io_bus_io_dout(datapath_io_io_bus_io_dout),
    .io_io_bus_io_we(datapath_io_io_bus_io_we),
    .io_debug_bus_mem_rf_addr(datapath_io_debug_bus_mem_rf_addr),
    .io_debug_bus_rf_data(datapath_io_debug_bus_rf_data),
    .io_debug_bus_mem_data(datapath_io_debug_bus_mem_data),
    .io_debug_bus_pc(datapath_io_debug_bus_pc)
  );
  Control ctrl ( // @[Core.scala 15:23]
    .io_inst(ctrl_io_inst),
    .io_id_imm_sel(ctrl_io_id_imm_sel),
    .io_ex_a_sel(ctrl_io_ex_a_sel),
    .io_ex_b_sel(ctrl_io_ex_b_sel),
    .io_ex_alu_op(ctrl_io_ex_alu_op),
    .io_ex_br_sel(ctrl_io_ex_br_sel),
    .io_ex_pc_sel(ctrl_io_ex_pc_sel),
    .io_mem_mem_write(ctrl_io_mem_mem_write),
    .io_wb_wb_sel(ctrl_io_wb_wb_sel),
    .io_wb_reg_write(ctrl_io_wb_reg_write)
  );
  assign io_io_bus_io_addr = datapath_io_io_bus_io_addr; // @[Core.scala 19:24]
  assign io_io_bus_io_dout = datapath_io_io_bus_io_dout; // @[Core.scala 19:24]
  assign io_io_bus_io_we = datapath_io_io_bus_io_we; // @[Core.scala 19:24]
  assign io_debug_bus_rf_data = datapath_io_debug_bus_rf_data; // @[Core.scala 20:27]
  assign io_debug_bus_mem_data = datapath_io_debug_bus_mem_data; // @[Core.scala 20:27]
  assign io_debug_bus_pc = datapath_io_debug_bus_pc; // @[Core.scala 20:27]
  assign imem_a = datapath_io_imem_a; // @[Core.scala 18:22]
  assign dmem_a = datapath_io_dmem_a; // @[Core.scala 17:22]
  assign dmem_d = datapath_io_dmem_d; // @[Core.scala 17:22]
  assign dmem_dpra = datapath_io_dmem_dpra; // @[Core.scala 17:22]
  assign dmem_we = datapath_io_dmem_we; // @[Core.scala 17:22]
  assign datapath_clock = clock;
  assign datapath_reset = reset;
  assign datapath_io_ctrl_id_imm_sel = ctrl_io_id_imm_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_ex_a_sel = ctrl_io_ex_a_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_ex_b_sel = ctrl_io_ex_b_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_ex_alu_op = ctrl_io_ex_alu_op; // @[Core.scala 16:22]
  assign datapath_io_ctrl_ex_br_sel = ctrl_io_ex_br_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_ex_pc_sel = ctrl_io_ex_pc_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_mem_mem_write = ctrl_io_mem_mem_write; // @[Core.scala 16:22]
  assign datapath_io_ctrl_wb_wb_sel = ctrl_io_wb_wb_sel; // @[Core.scala 16:22]
  assign datapath_io_ctrl_wb_reg_write = ctrl_io_wb_reg_write; // @[Core.scala 16:22]
  assign datapath_io_dmem_dpo = dmem_dpo; // @[Core.scala 17:22]
  assign datapath_io_dmem_spo = dmem_spo; // @[Core.scala 17:22]
  assign datapath_io_imem_spo = imem_spo; // @[Core.scala 18:22]
  assign datapath_io_io_bus_io_din = io_io_bus_io_din; // @[Core.scala 19:24]
  assign datapath_io_debug_bus_mem_rf_addr = io_debug_bus_mem_rf_addr; // @[Core.scala 20:27]
  assign ctrl_io_inst = datapath_io_ctrl_inst; // @[Core.scala 16:22]
endmodule
