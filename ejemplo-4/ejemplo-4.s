
.text
.global sumar
.global restar

sumar:
      add %rsi, %rdi
      mov %rdi, %rax
      ret

restar:
      sub %rsi, %rdi
      mov %rdi, %rax 
      ret
