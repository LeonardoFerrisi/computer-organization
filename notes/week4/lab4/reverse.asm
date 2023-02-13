# Load Data into Registers

lw $t0 0($t0)
lw $t1 0($t1)
lw $t2 0($t2)
lw $t3 0($t3)
lw $t4 0($t4)
lw $t5 0($t5)

# Store reversed list

sw $t0 0($t5)
sw $t1 0($t4)
sw $t2 0($t3)
sw $t3 0($t2)
sw $t4 0($t1)
sw $t5 0($t0)








