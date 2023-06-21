Adative Beamforming
---

hls final project github repo
I hope we cant run our HLS project using makefile.


## 1 Git Setting(To my teammate)
First, clone the project into your enviroment
```
git clone git@github.com:s095339/Adaptive_Beamforming.git
```
Then the main branch will clone to your device
If you want to modify and add your kernel, please set another branch
```
git branch [YOUR BRANCE NAME]
```


## 2 Host code
The Host code is defined in the following file:
```
Adaptive_Beamforming
|-/ext
    |-/xcl2
        |-xcl2.cpp
        |-xcl2.hpp
    |-utils.hpp
|-host.cpp
```

## 3 Kernel code
The Kernel code are included in the following file:
```
Adaptive_Beamforming
|-/hw
    |-/utils
        |-x_matrix_utils.hpp #from vitis solver library
    |-qrf.hpp       #QR factorization from vitis solver library
|-dut_type.hpp      #determind the input and output type of Kernel param
|-Top_Kernel.cpp    #Top Function of the Kernel, add other kernel in this file
|-kernels.hpp       #include this file in top kernel to use the sub kernels (QRF、.etc) 

```
At present, the kernel only support the qrf function. It receive the matrix A with the row=100 and col=10. The kernel generate the matrix R and Q by applying the qrf to the matrix A and only send the matrix R (10x10) back to host side.
Therefore, the host side is designed to receive the R matrix from the kernel. To finished the whole Beamforming funcion, we have to modify both the kerenl and hostside.


## 4 Run
To run the project, type the command in the command line:
```
make run TARGET=sw_emu/hw_emu/hw
```
To clean the generated file(log..), type:
```
make clean
```
Or
```
make cleanall
```
## 5 TODO
In this project, the hostcode and the Kernel top function are prepared. The qrf function have been included in the kernel. But there are still something we need to complete:
1. Add other sub kernel 
2. modify the host code to make sure that the host side can migrate the return matrix correctly.

## 6 issue
The SW emulation can be run successfully. However, when I run the hw_emu, lots of warning message generated in a log file so that the whole emulation slow down, but the host side still can receive the MatrixR from the kernel side.
  