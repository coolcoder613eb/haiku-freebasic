	.intel_syntax noprefix

.section .text
.balign 16

.globl EMITINIT
EMITINIT:
.type EMITINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0073:
cmp dword ptr [EMIT], 0
je .L_0076
mov dword ptr [ebp-4], -1
jmp .L_0074
.L_0076:
.L_0075:
call EMITGASX86_CTOR
sub esp, 4
push 48
push 2048
lea eax, [EMIT+16]
push eax
call FLISTINIT
add esp, 16
sub esp, 4
push 68
push 6144
lea eax, [EMIT+72]
push eax
call FLISTINIT
add esp, 16
mov dword ptr [EMIT], -1
mov dword ptr [EMIT+4], 0
call dword ptr [EMIT+148]
mov dword ptr [ebp-4], eax
.L_0074:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITINIT, .-EMITINIT
.cfi_endproc
.balign 16

.globl EMITEND
EMITEND:
.type EMITEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0077:
cmp dword ptr [EMIT], 0
jne .L_007A
jmp .L_0078
.L_007A:
.L_0079:
call dword ptr [EMIT+152]
mov dword ptr [EMIT], 0
.L_0078:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITEND, .-EMITEND
.cfi_endproc
.balign 16

.globl EMITWRITESTR
EMITWRITESTR:
.type EMITWRITESTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_007B:
cmp dword ptr [ebp+12], 0
je .L_007E
sub esp, 12
push 0
push 2
push offset Lt_007F
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0084
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 32
jmp .L_007D
.L_007E:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0084
call fb_StrAssign
add esp, 32
.L_007D:
sub esp, 12
push 0
push 2
push offset Lt_0081
push -1
push offset Lt_0084
call fb_StrConcatAssign
add esp, 32
push -1
push offset Lt_0084
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
je .L_0083
.L_0083:
.L_0082:
.L_007C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITWRITESTR, .-EMITWRITESTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0084,12

.section .text
.balign 16

.globl EMITRESET
EMITRESET:
.type EMITRESET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0085:
sub esp, 12
lea eax, [EMIT+16]
push eax
call FLISTRESET
add esp, 16
sub esp, 12
lea eax, [EMIT+72]
push eax
call FLISTRESET
add esp, 16
mov dword ptr [EMIT+128], 0
mov dword ptr [Lt_008B], 0
.L_008A:
mov eax, dword ptr [Lt_008B]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov dword ptr [ebx+132], 0
.L_0088:
inc dword ptr [Lt_008B]
.L_0087:
cmp dword ptr [Lt_008B], 1
jle .L_008A
.L_0089:
.L_0086:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITRESET, .-EMITRESET
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_008B,4

.section .text
.balign 16

.globl EMITFLUSH
EMITFLUSH:
.type EMITFLUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00AB:
call HPEEPHOLEOPT
sub esp, 12
lea eax, [EMIT+16]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_00AD:
cmp dword ptr [ebp-4], 0
je .L_00AE
mov eax, dword ptr [ebp-4]
mov dword ptr [EMIT+128], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_00B0
.L_00B2:
jmp .L_00AF
.L_00B3:
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B4:
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B5:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B6:
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B7:
sub esp, 4
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B8:
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B9:
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [EMIT+236]
call dword ptr [ebx+532]
add esp, 16
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+8], 0
je .L_00BB
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
call free
add esp, 16
.L_00BB:
.L_00BA:
jmp .L_00AF
.L_00BC:
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
mov ebx, dword ptr [EMIT+236]
call dword ptr [ebx+536]
add esp, 48
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
call free
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call free
add esp, 16
jmp .L_00AF
.L_00BD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00BE:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
sal eax, 2
mov ebx, dword ptr [EMIT+236]
add ebx, eax
call dword ptr [ebx]
add esp, 16
jmp .L_00AF
.L_00B0:
cmp dword ptr [ebp-8], 10
ja .L_00AF
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_00BF+ebx*4]
.L_00BF:
.int .L_00B2
.int .L_00B3
.int .L_00B4
.int .L_00B5
.int .L_00B6
.int .L_00B7
.int .L_00B9
.int .L_00BC
.int .L_00B8
.int .L_00BD
.int .L_00BE
.L_00AF:
sub esp, 12
push dword ptr [ebp-4]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AD
.L_00AE:
.L_00AC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFLUSH, .-EMITFLUSH
.cfi_endproc
.balign 16

.globl EMITGETREGCLASS
EMITGETREGCLASS:
.type EMITGETREGCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C0:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITGETREGCLASS, .-EMITGETREGCLASS
.cfi_endproc
.balign 16

