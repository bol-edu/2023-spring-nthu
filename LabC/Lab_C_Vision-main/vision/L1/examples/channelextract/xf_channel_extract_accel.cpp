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

#include "xf_channel_extract_config.h"

static constexpr int __XF_DEPTH = (HEIGHT * WIDTH * (XF_PIXELWIDTH(INPUT_CH_TYPE, NPC1)) / 8) / (INPUT_PTR_WIDTH / 8);
static constexpr int __XF_DEPTH_OUT =
    (HEIGHT * WIDTH * (XF_PIXELWIDTH(OUTPUT_CH_TYPE, NPC1)) / 8) / (OUTPUT_PTR_WIDTH / 8);

void channel_extract_accel(
    ap_uint<INPUT_PTR_WIDTH>* img_rgba, ap_uint<OUTPUT_PTR_WIDTH>* img_gray, uint16_t channel, int rows, int cols) {
// clang-format off
    #pragma HLS INTERFACE m_axi     port=img_rgba  	offset=slave bundle=gmem1 depth=__XF_DEPTH
    #pragma HLS INTERFACE m_axi     port=img_gray  	offset=slave bundle=gmem2 depth=__XF_DEPTH_OUT
    #pragma HLS INTERFACE s_axilite port=rows              	 bundle=control
    #pragma HLS INTERFACE s_axilite port=cols              	 bundle=control
    #pragma HLS INTERFACE s_axilite port=channel              	 bundle=control
    #pragma HLS INTERFACE s_axilite port=return              bundle=control
    // clang-format on

    xf::cv::Mat<INPUT_CH_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1> imgInput0;
    xf::cv::Mat<OUTPUT_CH_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT_1> imgOutput0;

// clang-format off
    #pragma HLS DATAFLOW
    // clang-format on
    xf::cv::Array2xfMat<INPUT_PTR_WIDTH, INPUT_CH_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1>(img_rgba, imgInput0);
    xf::cv::extractChannel<INPUT_CH_TYPE, OUTPUT_CH_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_IN_1, XF_CV_DEPTH_OUT_1>(
        imgInput0, imgOutput0, channel);
    xf::cv::xfMat2Array<OUTPUT_PTR_WIDTH, OUTPUT_CH_TYPE, HEIGHT, WIDTH, NPC1, XF_CV_DEPTH_OUT_1>(imgOutput0, img_gray);
}
