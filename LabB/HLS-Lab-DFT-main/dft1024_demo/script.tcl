############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DFT_1024_Stream
set_top dft
add_files DFT_1024_Stream/coefficients1024.h
add_files DFT_1024_Stream/dft.cpp
add_files DFT_1024_Stream/dft.h
add_files -tb DFT_1024_Stream/dft_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb DFT_1024_Stream/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
config_export -format ip_catalog -rtl verilog
source "./DFT_1024_Stream/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling -trace_level all
export_design -rtl verilog -format ip_catalog