.globl EMITLOAD
EMITLOAD:
.type EMITLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E6
mov dword ptr [ebp-8], 24
jmp .L_0118
.L_00E6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0118:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_00E9
.L_00EB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00EC
mov dword ptr [ebp-16], 24
jmp .L_0119
.L_00EC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0119:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_00EF
.L_00F1:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 11
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00EE
.L_00F2:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 10
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00EE
.L_00F3:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 12
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00EE
.L_00F4:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00EE
.L_00EF:
cmp dword ptr [ebp-20], 10
ja .L_00F4
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00F5+eax*4]
.L_00F5:
.int .L_00F3
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F1
.int .L_00F1
.int .L_00F2
.int .L_00F2
.L_00EE:
jmp .L_00E8
.L_00F6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00F7
mov dword ptr [ebp-16], 24
jmp .L_011A
.L_00F7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011A:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_00FA
.L_00FC:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 7
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FD:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 6
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FE:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FF:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 5
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FA:
cmp dword ptr [ebp-20], 10
ja .L_00FF
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0100+eax*4]
.L_0100:
.int .L_00FE
.int .L_00FF
.int .L_00FF
.int .L_00FF
.int .L_00FF
.int .L_00FF
.int .L_00FF
.int .L_00FC
.int .L_00FC
.int .L_00FD
.int .L_00FD
.L_00F9:
jmp .L_00E8
.L_0101:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0102
mov dword ptr [ebp-16], 24
jmp .L_011B
.L_0102:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011B:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0105
.L_0107:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 15
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0104
.L_0108:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 14
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0104
.L_0109:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 16
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0104
.L_010A:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 13
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0104
.L_0105:
cmp dword ptr [ebp-20], 10
ja .L_010A
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_010B+eax*4]
.L_010B:
.int .L_0109
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_010A
.int .L_0107
.int .L_0107
.int .L_0108
.int .L_0108
.L_0104:
jmp .L_00E8
.L_010C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_010D
mov dword ptr [ebp-16], 24
jmp .L_011C
.L_010D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_011C:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0110
.L_0112:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0113:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 2
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0114:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 4
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0115:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010F
.L_0110:
cmp dword ptr [ebp-20], 10
ja .L_0115
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0116+eax*4]
.L_0116:
.int .L_0114
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0115
.int .L_0112
.int .L_0112
.int .L_0113
.int .L_0113
.L_010F:
jmp .L_00E8
.L_00E9:
cmp dword ptr [ebp-12], 10
ja .L_010C
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0117+eax*4]
.L_0117:
.int .L_0101
.int .L_010C
.int .L_010C
.int .L_010C
.int .L_010C
.int .L_010C
.int .L_010C
.int .L_00EB
.int .L_00EB
.int .L_00F6
.int .L_00F6
.L_00E8:
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITLOAD, .-EMITLOAD
.cfi_endproc
.balign 16

.globl EMITSTORE
EMITSTORE:
.type EMITSTORE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_011F
mov dword ptr [ebp-8], 24
jmp .L_0151
.L_011F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0151:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0122
.L_0124:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0125
mov dword ptr [ebp-16], 24
jmp .L_0152
.L_0125:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0152:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+20]
mov dword ptr [ebp-20], eax
jmp .L_0128
.L_012A:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 27
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0127
.L_012B:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 26
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0127
.L_012C:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0127
.L_012D:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 25
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0127
.L_0128:
cmp dword ptr [ebp-20], 10
ja .L_012D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_012E+eax*4]
.L_012E:
.int .L_012C
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012A
.int .L_012A
.int .L_012B
.int .L_012B
.L_0127:
jmp .L_0121
.L_012F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0130
mov dword ptr [ebp-16], 24
jmp .L_0153
.L_0130:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0153:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0133
.L_0135:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 23
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0132
.L_0136:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 22
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0132
.L_0137:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 24
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0132
.L_0138:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 21
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0132
.L_0133:
cmp dword ptr [ebp-20], 10
ja .L_0138
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0139+eax*4]
.L_0139:
.int .L_0137
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0135
.int .L_0135
.int .L_0136
.int .L_0136
.L_0132:
jmp .L_0121
.L_013A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_013B
mov dword ptr [ebp-16], 24
jmp .L_0154
.L_013B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0154:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_013E
.L_0140:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 31
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_0141:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 30
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_0142:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 32
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_0143:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 29
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013D
.L_013E:
cmp dword ptr [ebp-20], 10
ja .L_0143
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0144+eax*4]
.L_0144:
.int .L_0142
.int .L_0143
.int .L_0143
.int .L_0143
.int .L_0143
.int .L_0143
.int .L_0143
.int .L_0140
.int .L_0140
.int .L_0141
.int .L_0141
.L_013D:
jmp .L_0121
.L_0145:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0146
mov dword ptr [ebp-16], 24
jmp .L_0155
.L_0146:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0155:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-20], ebx
jmp .L_0149
.L_014B:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 19
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0148
.L_014C:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 18
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0148
.L_014D:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 20
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0148
.L_014E:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 17
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0148
.L_0149:
cmp dword ptr [ebp-20], 10
ja .L_014E
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_014F+eax*4]
.L_014F:
.int .L_014D
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014E
.int .L_014B
.int .L_014B
.int .L_014C
.int .L_014C
.L_0148:
jmp .L_0121
.L_0122:
cmp dword ptr [ebp-12], 10
ja .L_0145
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0150+eax*4]
.L_0150:
.int .L_013A
.int .L_0145
.int .L_0145
.int .L_0145
.int .L_0145
.int .L_0145
.int .L_0145
.int .L_0124
.int .L_0124
.int .L_012F
.int .L_012F
.L_0121:
.L_011E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSTORE, .-EMITSTORE
.cfi_endproc
.balign 16

.globl EMITMOV
EMITMOV:
.type EMITMOV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0156:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0158
mov dword ptr [ebp-8], 24
jmp .L_0161
.L_0158:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0161:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_015B
.L_015D:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 35
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_015A
.L_015E:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 34
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_015A
.L_015F:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 33
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_015A
.L_015B:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_015F
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0160+eax*4-28]
.L_0160:
.int .L_015D
.int .L_015D
.int .L_015E
.int .L_015E
.L_015A:
.L_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMOV, .-EMITMOV
.cfi_endproc
.balign 16

.globl EMITADD
EMITADD:
.type EMITADD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0162:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0164
mov dword ptr [ebp-8], 24
jmp .L_016D
.L_0164:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_016D:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0167
.L_0169:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 38
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_016A:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 37
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_016B:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_0167:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_016B
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_016C+eax*4-28]
.L_016C:
.int .L_0169
.int .L_0169
.int .L_016A
.int .L_016A
.L_0166:
.L_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITADD, .-EMITADD
.cfi_endproc
.balign 16

