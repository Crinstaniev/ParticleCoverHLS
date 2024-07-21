// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:hls:system_top:1.0
// IP Revision: 2113654183

(* X_CORE_INFO = "system_top,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "bd_0_hls_inst_0,system_top,{}" *)
(* CORE_GENERATION_INFO = "bd_0_hls_inst_0,system_top,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=system_top,x_ipVersion=1.0,x_ipCoreRevision=2113654183,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "HLS" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bd_0_hls_inst_0 (
  points_ce0,
  points_ce1,
  num_points_ce0,
  num_points_ce1,
  ap_clk,
  ap_rst,
  ap_start,
  ap_done,
  ap_idle,
  ap_ready,
  points_address0,
  points_q0,
  points_address1,
  points_q1,
  num_points_address0,
  num_points_q0,
  num_points_address1,
  num_points_q1,
  patch_stream_V_din,
  patch_stream_V_full_n,
  patch_stream_V_write
);

output wire points_ce0;
output wire points_ce1;
output wire num_points_ce0;
output wire num_points_ce1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_clk, ASSOCIATED_RESET ap_rst, FREQ_HZ 100000000.0, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN bd_0_ap_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ap_clk CLK" *)
input wire ap_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ap_rst RST" *)
input wire ap_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl start" *)
input wire ap_start;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl done" *)
output wire ap_done;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl idle" *)
output wire ap_idle;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_handshake:1.0 ap_ctrl ready" *)
output wire ap_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME points_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 points_address0 DATA" *)
output wire [11 : 0] points_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME points_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 points_q0 DATA" *)
input wire [127 : 0] points_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME points_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 points_address1 DATA" *)
output wire [11 : 0] points_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME points_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 points_q1 DATA" *)
input wire [127 : 0] points_q1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME num_points_address0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 num_points_address0 DATA" *)
output wire [2 : 0] num_points_address0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME num_points_q0, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 num_points_q0 DATA" *)
input wire [31 : 0] num_points_q0;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME num_points_address1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 num_points_address1 DATA" *)
output wire [2 : 0] num_points_address1;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME num_points_q1, LAYERED_METADATA undef" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 num_points_q1 DATA" *)
input wire [31 : 0] num_points_q1;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V WR_DATA" *)
output wire [95 : 0] patch_stream_V_din;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V FULL_N" *)
input wire patch_stream_V_full_n;
(* X_INTERFACE_INFO = "xilinx.com:interface:acc_fifo_write:1.0 patch_stream_V WR_EN" *)
output wire patch_stream_V_write;

(* SDX_KERNEL = "true" *)
(* SDX_KERNEL_TYPE = "hls" *)
(* SDX_KERNEL_SYNTH_INST = "inst" *)
  system_top inst (
    .points_ce0(points_ce0),
    .points_ce1(points_ce1),
    .num_points_ce0(num_points_ce0),
    .num_points_ce1(num_points_ce1),
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .points_address0(points_address0),
    .points_q0(points_q0),
    .points_address1(points_address1),
    .points_q1(points_q1),
    .num_points_address0(num_points_address0),
    .num_points_q0(num_points_q0),
    .num_points_address1(num_points_address1),
    .num_points_q1(num_points_q1),
    .patch_stream_V_din(patch_stream_V_din),
    .patch_stream_V_full_n(patch_stream_V_full_n),
    .patch_stream_V_write(patch_stream_V_write)
  );
endmodule
