.text
la $s0, mem
aqui: lw $t0, 0($s0)
sw $t0, 4($s0)
lh $t1, 0($s0)
sh $t1, 8($s0)
lhu $t2, 0($s0)
lh $t3, 2($s0)
sh $t3, 10($s0)
lb $t4, 0x0003($s0)
sb $t4, 0x000F($s0)
lbu $t5, 0x0003($s0)
lb $t6, 0x0002($s0)
sb $t6, 0x000E($s0)
lbu $t7, 0x0002($s0)
lb $t8, 0x0001($s0)
sb $t8, 0x000D($s0)
lbu $t9, 0x0001($s0)
sb $t9, 0x000C($s0)
ori $t0, $zero, 0x00FF
andi $t1, $t0 0x000F
sll $t2, $t1 4
srl $t3, $t2 4
and $t4, $t2, $t3
add $v0, $zero, $zero
ori $t0, $zero, 0x0002
j  lable
lable :slt $a0, $v0, $t0
addi $v0, $v0, 0x0001
beq $a0, $zero, aqui
bne $a0, $zero, exit
exit:

.data 
mem:	.word 0x0102ffff



















