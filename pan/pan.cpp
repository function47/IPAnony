#include "pan.h"
#include "aes.hpp"
#include <cstdint>
#include <iostream>

ap_uint<128> getLeadingBits(uint32_t ip32Bit, int i) {
    int x = i + 1;
    uint32_t prefix = ip32Bit >> (32 - x);
    prefix = prefix << (32 - x);
    ap_uint<128> result = ap_uint<128>(prefix);
    result = result << 96;
    return result;
}

ap_uint<128> aesEncrypt(const ap_uint<128>& key, const ap_uint<128>& plaintext) {
    xf::security::aesEnc<128> aesInstance;
    aesInstance.updateKey(key);
    ap_uint<128> ciphertext;
    aesInstance.process(plaintext, key, ciphertext);
    return ciphertext;
}

void pan(uint32_t* ipinput, uint32_t* ipEnc) {
    #pragma HLS INTERFACE m_axi port=ipinput bundle=gmem0 depth=1
    #pragma HLS INTERFACE m_axi port=ipEnc bundle=gmem1 depth=1
    //#pragma HLS INTERFACE s_axilite port=ipEnc bundle=control   
    //#pragma HLS INTERFACE m_axi port=ipEnc offset=slave bundle=gmem
    //#pragma HLS INTERFACE s_axilite port=return bundle=control

    uint32_t ip = 0;
    ip = *ipinput;
    ap_uint<128> key = ~ap_uint<128>(0);
    uint32_t ipEncInt = 0;

    int flipArray[32] = {0};

    for (int i = 0; i < 32; i++) {
        #pragma HLS unroll
        ap_uint<128> leadingBits = getLeadingBits(ip, i);
        ap_uint<128> ciphertext = aesEncrypt(key, leadingBits);
        flipArray[i] = (ciphertext >> (127 - i)) & 0x1;
    }

    for (int i = 0; i < 32; i++) {
        ipEncInt = (ipEncInt << 1) | flipArray[i];
    }
    uint32_t ipEncOut;
    ipEncOut = ipEncInt ^ ip;
    *ipEnc = ipEncOut;
    
}