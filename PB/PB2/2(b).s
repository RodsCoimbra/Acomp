.data
vals: .word 3, 7, 4, 6

.text
	la x11, vals
	lw x10, 0(x11)
	lw x12, 4(x11)
	lw x13, 8(x11)
	lw x14, 12(x11)

	add x10, x10, x12
	add x10, x10, x13
	add x10, x10, x14
	srli x10, x10, 2

	li x17, 1
	ecall

	li x17, 10
	ecall

