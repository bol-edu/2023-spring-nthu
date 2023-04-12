############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DFT_256_Dataflow
set_top dft
add_files DFT_256_Dataflow/dft.h
add_files DFT_256_Dataflow/dft.cpp
add_files DFT_256_Dataflow/coefficients256.h
add_files -tb DFT_256_Dataflow/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb DFT_256_Dataflow/dft_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "dataflow" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./DFT_256_Dataflow/dataflow/directives.tcl"
csim_design
csynth_design
cosim_design -enable_dataflow_profiling -trace_level all
export_design -format ip_catalog