.globl EMITSUB
EMITSUB:
.type EMITSUB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_016E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0170
mov dword ptr [ebp-8], 24
jmp .L_0179
.L_0170:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0179:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_0173
.L_0175:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0172
.L_0176:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 40
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0172
.L_0177:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 39
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0172
.L_0173:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_0177
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0178+eax*4-28]
.L_0178:
.int .L_0175
.int .L_0175
.int .L_0176
.int .L_0176
.L_0172:
.L_016F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSUB, .-EMITSUB
.cfi_endproc
.balign 16

.globl EMITMUL
EMITMUL:
.type EMITMUL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_017A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_017C
mov dword ptr [ebp-8], 24
jmp .L_0185
.L_017C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0185:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_017F
.L_0181:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 44
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017E
.L_0182:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 43
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017E
.L_0183:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017E
.L_017F:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_0183
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0184+eax*4-28]
.L_0184:
.int .L_0181
.int .L_0181
.int .L_0182
.int .L_0182
.L_017E:
.L_017B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMUL, .-EMITMUL
.cfi_endproc
.balign 16

.globl EMITDIV
EMITDIV:
.type EMITDIV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0186:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 46
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0187:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDIV, .-EMITDIV
.cfi_endproc
.balign 16

.globl EMITINTDIV
EMITINTDIV:
.type EMITINTDIV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0188:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 45
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0189:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITINTDIV, .-EMITINTDIV
.cfi_endproc
.balign 16

.globl EMITMOD
EMITMOD:
.type EMITMOD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_018A:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 48
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_018B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMOD, .-EMITMOD
.cfi_endproc
.balign 16

.globl EMITSHL
EMITSHL:
.type EMITSHL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_018E
mov dword ptr [ebp-8], 24
jmp .L_0196
.L_018E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0196:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0193
.L_0194:
cmp dword ptr [ebp-12], 8
jne .L_0192
.L_0193:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 52
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0190
.L_0192:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 51
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0195:
.L_0190:
.L_018D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSHL, .-EMITSHL
.cfi_endproc
.balign 16

.globl EMITSHR
EMITSHR:
.type EMITSHR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0197:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0199
mov dword ptr [ebp-8], 24
jmp .L_01A1
.L_0199:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01A1:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_019E
.L_019F:
cmp dword ptr [ebp-12], 8
jne .L_019D
.L_019E:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 54
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_019B
.L_019D:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 53
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01A0:
.L_019B:
.L_0198:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSHR, .-EMITSHR
.cfi_endproc
.balign 16

.globl EMITAND
EMITAND:
.type EMITAND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01A4
mov dword ptr [ebp-8], 24
jmp .L_01AC
.L_01A4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01AC:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01A9
.L_01AA:
cmp dword ptr [ebp-12], 8
jne .L_01A8
.L_01A9:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 56
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01A6
.L_01A8:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 55
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01AB:
.L_01A6:
.L_01A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITAND, .-EMITAND
.cfi_endproc
.balign 16

.globl EMITOR
EMITOR:
.type EMITOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01AF
mov dword ptr [ebp-8], 24
jmp .L_01B7
.L_01AF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01B7:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01B4
.L_01B5:
cmp dword ptr [ebp-12], 8
jne .L_01B3
.L_01B4:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 58
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01B1
.L_01B3:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 57
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01B6:
.L_01B1:
.L_01AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITOR, .-EMITOR
.cfi_endproc
.balign 16

.globl EMITXOR
EMITXOR:
.type EMITXOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01BA
mov dword ptr [ebp-8], 24
jmp .L_01C2
.L_01BA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01C2:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01BF
.L_01C0:
cmp dword ptr [ebp-12], 8
jne .L_01BE
.L_01BF:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 60
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01BC
.L_01BE:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 59
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01C1:
.L_01BC:
.L_01B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITXOR, .-EMITXOR
.cfi_endproc
.balign 16

.globl EMITEQV
EMITEQV:
.type EMITEQV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01C5
mov dword ptr [ebp-8], 24
jmp .L_01CD
.L_01C5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01CD:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01CA
.L_01CB:
cmp dword ptr [ebp-12], 8
jne .L_01C9
.L_01CA:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 62
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C7
.L_01C9:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 61
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01CC:
.L_01C7:
.L_01C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITEQV, .-EMITEQV
.cfi_endproc
.balign 16

.globl EMITIMP
EMITIMP:
.type EMITIMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01D0
mov dword ptr [ebp-8], 24
jmp .L_01D8
.L_01D0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01D8:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01D5
.L_01D6:
cmp dword ptr [ebp-12], 8
jne .L_01D4
.L_01D5:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 64
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01D2
.L_01D4:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 63
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01D7:
.L_01D2:
.L_01CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITIMP, .-EMITIMP
.cfi_endproc
.balign 16

.globl EMITATN2
EMITATN2:
.type EMITATN2, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01D9:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 65
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01DA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITATN2, .-EMITATN2
.cfi_endproc
.balign 16

.globl EMITPOW
EMITPOW:
.type EMITPOW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01DB:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 66
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPOW, .-EMITPOW
.cfi_endproc
.balign 16

.globl EMITADDROF
EMITADDROF:
.type EMITADDROF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01DD:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 67
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITADDROF, .-EMITADDROF
.cfi_endproc
.balign 16

.globl EMITDEREF
EMITDEREF:
.type EMITDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01DF:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 68
call HNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_01E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDEREF, .-EMITDEREF
.cfi_endproc
.balign 16

