############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project adders_prj
set_top adders
add_files adders.c
add_files -tb adders_test.c -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution3" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 3.25 -name default
source "./adders_prj/solution3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
