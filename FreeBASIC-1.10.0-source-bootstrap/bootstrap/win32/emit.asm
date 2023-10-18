	.intel_syntax noprefix

.section .text
.balign 16

.globl _EMITINIT@0
_EMITINIT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0074:
cmp dword ptr [_EMIT], 0
je .L_0077
mov dword ptr [ebp-4], -1
jmp .L_0075
.L_0077:
.L_0076:
call _EMITGASX86_CTOR@0
push 56
push 2048
lea eax, [_EMIT+16]
push eax
call _FLISTINIT@12
push 72
push 6144
lea eax, [_EMIT+72]
push eax
call _FLISTINIT@12
mov dword ptr [_EMIT], -1
mov dword ptr [_EMIT+4], 0
call dword ptr [_EMIT+148]
mov dword ptr [ebp-4], eax
.L_0075:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITEND@0
_EMITEND@0:
.L_0078:
cmp dword ptr [_EMIT], 0
jne .L_007B
jmp .L_0079
.L_007B:
.L_007A:
call dword ptr [_EMIT+152]
mov dword ptr [_EMIT], 0
.L_0079:
ret
.balign 16

.globl _EMITWRITESTR@8
_EMITWRITESTR@8:
push ebp
mov ebp, esp
sub esp, 12
.L_007C:
cmp dword ptr [ebp+12], 0
je .L_007F
push 0
push 2
push offset _Lt_0080
push -1
push offset _Lt_0085
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0085
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0085
call _fb_StrAssign@20
jmp .L_007E
.L_007F:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0085
call _fb_StrAssign@20
.L_007E:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0085
call _fb_StrConcatAssign@20
push -1
push offset _Lt_0085
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr@16
test eax, eax
je .L_0084
.L_0084:
.L_0083:
.L_007D:
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0085,12

.section .text
.balign 16

.globl _EMITRESET@0
_EMITRESET@0:
push ebx
.L_0086:
lea eax, [_EMIT+16]
push eax
call _FLISTRESET@4
lea eax, [_EMIT+72]
push eax
call _FLISTRESET@4
mov dword ptr [_EMIT+128], 0
mov dword ptr [_Lt_008C], 0
.L_008B:
mov eax, dword ptr [_Lt_008C]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov dword ptr [ebx+132], 0
.L_0089:
inc dword ptr [_Lt_008C]
.L_0088:
cmp dword ptr [_Lt_008C], 1
jle .L_008B
.L_008A:
.L_0087:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_008C,4

.section .text
.balign 16

