	.intel_syntax noprefix

.section .text
.balign 16

.globl CGFXPSET
CGFXPSET:
.type CGFXPSET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00E3:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_00E6
mov dword ptr [ebp-8], 5
jmp .L_00E5
.L_00E6:
mov dword ptr [ebp-8], 4
.L_00E5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_00E8
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_00E7
.L_00E8:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00E7:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EA
jmp .L_00E4
.L_00EA:
.L_00E9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00EC
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00EB
.L_00EC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00EB:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00EE
jmp .L_00E4
.L_00EE:
.L_00ED:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00F0
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00EF
.L_00F0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00EF:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00F2
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00F4
jmp .L_00E4
.L_00F4:
.L_00F3:
jmp .L_00F1
.L_00F2:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-8], -2147483648
.L_00F1:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call RTLGFXPSET
add esp, 32
mov dword ptr [ebp-4], eax
.L_00E4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXPSET, .-CGFXPSET
.cfi_endproc
.balign 16

.globl CGFXLINE
CGFXLINE:
.type CGFXLINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-4], 0
.L_00F5:
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
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
je .L_00F8
mov dword ptr [ebp-8], 5
sub esp, 4
push 15
push dword ptr [Lt_0129+4]
push dword ptr [Lt_0129]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 15
push dword ptr [Lt_0129+4]
push dword ptr [Lt_0129]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_00F7
.L_00F8:
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_00FA
mov dword ptr [ebp-8], 5
jmp .L_00F9
.L_00FA:
mov dword ptr [ebp-8], 4
.L_00F9:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .L_00FC
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00FE
jmp .L_00F6
.L_00FE:
.L_00FD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0100
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00FF
.L_0100:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00FF:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0102
jmp .L_00F6
.L_0102:
.L_0101:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0104
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0103
.L_0104:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0103:
jmp .L_00FB
.L_00FC:
mov dword ptr [ebp-8], 5
sub esp, 4
push 15
push dword ptr [Lt_0129+4]
push dword ptr [Lt_0129]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 15
push dword ptr [Lt_0129+4]
push dword ptr [Lt_0129]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-24], eax
.L_00FB:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .L_0106
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .L_00F6
.L_0106:
.L_0105:
.L_00F7:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_0108
cmp dword ptr [ebp-8], 5
jne .L_010A
mov dword ptr [ebp-8], 3
jmp .L_0109
.L_010A:
mov dword ptr [ebp-8], 1
.L_0109:
jmp .L_0107
.L_0108:
cmp dword ptr [ebp-8], 5
jne .L_010C
mov dword ptr [ebp-8], 2
jmp .L_010B
.L_010C:
mov dword ptr [ebp-8], 0
.L_010B:
.L_0107:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_010E
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_010D
.L_010E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_010D:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0110
jmp .L_00F6
.L_0110:
.L_010F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0112
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0111
.L_0112:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0111:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0114
jmp .L_00F6
.L_0114:
.L_0113:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0116
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0115
.L_0116:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0115:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0118
call CEXPRESSION
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_011A
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.L_011A:
.L_0119:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_011C
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrInit
add esp, 32
push 2
push offset Lt_0120
push -1
lea eax, [ebp-52]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_011F
.L_0121:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 1
jmp .L_011D
.L_011F:
push 3
push offset Lt_0123
push -1
lea eax, [ebp-52]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0122
.L_0124:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 2
.L_0122:
.L_011D:
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0126
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0128
jmp .L_00F6
.L_0128:
.L_0127:
.L_0126:
.L_0125:
.L_011C:
.L_011B:
jmp .L_0117
.L_0118:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
or dword ptr [ebp-8], -2147483648
.L_0117:
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-40]
call RTLGFXLINE
add esp, 48
mov dword ptr [ebp-4], eax
.L_00F6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXLINE, .-CGFXLINE
.cfi_endproc
.balign 16

