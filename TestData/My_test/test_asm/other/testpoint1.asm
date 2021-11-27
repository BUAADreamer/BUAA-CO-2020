 ori  $gp, $zero, 0
 ori  $sp, $zero, 0
 ori  $at, $a3, 0x1010
 lw   $t2, ($zero)
 sw   $at, ($zero)
 lui  $v0, 0x8723
 ori  $v1, $zero, 0x7856
 lui  $a0, 0x85ff
 ori  $a1, $zero, 1
 lui  $a2, 0xffff
 ori  $a3, $a3, 0xffff
 addu $at, $at, $v0
 addu $t1, $at, $v1
 subu $t0, $at, $v0
 subu $zero, $a3, $zero
 nop  
 nop  
 nop  
 nop  
 nop  
 #beq  $gp, $s1, 0x3060
 nop  
 #j    0x30b0
 beq1: 
 #beq  $at, $v0, 0x30b0
 nop  
 ori  $v0, $zero, 0xc
 nop  
 nop  
 nop  
 #jal  0x3088
 sw   $at, ($v0)
 #j    0x30b0
 addu $at, $at, $v0
 addu $at, $at, $v0
 addu $at, $at, $v0
 addu $at, $at, $v0
 sw   $ra, ($v0)
 lw   $at, ($v0)
 nop  
 nop  
 nop  
 #jr   $at
 sw   $ra, ($v0)
 #b    0x30b0
 nop  
