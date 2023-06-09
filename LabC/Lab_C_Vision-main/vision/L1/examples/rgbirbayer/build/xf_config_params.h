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

#define WIDTH 3840  // 7680//1920//
#define HEIGHT 2160 // 4320//1080//
#define NPC XF_NPPC1

#define T_8U 0
#define T_10U 0
#define T_12U 0
#define T_16U 1

#define BPATTERN XF_BAYER_GR

#define XF_USE_URAM 0

#define GRAY 1

#define ARRAY 1
#define SCALAR 0
// macros for accel
#define FUNCT_NAME subtract
//#define EXTRA_ARG 0.05
#define EXTRA_PARM XF_CONVERT_POLICY_SATURATE
#define XF_CV_DEPTH_IN 2
#define XF_CV_DEPTH_OUT_1 2
#define XF_CV_DEPTH_OUT_2 2
#define XF_CV_DEPTH_3XWIDTH 3 * WIDTH