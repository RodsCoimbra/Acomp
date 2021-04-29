# Programa L3.as

# ZONA I: Definicao de variaveis
.data
	x: .word 2
	y: .word 9

# ZONA II: Codigo
.text

# Programa principal: programa que recebe dois numeros inteiros positivos, x e y, e retorna o valor de x^y
	lw a0, x
	lw a1, y
	mv a3, a0
	addi sp, sp, -12
	sw a3, 8(sp)		
	sw a1, 4(sp)		#y
	sw a0, 0(sp)		#x
	jal Pow

	li a7, 1
	ecall

	li a7, 10
	ecall

# Pow: Rotina que efectua o calculo de x^y, sendo x e y dois numeros inteiros positivos
# 	Entradas: 	a0 - x
#			  	a1 - y
#	Saidas:   	a0 - resultado
# 	Efeitos:  	---

Pow:
	lw a0, 0(sp)
	lw a1, 4(sp)
	lw a3, 8(sp)
	addi sp, sp, -16
	sw ra, 12(sp)			#valor do endereco
	sw a3, 8(sp)            #valor de x
	sw a1, 4(sp)			#valor do h
	sw a0, 0(sp)		    #valor que vai multiplicar

	bnez a1, else1
	li a0, 1
	addi sp, sp, 16
	jalr x0, ra, 0

else1:
	srli a2, a1, 1		 #a2 = h = (y/2)
	sw a2, 4(sp)
	li t0, 2
	rem s4, a1, t0      #s4 = y%2
	bnez s4, else2
	jal	 Pow
	lw a0, 0(sp)
	addi sp, sp, -4
	sw a0, 4(sp)
	sw a0, 0(sp)
	jal Mult
	lw ra, 12(sp)
	lw a0, 0(sp)
	sw a0, 16(sp)
	addi sp, sp, 16	
	jalr x0, ra, 0

else2:
	jal	 Pow
	addi sp, sp, -4
	sw a0, 4(sp)
	sw a0, 0(sp)
	jal Mult
	lw a3, 8(sp)
	addi sp, sp, -4
	sw a3, 0(sp)
	jal Mult
	lw ra, 12(sp)
	lw a0, 0(sp)
	sw a0, 16(sp)
	addi sp, sp, 16
	jalr x0, ra, 0


# Mult: Rotina que efectua o calculo de a*b, sendo a e b numeros inteiros positivos
# 	Entradas:	0(sp), 4(sp) - numeros a multiplicar
#	Saidas:		0(sp) - resultado
#	Efeitos:	---

Mult:
	addi sp, sp, -12
	sw s1, 8(sp)
	sw s2, 4(sp)
	sw s3, 0(sp)

	lw s2, 16(sp)
	lw s1, 12(sp)

	li s3, 0
	beq s2, zero, OutMul
	beq s1, zero, OutMul

MulLoop:
	add s3, s3, s1
	addi, s2, s2, -1
	bne s2, zero, MulLoop

OutMul:
	sw s3, 16(sp)
	
	lw s3, 0(sp)
	lw s2, 4(sp)
	lw s1, 8(sp)
	addi sp, sp, 16
	ret
