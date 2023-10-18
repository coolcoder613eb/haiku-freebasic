	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBGETLANGOPTIONS@4
_FBGETLANGOPTIONS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [ebp-4], ebx
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETLANGNAME@4
_FBGETLANGNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A7:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_LANGTB+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00A8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETBACKENDNAME@4
_FBGETBACKENDNAME@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A9:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00AD
.L_00AE:
push 0
push 4
push offset _Lt_00AF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-16], 1
jne .L_00B0
.L_00B1:
push 0
push 4
push offset _Lt_00B2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00AB
.L_00B0:
cmp dword ptr [ebp-16], 2
jne .L_00B3
.L_00B4:
push 0
push 5
push offset _Lt_00B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00AB
.L_00B3:
cmp dword ptr [ebp-16], 3
jne .L_00B6
.L_00B7:
push 0
push 6
push offset _Lt_00B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B6:
.L_00AB:
.L_00AA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBINIT@12
_FBINIT@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B9:
push 5
lea eax, [_ENV+1132]
push eax
call _STRSETINIT@8
push 5
lea eax, [_ENV+1176]
push eax
call _STRSETINIT@8
mov dword ptr [_ENV+1112], 0
mov dword ptr [_ENV+1116], 0
and dword ptr [_ENV+1120], -6
push 15
push 0
push 1
push 0
push -1
push 280
push offset _INFILETB
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_00BB
push 0
push 0
push offset _Lt_00BC
push 402
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00BB:
mov dword ptr [_ENV+900], 0
mov dword ptr [_ENV+1032], 0
push 0
push 0
push dword ptr [ebp+12]
push 128
lea eax, [_ENV+904]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+16]
mov dword ptr [_ENV+1108], eax
mov eax, dword ptr [_ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+1084], eax
cmp dword ptr [_ENV+136], 3
je .L_00BE
mov dword ptr [_ENV+1044], 8
mov dword ptr [_ENV+1048], 8
mov dword ptr [_ENV+1052], 9
mov dword ptr [_ENV+1056], 8
mov dword ptr [_ENV+1060], 9
call _FBIS64BIT@0
test eax, eax
je .L_00C0
mov dword ptr [_ENV+1064], 8
mov dword ptr [_ENV+1068], 9
jmp .L_00BF
.L_00C0:
mov dword ptr [_ENV+1064], 13
mov dword ptr [_ENV+1068], 14
.L_00BF:
mov dword ptr [_ENV+1072], 16
jmp .L_00BD
.L_00BE:
mov dword ptr [_ENV+1044], 5
mov dword ptr [_ENV+1048], 5
mov dword ptr [_ENV+1052], 6
mov dword ptr [_ENV+1056], 11
mov dword ptr [_ENV+1060], 12
mov dword ptr [_ENV+1064], 13
mov dword ptr [_ENV+1068], 14
mov dword ptr [_ENV+1072], 15
.L_00BD:
mov dword ptr [_ENV+1080], 2
mov dword ptr [_ENV+1088], -1
mov dword ptr [_ENV+1092], 0
mov dword ptr [_ENV+1096], 0
mov dword ptr [_ENV+1076], 0
mov eax, dword ptr [_ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_ENV+1100], eax
mov dword ptr [_ENV+1220], 0
mov dword ptr [_ENV+292], 0
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_00C4
.L_00C5:
cmp dword ptr [ebp-8], 4
je .L_00C4
.L_00C6:
cmp dword ptr [ebp-8], 9
jne .L_00C3
.L_00C4:
mov dword ptr [_ENV+292], -1
jmp .L_00C1
.L_00C3:
cmp dword ptr [ebp-8], 1
je .L_00C8
.L_00C9:
cmp dword ptr [ebp-8], 0
jne .L_00C7
.L_00C8:
call _FBIS64BIT@0
not eax
mov dword ptr [_ENV+292], eax
.L_00C7:
.L_00C1:
mov dword ptr [_ENV+296], 0
call _PARSERSETCTX@0
push dword ptr [ebp+8]
call _SYMBINIT@4
call _ERRINIT@0
call _ASTINIT@0
call _IRINIT@0
mov eax, dword ptr [_ENV+272]
and eax, 480
je .L_00CA
mov dword ptr [ebp-4], 24
jmp .L_00CC
.L_00CA:
mov eax, dword ptr [_ENV+272]
and eax, 31
mov dword ptr [ebp-4], eax
.L_00CC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_ENV+288], ebx
push 0
push 256
lea ebx, [_ENV+864]
push ebx
call _HASHINIT@12
push 0
push 256
lea ebx, [_ENV+876]
push ebx
call _HASHINIT@12
push 0
push 256
lea ebx, [_ENV+888]
push ebx
call _HASHINIT@12
push 0
push 144
push 128
lea ebx, [_PARSER]
push ebx
call _STACKNEW@16
push 0
push 0
call _LEXINIT@8
call _PARSERINIT@0
call _RTLINIT@0
mov dword ptr [_ENV+1104], -1
.L_00BA:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _FBEND@0
_FBEND@0:
.L_00D0:
mov dword ptr [_ENV+1104], 0
call _RTLEND@0
call _PARSEREND@0
call _LEXEND@0
lea eax, [_PARSER]
push eax
call _STACKFREE@4
lea eax, [_ENV+864]
push eax
call _HASHEND@4
lea eax, [_ENV+888]
push eax
call _HASHEND@4
lea eax, [_ENV+876]
push eax
call _HASHEND@4
call _IREND@0
call _ASTEND@0
call _ERREND@0
call _SYMBEND@0
push offset _INFILETB
call _fb_ArrayErase@4
lea eax, [_ENV+1132]
push eax
call _STRSETEND@4
lea eax, [_ENV+1176]
push eax
call _STRSETEND@4
.L_00D1:
ret
.balign 16

.globl _FBGLOBALINIT@0
_FBGLOBALINIT@0:
.L_00D8:
push 256
lea eax, [_ENV]
push eax
call _STRLISTINIT@8
push 256
lea eax, [_ENV+32]
push eax
call _STRLISTINIT@8
push 256
lea eax, [_ENV+64]
push eax
call _STRLISTINIT@8
mov dword ptr [_ENV+96], 0
mov dword ptr [_ENV+100], 0
mov dword ptr [_ENV+104], 0
mov dword ptr [_ENV+108], 0
mov dword ptr [_ENV+112], 3
mov dword ptr [_ENV+116], 0
mov dword ptr [_ENV+120], 0
mov dword ptr [_ENV+124], 0
mov dword ptr [_ENV+128], 0
mov dword ptr [_ENV+132], 0
mov dword ptr [_ENV+136], 0
mov dword ptr [_ENV+140], 0
mov dword ptr [_ENV+144], 0
mov dword ptr [_ENV+148], 0
mov dword ptr [_ENV+152], 0
mov dword ptr [_ENV+156], 0
mov dword ptr [_ENV+164], 0
mov dword ptr [_ENV+168], 0
mov dword ptr [_ENV+172], 0
mov dword ptr [_ENV+176], 0
mov dword ptr [_ENV+180], 0
mov dword ptr [_ENV+160], 0
mov dword ptr [_ENV+184], 0
mov dword ptr [_ENV+188], 1
mov dword ptr [_ENV+192], -1
mov dword ptr [_ENV+196], 10
mov dword ptr [_ENV+200], 0
mov dword ptr [_ENV+204], 0
mov dword ptr [_ENV+224], 0
mov dword ptr [_ENV+232], 0
mov dword ptr [_ENV+236], 0
mov dword ptr [_ENV+240], 0
mov dword ptr [_ENV+228], 0
mov dword ptr [_ENV+244], 0
mov dword ptr [_ENV+248], -1
mov dword ptr [_ENV+252], 0
mov dword ptr [_ENV+256], 0
mov dword ptr [_ENV+260], 0
mov dword ptr [_ENV+264], 0
mov dword ptr [_ENV+1112], 0
mov dword ptr [_ENV+1116], 0
mov dword ptr [_ENV+1120], 0
mov dword ptr [_ENV+1128], -1
mov dword ptr [_ENV+1124], 0
mov dword ptr [_ENV+1108], 0
call _HUPDATELANGOPTIONS@0
call _HUPDATETARGETOPTIONS@0
.L_00D9:
ret
.balign 16

