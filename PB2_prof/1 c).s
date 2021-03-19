	.data

	.text

	li x10, 824
	
	srli x10, x10, 4
	andi x10, x10, 0xF

	li x17, 1
	ecall

	li x17,10
	ecall
	