##################################################
# #Compressor LZ78 em Assembly Mips
# #Autores: Nikson B.
#		   Gabriel V.
# #OAC - TD
#
##################################################
.data
buffer_leitura: .space 32768
sep:	.word 0
buffer_escrita: .space 32768 #0x1000000
sep2: .word 0

nome: .space 63
nome_saida: .asciiz "exit.txt"
.text
.globl main

# $s0 - endereço indicando o inicio do buffer de leitura
# $s1 - endereço indicando o inicio do buffer de escrita
# $s2 - endereço indicando o cursor de buffer de escrita

la $s0, buffer_leitura
la $s1, buffer_escrita
move $s2, $s1
###############FOMATO###########################
# 24 BITS DE ENDEREÇO DO ULTIMO IGUAL(COM RELACAO AO INICIO)
#   8 BITS DO CARACTER A MAIS

#################################################
# Lindando com o usuario
#################################################
le_nome_do_arquivo:	#le o texto digitado, mas adiciona /n
	li $v0, 8
	la $a0, nome
	li $a1, 63
	syscall	
remove_n:				#remove o /n do final
	li $t0, 0           
busca_n:
	beq $t0, 50, fim_rm
	lbu $t1, nome($t0)
	beq $t1, 0x0a, rm
	addi $t0, $t0, 1
	j busca_n
rm:
	sb $zero, nome($t0)
fim_rm:
#  	jr $ra	

##################################################
# Lidando com arquivos
##################################################
abre_arquivo_leitura:
	li $v0, 13
	la $a0, nome
	li $a1, 0
	li $a2, 0
	syscall
	move $s4, $v0
	#jr $ra
le_arquivo: 
	li $v0, 14
	move $a0, $s4
	la $a1,  buffer_leitura
	li $a2, 32768
	syscall
	#jr $ra
	beqz $v0, exit
	j aaa		# Essa linha deve ser removida
	
abre_arquivo_escrita:
	li $v0, 13
	la $a0, nome_saida
	li $a1, 1
	li $a2, 0
	syscall
	move $s5, $v0
escreve_arquivo:
	li $v0, 15
	move $a0, $s5
	la $a1, buffer_escrita
	sub $a2, $s2, $s1
	syscall
	j exit
	#jr $ra
	
###################################################
# Lidando como Dicionario
###################################################
#aaa:

comprime11:
   add $t0, $s0, $zero		# $t0 é o cursor que percorre o buffer de leitura
   c0:
     move $a1, $zero			#limpa word que vai ser escrita 24 bits de endereço e 8 do caracter
     move $t3, $zero			# $t3 é o endereço relativo do ultimo igual
     move $a0, $s1			#base de busca é o ínicio do buffer
    c1: 
     lbu $s3, 0($t0)			#ultimo byte lido
     beqz $s3, abre_arquivo_escrita
     addi $t0, $t0, 1			#posiciona para o próximo byte
     or $a1, $a1, $s3			#mascara o 24 bits de endereço e 8 do caracter($a1 já preparado)
     jal procura
     bltz $v0, escreve_word		#se nao tem ainda (-1)
     move $a0, $v0		#base de busca é o ultimo igual
     sub $t3, $v0, $s1			#guarda ultimo igual
     addi $t3, $t3, 4
     sll $a1, $t3, 8			#prepara $a1
     j c1
   escreve_word:
     sll $t3,$t3, 8 			#prepara $t3
     or $t3, $t3, $s3			#monta endereço da ultima string igual + caracter
     sw $t3, 0($s2)			#escreve no final do buffer de escrita
     addi $s2, $s2, 4			#atualiza fim do buffer
     j c0
     
procura:					#a0 base da busca, $a1 o que procuro
   lw $t2, 0($a0)
   beqz $t2, nao_achou		#nao achou, fim do buffer
   beq $a1, $t2, achou		#achou
   addi $a0, $a0, 4
   j procura
   achou:
     move $v0, $a0
     jr $ra
   nao_achou:
     addi $v0, $zero, -1
     jr $ra

   aaa:    
 
descomprime:
 move $t0, $s0
 addi $sp, $sp, -1
 sb $0, 0($sp)
 d0:
    lw $a0, 0($t0)
    beq $a0, $0, abre_arquivo_escrita
    addi $t0, $t0, 4
    jal descomprime_palavra
    j d0
    
 
descomprime_palavra:		#a0 contem a palavra a ser descomprimida
  andi $t3, $a0, 0x00ff		#caracter
  srl $t1, $a0, 8				#remove caracter e deixa só o endereço relativo
  addi $sp, $sp, -1
  sb $t3, 0($sp)
  beq $t1, $0, esc_desc
  add $t1, $t1, $s0			#monta endereço absoluto do igual anterior
  lw $a0, -4($t1)
  j descomprime_palavra
esc_desc:
  lbu $t1, 0($sp)
  beqz $t1, e
  addi $sp, $sp, 1
  sb $t1, 0($s2)
  addi $s2, $s2, 1
  j esc_desc
e:
  jr $ra
  
###################VERSAO ANTERIOR########################     
#comp:				#Compara strings. Retorna 1 se iguais e 0 se diferentes
	#lbu $t0, 0($a0)		#$a0 contem o endereço da primeria string (referencia)
	#lbu $t1, 0($a1)		#$a1 contem o endereço da segunda string
	#beq $t0, $t1, eq	
	#li $v0, 0			#retorna 0 e sai
	#jr $ra
   #eq:
   	#beqz $t0, fim_comp	#se fim da string
   	#addi $a0, $a0, 1
   	#addi $a1, $a1, 1
   	#j comp
   #fim_comp:
   	#li $v0, 1
#   	jr $ra

#comprime:
   #add $t1, $a2, $zero		#$a2 tem o endereço da string construida
   #addi $v0, $zero, 1		#Deve-se substituir $v0 por outro registrador
#igual:
   #beqz $v0, nao_igual 				# se não há no dicionário
   #lbu $s5, 0($s1)			#le o proximo caracter
   #sb $s5, 0($t1)			#escreve na palavra sendo formada
   #addi $t1, $t1, 1
#  jal procura
   #procura no dicionário
 #j igual
#nao_igual:
 # sub $t0, $s0, $s3			#$t0 recebe a distancia andada do início do dicionario
 # sw $t0, 0($s1)				#escreve $t0, no final do buffer de escrita
 #sb $s5, 4($s1)				#escreve o caracter no buffer_escrita
 # addi $s1, $s1, 5
   #escreve no dicionário	
 #  j comprime

 ########################################################
main:
	
exit:
	li $v0, 10
	syscall
