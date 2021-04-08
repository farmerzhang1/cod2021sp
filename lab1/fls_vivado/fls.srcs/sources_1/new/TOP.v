`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08.04.2021 10:11:49
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
    input reset,
    input en, // sw[0]
    input [6:0] in,
    output [6:0] out
    );
    FLS fls (
        .clock(clk),
        .reset(reset),
        .io_en(en),
        .io_in(in),
        .io_out(out)
    );
endmodule
