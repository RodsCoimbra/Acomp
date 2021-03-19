#2a)

	.data
a: .word 3
b: .word 7
c: .word 4
d: .word 0

	.text

	lw x10, a
	lw x11, b
	lw x12, c

	add x10, x10, x11
	sub x10, x10, x12
	slli x12, x12, 1
	add x10, x10, x12

	la x13, d
	sw x10, 0(x13)

	li x17,1
	ecall

	li x17,10
	ecall