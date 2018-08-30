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

void dump_mem(uint32_t add, uint32_t size){
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
/*	if(kte == 1){
		dado = mem[address]&0xFFFFFF00;
		dado = (dado >> 4);
	}

	if(kte == 2){
		dado = mem[address]&0xFFFF0000;
		dado = (dado >> 8);
	}

	if(kte == 3){
		dado = mem[address]&0xFF000000;
		dado = (dado >> 16);
	}*/
	
	cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}

int32_t lh(uint32_t address, int16_t kte){
	address = address/4;
	int16_t dado = mem[address];
	int32_t retorno;

	if(kte == 0) dado = mem[address]&0x0000FFFF;
	if(kte == 2) dado = (mem[address] >> 16)&0x0000FFFF;

	cout << "Decimal: " << dec << dado << endl << "Hexadecimal " << hex << dado << endl;
	retorno = dado;
	return retorno;
}   

uint32_t lhu(uint32_t address, int16_t kte){
	address = address/4;
	uint16_t dado = mem[address];
	uint32_t retorno;

	if(kte == 0) dado = mem[address]&0x0000FFFF;
	if(kte == 2) dado = (mem[address] >> 16)&0x0000FFFF;

	cout << "Decimal: " << dec << dado << endl;
	retorno = dado;
	return retorno;
}   

int32_t lb(uint32_t address, int16_t kte){
	address = address/4;
	int32_t dado, retorno;
	uint32_t temp = mem[address];

	if(kte == 0){
		temp = ((temp << 16) << 8);
		temp = ((temp >> 16) >> 8);
		dado = temp;
	}
	if(kte == 1){
		temp = ((temp << 16));
		temp = ((temp >> 16) >> 8);
		dado = temp;
	}
	if(kte == 2){
		temp = ((temp << 8));
		temp = ((temp >> 16) >> 8);
		dado = temp;
	}
	if(kte == 3){
		temp = ((temp >> 16) >> 8);
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

	
	if(kte == 1) dado = (dado << 8);
	if(kte == 2) dado = (dado << 16);
	if(kte == 3) dado = ((dado << 16) << 8);


	mem[address] = mem[address]|dado;
}

void sh(uint32_t address, int16_t kte, int16_t dado){
	address = address/4;
	uint32_t temp = (uint32_t)dado, backup;
	
	if(kte == 0){
		temp = temp&0x0000FFFF;
		backup = mem[address]&0xFFFFFF00;
	}
	if(kte == 1){
		temp = (temp << 8);
		temp = temp&0x00FFFF00;
		backup = mem[address]&0xFFFF00FF;
	}
	if(kte == 2){
		temp = (temp << 16);
		temp = temp&0xFFFF0000;
		backup = mem[address]&0xFF00FFFF;
	}
	if(kte == 3){
		temp = ((temp << 16) << 8);
		temp = temp&0xFF000000;
		backup = mem[address]&0x00FFFFFF;
	}

	mem[address] = 0x0;
	mem[address] = temp+backup;
}

void sb(uint32_t address, int16_t kte, int8_t dado){
	address = address/4;
	uint32_t temp = (uint32_t)dado, backup;
	
	if(kte == 0){
		backup = mem[address]&0xFFFFFF00;
		temp = temp&0x000000FF;
	}

	if(kte == 1){
		temp = (temp << 8);
		temp = temp&0x0000FF00;
		backup = mem[address]&0xFFFF00FF;
	}

	if(kte == 2){
		temp = (temp << 16);
		temp = temp&0x00FF0000;
		backup = mem[address]&0xFF00FFFF;
	}

	if(kte == 3){
		temp = ((temp << 16) << 8);
		temp = temp&0xFF000000;
		backup = mem[address]&0x00FFFFFF;
	}


	mem[address] = temp+backup;
}

int main(int argc, char *argv[])
{
    sb(0, 0, 0x04);
    sb(0, 1, 0x03);
    sb(0, 2, 0x02);
    sb(0, 3, 0x01);

    sb(4, 0, 0xFF);
    sb(4, 1, 0xFE);
    sb(4, 2, 0xFD);
    sb(4, 3, 0xFC);

    sh(8, 0, 0xFFF0);
    sh(8, 2, 0x8C);

    sw(12, 0, 0xFF);

    sw(16, 0, 0xFFFF);

    sw(20, 0, 0xFFFFFFFF);

    sw(24, 0, 0x80000000);

    dump_mem(0, 28);

    cout << endl;

    lb(0,0);
    lb(0,1);
    lb(0,2);
    lb(0,3);

    cout << endl;

    lb(4,0);
    lb(4,1);
    lb(4,2);
    lb(4,3);

    cout << endl;

    lbu(4,0);
    lbu(4,1);
    lbu(4,2);
    lbu(4,3);

    cout << endl;

    lh(8,0);
    lh(8,2);

    cout << endl;

    lhu(8,0);
    lhu(8,2);
    lhu(24,0);
    lhu(24,2);

    cout << endl;

    lw(0, 0);
    lw(4, 0);
    lw(12,0);
    lw(16, 0);
    lw(20,0);

    return 0;
}