.globl EMITGT
EMITGT:
.type EMITGT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01E1:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01E3
mov dword ptr [ebp-8], 24
jmp .L_01EE
.L_01E3:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01EE:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01E8
.L_01E9:
cmp dword ptr [ebp-12], 8
jne .L_01E7
.L_01E8:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 71
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01E5
.L_01E7:
cmp dword ptr [ebp-12], 9
je .L_01EB
.L_01EC:
cmp dword ptr [ebp-12], 10
jne .L_01EA
.L_01EB:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 70
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01E5
.L_01EA:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 69
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_01ED:
.L_01E5:
.L_01E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITGT, .-EMITGT
.cfi_endproc
.balign 16

.globl EMITLT
EMITLT:
.type EMITLT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01EF:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01F1
mov dword ptr [ebp-8], 24
jmp .L_01FC
.L_01F1:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_01FC:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_01F6
.L_01F7:
cmp dword ptr [ebp-12], 8
jne .L_01F5
.L_01F6:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 74
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01F3
.L_01F5:
cmp dword ptr [ebp-12], 9
je .L_01F9
.L_01FA:
cmp dword ptr [ebp-12], 10
jne .L_01F8
.L_01F9:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 73
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01F3
.L_01F8:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 72
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_01FB:
.L_01F3:
.L_01F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITLT, .-EMITLT
.cfi_endproc
.balign 16

.globl EMITEQ
EMITEQ:
.type EMITEQ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01FD:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01FF
mov dword ptr [ebp-8], 24
jmp .L_020A
.L_01FF:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_020A:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0204
.L_0205:
cmp dword ptr [ebp-12], 8
jne .L_0203
.L_0204:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 77
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0201
.L_0203:
cmp dword ptr [ebp-12], 9
je .L_0207
.L_0208:
cmp dword ptr [ebp-12], 10
jne .L_0206
.L_0207:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 76
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0201
.L_0206:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 75
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_0209:
.L_0201:
.L_01FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITEQ, .-EMITEQ
.cfi_endproc
.balign 16

.globl EMITNE
EMITNE:
.type EMITNE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_020B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_020D
mov dword ptr [ebp-8], 24
jmp .L_0218
.L_020D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0218:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0212
.L_0213:
cmp dword ptr [ebp-12], 8
jne .L_0211
.L_0212:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 80
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_020F
.L_0211:
cmp dword ptr [ebp-12], 9
je .L_0215
.L_0216:
cmp dword ptr [ebp-12], 10
jne .L_0214
.L_0215:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 79
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_020F
.L_0214:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 78
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_0217:
.L_020F:
.L_020C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITNE, .-EMITNE
.cfi_endproc
.balign 16

.globl EMITGE
EMITGE:
.type EMITGE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0219:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_021B
mov dword ptr [ebp-8], 24
jmp .L_0226
.L_021B:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0226:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0220
.L_0221:
cmp dword ptr [ebp-12], 8
jne .L_021F
.L_0220:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_021D
.L_021F:
cmp dword ptr [ebp-12], 9
je .L_0223
.L_0224:
cmp dword ptr [ebp-12], 10
jne .L_0222
.L_0223:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_021D
.L_0222:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 81
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_0225:
.L_021D:
.L_021A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITGE, .-EMITGE
.cfi_endproc
.balign 16

.globl EMITLE
EMITLE:
.type EMITLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0227:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0229
mov dword ptr [ebp-8], 24
jmp .L_0234
.L_0229:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0234:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_022E
.L_022F:
cmp dword ptr [ebp-12], 8
jne .L_022D
.L_022E:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 86
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_022B
.L_022D:
cmp dword ptr [ebp-12], 9
je .L_0231
.L_0232:
cmp dword ptr [ebp-12], 10
jne .L_0230
.L_0231:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 85
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_022B
.L_0230:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call HNEWREL
add esp, 32
mov dword ptr [ebp-4], eax
.L_0233:
.L_022B:
.L_0228:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITLE, .-EMITLE
.cfi_endproc
.balign 16

.globl EMITNEG
EMITNEG:
.type EMITNEG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0235:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0237
mov dword ptr [ebp-8], 24
jmp .L_0242
.L_0237:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0242:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_023C
.L_023D:
cmp dword ptr [ebp-12], 8
jne .L_023B
.L_023C:
sub esp, 8
push dword ptr [ebp+8]
push 89
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0239
.L_023B:
cmp dword ptr [ebp-12], 9
je .L_023F
.L_0240:
cmp dword ptr [ebp-12], 10
jne .L_023E
.L_023F:
sub esp, 8
push dword ptr [ebp+8]
push 88
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0239
.L_023E:
sub esp, 8
push dword ptr [ebp+8]
push 87
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0241:
.L_0239:
.L_0236:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITNEG, .-EMITNEG
.cfi_endproc
.balign 16

.globl EMITNOT
EMITNOT:
.type EMITNOT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0243:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0245
mov dword ptr [ebp-8], 24
jmp .L_024D
.L_0245:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_024D:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_024A
.L_024B:
cmp dword ptr [ebp-12], 8
jne .L_0249
.L_024A:
sub esp, 8
push dword ptr [ebp+8]
push 91
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0247
.L_0249:
sub esp, 8
push dword ptr [ebp+8]
push 90
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_024C:
.L_0247:
.L_0244:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITNOT, .-EMITNOT
.cfi_endproc
.balign 16

