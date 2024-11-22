# TSA-based Anonymization

## Build
Run make

## Test
Run ./main to anonymize 10 ip addresses in the input_ip and compare it with the output_ip

# Build TSA xclbin
Go to the proj folder
Run ```make all TARGET=hw PLATFORM=/opt/xilinx/platforms/xilinx_u280_gen3x16_xdma_1_202211_1/xilinx_u280_gen3x16_xdma_1_202211_1.xpfm | tee run.log & ```
