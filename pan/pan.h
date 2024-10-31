#ifndef PAN_H_
#define PAN_H_

#include <ap_int.h>
#include <string>
#include <sstream>
#include <cstdint>

typedef std::string text_t;
typedef ap_uint<128> dint_t;


void pan(
  text_t ip,
  text_t *ipEnc
  ); 

#endif
