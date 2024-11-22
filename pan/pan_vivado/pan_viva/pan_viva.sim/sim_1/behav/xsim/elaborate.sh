#!/usr/bin/env bash
# ****************************************************************************
# Vivado (TM) v2023.2 (64-bit)
#
# Filename    : elaborate.sh
# Simulator   : AMD Vivado Simulator
# Description : Script for elaborating the compiled design
#
# Generated by Vivado on Fri Nov 22 04:00:50 UTC 2024
# SW Build 4029153 on Fri Oct 13 20:13:54 MDT 2023
#
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
#
# usage: elaborate.sh
#
# ****************************************************************************
set -Eeuo pipefail
# elaborate design
echo "xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L util_vector_logic_v2_0_3 -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot pan_tb_behav xil_defaultlib.pan_tb xil_defaultlib.glbl -log elaborate.log"
xelab --incr --debug typical --relax --mt 8 -L xil_defaultlib -L util_vector_logic_v2_0_3 -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -L xpm --snapshot pan_tb_behav xil_defaultlib.pan_tb xil_defaultlib.glbl -log elaborate.log

