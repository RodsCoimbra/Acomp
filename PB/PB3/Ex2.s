	.data
x: .word 127

	.text
	lw x12,x
	li x13, 32 
	li x10, 0

for: mv x11, x12
	 andi x11, x11, 1
	 add x10, x11, x10
	 addi x13, x13, -1
	 srli x12, x12, 1
	 blt x0, x13, for

end:
	li x17, 1 
	ecall
	li x17, 10
	ecall