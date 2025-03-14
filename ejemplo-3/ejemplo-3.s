.data 

mensaje: .asciz "Numero1 %d numero2 %d \r\n"

.text
.global main
.extern printf 

main:
_start:

     mov $4, %rax
     mov $5, %rbx

     #printf("Numero1 %d Numero2 %d \r\d", rax, rbx)
     #                  %rdi                rsi, rbx

     mov $mensaje, %rdi
     mov %rax, %rsi
     mov %rbx, %rdx
      
     addq $8, %rsp
     call imprimir
     call salir

salir:     
     #salir
     mov $60, %rax
     mov $0, %rdi
     syscall

imprimir:
     subq $8, %rsp  #alinear datos
     #RAX se pone en 0 para indicar que necesitamos 0 registros en punto flotante
     mov $0, %rax    #rax=0 toca memoria
     xor %rax, %rax  #rax=0 no toca memoria
     call printf     
 
