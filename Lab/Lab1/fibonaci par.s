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

	lw x13 ,i
	lw x14, x
	li x16, 1
	bge x13, x9, end #condicao de entrada

loop:
	or x10, x11, x0		# z = y
	add x11, x11, x14	#y = y + x
	or x14, x10, x0		# x = z
	and x15, x11, x16
	addi x13, x13, 1 	# i++	
	beq x13, x9, end
	beq x15, x16, loop 
	sw x11, 0(x12)		#guardar
	addi x12, x12, 4 	##passar para o proximo endereco de memoria
	blt x13, x9, loop	#i < 10
 	
end:
	li x17, 10          #fim
	ecall