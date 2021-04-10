	.data
	.text
	li x16, 4
	li x11, 7
	li x12, 7
	li x13 ,3
	jal x1, soma3
	jal x1, subtrai
	li x17, 1
	ecall
	li x17, 10
	ecall

soma3:
	addi x2, x2, -4
	sw x1, 0(x2)
	jal x1, soma
	lw x1, 0(x2)
	addi x2, x2, 4
	add x15, x12, x14
	addi x2, x2, 8
	ret

soma: 
	add x14, x16, x11
	ret

subtrai:
	addi x2, x2, -12
	sub x10, x15, x13
	addi x2, x2, 8
	ret
	