.globl CGFXCIRCLE
CGFXCIRCLE:
.type CGFXCIRCLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-4], 0
.L_012A:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_012D
mov dword ptr [ebp-8], 5
jmp .L_012C
.L_012D:
mov dword ptr [ebp-8], 4
.L_012C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_012F
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_012E
.L_012F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_012E:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0131
jmp .L_012B
.L_0131:
.L_0130:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0133
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0132
.L_0133:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0132:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0135
jmp .L_012B
.L_0135:
.L_0134:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0137
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0136
.L_0137:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0136:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0139
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0138
.L_0139:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0138:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_013B
jmp .L_012B
.L_013B:
.L_013A:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_013D
call CEXPRESSION
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_013F
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.L_013F:
.L_013E:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0141
call CEXPRESSION
mov dword ptr [ebp-32], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0143
call CEXPRESSION
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0145
call CEXPRESSION
mov dword ptr [ebp-40], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0147
push 2
push offset Lt_0148
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_014A
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_012B
.L_014A:
.L_0149:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], -1
.L_0147:
.L_0146:
.L_0145:
.L_0144:
.L_0143:
.L_0142:
.L_0141:
.L_0140:
jmp .L_013C
.L_013D:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-8], -2147483648
.L_013C:
sub esp, 8
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
call RTLGFXCIRCLE
add esp, 48
mov dword ptr [ebp-4], eax
.L_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXCIRCLE, .-CGFXCIRCLE
.cfi_endproc
.balign 16

.globl CGFXPAINT
CGFXPAINT:
.type CGFXPAINT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_014B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_014E
mov dword ptr [ebp-28], 5
jmp .L_014D
.L_014E:
mov dword ptr [ebp-28], 4
.L_014D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0150
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_014F
.L_0150:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_014F:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0152
jmp .L_014C
.L_0152:
.L_0151:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0154
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0153
.L_0154:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0153:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0156
jmp .L_014C
.L_0156:
.L_0155:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0158
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0157
.L_0158:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0157:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_015A
call CEXPRESSION
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_015C
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_015E
jmp .L_014C
.L_015E:
.L_015D:
.L_015C:
.L_015B:
.L_015A:
.L_0159:
cmp dword ptr [ebp-16], 0
jne .L_0160
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
or dword ptr [ebp-28], -2147483648
.L_0160:
.L_015F:
cmp dword ptr [ebp-20], 0
jne .L_0162
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
or dword ptr [ebp-28], 1073741824
.L_0162:
.L_0161:
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call RTLGFXPAINT
add esp, 32
mov dword ptr [ebp-4], eax
.L_014C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXPAINT, .-CGFXPAINT
.cfi_endproc
.balign 16

.globl CGFXDRAWSTRING
CGFXDRAWSTRING:
.type CGFXDRAWSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-4], 0
.L_0163:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_0166
mov dword ptr [ebp-44], 5
jmp .L_0165
.L_0166:
mov dword ptr [ebp-44], 4
.L_0165:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0168
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0167
.L_0168:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0167:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_016A
jmp .L_0164
.L_016A:
.L_0169:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_016C
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_016B
.L_016C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_016B:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_016E
jmp .L_0164
.L_016E:
.L_016D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0170
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_016F
.L_0170:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_016F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0172
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0171
.L_0172:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0171:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0174
jmp .L_0164
.L_0174:
.L_0173:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-48], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0176
call CEXPRESSION
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0178
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_017A
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-48]
push eax
call HGETMODE
add esp, 16
test eax, eax
jne .L_017C
jmp .L_0164
.L_017C:
.L_017B:
.L_017A:
.L_0179:
.L_0178:
.L_0177:
.L_0176:
.L_0175:
cmp dword ptr [ebp-24], 0
jne .L_017E
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
or dword ptr [ebp-44], -2147483648
.L_017E:
.L_017D:
sub esp, 4
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
call RTLGFXDRAWSTRING
add esp, 48
mov dword ptr [ebp-4], eax
.L_0164:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXDRAWSTRING, .-CGFXDRAWSTRING
.cfi_endproc
.balign 16

