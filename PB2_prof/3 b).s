#3b)

	.data
vals: .word 3, 7, 4, 6
vacc: .zero 16
	
	.text

	la x11, vals
	la x12, vacc
	
	lw x10, 0(x11)
	sw x10, 0(x12)

	addi x11, x11, 4
	addi x12, x12, 4
	lw x13, 0(x11)
	add x10, x10, x13
	sw x10, 0(x12)

	addi x11, x11, 4
	addi x12, x12, 4
	lw x13, 0(x11)
	add x10, x10, x13
	sw x10, 0(x12)
	
	addi x11, x11, 4
	addi x12, x12, 4
	lw x13, 0(x11)
	add x10, x10, x13
	sw x10, 0(x12)

	li x17, 1
	ecall

	li x17, 10
	ecall