.globl EMITHADD
EMITHADD:
.type EMITHADD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_024E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0250
mov dword ptr [ebp-8], 24
jmp .L_0258
.L_0250:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0258:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 9
je .L_0255
.L_0256:
cmp dword ptr [ebp-12], 10
jne .L_0254
.L_0255:
sub esp, 8
push dword ptr [ebp+8]
push 92
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0254:
.L_0257:
.L_0252:
.L_024F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITHADD, .-EMITHADD
.cfi_endproc
.balign 16

.globl EMITABS
EMITABS:
.type EMITABS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0259:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_025B
mov dword ptr [ebp-8], 24
jmp .L_0266
.L_025B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0266:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_0260
.L_0261:
cmp dword ptr [ebp-12], 8
jne .L_025F
.L_0260:
sub esp, 8
push dword ptr [ebp+8]
push 95
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_025D
.L_025F:
cmp dword ptr [ebp-12], 9
je .L_0263
.L_0264:
cmp dword ptr [ebp-12], 10
jne .L_0262
.L_0263:
sub esp, 8
push dword ptr [ebp+8]
push 94
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_025D
.L_0262:
sub esp, 8
push dword ptr [ebp+8]
push 93
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0265:
.L_025D:
.L_025A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITABS, .-EMITABS
.cfi_endproc
.balign 16

.globl EMITSGN
EMITSGN:
.type EMITSGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0267:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0269
mov dword ptr [ebp-8], 24
jmp .L_0274
.L_0269:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0274:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
je .L_026E
.L_026F:
cmp dword ptr [ebp-12], 8
jne .L_026D
.L_026E:
sub esp, 8
push dword ptr [ebp+8]
push 98
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_026B
.L_026D:
cmp dword ptr [ebp-12], 9
je .L_0271
.L_0272:
cmp dword ptr [ebp-12], 10
jne .L_0270
.L_0271:
sub esp, 8
push dword ptr [ebp+8]
push 97
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_026B
.L_0270:
sub esp, 8
push dword ptr [ebp+8]
push 96
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0273:
.L_026B:
.L_0268:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSGN, .-EMITSGN
.cfi_endproc
.balign 16

.globl EMITFIX
EMITFIX:
.type EMITFIX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0275:
sub esp, 8
push dword ptr [ebp+8]
push 99
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0276:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFIX, .-EMITFIX
.cfi_endproc
.balign 16

.globl EMITFRAC
EMITFRAC:
.type EMITFRAC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0277:
sub esp, 8
push dword ptr [ebp+8]
push 100
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0278:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFRAC, .-EMITFRAC
.cfi_endproc
.balign 16

.globl EMITCONVFD2FS
EMITCONVFD2FS:
.type EMITCONVFD2FS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0279:
sub esp, 8
push dword ptr [ebp+8]
push 101
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_027A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITCONVFD2FS, .-EMITCONVFD2FS
.cfi_endproc
.balign 16

.globl EMITSIN
EMITSIN:
.type EMITSIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_027B:
sub esp, 8
push dword ptr [ebp+8]
push 103
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_027C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSIN, .-EMITSIN
.cfi_endproc
.balign 16

.globl EMITASIN
EMITASIN:
.type EMITASIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_027D:
sub esp, 8
push dword ptr [ebp+8]
push 104
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_027E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITASIN, .-EMITASIN
.cfi_endproc
.balign 16

.globl EMITCOS
EMITCOS:
.type EMITCOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_027F:
sub esp, 8
push dword ptr [ebp+8]
push 105
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0280:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITCOS, .-EMITCOS
.cfi_endproc
.balign 16

.globl EMITACOS
EMITACOS:
.type EMITACOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0281:
sub esp, 8
push dword ptr [ebp+8]
push 106
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0282:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITACOS, .-EMITACOS
.cfi_endproc
.balign 16

.globl EMITTAN
EMITTAN:
.type EMITTAN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0283:
sub esp, 8
push dword ptr [ebp+8]
push 107
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0284:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITTAN, .-EMITTAN
.cfi_endproc
.balign 16

.globl EMITATAN
EMITATAN:
.type EMITATAN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0285:
sub esp, 8
push dword ptr [ebp+8]
push 108
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0286:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITATAN, .-EMITATAN
.cfi_endproc
.balign 16

.globl EMITSQRT
EMITSQRT:
.type EMITSQRT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0287:
sub esp, 8
push dword ptr [ebp+8]
push 109
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0288:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSQRT, .-EMITSQRT
.cfi_endproc
.balign 16

.globl EMITRSQRT
EMITRSQRT:
.type EMITRSQRT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0289:
sub esp, 8
push dword ptr [ebp+8]
push 110
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_028A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITRSQRT, .-EMITRSQRT
.cfi_endproc
.balign 16

.globl EMITRCP
EMITRCP:
.type EMITRCP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_028B:
sub esp, 8
push dword ptr [ebp+8]
push 111
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_028C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITRCP, .-EMITRCP
.cfi_endproc
.balign 16

.globl EMITLOG
EMITLOG:
.type EMITLOG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_028D:
sub esp, 8
push dword ptr [ebp+8]
push 112
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_028E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITLOG, .-EMITLOG
.cfi_endproc
.balign 16

.globl EMITEXP
EMITEXP:
.type EMITEXP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_028F:
sub esp, 8
push dword ptr [ebp+8]
push 113
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0290:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITEXP, .-EMITEXP
.cfi_endproc
.balign 16

.globl EMITFLOOR
EMITFLOOR:
.type EMITFLOOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0291:
sub esp, 8
push dword ptr [ebp+8]
push 114
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0292:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFLOOR, .-EMITFLOOR
.cfi_endproc
.balign 16

