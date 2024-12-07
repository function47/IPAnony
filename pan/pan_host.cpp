#include <CL/cl.h>
#define CL_HPP_TARGET_OPENCL_VERSION 100
#define CL_HPP_MINIMUM_OPENCL_VERSION 100
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <CL/cl2.hpp>
#include <vector>
#include <fstream>
#include <iostream>

std::string convertToIpString(uint32_t ip) {
    return std::to_string((ip >> 24) & 0xFF) + "." +
           std::to_string((ip >> 16) & 0xFF) + "." +
           std::to_string((ip >> 8) & 0xFF) + "." +
           std::to_string(ip & 0xFF);
}

uint32_t ipTo32Bit(const char* ip) {
    uint32_t result = 0;
    int partIndex = 0;
    uint8_t parts[4] = {0};

    for (size_t i = 0; ip[i] != '\0'; i++) {
        if (ip[i] >= '0' && ip[i] <= '9') {
            parts[partIndex] = parts[partIndex] * 10 + (ip[i] - '0');
        } else if (ip[i] == '.') {
            partIndex++;
            if (partIndex >= 4) {
                return (uint32_t)-1; 
            }
        } else {
            return (uint32_t)-1;
        }
    }

    for (int i = 0; i < 4; i++) {
        result |= ((uint32_t)parts[i] << ((3 - i) * 8));
    }

    return result;
}

std::vector<unsigned char> readBinaryFile(const std::string& filePath) {
    std::ifstream file(filePath, std::ios::binary | std::ios::ate);
    if (!file.is_open()) {
        throw std::runtime_error("Failed to open xclbin file cc: " + filePath);
    }
    std::streamsize size = file.tellg();
    file.seekg(0, std::ios::beg);

    std::vector<unsigned char> buffer(size);
    if (!file.read(reinterpret_cast<char*>(buffer.data()), size)) {
        throw std::runtime_error("Failed to read xclbin file cc.");
    }
    return buffer;
}

int main(int argc, char** argv) {
    if (argc != 3) {
        printf("Usage: %s <xclbin> <source_ips.dat>\n", argv[0]);
        return EXIT_FAILURE;
    }

    const char* binaryFile = argv[1];
    const char* inputFile = argv[2];

    cl::Context context;
    cl::CommandQueue queue;
    cl::Program program;
    cl::Kernel kernel;
    cl_int err;
    
    try {
        std::vector<cl::Platform> platforms;
        cl::Platform::get(&platforms);
        if (platforms.empty()) {
            throw std::runtime_error("No OpenCL platforms found cc.");
        }

        cl::Platform platform = platforms[0];
        std::vector<cl::Device> devices;
        platform.getDevices(CL_DEVICE_TYPE_ACCELERATOR, &devices);
        if (devices.empty()) {
            throw std::runtime_error("No Xilinx devices found cc.");
        }

        cl::Device device = devices[0];
        context = cl::Context(device);
        queue = cl::CommandQueue(context, device, CL_QUEUE_PROFILING_ENABLE, &err);

        auto fileBuf = readBinaryFile(binaryFile);
        std::vector<unsigned char> binaryData(fileBuf.data(), fileBuf.data() + fileBuf.size());
        cl::Program::Binaries bins = {{binaryData}};
        program = cl::Program(context, {device}, bins);
        if (program.build({device}) != CL_SUCCESS) {
            throw std::runtime_error("Failed to build program cc.");
        }

        kernel = cl::Kernel(program, "pan");
    } catch (const std::exception& e) {
        printf("Error initializing OpenCL environment cc: %s\n", e.what());
        return EXIT_FAILURE;
    }

    FILE* fpIn = fopen(inputFile, "r");
    if (fpIn == NULL) {
        printf("Error: Unable to open input file cc.\n");
        return EXIT_FAILURE;
    }

    char testIp[32];
    uint32_t ipEncArray[1];       // Array for storing output
    uint32_t testIpIntArray[1];   // Array for storing input

    cl::Buffer buffer_in(context, CL_MEM_READ_WRITE, sizeof(uint32_t), nullptr);  // Input buffer
    cl::Buffer buffer_out(context, CL_MEM_READ_WRITE, sizeof(uint32_t), nullptr); // Output buffer

    while (fscanf(fpIn, "%s", testIp) == 1) {
        testIpIntArray[0] = ipTo32Bit(testIp);
        if (testIpIntArray[0] == (uint32_t)-1) {
            printf("Error: Invalid IP format in input file cc.\n");
            fclose(fpIn);
            return EXIT_FAILURE;
        }

        queue.enqueueWriteBuffer(buffer_in, CL_TRUE, 0, sizeof(uint32_t), testIpIntArray);

        kernel.setArg(0, buffer_in);  
        kernel.setArg(1, buffer_out); 

        cl::NDRange global(1);
        cl::NDRange local(1);
        queue.enqueueNDRangeKernel(kernel, cl::NullRange, global, local);
        queue.finish();

        queue.enqueueReadBuffer(buffer_out, CL_TRUE, 0, sizeof(uint32_t), ipEncArray);

        std::string sourceIpStr = convertToIpString(testIpIntArray[0]);
        std::string encryptedIpStr = convertToIpString(ipEncArray[0]);

        printf("Source IP: %s\n", sourceIpStr.c_str());
        printf("Encrypted IP: %s\n\n", encryptedIpStr.c_str());

        //printf("Source IP (Hex): 0x%08X\n", testIpIntArray[0]);
        //printf("Encrypted IP (Hex): 0x%08X\n\n", ipEncArray[0]);
    }

    fclose(fpIn);

    return 0;            
}
