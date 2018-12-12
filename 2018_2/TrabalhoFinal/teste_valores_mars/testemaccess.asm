.data
w0:	.word 0x0102FFFF
w1:	.word 0
w2:	.word 0
w3:	.word 0

.text
	la $s0, w0  		# s0 = 0x2000
	lw $t0, 0($s0)	 	# t0 = 0x0102FFFF
	sw $t0, 4($s0)		# w1 = 0x0102FFFF
	lh $t1, 0($s0)		# t1 = 0xFFFFFFFF
	sh $t1, 8($s0)		# w2 = 0x0000FFFF
	lhu $t2, 0($s0)		# t2 = 0x0000FFFF
	lh $t3, 2($s0)		# t3 = 0x00000102
	sh $t3, 10($s0)		# w2 = 0x0102FFFF
	lb $t4, 3($s0)		# t4 = 0x00000001
	sb $t4, 15($s0)		# w3 = 0x01000000
	lbu $t5, 3($s0)		# t5 = 0x00000001
	lb $t6, 2($s0)		# t6 = 0x00000002
	sb $t6, 14($s0)		# w3 = 0x01020000
	lbu $t7, 2($s0)		# t7 = 0x00000002
	lb $t8, 1($s0)		# t8 = 0xFFFFFFFF
	sb $t8, 13($s0)		# w3 = 0x0102FF00
	lbu $t9, 1($s0)		# t9 = 0x000000FF
	sb $t9, 12($s0)		# w3 = 0x0102FFFF

	ori	$t0, $zero, 255		# t0 = 255
	andi $t1, $t0, 15 		# t1 = 15
	sll	$t2, $t1, 4			# t2 = 60
	srl	$t3, $t2, 4			# t3 = 15
	and	$t4, $t2, $t3		# t6 = 0
	add	$v0, $zero, $zero 	# v0 = 0
	ori     $t0, $zero, 2	# t0 = 2
	j 	next	
	nop 
	nop
	nop
next:	
	slt	$a0, $v0, $t0			# a0 = v0 < 2
	addi	$v0, $v0, 1			# v0 = v0 + 1
	beq 	$a0, $zero, fim		# se v0 ≥ 2 go fim
	bne 	$a0, $zero, next
fim:

	
	
