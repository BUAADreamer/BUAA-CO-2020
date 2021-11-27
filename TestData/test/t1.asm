ori 		$1, $0, 0x2904823
ori 		$2, $0, 0x8be06784
ori 		$3, $0, 0xae103d6c
ori 		$4, $0, 0xcd6072ae
ori 		$5, $0, 0x95205f90
ori 		$6, $0, 0x64906df1
ori 		$7, $0, 0xaf1041bb
ori 		$8, $0, 0x6e9001eb
ori 		$9, $0, 0xbb302ea6
ori 		$10, $0, 0x2db0153c
ori 		$11, $0, 0xe870390c
ori 		$12, $0, 0xf3e00099
ori 		$13, $0, 0x1240305e
ori 		$14, $0, 0x40d0491c
ori 		$15, $0, 0xd0604db7
ori 		$16, $0, 0x547054de
ori 		$17, $0, 0x9b302d12
ori 		$18, $0, 0x74d04dc8
ori 		$19, $0, 0x443066bb
ori 		$20, $0, 0x28b026a6
ori 		$21, $0, 0x1f05d03
ori 		$22, $0, 0xa5a0767d
ori 		$23, $0, 0x50901238
ori 		$24, $0, 0xb2501e1f
ori 		$25, $0, 0xe5d01ad4
ori 		$26, $0, 0x3cb06bfc
ori 		$27, $0, 0xf9607ff5
ori 		$28, $0, 0xe450323b
ori 		$29, $0, 0x2130260d
ori 		$30, $0, 0xb890030a
ori 		$31, $0, 0x1c00bdb
ori 		$1, $0, 0x6ae00732
mfhi		$1


addu		$25, $18, $30
addu		$25, $25, $27

addu		$5, $5, $3
addu		$5, $28, $5

addu		$20, $19, $5
addu		$20, $20, $20

addu		$24, $14, $8
sll 		$24 , $24, 13

addu		$21, $0, $5
mthi		$21

addu		$25, $23, $29
mult		$7, $25

addu		$10, $22, $25
mult		$10, $13

addu		$16, $9, $2
mult		$16, $16

addu		$13, $20, $8
ori 		$13 , $13, 0x1049

end1:
ori 		$6, $0, 0x666

sll 		$10, $5, 0x19
addu		$10, $10, $8

sll 		$1, $20, 0x0
addu		$1, $17, $1

sll 		$27, $5, 0xa
addu		$27, $27, $27

sll 		$17, $1, 0x8
sll 		$17 , $17, 16

sll 		$22, $11, 0x9
mthi		$22

sll 		$7, $12, 0x17
mult		$15, $7

sll 		$17, $29, 0x15
mult		$17, $26

sll 		$21, $27, 0x1
mult		$21, $21

sll 		$1, $30, 0x0
ori 		$1 , $1, 0x3ee9

end2:
ori 		$6, $0, 0x666

mfhi		$8
addu		$8, $8, $26

mfhi		$7
addu		$7, $6, $7

mfhi		$2
addu		$2, $2, $2

mfhi		$21
sll 		$21 , $21, 16

mfhi		$31
mthi		$31

mfhi		$26
mult		$7, $26

mfhi		$25
mult		$25, $3

mfhi		$17
mult		$17, $17

mfhi		$21
ori 		$21 , $21, 0x390

end3:
ori 		$6, $0, 0x666

ori 		$24, $17, 0x728
addu		$24, $24, $25

ori 		$12, $6, 0x6ea1
addu		$12, $30, $12

ori 		$14, $16, 0x1e1
addu		$14, $14, $14

ori 		$28, $25, 0x4efe
sll 		$28 , $28, 21

ori 		$31, $5, 0x4fe2
mthi		$31

ori 		$2, $27, 0x2f0c
mult		$20, $2

ori 		$7, $24, 0x4365
mult		$7, $10

ori 		$6, $9, 0x1289
mult		$6, $6

ori 		$2, $26, 0x2079
ori 		$2 , $2, 0x6d76

end4:
ori 		$6, $0, 0x666

jal 		tag_1
ori 		$3 , $2, 0x878
ori 		$31 , $6, 0x26b1
tag_1:
addu		$31, $31, $26

jal 		tag_2
ori 		$30 , $13, 0xe29
ori 		$22 , $0, 0x2462
tag_2:
addu		$31, $18, $31

jal 		tag_3
ori 		$25 , $31, 0x5f34
ori 		$9 , $31, 0x6da6
tag_3:
addu		$31, $31, $31

jal 		tag_4
ori 		$13 , $17, 0x1d5e
ori 		$12 , $3, 0x7e0e
tag_4:
sll 		$31 , $31, 12

jal 		tag_5
ori 		$0 , $30, 0x36a1
ori 		$2 , $11, 0x721d
tag_5:
mthi		$31

jal 		tag_6
ori 		$1 , $31, 0x1003
ori 		$15 , $4, 0x607
tag_6:
mult		$20, $31

jal 		tag_7
ori 		$27 , $5, 0x3305
ori 		$9 , $1, 0x6b28
tag_7:
mult		$31, $5

jal 		tag_8
ori 		$14 , $12, 0x32e7
ori 		$8 , $22, 0x4346
tag_8:
mult		$31, $31

jal 		tag_9
ori 		$8 , $19, 0x1edc
ori 		$30 , $30, 0x578d
tag_9:
ori 		$31 , $31, 0x71f2

end5:
ori 		$6, $0, 0x666

addu		$11, $11, $17

addu		$31, $0, $31

addu		$16, $16, $16

sll 		$27 , $27, 25

mthi		$6

mult		$30, $12

mult		$7, $24

mult		$19, $19

ori 		$13 , $13, 0x67d0

end6:
ori 		$6, $0, 0x666

addu		$30, $30, $2

addu		$30, $27, $30

addu		$2, $2, $2

sll 		$6 , $6, 22

mthi		$11

mult		$26, $12

mult		$16, $31

mult		$16, $16

ori 		$16 , $16, 0x46a7

end7:
ori 		$6, $0, 0x666

