// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module run_insert_point_Pipeline_is_valid_label2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        d_read,
        d_read_8,
        d_read_9,
        d_read_10,
        d_read_11,
        d_read_12,
        d_read_13,
        d_read_14,
        ap_return,
        grp_fu_1711_p_din0,
        grp_fu_1711_p_din1,
        grp_fu_1711_p_opcode,
        grp_fu_1711_p_dout0,
        grp_fu_1711_p_ce,
        grp_fu_1715_p_din0,
        grp_fu_1715_p_din1,
        grp_fu_1715_p_opcode,
        grp_fu_1715_p_dout0,
        grp_fu_1715_p_ce,
        grp_fu_1719_p_din0,
        grp_fu_1719_p_din1,
        grp_fu_1719_p_opcode,
        grp_fu_1719_p_dout0,
        grp_fu_1719_p_ce
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] d_read;
input  [31:0] d_read_8;
input  [31:0] d_read_9;
input  [31:0] d_read_10;
input  [31:0] d_read_11;
input  [31:0] d_read_12;
input  [31:0] d_read_13;
input  [31:0] d_read_14;
output  [0:0] ap_return;
output  [31:0] grp_fu_1711_p_din0;
output  [31:0] grp_fu_1711_p_din1;
output  [4:0] grp_fu_1711_p_opcode;
input  [0:0] grp_fu_1711_p_dout0;
output   grp_fu_1711_p_ce;
output  [31:0] grp_fu_1715_p_din0;
output  [31:0] grp_fu_1715_p_din1;
output  [4:0] grp_fu_1715_p_opcode;
input  [0:0] grp_fu_1715_p_dout0;
output   grp_fu_1715_p_ce;
output  [31:0] grp_fu_1719_p_din0;
output  [31:0] grp_fu_1719_p_din1;
output  [4:0] grp_fu_1719_p_opcode;
input  [0:0] grp_fu_1719_p_dout0;
output   grp_fu_1719_p_ce;

reg ap_idle;
reg[0:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state2;
wire    ap_block_state2_pp0_stage1_iter0;
wire   [0:0] or_ln89_2_fu_238_p2;
reg   [0:0] icmp_ln87_reg_255;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] merge_reg_120;
wire   [0:0] icmp_ln87_fu_155_p2;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [3:0] add_ln87_fu_161_p2;
reg   [3:0] add_ln87_reg_259;
wire   [31:0] p_x_assign_fu_167_p10;
wire   [0:0] icmp_ln89_fu_210_p2;
reg   [0:0] icmp_ln89_reg_271;
wire   [0:0] icmp_ln89_2_fu_216_p2;
reg   [0:0] icmp_ln89_2_reg_276;
reg   [0:0] ap_phi_mux_merge_phi_fu_124_p4;
reg   [3:0] i_fu_68;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_i_2;
wire   [31:0] bitcast_ln89_fu_192_p1;
wire   [7:0] tmp_s_fu_196_p4;
wire   [22:0] trunc_ln89_fu_206_p1;
wire   [0:0] or_ln89_fu_222_p2;
wire   [0:0] or_ln89_3_fu_226_p2;
wire   [0:0] and_ln89_fu_232_p2;
reg   [0:0] ap_return_preg;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_return_preg = 1'd0;
#0 ap_done_reg = 1'b0;
end

run_mux_84_32_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .din2_WIDTH( 32 ),
    .din3_WIDTH( 32 ),
    .din4_WIDTH( 32 ),
    .din5_WIDTH( 32 ),
    .din6_WIDTH( 32 ),
    .din7_WIDTH( 32 ),
    .din8_WIDTH( 4 ),
    .dout_WIDTH( 32 ))
mux_84_32_1_1_U4(
    .din0(d_read),
    .din1(d_read_8),
    .din2(d_read_9),
    .din3(d_read_10),
    .din4(d_read_11),
    .din5(d_read_12),
    .din6(d_read_13),
    .din7(d_read_14),
    .din8(ap_sig_allocacmp_i_2),
    .dout(p_x_assign_fu_167_p10)
);

