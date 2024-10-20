#int fact(int n) {
# if (n<1) return (1);
# else return (n * fact(n-1)); }
.data 
n: .word 5

.text 
main:
    la $a0, n
    jal fact

fact: 
     addi $sp, $sp, -8
     sw $ra, 4($sp)
     sw $a0, 0($sp)
     
     slti $t0, $a0, 1 # se n < 1, t0 = 1
     beq $zero, $t0, L1 #se t0 = 0, devia para label L1
     
     addi $v0, $zero, 1 # retorna 1
     addi $sp, $sp, 8
     jr $ra 
L1: 
     addi $a0, $a0, -1 # n = n-1
     jal fact #chama fact(n-1)
     
     lw $a0, 0($sp)
     lw $ra, 4($sp)
     addi $sp, $sp, 8
     
     mul $v0, $a0, $v0 # n * (n-1)
     
     jr $ra


     