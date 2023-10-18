	.intel_syntax noprefix

.section .text
.balign 16

.globl _CFORSTMTBEGIN@0
_CFORSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.L_00F9:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 38
lea eax, [ebp-16]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-12], eax
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00FC
push 0
push 0
push 27
call _ERRREPORT@12
.L_00FC:
.L_00FB:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 376
jne .L_00FE
push -1
push 0
call _LEXGETTOKEN@4
push eax
push 0
push 0
call _CVARDECL@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0100
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
jmp .L_00FF
.L_0100:
or dword ptr [ebp-4], 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.L_00FF:
jmp .L_00FD
.L_00FE:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 40
jne .L_0101
push 0
push -1
push 52
call _ERRREPORT@12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
jmp .L_00FD
.L_0101:
push -1
push dword ptr [ebp-12]
call _CVARIABLE@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0103
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.L_0103:
.L_0102:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax], 17
je .L_0105
push 0
push -1
push 52
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
.L_0105:
.L_0104:
.L_00FD:
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
je .L_0107
push 0
push 0
push 119
call _ERRREPORT@12
.L_0107:
.L_0106:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-64], ebx
jmp .L_0109
.L_010B:
push 0
push -1
push 20
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
jmp .L_0108
.L_010C:
jmp .L_0108
.L_010D:
jmp .L_0108
.L_010E:
jmp .L_0108
.L_010F:
jmp .L_0108
.L_0110:
jmp .L_0108
.L_0111:
jmp .L_0108
.L_0112:
jmp .L_0108
.L_0113:
jmp .L_0108
.L_0114:
or dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+12]
call _SYMBHASCTOR@4
test eax, eax
je .L_0116
or dword ptr [ebp-4], 2
.L_0116:
.L_0115:
jmp .L_0108
.L_0117:
mov eax, dword ptr [ebp-32]
and eax, 480
test eax, eax
jne .L_0119
push 0
push -1
push 52
call _ERRREPORT@12
push dword ptr [ebp-24]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
.L_0119:
.L_0118:
jmp .L_0108
.L_0109:
mov ebx, dword ptr [ebp-64]
add ebx, 4294967295
cmp ebx, 19
ja .L_0117
mov ebx, dword ptr [ebp-64]
jmp dword ptr [_.L_011A+ebx*4-4]
_.L_011A:
.int .L_010B
.int .L_010C
.int .L_010C
.int .L_010E
.int .L_010D
.int .L_010D
.int .L_010E
.int .L_010F
.int .L_010F
.int .L_0110
.int .L_0111
.int .L_0111
.int .L_0112
.int .L_0112
.int .L_0113
.int .L_0113
.int .L_0117
.int .L_0117
.int .L_0117
.int .L_0114
.L_0108:
push 1
push 281
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+24], ecx
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-32]
mov dword ptr [ecx+40], ebx
mov dword ptr [ebp-44], 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORASSIGN@24
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORTO@20
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push dword ptr [ebp-32]
lea ebx, [ebp-44]
push ebx
push dword ptr [ebp-40]
call _HFORSTEP@20
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-52], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-60], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-56]
mov dword ptr [eax+132], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 1
test ebx, ebx
je .L_011C
push dword ptr [ebp-40]
call _HUDTFOR@4
.L_011C:
.L_011B:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebx+48], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebx+96], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_011E
mov dword ptr [ebp-64], 0
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+108], 0
jne .L_0147
cmp dword ptr [ecx+104], 0
je .L_0120
.L_0147:
mov ecx, dword ptr [ebp-40]
mov eax, dword ptr [ecx+40]
and eax, 480
je .L_0121
mov dword ptr [ebp-68], 24
jmp .L_0142
.L_0121:
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [eax+40]
and ecx, 31
mov dword ptr [ebp-68], ecx
.L_0142:
mov ecx, dword ptr [ebp-68]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+20]
mov dword ptr [ebp-72], eax
jmp .L_0124
.L_0126:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 0
mov ecx, -1
jg .L_0148
jl .L_0149
cmp dword ptr [eax+56], 127
jae .L_0148
.L_0149:
xor ecx, ecx
.L_0148:
mov dword ptr [ebp-64], ecx
jmp .L_0123
.L_0127:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 0
mov eax, -1
jg .L_014A
jl .L_014B
cmp dword ptr [ecx+56], 255
jae .L_014A
.L_014B:
xor eax, eax
.L_014A:
mov dword ptr [ebp-64], eax
jmp .L_0123
.L_0128:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 0
mov ecx, -1
jg .L_014C
jl .L_014D
cmp dword ptr [eax+56], 32767
jae .L_014C
.L_014D:
xor ecx, ecx
.L_014C:
mov dword ptr [ebp-64], ecx
jmp .L_0123
.L_0129:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 0
mov eax, -1
jg .L_014E
jl .L_014F
cmp dword ptr [ecx+56], 65535
jae .L_014E
.L_014F:
xor eax, eax
.L_014E:
mov dword ptr [ebp-64], eax
jmp .L_0123
.L_012A:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 0
mov ecx, -1
jg .L_0150
jl .L_0151
cmp dword ptr [eax+56], 2147483647
jae .L_0150
.L_0151:
xor ecx, ecx
.L_0150:
mov dword ptr [ebp-64], ecx
jmp .L_0123
.L_012B:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 0
mov eax, -1
jg .L_0152
jl .L_0153
cmp dword ptr [ecx+56], 4294967295
jae .L_0152
.L_0153:
xor eax, eax
.L_0152:
mov dword ptr [ebp-64], eax
jmp .L_0123
.L_012C:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 2147483647
mov ecx, -1
ja .L_0154
jb .L_0155
cmp dword ptr [eax+56], 4294967295
jae .L_0154
.L_0155:
xor ecx, ecx
.L_0154:
mov dword ptr [ebp-64], ecx
jmp .L_0123
.L_012D:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 4294967295
mov eax, -1
ja .L_0156
jb .L_0157
cmp dword ptr [ecx+56], 4294967295
jae .L_0156
.L_0157:
xor eax, eax
.L_0156:
mov dword ptr [ebp-64], eax
jmp .L_0123
.L_0124:
mov eax, dword ptr [ebp-72]
add eax, 4294967295
cmp eax, 7
ja .L_0123
mov eax, dword ptr [ebp-72]
jmp dword ptr [_.L_012E+eax*4-4]
_.L_012E:
.int .L_0126
.int .L_0127
.int .L_0128
.int .L_0129
.int .L_012A
.int .L_012B
.int .L_012C
.int .L_012D
.L_0123:
jmp .L_011F
.L_0120:
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [eax+40]
and ecx, 480
je .L_012F
mov dword ptr [ebp-68], 24
jmp .L_0143
.L_012F:
mov ecx, dword ptr [ebp-40]
mov eax, dword ptr [ecx+40]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0143:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-72], ecx
jmp .L_0132
.L_0134:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 0
mov eax, -1
jl .L_0158
jg .L_0159
cmp dword ptr [ecx+56], 0
jbe .L_0158
.L_0159:
xor eax, eax
.L_0158:
mov dword ptr [ebp-64], eax
jmp .L_0131
.L_0135:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 4294967295
mov ecx, -1
jl .L_015A
jg .L_015B
cmp dword ptr [eax+56], 4294967168
jbe .L_015A
.L_015B:
xor ecx, ecx
.L_015A:
mov dword ptr [ebp-64], ecx
jmp .L_0131
.L_0136:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 4294967295
mov eax, -1
jl .L_015C
jg .L_015D
cmp dword ptr [ecx+56], 4294934528
jbe .L_015C
.L_015D:
xor eax, eax
.L_015C:
mov dword ptr [ebp-64], eax
jmp .L_0131
.L_0137:
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+60], 4294967295
mov ecx, -1
jl .L_015E
jg .L_015F
cmp dword ptr [eax+56], 2147483648
jbe .L_015E
.L_015F:
xor ecx, ecx
.L_015E:
mov dword ptr [ebp-64], ecx
jmp .L_0131
.L_0138:
mov ecx, dword ptr [ebp-40]
cmp dword ptr [ecx+60], 2147483648
mov eax, -1
jne .L_0161
cmp dword ptr [ecx+56], 0
je .L_0160
.L_0161:
xor eax, eax
.L_0160:
mov dword ptr [ebp-64], eax
jmp .L_0131
.L_0132:
mov eax, dword ptr [ebp-72]
add eax, 4294967295
cmp eax, 7
ja .L_0131
mov eax, dword ptr [ebp-72]
jmp dword ptr [_.L_0139+eax*4-4]
_.L_0139:
.int .L_0135
.int .L_0134
.int .L_0136
.int .L_0134
.int .L_0137
.int .L_0134
.int .L_0138
.int .L_0134
.L_0131:
.L_011F:
cmp dword ptr [ebp-64], 0
je .L_013B
push 0
push 1
push 0
push 45
call _ERRREPORTWARN@16
.L_013B:
.L_013A:
.L_011E:
.L_011D:
cmp dword ptr [ebp-44], 3
jne .L_013D
push 1
push 0
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+64]
mov eax, dword ptr [ebp-40]
lea ecx, [eax+56]
push ecx
call _ASTNEWCONST@12
push eax
push 0
mov eax, dword ptr [ebp-40]
push dword ptr [eax+40]
mov eax, dword ptr [ebp-40]
lea ecx, [eax+32]
push ecx
call _ASTNEWCONST@12
push eax
mov eax, dword ptr [ebp-40]
cmp dword ptr [eax+108], 0
jne .L_0162
cmp dword ptr [eax+104], 0
je .L_013E
.L_0162:
mov dword ptr [ebp-64], 50
jmp .L_0144
.L_013E:
mov dword ptr [ebp-64], 49
.L_0144:
push dword ptr [ebp-64]
call _ASTNEWBOP@20
mov dword ptr [ebp-28], eax
push 8
push dword ptr [ebp-28]
call _ASTCONSTFLUSHTOINT@8
cmp edx, 0
jne .L_0141
cmp eax, 0
jne .L_0141
.L_0163:
push 0
push dword ptr [ebp-56]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.L_0141:
.L_0140:
jmp .L_013C
.L_013D:
push 0
push dword ptr [ebp-52]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.L_013C:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-48], eax
push -1
push dword ptr [ebp-48]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
call _ASTSCOPEBEGIN@0
mov edx, dword ptr [ebp-40]
mov dword ptr [edx+8], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-20]
mov dword ptr [eax+16], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-52]
mov dword ptr [edx+120], eax
mov eax, dword ptr [ebp-40]
mov edx, dword ptr [ebp-48]
mov dword ptr [eax+124], edx
mov edx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-60]
mov dword ptr [edx+128], eax
.L_00FA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFORSTMTEND@0
_CFORSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0190:
push 2048
call _LEXSKIPTOKEN@4
.L_0192:
push -1
push 281
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0196
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0191
.L_0196:
.L_0195:
push dword ptr [ebp-4]
call _HFORSTMTCLOSE@4
push 0
call _LEXGETCLASS@4
test eax, eax
je .L_0198
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
jmp .L_0193
.L_0198:
.L_0197:
push 38
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-8]
call _CVARIABLE@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_019A
push 0
push 0
push 14
call _ERRREPORT@12
jmp .L_0199
.L_019A:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+12], ecx
je .L_019C
push 0
push 0
push 283
call _ERRREPORT@12
.L_019C:
.L_019B:
mov ecx, dword ptr [_ENV+200]
and ecx, 8
test ecx, ecx
je .L_019E
push 0
push 1
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+12]
push dword ptr [eax+16]
push 26
call _ERRREPORTWARN@16
.L_019E:
.L_019D:
push dword ptr [ebp-16]
call _ASTDELTREE@4
.L_0199:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_01A0
jmp .L_0193
.L_01A0:
.L_019F:
push 0
call _LEXSKIPTOKEN@4
.L_0194:
jmp .L_0192
.L_0193:
.L_0191:
pop ebx
mov esp, ebp
pop ebp
ret
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
_HELMTOEXPR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_006A
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
jmp .L_0069
.L_006A:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call _ASTNEWCONST@12
mov dword ptr [ebp-4], eax
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTFOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006B:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .L_006E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.L_006E:
.L_006D:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0070
push dword ptr [ebp-4]
call _ASTADD@4
.L_0070:
.L_006F:
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTSTEP@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0071:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .L_0074
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.L_0074:
.L_0073:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 25
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0076
push dword ptr [ebp-4]
call _ASTADD@4
.L_0076:
.L_0075:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HUDTNEXT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0077:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .L_007A
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
.L_007A:
.L_0079:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
call _HELMTOEXPR@4
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+24]
push ebx
call _HELMTOEXPR@4
push eax
push 26
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+32]
call _HUDTCALLOPOVL@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_007C
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
push 48
call _ASTNEWBOP@20
push eax
call _ASTADD@4
.L_007C:
.L_007B:
.L_0078:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSCALARSTEP@4:
push ebp
mov ebp, esp
push ebx
.L_007D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 1
call _HFLUSHSELFBOP@12
.L_007E:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSCALARNEXT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .L_0082
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jne .L_01A2
cmp dword ptr [eax+104], 0
je .L_0083
.L_01A2:
mov dword ptr [ebp-4], 50
jmp .L_01A1
.L_0083:
mov dword ptr [ebp-4], 49
.L_01A1:
push dword ptr [ebp-4]
call _HFLUSHBOP@16
jmp .L_0081
.L_0082:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+96]
push ebx
call _HELMTOEXPR@4
push eax
push 48
call _ASTNEWBOP@20
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 49
call _HFLUSHBOP@16
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push 0
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+124]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+48]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+24]
push eax
push 50
call _HFLUSHBOP@16
.L_0081:
.L_0080:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDIMPLICITVAR@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0085:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_0088
or dword ptr [ebp-12], 2
.L_0088:
.L_0087:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_008A
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
jmp .L_0089
.L_008A:
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL@8
push eax
call _ASTADD@4
.L_0089:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSTORETEMP@12:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_008B:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_008E
or dword ptr [ebp-8], 2
.L_008E:
.L_008D:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
and eax, 2
je .L_0090
push -1
push dword ptr [ebp-12]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
jmp .L_008F
.L_0090:
push 0
push dword ptr [ebp-12]
call _ASTNEWDECL@8
mov dword ptr [ebp-16], eax
.L_008F:
push 0
push dword ptr [ebp+16]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp+16], eax
cmp dword ptr [ebp+16], 0
jne .L_0092
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0093
mov dword ptr [ebp-20], 24
jmp .L_01A3
.L_0093:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_01A3:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
jmp .L_0096
.L_0098:
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_0095
.L_0099:
push dword ptr [_AST_OPTB+8]
push -1
push 198
call _ERRREPORT@12
jmp .L_0095
.L_0096:
mov eax, dword ptr [ebp-24]
add eax, 4294967276
test eax, eax
ja .L_0099
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_009A+eax*4-80]
_.L_009A:
.int .L_0098
.L_0095:
.L_0092:
.L_0091:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFLUSHBOP@16:
push ebp
mov ebp, esp
sub esp, 12
.L_009B:
push dword ptr [ebp+12]
call _HELMTOEXPR@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _HELMTOEXPR@4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009E
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .L_009C
.L_009E:
.L_009D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+16], 20
jne .L_00A0
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A2
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .L_009C
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
push dword ptr [ebp-12]
call _ASTADD@4
.L_009C:
mov esp, ebp
pop ebp
ret 16
.balign 16
_HSTEPEXPRESSION@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A3:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .L_00A6
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCDEREFLEN@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
jg .L_00A8
jl .L_01A4
cmp dword ptr [ebp-12], 0
ja .L_00A8
.L_01A4:
push 0
push 0
push 71
call _ERRREPORT@12
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_00AA
push 1
push 0
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWCONSTI@16
push eax
push 0
push 8
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ASTNEWVAR@20
push eax
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
jmp .L_00A9
.L_00AA:
push 0
push 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebp-8]
push dword ptr [eax+12]
push dword ptr [eax+8]
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
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00A9:
jmp .L_00A5
.L_00A6:
push dword ptr [ebp+16]
call _HELMTOEXPR@4
mov dword ptr [ebp-4], eax
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFLUSHSELFBOP@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00AB:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call _HSTEPEXPRESSION@12
mov dword ptr [ebp-8], eax
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTNEWSELFBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AE
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
jmp .L_00AC
.L_00AE:
.L_00AD:
push dword ptr [ebp-12]
call _ASTADD@4
.L_00AC:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCALLCTOR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AF:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call _CINITIALIZER@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B2
jmp .L_00B0
.L_00B2:
.L_00B1:
push 64
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B4
jmp .L_00B0
.L_00B4:
.L_00B3:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFORASSIGN@24:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00B5:
call _CASSIGNTOKEN@0
test eax, eax
jne .L_00B8
push 0
push 0
push 10
call _ERRREPORT@12
.L_00B8:
.L_00B7:
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
je .L_00BA
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00BC
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00BC:
.L_00BB:
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
je .L_00BE
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00C0
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+36], ecx
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_00BE:
.L_00BD:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+28]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00C2
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .L_00C4
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_00C3
.L_00C4:
push offset _Lt_00C5
push -1
push 198
call _ERRREPORT@12
.L_00C3:
jmp .L_00C1
.L_00C2:
push dword ptr [ebp-4]
call _ASTADD@4
.L_00C1:
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HCALLCTOR@4
test eax, eax
jne .L_00C7
push 0
push 0
push 9
call _ERRREPORT@12
.L_00C7:
.L_00C6:
.L_00B9:
.L_00B6:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16
_HFORTO@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00C8:
push 0
call _LEXGETTOKEN@4
cmp eax, 284
je .L_00CB
push 0
push 0
push 12
call _ERRREPORT@12
jmp .L_00CA
.L_00CB:
push 2048
call _LEXSKIPTOKEN@4
.L_00CA:
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .L_00CD
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00CF
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00CF:
.L_00CE:
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
je .L_00D1
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00D3
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+56], ecx
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+60], ecx
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .L_00D0
.L_00D1:
push dword ptr [ebp-4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HSTORETEMP@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
.L_00D0:
jmp .L_00CC
.L_00CD:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HADDIMPLICITVAR@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call _HCALLCTOR@4
test eax, eax
jne .L_00D5
push 0
push 0
push 24
call _ERRREPORT@12
.L_00D5:
.L_00D4:
.L_00CC:
.L_00C9:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HFORSTEP@20:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_00D6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+140], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 282
jne .L_00D9
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+140], -1
.L_00D9:
.L_00D8:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+24]
and eax, 2
test eax, eax
jne .L_00DB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .L_00DD
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DF
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00DF:
.L_00DE:
jmp .L_00DC
.L_00DD:
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00DC:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_00E1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E2
mov dword ptr [ebp-16], 24
jmp .L_01AB
.L_00E2:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_01AB:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00E5
push dword ptr [ebp+16]
call _TYPETOSIGNED@4
mov dword ptr [ebp+16], eax
jmp .L_00E4
.L_00E5:
push dword ptr [ebp+16]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp+16], eax
.L_00E4:
.L_00E1:
.L_00E0:
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
je .L_00E7
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00E9
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00E9:
.L_00E8:
push dword ptr [ebp-12]
call _ASTCONSTGEZERO@4
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+104], ecx
mov dword ptr [eax+108], ebx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], 0
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .L_00EB
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], 11
jmp .L_00EA
.L_00EB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+88], ebx
.L_00EA:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [ecx+28]
mov dword ptr [ebx+84], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .L_00E6
.L_00E7:
mov dword ptr [ebp-4], -1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
test ecx, ecx
je .L_00ED
mov dword ptr [ebp-16], 11
mov dword ptr [ebp-20], 0
.L_00ED:
.L_00EC:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _HSTORETEMP@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], eax
.L_00E6:
jmp .L_00DA
.L_00DB:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .L_00EF
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HADDIMPLICITVAR@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+72], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+88], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+72]
call _HCALLCTOR@4
test eax, eax
jne .L_00F1
push 0
push 0
push 24
call _ERRREPORT@12
.L_00F1:
.L_00F0:
.L_00EF:
.L_00EE:
.L_00DA:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00F2
mov dword ptr [ebp-8], 24
jmp .L_01AC
.L_00F2:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01AC:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+8]
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
je .L_00F5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+104], 4294967295
mov dword ptr [eax+108], 4294967295
jmp .L_00F4
.L_00F5:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-4]
je .L_00F6
lea eax, [ebp-32]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 6
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+88]
mov dword ptr [ebp-16], ecx
push 0
push 8
call _HADDIMPLICITVAR@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+96], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 8
push 1
push 0
lea eax, [ebp-32]
push eax
call _HELMTOEXPR@4
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call _HELMTOEXPR@4
push eax
push 49
call _ASTNEWBOP@20
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_00F8
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
.L_00F8:
.L_00F7:
push 0
push dword ptr [ebp-36]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+96]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
jmp .L_00F4
.L_00F6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
.L_00F4:
.L_00D7:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HUDTCALLOPOVL@20:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_0164:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0167
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push 198
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_0165
.L_0167:
.L_0166:
cmp dword ptr [ebp+20], 0
jne .L_0169
push 0
lea eax, [ebp-12]
push eax
push 0
push 0
push dword ptr [ebp-8]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-8], eax
jmp .L_0168
.L_0169:
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
jne .L_016D
cmp dword ptr [ebp+24], 0
je .L_016F
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
.L_016F:
.L_016E:
.L_016D:
.L_016C:
push 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-36]
push eax
push dword ptr [ebp-76]
push dword ptr [ebp-8]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-8], eax
.L_0168:
cmp dword ptr [ebp-8], 0
jne .L_0172
cmp dword ptr [ebp-12], 0
je .L_0174
push 0
push -1
push dword ptr [ebp-12]
call _ERRREPORT@12
jmp .L_0173
.L_0174:
push 0
push -1
push 7
push offset _Lt_0175
push 0
mov eax, dword ptr [ebp+12]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-40], eax
jmp .L_0178
.L_017A:
cmp dword ptr [ebp+20], 0
jne .L_017C
push 0
push 4
push offset _Lt_017D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_017C:
.L_017B:
jmp .L_0177
.L_017E:
cmp dword ptr [ebp+24], 0
jne .L_0180
push 0
push 4
push offset _Lt_017D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0180:
.L_017F:
jmp .L_0177
.L_0178:
mov eax, dword ptr [ebp-40]
add eax, 4294967272
cmp eax, 2
ja .L_0177
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_0181+eax*4-96]
_.L_0181:
.int .L_017A
.int .L_017A
.int .L_017E
.L_0177:
push 0
push 7
push offset _Lt_0182
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-24]
push -1
push 198
call _ERRREPORT@12
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0173:
mov dword ptr [ebp-4], 0
jmp .L_0165
jmp .L_0171
.L_0172:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_0184
push 0
push 1
push 0
push dword ptr [ebp-8]
call _SYMBGETFULLPROCNAME@4
push eax
push 202
call _ERRREPORTEX@20
mov dword ptr [ebp-4], 0
jmp .L_0165
.L_0184:
.L_0183:
.L_0171:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTBUILDCALL@16
mov dword ptr [ebp-4], eax
.L_0165:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HFORSTMTCLOSE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0185:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_0188
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.L_0188:
.L_0187:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+128]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 20
jne .L_018B
.L_018C:
push dword ptr [ebp+8]
call _HUDTSTEP@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+120]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp+8]
call _HUDTNEXT@4
jmp .L_0189
.L_018B:
push dword ptr [ebp+8]
call _HSCALARSTEP@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+120]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp+8]
call _HSCALARNEXT@4
.L_018D:
.L_0189:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_018F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTSCOPEEND@4
.L_018F:
.L_018E:
.L_0186:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_00C5:	.ascii	"let\0"
.balign 4
_Lt_0175:	.ascii	" (with\0"
.balign 4
_Lt_017D:	.ascii	"out\0"
.balign 4
_Lt_0182:	.ascii	" step)\0"
