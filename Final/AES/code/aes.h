#include <hls_vector.h>
#include <hls_stream.h>

#define Nb 4 
#define Nr 10 /* Number of round(Nr)*/
#define Nb_k 4 /* Number of block of key*/

#define NUM_WORDS 16
#define DATA_SIZE 1024

//void ShiftRows(unsigned char state[4][4],unsigned char state_sftr[4][4]);
//unsigned char sbox(unsigned char d);
//void MixColumns(unsigned char state[4][4],unsigned char state_mixc[4][4]);
//void Cipher_top(unsigned char roundkey_in[176],hls::vector<uint8_t, NUM_WORDS>* plain, hls::vector<uint8_t, NUM_WORDS>* cipher);
//void kexp(unsigned char key[16],unsigned char roundkey[176]);
