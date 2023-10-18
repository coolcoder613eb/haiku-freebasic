	.intel_syntax noprefix

.section .text
.balign 16

.globl FBGETLANGOPTIONS
FBGETLANGOPTIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [LANGTB+eax*8+4]
mov dword ptr [ebp-4], ebx
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLANGNAME
FBGETLANGNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A6:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [LANGTB+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00A7:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBACKENDNAME
FBGETBACKENDNAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A8:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00AC
.L_00AD:
push 0
push 4
push offset Lt_00AE
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00AA
.L_00AC:
cmp dword ptr [ebp-16], 1
jne .L_00AF
.L_00B0:
push 0
push 4
push offset Lt_00B1
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00AA
.L_00AF:
cmp dword ptr [ebp-16], 2
jne .L_00B2
.L_00B3:
push 0
push 5
push offset Lt_00B4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00AA
.L_00B2:
cmp dword ptr [ebp-16], 3
jne .L_00B5
.L_00B6:
push 0
push 6
push offset Lt_00B7
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00B5:
.L_00AA:
.L_00A9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBINIT
FBINIT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B8:
push 5
lea eax, [ENV+1132]
push eax
call STRSETINIT
add esp, 8
push 5
lea eax, [ENV+1176]
push eax
call STRSETINIT
add esp, 8
mov dword ptr [ENV+1112], 0
mov dword ptr [ENV+1116], 0
and dword ptr [ENV+1120], -6
push 15
push 0
push 1
push 0
push -1
push 280
push offset INFILETB
call fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_00BA
push 0
push 0
push offset Lt_00BB
push 402
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00BA:
mov dword ptr [ENV+900], 0
mov dword ptr [ENV+1032], 0
push 0
push 0
push dword ptr [ebp+12]
push 128
lea eax, [ENV+904]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [ENV+1108], eax
mov eax, dword ptr [ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ENV+1084], eax
cmp dword ptr [ENV+136], 3
je .L_00BD
mov dword ptr [ENV+1044], 8
mov dword ptr [ENV+1048], 8
mov dword ptr [ENV+1052], 9
mov dword ptr [ENV+1056], 8
mov dword ptr [ENV+1060], 9
call FBIS64BIT
test eax, eax
je .L_00BF
mov dword ptr [ENV+1064], 8
mov dword ptr [ENV+1068], 9
jmp .L_00BE
.L_00BF:
mov dword ptr [ENV+1064], 13
mov dword ptr [ENV+1068], 14
.L_00BE:
mov dword ptr [ENV+1072], 16
jmp .L_00BC
.L_00BD:
mov dword ptr [ENV+1044], 5
mov dword ptr [ENV+1048], 5
mov dword ptr [ENV+1052], 6
mov dword ptr [ENV+1056], 11
mov dword ptr [ENV+1060], 12
mov dword ptr [ENV+1064], 13
mov dword ptr [ENV+1068], 14
mov dword ptr [ENV+1072], 15
.L_00BC:
mov dword ptr [ENV+1080], 2
mov dword ptr [ENV+1088], -1
mov dword ptr [ENV+1092], 0
mov dword ptr [ENV+1096], 0
mov dword ptr [ENV+1076], 0
mov eax, dword ptr [ENV+136]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ENV+1100], eax
mov dword ptr [ENV+1220], 0
mov dword ptr [ENV+292], 0
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_00C3
.L_00C4:
cmp dword ptr [ebp-8], 4
je .L_00C3
.L_00C5:
cmp dword ptr [ebp-8], 9
jne .L_00C2
.L_00C3:
mov dword ptr [ENV+292], -1
jmp .L_00C0
.L_00C2:
cmp dword ptr [ebp-8], 1
je .L_00C7
.L_00C8:
cmp dword ptr [ebp-8], 0
jne .L_00C6
.L_00C7:
call FBIS64BIT
not eax
mov dword ptr [ENV+292], eax
.L_00C6:
.L_00C0:
mov dword ptr [ENV+296], 0
call PARSERSETCTX
push dword ptr [ebp+8]
call SYMBINIT
add esp, 4
call ERRINIT
call ASTINIT
call IRINIT
mov eax, dword ptr [ENV+272]
and eax, 480
je .L_00C9
mov dword ptr [ebp-4], 24
jmp .L_00CB
.L_00C9:
mov eax, dword ptr [ENV+272]
and eax, 31
mov dword ptr [ebp-4], eax
.L_00CB:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ENV+288], ebx
push 0
push 256
lea ebx, [ENV+864]
push ebx
call HASHINIT
add esp, 12
push 0
push 256
lea ebx, [ENV+876]
push ebx
call HASHINIT
add esp, 12
push 0
push 256
lea ebx, [ENV+888]
push ebx
call HASHINIT
add esp, 12
push 0
push 104
push 128
lea ebx, [PARSER]
push ebx
call STACKNEW
add esp, 16
push 0
push 0
call LEXINIT
add esp, 8
call PARSERINIT
call RTLINIT
mov dword ptr [ENV+1104], -1
.L_00B9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBEND
FBEND:
.L_00CF:
mov dword ptr [ENV+1104], 0
call RTLEND
call PARSEREND
call LEXEND
lea eax, [PARSER]
push eax
call STACKFREE
add esp, 4
lea eax, [ENV+864]
push eax
call HASHEND
add esp, 4
lea eax, [ENV+888]
push eax
call HASHEND
add esp, 4
lea eax, [ENV+876]
push eax
call HASHEND
add esp, 4
call IREND
call ASTEND
call ERREND
call SYMBEND
push offset INFILETB
call fb_ArrayErase
add esp, 4
lea eax, [ENV+1132]
push eax
call STRSETEND
add esp, 4
lea eax, [ENV+1176]
push eax
call STRSETEND
add esp, 4
.L_00D0:
ret
.balign 16

.globl FBGLOBALINIT
FBGLOBALINIT:
.L_00D7:
push 256
lea eax, [ENV]
push eax
call STRLISTINIT
add esp, 8
push 256
lea eax, [ENV+32]
push eax
call STRLISTINIT
add esp, 8
push 256
lea eax, [ENV+64]
push eax
call STRLISTINIT
add esp, 8
mov dword ptr [ENV+96], 0
mov dword ptr [ENV+100], 0
mov dword ptr [ENV+104], 0
mov dword ptr [ENV+108], 5
mov dword ptr [ENV+112], 3
mov dword ptr [ENV+116], 0
mov dword ptr [ENV+120], 0
mov dword ptr [ENV+124], 0
mov dword ptr [ENV+128], 0
mov dword ptr [ENV+132], 0
mov dword ptr [ENV+136], 0
mov dword ptr [ENV+140], 0
mov dword ptr [ENV+144], 0
mov dword ptr [ENV+148], 0
mov dword ptr [ENV+152], 0
mov dword ptr [ENV+156], 0
mov dword ptr [ENV+164], 0
mov dword ptr [ENV+168], 0
mov dword ptr [ENV+172], 0
mov dword ptr [ENV+176], 0
mov dword ptr [ENV+180], 0
mov dword ptr [ENV+160], 0
mov dword ptr [ENV+184], 0
mov dword ptr [ENV+188], 1
mov dword ptr [ENV+192], -1
mov dword ptr [ENV+196], 10
mov dword ptr [ENV+200], 0
mov dword ptr [ENV+204], 0
mov dword ptr [ENV+224], 0
mov dword ptr [ENV+232], 0
mov dword ptr [ENV+236], 0
mov dword ptr [ENV+240], 0
mov dword ptr [ENV+228], 0
mov dword ptr [ENV+244], 0
mov dword ptr [ENV+248], -1
mov dword ptr [ENV+252], 0
mov dword ptr [ENV+256], 0
mov dword ptr [ENV+260], 0
mov dword ptr [ENV+264], 0
mov dword ptr [ENV+1112], 0
mov dword ptr [ENV+1116], 0
mov dword ptr [ENV+1120], 0
mov dword ptr [ENV+1128], -1
mov dword ptr [ENV+1124], 0
mov dword ptr [ENV+1108], 0
call HUPDATELANGOPTIONS
call HUPDATETARGETOPTIONS
.L_00D8:
ret
.balign 16