.globl CGFXDRAW
CGFXDRAW:
.type CGFXDRAW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_017F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 2048
push 369
call HMATCH
add esp, 16
test eax, eax
je .L_0182
call CGFXDRAWSTRING
mov dword ptr [ebp-4], eax
jmp .L_0180
.L_0182:
.L_0181:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0184
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0180
.L_0184:
.L_0183:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0186
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call HCHECKFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0188
jmp .L_0180
.L_0188:
.L_0187:
jmp .L_0185
.L_0186:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_018A
sub esp, 4
push 0
push -1
push 73
call ERRREPORT
add esp, 16
jmp .L_0180
.L_018A:
.L_0189:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.L_0185:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXDRAW
add esp, 16
mov dword ptr [ebp-4], eax
.L_0180:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXDRAW, .-CGFXDRAW
.cfi_endproc
.balign 16

.globl CGFXVIEW
CGFXVIEW:
.type CGFXVIEW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_018B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 510
je .L_0190
.L_0191:
cmp dword ptr [ebp-36], 511
jne .L_018F
.L_0190:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 1
jmp .L_018D
.L_018F:
mov dword ptr [ebp-8], 0
.L_0192:
.L_018D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .L_0194
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0196
jmp .L_018C
.L_0196:
.L_0195:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0198
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0197
.L_0198:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0197:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_019A
jmp .L_018C
.L_019A:
.L_0199:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_019C
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_019B
.L_019C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_019B:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .L_019E
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .L_018C
.L_019E:
.L_019D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01A0
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_019F
.L_01A0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_019F:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01A2
jmp .L_018C
.L_01A2:
.L_01A1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01A4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01A3
.L_01A4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01A3:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01A6
jmp .L_018C
.L_01A6:
.L_01A5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01A8
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_01A7
.L_01A8:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01A7:
cmp dword ptr [ebp+8], 0
je .L_01AA
or dword ptr [ebp-8], -1073741824
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01AC
call CEXPRESSION
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_01AE
and dword ptr [ebp-8], 2147483647
.L_01AE:
.L_01AD:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01B0
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_01B2
jmp .L_018C
.L_01B2:
.L_01B1:
and dword ptr [ebp-8], -1073741825
.L_01B0:
.L_01AF:
.L_01AC:
.L_01AB:
.L_01AA:
.L_01A9:
.L_0194:
.L_0193:
cmp dword ptr [ebp+8], 0
je .L_01B4
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXVIEW
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01B3
.L_01B4:
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXWINDOW
add esp, 32
mov dword ptr [ebp-4], eax
.L_01B3:
.L_018C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXVIEW, .-CGFXVIEW
.cfi_endproc
.balign 16

