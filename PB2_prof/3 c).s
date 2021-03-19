#3c)

	.data
a:	.word 3
b: .word 15
c: .word 4
d: .word 0
	
	.text

	lw x10, a
	lw x11, b
	lw x12, c

	slli x10, x10, 7
	srai x11, x11, 2
	slli x12, x12, 3

	add x10, x10, x11
	add x10, x10, x12


	li x17, 1
	ecall

	li x17, 10
	ecall