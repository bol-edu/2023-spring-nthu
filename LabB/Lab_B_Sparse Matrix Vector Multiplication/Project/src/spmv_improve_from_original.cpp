include "spmv.h"

void spmv(int rowPtr[NUM_ROWS+1 ], int columnIndex[NNZ],
        DTYPE values[NNZ], DTYPE y[SIZE], DTYPE x[SIZE])
{
#pragma HLS TOP name=spmv
#pragma HLS INTERFACE mode=m axi depth=5 port=rowPtr
#pragma HLS INTERFACE mode=m axi depth=16 port=columnIndex
#pragma HLS INTERFACE mode=m axi depth=16 port=values
#pragma HLS INTERFACE mode=m axi depth=4 port=y
#pragma HLS INTERFACE mode=m axi depth=4 port=x
#pragma HLS INTERFACE mode=m axi port=return

#pragma HLS ARRAY_RESHAPE dim=l variable=rowPtr
#pragma HLS ARRAY_RESHAPE dim=l variable=columnIndex

LI: for (__int8 i = 0; i < NUM_ROWS; i++){
#pragma HLS LOOP_TRIPCOUNT avg=4 max=4 min=4
        DTYPE y0 = 0;
    L2: for (__int8 k = rowPtr[i]; k < rowPtr[i+l]; k+=T){
#pragma HLS LOOP_TRIPCOUNT avg=2 max=4 min=0
//#pragma HLS unroll factor=7
#pragma HLS pipeline
            DTYPE y_par0 = values[k] * x[columnIndex[k]];
        L3: for (int l=1; l<7; l++){//II_com = 7
                if(l+k < rowPtr[i+l]){
                    y_par0 += value[l+k] * x[columnIndex[l+k]];
                }
        }
        y0 += y_par0;
    }
    y[i] = y0;
    }
}