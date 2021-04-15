`timescale 1 ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module regf_tb;
    reg clk, reset, write_en;
    reg [4:0] read_addr1, read_addr2, write_addr;
    reg [3:0] write_data;
    wire [3:0] read_data1, read_data2;

    initial
    begin
        $dumpfile("regf_test.vcd");
        $dumpvars(0,regf_tb);
    end

    RegFile rf (
        .clock(clk),
        .reset(reset),
        .io_read_addr1(read_addr1),
        .io_read_addr2(read_addr2),
        .io_write_addr(write_addr),
        .io_write_en(write_en),
        .io_write_data(write_data),
        .io_read_data1(read_data1),
        .io_read_data2(read_data2)
    );

    initial begin
        clk = 0;
        repeat (2 * 20)
            #5 clk = ~ clk;
    end

    initial begin
        reset = 1;
        #12 reset = 0;
    end

    initial begin
        write_en = 0;
        #6 write_en = 1;
        #19 write_en = 0;
        #16 write_en = 1;
        #8 write_en = 0;
        #22 write_en = 1;
        #35 write_en = 0;
        #14 write_en = 1;
        #5 write_en = 0;
        #20 write_en = 1;
        #7 write_en = 0;
        #19 write_en = 1;
        #24 write_en = 0;
        #15 write_en = 1;
    end

    initial begin
        read_addr1 = 0;
        repeat (32)
            # 8 read_addr1 = read_addr1+1;
    end

    initial begin
        read_addr2 = 0;
        repeat (32)
            # 12 read_addr2 = read_addr2+1; // the same as write_addr
    end

    initial begin
        write_addr = 0;
        repeat (32)
            # 12 write_addr = write_addr+1;
    end
    initial begin
        write_data = 1;
        repeat (20)
            # 9 write_data = write_data+2;
    end
endmodule