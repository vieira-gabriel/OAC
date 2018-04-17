##################################################
# #Compressor LZ78 em Assembly Mips
# #Autores: Nikson B.
#		   Gabriel V.
# #OAC - TD
#
##################################################
.data
nome: .space 50
saida: .asciiz "exit.lzw"
buffer: .space 32
dicionario: .space 2048
buffer_recons: .space 256

.text
.globl main

#################################################
# Lindando com o usuario
#################################################
le_nome_do_arquivo:	#le o texto digitado, mas adiciona /n
	li $v0, 8
	la $a0, nome
	li $a1, 50
	syscall	
remove_n:				#remove o /n do final
	li $t0, 0           
busca_n:
	beq $t0, 50, fim_rm
	lb $t1, nome($t0)
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
abre_arquivo:
	li $v0, 13
	la $a0, nome
	li $a1, 0
	li $a1, 0
	syscall
	move $s0, $v0
	#jr $ra
le_arquivo: 
	li $v0, 14
	move $a0, $s0
	la $a1,  buffer
	li $a2, 32
	syscall
	#jr $ra
	j exit			# Essa linha deve ser removida
escreve_arquivo:
	li $v0, 15
	move $a0, $s0
	la $a1, buffer_recons
	li $a2, 256
	syscall
	#jr $ra
	
###################################################
# Lidando como Dicionario
###################################################
comp:				#Compara strings. Retorna 1 se iguais e 0 se diferentes
	lbu $t0, 0($a0)		#$a0 contem o endereço da primeria string (referencia)
	lbu $t1, 0($a1)		#$a1 contem o endereço da segunda string
	beq $t0, $t1, eq	
	li $v0, 0			#retorna 0 e sai
	jr $ra
   eq:
   	beqz $t0, fim_comp	#se fim da string
   	addi $a0, $a0, 1
   	addi $a1, $a1, 1
   	j comp
   fim_comp:
   	li $v0, 1
#   	jr $ra
 ##################################################
main:
	
exit:
	li $v0, 10
	syscall
