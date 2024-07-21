-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Jul 20 20:46:27 2024
-- Host        : OGAS running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Projects/ParticleCoverHLS/solution1/impl/verilog/project.gen/sources_1/bd/bd_0/ip/bd_0_hls_inst_0/bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030sbg485-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bd_0_hls_inst_0 is
  Port ( 
    points_ce0 : out STD_LOGIC;
    points_ce1 : out STD_LOGIC;
    num_points_ce0 : out STD_LOGIC;
    num_points_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    points_address0 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    points_q0 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    points_address1 : out STD_LOGIC_VECTOR ( 11 downto 0 );
    points_q1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    num_points_address0 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    num_points_q0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    num_points_address1 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    num_points_q1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    patch_stream_V_din : out STD_LOGIC_VECTOR ( 95 downto 0 );
    patch_stream_V_full_n : in STD_LOGIC;
    patch_stream_V_write : out STD_LOGIC
  );

end bd_0_hls_inst_0;

architecture stub of bd_0_hls_inst_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "points_ce0,points_ce1,num_points_ce0,num_points_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,points_address0[11:0],points_q0[127:0],points_address1[11:0],points_q1[127:0],num_points_address0[2:0],num_points_q0[31:0],num_points_address1[2:0],num_points_q1[31:0],patch_stream_V_din[95:0],patch_stream_V_full_n,patch_stream_V_write";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "system_top,Vivado 2020.2";
begin
end;
