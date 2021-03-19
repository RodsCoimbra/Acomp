#2 b)
	
	.data
vals: .word 3, 7, 4, 6

	.text
	la x14, vals
	
	lw x10, 0(x14)
	lw x11, 4(x14)
	lw x12, 8(x14)
	lw x13, 12(x14)

	add x10, x10, x11
	add x10, x10, x12
	add x10, x10, x13
	srai x10, x10, 2
	

	li x17, 1
	ecall

	li x17, 10
	ecall
	