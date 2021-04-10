	.data
n_valores: .word 5
valores: .word 1, 2, 3, 4, 5, 6, 7, 8, 9

	.text
	lw x11,n_valores
	la x12, valores
	beq x11, x0, end
	lw 	x10, valores 
	addi x12, x12, 4
	addi x11, x11, -1
	beq x11, x0, end
loop: 
	add x10, x10, x13
	lw x13, 0(x12) 
	addi x12, x12, 4
	addi x11, x11, -1
	bge x11, x0, loop
	

end:
	li x17, 1
	ecall
	li x17, 10
	ecall