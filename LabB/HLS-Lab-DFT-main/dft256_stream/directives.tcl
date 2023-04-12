############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_dataflow "dft"
set_directive_top -name dft "dft"
set_directive_array_partition -type cyclic -factor 8 -dim 1 "dft_compute" Real
set_directive_array_partition -type cyclic -factor 8 -dim 1 "dft_compute" Imag
set_directive_unroll -factor 8 "dft_compute/DFT_INNER_LOOP"
set_directive_array_partition -type cyclic -factor 8 -dim 1 "dft" Real
set_directive_array_partition -type cyclic -factor 8 -dim 1 "dft" Imag
set_directive_unroll -factor 8 "dft/DFT_INNER_LOOP"
set_directive_interface -mode axis -register -register_mode both -depth 256 "dft" real_sample
set_directive_interface -mode axis -register -register_mode both -depth 256 "dft" imag_sample
set_directive_interface -mode axis -register -register_mode both -depth 256 "dft" Real_freq
set_directive_interface -mode axis -register -register_mode both -depth 256 "dft" Imag_freq
