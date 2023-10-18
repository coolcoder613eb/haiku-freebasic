	.intel_syntax noprefix

.section .text
.balign 16

.globl _CGFXPSET@4
_CGFXPSET@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00E4:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-24], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_00E7
mov dword ptr [ebp-8], 5
jmp .L_00E6
.L_00E7:
mov dword ptr [ebp-8], 4
.L_00E6:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00E9
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_00E8
.L_00E9:
push 0
call _LEXSKIPTOKEN@4
.L_00E8:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EB
jmp .L_00E5
.L_00EB:
.L_00EA:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00ED
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_00EC
.L_00ED:
push 0
call _LEXSKIPTOKEN@4
.L_00EC:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00EF
jmp .L_00E5
.L_00EF:
.L_00EE:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00F1
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00F0
.L_00F1:
push 0
call _LEXSKIPTOKEN@4
.L_00F0:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00F3
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00F5
jmp .L_00E5
.L_00F5:
.L_00F4:
jmp .L_00F2
.L_00F3:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-8], -2147483648
.L_00F2:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _RTLGFXPSET@24
mov dword ptr [ebp-4], eax
.L_00E5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXLINE@0
_CGFXLINE@0:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_00F6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-4], 0
push 0
push 45
call _HMATCH@8
test eax, eax
je .L_00F9
mov dword ptr [ebp-8], 5
push 15
push dword ptr [_Lt_012A+4]
push dword ptr [_Lt_012A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-20], eax
push 15
push dword ptr [_Lt_012A+4]
push dword ptr [_Lt_012A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-24], eax
jmp .L_00F8
.L_00F9:
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-40], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_00FB
mov dword ptr [ebp-8], 5
jmp .L_00FA
.L_00FB:
mov dword ptr [ebp-8], 4
.L_00FA:
push 0
push 40
call _HMATCH@8
test eax, eax
je .L_00FD
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00FF
jmp .L_00F7
.L_00FF:
.L_00FE:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0101
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0100
.L_0101:
push 0
call _LEXSKIPTOKEN@4
.L_0100:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0103
jmp .L_00F7
.L_0103:
.L_0102:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0105
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0104
.L_0105:
push 0
call _LEXSKIPTOKEN@4
.L_0104:
jmp .L_00FC
.L_00FD:
mov dword ptr [ebp-8], 5
push 15
push dword ptr [_Lt_012A+4]
push dword ptr [_Lt_012A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-20], eax
push 15
push dword ptr [_Lt_012A+4]
push dword ptr [_Lt_012A]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-24], eax
.L_00FC:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .L_0107
push 0
push 0
push 15
call _ERRREPORT@12
jmp .L_00F7
.L_0107:
.L_0106:
.L_00F8:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_0109
cmp dword ptr [ebp-8], 5
jne .L_010B
mov dword ptr [ebp-8], 3
jmp .L_010A
.L_010B:
mov dword ptr [ebp-8], 1
.L_010A:
jmp .L_0108
.L_0109:
cmp dword ptr [ebp-8], 5
jne .L_010D
mov dword ptr [ebp-8], 2
jmp .L_010C
.L_010D:
mov dword ptr [ebp-8], 0
.L_010C:
.L_0108:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_010F
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_010E
.L_010F:
push 0
call _LEXSKIPTOKEN@4
.L_010E:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0111
jmp .L_00F7
.L_0111:
.L_0110:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0113
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0112
.L_0113:
push 0
call _LEXSKIPTOKEN@4
.L_0112:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0115
jmp .L_00F7
.L_0115:
.L_0114:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0117
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0116
.L_0117:
push 0
call _LEXSKIPTOKEN@4
.L_0116:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0119
call _CEXPRESSION@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_011B
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.L_011B:
.L_011A:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_011D
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrInit@20
push 2
push offset _Lt_0121
push -1
lea eax, [ebp-52]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0120
.L_0122:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 1
jmp .L_011E
.L_0120:
push 3
push offset _Lt_0124
push -1
lea eax, [ebp-52]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0123
.L_0125:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 2
.L_0123:
.L_011E:
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0127
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0129
jmp .L_00F7
.L_0129:
.L_0128:
.L_0127:
.L_0126:
.L_011D:
.L_011C:
jmp .L_0118
.L_0119:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.L_0118:
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-40]
call _RTLGFXLINE@36
mov dword ptr [ebp-4], eax
.L_00F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXCIRCLE@0
_CGFXCIRCLE@0:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-4], 0
.L_012B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-44], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_012E
mov dword ptr [ebp-8], 5
jmp .L_012D
.L_012E:
mov dword ptr [ebp-8], 4
.L_012D:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0130
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_012F
.L_0130:
push 0
call _LEXSKIPTOKEN@4
.L_012F:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0132
jmp .L_012C
.L_0132:
.L_0131:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0134
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0133
.L_0134:
push 0
call _LEXSKIPTOKEN@4
.L_0133:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0136
jmp .L_012C
.L_0136:
.L_0135:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0138
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0137
.L_0138:
push 0
call _LEXSKIPTOKEN@4
.L_0137:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_013A
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0139
.L_013A:
push 0
call _LEXSKIPTOKEN@4
.L_0139:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_013C
jmp .L_012C
.L_013C:
.L_013B:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_013E
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0140
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.L_0140:
.L_013F:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0142
call _CEXPRESSION@0
mov dword ptr [ebp-32], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0144
call _CEXPRESSION@0
mov dword ptr [ebp-36], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0146
call _CEXPRESSION@0
mov dword ptr [ebp-40], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0148
push 2
push offset _Lt_0149
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
je .L_014B
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_012C
.L_014B:
.L_014A:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], -1
.L_0148:
.L_0147:
.L_0146:
.L_0145:
.L_0144:
.L_0143:
.L_0142:
.L_0141:
jmp .L_013D
.L_013E:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.L_013D:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-44]
call _RTLGFXCIRCLE@40
mov dword ptr [ebp-4], eax
.L_012C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXPAINT@0
_CGFXPAINT@0:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-4], 0
.L_014C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-24], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_014F
mov dword ptr [ebp-28], 5
jmp .L_014E
.L_014F:
mov dword ptr [ebp-28], 4
.L_014E:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0151
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0150
.L_0151:
push 0
call _LEXSKIPTOKEN@4
.L_0150:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0153
jmp .L_014D
.L_0153:
.L_0152:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0155
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0154
.L_0155:
push 0
call _LEXSKIPTOKEN@4
.L_0154:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0157
jmp .L_014D
.L_0157:
.L_0156:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0159
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0158
.L_0159:
push 0
call _LEXSKIPTOKEN@4
.L_0158:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_015B
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_015D
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_015F
jmp .L_014D
.L_015F:
.L_015E:
.L_015D:
.L_015C:
.L_015B:
.L_015A:
cmp dword ptr [ebp-16], 0
jne .L_0161
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
or dword ptr [ebp-28], -2147483648
.L_0161:
.L_0160:
cmp dword ptr [ebp-20], 0
jne .L_0163
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-28], 1073741824
.L_0163:
.L_0162:
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _RTLGFXPAINT@24
mov dword ptr [ebp-4], eax
.L_014D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXDRAWSTRING@0
_CGFXDRAWSTRING@0:
push ebp
mov ebp, esp
sub esp, 48
mov dword ptr [ebp-4], 0
.L_0164:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-4], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-8], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_0167
mov dword ptr [ebp-44], 5
jmp .L_0166
.L_0167:
mov dword ptr [ebp-44], 4
.L_0166:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0169
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0168
.L_0169:
push 0
call _LEXSKIPTOKEN@4
.L_0168:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_016B
jmp .L_0165
.L_016B:
.L_016A:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_016D
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_016C
.L_016D:
push 0
call _LEXSKIPTOKEN@4
.L_016C:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_016F
jmp .L_0165
.L_016F:
.L_016E:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0171
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0170
.L_0171:
push 0
call _LEXSKIPTOKEN@4
.L_0170:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0173
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0172
.L_0173:
push 0
call _LEXSKIPTOKEN@4
.L_0172:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0175
jmp .L_0165
.L_0175:
.L_0174:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-48], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0177
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0179
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_017B
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-48]
push eax
call _HGETMODE@16
test eax, eax
jne .L_017D
jmp .L_0165
.L_017D:
.L_017C:
.L_017B:
.L_017A:
.L_0179:
.L_0178:
.L_0177:
.L_0176:
cmp dword ptr [ebp-24], 0
jne .L_017F
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-44], -2147483648
.L_017F:
.L_017E:
push dword ptr [ebp-40]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-48]
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXDRAWSTRING@44
mov dword ptr [ebp-4], eax
.L_0165:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXDRAW@0
_CGFXDRAW@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0180:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 2048
push 369
call _HMATCH@8
test eax, eax
je .L_0183
call _CGFXDRAWSTRING@0
mov dword ptr [ebp-4], eax
jmp .L_0181
.L_0183:
.L_0182:
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0185
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0181
.L_0185:
.L_0184:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0187
push 0
push 0
push dword ptr [ebp-8]
call _HCHECKFBIMAGEEXPR@12
mov dword ptr [ebp-8], eax
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0189
jmp .L_0181
.L_0189:
.L_0188:
jmp .L_0186
.L_0187:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_018B
push 0
push -1
push 73
call _ERRREPORT@12
jmp .L_0181
.L_018B:
.L_018A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.L_0186:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXDRAW@8
mov dword ptr [ebp-4], eax
.L_0181:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXVIEW@4
_CGFXVIEW@4:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_018C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 510
je .L_0191
.L_0192:
cmp dword ptr [ebp-36], 511
jne .L_0190
.L_0191:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 1
jmp .L_018E
.L_0190:
mov dword ptr [ebp-8], 0
.L_0193:
.L_018E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push 0
push 40
call _HMATCH@8
test eax, eax
je .L_0195
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0197
jmp .L_018D
.L_0197:
.L_0196:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0199
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0198
.L_0199:
push 0
call _LEXSKIPTOKEN@4
.L_0198:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_019B
jmp .L_018D
.L_019B:
.L_019A:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_019D
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_019C
.L_019D:
push 0
call _LEXSKIPTOKEN@4
.L_019C:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .L_019F
push 0
push 0
push 15
call _ERRREPORT@12
jmp .L_018D
.L_019F:
.L_019E:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01A1
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01A0
.L_01A1:
push 0
call _LEXSKIPTOKEN@4
.L_01A0:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01A3
jmp .L_018D
.L_01A3:
.L_01A2:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01A5
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01A4
.L_01A5:
push 0
call _LEXSKIPTOKEN@4
.L_01A4:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01A7
jmp .L_018D
.L_01A7:
.L_01A6:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_01A9
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_01A8
.L_01A9:
push 0
call _LEXSKIPTOKEN@4
.L_01A8:
cmp dword ptr [ebp+8], 0
je .L_01AB
or dword ptr [ebp-8], -1073741824
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01AD
call _CEXPRESSION@0
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_01AF
and dword ptr [ebp-8], 2147483647
.L_01AF:
.L_01AE:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01B1
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_01B3
jmp .L_018D
.L_01B3:
.L_01B2:
and dword ptr [ebp-8], -1073741825
.L_01B1:
.L_01B0:
.L_01AD:
.L_01AC:
.L_01AB:
.L_01AA:
.L_0195:
.L_0194:
cmp dword ptr [ebp+8], 0
je .L_01B5
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXVIEW@28
mov dword ptr [ebp-4], eax
jmp .L_01B4
.L_01B5:
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXWINDOW@20
mov dword ptr [ebp-4], eax
.L_01B4:
.L_018D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXPALETTE@0
_CGFXPALETTE@0:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_01B6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 2048
push offset _Lt_01B8
call _HMATCHIDORKW@8
mov dword ptr [ebp-28], eax
push 2048
push 287
call _HMATCH@8
test eax, eax
je .L_01BA
push 0
mov eax, dword ptr [ebp-28]
not eax
push eax
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01BC
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_01B7
.L_01BC:
.L_01BB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 32505856
or ebx, ecx
and ebx, 480
je .L_01BD
mov dword ptr [ebp-36], 24
jmp .L_01E7
.L_01BD:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
and ecx, 31
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
add eax, -32
or ecx, eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 261632
sar ebx, 1
and ebx, 261632
or ecx, ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 32505856
or ecx, eax
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_01E7:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [_SYMB_DTYPETB+312]
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01C0
mov ecx, dword ptr [_SYMB_DTYPETB+228]
mov dword ptr [ebp-32], ecx
.L_01C0:
.L_01BF:
mov ecx, dword ptr [_SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call _RTLGFXPALETTEUSING@12
mov dword ptr [ebp-4], eax
jmp .L_01B9
.L_01BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01C2
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01C4
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01C3
.L_01C4:
push 0
call _LEXSKIPTOKEN@4
.L_01C3:
cmp dword ptr [ebp-28], 0
je .L_01C6
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01C8
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_01B7
.L_01C8:
.L_01C7:
jmp .L_01C5
.L_01C6:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01CA
jmp .L_01B7
.L_01CA:
.L_01C9:
.L_01C5:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01CC
cmp dword ptr [ebp-28], 0
je .L_01CE
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01D0
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_01B7
.L_01D0:
.L_01CF:
jmp .L_01CD
.L_01CE:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01D2
jmp .L_01B7
.L_01D2:
.L_01D1:
.L_01CD:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01D4
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01D3
.L_01D4:
push 0
call _LEXSKIPTOKEN@4
.L_01D3:
cmp dword ptr [ebp-28], 0
je .L_01D6
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01D8
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_01B7
.L_01D8:
.L_01D7:
jmp .L_01D5
.L_01D6:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01DA
jmp .L_01B7
.L_01DA:
.L_01D9:
.L_01D5:
.L_01CC:
.L_01CB:
jmp .L_01C1
.L_01C2:
cmp dword ptr [ebp-28], 0
je .L_01DC
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_01B7
.L_01DC:
.L_01DB:
.L_01C1:
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-28], 0
je .L_01DE
cmp dword ptr [ebp-16], 0
je .L_01DF
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-40], ecx
jmp .L_01E8
.L_01DF:
mov dword ptr [ebp-40], 0
.L_01E8:
mov ecx, dword ptr [ebp-40]
or dword ptr [ebp-36], ecx
cmp dword ptr [ebp-20], 0
je .L_01E1
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_01E9
.L_01E1:
mov dword ptr [ebp-44], 0
.L_01E9:
mov eax, dword ptr [ebp-44]
or dword ptr [ebp-36], eax
cmp dword ptr [ebp-24], 0
je .L_01E3
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
jmp .L_01EA
.L_01E3:
mov dword ptr [ebp-48], 0
.L_01EA:
mov ecx, dword ptr [ebp-48]
or dword ptr [ebp-36], ecx
.L_01DE:
.L_01DD:
cmp dword ptr [ebp-36], 0
je .L_01E6
push 0
push -1
push 119
call _ERRREPORT@12
.L_01E6:
.L_01E5:
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLGFXPALETTE@20
mov dword ptr [ebp-4], eax
.L_01B9:
.L_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXPUT@0
_CGFXPUT@0:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-4], 0
.L_01F1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
push 0
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-32], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_01F4
mov dword ptr [ebp-8], 2
jmp .L_01F3
.L_01F4:
mov dword ptr [ebp-8], 0
.L_01F3:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01F6
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01F5
.L_01F6:
push 0
call _LEXSKIPTOKEN@4
.L_01F5:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01F8
jmp .L_01F2
.L_01F8:
.L_01F7:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01FA
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01F9
.L_01FA:
push 0
call _LEXSKIPTOKEN@4
.L_01F9:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01FC
jmp .L_01F2
.L_01FC:
.L_01FB:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_01FE
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_01FD
.L_01FE:
push 0
call _LEXSKIPTOKEN@4
.L_01FD:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0200
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_01FF
.L_0200:
push 0
call _LEXSKIPTOKEN@4
.L_01FF:
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0202
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_01F2
.L_0202:
.L_0201:
mov dword ptr [ebp-12], 5
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0204
mov dword ptr [ebp-16], -1
push 0
push 40
call _HMATCH@8
test eax, eax
je .L_0206
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_0208
jmp .L_01F2
.L_0208:
.L_0207:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_020A
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0209
.L_020A:
push 0
call _LEXSKIPTOKEN@4
.L_0209:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_020C
jmp .L_01F2
.L_020C:
.L_020B:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_020E
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_020D
.L_020E:
push 0
call _LEXSKIPTOKEN@4
.L_020D:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .L_0210
push 0
push 0
push 15
call _ERRREPORT@12
jmp .L_01F2
.L_0210:
.L_020F:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_0212
cmp dword ptr [ebp-8], 2
jne .L_0214
mov dword ptr [ebp-8], 3
jmp .L_0213
.L_0214:
mov dword ptr [ebp-8], 1
.L_0213:
.L_0212:
.L_0211:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0216
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0215
.L_0216:
push 0
call _LEXSKIPTOKEN@4
.L_0215:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0218
jmp .L_01F2
.L_0218:
.L_0217:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_021A
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0219
.L_021A:
push 0
call _LEXSKIPTOKEN@4
.L_0219:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_021C
jmp .L_01F2
.L_021C:
.L_021B:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_021E
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_021D
.L_021E:
push 0
call _LEXSKIPTOKEN@4
.L_021D:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0220
mov dword ptr [ebp-16], 0
.L_0220:
.L_021F:
.L_0206:
.L_0205:
cmp dword ptr [ebp-16], 0
je .L_0222
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
call _HGETMODE@16
test eax, eax
jne .L_0224
jmp .L_01F2
.L_0224:
.L_0223:
.L_0222:
.L_0221:
.L_0204:
.L_0203:
push dword ptr [ebp-8]
push dword ptr [ebp-44]
push dword ptr [ebp-40]
push dword ptr [ebp-36]
push dword ptr [ebp-12]
push dword ptr [ebp-60]
push dword ptr [ebp-56]
push dword ptr [ebp-52]
push dword ptr [ebp-48]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-32]
call _RTLGFXPUT@52
mov dword ptr [ebp-4], eax
.L_01F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXGET@0
_CGFXGET@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_0225:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-4], 0
push -1
call _HFBIMAGEEXPRINFRONTOFCOORD@4
mov dword ptr [ebp-32], eax
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_0228
mov dword ptr [ebp-8], 5
jmp .L_0227
.L_0228:
mov dword ptr [ebp-8], 4
.L_0227:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_022A
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0229
.L_022A:
push 0
call _LEXSKIPTOKEN@4
.L_0229:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_022C
jmp .L_0226
.L_022C:
.L_022B:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_022E
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_022D
.L_022E:
push 0
call _LEXSKIPTOKEN@4
.L_022D:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0230
jmp .L_0226
.L_0230:
.L_022F:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0232
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0231
.L_0232:
push 0
call _LEXSKIPTOKEN@4
.L_0231:
push 0
push 45
call _HMATCH@8
test eax, eax
jne .L_0234
push 0
push 0
push 15
call _ERRREPORT@12
jmp .L_0226
.L_0234:
.L_0233:
push 2048
push 282
call _HMATCH@8
test eax, eax
je .L_0236
cmp dword ptr [ebp-8], 5
jne .L_0238
mov dword ptr [ebp-8], 3
jmp .L_0237
.L_0238:
mov dword ptr [ebp-8], 1
.L_0237:
jmp .L_0235
.L_0236:
cmp dword ptr [ebp-8], 5
jne .L_023A
mov dword ptr [ebp-8], 2
jmp .L_0239
.L_023A:
mov dword ptr [ebp-8], 0
.L_0239:
.L_0235:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_023C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_023B
.L_023C:
push 0
call _LEXSKIPTOKEN@4
.L_023B:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_023E
jmp .L_0226
.L_023E:
.L_023D:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0240
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_023F
.L_0240:
push 0
call _LEXSKIPTOKEN@4
.L_023F:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0242
jmp .L_0226
.L_0242:
.L_0241:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0244
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0243
.L_0244:
push 0
call _LEXSKIPTOKEN@4
.L_0243:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0246
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0245
.L_0246:
push 0
call _LEXSKIPTOKEN@4
.L_0245:
lea eax, [ebp-36]
push eax
push 0
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0248
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_0226
.L_0248:
.L_0247:
push dword ptr [ebp-36]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
call _RTLGFXGET@32
mov dword ptr [ebp-4], eax
.L_0226:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGFXSCREEN@4
_CGFXSCREEN@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0249:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_024C
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_024E
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
.L_024E:
.L_024D:
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0250
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
.L_0250:
.L_024F:
cmp dword ptr [ebp-8], 0
jne .L_0252
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLPAGESET@12
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_024A
.L_0252:
.L_0251:
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0254
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
.L_0254:
.L_0253:
mov dword ptr [ebp-24], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0256
call _CEXPRESSION@0
mov dword ptr [ebp-24], eax
.L_0256:
.L_0255:
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXSCREENSET@20
mov dword ptr [ebp-4], eax
jmp .L_024B
.L_024C:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0258
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_025A
push dword ptr [ebp-20]
call _ASTDELTREE@4
.L_025A:
.L_0259:
.L_0258:
.L_0257:
mov dword ptr [ebp-12], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_025C
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
.L_025C:
.L_025B:
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_025E
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
.L_025E:
.L_025D:
cmp dword ptr [ebp-8], 0
jne .L_0260
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLPAGESET@12
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_025F
.L_0260:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXSCREENSETQB@12
mov dword ptr [ebp-4], eax
.L_025F:
.L_024B:
.L_024A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXPOINT@4
_CGFXPOINT@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0263:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0266
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0265
.L_0266:
push 0
call _LEXSKIPTOKEN@4
.L_0265:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0268
jmp .L_0264
.L_0268:
.L_0267:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_026A
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_026C
jmp .L_0264
.L_026C:
.L_026B:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_026E
push 0
push -1
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0270
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0264
.L_0270:
.L_026F:
.L_026E:
.L_026D:
.L_026A:
.L_0269:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0272
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0271
.L_0272:
push 0
call _LEXSKIPTOKEN@4
.L_0271:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLGFXPOINT@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0264:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXIMAGECREATE@4
_CGFXIMAGECREATE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0274:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0277
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0276
.L_0277:
push 0
call _LEXSKIPTOKEN@4
.L_0276:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0279
jmp .L_0275
.L_0279:
.L_0278:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_027B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_027A
.L_027B:
push 0
call _LEXSKIPTOKEN@4
.L_027A:
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_027D
jmp .L_0275
.L_027D:
.L_027C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], -2147483648
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_027F
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0281
mov dword ptr [ebp-24], 0
.L_0281:
.L_0280:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0283
push -1
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0285
jmp .L_0275
.L_0285:
.L_0284:
.L_0283:
.L_0282:
.L_027F:
.L_027E:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0287
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0286
.L_0287:
push 0
call _LEXSKIPTOKEN@4
.L_0286:
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLGFXIMAGECREATE@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0275:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXSTMT@4
_CGFXSTMT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0289:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_028C
.L_028E:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0290
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_0290:
.L_028F:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXPSET@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_0291:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0293
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_0293:
.L_0292:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXPSET@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_0294:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0296
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_0296:
.L_0295:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXLINE@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_0297:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0299
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_0299:
.L_0298:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXCIRCLE@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_029A:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_029C
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_029C:
.L_029B:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPAINT@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_029D:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_029F
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_029F:
.L_029E:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXDRAW@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02A0:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02A2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02A2:
.L_02A1:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXVIEW@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02A3:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02A5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02A5:
.L_02A4:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXVIEW@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02A6:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02A8
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02A8:
.L_02A7:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPALETTE@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02A9:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02AB
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02AB:
.L_02AA:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXPUT@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02AC:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02AE
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02AE:
.L_02AD:
push 2048
call _LEXSKIPTOKEN@4
call _CGFXGET@0
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02AF:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02B1
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02B1:
.L_02B0:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _CGFXSCREEN@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_02B2:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_02B4
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_028A
.L_02B4:
.L_02B3:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _CGFXSCREEN@4
mov dword ptr [ebp-4], eax
jmp .L_028B
.L_028C:
mov eax, dword ptr [ebp-8]
add eax, 4294966823
cmp eax, 40
ja .L_028B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_02B5+eax*4-1892]
_.L_02B5:
.int .L_02A9
.int .L_02AC
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_0294
.int .L_02A0
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028B
.int .L_028E
.int .L_0291
.int .L_028B
.int .L_0297
.int .L_02A3
.int .L_02A6
.int .L_02AF
.int .L_02B2
.int .L_029A
.int .L_029D
.L_028B:
.L_028A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CGFXFUNCT@4
_CGFXFUNCT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02B6:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 506
jne .L_02B9
.L_02BA:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
call _CGFXPOINT@4
jmp .L_02B8
.L_02B9:
cmp dword ptr [ebp+8], 514
jne .L_02BB
.L_02BC:
push 2048
call _LEXSKIPTOKEN@4
lea eax, [ebp-8]
push eax
call _CGFXIMAGECREATE@4
.L_02BB:
.L_02B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02B7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0012:
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_0013:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEUDT2PTR@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0068:
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push 0
push 32
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_006B
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _ASTBUILDCALL@16
mov dword ptr [ebp+8], eax
jmp .L_006A
.L_006B:
cmp dword ptr [ebp-8], 0
je .L_006D
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.L_006D:
.L_006C:
.L_006A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HNIDXARRAY2ARRAYACCESS@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 19
jne .L_0071
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_006F
.L_0071:
.L_0070:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0073
mov eax, dword ptr [_SYMB+99612]
mov ebx, eax
sar ebx, 31
push ebx
push eax
push 0
push 8
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_SYMB+99632]
add eax, dword ptr [_SYMB+99624]
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push 0
push 8
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-16], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 0
push 8
push dword ptr [ebp-12]
call _ASTNEWLOAD@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
jmp .L_0072
.L_0073:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .L_0074
push 0
push 8
mov eax, dword ptr [_SYMB+99612]
mov ecx, eax
sar ecx, 31
push ecx
push eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
push 0
push 8
mov eax, dword ptr [_SYMB+99632]
add eax, dword ptr [_SYMB+99624]
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+88]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 0
push 8
push dword ptr [ebp-12]
call _ASTNEWLOAD@12
mov dword ptr [ebp-12], eax
jmp .L_0072
.L_0074:
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBCALCLEN@8
push edx
push eax
call _ASTNEWCONSTI@16
push eax
push 0
push 8
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+68]
push dword ptr [edx+4]
push dword ptr [edx]
call _ASTNEWCONSTI@16
push eax
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.L_0072:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWIDX@8
mov dword ptr [ebp-4], eax
.L_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEARRAYACCESS2PTR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
jne .L_0079
.L_007A:
cmp dword ptr [ebp+12], 0
je .L_007C
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTNEWVAR@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_007C:
.L_007B:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
jmp .L_0077
.L_0079:
cmp dword ptr [ebp-8], 19
jne .L_007D
.L_007E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBISARRAY@4
test eax, eax
je .L_0080
cmp dword ptr [ebp+12], 0
je .L_0082
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .L_0084
push 0
push -1
push 28
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
jmp .L_0083
.L_0084:
push dword ptr [ebp+8]
call _ASTCLONETREE@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.L_0083:
jmp .L_0081
.L_0082:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.L_0081:
.L_0080:
.L_007F:
.L_007D:
.L_0077:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKFBIMAGEEXPR@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0085:
push dword ptr [ebp+8]
call _ASTREMOVENOCONVCAST@4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .L_0088
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HNIDXARRAY2ARRAYACCESS@4
push eax
call _HMAYBEARRAYACCESS2PTR@8
mov dword ptr [ebp+8], eax
jmp .L_0087
.L_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_008A
push dword ptr [ebp+8]
call _HMAYBEUDT2PTR@4
mov dword ptr [ebp+8], eax
.L_008A:
.L_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .L_008C
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMAYBEARRAYACCESS2PTR@8
mov dword ptr [ebp+8], eax
.L_008C:
.L_008B:
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .L_008E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .L_0090
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 20
push offset _Lt_0092
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset _Lt_0091
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
push -1
push 99
call _ERRREPORT@12
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
jmp .L_008F
.L_0090:
push 0
push -1
push 28
call _ERRREPORT@12
.L_008F:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
.L_008E:
.L_008D:
cmp dword ptr [ebp+12], 0
jne .L_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
and ebx, 512
test ebx, ebx
je .L_0099
push 0
push -1
push 119
call _ERRREPORT@12
.L_0099:
.L_0098:
.L_0097:
.L_0096:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFBIMAGEEXPR@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009A:
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_009D
jmp .L_009B
.L_009D:
.L_009C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _HCHECKFBIMAGEEXPR@12
mov dword ptr [ebp-4], eax
.L_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFBIMAGEEXPRINFRONTOFCOORD@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009E:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .L_00A1
jmp .L_009F
.L_00A1:
.L_00A0:
push 0
push dword ptr [ebp+8]
call _HFBIMAGEEXPR@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00A3
jmp .L_009F
.L_00A3:
.L_00A2:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00A5
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_00A4
.L_00A5:
push 0
call _LEXSKIPTOKEN@4
.L_00A4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETMODE@16:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 288
jne .L_00AA
.L_00AB:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov dword ptr [ebp-4], -1
jmp .L_00A7
jmp .L_00A8
.L_00AA:
cmp dword ptr [ebp-24], 289
jne .L_00AC
.L_00AD:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov dword ptr [ebp-4], -1
jmp .L_00A7
jmp .L_00A8
.L_00AC:
cmp dword ptr [ebp-24], 292
jne .L_00AE
.L_00AF:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
mov dword ptr [ebp-4], -1
jmp .L_00A7
.L_00AE:
.L_00A8:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_00B3
.L_00B4:
cmp dword ptr [ebp-24], 2
je .L_00B3
.L_00B5:
cmp dword ptr [ebp-24], 1
jne .L_00B2
.L_00B3:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_00B9
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00B8
.L_00BA:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
jmp .L_00B6
.L_00B8:
push 7
push offset _Lt_00BC
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BB
.L_00BD:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
jmp .L_00B6
.L_00BB:
push 6
push offset _Lt_00BF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BE
.L_00C0:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
jmp .L_00B6
.L_00BE:
push 4
push offset _Lt_00C2
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00C1
.L_00C3:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00C5
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00C7
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00C7:
.L_00C6:
jmp .L_00C4
.L_00C5:
push 0
push 9
push 0
push 255
call _ASTNEWCONSTI@16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00C4:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
jmp .L_00B6
.L_00C1:
push 6
push offset _Lt_00C9
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00C8
.L_00CA:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00CC
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00CE
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.L_00CC:
.L_00CB:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
jmp .L_00B6
.L_00C8:
push 7
push offset _Lt_00D0
push -1
lea eax, [ebp-36]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00CF
.L_00D1:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00D3
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_00D2
.L_00D3:
push 0
call _LEXSKIPTOKEN@4
.L_00D2:
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_00D5
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00D5:
.L_00D4:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00D7
push -1
call _HMATCHEXPR@4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_00D9
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00D9:
.L_00D8:
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DB
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00DB:
.L_00DA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 3
je .L_00DD
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00DF
push 0
push 0
push 20
call _ERRREPORT@12
lea ecx, [ebp-36]
push ecx
call _fb_StrDelete@4
jmp .L_00A7
.L_00DF:
.L_00DE:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+176]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+176]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+84], 4
jne .L_00E1
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
pop dword ptr [ebp-20]
.L_00E1:
.L_00E0:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp ecx, 12
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 12
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_00E3
push 0
push 0
push 20
call _ERRREPORT@12
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00E3:
.L_00E2:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00CF:
.L_00B6:
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_00B2:
.L_00B0:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
.L_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0091:	.ascii	" \"\0"
.balign 4
_Lt_0092:	.ascii	".cast() as any ptr\"\0"
.balign 4
_Lt_00B9:	.ascii	"PSET\0"
.balign 4
_Lt_00BC:	.ascii	"PRESET\0"
.balign 4
_Lt_00BF:	.ascii	"TRANS\0"
.balign 4
_Lt_00C2:	.ascii	"ADD\0"
.balign 4
_Lt_00C9:	.ascii	"ALPHA\0"
.balign 4
_Lt_00D0:	.ascii	"CUSTOM\0"
.balign 4
_Lt_0121:	.ascii	"B\0"
.balign 4
_Lt_0124:	.ascii	"BF\0"
.balign 8
_Lt_012A:	.quad	0x0000000000000000
.balign 4
_Lt_0149:	.ascii	"F\0"
.balign 4
_Lt_01B8:	.ascii	"GET\0"