.globl _EMITFLUSH@0
_EMITFLUSH@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00AC:
call _HPEEPHOLEOPT@0
lea eax, [_EMIT+16]
push eax
call _FLISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_00AE:
cmp dword ptr [ebp-4], 0
je .L_00AF
mov eax, dword ptr [ebp-4]
mov dword ptr [_EMIT+128], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00B1
.L_00B3:
jmp .L_00B0
.L_00B4:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B5:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B6:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B7:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B8:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B9:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00BA:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [_EMIT+236]
call dword ptr [ebx+532]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], 0
je .L_00BC
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call _free
add esp, 4
.L_00BC:
.L_00BB:
jmp .L_00B0
.L_00BD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [_EMIT+236]
call dword ptr [ebx+536]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call _free
add esp, 4
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
call _free
add esp, 4
jmp .L_00B0
.L_00BE:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00BF:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+236]
add ebx, eax
call dword ptr [ebx]
jmp .L_00B0
.L_00B1:
cmp dword ptr [ebp-8], 10
ja .L_00B0
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_00C0+ebx*4]
_.L_00C0:
.int .L_00B3
.int .L_00B4
.int .L_00B5
.int .L_00B6
.int .L_00B7
.int .L_00B8
.int .L_00BA
.int .L_00BD
.int .L_00B9
.int .L_00BE
.int .L_00BF
.L_00B0:
push dword ptr [ebp-4]
call _FLISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_00AE
.L_00AF:
.L_00AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITGETREGCLASS@4
_EMITGETREGCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C1:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_00C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLOAD@8
_EMITLOAD@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E7
mov dword ptr [ebp-8], 24
jmp .L_0119
.L_00E7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0119:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_00EA
.L_00EC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00ED
mov dword ptr [ebp-16], 24
jmp .L_011A
.L_00ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_011A:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_00F0
.L_00F2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 11
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00EF
.L_00F3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 10
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00EF
.L_00F4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 12
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00EF
.L_00F5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00EF
.L_00F0:
cmp dword ptr [ebp-20], 10
ja .L_00F5
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00F6+eax*4]
_.L_00F6:
.int .L_00F4
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F2
.int .L_00F2
.int .L_00F3
.int .L_00F3
.L_00EF:
jmp .L_00E9
.L_00F7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00F8
mov dword ptr [ebp-16], 24
jmp .L_011B
.L_00F8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011B:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_00FB
.L_00FD:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 7
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_00FE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 6
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_00FF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_0100:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_00FB:
cmp dword ptr [ebp-20], 10
ja .L_0100
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0101+eax*4]
_.L_0101:
.int .L_00FF
.int .L_0100
.int .L_0100
.int .L_0100
.int .L_0100
.int .L_0100
.int .L_0100
.int .L_00FD
.int .L_00FD
.int .L_00FE
.int .L_00FE
.L_00FA:
jmp .L_00E9
.L_0102:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0103
mov dword ptr [ebp-16], 24
jmp .L_011C
.L_0103:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011C:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0106
.L_0108:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 15
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_0109:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 14
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_010A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 16
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_010B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 13
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_0106:
cmp dword ptr [ebp-20], 10
ja .L_010B
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_010C+eax*4]
_.L_010C:
.int .L_010A
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_010B
.int .L_0108
.int .L_0108
.int .L_0109
.int .L_0109
.L_0105:
jmp .L_00E9
.L_010D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_010E
mov dword ptr [ebp-16], 24
jmp .L_011D
.L_010E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011D:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0111
.L_0113:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0110
.L_0114:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 2
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0110
.L_0115:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 4
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0110
.L_0116:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0110
.L_0111:
cmp dword ptr [ebp-20], 10
ja .L_0116
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0117+eax*4]
_.L_0117:
.int .L_0115
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0116
.int .L_0113
.int .L_0113
.int .L_0114
.int .L_0114
.L_0110:
jmp .L_00E9
.L_00EA:
cmp dword ptr [ebp-12], 10
ja .L_010D
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0118+eax*4]
_.L_0118:
.int .L_0102
.int .L_010D
.int .L_010D
.int .L_010D
.int .L_010D
.int .L_010D
.int .L_010D
.int .L_00EC
.int .L_00EC
.int .L_00F7
.int .L_00F7
.L_00E9:
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSTORE@8
_EMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0120
mov dword ptr [ebp-8], 24
jmp .L_0152
.L_0120:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0152:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0123
.L_0125:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0126
mov dword ptr [ebp-16], 24
jmp .L_0153
.L_0126:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0153:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_0129
.L_012B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 27
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_012C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 26
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_012D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_012E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 25
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_0129:
cmp dword ptr [ebp-20], 10
ja .L_012E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_012F+eax*4]
_.L_012F:
.int .L_012D
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012E
.int .L_012B
.int .L_012B
.int .L_012C
.int .L_012C
.L_0128:
jmp .L_0122
.L_0130:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0131
mov dword ptr [ebp-16], 24
jmp .L_0154
.L_0131:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0154:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0134
.L_0136:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 23
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0133
.L_0137:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 22
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0133
.L_0138:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 24
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0133
.L_0139:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 21
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0133
.L_0134:
cmp dword ptr [ebp-20], 10
ja .L_0139
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_013A+eax*4]
_.L_013A:
.int .L_0138
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0136
.int .L_0136
.int .L_0137
.int .L_0137
.L_0133:
jmp .L_0122
.L_013B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_013C
mov dword ptr [ebp-16], 24
jmp .L_0155
.L_013C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0155:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_013F
.L_0141:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 31
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0142:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 30
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0143:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 32
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0144:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 29
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_013F:
cmp dword ptr [ebp-20], 10
ja .L_0144
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0145+eax*4]
_.L_0145:
.int .L_0143
.int .L_0144
.int .L_0144
.int .L_0144
.int .L_0144
.int .L_0144
.int .L_0144
.int .L_0141
.int .L_0141
.int .L_0142
.int .L_0142
.L_013E:
jmp .L_0122
.L_0146:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0147
mov dword ptr [ebp-16], 24
jmp .L_0156
.L_0147:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0156:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_014A
.L_014C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 19
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0149
.L_014D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 18
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0149
.L_014E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 20
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0149
.L_014F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 17
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0149
.L_014A:
cmp dword ptr [ebp-20], 10
ja .L_014F
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0150+eax*4]
_.L_0150:
.int .L_014E
.int .L_014F
.int .L_014F
.int .L_014F
.int .L_014F
.int .L_014F
.int .L_014F
.int .L_014C
.int .L_014C
.int .L_014D
.int .L_014D
.L_0149:
jmp .L_0122
.L_0123:
cmp dword ptr [ebp-12], 10
ja .L_0146
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0151+eax*4]
_.L_0151:
.int .L_013B
.int .L_0146
.int .L_0146
.int .L_0146
.int .L_0146
.int .L_0146
.int .L_0146
.int .L_0125
.int .L_0125
.int .L_0130
.int .L_0130
.L_0122:
.L_011F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMOV@8
_EMITMOV@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0159
mov dword ptr [ebp-8], 24
jmp .L_0162
.L_0159:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0162:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_015C
.L_015E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 35
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_015B
.L_015F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 34
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_015B
.L_0160:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 33
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_015B
.L_015C:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_0160
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0161+eax*4-28]
_.L_0161:
.int .L_015E
.int .L_015E
.int .L_015F
.int .L_015F
.L_015B:
.L_0158:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITADD@8
_EMITADD@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0163:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0165
mov dword ptr [ebp-8], 24
jmp .L_016E
.L_0165:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_016E:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0168
.L_016A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 38
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_016B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 37
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_016C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_0168:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_016C
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_016D+eax*4-28]
_.L_016D:
.int .L_016A
.int .L_016A
.int .L_016B
.int .L_016B
.L_0167:
.L_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSUB@8
_EMITSUB@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_016F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0171
mov dword ptr [ebp-8], 24
jmp .L_017A
.L_0171:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_017A:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0174
.L_0176:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0173
.L_0177:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 40
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0173
.L_0178:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 39
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0173
.L_0174:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_0178
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0179+eax*4-28]
_.L_0179:
.int .L_0176
.int .L_0176
.int .L_0177
.int .L_0177
.L_0173:
.L_0170:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMUL@8
_EMITMUL@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_017D
mov dword ptr [ebp-8], 24
jmp .L_0186
.L_017D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0186:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0180
.L_0182:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 44
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_017F
.L_0183:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 43
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_017F
.L_0184:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_017F
.L_0180:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_0184
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0185+eax*4-28]
_.L_0185:
.int .L_0182
.int .L_0182
.int .L_0183
.int .L_0183
.L_017F:
.L_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDIV@8
_EMITDIV@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0187:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 46
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_0188:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITINTDIV@8
_EMITINTDIV@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0189:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 45
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_018A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITMOD@8
_EMITMOD@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_018B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 48
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_018C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSHL@8
_EMITSHL@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_018D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_018F
mov dword ptr [ebp-8], 24
jmp .L_0197
.L_018F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0197:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0194
.L_0195:
cmp dword ptr [ebp-12], 8
jne .L_0193
.L_0194:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 52
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_0191
.L_0193:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 51
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_0196:
.L_0191:
.L_018E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSHR@8
_EMITSHR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0198:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_019A
mov dword ptr [ebp-8], 24
jmp .L_01A2
.L_019A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01A2:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_019F
.L_01A0:
cmp dword ptr [ebp-12], 8
jne .L_019E
.L_019F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 54
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_019C
.L_019E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 53
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01A1:
.L_019C:
.L_0199:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITAND@8
_EMITAND@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01A5
mov dword ptr [ebp-8], 24
jmp .L_01AD
.L_01A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01AD:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01AA
.L_01AB:
cmp dword ptr [ebp-12], 8
jne .L_01A9
.L_01AA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 56
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01A7
.L_01A9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 55
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01AC:
.L_01A7:
.L_01A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITOR@8
_EMITOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01B0
mov dword ptr [ebp-8], 24
jmp .L_01B8
.L_01B0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01B8:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01B5
.L_01B6:
cmp dword ptr [ebp-12], 8
jne .L_01B4
.L_01B5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 58
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01B2
.L_01B4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 57
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01B7:
.L_01B2:
.L_01AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITXOR@8
_EMITXOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01BB
mov dword ptr [ebp-8], 24
jmp .L_01C3
.L_01BB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01C3:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01C0
.L_01C1:
cmp dword ptr [ebp-12], 8
jne .L_01BF
.L_01C0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 60
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01BD
.L_01BF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 59
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01C2:
.L_01BD:
.L_01BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITEQV@8
_EMITEQV@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01C6
mov dword ptr [ebp-8], 24
jmp .L_01CE
.L_01C6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01CE:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01CB
.L_01CC:
cmp dword ptr [ebp-12], 8
jne .L_01CA
.L_01CB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 62
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01C8
.L_01CA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 61
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01CD:
.L_01C8:
.L_01C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITIMP@8
_EMITIMP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01CF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01D1
mov dword ptr [ebp-8], 24
jmp .L_01D9
.L_01D1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01D9:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01D6
.L_01D7:
cmp dword ptr [ebp-12], 8
jne .L_01D5
.L_01D6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 64
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
jmp .L_01D3
.L_01D5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 63
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01D8:
.L_01D3:
.L_01D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITATN2@8
_EMITATN2@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01DA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 65
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01DB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITPOW@8
_EMITPOW@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01DC:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 66
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITADDROF@8
_EMITADDROF@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01DE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 67
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01DF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDEREF@8
_EMITDEREF@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01E0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 68
call _HNEWBOP@12
mov dword ptr [ebp-4], eax
.L_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITGT@16
_EMITGT@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01E2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01E4
mov dword ptr [ebp-8], 24
jmp .L_01EF
.L_01E4:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01EF:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01E9
.L_01EA:
cmp dword ptr [ebp-12], 8
jne .L_01E8
.L_01E9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 71
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_01E6
.L_01E8:
cmp dword ptr [ebp-12], 9
je .L_01EC
.L_01ED:
cmp dword ptr [ebp-12], 10
jne .L_01EB
.L_01EC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 70
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_01E6
.L_01EB:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 69
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_01EE:
.L_01E6:
.L_01E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITLT@16
_EMITLT@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01F0:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01F2
mov dword ptr [ebp-8], 24
jmp .L_01FD
.L_01F2:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01FD:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01F7
.L_01F8:
cmp dword ptr [ebp-12], 8
jne .L_01F6
.L_01F7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 74
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_01F4
.L_01F6:
cmp dword ptr [ebp-12], 9
je .L_01FA
.L_01FB:
cmp dword ptr [ebp-12], 10
jne .L_01F9
.L_01FA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 73
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_01F4
.L_01F9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 72
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_01FC:
.L_01F4:
.L_01F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITEQ@16
_EMITEQ@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01FE:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0200
mov dword ptr [ebp-8], 24
jmp .L_020B
.L_0200:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_020B:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0205
.L_0206:
cmp dword ptr [ebp-12], 8
jne .L_0204
.L_0205:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 77
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_0202
.L_0204:
cmp dword ptr [ebp-12], 9
je .L_0208
.L_0209:
cmp dword ptr [ebp-12], 10
jne .L_0207
.L_0208:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 76
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_0202
.L_0207:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 75
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_020A:
.L_0202:
.L_01FF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITNE@16
_EMITNE@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_020C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_020E
mov dword ptr [ebp-8], 24
jmp .L_0219
.L_020E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0219:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0213
.L_0214:
cmp dword ptr [ebp-12], 8
jne .L_0212
.L_0213:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 80
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_0210
.L_0212:
cmp dword ptr [ebp-12], 9
je .L_0216
.L_0217:
cmp dword ptr [ebp-12], 10
jne .L_0215
.L_0216:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 79
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_0210
.L_0215:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 78
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_0218:
.L_0210:
.L_020D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITGE@16
_EMITGE@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_021A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_021C
mov dword ptr [ebp-8], 24
jmp .L_0227
.L_021C:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0227:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0221
.L_0222:
cmp dword ptr [ebp-12], 8
jne .L_0220
.L_0221:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_021E
.L_0220:
cmp dword ptr [ebp-12], 9
je .L_0224
.L_0225:
cmp dword ptr [ebp-12], 10
jne .L_0223
.L_0224:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_021E
.L_0223:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 81
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_0226:
.L_021E:
.L_021B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITLE@16
_EMITLE@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0228:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_022A
mov dword ptr [ebp-8], 24
jmp .L_0235
.L_022A:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0235:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_022F
.L_0230:
cmp dword ptr [ebp-12], 8
jne .L_022E
.L_022F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 86
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_022C
.L_022E:
cmp dword ptr [ebp-12], 9
je .L_0232
.L_0233:
cmp dword ptr [ebp-12], 10
jne .L_0231
.L_0232:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 85
call _HNEWREL@20
mov dword ptr [ebp-4], eax
jmp .L_022C
.L_0231:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call _HNEWREL@20
mov dword ptr [ebp-4], eax
.L_0234:
.L_022C:
.L_0229:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EMITNEG@4
_EMITNEG@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0236:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0238
mov dword ptr [ebp-8], 24
jmp .L_0243
.L_0238:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0243:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_023D
.L_023E:
cmp dword ptr [ebp-12], 8
jne .L_023C
.L_023D:
push dword ptr [ebp+8]
push 89
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_023A
.L_023C:
cmp dword ptr [ebp-12], 9
je .L_0240
.L_0241:
cmp dword ptr [ebp-12], 10
jne .L_023F
.L_0240:
push dword ptr [ebp+8]
push 88
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_023A
.L_023F:
push dword ptr [ebp+8]
push 87
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0242:
.L_023A:
.L_0237:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITNOT@4
_EMITNOT@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0244:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0246
mov dword ptr [ebp-8], 24
jmp .L_024E
.L_0246:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_024E:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_024B
.L_024C:
cmp dword ptr [ebp-12], 8
jne .L_024A
.L_024B:
push dword ptr [ebp+8]
push 91
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_0248
.L_024A:
push dword ptr [ebp+8]
push 90
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_024D:
.L_0248:
.L_0245:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITHADD@4
_EMITHADD@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_024F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0251
mov dword ptr [ebp-8], 24
jmp .L_0259
.L_0251:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0259:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 9
je .L_0256
.L_0257:
cmp dword ptr [ebp-12], 10
jne .L_0255
.L_0256:
push dword ptr [ebp+8]
push 92
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0255:
.L_0258:
.L_0253:
.L_0250:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITABS@4
_EMITABS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_025A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_025C
mov dword ptr [ebp-8], 24
jmp .L_0267
.L_025C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0267:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0261
.L_0262:
cmp dword ptr [ebp-12], 8
jne .L_0260
.L_0261:
push dword ptr [ebp+8]
push 95
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_025E
.L_0260:
cmp dword ptr [ebp-12], 9
je .L_0264
.L_0265:
cmp dword ptr [ebp-12], 10
jne .L_0263
.L_0264:
push dword ptr [ebp+8]
push 94
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_025E
.L_0263:
push dword ptr [ebp+8]
push 93
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0266:
.L_025E:
.L_025B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSGN@4
_EMITSGN@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0268:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_026A
mov dword ptr [ebp-8], 24
jmp .L_0275
.L_026A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0275:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_026F
.L_0270:
cmp dword ptr [ebp-12], 8
jne .L_026E
.L_026F:
push dword ptr [ebp+8]
push 98
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_026C
.L_026E:
cmp dword ptr [ebp-12], 9
je .L_0272
.L_0273:
cmp dword ptr [ebp-12], 10
jne .L_0271
.L_0272:
push dword ptr [ebp+8]
push 97
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
jmp .L_026C
.L_0271:
push dword ptr [ebp+8]
push 96
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0274:
.L_026C:
.L_0269:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFIX@4
_EMITFIX@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0276:
push dword ptr [ebp+8]
push 99
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0277:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFRAC@4
_EMITFRAC@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0278:
push dword ptr [ebp+8]
push 100
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0279:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITCONVFD2FS@4
_EMITCONVFD2FS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_027A:
push dword ptr [ebp+8]
push 101
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_027B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSIN@4
_EMITSIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_027C:
push dword ptr [ebp+8]
push 103
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_027D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITASIN@4
_EMITASIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_027E:
push dword ptr [ebp+8]
push 104
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_027F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITCOS@4
_EMITCOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0280:
push dword ptr [ebp+8]
push 105
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0281:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITACOS@4
_EMITACOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0282:
push dword ptr [ebp+8]
push 106
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0283:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITTAN@4
_EMITTAN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0284:
push dword ptr [ebp+8]
push 107
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0285:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITATAN@4
_EMITATAN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0286:
push dword ptr [ebp+8]
push 108
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0287:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSQRT@4
_EMITSQRT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0288:
push dword ptr [ebp+8]
push 109
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0289:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRSQRT@4
_EMITRSQRT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_028A:
push dword ptr [ebp+8]
push 110
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_028B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRCP@4
_EMITRCP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_028C:
push dword ptr [ebp+8]
push 111
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_028D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLOG@4
_EMITLOG@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_028E:
push dword ptr [ebp+8]
push 112
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_028F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITEXP@4
_EMITEXP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0290:
push dword ptr [ebp+8]
push 113
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0291:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITFLOOR@4
_EMITFLOOR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0292:
push dword ptr [ebp+8]
push 114
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0293:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITXCHGTOS@4
_EMITXCHGTOS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0294:
push dword ptr [ebp+8]
push 115
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0295:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSWZREP@4
_EMITSWZREP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0296:
push dword ptr [ebp+8]
push 102
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_0297:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITSTACKALIGN@4
_EMITSTACKALIGN@4:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.L_0298:
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-76], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-52], ebx
mov dword ptr [ebp-48], eax
push 0
lea ebx, [ebp-76]
push ebx
push 116
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.L_0299:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUSH@4
_EMITPUSH@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_029A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_029C
mov dword ptr [ebp-8], 24
jmp .L_02A5
.L_029C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_02A5:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_029F
.L_02A1:
push 0
push dword ptr [ebp+8]
push 119
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_029E
.L_02A2:
push 0
push dword ptr [ebp+8]
push 118
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_029E
.L_02A3:
push 0
push dword ptr [ebp+8]
push 117
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_029E
.L_029F:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_02A3
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_02A4+eax*4-28]
_.L_02A4:
.int .L_02A1
.int .L_02A1
.int .L_02A2
.int .L_02A2
.L_029E:
.L_029B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPOP@4
_EMITPOP@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_02A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_02A8
mov dword ptr [ebp-8], 24
jmp .L_02B1
.L_02A8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_02B1:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_02AB
.L_02AD:
push 0
push dword ptr [ebp+8]
push 122
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_02AA
.L_02AE:
push 0
push dword ptr [ebp+8]
push 121
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_02AA
.L_02AF:
push 0
push dword ptr [ebp+8]
push 120
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
jmp .L_02AA
.L_02AB:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_02AF
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_02B0+eax*4-28]
_.L_02B0:
.int .L_02AD
.int .L_02AD
.int .L_02AE
.int .L_02AE
.L_02AA:
.L_02A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUSHUDT@8
_EMITPUSHUDT@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02B2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 123
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.L_02B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITPOPST0@0
_EMITPOPST0@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02B4:
push 0
push 0
push 124
call _HNEWSTK@12
mov dword ptr [ebp-4], eax
.L_02B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITCOMMENT@4
_EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 24
.L_02B6:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_02B8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HNEWLIT@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_02B7:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITASM@4
_EMITASM@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_02BB:
push -1
push dword ptr [ebp+8]
call _HNEWLIT@8
mov dword ptr [ebp-4], 0
.L_02C0:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov dword ptr [ebx+132], -1
.L_02BE:
inc dword ptr [ebp-4]
.L_02BD:
cmp dword ptr [ebp-4], 1
jle .L_02C0
.L_02BF:
.L_02BC:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITJMPTB@36
_EMITJMPTB@36:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_02C1:
push 1
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-12], eax
push 1
mov eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_02C4
.L_02C7:
mov eax, dword ptr [ebp-20]
sal eax, 3
mov ebx, dword ptr [ebp+12]
add ebx, eax
mov eax, dword ptr [ebp-20]
sal eax, 3
mov ecx, dword ptr [ebp-12]
add ecx, eax
mov esi, dword ptr [ebx]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx], esi
mov dword ptr [ecx+4], eax
mov esi, dword ptr [ebp-20]
sal esi, 2
mov eax, dword ptr [ebp+16]
add eax, esi
mov esi, dword ptr [ebp-20]
sal esi, 2
mov ecx, dword ptr [ebp-16]
add ecx, esi
mov esi, dword ptr [eax]
mov dword ptr [ecx], esi
.L_02C5:
inc dword ptr [ebp-20]
.L_02C4:
mov esi, dword ptr [ebp-24]
cmp dword ptr [ebp-20], esi
jle .L_02C7
.L_02C6:
push 0
push 7
call _HNEWNODE@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+8], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [esi+12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+16], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [esi+20], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+24], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+32]
mov dword ptr [esi+32], ecx
mov dword ptr [esi+36], eax
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ebp+36]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+40], esi
mov dword ptr [ecx+44], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.L_02C2:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _EMITCALL@8
_EMITCALL@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02C8:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 125
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.L_02C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITCALLPTR@8
_EMITCALLPTR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02CA:
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 126
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.L_02CB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITBRANCH@8
_EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02CC:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push 0
push 127
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.L_02CD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITJUMP@4
_EMITJUMP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02CE:
push 0
push dword ptr [ebp+8]
push 0
push 128
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.L_02CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITJUMPPTR@4
_EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02D0:
push 0
push 0
push dword ptr [ebp+8]
push 129
call _HNEWBRANCH@16
mov dword ptr [ebp-4], eax
.L_02D1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITRET@4
_EMITRET@4:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.L_02D2:
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-76], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-52], ebx
mov dword ptr [ebp-48], eax
lea ebx, [ebp-76]
push ebx
push 130
call _HNEWUOP@8
mov dword ptr [ebp-4], eax
.L_02D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITLABEL@4
_EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02D4:
push dword ptr [ebp+8]
push 131
call _HNEWSYMOP@8
mov dword ptr [ebp-4], eax
.L_02D5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITPUBLIC@4
_EMITPUBLIC@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02D6:
push dword ptr [ebp+8]
push 132
call _HNEWSYMOP@8
mov dword ptr [ebp-4], eax
.L_02D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITMEMMOVE@12
_EMITMEMMOVE@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02D8:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 135
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.L_02D9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITMEMSWAP@12
_EMITMEMSWAP@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02DA:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 136
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.L_02DB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITMEMCLEAR@8
_EMITMEMCLEAR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02DC:
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 137
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.L_02DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITSTKCLEAR@8
_EMITSTKCLEAR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02DE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 138
call _HNEWMEM@20
mov dword ptr [ebp-4], eax
.L_02DF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDBGLINEBEGIN@12
_EMITDBGLINEBEGIN@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02E0:
push dword ptr [ebp+16]
push dword ptr [_EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 139
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.L_02E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EMITDBGLINEEND@8
_EMITDBGLINEEND@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02E2:
push 0
push dword ptr [_EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 140
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.L_02E3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EMITDBGSCOPEBEGIN@4
_EMITDBGSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02E4:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 141
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.L_02E5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EMITDBGSCOPEEND@4
_EMITDBGSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_02E6:
push 0
push 0
push 0
push dword ptr [ebp+8]
push 142
call _HNEWDBG@20
mov dword ptr [ebp-4], eax
.L_02E7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__emit:
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
.balign 16
_HOPTSYMOP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_008D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 131
jne .L_0091
.L_0092:
cmp dword ptr [ebp+8], 0
je .L_0094
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 5
jne .L_0096
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 127
je .L_009A
.L_009B:
cmp dword ptr [ebp-12], 128
jne .L_0099
.L_009A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+16], ecx
jne .L_009D
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 0
.L_009D:
.L_009C:
.L_0099:
.L_0097:
.L_0096:
.L_0095:
.L_0094:
.L_0093:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_008E
.L_0091:
.L_008F:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
.L_008E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPEEPHOLEOPT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_009E:
mov dword ptr [ebp-8], 0
lea eax, [_EMIT+16]
push eax
call _FLISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_00A0:
cmp dword ptr [ebp-4], 0
je .L_00A1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00A3
.L_00A5:
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HOPTSYMOP@8
mov dword ptr [ebp-8], eax
jmp .L_00A2
.L_00A6:
jmp .L_00A2
.L_00A7:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_00A9
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_00A9:
.L_00A8:
jmp .L_00A2
.L_00AA:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
jmp .L_00A2
.L_00A3:
mov eax, dword ptr [ebp-12]
add eax, 4294967290
cmp eax, 4
ja .L_00AA
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00AB+eax*4-24]
_.L_00AB:
.int .L_00A7
.int .L_00AA
.int .L_00A5
.int .L_00AA
.int .L_00A6
.L_00A2:
push dword ptr [ebp-4]
call _FLISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_00A0
.L_00A1:
.L_009F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HNEWVR@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00C3:
cmp dword ptr [ebp+8], 0
jne .L_00C6
mov dword ptr [ebp-4], 0
jmp .L_00C4
.L_00C6:
.L_00C5:
lea eax, [_EMIT+72]
push eax
call _FLISTNEWITEM@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [ebx+32], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [esi+48]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+24], ecx
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+16]
mov dword ptr [ebx+16], esi
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [esi+20]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_00C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C9
mov dword ptr [ebp-16], 24
jmp .L_02E8
.L_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_02E8:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
call dword ptr [eax+40]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, dword ptr [ebp-8]
mov esi, 1
mov cl, byte ptr [eax+12]
sal esi, cl
or dword ptr [ebx+132], esi
.L_00C8:
.L_00C7:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+56]
call _HNEWVR@4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+56], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _HNEWVR@4
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+52], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C4:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HNEWNODE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CB:
lea eax, [_EMIT+16]
push eax
call _FLISTNEWITEM@4
mov dword ptr [_Lt_02E9], eax
mov eax, dword ptr [_Lt_02E9]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [_Lt_02EA], 0
.L_00D0:
mov ebx, dword ptr [_Lt_02EA]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [_Lt_02EA]
sal eax, 2
mov ecx, dword ptr [_Lt_02E9]
add ecx, eax
mov eax, dword ptr [ebx+136]
mov dword ptr [ecx+48], eax
.L_00CE:
inc dword ptr [_Lt_02EA]
.L_00CD:
cmp dword ptr [_Lt_02EA], 1
jle .L_00D0
.L_00CF:
cmp dword ptr [ebp+12], 0
je .L_00D2
inc dword ptr [_EMIT+4]
.L_00D2:
.L_00D1:
mov eax, dword ptr [_Lt_02E9]
mov dword ptr [ebp-4], eax
.L_00CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02E9,4
.balign 4
	.lcomm	_Lt_02EA,4

