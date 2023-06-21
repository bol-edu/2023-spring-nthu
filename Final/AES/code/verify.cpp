void verify(size_t loop){
	//vector<unsigned char, aligned_allocator<unsigned char>>  plain(DATA_SIZE*NUM_WORDS);
	vector<unsigned char, aligned_allocator<unsigned char>>  golden(DATA_SIZE*NUM_WORDS);
    vector<unsigned char, aligned_allocator<unsigned char>>  verify(DATA_SIZE*NUM_WORDS);

    unsigned char roundkey[176];
    FILE *fp1 *fp2;
	if((fp1 = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/data/gold_vec_raw00.dat", "rb")) == NULL){
		printf("Open gold file Erorr...\n");
	}
    if((fp2 = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/data/verify_vec_raw00.dat", "rb")) == NULL){
		printf("Open verify file Erorr...\n");
	}
    for(size_t k=0;k<loop;k++){
    	fread(golden.data(),1,NUM_WORDS*DATA_SIZE,fp1);
    	fread(verify.data(),1,NUM_WORDS*DATA_SIZE,fp2);
        printf("----------Start!------------\n");
        int i,j;

        for(i=0;i<1024;i++){
    	    for(j=0;j<16;j++){
			    if(verify[i*16+j] != golden[i*16+j]){
				    printf("----------Fail!------------\n");
				    printf("i=%d, j=%d,cipher=%2X, golden=%2X\n",i,j,verify[i*16+j],golden[i*16+j]);
				    //return 1;
			}
    	}
    }
	    printf("----------Pass!------------\n");
    }
	rewind(fp1);
	fclose(fp1);
	rewind(fp2);
	fclose(fp2);

//	if((fp = fopen("/mnt/HLSNAS/01.LcglIk/Final/code/16MB/key_raw00.dat", "rb")) == NULL){
//		printf("Open file Erorr...\n");
//	}
//	fread(roundkey,176,1,fp);
//	rewind(fp);
//	fclose(fp);