.globl _FBADDINCLUDEPATH@4
_FBADDINCLUDEPATH@4:
push ebp
mov ebp, esp
.L_00DA:
push dword ptr [ebp+8]
lea eax, [_ENV+64]
push eax
call _STRLISTAPPEND@8
.L_00DB:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDPREDEFINE@4
_FBADDPREDEFINE@4:
push ebp
mov ebp, esp
.L_00DC:
push dword ptr [ebp+8]
lea eax, [_ENV]
push eax
call _STRLISTAPPEND@8
.L_00DD:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDPREINCLUDE@4
_FBADDPREINCLUDE@4:
push ebp
mov ebp, esp
.L_00DE:
push dword ptr [ebp+8]
lea eax, [_ENV+32]
push eax
call _STRLISTAPPEND@8
.L_00DF:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBSETOPTION@8
_FBSETOPTION@8:
push ebp
mov ebp, esp
sub esp, 8
.L_00E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E3
.L_00E5:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+96], eax
jmp .L_00E2
.L_00E6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+100], eax
jmp .L_00E2
.L_00E7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+104], eax
jmp .L_00E2
.L_00E8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+108], eax
call _HUPDATETARGETOPTIONS@0
jmp .L_00E2
.L_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+112], eax
jmp .L_00E2
.L_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+116], eax
jmp .L_00E2
.L_00EB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+120], eax
jmp .L_00E2
.L_00EC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+124], eax
jmp .L_00E2
.L_00ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+128], eax
jmp .L_00E2
.L_00EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+132], eax
jmp .L_00E2
.L_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+136], eax
call _HUPDATELANGOPTIONS@0
jmp .L_00E2
.L_00F0:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+140], eax
jmp .L_00E2
.L_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+1128], eax
jmp .L_00E2
.L_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+144], eax
jmp .L_00E2
.L_00F3:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+148], eax
jmp .L_00E2
.L_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+152], eax
jmp .L_00E2
.L_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+156], eax
jmp .L_00E2
.L_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+160], eax
jmp .L_00E2
.L_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+164], eax
jmp .L_00E2
.L_00F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+168], eax
jmp .L_00E2
.L_00F9:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+172], eax
jmp .L_00E2
.L_00FA:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+176], eax
jmp .L_00E2
.L_00FB:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+180], eax
jmp .L_00E2
.L_00FC:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+184], eax
jmp .L_00E2
.L_00FD:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+188], eax
jmp .L_00E2
.L_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+192], eax
jmp .L_00E2
.L_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+196], eax
jmp .L_00E2
.L_0100:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+200], eax
jmp .L_00E2
.L_0101:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+204], eax
jmp .L_00E2
.L_0102:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+208], eax
jmp .L_00E2
.L_0103:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+212], eax
jmp .L_00E2
.L_0104:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+216], eax
jmp .L_00E2
.L_0105:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+220], eax
jmp .L_00E2
.L_0106:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+224], eax
jmp .L_00E2
.L_0107:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+228], eax
jmp .L_00E2
.L_0108:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+232], eax
jmp .L_00E2
.L_0109:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+236], eax
jmp .L_00E2
.L_010A:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+240], eax
jmp .L_00E2
.L_010B:
cmp dword ptr [ebp+12], 0
jge .L_010D
cmp dword ptr [_ENV+244], 0
jne .L_010F
call _FBIS64BIT@0
test eax, eax
je .L_0110
mov dword ptr [ebp-8], 2097152
jmp .L_011E
.L_0110:
mov dword ptr [ebp-8], 1048576
.L_011E:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
.L_010F:
.L_010E:
jmp .L_010C
.L_010D:
call _FBIS64BIT@0
test eax, eax
je .L_0113
cmp dword ptr [ebp+12], 65536
jge .L_0114
mov dword ptr [ebp-8], 65536
jmp .L_011F
.L_0114:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_011F:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
jmp .L_0112
.L_0113:
cmp dword ptr [ebp+12], 32768
jge .L_0116
mov dword ptr [ebp-8], 32768
jmp .L_0120
.L_0116:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_0120:
mov eax, dword ptr [ebp-8]
mov dword ptr [_ENV+244], eax
.L_0112:
.L_010C:
jmp .L_00E2
.L_0118:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+248], eax
jmp .L_00E2
.L_0119:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+252], eax
jmp .L_00E2
.L_011A:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+256], eax
jmp .L_00E2
.L_011B:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+260], eax
jmp .L_00E2
.L_011C:
mov eax, dword ptr [ebp+12]
mov dword ptr [_ENV+264], eax
call _HUPDATETARGETOPTIONS@0
jmp .L_00E2
.L_00E3:
cmp dword ptr [ebp-4], 43
ja .L_00E2
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_011D+eax*4]
_.L_011D:
.int .L_00E5
.int .L_00E6
.int .L_00E7
.int .L_00E8
.int .L_00E9
.int .L_00EA
.int .L_00EB
.int .L_00EC
.int .L_00ED
.int .L_00EE
.int .L_00EF
.int .L_00F0
.int .L_00F1
.int .L_00F2
.int .L_00F3
.int .L_00F4
.int .L_00F5
.int .L_00F6
.int .L_00F7
.int .L_00F8
.int .L_00FA
.int .L_00FB
.int .L_00F9
.int .L_00FC
.int .L_00FD
.int .L_00FE
.int .L_00FF
.int .L_0100
.int .L_0101
.int .L_0102
.int .L_0103
.int .L_0104
.int .L_0105
.int .L_0106
.int .L_0107
.int .L_0108
.int .L_0109
.int .L_010A
.int .L_010B
.int .L_0118
.int .L_0119
.int .L_011A
.int .L_011B
.int .L_011C
.L_00E2:
.L_00E1:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBGETOPTION@4
_FBGETOPTION@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0121:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0124
.L_0126:
mov eax, dword ptr [_ENV+96]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0127:
mov eax, dword ptr [_ENV+100]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0128:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0129:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012A:
mov eax, dword ptr [_ENV+112]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012B:
mov eax, dword ptr [_ENV+116]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012C:
mov eax, dword ptr [_ENV+120]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012D:
mov eax, dword ptr [_ENV+124]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012E:
mov eax, dword ptr [_ENV+128]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_012F:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0130:
mov eax, dword ptr [_ENV+136]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0131:
mov eax, dword ptr [_ENV+140]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0132:
mov eax, dword ptr [_ENV+1128]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0133:
mov eax, dword ptr [_ENV+144]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0134:
mov eax, dword ptr [_ENV+148]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0135:
mov eax, dword ptr [_ENV+152]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0136:
mov eax, dword ptr [_ENV+156]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0137:
mov eax, dword ptr [_ENV+160]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0138:
mov eax, dword ptr [_ENV+164]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0139:
mov eax, dword ptr [_ENV+168]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013A:
mov eax, dword ptr [_ENV+172]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013B:
mov eax, dword ptr [_ENV+176]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013C:
mov eax, dword ptr [_ENV+180]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013D:
mov eax, dword ptr [_ENV+184]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013E:
mov eax, dword ptr [_ENV+188]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_013F:
mov eax, dword ptr [_ENV+192]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0140:
mov eax, dword ptr [_ENV+196]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0141:
mov eax, dword ptr [_ENV+200]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0142:
mov eax, dword ptr [_ENV+204]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0143:
mov eax, dword ptr [_ENV+208]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0144:
mov eax, dword ptr [_ENV+212]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0145:
mov eax, dword ptr [_ENV+216]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0146:
mov eax, dword ptr [_ENV+220]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0147:
mov eax, dword ptr [_ENV+224]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0148:
mov eax, dword ptr [_ENV+228]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0149:
mov eax, dword ptr [_ENV+232]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014A:
mov eax, dword ptr [_ENV+236]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014B:
mov eax, dword ptr [_ENV+240]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014C:
mov eax, dword ptr [_ENV+244]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014D:
mov eax, dword ptr [_ENV+248]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014E:
mov eax, dword ptr [_ENV+252]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_014F:
mov eax, dword ptr [_ENV+256]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0150:
mov eax, dword ptr [_ENV+260]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0151:
mov eax, dword ptr [_ENV+264]
mov dword ptr [ebp-4], eax
jmp .L_0123
.L_0152:
mov dword ptr [ebp-4], 0
jmp .L_0123
.L_0124:
cmp dword ptr [ebp-8], 43
ja .L_0152
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0153+eax*4]
_.L_0153:
.int .L_0126
.int .L_0127
.int .L_0128
.int .L_0129
.int .L_012A
.int .L_012B
.int .L_012C
.int .L_012D
.int .L_012E
.int .L_012F
.int .L_0130
.int .L_0131
.int .L_0132
.int .L_0133
.int .L_0134
.int .L_0135
.int .L_0136
.int .L_0137
.int .L_0138
.int .L_0139
.int .L_013B
.int .L_013C
.int .L_013A
.int .L_013D
.int .L_013E
.int .L_013F
.int .L_0140
.int .L_0141
.int .L_0142
.int .L_0143
.int .L_0144
.int .L_0145
.int .L_0146
.int .L_0147
.int .L_0148
.int .L_0149
.int .L_014A
.int .L_014B
.int .L_014C
.int .L_014D
.int .L_014E
.int .L_014F
.int .L_0150
.int .L_0151
.L_0123:
.L_0122:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCHANGEOPTION@8
_FBCHANGEOPTION@8:
push ebp
mov ebp, esp
sub esp, 4
.L_0154:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0157
.L_0159:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION@8
jmp .L_0156
.L_015A:
push dword ptr [ebp+8]
call _FBGETOPTION@4
cmp dword ptr [ebp+12], eax
je .L_015C
cmp dword ptr [_PARSER+100], 0
je .L_015E
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0160
push 0
push 0
push 61
call _ERRREPORT@12
jmp .L_015F
.L_0160:
push 0
push 0
push 96
call _ERRREPORT@12
.L_015F:
jmp .L_015D
.L_015E:
cmp dword ptr [_ENV+140], 0
je .L_0162
push 0
push 1
push 0
push 30
call _ERRREPORTWARN@16
jmp .L_0161
.L_0162:
mov eax, dword ptr [_ENV+1120]
and eax, 1
test eax, eax
jne .L_0164
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _FBSETOPTION@8
push 1
call _FBRESTARTBEGINREQUEST@4
push 1
call _FBRESTARTACCEPTREQUEST@4
call _ERRHIDEFURTHERERRORS@0
jmp .L_0163
.L_0164:
push 0
push 1
push 0
push 31
call _ERRREPORTWARN@16
.L_0163:
.L_0161:
.L_015D:
.L_015C:
.L_015B:
jmp .L_0156
.L_0165:
push 0
push 0
push 21
call _ERRREPORT@12
jmp .L_0156
.L_0157:
mov eax, dword ptr [ebp-4]
add eax, 4294967286
cmp eax, 24
ja .L_0165
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0166+eax*4-40]
_.L_0166:
.int .L_015A
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0165
.int .L_0159
.L_0156:
.L_0155:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBISCROSSCOMP@0
_FBISCROSSCOMP@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0167:
mov eax, dword ptr [_ENV+108]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0168:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETTARGETID@0
_FBGETTARGETID@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0179:
push 0
push -1
push dword ptr [_ENV+112]
push dword ptr [_ENV+108]
call _HGETTARGETID@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_017A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTID@0
_FBGETHOSTID@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017B:
push 0
push -1
push 3
push 0
call _HGETTARGETID@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_017C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYOS@4
_FBIDENTIFYOS@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_017D:
mov dword ptr [ebp-8], 0
.L_0182:
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [_TARGETINFO+eax]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0184
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_017E
.L_0184:
.L_0183:
.L_0180:
inc dword ptr [ebp-8]
.L_017F:
cmp dword ptr [ebp-8], 11
jle .L_0182
.L_0181:
mov dword ptr [ebp-4], -1
.L_017E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBIDENTIFYCPUFAMILY@4
_FBIDENTIFYCPUFAMILY@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0185:
mov dword ptr [ebp-8], 0
.L_018A:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_018C
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0186
.L_018C:
.L_018B:
.L_0188:
inc dword ptr [ebp-8]
.L_0187:
cmp dword ptr [ebp-8], 7
jle .L_018A
.L_0189:
mov dword ptr [ebp-4], -1
.L_0186:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCPUTYPEFROMCPUFAMILYID@4
_FBCPUTYPEFROMCPUFAMILYID@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_018D:
push dword ptr [ebp+8]
call _FBIDENTIFYCPUFAMILY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jl .L_0190
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CPUFAMILYINFO+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_018E
.L_0190:
.L_018F:
mov dword ptr [ebp-4], -1
.L_018E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETGCCARCH@0
_FBGETGCCARCH@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0191:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0194
mov ebx, dword ptr [_ENV+112]
imul ebx, 20
mov eax, dword ptr [_CPUTYPEINFO+ebx+4]
mov dword ptr [ebp-8], eax
.L_0194:
.L_0193:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0192:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETFBCARCH@0
_FBGETFBCARCH@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0195:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+4]
mov dword ptr [ebp-4], ebx
.L_0196:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIS64BIT@0
_FBIS64BIT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0197:
call _FBGETBITS@0
cmp eax, 64
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0198:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETBITS@0
_FBGETBITS@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019A:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+12]
mov dword ptr [ebp-4], ebx
.L_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETHOSTBITS@0
_FBGETHOSTBITS@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_019C:
mov eax, dword ptr [_CPUTYPEINFO+72]
mov dword ptr [ebp-4], eax
.L_019D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETCPUFAMILY@0
_FBGETCPUFAMILY@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019E:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-4], ebx
.L_019F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBISHOSTBIGENDIAN@0
_FBISHOSTBIGENDIAN@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01A0:
mov eax, dword ptr [_ENV+112]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+16]
mov dword ptr [ebp-4], ebx
.L_01A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBIDENTIFYFBCARCH@4
_FBIDENTIFYFBCARCH@4:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_01A2:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 7
push offset _Lt_01A7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01A6
.L_01A8:
mov dword ptr [ebp-4], 3
call _fb_CpuDetect
shr eax, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_01AB
.L_01AC:
mov dword ptr [ebp-4], 0
jmp .L_01A9
.L_01AB:
cmp dword ptr [ebp-20], 4
jne .L_01AD
.L_01AE:
mov dword ptr [ebp-4], 1
jmp .L_01A9
.L_01AD:
cmp dword ptr [ebp-20], 5
jne .L_01AF
.L_01B0:
mov dword ptr [ebp-4], 2
jmp .L_01A9
.L_01AF:
cmp dword ptr [ebp-20], 6
jne .L_01B1
.L_01B2:
mov dword ptr [ebp-4], 3
.L_01B1:
.L_01A9:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_01A3
jmp .L_01A4
.L_01A6:
push 3
push offset _Lt_01B4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01B3
.L_01B5:
mov dword ptr [ebp-4], 3
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_01A3
jmp .L_01A4
.L_01B3:
push 3
push offset _Lt_01B7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01B6
.L_01B8:
mov dword ptr [ebp-4], 13
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_01A3
.L_01B6:
.L_01A4:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-8], 0
.L_01BC:
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [_CPUTYPEINFO+eax+4]
call _fb_StrCompare@16
test eax, eax
jne .L_01BE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A3
.L_01BE:
.L_01BD:
.L_01BA:
inc dword ptr [ebp-8]
.L_01B9:
cmp dword ptr [ebp-8], 20
jle .L_01BC
.L_01BB:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 7
push offset _Lt_007D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_01C3
.L_01C4:
push 6
push offset _Lt_01C2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01C1
.L_01C3:
mov dword ptr [ebp-4], 13
jmp .L_01BF
.L_01C1:
mov dword ptr [ebp-4], -1
.L_01C5:
.L_01BF:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_01A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBTARGETSUPPORTSELF@0
_FBTARGETSUPPORTSELF@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01C6:
mov eax, dword ptr [_ENV+284]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01C7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSCOFF@0
_FBTARGETSUPPORTSCOFF@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01C9:
mov eax, dword ptr [_ENV+284]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBTARGETSUPPORTSMACHO@0
_FBTARGETSUPPORTSMACHO@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01CC:
mov eax, dword ptr [_ENV+284]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01CD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETENTRYPOINT@0
_FBGETENTRYPOINT@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01CF:
push 128
lea eax, [_ENV+904]
push eax
call _fb_StrLen@8
test eax, eax
je .L_01D2
push 0
push 128
lea eax, [_ENV+904]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01D0
.L_01D2:
.L_01D1:
cmp dword ptr [_ENV+108], 4
jne .L_01D4
push 0
push 12
push offset _Lt_01D5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_01D3
.L_01D4:
push 0
push 5
push offset _Lt_01D6
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_01D3:
.L_01D0:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBGETMODULEENTRY@0
_FBGETMODULEENTRY@0:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D7:
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 261
lea eax, [_ENV+584]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _HSTRIPPATH@4
push eax
push -1
push offset _Lt_01DC
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [_Lt_01DC]
call _HCLEARNAME@4
push 0
push 10
push offset _Lt_01DB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_01DC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01D8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DC,12

