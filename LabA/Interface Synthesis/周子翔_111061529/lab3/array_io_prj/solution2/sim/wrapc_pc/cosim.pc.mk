# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
# Tool Version Limit: 2022.04
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
__SIM_FPO__ = 1
__SIM_MATHHLS__ = 1
__SIM_FFT__ = 1
__SIM_FIR__ = 1
__SIM_DDS__ = 1

override TARGET := cosim.pc.exe

AUTOPILOT_ROOT := C:/Xilinx/Vitis_HLS/2022.1
AUTOPILOT_MACH := win64

ifdef COSIM_M32
  AUTOPILOT_MACH := lnx32
  IFLAG += -m32
endif
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := C:/Xilinx/Vitis_HLS/2022.1/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL = ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AUTOPILOT_TECH = ${AUTOPILOT_ROOT}/common/technology
CCFLAG += -Werror=return-type
TOOLCHAIN += 

IFLAG += -g

IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/common/technology/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/include"
IFLAG += -I "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/auto_cc/include"
IFLAG += -D__VITIS_HLS__
IFLAG += -D__SIM_FPO__
IFLAG += -D__SIM_FFT__
IFLAG += -D__SIM_FIR__
IFLAG += -D__SIM_DDS__
IFLAG += -D__DSP48E2__
IFLAG += -DUSE_BINARY_TV_FILE
IFLAG += -DNT
IFLAG += -Wno-unknown-pragmas
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/systemc/lib" -lsystemc -lpthread
LFLAG += -L "${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools/clang-3.9-csynth/lib/clang/7.0.0/lib/windows" -lhls_half2float
IFLAG += -D__RTL_SIMULATION__
IFLAG += -D__xilinx_ip_top=
LFLAG += -Wl,--enable-auto-import
DFLAG += -DAUTOCC
DFLAG += -DAESL_EXTERN_C

include ./Makefile.rules

all : $(TARGET)

AUTOCC := cmd //c apcc.bat

$(ObjDir)/array_io_test.c_pre.c.tb.o : array_io_test.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) array_io_test.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \

$(ObjDir)/array_io.c_pre.c.tb.o : array_io.c_pre.c.tb.c $(ObjDir)/.dir
	$(Echo) "   Compiling (apcc) array_io.c_pre.c.tb.c" $(AVE_DIR_DLOG)
	$(Verb) $(AUTOCC) -fno-builtin-isinf -fno-builtin-isnan -c $(IFLAG) $(DFLAG) $< -o $@; \
