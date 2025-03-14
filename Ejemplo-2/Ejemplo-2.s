
.section .data
mensaje: .asciz "%ld \n"

.section .text
.global main
.extern printf    # Corrección: sin el punto antes de printf

main:
   mov $4, %rax    # rax = 4
   mov $5, %rbx    # rbx = 5
   add %rbx, %rax  # rax = rax + rbx

   # Asegurar alineación de pila antes de llamar a printf
   sub $8, %rsp

   # Imprimir mensaje con printf("%ld \n", rax)
   lea mensaje(%rip), %rdi  # Cargar la dirección de mensaje en rdi
   mov %rax, %rsi           # Pasar el valor a imprimir en rsi
   xor %rax, %rax           # Limpiar rax (necesario para llamadas de funciones variádicas)
   call printf

   add $8, %rsp  # Restaurar el espacio de la pila

   # Salir del programa
   mov $60, %rax  # syscall de exit
   xor %rdi, %rdi # exit(0)
   syscall
