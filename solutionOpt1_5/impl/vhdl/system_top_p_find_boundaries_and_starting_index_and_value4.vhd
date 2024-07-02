-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
-- Version: 2020.2
-- Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity system_top_p_find_boundaries_and_starting_index_and_value4 is
port (
    num_points_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
    num_points_ce0 : OUT STD_LOGIC;
    num_points_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_points_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    num_points_we0 : OUT STD_LOGIC;
    num_points_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
    num_points_ce1 : OUT STD_LOGIC;
    num_points_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    num_points_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    num_points_we1 : OUT STD_LOGIC;
    points_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
    points_ce0 : OUT STD_LOGIC;
    points_d0 : OUT STD_LOGIC_VECTOR (127 downto 0);
    points_q0 : IN STD_LOGIC_VECTOR (127 downto 0);
    points_we0 : OUT STD_LOGIC;
    points_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
    points_ce1 : OUT STD_LOGIC;
    points_d1 : OUT STD_LOGIC_VECTOR (127 downto 0);
    points_q1 : IN STD_LOGIC_VECTOR (127 downto 0);
    points_we1 : OUT STD_LOGIC;
    left_bound : OUT STD_LOGIC_VECTOR (31 downto 0);
    projectionToRow : IN STD_LOGIC_VECTOR (25 downto 0);
    start_index : OUT STD_LOGIC_VECTOR (31 downto 0);
    start_value_i : IN STD_LOGIC_VECTOR (31 downto 0);
    start_value_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    i : IN STD_LOGIC_VECTOR (2 downto 0);
    lbVal_constprop_i : IN STD_LOGIC_VECTOR (31 downto 0);
    lbVal_constprop_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    rbVal_constprop_i : IN STD_LOGIC_VECTOR (31 downto 0);
    rbVal_constprop_o : OUT STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    projectionToRow_ap_vld : IN STD_LOGIC;
    i_ap_vld : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    left_bound_ap_vld : OUT STD_LOGIC;
    lbVal_constprop_i_ap_vld : IN STD_LOGIC;
    lbVal_constprop_o_ap_vld : OUT STD_LOGIC;
    rbVal_constprop_i_ap_vld : IN STD_LOGIC;
    rbVal_constprop_o_ap_vld : OUT STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    start_index_ap_vld : OUT STD_LOGIC;
    start_value_i_ap_vld : IN STD_LOGIC;
    start_value_o_ap_vld : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC );
end;