.globl FBADDINCLUDEPATH
FBADDINCLUDEPATH:
push ebp
mov ebp, esp
.L_00D9:
push dword ptr [ebp+8]
lea eax, [ENV+64]
push eax
call STRLISTAPPEND
add esp, 8
.L_00DA:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDPREDEFINE
FBADDPREDEFINE:
push ebp
mov ebp, esp
.L_00DB:
push dword ptr [ebp+8]
lea eax, [ENV]
push eax
call STRLISTAPPEND
add esp, 8
.L_00DC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDPREINCLUDE
FBADDPREINCLUDE:
push ebp
mov ebp, esp
.L_00DD:
push dword ptr [ebp+8]
lea eax, [ENV+32]
push eax
call STRLISTAPPEND
add esp, 8
.L_00DE:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSETOPTION
FBSETOPTION:
push ebp
mov ebp, esp
sub esp, 8
.L_00DF:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00E2
.L_00E4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+96], eax
jmp .L_00E1
.L_00E5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+100], eax
jmp .L_00E1
.L_00E6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+104], eax
jmp .L_00E1
.L_00E7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+108], eax
call HUPDATETARGETOPTIONS
jmp .L_00E1
.L_00E8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+112], eax
jmp .L_00E1
.L_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+116], eax
jmp .L_00E1
.L_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+120], eax
jmp .L_00E1
.L_00EB:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+124], eax
jmp .L_00E1
.L_00EC:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+128], eax
jmp .L_00E1
.L_00ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+132], eax
jmp .L_00E1
.L_00EE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+136], eax
call HUPDATELANGOPTIONS
jmp .L_00E1
.L_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+140], eax
jmp .L_00E1
.L_00F0:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+1128], eax
jmp .L_00E1
.L_00F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+144], eax
jmp .L_00E1
.L_00F2:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+148], eax
jmp .L_00E1
.L_00F3:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+152], eax
jmp .L_00E1
.L_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+156], eax
jmp .L_00E1
.L_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+160], eax
jmp .L_00E1
.L_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+164], eax
jmp .L_00E1
.L_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+168], eax
jmp .L_00E1
.L_00F8:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+172], eax
jmp .L_00E1
.L_00F9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+176], eax
jmp .L_00E1
.L_00FA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+180], eax
jmp .L_00E1
.L_00FB:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+184], eax
jmp .L_00E1
.L_00FC:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+188], eax
jmp .L_00E1
.L_00FD:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+192], eax
jmp .L_00E1
.L_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+196], eax
jmp .L_00E1
.L_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+200], eax
jmp .L_00E1
.L_0100:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+204], eax
jmp .L_00E1
.L_0101:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+208], eax
jmp .L_00E1
.L_0102:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+212], eax
jmp .L_00E1
.L_0103:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+216], eax
jmp .L_00E1
.L_0104:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+220], eax
jmp .L_00E1
.L_0105:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+224], eax
jmp .L_00E1
.L_0106:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+228], eax
jmp .L_00E1
.L_0107:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+232], eax
jmp .L_00E1
.L_0108:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+236], eax
jmp .L_00E1
.L_0109:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+240], eax
jmp .L_00E1
.L_010A:
cmp dword ptr [ebp+12], 0
jge .L_010C
cmp dword ptr [ENV+244], 0
jne .L_010E
call FBIS64BIT
test eax, eax
je .L_010F
mov dword ptr [ebp-8], 2097152
jmp .L_011D
.L_010F:
mov dword ptr [ebp-8], 1048576
.L_011D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+244], eax
.L_010E:
.L_010D:
jmp .L_010B
.L_010C:
call FBIS64BIT
test eax, eax
je .L_0112
cmp dword ptr [ebp+12], 65536
jge .L_0113
mov dword ptr [ebp-8], 65536
jmp .L_011E
.L_0113:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_011E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+244], eax
jmp .L_0111
.L_0112:
cmp dword ptr [ebp+12], 32768
jge .L_0115
mov dword ptr [ebp-8], 32768
jmp .L_011F
.L_0115:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_011F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ENV+244], eax
.L_0111:
.L_010B:
jmp .L_00E1
.L_0117:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+248], eax
jmp .L_00E1
.L_0118:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+252], eax
jmp .L_00E1
.L_0119:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+256], eax
jmp .L_00E1
.L_011A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+260], eax
jmp .L_00E1
.L_011B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ENV+264], eax
call HUPDATETARGETOPTIONS
jmp .L_00E1
.L_00E2:
cmp dword ptr [ebp-4], 43
ja .L_00E1
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_011C+eax*4]
.L_011C:
.int .L_00E4
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
.int .L_00F9
.int .L_00FA
.int .L_00F8
.int .L_00FB
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
.int .L_0117
.int .L_0118
.int .L_0119
.int .L_011A
.int .L_011B
.L_00E1:
.L_00E0:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETOPTION
FBGETOPTION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0120:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0123
.L_0125:
mov eax, dword ptr [ENV+96]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0126:
mov eax, dword ptr [ENV+100]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0127:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0128:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0129:
mov eax, dword ptr [ENV+112]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012A:
mov eax, dword ptr [ENV+116]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012B:
mov eax, dword ptr [ENV+120]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012C:
mov eax, dword ptr [ENV+124]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012D:
mov eax, dword ptr [ENV+128]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012E:
mov eax, dword ptr [ENV+132]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_012F:
mov eax, dword ptr [ENV+136]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0130:
mov eax, dword ptr [ENV+140]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0131:
mov eax, dword ptr [ENV+1128]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0132:
mov eax, dword ptr [ENV+144]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0133:
mov eax, dword ptr [ENV+148]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0134:
mov eax, dword ptr [ENV+152]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0135:
mov eax, dword ptr [ENV+156]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0136:
mov eax, dword ptr [ENV+160]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0137:
mov eax, dword ptr [ENV+164]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0138:
mov eax, dword ptr [ENV+168]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0139:
mov eax, dword ptr [ENV+172]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013A:
mov eax, dword ptr [ENV+176]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013B:
mov eax, dword ptr [ENV+180]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013C:
mov eax, dword ptr [ENV+184]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013D:
mov eax, dword ptr [ENV+188]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013E:
mov eax, dword ptr [ENV+192]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_013F:
mov eax, dword ptr [ENV+196]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0140:
mov eax, dword ptr [ENV+200]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0141:
mov eax, dword ptr [ENV+204]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0142:
mov eax, dword ptr [ENV+208]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0143:
mov eax, dword ptr [ENV+212]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0144:
mov eax, dword ptr [ENV+216]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0145:
mov eax, dword ptr [ENV+220]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0146:
mov eax, dword ptr [ENV+224]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0147:
mov eax, dword ptr [ENV+228]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0148:
mov eax, dword ptr [ENV+232]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0149:
mov eax, dword ptr [ENV+236]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014A:
mov eax, dword ptr [ENV+240]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014B:
mov eax, dword ptr [ENV+244]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014C:
mov eax, dword ptr [ENV+248]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014D:
mov eax, dword ptr [ENV+252]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014E:
mov eax, dword ptr [ENV+256]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_014F:
mov eax, dword ptr [ENV+260]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0150:
mov eax, dword ptr [ENV+264]
mov dword ptr [ebp-4], eax
jmp .L_0122
.L_0151:
mov dword ptr [ebp-4], 0
jmp .L_0122
.L_0123:
cmp dword ptr [ebp-8], 43
ja .L_0151
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0152+eax*4]
.L_0152:
.int .L_0125
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
.int .L_013A
.int .L_013B
.int .L_0139
.int .L_013C
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
.L_0122:
.L_0121:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCHANGEOPTION
FBCHANGEOPTION:
push ebp
mov ebp, esp
sub esp, 4
.L_0153:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0156
.L_0158:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call FBSETOPTION
add esp, 8
jmp .L_0155
.L_0159:
push dword ptr [ebp+8]
call FBGETOPTION
add esp, 4
cmp dword ptr [ebp+12], eax
je .L_015B
cmp dword ptr [PARSER+100], 0
je .L_015D
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_015F
push 0
push 0
push 61
call ERRREPORT
add esp, 12
jmp .L_015E
.L_015F:
push 0
push 0
push 96
call ERRREPORT
add esp, 12
.L_015E:
jmp .L_015C
.L_015D:
cmp dword ptr [ENV+140], 0
je .L_0161
push 0
push 1
push 0
push 30
call ERRREPORTWARN
add esp, 16
jmp .L_0160
.L_0161:
mov eax, dword ptr [ENV+1120]
and eax, 1
test eax, eax
jne .L_0163
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call FBSETOPTION
add esp, 8
push 1
call FBRESTARTBEGINREQUEST
add esp, 4
push 1
call FBRESTARTACCEPTREQUEST
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_0162
.L_0163:
push 0
push 1
push 0
push 31
call ERRREPORTWARN
add esp, 16
.L_0162:
.L_0160:
.L_015C:
.L_015B:
.L_015A:
jmp .L_0155
.L_0164:
push 0
push 0
push 21
call ERRREPORT
add esp, 12
jmp .L_0155
.L_0156:
mov eax, dword ptr [ebp-4]
add eax, 4294967286
cmp eax, 24
ja .L_0164
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0165+eax*4-40]
.L_0165:
.int .L_0159
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0158
.L_0155:
.L_0154:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBISCROSSCOMP
FBISCROSSCOMP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0166:
mov eax, dword ptr [ENV+108]
cmp eax, 5
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0167:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETTARGETID
FBGETTARGETID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0178:
push 0
push -1
push dword ptr [ENV+112]
push dword ptr [ENV+108]
call HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0179:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETHOSTID
FBGETHOSTID:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017A:
push 0
push -1
push 3
push 5
call HGETTARGETID
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_017B:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYOS
FBIDENTIFYOS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_017C:
mov dword ptr [ebp-8], 0
.L_0181:
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [TARGETINFO+eax]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0183
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_017D
.L_0183:
.L_0182:
.L_017F:
inc dword ptr [ebp-8]
.L_017E:
cmp dword ptr [ebp-8], 11
jle .L_0181
.L_0180:
mov dword ptr [ebp-4], -1
.L_017D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYCPUFAMILY
FBIDENTIFYCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0184:
mov dword ptr [ebp-8], 0
.L_0189:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [CPUFAMILYINFO+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_018B
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0185
.L_018B:
.L_018A:
.L_0187:
inc dword ptr [ebp-8]
.L_0186:
cmp dword ptr [ebp-8], 7
jle .L_0189
.L_0188:
mov dword ptr [ebp-4], -1
.L_0185:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCPUTYPEFROMCPUFAMILYID
FBCPUTYPEFROMCPUFAMILYID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_018C:
push dword ptr [ebp+8]
call FBIDENTIFYCPUFAMILY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jl .L_018F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [CPUFAMILYINFO+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_018D
.L_018F:
.L_018E:
mov dword ptr [ebp-4], -1
.L_018D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETGCCARCH
FBGETGCCARCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0190:
mov eax, dword ptr [ENV+112]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0193
mov ebx, dword ptr [ENV+112]
imul ebx, 20
mov eax, dword ptr [CPUTYPEINFO+ebx+4]
mov dword ptr [ebp-8], eax
.L_0193:
.L_0192:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0191:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETFBCARCH
FBGETFBCARCH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0194:
mov eax, dword ptr [ENV+112]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax+4]
mov dword ptr [ebp-4], ebx
.L_0195:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIS64BIT
FBIS64BIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0196:
call FBGETBITS
cmp eax, 64
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0197:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBITS
FBGETBITS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0199:
mov eax, dword ptr [ENV+112]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax+12]
mov dword ptr [ebp-4], ebx
.L_019A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETHOSTBITS
FBGETHOSTBITS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_019B:
mov eax, dword ptr [CPUTYPEINFO+72]
mov dword ptr [ebp-4], eax
.L_019C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETCPUFAMILY
FBGETCPUFAMILY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019D:
mov eax, dword ptr [ENV+112]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax+8]
mov dword ptr [ebp-4], ebx
.L_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBISHOSTBIGENDIAN
FBISHOSTBIGENDIAN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_019F:
mov eax, dword ptr [ENV+112]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax+16]
mov dword ptr [ebp-4], ebx
.L_01A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBIDENTIFYFBCARCH
FBIDENTIFYFBCARCH:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_01A1:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 7
push offset Lt_01A6
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A5
.L_01A7:
mov dword ptr [ebp-4], 3
call fb_CpuDetect
shr eax, 28
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_01AA
.L_01AB:
mov dword ptr [ebp-4], 0
jmp .L_01A8
.L_01AA:
cmp dword ptr [ebp-20], 4
jne .L_01AC
.L_01AD:
mov dword ptr [ebp-4], 1
jmp .L_01A8
.L_01AC:
cmp dword ptr [ebp-20], 5
jne .L_01AE
.L_01AF:
mov dword ptr [ebp-4], 2
jmp .L_01A8
.L_01AE:
cmp dword ptr [ebp-20], 6
jne .L_01B0
.L_01B1:
mov dword ptr [ebp-4], 3
.L_01B0:
.L_01A8:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01A2
jmp .L_01A3
.L_01A5:
push 3
push offset Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B2
.L_01B4:
mov dword ptr [ebp-4], 3
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01A2
jmp .L_01A3
.L_01B2:
push 3
push offset Lt_01B6
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01B5
.L_01B7:
mov dword ptr [ebp-4], 13
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01A2
.L_01B5:
.L_01A3:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [ebp-8], 0
.L_01BB:
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
imul eax, 20
push dword ptr [CPUTYPEINFO+eax+4]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01BD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_01A2
.L_01BD:
.L_01BC:
.L_01B9:
inc dword ptr [ebp-8]
.L_01B8:
cmp dword ptr [ebp-8], 20
jle .L_01BB
.L_01BA:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 7
push offset Lt_007C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_01C2
.L_01C3:
push 6
push offset Lt_01C1
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C0
.L_01C2:
mov dword ptr [ebp-4], 13
jmp .L_01BE
.L_01C0:
mov dword ptr [ebp-4], -1
.L_01C4:
.L_01BE:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_01A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBTARGETSUPPORTSELF
FBTARGETSUPPORTSELF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01C5:
mov eax, dword ptr [ENV+284]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01C6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBTARGETSUPPORTSCOFF
FBTARGETSUPPORTSCOFF:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01C8:
mov eax, dword ptr [ENV+284]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBTARGETSUPPORTSMACHO
FBTARGETSUPPORTSMACHO:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01CB:
mov eax, dword ptr [ENV+284]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_01CC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETENTRYPOINT
FBGETENTRYPOINT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01CE:
push 128
lea eax, [ENV+904]
push eax
call fb_StrLen
add esp, 8
test eax, eax
je .L_01D1
push 0
push 128
lea eax, [ENV+904]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_01CF
.L_01D1:
.L_01D0:
cmp dword ptr [ENV+108], 4
jne .L_01D3
push 0
push 12
push offset Lt_01D4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01D2
.L_01D3:
push 0
push 5
push offset Lt_01D5
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_01D2:
.L_01CF:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETMODULEENTRY
FBGETMODULEENTRY:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D6:
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
lea eax, [ENV+584]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call HSTRIPPATH
add esp, 4
push eax
push -1
push offset Lt_01DB
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [Lt_01DB]
call HCLEARNAME
add esp, 4
push 0
push 10
push offset Lt_01DA
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push offset Lt_01DB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01D7:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01DB,12

