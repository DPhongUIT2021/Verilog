onerror {quit -f}
vlib work
vlog -work work RTL.vo
vlog -work work RTL.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.BusSharing_vlg_vec_tst
vcd file -direction RTL.msim.vcd
vcd add -internal BusSharing_vlg_vec_tst/*
vcd add -internal BusSharing_vlg_vec_tst/i1/*
add wave /*
run -all
