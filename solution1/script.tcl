############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ParticleCoverHLS
set_top make_patch_aligned_to_line_top
add_files ParticleCoverHLS/src/system.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/superpoint.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/sim_utils.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/point.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/patch.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/makepatch_hls.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/file_reader.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/event.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/environment.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/dataset.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/cover.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include"
add_files -tb ParticleCoverHLS/test/test_hls_features.cxx -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 5 -name default
source "./ParticleCoverHLS/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
