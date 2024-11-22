//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Fri Nov 22 03:30:36 2024
//Host        : fpga-tools running 64-bit Ubuntu 20.04.4 LTS
//Command     : generate_target PAN_TEST.bd
//Design      : PAN_TEST
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "PAN_TEST,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=PAN_TEST,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "PAN_TEST.hwdef" *) 
module PAN_TEST
   (clk_100MHz,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN PAN_TEST_clk_100MHz, FREQ_HZ 200000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;

  wire clk_100MHz_1;
  wire clk_wiz_0_clk_out1;
  wire reset_rtl_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]xlconstant_0_dout;

  assign clk_100MHz_1 = clk_100MHz;
  assign reset_rtl_0_1 = reset_rtl_0;
  PAN_TEST_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_100MHz_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_rtl_0_1));
  PAN_TEST_pan_0_0 pan_0
       (.ap_clk(clk_wiz_0_clk_out1),
        .ap_rst_n(util_vector_logic_0_Res),
        .ap_start(xlconstant_0_dout),
        .s_axi_control_ARADDR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_ARVALID(1'b0),
        .s_axi_control_AWADDR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_AWVALID(1'b0),
        .s_axi_control_BREADY(1'b0),
        .s_axi_control_RREADY(1'b0),
        .s_axi_control_WDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_control_WSTRB({1'b1,1'b1,1'b1,1'b1}),
        .s_axi_control_WVALID(1'b0));
  PAN_TEST_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(reset_rtl_0_1),
        .Res(util_vector_logic_0_Res));
  PAN_TEST_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
