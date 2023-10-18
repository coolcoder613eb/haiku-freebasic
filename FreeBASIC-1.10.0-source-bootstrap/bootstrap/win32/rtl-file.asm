	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLFILEMODINIT@0
_RTLFILEMODINIT@0:
.L_00B7:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.L_00B8:
ret
.balign 16

.globl _RTLFILEMODEND@0
_RTLFILEMODEND@0:
.L_00B9:
.L_00BA:
ret
.balign 16

.globl _RTLFILEOPEN@36
_RTLFILEOPEN@36:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+40], 0
jne .L_00BE
.L_00BF:
cmp dword ptr [ebp+32], 0
jne .L_00C1
push 224
push offset _Lt_0068
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
jmp .L_00C0
.L_00C1:
push 225
push offset _Lt_0069
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_00C0:
jmp .L_00BD
.L_00BE:
cmp dword ptr [ebp+40], 1
jne .L_00C2
.L_00C3:
push 227
push offset _Lt_006B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00C2:
cmp dword ptr [ebp+40], 2
jne .L_00C4
.L_00C5:
push 228
push offset _Lt_006C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00C4:
cmp dword ptr [ebp+40], 3
jne .L_00C6
.L_00C7:
push 229
push offset _Lt_006D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00C6:
cmp dword ptr [ebp+40], 4
jne .L_00C8
.L_00C9:
push 230
push offset _Lt_006E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00C8:
cmp dword ptr [ebp+40], 5
jne .L_00CA
.L_00CB:
push 231
push offset _Lt_006F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00CA:
cmp dword ptr [ebp+40], 6
jne .L_00CC
.L_00CD:
push 232
push offset _Lt_0070
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_00BD
.L_00CC:
push 233
push offset _Lt_0071
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_00D2
.L_00D3:
cmp dword ptr [ebp-20], 1
jne .L_00D1
.L_00D2:
push offset _Lt_00D4
call _FBADDLIB@4
push offset _Lt_00D5
call _FBADDLIB@4
.L_00D1:
.L_00CF:
.L_00CE:
.L_00BD:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00D7
jmp .L_00BC
.L_00D7:
.L_00D6:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00D9
jmp .L_00BC
.L_00D9:
.L_00D8:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00DB
jmp .L_00BC
.L_00DB:
.L_00DA:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00DD
jmp .L_00BC
.L_00DD:
.L_00DC:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00DF
jmp .L_00BC
.L_00DF:
.L_00DE:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00E1
jmp .L_00BC
.L_00E1:
.L_00E0:
cmp dword ptr [ebp-16], 0
je .L_00E3
cmp dword ptr [ebp+32], 0
jne .L_00E5
push 0
push 36
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+32], eax
.L_00E5:
.L_00E4:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00E7
jmp .L_00BC
.L_00E7:
.L_00E6:
.L_00E3:
.L_00E2:
cmp dword ptr [ebp+36], 0
jne .L_00E9
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_00E9:
.L_00E8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _RTLFILEOPENSHORT@28
_RTLFILEOPENSHORT@28:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00EA:
mov dword ptr [ebp-4], 0
push 0
push 226
push offset _Lt_006A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00ED
jmp .L_00EB
.L_00ED:
.L_00EC:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00EF
jmp .L_00EB
.L_00EF:
.L_00EE:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00F1
jmp .L_00EB
.L_00F1:
.L_00F0:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00F3
jmp .L_00EB
.L_00F3:
.L_00F2:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00F5
jmp .L_00EB
.L_00F5:
.L_00F4:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00F7
jmp .L_00EB
.L_00F7:
.L_00F6:
cmp dword ptr [ebp+32], 0
jne .L_00F9
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_00F9:
.L_00F8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 28
.balign 16