.globl CGFXPALETTE
CGFXPALETTE:
.type CGFXPALETTE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_01B5:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 2048
push offset Lt_01B7
call HMATCHIDORKW
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 2048
push 287
call HMATCH
add esp, 16
test eax, eax
je .L_01B9
sub esp, 8
push 0
mov eax, dword ptr [ebp-28]
not eax
push eax
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01BB
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_01B6
.L_01BB:
.L_01BA:
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
je .L_01BC
mov dword ptr [ebp-36], 24
jmp .L_01E6
.L_01BC:
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
.L_01E6:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [SYMB_DTYPETB+312]
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01BF
mov ecx, dword ptr [SYMB_DTYPETB+228]
mov dword ptr [ebp-32], ecx
.L_01BF:
.L_01BE:
sub esp, 4
mov ecx, dword ptr [SYMB_DTYPETB+368]
cmp ecx, dword ptr [ebp-32]
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call RTLGFXPALETTEUSING
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01B8
.L_01B9:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01C1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01C3
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01C2
.L_01C3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01C2:
cmp dword ptr [ebp-28], 0
je .L_01C5
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01C7
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_01B6
.L_01C7:
.L_01C6:
jmp .L_01C4
.L_01C5:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01C9
jmp .L_01B6
.L_01C9:
.L_01C8:
.L_01C4:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01CB
cmp dword ptr [ebp-28], 0
je .L_01CD
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01CF
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_01B6
.L_01CF:
.L_01CE:
jmp .L_01CC
.L_01CD:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01D1
jmp .L_01B6
.L_01D1:
.L_01D0:
.L_01CC:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01D3
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01D2
.L_01D3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01D2:
cmp dword ptr [ebp-28], 0
je .L_01D5
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01D7
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_01B6
.L_01D7:
.L_01D6:
jmp .L_01D4
.L_01D5:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01D9
jmp .L_01B6
.L_01D9:
.L_01D8:
.L_01D4:
.L_01CB:
.L_01CA:
jmp .L_01C0
.L_01C1:
cmp dword ptr [ebp-28], 0
je .L_01DB
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_01B6
.L_01DB:
.L_01DA:
.L_01C0:
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-28], 0
je .L_01DD
cmp dword ptr [ebp-16], 0
je .L_01DE
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-40], ecx
jmp .L_01E7
.L_01DE:
mov dword ptr [ebp-40], 0
.L_01E7:
mov ecx, dword ptr [ebp-40]
or dword ptr [ebp-36], ecx
cmp dword ptr [ebp-20], 0
je .L_01E0
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_01E8
.L_01E0:
mov dword ptr [ebp-44], 0
.L_01E8:
mov eax, dword ptr [ebp-44]
or dword ptr [ebp-36], eax
cmp dword ptr [ebp-24], 0
je .L_01E2
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
jmp .L_01E9
.L_01E2:
mov dword ptr [ebp-48], 0
.L_01E9:
mov ecx, dword ptr [ebp-48]
or dword ptr [ebp-36], ecx
.L_01DD:
.L_01DC:
cmp dword ptr [ebp-36], 0
je .L_01E5
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_01E5:
.L_01E4:
sub esp, 12
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLGFXPALETTE
add esp, 32
mov dword ptr [ebp-4], eax
.L_01B8:
.L_01B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXPALETTE, .-CGFXPALETTE
.cfi_endproc
.balign 16

.globl CGFXPUT
CGFXPUT:
.type CGFXPUT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_01F0:
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
sub esp, 12
push 0
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_01F3
mov dword ptr [ebp-8], 2
jmp .L_01F2
.L_01F3:
mov dword ptr [ebp-8], 0
.L_01F2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01F5
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_01F4
.L_01F5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01F4:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01F7
jmp .L_01F1
.L_01F7:
.L_01F6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01F9
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01F8
.L_01F9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01F8:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_01FB
jmp .L_01F1
.L_01FB:
.L_01FA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01FD
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_01FC
.L_01FD:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01FC:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01FF
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_01FE
.L_01FF:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01FE:
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0201
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_01F1
.L_0201:
.L_0200:
mov dword ptr [ebp-12], 5
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0203
mov dword ptr [ebp-16], -1
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .L_0205
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_0207
jmp .L_01F1
.L_0207:
.L_0206:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0209
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0208
.L_0209:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0208:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_020B
jmp .L_01F1
.L_020B:
.L_020A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_020D
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_020C
.L_020D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_020C:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .L_020F
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .L_01F1
.L_020F:
.L_020E:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_0211
cmp dword ptr [ebp-8], 2
jne .L_0213
mov dword ptr [ebp-8], 3
jmp .L_0212
.L_0213:
mov dword ptr [ebp-8], 1
.L_0212:
.L_0211:
.L_0210:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0215
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0214
.L_0215:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0214:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0217
jmp .L_01F1
.L_0217:
.L_0216:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0219
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0218
.L_0219:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0218:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_021B
jmp .L_01F1
.L_021B:
.L_021A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_021D
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_021C
.L_021D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_021C:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_021F
mov dword ptr [ebp-16], 0
.L_021F:
.L_021E:
.L_0205:
.L_0204:
cmp dword ptr [ebp-16], 0
je .L_0221
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
lea eax, [ebp-36]
push eax
lea eax, [ebp-12]
push eax
call HGETMODE
add esp, 16
test eax, eax
jne .L_0223
jmp .L_01F1
.L_0223:
.L_0222:
.L_0221:
.L_0220:
.L_0203:
.L_0202:
sub esp, 12
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
call RTLGFXPUT
add esp, 64
mov dword ptr [ebp-4], eax
.L_01F1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXPUT, .-CGFXPUT
.cfi_endproc
.balign 16