.section .text
.balign 16

.globl FBGETINPUTFILEPARENTDIR
FBGETINPUTFILEPARENTDIR:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01DC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ENV+304]
push eax
call PATHISABSOLUTE
add esp, 4
test eax, eax
jne .L_01DF
push 0
push -1
call HCURDIR
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0019
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_01DF:
.L_01DE:
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
lea eax, [ENV+304]
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_01DD:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDLIB
FBADDLIB:
push ebp
mov ebp, esp
sub esp, 12
.L_01E3:
push 7
push offset Lt_01E5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01E7
push -1
push 36
call FBSETOPTION
add esp, 8
jmp .L_01E4
.L_01E7:
.L_01E6:
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
lea eax, [ENV+1132]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01E4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBADDLIBPATH
FBADDLIBPATH:
push ebp
mov ebp, esp
sub esp, 24
.L_01E9:
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
lea eax, [ENV+1176]
push eax
call STRSETADD
add esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01EA:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBCOMPILE
FBCOMPILE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0223:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [ENV+304]
push eax
call fb_StrAssign
add esp, 20
push 47
lea eax, [ENV+304]
push eax
call HREPLACESLASH
add esp, 8
lea eax, [ENV+304]
push eax
lea eax, [ENV+864]
push eax
push 0
call HADDINCFILE
add esp, 12
mov dword ptr [ENV+568], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ENV+572], eax
push 0
push 0
push dword ptr [ebp+12]
push 261
lea eax, [ENV+584]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+20]
mov dword ptr [ENV+852], eax
push dword ptr [ebp+8]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0226
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 20
jmp .L_0224
.L_0226:
.L_0225:
call fb_FileFree
mov dword ptr [ENV+300], eax
push 0
push dword ptr [ENV+300]
push 0
push 1
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_0228
push 0
push 1
push -1
push dword ptr [ebp+8]
push 26
call ERRREPORTEX
add esp, 20
jmp .L_0224
.L_0228:
.L_0227:
cmp dword ptr [ENV+252], 0
je .L_022A
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
push 0
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_022A:
.L_0229:
push dword ptr [ENV+300]
call HCHECKFILEFORMAT
add esp, 4
mov dword ptr [ENV+576], eax
call dword ptr [IR+8]
test eax, eax
jne .L_022E
push 0
push 1
push -1
lea eax, [ENV+584]
push eax
push 26
call ERRREPORTEX
add esp, 20
jmp .L_0224
.L_022E:
.L_022D:
push 1
call FBGETOPTION
add esp, 4
test eax, eax
je .L_0230
call fb_FileFree
mov dword ptr [ENV+860], eax
push 0
push dword ptr [ENV+860]
push 0
push 0
push 3
push dword ptr [ebp+16]
call fb_FileOpen
add esp, 24
test eax, eax
je .L_0232
push 0
push 1
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 20
jmp .L_0224
.L_0232:
.L_0231:
jmp .L_022F
.L_0230:
mov dword ptr [ENV+860], 0
.L_022F:
call FBMAINBEGIN
call FBPARSEPREDEFINES
call FBPARSEPREINCLUDES
call FBSHOULDCONTINUE
test eax, eax
je .L_0234
call CPROGRAM
.L_0234:
.L_0233:
call FBMAINEND
push 39
call FBGETOPTION
add esp, 4
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
mov eax, dword ptr [ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0236
call HEMITOBJINFO
.L_0236:
.L_0235:
call dword ptr [IR+12]
cmp dword ptr [ENV+860], 0
jle .L_0238
push dword ptr [ENV+860]
call fb_FileClose
add esp, 4
test eax, eax
je .L_0239
push 0
push 0
push offset Lt_00BB
push 1305
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0239:
.L_0238:
.L_0237:
push dword ptr [ENV+300]
call fb_FileClose
add esp, 4
test eax, eax
je .L_023A
push 0
push 0
push offset Lt_00BB
push 1308
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_023A:
call FBSHOULDCONTINUE
test eax, eax
je .L_023C
push dword ptr [SYMB+98412]
call SYMBCHECKLABELS
add esp, 4
.L_023C:
.L_023B:
.L_0224:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSHOULDRESTART
FBSHOULDRESTART:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_023E:
mov eax, dword ptr [ENV+1112]
and eax, 10
test eax, eax
je .L_0241
mov eax, dword ptr [ENV+1120]
and eax, 10
test eax, eax
jne .L_0243
push 10
call FBRESTARTACCEPTREQUEST
add esp, 4
call ERRHIDEFURTHERERRORS
mov dword ptr [ebp-4], -1
jmp .L_023F
.L_0243:
.L_0242:
.L_0241:
.L_0240:
mov eax, dword ptr [ENV+1116]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_023F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSHOULDCONTINUE
FBSHOULDCONTINUE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0245:
mov eax, dword ptr [ENV+1116]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call ERRGETCOUNT
cmp eax, dword ptr [ENV+196]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.L_0246:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBRESTARTBEGINREQUEST
FBRESTARTBEGINREQUEST:
push ebp
mov ebp, esp
.L_0249:
mov eax, dword ptr [ebp+8]
or dword ptr [ENV+1112], eax
.L_024A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBRESTARTACCEPTREQUEST
FBRESTARTACCEPTREQUEST:
push ebp
mov ebp, esp
.L_024B:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [ENV+1112]
test eax, eax
je .L_024E
mov eax, dword ptr [ENV+1112]
and eax, dword ptr [ENV+1120]
and eax, dword ptr [ebp+8]
test eax, eax
jne .L_0250
mov eax, dword ptr [ebp+8]
and eax, dword ptr [ENV+1112]
or dword ptr [ENV+1116], eax
.L_0250:
.L_024F:
.L_024E:
.L_024D:
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [ENV+1112], eax
.L_024C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBRESTARTENDREQUEST
FBRESTARTENDREQUEST:
push ebp
mov ebp, esp
.L_0251:
mov eax, dword ptr [ebp+8]
and eax, dword ptr [ENV+1116]
or dword ptr [ENV+1120], eax
inc dword ptr [ENV+1124]
mov eax, dword ptr [ebp+8]
not eax
and dword ptr [ENV+1116], eax
.L_0252:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBRESTARTGETCOUNT
FBRESTARTGETCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0253:
mov eax, dword ptr [ENV+1124]
mov dword ptr [ebp-4], eax
.L_0254:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBSETLIBS
FBSETLIBS:
push ebp
mov ebp, esp
.L_0255:
push dword ptr [ebp+8]
lea eax, [ENV+1132]
push eax
call STRSETCOPY
add esp, 8
push dword ptr [ebp+12]
lea eax, [ENV+1176]
push eax
call STRSETCOPY
add esp, 8
.L_0256:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLIBS
FBGETLIBS:
push ebp
mov ebp, esp
.L_0257:
lea eax, [ENV+1132]
push eax
push dword ptr [ebp+8]
call STRSETCOPY
add esp, 8
lea eax, [ENV+1176]
push eax
push dword ptr [ebp+12]
call STRSETCOPY
add esp, 8
.L_0258:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBPRAGMAONCE
FBPRAGMAONCE:
.L_0259:
push 1
push offset Lt_0000
push 261
lea eax, [ENV+304]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jle .L_025C
lea eax, [ENV+304]
push eax
lea eax, [ENV+888]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
jne .L_025E
lea eax, [ENV+304]
push eax
lea eax, [ENV+864]
push eax
lea eax, [ENV+888]
push eax
call HADDINCFILE
add esp, 12
.L_025E:
.L_025D:
.L_025C:
.L_025B:
.L_025A:
ret
.balign 16

.globl FBINCLUDEFILE
FBINCLUDEFILE:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.L_027A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+900], 16
jl .L_027D
push 0
push 0
push 27
call ERRREPORT
add esp, 12
call ERRHIDEFURTHERERRORS
jmp .L_027B
.L_027D:
.L_027C:
push 0
push -1
lea eax, [ENV+304]
push eax
call HSTRIPFILENAME
add esp, 4
push eax
push 260
push offset Lt_02B6
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 260
push offset Lt_02B6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_02B6
call fb_StrAssign
add esp, 20
push offset Lt_02B6
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0280
push dword ptr [ebp+8]
call HFILEEXISTS
add esp, 4
test eax, eax
jne .L_0282
lea eax, [ENV+64]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.L_0283:
cmp dword ptr [ebp-28], 0
je .L_0284
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset Lt_0019
push -1
push dword ptr [ebp-28]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_02B6
call fb_StrAssign
add esp, 20
push offset Lt_02B6
call HFILEEXISTS
add esp, 4
test eax, eax
je .L_0288
jmp .L_0284
.L_0288:
.L_0287:
push dword ptr [ebp-28]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0283
.L_0284:
cmp dword ptr [ebp-28], 0
jne .L_028A
cmp dword ptr [ENV+252], 0
je .L_028C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 29
push offset Lt_028D
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
mov eax, dword ptr [ENV+900]
inc eax
push eax
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 4
.L_028C:
.L_028B:
push 0
push 1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push 2
push offset Lt_0290
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset Lt_0290
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_027B
.L_028A:
.L_0289:
jmp .L_0281
.L_0282:
push 0
push 0
push dword ptr [ebp+8]
push 260
push offset Lt_02B6
call fb_StrAssign
add esp, 20
.L_0281:
.L_0280:
.L_027F:
mov eax, offset Lt_02B6
mov dword ptr [ebp-20], eax
lea eax, [ebp-20]
push eax
call IS_ROOTPATH
add esp, 4
test eax, eax
jne .L_0296
push 0
push -1
push 260
push offset Lt_02B6
push -1
push 2
push offset Lt_0019
push -1
call HCURDIR
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push 260
push offset Lt_02B6
call fb_StrAssign
add esp, 20
.L_0296:
.L_0295:
mov eax, offset Lt_02B6
mov dword ptr [ebp-24], eax
lea eax, [ebp-24]
push eax
call IS_ROOTPATH
add esp, 4
test eax, eax
jne .L_029B
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0290
push -1
push 260
push offset Lt_02B6
push 2
push offset Lt_0290
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_027B
.L_029B:
.L_029A:
push offset Lt_02B6
call SOLVE_PATH
add esp, 4
test eax, eax
jne .L_02A0
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0290
push -1
push 260
push offset Lt_02B6
push 2
push offset Lt_0290
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_027B
.L_02A0:
.L_029F:
push 47
push offset Lt_02B6
call HREPLACESLASH
add esp, 8
cmp dword ptr [ebp+12], 0
je .L_02A5
push offset Lt_02B6
lea eax, [ENV+876]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
je .L_02A7
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset Lt_02B6
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_027B
.L_02A7:
.L_02A6:
.L_02A5:
.L_02A4:
push offset Lt_02B6
lea eax, [ENV+888]
push eax
call HFINDINCFILE
add esp, 8
test eax, eax
je .L_02AA
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 260
push offset Lt_02B6
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HONSKIPPEDFILE
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_027B
.L_02AA:
.L_02A9:
push offset Lt_02B6
lea eax, [ENV+864]
push eax
lea eax, [ENV+876]
push eax
call HADDINCFILE
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ENV+900]
imul eax, 280
add eax, dword ptr [INFILETB]
lea ebx, [eax]
lea eax, [ENV+300]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 70
rep movsd
pop esi
pop edi
inc dword ptr [ENV+900]
push 0
push 260
push offset Lt_02B6
push 261
lea eax, [ENV+304]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [ENV+568], eax
cmp dword ptr [ENV+252], 0
je .L_02AD
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
push offset Lt_02B6
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call PATHSTRIPCURDIR
add esp, 4
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
push dword ptr [ENV+900]
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_02AD:
.L_02AC:
call fb_FileFree
mov dword ptr [ENV+300], eax
push 0
push dword ptr [ENV+300]
push 0
push 1
push 0
push offset Lt_02B6
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
je .L_02B1
push 0
push 1
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_0290
push -1
push 0
push dword ptr [ebp+8]
push 2
push offset Lt_0290
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 23
call ERRREPORTEX
add esp, 20
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
call ERRHIDEFURTHERERRORS
jmp .L_027B
.L_02B1:
.L_02B0:
push dword ptr [ENV+300]
call HCHECKFILEFORMAT
add esp, 4
mov dword ptr [ENV+576], eax
call LEXPUSHCTX
push 0
push -1
call LEXINIT
add esp, 8
call CPROGRAM
call LEXPOPCTX
push dword ptr [ENV+300]
call fb_FileClose
add esp, 4
test eax, eax
je .L_02B5
push 0
push 0
push offset Lt_00BB
push 1655
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02B5:
dec dword ptr [ENV+900]
lea eax, [ENV+300]
mov ebx, dword ptr [ENV+900]
imul ebx, 280
add ebx, dword ptr [INFILETB]
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
.L_027B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02B6,260

