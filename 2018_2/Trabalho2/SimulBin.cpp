/*	Autor: Gabriel Vieira de Arimatéa
	
	Plataforma utilizada: Sublime Text

	Compilador: gcc (Ubuntu 5.4.0-6ubuntu1~16.04.10) 5.4.0 20160609

	Sistema Operacional: Ubuntu 16.04.10*/



#include "Instrucoes.hpp"


// --------------------------------------------------------------------------------------------

void dump_mem(int start, int end, char format){			// Função que imprime o conteúdo da memória no formato hexa, palavra por palavra
	for(int i = start; i < end; ++i)
	{
		if(format == 'h') cout << "mem[" << i << "] = " << hex << mem[i] << endl;
		else cout << "mem[" << i << "] = " << mem[i] << endl;
	}
}

void dump_reg(char format){						// Função que imprime conteudo do registrador
	for(int i = 0; i < 32; ++i){
		if(format == 'h') cout << "regs[" << i << "] = " << hex << regs[i] << endl;
		else cout << "regs[" << i << "] = " << regs[i] << endl;
	}
	if(format == 'h'){
		cout << "pc = " << hex << pc << endl;
		cout << "hi = " << hex << hi << endl;
		cout << "lo = " << hex << lo << endl;
	}
	else{
		cout << "pc = " << pc << endl;
		cout << "hi = " << hi << endl;
		cout << "lo = " << lo << endl;
	}
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

	stop = 0;
	do{
		step();
	}while(!stop);
	cout << endl << endl << "PROGRAMA ENCERRADO"<< endl;


    return 0;
}