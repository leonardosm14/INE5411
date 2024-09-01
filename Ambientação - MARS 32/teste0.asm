.data 
    Hello: .asciiz "Hello World!"
    ValorA: .word 12
    ValorB: .word 13

.text 
    # printing "Hello World!" string;
    li $v0, 4
    la $a0, Hello
    syscall
    
    # loading values of A and B;
    lw $t0, ValorA      # Carrega o valor de ValorA em $t0
    lw $t1, ValorB      # Carrega o valor de ValorB em $t1

    # performing the sum;
    add $t2, $t0, $t1   # Soma o valor de $t0 (ValorA) e $t1 (ValorB), resultado em $t2

    # printing A + B;
    li $v0, 1           # Código de serviço para imprimir um inteiro
    move $a0, $t2       # Move o resultado da soma para $a0
    syscall             # Executa a chamada de sistema