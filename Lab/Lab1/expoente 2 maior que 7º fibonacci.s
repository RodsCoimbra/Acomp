	.data
x: .word 1
y: .word 1
z: .word 0
i: .word 1
num: .word 0

	.text
	li x9, 7
	lw x10, z
	lw x11, y
	la x12, num		#x12 - endereco do num
	
	lw x13 ,i			
	lw x14, x
	li x8, 1
	li x7, 16
	li x16, 0b1
	li x15, 0
	bge x13, x9, end #condicao de entrada
loop:
	or x10, x11, x0		# z = y
	add x11, x11, x14		#y = y + x
	or x14, x10, x0		# x = z
	addi x13, x13, 1		# i++	
	blt x13, x9, loop		#i < 7

loop2:
	bge x8, x7, end			#x8 > 16 -> end
	srai x11, x11, 1		# y/2
	addi x8, x8, 1			#x8 + 1
	beq x11, x15,loop2		#x11 = 0 -> loop2
	slli x16, x16, 1		#x16*2
	j loop2					
end:
	mv x10, x16				#meter no registo x10 para imprimir
	li x17, 1            
	ecall
	
	li x17, 10             #fim
	ecall