.section .text
.balign 16

.globl FBOVERRIDEFILENAME
FBOVERRIDEFILENAME:
push ebp
mov ebp, esp
.L_02B7:
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [ENV+304]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
lea eax, [ENV+864]
push eax
push 0
call HADDINCFILE
add esp, 12
mov dword ptr [ENV+568], eax
.L_02B8:
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETLANGID
FBGETLANGID:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_02B9:
push 0
push -1
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 3
push offset Lt_0069
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_02BD
.L_02BE:
mov dword ptr [ebp-4], 0
jmp .L_02BB
.L_02BD:
push 11
push offset Lt_006A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_02BF
.L_02C0:
mov dword ptr [ebp-4], 1
jmp .L_02BB
.L_02BF:
push 7
push offset Lt_006B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_02C1
.L_02C2:
mov dword ptr [ebp-4], 2
jmp .L_02BB
.L_02C1:
push 3
push offset Lt_006C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_02C3
.L_02C4:
mov dword ptr [ebp-4], 3
jmp .L_02BB
.L_02C3:
mov dword ptr [ebp-4], -1
.L_02C5:
.L_02BB:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_02BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl FBGETBACKENDVALISTTYPE
FBGETBACKENDVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_02C6:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .L_02CA
.L_02CB:
call FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02CE
.L_02CF:
mov dword ptr [ebp-8], 2
jmp .L_02CC
.L_02CE:
cmp dword ptr [ebp-16], 1
jne .L_02D0
.L_02D1:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_02D4
.L_02D5:
mov dword ptr [ebp-8], 2
jmp .L_02D2
.L_02D4:
mov dword ptr [ebp-8], 3
.L_02D6:
.L_02D2:
jmp .L_02CC
.L_02D0:
cmp dword ptr [ebp-16], 2
jne .L_02D7
.L_02D8:
mov dword ptr [ebp-8], 5
jmp .L_02CC
.L_02D7:
cmp dword ptr [ebp-16], 3
jne .L_02D9
.L_02DA:
mov dword ptr [ebp-8], 4
jmp .L_02CC
.L_02D9:
cmp dword ptr [ebp-16], 4
jne .L_02DB
.L_02DC:
mov dword ptr [ebp-8], 2
jmp .L_02CC
.L_02DB:
cmp dword ptr [ebp-16], 5
je .L_02DE
.L_02DF:
cmp dword ptr [ebp-16], 6
jne .L_02DD
.L_02DE:
mov dword ptr [ebp-8], 2
jmp .L_02CC
.L_02DD:
mov dword ptr [ebp-8], 2
.L_02E0:
.L_02CC:
jmp .L_02C8
.L_02CA:
cmp dword ptr [ebp-12], 0
jne .L_02E1
.L_02E2:
mov dword ptr [ebp-8], 1
jmp .L_02C8
.L_02E1:
cmp dword ptr [ebp-12], 2
jne .L_02E3
.L_02E4:
mov dword ptr [ebp-8], 1
jmp .L_02C8
.L_02E3:
cmp dword ptr [ebp-12], 3
jne .L_02E5
.L_02E6:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02E9
.L_02EA:
mov dword ptr [ebp-8], 2
jmp .L_02E7
.L_02E9:
mov dword ptr [ebp-8], 3
.L_02EB:
.L_02E7:
jmp .L_02C8
.L_02E5:
mov dword ptr [ebp-8], 1
.L_02EC:
.L_02C8:
cmp dword ptr [ebp-8], 2
jne .L_02EE
push 29
call FBGETOPTION
add esp, 4
test eax, eax
je .L_02F0
mov dword ptr [ebp-8], 1
.L_02F0:
.L_02EF:
.L_02EE:
.L_02ED:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02C7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__fb:
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
.balign 16
HFINDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009A:
push 0
push 0
push dword ptr [ebp+12]
push -1
push offset Lt_02F1
call fb_StrAssign
add esp, 20
push dword ptr [Lt_02F1]
push dword ptr [ebp+8]
call HASHLOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.L_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02F1,12

