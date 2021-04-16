`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 04/15/2021 06:13:53 PM
// Design Name:
// Module Name: block_tb
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


module block_tb(
    );
    reg[4:0] addra;
    reg[15:0] dina;
    reg wea; // [0:0] ?? so cute(
    reg clka;
    wire[15:0] douta;
    reg ena;

    blk_mem_gen_0 blk_mem_gen_0(
        .addra(addra),
        .dina(dina),
        .wea(wea),
        .clka(clka),
        .douta(douta),
        .ena(ena)
    );

    initial begin
        clka = 0;
        forever
        #5 clka = ~clka;
    end

    initial begin
        ena = 0; wea = 0; addra = 1;
        #20 ena = 1; wea = 1; addra = 2; dina = 150;
        #10 wea = 1; addra = 3; dina = 96;
        #10 wea = 0; addra = 4; dina = 444;
        #10 wea = 1; addra = 5; dina = 3;
        #20 $finish;
    end

endmodule