.section .text
.balign 16

.globl _FBGETINPUTFILEPARENTDIR@0
_FBGETINPUTFILEPARENTDIR@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01DD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV+304]
push eax
call _PATHISABSOLUTE@4
test eax, eax
jne .L_01E0
push 0
push -1
call _HCURDIR@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_001A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_01E0:
.L_01DF:
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 261
lea eax, [_ENV+304]
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_01DE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBADDLIB@4
_FBADDLIB@4:
push ebp
mov ebp, esp
sub esp, 12
.L_01E4:
push 7
push offset _Lt_01E6
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_01E8
push -1
push 36
call _FBSETOPTION@8
jmp .L_01E5
.L_01E8:
.L_01E7:
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
lea eax, [_ENV+1132]
push eax
call _STRSETADD@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01E5:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBADDLIBPATH@4
_FBADDLIBPATH@4:
push ebp
mov ebp, esp
sub esp, 24
.L_01EA:
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
lea eax, [_ENV+1176]
push eax
call _STRSETADD@12
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01EB:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCOMPILE@16
_FBCOMPILE@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0224:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign@20
push 92
lea eax, [_ENV+304]
push eax
call _HREPLACESLASH@8
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+864]
push eax
push 0
call _HADDINCFILE@12
mov dword ptr [_ENV+568], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+572], eax
push 0
push 0
push dword ptr [ebp+12]
push 261
lea eax, [_ENV+584]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+20]
mov dword ptr [_ENV+852], eax
push dword ptr [ebp+8]
call _HFILEEXISTS@4
test eax, eax
jne .L_0227
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX@20
jmp .L_0225
.L_0227:
.L_0226:
call _fb_FileFree@0
mov dword ptr [_ENV+300], eax
push 0
push dword ptr [_ENV+300]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_0229
push 0
push 1
push -1
push dword ptr [ebp+8]
push 26
call _ERRREPORTEX@20
jmp .L_0225
.L_0229:
.L_0228:
cmp dword ptr [_ENV+252], 0
je .L_022B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPCURDIR@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
push 0
call _HSHOWINCLUDE@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_022B:
.L_022A:
push dword ptr [_ENV+300]
call _HCHECKFILEFORMAT@4
mov dword ptr [_ENV+576], eax
call dword ptr [_IR+8]
test eax, eax
jne .L_022F
push 0
push 1
push -1
lea eax, [_ENV+584]
push eax
push 26
call _ERRREPORTEX@20
jmp .L_0225
.L_022F:
.L_022E:
push 1
call _FBGETOPTION@4
test eax, eax
je .L_0231
call _fb_FileFree@0
mov dword ptr [_ENV+860], eax
push 0
push dword ptr [_ENV+860]
push 0
push 0
push 3
push dword ptr [ebp+16]
call _fb_FileOpen@24
test eax, eax
je .L_0233
push 0
push 1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push 26
call _ERRREPORTEX@20
jmp .L_0225
.L_0233:
.L_0232:
jmp .L_0230
.L_0231:
mov dword ptr [_ENV+860], 0
.L_0230:
call _FBMAINBEGIN@0
call _FBPARSEPREDEFINES@0
call _FBPARSEPREINCLUDES@0
call _FBSHOULDCONTINUE@0
test eax, eax
je .L_0235
call _CPROGRAM@0
.L_0235:
.L_0234:
call _FBMAINEND@0
push 39
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0237
call _HEMITOBJINFO@0
.L_0237:
.L_0236:
call dword ptr [_IR+12]
cmp dword ptr [_ENV+860], 0
jle .L_0239
push dword ptr [_ENV+860]
call _fb_FileClose@4
test eax, eax
je .L_023A
push 0
push 0
push offset _Lt_00BC
push 1305
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_023A:
.L_0239:
.L_0238:
push dword ptr [_ENV+300]
call _fb_FileClose@4
test eax, eax
je .L_023B
push 0
push 0
push offset _Lt_00BC
push 1308
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_023B:
call _FBSHOULDCONTINUE@0
test eax, eax
je .L_023D
push dword ptr [_SYMB+98412]
call _SYMBCHECKLABELS@4
.L_023D:
.L_023C:
.L_0225:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _FBSHOULDRESTART@0
_FBSHOULDRESTART@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_023F:
mov eax, dword ptr [_ENV+1112]
and eax, 10
test eax, eax
je .L_0242
mov eax, dword ptr [_ENV+1120]
and eax, 10
test eax, eax
jne .L_0244
push 10
call _FBRESTARTACCEPTREQUEST@4
call _ERRHIDEFURTHERERRORS@0
mov dword ptr [ebp-4], -1
jmp .L_0240
.L_0244:
.L_0243:
.L_0242:
.L_0241:
mov eax, dword ptr [_ENV+1116]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0240:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSHOULDCONTINUE@0
_FBSHOULDCONTINUE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0246:
mov eax, dword ptr [_ENV+1116]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _ERRGETCOUNT@0
cmp eax, dword ptr [_ENV+196]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_0247:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBRESTARTBEGINREQUEST@4
_FBRESTARTBEGINREQUEST@4:
push ebp
mov ebp, esp
.L_024A:
mov eax, dword ptr [ebp+8]
or dword ptr [_ENV+1112], eax
.L_024B:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBRESTARTACCEPTREQUEST@4
_FBRESTARTACCEPTREQUEST@4:
push ebp
mov ebp, esp
.L_024C:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1112]
test eax, eax
je .L_024F
mov eax, dword ptr [_ENV+1112]
and eax, dword ptr [_ENV+1120]
and eax, dword ptr [ebp+8]
test eax, eax
jne .L_0251
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1112]
or dword ptr [_ENV+1116], eax
.L_0251:
.L_0250:
.L_024F:
.L_024E:
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [_ENV+1112], eax
.L_024D:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBRESTARTENDREQUEST@4
_FBRESTARTENDREQUEST@4:
push ebp
mov ebp, esp
.L_0252:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [_ENV+1116]
or dword ptr [_ENV+1120], eax
inc dword ptr [_ENV+1124]
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [_ENV+1116], eax
.L_0253:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBRESTARTGETCOUNT@0
_FBRESTARTGETCOUNT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0254:
mov eax, dword ptr [_ENV+1124]
mov dword ptr [ebp-4], eax
.L_0255:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _FBSETLIBS@8
_FBSETLIBS@8:
push ebp
mov ebp, esp
.L_0256:
push dword ptr [ebp+8]
lea eax, [_ENV+1132]
push eax
call _STRSETCOPY@8
push dword ptr [ebp+12]
lea eax, [_ENV+1176]
push eax
call _STRSETCOPY@8
.L_0257:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBGETLIBS@8
_FBGETLIBS@8:
push ebp
mov ebp, esp
.L_0258:
lea eax, [_ENV+1132]
push eax
push dword ptr [ebp+8]
call _STRSETCOPY@8
lea eax, [_ENV+1176]
push eax
push dword ptr [ebp+12]
call _STRSETCOPY@8
.L_0259:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _FBPRAGMAONCE@0
_FBPRAGMAONCE@0:
.L_025A:
push 1
push offset _Lt_0000
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrCompare@16
test eax, eax
jle .L_025D
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+888]
push eax
call _HFINDINCFILE@8
test eax, eax
jne .L_025F
lea eax, [_ENV+304]
push eax
lea eax, [_ENV+864]
push eax
lea eax, [_ENV+888]
push eax
call _HADDINCFILE@12
.L_025F:
.L_025E:
.L_025D:
.L_025C:
.L_025B:
ret
.balign 16

