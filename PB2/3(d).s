	.data
x: .word 10
y: .word 0

	.text
	la x10, y
	lw x11, x   #x11 = x
	mul x12, x11, x11	#x12 = x^2
	mul x13, x11, x12	#x13 = x^3
	li x14, 3
	li x15, 5
	slli x12, x12, 1
	mul x13, x13, x14
	mul x11, x11, x15
	sub x13, x13, x12
	add x13, x13, x11
	addi x13, x13, 7
	sw x13, 0(x10)

	li x17, 10
	ecall



