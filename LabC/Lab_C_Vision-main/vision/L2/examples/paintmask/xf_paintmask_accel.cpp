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

#include "xf_paintmask_config.h"

extern "C" {

void paintmask_accel(ap_uint<PTR_WIDTH>* img_in,
                     ap_uint<PTR_M_WIDTH>* mask_in,
                     unsigned char* color,
                     ap_uint<PTR_WIDTH>* img_out,
                     int height,
                     int width) {
// clang-format off
    #pragma HLS INTERFACE m_axi      port=img_in        offset=slave  bundle=gmem0
    #pragma HLS INTERFACE m_axi      port=mask_in       offset=slave  bundle=gmem1
    #pragma HLS INTERFACE m_axi      port=color   	offset=slave  bundle=gmem2
    #pragma HLS INTERFACE m_axi      port=img_out       offset=slave  bundle=gmem3
    #pragma HLS INTERFACE s_axilite  port=height 		      
    #pragma HLS INTERFACE s_axilite  port=width		 	      
    #pragma HLS INTERFACE s_axilite  port=return
    // clang-format on

    xf::cv::Mat<TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1> imgInput(height, width);
    xf::cv::Mat<M_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_2> maskInput(height, width);
    xf::cv::Mat<TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT> imgOutput(height, width);

// clang-format off
// clang-format on

// clang-format off
    #pragma HLS DATAFLOW
    // clang-format on

    // Copy the color data to local memory:
    unsigned char color_local[XF_CHANNELS(TYPE, NPC1)];
    for (unsigned int i = 0; i < XF_CHANNELS(TYPE, NPC1); ++i) {
        color_local[i] = color[i];
    }

    // Retrieve xf::cv::Mat objects from img_in data:
    xf::cv::Array2xfMat<PTR_WIDTH, TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1>(img_in, imgInput);
    xf::cv::Array2xfMat<PTR_M_WIDTH, M_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_2>(mask_in, maskInput);

    // Run xfOpenCV kernel:
    xf::cv::paintmask<TYPE, M_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1, XF_CV_DEPTH_IN_2, XF_CV_DEPTH_OUT>(
        imgInput, maskInput, imgOutput, color_local);

    // Convert _dst xf::cv::Mat object to output array:
    xf::cv::xfMat2Array<PTR_WIDTH, TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT>(imgOutput, img_out);

    return;
} // End of kernel

} // End of extern C
