# This script segment is generated automatically by AutoPilot

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
    id 52 \
    name new_patch \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename new_patch \
    op interface \
    ports { new_patch_address0 { O 7 vector } new_patch_ce0 { O 1 bit } new_patch_q0 { I 96 vector } new_patch_address1 { O 7 vector } new_patch_ce1 { O 1 bit } new_patch_q1 { I 96 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'new_patch'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 53 \
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
    id 54 \
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
    id 55 \
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
    id 56 \
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
    id 57 \
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
    id 58 \
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
    id 59 \
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
    id 60 \
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
    id 61 \
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
    id 62 \
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
    id 63 \
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
    id 64 \
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
    id 65 \
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
    id 66 \
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
    id 67 \
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
    id 68 \
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
    id 69 \
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
    id 70 \
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
    id 71 \
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
    id 72 \
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
    id 73 \
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
    id 74 \
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
    id 75 \
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
    id 76 \
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
    id 77 \
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
    id 78 \
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
    id 79 \
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
    id 80 \
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
    id 81 \
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
    id 82 \
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
    id 83 \
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
    id 84 \
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
    id 85 \
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
    id 86 \
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
    id 87 \
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
    id 88 \
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
    id 89 \
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
    id 90 \
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
    id 91 \
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
    id 92 \
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
    id 93 \
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
    id 94 \
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
    id 95 \
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
    id 96 \
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
    id 97 \
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
    id 98 \
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
    id 99 \
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
    id 100 \
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
    id 101 \
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
    id 102 \
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
    id 103 \
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
    id 104 \
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
    id 105 \
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
    id 106 \
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
    id 107 \
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
    id 108 \
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
    id 109 \
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
    id 110 \
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
    id 111 \
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
    id 112 \
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
    id 113 \
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
    id 114 \
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
    id 115 \
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
    id 116 \
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
    id 117 \
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
    id 118 \
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
    id 119 \
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
    id 120 \
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
    id 121 \
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
    id 122 \
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
    id 123 \
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
    id 124 \
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
    id 125 \
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
    id 126 \
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
    id 127 \
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
    id 128 \
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
    id 129 \
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
    id 130 \
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
    id 131 \
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
    id 132 \
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
    id 133 \
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
    id 134 \
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


