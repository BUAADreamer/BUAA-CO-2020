begin:
ori $3 12288 #0x3000
ori $4 12292
ori $5 4
ori $6 8
#D1,D2,D3面临的所有转发
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