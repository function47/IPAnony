
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_project: 2

00:00:062

00:00:072

1343.0472
0.0232
256562
30648Z17-722h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
b
 Loaded user IP repository '%s'.
1135*coregen2
/mnt/build/fukun/pan_ip_2Z19-1700h px� 
n
"Loaded Vivado IP repository '%s'.
1332*coregen2%
#/tools/Xilinx/Vivado/2023.2/data/ipZ19-2313h px� 
f
-IPCACHE: Running cache check for IP inst: %s
2546*coregen2
PAN_TEST_pan_0_0Z19-6924h px� 
�
Command: %s
53*	vivadotcl2j
hsynth_design -top PAN_TEST_pan_0_0 -part xcu280-fsvh2892-2L-e -incremental_mode off -mode out_of_contextZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
y
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2
xcu280Z17-347h px� 
i
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2
xcu280Z17-349h px� 
I
Loading part %s157*device2
xcu280-fsvh2892-2L-eZ21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
4Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
P
#Helper process launched with PID %s4824*oasys2	
1289359Z8-7075h px� 
�
%s*synth2�
�Starting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 3091.418 ; gain = 398.625 ; free physical = 23554 ; free virtual = 28618
h px� 
�
synthesizing module '%s'%s4497*oasys2
PAN_TEST_pan_0_02
 2x
t/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/synth/PAN_TEST_pan_0_0.v2
538@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pan2
 2k
g/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan.v2
98@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_flipArray_RAM_AUTO_1R1W2
 2�
/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flipArray_RAM_AUTO_1R1W.v2
78@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_flipArray_RAM_AUTO_1R1W2
 2
02
12�
/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flipArray_RAM_AUTO_1R1W.v2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_pan_Pipeline_12
 2z
v/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_1.v2
98@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
*pan_flow_control_loop_pipe_sequential_init2
 2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flow_control_loop_pipe_sequential_init.v2
118@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
*pan_flow_control_loop_pipe_sequential_init2
 2
02
12�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_flow_control_loop_pipe_sequential_init.v2
118@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_pan_Pipeline_12
 2
02
12z
v/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_1.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_getLeadingBits2
 2z
v/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_getLeadingBits.v2
98@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_getLeadingBits2
 2
02
12z
v/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_getLeadingBits.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_process_r2
 2u
q/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r.v2
98@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys24
2pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R2
 2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
78@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1178@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1188@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1198@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1208@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1218@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1228@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1238@Z8-3876h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2:
8./pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.dat2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
1248@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys24
2pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R2
 2
02
12�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R.v2
78@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_sparsemux_21_4_128_1_12
 2�
~/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_sparsemux_21_4_128_1_1.v2
98@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_sparsemux_21_4_128_1_12
 2
02
12�
~/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_sparsemux_21_4_128_1_1.v2
98@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_process_r2
 2
02
12u
q/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_process_r.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2"
 pan_pan_Pipeline_VITIS_LOOP_39_22
 2�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_VITIS_LOOP_39_2.v2
98@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
 pan_pan_Pipeline_VITIS_LOOP_39_22
 2
02
12�
�/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_pan_Pipeline_VITIS_LOOP_39_2.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
pan_control_s_axi2
 2y
u/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_control_s_axi.v2
98@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2y
u/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_control_s_axi.v2
1778@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan_control_s_axi2
 2
02
12y
u/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan_control_s_axi.v2
98@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pan2
 2
02
12k
g/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ipshared/332b/hdl/verilog/pan.v2
98@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PAN_TEST_pan_0_02
 2
02
12x
t/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/synth/PAN_TEST_pan_0_0.v2
538@Z8-6155h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset24
2pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1RZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2
pan_flipArray_RAM_AUTO_1R1WZ8-7129h px� 
�
%s*synth2�
�Finished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3182.387 ; gain = 489.594 ; free physical = 23411 ; free virtual = 28489
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3197.230 ; gain = 504.438 ; free physical = 23408 ; free virtual = 28487
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 3197.230 ; gain = 504.438 ; free physical = 23408 ; free virtual = 28487
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.032
00:00:00.042

3197.2302
0.0002
234072
28485Z17-722h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2w
s/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/constraints/pan_ooc.xdc2
inst	8Z20-848h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
create_clock: 2

00:00:052

00:00:052

3351.7622
5.9382
232692
28360Z17-722h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2w
s/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.gen/sources_1/bd/PAN_TEST/ip/PAN_TEST_pan_0_0/constraints/pan_ooc.xdc2
inst	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2^
Z/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.runs/PAN_TEST_pan_0_0_synth_1/dont_touch.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2^
Z/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.runs/PAN_TEST_pan_0_0_synth_1/dont_touch.xdc8Z20-178h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3351.7622
0.0002
232682
28360Z17-722h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2"
 Constraint Validation Runtime : 2
