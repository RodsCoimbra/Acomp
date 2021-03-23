#3^(i+1) + 5*i

	.data
i: .zero 44

	.text

	lw x9, i
	la x11, i
	li x12, 10     #maximo
	li x14, 3			#multiplicar por 3 na parte do expoente
	li x15, 5			#multiplicar por 5
	li x16, 1			#resultado do expoente

loop: 
	mul x16, x14, x16		#multiplicacao num loop para fazer o expoente
	mul x8, x9, x15			#multiplicacao do i por 5
	add x10, x16, x8 		#Adicao dos dois termos
	sw x10, 0(x11)			#Escrever o resultado no endereco
	addi x11, x11, 4		#passar para o proximo endereco
	addi x9, x9, 1			#adicionar 1 a i
	bge x12, x9, loop   #voltar para o loop enquanto o i nao for maior que 10  
end:	
	li x17, 10
	ecall




		

