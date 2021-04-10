.data
a: .word 3
b: .word 7
c: .word 4
d: .word 0
lw x2, a
lw x3, b
lw x4, c
add x2, x2, x3 
sub x2, x2, x4
add x2, x2, x4
add x2, x2, x4
la x5, d
sw x2, 0(x5)



