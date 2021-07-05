`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 06/02/2021 08:28:52 PM
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
    reg [31:0] io_din;

    wire [7:0] io_addr;
    wire [31:0] io_dout, rf_data, m_data, pc, pc_in, pcd, pce, ir, imm, mdr, a, b, y, bm, yw, ctrl, ctrlm, ctrlw;
    wire io_we, stall, flush;
    wire [4:0] rd, rdm, rdw;
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
        .io_debug_bus_pc(pc),
        .io_debug_bus_pc_in(pc_in),
        .io_debug_bus_pcd(pcd),
        .io_debug_bus_pce(pce),
        .io_debug_bus_ir(ir),
        .io_debug_bus_imm(imm),
        .io_debug_bus_mdr(mdr),
        .io_debug_bus_a(a),
        .io_debug_bus_b(b),
        .io_debug_bus_y(y),
        .io_debug_bus_bm(bm),
        .io_debug_bus_yw(yw),
        .io_debug_bus_rd(rd),
        .io_debug_bus_rdm(rdm),
        .io_debug_bus_rdw(rdw),
        .io_debug_bus_ctrl(ctrl),
        .io_debug_bus_ctrlm(ctrlm),
        .io_debug_bus_ctrlw(ctrlw),
        .io_debug_bus_stall(stall),
        .io_debug_bus_flush(flush)
    );
    initial begin
        clk = 0;
        forever
        #5 clk = ~clk;
    end
    initial begin
        rst = 1; m_rf_addr = 5; io_din = 3;
    #20 rst = 0;
    end
endmodule