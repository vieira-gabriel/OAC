.data

nl: .asciiz "\n"
prompt1: "\nSelecione uma das opcoes abaixo:\n"
prompt2: "[I] - Inserir no na arvore\n"
prompt3: "[B] - Buscar na arvore\n"
prompt4: "[N] - Quantidade de nos na arvore\n"
prompt5: "[S] - Sair do programa\n"
prompt6: "\nEscolha uma letra: "
vazii: "\nArvore vazia."
entrada: "\nEntrada: "
existe: "\nDado ja existente na arvore."
encontrado: "\nNo encontrado: "
naoencotrado: "\nNo nao encontrado! "
adddado: "\nDado a ser adicionado: "

.text

main:
	li $t1, -1
	sw $t1, 0($gp)

menu:
	li $v0, 4
	la $a0, prompt1
	syscall
	
	li $v0, 4
	la $a0, prompt2
	syscall

	li $v0, 4
	la $a0, prompt3
	syscall

	li $v0, 4
	la $a0, prompt4
	syscall
	
	li $v0, 4
	la $a0, prompt5
	syscall
	
input:
	li $v0, 4
	la $a0, prompt6
	syscall
	
	li $v0, 12
	syscall
	
	move $s0, $v0
	
	beq $s0, 105, insercao
	beq $s0, 98, busca
	beq $s0, 110, nos
	beq $s0, 115, sai
	
	li $v0, 4
	la $a0, nl
	syscall
	
	j entrada
	
sai:
	li $v0, 10
	syscall
	
insercao:
	li $t1, -1
	lw $t2, 0($gp)
	move $t3, $gp
	
	li $v0, 4
	la $a0, adddado
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	bne $t1, $t2, naovazia
	sw $s0, 0($gp)
	addiu $a1, $zero, 1	# Armazena quantos nós foram adicionados à árvore
	sw $t1, 4($gp)		# Mostra que não há filhos à esquerda
	sw $t1, 8($gp)		# Mostra que não há filhos à direita
	
	j menu
	
naovazia:
	lw $t2, 0($t3)
	beq $s0, $t2, jaexiste
	slt $t4, $t2, $s0
	beqz $t4, insereesquerda
	j inseredireita
	
		
jaexiste:
	li $v0, 4
	la $a0, existe
	syscall
	
	j menu
	
inseredireita:
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 2
	sll $t5, $t5, 2
	add $t3, $gp, $t5	# Endereço do nó que analizaremos (atual) armazenado em t3
	
	
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 2
	sll $t5, $t5, 2
	add $t6, $gp, $t5	# Endereço do filho a direita
	
	
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t7, $gp, $t5	# Endereço do filho a esquerda
	
	lw $t2, 0($t3)
	bne $t1, $t2, naovazia
	
	sw $s0, 0($t3)
	addiu $a1, $a1, 1	# Armazena quantos nós foram adicionados à árvore
	sw $t1, 0($t6)		# Mostra que não há filhos à esquerda
	sw $t1, 0($t7)		# Mostra que não há filhos à direita
	
	j menu
	
	
insereesquerda:
	
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t3, $gp, $t5	# Endereço do nó que analizaremos (atual) armazenado em t3
	
	
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 2
	sll $t5, $t5, 2
	add $t6, $gp, $t5	# Endereço do filho a direita
	
	
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t7, $gp, $t5	# Endereço do filho a esquerda
	
	lw $t2, 0($t3)
	bne $t1, $t2, naovazia
	
	sw $s0, 0($t3)
	addiu $a1, $a1, 1	# Armazena quantos nós foram adicionados à árvore
	sw $t1, 0($t6)		# Mostra que não há filhos à esquerda
	sw $t1, 0($t7)		# Mostra que não há filhos à direita
	
	j menu
	
busca:

nos: