# strcopy(char x[], char y[])
# (x, y, i) -> (a0, a1, s0)

strcopy:
	addi $sp, $sp, -4 #um elemento -> s0
	sw $s0, 0($sp)
	
	add $s0, $zero, $zero
	
L1:
	add $t1, $s0, $a1 #endereco de y[i] em t1
	lb $t2, 0($t1)
	
	add $t0, $s0, $a0 #endereco de x[i] em t0
	sb $t2, 0($t0) # x[i] = y[i]
	
	beq $t2, $zero, L2 # se y[i] == 0, desvia para L2
	
	addi $s0, $s0, 1 # i++; 
	j L1
	
L2:
	lw $s0, 0($sp) # y[1] == 0 para indicar fim da string
	
	addi $sp, $sp, 4
	jr $ra
	
	
	