`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2024 10:11:10 PM
// Design Name: 
// Module Name: pan_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module pan_tb;
    // Testbench signals
    reg clk_100MHz;
    reg reset_rtl_0;

    // AXI Lite interface signals
    reg [4:0] s_axi_control_ARADDR;
    reg s_axi_control_ARVALID;
    reg [4:0] s_axi_control_AWADDR;
    reg s_axi_control_AWVALID;
    reg [31:0] s_axi_control_WDATA;
    reg [3:0] s_axi_control_WSTRB;
    reg s_axi_control_WVALID;
    reg s_axi_control_BREADY;
    reg s_axi_control_RREADY;

    // Instantiate the DUT (Device Under Test)
    PAN_TEST dut (
        .clk_100MHz(clk_100MHz),
        .reset_rtl_0(reset_rtl_0)
    );

    // Clock generation
    initial begin
        clk_100MHz = 0;
        forever #5 clk_100MHz = ~clk_100MHz; // 100 MHz clock period
    end

    // Simulation process
    initial begin
        // Initialize signals
        reset_rtl_0 = 1;  // Active high reset
        s_axi_control_ARADDR = 5'b0;
        s_axi_control_ARVALID = 0;
        s_axi_control_AWADDR = 5'b0;
        s_axi_control_AWVALID = 0;
        s_axi_control_WDATA = 32'b0;
        s_axi_control_WSTRB = 4'b1111;
        s_axi_control_WVALID = 0;
        s_axi_control_BREADY = 0;
        s_axi_control_RREADY = 0;

        // Reset sequence
        #20 reset_rtl_0 = 0; // Release reset

        // Simulate write operation
        write_axi(5'h00, 32'hC0A80101); // Write data to address 0x00

        // Simulate read operation
        read_axi(5'h00); // Read data from address 0x00

        #100000 $finish; // End simulation
    end

    // AXI write task
    task write_axi(input [4:0] addr, input [31:0] data);
        begin
            s_axi_control_AWADDR = addr;
            s_axi_control_AWVALID = 1;
            s_axi_control_WDATA = data;
            s_axi_control_WVALID = 1;
            s_axi_control_BREADY = 1;
            #20; // Wait for AXI handshake
            s_axi_control_AWVALID = 0;
            s_axi_control_WVALID = 0;
            s_axi_control_BREADY = 0;
        end
    endtask

    // AXI read task
    task read_axi(input [4:0] addr);
        begin
            s_axi_control_ARADDR = addr;
            s_axi_control_ARVALID = 1;
            s_axi_control_RREADY = 1;
            #20; // Wait for AXI handshake
            $display("Read Data from 0x%02X: 0x%08X", addr, dut.pan_0.s_axi_control_RDATA);
            s_axi_control_ARVALID = 0;
            s_axi_control_RREADY = 0;
        end
    endtask
endmodule
