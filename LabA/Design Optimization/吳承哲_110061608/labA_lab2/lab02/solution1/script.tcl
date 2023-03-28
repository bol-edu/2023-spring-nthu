############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project lab02
set_top matrixmul
add_files ../Design_Optimization/lab2/matrixmul.cpp
add_files ../Design_Optimization/lab2/matrixmul.h
add_files -tb ../Design_Optimization/lab2/matrixmul_test.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu50-fsvh2104-2-e}
create_clock -period 13.33 -name default
#source "./lab02/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all
export_design -format ip_catalog
