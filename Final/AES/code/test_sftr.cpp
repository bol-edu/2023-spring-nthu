#include <stdio.h>

#include "aes.h"

int main(){
    unsigned char i,j;
    unsigned char golden_t[16] = {0x00,0x05,0x0a,0x0f,0x01,0x06,0x0b,0x0c,0x02,0x07,0x08,0x0d,0x03,0x04,0x09,0x0e};
    unsigned char golden[4][4];
    unsigned char state_sftr[4][4];
    unsigned char plain[16] = {0x00,0x04,0x08,0x0c,0x01,0x05,0x09,0x0d,0x02,0x06,0x0a,0x0e,0x03,0x07,0x0b,0x0f};
    unsigned char state[4][4];
    for ( i = 0;i < 4;i++){
        for ( j = 0;j < 4;j++){
            state[j][i] = plain[i * 4 + j];
        }
    }

    for ( i = 0;i < 4;i++){
        for ( j = 0;j < 4;j++){
        	golden[j][i] = golden_t[i * 4 + j];
        }
    }

    //MixColumns();
    //fprintf(stdout, "----------Pass!------------\n");
    ShiftRows(state,state_sftr);
    //fprintf(stdout, "----------Pass!------------\n");
    for(i=0;i<4;i++){
        for(j=0;j<4;j++){
            if(state_sftr[i][j]!=golden[i][j]){
            	printf("i=%d j=%d state_sftr=0x%2X golden=0x%2X\n",i,j,state_sftr[i][j],golden[i][j]);
                fprintf(stdout, "----------Fail!------------\n");
                return 1;
            }
        }
    }
    fprintf(stdout, "----------Pass!------------\n");
    return 0;
}

