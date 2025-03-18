#include <stdio.h>
#include <stdlib.h>

float sumar(float a, float b){
return a+b;
}


int main(int numArgs, char ** ararayArgs){

  float numero1=2.57556565553434322456F; 
  float numero2=0.4F;
  float resultado;

  resultado = sumar(numero1, numero2);

  printf("\r\n%1.20f + %1.20f = %1.20f\r\n",numero1, numero2, resultado); 

  return 0;

}
