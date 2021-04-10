#3d)

	.data

x: .word 10
y: .word 0



	.text
	
	lw x11, x
	mv x12, x11

	li x10,7

	li x13, 5
	mul x13, x13, x12
	add x10, x10, x13 
	
	mul x12, x12, x11
 	li x13, -2
	mul x13, x13, x12
	add x10, x10, x13

	mul x12, x12, x11
	li x13, 3
	mul x13, x13, x12
	add x10, x10, x13

	la x14, y
	sw x10, 0(x14)
	

	li x17, 1
	ecall

	li x17, 10
	ecall