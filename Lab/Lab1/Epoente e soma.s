#3^(i+1) + 5*i

	.data
i: .zero 44

	.text

	lw x9, i
	la x11, i
	li x12, 10     #máximo
	li x13, 1			#expoente
	li x14, 3			#multiplicar por 3 na parte do expoente
	li x15, 5			#multiplicar por 5
	li x16, 1			#resultado do expoente

loop: 
	mul x16, x14, x16		#multiplicação num loop para fazer o expoente
	addi x13, x13, 1		
	bge x9, x13, loop

	mul x8, x9, x15			#multiplicação do i por 5
	add x10, x16, x8 		#Adição dos dois termos
	sw x10, 0(x11)			#Escrever o resultado no endereço
	addi x11, x11, 4		#espaçar 4 bytes
	addi x9, x9, 1			#adicionar 1 a i
	bge x12, x9, loop   #voltar para o loop enquanto o i não for maior que 10  
	
	li x17, 10
	ecall




		

