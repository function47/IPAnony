#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
#include "pan.h"

int main() {
    const int SAMPLES = 3; ////If you change source_ips.dat, please change SAMPLES to the corresponding number of IPs
    FILE *fp;
    std::ifstream fin("source_ips.dat");
    text_t testIp;
    text_t encryptedOutput;

    fp = fopen("out.dat", "w");

    for (int i = 0; i < SAMPLES; i++) {
        //fscanf(fin, "%s", &testIp);
    	std::getline(fin, testIp);
        pan(testIp, &encryptedOutput);
        std::cout <<"source ip: " << testIp<< std::endl;
        std::cout <<"encrypted ip: " << encryptedOutput<< std::endl;
        std::cout <<std::endl;

    }

    fclose(fp);
    fin.close();

}
