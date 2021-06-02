`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/06/2021 05:04:42 PM
// Design Name:
// Module Name: cpu_tb
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


module cpu_tb();
    reg clk, rst;
    reg [7:0] m_rf_addr;
    reg [31:0] io_din, inst;

    wire [7:0] io_addr;
    wire [31:0] io_dout, rf_data, m_data, pc;
    wire io_we;

    wire [2:0]  imm_sel;
    wire        br_sel;
    wire        mem_write;
    wire [1:0]  b_sel;
    wire [2:0]  alu_op;
    wire [1:0]  pc_sel;
    wire        reg_write;
    wire [1:0]  wb_sel;
    wire [31:0] immediate;
    CPU cpu(
        .clock(clk),
        .reset(rst),
        .io_io_bus_io_din(io_din),
        .io_io_bus_io_addr(io_addr),
        .io_io_bus_io_dout(io_dout),
        .io_io_bus_io_we(io_we),
        .io_debug_bus_mem_rf_addr(m_rf_addr),
        .io_debug_bus_rf_data(rf_data),
        .io_debug_bus_mem_data(m_data),
        .io_debug_bus_pc(pc)
    );
    Control ctrl ( // @[Core.scala 15:23]
        .io_inst(inst),
        .io_imm_sel(imm_sel),
        .io_br_sel(br_sel),
        .io_mem_write(mem_write),
        .io_b_sel(b_sel),
        .io_alu_op(alu_op),
        .io_pc_sel(pc_sel),
        .io_reg_write(reg_write),
        .io_wb_sel(wb_sel)
    );
    ImmGen immgen(
        .io_inst(inst),
        .io_sel(imm_sel),
        .io_imm(immediate)
    );
    initial begin
        clk = 0;
        forever
        #5 clk = ~clk;
    end
    initial begin
        rst = 1; m_rf_addr = 5; io_din = 3;
    #20 rst = 0;
    #5 inst = 32'h00100093;
    #5 inst = 32'h00000333;
    #5 inst = 32'h40102223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe028ee3;
    #5 inst = 32'h40c02403;
    #5 inst = 32'h40802423;
    #5 inst = 32'h00832023;
    #5 inst = 32'h00430313;
    #5 inst = 32'h40002223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe128ee3;
    #5 inst = 32'h40102223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe028ee3;
    #5 inst = 32'h40c02483;
    #5 inst = 32'h40902423;
    #5 inst = 32'h00932023;
    #5 inst = 32'h00430313;
    #5 inst = 32'h40002223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe128ee3;
    #5 inst = 32'h009402b3;
    #5 inst = 32'h40502423;
    #5 inst = 32'h00532023;
    #5 inst = 32'h00430313;
    #5 inst = 32'h00900433;
    #5 inst = 32'h005004b3;
    #5 inst = 32'h40102223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe028ee3;
    #5 inst = 32'h40002223;
    #5 inst = 32'h41002283;
    #5 inst = 32'hfe128ee3;
    #5 inst = 32'hfd1ff06f;
    end
endmodule

