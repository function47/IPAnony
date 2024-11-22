vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/util_vector_logic_v2_0_3
vlib modelsim_lib/msim/xlconstant_v1_1_8

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap util_vector_logic_v2_0_3 modelsim_lib/msim/util_vector_logic_v2_0_3
vmap xlconstant_v1_1_8 modelsim_lib/msim/xlconstant_v1_1_8

vlog -work xpm -64 -incr -mfcu  -sv "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93  \
"/tools/Xilinx/Vivado/2023.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"../../../bd/PAN_TEST/ip/PAN_TEST_clk_wiz_0_0/PAN_TEST_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/PAN_TEST/ip/PAN_TEST_clk_wiz_0_0/PAN_TEST_clk_wiz_0_0.v" \

vlog -work util_vector_logic_v2_0_3 -64 -incr -mfcu  "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/5e7b/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"../../../bd/PAN_TEST/ip/PAN_TEST_util_vector_logic_0_0/sim/PAN_TEST_util_vector_logic_0_0.v" \
"../../../bd/PAN_TEST/sim/PAN_TEST.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_control_s_axi.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flipArray_RAM_AUTO_1R1W.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flow_control_loop_pipe_sequential_init.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_getLeadingBits.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_1.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_VITIS_LOOP_39_2.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_sparsemux_21_4_128_1_1.v" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan.v" \
"../../../bd/PAN_TEST/ip/PAN_TEST_pan_0_0/sim/PAN_TEST_pan_0_0.v" \

vlog -work xlconstant_v1_1_8 -64 -incr -mfcu  "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/d390/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu  "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/c2c6" "+incdir+../../../../pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/drivers/pan_v1_0/src" \
"../../../bd/PAN_TEST/ip/PAN_TEST_xlconstant_0_0/sim/PAN_TEST_xlconstant_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

