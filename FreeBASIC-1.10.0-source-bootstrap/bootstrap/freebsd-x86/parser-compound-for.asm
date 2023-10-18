	.intel_syntax noprefix

.section .text
.balign 16

.globl CFORSTMTBEGIN
CFORSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.L_00F8:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 38
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-12], eax
call ASTSCOPEBEGIN
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00FB
push 0
push 0
push 27
call ERRREPORT
add esp, 12
.L_00FB:
.L_00FA:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 376
jne .L_00FD
push -1
push 0
call LEXGETTOKEN
add esp, 4
push eax
push 0
push 0
call CVARDECL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FF
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
jmp .L_00FE
.L_00FF:
or dword ptr [ebp-4], 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
.L_00FE:
jmp .L_00FC
.L_00FD:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 40
jne .L_0100
push 0
push -1
push 52
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
jmp .L_00FC
.L_0100:
push -1
push dword ptr [ebp-12]
call CVARIABLE
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0102
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
.L_0102:
.L_0101:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax], 17
je .L_0104
push 0
push -1
push 52
call ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
.L_0104:
.L_0103:
.L_00FC:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0106
push 0
push 0
push 119
call ERRREPORT
add esp, 12
.L_0106:
.L_0105:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-64], ebx
jmp .L_0108
.L_010A:
push 0
push -1
push 20
call ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
jmp .L_0107
.L_010B:
jmp .L_0107
.L_010C:
jmp .L_0107
.L_010D:
jmp .L_0107
.L_010E:
jmp .L_0107
.L_010F:
jmp .L_0107
.L_0110:
jmp .L_0107
.L_0111:
jmp .L_0107
.L_0112:
jmp .L_0107
.L_0113:
or dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+12]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .L_0115
or dword ptr [ebp-4], 2
.L_0115:
.L_0114:
jmp .L_0107
.L_0116:
mov eax, dword ptr [ebp-32]
and eax, 480
test eax, eax
jne .L_0118
push 0
push -1
push 52
call ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
.L_0118:
.L_0117:
jmp .L_0107
.L_0108:
mov ebx, dword ptr [ebp-64]
add ebx, 4294967295
cmp ebx, 19
ja .L_0116
mov ebx, dword ptr [ebp-64]
jmp dword ptr [.L_0119+ebx*4-4]
.L_0119:
.int .L_010A
.int .L_010B
.int .L_010B
.int .L_010D
.int .L_010C
.int .L_010C
.int .L_010D
.int .L_010E
.int .L_010E
.int .L_010F
.int .L_0110
.int .L_0110
.int .L_0111
.int .L_0111
.int .L_0112
.int .L_0112
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0113
.L_0107:
push 1
push 281
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-32]
mov dword ptr [ecx+28], ebx
mov dword ptr [ebp-44], 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORASSIGN
add esp, 24
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORTO
add esp, 20
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call HFORSTEP
add esp, 20
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-52], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-60], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-56]
mov dword ptr [eax+92], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 1
test ebx, ebx
je .L_011B
push dword ptr [ebp-40]
call HUDTFOR
add esp, 4
.L_011B:
.L_011A:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebx+32], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebx+64], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_011D
mov dword ptr [ebp-64], 0
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+72], 0
jne .L_0146
cmp dword ptr [ecx+68], 0
je .L_011F
.L_0146:
mov ecx, dword ptr [ebp-40]
mov eax, dword ptr [ecx+28]
and eax, 480
je .L_0120
mov dword ptr [ebp-68], 24
jmp .L_0141
.L_0120:
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [eax+28]
and ecx, 31
mov dword ptr [ebp-68], ecx
.L_0141:
mov ecx, dword ptr [ebp-68]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+20]
mov dword ptr [ebp-72], eax
jmp .L_0123
.L_0125:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 0
mov ecx, -1
jg .L_0147
jl .L_0148
cmp dword ptr [eax+36], 127
jae .L_0147
.L_0148:
xor ecx, ecx
.L_0147:
mov dword ptr [ebp-64], ecx
jmp .L_0122
.L_0126:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 0
mov eax, -1
jg .L_0149
jl .L_014A
cmp dword ptr [ecx+36], 255
jae .L_0149
.L_014A:
xor eax, eax
.L_0149:
mov dword ptr [ebp-64], eax
jmp .L_0122
.L_0127:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 0
mov ecx, -1
jg .L_014B
jl .L_014C
cmp dword ptr [eax+36], 32767
jae .L_014B
.L_014C:
xor ecx, ecx
.L_014B:
mov dword ptr [ebp-64], ecx
jmp .L_0122
.L_0128:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 0
mov eax, -1
jg .L_014D
jl .L_014E
cmp dword ptr [ecx+36], 65535
jae .L_014D
.L_014E:
xor eax, eax
.L_014D:
mov dword ptr [ebp-64], eax
jmp .L_0122
.L_0129:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 0
mov ecx, -1
jg .L_014F
jl .L_0150
cmp dword ptr [eax+36], 2147483647
jae .L_014F
.L_0150:
xor ecx, ecx
.L_014F:
mov dword ptr [ebp-64], ecx
jmp .L_0122
.L_012A:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 0
mov eax, -1
jg .L_0151
jl .L_0152
cmp dword ptr [ecx+36], 4294967295
jae .L_0151
.L_0152:
xor eax, eax
.L_0151:
mov dword ptr [ebp-64], eax
jmp .L_0122
.L_012B:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 2147483647
mov ecx, -1
ja .L_0153
jb .L_0154
cmp dword ptr [eax+36], 4294967295
jae .L_0153
.L_0154:
xor ecx, ecx
.L_0153:
mov dword ptr [ebp-64], ecx
jmp .L_0122
.L_012C:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 4294967295
mov eax, -1
ja .L_0155
jb .L_0156
cmp dword ptr [ecx+36], 4294967295
jae .L_0155
.L_0156:
xor eax, eax
.L_0155:
mov dword ptr [ebp-64], eax
jmp .L_0122
.L_0123:
mov eax, dword ptr [ebp-72]
add eax, 4294967295
cmp eax, 7
ja .L_0122
mov eax, dword ptr [ebp-72]
jmp dword ptr [.L_012D+eax*4-4]
.L_012D:
.int .L_0125
.int .L_0126
.int .L_0127
.int .L_0128
.int .L_0129
.int .L_012A
.int .L_012B
.int .L_012C
.L_0122:
jmp .L_011E
.L_011F:
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [eax+28]
and ecx, 480
je .L_012E
mov dword ptr [ebp-68], 24
jmp .L_0142
.L_012E:
mov ecx, dword ptr [ebp-40]
mov eax, dword ptr [ecx+28]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0142:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-72], ecx
jmp .L_0131
.L_0133:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 0
mov eax, -1
jl .L_0157
jg .L_0158
cmp dword ptr [ecx+36], 0
jbe .L_0157
.L_0158:
xor eax, eax
.L_0157:
mov dword ptr [ebp-64], eax
jmp .L_0130
.L_0134:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 4294967295
mov ecx, -1
jl .L_0159
jg .L_015A
cmp dword ptr [eax+36], 4294967168
jbe .L_0159
.L_015A:
xor ecx, ecx
.L_0159:
mov dword ptr [ebp-64], ecx
jmp .L_0130
.L_0135:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 4294967295
mov eax, -1
jl .L_015B
jg .L_015C
cmp dword ptr [ecx+36], 4294934528
jbe .L_015B
.L_015C:
xor eax, eax
.L_015B:
mov dword ptr [ebp-64], eax
jmp .L_0130
.L_0136:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+40], 4294967295
mov ecx, -1
jl .L_015D
jg .L_015E
cmp dword ptr [eax+36], 2147483648
jbe .L_015D
.L_015E:
xor ecx, ecx
.L_015D:
mov dword ptr [ebp-64], ecx
jmp .L_0130
.L_0137:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+40], 2147483648
mov eax, -1
jne .L_0160
cmp dword ptr [ecx+36], 0
je .L_015F
.L_0160:
xor eax, eax
.L_015F:
mov dword ptr [ebp-64], eax
jmp .L_0130
.L_0131:
mov eax, dword ptr [ebp-72]
add eax, 4294967295
cmp eax, 7
ja .L_0130
mov eax, dword ptr [ebp-72]
jmp dword ptr [.L_0138+eax*4-4]
.L_0138:
.int .L_0134
.int .L_0133
.int .L_0135
.int .L_0133
.int .L_0136
.int .L_0133
.int .L_0137
.int .L_0133
.L_0130:
.L_011E:
cmp dword ptr [ebp-64], 0
je .L_013A
push 0
push 1
push 0
push 45
call ERRREPORTWARN
add esp, 16
.L_013A:
.L_0139:
.L_011D:
.L_011C:
cmp dword ptr [ebp-44], 3
jne .L_013C
push 1
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+44]
mov eax, dword ptr [ebp-40]
lea ecx, [eax+36]
push ecx
call ASTNEWCONST
add esp, 12
push eax
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+28]
mov eax, dword ptr [ebp-40]
lea ecx, [eax+20]
push ecx
call ASTNEWCONST
add esp, 12
push eax
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+72], 0
jne .L_0161
cmp dword ptr [eax+68], 0
je .L_013D
.L_0161:
mov dword ptr [ebp-64], 50
jmp .L_0143
.L_013D:
mov dword ptr [ebp-64], 49
.L_0143:
push dword ptr [ebp-64]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-28], eax
push 8
push dword ptr [ebp-28]
call ASTCONSTFLUSHTOINT
add esp, 8
cmp edx, 0
jne .L_0140
cmp eax, 0
jne .L_0140
.L_0162:
push 0
push dword ptr [ebp-56]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.L_0140:
.L_013F:
jmp .L_013B
.L_013C:
push 0
push dword ptr [ebp-52]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.L_013B:
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-48], eax
push -1
push dword ptr [ebp-48]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
call ASTSCOPEBEGIN
mov edx, dword ptr [ebp-40]
mov dword ptr [edx+8], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-20]
mov dword ptr [eax+12], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-52]
mov dword ptr [edx+80], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-48]
mov dword ptr [eax+84], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-60]
mov dword ptr [edx+88], eax
.L_00F9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFORSTMTEND
CFORSTMTEND:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_018F:
push 2048
call LEXSKIPTOKEN
add esp, 4
.L_0191:
push -1
push 281
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0195
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0190
.L_0195:
.L_0194:
push dword ptr [ebp-4]
call HFORSTMTCLOSE
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
test eax, eax
je .L_0197
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
jmp .L_0192
.L_0197:
.L_0196:
push 38
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-8]
call CVARIABLE
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0199
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .L_0198
.L_0199:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+16]
cmp dword ptr [eax+12], ecx
je .L_019B
push 0
push 0
push 283
call ERRREPORT
add esp, 12
.L_019B:
.L_019A:
mov ecx, dword ptr [ENV+200]
and ecx, 8
test ecx, ecx
je .L_019D
push 0
push 1
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+12]
push dword ptr [eax+16]
push 26
call ERRREPORTWARN
add esp, 16
.L_019D:
.L_019C:
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 4
.L_0198:
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_019F
jmp .L_0192
.L_019F:
.L_019E:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0193:
jmp .L_0191
.L_0192:
.L_0190:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
add esp, 20
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
HELMTOEXPR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0069
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_0069:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call ASTNEWCONST
add esp, 12
mov dword ptr [ebp-4], eax
.L_0068:
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTFOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_006D
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-8], eax
.L_006D:
.L_006C:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 4
push eax
push 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_006F
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.L_006F:
.L_006E:
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTSTEP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0070:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_0073
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-8], eax
.L_0073:
.L_0072:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 4
push eax
push 25
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0075
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.L_0075:
.L_0074:
.L_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTNEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0076:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_0079
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-8], eax
.L_0079:
.L_0078:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HELMTOEXPR
add esp, 4
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call HELMTOEXPR
add esp, 4
push eax
push 26
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
push dword ptr [ebx+32]
call HUDTCALLOPOVL
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_007B
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 4
.L_007B:
.L_007A:
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSCALARSTEP:
push ebp
mov ebp, esp
push ebx
.L_007C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 1
call HFLUSHSELFBOP
add esp, 12
.L_007D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSCALARNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .L_0081
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+72], 0
jne .L_01A1
cmp dword ptr [eax+68], 0
je .L_0082
.L_01A1:
mov dword ptr [ebp-4], 50
jmp .L_01A0
.L_0082:
mov dword ptr [ebp-4], 49
.L_01A0:
push dword ptr [ebp-4]
call HFLUSHBOP
add esp, 16
jmp .L_0080
.L_0081:
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+64]
push ebx
call HELMTOEXPR
add esp, 4
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 49
call HFLUSHBOP
add esp, 16
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push 0
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
push 50
call HFLUSHBOP
add esp, 16
.L_0080:
.L_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDIMPLICITVAR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0084:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_0087
or dword ptr [ebp-12], 2
.L_0087:
.L_0086:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_0089
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
push eax
call ASTADDUNSCOPED
add esp, 4
jmp .L_0088
.L_0089:
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
push eax
call ASTADD
add esp, 4
.L_0088:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HSTORETEMP:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_008A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_008D
or dword ptr [ebp-8], 2
.L_008D:
.L_008C:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
and eax, 2
je .L_008F
push -1
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 8
push eax
call ASTADDUNSCOPED
add esp, 4
jmp .L_008E
.L_008F:
push 0
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 8
mov dword ptr [ebp-16], eax
.L_008E:
push 0
push dword ptr [ebp+16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0091
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0092
mov dword ptr [ebp-20], 24
jmp .L_01A2
.L_0092:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_01A2:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
jmp .L_0095
.L_0097:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_0094
.L_0098:
push dword ptr [AST_OPTB+8]
push -1
push 198
call ERRREPORT
add esp, 12
jmp .L_0094
.L_0095:
mov eax, dword ptr [ebp-24]
add eax, 4294967276
test eax, eax
ja .L_0098
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0099+eax*4-80]
.L_0099:
.int .L_0097
.L_0094:
.L_0091:
.L_0090:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHBOP:
push ebp
mov ebp, esp
sub esp, 12
.L_009A:
push dword ptr [ebp+12]
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009D
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 12
jmp .L_009B
.L_009D:
.L_009C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 20
jne .L_009F
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A1
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 12
jmp .L_009B
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
push dword ptr [ebp-12]
call ASTADD
add esp, 4
.L_009B:
mov esp, ebp
pop ebp
ret
.balign 16
HSTEPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_00A5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCDEREFLEN
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
jg .L_00A7
jl .L_01A3
cmp dword ptr [ebp-12], 0
ja .L_00A7
.L_01A3:
push 0
push 0
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_00A9
push 1
push 0
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 8
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
push eax
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00A8
.L_00A9:
push 0
push 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [eax+4]
push edx
push ebx
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop ebx
pop edx
add esp, 8
push edx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00A8:
jmp .L_00A4
.L_00A5:
push dword ptr [ebp+16]
call HELMTOEXPR
add esp, 4
mov dword ptr [ebp-4], eax
.L_00A4:
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHSELFBOP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00AA:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
call HSTEPEXPRESSION
add esp, 12
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTNEWSELFBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AD
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 12
jmp .L_00AB
.L_00AD:
.L_00AC:
push dword ptr [ebp-12]
call ASTADD
add esp, 4
.L_00AB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTOR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AE:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B1
jmp .L_00AF
.L_00B1:
.L_00B0:
push 64
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B3
jmp .L_00AF
.L_00B3:
.L_00B2:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HFORASSIGN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00B4:
call CASSIGNTOKEN
test eax, eax
jne .L_00B7
push 0
push 0
push 10
call ERRREPORT
add esp, 12
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
and ebx, 4
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B9
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00BB
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00BD
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00BF
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+20]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+24], ecx
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_00BD:
.L_00BC:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+28]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00C1
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .L_00C3
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_00C2
.L_00C3:
push offset Lt_00C4
push -1
push 198
call ERRREPORT
add esp, 12
.L_00C2:
jmp .L_00C0
.L_00C1:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.L_00C0:
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HCALLCTOR
add esp, 4
test eax, eax
jne .L_00C6
push 0
push 0
push 9
call ERRREPORT
add esp, 12
.L_00C6:
.L_00C5:
.L_00B8:
.L_00B5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFORTO:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00C7:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 284
je .L_00CA
push 0
push 0
push 12
call ERRREPORT
add esp, 12
jmp .L_00C9
.L_00CA:
push 2048
call LEXSKIPTOKEN
add esp, 4
.L_00C9:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .L_00CC
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00CE
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00D0
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00D2
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+20]
mov dword ptr [ebx+36], ecx
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+40], ecx
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00CF
.L_00D0:
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HSTORETEMP
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+44], eax
.L_00CF:
jmp .L_00CB
.L_00CC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HADDIMPLICITVAR
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HCALLCTOR
add esp, 4
test eax, eax
jne .L_00D4
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.L_00D4:
.L_00D3:
.L_00CB:
.L_00C8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFORSTEP:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_00D5:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+100], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 282
jne .L_00D8
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+100], -1
.L_00D8:
.L_00D7:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .L_00DA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_00DC
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DE
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00DE:
.L_00DD:
jmp .L_00DB
.L_00DC:
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00DB:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_00E0
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E1
mov dword ptr [ebp-16], 24
jmp .L_01AA
.L_00E1:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_01AA:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00E4
push dword ptr [ebp+16]
call TYPETOSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
jmp .L_00E3
.L_00E4:
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.L_00E3:
.L_00E0:
.L_00DF:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00E6
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00E8
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00E8:
.L_00E7:
push dword ptr [ebp-12]
call ASTCONSTGEZERO
add esp, 4
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], ecx
mov dword ptr [eax+72], ebx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], 0
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .L_00EA
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], 11
jmp .L_00E9
.L_00EA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+60], ebx
.L_00E9:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebx+52], eax
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+56], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .L_00E5
.L_00E6:
mov dword ptr [ebp-4], -1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .L_00EC
mov dword ptr [ebp-16], 11
mov dword ptr [ebp-20], 0
.L_00EC:
.L_00EB:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call HSTORETEMP
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
.L_00E5:
jmp .L_00D9
.L_00DA:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_00EE
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HADDIMPLICITVAR
add esp, 8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+48]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call HCALLCTOR
add esp, 4
test eax, eax
jne .L_00F0
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.L_00F0:
.L_00EF:
.L_00EE:
.L_00ED:
.L_00D9:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00F1
mov dword ptr [ebp-8], 24
jmp .L_01AB
.L_00F1:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01AB:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+8]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_00F4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 4294967295
mov dword ptr [eax+72], 4294967295
jmp .L_00F3
.L_00F4:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-4]
je .L_00F5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-12], ecx
push 0
push 8
call HADDIMPLICITVAR
add esp, 8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 8
push 1
push 0
lea eax, [ebp-24]
push eax
call HELMTOEXPR
add esp, 4
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+48]
push ecx
call HELMTOEXPR
add esp, 4
push eax
push 49
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_00F7
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.L_00F7:
.L_00F6:
push 0
push dword ptr [ebp-28]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .L_00F3
.L_00F5:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.L_00F3:
.L_00D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTCALLOPOVL:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_0163:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0166
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push 198
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0164
.L_0166:
.L_0165:
cmp dword ptr [ebp+20], 0
jne .L_0168
push 0
lea eax, [ebp-12]
push eax
push 0
push 0
push dword ptr [ebp-8]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0167
.L_0168:
lea eax, [ebp-36]
mov dword ptr [ebp-72], eax
lea eax, [ebp-36]
mov dword ptr [ebp-68], eax
mov dword ptr [ebp-64], 24
mov dword ptr [ebp-60], 12
mov dword ptr [ebp-56], 1
mov dword ptr [ebp-52], 49
mov dword ptr [ebp-48], 2
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-76], 1
lea eax, [ebp-36]
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-80]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+4], -1
mov ebx, dword ptr [ebp-80]
mov dword ptr [ebx+8], 0
cmp dword ptr [ebp+12], 26
jne .L_016C
cmp dword ptr [ebp+24], 0
je .L_016E
lea ebx, [ebp-24]
mov dword ptr [ebp-28], ebx
inc dword ptr [ebp-76]
lea ebx, [ebp-24]
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp-80]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+4], -1
mov eax, dword ptr [ebp-80]
mov dword ptr [eax+8], 0
.L_016E:
.L_016D:
.L_016C:
.L_016B:
push 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-36]
push eax
push dword ptr [ebp-76]
push dword ptr [ebp-8]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
.L_0167:
cmp dword ptr [ebp-8], 0
jne .L_0171
cmp dword ptr [ebp-12], 0
je .L_0173
push 0
push -1
push dword ptr [ebp-12]
call ERRREPORT
add esp, 12
jmp .L_0172
.L_0173:
push 0
push -1
push 7
push offset Lt_0174
push 0
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
jmp .L_0177
.L_0179:
cmp dword ptr [ebp+20], 0
jne .L_017B
push 0
push 4
push offset Lt_017C
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_017B:
.L_017A:
jmp .L_0176
.L_017D:
cmp dword ptr [ebp+24], 0
jne .L_017F
push 0
push 4
push offset Lt_017C
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_017F:
.L_017E:
jmp .L_0176
.L_0177:
mov eax, dword ptr [ebp-40]
add eax, 4294967272
cmp eax, 2
ja .L_0176
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_0180+eax*4-96]
.L_0180:
.int .L_0179
.int .L_0179
.int .L_017D
.L_0176:
push 0
push 7
push offset Lt_0181
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-24]
push -1
push 198
call ERRREPORT
add esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0172:
mov dword ptr [ebp-4], 0
jmp .L_0164
jmp .L_0170
.L_0171:
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0183
push 0
push 1
push 0
push dword ptr [ebp-8]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
jmp .L_0164
.L_0183:
.L_0182:
.L_0170:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFORSTMTCLOSE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0184:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_0187
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.L_0187:
.L_0186:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 20
jne .L_018A
.L_018B:
push dword ptr [ebp+8]
call HUDTSTEP
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push dword ptr [ebp+8]
call HUDTNEXT
add esp, 4
jmp .L_0188
.L_018A:
push dword ptr [ebp+8]
call HSCALARSTEP
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push dword ptr [ebp+8]
call HSCALARNEXT
add esp, 4
.L_018C:
.L_0188:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_018E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTSCOPEEND
add esp, 4
.L_018E:
.L_018D:
.L_0185:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_00C4:	.ascii	"let\0"
.balign 4
Lt_0174:	.ascii	" (with\0"
.balign 4
Lt_017C:	.ascii	"out\0"
.balign 4
Lt_0181:	.ascii	" step)\0"
