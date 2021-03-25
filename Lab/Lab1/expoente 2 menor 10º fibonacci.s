	#maior expoente de 2 menor U(10)
	.data
x: .word 1
y: .word 1
z: .word 0
i: .word 2
num: .word 0

	.text
	li x9, 10
	lw x8, z
	lw x11, y
	lw x13, i
	la x12, num		#x12 - endereco do num
	lw x14, x
	li x15, 32			
	li x16, 0
	li x10, 1
	li x7, 1			#variavel que aumenta, j

loop:
	or x8, x11, x0		# z = y
	add x11, x11, x14	#y = y + x
	or x14, x8, x0		# x = z
	addi x13, x13, 1	# i++	
	blt x13, x9, loop	#i < 10
loop2:
	blt x15, x7, end		#32 < j
	srai x11, x11, 1		#y/2
	addi x7, x7, 1		# j++	
	beq x11, x16, loop2	#y != 0
	slli x10, x10, 1		#*2
	j loop2

end:
	li x17, 1				#fim
	ecall
	
	li x17, 10          #fim
	ecall