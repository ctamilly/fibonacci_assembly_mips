data
 fibonacci30_msg: .asciiz "O 30º número de Fibonacci é: "
 phi_msg: .asciiz "\nRazão áurea (phi): "

.text
.globl main

main:
 li $t0, 30
 jal funcaoFibonacci
 move $s1, $v0

 li $v0, 4
 la $a0, fibonacci30_msg
 syscall

 move $a0, $s1
 li $v0, 1
 syscall

 li $t0, 41
 jal funcaoFibonacci
 move $s2, $v0

 li $t0, 40
 jal funcaoFibonacci
 move $s3, $v0

 # Calcula a razão áurea (phi) = 41 / 40

 mtc1 $s2, $f2 # Move o valor de $s2 para $f2
 mtc1 $s3, $f4
 cvt.s.w $f2, $f2 # Converte $f2 de inteiro para ponto flutuante
 cvt.s.w $f4, $f4

 div.s $f0, $f2, $f4

 li $v0, 4
 la $a0, phi_msg
 syscall

 li $v0, 2
 mov.s $f12, $f0
 syscall

 li $v0, 10
 syscall

# Função para calcular o n-ésimo número de Fibonacci

funcaoFibonacci:
 li $t1, 0
 li $t2, 1
 move $t3, $t0

 blt $t3, $zero, fimFibonacci
 beq $t3, $zero, fimFibonacci
 li $v0, 1

 beq $t3, $1, fimFibonacci 

loop:
 add $t4, $t1, $t2 # F(n) = F(n-1) + F(n-2)
 move $t1, $t2 # F(n-1) = F(n)
 move $t2, $t4 # F(n) = F(n+1)
 sub $t3, $t3, 1 # n = n-1
 bgt $t3, 1, loop

 move $v0, $t2

fimFibonacci:
 jr $ra 