run_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= 1'd0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln87_reg_255 == 1'd1) | (or_ln89_2_fu_238_p2 == 1'd1)))) begin
            ap_return_preg <= ap_phi_mux_merge_phi_fu_124_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        i_fu_68 <= 4'd0;
    end else if (((icmp_ln87_reg_255 == 1'd0) & (or_ln89_2_fu_238_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state2))) begin
        i_fu_68 <= add_ln87_reg_259;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_reg_255 == 1'd0) & (or_ln89_2_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        merge_reg_120 <= 1'd0;
    end else if (((icmp_ln87_fu_155_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        merge_reg_120 <= 1'd1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        add_ln87_reg_259 <= add_ln87_fu_161_p2;
        icmp_ln87_reg_255 <= icmp_ln87_fu_155_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln87_fu_155_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
        icmp_ln89_2_reg_276 <= icmp_ln89_2_fu_216_p2;
        icmp_ln89_reg_271 <= icmp_ln89_fu_210_p2;
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln87_reg_255 == 1'd1) | (or_ln89_2_fu_238_p2 == 1'd1)))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln87_reg_255 == 1'd0) & (or_ln89_2_fu_238_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_phi_mux_merge_phi_fu_124_p4 = 1'd0;
    end else begin
        ap_phi_mux_merge_phi_fu_124_p4 = merge_reg_120;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((icmp_ln87_reg_255 == 1'd1) | (or_ln89_2_fu_238_p2 == 1'd1)))) begin
        ap_return = ap_phi_mux_merge_phi_fu_124_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_i_2 = 4'd0;
    end else begin
        ap_sig_allocacmp_i_2 = i_fu_68;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln87_fu_161_p2 = (ap_sig_allocacmp_i_2 + 4'd1);

assign and_ln89_fu_232_p2 = (or_ln89_fu_222_p2 & or_ln89_3_fu_226_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_block_state2_pp0_stage1_iter0 = ~(1'b1 == 1'b1);

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;

assign bitcast_ln89_fu_192_p1 = p_x_assign_fu_167_p10;

assign grp_fu_1711_p_ce = 1'b1;

assign grp_fu_1711_p_din0 = p_x_assign_fu_167_p10;

assign grp_fu_1711_p_din1 = 32'd0;

assign grp_fu_1711_p_opcode = 5'd8;

assign grp_fu_1715_p_ce = 1'b1;

assign grp_fu_1715_p_din0 = p_x_assign_fu_167_p10;

assign grp_fu_1715_p_din1 = 32'd2139095040;

assign grp_fu_1715_p_opcode = 5'd1;

assign grp_fu_1719_p_ce = 1'b1;

assign grp_fu_1719_p_din0 = p_x_assign_fu_167_p10;

assign grp_fu_1719_p_din1 = 32'd4286578688;

assign grp_fu_1719_p_opcode = 5'd1;

assign icmp_ln87_fu_155_p2 = ((ap_sig_allocacmp_i_2 == 4'd8) ? 1'b1 : 1'b0);

assign icmp_ln89_2_fu_216_p2 = ((trunc_ln89_fu_206_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln89_fu_210_p2 = ((tmp_s_fu_196_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln89_2_fu_238_p2 = (grp_fu_1711_p_dout0 | and_ln89_fu_232_p2);

assign or_ln89_3_fu_226_p2 = (grp_fu_1719_p_dout0 | grp_fu_1715_p_dout0);

assign or_ln89_fu_222_p2 = (icmp_ln89_reg_271 | icmp_ln89_2_reg_276);

assign tmp_s_fu_196_p4 = {{bitcast_ln89_fu_192_p1[30:23]}};

assign trunc_ln89_fu_206_p1 = bitcast_ln89_fu_192_p1[22:0];

endmodule //run_insert_point_Pipeline_is_valid_label2