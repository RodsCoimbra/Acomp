	.data
vals: .word 3, 7, 4, 6
vacc: .word 0, 0, 0, 0
i: .word 0

	.text
	la x11, vals
	la x12, vacc
	lw x13, i
	
	lw x14, 0(x11)
	add x13, x14, x13
	sw x13, 0(x12)
	
	lw x14, 4(x11)
	add x13, x14, x13
	sw x13, 4(x12)

	lw x14, 8(x11)
	add x13, x14, x13
	sw x13, 8(x12)

	lw x14, 12(x11)
	add x13, x14, x13
	sw x13, 12(x12)

	li x17, 10
	ecall
