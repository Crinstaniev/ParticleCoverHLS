
`include "sample_manager.sv"
`include "csv_file_dump.sv"
`include "df_fifo_monitor.sv"
`include "df_process_monitor.sv"
`include "nodf_module_monitor.sv"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);

    df_fifo_intf fifo_intf_1(clock,reset);
    assign fifo_intf_1.rd_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.projectionToRow_c_U.if_read;
    assign fifo_intf_1.wr_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.projectionToRow_c_U.if_write;
    assign fifo_intf_1.fifo_rd_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.projectionToRow_blk_n);
    assign fifo_intf_1.fifo_wr_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.projectionToRow_out_blk_n);
    assign fifo_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_1;
    csv_file_dump cstatus_csv_dumper_1;
    df_fifo_monitor fifo_monitor_1;
    df_fifo_intf fifo_intf_2(clock,reset);
    assign fifo_intf_2.rd_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.i_c_U.if_read;
    assign fifo_intf_2.wr_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.i_c_U.if_write;
    assign fifo_intf_2.fifo_rd_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.i_blk_n);
    assign fifo_intf_2.fifo_wr_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.i_out_blk_n);
    assign fifo_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_2;
    csv_file_dump cstatus_csv_dumper_2;
    df_fifo_monitor fifo_monitor_2;
    df_fifo_intf fifo_intf_3(clock,reset);
    assign fifo_intf_3.rd_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.i_c7_U.if_read;
    assign fifo_intf_3.wr_en = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.i_c7_U.if_write;
    assign fifo_intf_3.fifo_rd_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.i_blk_n);
    assign fifo_intf_3.fifo_wr_block = ~(AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.i_out1_blk_n);
    assign fifo_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_3;
    csv_file_dump cstatus_csv_dumper_3;
    df_fifo_monitor fifo_monitor_3;

    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.ap_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0 | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.projectionToRow_out_blk_n | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.i_out_blk_n | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_boundaries_and_starting_index_and_value_entry65_U0.i_out1_blk_n;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.ap_start;
    assign process_intf_2.pin_stall = 1'b0 | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_left_and_right_boundaries11_U0.i_blk_n;
    assign process_intf_2.pout_stall = 1'b0;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;
    df_process_intf process_intf_3(clock,reset);
    assign process_intf_3.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.ap_start;
    assign process_intf_3.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.ap_ready;
    assign process_intf_3.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.ap_done;
    assign process_intf_3.ap_continue = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.ap_continue;
    assign process_intf_3.real_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.ap_start;
    assign process_intf_3.pin_stall = 1'b0 | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.projectionToRow_blk_n | ~AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.p_find_starting_index_and_value10_U0.i_blk_n;
    assign process_intf_3.pout_stall = 1'b0;
    assign process_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_3;
    csv_file_dump pstatus_csv_dumper_3;
    df_process_monitor process_monitor_3;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_system_top.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_system_top.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_system_top.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.ap_done;
    assign module_intf_5.ap_continue = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_alignedtoline_per_layer_loop8_fu_183.grp_p_find_boundaries_and_starting_index_and_value9_fu_922.ap_continue;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_patch_buffer_add_patch7_fu_213.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_patch_buffer_add_patch7_fu_213.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_makePatch_alignedToLine_fu_1322.grp_patch_buffer_add_patch7_fu_213.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;
    nodf_module_intf module_intf_7(clock,reset);
    assign module_intf_7.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.ap_start;
    assign module_intf_7.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.ap_ready;
    assign module_intf_7.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.ap_done;
    assign module_intf_7.ap_continue = 1'b1;
    assign module_intf_7.finish = finish;
    csv_file_dump mstatus_csv_dumper_7;
    nodf_module_monitor module_monitor_7;
    nodf_module_intf module_intf_8(clock,reset);
    assign module_intf_8.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.grp_straightLineProjectorFromLayerIJtoK_fu_541.ap_start;
    assign module_intf_8.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.grp_straightLineProjectorFromLayerIJtoK_fu_541.ap_ready;
    assign module_intf_8.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getParallelograms_fu_1361.grp_straightLineProjectorFromLayerIJtoK_fu_541.ap_done;
    assign module_intf_8.ap_continue = 1'b1;
    assign module_intf_8.finish = finish;
    csv_file_dump mstatus_csv_dumper_8;
    nodf_module_monitor module_monitor_8;
    nodf_module_intf module_intf_9(clock,reset);
    assign module_intf_9.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.ap_start;
    assign module_intf_9.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.ap_ready;
    assign module_intf_9.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.ap_done;
    assign module_intf_9.ap_continue = 1'b1;
    assign module_intf_9.finish = finish;
    csv_file_dump mstatus_csv_dumper_9;
    nodf_module_monitor module_monitor_9;
    nodf_module_intf module_intf_10(clock,reset);
    assign module_intf_10.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.grp_straightLineProjectorFromLayerIJtoK_fu_313.ap_start;
    assign module_intf_10.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.grp_straightLineProjectorFromLayerIJtoK_fu_313.ap_ready;
    assign module_intf_10.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_getShadows_fu_1393.grp_straightLineProjectorFromLayerIJtoK_fu_313.ap_done;
    assign module_intf_10.ap_continue = 1'b1;
    assign module_intf_10.finish = finish;
    csv_file_dump mstatus_csv_dumper_10;
    nodf_module_monitor module_monitor_10;
    nodf_module_intf module_intf_11(clock,reset);
    assign module_intf_11.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1404.ap_start;
    assign module_intf_11.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1404.ap_ready;
    assign module_intf_11.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1404.ap_done;
    assign module_intf_11.ap_continue = 1'b1;
    assign module_intf_11.finish = finish;
    csv_file_dump mstatus_csv_dumper_11;
    nodf_module_monitor module_monitor_11;
    nodf_module_intf module_intf_12(clock,reset);
    assign module_intf_12.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1429.ap_start;
    assign module_intf_12.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1429.ap_ready;
    assign module_intf_12.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_straightLineProjectorFromLayerIJtoK_fu_1429.ap_done;
    assign module_intf_12.ap_continue = 1'b1;
    assign module_intf_12.finish = finish;
    csv_file_dump mstatus_csv_dumper_12;
    nodf_module_monitor module_monitor_12;
    nodf_module_intf module_intf_13(clock,reset);
    assign module_intf_13.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_acceptanceCorners_fu_1445.ap_start;
    assign module_intf_13.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_acceptanceCorners_fu_1445.ap_ready;
    assign module_intf_13.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_acceptanceCorners_fu_1445.ap_done;
    assign module_intf_13.ap_continue = 1'b1;
    assign module_intf_13.finish = finish;
    csv_file_dump mstatus_csv_dumper_13;
    nodf_module_monitor module_monitor_13;
    nodf_module_intf module_intf_14(clock,reset);
    assign module_intf_14.ap_start = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_index_from_z_fu_1486.ap_start;
    assign module_intf_14.ap_ready = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_index_from_z_fu_1486.ap_ready;
    assign module_intf_14.ap_done = AESL_inst_system_top.grp_p_shadowquilt_main_loop_make_verticle_strip_fu_565.grp_get_index_from_z_fu_1486.ap_done;
    assign module_intf_14.ap_continue = 1'b1;
    assign module_intf_14.finish = finish;
    csv_file_dump mstatus_csv_dumper_14;
    nodf_module_monitor module_monitor_14;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;

    fifo_csv_dumper_1 = new("./depth1.csv");
    cstatus_csv_dumper_1 = new("./chan_status1.csv");
    fifo_monitor_1 = new(fifo_csv_dumper_1,fifo_intf_1,cstatus_csv_dumper_1);
    fifo_csv_dumper_2 = new("./depth2.csv");
    cstatus_csv_dumper_2 = new("./chan_status2.csv");
    fifo_monitor_2 = new(fifo_csv_dumper_2,fifo_intf_2,cstatus_csv_dumper_2);
    fifo_csv_dumper_3 = new("./depth3.csv");
    cstatus_csv_dumper_3 = new("./chan_status3.csv");
    fifo_monitor_3 = new(fifo_csv_dumper_3,fifo_intf_3,cstatus_csv_dumper_3);

    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);
    pstall_csv_dumper_3 = new("./stalling3.csv");
    pstatus_csv_dumper_3 = new("./status3.csv");
    process_monitor_3 = new(pstall_csv_dumper_3,process_intf_3,pstatus_csv_dumper_3);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);
    mstatus_csv_dumper_7 = new("./module_status7.csv");
    module_monitor_7 = new(module_intf_7,mstatus_csv_dumper_7);
    mstatus_csv_dumper_8 = new("./module_status8.csv");
    module_monitor_8 = new(module_intf_8,mstatus_csv_dumper_8);
    mstatus_csv_dumper_9 = new("./module_status9.csv");
    module_monitor_9 = new(module_intf_9,mstatus_csv_dumper_9);
    mstatus_csv_dumper_10 = new("./module_status10.csv");
    module_monitor_10 = new(module_intf_10,mstatus_csv_dumper_10);
    mstatus_csv_dumper_11 = new("./module_status11.csv");
    module_monitor_11 = new(module_intf_11,mstatus_csv_dumper_11);
    mstatus_csv_dumper_12 = new("./module_status12.csv");
    module_monitor_12 = new(module_intf_12,mstatus_csv_dumper_12);
    mstatus_csv_dumper_13 = new("./module_status13.csv");
    module_monitor_13 = new(module_intf_13,mstatus_csv_dumper_13);
    mstatus_csv_dumper_14 = new("./module_status14.csv");
    module_monitor_14 = new(module_intf_14,mstatus_csv_dumper_14);

    sample_manager_inst.add_one_monitor(fifo_monitor_1);
    sample_manager_inst.add_one_monitor(fifo_monitor_2);
    sample_manager_inst.add_one_monitor(fifo_monitor_3);
    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_7);
    sample_manager_inst.add_one_monitor(module_monitor_8);
    sample_manager_inst.add_one_monitor(module_monitor_9);
    sample_manager_inst.add_one_monitor(module_monitor_10);
    sample_manager_inst.add_one_monitor(module_monitor_11);
    sample_manager_inst.add_one_monitor(module_monitor_12);
    sample_manager_inst.add_one_monitor(module_monitor_13);
    sample_manager_inst.add_one_monitor(module_monitor_14);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1)
                break;
            else
                @(posedge clock);
        end
    endtask


endmodule
