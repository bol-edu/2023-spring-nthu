/*
 * Copyright 2019 Xilinx, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#ifndef _XF_CONVERT_SCALE_ABS_CONFIG_H_
#define _XF_CONVERT_SCALE_ABS_CONFIG_H_

#include "hls_stream.h"
#include <ap_int.h>
#include "xf_config_params.h"
#include "common/xf_common.hpp"
#include "common/xf_utility.hpp"
#include "imgproc/xf_convertscaleabs.hpp"

#define HEIGHT 128
#define WIDTH 128

// Resolve pixel precision:
#if SPC
#define NPC1 XF_NPPC1
#define INPUT_PTR_WIDTH 8
#define OUTPUT_PTR_WIDTH 8
#endif
#if MPC
#define NPC1 XF_NPPC8
#define INPUT_PTR_WIDTH 64
#define OUTPUT_PTR_WIDTH 64
#endif

// Resolve input and output pixel depth:
#define IN_TYPE XF_8UC1
#define OUT_TYPE XF_8UC1

void convertScaleAbs_accel(ap_uint<INPUT_PTR_WIDTH>* img_in,
                           float scale,
                           float shift,
                           ap_uint<OUTPUT_PTR_WIDTH>* img_out,
                           int height,
                           int width);

#endif //_XF_SCALE_CONFIG_H_
