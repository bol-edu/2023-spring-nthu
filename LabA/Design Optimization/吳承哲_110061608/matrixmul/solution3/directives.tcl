############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_top -name matrixmul "matrixmul"
set_directive_loop_flatten "matrixmul/Row"
set_directive_pipeline "matrixmul/Col"
