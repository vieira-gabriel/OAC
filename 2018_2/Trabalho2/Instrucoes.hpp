#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string>
#include <iostream>        
#include <bitset>
#include <fstream>
#include <sstream>
#include <cstring>
#include <algorithm>

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
int stop;

using namespace std;

enum OPCODE{
	EXT=0x00,			// Instruções tipo R
	
	LB=0x20, LH=0x21, LHU=0x25, SW=0x2B, SB=0x28, SH=0x29,
	SLTIU=0x0B, ANDI=0x0C, ORI=0x0D, XORI=0x0E, LUI=0x0F, LBU=0x24, ADDI=0x08, SLTI=0x0A, ADDIU= 0x09, LW=0x23,
	
	BEQ=0x04, BNE=0x05, BLEZ=0x06, BGTZ=0x07, J=0x02, JR=0x08, JAL=0x03
};

enum FUNCT{
	ADD=0x20, SUB=0x22, MULT=0x18, DIV=0x1A, AND=0x24,
	OR=0x25, XOR=0x26, NOR=0x27, SLT=0x2A, 
	SLL=0x00, SRL=0x02, SRA=0x03, SYSCALL=0x0c, MFHI=0x10,
	MFLO=0x12, ADDU=0x21, SLTU=0x2b
};

int32_t lw(uint32_t address, int16_t kte){
	int32_t dado, retorno;

	dado = mem[address];
	
	// cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}

int32_t lh(uint32_t address, int16_t kte){
	int16_t dado = mem[address];
	int32_t retorno;

	if(kte%4 == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte%4 == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados para a direita para se tornarem os menos significativos

	// cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}   

uint32_t lhu(uint32_t address, int16_t kte){
	uint16_t dado = mem[address];
	uint32_t retorno;

	if(kte%4 == 0) dado = mem[address]&0x0000FFFF;			// Mascara aplicada para conseguir os 2 bytes menos significativos
	if(kte%4 == 2) dado = (mem[address] >> 16)&0x0000FFFF;	// Mascara aplicada para conseguir os 2 bytes mais significativos
															// após serem deslocados 16 bites para a direita para se tornarem os menos significativos

	// cout << "Decimal: " << dec << dado << endl;
	retorno = dado;
	return retorno;
}   

int32_t lb(uint32_t address, int16_t kte){
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

	// cout << "Decimal: " << dec << temp << endl << "Hexadecimal " << hex << temp << endl;
	retorno = dado;
	return retorno;
}      

int32_t lbu(uint32_t address, int16_t kte){
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

	// cout << "Decimal: " << dado << endl;
	retorno = dado;
	return retorno;
}

void sw(uint32_t address, int16_t kte, int32_t dado){

	
	if(kte%4 == 1) dado = (dado << 8);			// Caso kte seja 1, a word será deslocada para a direita, sendo aramzenada a partir da posição 1.
	if(kte%4 == 2) dado = (dado << 16);			// Caso kte seja 2, a word será deslocada para a direita, sendo aramzenada a partir da posição 2.
	if(kte%4 == 3) dado = ((dado << 16) << 8);	// Caso kte seja 3, a word será deslocada para a direita, sendo aramzenada a partir da posição 3.


	mem[address] = dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado){
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

//-----------------------------------------------------------------------------------------------

void add(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();
    
    regs[destino] = regs[entrada1] + regs[entrada2];
}

void sub(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = regs[entrada1] - regs[entrada2];
}

void mult(){
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();
    int64_t result;

    result = regs[entrada1] * regs[entrada2];
    lo = (int32_t)(result & 0xFFFFFFFF); 
    hi = (int32_t)((result >> 32) & 0xFFFFFFFF); 
}

void div(){
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    hi = entrada1%entrada2;
    lo = entrada1/entrada2;    
}

void _and(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = regs[entrada1] & regs[entrada2];
}

void _or(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = regs[entrada1] | regs[entrada2];
}

void _xor(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = regs[entrada1] ^ regs[entrada2];
}

void _nor(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = ~(regs[entrada1] | regs[entrada2]);
}

void stl(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    if(regs[entrada1] < regs[entrada2]) regs[destino] = 1;
    else regs[destino] = 0;
}

void sll(){
    int destino = (int)rd.to_ulong();
    int entrada = (int)rt.to_ulong();
    int shift = (int)shamt.to_ulong();
    
    regs[destino] = (regs[entrada] << shift);
}

void srl(){
    int destino = (int)rd.to_ulong();
    int entrada = (int)rt.to_ulong();
    int shift = (int)shamt.to_ulong();
    
    regs[destino] = (regs[entrada] >> shift);
}

void sra(){
    int destino = (int)rd.to_ulong();
    int entrada = (int)rt.to_ulong();
    int shift = (int)shamt.to_ulong();
    
    regs[destino] = (regs[entrada] >> shift);
}

void mfhi(){
    int destino = (int)rd.to_ulong();

    regs[destino] = hi;
}

void mflo(){
    int destino = (int)rd.to_ulong();

    regs[destino] = lo;
}

void addu(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    regs[destino] = (uint32_t)regs[entrada1] + (uint32_t)regs[entrada2];
}

void sltu(){
    int destino = (int)rd.to_ulong();
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    if((uint32_t)regs[entrada1] < (uint32_t)regs[entrada2]) regs[destino] = 1;
    else regs[destino] = 0;
}

void jr(){
    int pulo = (int)rs.to_ulong();

    pos = pulo;
    pc = regs[pos];
}

void syscall(){
    switch ((int)regs[2]){
        case 1:{
            cout << (int)regs[4] << ' ';
            break;
        }
        case 4:{
            ostringstream temp;
            string msg_hex;
            string mensagem;
            int32_t troca;          // troca a ordem dos caracteres
            int endereco = (int)regs[4];
                troca = (mem[endereco]>>24) & 0X000000FF;
                troca = troca | ((mem[endereco]>>8) & 0X0000FF00);
                troca = troca | ((mem[endereco]<<8) & 0X00FF0000);
                troca = troca | ((mem[endereco]<<24) & 0XFF000000);
                temp << hex << troca;
                msg_hex = temp.str();
            int len = msg_hex.length();
            std::string newString;
            for(int i=0; i< len; i+=2)
            {
            	string byte = msg_hex.substr(i,2);
            	char chr = (char) (int)strtol(byte.c_str(), NULL, 16);
            	newString.push_back(chr);
            }
            cout << newString;
            break;
        }

        case 10:{
            stop = 1;
            break;
        }
        
    }
}

//------------------------------------------------------------------------------------------------

void op_zero(){

    switch ((int)funct.to_ulong()){
        case ADD:
            add();
            break;
            
        case SUB:
            sub();
            break;
            
        case MULT:
            mult();
            break;
            
        case DIV:
            div();
            break;
            
        case AND:
            _and();
            break;

        case OR:
            _or();
            break;
            
        case XOR:
            _xor();
            break;
            
        case NOR:
            _nor();
            break;
            
        case SLT:
            stl();
            break;
            
        case SLL:
            sll();
            break;
            
        case SRL:
            srl();
            break;
            
        case SRA:
            sra();
            break;
        
        case MFHI:
            mfhi();
            break;

        case MFLO:
            mflo();
            break;
            
        case ADDU:
            addu();
            break;
            
        case SLTU:
            sltu();
            break;

        case JR:
            jr();
            break;
            
        case SYSCALL:
            syscall();
            break;
    }
}

// -----------------------------------------------------------------------------------------------

void sltiu(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    if((uint32_t)regs[entrada] < k16) regs[destino] = 1;
    else regs[destino] = 0;
}

void andi(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    regs[destino] = regs[entrada] & k16;
}

void ori(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();
    

    regs[destino] = (regs[entrada] & 0x0000FFFF) | k16;
    regs[destino] = regs[destino] & 0x0000FFFF;
    regs[destino] += regs[entrada] & 0xFFFF0000;

}

void xori(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    regs[destino] = regs[entrada] ^ k16;
}

void lui(){
    int32_t imediato = (k16 << 16);
    int destino = (int)rt.to_ulong();

    regs[destino] = imediato;
	// cout << "Decimal: " << dec << imediato << endl << "Hexadecimal " << hex << imediato << endl;
}

void addi(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    regs[destino] = regs[entrada] + k16;
}

void slti(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    if(regs[entrada] < k16) regs[destino] = 1;
    else regs[destino] = 0;
}

void addiu(){
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();

    regs[destino] = (uint32_t)regs[entrada] + (uint32_t)k16;
}

void beq(){
    int entrada1 = (int)rs.to_ulong();
    int entrada2 = (int)rt.to_ulong();

    if((int)regs[entrada1] == (int)regs[entrada2]) pos += (int)k16;
    pc = mem[pos];
    
}

void bne(){
    int entrada1 = (int)rt.to_ulong();
    int entrada2 = (int)rs.to_ulong();

    if(regs[entrada1] != regs[entrada2]) pos += (int)k16;
    
    pc = mem[pos];

}

void blez(){
    int entrada = (int)rs.to_ulong();

    if((int)regs[entrada] <= 0) pos += (int)k16;
    
    pc = mem[pos];

}

void bgtz(){
    int entrada = (int)rs.to_ulong();

    if((int)regs[entrada] > 0) pos += (int)k16;
    
    pc = mem[pos];

}

void j(){
    int pulo = (int)(k16<<2);
    pos = pulo/4;
    pc = mem[pos];

}

void jal(){
    regs[31] = pc;
    int pulo = (int)(k26<<2);
    pos = pulo/4;
    pc = mem[pos];

}

// -----------------------------------------------------------------------------------------------

void execute(){			// Função que executa a instrução
    int destino = (int)rt.to_ulong();
    int entrada = (int)rs.to_ulong();
    uint32_t endereco = (uint32_t)regs[entrada];    // Usado nas funções load e store
    int32_t dado = (int32_t)rt.to_ulong();           // Usado nas funções store
    
    // cout << bitset<32>(ri) << '\t' << bitset<32>(pc) << endl;
	// cout << bitset<32>(mem[7]) << endl;
    // getchar();
    switch ((int)opcode.to_ulong()){
        case EXT:
            op_zero();
            break;
        
        case LB:
            regs[destino] = lb(endereco, k16);
            break;

        case LH:
            regs[destino] = lh(endereco, k16);
            break;
            
        case LHU:
            regs[destino] = lhu(endereco, k16);
            break;
            
        case LBU:
            regs[destino] = lbu(endereco, k16);
            break;
            
        case LW:
            regs[destino] = lw(endereco, k16);
            break;
            
        case SW:
            sw(endereco, k16, dado);
            break;
            
        case SB:
            sb(endereco, k16, dado);
            break;
            
        case SH:
            sh(endereco, k16, dado);
            break;
            
        case SLTI:
            slti();
            break;

        case SLTIU:
            sltiu();
            break;
            
        case ANDI:
            andi();
            break;
            
        case ORI:
            ori();
            break;
            
        case XORI:
            xori();
            break;
            
        case LUI:
            lui();
            break;
            
        case ADDI:
            addi();
            break;
            
        case ADDIU:
            addiu();
            break;

        case BEQ:
            beq();
            break;
            
        case BNE:
            bne();
            break;
            
        case BLEZ:
            blez();
            break;
            
        case BGTZ:
            bgtz();
            break;
            
        case J:
            j();
            break;
            
        case JAL:  
            jal();
            break;
    }
}