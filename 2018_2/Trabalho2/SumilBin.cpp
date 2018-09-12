/*	Autor: Gabriel Vieira de Arimatéa
	
	Plataforma utilizada: Sublime Text

	Compilador: gcc (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609

	Sistema Operacional: Ubuntu 16.04.10*/


#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string>
#include <iostream>        
#include <bitset>
#include <fstream>
#include <sstream>
#include <cstring>

#define MEM_SIZE 16384 // 4096 não é suficiente para armazenar texto e dado na memória
int32_t mem[MEM_SIZE];	
int32_t regs[32];
int16_t k16;
uint32_t k26;

int pos;
std::bitset<6> opcode;
std::bitset<5> rs;
std::bitset<5> rt;
std::bitset<5> rd;
std::bitset<5> shamt;
std::bitset<6> funct;
uint32_t pc;
uint32_t ri;
int32_t hi;
int32_t lo;

using namespace std;

enum OPCODE{
	EXT=0x00,			// Instruções tipo R
	
	LB=0x20, LH=0x21, LHU=0x25, SW=0x2B, SB=0x28, SH=0x29,
	SLTIU=0x0B, ANDI=0x0C, ORI=0x0D, XORI=0x0E, LUI=0x0F, LBU=0x24, ADDI=0x08, SLTI=0x0A, ADDIU= 0x09, LW=0x23,
	
	BEQ=0x04, BNE=0x05, BLEZ=0x06, BGTZ=0x07, J=0x02, JAL=0x03
};

enum FUNCT{
	ADD=0x20, SUB=0x22, MULT=0x18, DIV=0x1A, AND=0x24,
	OR=0x25, XOR=0x26, NOR=0x27, SLT=0x2A, JR=0x08,
	SLL=0x00, SRL=0x02, SRA=0x03, SYSCALL=0x0c, MFHI=0x10,
	MFLO=0x12, ADDU=0x21, SLTU=0x2b
};

void dump_mem(int start, int end, char format){			// Função que imprime o conteúdo da memória no formato hexa, palavra por palavra
	
}

void dump_reg(char format){						// Função que imprime conteudo do registrador

}

int32_t lw(uint32_t address, int16_t kte){
	address = address/4;
	int32_t dado, retorno;

	dado = mem[address];
	
	cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}

