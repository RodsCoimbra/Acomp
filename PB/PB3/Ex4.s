	.data
x: .word 8
y: .word 3

	.text
	lw x10, x
	lw x11, y
	addi x2, x2 ,-8		
	sw x10,0(x2)				
	sw x11,4(x2)
	lw x11, 0(x2)
	lw x10, 4(x2)
	addi x2, x2, 8

	li x17,10
	ecall							
	

	
