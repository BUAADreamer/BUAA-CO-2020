begin:
ori $3 12288 #0x3000
ori $4 12292
ori $5 4
ori $6 8
#D1,D2,D3���ٵ�����ת��
addu $3  $3 $5
beq  $4 $3 begin #5
nop
addu $3 $3 $6
addu $3 $3 $6
addu $3 $3 $6  
addu $3 $3 $6 
addu $3 $3 $6 #11
addu $3 $3 $6
jr $3
nop
jal check
nop

#E1,E2���ٵ�����ת��
ori $7 $7 16
subu $7 $7 $7
subu $7 $7 $7
ori $7 $7 16
sw $7 ($6)  #DM��8�ŵ�ַ������8
lw  $8  ($6)
nop
nop
addu $8 $8 $8
lw $8 ($7)
nop
sw  $8  4($8)
nop

#D1,D2,D3���ٵ�������ͣ
lui $8  0
ori $8 $8 16
lw   $7  ($8) #7�Ŷ�����8
beq $7 $3 begin
nop
addu $7 $7 $7
beq $7 $3 begin
nop

#E1��E2���ٵ�������ͣ
lw $7 ($8)
ori $7 $7 32
addu $7 $7 $7
lw $7 ($8)
sw $7 ($5)
sw $7 ($5)
sw $7 ($5)
nop

#M1����ת��
lw $7 ($8)
sw $7 0($7)

lui $4 1
lui $5 1
beq  $4 $5 end
nop
check:
jr $ra
nop
end:

      



