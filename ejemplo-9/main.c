#include <stdio.h>
#include <stdlib.h>

//rax (rdi, rsi, rdx)            entero
//xmm0 (xmm0, xmm1, xmm2)        double y float

//xmm0                  xmm1  rsi   xmm3
float calculadoraCiclos(float, int, float);

int main(int numeArgs, char ** args){

	float pi = 3.41516926535;
	int ciclos = 5;
	float radio = 2.41F;
	float resultado;

	resultado = calculadoraCiclos(pi, ciclos, radio);
	printf("\r\n");
	printf("radio: %f, ciclos: %d, resultado: %f\n",radio,ciclos,resultado);

return 0;


}
