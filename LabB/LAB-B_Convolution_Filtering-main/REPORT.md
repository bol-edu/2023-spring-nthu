HLS-NTNU2023spring LAB

報告：
https://github.com/s095339/LAB-B_Convolution_Filtering/blob/main/report.pdf

host.cpp的opencv版本問題解決(boleduuser server)：
需要指定到正確的opencv include path。
host.cpp的#include要包含所有會用到的C API function(include .h file)
makefile確定有 -lopencv_imgcodecs (用於cv::imwrite cv::imread這兩個C++函數)
詳情參考報告或commit：
https://github.com/s095339/LAB-B_Convolution_Filtering/commit/704cd0b41ba53d8d113ccf13d03eb51b382be507
