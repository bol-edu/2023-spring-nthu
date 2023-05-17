/*
 * Copyright 2021 Xilinx, Inc.
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

#pragma once

int16_t int16golden[] = {
    0,   0,   128, 16,  0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,
    0,   0,   0,   0,   0,   0,   0,   0,   0,   204, 204, 204, 205, 209, 209, 204, 205, 205, 205, 205, 206, 207, 207,
    207, 208, 208, 209, 209, 210, 210, 210, 210, 210, 210, 211, 212, 212, 211, 211, 211, 211, 211, 212, 213, 213, 213,
    213, 214, 215, 216, 216, 216, 216, 216, 217, 217, 218, 219, 219, 219, 220, 220, 221, 221, 222, 222, 222, 222, 222,
    224, 224, 225, 225, 225, 226, 227, 227, 227, 228, 228, 229, 230, 230, 230, 231, 233, 232, 234, 234, 233, 233, 235,
    235, 236, 236, 236, 236, 237, 237, 238, 238, 239, 241, 240, 240, 241, 240, 241, 240, 240, 242, 245, 245, 245, 243,
    241, 242, 242, 242, 242, 241, 241, 241, 242, 244, 244, 244, 244, 245, 245, 245, 245, 245, 245, 245, 246, 244, 204,
    204, 204, 205, 206, 206, 204, 205, 205, 205, 206, 207, 207, 207, 208, 209, 209, 209, 210, 210, 210, 210, 210, 210,
    211, 211, 211, 211, 211, 211, 212, 212, 212, 212, 213, 213, 213, 213, 214, 216, 216, 216, 216, 216, 217, 217, 217,
    218, 218, 219, 219, 220, 220, 221, 221, 222, 222, 222, 222, 222, 223, 223, 225, 225, 225, 226, 226, 227, 228, 228,
    228, 230, 230, 230, 231, 232, 232, 232, 234, 233, 233, 233, 234, 236, 235, 236, 236, 237, 236, 237, 238, 238, 239,
    240, 240, 241, 242, 240, 240, 241, 241, 243, 245, 245, 244, 242, 242, 242, 242, 242, 242, 243, 242, 242, 242, 243,
    244, 244, 245, 244, 245, 245, 245, 245, 245, 246, 246, 246, 205, 205, 204, 205, 205, 205, 205, 205, 205, 206, 206,
    207, 207, 207, 209, 209, 209, 209, 210, 210, 210, 210, 210, 210, 210, 211, 211, 211, 211, 211, 212, 212, 212, 213,
    213, 213, 213, 214, 214, 215, 215, 216, 216, 216, 217, 217, 217, 218, 219, 219, 219, 220, 220, 221, 221, 221, 222,
    222, 222, 223, 223, 223, 224, 225, 226, 226, 227, 227, 227, 228, 228, 229, 230, 232, 233, 232, 233, 233, 234, 233,
    233, 234, 234, 235, 235, 235, 237, 236, 237, 237, 238, 239, 240, 241, 241, 241, 241, 241, 241, 240, 241, 243, 244,
    244, 242, 242, 242, 242, 242, 242, 242, 243, 242, 242, 243, 243, 244, 245, 244, 245, 245, 245, 245, 245, 245, 246,
    245, 245, 205, 205, 205, 206, 206, 205, 205, 205, 205, 206, 207, 208, 207, 207, 208, 209, 209, 209, 210, 209, 210,
    210, 210, 210, 210, 210, 210, 210, 211, 211, 212, 212, 212, 212, 213, 213, 213, 214, 215, 214, 216, 216, 216, 216,
    217, 217, 217, 218, 218, 219, 219, 220, 220, 221, 221, 221, 222, 223, 222, 222, 222, 223, 223, 225, 225, 226, 227,
    227, 228, 229, 229, 230, 230, 231, 232, 232, 232, 233, 234, 233, 234, 234, 234, 235, 234, 235, 236, 237, 237, 237,
    238, 239, 241, 240, 241, 241, 241, 242, 241, 241, 241, 243, 243, 242, 242, 242, 243, 243, 243, 243, 243, 244, 242,
    242, 243, 244, 244, 245, 245, 244, 245, 245, 245, 245, 245, 245, 246, 245, 205, 206, 208, 210, 213, 207, 205, 205,
    205, 206, 207, 207, 207, 208, 208, 208, 209, 209, 210, 209, 209, 210, 210, 210, 210, 211, 210, 210, 211, 211, 212,
    212, 212, 212, 213, 213, 214, 214, 214, 215, 215, 216, 216, 216, 217, 218, 218, 218, 218, 218, 219, 220, 220, 221,
    221, 221, 222, 222, 222, 223, 223, 224, 224, 224, 225, 227, 227, 227, 227, 228, 229, 230, 230, 232, 232, 233, 232,
    233, 233, 233, 233, 234, 234, 235, 235, 236, 236, 236, 237, 237, 238, 239, 240, 240, 241, 242, 242, 241, 241, 241,
    242, 243, 242, 241, 243, 243, 244, 245, 244, 245, 245, 244, 242, 243, 244, 244, 244, 244, 245, 244, 245, 245, 245,
    245, 245, 245, 245, 245, 205, 206, 209, 214, 232, 215, 206, 206, 206, 206, 207, 207, 208, 208, 208, 209, 209, 209,
    209, 209, 209, 210, 210, 210, 210, 210, 210, 210, 211, 211, 212, 212, 212, 212, 213, 213, 214, 215, 215, 215, 215,
    216, 216, 216, 217, 217, 218, 218, 218, 218, 219, 220, 220, 221, 222, 222, 222, 222, 222, 222, 223, 224, 225, 225,
    225, 226, 227, 227, 227, 228, 228, 229, 230, 231, 232, 232, 233, 234, 233, 234, 234, 234, 235, 235, 235, 236, 236,
    237, 237, 237, 238, 239, 240, 240, 241, 242, 241, 241, 241, 242, 243, 242, 242, 241, 243, 244, 245, 244, 244, 244,
    245, 244, 242, 243, 244, 244, 244, 244, 244, 244, 245, 245, 245, 245, 245, 245, 245, 245, 206, 209, 209, 222, 241,
    230, 207, 206, 206, 207, 207, 208, 208, 208, 208, 209, 209, 210, 209, 209, 209, 210, 210, 210, 210, 210, 210, 210,
    211, 211, 211, 212, 212, 212, 213, 213, 214, 215, 215, 215, 216, 216, 216, 217, 217, 217, 218, 218, 218, 219, 219,
    220, 221, 221, 221, 221, 222, 222, 222, 223, 224, 224, 225, 225, 226, 226, 227, 227, 227, 228, 229, 230, 230, 231,
    232, 233, 233, 234, 233, 233, 234, 234, 236, 235, 236, 236, 236, 237, 237, 237, 238, 239, 241, 240, 241, 241, 241,
    242, 241, 242, 241, 241, 241, 242, 242, 245, 245, 245, 243, 243, 243, 243, 243, 243, 244, 243, 244, 244, 244, 244,
    245, 245, 245, 245, 245, 245, 244, 245, 206, 212, 217, 227, 242, 238, 207, 205, 206, 207, 207, 208, 208, 208, 210,
    209, 209, 209, 209, 209, 209, 209, 210, 210, 210, 210, 210, 210, 211, 211, 211, 212, 212, 212, 213, 213, 214, 215,
    216, 215, 216, 216, 216, 217, 217, 217, 218, 218, 218, 219, 219, 219, 220, 221, 220, 221, 222, 223, 223, 223, 223,
    224, 225, 226, 226, 227, 227, 227, 228, 229, 230, 230, 230, 230, 231, 232, 233, 233, 234, 233, 234, 234, 235, 235,
    236, 236, 237, 237, 237, 238, 238, 239, 240, 240, 240, 241, 242, 241, 242, 241, 242, 242, 241, 241, 242, 244, 245,
    245, 243, 243, 243, 243, 243, 244, 243, 244, 244, 244, 244, 244, 244, 245, 245, 245, 245, 245, 245, 245, 208, 213,
    216, 218, 235, 238, 210, 206, 206, 207, 208, 208, 208, 208, 209, 208, 208, 209, 209, 209, 210, 210, 210, 210, 210,
    210, 210, 210, 211, 211, 211, 212, 213, 213, 213, 213, 214, 215, 216, 216, 216, 216, 216, 217, 217, 218, 218, 218,
    218, 219, 219, 219, 220, 221, 220, 221, 222, 223, 223, 223, 223, 224, 225, 226, 226, 227, 227, 228, 228, 229, 229,
    229, 230, 230, 231, 232, 232, 232, 232, 233, 234, 235, 235, 235, 236, 236, 237, 237, 237, 238, 238, 240, 241, 240,
    240, 241, 241, 242, 241, 240, 241, 242, 242, 242, 243, 244, 244, 245, 245, 244, 244, 242, 243, 244, 244, 243, 244,
    244, 244, 245, 244, 245, 245, 245, 245, 245, 244, 245, 209, 211, 222, 215, 222, 232, 213, 206, 207, 207, 208, 208,
    208, 209, 210, 209, 209, 210, 209, 210, 210, 210, 210, 210, 210, 210, 210, 211, 211, 211, 211, 212, 213, 213, 213,
    214, 214, 215, 215, 216, 216, 216, 216, 217, 217, 217, 218, 218, 218, 219, 219, 219, 219, 221, 220, 221, 222, 223,
    223, 224, 224, 225, 225, 225, 226, 228, 227, 228, 228, 229, 229, 230, 230, 230, 231, 231, 232, 233, 232, 234, 234,
    234, 234, 235, 235, 236, 238, 237, 237, 237, 237, 240, 240, 241, 241, 241, 240, 240, 241, 241, 240, 242, 242, 242,
    242, 244, 244, 244, 245, 244, 244, 242, 243, 243, 244, 243, 243, 244, 245, 244, 245, 245, 245, 245, 245, 245, 245,
    245, 210, 210, 220, 216, 213, 218, 212, 207, 207, 207, 208, 208, 208, 209, 209, 209, 208, 209, 209, 209, 210, 210,
    210, 210, 211, 211, 211, 211, 211, 211, 212, 212, 212, 213, 213, 214, 215, 216, 216, 216, 216, 216, 216, 217, 217,
    217, 217, 218, 218, 219, 219, 220, 220, 221, 220, 221, 222, 222, 223, 223, 223, 225, 225, 226, 227, 227, 228, 228,
    228, 229, 229, 230, 230, 230, 231, 231, 232, 232, 232, 234, 234, 234, 234, 235, 235, 236, 237, 237, 237, 236, 237,
    240, 241, 241, 242, 240, 241, 240, 240, 240, 240, 241, 243, 242, 242, 242, 243, 243, 243, 243, 243, 242, 243, 243,
    243, 244, 244, 244, 245, 244, 245, 245, 245, 245, 245, 245, 245, 246, 208, 207, 209, 211, 209, 213, 211, 209, 208,
    207, 208, 208, 209, 210, 209, 209, 208, 209, 210, 210, 210, 209, 210, 210, 210, 211, 211, 211, 211, 212, 212, 212,
    212, 213, 213, 214, 214, 216, 216, 216, 216, 216, 216, 217, 217, 217, 218, 218, 218, 218, 219, 220, 220, 221, 220,
    221, 222, 222, 222, 223, 223, 224, 225, 226, 227, 228, 228, 228, 228, 228, 229, 229, 230, 230, 231, 231, 233, 233,
    232, 233, 234, 234, 234, 236, 236, 236, 236, 236, 237, 236, 237, 239, 241, 241, 240, 240, 241, 240, 240, 240, 240,
    241, 243, 243, 242, 241, 241, 242, 243, 243, 243, 243, 243, 243, 244, 244, 244, 244, 244, 245, 245, 244, 245, 245,
    245, 245, 245, 245, 207, 207, 207, 208, 208, 208, 210, 209, 208, 208, 208, 208, 208, 209, 209, 210, 209, 209, 209,
    210, 210, 210, 210, 210, 210, 210, 211, 211, 212, 212, 212, 213, 213, 213, 213, 215, 215, 215, 216, 216, 216, 216,
    216, 217, 217, 217, 218, 218, 218, 218, 219, 220, 219, 220, 220, 222, 222, 222, 223, 223, 223, 224, 225, 226, 227,
    227, 227, 228, 228, 228, 229, 229, 230, 230, 231, 232, 232, 233, 233, 233, 234, 234, 234, 235, 235, 236, 236, 237,
    237, 237, 238, 238, 240, 241, 240, 241, 241, 240, 240, 240, 240, 242, 242, 242, 242, 242, 242, 242, 242, 243, 243,
    243, 242, 243, 244, 244, 244, 244, 244, 245, 245, 245, 245, 245, 245, 245, 245, 245, 207, 207, 207, 207, 207, 208,
    210, 211, 209, 209, 208, 208, 209, 210, 209, 209, 209, 209, 209, 209, 209, 210, 210, 210, 210, 210, 211, 211, 212,
    212, 213, 213, 213, 213, 213, 214, 214, 215, 215, 216, 216, 216, 216, 217, 217, 217, 218, 218, 218, 219, 219, 219,
    219, 221, 220, 221, 221, 222, 223, 223, 223, 224, 225, 226, 227, 227, 228, 228, 228, 228, 229, 229, 230, 231, 231,
    231, 233, 232, 233, 233, 234, 233, 234, 234, 235, 235, 236, 236, 236, 237, 237, 238, 240, 240, 239, 240, 240, 240,
    240, 240, 240, 242, 242, 242, 242, 242, 242, 242, 242, 242, 243, 243, 243, 244, 244, 244, 244, 244, 244, 245, 245,
    245, 245, 245, 245, 245, 245, 245, 208, 208, 207, 208, 208, 210, 213, 216, 209, 208, 208, 208, 208, 209, 209, 209,
    209, 209, 209, 210, 210, 210, 210, 210, 210, 211, 211, 211, 212, 212, 212, 212, 213, 213, 213, 214, 214, 215, 215,
    216, 216, 216, 216, 217, 217, 217, 218, 218, 218, 219, 219, 219, 220, 221, 221, 221, 221, 222, 223, 223, 223, 224,
    224, 225, 226, 227, 227, 227, 228, 229, 229, 229, 230, 230, 230, 231, 233, 232, 233, 233, 234, 233, 234, 234, 235,
    235, 235, 236, 236, 237, 237, 237, 239, 239, 240, 240, 240, 240, 240, 240, 240, 242, 242, 242, 242, 242, 242, 242,
    242, 242, 243, 243, 242, 243, 244, 244, 244, 245, 244, 245, 245, 245, 244, 245, 245, 245, 245, 246, 208, 208, 208,
    208, 208, 209, 210, 213, 210, 209, 208, 209, 209, 209, 209, 210, 210, 209, 209, 210, 210, 210, 210, 210, 210, 211,
    211, 212, 212, 212, 212, 213, 213, 213, 214, 215, 214, 215, 215, 215, 216, 216, 216, 217, 218, 218, 218, 218, 219,
    219, 219, 219, 220, 220, 221, 221, 221, 222, 223, 223, 224, 224, 225, 225, 225, 227, 227, 227, 228, 228, 228, 229,
    229, 230, 230, 231, 233, 232, 232, 234, 234, 234, 234, 234, 236, 235, 236, 236, 236, 237, 237, 237, 237, 238, 239,
    239, 239, 240, 240, 240, 240, 241, 242, 242, 242, 242, 242, 242, 242, 242, 243, 243, 242, 242, 243, 244, 244, 245,
    244, 244, 245, 244, 244, 245, 245, 245, 245, 245};
