#include <stdio.h>

#include "aes.h"


int main(){
    unsigned char i,j;
    unsigned char golden_t[16] = {0x6a,0x6a,0x5c,0x45,0x2c,0x6d,0x33,0x51,0xb0,0xd9,0x5d,0x61,0x27,0x9c,0x21,0x5c};
    unsigned char golden[4][4] = {{0x6a,0x6a,0x5c,0x45},{0x2c,0x6d,0x33,0x51},{0xb0,0xd9,0x5d,0x61},{0x27,0x9c,0x21,0x5c}};
    unsigned char state_mixc[4][4];
    unsigned char plain[16] = {0x63,0x6b,0x67,0x76,0xf2,0x01,0xab,0x7b,0x30,0xd7,0x77,0xc5,0xfe,0x7c,0x6f,0x2b};
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
    MixColumns(state,state_mixc);
    //fprintf(stdout, "----------Pass!------------\n");
    for(i=0;i<4;i++){
        for(j=0;j<4;j++){
            if(state_mixc[i][j]!=golden[i][j]){
            	printf("i=%d j=%d state_mixc=0x%2X golden=0x%2X\n",i,j,state_mixc[i][j],golden[i][j]);
                fprintf(stdout, "----------Fail!------------\n");
                return 1;
            }
        }
    }
    fprintf(stdout, "----------Pass!------------\n");
    return 0;
}

