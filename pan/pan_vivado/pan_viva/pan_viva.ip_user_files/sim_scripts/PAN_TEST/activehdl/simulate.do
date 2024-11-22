transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+PAN_TEST  -L xpm -L xil_defaultlib -L util_vector_logic_v2_0_3 -L xlconstant_v1_1_8 -L unisims_ver -L unimacro_ver -L secureip -O2 xil_defaultlib.PAN_TEST xil_defaultlib.glbl

do {PAN_TEST.udo}

run

endsim

quit -force