.section .text
.balign 16
HADDINCFILE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009C:
push 0
push dword ptr [ebp+16]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov dword ptr [Lt_02F2], eax
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [Lt_02F2]
call fb_StrAssign
add esp, 20
push dword ptr [Lt_02F2]
call HASHHASH
add esp, 4
mov dword ptr [Lt_02F3], eax
push dword ptr [Lt_02F3]
push dword ptr [Lt_02F2]
push dword ptr [ebp+12]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [Lt_02F4], eax
cmp dword ptr [Lt_02F4], 0
jne .L_009F
push dword ptr [Lt_02F3]
push dword ptr [Lt_02F2]
push dword ptr [Lt_02F2]
push dword ptr [ebp+12]
call HASHADD
add esp, 16
jmp .L_009E
.L_009F:
push dword ptr [Lt_02F2]
call free
add esp, 4
mov eax, dword ptr [Lt_02F4]
mov dword ptr [Lt_02F2], eax
.L_009E:
cmp dword ptr [ebp+8], 0
je .L_00A1
push dword ptr [Lt_02F3]
push dword ptr [Lt_02F2]
push dword ptr [ebp+8]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [Lt_02F4], eax
cmp dword ptr [Lt_02F4], 0
jne .L_00A3
push dword ptr [Lt_02F3]
push dword ptr [Lt_02F2]
push dword ptr [Lt_02F2]
push dword ptr [ebp+8]
call HASHADD
add esp, 16
.L_00A3:
.L_00A2:
.L_00A1:
.L_00A0:
mov eax, dword ptr [Lt_02F2]
mov dword ptr [ebp-4], eax
.L_009D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02F2,4
.balign 4
	.lcomm	Lt_02F4,4
