// why you don't have a bunch of comments??

module TOP (
    input clk,
    input reset,
    input deq,
    input enq,
    input [3:0]in,
    output [3:0]out,
    output full,
    output empty,
    output [2:0] AN,
    output [3:0] D
);
    Queue queue(
        .clock(clk),
        .reset(reset),
        .io_deq(deq),
        .io_enq(enq),
        .io_in(in),
        .io_out(out),
        .io_full(full),
        .io_empty(empty),
        .io_an(AN),
        .io_seg(D)
    );
endmodule