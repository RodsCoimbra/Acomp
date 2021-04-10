	.data
x: .word 30
y: .word 0
	.text

	lw x10, x
	lw x11, y
	li x14, 10
	li x15, 1
	
if: 
	bge x14, x10, else
	bge x11, x15, end
	addi x10, x10, -10
	j end

else:
	addi x10, x10, 10

end:
	li x17, 1
	ecall
	li x17, 10
	ecall
