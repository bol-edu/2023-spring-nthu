############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project fir11_baseline
set_top fir
add_files fir11_baseline/out.gold.dat
add_files fir11_baseline/input.dat
add_files fir11_baseline/fir.h
add_files fir11_baseline/fir.cpp
add_files -tb fir11_baseline/fir_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./fir11_baseline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
