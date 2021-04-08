`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module FLS_tb;
    reg clk, reset, en;
    reg [6:0] in;
    wire [6:0] out;

    initial
    begin
        $dumpfile("test.vcd");
        $dumpvars(0,FLS_tb);
    end
    FLS fls(.clock(clk), .reset(reset), .io_en(en), .io_in(in), .io_out(out));
    initial begin
        clk = 0;
        repeat (2* 20)
            #5 clk = ~ clk;
    end

    initial begin
        reset = 1;
        #12 reset = 0;
    end

    initial begin
        en = 0;
        #6 en = 1;
        #19 en = 0;
        #16 en = 1;
        #8 en = 0;
        #22 en = 1;
        #35 en = 0;
        #14 en = 1;
    end

    initial begin
        in = 2;
        #57in = 3;
        #43 in = 4;
        #23 in = 5; // useless I think
    end
endmodule