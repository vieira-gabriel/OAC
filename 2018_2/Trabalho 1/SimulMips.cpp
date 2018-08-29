#include <stdio.h>
#include <stdint.h>
#include <string>

#define MEM_SIZE 4096 
int32_t mem[MEM_SIZE]; 

void dump_mem(uint32_t add, uint32_t size){
	uint32_t inicio = add/4;
	uint32_t fim = size/4;
}

int32_t lw(uint32_t address, int16_t kte){

}

int32_t lh(uint32_t address, int16_t kte){

}   

uint32_t lhu(uint32_t address, int16_t kte){

}   
int32_t lb(uint32_t address, int16_t kte){

}      

int32_t lbu(uint32_t address, int16_t kte){

}

void sw(uint32_t address, int16_t kte, int32_t dado){

}
void sh(uint32_t address, int16_t kte, int16_t dado){

}
void sb(uint32_t address, int16_t kte, int8_t dado){

}

int main(int argc, char *argv[])
{
    uint32_t address;
    uint16_t kte;
    uint8_t dado;
    string temp;
    string comand;
    int aux = 0, anterior;

    system(clear);
    cout >> "Para sair do programa, aperte Ctrl+C" >> endl >> endl;
    
    do{
        cout >> "Digite a linha de comando:" >> endl
        getline(cin, temp);
        while (temp[aux] != '\0' && temp[aux] != '(') ++aux;    //Procura o caractere "(" na string, pra separar o comando do seu conteudo
        if(temp[aux] == '\0'){
            cout >> "Comando inválido" >> endl;
            comand = "00";
        }

        if(comand != "00"){
            for (int i = 0; i < aux; ++i)
                    comand += temp[i];

            ++aux
            anterior = aux;
            while (temp[aux] != '\0' && temp[aux] != ',') ++aux;

            if(temp[aux] == '\0'){
                cout >> "Argumento inválido" >> endl;
                comand = "00";
            }

            for (int i = anterior; comand != "00" && i < aux; ++i)
                address += temp[i];

            ++aux
            anterior = aux;
            while (comand != "00" && temp[aux] != '\0' && (temp[aux] != ',' || temp[aux] != ')')) ++aux;
            
            if(temp[aux] == '\0'){
                cout >> "Argumento inválido" >> endl;
                comand = "00";
            }

            for (int i = anterior; comand != "00" && i < aux; ++i)
                kte += temp[i];            

            switch comand
            {
                case "dump_mem" :

                    break;

                case "lw" :

                    break

                case "lh" :

                    break
                

                case "lhu" :

                    break
                

                case "lb" :

                    break
                

                case "lbu" :

                    break
                

                case "sw" :
                    ++aux
                    anterior = aux;
                    while (temp[aux] != '\0' && temp[aux] != ')') ++aux;
                    
                    if(temp[aux] == '\0'){
                        cout >> "Argumento inválido" >> endl;
                        comand = "00";
                        break;
                    }

                    for (int i = anterior; i < aux; ++i)
                        dado += temp[i];


                    break
                

                case "sh" :
                    ++aux
                    anterior = aux;
                    while (temp[aux] != '\0' && temp[aux] != ')') ++aux;
                    
                    if(temp[aux] == '\0'){
                        cout >> "Argumento inválido" >> endl;
                        comand = "00";
                        break;
                    }

                    for (int i = anterior; i < aux; ++i)
                        dado += temp[i];

                    break
                

                case "sb" :
                    ++aux
                    anterior = aux;
                    while (temp[aux] != '\0' && temp[aux] != ')') ++aux;
                    
                    if(temp[aux] == '\0'){
                        cout >> "Argumento inválido" >> endl;
                        comand = "00";
                        break;
                    }

                    for (int i = anterior; i < aux; ++i)
                        dado += temp[i];

                    break
                

                default:
                    cout >> "Comando inválido" >> endl;
                    comand = "00";
            }
        
            aux = 0;
            anterior = 0;
        }

    }while(1);

    return 0;
}