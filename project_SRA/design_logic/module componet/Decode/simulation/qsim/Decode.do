onerror {quit -f}
vlib work
vlog -work work Decode.vo
vlog -work work Decode.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Decode4To10_vlg_vec_tst
vcd file -direction Decode.msim.vcd
vcd add -internal Decode4To10_vlg_vec_tst/*
vcd add -internal Decode4To10_vlg_vec_tst/i1/*
add wave /*
run -all
