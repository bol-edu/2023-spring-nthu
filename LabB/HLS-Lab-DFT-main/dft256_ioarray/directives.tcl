############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_pipeline -off "dft"
set_directive_top -name dft "dft"
set_directive_unroll -factor 8 "dft_compute/DFT_INNER_LOOP"
set_directive_array_partition -dim 1 -factor 8 -type cyclic "dft" real_out
set_directive_array_partition -dim 1 -factor 8 -type cyclic "dft" imag_out
