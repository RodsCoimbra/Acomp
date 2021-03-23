	.data
x: .word 1
y: .word 1
z: .word 0
i: .word 1
num: .word 0

	.text
	li x9, 10
	lw x10, z
	lw x11, y
	la x12, num		#x12 - endereco do num
	
	sw x11, 0(x12)	 #num[0] = y
	lw x13 ,i
	lw x14, x
	bge x13, x9, end #condicao de entrada

loop:
	addi x12, x12, 4	##passar para o proximo endereco de memoria
	sw x11, 0(x12)		#guardar
	mv x10, x11		# z = y
	add x11, x11, x14	#y = y + x
	mv x14, x10		# x = z
	addi x13, x13, 1	# i++	
	blt x13, x9, loop	#i < 10
 
end:
	li x17, 10          #fim
	ecall