.balign 4
	.lcomm	Lt_02F3,4

.section .text
.balign 16
HUPDATELANGOPTIONS:
push ebx
.L_00D1:
mov eax, dword ptr [ENV+136]
mov ebx, dword ptr [LANGTB+eax*8+4]
mov dword ptr [ENV+1040], ebx
.L_00D2:
pop ebx
ret
.balign 16
HUPDATETARGETOPTIONS:
push ebx
.L_00D3:
lea eax, [ENV+268]
mov ebx, dword ptr [ENV+108]
imul ebx, 20
lea ecx, [TARGETINFO+ebx]
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
cmp dword ptr [ENV+264], 0
je .L_00D6
or dword ptr [ENV+284], 32
.L_00D6:
.L_00D5:
.L_00D4:
pop ebx
ret
.balign 16
HGETTARGETID:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0169:
mov eax, dword ptr [ebp+12]
imul eax, 20
mov ebx, dword ptr [CPUTYPEINFO+eax+8]
mov dword ptr [ebp-16], ebx
push 0
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 20
push dword ptr [TARGETINFO+ebx]
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrInit
add esp, 20
cmp dword ptr [ebp+8], 0
je .L_016D
.L_016E:
cmp dword ptr [ebp+8], 3
je .L_016D
.L_016F:
cmp dword ptr [ebp+8], 4
jne .L_016C
.L_016D:
cmp dword ptr [ebp-16], 0
jne .L_0171
push 0
push -1
lea ebx, [ebp-28]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrInit
add esp, 20
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_016A
.L_0171:
.L_0170:
.L_016C:
.L_016B:
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
je .L_0173
push 0
push 6
push offset Lt_0174
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
jmp .L_016A
.L_0173:
.L_0172:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [CPUFAMILYINFO+eax*8]
push -1
push 2
push offset Lt_0175
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
.L_016A:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
FBPARSEPREDEFINES:
push ebp
mov ebp, esp
sub esp, 32
.L_01ED:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ENV]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-28], eax
.L_01EF:
cmp dword ptr [ebp-28], 0
je .L_01F0
push 1
push offset Lt_01F1
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
push 1
call fb_StrInstr
add esp, 12
dec eax
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jge .L_01F3
push -1
push dword ptr [ebp-28]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
.L_01F3:
.L_01F2:
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp-28]
call fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-32]
dec eax
push eax
push dword ptr [ebp-28]
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
test eax, eax
jne .L_01F5
push 0
push 2
push offset Lt_0004
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_01F5:
.L_01F4:
push 0
push 0
push 0
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call SYMBADDDEFINE
add esp, 24
push dword ptr [ebp-28]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_01EF
.L_01F0:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01EE:
mov esp, ebp
pop ebp
ret
.balign 16
FBPARSEPREINCLUDES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F6:
lea eax, [ENV+32]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_01F8:
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBSHOULDCONTINUE
and ebx, eax
je .L_01F9
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call FBINCLUDEFILE
add esp, 8
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01F8
.L_01F9:
.L_01F7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HAPPENDFBCTINF:
push ebp
mov ebp, esp
.L_01FA:
cmp dword ptr [ENV+1220], 0
jne .L_01FD
mov dword ptr [ENV+1220], -1
call dword ptr [IR+212]
.L_01FD:
.L_01FC:
push dword ptr [ebp+8]
call dword ptr [IR+216]
add esp, 4
.L_01FB:
mov esp, ebp
pop ebp
ret
.balign 16
HEMITOBJINFO:
push ebp
mov ebp, esp
sub esp, 16
.L_01FE:
lea eax, [ENV+1132]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0200:
cmp dword ptr [ebp-4], 0
je .L_0201
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0203
push 0
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HAPPENDFBCTINF
add esp, 4
.L_0203:
.L_0202:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0200
.L_0201:
lea eax, [ENV+1176]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0204:
cmp dword ptr [ebp-4], 0
je .L_0205
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
jne .L_0207
push 1
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HESCAPE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.L_0207:
.L_0206:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0204
.L_0205:
cmp dword ptr [ENV+232], 0
je .L_0209
push 2
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.L_0209:
.L_0208:
cmp dword ptr [ENV+236], 0
je .L_020B
push 3
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
.L_020B:
.L_020A:
cmp dword ptr [ENV+136], 0
je .L_020D
push 4
call OBJINFOENCODE
add esp, 4
push eax
call HAPPENDFBCTINF
add esp, 4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ENV+136]
call FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call HAPPENDFBCTINF
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_020D:
.L_020C:
cmp dword ptr [ENV+1220], 0
je .L_0210
call dword ptr [IR+220]
.L_0210:
.L_020F:
.L_01FF:
mov esp, ebp
pop ebp
ret
.balign 16
HSHOWINCLUDE:
push ebp
mov ebp, esp
sub esp, 32
.L_0211:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0214
.L_0217:
push 0
push 5
push offset Lt_0218
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0215:
inc dword ptr [ebp-28]
.L_0214:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .L_0217
.L_0216:
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
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0212:
mov esp, ebp
pop ebp
ret
.balign 16
HONSKIPPEDFILE:
push ebp
mov ebp, esp
sub esp, 36
.L_021A:
cmp dword ptr [ENV+252], 0
je .L_021D
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset Lt_021F
push -1
push -1
push dword ptr [ebp+8]
call PATHSTRIPCURDIR
add esp, 4
push eax
push 2
push offset Lt_021E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
mov eax, dword ptr [ENV+900]
inc eax
push eax
call HSHOWINCLUDE
add esp, 8
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_021D:
.L_021C:
.L_021B:
mov esp, ebp
pop ebp
ret
.balign 16
IS_ROOTPATH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_025F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0262
jmp .L_0260
.L_0262:
.L_0261:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 47
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0260:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
GET_ROOTPATH_LEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0263:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
jne .L_0266
jmp .L_0264
.L_0266:
.L_0265:
mov dword ptr [ebp-4], 1
.L_0264:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SOLVE_PATH:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0267:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call GET_ROOTPATH_LEN
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [Lt_02F9+eax*4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-36], eax
jmp .L_026B
.L_026E:
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
je .L_0271
cmp dword ptr [ebp-16], 0
jne .L_0273
jmp .L_0272
.L_0273:
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
je .L_0274
dec dword ptr [ebp-28]
jmp .L_0272
.L_0274:
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
je .L_0275
cmp dword ptr [ebp-8], 0
je .L_0277
dec dword ptr [ebp-8]
.L_0277:
.L_0276:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [Lt_02F9+eax*4]
mov dword ptr [ebp-28], ebx
jmp .L_0272
.L_0275:
mov bl, byte ptr [ebp-32]
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], bl
inc dword ptr [ebp-28]
inc dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-28]
mov dword ptr [Lt_02F9+ebx*4], eax
.L_0272:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .L_0270
.L_0271:
cmp dword ptr [ebp-32], 46
jne .L_0279
inc dword ptr [ebp-20]
.L_0279:
.L_0278:
inc dword ptr [ebp-16]
mov al, byte ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
mov byte ptr [ebx], al
inc dword ptr [ebp-28]
.L_0270:
.L_026C:
inc dword ptr [ebp-24]
.L_026B:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-24], eax
jle .L_026E
.L_026D:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], -1
.L_0268:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_02F9,524

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl ENV
.balign 4
	.lcomm	ENV,1224

