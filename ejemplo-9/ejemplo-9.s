
.text

.global calculadoraCiclos

calculadoraCiclos:
	# xmm0 funcion (xmm0, rdi, xmm1)
	# mulss o mulsd  multiplicacion de simple posicion y de doble precision
	mulss %xmm0, %xmm0  #SS significa s(scalar: escalar) y s (single: float)

ciclos:

	#bucle while
	cmp $0, %rdi	##es como if(resi == 0)
	je fin		##llama a fin si es 0 je = jump equal

	addss %xmm0,%xmm0	## xmm0 += xmm0


	dec %rdi	## decrementa rax
	jmp ciclos 	##la funcion se llama a si misma

fin:
	ret
