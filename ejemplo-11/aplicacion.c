#include <stdio.h>
#include <stdlib.h>

int main(int numArgs, char ** args){

	int numero = 8;
	int resultado;

	resultado = multiplicarPorOcho(numero);
	printf("\r\n");
	printf("el numero %d multiplicado por 8 es %d", numero, resultado);
	printf("\r\n");
	return 0;
}
