onerror {quit -f}
vlib work
vlog -work work SRwPL_8bit.vo
vlog -work work SRwPL_8bit.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.ShiftRight1_16bit_vlg_vec_tst
vcd file -direction SRwPL_8bit.msim.vcd
vcd add -internal ShiftRight1_16bit_vlg_vec_tst/*
vcd add -internal ShiftRight1_16bit_vlg_vec_tst/i1/*
add wave /*
run -all
