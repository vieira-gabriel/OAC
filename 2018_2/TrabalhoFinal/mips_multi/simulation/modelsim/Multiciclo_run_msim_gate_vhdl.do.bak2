transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Multiciclo.vho}

vcom -93 -work work {C:/Users/Gabriel Arimatéa/Documents/GitHub/OAC/2018_2/TrabalhoFinal/mips_multi/mips_multi_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /i1=Multiciclo_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  mips_multi_tb

add wave *
view structure
view signals
run -all