.globl EMITXCHGTOS
EMITXCHGTOS:
.type EMITXCHGTOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0293:
sub esp, 8
push dword ptr [ebp+8]
push 115
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0294:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITXCHGTOS, .-EMITXCHGTOS
.cfi_endproc
.balign 16

.globl EMITSWZREP
EMITSWZREP:
.type EMITSWZREP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0295:
sub esp, 8
push dword ptr [ebp+8]
push 102
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_0296:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSWZREP, .-EMITSWZREP
.cfi_endproc
.balign 16

.globl EMITSTACKALIGN
EMITSTACKALIGN:
.type EMITSTACKALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_0297:
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], eax
sub esp, 4
push 0
lea ebx, [ebp-72]
push ebx
push 116
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
.L_0298:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSTACKALIGN, .-EMITSTACKALIGN
.cfi_endproc
.balign 16

.globl EMITPUSH
EMITPUSH:
.type EMITPUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0299:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_029B
mov dword ptr [ebp-8], 24
jmp .L_02A4
.L_029B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_02A4:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_029E
.L_02A0:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 119
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_029D
.L_02A1:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 118
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_029D
.L_02A2:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 117
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_029D
.L_029E:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_02A2
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_02A3+eax*4-28]
.L_02A3:
.int .L_02A0
.int .L_02A0
.int .L_02A1
.int .L_02A1
.L_029D:
.L_029A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPUSH, .-EMITPUSH
.cfi_endproc
.balign 16

.globl EMITPOP
EMITPOP:
.type EMITPOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_02A7
mov dword ptr [ebp-8], 24
jmp .L_02B0
.L_02A7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_02B0:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .L_02AA
.L_02AC:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 122
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02A9
.L_02AD:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 121
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02A9
.L_02AE:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 120
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02A9
.L_02AA:
mov eax, dword ptr [ebp-12]
add eax, 4294967289
cmp eax, 3
ja .L_02AE
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_02AF+eax*4-28]
.L_02AF:
.int .L_02AC
.int .L_02AC
.int .L_02AD
.int .L_02AD
.L_02A9:
.L_02A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPOP, .-EMITPOP
.cfi_endproc
.balign 16

.globl EMITPUSHUDT
EMITPUSHUDT:
.type EMITPUSHUDT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02B1:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 123
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
.L_02B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPUSHUDT, .-EMITPUSHUDT
.cfi_endproc
.balign 16

.globl EMITPOPST0
EMITPOPST0:
.type EMITPOPST0, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02B3:
sub esp, 4
push 0
push 0
push 124
call HNEWSTK
add esp, 16
mov dword ptr [ebp-4], eax
.L_02B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPOPST0, .-EMITPOPST0
.cfi_endproc
.balign 16

.globl EMITCOMMENT
EMITCOMMENT:
.type EMITCOMMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02B5:
sub esp, 8
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_02B7
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HNEWLIT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_02B6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITCOMMENT, .-EMITCOMMENT
.cfi_endproc
.balign 16

.globl EMITASM
EMITASM:
.type EMITASM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_02BA:
sub esp, 8
push -1
push dword ptr [ebp+8]
call HNEWLIT
add esp, 16
mov dword ptr [ebp-4], 0
.L_02BF:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov dword ptr [ebx+132], -1
.L_02BD:
inc dword ptr [ebp-4]
.L_02BC:
cmp dword ptr [ebp-4], 1
jle .L_02BF
.L_02BE:
.L_02BB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITASM, .-EMITASM
.cfi_endproc
.balign 16

.globl EMITJMPTB
EMITJMPTB:
.type EMITJMPTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_02C0:
sub esp, 8
push 1
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ebx, eax
push ebx
call calloc
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 1
mov eax, dword ptr [ebp+20]
sal eax, 2
mov ebx, eax
push ebx
call calloc
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_02C3
.L_02C6:
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
.L_02C4:
inc dword ptr [ebp-20]
.L_02C3:
mov esi, dword ptr [ebp-24]
cmp dword ptr [ebp-20], esi
jle .L_02C6
.L_02C5:
sub esp, 8
push 0
push 7
call HNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+4], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [esi+8], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp-16]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [esi+16], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebp+24]
mov dword ptr [eax+20], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+32]
mov dword ptr [esi+24], ecx
mov dword ptr [esi+28], eax
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ebp+36]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+32], esi
mov dword ptr [ecx+36], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.L_02C1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITJMPTB, .-EMITJMPTB
.cfi_endproc
.balign 16

.globl EMITCALL
EMITCALL:
.type EMITCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02C7:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 125
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.L_02C8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITCALL, .-EMITCALL
.cfi_endproc
.balign 16

.globl EMITCALLPTR
EMITCALLPTR:
.type EMITCALLPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02C9:
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 126
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.L_02CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITCALLPTR, .-EMITCALLPTR
.cfi_endproc
.balign 16

.globl EMITBRANCH
EMITBRANCH:
.type EMITBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02CB:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push 0
push 127
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.L_02CC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITBRANCH, .-EMITBRANCH
.cfi_endproc
.balign 16

.globl EMITJUMP
EMITJUMP:
.type EMITJUMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02CD:
push 0
push dword ptr [ebp+8]
push 0
push 128
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.L_02CE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITJUMP, .-EMITJUMP
.cfi_endproc
.balign 16

.globl EMITJUMPPTR
EMITJUMPPTR:
.type EMITJUMPPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02CF:
push 0
push 0
push dword ptr [ebp+8]
push 129
call HNEWBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITJUMPPTR, .-EMITJUMPPTR
.cfi_endproc
.balign 16

.globl EMITRET
EMITRET:
.type EMITRET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_02D1:
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp+8]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], eax
sub esp, 8
lea ebx, [ebp-72]
push ebx
push 130
call HNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITRET, .-EMITRET
.cfi_endproc
.balign 16