.globl CGFXGET
CGFXGET:
.type CGFXGET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0224:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push -1
call HFBIMAGEEXPRINFRONTOFCOORD
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_0227
mov dword ptr [ebp-8], 5
jmp .L_0226
.L_0227:
mov dword ptr [ebp-8], 4
.L_0226:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0229
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0228
.L_0229:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0228:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_022B
jmp .L_0225
.L_022B:
.L_022A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_022D
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_022C
.L_022D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_022C:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_022F
jmp .L_0225
.L_022F:
.L_022E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0231
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0230
.L_0231:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0230:
sub esp, 8
push 0
push 45
call HMATCH
add esp, 16
test eax, eax
jne .L_0233
sub esp, 4
push 0
push 0
push 15
call ERRREPORT
add esp, 16
jmp .L_0225
.L_0233:
.L_0232:
sub esp, 8
push 2048
push 282
call HMATCH
add esp, 16
test eax, eax
je .L_0235
cmp dword ptr [ebp-8], 5
jne .L_0237
mov dword ptr [ebp-8], 3
jmp .L_0236
.L_0237:
mov dword ptr [ebp-8], 1
.L_0236:
jmp .L_0234
.L_0235:
cmp dword ptr [ebp-8], 5
jne .L_0239
mov dword ptr [ebp-8], 2
jmp .L_0238
.L_0239:
mov dword ptr [ebp-8], 0
.L_0238:
.L_0234:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_023B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_023A
.L_023B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_023A:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_023D
jmp .L_0225
.L_023D:
.L_023C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_023F
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_023E
.L_023F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_023E:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0241
jmp .L_0225
.L_0241:
.L_0240:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0243
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0242
.L_0243:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0242:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0245
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0244
.L_0245:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0244:
sub esp, 8
lea eax, [ebp-36]
push eax
push 0
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0247
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_0225
.L_0247:
.L_0246:
push dword ptr [ebp-36]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
call RTLGFXGET
add esp, 32
mov dword ptr [ebp-4], eax
.L_0225:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXGET, .-CGFXGET
.cfi_endproc
.balign 16

.globl CGFXSCREEN
CGFXSCREEN:
.type CGFXSCREEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0248:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_024B
call CEXPRESSION
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_024D
call CEXPRESSION
mov dword ptr [ebp-12], eax
.L_024D:
.L_024C:
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_024F
call CEXPRESSION
mov dword ptr [ebp-16], eax
.L_024F:
.L_024E:
cmp dword ptr [ebp-8], 0
jne .L_0251
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLPAGESET
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0249
.L_0251:
.L_0250:
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0253
call CEXPRESSION
mov dword ptr [ebp-20], eax
.L_0253:
.L_0252:
mov dword ptr [ebp-24], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0255
call CEXPRESSION
mov dword ptr [ebp-24], eax
.L_0255:
.L_0254:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXSCREENSET
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_024A
.L_024B:
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0257
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0259
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
.L_0259:
.L_0258:
.L_0257:
.L_0256:
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_025B
call CEXPRESSION
mov dword ptr [ebp-12], eax
.L_025B:
.L_025A:
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_025D
call CEXPRESSION
mov dword ptr [ebp-16], eax
.L_025D:
.L_025C:
cmp dword ptr [ebp-8], 0
jne .L_025F
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLPAGESET
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_025E
.L_025F:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXSCREENSETQB
add esp, 16
mov dword ptr [ebp-4], eax
.L_025E:
.L_024A:
.L_0249:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXSCREEN, .-CGFXSCREEN
.cfi_endproc
.balign 16

