#include<iostream>
#include <fstream>
#include"tsa.h"
using namespace std;
int main(){
    uint32_t input = 3232235521;
    uint32_t golden = 2147498563;
    //input is 192.168.0.1
    //Anomized IP should be 128.0.58.67
     std::ifstream infile("input_ip");
     std::ifstream outfile("output_ip");
    int n;
    infile >> n; 
    for (int i = 0; i<n; i++)
    {   
        infile >> input;
        uint32_t output = tsa(input);
        uint32_t ans;
        outfile >> ans;
        if (output != ans) { cout << "Test Failed" << endl; return 1; }
        

    }
    cout << "Test Passed!" << endl;
  //  if (output == golden) cout << "Test Passed" << endl;
  //  else cout << "Test Failed" << endl;
    return 0;
}