.globl _FBINCLUDEFILE@8
_FBINCLUDEFILE@8:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_028A:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+900], 16
jl .L_028D
push 0
push 0
push 27
call _ERRREPORT@12
call _ERRHIDEFURTHERERRORS@0
jmp .L_028B
.L_028D:
.L_028C:
push 0
push -1
lea eax, [_ENV+304]
push eax
call _HSTRIPFILENAME@4
push eax
push 260
push offset _Lt_02C6
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_02C6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_02C6
call _fb_StrAssign@20
push offset _Lt_02C6
call _HFILEEXISTS@4
test eax, eax
jne .L_0290
push dword ptr [ebp+8]
call _HFILEEXISTS@4
test eax, eax
jne .L_0292
lea eax, [_ENV+64]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-28], eax
.L_0293:
cmp dword ptr [ebp-28], 0
je .L_0294
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_001A
push -1
push dword ptr [ebp-28]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_02C6
call _fb_StrAssign@20
push offset _Lt_02C6
call _HFILEEXISTS@4
test eax, eax
je .L_0298
jmp .L_0294
.L_0298:
.L_0297:
push dword ptr [ebp-28]
call _LISTGETNEXT@4
mov dword ptr [ebp-28], eax
jmp .L_0293
.L_0294:
cmp dword ptr [ebp-28], 0
jne .L_029A
cmp dword ptr [_ENV+252], 0
je .L_029C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 29
push offset _Lt_029D
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
mov eax, dword ptr [_ENV+900]
inc eax
push eax
call _HSHOWINCLUDE@8
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.L_029C:
.L_029B:
push 0
push 1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset _Lt_02A0
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_02A0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-64]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .L_028B
.L_029A:
.L_0299:
jmp .L_0291
.L_0292:
push 0
push 0
push dword ptr [ebp+8]
push 260
push offset _Lt_02C6
call _fb_StrAssign@20
.L_0291:
.L_0290:
.L_028F:
mov eax, offset _Lt_02C6
mov dword ptr [ebp-20], eax
lea eax, [ebp-20]
push eax
call _IS_ROOTPATH@4
test eax, eax
jne .L_02A6
push 0
push -1
push 260
push offset _Lt_02C6
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 260
push offset _Lt_02C6
call _fb_StrAssign@20
.L_02A6:
.L_02A5:
mov eax, offset _Lt_02C6
mov dword ptr [ebp-24], eax
lea eax, [ebp-24]
push eax
call _IS_ROOTPATH@4
test eax, eax
jne .L_02AB
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A0
push -1
push 260
push offset _Lt_02C6
push 2
push offset _Lt_02A0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .L_028B
.L_02AB:
.L_02AA:
push offset _Lt_02C6
call _SOLVE_PATH@4
test eax, eax
jne .L_02B0
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A0
push -1
push 260
push offset _Lt_02C6
push 2
push offset _Lt_02A0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .L_028B
.L_02B0:
.L_02AF:
push 92
push offset _Lt_02C6
call _HREPLACESLASH@8
cmp dword ptr [ebp+12], 0
je .L_02B5
push offset _Lt_02C6
lea eax, [_ENV+876]
push eax
call _HFINDINCFILE@8
test eax, eax
je .L_02B7
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C6
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_028B
.L_02B7:
.L_02B6:
.L_02B5:
.L_02B4:
push offset _Lt_02C6
lea eax, [_ENV+888]
push eax
call _HFINDINCFILE@8
test eax, eax
je .L_02BA
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C6
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HONSKIPPEDFILE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_028B
.L_02BA:
.L_02B9:
push offset _Lt_02C6
lea eax, [_ENV+864]
push eax
lea eax, [_ENV+876]
push eax
call _HADDINCFILE@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_ENV+900]
imul eax, 280
add eax, dword ptr [_INFILETB]
lea ebx, [eax]
lea eax, [_ENV+300]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 70
rep movsd
pop esi
pop edi
inc dword ptr [_ENV+900]
push 0
push 260
push offset _Lt_02C6
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-4]
mov dword ptr [_ENV+568], eax
cmp dword ptr [_ENV+252], 0
je .L_02BD
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset _Lt_02C6
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _PATHSTRIPCURDIR@4
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
push dword ptr [_ENV+900]
call _HSHOWINCLUDE@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_02BD:
.L_02BC:
call _fb_FileFree@0
mov dword ptr [_ENV+300], eax
push 0
push dword ptr [_ENV+300]
push 0
push 1
push 0
push offset _Lt_02C6
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_02C1
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_02A0
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset _Lt_02A0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 23
call _ERRREPORTEX@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
call _ERRHIDEFURTHERERRORS@0
jmp .L_028B
.L_02C1:
.L_02C0:
push dword ptr [_ENV+300]
call _HCHECKFILEFORMAT@4
mov dword ptr [_ENV+576], eax
call _LEXPUSHCTX@0
push 0
push -1
call _LEXINIT@8
call _CPROGRAM@0
call _LEXPOPCTX@0
push dword ptr [_ENV+300]
call _fb_FileClose@4
test eax, eax
je .L_02C5
push 0
push 0
push offset _Lt_00BC
push 1655
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02C5:
dec dword ptr [_ENV+900]
lea eax, [_ENV+300]
mov ebx, dword ptr [_ENV+900]
imul ebx, 280
add ebx, dword ptr [_INFILETB]
lea ecx, [ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 70
rep movsd
pop esi
pop edi
pop ecx
.L_028B:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_02C6,260

.section .text
.balign 16

.globl _FBOVERRIDEFILENAME@4
_FBOVERRIDEFILENAME@4:
push ebp
mov ebp, esp
.L_02C7:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
lea eax, [_ENV+864]
push eax
push 0
call _HADDINCFILE@12
mov dword ptr [_ENV+568], eax
.L_02C8:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETLANGID@4
_FBGETLANGID@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_02C9:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 3
push offset _Lt_006A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_02CD
.L_02CE:
mov dword ptr [ebp-4], 0
jmp .L_02CB
.L_02CD:
push 11
push offset _Lt_006B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_02CF
.L_02D0:
mov dword ptr [ebp-4], 1
jmp .L_02CB
.L_02CF:
push 7
push offset _Lt_006C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_02D1
.L_02D2:
mov dword ptr [ebp-4], 2
jmp .L_02CB
.L_02D1:
push 3
push offset _Lt_006D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_02D3
.L_02D4:
mov dword ptr [ebp-4], 3
jmp .L_02CB
.L_02D3:
mov dword ptr [ebp-4], -1
.L_02D5:
.L_02CB:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_02CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBGETBACKENDVALISTTYPE@0
_FBGETBACKENDVALISTTYPE@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_02D6:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_02DA
.L_02DB:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02DE
.L_02DF:
mov dword ptr [ebp-8], 2
jmp .L_02DC
.L_02DE:
cmp dword ptr [ebp-16], 1
jne .L_02E0
.L_02E1:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_02E4
.L_02E5:
mov dword ptr [ebp-8], 2
jmp .L_02E2
.L_02E4:
mov dword ptr [ebp-8], 3
.L_02E6:
.L_02E2:
jmp .L_02DC
.L_02E0:
cmp dword ptr [ebp-16], 2
jne .L_02E7
.L_02E8:
mov dword ptr [ebp-8], 5
jmp .L_02DC
.L_02E7:
cmp dword ptr [ebp-16], 3
jne .L_02E9
.L_02EA:
mov dword ptr [ebp-8], 4
jmp .L_02DC
.L_02E9:
cmp dword ptr [ebp-16], 4
jne .L_02EB
.L_02EC:
mov dword ptr [ebp-8], 2
jmp .L_02DC
.L_02EB:
cmp dword ptr [ebp-16], 5
je .L_02EE
.L_02EF:
cmp dword ptr [ebp-16], 6
jne .L_02ED
.L_02EE:
mov dword ptr [ebp-8], 2
jmp .L_02DC
.L_02ED:
mov dword ptr [ebp-8], 2
.L_02F0:
.L_02DC:
jmp .L_02D8
.L_02DA:
cmp dword ptr [ebp-12], 0
jne .L_02F1
.L_02F2:
mov dword ptr [ebp-8], 1
jmp .L_02D8
.L_02F1:
cmp dword ptr [ebp-12], 2
jne .L_02F3
.L_02F4:
mov dword ptr [ebp-8], 1
jmp .L_02D8
.L_02F3:
cmp dword ptr [ebp-12], 3
jne .L_02F5
.L_02F6:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02F9
.L_02FA:
mov dword ptr [ebp-8], 2
jmp .L_02F7
.L_02F9:
mov dword ptr [ebp-8], 3
.L_02FB:
.L_02F7:
jmp .L_02D8
.L_02F5:
mov dword ptr [ebp-8], 1
.L_02FC:
.L_02D8:
cmp dword ptr [ebp-8], 2
jne .L_02FE
push 29
call _FBGETOPTION@4
test eax, eax
je .L_0300
mov dword ptr [ebp-8], 1
.L_0300:
.L_02FF:
.L_02FE:
.L_02FD:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__fb:
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
_HFINDINCFILE@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009B:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
push offset _Lt_0301
call _fb_StrAssign@20
push dword ptr [_Lt_0301]
push dword ptr [ebp+8]
call _HASHLOOKUP@8
mov dword ptr [ebp-4], eax
.L_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0301,12

.section .text
.balign 16
_HADDINCFILE@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009D:
push 0
push dword ptr [ebp+16]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov dword ptr [_Lt_0302], eax
push dword ptr [_Lt_0302]
push dword ptr [ebp+16]
call _HUCASE@8
push dword ptr [_Lt_0302]
call _HASHHASH@4
mov dword ptr [_Lt_0303], eax
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0302]
push dword ptr [ebp+12]
call _HASHLOOKUPEX@12
mov dword ptr [_Lt_0304], eax
cmp dword ptr [_Lt_0304], 0
jne .L_00A0
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0302]
push dword ptr [_Lt_0302]
push dword ptr [ebp+12]
call _HASHADD@16
jmp .L_009F
.L_00A0:
push dword ptr [_Lt_0302]
call _free
add esp, 4
mov eax, dword ptr [_Lt_0304]
mov dword ptr [_Lt_0302], eax
.L_009F:
cmp dword ptr [ebp+8], 0
je .L_00A2
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0302]
push dword ptr [ebp+8]
call _HASHLOOKUPEX@12
mov dword ptr [_Lt_0304], eax
cmp dword ptr [_Lt_0304], 0
jne .L_00A4
push dword ptr [_Lt_0303]
push dword ptr [_Lt_0302]
push dword ptr [_Lt_0302]
push dword ptr [ebp+8]
call _HASHADD@16
.L_00A4:
.L_00A3:
.L_00A2:
.L_00A1:
mov eax, dword ptr [_Lt_0302]
mov dword ptr [ebp-4], eax
.L_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0302,4
.balign 4
	.lcomm	_Lt_0304,4
