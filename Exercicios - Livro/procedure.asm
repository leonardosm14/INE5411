# (g, h, i, j) -> ($a0, $a1, $a2, $a3)
# f = (g+h) - (i+j)
# t0 = g+h, t1 = i+j, t2 = t0 - t1

exemplo_folha: 
	     addi $sp, $sp, -12
	     sw $t1, 8($sp)
	     sw $t0, 4($sp)
	     sw $s0, 0($sp)
	     
	     add $t0, $a0, $a1  # t0 = f + g
	     add $t1, $a2, $a3  # t1 = i + j
	     sub $s0, $t0, $t1  # s0 = t0 - t1
	     
	     #retornar f
	     add $v0, $s0, $zero # v0 = f + 0
	     
	     lw $s0, 0($sp)
	     lw $t0, 4($sp)
	     lw $t1, 8($sp)
	     addi $sp, $sp, 12
	     
	     jr $ra # ra = PC + 4