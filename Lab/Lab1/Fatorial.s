	.data
a: .word 1

	.text
	li x9, 0
	lw x10, a
	li x11, 10
	or x14, x11, x0
	li x12, 1
	la x13, a
loop:
	mul x10, x11, x10
	sub x11, x11, x12
	sw x10, 0(x13)
	addi x13, x13, 4
	blt x9, x11, loop
end:
	sub x10, x10, x14
	sw x10, 0(x13)
	li x17, 1
 	ecall
	
	li x17, 10
 	ecall
	