.balign 4
	.lcomm	_Lt_0303,4

.section .text
.balign 16
_HUPDATELANGOPTIONS@0:
push ebx
.L_00D2:
mov eax, dword ptr [_ENV+136]
mov ebx, dword ptr [_LANGTB+eax*8+4]
mov dword ptr [_ENV+1040], ebx
.L_00D3:
pop ebx
ret
.balign 16
_HUPDATETARGETOPTIONS@0:
push ebx
.L_00D4:
lea eax, [_ENV+268]
mov ebx, dword ptr [_ENV+108]
imul ebx, 20
lea ecx, [_TARGETINFO+ebx]
push ecx
push edi
push esi
mov edi, eax
mov esi, ecx
mov ecx, 5
rep movsd
pop esi
pop edi
pop ecx
cmp dword ptr [_ENV+264], 0
je .L_00D7
or dword ptr [_ENV+284], 32
.L_00D7:
.L_00D6:
.L_00D5:
pop ebx
ret
.balign 16
_HGETTARGETID@8:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_016A:
mov eax, dword ptr [ebp+12]
imul eax, 20
mov ebx, dword ptr [_CPUTYPEINFO+eax+8]
mov dword ptr [ebp-16], ebx
push 0
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 20
push dword ptr [_TARGETINFO+ebx]
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrInit@20
cmp dword ptr [ebp+8], 0
je .L_016E
.L_016F:
cmp dword ptr [ebp+8], 3
je .L_016E
.L_0170:
cmp dword ptr [ebp+8], 4
jne .L_016D
.L_016E:
cmp dword ptr [ebp-16], 0
jne .L_0172
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit@20
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete@4
jmp .L_016B
.L_0172:
.L_0171:
.L_016D:
.L_016C:
mov ebx, dword ptr [ebp+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0174
push 0
push 6
push offset _Lt_0175
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_016B
.L_0174:
.L_0173:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_CPUFAMILYINFO+eax*8]
push -1
push 2
push offset _Lt_0176
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_016B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_FBPARSEPREDEFINES@0:
push ebp
mov ebp, esp
sub esp, 32
.L_01EE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [_ENV]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-28], eax
.L_01F0:
cmp dword ptr [ebp-28], 0
je .L_01F1
push 1
push offset _Lt_01F2
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
push 1
call _fb_StrInstr@12
dec eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jge .L_01F4
push -1
push dword ptr [ebp-28]
call _fb_StrLen@8
mov dword ptr [ebp-32], eax
.L_01F4:
.L_01F3:
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [ebp-28]
call _fb_StrLen@8
sub eax, dword ptr [ebp-32]
dec eax
push eax
push dword ptr [ebp-28]
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_01F6
push 0
push 2
push offset _Lt_0004
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_01F6:
.L_01F5:
push 0
push 0
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _SYMBADDDEFINE@24
push dword ptr [ebp-28]
call _LISTGETNEXT@4
mov dword ptr [ebp-28], eax
jmp .L_01F0
.L_01F1:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01EF:
mov esp, ebp
pop ebp
ret
.balign 16
_FBPARSEPREINCLUDES@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F7:
lea eax, [_ENV+32]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_01F9:
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBSHOULDCONTINUE@0
and ebx, eax
je .L_01FA
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _FBINCLUDEFILE@8
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_01F9
.L_01FA:
.L_01F8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HAPPENDFBCTINF@4:
push ebp
mov ebp, esp
.L_01FB:
cmp dword ptr [_ENV+1220], 0
jne .L_01FE
mov dword ptr [_ENV+1220], -1
call dword ptr [_IR+212]
.L_01FE:
.L_01FD:
push dword ptr [ebp+8]
call dword ptr [_IR+216]
.L_01FC:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 16
.L_01FF:
lea eax, [_ENV+1132]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0201:
cmp dword ptr [ebp-4], 0
je .L_0202
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0204
push 0
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HAPPENDFBCTINF@4
.L_0204:
.L_0203:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0201
.L_0202:
lea eax, [_ENV+1176]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0205:
cmp dword ptr [ebp-4], 0
je .L_0206
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0208
push 1
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HESCAPE@4
push eax
call _HAPPENDFBCTINF@4
.L_0208:
.L_0207:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0205
.L_0206:
cmp dword ptr [_ENV+232], 0
je .L_020A
push 2
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
.L_020A:
.L_0209:
cmp dword ptr [_ENV+236], 0
je .L_020C
push 3
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
.L_020C:
.L_020B:
cmp dword ptr [_ENV+136], 0
je .L_020E
push 4
call _OBJINFOENCODE@4
push eax
call _HAPPENDFBCTINF@4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-16]
call _HAPPENDFBCTINF@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_020E:
.L_020D:
cmp dword ptr [_ENV+1220], 0
je .L_0211
call dword ptr [_IR+220]
.L_0211:
.L_0210:
.L_0200:
mov esp, ebp
pop ebp
ret
.balign 16
_HSHOWINCLUDE@8:
push ebp
mov ebp, esp
sub esp, 32
.L_0212:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0215
.L_0218:
push 0
push 5
push offset _Lt_0219
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0216:
inc dword ptr [ebp-28]
.L_0215:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .L_0218
.L_0217:
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0213:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HONSKIPPEDFILE@4:
push ebp
mov ebp, esp
sub esp, 36
.L_021B:
cmp dword ptr [_ENV+252], 0
je .L_021E
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0220
push -1
push -1
push dword ptr [ebp+8]
call _PATHSTRIPCURDIR@4
push eax
push 2
push offset _Lt_021F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
mov eax, dword ptr [_ENV+900]
inc eax
push eax
call _HSHOWINCLUDE@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_021E:
.L_021D:
.L_021C:
mov esp, ebp
pop ebp
ret 4
.balign 16
_IS_ROOTPATH@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0260:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0263
jmp .L_0261
.L_0263:
.L_0262:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .L_0266
mov dword ptr [ebp-4], -1
.L_0266:
.L_0265:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
movzx eax, byte ptr [ecx]
cmp eax, 92
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0269
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_026B
mov dword ptr [ebp-4], -1
jmp .L_026A
.L_026B:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push -1
push 2
push offset _Lt_0264
push -1
push 1
call _FBGETINPUTFILEPARENTDIR@0
push eax
call _fb_LEFT@8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
.L_026A:
.L_0269:
.L_0268:
.L_0261:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_GET_ROOTPATH_LEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_026E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
jne .L_0271
jmp .L_026F
.L_0271:
.L_0270:
mov dword ptr [ebp-4], 1
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 58
jne .L_0273
mov dword ptr [ebp-4], 3
.L_0273:
.L_0272:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx]
cmp ecx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0275
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+1]
cmp ecx, 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0277
mov dword ptr [ebp-4], 2
.L_0277:
.L_0276:
.L_0275:
.L_0274:
.L_026F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SOLVE_PATH@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0278:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _GET_ROOTPATH_LEN@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [_Lt_0310+eax*4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-36], eax
jmp .L_027C
.L_027F:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 47
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-32], 92
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0281
cmp dword ptr [ebp-16], 0
jne .L_0283
jmp .L_0282
.L_0283:
mov eax, dword ptr [ebp-20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0284
dec dword ptr [ebp-28]
jmp .L_0282
.L_0284:
mov ebx, dword ptr [ebp-20]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0285
cmp dword ptr [ebp-8], 0
je .L_0287
dec dword ptr [ebp-8]
.L_0287:
.L_0286:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_Lt_0310+eax*4]
mov dword ptr [ebp-28], ebx
jmp .L_0282
.L_0285:
mov bl, byte ptr [ebp-32]
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
inc dword ptr [ebp-28]
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [_Lt_0310+ebx*4], eax
.L_0282:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .L_0280
.L_0281:
cmp dword ptr [ebp-32], 46
jne .L_0289
inc dword ptr [ebp-20]
.L_0289:
.L_0288:
inc dword ptr [ebp-16]
mov al, byte ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx], al
inc dword ptr [ebp-28]
.L_0280:
.L_027D:
inc dword ptr [ebp-24]
.L_027C:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-24], eax
jle .L_027F
.L_027E:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], -1
.L_0279:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0310,524

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.globl _ENV
.balign 4
	.lcomm	_ENV,1224

