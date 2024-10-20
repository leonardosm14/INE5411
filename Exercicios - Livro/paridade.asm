# escreva um programa que determine se um número n é par ou impar
 # solução: se um número é par, o bit menos significativo dele é 0;

.data
n: .word 20

.text

main:
    lw $t0, n     
    jal par_ou_impar
    li $v0, 1
    syscall
	
par_ou_impar: 
	      add $t0, $zero, $a0
	      
	      andi $t1, $t0, 1 #faz bit a bit de n com 0x00000001, de modo que o resultado será 0 (se for par) ou 1 (ímpar)
	      
	      bne $zero, $t1, L1 #se for impar, desvia
	      addi $v0, $zero, 1
	      j Exit
	     
L1:           add $v0, $zero, $zero

Exit:         jr $ra
	      
	      
	      
	      
	      
     	
	
		
