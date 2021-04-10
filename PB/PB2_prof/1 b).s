	.text
	li x10, 3
	li x11, 7
	li x12, 4
	
	add x10, x11, x10
	sub x10, x10, x12
	slli x10, x10, 3	

	li x17, 1
	ecall

	li x17, 10
	ecall