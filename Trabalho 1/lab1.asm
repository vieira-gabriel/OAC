##################################################
# #Compressor LZ78 em Assembly Mips
# #Autores: Nikson B.
#		   Gabriel V.
# #OAC - TD
#
##################################################
.data
buffer_leitura: .space 1048576
sep:	.word 0
buffer_escrita: .space 1048576 #0x1000000
sep2: .word 0
dicionario_meramente_didatico: .space 1572864
sep3: .word 0
nome: .space 64
nome_saida: .asciiz "exit.lzw"
nome_saida2: .asciiz "exit.txt"
nome_dicionario: .asciiz "dicionario.txt"
texto_pergunta: .asciiz "Digite o caminho/nome do arquivo:\n"
texto_pergunta_opcao:.asciiz "Digite 0 para compimir e 1 para descomprimir: "
nome_invalido: .asciiz "Arquivo não encontrado, ferifique o caminho/nome digitado.\n"
.text
.globl main

# $s0 - endereço indicando o inicio do buffer de leitura
# $s1 - endereço indicando o inicio do buffer de escrita
# $s2 - endereço indicando o cursor de buffer de escrita
# $s6 - endereço indicanco o cursor no dicionario didatico (nao é utilizado na compressão)
# $s7 - caracter "|"

la $s0, buffer_leitura
la $s1, buffer_escrita
move $s2, $s1
la $s6, dicionario_meramente_didatico
li $s7, '|'
###############FOMATO###########################
# 24 BITS DE ENDEREÇO DO ULTIMO IGUAL(COM RELACAO AO INICIO)
#   8 BITS DO CARACTER A MAIS

#################################################
# Lindando com o usuario
#################################################
pergunta_nome_arquivo:
	li $v0, 4
	la $a0, texto_pergunta
	syscall
	
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

pergunta_opcao:		#pergunta se quer comprimir ou descomprimir
	li $v0, 4
	la $a0, texto_pergunta_opcao
	syscall
	
le_opcao:				#le opcao
	li $v0, 5
	syscall
	move $a3,$v0
##################################################
# Lidando com arquivos
##################################################
abre_arquivo_leitura:
	li $v0, 13
	la $a0, nome
	li $a1, 0
	li $a2, 0
	syscall
	bltz $v0, arquivo_invalido
	move $s4, $v0
	#jr $ra
le_arquivo: 
	li $v0, 14
	move $a0, $s4
	la $a1,  buffer_leitura
	li $a2, 1048576
	syscall
	#jr $ra
	beqz $v0, exit
	beqz $a3, comprime11
	j descomprime

abre_dicionario_escrita:
	li $v0, 13
	la $a0, nome_dicionario
	li $a1, 1
	li $a2, 0
	syscall
	move $s7, $v0
escreve_dicionario_arquivo:
	li $v0, 15
	move $a0, $s7
	la $a1, dicionario_meramente_didatico
	sub $a2, $s6, $a1
	syscall
#	jr $ra	
			
					
abre_arquivo_escrita:
	li $v0, 13
	bnez $a3, a_cont
	la $a0, nome_saida
	j a_cont2
a_cont:
	la $a0, nome_saida2
a_cont2:
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
# Comprimindo e descomprimindo
###################################################

comprime11:
   add $t0, $s0, $zero		# $t0 é o cursor que percorre o buffer de leitura
   c0:
     move $a1, $zero			#limpa word que vai ser escrita 24 bits de endereço e 8 do caracter
     move $a0, $s1			#base de busca é o ínicio do buffer
    c1: 
     lbu $s3, 0($t0)			#ultimo byte lido
     beqz $s3, fim_compri		#acabou o arquivo de entrada?
     addi $t0, $t0, 1			#posiciona para o próximo byte
     sb $s3, 0($s6)			#escreve no dicionario o caracter lido
     addi $s6, $s6, 1			#posiciona pro proximo espaço
     or $a1, $a1, $s3			#mascara o 24 bits de endereço e 8 do caracter($a1 já preparado)
     jal procura
     bltz $v0, escreve_word		#se nao tem ainda (-1)
     add $a0, $v0, $s1		#base de busca é o ultimo igual (endereço absoluto montado)
     addi $t3, $v0, 4			#adiciona virtualmente o caracter nulo no inicio do buffer
     sll $a1, $t3, 8			#prepara $a1
     j c1
   escreve_word:
     sb $s7, 0($s6)			#adiciona o "|" no dicionario para separar os termos 
     addi $s6, $s6, 1			#incrementa o cursor do dicionario
     sw $a1, 0($s2)			#escreve no final do buffer de escrita
     addi $s2, $s2, 4			#atualiza fim do buffer
     j c0
     
fim_compri:
     beqz $a1, abre_dicionario_escrita #se não tem nenhum caracter a ser escrito
     sw $a1, 0($s2)			#escreve no final do buffer de escrita
     addi $s2, $s2, 4			#atualiza fim do buffer
     j abre_dicionario_escrita
     
procura:					#a0 base da busca, $a1 o que procuro
   lw $t2, 0($a0)			#carrega o que esta no buffer
   beqz $t2, nao_achou		#nao achou, fim do buffer
   beq $a1, $t2, achou		#achou
   addi $a0, $a0, 4			#incrementa o cursor
   j procura
   achou:
     sub $v0, $a0, $s1		#monta endereço relativo
     jr $ra
   nao_achou:
     addi $v0, $zero, -1		#retorna um endereço não valido
     jr $ra

####################################################
 
descomprime:
 move $t0, $s0				#começa no inicio do buffer
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
  lbu $t2, 0($sp)
  beqz $t2, e
  addi $sp, $sp, 1
  sb $t2, 0($s2)
  addi $s2, $s2, 1
  j esc_desc
e:
  jr $ra
 
main:
	
	
arquivo_invalido:
	li $v0, 4
	la $a0, nome_invalido
	syscall
exit:
	li $v0, 10
	syscall