.section .data
.balign 4
INFILETB:
.long 0
.long 0
.int 0
.int 280
.int 0
.int 8
.skip 96,0
.balign 4
LANGTB:
.int Lt_0069
.int 536873471
.int Lt_006A
.int 738066591
.int Lt_006B
.int 738132125
.int Lt_006C
.int 738131968
.balign 4
Lt_0069:	.ascii	"fb\0"
.balign 4
Lt_006A:	.ascii	"deprecated\0"
.balign 4
Lt_006B:	.ascii	"fblite\0"
.balign 4
Lt_006C:	.ascii	"qb\0"
.balign 4
TARGETINFO:
.int Lt_006E
.int 6
.int 1
.int 1
.int 276
.int Lt_006F
.int 6
.int 1
.int 1
.int 277
.int Lt_0070
.int 12
.int 3
.int 2
.int 201
.int Lt_0071
.int 3
.int 3
.int 2
.int 264
.int Lt_0072
.int 12
.int 1
.int 1
.int 272
.int Lt_0073
.int 12
.int 3
.int 2
.int 185
.int Lt_0074
.int 12
.int 3
.int 2
.int 153
.int Lt_0075
.int 12
.int 3
.int 2
.int 153
.int Lt_0076
.int 12
.int 3
.int 2
.int 185
.int Lt_0077
.int 12
.int 3
.int 2
.int 601
.int Lt_0078
.int 12
.int 3
.int 2
.int 185
.int Lt_0079
.int 6
.int 3
.int 2
.int 25
.balign 4
Lt_006E:	.ascii	"win32\0"
.balign 4
Lt_006F:	.ascii	"cygwin\0"
.balign 4
Lt_0070:	.ascii	"linux\0"
.balign 4
Lt_0071:	.ascii	"dos\0"
.balign 4
Lt_0072:	.ascii	"xbox\0"
.balign 4
Lt_0073:	.ascii	"freebsd\0"
.balign 4
Lt_0074:	.ascii	"dragonfly\0"
.balign 4
Lt_0075:	.ascii	"solaris\0"
.balign 4
Lt_0076:	.ascii	"openbsd\0"
.balign 4
Lt_0077:	.ascii	"darwin\0"
.balign 4
Lt_0078:	.ascii	"netbsd\0"
.balign 4
Lt_0079:	.ascii	"js\0"
.balign 4
CPUFAMILYINFO:
.int Lt_007B
.int 3
.int Lt_007C
.int 13
.int Lt_007D
.int 15
.int Lt_007E
.int 16
.int Lt_007F
.int 17
.int Lt_0080
.int 18
.int Lt_0081
.int 19
.int Lt_0082
.int 20
.balign 4
Lt_007B:	.ascii	"x86\0"
.balign 4
Lt_007C:	.ascii	"x86_64\0"
.balign 4
Lt_007D:	.ascii	"arm\0"
.balign 4
Lt_007E:	.ascii	"aarch64\0"
.balign 4
Lt_007F:	.ascii	"powerpc\0"
.balign 4
Lt_0080:	.ascii	"powerpc64\0"
.balign 4
Lt_0081:	.ascii	"powerpc64le\0"
.balign 4
Lt_0082:	.ascii	"asmjs\0"
.balign 4
CPUTYPEINFO:
.int Lt_0084
.int Lt_0085
.int 0
.int 32
.int 0
.int Lt_0086
.int Lt_0087
.int 0
.int 32
.int 0
.int Lt_0088
.int Lt_0089
.int 0
.int 32
.int 0
.int Lt_008A
.int Lt_008B
.int 0
.int 32
.int 0
.long 0
.int Lt_008C
.int 0
.int 32
.int 0
.long 0
.int Lt_008D
.int 0
.int 32
.int 0
.long 0
.int Lt_008E
.int 0
.int 32
.int 0
.long 0
.int Lt_008F
.int 0
.int 32
.int 0
.long 0
.int Lt_0090
.int 0
.int 32
.int 0
.long 0
.int Lt_0091
.int 0
.int 32
.int 0
.long 0
.int Lt_0092
.int 0
.int 32
.int 0
.long 0
.int Lt_0093
.int 0
.int 32
.int 0
.int Lt_0094
.int Lt_0095
.int 0
.int 32
.int 0
.long 0
.int Lt_0096
.int 1
.int 64
.int 0
.long 0
.int Lt_0097
.int 2
.int 32
.int 0
.long 0
.int Lt_0098
.int 2
.int 32
.int 0
.int Lt_0099
.int Lt_007E
.int 3
.int 64
.int 0
.long 0
.int Lt_007F
.int 4
.int 32
.int -1
.long 0
.int Lt_0080
.int 5
.int 64
.int -1
.long 0
.int Lt_0081
.int 6
.int 64
.int 0
.long 0
.int Lt_0082
.int 7
.int 32
.int 0
.balign 4
Lt_0084:	.ascii	"i386\0"
.balign 4
Lt_0085:	.ascii	"386\0"
.balign 4
Lt_0086:	.ascii	"i486\0"
.balign 4
Lt_0087:	.ascii	"486\0"
.balign 4
Lt_0088:	.ascii	"i586\0"
.balign 4
Lt_0089:	.ascii	"586\0"
.balign 4
Lt_008A:	.ascii	"i686\0"
.balign 4
Lt_008B:	.ascii	"686\0"
.balign 4
Lt_008C:	.ascii	"athlon\0"
.balign 4
Lt_008D:	.ascii	"athlon-xp\0"
.balign 4
Lt_008E:	.ascii	"athlon-fx\0"
.balign 4
Lt_008F:	.ascii	"k8-sse3\0"
.balign 4
Lt_0090:	.ascii	"pentium-mmx\0"
.balign 4
Lt_0091:	.ascii	"pentium2\0"
.balign 4
Lt_0092:	.ascii	"pentium3\0"
.balign 4
Lt_0093:	.ascii	"pentium4\0"
.balign 4
Lt_0094:	.ascii	"prescott\0"
.balign 4
Lt_0095:	.ascii	"pentium4-sse3\0"
.balign 4
Lt_0096:	.ascii	"x86-64\0"
.balign 4
Lt_0097:	.ascii	"armv6\0"
.balign 4
Lt_0098:	.ascii	"armv7-a\0"
.balign 4
Lt_0099:	.ascii	"armv8-a\0"
.balign 4
Lt_00AE:	.ascii	"gas\0"
.balign 4
Lt_00B1:	.ascii	"gcc\0"
.balign 4
Lt_00B4:	.ascii	"llvm\0"
.balign 4
Lt_00B7:	.ascii	"gas64\0"
.balign 4
Lt_00BB:	.ascii	"src/compiler/fb.bas\0"
.balign 4
Lt_0174:	.ascii	"win64\0"
.balign 4
Lt_0175:	.ascii	"-\0"
.balign 4
Lt_01A6:	.ascii	"native\0"
.balign 4
Lt_01B3:	.ascii	"32\0"
.balign 4
Lt_01B6:	.ascii	"64\0"
.balign 4
Lt_01C1:	.ascii	"amd64\0"
.balign 4
Lt_01D4:	.ascii	"XBoxStartup\0"
.balign 4
Lt_01D5:	.ascii	"main\0"
.balign 4
Lt_01DA:	.ascii	"fb_ctor__\0"
.balign 4
Lt_01E5:	.ascii	"fbgfx?\0"
.balign 4
Lt_01F1:	.ascii	"=\0"
.balign 4
Lt_0218:	.ascii	" |  \0"
.balign 4
Lt_021E:	.ascii	"(\0"
.balign 4
Lt_021F:	.ascii	")\0"
.balign 4
Lt_028D:	.ascii	" (not found in include dirs)\0"
.balign 4
Lt_0290:	.ascii	"\"\0"

.section .ctors
.int fb_ctor__fb
