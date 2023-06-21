#include <stdio.h>
#include <stdlib.h>
#include "aes.h"

int main(){
    //unsigned char key[16]    = {0x40,0x68,0xF2,0x01,0xBD,0xFA,0x64,0x79,0x31,0x56,0x6E,0x3C,0x80,0xDB,0xC9,0xB3};
	hls::vector<uint8_t, NUM_WORDS>  plain[DATA_SIZE];
	hls::vector<uint8_t, NUM_WORDS>  golden[DATA_SIZE];

    unsigned char roundkey[176];

    FILE *fp,*fp1,*fp2;
    if((fp = fopen("D:/master/HLS/final/test_cipher_kernel/test_vec_raw00.dat", "rb")) == NULL){
    	printf("Open file Erorr...\n");
    	return(0);
    }
    char ch;

    fread(&(plain[0][0]),1,NUM_WORDS*DATA_SIZE,fp);
    rewind(fp);
    fclose(fp);

    if((fp = fopen("D:/master/HLS/final/test_cipher_kernel/gold_vec_raw00.dat", "rb")) == NULL){
		printf("Open gold file Erorr...\n");
		return(0);
	}

	fread(&(golden[0][0]),1,NUM_WORDS*DATA_SIZE,fp);
	rewind(fp);
	fclose(fp);

	if((fp = fopen("D:/master/HLS/final/test_cipher_kernel/key_raw00.dat", "rb")) == NULL){
		printf("Open file Erorr...\n");
		return(0);
	}
	fread(roundkey,176,1,fp);
	rewind(fp);
	fclose(fp);


    hls::vector<uint8_t, NUM_WORDS> cipher[DATA_SIZE];
    Cipher_top( roundkey, &(plain[0]),&(cipher[0]));
    fprintf(stdout, "----------Start!------------\n");
    int i,j;

    for(i=0;i<1024;i++){
    	for(j=0;j<16;j++){
			if(cipher[i][j] != golden[i][j]){
				fprintf(stdout, "----------Fail!------------\n");
				printf("i=%d, j=%d,cipher=%2X, golden=%2X\n",i,j,cipher[i][j],golden[i][j]);
				//return 1;
			}
    	}
    }

	fprintf(stdout, "----------Pass!------------\n");
    return 0;
}
