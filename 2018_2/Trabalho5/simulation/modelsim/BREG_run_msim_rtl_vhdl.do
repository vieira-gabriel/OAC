transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Arimat�a/Documents/GitHub/OAC/2018_2/Trabalho5/bregMIPS.vhd}

vcom -93 -work work {C:/Users/Gabriel Arimat�a/Documents/GitHub/OAC/2018_2/Trabalho5/simulation/modelsim/bregMIPS.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  bregMIPS_vhd_tst

add wave *
view structure
view signals
run 390 ns