.globl EMITLABEL
EMITLABEL:
.type EMITLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02D3:
sub esp, 8
push dword ptr [ebp+8]
push 131
call HNEWSYMOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITLABEL, .-EMITLABEL
.cfi_endproc
.balign 16

.globl EMITPUBLIC
EMITPUBLIC:
.type EMITPUBLIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02D5:
sub esp, 8
push dword ptr [ebp+8]
push 132
call HNEWSYMOP
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITPUBLIC, .-EMITPUBLIC
.cfi_endproc
.balign 16

.globl EMITMEMMOVE
EMITMEMMOVE:
.type EMITMEMMOVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02D7:
sub esp, 12
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 135
call HNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_02D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMEMMOVE, .-EMITMEMMOVE
.cfi_endproc
.balign 16

.globl EMITMEMSWAP
EMITMEMSWAP:
.type EMITMEMSWAP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02D9:
sub esp, 12
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 136
call HNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_02DA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMEMSWAP, .-EMITMEMSWAP
.cfi_endproc
.balign 16

.globl EMITMEMCLEAR
EMITMEMCLEAR:
.type EMITMEMCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02DB:
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 137
call HNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_02DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITMEMCLEAR, .-EMITMEMCLEAR
.cfi_endproc
.balign 16

.globl EMITSTKCLEAR
EMITSTKCLEAR:
.type EMITSTKCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02DD:
sub esp, 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
push 138
call HNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_02DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITSTKCLEAR, .-EMITSTKCLEAR
.cfi_endproc
.balign 16

.globl EMITDBGLINEBEGIN
EMITDBGLINEBEGIN:
.type EMITDBGLINEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02DF:
sub esp, 12
push dword ptr [ebp+16]
push dword ptr [EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 139
call HNEWDBG
add esp, 32
mov dword ptr [ebp-4], eax
.L_02E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDBGLINEBEGIN, .-EMITDBGLINEBEGIN
.cfi_endproc
.balign 16

.globl EMITDBGLINEEND
EMITDBGLINEEND:
.type EMITDBGLINEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02E1:
sub esp, 12
push 0
push dword ptr [EMIT+4]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 140
call HNEWDBG
add esp, 32
mov dword ptr [ebp-4], eax
.L_02E2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDBGLINEEND, .-EMITDBGLINEEND
.cfi_endproc
.balign 16

.globl EMITDBGSCOPEBEGIN
EMITDBGSCOPEBEGIN:
.type EMITDBGSCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02E3:
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp+8]
push 141
call HNEWDBG
add esp, 32
mov dword ptr [ebp-4], eax
.L_02E4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDBGSCOPEBEGIN, .-EMITDBGSCOPEBEGIN
.cfi_endproc
.balign 16

.globl EMITDBGSCOPEEND
EMITDBGSCOPEEND:
.type EMITDBGSCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02E5:
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp+8]
push 142
call HNEWDBG
add esp, 32
mov dword ptr [ebp-4], eax
.L_02E6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITDBGSCOPEEND, .-EMITDBGSCOPEEND
.cfi_endproc
.balign 16
fb_ctor__emit:
.type fb_ctor__emit, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__emit, .-fb_ctor__emit
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
HOPTSYMOP:
.type HOPTSYMOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 131
jne .L_0090
.L_0091:
cmp dword ptr [ebp+8], 0
je .L_0093
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 5
jne .L_0095
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 127
je .L_0099
.L_009A:
cmp dword ptr [ebp-12], 128
jne .L_0098
.L_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
cmp dword ptr [eax+12], ecx
jne .L_009C
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 0
.L_009C:
.L_009B:
.L_0098:
.L_0096:
.L_0095:
.L_0094:
.L_0093:
.L_0092:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_008D
.L_0090:
.L_008E:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
.L_008D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HOPTSYMOP, .-HOPTSYMOP
.cfi_endproc
.balign 16
HPEEPHOLEOPT:
.type HPEEPHOLEOPT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_009D:
mov dword ptr [ebp-8], 0
sub esp, 12
lea eax, [EMIT+16]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_009F:
cmp dword ptr [ebp-4], 0
je .L_00A0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_00A2
.L_00A4:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HOPTSYMOP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A5:
jmp .L_00A1
.L_00A6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .L_00A8
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_00A8:
.L_00A7:
jmp .L_00A1
.L_00A9:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A2:
mov eax, dword ptr [ebp-12]
add eax, 4294967290
cmp eax, 4
ja .L_00A9
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00AA+eax*4-24]
.L_00AA:
.int .L_00A6
.int .L_00A9
.int .L_00A4
.int .L_00A9
.int .L_00A5
.L_00A1:
sub esp, 12
push dword ptr [ebp-4]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_009F
.L_00A0:
.L_009E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPEEPHOLEOPT, .-HPEEPHOLEOPT
.cfi_endproc
.balign 16
HNEWVR:
.type HNEWVR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00C2:
cmp dword ptr [ebp+8], 0
jne .L_00C5
mov dword ptr [ebp-4], 0
jmp .L_00C3
.L_00C5:
.L_00C4:
sub esp, 12
lea eax, [EMIT+72]
push eax
call FLISTNEWITEM
add esp, 16
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
mov esi, dword ptr [ecx+36]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebx+36], esi
mov dword ptr [ebx+40], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [esi+44]
mov dword ptr [eax+44], ebx
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
jne .L_00C7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C8
mov dword ptr [ebp-16], 24
jmp .L_02E7
.L_00C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_02E7:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-12], ebx
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebx+8]
call dword ptr [eax+40]
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, dword ptr [ebp-8]
mov esi, 1
mov cl, byte ptr [eax+12]
sal esi, cl
or dword ptr [ebx+132], esi
.L_00C7:
.L_00C6:
sub esp, 12
mov esi, dword ptr [ebp+8]
push dword ptr [esi+52]
call HNEWVR
add esp, 16
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+52], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call HNEWVR
add esp, 16
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+48], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C3:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWVR, .-HNEWVR
.cfi_endproc
.balign 16
HNEWNODE:
.type HNEWNODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CA:
sub esp, 12
lea eax, [EMIT+16]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [Lt_02E8], eax
mov eax, dword ptr [Lt_02E8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [Lt_02E9], 0
.L_00CF:
mov ebx, dword ptr [Lt_02E9]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
mov eax, dword ptr [Lt_02E9]
sal eax, 2
mov ecx, dword ptr [Lt_02E8]
add ecx, eax
mov eax, dword ptr [ebx+136]
mov dword ptr [ecx+40], eax
.L_00CD:
inc dword ptr [Lt_02E9]
.L_00CC:
cmp dword ptr [Lt_02E9], 1
jle .L_00CF
.L_00CE:
cmp dword ptr [ebp+12], 0
je .L_00D1
inc dword ptr [EMIT+4]
.L_00D1:
.L_00D0:
mov eax, dword ptr [Lt_02E8]
mov dword ptr [ebp-4], eax
.L_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWNODE, .-HNEWNODE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02E8,4
.balign 4
	.lcomm	Lt_02E9,4

.section .text
.balign 16
HNEWBOP:
.type HNEWBOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D2:
sub esp, 8
push -1
push 1
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02EA], eax
mov eax, dword ptr [Lt_02EA]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EA]
mov dword ptr [ebx+8], eax
sub esp, 12
push dword ptr [ebp+16]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EA]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_02EA]
mov dword ptr [ebp-4], eax
.L_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWBOP, .-HNEWBOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EA,4

