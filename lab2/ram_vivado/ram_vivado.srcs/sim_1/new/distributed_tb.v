`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/15/2021 06:06:17 PM
// Design Name:
// Module Name: distributed_tb
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


module distributed_tb(
    );
    reg [4:0] addr;
    reg [15:0] data;
    reg write_enable;
    reg clock;
    wire [15:0] spo;

    dist_mem_gen_0 dist_mem_gen_0(
        .a(addr),
        .d(data),
        .we(write_enable),
        .clk(clock),
        .spo(spo)
    );
    initial begin
        clock = 0;
        forever
        #5 clock = ~clock;
    end
    initial begin
        write_enable = 0; addr = 1;
    #20 write_enable = 1; addr = 2; data = 888;
    #12 addr = 3; data = 17;
    #10 write_enable = 0; addr = 4; data = 48;
    #15 write_enable = 1; addr = 5; data = 99;
    #10 $finish;
    end

endmodule