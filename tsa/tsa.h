#ifndef _TSA_HEADERS
#define _TSA_HEADERS

#define ADDR_LVL 32
#include "lookup.h"

#ifdef HLS_SYNTHESIS
#include "ap_int.h"
typedef ap_uint<32> uint32_t
#else
#include<cstdint>
#include<iostream>
#include<vector>
#include<bitset>
#endif

uint32_t tsa(uint32_t src_ip);
#endif
