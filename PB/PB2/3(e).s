	.data
a: .byte 3
b: .half 4523
c: .word 100000

	.text
	lb x10, a
	lh x11, b
	lw x12, c

	add x10, x10, x11
	add x10, x10, x12

	li x17,1
	ecall

	li x17,10
	ecall