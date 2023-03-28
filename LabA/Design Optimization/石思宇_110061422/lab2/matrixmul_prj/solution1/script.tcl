############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrixmul_prj
set_top matrixmul
add_files matrixmul.cpp
add_files -tb matrixmul_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu9p-flgb2104-1-e}
create_clock -period 75MHz -name default
config_interface -m_axi_latency 0
#source "./matrixmul_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
