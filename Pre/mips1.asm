.data 0x00001000
str:	.asciiz "hello world"
num:	.byte 1,2,3,4,5,6,7,8
.text 
li $a0 0x00001000
lw $t0,12($a0)
