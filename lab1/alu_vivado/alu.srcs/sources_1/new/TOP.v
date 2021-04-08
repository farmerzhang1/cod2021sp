`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 08.04.2021 09:33:55
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
    input en,
    input [5:0] op,
    input [1:0] sw,
    output [5:0] led,
    output led7
    );
    ALU_test alu_test(.clock(clk), .io_op(op), .io_switch(sw), .io_en(en), .io_led5_0(led), .io_led7(led7));
endmodule
