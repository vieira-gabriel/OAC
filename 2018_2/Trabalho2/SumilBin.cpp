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
#include "Instrucoes.hpp"


// --------------------------------------------------------------------------------------------

void dump_mem(int start, int end, char format){			// Função que imprime o conteúdo da memória no formato hexa, palavra por palavra
	
}

void dump_reg(char format){						// Função que imprime conteudo do registrador

}



void decode(){			// Função que decodifica a instrução
	funct = ri & 0x3F;
	shamt = (ri >> 6) & 0x1F;
	rd = (ri >> 11) & 0x1F;
	rt = (ri >> 16) & 0x1F;
	rs = (ri >> 21) & 0x1F;
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
	int posicao = 0;
	unsigned long long int valor;
	string temp;
	stringstream aux;

	if(!instrucoes.is_open()){						//Verifica se encontrou o arquivo de entrada
		std::cout << "Arquivo nao encontrado" << std::endl;
		exit(EXIT_FAILURE);
	}

	while(instrucoes.good()){						// Lê o arquivo até o final
		instrucoes >> temp;
		valor = strtoul(temp.c_str(), NULL, 2);		// Transforma temp em um int de base 2
		mem[posicao] = (int) valor;						// Passa o conteudo da stringstream para o vetor da memória
		++posicao;
	}
	instrucoes.close();

	ifstream dados;
	dados.open("dados.txt");
	posicao = 8192;
	if(!dados.is_open()){
		std::cout << "Arquivo nao encontrado" << std::endl;
		exit(EXIT_FAILURE);
	}
	while(dados.good()){						// Lê o arquivo até o final
		dados >> temp;
		valor = strtoul(temp.c_str(), NULL, 2);		// Transforma temp em um int de base 2
		mem[posicao] = (int)valor;						// Passa o conteudo da stringstream para o vetor da memória
		posicao+=4;
	}
	dados.close();
}

int main(int argc, char *argv[])
{
	regs[29] = 0x3ffc;
	regs[28] = 0x1800;
	salvar_arquivo();
	int i;


	// string parada = "01010";
	// int32_t para = (int)(strtoul(parada.c_str(), NULL, 2));
	stop = 0;
	do{
		step();
		cout << (int)regs[2] << endl;
		getchar();
	}while(((int)regs[2] != 10));
	cout << "saiu" << endl << endl << (int)regs[2] << endl;
	// std::bitset<5> teste (string("11111010"));
	std::bitset<5> teste2 (string("01010"));
	// string temp1 = "11000000000000000000000000000001";
	// string temp2 = "01111111111100000000000000000001";

	// int r1 = (int) teste2;
	// cout << r1 << endl;
	// int32_t x8 = (int32_t)strtoul(temp1.c_str(), NULL, 2);
	// int32_t x9 = (int32_t)strtoul(temp2.c_str(), NULL, 2);
	// int r1, r2, r3, r4;
	// r1 = (int)x8 + (int)x9;
	// r2 = (uint32_t)x8 + (uint32_t)x9;
	// r3 = (int)x8 - (int)x9;
	// r4 = (uint32_t)x8 - (uint32_t)x9;
	// cout << x8 << "\t" << x9 << endl;
	// cout << r1 << "\t" << r2 << endl;
	// cout << r3 << "\t" << r4 << endl;

	// std::bitset<32> b(string("10100000001000011111111111111111"));
	// int8_t x8 = (int8_t)(b.to_ulong() & 0xFF);
	// int16_t x16 = (int16_t)(b.to_ulong() & 0xFFFF);
	// int32_t x32 = (int32_t)b.to_ulong();
	// cout << x8 << endl;
	// cout << x16 << endl;
	// cout << x32 << endl;


    return 0;
}