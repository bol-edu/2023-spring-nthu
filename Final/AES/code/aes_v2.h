
#define Nb 4 
#define Nr 10 /* Number of round(Nr)*/
#define Nb_k 4 /* Number of block of key*/


void ShiftRows(unsigned char state[4][4],unsigned char state_sftr[4][4]);
unsigned char sbox(unsigned char d);
void MixColumns(unsigned char state[4][4],unsigned char state_mixc[4][4]);
void Cipher(unsigned char roundkey[176], unsigned char plain[16], unsigned char cipher[16]);
void kexp(unsigned char key[16],unsigned char roundkey[176]);