.section .data
.balign 4
_INFILETB:
.long 0
.long 0
.int 0
.int 280
.int 0
.int 8
.skip 96,0
.balign 4
_LANGTB:
.int _Lt_006A
.int 536873471
.int _Lt_006B
.int 738066591
.int _Lt_006C
.int 738132125
.int _Lt_006D
.int 738131968
.balign 4
_Lt_006A:	.ascii	"fb\0"
.balign 4
_Lt_006B:	.ascii	"deprecated\0"
.balign 4
_Lt_006C:	.ascii	"fblite\0"
.balign 4
_Lt_006D:	.ascii	"qb\0"
.balign 4
_TARGETINFO:
.int _Lt_006F
.int 6
.int 1
.int 1
.int 276
.int _Lt_0070
.int 6
.int 1
.int 1
.int 277
.int _Lt_0071
.int 12
.int 3
.int 2
.int 201
.int _Lt_0072
.int 3
.int 3
.int 2
.int 264
.int _Lt_0073
.int 12
.int 1
.int 1
.int 272
.int _Lt_0074
.int 12
.int 3
.int 2
.int 185
.int _Lt_0075
.int 12
.int 3
.int 2
.int 153
.int _Lt_0076
.int 12
.int 3
.int 2
.int 153
.int _Lt_0077
.int 12
.int 3
.int 2
.int 185
.int _Lt_0078
.int 12
.int 3
.int 2
.int 601
.int _Lt_0079
.int 12
.int 3
.int 2
.int 185
.int _Lt_007A
.int 6
.int 3
.int 2
.int 25
.balign 4
_Lt_006F:	.ascii	"win32\0"
.balign 4
_Lt_0070:	.ascii	"cygwin\0"
.balign 4
_Lt_0071:	.ascii	"linux\0"
.balign 4
_Lt_0072:	.ascii	"dos\0"
.balign 4
_Lt_0073:	.ascii	"xbox\0"
.balign 4
_Lt_0074:	.ascii	"freebsd\0"
.balign 4
_Lt_0075:	.ascii	"dragonfly\0"
.balign 4
_Lt_0076:	.ascii	"solaris\0"
.balign 4
_Lt_0077:	.ascii	"openbsd\0"
.balign 4
_Lt_0078:	.ascii	"darwin\0"
.balign 4
_Lt_0079:	.ascii	"netbsd\0"
.balign 4
_Lt_007A:	.ascii	"js\0"
.balign 4
_CPUFAMILYINFO:
.int _Lt_007C
.int 3
.int _Lt_007D
.int 13
.int _Lt_007E
.int 15
.int _Lt_007F
.int 16
.int _Lt_0080
.int 17
.int _Lt_0081
.int 18
.int _Lt_0082
.int 19
.int _Lt_0083
.int 20
.balign 4
_Lt_007C:	.ascii	"x86\0"
.balign 4
_Lt_007D:	.ascii	"x86_64\0"
.balign 4
_Lt_007E:	.ascii	"arm\0"
.balign 4
_Lt_007F:	.ascii	"aarch64\0"
.balign 4
_Lt_0080:	.ascii	"powerpc\0"
.balign 4
_Lt_0081:	.ascii	"powerpc64\0"
.balign 4
_Lt_0082:	.ascii	"powerpc64le\0"
.balign 4
_Lt_0083:	.ascii	"asmjs\0"
.balign 4
_CPUTYPEINFO:
.int _Lt_0085
.int _Lt_0086
.int 0
.int 32
.int 0
.int _Lt_0087
.int _Lt_0088
.int 0
.int 32
.int 0
.int _Lt_0089
.int _Lt_008A
.int 0
.int 32
.int 0
.int _Lt_008B
.int _Lt_008C
.int 0
.int 32
.int 0
.long 0
.int _Lt_008D
.int 0
.int 32
.int 0
.long 0
.int _Lt_008E
.int 0
.int 32
.int 0
.long 0
.int _Lt_008F
.int 0
.int 32
.int 0
.long 0
.int _Lt_0090
.int 0
.int 32
.int 0
.long 0
.int _Lt_0091
.int 0
.int 32
.int 0
.long 0
.int _Lt_0092
.int 0
.int 32
.int 0
.long 0
.int _Lt_0093
.int 0
.int 32
.int 0
.long 0
.int _Lt_0094
.int 0
.int 32
.int 0
.int _Lt_0095
.int _Lt_0096
.int 0
.int 32
.int 0
.long 0
.int _Lt_0097
.int 1
.int 64
.int 0
.long 0
.int _Lt_0098
.int 2
.int 32
.int 0
.long 0
.int _Lt_0099
.int 2
.int 32
.int 0
.int _Lt_009A
.int _Lt_007F
.int 3
.int 64
.int 0
.long 0
.int _Lt_0080
.int 4
.int 32
.int -1
.long 0
.int _Lt_0081
.int 5
.int 64
.int -1
.long 0
.int _Lt_0082
.int 6
.int 64
.int 0
.long 0
.int _Lt_0083
.int 7
.int 32
.int 0
.balign 4
_Lt_0085:	.ascii	"i386\0"
.balign 4
_Lt_0086:	.ascii	"386\0"
.balign 4
_Lt_0087:	.ascii	"i486\0"
.balign 4
_Lt_0088:	.ascii	"486\0"
.balign 4
_Lt_0089:	.ascii	"i586\0"
.balign 4
_Lt_008A:	.ascii	"586\0"
.balign 4
_Lt_008B:	.ascii	"i686\0"
.balign 4
_Lt_008C:	.ascii	"686\0"
.balign 4
_Lt_008D:	.ascii	"athlon\0"
.balign 4
_Lt_008E:	.ascii	"athlon-xp\0"
.balign 4
_Lt_008F:	.ascii	"athlon-fx\0"
.balign 4
_Lt_0090:	.ascii	"k8-sse3\0"
.balign 4
_Lt_0091:	.ascii	"pentium-mmx\0"
.balign 4
_Lt_0092:	.ascii	"pentium2\0"
.balign 4
_Lt_0093:	.ascii	"pentium3\0"
.balign 4
_Lt_0094:	.ascii	"pentium4\0"
.balign 4
_Lt_0095:	.ascii	"prescott\0"
.balign 4
_Lt_0096:	.ascii	"pentium4-sse3\0"
.balign 4
_Lt_0097:	.ascii	"x86-64\0"
.balign 4
_Lt_0098:	.ascii	"armv6\0"
.balign 4
_Lt_0099:	.ascii	"armv7-a\0"
.balign 4
_Lt_009A:	.ascii	"armv8-a\0"
.balign 4
_Lt_00AF:	.ascii	"gas\0"
.balign 4
_Lt_00B2:	.ascii	"gcc\0"
.balign 4
_Lt_00B5:	.ascii	"llvm\0"
.balign 4
_Lt_00B8:	.ascii	"gas64\0"
.balign 4
_Lt_00BC:	.ascii	"src/compiler/fb.bas\0"
.balign 4
_Lt_0175:	.ascii	"win64\0"
.balign 4
_Lt_0176:	.ascii	"-\0"
.balign 4
_Lt_01A7:	.ascii	"native\0"
.balign 4
_Lt_01B4:	.ascii	"32\0"
.balign 4
_Lt_01B7:	.ascii	"64\0"
.balign 4
_Lt_01C2:	.ascii	"amd64\0"
.balign 4
_Lt_01D5:	.ascii	"XBoxStartup\0"
.balign 4
_Lt_01D6:	.ascii	"main\0"
.balign 4
_Lt_01DB:	.ascii	"fb_ctor__\0"
.balign 4
_Lt_01E6:	.ascii	"fbgfx?\0"
.balign 4
_Lt_01F2:	.ascii	"=\0"
.balign 4
_Lt_0219:	.ascii	" |  \0"
.balign 4
_Lt_021F:	.ascii	"(\0"
.balign 4
_Lt_0220:	.ascii	")\0"
.balign 4
_Lt_0264:	.ascii	":\0"
.balign 4
_Lt_029D:	.ascii	" (not found in include dirs)\0"
.balign 4
_Lt_02A0:	.ascii	"\"\0"

.section .ctors
.int _fb_ctor__fb
