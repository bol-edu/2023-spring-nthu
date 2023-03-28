############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name array_io "array_io"
set_directive_bind_storage -type ram_1p -impl bram "array_io" d_i
set_directive_array_partition -type block -factor 1 -dim 1 "array_io" d_o
set_directive_interface -mode ap_fifo "array_io" d_o
