//#ifdef HLS_SYNTHESIS
#include "tsa.h"
void tsa(ap_uint<32> *src_ip , ap_uint<32> *encryp_ip, int size){
#pragma HLS INTERFACE m_axi port=src_ip bundle=aximm1
#pragma HLS INTERFACE m_axi port=encryp_ip bundle=aximm1
	for (int k = 0; k<size; k++){
    ap_uint<32> cipher = src_ip[k];
    for (int i = 0; i<5; i++){
        cipher &= table[i];
    }
    for (int i = 6; i<16; i++){
        int index = 4+(2<<(i-6))+10;
        ap_uint<32> x = table[index];
        ap_uint<32> b = (((x >> i) & 1)<<i);
        cipher |= b;
    }


    encryp_ip[k] = src_ip[k] ^ cipher;
	}
}
//#endif
