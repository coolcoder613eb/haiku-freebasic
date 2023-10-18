	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLFILEMODINIT
RTLFILEMODINIT:
.L_00B6:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.L_00B7:
ret
.balign 16

.globl RTLFILEMODEND
RTLFILEMODEND:
.L_00B8:
.L_00B9:
ret
.balign 16

.globl RTLFILEOPEN
RTLFILEOPEN:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00BA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+40], 0
jne .L_00BD
.L_00BE:
cmp dword ptr [ebp+32], 0
jne .L_00C0
push 224
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
jmp .L_00BF
.L_00C0:
push 225
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_00BF:
jmp .L_00BC
.L_00BD:
cmp dword ptr [ebp+40], 1
jne .L_00C1
.L_00C2:
push 227
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00C1:
cmp dword ptr [ebp+40], 2
jne .L_00C3
.L_00C4:
push 228
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00C3:
cmp dword ptr [ebp+40], 3
jne .L_00C5
.L_00C6:
push 229
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00C5:
cmp dword ptr [ebp+40], 4
jne .L_00C7
.L_00C8:
push 230
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00C7:
cmp dword ptr [ebp+40], 5
jne .L_00C9
.L_00CA:
push 231
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00C9:
cmp dword ptr [ebp+40], 6
jne .L_00CB
.L_00CC:
push 232
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_00BC
.L_00CB:
push 233
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_00D1
.L_00D2:
cmp dword ptr [ebp-20], 1
jne .L_00D0
.L_00D1:
push offset Lt_00D3
call FBADDLIB
add esp, 4
push offset Lt_00D4
call FBADDLIB
add esp, 4
.L_00D0:
.L_00CE:
.L_00CD:
.L_00BC:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00D6
jmp .L_00BB
.L_00D6:
.L_00D5:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00D8
jmp .L_00BB
.L_00D8:
.L_00D7:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00DA
jmp .L_00BB
.L_00DA:
.L_00D9:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00DC
jmp .L_00BB
.L_00DC:
.L_00DB:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00DE
jmp .L_00BB
.L_00DE:
.L_00DD:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E0
jmp .L_00BB
.L_00E0:
.L_00DF:
cmp dword ptr [ebp-16], 0
je .L_00E2
cmp dword ptr [ebp+32], 0
jne .L_00E4
push 0
push 36
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+32], eax
.L_00E4:
.L_00E3:
push -1
push -2147483648
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E6
jmp .L_00BB
.L_00E6:
.L_00E5:
.L_00E2:
.L_00E1:
cmp dword ptr [ebp+36], 0
jne .L_00E8
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEOPENSHORT
RTLFILEOPENSHORT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00E9:
mov dword ptr [ebp-4], 0
push 0
push 226
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EC
jmp .L_00EA
.L_00EC:
.L_00EB:
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00EE
jmp .L_00EA
.L_00EE:
.L_00ED:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F0
jmp .L_00EA
.L_00F0:
.L_00EF:
push -1
push -2147483648
push dword ptr [ebp+28]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F2
jmp .L_00EA
.L_00F2:
.L_00F1:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F4
jmp .L_00EA
.L_00F4:
.L_00F3:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00F6
jmp .L_00EA
.L_00F6:
.L_00F5:
cmp dword ptr [ebp+32], 0
jne .L_00F8
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_00F8:
.L_00F7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00EA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILECLOSE
RTLFILECLOSE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_00FC
push 0
push 234
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00FE
jmp .L_00FA
.L_00FE:
.L_00FD:
jmp .L_00FB
.L_00FC:
push 0
push 235
push offset Lt_0072
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
.L_00FB:
cmp dword ptr [ebp+12], 0
jne .L_0100
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILESEEK
RTLFILESEEK:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0101:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0103
mov dword ptr [ebp-20], 24
jmp .L_010B
.L_0103:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_010B:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jne .L_0106
push 262
push offset Lt_008B
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0105
.L_0106:
push 261
push offset Lt_008A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0105:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0108
jmp .L_0102
.L_0108:
.L_0107:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010A
jmp .L_0102
.L_010A:
.L_0109:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILETELL
RTLFILETELL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010C:
mov dword ptr [ebp-4], 0
push 0
push 260
push offset Lt_0089
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_010F
jmp .L_010D
.L_010F:
.L_010E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEPUT
RTLFILEPUT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0110:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+12], 0
jne .L_0113
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_0113:
.L_0112:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0114
mov dword ptr [ebp-44], 24
jmp .L_012F
.L_0114:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_012F:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-24], 0
je .L_0117
cmp dword ptr [ebp-28], 0
je .L_0119
push 239
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0118
.L_0119:
push 238
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_0118:
jmp .L_0116
.L_0117:
cmp dword ptr [ebp-28], 0
je .L_011B
push 237
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_011A
.L_011B:
push 236
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_011A:
.L_0116:
push 0
push dword ptr [ebp-40]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011D
jmp .L_0111
.L_011D:
.L_011C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_011F
jmp .L_0111
.L_011F:
.L_011E:
cmp dword ptr [ebp-24], 0
je .L_0121
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .L_0120
.L_0121:
push dword ptr [ebp+16]
call RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.L_0120:
cmp dword ptr [ebp+20], 0
jne .L_0123
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0122
.L_0123:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
.L_0122:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
cmp edx, 20
jne .L_0125
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+8]
mov edx, dword ptr [eax+116]
and edx, 4
test edx, edx
je .L_0127
push 10
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0127:
.L_0126:
jmp .L_0124
.L_0125:
mov edx, dword ptr [ebp+16]
mov eax, dword ptr [edx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0128
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0128:
.L_0124:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_012A
jmp .L_0111
.L_012A:
.L_0129:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_012C
jmp .L_0111
.L_012C:
.L_012B:
cmp dword ptr [ebp+24], 0
jne .L_012E
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_012E:
.L_012D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEPUTARRAY
RTLFILEPUTARRAY:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0131:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0134
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_0134:
.L_0133:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0135
mov dword ptr [ebp-20], 24
jmp .L_0146
.L_0135:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0146:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jne .L_0138
push 243
push offset Lt_0078
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0137
.L_0138:
push 242
push offset Lt_0077
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0137:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_013A
jmp .L_0132
.L_013A:
.L_0139:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_013C
jmp .L_0132
.L_013C:
.L_013B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_013E
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 4
test ebx, ebx
je .L_0140
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0140:
.L_013F:
jmp .L_013D
.L_013E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0141
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0141:
.L_013D:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0143
jmp .L_0132
.L_0143:
.L_0142:
cmp dword ptr [ebp+20], 0
jne .L_0145
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0145:
.L_0144:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEGET
RTLFILEGET:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_0147:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp+12], 0
jne .L_014A
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_014A:
.L_0149:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_014B
mov dword ptr [ebp-48], 24
jmp .L_017A
.L_014B:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_017A:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+24], 0
je .L_014E
cmp dword ptr [ebp-24], 0
je .L_0150
cmp dword ptr [ebp-28], 0
je .L_0152
cmp dword ptr [ebp-44], 0
je .L_0154
push 257
push offset Lt_0086
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0153
.L_0154:
push 255
push offset Lt_0085
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_0153:
jmp .L_0151
.L_0152:
cmp dword ptr [ebp-44], 0
je .L_0156
push 256
push offset Lt_0084
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0155
.L_0156:
push 254
push offset Lt_0083
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_0155:
.L_0151:
jmp .L_014F
.L_0150:
cmp dword ptr [ebp-28], 0
je .L_0158
push 253
push offset Lt_0082
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0157
.L_0158:
push 252
push offset Lt_0081
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_0157:
.L_014F:
jmp .L_014D
.L_014E:
cmp dword ptr [ebp-24], 0
je .L_015A
cmp dword ptr [ebp-28], 0
je .L_015C
cmp dword ptr [ebp-44], 0
je .L_015E
push 249
push offset Lt_007E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_015D
.L_015E:
push 247
push offset Lt_007D
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_015D:
jmp .L_015B
.L_015C:
cmp dword ptr [ebp-44], 0
je .L_0160
push 248
push offset Lt_007C
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_015F
.L_0160:
push 246
push offset Lt_007B
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_015F:
.L_015B:
jmp .L_0159
.L_015A:
cmp dword ptr [ebp-28], 0
je .L_0162
push 245
push offset Lt_007A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
jmp .L_0161
.L_0162:
push 244
push offset Lt_0079
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-40], eax
.L_0161:
.L_0159:
.L_014D:
push 0
push dword ptr [ebp-40]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0164
jmp .L_0148
.L_0164:
.L_0163:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0166
jmp .L_0148
.L_0166:
.L_0165:
cmp dword ptr [ebp-24], 0
je .L_0168
push dword ptr [ebp-16]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
jmp .L_0167
.L_0168:
push dword ptr [ebp+16]
call RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], edx
.L_0167:
cmp dword ptr [ebp+20], 0
jne .L_016A
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0169
.L_016A:
push 1
push 0
push 0
push 8
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+20]
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
.L_0169:
cmp dword ptr [ebp-16], 20
jne .L_016C
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+8]
mov eax, dword ptr [edx+116]
and eax, 4
test eax, eax
je .L_016E
push 10
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_016E:
.L_016D:
jmp .L_016B
.L_016C:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [eax+4]
and edx, 511
and edx, 480
test edx, edx
je .L_016F
push 29
push 0
push 3
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_016F:
.L_016B:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0171
jmp .L_0148
.L_0171:
.L_0170:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0173
jmp .L_0148
.L_0173:
.L_0172:
cmp dword ptr [ebp+24], 0
je .L_0175
push -1
push -2147483648
push dword ptr [ebp+24]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0177
jmp .L_0148
.L_0177:
.L_0176:
.L_0175:
.L_0174:
cmp dword ptr [ebp+28], 0
jne .L_0179
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0179:
.L_0178:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0148:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEGETARRAY
RTLFILEGETARRAY:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_017D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0180
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.L_0180:
.L_017F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0181
mov dword ptr [ebp-24], 24
jmp .L_019A
.L_0181:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_019A:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+20], 0
je .L_0184
cmp dword ptr [ebp-20], 0
je .L_0186
push 259
push offset Lt_0088
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0185
.L_0186:
push 258
push offset Lt_0087
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0185:
jmp .L_0183
.L_0184:
cmp dword ptr [ebp-20], 0
je .L_0188
push 251
push offset Lt_0080
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0187
.L_0188:
push 250
push offset Lt_007F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0187:
.L_0183:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_018A
jmp .L_017E
.L_018A:
.L_0189:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_018C
jmp .L_017E
.L_018C:
.L_018B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_018E
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 4
test ebx, ebx
je .L_0190
push 10
push 0
push 3
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0190:
.L_018F:
jmp .L_018D
.L_018E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_0191
push 29
push 0
push 3
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ERRREPORTPARAMWARN
add esp, 16
.L_0191:
.L_018D:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0193
jmp .L_017E
.L_0193:
.L_0192:
cmp dword ptr [ebp+20], 0
je .L_0195
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0197
jmp .L_017E
.L_0197:
.L_0196:
.L_0195:
.L_0194:
cmp dword ptr [ebp+24], 0
jne .L_0199
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0199:
.L_0198:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_017E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILESTRINPUT
RTLFILESTRINPUT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_019C:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ebp+16], 479
jne .L_019E
push 264
push offset Lt_00A6
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01A4
.L_019E:
push 263
push offset Lt_008C
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_01A4:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01A1
jmp .L_019D
.L_01A1:
.L_01A0:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01A3
jmp .L_019D
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_019D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILELINEINPUT
RTLFILELINEINPUT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01A5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01A8
push 265
push offset Lt_008D
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 4
jmp .L_01A7
.L_01A8:
push 267
push offset Lt_008F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 6
.L_01A7:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
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
je .L_01AA
push 0
push -2147483648
push 0
push 0
push 0
push offset Lt_0000
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+12], eax
.L_01AA:
.L_01A9:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01AC
jmp .L_01A6
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01AE
jmp .L_01A6
.L_01AE:
.L_01AD:
cmp dword ptr [ebp-24], 0
mov eax, -1
jne .L_01C0
cmp dword ptr [ebp-28], 0
je .L_01BF
.L_01C0:
xor eax, eax
.L_01BF:
cmp dword ptr [ebp+20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_01B0
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B2
jmp .L_01A6
.L_01B2:
.L_01B1:
jmp .L_01AF
.L_01B0:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B4
jmp .L_01A6
.L_01B4:
.L_01B3:
.L_01AF:
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01B6
jmp .L_01A6
.L_01B6:
.L_01B5:
cmp dword ptr [ebp-16], 6
jne .L_01B8
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01BA
jmp .L_01A6
.L_01BA:
.L_01B9:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+28]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01BC
jmp .L_01A6
.L_01BC:
.L_01BB:
.L_01B8:
.L_01B7:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILELINEINPUTWSTR
RTLFILELINEINPUTWSTR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_01C3:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01C6
push 266
push offset Lt_008E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_01C5
.L_01C6:
push 268
push offset Lt_0090
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 5
.L_01C5:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
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
je .L_01C8
push 0
push -2147483648
push 0
push 0
push 0
push offset Lt_01C9
call SYMBALLOCWSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+12], eax
.L_01C8:
.L_01C7:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CB
jmp .L_01C4
.L_01CB:
.L_01CA:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
push dword ptr [ebp+16]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01CD
jmp .L_01C4
.L_01CD:
.L_01CC:
cmp dword ptr [ebp-24], 0
mov eax, -1
jne .L_01DD
cmp dword ptr [ebp-28], 0
je .L_01DC
.L_01DD:
xor eax, eax
.L_01DC:
cmp dword ptr [ebp+20], 0
setne dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_01CF
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D1
jmp .L_01C4
.L_01D1:
.L_01D0:
jmp .L_01CE
.L_01CF:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D3
jmp .L_01C4
.L_01D3:
.L_01D2:
.L_01CE:
cmp dword ptr [ebp-16], 5
jne .L_01D5
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+24]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D7
jmp .L_01C4
.L_01D7:
.L_01D6:
push -1
push -2147483648
push 0
push 8
mov edx, dword ptr [ebp+28]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01D9
jmp .L_01C4
.L_01D9:
.L_01D8:
.L_01D5:
.L_01D4:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEINPUT
RTLFILEINPUT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01DF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01E2
push 269
push offset Lt_0091
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 1
jmp .L_01E1
.L_01E2:
push 270
push offset Lt_0092
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
.L_01E1:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
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
je .L_01E4
push 0
push -2147483648
push 0
push 0
push 0
push offset Lt_0000
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp+12], eax
.L_01E4:
.L_01E3:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01E6
jmp .L_01E0
.L_01E6:
.L_01E5:
cmp dword ptr [ebp-16], 3
jne .L_01E8
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EA
jmp .L_01E0
.L_01EA:
.L_01E9:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_01EC
jmp .L_01E0
.L_01EC:
.L_01EB:
.L_01E8:
.L_01E7:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILEINPUTGET
RTLFILEINPUTGET:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_01EF:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_01F1
mov dword ptr [ebp-32], 24
jmp .L_0218
.L_01F1:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_0218:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .L_01F4
.L_01F6:
push 282
push offset Lt_009E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .L_01F3
.L_01F7:
push 283
push offset Lt_009F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .L_01F3
.L_01F8:
push 271
push offset Lt_0093
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01F3
.L_01F9:
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_01FA
mov dword ptr [ebp-40], 24
jmp .L_0219
.L_01FA:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0219:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .L_01FD
.L_01FF:
push 272
push offset Lt_0094
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0200:
push 273
push offset Lt_0095
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0201:
push 274
push offset Lt_0096
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0202:
push 275
push offset Lt_0097
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0203:
push 276
push offset Lt_0098
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0204:
push 277
push offset Lt_0099
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0205:
push 278
push offset Lt_009A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_0206:
push 279
push offset Lt_009B
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01FC
.L_01FD:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .L_01FC
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_0207+eax*4-4]
.L_0207:
.int .L_01FF
.int .L_0200
.int .L_0201
.int .L_0202
.int .L_0203
.int .L_0204
.int .L_0205
.int .L_0206
.L_01FC:
jmp .L_01F3
.L_0208:
push 280
push offset Lt_009C
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01F3
.L_0209:
push 281
push offset Lt_009D
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_01F3
.L_020A:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_01F0
jmp .L_01F3
.L_01F4:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .L_020A
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_020B+eax*4-4]
.L_020B:
.int .L_01F8
.int .L_01F9
.int .L_01F9
.int .L_01F6
.int .L_01F9
.int .L_01F9
.int .L_01F7
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_01F9
.int .L_0208
.int .L_0209
.int .L_01F6
.int .L_01F6
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_020A
.int .L_01F9
.L_01F3:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .L_020D
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.L_020D:
.L_020C:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_020F
jmp .L_01F0
.L_020F:
.L_020E:
cmp dword ptr [ebp-16], 1
jle .L_0211
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0213
jmp .L_01F0
.L_0213:
.L_0212:
cmp dword ptr [ebp-16], 2
jle .L_0215
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0217
jmp .L_01F0
.L_0217:
.L_0216:
.L_0215:
.L_0214:
.L_0211:
.L_0210:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_01F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILELOCK
RTLFILELOCK:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_021B:
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
je .L_021D
mov dword ptr [ebp-28], 24
jmp .L_022D
.L_021D:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-28], eax
.L_022D:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 8
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_021F
mov dword ptr [ebp-32], 24
jmp .L_022E
.L_021F:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_022E:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_0222
cmp dword ptr [ebp-16], 0
je .L_0224
push 285
push offset Lt_00A1
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0223
.L_0224:
push 284
push offset Lt_00A0
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0223:
jmp .L_0221
.L_0222:
cmp dword ptr [ebp-16], 0
je .L_0226
push 287
push offset Lt_00A3
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0225
.L_0226:
push 286
push offset Lt_00A2
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.L_0225:
.L_0221:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0228
jmp .L_021C
.L_0228:
.L_0227:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_022A
jmp .L_021C
.L_022A:
.L_0229:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_022C
jmp .L_021C
.L_022C:
.L_022B:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.L_021C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLFILERENAME
RTLFILERENAME:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0232:
mov dword ptr [ebp-4], 0
push 0
push 288
push offset Lt_00A4
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0235
jmp .L_0233
.L_0235:
.L_0234:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0237
jmp .L_0233
.L_0237:
.L_0236:
cmp dword ptr [ebp+16], 0
jne .L_0239
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0239:
.L_0238:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0233:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLWIDTHFILE
RTLWIDTHFILE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_023A:
mov dword ptr [ebp-4], 0
push 0
push 291
push offset Lt_023C
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_023E
jmp .L_023B
.L_023E:
.L_023D:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0240
jmp .L_023B
.L_0240:
.L_023F:
cmp dword ptr [ebp+16], 0
jne .L_0242
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.L_0242:
.L_0241:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_023B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzfile:
.L_0002:
.L_0003:
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

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
.int Lt_006C
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
.int Lt_006D
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
.int Lt_006E
.long 0
.int 11
.int -1
.int RTLPRINTER_CB
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
.int Lt_006F
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
.int Lt_0070
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
.int Lt_0071
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
.int Lt_0072
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_0073
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
.int Lt_0074
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
.int Lt_0075
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
.int Lt_0076
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
.int Lt_0077
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
.int Lt_0078
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
.int Lt_0079
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
.int Lt_007A
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
.int Lt_007B
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
.int Lt_007C
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
.int Lt_007D
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
.int Lt_007E
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
.int Lt_007F
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
.int Lt_0080
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
.int Lt_0081
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
.int Lt_0082
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
.int Lt_0083
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
.int Lt_0084
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
.int Lt_0085
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
.int Lt_0086
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
.int Lt_0087
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
.int Lt_0088
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
.int Lt_0089
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
.int Lt_008A
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
.int Lt_008B
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
.int Lt_008C
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
.int Lt_008D
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
.int Lt_008E
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
.int Lt_008F
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
.int Lt_0090
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
.int Lt_0091
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
.int Lt_0092
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
.int Lt_0093
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
.int Lt_0094
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
.int Lt_0095
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
.int Lt_0096
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
.int Lt_0097
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
.int Lt_0098
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
.int Lt_0099
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
.int Lt_009A
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
.int Lt_009B
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
.int Lt_009C
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
.int Lt_009D
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
.int Lt_009E
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
.int Lt_009F
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
.int Lt_00A0
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
.int Lt_00A1
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
.int Lt_00A2
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
.int Lt_00A3
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
.int Lt_00A4
.int Lt_00A5
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
.int Lt_00A6
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
.int Lt_00A7
.int Lt_00A8
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_00A9
.int Lt_00AA
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
.int Lt_00AB
.int Lt_00AC
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
.int Lt_00AD
.int Lt_00AE
.int 0
.int -1
.long 0
.int 1
.int 0
.skip 256,0
.int Lt_00AD
.int Lt_00AF
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
.int Lt_00B0
.int Lt_00B1
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
.int Lt_00B2
.int Lt_00B3
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
.int Lt_00B4
.int Lt_00B5
.int 11
.int -1
.int RTLPRINTER_CB
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
Lt_0067:	.ascii	"fb_FileOpen\0"
.balign 4
Lt_0068:	.ascii	"fb_FileOpenEncod\0"
.balign 4
Lt_0069:	.ascii	"fb_FileOpenShort\0"
.balign 4
Lt_006A:	.ascii	"fb_FileOpenCons\0"
.balign 4
Lt_006B:	.ascii	"fb_FileOpenErr\0"
.balign 4
Lt_006C:	.ascii	"fb_FileOpenPipe\0"
.balign 4
Lt_006D:	.ascii	"fb_FileOpenScrn\0"
.balign 4
Lt_006E:	.ascii	"fb_FileOpenLpt\0"
.balign 4
Lt_006F:	.ascii	"fb_FileOpenCom\0"
.balign 4
Lt_0070:	.ascii	"fb_FileOpenQB\0"
.balign 4
Lt_0071:	.ascii	"fb_FileClose\0"
.balign 4
Lt_0072:	.ascii	"fb_FileCloseAll\0"
.balign 4
Lt_0073:	.ascii	"fb_FilePut\0"
.balign 4
Lt_0074:	.ascii	"fb_FilePutLarge\0"
.balign 4
Lt_0075:	.ascii	"fb_FilePutStr\0"
.balign 4
Lt_0076:	.ascii	"fb_FilePutStrLarge\0"
.balign 4
Lt_0077:	.ascii	"fb_FilePutArray\0"
.balign 4
Lt_0078:	.ascii	"fb_FilePutArrayLarge\0"
.balign 4
Lt_0079:	.ascii	"fb_FileGet\0"
.balign 4
Lt_007A:	.ascii	"fb_FileGetLarge\0"
.balign 4
Lt_007B:	.ascii	"fb_FileGetStr\0"
.balign 4
Lt_007C:	.ascii	"fb_FileGetWstr\0"
.balign 4
Lt_007D:	.ascii	"fb_FileGetStrLarge\0"
.balign 4
Lt_007E:	.ascii	"fb_FileGetWstrLarge\0"
.balign 4
Lt_007F:	.ascii	"fb_FileGetArray\0"
.balign 4
Lt_0080:	.ascii	"fb_FileGetArrayLarge\0"
.balign 4
Lt_0081:	.ascii	"fb_FileGetIOB\0"
.balign 4
Lt_0082:	.ascii	"fb_FileGetLargeIOB\0"
.balign 4
Lt_0083:	.ascii	"fb_FileGetStrIOB\0"
.balign 4
Lt_0084:	.ascii	"fb_FileGetWstrIOB\0"
.balign 4
Lt_0085:	.ascii	"fb_FileGetStrLargeIOB\0"
.balign 4
Lt_0086:	.ascii	"fb_FileGetWstrLargeIOB\0"
.balign 4
Lt_0087:	.ascii	"fb_FileGetArrayIOB\0"
.balign 4
Lt_0088:	.ascii	"fb_FileGetArrayLargeIOB\0"
.balign 4
Lt_0089:	.ascii	"fb_FileTell\0"
.balign 4
Lt_008A:	.ascii	"fb_FileSeek\0"
.balign 4
Lt_008B:	.ascii	"fb_FileSeekLarge\0"
.balign 4
Lt_008C:	.ascii	"fb_FileStrInput\0"
.balign 4
Lt_008D:	.ascii	"fb_FileLineInput\0"
.balign 4
Lt_008E:	.ascii	"fb_FileLineInputWstr\0"
.balign 4
Lt_008F:	.ascii	"fb_LineInput\0"
.balign 4
Lt_0090:	.ascii	"fb_LineInputWstr\0"
.balign 4
Lt_0091:	.ascii	"fb_FileInput\0"
.balign 4
Lt_0092:	.ascii	"fb_ConsoleInput\0"
.balign 4
Lt_0093:	.ascii	"fb_InputBool\0"
.balign 4
Lt_0094:	.ascii	"fb_InputByte\0"
.balign 4
Lt_0095:	.ascii	"fb_InputUbyte\0"
.balign 4
Lt_0096:	.ascii	"fb_InputShort\0"
.balign 4
Lt_0097:	.ascii	"fb_InputUshort\0"
.balign 4
Lt_0098:	.ascii	"fb_InputInt\0"
.balign 4
Lt_0099:	.ascii	"fb_InputUint\0"
.balign 4
Lt_009A:	.ascii	"fb_InputLongint\0"
.balign 4
Lt_009B:	.ascii	"fb_InputUlongint\0"
.balign 4
Lt_009C:	.ascii	"fb_InputSingle\0"
.balign 4
Lt_009D:	.ascii	"fb_InputDouble\0"
.balign 4
Lt_009E:	.ascii	"fb_InputString\0"
.balign 4
Lt_009F:	.ascii	"fb_InputWstr\0"
.balign 4
Lt_00A0:	.ascii	"fb_FileLock\0"
.balign 4
Lt_00A1:	.ascii	"fb_FileLockLarge\0"
.balign 4
Lt_00A2:	.ascii	"fb_FileUnlock\0"
.balign 4
Lt_00A3:	.ascii	"fb_FileUnlockLarge\0"
.balign 4
Lt_00A4:	.ascii	"fb_rename\0"
.balign 4
Lt_00A5:	.ascii	"rename\0"
.balign 4
Lt_00A6:	.ascii	"fb_FileWstrInput\0"
.balign 4
Lt_00A7:	.ascii	"freefile\0"
.balign 4
Lt_00A8:	.ascii	"fb_FileFree\0"
.balign 4
Lt_00A9:	.ascii	"eof\0"
.balign 4
Lt_00AA:	.ascii	"fb_FileEof\0"
.balign 4
Lt_00AB:	.ascii	"kill\0"
.balign 4
Lt_00AC:	.ascii	"fb_FileKill\0"
.balign 4
Lt_00AD:	.ascii	"reset\0"
.balign 4
Lt_00AE:	.ascii	"fb_FileReset\0"
.balign 4
Lt_00AF:	.ascii	"fb_FileResetEx\0"
.balign 4
Lt_00B0:	.ascii	"lof\0"
.balign 4
Lt_00B1:	.ascii	"fb_FileSize\0"
.balign 4
Lt_00B2:	.ascii	"loc\0"
.balign 4
Lt_00B3:	.ascii	"fb_FileLocation\0"
.balign 4
Lt_00B4:	.ascii	"lpos\0"
.balign 4
Lt_00B5:	.ascii	"fb_LPos\0"
.balign 4
Lt_00D3:	.ascii	"gdi32\0"
.balign 4
Lt_00D4:	.ascii	"winspool\0"
.balign 4
Lt_01C9:	.ascii	"\0\0\0\0"
.balign 4
Lt_023C:	.ascii	"fb_WidthFile\0"

.section .ctors
.int fb_ctor__rtlzfile
