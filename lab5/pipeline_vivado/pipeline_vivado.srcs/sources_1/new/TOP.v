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
    wire [31:0] io_din, io_dout, rf_data, m_data, pc, pc_in, pcd, pce, ir, imm, mdr, a, b, y, bm, yw, ctrl, ctrlm, ctrlw;
    wire [4:0] rd, rdm, rdw;
    wire io_we, clk_cpu, stall, flush;

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
    PDU pdu(
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
        .pcin(pc_in), .pc(pc), .pcd(pcd), .pce(pce),
        .ir(ir), .imm(imm), .mdr(mdr),
        .a(a), .b(b), .y(y), .bm(bm), .yw(yw),
        .rd(rd), .rdm(rdm), .rdw(rdw),
        .ctrl(ctrl), .ctrlm(ctrlm), .ctrlw(ctrlw)
    );
endmodule