int32_t lh(uint32_t address, int16_t kte){
	address = address/4;
	int16_t dado = mem[address];
	int32_t retorno;

	if(kte%4 == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte%4 == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados para a direita para se tornarem os menos significativos

	cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}   

uint32_t lhu(uint32_t address, int16_t kte){
	address = address/4;
	uint16_t dado = mem[address];
	uint32_t retorno;

	if(kte%4 == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte%4 == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados 16 bites para a direita para se tornarem os menos significativos

	cout << "Decimal: " << dec << dado << endl;
	retorno = dado;
	return retorno;
}   

int32_t lb(uint32_t address, int16_t kte){
	address = address/4;
	int32_t dado, retorno;
	uint32_t temp = mem[address];

	if(kte%4 == 0){
		temp = ((temp << 16) << 8);		// Deslocamento de todos os bitts 32 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto o byte menos significativo.
		temp = ((temp >> 16) >> 8);		// Deslocamento de todos os bitts 32 bits para a direita, para retornar o byte menos
										// significativo para sua posição inicial.
		dado = temp;
	}
	if(kte%4 == 1){
		temp = ((temp << 16));			// Deslocamento de todos os bitts 16 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto os 2 bytes menos significativos.
		temp = ((temp >> 16) >> 8);;	// Deslocamento de todos os bitts 32 bits para a direita, para apagar o byte menos significativo
										// da memória inicial, deixando o 2o byte menos significativo na posição 0 da memória.
		dado = temp;
	}
	if(kte%4 == 2){
		temp = ((temp << 8));			// Deslocamento de todos os bitts 8 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto o byte mais significativo.
		temp = ((temp >> 16) >> 8);		// Deslocamento de todos os bitts 32 bits para a direita, para apagar os 2 byte menos significativos
										// da memória inicial, deixando o 2o byte mais significativo na posição 0 da memória.
		dado = temp;
	}
	if(kte%4 == 3){
		temp = ((temp >> 16) >> 8);		// Deslocamento de todos os bitts 32 bits para a direita, para apagar todo o conteudo
										// da memória exceto o byte mais significativo, deixando-o na posição 0 da memória.
		dado = temp;
	}

	cout << "Decimal: " << dec << temp << endl << "Hexadecimal " << hex << temp << endl;
	retorno = dado;
	return retorno;
}      

int32_t lbu(uint32_t address, int16_t kte){
	address = address/4;
	uint32_t dado = mem[address], retorno;

	if(kte%4 == 0){
		dado = ((dado << 16) << 8);
		dado = ((dado >> 16) >> 8);
	}
	if(kte%4 == 1){
		dado = ((dado << 16));
		dado = ((dado >> 16) >> 8);
	}
	if(kte%4 == 2){
		dado = ((dado << 8));
		dado = ((dado >> 16) >> 8);
	}
	if(kte%4 == 3){
		dado = ((dado >> 16) >> 8);
	}

	cout << "Decimal: " << dado << endl;
	retorno = dado;
	return retorno;
}

void sw(uint32_t address, int16_t kte, int32_t dado){
	address = address/4;

	
	if(kte%4 == 1) dado = (dado << 8);			// Caso kte seja 1, a word será deslocada para a direita, sendo aramzenada a partir da posição 1.
	if(kte%4 == 2) dado = (dado << 16);			// Caso kte seja 2, a word será deslocada para a direita, sendo aramzenada a partir da posição 2.
	if(kte%4 == 3) dado = ((dado << 16) << 8);	// Caso kte seja 3, a word será deslocada para a direita, sendo aramzenada a partir da posição 3.


	mem[address] = dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado){
	address = address/4;
	uint32_t temp = (uint32_t)dado, backup;
	
	if(kte%4 == 0){
		temp = temp&0x0000FFFF;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFFFF00;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte%4 == 1){
		temp = (temp << 8);
		temp = temp&0x00FFFF00;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFF00FF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte%4 == 2){
		temp = (temp << 16);
		temp = temp&0xFFFF0000;					// Máscara para corrigir bug.
		backup = mem[address]&0xFF00FFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte%4 == 3){
		temp = ((temp << 16) << 8);
		temp = temp&0xFF000000;					// Máscara para corrigir bug.
		backup = mem[address]&0x00FFFFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}

	mem[address] = 0x0;
	mem[address] = temp+backup;
}

void sb(uint32_t address, int16_t kte, int8_t dado){
	address = address/4;
	uint32_t temp = (uint32_t)dado, backup;
	
	if(kte%4 == 0){
		backup = mem[address]&0xFFFFFF00;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
		temp = temp&0x000000FF;					// Máscara para corrigir bug.
	}

	if(kte%4 == 1){
		temp = (temp << 8);
		temp = temp&0x0000FF00;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFF00FF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}

	if(kte%4 == 2){
		temp = (temp << 16);
		temp = temp&0x00FF0000;					// Máscara para corrigir bug.
		backup = mem[address]&0xFF00FFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}

	if(kte%4 == 3){
		temp = ((temp << 16) << 8);
		temp = temp&0xFF000000;					// Máscara para corrigir bug.
		backup = mem[address]&0x00FFFFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}


	mem[address] = temp+backup;
}

void execute(){			// Função que executa a instrução

}

void decode(){			// Função que decodifica a instrução
	funct = ri & 0x3F;
	shamt = (ri >> 6) & 0x1F;
	rd = (ri >> 11) & 0x1F;
	rt = (ri >> 16) & 0x1F;
	rd = (ri >> 11) & 0x1F;
	opcode = (ri >> 26) & 0x3F;
	k16 = ri & 0xFFFF;
	k26 = ri & 0x3FFFFFF;
}

void fetch(){			// Função que busca a instrução
	if(pc == 0){
		ri = mem[0];
		pc = mem[1];
		pos = 1;
	}
	else{
		ri = pc;
		++pos;
		pc = mem[pos];
	}

}

void step(){		// Função que executa uma instrução do MIPS
	fetch();
	decode();
	execute();
}

void salvar_arquivo(){		// Função para pegar instruções do arquivo binário e armazenar no vetor mem[]
	ifstream instrucoes;
	instrucoes.open("entrada.txt");
	int pos = 0;
	unsigned long long int valor;
	string temp;
	stringstream aux;

	if(!instrucoes.is_open()){						//Verifica se encontrou o arquivo de entrada
		cout << "Arquivo nao encontrado" << endl;
		exit(EXIT_FAILURE);
	}

	while(instrucoes.good()){						// Lê o arquivo até o final
		instrucoes >> temp;
		valor = strtoul(temp.c_str(), NULL, 2);		// Transforma temp em um int de base 2
		mem[pos] = (int) valor;						// Passa o conteudo da stringstream para o vetor da memória
		++pos;
	}
	instrucoes.close();
}

int main(int argc, char *argv[])
{
	regs[29] = 0x3ffc;
	regs[28] = 0x1800;
	salvar_arquivo();
	//step();

    return 0;
}