#include "pan.h"
#include <stdio.h>
#include <stdint.h>

void pan(uint32_t *ip, uint32_t* ipEnc);

uint32_t ipTo32Bit(const char* ip) {
    uint32_t result = 0;
    int partIndex = 0;
    uint8_t parts[4] = {0};

    for (int i = 0; ip[i] != '\0'; i++) {
        if (ip[i] >= '0' && ip[i] <= '9') {
            parts[partIndex] = parts[partIndex] * 10 + (ip[i] - '0');
        } else if (ip[i] == '.') {
            partIndex++;
        } else {
            return -1; 
        }
    }

    for (int i = 0; i < 4; i++) {
        result |= (static_cast<uint32_t>(parts[i]) << ((3 - i) * 8));
    }

    return result;
}

int main() {
    const int SAMPLES = 5;
    FILE *fpIn, *fpOut;
    char testIp[128];       
    uint32_t ipEnc;             
    uint32_t testIpIntArray[1];  
    char debugInfo;     

    fpIn = fopen("source_ips.dat", "r");
    fpOut = fopen("out.dat", "w");

    if (fpIn == NULL || fpOut == NULL) {
        printf("Error: Unable to open file.\n");
        return -1;
    }

    for (int i = 0; i < SAMPLES; i++) {
        if (fscanf(fpIn, "%s", testIp) != 1) {
            printf("Error: Unable to read IP address from file.\n");
            break;
        }

        testIpIntArray[0] = ipTo32Bit(testIp);
        if (testIpIntArray[0] == (uint32_t)-1) {
            printf("Error: Invalid IP format.\n");
            break;
        }

        pan(testIpIntArray, &ipEnc);

        printf("Source IP (Hex): 0x%08X\n", testIpIntArray[0]);
        printf("Encrypted IP (Hex): 0x%08X\n\n", ipEnc);

        fprintf(fpOut, "Source IP (Hex): 0x%08X\n", testIpIntArray[0]);
        fprintf(fpOut, "Encrypted IP (Hex): 0x%08X\n\n", ipEnc);
    }

    fclose(fpIn);
    fclose(fpOut);

    return 0;
}