.globl CGFXPOINT
CGFXPOINT:
.type CGFXPOINT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0262:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0265
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0264
.L_0265:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0264:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0267
jmp .L_0263
.L_0267:
.L_0266:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0269
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_026B
jmp .L_0263
.L_026B:
.L_026A:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_026D
sub esp, 8
push 0
push -1
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_026F
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0263
.L_026F:
.L_026E:
.L_026D:
.L_026C:
.L_0269:
.L_0268:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0271
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0270
.L_0271:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0270:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLGFXPOINT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0263:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXPOINT, .-CGFXPOINT
.cfi_endproc
.balign 16

.globl CGFXIMAGECREATE
CGFXIMAGECREATE:
.type CGFXIMAGECREATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0273:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0276
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0275
.L_0276:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0275:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0278
jmp .L_0274
.L_0278:
.L_0277:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_027A
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0279
.L_027A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0279:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_027C
jmp .L_0274
.L_027C:
.L_027B:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], -2147483648
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_027E
call CEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0280
mov dword ptr [ebp-24], 0
.L_0280:
.L_027F:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0282
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0284
jmp .L_0274
.L_0284:
.L_0283:
.L_0282:
.L_0281:
.L_027E:
.L_027D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0286
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0285
.L_0286:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0285:
sub esp, 12
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLGFXIMAGECREATE
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0274:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXIMAGECREATE, .-CGFXIMAGECREATE
.cfi_endproc
.balign 16

.globl CGFXSTMT
CGFXSTMT:
.type CGFXSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0288:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_028B
.L_028D:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_028F
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_028F:
.L_028E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXPSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_0290:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0292
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_0292:
.L_0291:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXPSET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_0293:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0295
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_0295:
.L_0294:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXLINE
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_0296:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0298
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_0298:
.L_0297:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXCIRCLE
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_0299:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_029B
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_029B:
.L_029A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPAINT
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_029C:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_029E
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_029E:
.L_029D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXDRAW
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_029F:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02A1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02A1:
.L_02A0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXVIEW
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02A2:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02A4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02A4:
.L_02A3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXVIEW
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02A5:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02A7
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02A7:
.L_02A6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPALETTE
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02A8:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02AA
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02AA:
.L_02A9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXPUT
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02AB:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02AD
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02AD:
.L_02AC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CGFXGET
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02AE:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02B0
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02B0:
.L_02AF:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CGFXSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_02B1:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_02B3
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0289
.L_02B3:
.L_02B2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call CGFXSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_028A
.L_028B:
mov eax, dword ptr [ebp-8]
add eax, 4294966823
cmp eax, 40
ja .L_028A
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_02B4+eax*4-1892]
.L_02B4:
.int .L_02A8
.int .L_02AB
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_0293
.int .L_029F
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028A
.int .L_028D
.int .L_0290
.int .L_028A
.int .L_0296
.int .L_02A2
.int .L_02A5
.int .L_02AE
.int .L_02B1
.int .L_0299
.int .L_029C
.L_028A:
.L_0289:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXSTMT, .-CGFXSTMT
.cfi_endproc
.balign 16

