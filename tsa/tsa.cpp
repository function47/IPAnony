#ifdef HLS_SYNTHESIS
#include "tsa.h"
uint32_t reverseBits(uint32_t num) {
    uint32_t reversed = 0;

    for (int i = 0; i < 32; ++i) {
        // Shift the reversed bits to the left to make room for the next bit
        reversed <<= 1;
        // Add the least significant bit of `num` to `reversed`
        reversed |= (num & 1);
        // Shift `num` right to move the next bit into the least significant position
        num >>= 1;
    }

    return reversed;
}
uint32_t tsa(uint32_t src_ip){
    //std::vector<int> bits = uint32ToBitVector(src_ip);
    uint32_t cipher = src_ip;
    for (int i = 0; i<5; i++){
        cipher &= table[i];
    }
    for (int i = 6; i<16; i++){
        int index = 4+(2<<(i-6))+10;
        uint32_t x = table[index];
        uint32_t b = (((x >> i) & 1)<<i);
        cipher |= b;
    }


    return src_ip ^ cipher;
}
#endif