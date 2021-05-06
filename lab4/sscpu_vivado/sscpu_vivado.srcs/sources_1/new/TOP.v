`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 05/05/2021 09:04:45 AM
// Design Name:
// Module Name: TOP
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

module TOP(
    input clk,
    input rst,      // sw7
    input run,      // sw6
    input step,     // button
    input valid,    // sw5
    input [4:0] in, // sw4-0
    output [1:0] check, // led6-5
    output [4:0] out0,  // led4-0
    output [2:0] an,
    output [3:0] seg,
    output ready        // led7
    );
    wire [7:0] io_addr, m_rf_addr;
    wire [31:0] io_din, io_dout, rf_data, m_data, pc;
    wire io_we, clk_cpu;
    CPU cpu(
        .clock(clk_cpu),
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
    pdu pdu(
        .clk(clk),
        .rst(rst),
        .run(run),
        .step(step),
        .clk_cpu(clk_cpu),
        .valid(valid),
        .in(in),
        .check(check),
        .out0(out0),
        .an(an),
        .seg(seg),
        .ready(ready),
        .io_addr(io_addr),
        .io_dout(io_dout),
        .io_we(io_we),
        .io_din(io_din),
        .m_rf_addr(m_rf_addr),
        .rf_data(rf_data),
        .m_data(m_data),
        .pc(pc)
    );
endmodule
