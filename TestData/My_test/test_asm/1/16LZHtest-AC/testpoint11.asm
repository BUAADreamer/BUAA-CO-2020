ori $s0, 4
jal tag
addu $t0, $ra, $ra
ori $t0, $0, 1
tag:
addu $t1, $ra, $s0
addu $t2, $ra, $s0
addu $t3, $ra, $s0
jal tag2
addu $t4, $s0, $ra
ori $t0, $0, 1
tag2:
 addu $t4, $s0, $ra
 addu $t5, $s0, $ra
 addu $t6, $s0, $ra
 addu $t7, $s0, $ra
