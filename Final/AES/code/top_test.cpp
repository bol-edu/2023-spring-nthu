#include "aes.h"

void top_test(unsigned char key[16],unsigned char roundkey[176], unsigned char plain[16], unsigned char cipher[16],unsigned char flag_key){
    
    if(flag_key)
        kexp(key,roundkey);
    else
        Cipher(roundkey, plain, cipher);

}
