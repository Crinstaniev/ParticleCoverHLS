//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sat Jul 20 20:43:25 2024
//Host        : OGAS running 64-bit major release  (build 9200)
//Command     : generate_target bd_0.bd
//Design      : bd_0
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_0,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_0,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "bd_0.hwdef" *) 
module bd_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.AP_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.AP_CLK, ASSOCIATED_RESET ap_rst, CLK_DOMAIN bd_0_ap_clk_0, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input ap_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_done;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_idle;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) output ap_ctrl_ready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl " *) input ap_ctrl_start;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.AP_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.AP_RST, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input ap_rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NUM_POINTS_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NUM_POINTS_ADDRESS0, LAYERED_METADATA undef" *) output [2:0]num_points_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NUM_POINTS_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NUM_POINTS_ADDRESS1, LAYERED_METADATA undef" *) output [2:0]num_points_address1;
  output num_points_ce0;
  output num_points_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NUM_POINTS_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NUM_POINTS_Q0, LAYERED_METADATA undef" *) input [31:0]num_points_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.NUM_POINTS_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.NUM_POINTS_Q1, LAYERED_METADATA undef" *) input [31:0]num_points_q1;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V " *) input patch_stream_V_full_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V " *) output [95:0]patch_stream_V_wr_data;
  (* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V " *) output patch_stream_V_wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.POINTS_ADDRESS0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.POINTS_ADDRESS0, LAYERED_METADATA undef" *) output [11:0]points_address0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.POINTS_ADDRESS1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.POINTS_ADDRESS1, LAYERED_METADATA undef" *) output [11:0]points_address1;
  output points_ce0;
  output points_ce1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.POINTS_Q0 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.POINTS_Q0, LAYERED_METADATA undef" *) input [127:0]points_q0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.POINTS_Q1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.POINTS_Q1, LAYERED_METADATA undef" *) input [127:0]points_q1;

  wire ap_clk_0_1;
  wire ap_ctrl_0_1_done;
  wire ap_ctrl_0_1_idle;
  wire ap_ctrl_0_1_ready;
  wire ap_ctrl_0_1_start;
  wire ap_rst_0_1;
  wire [2:0]hls_inst_num_points_address0;
  wire [2:0]hls_inst_num_points_address1;
  wire hls_inst_num_points_ce0;
  wire hls_inst_num_points_ce1;
  wire hls_inst_patch_stream_V_FULL_N;
  wire [95:0]hls_inst_patch_stream_V_WR_DATA;
  wire hls_inst_patch_stream_V_WR_EN;
  wire [11:0]hls_inst_points_address0;
  wire [11:0]hls_inst_points_address1;
  wire hls_inst_points_ce0;
  wire hls_inst_points_ce1;
  wire [31:0]num_points_q0_0_1;
  wire [31:0]num_points_q1_0_1;
  wire [127:0]points_q0_0_1;
  wire [127:0]points_q1_0_1;

  assign ap_clk_0_1 = ap_clk;
  assign ap_ctrl_0_1_start = ap_ctrl_start;
  assign ap_ctrl_done = ap_ctrl_0_1_done;
  assign ap_ctrl_idle = ap_ctrl_0_1_idle;
  assign ap_ctrl_ready = ap_ctrl_0_1_ready;
  assign ap_rst_0_1 = ap_rst;
  assign hls_inst_patch_stream_V_FULL_N = patch_stream_V_full_n;
  assign num_points_address0[2:0] = hls_inst_num_points_address0;
  assign num_points_address1[2:0] = hls_inst_num_points_address1;
  assign num_points_ce0 = hls_inst_num_points_ce0;
  assign num_points_ce1 = hls_inst_num_points_ce1;
  assign num_points_q0_0_1 = num_points_q0[31:0];
  assign num_points_q1_0_1 = num_points_q1[31:0];
  assign patch_stream_V_wr_data[95:0] = hls_inst_patch_stream_V_WR_DATA;
  assign patch_stream_V_wr_en = hls_inst_patch_stream_V_WR_EN;
  assign points_address0[11:0] = hls_inst_points_address0;
  assign points_address1[11:0] = hls_inst_points_address1;
  assign points_ce0 = hls_inst_points_ce0;
  assign points_ce1 = hls_inst_points_ce1;
  assign points_q0_0_1 = points_q0[127:0];
  assign points_q1_0_1 = points_q1[127:0];
  bd_0_hls_inst_0 hls_inst
       (.ap_clk(ap_clk_0_1),
        .ap_done(ap_ctrl_0_1_done),
        .ap_idle(ap_ctrl_0_1_idle),
        .ap_ready(ap_ctrl_0_1_ready),
        .ap_rst(ap_rst_0_1),
        .ap_start(ap_ctrl_0_1_start),
        .num_points_address0(hls_inst_num_points_address0),
        .num_points_address1(hls_inst_num_points_address1),
        .num_points_ce0(hls_inst_num_points_ce0),
        .num_points_ce1(hls_inst_num_points_ce1),
        .num_points_q0(num_points_q0_0_1),
        .num_points_q1(num_points_q1_0_1),
        .patch_stream_V_din(hls_inst_patch_stream_V_WR_DATA),
        .patch_stream_V_full_n(hls_inst_patch_stream_V_FULL_N),
        .patch_stream_V_write(hls_inst_patch_stream_V_WR_EN),
        .points_address0(hls_inst_points_address0),
        .points_address1(hls_inst_points_address1),
        .points_ce0(hls_inst_points_ce0),
        .points_ce1(hls_inst_points_ce1),
        .points_q0(points_q0_0_1),
        .points_q1(points_q1_0_1));
endmodule
