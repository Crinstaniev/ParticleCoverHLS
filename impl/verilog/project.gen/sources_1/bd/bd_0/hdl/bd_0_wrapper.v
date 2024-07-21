//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jul 20 20:43:25 2024
//Host        : OGAS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0_wrapper.bd
//Design      : bd_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_0_wrapper
   (ap_clk,
    ap_ctrl_done,
    ap_ctrl_idle,
    ap_ctrl_ready,
    ap_ctrl_start,
    ap_rst,
    num_points_address0,
    num_points_address1,
    num_points_ce0,
    num_points_ce1,
    num_points_q0,
    num_points_q1,
    patch_stream_V_full_n,
    patch_stream_V_wr_data,
    patch_stream_V_wr_en,
    points_address0,
    points_address1,
    points_ce0,
    points_ce1,
    points_q0,
    points_q1);
  input ap_clk;
  output ap_ctrl_done;
  output ap_ctrl_idle;
  output ap_ctrl_ready;
  input ap_ctrl_start;
  input ap_rst;
  output [2:0]num_points_address0;
  output [2:0]num_points_address1;
  output num_points_ce0;
  output num_points_ce1;
  input [31:0]num_points_q0;
  input [31:0]num_points_q1;
  input patch_stream_V_full_n;
  output [95:0]patch_stream_V_wr_data;
  output patch_stream_V_wr_en;
  output [11:0]points_address0;
  output [11:0]points_address1;
  output points_ce0;
  output points_ce1;
  input [127:0]points_q0;
  input [127:0]points_q1;

  wire ap_clk;
  wire ap_ctrl_done;
  wire ap_ctrl_idle;
  wire ap_ctrl_ready;
  wire ap_ctrl_start;
  wire ap_rst;
  wire [2:0]num_points_address0;
  wire [2:0]num_points_address1;
  wire num_points_ce0;
  wire num_points_ce1;
  wire [31:0]num_points_q0;
  wire [31:0]num_points_q1;
  wire patch_stream_V_full_n;
  wire [95:0]patch_stream_V_wr_data;
  wire patch_stream_V_wr_en;
  wire [11:0]points_address0;
  wire [11:0]points_address1;
  wire points_ce0;
  wire points_ce1;
  wire [127:0]points_q0;
  wire [127:0]points_q1;

  bd_0 bd_0_i
       (.ap_clk(ap_clk),
        .ap_ctrl_done(ap_ctrl_done),
        .ap_ctrl_idle(ap_ctrl_idle),
        .ap_ctrl_ready(ap_ctrl_ready),
        .ap_ctrl_start(ap_ctrl_start),
        .ap_rst(ap_rst),
        .num_points_address0(num_points_address0),
        .num_points_address1(num_points_address1),
        .num_points_ce0(num_points_ce0),
        .num_points_ce1(num_points_ce1),
        .num_points_q0(num_points_q0),
        .num_points_q1(num_points_q1),
        .patch_stream_V_full_n(patch_stream_V_full_n),
        .patch_stream_V_wr_data(patch_stream_V_wr_data),
        .patch_stream_V_wr_en(patch_stream_V_wr_en),
        .points_address0(points_address0),
        .points_address1(points_address1),
        .points_ce0(points_ce0),
        .points_ce1(points_ce1),
        .points_q0(points_q0),
        .points_q1(points_q1));
endmodule
