
.data
uno: .float 1.0
cero: .float 0.0

.text
.global comparar_float

comparar_float:
	ucomiss %xmm1, %xmm0
	ja mayor

menor:
	movss cero(%rip), %xmm0
	jmp fin
mayor:
	movss uno(%rip),%xmm0

fin:
	ret