.section .text
.balign 16
HNEWUOP:
.type HNEWUOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D4:
sub esp, 8
push -1
push 2
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02EB], eax
mov eax, dword ptr [Lt_02EB]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EB]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02EB]
mov dword ptr [ebp-4], eax
.L_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWUOP, .-HNEWUOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EB,4

.section .text
.balign 16
HNEWREL:
.type HNEWREL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D6:
sub esp, 8
push -1
push 3
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02EC], eax
mov eax, dword ptr [Lt_02EC]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EC]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02EC]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
sub esp, 12
push dword ptr [ebp+20]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EC]
mov dword ptr [ebx+16], eax
sub esp, 12
push dword ptr [ebp+24]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EC]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_02EC]
mov dword ptr [ebp-4], eax
.L_00D7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWREL, .-HNEWREL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EC,4

.section .text
.balign 16
HNEWSTK:
.type HNEWSTK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D8:
sub esp, 8
push -1
push 4
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02ED], eax
mov eax, dword ptr [Lt_02ED]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02ED]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02ED]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [Lt_02ED]
mov dword ptr [ebp-4], ebx
.L_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWSTK, .-HNEWSTK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02ED,4

.section .text
.balign 16
HNEWBRANCH:
.type HNEWBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DA:
sub esp, 8
push -1
push 5
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02EE], eax
mov eax, dword ptr [Lt_02EE]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_02EE]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02EE]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02EE]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [Lt_02EE]
mov dword ptr [ebp-4], ebx
.L_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWBRANCH, .-HNEWBRANCH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EE,4

.section .text
.balign 16
HNEWSYMOP:
.type HNEWSYMOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
sub esp, 8
push 0
push 8
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02EF], eax
mov eax, dword ptr [Lt_02EF]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_02EF]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02EF]
mov dword ptr [ebp-4], eax
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWSYMOP, .-HNEWSYMOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EF,4

.section .text
.balign 16
HNEWLIT:
.type HNEWLIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00DE:
sub esp, 8
push dword ptr [ebp+12]
push 6
call HNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+8], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call fb_StrAssign
add esp, 32
.L_00DF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWLIT, .-HNEWLIT
.cfi_endproc
.balign 16
HNEWMEM:
.type HNEWMEM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
sub esp, 8
push -1
push 9
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02F0], eax
mov eax, dword ptr [Lt_02F0]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 12
push dword ptr [ebp+12]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02F0]
mov dword ptr [ebx+8], eax
sub esp, 12
push dword ptr [ebp+16]
call HNEWVR
add esp, 16
mov ebx, dword ptr [Lt_02F0]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_02F0]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [Lt_02F0]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_02F0]
mov dword ptr [ebp-4], eax
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWMEM, .-HNEWMEM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02F0,4

.section .text
.balign 16
HNEWDBG:
.type HNEWDBG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E2:
sub esp, 8
push 0
push 10
call HNEWNODE
add esp, 16
mov dword ptr [Lt_02F1], eax
mov eax, dword ptr [Lt_02F1]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_02F1]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02F1]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [Lt_02F1]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [Lt_02F1]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [Lt_02F1]
mov dword ptr [ebp-4], ebx
.L_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWDBG, .-HNEWDBG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02F1,4
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl EMIT
.balign 4
	.lcomm	EMIT,240
.balign 4
	.lcomm	Lt_0072,36

.section .rodata
.balign 4
Lt_007F:	.ascii	"\t\0"
.balign 4
Lt_0081:	.ascii	"\n\0"
.balign 4
Lt_02B7:	.ascii	"##\0"

.section .ctors, "aw", @progbits
.int fb_ctor__emit
