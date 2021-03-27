	.data
x: .word 1
y: .word 1
z: .word 0
i: .word 1
num: .zero 44
var: .word 8

	.text
	li x9, 10
	lw x10, z
	lw x11, y
	la x12, num		#x12 - endereco do num
	la x20, num
	sw x11, 0(x12)	 #num[0] = y
	lw x13 ,i			
	lw x14, x

loop:
	addi x12, x12, 4		#passar para o proximo endereco de memoria
	sw x11, 0(x12)		#guardar
	mv x10, x11			# z = y
	add x11, x11, x14		#y = y + x
	mv x14, x10			# x = z
	addi x13, x13, 1		# i++	
	blt x13, x9, loop		#i < 10
	lw x19, var				#recebe o var
	slli x19, x19, 2			#multiplicar var por 4
	addi x19, x19, -4		#subtrair 4 pois senão estava um endereço acima
	add x20, x19, x20		#x20 -> soma do x19 ao endereço do num
	lw x16, 0(x20)				#x16 -> recebe o num do elemento (var) de fibonacci
	li x18, 1 					#colocar o 18 a 1 para condição do loop 2

loop2:		
	addi x16, x16, 1			#x16 adiciona 1, pois se for impar o próximo múltiplo é adicionar 1 e se for par é adicionar 2 
	mv x15, x16					#passar o valor de x16 para outro registo
	andi x15, x15, 1			#fazer and com 1 para ver se é impar
	beq x15, x18, loop2		#x15 = 1 -> loop2

end:
	sw x16, 4(x12)			#guardar o x16 em um endereco
	li x17, 10         #fim
	ecall