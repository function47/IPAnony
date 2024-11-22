// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.2 (64-bit)
// Tool Version Limit: 2023.10
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
/***************************** Include Files *********************************/
#include "xpan.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XPan_CfgInitialize(XPan *InstancePtr, XPan_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XPan_Set_ip(XPan *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XPan_WriteReg(InstancePtr->Control_BaseAddress, XPAN_CONTROL_ADDR_IP_DATA, Data);
}

u32 XPan_Get_ip(XPan *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPan_ReadReg(InstancePtr->Control_BaseAddress, XPAN_CONTROL_ADDR_IP_DATA);
    return Data;
}

u32 XPan_Get_ipEnc(XPan *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPan_ReadReg(InstancePtr->Control_BaseAddress, XPAN_CONTROL_ADDR_IPENC_DATA);
    return Data;
}

u32 XPan_Get_ipEnc_vld(XPan *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XPan_ReadReg(InstancePtr->Control_BaseAddress, XPAN_CONTROL_ADDR_IPENC_CTRL);
    return Data & 0x1;
}

