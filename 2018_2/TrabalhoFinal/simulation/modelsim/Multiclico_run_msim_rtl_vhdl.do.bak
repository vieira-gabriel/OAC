transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/regbuf.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/reg.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mips_pkg.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mem_mips.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/decoder_h.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/decoder_b.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/ulamips.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mux_4.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mux_3.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mux_2.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mips_multi.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mips_control.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/extsgn.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/breg.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/alu_ctr.vhd}
vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mem_control.vhd}

vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/simulation/modelsim/mips_multi.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  mips_multi_vhd_tst

add wave *
view structure
view signals
run 800 ns