.globl _RTLFILECLOSE@8
_RTLFILECLOSE@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00FA:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_00FD
push 0
push 234
push offset _Lt_0072
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00FF
jmp .L_00FB
.L_00FF:
.L_00FE:
jmp .L_00FC
.L_00FD:
push 0
push 235
push offset _Lt_0073
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
.L_00FC:
cmp dword ptr [ebp+12], 0
jne .L_0101
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_0101:
.L_0100:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLFILESEEK@8
_RTLFILESEEK@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0102:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0104
mov dword ptr [ebp-20], 24
jmp .L_010C
.L_0104:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_010C:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jne .L_0107
push 262
push offset _Lt_008C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0106
.L_0107:
push 261
push offset _Lt_008B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0106:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0109
jmp .L_0103
.L_0109:
.L_0108:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_010B
jmp .L_0103
.L_010B:
.L_010A:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLFILETELL@4
_RTLFILETELL@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010D:
mov dword ptr [ebp-4], 0
push 0
push 260
push offset _Lt_008A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0110
jmp .L_010E
.L_0110:
.L_010F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLFILEPUT@20
_RTLFILEPUT@20:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0111:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _SYMBISSTRING@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+12], 0
jne .L_0114
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_0114:
.L_0113:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0115
mov dword ptr [ebp-44], 24
jmp .L_0130
.L_0115:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0130:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-24], 0
je .L_0118
cmp dword ptr [ebp-28], 0
je .L_011A
push 239
push offset _Lt_0077
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0119
.L_011A:
push 238
push offset _Lt_0076
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0119:
jmp .L_0117
.L_0118:
cmp dword ptr [ebp-28], 0
je .L_011C
push 237
push offset _Lt_0075
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_011B
.L_011C:
push 236
push offset _Lt_0074
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_011B:
.L_0117:
push 0
push dword ptr [ebp-40]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_011E
jmp .L_0112
.L_011E:
.L_011D:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0120
jmp .L_0112
.L_0120:
.L_011F:
cmp dword ptr [ebp-24], 0
je .L_0122
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .L_0121
.L_0122:
push dword ptr [ebp+16]
call _RTLCALCEXPRLEN@4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.L_0121:
cmp dword ptr [ebp+20], 0
jne .L_0124
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .L_0123
.L_0124:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.L_0123:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 20
jne .L_0126
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov edx, dword ptr [eax+120]
and edx, 4
test edx, edx
je .L_0128
push 10
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call _ERRREPORTPARAMWARN@16
.L_0128:
.L_0127:
jmp .L_0125
.L_0126:
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0129
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.L_0129:
.L_0125:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_012B
jmp .L_0112
.L_012B:
.L_012A:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_012D
jmp .L_0112
.L_012D:
.L_012C:
cmp dword ptr [ebp+24], 0
jne .L_012F
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_012F:
.L_012E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILEPUTARRAY@16
_RTLFILEPUTARRAY@16:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0132:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0135
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_0135:
.L_0134:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0136
mov dword ptr [ebp-20], 24
jmp .L_0147
.L_0136:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0147:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jne .L_0139
push 243
push offset _Lt_0079
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0138
.L_0139:
push 242
push offset _Lt_0078
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0138:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_013B
jmp .L_0133
.L_013B:
.L_013A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_013D
jmp .L_0133
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_013F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 4
test ebx, ebx
je .L_0141
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call _ERRREPORTPARAMWARN@16
.L_0141:
.L_0140:
jmp .L_013E
.L_013F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0142
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.L_0142:
.L_013E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0144
jmp .L_0133
.L_0144:
.L_0143:
cmp dword ptr [ebp+20], 0
jne .L_0146
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_0146:
.L_0145:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0133:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILEGET@24
_RTLFILEGET@24:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_0148:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _SYMBISSTRING@4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp+12], 0
jne .L_014B
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_014B:
.L_014A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_014C
mov dword ptr [ebp-48], 24
jmp .L_017B
.L_014C:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_017B:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+24], 0
je .L_014F
cmp dword ptr [ebp-24], 0
je .L_0151
cmp dword ptr [ebp-28], 0
je .L_0153
cmp dword ptr [ebp-44], 0
je .L_0155
push 257
push offset _Lt_0087
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0154
.L_0155:
push 255
push offset _Lt_0086
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0154:
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-44], 0
je .L_0157
push 256
push offset _Lt_0085
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0156
.L_0157:
push 254
push offset _Lt_0084
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0156:
.L_0152:
jmp .L_0150
.L_0151:
cmp dword ptr [ebp-28], 0
je .L_0159
push 253
push offset _Lt_0083
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0158
.L_0159:
push 252
push offset _Lt_0082
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0158:
.L_0150:
jmp .L_014E
.L_014F:
cmp dword ptr [ebp-24], 0
je .L_015B
cmp dword ptr [ebp-28], 0
je .L_015D
cmp dword ptr [ebp-44], 0
je .L_015F
push 249
push offset _Lt_007F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_015E
.L_015F:
push 247
push offset _Lt_007E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_015E:
jmp .L_015C
.L_015D:
cmp dword ptr [ebp-44], 0
je .L_0161
push 248
push offset _Lt_007D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0160
.L_0161:
push 246
push offset _Lt_007C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0160:
.L_015C:
jmp .L_015A
.L_015B:
cmp dword ptr [ebp-28], 0
je .L_0163
push 245
push offset _Lt_007B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
jmp .L_0162
.L_0163:
push 244
push offset _Lt_007A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-40], eax
.L_0162:
.L_015A:
.L_014E:
push 0
push dword ptr [ebp-40]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0165
jmp .L_0149
.L_0165:
.L_0164:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0167
jmp .L_0149
.L_0167:
.L_0166:
cmp dword ptr [ebp-24], 0
je .L_0169
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .L_0168
.L_0169:
push dword ptr [ebp+16]
call _RTLCALCEXPRLEN@4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.L_0168:
cmp dword ptr [ebp+20], 0
jne .L_016B
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .L_016A
.L_016B:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+20]
push 30
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
.L_016A:
cmp dword ptr [ebp-16], 20
jne .L_016D
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+120]
and eax, 4
test eax, eax
je .L_016F
push 10
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.L_016F:
.L_016E:
jmp .L_016C
.L_016D:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
test edx, edx
je .L_0170
push 29
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call _ERRREPORTPARAMWARN@16
.L_0170:
.L_016C:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0172
jmp .L_0149
.L_0172:
.L_0171:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0174
jmp .L_0149
.L_0174:
.L_0173:
cmp dword ptr [ebp+24], 0
je .L_0176
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0178
jmp .L_0149
.L_0178:
.L_0177:
.L_0176:
.L_0175:
cmp dword ptr [ebp+28], 0
jne .L_017A
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_017A:
.L_0179:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLFILEGETARRAY@20
_RTLFILEGETARRAY@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_017E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0181
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.L_0181:
.L_0180:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0182
mov dword ptr [ebp-24], 24
jmp .L_019B
.L_0182:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_019B:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+20], 0
je .L_0185
cmp dword ptr [ebp-20], 0
je .L_0187
push 259
push offset _Lt_0089
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0186
.L_0187:
push 258
push offset _Lt_0088
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0186:
jmp .L_0184
.L_0185:
cmp dword ptr [ebp-20], 0
je .L_0189
push 251
push offset _Lt_0081
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0188
.L_0189:
push 250
push offset _Lt_0080
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0188:
.L_0184:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_018B
jmp .L_017F
.L_018B:
.L_018A:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_018D
jmp .L_017F
.L_018D:
.L_018C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_018F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 4
test ebx, ebx
je .L_0191
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call _ERRREPORTPARAMWARN@16
.L_0191:
.L_0190:
jmp .L_018E
.L_018F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0192
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ERRREPORTPARAMWARN@16
.L_0192:
.L_018E:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0194
jmp .L_017F
.L_0194:
.L_0193:
cmp dword ptr [ebp+20], 0
je .L_0196
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0198
jmp .L_017F
.L_0198:
.L_0197:
.L_0196:
.L_0195:
cmp dword ptr [ebp+24], 0
jne .L_019A
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_019A:
.L_0199:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_017F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLFILESTRINPUT@12
_RTLFILESTRINPUT@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_019D:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ebp+16], 479
jne .L_019F
push 264
push offset _Lt_00A7
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01A5
.L_019F:
push 263
push offset _Lt_008D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_01A5:
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01A2
jmp .L_019E
.L_01A2:
.L_01A1:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01A4
jmp .L_019E
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_019E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLFILELINEINPUT@24
_RTLFILELINEINPUT@24:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01A6:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01A9
push 265
push offset _Lt_008E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 4
jmp .L_01A8
.L_01A9:
push 267
push offset _Lt_0090
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 6
.L_01A8:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01AB
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
.L_01AB:
.L_01AA:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01AD
jmp .L_01A7
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01AF
jmp .L_01A7
.L_01AF:
.L_01AE:
cmp dword ptr [ebp-24], 0
mov eax, -1
jne .L_01C1
cmp dword ptr [ebp-28], 0
je .L_01C0
.L_01C1:
xor eax, eax
.L_01C0:
cmp dword ptr [ebp+20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_01B1
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01B3
jmp .L_01A7
.L_01B3:
.L_01B2:
jmp .L_01B0
.L_01B1:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01B5
jmp .L_01A7
.L_01B5:
.L_01B4:
.L_01B0:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01B7
jmp .L_01A7
.L_01B7:
.L_01B6:
cmp dword ptr [ebp-16], 6
jne .L_01B9
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01BB
jmp .L_01A7
.L_01BB:
.L_01BA:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01BD
jmp .L_01A7
.L_01BD:
.L_01BC:
.L_01B9:
.L_01B8:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLFILELINEINPUTWSTR@24
_RTLFILELINEINPUTWSTR@24:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01C4:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01C7
push 266
push offset _Lt_008F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_01C6
.L_01C7:
push 268
push offset _Lt_0091
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 5
.L_01C6:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01C9
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _fb_StrToWstr@4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _SYMBALLOCWSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
push dword ptr [ebp-32]
call _fb_WstrDelete@4
.L_01C9:
.L_01C8:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01CC
jmp .L_01C5
.L_01CC:
.L_01CB:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01CE
jmp .L_01C5
.L_01CE:
.L_01CD:
cmp dword ptr [ebp-24], 0
mov eax, -1
jne .L_01DE
cmp dword ptr [ebp-28], 0
je .L_01DD
.L_01DE:
xor eax, eax
.L_01DD:
cmp dword ptr [ebp+20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_01D0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01D2
jmp .L_01C5
.L_01D2:
.L_01D1:
jmp .L_01CF
.L_01D0:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01D4
jmp .L_01C5
.L_01D4:
.L_01D3:
.L_01CF:
cmp dword ptr [ebp-16], 5
jne .L_01D6
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+24]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01D8
jmp .L_01C5
.L_01D8:
.L_01D7:
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+28]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01DA
jmp .L_01C5
.L_01DA:
.L_01D9:
.L_01D6:
.L_01D5:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_01C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _RTLFILEINPUT@16
_RTLFILEINPUT@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01E0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01E3
push 269
push offset _Lt_0092
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 1
jmp .L_01E2
.L_01E3:
push 270
push offset _Lt_0093
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
.L_01E2:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01E5
push 0
push -2147483648
push 0
push 0
push 0
push offset _Lt_0000
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp+12], eax
.L_01E5:
.L_01E4:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01E7
jmp .L_01E1
.L_01E7:
.L_01E6:
cmp dword ptr [ebp-16], 3
jne .L_01E9
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01EB
jmp .L_01E1
.L_01EB:
.L_01EA:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_01ED
jmp .L_01E1
.L_01ED:
.L_01EC:
.L_01E9:
.L_01E8:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_01E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILEINPUTGET@4
_RTLFILEINPUTGET@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_01F0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01F2
mov dword ptr [ebp-32], 24
jmp .L_0219
.L_01F2:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0219:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .L_01F5
.L_01F7:
push 282
push offset _Lt_009F
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_01F4
.L_01F8:
push 283
push offset _Lt_00A0
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .L_01F4
.L_01F9:
push 271
push offset _Lt_0094
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01F4
.L_01FA:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01FB
mov dword ptr [ebp-40], 24
jmp .L_021A
.L_01FB:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.L_021A:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_01FE
.L_0200:
push 272
push offset _Lt_0095
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0201:
push 273
push offset _Lt_0096
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0202:
push 274
push offset _Lt_0097
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0203:
push 275
push offset _Lt_0098
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0204:
push 276
push offset _Lt_0099
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0205:
push 277
push offset _Lt_009A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0206:
push 278
push offset _Lt_009B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_0207:
push 279
push offset _Lt_009C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01FD
.L_01FE:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .L_01FD
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_0208+eax*4-4]
_.L_0208:
.int .L_0200
.int .L_0201
.int .L_0202
.int .L_0203
.int .L_0204
.int .L_0205
.int .L_0206
.int .L_0207
.L_01FD:
jmp .L_01F4
.L_0209:
push 280
push offset _Lt_009D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01F4
.L_020A:
push 281
push offset _Lt_009E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_01F4
.L_020B:
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_01F1
jmp .L_01F4
.L_01F5:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .L_020B
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_020C+eax*4-4]
_.L_020C:
.int .L_01F9
.int .L_01FA
.int .L_01FA
.int .L_01F7
.int .L_01FA
.int .L_01FA
.int .L_01F8
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_01FA
.int .L_0209
.int .L_020A
.int .L_01F7
.int .L_01F7
.int .L_020B
.int .L_020B
.int .L_020B
.int .L_020B
.int .L_020B
.int .L_01FA
.L_01F4:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .L_020E
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.L_020E:
.L_020D:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0210
jmp .L_01F1
.L_0210:
.L_020F:
cmp dword ptr [ebp-16], 1
jle .L_0212
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0214
jmp .L_01F1
.L_0214:
.L_0213:
cmp dword ptr [ebp-16], 2
jle .L_0216
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0218
jmp .L_01F1
.L_0218:
.L_0217:
.L_0216:
.L_0215:
.L_0212:
.L_0211:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_01F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLFILELOCK@16
_RTLFILELOCK@16:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_021C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_021E
mov dword ptr [ebp-28], 24
jmp .L_022E
.L_021E:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-28], eax
.L_022E:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 8
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0220
mov dword ptr [ebp-32], 24
jmp .L_022F
.L_0220:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_022F:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_0223
cmp dword ptr [ebp-16], 0
je .L_0225
push 285
push offset _Lt_00A2
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0224
.L_0225:
push 284
push offset _Lt_00A1
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0224:
jmp .L_0222
.L_0223:
cmp dword ptr [ebp-16], 0
je .L_0227
push 287
push offset _Lt_00A4
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .L_0226
.L_0227:
push 286
push offset _Lt_00A3
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.L_0226:
.L_0222:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0229
jmp .L_021D
.L_0229:
.L_0228:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_022B
jmp .L_021D
.L_022B:
.L_022A:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_022D
jmp .L_021D
.L_022D:
.L_022C:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_021D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLFILERENAME@12
_RTLFILERENAME@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0233:
mov dword ptr [ebp-4], 0
push 0
push 288
push offset _Lt_00A5
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0236
jmp .L_0234
.L_0236:
.L_0235:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0238
jmp .L_0234
.L_0238:
.L_0237:
cmp dword ptr [ebp+16], 0
jne .L_023A
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_023A:
.L_0239:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0234:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLWIDTHFILE@12
_RTLWIDTHFILE@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_023B:
mov dword ptr [ebp-4], 0
push 0
push 291
push offset _Lt_023D
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_023F
jmp .L_023C
.L_023F:
.L_023E:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_0241
jmp .L_023C
.L_0241:
.L_0240:
cmp dword ptr [ebp+16], 0
jne .L_0243
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.L_0243:
.L_0242:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_023C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_fb_ctor__rtlzfile:
.L_0002:
.L_0003:
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

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_0068
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 160,0
.int _Lt_0069
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_006A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.int 529
.int 2
.int 0
.skip 4,0
.skip 160,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_006D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_006E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_006F
.long 0
.int 11
.int -1
.int _RTLPRINTER_CB@4
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_0070
.long 0
.int 11
.int -1
.long 0
.int 0
.int 7
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 144,0
.int _Lt_0071
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 160,0
.int _Lt_0072
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0073
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_0074
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 512
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0075
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 512
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0076
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 512
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0077
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 512
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0078
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 512
.int 3
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0079
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 512
.int 3
.int 0
.skip 4,0
.skip 208,0
.int _Lt_007A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_007B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_007C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_007D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 7
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_007E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_007F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 7
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0080
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0081
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0082
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0083
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0084
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0085
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 7
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0086
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0087
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 7
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0088
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0089
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 0
.int 3
.int 0
.skip 4,0
.int 9
.int 2
.int 0
.skip 4,0
.skip 192,0
.int _Lt_008A
.long 0
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_008B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_008C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_008D
.long 0
.int 17
.int -1
.long 0
.int 0
.int 2
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 224,0
.int _Lt_008E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 192,0
.int _Lt_008F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 39
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0090
.long 0
.int 11
.int -1
.long 0
.int 0
.int 6
.int 529
.int 2
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 160,0
.int _Lt_0091
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 1063
.int 1
.int 0
.skip 4,0
.int 39
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 176,0
.int _Lt_0092
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0093
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 529
.int 2
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.skip 208,0
.int _Lt_0094
.long 0
.int 11
.int -1
.long 0
.int 128
.int 1
.int 1
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0095
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 2
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0096
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 3
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0097
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 5
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0098
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 6
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0099
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 11
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 12
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 13
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 14
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 15
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 16
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_009F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 1
.skip 208,0
.int _Lt_00A0
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 39
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_00A1
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_00A2
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_00A3
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int 0
.skip 4,0
.int 524
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_00A4
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int 0
.skip 4,0
.int 525
.int 1
.int -1
.int 0
.skip 208,0
.int _Lt_00A5
.int _Lt_00A6
.int 11
.int 3
.long 0
.int 0
.int 2
.int 1060
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 224,0
.int _Lt_00A7
.long 0
.int 7
.int -1
.long 0
.int 0
.int 2
.int 520
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 224,0
.int _Lt_00A8
.int _Lt_00A9
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_00AA
.int _Lt_00AB
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00AC
.int _Lt_00AD
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00AE
.int _Lt_00AF
.int 0
.int -1
.long 0
.int 1
.int 0
.skip 256,0
.int _Lt_00AE
.int _Lt_00B0
.int 0
.int -1
.long 0
.int 1
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00B1
.int _Lt_00B2
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00B3
.int _Lt_00B4
.int 13
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_00B5
.int _Lt_00B6
.int 11
.int -1
.int _RTLPRINTER_CB@4
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.long 0
.skip 280,0
.balign 4
_Lt_0068:	.ascii	"fb_FileOpen\0"
.balign 4
_Lt_0069:	.ascii	"fb_FileOpenEncod\0"
.balign 4
_Lt_006A:	.ascii	"fb_FileOpenShort\0"
.balign 4
_Lt_006B:	.ascii	"fb_FileOpenCons\0"
.balign 4
_Lt_006C:	.ascii	"fb_FileOpenErr\0"
.balign 4
_Lt_006D:	.ascii	"fb_FileOpenPipe\0"
.balign 4
_Lt_006E:	.ascii	"fb_FileOpenScrn\0"
.balign 4
_Lt_006F:	.ascii	"fb_FileOpenLpt\0"
.balign 4
_Lt_0070:	.ascii	"fb_FileOpenCom\0"
.balign 4
_Lt_0071:	.ascii	"fb_FileOpenQB\0"
.balign 4
_Lt_0072:	.ascii	"fb_FileClose\0"
.balign 4
_Lt_0073:	.ascii	"fb_FileCloseAll\0"
.balign 4
_Lt_0074:	.ascii	"fb_FilePut\0"
.balign 4
_Lt_0075:	.ascii	"fb_FilePutLarge\0"
.balign 4
_Lt_0076:	.ascii	"fb_FilePutStr\0"
.balign 4
_Lt_0077:	.ascii	"fb_FilePutStrLarge\0"
.balign 4
_Lt_0078:	.ascii	"fb_FilePutArray\0"
.balign 4
_Lt_0079:	.ascii	"fb_FilePutArrayLarge\0"
.balign 4
_Lt_007A:	.ascii	"fb_FileGet\0"
.balign 4
_Lt_007B:	.ascii	"fb_FileGetLarge\0"
.balign 4
_Lt_007C:	.ascii	"fb_FileGetStr\0"
.balign 4
_Lt_007D:	.ascii	"fb_FileGetWstr\0"
.balign 4
_Lt_007E:	.ascii	"fb_FileGetStrLarge\0"
.balign 4
_Lt_007F:	.ascii	"fb_FileGetWstrLarge\0"
.balign 4
_Lt_0080:	.ascii	"fb_FileGetArray\0"
.balign 4
_Lt_0081:	.ascii	"fb_FileGetArrayLarge\0"
.balign 4
_Lt_0082:	.ascii	"fb_FileGetIOB\0"
.balign 4
_Lt_0083:	.ascii	"fb_FileGetLargeIOB\0"
.balign 4
_Lt_0084:	.ascii	"fb_FileGetStrIOB\0"
.balign 4
_Lt_0085:	.ascii	"fb_FileGetWstrIOB\0"
.balign 4
_Lt_0086:	.ascii	"fb_FileGetStrLargeIOB\0"
.balign 4
_Lt_0087:	.ascii	"fb_FileGetWstrLargeIOB\0"
.balign 4
_Lt_0088:	.ascii	"fb_FileGetArrayIOB\0"
.balign 4
_Lt_0089:	.ascii	"fb_FileGetArrayLargeIOB\0"
.balign 4
_Lt_008A:	.ascii	"fb_FileTell\0"
.balign 4
_Lt_008B:	.ascii	"fb_FileSeek\0"
.balign 4
_Lt_008C:	.ascii	"fb_FileSeekLarge\0"
.balign 4
_Lt_008D:	.ascii	"fb_FileStrInput\0"
.balign 4
_Lt_008E:	.ascii	"fb_FileLineInput\0"
.balign 4
_Lt_008F:	.ascii	"fb_FileLineInputWstr\0"
.balign 4
_Lt_0090:	.ascii	"fb_LineInput\0"
.balign 4
_Lt_0091:	.ascii	"fb_LineInputWstr\0"
.balign 4
_Lt_0092:	.ascii	"fb_FileInput\0"
.balign 4
_Lt_0093:	.ascii	"fb_ConsoleInput\0"
.balign 4
_Lt_0094:	.ascii	"fb_InputBool\0"
.balign 4
_Lt_0095:	.ascii	"fb_InputByte\0"
.balign 4
_Lt_0096:	.ascii	"fb_InputUbyte\0"
.balign 4
_Lt_0097:	.ascii	"fb_InputShort\0"
.balign 4
_Lt_0098:	.ascii	"fb_InputUshort\0"
.balign 4
_Lt_0099:	.ascii	"fb_InputInt\0"
.balign 4
_Lt_009A:	.ascii	"fb_InputUint\0"
.balign 4
_Lt_009B:	.ascii	"fb_InputLongint\0"
.balign 4
_Lt_009C:	.ascii	"fb_InputUlongint\0"
.balign 4
_Lt_009D:	.ascii	"fb_InputSingle\0"
.balign 4
_Lt_009E:	.ascii	"fb_InputDouble\0"
.balign 4
_Lt_009F:	.ascii	"fb_InputString\0"
.balign 4
_Lt_00A0:	.ascii	"fb_InputWstr\0"
.balign 4
_Lt_00A1:	.ascii	"fb_FileLock\0"
.balign 4
_Lt_00A2:	.ascii	"fb_FileLockLarge\0"
.balign 4
_Lt_00A3:	.ascii	"fb_FileUnlock\0"
.balign 4
_Lt_00A4:	.ascii	"fb_FileUnlockLarge\0"
.balign 4
_Lt_00A5:	.ascii	"fb_rename\0"
.balign 4
_Lt_00A6:	.ascii	"rename\0"
.balign 4
_Lt_00A7:	.ascii	"fb_FileWstrInput\0"
.balign 4
_Lt_00A8:	.ascii	"freefile\0"
.balign 4
_Lt_00A9:	.ascii	"fb_FileFree\0"
.balign 4
_Lt_00AA:	.ascii	"eof\0"
.balign 4
_Lt_00AB:	.ascii	"fb_FileEof\0"
.balign 4
_Lt_00AC:	.ascii	"kill\0"
.balign 4
_Lt_00AD:	.ascii	"fb_FileKill\0"
.balign 4
_Lt_00AE:	.ascii	"reset\0"
.balign 4
_Lt_00AF:	.ascii	"fb_FileReset\0"
.balign 4
_Lt_00B0:	.ascii	"fb_FileResetEx\0"
.balign 4
_Lt_00B1:	.ascii	"lof\0"
.balign 4
_Lt_00B2:	.ascii	"fb_FileSize\0"
.balign 4
_Lt_00B3:	.ascii	"loc\0"
.balign 4
_Lt_00B4:	.ascii	"fb_FileLocation\0"
.balign 4
_Lt_00B5:	.ascii	"lpos\0"
.balign 4
_Lt_00B6:	.ascii	"fb_LPos\0"
.balign 4
_Lt_00D4:	.ascii	"gdi32\0"
.balign 4
_Lt_00D5:	.ascii	"winspool\0"
.balign 4
_Lt_023D:	.ascii	"fb_WidthFile\0"

.section .ctors
.int _fb_ctor__rtlzfile
