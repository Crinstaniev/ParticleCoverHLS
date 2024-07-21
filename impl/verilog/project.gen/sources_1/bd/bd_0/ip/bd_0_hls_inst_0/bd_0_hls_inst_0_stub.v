// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Jul 20 20:46:27 2024
// Host        : OGAS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Projects/ParticleCoverHLS/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.v
// Design      : bd_0_hls_inst_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030sbg485-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "system_top,Vivado 2020.2" *)
module bd_0_hls_inst_0(points_ce0, points_ce1, num_points_ce0, 
  num_points_ce1, ap_clk, ap_rst, ap_start, ap_done, ap_idle, ap_ready, points_address0, points_q0, 
  points_address1, points_q1, num_points_address0, num_points_q0, num_points_address1, 
  num_points_q1, patch_stream_V_din, patch_stream_V_full_n, patch_stream_V_write)
/* synthesis syn_black_box black_box_pad_pin="points_ce0,points_ce1,num_points_ce0,num_points_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,points_address0[11:0],points_q0[127:0],points_address1[11:0],points_q1[127:0],num_points_address0[2:0],num_points_q0[31:0],num_points_address1[2:0],num_points_q1[31:0],patch_stream_V_din[95:0],patch_stream_V_full_n,patch_stream_V_write" */;
  output points_ce0;
  output points_ce1;
  output num_points_ce0;
  output num_points_ce1;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [11:0]points_address0;
  input [127:0]points_q0;
  output [11:0]points_address1;
  input [127:0]points_q1;
  output [2:0]num_points_address0;
  input [31:0]num_points_q0;
  output [2:0]num_points_address1;
  input [31:0]num_points_q1;
  output [95:0]patch_stream_V_din;
  input patch_stream_V_full_n;
  output patch_stream_V_write;
endmodule
