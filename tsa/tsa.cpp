#include "tsa.h"
#include "lookup.h"
#include<bitset>
using namespace std;
std::vector<int> uint32ToBitVector(uint32_t num) {
    std::vector<int> bits(32);  // Initialize a vector of size 32

    // Loop through each bit in the 32-bit integer
    for (int i = 31; i>=0; i--) {
        bits[i] = (num & 1);  // Extract the least significant bit and store in vector
        num >>= 1;            // Right shift to get the next bit
    }

    return bits;
}
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
    std::vector<int> bits = uint32ToBitVector(src_ip);
    uint32_t cipher = 0;
    for (int i = 0; i<5; i++){
        cipher &= table[i];
        
    }
    for (int i = 6; i<16; i++){
        int temp = 4+(2<<(i-6));
        uint32_t x = table[temp+10];
        //cout << bitset<32>(x) << endl;
        uint32_t b = (((x >> i) & 1)<<i);
        //cout << bitset<32>(b) << endl;
        //cout << endl;
        cipher |= b;
    }
    //cout << cipher << endl;


    return reverseBits(src_ip) ^ cipher;
}