.section .text
.balign 16
_HNEWBOP@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D3:
push -1
push 1
call _HNEWNODE@8
mov dword ptr [_Lt_02EB], eax
mov eax, dword ptr [_Lt_02EB]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02EB]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02EB]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [_Lt_02EB]
mov dword ptr [ebp-4], eax
.L_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_02EB,4

.section .text
.balign 16
_HNEWUOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D5:
push -1
push 2
call _HNEWNODE@8
mov dword ptr [_Lt_02EC], eax
mov eax, dword ptr [_Lt_02EC]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02EC]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02EC]
mov dword ptr [ebp-4], eax
.L_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02EC,4

.section .text
.balign 16
_HNEWREL@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D7:
push -1
push 3
call _HNEWNODE@8
mov dword ptr [_Lt_02ED], eax
mov eax, dword ptr [_Lt_02ED]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02ED]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02ED]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
push dword ptr [ebp+20]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02ED]
mov dword ptr [ebx+20], eax
push dword ptr [ebp+24]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02ED]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_02ED]
mov dword ptr [ebp-4], eax
.L_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_02ED,4

.section .text
.balign 16
_HNEWSTK@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D9:
push -1
push 4
call _HNEWNODE@8
mov dword ptr [_Lt_02EE], eax
mov eax, dword ptr [_Lt_02EE]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02EE]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02EE]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [_Lt_02EE]
mov dword ptr [ebp-4], ebx
.L_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_02EE,4

