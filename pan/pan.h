#ifndef PAN_H_
#define PAN_H_

#include <ap_int.h>
#include <string>
#include <sstream>
#include <cstdint>

#define MAX_TEXT_LEN 32
typedef char text_t[MAX_TEXT_LEN];
typedef ap_uint<32> dint_t;


void pan(
  dint_t *ip,
  dint_t *ipEnc
  ); 

#endif
