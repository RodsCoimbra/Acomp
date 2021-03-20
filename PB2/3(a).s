.text
	li x10, 0
	li x11, 0xD
	li x12, 0

	andi x12, x11, 1
	add x10, x12, x10
	srli x11, x11, 1

	andi x12, x11, 1
	add x10, x12, x10
	srli x11, x11, 1

	andi x12, x11, 1
	add x10, x12, x10
	srli x11, x11, 1

	andi x12, x11, 1
	add x10, x12, x10

	li x17, 1
	ecall

	li x17, 10
	ecall

	