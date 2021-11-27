li $a0, 999997671
sw $a0, 0($0)
addu $t0 $0 0xffffffff
move $t1 $t0
move $t2 $t0
sw $1 4($0)
sw $1 8($0)
sw $1 12($0)
sw $1 16($0)
lwl $t0 0($0)
lwl $t1 1($0)
lwl $t2 2($0)
lwl $t3 3($0)
swl $t3 4($0)
swl $t3 9($0)
swl $t3 14($0)
swl $t3 19($0)
lwr $t4 0($0)
lwr $t5 1($0)
lwr $t6 2($0)
lwr $t7 3($0)
swr $t3 20($0)
swr $t3 25($0)
swr $t3 30($0)
swr $t3 35($0)
nop