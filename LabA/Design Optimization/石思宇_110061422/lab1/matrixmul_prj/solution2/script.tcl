############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project matrixmul_prj
set_top matrixmul
add_files matrixmul.h
add_files matrixmul.cpp
add_files -tb matrixmul_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xcu50-fsvh2104-2L-e}
create_clock -period 75MHz -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./matrixmul_prj/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