architecture behav of system_top_p_find_boundaries_and_starting_index_and_value4 is 
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv128_lc_1 : STD_LOGIC_VECTOR (127 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_start : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_done : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_continue : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_idle : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_din : STD_LOGIC_VECTOR (25 downto 0);
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_write : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_din : STD_LOGIC_VECTOR (2 downto 0);
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_write : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_din : STD_LOGIC_VECTOR (2 downto 0);
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_write : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_ap_start : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_ap_done : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_ap_continue : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_ap_idle : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_ap_ready : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_num_points_address0 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_find_left_and_right_boundaries6_U0_num_points_ce0 : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_points_address0 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_find_left_and_right_boundaries6_U0_points_ce0 : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_left_bound : STD_LOGIC_VECTOR (31 downto 0);
    signal p_find_left_and_right_boundaries6_U0_left_bound_ap_vld : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_i_read : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_lbVal_constprop_o : STD_LOGIC_VECTOR (31 downto 0);
    signal p_find_left_and_right_boundaries6_U0_lbVal_constprop_o_ap_vld : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_rbVal_constprop_o : STD_LOGIC_VECTOR (31 downto 0);
    signal p_find_left_and_right_boundaries6_U0_rbVal_constprop_o_ap_vld : STD_LOGIC;
    signal ap_sync_continue : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_ap_start : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_ap_done : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_ap_continue : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_ap_idle : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_ap_ready : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_num_points_address1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_find_starting_index_and_value5_U0_num_points_ce1 : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_points_address1 : STD_LOGIC_VECTOR (11 downto 0);
    signal p_find_starting_index_and_value5_U0_points_ce1 : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_projectionToRow_read : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_start_index : STD_LOGIC_VECTOR (31 downto 0);
    signal p_find_starting_index_and_value5_U0_start_index_ap_vld : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_start_value_o : STD_LOGIC_VECTOR (31 downto 0);
    signal p_find_starting_index_and_value5_U0_start_value_o_ap_vld : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_i_read : STD_LOGIC;
    signal projectionToRow_c_full_n : STD_LOGIC;
    signal projectionToRow_c_dout : STD_LOGIC_VECTOR (25 downto 0);
    signal projectionToRow_c_empty_n : STD_LOGIC;
    signal i_c_full_n : STD_LOGIC;
    signal i_c_dout : STD_LOGIC_VECTOR (2 downto 0);
    signal i_c_empty_n : STD_LOGIC;
    signal i_c7_full_n : STD_LOGIC;
    signal i_c7_dout : STD_LOGIC_VECTOR (2 downto 0);
    signal i_c7_empty_n : STD_LOGIC;
    signal ap_sync_done : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_p_find_left_and_right_boundaries6_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_p_find_starting_index_and_value5_U0_ap_ready : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_start_full_n : STD_LOGIC;
    signal p_find_boundaries_and_starting_index_and_value_entry25_U0_start_write : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_start_full_n : STD_LOGIC;
    signal p_find_left_and_right_boundaries6_U0_start_write : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_start_full_n : STD_LOGIC;
    signal p_find_starting_index_and_value5_U0_start_write : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component system_top_p_find_boundaries_and_starting_index_and_value_entry25 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        projectionToRow : IN STD_LOGIC_VECTOR (25 downto 0);
        i : IN STD_LOGIC_VECTOR (2 downto 0);
        projectionToRow_out_din : OUT STD_LOGIC_VECTOR (25 downto 0);
        projectionToRow_out_full_n : IN STD_LOGIC;
        projectionToRow_out_write : OUT STD_LOGIC;
        i_out_din : OUT STD_LOGIC_VECTOR (2 downto 0);
        i_out_full_n : IN STD_LOGIC;
        i_out_write : OUT STD_LOGIC;
        i_out1_din : OUT STD_LOGIC_VECTOR (2 downto 0);
        i_out1_full_n : IN STD_LOGIC;
        i_out1_write : OUT STD_LOGIC );
    end component;


    component system_top_p_find_left_and_right_boundaries6 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        num_points_address0 : OUT STD_LOGIC_VECTOR (2 downto 0);
        num_points_ce0 : OUT STD_LOGIC;
        num_points_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
        points_address0 : OUT STD_LOGIC_VECTOR (11 downto 0);
        points_ce0 : OUT STD_LOGIC;
        points_q0 : IN STD_LOGIC_VECTOR (127 downto 0);
        left_bound : OUT STD_LOGIC_VECTOR (31 downto 0);
        left_bound_ap_vld : OUT STD_LOGIC;
        i_dout : IN STD_LOGIC_VECTOR (2 downto 0);
        i_empty_n : IN STD_LOGIC;
        i_read : OUT STD_LOGIC;
        lbVal_constprop_i : IN STD_LOGIC_VECTOR (31 downto 0);
        lbVal_constprop_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        lbVal_constprop_o_ap_vld : OUT STD_LOGIC;
        rbVal_constprop_i : IN STD_LOGIC_VECTOR (31 downto 0);
        rbVal_constprop_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        rbVal_constprop_o_ap_vld : OUT STD_LOGIC );
    end component;


    component system_top_p_find_starting_index_and_value5 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        num_points_address1 : OUT STD_LOGIC_VECTOR (2 downto 0);
        num_points_ce1 : OUT STD_LOGIC;
        num_points_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
        points_address1 : OUT STD_LOGIC_VECTOR (11 downto 0);
        points_ce1 : OUT STD_LOGIC;
        points_q1 : IN STD_LOGIC_VECTOR (127 downto 0);
        projectionToRow_dout : IN STD_LOGIC_VECTOR (25 downto 0);
        projectionToRow_empty_n : IN STD_LOGIC;
        projectionToRow_read : OUT STD_LOGIC;
        start_index : OUT STD_LOGIC_VECTOR (31 downto 0);
        start_index_ap_vld : OUT STD_LOGIC;
        start_value_i : IN STD_LOGIC_VECTOR (31 downto 0);
        start_value_o : OUT STD_LOGIC_VECTOR (31 downto 0);
        start_value_o_ap_vld : OUT STD_LOGIC;
        i_dout : IN STD_LOGIC_VECTOR (2 downto 0);
        i_empty_n : IN STD_LOGIC;
        i_read : OUT STD_LOGIC );
    end component;


    component system_top_fifo_w26_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (25 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (25 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component system_top_fifo_w3_d2_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (2 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    p_find_boundaries_and_starting_index_and_value_entry25_U0 : component system_top_p_find_boundaries_and_starting_index_and_value_entry25
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_start,
        ap_done => p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_done,
        ap_continue => p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_continue,
        ap_idle => p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_idle,
        ap_ready => p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready,
        projectionToRow => projectionToRow,
        i => i,
        projectionToRow_out_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_din,
        projectionToRow_out_full_n => projectionToRow_c_full_n,
        projectionToRow_out_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_write,
        i_out_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_din,
        i_out_full_n => i_c_full_n,
        i_out_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_write,
        i_out1_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_din,
        i_out1_full_n => i_c7_full_n,
        i_out1_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_write);

    p_find_left_and_right_boundaries6_U0 : component system_top_p_find_left_and_right_boundaries6
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_find_left_and_right_boundaries6_U0_ap_start,
        ap_done => p_find_left_and_right_boundaries6_U0_ap_done,
        ap_continue => p_find_left_and_right_boundaries6_U0_ap_continue,
        ap_idle => p_find_left_and_right_boundaries6_U0_ap_idle,
        ap_ready => p_find_left_and_right_boundaries6_U0_ap_ready,
        num_points_address0 => p_find_left_and_right_boundaries6_U0_num_points_address0,
        num_points_ce0 => p_find_left_and_right_boundaries6_U0_num_points_ce0,
        num_points_q0 => num_points_q0,
        points_address0 => p_find_left_and_right_boundaries6_U0_points_address0,
        points_ce0 => p_find_left_and_right_boundaries6_U0_points_ce0,
        points_q0 => points_q0,
        left_bound => p_find_left_and_right_boundaries6_U0_left_bound,
        left_bound_ap_vld => p_find_left_and_right_boundaries6_U0_left_bound_ap_vld,
        i_dout => i_c_dout,
        i_empty_n => i_c_empty_n,
        i_read => p_find_left_and_right_boundaries6_U0_i_read,
        lbVal_constprop_i => lbVal_constprop_i,
        lbVal_constprop_o => p_find_left_and_right_boundaries6_U0_lbVal_constprop_o,
        lbVal_constprop_o_ap_vld => p_find_left_and_right_boundaries6_U0_lbVal_constprop_o_ap_vld,
        rbVal_constprop_i => rbVal_constprop_i,
        rbVal_constprop_o => p_find_left_and_right_boundaries6_U0_rbVal_constprop_o,
        rbVal_constprop_o_ap_vld => p_find_left_and_right_boundaries6_U0_rbVal_constprop_o_ap_vld);

    p_find_starting_index_and_value5_U0 : component system_top_p_find_starting_index_and_value5
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => p_find_starting_index_and_value5_U0_ap_start,
        ap_done => p_find_starting_index_and_value5_U0_ap_done,
        ap_continue => p_find_starting_index_and_value5_U0_ap_continue,
        ap_idle => p_find_starting_index_and_value5_U0_ap_idle,
        ap_ready => p_find_starting_index_and_value5_U0_ap_ready,
        num_points_address1 => p_find_starting_index_and_value5_U0_num_points_address1,
        num_points_ce1 => p_find_starting_index_and_value5_U0_num_points_ce1,
        num_points_q1 => num_points_q1,
        points_address1 => p_find_starting_index_and_value5_U0_points_address1,
        points_ce1 => p_find_starting_index_and_value5_U0_points_ce1,
        points_q1 => points_q1,
        projectionToRow_dout => projectionToRow_c_dout,
        projectionToRow_empty_n => projectionToRow_c_empty_n,
        projectionToRow_read => p_find_starting_index_and_value5_U0_projectionToRow_read,
        start_index => p_find_starting_index_and_value5_U0_start_index,
        start_index_ap_vld => p_find_starting_index_and_value5_U0_start_index_ap_vld,
        start_value_i => start_value_i,
        start_value_o => p_find_starting_index_and_value5_U0_start_value_o,
        start_value_o_ap_vld => p_find_starting_index_and_value5_U0_start_value_o_ap_vld,
        i_dout => i_c7_dout,
        i_empty_n => i_c7_empty_n,
        i_read => p_find_starting_index_and_value5_U0_i_read);

    projectionToRow_c_U : component system_top_fifo_w26_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_din,
        if_full_n => projectionToRow_c_full_n,
        if_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_projectionToRow_out_write,
        if_dout => projectionToRow_c_dout,
        if_empty_n => projectionToRow_c_empty_n,
        if_read => p_find_starting_index_and_value5_U0_projectionToRow_read);

    i_c_U : component system_top_fifo_w3_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_din,
        if_full_n => i_c_full_n,
        if_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out_write,
        if_dout => i_c_dout,
        if_empty_n => i_c_empty_n,
        if_read => p_find_left_and_right_boundaries6_U0_i_read);

    i_c7_U : component system_top_fifo_w3_d2_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_din,
        if_full_n => i_c7_full_n,
        if_write => p_find_boundaries_and_starting_index_and_value_entry25_U0_i_out1_write,
        if_dout => i_c7_dout,
        if_empty_n => i_c7_empty_n,
        if_read => p_find_starting_index_and_value5_U0_i_read);





    ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready <= ap_sync_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready <= ap_sync_p_find_left_and_right_boundaries6_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready <= ap_sync_p_find_starting_index_and_value5_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;

    ap_done <= ap_sync_done;
    ap_idle <= (p_find_starting_index_and_value5_U0_ap_idle and p_find_left_and_right_boundaries6_U0_ap_idle and p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_continue <= (ap_sync_done and ap_continue);
    ap_sync_done <= (p_find_starting_index_and_value5_U0_ap_done and p_find_left_and_right_boundaries6_U0_ap_done);
    ap_sync_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready <= (p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready or ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready);
    ap_sync_p_find_left_and_right_boundaries6_U0_ap_ready <= (p_find_left_and_right_boundaries6_U0_ap_ready or ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready);
    ap_sync_p_find_starting_index_and_value5_U0_ap_ready <= (p_find_starting_index_and_value5_U0_ap_ready or ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready);
    ap_sync_ready <= (ap_sync_p_find_starting_index_and_value5_U0_ap_ready and ap_sync_p_find_left_and_right_boundaries6_U0_ap_ready and ap_sync_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready);
    lbVal_constprop_o <= p_find_left_and_right_boundaries6_U0_lbVal_constprop_o;
    lbVal_constprop_o_ap_vld <= p_find_left_and_right_boundaries6_U0_lbVal_constprop_o_ap_vld;
    left_bound <= p_find_left_and_right_boundaries6_U0_left_bound;
    left_bound_ap_vld <= p_find_left_and_right_boundaries6_U0_left_bound_ap_vld;
    num_points_address0 <= p_find_left_and_right_boundaries6_U0_num_points_address0;
    num_points_address1 <= p_find_starting_index_and_value5_U0_num_points_address1;
    num_points_ce0 <= p_find_left_and_right_boundaries6_U0_num_points_ce0;
    num_points_ce1 <= p_find_starting_index_and_value5_U0_num_points_ce1;
    num_points_d0 <= ap_const_lv32_0;
    num_points_d1 <= ap_const_lv32_0;
    num_points_we0 <= ap_const_logic_0;
    num_points_we1 <= ap_const_logic_0;
    p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_continue <= ap_const_logic_1;
    p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_start <= ((ap_sync_reg_p_find_boundaries_and_starting_index_and_value_entry25_U0_ap_ready xor ap_const_logic_1) and ap_start);
    p_find_boundaries_and_starting_index_and_value_entry25_U0_start_full_n <= ap_const_logic_1;
    p_find_boundaries_and_starting_index_and_value_entry25_U0_start_write <= ap_const_logic_0;
    p_find_left_and_right_boundaries6_U0_ap_continue <= ap_sync_continue;
    p_find_left_and_right_boundaries6_U0_ap_start <= ((ap_sync_reg_p_find_left_and_right_boundaries6_U0_ap_ready xor ap_const_logic_1) and ap_start);
    p_find_left_and_right_boundaries6_U0_start_full_n <= ap_const_logic_1;
    p_find_left_and_right_boundaries6_U0_start_write <= ap_const_logic_0;
    p_find_starting_index_and_value5_U0_ap_continue <= ap_sync_continue;
    p_find_starting_index_and_value5_U0_ap_start <= ((ap_sync_reg_p_find_starting_index_and_value5_U0_ap_ready xor ap_const_logic_1) and ap_start);
    p_find_starting_index_and_value5_U0_start_full_n <= ap_const_logic_1;
    p_find_starting_index_and_value5_U0_start_write <= ap_const_logic_0;
    points_address0 <= p_find_left_and_right_boundaries6_U0_points_address0;
    points_address1 <= p_find_starting_index_and_value5_U0_points_address1;
    points_ce0 <= p_find_left_and_right_boundaries6_U0_points_ce0;
    points_ce1 <= p_find_starting_index_and_value5_U0_points_ce1;
    points_d0 <= ap_const_lv128_lc_1;
    points_d1 <= ap_const_lv128_lc_1;
    points_we0 <= ap_const_logic_0;
    points_we1 <= ap_const_logic_0;
    rbVal_constprop_o <= p_find_left_and_right_boundaries6_U0_rbVal_constprop_o;
    rbVal_constprop_o_ap_vld <= p_find_left_and_right_boundaries6_U0_rbVal_constprop_o_ap_vld;
    start_index <= p_find_starting_index_and_value5_U0_start_index;
    start_index_ap_vld <= p_find_starting_index_and_value5_U0_start_index_ap_vld;
    start_value_o <= p_find_starting_index_and_value5_U0_start_value_o;
    start_value_o_ap_vld <= p_find_starting_index_and_value5_U0_start_value_o_ap_vld;
end behav;
