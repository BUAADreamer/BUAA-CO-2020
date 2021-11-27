.text
ori $0 $0 0
ori $1 $0 36
ori $2 $0 36
ori $3 $0 52
ori $4 $0 56
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
sw $1 0($0)
sw $2 0($1)
sw $3 0($2)
sw $4 0($3)
sw $5 0($4)
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
lw $0 0($0)
beq $6 $0 beq_0
addu $1 $6 $1
beq_0:
lw $1 0($1)
beq $9 $1 beq_1
addu $3 $9 $8
beq_1:
lw $2 0($2)
beq $7 $2 beq_2
addu $4 $7 $2
beq_2:
lw $3 0($3)
beq $4 $3 beq_3
addu $4 $4 $4
beq_3:
lw $4 0($4)
beq $7 $4 beq_4
addu $5 $7 $3
beq_4:
lw $5 0($5)
beq $0 $5 beq_5
addu $0 $0 $2
beq_5:
lw $6 0($6)
beq $0 $6 beq_6
addu $2 $0 $4
beq_6:
lw $7 0($7)
beq $9 $7 beq_7
addu $5 $9 $6
beq_7:
lw $8 0($8)
beq $2 $8 beq_8
addu $1 $2 $6
beq_8:
lw $9 0($9)
beq $7 $9 beq_9
addu $1 $7 $4
beq_9:
ori $1 $0 36
ori $2 $0 36
ori $3 $0 52
ori $4 $0 56
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
sw $2 0($1)
sw $3 0($2)
sw $4 0($3)
sw $5 0($4)
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
lw $1 0($1)
beq $10 $1 beq_10
addu $10 $10 $4
beq_10:
lw $2 0($2)
beq $4 $2 beq_11
addu $7 $4 $4
beq_11:
lw $3 0($3)
beq $6 $3 beq_12
addu $3 $6 $7
beq_12:
lw $4 0($4)
beq $10 $4 beq_13
addu $2 $10 $10
beq_13:
lw $5 0($5)
beq $10 $5 beq_14
addu $4 $10 $4
beq_14:
lw $6 0($6)
beq $1 $6 beq_15
addu $9 $1 $9
beq_15:
lw $7 0($7)
beq $3 $7 beq_16
addu $10 $3 $4
beq_16:
lw $8 0($8)
beq $7 $8 beq_17
addu $3 $7 $7
beq_17:
lw $9 0($9)
beq $6 $9 beq_18
addu $4 $6 $10
beq_18:
lw $10 0($10)
beq $8 $10 beq_19
addu $5 $8 $9
beq_19:
ori $2 $0 36
ori $3 $0 52
ori $4 $0 56
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
sw $3 0($2)
sw $4 0($3)
sw $5 0($4)
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
lw $2 0($2)
beq $0 $2 beq_20
addu $7 $0 $8
beq_20:
lw $3 0($3)
beq $1 $3 beq_21
addu $2 $1 $6
beq_21:
lw $4 0($4)
beq $2 $4 beq_22
addu $6 $2 $1
beq_22:
lw $5 0($5)
beq $8 $5 beq_23
addu $11 $8 $10
beq_23:
lw $6 0($6)
beq $11 $6 beq_24
addu $7 $11 $6
beq_24:
lw $7 0($7)
beq $8 $7 beq_25
addu $4 $8 $11
beq_25:
lw $8 0($8)
beq $0 $8 beq_26
addu $7 $0 $11
beq_26:
lw $9 0($9)
beq $9 $9 beq_27
addu $2 $9 $3
beq_27:
lw $10 0($10)
beq $3 $10 beq_28
addu $1 $3 $1
beq_28:
lw $11 0($11)
beq $10 $11 beq_29
addu $2 $10 $2
beq_29:
ori $3 $0 52
ori $4 $0 56
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
sw $4 0($3)
sw $5 0($4)
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
lw $3 0($3)
beq $3 $3 beq_30
addu $6 $3 $7
beq_30:
lw $4 0($4)
beq $1 $4 beq_31
addu $7 $1 $10
beq_31:
lw $5 0($5)
beq $7 $5 beq_32
addu $12 $7 $10
beq_32:
lw $6 0($6)
beq $11 $6 beq_33
addu $5 $11 $9
beq_33:
lw $7 0($7)
beq $8 $7 beq_34
addu $1 $8 $3
beq_34:
lw $8 0($8)
beq $1 $8 beq_35
addu $0 $1 $8
beq_35:
lw $9 0($9)
beq $12 $9 beq_36
addu $10 $12 $12
beq_36:
lw $10 0($10)
beq $6 $10 beq_37
addu $12 $6 $3
beq_37:
lw $11 0($11)
beq $1 $11 beq_38
addu $12 $1 $4
beq_38:
lw $12 0($12)
beq $0 $12 beq_39
addu $11 $0 $12
beq_39:
ori $4 $0 56
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
sw $5 0($4)
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
lw $4 0($4)
beq $8 $4 beq_40
addu $9 $8 $10
beq_40:
lw $5 0($5)
beq $2 $5 beq_41
addu $10 $2 $2
beq_41:
lw $6 0($6)
beq $13 $6 beq_42
addu $0 $13 $3
beq_42:
lw $7 0($7)
beq $3 $7 beq_43
addu $2 $3 $4
beq_43:
lw $8 0($8)
beq $8 $8 beq_44
addu $2 $8 $12
beq_44:
lw $9 0($9)
beq $11 $9 beq_45
addu $3 $11 $13
beq_45:
lw $10 0($10)
beq $12 $10 beq_46
addu $0 $12 $9
beq_46:
lw $11 0($11)
beq $12 $11 beq_47
addu $7 $12 $5
beq_47:
lw $12 0($12)
beq $4 $12 beq_48
addu $2 $4 $11
beq_48:
lw $13 0($13)
beq $13 $13 beq_49
addu $4 $13 $8
beq_49:
ori $5 $0 64
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
sw $6 0($5)
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
lw $5 0($5)
beq $2 $5 beq_50
addu $0 $2 $10
beq_50:
lw $6 0($6)
beq $6 $6 beq_51
addu $13 $6 $3
beq_51:
lw $7 0($7)
beq $4 $7 beq_52
addu $1 $4 $6
beq_52:
lw $8 0($8)
beq $1 $8 beq_53
addu $0 $1 $10
beq_53:
lw $9 0($9)
beq $3 $9 beq_54
addu $11 $3 $5
beq_54:
lw $10 0($10)
beq $3 $10 beq_55
addu $7 $3 $8
beq_55:
lw $11 0($11)
beq $13 $11 beq_56
addu $13 $13 $14
beq_56:
lw $12 0($12)
beq $0 $12 beq_57
addu $4 $0 $3
beq_57:
lw $13 0($13)
beq $11 $13 beq_58
addu $12 $11 $1
beq_58:
lw $14 0($14)
beq $0 $14 beq_59
addu $2 $0 $7
beq_59:
ori $6 $0 88
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
sw $7 0($6)
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
lw $6 0($6)
beq $11 $6 beq_60
addu $1 $11 $8
beq_60:
lw $7 0($7)
beq $2 $7 beq_61
addu $0 $2 $5
beq_61:
lw $8 0($8)
beq $5 $8 beq_62
addu $12 $5 $14
beq_62:
lw $9 0($9)
beq $3 $9 beq_63
addu $14 $3 $3
beq_63:
lw $10 0($10)
beq $10 $10 beq_64
addu $2 $10 $10
beq_64:
lw $11 0($11)
beq $1 $11 beq_65
addu $5 $1 $0
beq_65:
lw $12 0($12)
beq $5 $12 beq_66
addu $15 $5 $4
beq_66:
lw $13 0($13)
beq $9 $13 beq_67
addu $8 $9 $4
beq_67:
lw $14 0($14)
beq $5 $14 beq_68
addu $10 $5 $12
beq_68:
lw $15 0($15)
beq $13 $15 beq_69
addu $5 $13 $15
beq_69:
ori $7 $0 96
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
sw $8 0($7)
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
lw $7 0($7)
beq $15 $7 beq_70
addu $6 $15 $8
beq_70:
lw $8 0($8)
beq $8 $8 beq_71
addu $13 $8 $1
beq_71:
lw $9 0($9)
beq $9 $9 beq_72
addu $9 $9 $11
beq_72:
lw $10 0($10)
beq $13 $10 beq_73
addu $11 $13 $3
beq_73:
lw $11 0($11)
beq $1 $11 beq_74
addu $11 $1 $11
beq_74:
lw $12 0($12)
beq $3 $12 beq_75
addu $12 $3 $2
beq_75:
lw $13 0($13)
beq $16 $13 beq_76
addu $2 $16 $1
beq_76:
lw $14 0($14)
beq $7 $14 beq_77
addu $10 $7 $7
beq_77:
lw $15 0($15)
beq $15 $15 beq_78
addu $6 $15 $11
beq_78:
lw $16 0($16)
beq $1 $16 beq_79
addu $0 $1 $10
beq_79:
ori $8 $0 128
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
sw $9 0($8)
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
lw $8 0($8)
beq $1 $8 beq_80
addu $5 $1 $5
beq_80:
lw $9 0($9)
beq $17 $9 beq_81
addu $2 $17 $12
beq_81:
lw $10 0($10)
beq $5 $10 beq_82
addu $12 $5 $15
beq_82:
lw $11 0($11)
beq $6 $11 beq_83
addu $11 $6 $1
beq_83:
lw $12 0($12)
beq $15 $12 beq_84
addu $2 $15 $2
beq_84:
lw $13 0($13)
beq $7 $13 beq_85
addu $5 $7 $1
beq_85:
lw $14 0($14)
beq $12 $14 beq_86
addu $10 $12 $1
beq_86:
lw $15 0($15)
beq $17 $15 beq_87
addu $6 $17 $15
beq_87:
lw $16 0($16)
beq $2 $16 beq_88
addu $2 $2 $14
beq_88:
lw $17 0($17)
beq $16 $17 beq_89
addu $1 $16 $7
beq_89:
ori $9 $0 160
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
sw $10 0($9)
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
lw $9 0($9)
beq $6 $9 beq_90
addu $6 $6 $12
beq_90:
lw $10 0($10)
beq $2 $10 beq_91
addu $15 $2 $11
beq_91:
lw $11 0($11)
beq $14 $11 beq_92
addu $14 $14 $0
beq_92:
lw $12 0($12)
beq $10 $12 beq_93
addu $18 $10 $10
beq_93:
lw $13 0($13)
beq $12 $13 beq_94
addu $13 $12 $11
beq_94:
lw $14 0($14)
beq $4 $14 beq_95
addu $10 $4 $12
beq_95:
lw $15 0($15)
beq $2 $15 beq_96
addu $1 $2 $17
beq_96:
lw $16 0($16)
beq $15 $16 beq_97
addu $12 $15 $10
beq_97:
lw $17 0($17)
beq $16 $17 beq_98
addu $8 $16 $5
beq_98:
lw $18 0($18)
beq $15 $18 beq_99
addu $5 $15 $14
beq_99:
ori $10 $0 0
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
ori $19 $0 160
sw $11 0($10)
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
lw $10 0($10)
beq $7 $10 beq_100
addu $2 $7 $18
beq_100:
lw $11 0($11)
beq $2 $11 beq_101
addu $2 $2 $11
beq_101:
lw $12 0($12)
beq $18 $12 beq_102
addu $5 $18 $12
beq_102:
lw $13 0($13)
beq $0 $13 beq_103
addu $11 $0 $3
beq_103:
lw $14 0($14)
beq $7 $14 beq_104
addu $12 $7 $5
beq_104:
lw $15 0($15)
beq $8 $15 beq_105
addu $3 $8 $12
beq_105:
lw $16 0($16)
beq $10 $16 beq_106
addu $16 $10 $9
beq_106:
lw $17 0($17)
beq $5 $17 beq_107
addu $12 $5 $17
beq_107:
lw $18 0($18)
beq $11 $18 beq_108
addu $9 $11 $10
beq_108:
lw $19 0($19)
beq $1 $19 beq_109
addu $5 $1 $5
beq_109:
ori $11 $0 36
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
ori $19 $0 160
ori $20 $0 0
sw $12 0($11)
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
lw $11 0($11)
beq $9 $11 beq_110
addu $16 $9 $13
beq_110:
lw $12 0($12)
beq $18 $12 beq_111
addu $16 $18 $14
beq_111:
lw $13 0($13)
beq $4 $13 beq_112
addu $15 $4 $14
beq_112:
lw $14 0($14)
beq $9 $14 beq_113
addu $1 $9 $18
beq_113:
lw $15 0($15)
beq $1 $15 beq_114
addu $14 $1 $15
beq_114:
lw $16 0($16)
beq $16 $16 beq_115
addu $12 $16 $4
beq_115:
lw $17 0($17)
beq $1 $17 beq_116
addu $9 $1 $9
beq_116:
lw $18 0($18)
beq $18 $18 beq_117
addu $9 $18 $10
beq_117:
lw $19 0($19)
beq $16 $19 beq_118
addu $19 $16 $12
beq_118:
lw $20 0($20)
beq $14 $20 beq_119
addu $15 $14 $20
beq_119:
ori $12 $0 36
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
ori $19 $0 160
ori $20 $0 0
ori $21 $0 36
sw $13 0($12)
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
lw $12 0($12)
beq $12 $12 beq_120
addu $1 $12 $17
beq_120:
lw $13 0($13)
beq $1 $13 beq_121
addu $14 $1 $0
beq_121:
lw $14 0($14)
beq $14 $14 beq_122
addu $15 $14 $11
beq_122:
lw $15 0($15)
beq $19 $15 beq_123
addu $21 $19 $19
beq_123:
lw $16 0($16)
beq $12 $16 beq_124
addu $12 $12 $21
beq_124:
lw $17 0($17)
beq $7 $17 beq_125
addu $8 $7 $6
beq_125:
lw $18 0($18)
beq $19 $18 beq_126
addu $7 $19 $10
beq_126:
lw $19 0($19)
beq $16 $19 beq_127
addu $18 $16 $2
beq_127:
lw $20 0($20)
beq $0 $20 beq_128
addu $16 $0 $10
beq_128:
lw $21 0($21)
beq $21 $21 beq_129
addu $19 $21 $9
beq_129:
ori $13 $0 52
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
ori $19 $0 160
ori $20 $0 0
ori $21 $0 36
ori $22 $0 36
sw $14 0($13)
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
lw $13 0($13)
beq $11 $13 beq_130
addu $14 $11 $13
beq_130:
lw $14 0($14)
beq $20 $14 beq_131
addu $12 $20 $9
beq_131:
lw $15 0($15)
beq $5 $15 beq_132
addu $16 $5 $7
beq_132:
lw $16 0($16)
beq $8 $16 beq_133
addu $8 $8 $19
beq_133:
lw $17 0($17)
beq $9 $17 beq_134
addu $17 $9 $18
beq_134:
lw $18 0($18)
beq $14 $18 beq_135
addu $14 $14 $18
beq_135:
lw $19 0($19)
beq $14 $19 beq_136
addu $2 $14 $14
beq_136:
lw $20 0($20)
beq $17 $20 beq_137
addu $14 $17 $22
beq_137:
lw $21 0($21)
beq $0 $21 beq_138
addu $3 $0 $9
beq_138:
lw $22 0($22)
beq $7 $22 beq_139
addu $9 $7 $2
beq_139:
ori $14 $0 56
ori $15 $0 64
ori $16 $0 88
ori $17 $0 96
ori $18 $0 128
ori $19 $0 160
ori $20 $0 0
ori $21 $0 36
ori $22 $0 36
ori $23 $0 52
sw $15 0($14)
sw $16 0($15)
sw $17 0($16)
sw $18 0($17)
sw $19 0($18)
sw $20 0($19)
sw $21 0($20)
sw $22 0($21)
sw $23 0($22)
sw $24 0($23)
lw $14 0($14)
beq $15 $14 beq_140
addu $11 $15 $6
beq_140:
lw $15 0($15)
beq $13 $15 beq_141
addu $2 $13 $12
beq_141:
lw $16 0($16)
beq $5 $16 beq_142
addu $11 $5 $4
beq_142:
lw $17 0($17)
beq $7 $17 beq_143
addu $6 $7 $8
beq_143:
lw $18 0($18)
beq $18 $18 beq_144
addu $5 $18 $7
beq_144:
lw $19 0($19)
beq $11 $19 beq_145
addu $8 $11 $16
beq_145:
lw $20 0($20)
beq $15 $20 beq_146
addu $8 $15 $22
beq_146:
lw $21 0($21)
beq $11 $21 beq_147
addu $1 $11 $3
beq_147:
lw $22 0($22)
beq $4 $22 beq_148
addu $20 $4 $13
beq_148:
lw $23 0($23)
beq $0 $23 beq_149
addu $23 $0 $16
beq_149:
