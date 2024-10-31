#include "pan.h"
#include "aes.hpp"
#include <vector>
#include <numeric>


text_t convertToIpString(uint32_t ipEnc) {
    uint8_t octet1 = (ipEnc >> 24) & 0xFF;
    uint8_t octet2 = (ipEnc >> 16) & 0xFF;
    uint8_t octet3 = (ipEnc >> 8) & 0xFF;
    uint8_t octet4 = ipEnc & 0xFF;

    std::ostringstream ipStream;
    ipStream << (int)octet1 << "." << (int)octet2 << "." << (int)octet3 << "." << (int)octet4;
    return ipStream.str();
}

ap_uint<128> getLeadingBits(uint32_t ip32Bit, int i) {
	int x = i+1;
	uint32_t prefix = ip32Bit >> (32-x);
	prefix = prefix <<(32-x);
	ap_uint<128> result = ap_uint<128>(prefix);
	result = result << 96;
    return result;
}
uint32_t ipTo32Bit(text_t ip) {
    uint32_t result = 0;
    int part;
    char dot;
    int i;
    std::istringstream ipStream(ip);
    
    for (int i = 3; i >= 0; --i) {
        ipStream >> part >> dot;

        if (part < 0 || part > 255) {
            throw std::invalid_argument("Invalid IP segment");
        }

        result |= (static_cast<uint32_t>(part) << (i * 8));
    }

    return result;
}

uint32_t padTo128Bits(uint32_t leadingBits, int bitCount) {
    ap_uint<128> paddedValue = 0;
    paddedValue = ap_uint<128>(leadingBits) << (128 - bitCount);
    return paddedValue;
}

ap_uint<128> aesEncrypt(const ap_uint<128>& key, const ap_uint<128>& plaintext) {
    xf::security::aesEnc<128> aesInstance;
    aesInstance.updateKey(key);
    ap_uint<128> ciphertext;
    aesInstance.process(plaintext, key, ciphertext);
    return ciphertext;
}


void pan(text_t ipaddress, text_t *ipEncOut) {
    //aesEnc<128> aesInstance;
    //ap_uint<128> plaintext;
	ap_uint<128> key = ~ap_uint<128>(0);
    uint32_t ipEnc;
    uint32_t ip32Bit = ipTo32Bit(ipaddress);
    std::vector<int>  flip_array;
    //std::cout <<"unsigned ip as integer: " <<static_cast<uint32_t>(ip32Bit) << std::endl; //correct
    int i;
    int a;
    for(i=0;i<32;i++){
    	ap_uint<128> leadingBits = getLeadingBits(ip32Bit, i);
    	//std::cout <<"leadingBits: " <<leadingBits.to_string(2) << std::endl;//correct
        ap_uint<128> ciphertext = aesEncrypt(key, leadingBits);
        //std::cout <<"cipher result: " <<ciphertext.to_string(2) << std::endl; //correct

        int highest_bit = (ciphertext >> (127-i))& 0x1;
        //int highest_bit = (ciphertext >> 127 )& 0x1;
        flip_array.push_back(highest_bit);

    }
	//std::cout << "flip_array: ";
	//for (int bit : flip_array) {
	//	std::cout << bit;
	//}
	//std::cout << std::endl;  //correct
	ipEnc = std::accumulate(flip_array.begin(),flip_array.end(),0,[](uint32_t x, int y){return (x<<1)|y;});
	//std::cout << "ipEnc: " << ipEnc << std::endl; //correct
	uint32_t result = ipEnc ^ ip32Bit;
    text_t outputipadd = convertToIpString(result);
    *ipEncOut = outputipadd;

}
