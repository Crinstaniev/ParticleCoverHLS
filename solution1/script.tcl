############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ParticleCoverHLS
set_top dummy_top_level_function
add_files ParticleCoverHLS/src/debug.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include" -csimflags "-IC:/Projects/ParticleCoverHLS/include"
add_files ParticleCoverHLS/src/parser.cxx -cflags "-IC:/Projects/ParticleCoverHLS/include" -csimflags "-IC:/Projects/ParticleCoverHLS/include"
add_files -tb ParticleCoverHLS/src/main.cxx -cflags "-IParticleCoverHLS/include -Wno-unknown-pragmas" -csimflags "-IParticleCoverHLS/include -Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output C:/Projects/dummy_top_level_function.zip -rtl verilog
source "./ParticleCoverHLS/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -output C:/Projects/dummy_top_level_function.zip
