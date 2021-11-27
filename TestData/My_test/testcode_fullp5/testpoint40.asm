.text
ori $0 $0 8
ori $1 $0 28
ori $2 $0 32
ori $3 $0 68
ori $4 $0 72
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
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
beq $0 $8 beq_0
addu $8 $2 $8
beq_0:
lw $1 0($1)
beq $1 $4 beq_1
addu $3 $6 $4
beq_1:
lw $2 0($2)
beq $2 $8 beq_2
addu $2 $5 $8
beq_2:
lw $3 0($3)
beq $3 $0 beq_3
addu $7 $4 $0
beq_3:
lw $4 0($4)
beq $4 $9 beq_4
addu $4 $6 $9
beq_4:
lw $5 0($5)
beq $5 $1 beq_5
addu $4 $1 $1
beq_5:
lw $6 0($6)
beq $6 $0 beq_6
addu $5 $0 $0
beq_6:
lw $7 0($7)
beq $7 $9 beq_7
addu $3 $4 $9
beq_7:
lw $8 0($8)
beq $8 $6 beq_8
addu $9 $2 $6
beq_8:
lw $9 0($9)
beq $9 $1 beq_9
addu $1 $0 $1
beq_9:
ori $1 $0 28
ori $2 $0 32
ori $3 $0 68
ori $4 $0 72
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
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
beq $1 $4 beq_10
addu $4 $3 $4
beq_10:
lw $2 0($2)
beq $2 $8 beq_11
addu $0 $2 $8
beq_11:
lw $3 0($3)
beq $3 $8 beq_12
addu $4 $1 $8
beq_12:
lw $4 0($4)
beq $4 $2 beq_13
addu $7 $8 $2
beq_13:
lw $5 0($5)
beq $5 $3 beq_14
addu $9 $6 $3
beq_14:
lw $6 0($6)
beq $6 $1 beq_15
addu $3 $0 $1
beq_15:
lw $7 0($7)
beq $7 $1 beq_16
addu $7 $7 $1
beq_16:
lw $8 0($8)
beq $8 $4 beq_17
addu $10 $4 $4
beq_17:
lw $9 0($9)
beq $9 $2 beq_18
addu $4 $7 $2
beq_18:
lw $10 0($10)
beq $10 $9 beq_19
addu $7 $7 $9
beq_19:
ori $2 $0 32
ori $3 $0 68
ori $4 $0 72
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
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
beq $2 $9 beq_20
addu $6 $4 $9
beq_20:
lw $3 0($3)
beq $3 $9 beq_21
addu $2 $2 $9
beq_21:
lw $4 0($4)
beq $4 $6 beq_22
addu $4 $3 $6
beq_22:
lw $5 0($5)
beq $5 $6 beq_23
addu $3 $0 $6
beq_23:
lw $6 0($6)
beq $6 $2 beq_24
addu $5 $3 $2
beq_24:
lw $7 0($7)
beq $7 $11 beq_25
addu $1 $7 $11
beq_25:
lw $8 0($8)
beq $8 $1 beq_26
addu $11 $5 $1
beq_26:
lw $9 0($9)
beq $9 $0 beq_27
addu $7 $6 $0
beq_27:
lw $10 0($10)
beq $10 $2 beq_28
addu $5 $9 $2
beq_28:
lw $11 0($11)
beq $11 $8 beq_29
addu $11 $5 $8
beq_29:
ori $3 $0 68
ori $4 $0 72
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
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
beq $3 $4 beq_30
addu $1 $12 $4
beq_30:
lw $4 0($4)
beq $4 $2 beq_31
addu $8 $11 $2
beq_31:
lw $5 0($5)
beq $5 $8 beq_32
addu $0 $10 $8
beq_32:
lw $6 0($6)
beq $6 $4 beq_33
addu $10 $9 $4
beq_33:
lw $7 0($7)
beq $7 $11 beq_34
addu $6 $5 $11
beq_34:
lw $8 0($8)
beq $8 $5 beq_35
addu $3 $5 $5
beq_35:
lw $9 0($9)
beq $9 $1 beq_36
addu $0 $2 $1
beq_36:
lw $10 0($10)
beq $10 $1 beq_37
addu $3 $11 $1
beq_37:
lw $11 0($11)
beq $11 $11 beq_38
addu $5 $8 $11
beq_38:
lw $12 0($12)
beq $12 $9 beq_39
addu $5 $0 $9
beq_39:
ori $4 $0 72
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
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
beq $4 $4 beq_40
addu $7 $8 $4
beq_40:
lw $5 0($5)
beq $5 $7 beq_41
addu $1 $5 $7
beq_41:
lw $6 0($6)
beq $6 $5 beq_42
addu $13 $10 $5
beq_42:
lw $7 0($7)
beq $7 $11 beq_43
addu $9 $10 $11
beq_43:
lw $8 0($8)
beq $8 $3 beq_44
addu $6 $1 $3
beq_44:
lw $9 0($9)
beq $9 $13 beq_45
addu $6 $8 $13
beq_45:
lw $10 0($10)
beq $10 $11 beq_46
addu $0 $10 $11
beq_46:
lw $11 0($11)
beq $11 $8 beq_47
addu $12 $6 $8
beq_47:
lw $12 0($12)
beq $12 $12 beq_48
addu $10 $2 $12
beq_48:
lw $13 0($13)
beq $13 $0 beq_49
addu $7 $2 $0
beq_49:
ori $5 $0 92
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
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
beq $5 $1 beq_50
addu $3 $2 $1
beq_50:
lw $6 0($6)
beq $6 $6 beq_51
addu $14 $8 $6
beq_51:
lw $7 0($7)
beq $7 $13 beq_52
addu $12 $14 $13
beq_52:
lw $8 0($8)
beq $8 $0 beq_53
addu $4 $12 $0
beq_53:
lw $9 0($9)
beq $9 $6 beq_54
addu $10 $14 $6
beq_54:
lw $10 0($10)
beq $10 $5 beq_55
addu $10 $5 $5
beq_55:
lw $11 0($11)
beq $11 $3 beq_56
addu $1 $4 $3
beq_56:
lw $12 0($12)
beq $12 $11 beq_57
addu $1 $13 $11
beq_57:
lw $13 0($13)
beq $13 $4 beq_58
addu $13 $14 $4
beq_58:
lw $14 0($14)
beq $14 $3 beq_59
addu $11 $0 $3
beq_59:
ori $6 $0 120
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
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
beq $6 $12 beq_60
addu $14 $5 $12
beq_60:
lw $7 0($7)
beq $7 $15 beq_61
addu $4 $0 $15
beq_61:
lw $8 0($8)
beq $8 $9 beq_62
addu $14 $15 $9
beq_62:
lw $9 0($9)
beq $9 $13 beq_63
addu $7 $4 $13
beq_63:
lw $10 0($10)
beq $10 $13 beq_64
addu $1 $5 $13
beq_64:
lw $11 0($11)
beq $11 $3 beq_65
addu $3 $14 $3
beq_65:
lw $12 0($12)
beq $12 $15 beq_66
addu $10 $1 $15
beq_66:
lw $13 0($13)
beq $13 $15 beq_67
addu $1 $4 $15
beq_67:
lw $14 0($14)
beq $14 $0 beq_68
addu $4 $10 $0
beq_68:
lw $15 0($15)
beq $15 $8 beq_69
addu $4 $4 $8
beq_69:
ori $7 $0 128
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
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
beq $7 $12 beq_70
addu $1 $11 $12
beq_70:
lw $8 0($8)
beq $8 $16 beq_71
addu $10 $8 $16
beq_71:
lw $9 0($9)
beq $9 $2 beq_72
addu $13 $7 $2
beq_72:
lw $10 0($10)
beq $10 $12 beq_73
addu $7 $0 $12
beq_73:
lw $11 0($11)
beq $11 $2 beq_74
addu $1 $1 $2
beq_74:
lw $12 0($12)
beq $12 $13 beq_75
addu $7 $6 $13
beq_75:
lw $13 0($13)
beq $13 $7 beq_76
addu $14 $9 $7
beq_76:
lw $14 0($14)
beq $14 $8 beq_77
addu $16 $14 $8
beq_77:
lw $15 0($15)
beq $15 $5 beq_78
addu $4 $6 $5
beq_78:
lw $16 0($16)
beq $16 $0 beq_79
addu $12 $5 $0
beq_79:
ori $8 $0 152
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
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
beq $8 $3 beq_80
addu $17 $9 $3
beq_80:
lw $9 0($9)
beq $9 $10 beq_81
addu $15 $17 $10
beq_81:
lw $10 0($10)
beq $10 $4 beq_82
addu $12 $0 $4
beq_82:
lw $11 0($11)
beq $11 $15 beq_83
addu $3 $4 $15
beq_83:
lw $12 0($12)
beq $12 $8 beq_84
addu $9 $7 $8
beq_84:
lw $13 0($13)
beq $13 $6 beq_85
addu $10 $15 $6
beq_85:
lw $14 0($14)
beq $14 $7 beq_86
addu $13 $2 $7
beq_86:
lw $15 0($15)
beq $15 $7 beq_87
addu $13 $4 $7
beq_87:
lw $16 0($16)
beq $16 $9 beq_88
addu $4 $9 $9
beq_88:
lw $17 0($17)
beq $17 $17 beq_89
addu $13 $15 $17
beq_89:
ori $9 $0 160
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
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
beq $9 $9 beq_90
addu $11 $3 $9
beq_90:
lw $10 0($10)
beq $10 $1 beq_91
addu $16 $13 $1
beq_91:
lw $11 0($11)
beq $11 $10 beq_92
addu $17 $4 $10
beq_92:
lw $12 0($12)
beq $12 $0 beq_93
addu $3 $16 $0
beq_93:
lw $13 0($13)
beq $13 $12 beq_94
addu $17 $8 $12
beq_94:
lw $14 0($14)
beq $14 $17 beq_95
addu $18 $16 $17
beq_95:
lw $15 0($15)
beq $15 $4 beq_96
addu $14 $2 $4
beq_96:
lw $16 0($16)
beq $16 $11 beq_97
addu $12 $0 $11
beq_97:
lw $17 0($17)
beq $17 $1 beq_98
addu $16 $7 $1
beq_98:
lw $18 0($18)
beq $18 $4 beq_99
addu $14 $16 $4
beq_99:
ori $10 $0 8
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
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
beq $10 $17 beq_100
addu $19 $4 $17
beq_100:
lw $11 0($11)
beq $11 $5 beq_101
addu $13 $11 $5
beq_101:
lw $12 0($12)
beq $12 $0 beq_102
addu $11 $7 $0
beq_102:
lw $13 0($13)
beq $13 $13 beq_103
addu $3 $14 $13
beq_103:
lw $14 0($14)
beq $14 $9 beq_104
addu $6 $1 $9
beq_104:
lw $15 0($15)
beq $15 $19 beq_105
addu $4 $17 $19
beq_105:
lw $16 0($16)
beq $16 $3 beq_106
addu $3 $15 $3
beq_106:
lw $17 0($17)
beq $17 $9 beq_107
addu $9 $15 $9
beq_107:
lw $18 0($18)
beq $18 $9 beq_108
addu $16 $19 $9
beq_108:
lw $19 0($19)
beq $19 $3 beq_109
addu $1 $8 $3
beq_109:
ori $11 $0 28
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
ori $19 $0 160
ori $20 $0 8
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
beq $11 $15 beq_110
addu $9 $11 $15
beq_110:
lw $12 0($12)
beq $12 $20 beq_111
addu $5 $1 $20
beq_111:
lw $13 0($13)
beq $13 $13 beq_112
addu $10 $0 $13
beq_112:
lw $14 0($14)
beq $14 $16 beq_113
addu $17 $4 $16
beq_113:
lw $15 0($15)
beq $15 $6 beq_114
addu $4 $20 $6
beq_114:
lw $16 0($16)
beq $16 $13 beq_115
addu $6 $6 $13
beq_115:
lw $17 0($17)
beq $17 $12 beq_116
addu $11 $10 $12
beq_116:
lw $18 0($18)
beq $18 $3 beq_117
addu $16 $17 $3
beq_117:
lw $19 0($19)
beq $19 $3 beq_118
addu $19 $17 $3
beq_118:
lw $20 0($20)
beq $20 $4 beq_119
addu $16 $3 $4
beq_119:
ori $12 $0 32
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
ori $19 $0 160
ori $20 $0 8
ori $21 $0 28
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
beq $12 $11 beq_120
addu $20 $1 $11
beq_120:
lw $13 0($13)
beq $13 $12 beq_121
addu $2 $2 $12
beq_121:
lw $14 0($14)
beq $14 $15 beq_122
addu $10 $18 $15
beq_122:
lw $15 0($15)
beq $15 $16 beq_123
addu $11 $17 $16
beq_123:
lw $16 0($16)
beq $16 $14 beq_124
addu $6 $12 $14
beq_124:
lw $17 0($17)
beq $17 $10 beq_125
addu $10 $12 $10
beq_125:
lw $18 0($18)
beq $18 $15 beq_126
addu $13 $17 $15
beq_126:
lw $19 0($19)
beq $19 $2 beq_127
addu $0 $11 $2
beq_127:
lw $20 0($20)
beq $20 $7 beq_128
addu $14 $9 $7
beq_128:
lw $21 0($21)
beq $21 $21 beq_129
addu $21 $5 $21
beq_129:
ori $13 $0 68
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
ori $19 $0 160
ori $20 $0 8
ori $21 $0 28
ori $22 $0 32
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
beq $13 $15 beq_130
addu $20 $13 $15
beq_130:
lw $14 0($14)
beq $14 $22 beq_131
addu $13 $17 $22
beq_131:
lw $15 0($15)
beq $15 $6 beq_132
addu $17 $15 $6
beq_132:
lw $16 0($16)
beq $16 $1 beq_133
addu $2 $15 $1
beq_133:
lw $17 0($17)
beq $17 $7 beq_134
addu $11 $2 $7
beq_134:
lw $18 0($18)
beq $18 $8 beq_135
addu $4 $16 $8
beq_135:
lw $19 0($19)
beq $19 $13 beq_136
addu $19 $17 $13
beq_136:
lw $20 0($20)
beq $20 $5 beq_137
addu $11 $0 $5
beq_137:
lw $21 0($21)
beq $21 $6 beq_138
addu $10 $13 $6
beq_138:
lw $22 0($22)
beq $22 $13 beq_139
addu $14 $7 $13
beq_139:
ori $14 $0 72
ori $15 $0 92
ori $16 $0 120
ori $17 $0 128
ori $18 $0 152
ori $19 $0 160
ori $20 $0 8
ori $21 $0 28
ori $22 $0 32
ori $23 $0 68
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
beq $14 $11 beq_140
addu $9 $5 $11
beq_140:
lw $15 0($15)
beq $15 $2 beq_141
addu $14 $7 $2
beq_141:
lw $16 0($16)
beq $16 $13 beq_142
addu $2 $0 $13
beq_142:
lw $17 0($17)
beq $17 $20 beq_143
addu $10 $13 $20
beq_143:
lw $18 0($18)
beq $18 $18 beq_144
addu $7 $16 $18
beq_144:
lw $19 0($19)
beq $19 $21 beq_145
addu $11 $10 $21
beq_145:
lw $20 0($20)
beq $20 $19 beq_146
addu $14 $14 $19
beq_146:
lw $21 0($21)
beq $21 $9 beq_147
addu $15 $3 $9
beq_147:
lw $22 0($22)
beq $22 $7 beq_148
addu $5 $22 $7
beq_148:
lw $23 0($23)
beq $23 $4 beq_149
addu $3 $21 $4
beq_149:
