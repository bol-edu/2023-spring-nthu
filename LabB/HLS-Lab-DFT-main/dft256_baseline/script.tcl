############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DFT_256_baseline
set_top dft
add_files DFT_256_baseline/coefficients256.h
add_files DFT_256_baseline/dft.cpp
add_files DFT_256_baseline/dft.h
add_files -tb DFT_256_baseline/dft_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb DFT_256_baseline/out.gold.dat -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 10 -name default
source "./DFT_256_baseline/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
