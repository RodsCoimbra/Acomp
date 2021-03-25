#3^(i) + i!

	.data
i: .zero 44

	.text
	li x8, 2			#para o primeiro caso
	lw x9, i			#x9 -> i
	la x11, i			#x11 -> endereço i
	li x12, 10     		#maximo
	li x14, 3			#multiplicar por 3 na parte do expoente		
	li x16, 1			#resultado do expoente
	sw x8, 0(x11)		#caso em que i= 0, logo 3^0 + 0! = 2 exp 	
	addi x9, x9, 1		#passar o i para 1
	mv x15, x9 			#x15 guarda a parte do fatorial
loop: 
	mul x16, x14, x16		#multiplicacao num loop para fazer o expoente
	mul x15, x15, x9        #multiplicaçao do fatorial
	add x10, x16, x15 		#Adicao dos dois termos
	addi x11, x11, 4		#passar para o proximo endereco	
	sw x10, 0(x11)			#Escrever o resultado no endereco
	addi x9, x9, 1			#adicionar 1 a i
	bge x12, x9, loop   	#voltar para o loop enquanto o i nao for maior que 10  

end:	
	li x17, 10
	ecall




	