############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrixmul
set_top matrixmul
add_files Design_Optimization/lab1/matrixmul.h
add_files Design_Optimization/lab1/matrixmul.cpp
add_files -tb Design_Optimization/lab1/matrixmul_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 13.33 -name default
source "./matrixmul/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
