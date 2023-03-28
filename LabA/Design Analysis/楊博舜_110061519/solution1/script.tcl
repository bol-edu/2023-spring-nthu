############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project dct_prj
set_top dct
add_files Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/dct.cpp
add_files -tb Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/out.golden.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/in.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb Vitis-Tutorials/Getting_Started/Vitis_HLS/reference-files/src/dct_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xcu50-fsvh2104-2L-e}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./dct_prj/solution1/directives.tcl"
csim_design -profile
csynth_design
cosim_design -enable_dataflow_profiling
export_design -format ip_catalog