00:00:00.062
00:00:00.032

3351.7972
0.0002
232662
28359Z17-722h px� 
Q
!Incremental synthesis strategy %s2274*designutils2
offZ20-5008h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3351.797 ; gain = 659.004 ; free physical = 23220 ; free virtual = 28323
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Loading part: xcu280-fsvh2892-2L-e
h p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3351.797 ; gain = 659.004 ; free physical = 23220 ; free virtual = 28323
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 3351.797 ; gain = 659.004 ; free physical = 23220 ; free virtual = 28323
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2

wstate_reg2
pan_control_s_axiZ8-802h px� 
v
3inferred FSM for state register '%s' in module '%s'802*oasys2

rstate_reg2
pan_control_s_axiZ8-802h px� 
s
@FSM extraction disabled for register '%s' through user attribute3641*oasys2
ap_CS_fsm_regZ8-4490h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2(
&"pan_flipArray_RAM_AUTO_1R1W:/ram_reg"2
322
1Z8-6904h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                             0001 |                               11
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_                  WRIDLE |                             0010 |                               00
h p
x
� 
y
%s
*synth2a
_                  WRDATA |                             0100 |                               01
h p
x
� 
y
%s
*synth2a
_                  WRRESP |                             1000 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

wstate_reg2	
one-hot2
pan_control_s_axiZ8-3354h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                  iSTATE |                              001 |                               10
h p
x
� 

%s
*synth2
*
h p
x
� 
y
%s
*synth2a
_                  RDIDLE |                              010 |                               00
h p
x
� 
y
%s
*synth2a
_                  RDDATA |                              100 |                               01
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2

rstate_reg2	
one-hot2
pan_control_s_axiZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:20 . Memory (MB): peak = 3351.797 ; gain = 659.004 ; free physical = 23205 ; free virtual = 28311
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input    128 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
H
%s
*synth20
.	   2 Input      8 Bit         XORs := 25    
h p
x
� 
H
%s
*synth20
.	   4 Input      8 Bit         XORs := 14    
h p
x
� 
H
%s
*synth20
.	   3 Input      8 Bit         XORs := 2     
h p
x
� 
H
%s
*synth20
.	   2 Input      5 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	              128 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	               68 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 5     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 16    
h p
x
� 
H
%s
*synth20
.	                6 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 21    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
V
%s
*synth2>
<	               32 Bit	(32 X 1 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input  128 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   2 Input   68 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   66 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   64 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   62 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   60 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   58 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   56 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   54 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   52 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   50 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   48 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   46 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   44 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   42 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   40 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   38 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   36 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   34 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   30 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   28 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   26 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   24 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   22 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   18 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   14 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   12 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 17    
h p
x
� 
F
%s
*synth2.
,	   2 Input    6 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  32 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   3 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 25    
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
u
%s
*synth2]
[Part Resources:
DSPs: 9024 (col length:94)
BRAMs: 4032 (col length: RAMB18 288 RAMB36 144)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"inst/flipArray_U/ram_reg"2
322
1Z8-6904h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset24
2pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1RZ8-7129h px� 
�
~The RAM %s of size (depth=%s x width=%s) is automatically implemented using LUTRAM. BRAM implementation would be inefficient 
4755*oasys2
"inst/flipArray_U/ram_reg"2
322
1Z8-6904h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(control_s_axi_U/FSM_onehot_wstate_reg[0]2
panZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2*
(control_s_axi_U/FSM_onehot_rstate_reg[0]2
panZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 3351.797 ; gain = 659.004 ; free physical = 23035 ; free virtual = 28176
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
;
%s*synth2#
!
ROM: Preliminary Mapping Report
h px� 
~
%s*synth2f
d+---------------------------------------------------+------------+---------------+----------------+
h px� 

%s*synth2g
e|Module Name                                        | RTL Object | Depth x Width | Implemented As | 
h px� 
~
%s*synth2f
d+---------------------------------------------------+------------+---------------+----------------+
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom0       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom0       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom1       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom1       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom2       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom2       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom3       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom3       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom4       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom4       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom5       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom5       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom6       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom6       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom7       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | rom7       | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e|pan_process_r_aesInstance_0_ssbox_ROM_NP_LUTRAM_1R | p_0_out    | 256x8         | LUT            | 
h px� 

%s*synth2g
e+---------------------------------------------------+------------+---------------+----------------+

h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
r
%s*synth2Z
X+------------+---------------------+-----------+----------------------+---------------+
h px� 
s
%s*synth2[
Y|Module Name | RTL Object          | Inference | Size (Depth x Width) | Primitives    | 
h px� 
r
%s*synth2Z
X+------------+---------------------+-----------+----------------------+---------------+
h px� 
s
%s*synth2[
Y|inst        | flipArray_U/ram_reg | Implied   | 32 x 1               | RAM32X1S x 1  | 
h px� 
s
%s*synth2[
Y+------------+---------------------+-----------+----------------------+---------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:44 ; elapsed = 00:00:47 . Memory (MB): peak = 3636.137 ; gain = 943.344 ; free physical = 22601 ; free virtual = 27764
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Timing Optimization : Time (s): cpu = 00:00:49 ; elapsed = 00:00:52 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22366 ; free virtual = 27634
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
r
%s
*synth2Z
X+------------+---------------------+-----------+----------------------+---------------+
h p
x
� 
s
%s
*synth2[
Y|Module Name | RTL Object          | Inference | Size (Depth x Width) | Primitives    | 
h p
x
� 
r
%s
*synth2Z
X+------------+---------------------+-----------+----------------------+---------------+
h p
x
� 
s
%s
*synth2[
Y|inst        | flipArray_U/ram_reg | Implied   | 32 x 1               | RAM32X1S x 1  | 
h p
x
� 
s
%s
*synth2[
Y+------------+---------------------+-----------+----------------------+---------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Technology Mapping : Time (s): cpu = 00:00:50 ; elapsed = 00:00:53 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22369 ; free virtual = 27651
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished IO Insertion : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22348 ; free virtual = 27632
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |LUT1     |     2|
h px� 
4
%s*synth2
|2     |LUT2     |   108|
h px� 
4
%s*synth2
|3     |LUT3     |   131|
h px� 
4
%s*synth2
|4     |LUT4     |   264|
h px� 
4
%s*synth2
|5     |LUT5     |   109|
h px� 
4
%s*synth2
|6     |LUT6     |   697|
h px� 
4
%s*synth2
|7     |MUXF7    |   256|
h px� 
4
%s*synth2
|8     |MUXF8    |   128|
h px� 
4
%s*synth2
|9     |RAM32X1S |     1|
h px� 
4
%s*synth2
|10    |FDRE     |   463|
h px� 
4
%s*synth2
|11    |FDSE     |    98|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.762 ; gain = 1034.969 ; free physical = 22347 ; free virtual = 27631
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 4 warnings.
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:00:47 ; elapsed = 00:00:50 . Memory (MB): peak = 3727.762 ; gain = 880.402 ; free physical = 22346 ; free virtual = 27631
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:54 ; elapsed = 00:00:58 . Memory (MB): peak = 3727.770 ; gain = 1034.969 ; free physical = 22346 ; free virtual = 27631
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2
00:00:00.022
00:00:00.012

3727.7702
0.0002
226302
27915Z17-722h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
385Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Netlist sorting complete. 2

00:00:002

00:00:002

3799.4342
0.0002
225972
27891Z17-722h px� 
�
!Unisim Transformation Summary:
%s111*project2Z
X  A total of 1 instances were transformed.
  RAM32X1S => RAM32X1S (RAMS32): 1 instance 
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

49b2d69aZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
592
62
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
synth_design: 2

00:01:072

00:01:102

3799.4692

2424.4842
225842
27878Z17-722h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2

Physical2
PSS2=
;(MB): overall = 3482.742; main = 3210.965; forked = 423.059Z17-2834h px� 
�
%s peak %s Memory [%s] %s12246*common2
synth_design2	
Virtual2
VSS2=
;(MB): overall = 4708.922; main = 3799.438; forked = 981.156Z17-2834h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.032
00:00:00.012

3823.4452
0.0002
225842
27878Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2b
`/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.runs/PAN_TEST_pan_0_0_synth_1/PAN_TEST_pan_0_0.dcpZ17-1381h px� 
�
<Added synthesis output to IP cache for IP %s, cache-ID = %s
485*coretcl2
PAN_TEST_pan_0_02
27dd32d24c09db41Z2-1648h px� 
?
Renamed %s cell refs.
330*coretcl2
10Z2-1174h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2
Write ShapeDB Complete: 2
00:00:00.032
00:00:00.022

3823.4452
0.0002
225732
27871Z17-722h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2b
`/mnt/build/fukun/pan_vivado/pan_viva/pan_viva.runs/PAN_TEST_pan_0_0_synth_1/PAN_TEST_pan_0_0.dcpZ17-1381h px� 
�
%s4*runtcl2x
vExecuting : report_utilization -file PAN_TEST_pan_0_0_utilization_synth.rpt -pb PAN_TEST_pan_0_0_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Fri Nov 22 03:32:07 2024Z17-206h px� 


End Record