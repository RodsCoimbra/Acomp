	.data
a: .word 3
b: .word 15
c: .word 4
d: .word 0

	.text
	lw x11, a
	slli x11, x11, 7
	
	lw x12, b
	srli x12, x12, 2
	
	lw x13, c
	slli x13, x13, 3
	
	la x14, d
	
	add x10, x11, x12
	add x10, x10, x13

	sw x10, 0(x14)

	li x17, 1
	ecall

	li x17, 10
	ecall