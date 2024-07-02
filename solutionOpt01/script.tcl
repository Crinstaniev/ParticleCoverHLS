############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ParticleCoverHLS
set_top system_top
add_files ParticleCoverHLS/src/types.cpp -cflags "-IParticleCoverHLS/include" -csimflags "-IParticleCoverHLS/include"
add_files ParticleCoverHLS/src/system.cpp -cflags "-IParticleCoverHLS/include" -csimflags "-IParticleCoverHLS/include"
add_files ParticleCoverHLS/src/patch_buffer.cpp -cflags "-IParticleCoverHLS/include" -csimflags "-IParticleCoverHLS/include"
add_files ParticleCoverHLS/src/file_reader.cpp -cflags "-IParticleCoverHLS/include" -csimflags "-IParticleCoverHLS/include"
add_files -tb ParticleCoverHLS/test/test_system.cpp -cflags "-IParticleCoverHLS/include -Wno-unknown-pragmas" -csimflags "-IParticleCoverHLS/include -Wno-unknown-pragmas"
open_solution "solutionOpt01" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./ParticleCoverHLS/solutionOpt01/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -format ip_catalog
