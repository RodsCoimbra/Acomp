# Programa L3 
#Se par 3*u(n/2)
#Se impar U((n-1))/2)*U((n-1))/2)
#Se n <= 1, U(n) = 1

# ZONA I: Definicao de variaveis
.data
	n: .word 50

# ZONA II: Codigo
.text

# Programa principal: programa que recebe dois numeros inteiros positivos, x e y, e retorna o valor de x^y
	lw a1, n
	addi sp, sp, -4
	sw a1, 0(sp)	#x
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
	lw a1, 0(sp)	 
	addi sp, sp, -8 
	sw ra, 4(sp)	 		#valor do endereco
	sw a1, 0(sp)	 		#valor do n
	li t1, 1
	bgt a1, t1, else1
	li a0, 1
	sw a0, 8(sp)
	addi sp, sp, 8
	jalr x0, ra, 0

else1:
	li t0, 2
	rem s4, a1, t0       #s4 = y%2
	bnez s4, else2
	srli a2, a1, 1		 #a2 = n = (y/2)
	sw a2, 0(sp)		 
	jal	 Pow
	lw a0, 0(sp)	
	li t2, 3
	mul a0, a0, t2
	lw ra, 4(sp) 
	sw a0, 8(sp) 
	addi sp, sp, 8
	jalr x0, ra, 0

else2:
	addi a1, a1, -1
	srli a2, a1, 1		 #a2 = n = (y-1/2)
	sw a2, 0(sp)		
	jal	 Pow
	lw a0, 0(sp)	
	mul a0, a0, a0
	lw ra, 4(sp)
	sw a0, 8(sp)
	addi sp, sp, 8
	jalr x0, ra, 0