.section .text
.balign 16
_HNEWBRANCH@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DB:
push -1
push 5
call _HNEWNODE@8
mov dword ptr [_Lt_02EF], eax
mov eax, dword ptr [_Lt_02EF]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_02EF]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02EF]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02EF]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [_Lt_02EF]
mov dword ptr [ebp-4], ebx
.L_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_02EF,4

.section .text
.balign 16
_HNEWSYMOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DD:
push 0
push 8
call _HNEWNODE@8
mov dword ptr [_Lt_02F0], eax
mov eax, dword ptr [_Lt_02F0]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_02F0]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02F0]
mov dword ptr [ebp-4], eax
.L_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02F0,4

.section .text
.balign 16
_HNEWLIT@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00DF:
push dword ptr [ebp+12]
push 6
call _HNEWNODE@8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+12], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
call _fb_StrAssign@20
.L_00E0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HNEWMEM@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
push -1
push 9
call _HNEWNODE@8
mov dword ptr [_Lt_02F1], eax
mov eax, dword ptr [_Lt_02F1]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
push dword ptr [ebp+12]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02F1]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
call _HNEWVR@4
mov ebx, dword ptr [_Lt_02F1]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [_Lt_02F1]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [_Lt_02F1]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_02F1]
mov dword ptr [ebp-4], eax
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_02F1,4

.section .text
.balign 16
_HNEWDBG@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E3:
push 0
push 10
call _HNEWNODE@8
mov dword ptr [_Lt_02F2], eax
mov eax, dword ptr [_Lt_02F2]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_02F2]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_02F2]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [_Lt_02F2]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [_Lt_02F2]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [_Lt_02F2]
mov dword ptr [ebp-4], ebx
.L_00E4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_02F2,4
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.globl _EMIT
.balign 4
	.lcomm	_EMIT,240
.balign 4
	.lcomm	_Lt_0073,36

.section .data
.balign 4
_Lt_0080:	.ascii	"\t\0"
.balign 4
_Lt_0082:	.ascii	"\r\n\0"
.balign 4
_Lt_02B8:	.ascii	"##\0"

.section .ctors
.int _fb_ctor__emit
