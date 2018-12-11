onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label clk /mips_multi_tb/clk
add wave -noupdate -label clk_rom /mips_multi_tb/clk_rom
add wave -noupdate -label data -radix hexadecimal /mips_multi_tb/data
add wave -noupdate -label debug /mips_multi_tb/debug
add wave -noupdate -label rst /mips_multi_tb/rst
add wave -noupdate -label {saida pc} -radix hexadecimal /mips_multi_tb/i1/pcout_v
add wave -noupdate -label instrução -radix hexadecimal /mips_multi_tb/i1/instruction_v
add wave -noupdate -label rd -radix hexadecimal /mips_multi_tb/i1/rdmout_v
add wave -noupdate -label {reg Ula} -radix hexadecimal /mips_multi_tb/i1/rULA_out_v
add wave -noupdate -label {entrada reg A} -radix hexadecimal /mips_multi_tb/i1/regAin_v
add wave -noupdate -label {entrada reg B} -radix hexadecimal /mips_multi_tb/i1/regBin_v
add wave -noupdate -label {saida ula} -radix hexadecimal /mips_multi_tb/i1/alu_out_v
add wave -noupdate -label aluA -radix hexadecimal /mips_multi_tb/i1/aluA_v
add wave -noupdate -label aluB -radix hexadecimal /mips_multi_tb/i1/aluB_v
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {99 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 206
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {624 ps}