.globl CGFXFUNCT
CGFXFUNCT:
.type CGFXFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02B5:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 506
jne .L_02B8
.L_02B9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
lea eax, [ebp-8]
push eax
call CGFXPOINT
add esp, 16
jmp .L_02B7
.L_02B8:
cmp dword ptr [ebp+8], 514
jne .L_02BA
.L_02BB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
lea eax, [ebp-8]
push eax
call CGFXIMAGECREATE
add esp, 16
.L_02BA:
.L_02B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CGFXFUNCT, .-CGFXFUNCT
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
HMAYBEUDT2PTR:
.type HMAYBEUDT2PTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0067:
sub esp, 12
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push 0
push 32
call SYMBFINDCASTOVLPROC
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_006A
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0069
.L_006A:
cmp dword ptr [ebp-8], 0
je .L_006C
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.L_006C:
.L_006B:
.L_0069:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBEUDT2PTR, .-HMAYBEUDT2PTR
.cfi_endproc
.balign 16
HNIDXARRAY2ARRAYACCESS:
.type HNIDXARRAY2ARRAYACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 19
jne .L_0070
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_006E
.L_0070:
.L_006F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0072
sub esp, 12
mov eax, dword ptr [SYMB+99604]
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [SYMB+99624]
add eax, dword ptr [SYMB+99616]
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-16]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push 8
push dword ptr [ebp-12]
call ASTNEWLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push 8
push 0
push 0
push dword ptr [ebp-20]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0071
.L_0072:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .L_0073
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB+99604]
mov ecx, eax
sar ecx, 31
push ecx
push eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB+99624]
add eax, dword ptr [SYMB+99616]
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+84]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-16]
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push 8
push dword ptr [ebp-12]
call ASTNEWLOAD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0071
.L_0073:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+64]
push dword ptr [edx+4]
push dword ptr [edx]
call ASTNEWCONSTI
add esp, 24
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
.L_0071:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWIDX
add esp, 16
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNIDXARRAY2ARRAYACCESS, .-HNIDXARRAY2ARRAYACCESS
.cfi_endproc
.balign 16
HMAYBEARRAYACCESS2PTR:
.type HMAYBEARRAYACCESS2PTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
jne .L_0078
.L_0079:
cmp dword ptr [ebp+12], 0
je .L_007B
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_007B:
.L_007A:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0076
.L_0078:
cmp dword ptr [ebp-8], 19
jne .L_007C
.L_007D:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBISARRAY
add esp, 16
test eax, eax
je .L_007F
cmp dword ptr [ebp+12], 0
je .L_0081
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_0083
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0082
.L_0083:
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.L_0082:
jmp .L_0080
.L_0081:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.L_0080:
.L_007F:
.L_007E:
.L_007C:
.L_0076:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBEARRAYACCESS2PTR, .-HMAYBEARRAYACCESS2PTR
.cfi_endproc
.balign 16
HCHECKFBIMAGEEXPR:
.type HCHECKFBIMAGEEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENOCONVCAST
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .L_0087
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HNIDXARRAY2ARRAYACCESS
add esp, 4
push eax
call HMAYBEARRAYACCESS2PTR
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0086
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_0089
sub esp, 12
push dword ptr [ebp+8]
call HMAYBEUDT2PTR
add esp, 16
mov dword ptr [ebp+8], eax
.L_0089:
.L_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .L_008B
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMAYBEARRAYACCESS2PTR
add esp, 16
mov dword ptr [ebp+8], eax
.L_008B:
.L_008A:
.L_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
jne .L_008D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
jne .L_008F
sub esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
sub esp, 8
push 0
push -1
sub esp, 8
push 20
push offset Lt_0091
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
push dword ptr [ebx+16]
push 3
push offset Lt_0090
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 28
push dword ptr [ebp-40]
push -1
push 99
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008E
.L_008F:
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
.L_008E:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
.L_008D:
.L_008C:
cmp dword ptr [ebp+12], 0
jne .L_0096
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
je .L_0098
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_0098:
.L_0097:
.L_0096:
.L_0095:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKFBIMAGEEXPR, .-HCHECKFBIMAGEEXPR
.cfi_endproc
.balign 16
HFBIMAGEEXPR:
.type HFBIMAGEEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0099:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_009C
jmp .L_009A
.L_009C:
.L_009B:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call HCHECKFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFBIMAGEEXPR, .-HFBIMAGEEXPR
.cfi_endproc
.balign 16
HFBIMAGEEXPRINFRONTOFCOORD:
.type HFBIMAGEEXPRINFRONTOFCOORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_00A0
jmp .L_009E
.L_00A0:
.L_009F:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFBIMAGEEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00A2
jmp .L_009E
.L_00A2:
.L_00A1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00A4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00A3
.L_00A4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFBIMAGEEXPRINFRONTOFCOORD, .-HFBIMAGEEXPRINFRONTOFCOORD
.cfi_endproc
.balign 16
HGETMODE:
.type HGETMODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 288
jne .L_00A9
.L_00AA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov dword ptr [ebp-4], -1
jmp .L_00A6
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-24], 289
jne .L_00AB
.L_00AC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
mov dword ptr [ebp-4], -1
jmp .L_00A6
jmp .L_00A7
.L_00AB:
cmp dword ptr [ebp-24], 292
jne .L_00AD
.L_00AE:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
mov dword ptr [ebp-4], -1
jmp .L_00A6
.L_00AD:
.L_00A7:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_00B2
.L_00B3:
cmp dword ptr [ebp-24], 2
je .L_00B2
.L_00B4:
cmp dword ptr [ebp-24], 1
jne .L_00B1
.L_00B2:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_00B8
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00B7
.L_00B9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
jmp .L_00B5
.L_00B7:
push 7
push offset Lt_00BB
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BA
.L_00BC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
jmp .L_00B5
.L_00BA:
push 6
push offset Lt_00BE
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BD
.L_00BF:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
jmp .L_00B5
.L_00BD:
push 4
push offset Lt_00C1
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00C0
.L_00C2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00C4
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00C6
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00C6:
.L_00C5:
jmp .L_00C3
.L_00C4:
push 0
push 9
push 0
push 255
call ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_00C3:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
jmp .L_00B5
.L_00C0:
push 6
push offset Lt_00C8
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00C7
.L_00C9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00CB
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_00CD
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.L_00CB:
.L_00CA:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
jmp .L_00B5
.L_00C7:
push 7
push offset Lt_00CF
push -1
lea eax, [ebp-36]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00CE
.L_00D0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00D2
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00D1
.L_00D2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00D1:
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_00D4
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00D4:
.L_00D3:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00D6
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_00D8
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00D8:
.L_00D7:
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DA
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00DA:
.L_00D9:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 3
je .L_00DC
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00DC:
.L_00DB:
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
je .L_00DE
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea ecx, [ebp-36]
push ecx
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00DE:
.L_00DD:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+84], 4
jne .L_00E0
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-12], ebx
pop dword ptr [ebp-20]
.L_00E0:
.L_00DF:
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
je .L_00E2
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00E2:
.L_00E1:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00CE:
.L_00B5:
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_00B1:
.L_00AF:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETMODE, .-HGETMODE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0090:	.ascii	" \"\0"
.balign 4
Lt_0091:	.ascii	".cast() as any ptr\"\0"
.balign 4
Lt_00B8:	.ascii	"PSET\0"
.balign 4
Lt_00BB:	.ascii	"PRESET\0"
.balign 4
Lt_00BE:	.ascii	"TRANS\0"
.balign 4
Lt_00C1:	.ascii	"ADD\0"
.balign 4
Lt_00C8:	.ascii	"ALPHA\0"
.balign 4
Lt_00CF:	.ascii	"CUSTOM\0"
.balign 4
Lt_0120:	.ascii	"B\0"
.balign 4
Lt_0123:	.ascii	"BF\0"
.balign 8
Lt_0129:	.quad	0x0000000000000000
.balign 4
Lt_0148:	.ascii	"F\0"
.balign 4
Lt_01B7:	.ascii	"GET\0"
