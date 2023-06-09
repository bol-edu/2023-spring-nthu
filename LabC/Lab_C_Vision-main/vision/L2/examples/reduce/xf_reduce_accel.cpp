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

#include "xf_reduce_config.h"

extern "C" {

void reduce_accel(
    ap_uint<PTR_IN_WIDTH>* img_in, unsigned char dimension, ap_uint<PTR_OUT_WIDTH>* img_out, int height, int width) {
// clang-format off
    #pragma HLS INTERFACE m_axi      port=img_in        offset=slave  bundle=gmem0
    #pragma HLS INTERFACE m_axi      port=img_out       offset=slave  bundle=gmem1
    #pragma HLS INTERFACE s_axilite  port=dimension 		      
    #pragma HLS INTERFACE s_axilite  port=height 		      
    #pragma HLS INTERFACE s_axilite  port=width 		      
    #pragma HLS INTERFACE s_axilite  port=return
    // clang-format on

    xf::cv::Mat<IN_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN> imgInput(height, width);
    xf::cv::Mat<OUT_TYPE, ONE_D_HEIGHT, ONE_D_WIDTH, XF_NPPC1, XF_CV_DEPTH_OUT> imgOutput(ONE_D_HEIGHT, ONE_D_WIDTH);

// clang-format off

// clang-format on
#pragma HLS DATAFLOW

    // Retrieve xf::cv::Mat objects from img_in data:
    xf::cv::Array2xfMat<PTR_IN_WIDTH, IN_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN>(img_in, imgInput);

    // Run xfOpenCV kernel:
    xf::cv::reduce<XF_REDUCE, IN_TYPE, OUT_TYPE, HEIGHT, WIDTH, ONE_D_HEIGHT, ONE_D_WIDTH, NPC1, XF_CV_DEPTH_IN,
                   XF_CV_DEPTH_OUT>(imgInput, imgOutput, dimension);
    // Convert _dst xf::cv::Mat object to output array:
    xf::cv::xfMat2Array<PTR_OUT_WIDTH, OUT_TYPE, ONE_D_HEIGHT, ONE_D_WIDTH, XF_NPPC1, XF_CV_DEPTH_OUT>(imgOutput,
                                                                                                       img_out);

    return;
} // End of kernel

} // End of extern C
