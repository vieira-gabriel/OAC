/*	Autor: Gabriel Vieira de Arimatéa
	
	Plataforma utilizada: Sublime Text

	Compilador: gcc (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609

	Sistema Operacional: Ubuntu 16.04.10*/


#include <stdio.h>
#include <stdint.h>
#include <string>
#include <iostream>

#define MEM_SIZE 4096 
int32_t mem[MEM_SIZE]; 

using namespace std;

void dump_mem(uint32_t add, uint32_t size){			// Função que imprime o conteúdo da memória no formato hexa, palavra por palavra
	size /= 4;
	size += add;

	for(int i = add; i < size; ++i)
	{
		cout << "mem[" << i << "] = " << hex << mem[i] << endl;
	}
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

	if(kte == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados para a direita para se tornarem os menos significativos

	cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}   

uint32_t lhu(uint32_t address, int16_t kte){
	address = address/4;
	uint16_t dado = mem[address];
	uint32_t retorno;

	if(kte == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados 16 bites para a direita para se tornarem os menos significativos

	cout << "Decimal: " << dec << dado << endl;
	retorno = dado;
	return retorno;
}   

int32_t lb(uint32_t address, int16_t kte){
	address = address/4;
	int32_t dado, retorno;
	uint32_t temp = mem[address];

	if(kte == 0){
		temp = ((temp << 16) << 8);		// Deslocamento de todos os bitts 32 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto o byte menos significativo.
		temp = ((temp >> 16) >> 8);		// Deslocamento de todos os bitts 32 bits para a direita, para retornar o byte menos
										// significativo para sua posição inicial.
		dado = temp;
	}
	if(kte == 1){
		temp = ((temp << 16));			// Deslocamento de todos os bitts 16 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto os 2 bytes menos significativos.
		temp = ((temp >> 16) >> 8);;	// Deslocamento de todos os bitts 32 bits para a direita, para apagar o byte menos significativo
										// da memória inicial, deixando o 2o byte menos significativo na posição 0 da memória.
		dado = temp;
	}
	if(kte == 2){
		temp = ((temp << 8));			// Deslocamento de todos os bitts 8 bits para a esquerda, para apagar todo o conteudo
										// da memória exceto o byte mais significativo.
		temp = ((temp >> 16) >> 8);		// Deslocamento de todos os bitts 32 bits para a direita, para apagar os 2 byte menos significativos
										// da memória inicial, deixando o 2o byte mais significativo na posição 0 da memória.
		dado = temp;
	}
	if(kte == 3){
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

	if(kte == 0){
		dado = ((dado << 16) << 8);
		dado = ((dado >> 16) >> 8);
	}
	if(kte == 1){
		dado = ((dado << 16));
		dado = ((dado >> 16) >> 8);
	}
	if(kte == 2){
		dado = ((dado << 8));
		dado = ((dado >> 16) >> 8);
	}
	if(kte == 3){
		dado = ((dado >> 16) >> 8);
	}

	cout << "Decimal: " << dado << endl;
	retorno = dado;
	return retorno;
}

void sw(uint32_t address, int16_t kte, int32_t dado){
	address = address/4;

	
	if(kte == 1) dado = (dado << 8);			// Caso kte seja 1, a word será deslocada para a direita, sendo aramzenada a partir da posição 1.
	if(kte == 2) dado = (dado << 16);			// Caso kte seja 2, a word será deslocada para a direita, sendo aramzenada a partir da posição 2.
	if(kte == 3) dado = ((dado << 16) << 8);	// Caso kte seja 3, a word será deslocada para a direita, sendo aramzenada a partir da posição 3.


	mem[address] = dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado){
	address = address/4;
	uint32_t temp = (uint32_t)dado, backup;
	
	if(kte == 0){
		temp = temp&0x0000FFFF;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFFFF00;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte == 1){
		temp = (temp << 8);
		temp = temp&0x00FFFF00;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFF00FF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte == 2){
		temp = (temp << 16);
		temp = temp&0xFFFF0000;					// Máscara para corrigir bug.
		backup = mem[address]&0xFF00FFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}
	if(kte == 3){
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
	
	if(kte == 0){
		backup = mem[address]&0xFFFFFF00;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
		temp = temp&0x000000FF;					// Máscara para corrigir bug.
	}

	if(kte == 1){
		temp = (temp << 8);
		temp = temp&0x0000FF00;					// Máscara para corrigir bug.
		backup = mem[address]&0xFFFF00FF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}

	if(kte == 2){
		temp = (temp << 16);
		temp = temp&0x00FF0000;					// Máscara para corrigir bug.
		backup = mem[address]&0xFF00FFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}

	if(kte == 3){
		temp = ((temp << 16) << 8);
		temp = temp&0xFF000000;					// Máscara para corrigir bug.
		backup = mem[address]&0x00FFFFFF;		// Backup do que já existia na memória, exceto na
												// posição que será introduzido um novo dado.
	}


	mem[address] = temp+backup;
}

int main(int argc, char *argv[])
{
	

    return 0;
}