In this update, we implemented the Crypto-PAn encryption algorithm, which can preserve IP address prefixes. The following outlines the operating logic of Crypto-PAn.
![Cryptopan's operating logic](images/Cryptopan.jpg)

Given a 32-bit IPv4 address (x), the reference implementation performs the following operation for each bit (x_i) of the input: Compose a 128-bit input block (I_i = x_[0,i] pad_[i,128]). Encrypt (I_i) with the cipher to produce a 128-bit output block (O_i). Finally, XOR the i-th bit of that output block with the i-th bit of (x), and append the result — (x_i ⊕ O_{i,i}) — onto the output bitstring.

#Purpose of the Code:
| Code | Function |
| :--- | :---: |
| pan.cpp | Implements the core logic of the Crypto_PAN algorithm, including encryption and prefix preservation. |
| pan.h | Header file defining the functions and data structures used in pan.cpp. |
| aes.hpp | Provides AES encryption functionality used by the Crypto_PAN algorithm. |
| pan_test.cpp | Contains test cases for validating the functionality and correctness of pan.cpp. |
| pan_host | Hosts the main program, handling input/output operations, integration with hardware or test environments, and serves as the application component. |


#Code Testing Guide：

The compiled files are located in the pan_build folder. Please commit the pan_build folder to Git. In OCT, select the u280 board. After uploading the files to the u280, execute the following command to run the application:
./app_component pan.xclbin source_ip.dat

*Notice: To encrypt different IP addresses, modify the IP address in the source_ip file. Note that the current implementation processes only one IP address at a time. Ensure the input remains within the valid IPv4 range (0.0.0.0 to 255.255.255.255) and avoid adding multiple addresses to the file. If you have any other questions, please email chen.fuk@northeastern.edu





