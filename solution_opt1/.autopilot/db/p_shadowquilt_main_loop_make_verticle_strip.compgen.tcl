# This script segment is generated automatically by AutoPilot

# Memory (RAM/ROM)  definition:
set ID 136
set hasByteEnable 0
set MemName system_top_p_shadowquilt_main_loop_make_verticle_strip_init_patch_V
set CoreName ap_simcore_mem
set PortList { 2 2 }
set DataWd 96
set AddrRange 80
set AddrWd 7
set impl_style auto
set TrueReset 0
set HasInitializer 0
set IsROM 0
set ROMData {}
set NumOfStage 2
set MaxLatency -1
set DelayBudget 1.297
set ClkPeriod 10
set RegisteredInput 0
if {${::AESL::PGuard_simmodel_gen}} {
if {[info proc ap_gen_simcore_mem] == "ap_gen_simcore_mem"} {
    eval "ap_gen_simcore_mem { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
} else {
    puts "@W \[IMPL-102\] Cannot find ap_gen_simcore_mem, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
  ::AP::rtl_comp_handler $MemName
}


set CoreName RAM
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_RAM] == "::AESL_LIB_VIRTEX::xil_gen_RAM"} {
    eval "::AESL_LIB_VIRTEX::xil_gen_RAM { \
    id ${ID} \
    name ${MemName} \
    corename ${CoreName}  \
    op mem \
    hasByteEnable ${hasByteEnable} \
    reset_level 1 \
    sync_rst true \
    stage_num ${NumOfStage}  \
    registered_input ${RegisteredInput} \
    port_num 2 \
    port_list \{${PortList}\} \
    data_wd ${DataWd} \
    addr_wd ${AddrWd} \
    addr_range ${AddrRange} \
    style ${impl_style} \
    true_reset ${TrueReset} \
    delay_budget ${DelayBudget} \
    clk_period ${ClkPeriod} \
    HasInitializer ${HasInitializer} \
    rom_data \{${ROMData}\} \
 } "
  } else {
    puts "@W \[IMPL-104\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_RAM, check your platform lib"
  }
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 137 \
    name points \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename points \
    op interface \
    ports { points_address0 { O 12 vector } points_ce0 { O 1 bit } points_q0 { I 128 vector } points_address1 { O 12 vector } points_ce1 { O 1 bit } points_q1 { I 128 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'points'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 138 \
    name num_points \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename num_points \
    op interface \
    ports { num_points_address0 { O 3 vector } num_points_ce0 { O 1 bit } num_points_q0 { I 32 vector } num_points_address1 { O 3 vector } num_points_ce1 { O 1 bit } num_points_q1 { I 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'num_points'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 140 \
    name patch_buffer_0_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_0 \
    op interface \
    ports { patch_buffer_0_0_address0 { O 2 vector } patch_buffer_0_0_ce0 { O 1 bit } patch_buffer_0_0_we0 { O 1 bit } patch_buffer_0_0_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 141 \
    name patch_buffer_0_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_1 \
    op interface \
    ports { patch_buffer_0_1_address0 { O 2 vector } patch_buffer_0_1_ce0 { O 1 bit } patch_buffer_0_1_we0 { O 1 bit } patch_buffer_0_1_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 142 \
    name patch_buffer_0_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_2 \
    op interface \
    ports { patch_buffer_0_2_address0 { O 2 vector } patch_buffer_0_2_ce0 { O 1 bit } patch_buffer_0_2_we0 { O 1 bit } patch_buffer_0_2_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 143 \
    name patch_buffer_0_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_3 \
    op interface \
    ports { patch_buffer_0_3_address0 { O 2 vector } patch_buffer_0_3_ce0 { O 1 bit } patch_buffer_0_3_we0 { O 1 bit } patch_buffer_0_3_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 144 \
    name patch_buffer_0_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_4 \
    op interface \
    ports { patch_buffer_0_4_address0 { O 2 vector } patch_buffer_0_4_ce0 { O 1 bit } patch_buffer_0_4_we0 { O 1 bit } patch_buffer_0_4_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 145 \
    name patch_buffer_0_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_5 \
    op interface \
    ports { patch_buffer_0_5_address0 { O 2 vector } patch_buffer_0_5_ce0 { O 1 bit } patch_buffer_0_5_we0 { O 1 bit } patch_buffer_0_5_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 146 \
    name patch_buffer_0_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_6 \
    op interface \
    ports { patch_buffer_0_6_address0 { O 2 vector } patch_buffer_0_6_ce0 { O 1 bit } patch_buffer_0_6_we0 { O 1 bit } patch_buffer_0_6_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 147 \
    name patch_buffer_0_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_7 \
    op interface \
    ports { patch_buffer_0_7_address0 { O 2 vector } patch_buffer_0_7_ce0 { O 1 bit } patch_buffer_0_7_we0 { O 1 bit } patch_buffer_0_7_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 148 \
    name patch_buffer_0_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_8 \
    op interface \
    ports { patch_buffer_0_8_address0 { O 2 vector } patch_buffer_0_8_ce0 { O 1 bit } patch_buffer_0_8_we0 { O 1 bit } patch_buffer_0_8_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 149 \
    name patch_buffer_0_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_9 \
    op interface \
    ports { patch_buffer_0_9_address0 { O 2 vector } patch_buffer_0_9_ce0 { O 1 bit } patch_buffer_0_9_we0 { O 1 bit } patch_buffer_0_9_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 150 \
    name patch_buffer_0_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_10 \
    op interface \
    ports { patch_buffer_0_10_address0 { O 2 vector } patch_buffer_0_10_ce0 { O 1 bit } patch_buffer_0_10_we0 { O 1 bit } patch_buffer_0_10_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 151 \
    name patch_buffer_0_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_11 \
    op interface \
    ports { patch_buffer_0_11_address0 { O 2 vector } patch_buffer_0_11_ce0 { O 1 bit } patch_buffer_0_11_we0 { O 1 bit } patch_buffer_0_11_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 152 \
    name patch_buffer_0_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_12 \
    op interface \
    ports { patch_buffer_0_12_address0 { O 2 vector } patch_buffer_0_12_ce0 { O 1 bit } patch_buffer_0_12_we0 { O 1 bit } patch_buffer_0_12_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 153 \
    name patch_buffer_0_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_13 \
    op interface \
    ports { patch_buffer_0_13_address0 { O 2 vector } patch_buffer_0_13_ce0 { O 1 bit } patch_buffer_0_13_we0 { O 1 bit } patch_buffer_0_13_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 154 \
    name patch_buffer_0_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_14 \
    op interface \
    ports { patch_buffer_0_14_address0 { O 2 vector } patch_buffer_0_14_ce0 { O 1 bit } patch_buffer_0_14_we0 { O 1 bit } patch_buffer_0_14_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 155 \
    name patch_buffer_0_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_0_15 \
    op interface \
    ports { patch_buffer_0_15_address0 { O 2 vector } patch_buffer_0_15_ce0 { O 1 bit } patch_buffer_0_15_we0 { O 1 bit } patch_buffer_0_15_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_0_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 156 \
    name patch_buffer_1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_0 \
    op interface \
    ports { patch_buffer_1_0_address0 { O 2 vector } patch_buffer_1_0_ce0 { O 1 bit } patch_buffer_1_0_we0 { O 1 bit } patch_buffer_1_0_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 157 \
    name patch_buffer_1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_1 \
    op interface \
    ports { patch_buffer_1_1_address0 { O 2 vector } patch_buffer_1_1_ce0 { O 1 bit } patch_buffer_1_1_we0 { O 1 bit } patch_buffer_1_1_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 158 \
    name patch_buffer_1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_2 \
    op interface \
    ports { patch_buffer_1_2_address0 { O 2 vector } patch_buffer_1_2_ce0 { O 1 bit } patch_buffer_1_2_we0 { O 1 bit } patch_buffer_1_2_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 159 \
    name patch_buffer_1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_3 \
    op interface \
    ports { patch_buffer_1_3_address0 { O 2 vector } patch_buffer_1_3_ce0 { O 1 bit } patch_buffer_1_3_we0 { O 1 bit } patch_buffer_1_3_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 160 \
    name patch_buffer_1_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_4 \
    op interface \
    ports { patch_buffer_1_4_address0 { O 2 vector } patch_buffer_1_4_ce0 { O 1 bit } patch_buffer_1_4_we0 { O 1 bit } patch_buffer_1_4_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 161 \
    name patch_buffer_1_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_5 \
    op interface \
    ports { patch_buffer_1_5_address0 { O 2 vector } patch_buffer_1_5_ce0 { O 1 bit } patch_buffer_1_5_we0 { O 1 bit } patch_buffer_1_5_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 162 \
    name patch_buffer_1_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_6 \
    op interface \
    ports { patch_buffer_1_6_address0 { O 2 vector } patch_buffer_1_6_ce0 { O 1 bit } patch_buffer_1_6_we0 { O 1 bit } patch_buffer_1_6_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 163 \
    name patch_buffer_1_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_7 \
    op interface \
    ports { patch_buffer_1_7_address0 { O 2 vector } patch_buffer_1_7_ce0 { O 1 bit } patch_buffer_1_7_we0 { O 1 bit } patch_buffer_1_7_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 164 \
    name patch_buffer_1_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_8 \
    op interface \
    ports { patch_buffer_1_8_address0 { O 2 vector } patch_buffer_1_8_ce0 { O 1 bit } patch_buffer_1_8_we0 { O 1 bit } patch_buffer_1_8_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 165 \
    name patch_buffer_1_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_9 \
    op interface \
    ports { patch_buffer_1_9_address0 { O 2 vector } patch_buffer_1_9_ce0 { O 1 bit } patch_buffer_1_9_we0 { O 1 bit } patch_buffer_1_9_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 166 \
    name patch_buffer_1_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_10 \
    op interface \
    ports { patch_buffer_1_10_address0 { O 2 vector } patch_buffer_1_10_ce0 { O 1 bit } patch_buffer_1_10_we0 { O 1 bit } patch_buffer_1_10_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 167 \
    name patch_buffer_1_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_11 \
    op interface \
    ports { patch_buffer_1_11_address0 { O 2 vector } patch_buffer_1_11_ce0 { O 1 bit } patch_buffer_1_11_we0 { O 1 bit } patch_buffer_1_11_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 168 \
    name patch_buffer_1_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_12 \
    op interface \
    ports { patch_buffer_1_12_address0 { O 2 vector } patch_buffer_1_12_ce0 { O 1 bit } patch_buffer_1_12_we0 { O 1 bit } patch_buffer_1_12_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 169 \
    name patch_buffer_1_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_13 \
    op interface \
    ports { patch_buffer_1_13_address0 { O 2 vector } patch_buffer_1_13_ce0 { O 1 bit } patch_buffer_1_13_we0 { O 1 bit } patch_buffer_1_13_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 170 \
    name patch_buffer_1_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_14 \
    op interface \
    ports { patch_buffer_1_14_address0 { O 2 vector } patch_buffer_1_14_ce0 { O 1 bit } patch_buffer_1_14_we0 { O 1 bit } patch_buffer_1_14_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 171 \
    name patch_buffer_1_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_1_15 \
    op interface \
    ports { patch_buffer_1_15_address0 { O 2 vector } patch_buffer_1_15_ce0 { O 1 bit } patch_buffer_1_15_we0 { O 1 bit } patch_buffer_1_15_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 172 \
    name patch_buffer_2_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_0 \
    op interface \
    ports { patch_buffer_2_0_address0 { O 2 vector } patch_buffer_2_0_ce0 { O 1 bit } patch_buffer_2_0_we0 { O 1 bit } patch_buffer_2_0_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 173 \
    name patch_buffer_2_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_1 \
    op interface \
    ports { patch_buffer_2_1_address0 { O 2 vector } patch_buffer_2_1_ce0 { O 1 bit } patch_buffer_2_1_we0 { O 1 bit } patch_buffer_2_1_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 174 \
    name patch_buffer_2_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_2 \
    op interface \
    ports { patch_buffer_2_2_address0 { O 2 vector } patch_buffer_2_2_ce0 { O 1 bit } patch_buffer_2_2_we0 { O 1 bit } patch_buffer_2_2_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 175 \
    name patch_buffer_2_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_3 \
    op interface \
    ports { patch_buffer_2_3_address0 { O 2 vector } patch_buffer_2_3_ce0 { O 1 bit } patch_buffer_2_3_we0 { O 1 bit } patch_buffer_2_3_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 176 \
    name patch_buffer_2_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_4 \
    op interface \
    ports { patch_buffer_2_4_address0 { O 2 vector } patch_buffer_2_4_ce0 { O 1 bit } patch_buffer_2_4_we0 { O 1 bit } patch_buffer_2_4_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 177 \
    name patch_buffer_2_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_5 \
    op interface \
    ports { patch_buffer_2_5_address0 { O 2 vector } patch_buffer_2_5_ce0 { O 1 bit } patch_buffer_2_5_we0 { O 1 bit } patch_buffer_2_5_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 178 \
    name patch_buffer_2_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_6 \
    op interface \
    ports { patch_buffer_2_6_address0 { O 2 vector } patch_buffer_2_6_ce0 { O 1 bit } patch_buffer_2_6_we0 { O 1 bit } patch_buffer_2_6_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 179 \
    name patch_buffer_2_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_7 \
    op interface \
    ports { patch_buffer_2_7_address0 { O 2 vector } patch_buffer_2_7_ce0 { O 1 bit } patch_buffer_2_7_we0 { O 1 bit } patch_buffer_2_7_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 180 \
    name patch_buffer_2_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_8 \
    op interface \
    ports { patch_buffer_2_8_address0 { O 2 vector } patch_buffer_2_8_ce0 { O 1 bit } patch_buffer_2_8_we0 { O 1 bit } patch_buffer_2_8_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 181 \
    name patch_buffer_2_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_9 \
    op interface \
    ports { patch_buffer_2_9_address0 { O 2 vector } patch_buffer_2_9_ce0 { O 1 bit } patch_buffer_2_9_we0 { O 1 bit } patch_buffer_2_9_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 182 \
    name patch_buffer_2_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_10 \
    op interface \
    ports { patch_buffer_2_10_address0 { O 2 vector } patch_buffer_2_10_ce0 { O 1 bit } patch_buffer_2_10_we0 { O 1 bit } patch_buffer_2_10_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 183 \
    name patch_buffer_2_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_11 \
    op interface \
    ports { patch_buffer_2_11_address0 { O 2 vector } patch_buffer_2_11_ce0 { O 1 bit } patch_buffer_2_11_we0 { O 1 bit } patch_buffer_2_11_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 184 \
    name patch_buffer_2_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_12 \
    op interface \
    ports { patch_buffer_2_12_address0 { O 2 vector } patch_buffer_2_12_ce0 { O 1 bit } patch_buffer_2_12_we0 { O 1 bit } patch_buffer_2_12_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 185 \
    name patch_buffer_2_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_13 \
    op interface \
    ports { patch_buffer_2_13_address0 { O 2 vector } patch_buffer_2_13_ce0 { O 1 bit } patch_buffer_2_13_we0 { O 1 bit } patch_buffer_2_13_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 186 \
    name patch_buffer_2_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_14 \
    op interface \
    ports { patch_buffer_2_14_address0 { O 2 vector } patch_buffer_2_14_ce0 { O 1 bit } patch_buffer_2_14_we0 { O 1 bit } patch_buffer_2_14_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 187 \
    name patch_buffer_2_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_2_15 \
    op interface \
    ports { patch_buffer_2_15_address0 { O 2 vector } patch_buffer_2_15_ce0 { O 1 bit } patch_buffer_2_15_we0 { O 1 bit } patch_buffer_2_15_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 188 \
    name patch_buffer_3_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_0 \
    op interface \
    ports { patch_buffer_3_0_address0 { O 2 vector } patch_buffer_3_0_ce0 { O 1 bit } patch_buffer_3_0_we0 { O 1 bit } patch_buffer_3_0_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 189 \
    name patch_buffer_3_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_1 \
    op interface \
    ports { patch_buffer_3_1_address0 { O 2 vector } patch_buffer_3_1_ce0 { O 1 bit } patch_buffer_3_1_we0 { O 1 bit } patch_buffer_3_1_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 190 \
    name patch_buffer_3_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_2 \
    op interface \
    ports { patch_buffer_3_2_address0 { O 2 vector } patch_buffer_3_2_ce0 { O 1 bit } patch_buffer_3_2_we0 { O 1 bit } patch_buffer_3_2_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 191 \
    name patch_buffer_3_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_3 \
    op interface \
    ports { patch_buffer_3_3_address0 { O 2 vector } patch_buffer_3_3_ce0 { O 1 bit } patch_buffer_3_3_we0 { O 1 bit } patch_buffer_3_3_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 192 \
    name patch_buffer_3_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_4 \
    op interface \
    ports { patch_buffer_3_4_address0 { O 2 vector } patch_buffer_3_4_ce0 { O 1 bit } patch_buffer_3_4_we0 { O 1 bit } patch_buffer_3_4_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 193 \
    name patch_buffer_3_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_5 \
    op interface \
    ports { patch_buffer_3_5_address0 { O 2 vector } patch_buffer_3_5_ce0 { O 1 bit } patch_buffer_3_5_we0 { O 1 bit } patch_buffer_3_5_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 194 \
    name patch_buffer_3_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_6 \
    op interface \
    ports { patch_buffer_3_6_address0 { O 2 vector } patch_buffer_3_6_ce0 { O 1 bit } patch_buffer_3_6_we0 { O 1 bit } patch_buffer_3_6_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 195 \
    name patch_buffer_3_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_7 \
    op interface \
    ports { patch_buffer_3_7_address0 { O 2 vector } patch_buffer_3_7_ce0 { O 1 bit } patch_buffer_3_7_we0 { O 1 bit } patch_buffer_3_7_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 196 \
    name patch_buffer_3_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_8 \
    op interface \
    ports { patch_buffer_3_8_address0 { O 2 vector } patch_buffer_3_8_ce0 { O 1 bit } patch_buffer_3_8_we0 { O 1 bit } patch_buffer_3_8_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 197 \
    name patch_buffer_3_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_9 \
    op interface \
    ports { patch_buffer_3_9_address0 { O 2 vector } patch_buffer_3_9_ce0 { O 1 bit } patch_buffer_3_9_we0 { O 1 bit } patch_buffer_3_9_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 198 \
    name patch_buffer_3_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_10 \
    op interface \
    ports { patch_buffer_3_10_address0 { O 2 vector } patch_buffer_3_10_ce0 { O 1 bit } patch_buffer_3_10_we0 { O 1 bit } patch_buffer_3_10_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 199 \
    name patch_buffer_3_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_11 \
    op interface \
    ports { patch_buffer_3_11_address0 { O 2 vector } patch_buffer_3_11_ce0 { O 1 bit } patch_buffer_3_11_we0 { O 1 bit } patch_buffer_3_11_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 200 \
    name patch_buffer_3_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_12 \
    op interface \
    ports { patch_buffer_3_12_address0 { O 2 vector } patch_buffer_3_12_ce0 { O 1 bit } patch_buffer_3_12_we0 { O 1 bit } patch_buffer_3_12_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 201 \
    name patch_buffer_3_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_13 \
    op interface \
    ports { patch_buffer_3_13_address0 { O 2 vector } patch_buffer_3_13_ce0 { O 1 bit } patch_buffer_3_13_we0 { O 1 bit } patch_buffer_3_13_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 202 \
    name patch_buffer_3_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_14 \
    op interface \
    ports { patch_buffer_3_14_address0 { O 2 vector } patch_buffer_3_14_ce0 { O 1 bit } patch_buffer_3_14_we0 { O 1 bit } patch_buffer_3_14_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 203 \
    name patch_buffer_3_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_3_15 \
    op interface \
    ports { patch_buffer_3_15_address0 { O 2 vector } patch_buffer_3_15_ce0 { O 1 bit } patch_buffer_3_15_we0 { O 1 bit } patch_buffer_3_15_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_3_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 204 \
    name patch_buffer_4_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_0 \
    op interface \
    ports { patch_buffer_4_0_address0 { O 2 vector } patch_buffer_4_0_ce0 { O 1 bit } patch_buffer_4_0_we0 { O 1 bit } patch_buffer_4_0_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 205 \
    name patch_buffer_4_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_1 \
    op interface \
    ports { patch_buffer_4_1_address0 { O 2 vector } patch_buffer_4_1_ce0 { O 1 bit } patch_buffer_4_1_we0 { O 1 bit } patch_buffer_4_1_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 206 \
    name patch_buffer_4_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_2 \
    op interface \
    ports { patch_buffer_4_2_address0 { O 2 vector } patch_buffer_4_2_ce0 { O 1 bit } patch_buffer_4_2_we0 { O 1 bit } patch_buffer_4_2_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 207 \
    name patch_buffer_4_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_3 \
    op interface \
    ports { patch_buffer_4_3_address0 { O 2 vector } patch_buffer_4_3_ce0 { O 1 bit } patch_buffer_4_3_we0 { O 1 bit } patch_buffer_4_3_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 208 \
    name patch_buffer_4_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_4 \
    op interface \
    ports { patch_buffer_4_4_address0 { O 2 vector } patch_buffer_4_4_ce0 { O 1 bit } patch_buffer_4_4_we0 { O 1 bit } patch_buffer_4_4_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 209 \
    name patch_buffer_4_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_5 \
    op interface \
    ports { patch_buffer_4_5_address0 { O 2 vector } patch_buffer_4_5_ce0 { O 1 bit } patch_buffer_4_5_we0 { O 1 bit } patch_buffer_4_5_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 210 \
    name patch_buffer_4_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_6 \
    op interface \
    ports { patch_buffer_4_6_address0 { O 2 vector } patch_buffer_4_6_ce0 { O 1 bit } patch_buffer_4_6_we0 { O 1 bit } patch_buffer_4_6_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 211 \
    name patch_buffer_4_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_7 \
    op interface \
    ports { patch_buffer_4_7_address0 { O 2 vector } patch_buffer_4_7_ce0 { O 1 bit } patch_buffer_4_7_we0 { O 1 bit } patch_buffer_4_7_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 212 \
    name patch_buffer_4_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_8 \
    op interface \
    ports { patch_buffer_4_8_address0 { O 2 vector } patch_buffer_4_8_ce0 { O 1 bit } patch_buffer_4_8_we0 { O 1 bit } patch_buffer_4_8_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 213 \
    name patch_buffer_4_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_9 \
    op interface \
    ports { patch_buffer_4_9_address0 { O 2 vector } patch_buffer_4_9_ce0 { O 1 bit } patch_buffer_4_9_we0 { O 1 bit } patch_buffer_4_9_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 214 \
    name patch_buffer_4_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_10 \
    op interface \
    ports { patch_buffer_4_10_address0 { O 2 vector } patch_buffer_4_10_ce0 { O 1 bit } patch_buffer_4_10_we0 { O 1 bit } patch_buffer_4_10_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 215 \
    name patch_buffer_4_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_11 \
    op interface \
    ports { patch_buffer_4_11_address0 { O 2 vector } patch_buffer_4_11_ce0 { O 1 bit } patch_buffer_4_11_we0 { O 1 bit } patch_buffer_4_11_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 216 \
    name patch_buffer_4_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_12 \
    op interface \
    ports { patch_buffer_4_12_address0 { O 2 vector } patch_buffer_4_12_ce0 { O 1 bit } patch_buffer_4_12_we0 { O 1 bit } patch_buffer_4_12_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 217 \
    name patch_buffer_4_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_13 \
    op interface \
    ports { patch_buffer_4_13_address0 { O 2 vector } patch_buffer_4_13_ce0 { O 1 bit } patch_buffer_4_13_we0 { O 1 bit } patch_buffer_4_13_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 218 \
    name patch_buffer_4_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_14 \
    op interface \
    ports { patch_buffer_4_14_address0 { O 2 vector } patch_buffer_4_14_ce0 { O 1 bit } patch_buffer_4_14_we0 { O 1 bit } patch_buffer_4_14_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 219 \
    name patch_buffer_4_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename patch_buffer_4_15 \
    op interface \
    ports { patch_buffer_4_15_address0 { O 2 vector } patch_buffer_4_15_ce0 { O 1 bit } patch_buffer_4_15_we0 { O 1 bit } patch_buffer_4_15_d0 { O 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'patch_buffer_4_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 139 \
    name patch_stream_V \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_patch_stream_V \
    op interface \
    ports { patch_stream_V_din { O 96 vector } patch_stream_V_full_n { I 1 bit } patch_stream_V_write { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name latest_patch_index_constprop \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_latest_patch_index_constprop \
    op interface \
    ports { latest_patch_index_constprop_i { I 2 vector } latest_patch_index_constprop_o { O 2 vector } latest_patch_index_constprop_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name num_patches_constprop \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_num_patches_constprop \
    op interface \
    ports { num_patches_constprop_i { I 32 vector } num_patches_constprop_o { O 32 vector } num_patches_constprop_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


