.data

nl: .asciiz "\n"
prompt1: "\nSelecione uma das opcoes abaixo:\n"
prompt2: "[I] - Inserir no na arvore\n"
prompt3: "[B] - Buscar na arvore\n"
prompt4: "[N] - Quantidade de nos na arvore\n"
prompt5: "[S] - Sair do programa\n"
prompt6: "\nEscolha uma letra: "
vazia: "\nArvore vazia."
entrada: "\nEntrada: "
existe: "\nDado ja existente na arvore."
achou: "\nNo encontrado: "
naoachou: "\nNo nao encontrado! "
adddado: "\nDado a ser adicionado: "
procurar: "\nQual dado deseja encontrar? "
numnos: "\nQuantidade de nós na árvore: "

.text

main:
	li $s7, -1

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
	lw $t2, 0($gp)
	move $t3, $gp
	
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
	li $v0, 4
	la $a0, adddado
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
	bne $s7, $t2, naovazia
	sw $s0, 0($gp)
	sw $s7, 4($gp)		# Mostra que não há filhos à esquerda
	sw $s7, 8($gp)		# Mostra que não há filhos à direita
	
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
	
	srl $t5, $t5, 2
	subi $t5, $t5, 2
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t7, $gp, $t5	# Endereço do filho a esquerda
	
	lw $t2, 0($t3)
	bne $t1, $t2, naovazia
	
	sw $s0, 0($t3)
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
	
	srl $t5, $t5, 2
	subi $t5, $t5, 2
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t7, $gp, $t5	# Endereço do filho a esquerda
	
	lw $t2, 0($t3)
	bne $t1, $t2, naovazia
	
	sw $s0, 0($t3)
	sw $t1, 0($t6)		# Mostra que não há filhos à esquerda
	sw $t1, 0($t7)		# Mostra que não há filhos à direita
	
	j menu
	
busca:
	lw $t2, 0($gp)
	lw $t7, 4($gp)
	slt $t4, $t2, $t7	# Único caso possível disso acontecer é se a arvore estiver vazia
	beq $t4, 1, arvorevazia
	
	li $v0, 4
	la $a0, procurar
	syscall
	
	li $v0, 5
	syscall
	
	move $s0, $v0
	
procura:lw $t2, 0($t3)
	
	beq $t2, $t1, ehmenosum
	
	beq $s0, $t2, encontrado
	slt $t4, $t2, $s0 
	beqz $t4, buscaesquerda
	j buscadireita
	
buscaesquerda:
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 1
	sll $t5, $t5, 2
	add $t3, $gp, $t5
	
	j procura

buscadireita:
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 2
	sll $t5, $t5, 2
	add $t3, $gp, $t5
	
	j procura
	
ehmenosum:
	sub $t5, $t3, $gp
	srl $t5, $t5, 2
	add $t5, $t5, $t5
	addiu $t5, $t5, 2
	sll $t5, $t5, 2
	add $t6, $gp, $t5	# Caso s0 seja -1, conferir se é dado -1 ou -1 que corresponde a um nó vazio
	lw $t7, 0($t6)
	
	bne $t1, $t7, naoencontrado	

encontrado:	
	li $v0, 4
	la $a0, achou
	syscall
	
	li $v0, 1
	lw $a0, 0($t3)
	syscall
	
	j menu

naoencontrado:
	beq $t3, $gp, arvorevazia
	li $v0, 4
	la $a0, naoachou
	syscall
	
	j menu
		
arvorevazia:
	li $v0, 4
	la $a0, vazia
	syscall
	
	j menu
nos:
	
	lw $t2, 0($gp)
	lw $t7, 4($gp)
	slt $t4, $t2, $t7	# Único caso possível disso acontecer é se a arvore estiver vazia
	beq $t4, 1, arvorevazia
	
	move $a0, $gp
	jal getNumNodes

getNumNodes:
    	empilha_tudo
   	li $s0, 1	# Acumulador onde fica a quantidade de nós calcula o endereço do filho da esquerda
   	subu $s1, $a0, $gp
   	addiu $t
    	multu $s1, $s1, 2
    addiu $s1, $s1, 1
    addu $s1, $gp, $s1

    ; calcula o endereço do filho da direita
    addi $s2, $s1, 1
    
    lw $t1, ($s1) ; carrega o valor do filho da esquerda
    bne $t1, -1, testaEsquerda
    voltaEsquerda:

    lw $t2, ($s2) ; carrega o valor do filho da direita
    bne $t2, -1, testaDireita
    voltaDireita:
    
    move $v0, $s0
    desempilha_tudo
    jr $ra

    testaEsquerda:
    move $a0, $s1
    jal getNumNodes
    add $s0, $s0, $v0
    j voltaEsquerda

    testaDireita:
    move $a0, $s1
    jal getNumNodes
    add $s0, $s0, $v0
    j voltaDireita
	entradireita:
		sub $t5, $t3, $gp
		srl $t5, $t5, 2
		add $t5, $t5, $t5
		addiu $t5, $t5, 2
		sll $t5, $t5, 2
		add $t3, $gp, $t5
		move $a1, $t3
		
	
	entraesquerda:
		sub $t5, $t3, $gp
		srl $t5, $t5, 2
		add $t5, $t5, $t5
		addiu $t5, $t5, 1
		sll $t5, $t5, 2
		add $t3, $gp, $t5
	
	li $v0, 4
	la $a0, numnos
	syscall
	
	li $v0, 1
	move $a0, $a1
	syscall
	
	j menu