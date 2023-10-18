	.intel_syntax noprefix

.section .text
.balign 16

.globl _HISREGFREE
_HISREGFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
cmp dword ptr [ebp+8], 0
jne .L_009C
cmp dword ptr [ebp+12], 4
je .L_009F
.L_00A0:
cmp dword ptr [ebp+12], 2
je .L_009F
.L_00A1:
cmp dword ptr [ebp+12], 1
jne .L_009E
.L_009F:
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [_EMIT+132]
test eax, eax
jne .L_00A3
mov dword ptr [ebp-4], 0
jmp .L_009A
.L_00A3:
.L_00A2:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+132], eax
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, dword ptr [_EMIT+128]
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [ebx+40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFINDREGNOTINVREG
_HFINDREGNOTINVREG:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .L_00A9
.L_00AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-24], 2
je .L_00AC
.L_00AD:
cmp dword ptr [ebp-24], 3
jne .L_00AB
.L_00AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00B1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AB:
.L_00A7:
mov dword ptr [ebp-16], -1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_00B3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B2:
push dword ptr [_EMIT+8]
mov eax, dword ptr [_EMIT+8]
call dword ptr [eax+24]
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -1
jne .L_00B7
cmp dword ptr [ebp+12], 0
jne .L_00B9
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00BA
.L_00BD:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00BF
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00C1
jmp .L_00BC
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
.L_00BB:
dec dword ptr [ebp-24]
.L_00BA:
cmp dword ptr [ebp-24], 0
jge .L_00BD
.L_00BC:
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00C2
.L_00C5:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00C7
cmp dword ptr [ebp-24], 2
je .L_00C9
cmp dword ptr [ebp-24], 1
je .L_00CB
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00CD
jmp .L_00C4
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C3:
dec dword ptr [ebp-24]
.L_00C2:
cmp dword ptr [ebp-24], 0
jge .L_00C5
.L_00C4:
.L_00B8:
jmp .L_00B6
.L_00B7:
cmp dword ptr [ebp+12], 0
jne .L_00CF
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00D0
.L_00D3:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-24]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-24]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D5
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-24]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00D7
jmp .L_00D2
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D1:
dec dword ptr [ebp-24]
.L_00D0:
cmp dword ptr [ebp-24], 0
jge .L_00D3
.L_00D2:
jmp .L_00CE
.L_00CF:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D8
.L_00DB:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-8]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00DD
cmp dword ptr [ebp-8], 2
je .L_00DF
cmp dword ptr [ebp-8], 1
je .L_00E1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00E3
jmp .L_00DA
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
.L_00DC:
.L_00D9:
dec dword ptr [ebp-8]
.L_00D8:
cmp dword ptr [ebp-8], 0
jge .L_00DB
.L_00DA:
.L_00CE:
.L_00B6:
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFINDFREEREG
_HFINDFREEREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E8:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+24]
add esp, 4
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00EA
.L_00ED:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HISREGFREE
add esp, 8
test eax, eax
je .L_00EF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00EF:
.L_00EE:
.L_00EB:
dec dword ptr [ebp-8]
.L_00EA:
cmp dword ptr [ebp-8], 0
jge .L_00ED
.L_00EC:
.L_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HISREGINVREG
_HISREGINVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 4
jne .L_00F4
.L_00F5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_00F7
mov dword ptr [ebp-4], -1
jmp .L_00F1
.L_00F7:
.L_00F6:
jmp .L_00F2
.L_00F4:
cmp dword ptr [ebp-8], 2
je .L_00F9
.L_00FA:
cmp dword ptr [ebp-8], 3
jne .L_00F8
.L_00F9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00FC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00FE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .L_0100
mov dword ptr [ebp-4], -1
jmp .L_00F1
.L_0100:
.L_00FF:
.L_00FE:
.L_00FD:
.L_00FC:
.L_00FB:
.L_00F8:
.L_00F2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_0102
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_0104
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_0106
mov dword ptr [ebp-4], -1
.L_0106:
.L_0105:
.L_0104:
.L_0103:
.L_0102:
.L_0101:
.L_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HGETREGNAME
_HGETREGNAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
cmp dword ptr [ebp+12], -1
jne .L_010A
mov dword ptr [ebp-4], 0
jmp .L_0109
.L_010A:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_010B
mov dword ptr [ebp-12], 24
jmp .L_010D
.L_010B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_010D:
mov eax, dword ptr [ebp-12]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 3
add ebx, dword ptr [ebp+12]
lea eax, [_RNAMETB+ebx*8]
mov dword ptr [ebp-4], eax
.L_0109:
.L_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HPREPOPERAND
_HPREPOPERAND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0129:
cmp dword ptr [ebp+8], 0
jne .L_012C
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_012A
.L_012C:
.L_012B:
cmp dword ptr [ebp+16], -2147483648
jne .L_012E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
.L_012E:
.L_012D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
jmp .L_0130
.L_0132:
cmp dword ptr [ebp+28], 0
je .L_0134
push 0
push 12
mov eax, dword ptr [ebp+16]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0135
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_0133
.L_0134:
push 0
push 2
push offset _Lt_0136
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0133:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 1
jne .L_0138
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [_Lt_0159], eax
jmp .L_0137
.L_0138:
push dword ptr [ebp+8]
call _HGETIDXNAME
add esp, 4
mov dword ptr [_Lt_0159], eax
.L_0137:
cmp dword ptr [_Lt_0159], 0
je .L_013A
push 0
push -1
push 0
push dword ptr [_Lt_0159]
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_013A:
.L_0139:
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx+36]
adc eax, dword ptr [ecx+40]
mov ecx, ebx
mov dword ptr [ebp+20], ecx
cmp dword ptr [ebp+24], 0
je .L_013D
add dword ptr [ebp+20], 4
.L_013D:
.L_013C:
cmp dword ptr [ebp+20], 0
jle .L_013F
cmp dword ptr [_Lt_0159], 0
je .L_0141
push 0
push 2
push offset _Lt_0116
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
.L_0141:
.L_0140:
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_013E
.L_013F:
cmp dword ptr [ebp+20], 0
jge .L_0142
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_013E
.L_0142:
cmp dword ptr [_Lt_0159], 0
jne .L_0144
push 0
push 2
push offset _Lt_0006
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
.L_0144:
.L_0143:
.L_013E:
push 0
push 2
push offset _Lt_0145
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
jmp .L_012F
.L_0146:
push 0
push 8
push offset _Lt_0147
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_015A
cmp dword ptr [eax+36], 0
je .L_014A
.L_015A:
push 0
push 4
push offset _Lt_014B
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref
add esp, 20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_014A:
.L_0149:
jmp .L_012F
.L_014D:
cmp dword ptr [ebp+24], 0
jne .L_014F
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp+16]
call _HGETREGNAME
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_014E
.L_014F:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
push dword ptr [ecx+12]
push dword ptr [ebp+16]
call _HGETREGNAME
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_014E:
jmp .L_012F
.L_0150:
cmp dword ptr [ebp+24], 0
jne .L_0152
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [_Lt_015B], ebx
mov dword ptr [_Lt_015B+4], ecx
jmp .L_0151
.L_0152:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [_Lt_015B], eax
mov dword ptr [_Lt_015B+4], ebx
.L_0151:
cmp dword ptr [ebp+16], 1
jne .L_0154
cmp dword ptr [_Lt_015B+4], 0
jne .L_015C
cmp dword ptr [_Lt_015B], 0
je .L_0156
.L_015C:
push 0
push 2
push offset _Lt_0004
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_0155
.L_0156:
push 0
push 2
push offset _Lt_0006
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0155:
jmp .L_0153
.L_0154:
push 0
push -1
push dword ptr [_Lt_015B+4]
push dword ptr [_Lt_015B]
call _fb_LongintToStr
add esp, 8
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.L_0153:
jmp .L_012F
.L_0157:
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .L_012F
.L_0130:
cmp dword ptr [ebp-4], 5
ja .L_0157
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0158+eax*4]
_.L_0158:
.int .L_0150
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_014D
.int .L_0146
.L_012F:
.L_012A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0159,4
.balign 4
	.lcomm	_Lt_015B,8

.section .text
.balign 16

.globl _HPREPOPERAND64
_HPREPOPERAND64:
push ebp
mov ebp, esp
.L_015D:
push -1
push 0
push 0
push 9
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push -1
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
.L_015E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OUTP
_OUTP:
push ebp
mov ebp, esp
sub esp, 12
.L_0165:
cmp dword ptr [_ENV+148], 0
je .L_0168
push 0
push 2
push offset _Lt_0169
push -1
push offset _Lt_016C
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_016C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_016C
call _fb_StrAssign
add esp, 20
jmp .L_0167
.L_0168:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_016C
call _fb_StrAssign
add esp, 20
.L_0167:
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_016C
call _fb_StrConcatAssign
add esp, 20
push -1
push offset _Lt_016C
call _fb_StrLen
add esp, 8
push eax
push dword ptr [_Lt_016C]
call _OUTEX
add esp, 8
.L_0166:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_016C,12

.section .text
.balign 16

.globl _HBRANCH
_HBRANCH:
push ebp
mov ebp, esp
sub esp, 12
.L_016D:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0171
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_016F
push -1
push offset _Lt_0171
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0171
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0171
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0171]
call _OUTP
add esp, 4
.L_016E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0171,12

.section .text
.balign 16

.globl _HPUSH
_HPUSH:
push ebp
mov ebp, esp
sub esp, 12
.L_0172:
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0176
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0176
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0176
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0176]
call _OUTP
add esp, 4
.L_0173:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0176,12

.section .text
.balign 16

.globl _HPOP
_HPOP:
push ebp
mov ebp, esp
sub esp, 12
.L_0177:
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_017B
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_017B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_017B
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_017B]
call _OUTP
add esp, 4
.L_0178:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017B,12

.section .text
.balign 16

.globl _HMOV
_HMOV:
push ebp
mov ebp, esp
sub esp, 24
.L_017C:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0181
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0181
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0181
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0181
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0181
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0181
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0181]
call _OUTP
add esp, 4
.L_017D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0181,12

.section .text
.balign 16

.globl _HLABEL
_HLABEL:
push ebp
mov ebp, esp
.L_0191:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0195
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0194
push -1
push offset _Lt_0195
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0195]
call _OUTEX
add esp, 8
.L_0192:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0195,12

.section .text
.balign 16

.globl _EMITVARINIBEGIN
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0A07:
push 0
push 1
call __SETSECTION
add esp, 8
push 1
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR
add esp, 8
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
je .L_0A0A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
.L_0A0A:
.L_0A09:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HLABEL
add esp, 4
.L_0A08:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINII
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0A0C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 2
push offset _Lt_016F
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
mov ebx, -1
jne .L_0A15
cmp dword ptr [ebp+12], 0
jne .L_0A15
.L_0A16:
xor ebx, ebx
.L_0A15:
and eax, ebx
je .L_0A10
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.L_0A10:
.L_0A0F:
mov ebx, dword ptr [ebp+8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0A12
push 0
push 3
push offset _Lt_0A13
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_HEX_l
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_0A11
.L_0A12:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0A11:
push 0
push 3
push offset _Lt_016B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [ebp-12]
call _OUTEX
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0A0D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINIF
_EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 48
.L_0A19:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push -1
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX
add esp, 12
push eax
push -1
push 2
push offset _Lt_016F
push 0
push dword ptr [ebp+8]
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTEX
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_0A1A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITVARINIOFS
_EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 12
.L_0A1F:
push 0
push 6
push offset _Lt_0A21
push -1
push offset _Lt_0A25
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A25
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A25
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
je .L_0A24
push 0
push 4
push offset _Lt_014B
push -1
push offset _Lt_0A25
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0A25
call _fb_StrConcatAssign
add esp, 20
.L_0A24:
.L_0A23:
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0A25
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A25]
call _OUTEX
add esp, 8
.L_0A20:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A25,12

.section .text
.balign 16

.globl _EMITVARINISTR
_EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 12
.L_0A26:
push 0
push 9
push offset _Lt_01EA
push -1
push offset _Lt_0A2A
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A2A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A2A
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0A29
push -1
push offset _Lt_0A2A
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A2A]
call _OUTEX
add esp, 8
.L_0A27:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A2A,12

.section .text
.balign 16

.globl _EMITVARINIWSTR
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 20
.L_0A2B:
push 0
push 9
push offset _Lt_01EA
push -1
push offset _Lt_0A33
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0A33
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A33
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-16], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-20], eax
jmp .L_0A2F
.L_0A32:
push 0
push 3
push offset _Lt_01C8
push -1
push offset _Lt_0A33
call _fb_StrConcatAssign
add esp, 20
.L_0A30:
inc dword ptr [ebp-16]
.L_0A2F:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0A32
.L_0A31:
push 0
push 4
push offset _Lt_01ED
push -1
push offset _Lt_0A33
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0A33]
call _OUTEX
add esp, 8
.L_0A2C:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A33,12

.section .text
.balign 16

.globl _EMITVARINIPAD
_EMITVARINIPAD:
push ebp
mov ebp, esp
sub esp, 48
.L_0A34:
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push 3
push offset _Lt_0A37
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 7
push offset _Lt_0A36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTEX
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
.L_0A35:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _EMITFBCTINFBEGIN
_EMITFBCTINFBEGIN:
.L_0A3C:
push 0
push 7
call __SETSECTION
add esp, 8
.L_0A3D:
ret
.balign 16

.globl _EMITFBCTINFSTRING
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 36
.L_0A3E:
push 0
push 0
push 4
call dword ptr [_EMIT+228]
add esp, 4
push eax
push -1
push offset _Lt_0A45
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 4
push offset _Lt_0A41
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_0A40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A45
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0A45
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [_Lt_0A45]
call _EMITWRITESTR
add esp, 8
.L_0A3F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0A45,12

.section .text
.balign 16

.globl _EMITFBCTINFEND
_EMITFBCTINFEND:
.L_0A46:
push 0
push offset _Lt_0000
call _EMITWRITESTR
add esp, 8
.L_0A47:
ret
.balign 16

.globl _EMITGASX86_CTOR
_EMITGASX86_CTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0B2F:
lea eax, [_EMIT+148]
push edi
push esi
mov edi, eax
mov esi, offset _Lt_0B33
mov ecx, 22
rep movsd
pop esi
pop edi
mov eax, offset __OPFNTB
mov dword ptr [_EMIT+236], eax
cmp dword ptr [_ENV+116], 1
jl .L_0B32
push dword ptr [_EMIT+236]
call __INIT_OPFNTB_SSE
add esp, 4
.L_0B32:
.L_0B31:
mov dword ptr [ebp-4], -1
.L_0B30:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0B33:
.int __INIT
.int __END
.int __GETOPTIONVALUE
.int __OPEN
.int __CLOSE
.int __ISREGPRESERVED
.int __GETFREEPRESERVEDREG
.int __GETARGREG
.int __GETRESULTREG
.int __PROCGETFRAMEREGNAME
.int __PROCBEGIN
.int __PROCEND
.int __PROCHEADER
.int __PROCFOOTER
.int __PROCALLOCARG
.int __PROCALLOCLOCAL
.int __PROCALLOCSTATICVARS
.int __SCOPEBEGIN
.int __SCOPEEND
.int __SETSECTION
.int __GETTYPESTRING
.int __GETSECTIONSTRING

.section .text
.balign 16
_fb_ctor__emit_x86:
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
call _fb_StrAssign
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
_HGETIDXNAME:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.L_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_Lt_0B34], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [_Lt_0B35], eax
cmp dword ptr [_Lt_0B34], 0
jne .L_0111
cmp dword ptr [_Lt_0B35], 0
jne .L_0113
mov dword ptr [ebp-4], 0
jmp .L_010F
.L_0113:
.L_0112:
push 0
push 1
push offset _Lt_0000
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
jmp .L_0110
.L_0111:
push 0
push 0
push dword ptr [_Lt_0B34]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B35], 0
je .L_0115
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0B36
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
.L_0115:
.L_0114:
.L_0110:
mov eax, dword ptr [_Lt_0B35]
push dword ptr [eax+12]
mov eax, dword ptr [_Lt_0B35]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
mov dword ptr [_Lt_0B37], eax
push 0
push -1
push 0
push dword ptr [_Lt_0B37]
push 154
push offset _Lt_0B36
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B35], 0
je .L_011A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [_Lt_0B38], ebx
cmp dword ptr [_Lt_0B38], 1
jle .L_011C
mov dword ptr [_Lt_0B39], 0
cmp dword ptr [_Lt_0B38], 3
je .L_011F
.L_0120:
cmp dword ptr [_Lt_0B38], 5
je .L_011F
.L_0121:
cmp dword ptr [_Lt_0B38], 9
jne .L_011E
.L_011F:
dec dword ptr [_Lt_0B38]
mov dword ptr [_Lt_0B39], -1
.L_011E:
.L_011D:
push 0
push -1
push 2
push offset _Lt_0122
push 154
push offset _Lt_0B36
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_Lt_0B38]
call _fb_IntToStr
add esp, 4
push eax
push 154
push offset _Lt_0B36
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0B39], 0
je .L_0126
push 0
push -1
push 2
push offset _Lt_0116
push 154
push offset _Lt_0B36
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [_Lt_0B37]
push 154
push offset _Lt_0B36
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 154
push offset _Lt_0B36
call _fb_StrAssign
add esp, 20
.L_0126:
.L_0125:
.L_011C:
.L_011B:
.L_011A:
.L_0119:
mov eax, offset _Lt_0B36
mov dword ptr [ebp-4], eax
.L_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B36,154
.balign 4
	.lcomm	_Lt_0B34,4
.balign 4
	.lcomm	_Lt_0B35,4
.balign 4
	.lcomm	_Lt_0B39,4
.balign 4
	.lcomm	_Lt_0B38,4
.balign 4
	.lcomm	_Lt_0B37,4

.section .text
.balign 16
_OUTEX:
push ebp
mov ebp, esp
.L_015F:
cmp dword ptr [ebp+12], 0
jne .L_0162
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp+12], eax
.L_0162:
.L_0161:
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [_ENV+580]
call _fb_FilePutStr
add esp, 16
test eax, eax
jne .L_0164
.L_0164:
.L_0163:
.L_0160:
mov esp, ebp
pop ebp
ret
.balign 16
_HXCHG:
push ebp
mov ebp, esp
sub esp, 24
.L_0182:
push 0
push 6
push offset _Lt_0184
push -1
push offset _Lt_0B3A
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0B3A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B3A
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B3A
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
push -1
push offset _Lt_0B3A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B3A
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B3A]
call _OUTP
add esp, 4
.L_0183:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B3A,12

.section .text
.balign 16
_HPUBLIC:
push ebp
mov ebp, esp
sub esp, 12
.L_018C:
push 0
push 10
push offset _Lt_018F
push -1
push offset _Lt_0B3B
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0B3B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B3B
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0B3B
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B3B]
call _OUTEX
add esp, 8
.L_018D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B3B,12

.section .text
.balign 16
_HALIGN:
push ebp
mov ebp, esp
.L_0196:
push 0
push 9
push offset _Lt_0198
push -1
push offset _Lt_0B3C
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B3C
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0B3C
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B3C]
call _OUTEX
add esp, 8
.L_0197:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B3C,12

.section .text
.balign 16
_HINITREGTB:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0199:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
push offset _Lt_0B3D
push 6
push 0
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+8], eax
cmp dword ptr [_ENV+116], 1
jne .L_019E
push 0
push offset _Lt_0B3E
push 7
push 1
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+12], eax
mov dword ptr [ebp-12], 0
.L_01A2:
push 0
push -1
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_01A3
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 8
mov eax, dword ptr [ebp-12]
lea ebx, [_RNAMETB+eax*8+192]
push ebx
call _fb_StrAssign
add esp, 20
.L_01A0:
inc dword ptr [ebp-12]
.L_019F:
cmp dword ptr [ebp-12], 7
jle .L_01A2
.L_01A1:
jmp .L_019D
.L_019E:
push -1
push offset _Lt_0B3E
push 7
push 1
call _REGNEWCLASS
add esp, 16
mov dword ptr [_EMIT+12], eax
.L_019D:
.L_019A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0B3F:
.int 7
.int 6
.int 6
.int 7
.int 7
.int 7
.balign 4
_Lt_0B3D:
.int _Lt_0B3F
.int _Lt_0B3F
.int 24
.int 4
.int 1
.int 49
.int 6
.int 0
.int 5
.balign 4
_Lt_0B40:
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.balign 4
_Lt_0B3E:
.int _Lt_0B40
.int _Lt_0B40
.int 28
.int 4
.int 1
.int 49
.int 7
.int 0
.int 6

.section .text
.balign 16
_HENDREGTB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01A5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.L_01AA:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
call _REGDELCLASS
add esp, 4
.L_01A8:
inc dword ptr [ebp-4]
.L_01A7:
cmp dword ptr [ebp-4], 1
jle .L_01AA
.L_01A9:
.L_01A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETGLOBALTYPEALIGN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01AB:
cmp dword ptr [ebp+8], 16
jne .L_01AE
mov dword ptr [ebp-4], 8
jmp .L_01AD
.L_01AE:
mov dword ptr [ebp-4], 4
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGETGLOBALVARALIGN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_01B2
mov dword ptr [ebp-4], 4
jmp .L_01B1
.L_01B2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _HGETGLOBALTYPEALIGN
add esp, 4
mov dword ptr [ebp-4], eax
.L_01B1:
.L_01B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITVARBSS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [_Lt_0B41], ebx
push 0
push 2
call __SETSECTION
add esp, 8
mov ebx, dword ptr [_Lt_0B41]
and ebx, 8
test ebx, ebx
jne .L_01B6
mov ebx, dword ptr [_Lt_0B41]
and ebx, 32
test ebx, ebx
jle .L_01B8
push -1
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
.L_01B8:
.L_01B7:
push 0
push 7
push offset _Lt_01B9
push -1
push offset _Lt_0B42
call _fb_StrAssign
add esp, 20
jmp .L_01B5
.L_01B6:
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _HPUBLIC
add esp, 8
push 0
push 6
push offset _Lt_01BA
push -1
push offset _Lt_0B42
call _fb_StrAssign
add esp, 20
.L_01B5:
push dword ptr [ebp+8]
call _HGETGLOBALVARALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
push 0
push -1
push offset _Lt_0B42
push -1
push offset _Lt_0B43
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
push offset _Lt_0B43
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B43
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B43
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_01BC
push -1
push offset _Lt_0B43
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBGETREALSIZE
add esp, 4
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
push -1
push offset _Lt_0B43
call _fb_StrConcatAssign
add esp, 20
push -1
push dword ptr [_Lt_0B43]
call _EMITWRITESTR
add esp, 8
push 2
push dword ptr [ebp+8]
call _EDBGEMITGLOBALVAR
add esp, 8
.L_01B4:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B42,12
.balign 4
	.lcomm	_Lt_0B43,12
.balign 4
	.lcomm	_Lt_0B41,4

.section .text
.balign 16
_HWRITEHEADER:
.L_01BD:
lea eax, [_ENV+304]
push eax
call _EDBGEMITHEADER
add esp, 4
push -1
push offset _Lt_01BF
call _EMITWRITESTR
add esp, 8
.L_01BE:
ret
.balign 16
_HEMITVARCONST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [_Lt_0B44], ebx
mov ebx, dword ptr [_Lt_0B44]
mov dword ptr [ebp-4], ebx
jmp .L_01C3
.L_01C5:
push 0
push 2
push offset _Lt_01C6
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HESCAPE
add esp, 4
push eax
push -1
push offset _Lt_0B45
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_01C9
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C2
.L_01CA:
push 0
push 2
push offset _Lt_01C6
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HESCAPEW
add esp, 4
push eax
push -1
push offset _Lt_0B45
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-20], 1
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-24], eax
jmp .L_01CD
.L_01D0:
push 0
push 3
push offset _Lt_01C8
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign
add esp, 20
.L_01CE:
inc dword ptr [ebp-20]
.L_01CD:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_01D0
.L_01CF:
push 0
push 2
push offset _Lt_01C6
push -1
push offset _Lt_0B45
call _fb_StrConcatAssign
add esp, 20
jmp .L_01C2
.L_01D1:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push -1
push offset _Lt_0B45
call _fb_StrAssign
add esp, 20
jmp .L_01C2
.L_01C3:
mov eax, dword ptr [ebp-4]
add eax, 4294967292
cmp eax, 3
ja .L_01D1
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_01D2+eax*4-16]
_.L_01D2:
.int .L_01C5
.int .L_01D1
.int .L_01D1
.int .L_01CA
.L_01C2:
cmp dword ptr [_ENV+108], 2
jne .L_01D4
push 0
push 0
call __SETSECTION
add esp, 8
jmp .L_01D3
.L_01D4:
push 0
push 1
call __SETSECTION
add esp, 8
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_01D6
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call _HALIGN
add esp, 4
jmp .L_01D5
.L_01D6:
push dword ptr [_Lt_0B44]
call _HGETGLOBALTYPEALIGN
add esp, 4
push eax
call _HALIGN
add esp, 4
.L_01D5:
push 0
push 0
push dword ptr [_Lt_0B44]
call __GETTYPESTRING
add esp, 4
push eax
push -1
push offset _Lt_0B46
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B47
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_01D7
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B46
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0169
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B45
push -1
push offset _Lt_0B47
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B47]
call _EMITWRITESTR
add esp, 8
.L_01C1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B45,12
.balign 4
	.lcomm	_Lt_0B46,12
.balign 4
	.lcomm	_Lt_0B47,12
.balign 4
	.lcomm	_Lt_0B44,4

.section .text
.balign 16
_HWRITECTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01D8:
cmp dword ptr [ebp+8], 0
jne .L_01DB
jmp .L_01D9
.L_01DB:
.L_01DA:
.L_01DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
and eax, 16777216
test eax, eax
je .L_01E0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+56]
cmp dword ptr [ebp+12], 0
je .L_01E1
mov dword ptr [ebp-4], 5
jmp .L_0B48
.L_01E1:
mov dword ptr [ebp-4], 6
.L_0B48:
push dword ptr [ebp-4]
call __SETSECTION
add esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _EMITVARINIOFS
add esp, 8
.L_01E0:
.L_01DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
.L_01DE:
cmp dword ptr [ebp+8], 0
jne .L_01DC
.L_01DD:
.L_01D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITEXPORT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_01E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .L_01E6
push 0
push 4
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+292], 0
je .L_01E8
inc dword ptr [ebp-4]
.L_01E8:
.L_01E7:
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_01ED
push -1
push 0
push dword ptr [ebp-4]
push 18
push offset _Lt_01EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call _EMITWRITESTR
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_01E6:
.L_01E5:
.L_01E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDECLVARIABLE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01F1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_01F4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 4
je .L_01F8
.L_01F9:
cmp dword ptr [ebp-4], 7
jne .L_01F7
.L_01F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_01FB
jmp .L_01F2
.L_01FB:
.L_01FA:
.L_01F7:
.L_01F5:
push dword ptr [ebp+8]
call _HEMITVARCONST
add esp, 4
jmp .L_01F2
.L_01F4:
.L_01F3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32768
test eax, eax
je .L_01FD
jmp .L_01F2
.L_01FD:
.L_01FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_01FF
jmp .L_01F2
.L_01FF:
.L_01FE:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
je .L_0201
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2
test ebx, ebx
jne .L_0203
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32
test ecx, ecx
jne .L_0205
jmp .L_01F2
.L_0205:
.L_0204:
.L_0203:
.L_0202:
push 0
push 1
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .L_01F2
.L_0201:
.L_0200:
push dword ptr [ebp+8]
call _HEMITVARBSS
add esp, 4
.L_01F2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCLEARLOCALS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_0206:
cmp dword ptr [ebp+8], 0
jne .L_0209
jmp .L_0207
.L_0209:
.L_0208:
cmp dword ptr [_ENV+112], 3
jl .L_020B
mov eax, dword ptr [ebp+8]
shr eax, 3
cmp eax, 7
jbe .L_020D
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_020F
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_020F:
.L_020E:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0210
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 3
push eax
call _fb_UIntToStr
add esp, 4
push eax
push 9
push offset _Lt_0214
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0217
call _OUTP
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0B4B
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B4B]
call _HLABEL
add esp, 4
push offset _Lt_0218
call _OUTP
add esp, 4
push offset _Lt_0219
call _OUTP
add esp, 4
push offset _Lt_021A
call _OUTP
add esp, 4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push offset _Lt_0B4B
push 5
push offset _Lt_021B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call _OUTP
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_021E
call _OUTP
add esp, 4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_0220
push offset _Lt_0084
call _HPOP
add esp, 4
.L_0220:
.L_021F:
jmp .L_020C
.L_020D:
mov eax, dword ptr [ebp+8]
shr eax, 3
test eax, eax
jbe .L_0221
push offset _Lt_0217
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
shr eax, 3
mov ebx, eax
mov dword ptr [_Lt_0B4C], ebx
jmp .L_0222
.L_0225:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 7
push offset _Lt_0227
push -1
push -1
mov ebx, dword ptr [_Lt_0B4C]
sal ebx, 3
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 11
push offset _Lt_0226
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0223:
dec dword ptr [_Lt_0B4C]
.L_0222:
cmp dword ptr [_Lt_0B4C], 1
jge .L_0225
.L_0224:
push offset _Lt_021E
call _OUTP
add esp, 4
.L_0221:
.L_020C:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_022C
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_022E
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_022D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_022C:
.L_022B:
jmp .L_0207
.L_020B:
.L_020A:
mov eax, dword ptr [ebp+8]
shr eax, 2
cmp eax, 6
jbe .L_0233
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_0235
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0235:
.L_0234:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0210
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push 9
push offset _Lt_0214
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_023B
call _OUTP
add esp, 4
push offset _Lt_023C
call _OUTP
add esp, 4
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
jne .L_023E
push offset _Lt_0084
call _HPOP
add esp, 4
.L_023E:
.L_023D:
jmp .L_0232
.L_0233:
mov eax, dword ptr [ebp+8]
shr eax, 2
mov ebx, eax
mov dword ptr [_Lt_0B4C], ebx
jmp .L_023F
.L_0242:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 5
push offset _Lt_022E
push -1
push -1
mov ebx, dword ptr [_Lt_0B4C]
sal ebx, 2
add ebx, dword ptr [ebp+12]
push ebx
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_022D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0240:
dec dword ptr [_Lt_0B4C]
.L_023F:
cmp dword ptr [_Lt_0B4C], 1
jge .L_0242
.L_0241:
.L_0232:
.L_0207:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B4C,4
.balign 4
	.lcomm	_Lt_0B4B,12

.section .text
.balign 16
_HFRAMEBYTESTOALLOC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0246:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+12]
add eax, 3
and eax, -4
mov dword ptr [_Lt_0B4D], eax
mov eax, dword ptr [_ENV+284]
and eax, 64
test eax, eax
je .L_0249
mov dword ptr [_Lt_0B4E], 8
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_024B
add dword ptr [_Lt_0B4E], 4
.L_024B:
.L_024A:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_024D
add dword ptr [_Lt_0B4E], 4
.L_024D:
.L_024C:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_024F
add dword ptr [_Lt_0B4E], 4
.L_024F:
.L_024E:
mov eax, dword ptr [_Lt_0B4E]
add dword ptr [_Lt_0B4D], eax
mov eax, dword ptr [_Lt_0B4D]
add eax, 15
and eax, -16
mov dword ptr [_Lt_0B4D], eax
mov eax, dword ptr [_Lt_0B4E]
sub dword ptr [_Lt_0B4D], eax
.L_0249:
.L_0248:
mov eax, dword ptr [_Lt_0B4D]
mov dword ptr [ebp-4], eax
.L_0247:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B4D,4
.balign 4
	.lcomm	_Lt_0B4E,4

.section .text
.balign 16
_HSTOREREGISTERARGUMENT:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_0250:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
push 0
push 15
push offset _Lt_0252
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-16], 0
jl .L_0254
jg .L_0B4F
cmp dword ptr [ebp-20], 0
jbe .L_0254
.L_0B4F:
push 0
push 2
push offset _Lt_0116
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign
add esp, 20
.L_0254:
.L_0253:
cmp dword ptr [ebp-16], 0
jne .L_0B50
cmp dword ptr [ebp-20], 0
je .L_0256
.L_0B50:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_0256:
.L_0255:
push 0
push 2
push offset _Lt_0145
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017E
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0251:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSTOREREGISTERARGUMENTS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_025B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.L_025D:
cmp dword ptr [ebp-4], 0
je .L_025E
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_0261
.L_0262:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 4
push offset _Lt_0086
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call _HSTOREREGISTERARGUMENT
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_025F
.L_0261:
cmp dword ptr [ebp-8], 2
jne .L_0264
.L_0265:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push 4
push offset _Lt_0083
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call _HSTOREREGISTERARGUMENT
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0264:
.L_025F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_025D
.L_025E:
.L_025C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCREATEFRAME:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.L_0267:
cmp dword ptr [_ENV+108], 2
jne .L_0269
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0B51
.L_0269:
mov dword ptr [ebp-4], 0
.L_0B51:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_0B53], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_026C
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC
add esp, 4
mov dword ptr [_Lt_0B54], eax
mov eax, dword ptr [_Lt_0B54]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+184]
je .L_026E
push offset _Lt_0089
call _HPUSH
add esp, 4
cmp dword ptr [_Lt_0B53], 0
je .L_0270
push offset _Lt_0271
call _OUTP
add esp, 4
push offset _Lt_0272
call _OUTP
add esp, 4
.L_0270:
.L_026F:
push offset _Lt_0273
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0B53], 0
je .L_0275
push offset _Lt_0276
call _OUTP
add esp, 4
.L_0275:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 4096
test ecx, ecx
je .L_0278
push offset _Lt_0279
call _OUTP
add esp, 4
add dword ptr [_Lt_0B54], 8
.L_0278:
.L_0277:
cmp dword ptr [_Lt_0B54], 0
jle .L_027B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [_Lt_0B54]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_027C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call _OUTP
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.L_027B:
.L_027A:
.L_026E:
.L_026D:
cmp dword ptr [_ENV+108], 3
jne .L_0280
cmp dword ptr [_ENV+184], 0
je .L_0282
call _SYMBMAKEPROFILELABELNAME
mov dword ptr [_Lt_0B58], eax
push 0
push offset _Lt_0284
call _OUTEX
add esp, 8
push 0
push offset _Lt_0286
call _OUTEX
add esp, 8
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push 2
push offset _Lt_0193
push -1
push 0
push dword ptr [_Lt_0B58]
push 2
push offset _Lt_0007
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTEX
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_028B
call _OUTP
add esp, 4
push 0
push offset _Lt_028D
call _OUTEX
add esp, 8
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 0
push dword ptr [_Lt_0B58]
push 18
push offset _Lt_028E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0291
call _OUTP
add esp, 4
.L_0282:
.L_0281:
.L_0280:
.L_027F:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_0293
push offset _Lt_0087
call _HPUSH
add esp, 4
.L_0293:
.L_0292:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_0295
push offset _Lt_0085
call _HPUSH
add esp, 4
.L_0295:
.L_0294:
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_0297
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0297:
.L_0296:
push dword ptr [ebp+8]
call _HSTOREREGISTERARGUMENTS
add esp, 4
.L_026C:
.L_026B:
.L_0268:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B54,4
.balign 4
	.lcomm	_Lt_0B59,4
.balign 4
	.lcomm	_Lt_0B5A,4
.balign 4
	.lcomm	_Lt_0B58,4
.balign 4
	.lcomm	_Lt_0B53,4

.section .text
.balign 16
_HDESTROYFRAME:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_0298:
mov eax, dword ptr [_ENV+108]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_Lt_0B5D], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_029B
cmp dword ptr [_Lt_0B5D], 0
je .L_029C
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0B5B
.L_029C:
mov dword ptr [ebp-4], 0
.L_0B5B:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_0B5F], eax
push dword ptr [ebp+8]
call _HFRAMEBYTESTOALLOC
add esp, 4
mov dword ptr [_Lt_0B60], eax
mov eax, dword ptr [_EMIT+132]
and eax, 2
test eax, eax
je .L_029F
push offset _Lt_0084
call _HPOP
add esp, 4
.L_029F:
.L_029E:
mov eax, dword ptr [_EMIT+132]
and eax, 4
test eax, eax
je .L_02A1
push offset _Lt_0085
call _HPOP
add esp, 4
.L_02A1:
.L_02A0:
mov eax, dword ptr [_EMIT+132]
and eax, 16
test eax, eax
je .L_02A3
push offset _Lt_0087
call _HPOP
add esp, 4
.L_02A3:
.L_02A2:
mov eax, dword ptr [_Lt_0B60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [ecx+4]
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [_ENV+148]
or eax, dword ptr [_ENV+184]
je .L_02A5
push offset _Lt_02A6
call _OUTP
add esp, 4
push offset _Lt_0089
call _HPOP
add esp, 4
cmp dword ptr [_Lt_0B5F], 0
je .L_02A8
push offset _Lt_02A9
call _OUTP
add esp, 4
push offset _Lt_02AA
call _OUTP
add esp, 4
.L_02A8:
.L_02A7:
.L_02A5:
.L_02A4:
cmp dword ptr [ebp+12], 0
jle .L_02AC
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _fb_IntToStr
add esp, 4
push eax
push 5
push offset _Lt_02AD
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call _OUTP
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_02AB
.L_02AC:
push offset _Lt_02B0
call _OUTP
add esp, 4
.L_02AB:
.L_029B:
.L_029A:
cmp dword ptr [_Lt_0B5D], 0
je .L_02B2
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 5
push offset _Lt_02B4
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_02B3
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTEX
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
.L_02B2:
.L_02B1:
.L_0299:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B5D,4
.balign 4
	.lcomm	_Lt_0B60,4
.balign 4
	.lcomm	_Lt_0B5F,4

.section .text
.balign 16
__EMITLIT:
push ebp
mov ebp, esp
sub esp, 24
.L_02BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push 3
push offset _Lt_016B
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp-12]
call _OUTEX
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_02BB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 108
push ebx
push esi
push edi
.L_02BD:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push 2
push offset _Lt_0193
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTEX
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-68], 0
.L_02C2:
mov dword ptr [ebp-72], 0
mov ebx, dword ptr [ebp-68]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-64]
sal ecx, 3
mov esi, dword ptr [ebp+12]
add esi, ecx
mov edi, dword ptr [esi]
mov ecx, dword ptr [esi+4]
cmp eax, ecx
jne .L_02C6
cmp ebx, edi
jne .L_02C6
.L_0B64:
mov edi, dword ptr [ebp-64]
sal edi, 2
mov ecx, dword ptr [ebp+16]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-72], edi
inc dword ptr [ebp-64]
jmp .L_02C5
.L_02C6:
mov edi, dword ptr [ebp+24]
mov dword ptr [ebp-72], edi
.L_02C5:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 0
push dword ptr [ebp-72]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_016F
push 0
push 9
call __GETTYPESTRING
add esp, 4
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov edi, dword ptr [ebp-68]
mov eax, edi
sar eax, 31
mov ebx, dword ptr [ebp+36]
mov ecx, dword ptr [ebp+40]
cmp eax, ecx
jne .L_02CB
cmp edi, ebx
jne .L_02CB
.L_0B65:
jmp .L_02C3
.L_02CB:
.L_02CA:
inc dword ptr [ebp-68]
.L_02C4:
jmp .L_02C2
.L_02C3:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.L_02BE:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
sub esp, 12
.L_02CC:
push 0
push 6
push offset _Lt_02CE
push -1
push offset _Lt_0B66
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B66
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B66
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B66]
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_02D1
push 0
push 10
push offset _Lt_02D2
push -1
push offset _Lt_0B66
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B66
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B66]
call _OUTP
add esp, 4
.L_02D1:
.L_02D0:
.L_02CD:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B66,12

.section .text
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
.L_02D3:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B67
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_02CE
push -1
push offset _Lt_0B68
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B67
push -1
push offset _Lt_0B68
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B68]
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_02D6
push 0
push 10
push offset _Lt_02D2
push -1
push offset _Lt_0B68
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0B68
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B68]
call _OUTP
add esp, 4
.L_02D6:
.L_02D5:
.L_02D4:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B67,12
.balign 4
	.lcomm	_Lt_0B68,12

.section .text
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 16
.L_02D7:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-16], eax
jmp .L_02DA
.L_02DC:
push 0
push 5
push offset _Lt_02DD
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02DE:
push 0
push 5
push offset _Lt_02DF
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02E0:
push 0
push 4
push offset _Lt_02E1
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02E2:
push 0
push 4
push offset _Lt_02E3
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02E4:
push 0
push 4
push offset _Lt_02E5
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02E6:
push 0
push 5
push offset _Lt_02E7
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
jmp .L_02D9
.L_02DA:
mov eax, dword ptr [ebp-16]
add eax, 4294967204
cmp eax, 5
ja .L_02D9
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_02E8+eax*4-368]
_.L_02E8:
.int .L_02E4
.int .L_02E2
.int .L_02E0
.int .L_02E6
.int .L_02DE
.int .L_02DC
.L_02D9:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B69
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B69
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B69]
call _OUTP
add esp, 4
.L_02D8:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B69,12

.section .text
.balign 16
__EMITJUMP:
push ebp
mov ebp, esp
sub esp, 12
.L_02EA:
push 0
push 5
push offset _Lt_02EC
push -1
push offset _Lt_0B6A
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B6A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B6A
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B6A]
call _OUTP
add esp, 4
.L_02EB:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B6A,12

.section .text
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
.L_02EE:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B6B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_02EC
push -1
push offset _Lt_0B6C
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B6B
push -1
push offset _Lt_0B6C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B6C]
call _OUTP
add esp, 4
.L_02EF:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B6B,12
.balign 4
	.lcomm	_Lt_0B6C,12

.section .text
.balign 16
__EMITRET:
push ebp
mov ebp, esp
sub esp, 12
.L_02F0:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 5
push offset _Lt_02AD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B6D
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B6D]
call _OUTP
add esp, 4
.L_02F1:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B6D,12

.section .text
.balign 16
__EMITPUBLIC:
push ebp
mov ebp, esp
sub esp, 12
.L_02F3:
push 0
push 10
push offset _Lt_018F
push -1
push offset _Lt_0B6E
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B6E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0B6E
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0B6E
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B6E]
call _OUTEX
add esp, 8
.L_02F4:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B6E,12

.section .text
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
.L_02F6:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0B6F
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0194
push -1
push offset _Lt_0B6F
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0B6F]
call _OUTEX
add esp, 8
.L_02F7:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B6F,12

.section .text
.balign 16
__EMITNOP:
.L_02F8:
.L_02F9:
ret
.balign 16
_HULONG2DBL:
push ebp
mov ebp, esp
.L_02FA:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0B70
call _fb_StrAssign
add esp, 20
push -1
push -1
push 0
push 8
push offset _Lt_0B71
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_02FC
push -1
push offset _Lt_0B72
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B71
push -1
push offset _Lt_0B72
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_02FD
push -1
push offset _Lt_0B72
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B72]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_02FE
push -1
push offset _Lt_0B72
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B70
push -1
push offset _Lt_0B72
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B72]
call _OUTP
add esp, 4
push offset _Lt_02FF
call _HPUSH
add esp, 4
push offset _Lt_0300
call _HPUSH
add esp, 4
push offset _Lt_0006
call _HPUSH
add esp, 4
push offset _Lt_0301
call _OUTP
add esp, 4
push offset _Lt_0302
call _OUTP
add esp, 4
push offset _Lt_0303
call _OUTP
add esp, 4
push dword ptr [_Lt_0B70]
call _HLABEL
add esp, 4
.L_02FB:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B70,12
.balign 4
	.lcomm	_Lt_0B71,12
.balign 4
	.lcomm	_Lt_0B72,12

.section .text
.balign 16
__EMITSTORL2L:
push ebp
mov ebp, esp
.L_0304:
push offset _Lt_0B73
push offset _Lt_0B74
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0B75
push offset _Lt_0B76
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B77
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B74
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B76
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B77]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B77
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B73
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B75
push -1
push offset _Lt_0B77
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B77]
call _OUTP
add esp, 4
.L_0305:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B74,12
.balign 4
	.lcomm	_Lt_0B73,12
.balign 4
	.lcomm	_Lt_0B76,12
.balign 4
	.lcomm	_Lt_0B75,12
.balign 4
	.lcomm	_Lt_0B77,12

.section .text
.balign 16
__EMITSTORI2L:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0306:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0308
mov dword ptr [ebp-4], 24
jmp .L_0B78
.L_0308:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B78:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B7C], ebx
push offset _Lt_0B7D
push offset _Lt_0B7E
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B7F
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_030B
push dword ptr [_Lt_0B7F]
push dword ptr [_Lt_0B7E]
call _HMOV
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_030C
mov dword ptr [ebp-12], 24
jmp .L_0B79
.L_030C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0B79:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_0B80
jg .L_0B81
cmp dword ptr [eax+24], 0
jb .L_0B80
.L_0B81:
xor ecx, ecx
.L_0B80:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .L_030F
push offset _Lt_0310
push dword ptr [_Lt_0B7D]
call _HMOV
add esp, 8
jmp .L_030E
.L_030F:
push offset _Lt_0006
push dword ptr [_Lt_0B7D]
call _HMOV
add esp, 8
.L_030E:
jmp .L_0307
.L_030B:
.L_030A:
cmp dword ptr [_Lt_0B7C], 4
jge .L_0312
push 0
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B82
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0313
mov dword ptr [ebp-12], 24
jmp .L_0B7A
.L_0313:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0B7A:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0316
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
jmp .L_0315
.L_0316:
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
.L_0315:
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B83]
call _OUTP
add esp, 4
jmp .L_0311
.L_0312:
push 0
push -1
push offset _Lt_0B7F
push -1
push offset _Lt_0B82
call _fb_StrAssign
add esp, 20
.L_0311:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7E
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B83]
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0319
mov dword ptr [ebp-8], 24
jmp .L_0B7B
.L_0319:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0B7B:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_031C
push dword ptr [_Lt_0B82]
call _HPUSH
add esp, 4
push 0
push 5
push offset _Lt_031D
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_031E
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B83]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7D
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B82
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B83]
call _OUTP
add esp, 4
push dword ptr [_Lt_0B82]
call _HPOP
add esp, 4
jmp .L_031B
.L_031C:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B83
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B7D
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_02FD
push -1
push offset _Lt_0B83
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B83]
call _OUTP
add esp, 4
.L_031B:
.L_0307:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B7E,12
.balign 4
	.lcomm	_Lt_0B7D,12
.balign 4
	.lcomm	_Lt_0B7F,12
.balign 4
	.lcomm	_Lt_0B82,12
.balign 4
	.lcomm	_Lt_0B83,12
.balign 4
	.lcomm	_Lt_0B7C,4

.section .text
.balign 16
__EMITSTORF2L:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_031F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B85
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0321
mov dword ptr [ebp-4], 24
jmp .L_0B84
.L_0321:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B84:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0324
push 0
push 7
push offset _Lt_0325
push -1
push offset _Lt_0B86
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B85
push -1
push offset _Lt_0B86
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B86]
call _OUTP
add esp, 4
.L_0324:
.L_0323:
.L_0320:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B85,12
.balign 4
	.lcomm	_Lt_0B86,12

.section .text
.balign 16
__EMITSTORI2I:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0326:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B8A
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B8B
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0328
mov dword ptr [ebp-4], 24
jmp .L_0B87
.L_0328:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B87:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B8C], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_032A
mov dword ptr [ebp-8], 24
jmp .L_0B88
.L_032A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0B88:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0B8D], eax
cmp dword ptr [_Lt_0B8C], 1
jne .L_032D
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_032F
mov dword ptr [_Lt_0B8C], 4
.L_032F:
.L_032E:
.L_032D:
.L_032C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0B8D]
cmp eax, dword ptr [_Lt_0B8C]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0331
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8B
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
jmp .L_0330
.L_0331:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B91
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_0B8D]
cmp dword ptr [_Lt_0B8C], eax
jle .L_0333
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0334
mov dword ptr [ebp-12], 24
jmp .L_0B89
.L_0334:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0B89:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0337
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
jmp .L_0336
.L_0337:
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
.L_0336:
push 0
push -1
push offset _Lt_0B91
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8B
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B91
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
jmp .L_0332
.L_0333:
mov dword ptr [_Lt_0B92], 0
cmp dword ptr [_Lt_0B8C], 1
jne .L_0339
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_033B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [_Lt_0B92], ebx
.L_033B:
.L_033A:
.L_0339:
.L_0338:
cmp dword ptr [_Lt_0B92], 0
je .L_033D
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0B95], eax
push 0
push 0
push dword ptr [_Lt_0B95]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B96
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0B95]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B91
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B95]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0B97], eax
cmp dword ptr [_Lt_0B97], 0
jne .L_033F
push dword ptr [_Lt_0B91]
call _HPUSH
add esp, 4
.L_033F:
.L_033E:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B91
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8B
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B96
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0B97], 0
jne .L_0341
push dword ptr [_Lt_0B91]
call _HPOP
add esp, 4
.L_0341:
.L_0340:
jmp .L_033C
.L_033D:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0B90
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B8A
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0B91
push -1
push offset _Lt_0B90
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0B90]
call _OUTP
add esp, 4
.L_033C:
.L_0332:
.L_0330:
.L_0327:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B8A,12
.balign 4
	.lcomm	_Lt_0B8B,12
.balign 4
	.lcomm	_Lt_0B8C,4
.balign 4
	.lcomm	_Lt_0B8D,4
.balign 4
	.lcomm	_Lt_0B90,12
.balign 4
	.lcomm	_Lt_0B91,12
.balign 4
	.lcomm	_Lt_0B92,4
.balign 4
	.lcomm	_Lt_0B96,12
.balign 4
	.lcomm	_Lt_0B95,4
.balign 4
	.lcomm	_Lt_0B97,4

.section .text
.balign 16
__EMITSTORL2I:
push ebp
mov ebp, esp
.L_0342:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITSTORI2I
add esp, 8
.L_0343:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORF2I:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0344:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B9A
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0B9B
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0346
mov dword ptr [ebp-4], 24
jmp .L_0B98
.L_0346:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0B98:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0B9C], ebx
cmp dword ptr [_Lt_0B9C], 1
jne .L_0349
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_034B
call _OUTP
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_034D
push offset _Lt_034E
push dword ptr [_Lt_0B9A]
call _HMOV
add esp, 8
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_034C
.L_034D:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0B9D], eax
push 0
push 0
push dword ptr [_Lt_0B9D]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B9E
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0B9D]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0B9F
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0B9D]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BA0], eax
cmp dword ptr [_Lt_0BA0], 0
jne .L_0351
push offset _Lt_0352
push dword ptr [_Lt_0B9F]
call _HXCHG
add esp, 8
jmp .L_0350
.L_0351:
push offset _Lt_034E
push dword ptr [_Lt_0B9E]
call _HMOV
add esp, 8
.L_0350:
push dword ptr [_Lt_0B9E]
push dword ptr [_Lt_0B9A]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0BA0], 0
jne .L_0354
push dword ptr [_Lt_0B9F]
call _HPOP
add esp, 4
jmp .L_0353
.L_0354:
push offset _Lt_034F
call _OUTP
add esp, 4
.L_0353:
.L_034C:
jmp .L_0348
.L_0349:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0355
mov dword ptr [ebp-8], 24
jmp .L_0B99
.L_0355:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0B99:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0358
push 0
push 7
push offset _Lt_0325
push -1
push offset _Lt_0BA1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0B9A
push -1
push offset _Lt_0BA1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BA1]
call _OUTP
add esp, 4
jmp .L_0357
.L_0358:
cmp dword ptr [_Lt_0B9C], 4
jne .L_035A
push offset _Lt_035B
call _OUTP
add esp, 4
push offset _Lt_035C
call _OUTP
add esp, 4
push dword ptr [_Lt_0B9A]
call _HPOP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_0359
.L_035A:
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_034B
call _OUTP
add esp, 4
push dword ptr [_Lt_0B9A]
call _HPOP
add esp, 4
push offset _Lt_035D
call _OUTP
add esp, 4
.L_0359:
.L_0357:
.L_0348:
.L_0345:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0B9A,12
.balign 4
	.lcomm	_Lt_0B9B,12
.balign 4
	.lcomm	_Lt_0B9C,4
.balign 4
	.lcomm	_Lt_0BA1,12
.balign 4
	.lcomm	_Lt_0B9D,4
.balign 4
	.lcomm	_Lt_0BA0,4
.balign 4
	.lcomm	_Lt_0B9F,12
.balign 4
	.lcomm	_Lt_0B9E,12

.section .text
.balign 16
__EMITSTORL2F:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_035E:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA4
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BA5
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0361
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0362
mov dword ptr [ebp-4], 24
jmp .L_0BA2
.L_0362:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0BA2:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0365
push offset _Lt_0BA8
push offset _Lt_0BA5
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BA8]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BA5]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_0366
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BA9
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BA9]
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_0364
.L_0365:
push offset _Lt_0BA8
push offset _Lt_0BA5
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BA8]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BA5]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_0364:
jmp .L_0360
.L_0361:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_036C
mov dword ptr [ebp-4], 24
jmp .L_0BA3
.L_036C:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BA3:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_036F
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0BA9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BA5
push -1
push offset _Lt_0BA9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BA9]
call _OUTP
add esp, 4
jmp .L_036E
.L_036F:
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0BA9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BA5
push -1
push offset _Lt_0BA9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BA9]
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_036E:
.L_0360:
push 0
push 6
push offset _Lt_0370
push -1
push offset _Lt_0BA9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BA4
push -1
push offset _Lt_0BA9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BA9]
call _OUTP
add esp, 4
.L_035F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BA4,12
.balign 4
	.lcomm	_Lt_0BA5,12
.balign 4
	.lcomm	_Lt_0BA8,12
.balign 4
	.lcomm	_Lt_0BA9,12

.section .text
.balign 16
__EMITSTORI2F:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0371:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BAE
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BAF
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0373
mov dword ptr [ebp-4], 24
jmp .L_0BAA
.L_0373:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BAA:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BB0], ebx
cmp dword ptr [_Lt_0BB0], 1
jne .L_0376
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BB1], eax
push 0
push 0
push dword ptr [_Lt_0BB1]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BB2
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BB1]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BB3], eax
cmp dword ptr [_Lt_0BB3], 0
jne .L_0378
push dword ptr [_Lt_0BB2]
call _HPUSH
add esp, 4
.L_0378:
.L_0377:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0379
mov dword ptr [ebp-8], 24
jmp .L_0BAB
.L_0379:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BAB:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_037C
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
jmp .L_037B
.L_037C:
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
.L_037B:
push 0
push -1
push offset _Lt_0BB2
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BAF
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
push dword ptr [_Lt_0BB2]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BB3], 0
jne .L_037F
push dword ptr [_Lt_0BB2]
call _HPOP
add esp, 4
.L_037F:
.L_037E:
push 0
push 6
push offset _Lt_0370
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BAE
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
jmp .L_0372
.L_0376:
.L_0375:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0381
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0382
mov dword ptr [ebp-8], 24
jmp .L_0BAC
.L_0382:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0BAC:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0385
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0BB0]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0387
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BAF
call _fb_StrAssign
add esp, 20
.L_0387:
.L_0386:
push dword ptr [_Lt_0BAF]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_0366
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_0384
.L_0385:
cmp dword ptr [_Lt_0BB0], 4
jne .L_038B
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BAF]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_038A
.L_038B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_038D
push offset _Lt_0006
call _HPUSH
add esp, 4
.L_038D:
.L_038C:
push dword ptr [_Lt_0BAF]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_038F
push offset _Lt_0390
call _OUTP
add esp, 4
jmp .L_038E
.L_038F:
push offset _Lt_034F
call _OUTP
add esp, 4
.L_038E:
.L_038A:
.L_0384:
jmp .L_0380
.L_0381:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0391
mov dword ptr [ebp-8], 24
jmp .L_0BAD
.L_0391:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BAD:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0394
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BAF
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
jmp .L_0393
.L_0394:
cmp dword ptr [_Lt_0BB0], 4
jne .L_0396
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BAF]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_0395
.L_0396:
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BAF]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_0390
call _OUTP
add esp, 4
.L_0395:
.L_0393:
.L_0380:
push 0
push 6
push offset _Lt_0370
push -1
push offset _Lt_0BB4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BAE
push -1
push offset _Lt_0BB4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BB4]
call _OUTP
add esp, 4
.L_0372:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BAE,12
.balign 4
	.lcomm	_Lt_0BAF,12
.balign 4
	.lcomm	_Lt_0BB0,4
.balign 4
	.lcomm	_Lt_0BB4,12
.balign 4
	.lcomm	_Lt_0BB2,12
.balign 4
	.lcomm	_Lt_0BB1,4
.balign 4
	.lcomm	_Lt_0BB3,4

.section .text
.balign 16
__EMITSTORF2F:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0397:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BBB
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BBC
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0399
mov dword ptr [ebp-4], 24
jmp .L_0BB9
.L_0399:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BB9:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BBD], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_039B
mov dword ptr [ebp-8], 24
jmp .L_0BBA
.L_039B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BBA:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0BBE], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_039E
push 0
push 6
push offset _Lt_0370
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBB
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
jmp .L_039D
.L_039E:
mov eax, dword ptr [_Lt_0BBD]
cmp dword ptr [_Lt_0BBE], eax
jne .L_03A0
push -1
push 0
push 0
push 8
push offset _Lt_0BBC
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBC
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BBE], 4
jle .L_03A2
push -1
push 0
push 4
push 8
push offset _Lt_0BBC
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBC
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
push -1
push 0
push 4
push 8
push offset _Lt_0BBB
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBB
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
.L_03A2:
.L_03A1:
push -1
push 0
push 0
push 8
push offset _Lt_0BBB
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBB
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
jmp .L_039F
.L_03A0:
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBC
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
push 0
push 6
push offset _Lt_0370
push -1
push offset _Lt_0BBF
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BBB
push -1
push offset _Lt_0BBF
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BBF]
call _OUTP
add esp, 4
.L_039F:
.L_039D:
.L_0398:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BBB,12
.balign 4
	.lcomm	_Lt_0BBC,12
.balign 4
	.lcomm	_Lt_0BBD,4
.balign 4
	.lcomm	_Lt_0BBE,4
.balign 4
	.lcomm	_Lt_0BBF,12

.section .text
.balign 16
__EMITLOADL2L:
push ebp
mov ebp, esp
.L_03A4:
push offset _Lt_0BC0
push offset _Lt_0BC1
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0BC2
push offset _Lt_0BC3
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0BC4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC1
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC3
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BC4]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0BC4
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC0
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC2
push -1
push offset _Lt_0BC4
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BC4]
call _OUTP
add esp, 4
.L_03A5:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BC1,12
.balign 4
	.lcomm	_Lt_0BC0,12
.balign 4
	.lcomm	_Lt_0BC3,12
.balign 4
	.lcomm	_Lt_0BC2,12
.balign 4
	.lcomm	_Lt_0BC4,12

.section .text
.balign 16
__EMITLOADI2L:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_03A6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03A8
mov dword ptr [ebp-4], 24
jmp .L_0BC5
.L_03A8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BC5:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BC8], ebx
push offset _Lt_0BC9
push offset _Lt_0BCA
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BCB
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_03AB
push dword ptr [_Lt_0BCB]
push dword ptr [_Lt_0BCA]
call _HMOV
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03AC
mov dword ptr [ebp-12], 24
jmp .L_0BC6
.L_03AC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0BC6:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
mov ecx, -1
jl .L_0BCC
jg .L_0BCD
cmp dword ptr [eax+24], 0
jb .L_0BCC
.L_0BCD:
xor ecx, ecx
.L_0BCC:
and ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
je .L_03AF
push offset _Lt_0310
push dword ptr [_Lt_0BC9]
call _HMOV
add esp, 8
jmp .L_03AE
.L_03AF:
push offset _Lt_0006
push dword ptr [_Lt_0BC9]
call _HMOV
add esp, 8
.L_03AE:
jmp .L_03A7
.L_03AB:
.L_03AA:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .L_03B0
mov dword ptr [ebp-8], 24
jmp .L_0BC7
.L_03B0:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BC7:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_03B3
cmp dword ptr [_Lt_0BC8], 4
jge .L_03B5
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0BCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCA
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCB
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCE]
call _OUTP
add esp, 4
jmp .L_03B4
.L_03B5:
push dword ptr [_Lt_0BCB]
push dword ptr [_Lt_0BCA]
call _HMOV
add esp, 8
.L_03B4:
push dword ptr [_Lt_0BCA]
push dword ptr [_Lt_0BC9]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_031D
push -1
push offset _Lt_0BCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BC9
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_031E
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCE]
call _OUTP
add esp, 4
jmp .L_03B2
.L_03B3:
cmp dword ptr [_Lt_0BC8], 4
jge .L_03B7
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0BCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCA
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BCB
push -1
push offset _Lt_0BCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BCE]
call _OUTP
add esp, 4
jmp .L_03B6
.L_03B7:
push dword ptr [_Lt_0BCB]
push dword ptr [_Lt_0BCA]
call _HMOV
add esp, 8
.L_03B6:
push offset _Lt_0006
push dword ptr [_Lt_0BC9]
call _HMOV
add esp, 8
.L_03B2:
.L_03A7:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BCA,12
.balign 4
	.lcomm	_Lt_0BC9,12
.balign 4
	.lcomm	_Lt_0BCB,12
.balign 4
	.lcomm	_Lt_0BC8,4
.balign 4
	.lcomm	_Lt_0BCE,12

.section .text
.balign 16
__EMITLOADF2L:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_03B8:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BD1
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BD2
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03BB
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0BD3
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BD2
push -1
push offset _Lt_0BD3
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BD3]
call _OUTP
add esp, 4
.L_03BB:
.L_03BA:
push offset _Lt_0BD4
push offset _Lt_0BD1
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03BC
mov dword ptr [ebp-4], 24
jmp .L_0BCF
.L_03BC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BCF:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03BF
push offset _Lt_035B
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_0325
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BD3
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BD3]
call _OUTP
add esp, 4
push dword ptr [_Lt_0BD1]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BD4]
call _HPOP
add esp, 4
jmp .L_03BE
.L_03BF:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0BD5
call _fb_StrAssign
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0BD6
call _fb_StrAssign
add esp, 20
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BD7], eax
cmp dword ptr [_Lt_0BD7], 0
jne .L_03C2
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0BD0
.L_03C2:
mov dword ptr [ebp-8], -1
.L_0BD0:
mov eax, dword ptr [ebp-8]
mov dword ptr [_Lt_0BD7], eax
push offset _Lt_035B
call _OUTP
add esp, 4
push offset _Lt_03C4
call _OUTP
add esp, 4
cmp dword ptr [_ENV+112], 3
jl .L_03C6
push offset _Lt_03C7
call _OUTP
add esp, 4
push offset _Lt_03C8
call _OUTP
add esp, 4
push dword ptr [_Lt_0BD5]
push offset _Lt_03C9
call _HBRANCH
add esp, 8
jmp .L_03C5
.L_03C6:
push offset _Lt_03CA
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BD7], 0
je .L_03CC
push offset _Lt_03CD
call _OUTP
add esp, 4
push offset _Lt_03CE
call _OUTP
add esp, 4
jmp .L_03CB
.L_03CC:
push offset _Lt_0088
call _HPUSH
add esp, 4
push offset _Lt_03CD
call _OUTP
add esp, 4
push offset _Lt_03CE
call _OUTP
add esp, 4
push offset _Lt_0088
call _HPOP
add esp, 4
.L_03CB:
push dword ptr [_Lt_0BD5]
push offset _Lt_03CF
call _HBRANCH
add esp, 8
.L_03C5:
push offset _Lt_035C
call _OUTP
add esp, 4
push dword ptr [_Lt_0BD1]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BD4]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BD6]
push offset _Lt_03D0
call _HBRANCH
add esp, 8
push dword ptr [_Lt_0BD5]
call _HLABEL
add esp, 4
push offset _Lt_03D1
call _OUTP
add esp, 4
push offset _Lt_035C
call _OUTP
add esp, 4
push dword ptr [_Lt_0BD1]
call _HPOP
add esp, 4
push dword ptr [_Lt_0BD4]
call _HPOP
add esp, 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 13
push offset _Lt_03D3
push -1
push -1
push offset _Lt_0BD4
push 5
push offset _Lt_03D2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _OUTP
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [_Lt_0BD6]
call _HLABEL
add esp, 4
.L_03BE:
.L_03B9:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BD1,12
.balign 4
	.lcomm	_Lt_0BD2,12
.balign 4
	.lcomm	_Lt_0BD4,12
.balign 4
	.lcomm	_Lt_0BD3,12
.balign 4
	.lcomm	_Lt_0BD5,12
.balign 4
	.lcomm	_Lt_0BD6,12
.balign 4
	.lcomm	_Lt_0BD7,4

.section .text
.balign 16
__EMITLOADI2I:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_03D7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BDC
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BDD
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03D9
mov dword ptr [ebp-4], 24
jmp .L_0BD9
.L_03D9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BD9:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BDE], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03DB
mov dword ptr [ebp-8], 24
jmp .L_0BDA
.L_03DB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_0BDA:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_Lt_0BDF], eax
cmp dword ptr [_Lt_0BDE], 1
jne .L_03DE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_03E0
mov dword ptr [_Lt_0BDE], 4
.L_03E0:
.L_03DF:
.L_03DE:
.L_03DD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0BDF]
cmp eax, dword ptr [_Lt_0BDE]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03E2
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0BE2
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDC
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDD
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BE2]
call _OUTP
add esp, 4
jmp .L_03E1
.L_03E2:
mov eax, dword ptr [_Lt_0BDF]
cmp dword ptr [_Lt_0BDE], eax
jle .L_03E4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03E5
mov dword ptr [ebp-12], 24
jmp .L_0BDB
.L_03E5:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0BDB:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_03E8
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0BE2
call _fb_StrAssign
add esp, 20
jmp .L_03E7
.L_03E8:
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0BE2
call _fb_StrAssign
add esp, 20
.L_03E7:
push 0
push -1
push offset _Lt_0BDC
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDD
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BE2]
call _OUTP
add esp, 4
jmp .L_03E3
.L_03E4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_03EA
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
cmp dword ptr [eax+12], ecx
je .L_03EC
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [_Lt_0BE3], eax
cmp dword ptr [_Lt_0BDE], 1
jne .L_03EE
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_03F0
mov dword ptr [_Lt_0BE3], 8
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [_Lt_0BE3]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BDC
call _fb_StrAssign
add esp, 20
.L_03F0:
.L_03EF:
.L_03EE:
.L_03ED:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push dword ptr [_Lt_0BE3]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BE6
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0BE2
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDC
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BE6
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BE2]
call _OUTP
add esp, 4
.L_03EC:
.L_03EB:
jmp .L_03E9
.L_03EA:
push -1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push offset _Lt_0BDD
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0BE2
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDC
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BDD
push -1
push offset _Lt_0BE2
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BE2]
call _OUTP
add esp, 4
.L_03E9:
.L_03E3:
.L_03E1:
.L_03D8:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BDC,12
.balign 4
	.lcomm	_Lt_0BDD,12
.balign 4
	.lcomm	_Lt_0BDE,4
.balign 4
	.lcomm	_Lt_0BDF,4
.balign 4
	.lcomm	_Lt_0BE2,12
.balign 4
	.lcomm	_Lt_0BE6,12
.balign 4
	.lcomm	_Lt_0BE3,4

.section .text
.balign 16
__EMITLOADL2I:
push ebp
mov ebp, esp
.L_03F1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2I
add esp, 8
.L_03F2:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADF2I:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_03F3:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BE9
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BEA
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_03F5
mov dword ptr [ebp-4], 24
jmp .L_0BE7
.L_03F5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BE7:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BEB], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_03F8
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0BEC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BEA
push -1
push offset _Lt_0BEC
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BEC]
call _OUTP
add esp, 4
.L_03F8:
.L_03F7:
cmp dword ptr [_Lt_0BEB], 1
jne .L_03FA
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_034B
call _OUTP
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_03FC
push offset _Lt_034E
push dword ptr [_Lt_0BE9]
call _HMOV
add esp, 8
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_03FB
.L_03FC:
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0BED], eax
push 0
push 0
push dword ptr [_Lt_0BED]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BEE
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0BED]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BEF
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BED]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0BF0], eax
cmp dword ptr [_Lt_0BF0], 0
jne .L_03FE
push offset _Lt_0352
push dword ptr [_Lt_0BEF]
call _HXCHG
add esp, 8
jmp .L_03FD
.L_03FE:
push offset _Lt_034E
push dword ptr [_Lt_0BEE]
call _HMOV
add esp, 8
.L_03FD:
push dword ptr [_Lt_0BEE]
push dword ptr [_Lt_0BE9]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0BF0], 0
jne .L_0400
push dword ptr [_Lt_0BEF]
call _HPOP
add esp, 4
jmp .L_03FF
.L_0400:
push offset _Lt_034F
call _OUTP
add esp, 4
.L_03FF:
.L_03FB:
jmp .L_03F9
.L_03FA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0401
mov dword ptr [ebp-8], 24
jmp .L_0BE8
.L_0401:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BE8:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0404
push offset _Lt_034A
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 7
push offset _Lt_0325
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BEC
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BEC]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0BEB], 4
jge .L_0408
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BE9
call _fb_StrAssign
add esp, 20
.L_0408:
.L_0407:
push dword ptr [_Lt_0BE9]
call _HPOP
add esp, 4
jmp .L_0403
.L_0404:
cmp dword ptr [_Lt_0BEB], 4
jne .L_040A
push offset _Lt_035B
call _OUTP
add esp, 4
push offset _Lt_035C
call _OUTP
add esp, 4
push dword ptr [_Lt_0BE9]
call _HPOP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_0409
.L_040A:
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_034B
call _OUTP
add esp, 4
push dword ptr [_Lt_0BE9]
call _HPOP
add esp, 4
push offset _Lt_035D
call _OUTP
add esp, 4
.L_0409:
.L_0403:
.L_03F9:
.L_03F4:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BE9,12
.balign 4
	.lcomm	_Lt_0BEA,12
.balign 4
	.lcomm	_Lt_0BEB,4
.balign 4
	.lcomm	_Lt_0BEC,12
.balign 4
	.lcomm	_Lt_0BEF,12
.balign 4
	.lcomm	_Lt_0BEE,12
.balign 4
	.lcomm	_Lt_0BED,4
.balign 4
	.lcomm	_Lt_0BF0,4

.section .text
.balign 16
__EMITLOADL2F:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_040B:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BF3
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BF4
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_040E
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_040F
mov dword ptr [ebp-4], 24
jmp .L_0BF1
.L_040F:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0BF1:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_0412
push offset _Lt_0BF7
push offset _Lt_0BF4
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BF7]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BF4]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [_DTYPETB+ebx+4]
push ecx
push 6
push offset _Lt_0366
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0BF8
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0BF8]
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_0411
.L_0412:
push offset _Lt_0BF7
push offset _Lt_0BF4
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push dword ptr [_Lt_0BF7]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BF4]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_0411:
jmp .L_040D
.L_040E:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0415
mov dword ptr [ebp-4], 24
jmp .L_0BF2
.L_0415:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BF2:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0418
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0BF8
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BF4
push -1
push offset _Lt_0BF8
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BF8]
call _OUTP
add esp, 4
jmp .L_0417
.L_0418:
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0BF8
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BF4
push -1
push offset _Lt_0BF8
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0BF8]
call _OUTP
add esp, 4
push dword ptr [ebp+12]
call _HULONG2DBL
add esp, 4
.L_0417:
.L_040D:
.L_040C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BF3,12
.balign 4
	.lcomm	_Lt_0BF4,12
.balign 4
	.lcomm	_Lt_0BF7,12
.balign 4
	.lcomm	_Lt_0BF8,12

.section .text
.balign 16
__EMITLOADI2F:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0419:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BFD
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0BFE
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_041B
mov dword ptr [ebp-4], 24
jmp .L_0BF9
.L_041B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0BF9:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0BFF], ebx
cmp dword ptr [_Lt_0BFF], 1
jne .L_041E
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C00], eax
push 0
push 0
push dword ptr [_Lt_0C00]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C01
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C00]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C02], eax
cmp dword ptr [_Lt_0C02], 0
jne .L_0420
push dword ptr [_Lt_0C01]
call _HPUSH
add esp, 4
.L_0420:
.L_041F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0421
mov dword ptr [ebp-8], 24
jmp .L_0BFA
.L_0421:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BFA:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0424
push 0
push 7
push offset _Lt_0317
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C01
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BFE
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
jmp .L_0423
.L_0424:
push 0
push 7
push offset _Lt_0318
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C01
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0BFE
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
.L_0423:
push dword ptr [_Lt_0C01]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0C02], 0
jne .L_0426
push dword ptr [_Lt_0C01]
call _HPOP
add esp, 4
.L_0426:
.L_0425:
jmp .L_041A
.L_041E:
.L_041D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0428
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_0429
mov dword ptr [ebp-8], 24
jmp .L_0BFB
.L_0429:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0BFB:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_042C
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0BFF]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_042E
push 0
push 0
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0BFE
call _fb_StrAssign
add esp, 20
.L_042E:
.L_042D:
push dword ptr [_Lt_0BFE]
call _HPUSH
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [_DTYPETB+ecx+4]
push eax
push 6
push offset _Lt_0366
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_042B
.L_042C:
cmp dword ptr [_Lt_0BFF], 4
jne .L_0432
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BFE]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_0431
.L_0432:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0434
push offset _Lt_0006
call _HPUSH
add esp, 4
.L_0434:
.L_0433:
push dword ptr [_Lt_0BFE]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0436
push offset _Lt_0390
call _OUTP
add esp, 4
jmp .L_0435
.L_0436:
push offset _Lt_034F
call _OUTP
add esp, 4
.L_0435:
.L_0431:
.L_042B:
jmp .L_0427
.L_0428:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0437
mov dword ptr [ebp-8], 24
jmp .L_0BFC
.L_0437:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0BFC:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_043A
push 0
push 6
push offset _Lt_0366
push -1
push offset _Lt_0C03
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0BFE
push -1
push offset _Lt_0C03
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C03]
call _OUTP
add esp, 4
jmp .L_0439
.L_043A:
cmp dword ptr [_Lt_0BFF], 4
jne .L_043C
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BFE]
call _HPUSH
add esp, 4
push offset _Lt_036B
call _OUTP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
jmp .L_043B
.L_043C:
push offset _Lt_0006
call _HPUSH
add esp, 4
push dword ptr [_Lt_0BFE]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_0390
call _OUTP
add esp, 4
.L_043B:
.L_0439:
.L_0427:
.L_041A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0BFD,12
.balign 4
	.lcomm	_Lt_0BFE,12
.balign 4
	.lcomm	_Lt_0BFF,4
.balign 4
	.lcomm	_Lt_0C03,12
.balign 4
	.lcomm	_Lt_0C01,12
.balign 4
	.lcomm	_Lt_0C02,4
.balign 4
	.lcomm	_Lt_0C00,4

.section .text
.balign 16
__EMITLOADF2F:
push ebp
mov ebp, esp
.L_043D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C08
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0C09
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C08
push -1
push offset _Lt_0C09
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C09]
call _OUTP
add esp, 4
.L_043E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C08,12
.balign 4
	.lcomm	_Lt_0C09,12

.section .text
.balign 16
__EMITMOVL:
push ebp
mov ebp, esp
.L_043F:
push offset _Lt_0C0A
push offset _Lt_0C0B
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C0C
push offset _Lt_0C0D
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0B
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0D
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0C0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0A
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C0C
push -1
push offset _Lt_0C0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C0E]
call _OUTP
add esp, 4
.L_0440:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C0B,12
.balign 4
	.lcomm	_Lt_0C0A,12
.balign 4
	.lcomm	_Lt_0C0D,12
.balign 4
	.lcomm	_Lt_0C0C,12
.balign 4
	.lcomm	_Lt_0C0E,12

.section .text
.balign 16
__EMITMOVI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0441:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0443
mov dword ptr [ebp-4], 24
jmp .L_0C0F
.L_0443:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C0F:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
jne .L_0446
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C10
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C11
call _fb_StrAssign
add esp, 20
jmp .L_0445
.L_0446:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C10
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C11
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
.L_0445:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0C12
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C10
push -1
push offset _Lt_0C12
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C12
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C11
push -1
push offset _Lt_0C12
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C12]
call _OUTP
add esp, 4
.L_0442:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C10,12
.balign 4
	.lcomm	_Lt_0C11,12
.balign 4
	.lcomm	_Lt_0C12,12

.section .text
.balign 16
__EMITMOVF:
push ebp
mov ebp, esp
.L_0447:
.L_0448:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDL:
push ebp
mov ebp, esp
.L_0449:
push offset _Lt_0C13
push offset _Lt_0C14
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C15
push offset _Lt_0C16
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_044B
push -1
push offset _Lt_0C17
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C14
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C16
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C17]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_044C
push -1
push offset _Lt_0C17
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C13
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C15
push -1
push offset _Lt_0C17
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C17]
call _OUTP
add esp, 4
.L_044A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C14,12
.balign 4
	.lcomm	_Lt_0C13,12
.balign 4
	.lcomm	_Lt_0C16,12
.balign 4
	.lcomm	_Lt_0C15,12
.balign 4
	.lcomm	_Lt_0C17,12

.section .text
.balign 16
__EMITADDI:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_044D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C18
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C19
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0C1A], 0
mov dword ptr [_Lt_0C1B], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0450
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0453
cmp dword ptr [ebp-8], 1
jne .L_0453
.L_0C1C:
.L_0454:
mov dword ptr [_Lt_0C1A], -1
jmp .L_0451
.L_0453:
cmp dword ptr [ebp-4], 4294967295
jne .L_0455
cmp dword ptr [ebp-8], 4294967295
jne .L_0455
.L_0C1D:
.L_0456:
mov dword ptr [_Lt_0C1B], -1
.L_0455:
.L_0451:
.L_0450:
.L_044F:
cmp dword ptr [_Lt_0C1A], 0
je .L_0458
push 0
push 5
push offset _Lt_0459
push -1
push offset _Lt_0C1E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C18
push -1
push offset _Lt_0C1E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C1E]
call _OUTP
add esp, 4
jmp .L_0457
.L_0458:
cmp dword ptr [_Lt_0C1B], 0
je .L_045A
push 0
push 5
push offset _Lt_045B
push -1
push offset _Lt_0C1E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C18
push -1
push offset _Lt_0C1E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C1E]
call _OUTP
add esp, 4
jmp .L_0457
.L_045A:
push 0
push 5
push offset _Lt_044B
push -1
push offset _Lt_0C1E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C18
push -1
push offset _Lt_0C1E
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C1E
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C19
push -1
push offset _Lt_0C1E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C1E]
call _OUTP
add esp, 4
.L_0457:
.L_044E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C18,12
.balign 4
	.lcomm	_Lt_0C19,12
.balign 4
	.lcomm	_Lt_0C1A,4
.balign 4
	.lcomm	_Lt_0C1B,4
.balign 4
	.lcomm	_Lt_0C1E,12

.section .text
.balign 16
__EMITADDF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_045C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C20
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_045F
push 0
push 6
push offset _Lt_0303
push -1
push offset _Lt_0C21
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C21]
call _OUTP
add esp, 4
jmp .L_045E
.L_045F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0460
mov dword ptr [ebp-4], 24
jmp .L_0C1F
.L_0460:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C1F:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0463
push 0
push 6
push offset _Lt_0464
push -1
push offset _Lt_0C21
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C20
push -1
push offset _Lt_0C21
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C21]
call _OUTP
add esp, 4
jmp .L_0462
.L_0463:
push 0
push 7
push offset _Lt_0465
push -1
push offset _Lt_0C21
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C20
push -1
push offset _Lt_0C21
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C21]
call _OUTP
add esp, 4
.L_0462:
.L_045E:
.L_045D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C20,12
.balign 4
	.lcomm	_Lt_0C21,12

.section .text
.balign 16
__EMITSUBL:
push ebp
mov ebp, esp
.L_0466:
push offset _Lt_0C22
push offset _Lt_0C23
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C24
push offset _Lt_0C25
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0468
push -1
push offset _Lt_0C26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C23
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C25
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C26]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0469
push -1
push offset _Lt_0C26
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C22
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C24
push -1
push offset _Lt_0C26
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C26]
call _OUTP
add esp, 4
.L_0467:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C23,12
.balign 4
	.lcomm	_Lt_0C22,12
.balign 4
	.lcomm	_Lt_0C25,12
.balign 4
	.lcomm	_Lt_0C24,12
.balign 4
	.lcomm	_Lt_0C26,12

.section .text
.balign 16
__EMITSUBI:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_046A:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C27
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C28
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0C29], 0
mov dword ptr [_Lt_0C2A], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_046D
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0470
cmp dword ptr [ebp-8], 1
jne .L_0470
.L_0C2B:
.L_0471:
mov dword ptr [_Lt_0C2A], -1
jmp .L_046E
.L_0470:
cmp dword ptr [ebp-4], 4294967295
jne .L_0472
cmp dword ptr [ebp-8], 4294967295
jne .L_0472
.L_0C2C:
.L_0473:
mov dword ptr [_Lt_0C29], -1
.L_0472:
.L_046E:
.L_046D:
.L_046C:
cmp dword ptr [_Lt_0C2A], 0
je .L_0475
push 0
push 5
push offset _Lt_045B
push -1
push offset _Lt_0C2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C27
push -1
push offset _Lt_0C2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C2D]
call _OUTP
add esp, 4
jmp .L_0474
.L_0475:
cmp dword ptr [_Lt_0C29], 0
je .L_0476
push 0
push 5
push offset _Lt_0459
push -1
push offset _Lt_0C2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C27
push -1
push offset _Lt_0C2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C2D]
call _OUTP
add esp, 4
jmp .L_0474
.L_0476:
push 0
push 5
push offset _Lt_0468
push -1
push offset _Lt_0C2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C27
push -1
push offset _Lt_0C2D
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C2D
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C28
push -1
push offset _Lt_0C2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C2D]
call _OUTP
add esp, 4
.L_0474:
.L_046B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C27,12
.balign 4
	.lcomm	_Lt_0C28,12
.balign 4
	.lcomm	_Lt_0C29,4
.balign 4
	.lcomm	_Lt_0C2A,4
.balign 4
	.lcomm	_Lt_0C2D,12

.section .text
.balign 16
__EMITSUBF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0477:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C2F
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_047A
push offset _Lt_047B
call _OUTP
add esp, 4
jmp .L_0479
.L_047A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_047C
mov dword ptr [ebp-4], 24
jmp .L_0C2E
.L_047C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C2E:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_047F
push 0
push 6
push offset _Lt_0480
push -1
push offset _Lt_0C30
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2F
push -1
push offset _Lt_0C30
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C30]
call _OUTP
add esp, 4
jmp .L_047E
.L_047F:
push 0
push 7
push offset _Lt_0481
push -1
push offset _Lt_0C30
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C2F
push -1
push offset _Lt_0C30
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C30]
call _OUTP
add esp, 4
.L_047E:
.L_0479:
.L_0478:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C2F,12
.balign 4
	.lcomm	_Lt_0C31,4
.balign 4
	.lcomm	_Lt_0C32,4
.balign 4
	.lcomm	_Lt_0C30,12

.section .text
.balign 16
__EMITMULL:
push ebp
mov ebp, esp
sub esp, 252
.L_0482:
push offset _Lt_0C33
push offset _Lt_0C34
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0C35
push offset _Lt_0C36
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C37], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C38], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C39], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C3A], eax
push dword ptr [_Lt_0C35]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C36]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C33]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C34]
call _HPUSH
add esp, 4
mov dword ptr [_Lt_0C3B], 0
cmp dword ptr [_Lt_0C3A], 0
je .L_0485
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0487
add dword ptr [_Lt_0C3B], 4
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0487:
.L_0486:
jmp .L_0484
.L_0485:
cmp dword ptr [_Lt_0C38], 0
jne .L_0489
add dword ptr [_Lt_0C3B], 4
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0489:
.L_0488:
.L_0484:
cmp dword ptr [_Lt_0C39], 0
je .L_048B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_048D
add dword ptr [_Lt_0C3B], 4
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_048D:
.L_048C:
jmp .L_048A
.L_048B:
cmp dword ptr [_Lt_0C37], 0
jne .L_048F
add dword ptr [_Lt_0C3B], 4
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_048F:
.L_048E:
.L_048A:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C3B]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C3B]
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 20
push offset _Lt_0494
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _OUTP
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C3B]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_0498
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C3B]
add eax, 12
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_049C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call _OUTP
add esp, 4
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_04A0
call _OUTP
add esp, 4
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C3B]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C3B]
add eax, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_04A5
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_04A9
call _OUTP
add esp, 4
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
push 7
push offset _Lt_04AB
push -1
push -1
mov eax, dword ptr [_Lt_0C3B]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_04AA
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-252]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-252]
call _OUTP
add esp, 4
lea eax, [ebp-252]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_Lt_0C39], 0
je .L_04B0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04B2
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04B2:
.L_04B1:
jmp .L_04AF
.L_04B0:
cmp dword ptr [_Lt_0C37], 0
jne .L_04B4
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04B4:
.L_04B3:
.L_04AF:
cmp dword ptr [_Lt_0C3A], 0
je .L_04B6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04B8
push offset _Lt_0083
call _HPOP
add esp, 4
.L_04B8:
.L_04B7:
jmp .L_04B5
.L_04B6:
cmp dword ptr [_Lt_0C38], 0
jne .L_04BA
push offset _Lt_0083
call _HPOP
add esp, 4
.L_04BA:
.L_04B9:
.L_04B5:
push dword ptr [_Lt_0C34]
call _HPOP
add esp, 4
push dword ptr [_Lt_0C33]
call _HPOP
add esp, 4
push offset _Lt_036A
call _OUTP
add esp, 4
.L_0483:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C34,12
.balign 4
	.lcomm	_Lt_0C33,12
.balign 4
	.lcomm	_Lt_0C36,12
.balign 4
	.lcomm	_Lt_0C35,12
.balign 4
	.lcomm	_Lt_0C37,4
.balign 4
	.lcomm	_Lt_0C38,4
.balign 4
	.lcomm	_Lt_0C39,4
.balign 4
	.lcomm	_Lt_0C3A,4
.balign 4
	.lcomm	_Lt_0C3B,4

.section .text
.balign 16
__EMITMULI:
push ebp
mov ebp, esp
.L_04BB:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C3C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C3D
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04BE
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C3E], eax
push 0
push 0
push dword ptr [_Lt_0C3E]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C3F
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C3E]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C40], eax
cmp dword ptr [_Lt_0C40], 0
jne .L_04C0
push dword ptr [_Lt_0C3F]
call _HPUSH
add esp, 4
.L_04C0:
.L_04BF:
push dword ptr [_Lt_0C3C]
push dword ptr [_Lt_0C3F]
call _HMOV
add esp, 8
push 0
push 6
push offset _Lt_04C1
push -1
push offset _Lt_0C41
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3F
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3D
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C41]
call _OUTP
add esp, 4
push dword ptr [_Lt_0C3F]
push dword ptr [_Lt_0C3C]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C40], 0
jne .L_04C3
push dword ptr [_Lt_0C3F]
call _HPOP
add esp, 4
.L_04C3:
.L_04C2:
jmp .L_04BD
.L_04BE:
push 0
push 6
push offset _Lt_04C1
push -1
push offset _Lt_0C41
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3C
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C3D
push -1
push offset _Lt_0C41
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C41]
call _OUTP
add esp, 4
.L_04BD:
.L_04BC:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C3E,4
.balign 4
	.lcomm	_Lt_0C40,4
.balign 4
	.lcomm	_Lt_0C3F,12
.balign 4
	.lcomm	_Lt_0C41,12
.balign 4
	.lcomm	_Lt_0C3C,12
.balign 4
	.lcomm	_Lt_0C3D,12

.section .text
.balign 16
__EMITMULF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04C4:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C43
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04C7
push offset _Lt_04C8
call _OUTP
add esp, 4
jmp .L_04C6
.L_04C7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04C9
mov dword ptr [ebp-4], 24
jmp .L_0C42
.L_04C9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C42:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04CC
push 0
push 6
push offset _Lt_04CD
push -1
push offset _Lt_0C44
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C43
push -1
push offset _Lt_0C44
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C44]
call _OUTP
add esp, 4
jmp .L_04CB
.L_04CC:
push 0
push 7
push offset _Lt_04CE
push -1
push offset _Lt_0C44
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C43
push -1
push offset _Lt_0C44
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C44]
call _OUTP
add esp, 4
.L_04CB:
.L_04C6:
.L_04C5:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C43,12
.balign 4
	.lcomm	_Lt_0C44,12

.section .text
.balign 16
__EMITDIVF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_04CF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C46
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04D2
push offset _Lt_04D3
call _OUTP
add esp, 4
jmp .L_04D1
.L_04D2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04D4
mov dword ptr [ebp-4], 24
jmp .L_0C45
.L_04D4:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C45:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_04D7
push 0
push 6
push offset _Lt_04D8
push -1
push offset _Lt_0C47
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C46
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C47]
call _OUTP
add esp, 4
jmp .L_04D6
.L_04D7:
push 0
push 7
push offset _Lt_04D9
push -1
push offset _Lt_0C47
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C46
push -1
push offset _Lt_0C47
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C47]
call _OUTP
add esp, 4
.L_04D6:
.L_04D1:
.L_04D0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C46,12
.balign 4
	.lcomm	_Lt_0C47,12

.section .text
.balign 16
__EMITDIVI:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_04DA:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C4B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C4C
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_04DC
mov dword ptr [ebp-4], 24
jmp .L_0C48
.L_04DC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C48:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .L_04DF
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0C4D
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0C4E
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0C4F
call _fb_StrAssign
add esp, 20
jmp .L_04DE
.L_04DF:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0C4D
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0C4E
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0C4F
call _fb_StrAssign
add esp, 20
.L_04DE:
mov dword ptr [_Lt_0C50], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C51], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C52], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C53], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C54], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C55], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C56], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C57], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C58], eax
mov eax, dword ptr [_Lt_0C55]
or eax, dword ptr [_Lt_0C54]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_04E1
mov dword ptr [_Lt_0C50], -1
cmp dword ptr [_Lt_0C58], 0
je .L_04E3
push offset _Lt_0086
call _HPUSH
add esp, 4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04E5
push -1
push 0
push 0
push 8
push offset _Lt_0C5A
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0C5A]
call _HPUSH
add esp, 4
.L_04E5:
.L_04E4:
jmp .L_04E2
.L_04E3:
cmp dword ptr [_Lt_0C52], 0
jne .L_04E6
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_04E6:
.L_04E2:
push dword ptr [_Lt_0C4C]
push dword ptr [_Lt_0C4E]
call _HMOV
add esp, 8
push 0
push -1
push offset _Lt_0C4E
push -1
push offset _Lt_0C4C
call _fb_StrAssign
add esp, 20
.L_04E1:
.L_04E0:
cmp dword ptr [_Lt_0C56], 0
jne .L_04E8
mov ecx, dword ptr [_Lt_0C50]
and ecx, dword ptr [_Lt_0C58]
je .L_04EA
cmp dword ptr [_Lt_0C51], 0
jne .L_04EC
push offset _Lt_04ED
call _OUTP
add esp, 4
jmp .L_04EB
.L_04EC:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_04EB:
jmp .L_04E9
.L_04EA:
cmp dword ptr [_Lt_0C51], 0
jne .L_04EF
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_04EF:
.L_04EE:
push dword ptr [_Lt_0C4B]
push dword ptr [_Lt_0C4D]
call _HMOV
add esp, 8
.L_04E9:
jmp .L_04E7
.L_04E8:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04F1
push offset _Lt_0088
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C4B]
push dword ptr [_Lt_0C4D]
call _HMOV
add esp, 8
.L_04F1:
.L_04F0:
.L_04E7:
cmp dword ptr [_Lt_0C57], 0
je .L_04F3
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04F5
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_04F5:
.L_04F4:
jmp .L_04F2
.L_04F3:
cmp dword ptr [_Lt_0C53], 0
jne .L_04F6
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_04F6:
.L_04F2:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_04F7
mov dword ptr [ebp-8], 24
jmp .L_0C49
.L_04F7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0C49:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_04FA
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_04FB
mov dword ptr [ebp-12], 24
jmp .L_0C4A
.L_04FB:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0C4A:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .L_04FE
push offset _Lt_04FF
call _OUTP
add esp, 4
jmp .L_04FD
.L_04FE:
push offset _Lt_0500
call _OUTP
add esp, 4
.L_04FD:
push 0
push 6
push offset _Lt_0501
push -1
push offset _Lt_0C5A
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4C
push -1
push offset _Lt_0C5A
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C5A]
call _OUTP
add esp, 4
jmp .L_04F9
.L_04FA:
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0C5A
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4F
push -1
push offset _Lt_0C5A
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C5A
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4F
push -1
push offset _Lt_0C5A
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C5A]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0502
push -1
push offset _Lt_0C5A
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C4C
push -1
push offset _Lt_0C5A
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C5A]
call _OUTP
add esp, 4
.L_04F9:
cmp dword ptr [_Lt_0C57], 0
je .L_0504
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0506
push offset _Lt_0083
call _HPOP
add esp, 4
.L_0506:
.L_0505:
jmp .L_0503
.L_0504:
cmp dword ptr [_Lt_0C53], 0
jne .L_0507
push offset _Lt_0083
call _HPOP
add esp, 4
.L_0507:
.L_0503:
cmp dword ptr [_Lt_0C56], 0
jne .L_0509
mov ecx, dword ptr [_Lt_0C50]
and ecx, dword ptr [_Lt_0C58]
je .L_050B
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_050D
cmp dword ptr [_Lt_0C51], 0
jne .L_050F
push offset _Lt_0086
call _HPOP
add esp, 4
push offset _Lt_0510
call _OUTP
add esp, 4
jmp .L_050E
.L_050F:
push offset _Lt_0086
call _HPOP
add esp, 4
.L_050E:
.L_050D:
.L_050C:
.L_050B:
.L_050A:
push dword ptr [_Lt_0C4D]
push dword ptr [_Lt_0C4B]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C51], 0
jne .L_0512
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0512:
.L_0511:
jmp .L_0508
.L_0509:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0514
mov ecx, dword ptr [_Lt_0C52]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C50]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0516
push offset _Lt_0510
call _OUTP
add esp, 4
push offset _Lt_0517
call _OUTP
add esp, 4
jmp .L_0515
.L_0516:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV
add esp, 8
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0515:
push dword ptr [_Lt_0C4E]
push dword ptr [_Lt_0C4B]
call _HMOV
add esp, 8
mov eax, dword ptr [_Lt_0C52]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0C50]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0519
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0519:
.L_0518:
.L_0514:
.L_0513:
.L_0508:
cmp dword ptr [_Lt_0C50], 0
je .L_051B
mov ecx, dword ptr [_Lt_0C52]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C58]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_051D
push offset _Lt_0086
call _HPOP
add esp, 4
.L_051D:
.L_051C:
.L_051B:
.L_051A:
.L_04DB:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C4B,12
.balign 4
	.lcomm	_Lt_0C4C,12
.balign 4
	.lcomm	_Lt_0C50,4
.balign 4
	.lcomm	_Lt_0C51,4
.balign 4
	.lcomm	_Lt_0C52,4
.balign 4
	.lcomm	_Lt_0C53,4
.balign 4
	.lcomm	_Lt_0C56,4
.balign 4
	.lcomm	_Lt_0C58,4
.balign 4
	.lcomm	_Lt_0C57,4
.balign 4
	.lcomm	_Lt_0C54,4
.balign 4
	.lcomm	_Lt_0C55,4
.balign 4
	.lcomm	_Lt_0C4D,12
.balign 4
	.lcomm	_Lt_0C4E,12
.balign 4
	.lcomm	_Lt_0C4F,12
.balign 4
	.lcomm	_Lt_0C5A,12

.section .text
.balign 16
__EMITMODI:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_051E:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C64
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C65
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0520
mov dword ptr [ebp-4], 24
jmp .L_0C61
.L_0520:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C61:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 4
jne .L_0523
push 0
push 4
push offset _Lt_0088
push -1
push offset _Lt_0C66
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0086
push -1
push offset _Lt_0C67
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_0083
push -1
push offset _Lt_0C68
call _fb_StrAssign
add esp, 20
jmp .L_0522
.L_0523:
push 0
push 3
push offset _Lt_0082
push -1
push offset _Lt_0C66
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_0080
push -1
push offset _Lt_0C67
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_007F
push -1
push offset _Lt_0C68
call _fb_StrAssign
add esp, 20
.L_0522:
mov dword ptr [_Lt_0C69], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C6A], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C6B], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C6C], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C6D], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C6E], eax
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C6F], eax
push 0
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C70], eax
push 3
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C71], eax
mov eax, dword ptr [_Lt_0C6E]
or eax, dword ptr [_Lt_0C6D]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0525
mov dword ptr [_Lt_0C69], -1
cmp dword ptr [_Lt_0C71], 0
je .L_0527
push offset _Lt_0086
call _HPUSH
add esp, 4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0529
push -1
push 0
push 0
push 8
push offset _Lt_0C73
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0C73]
call _HPUSH
add esp, 4
.L_0529:
.L_0528:
jmp .L_0526
.L_0527:
cmp dword ptr [_Lt_0C6B], 0
jne .L_052A
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_052A:
.L_0526:
push dword ptr [_Lt_0C65]
push dword ptr [_Lt_0C67]
call _HMOV
add esp, 8
push 0
push -1
push offset _Lt_0C67
push -1
push offset _Lt_0C65
call _fb_StrAssign
add esp, 20
.L_0525:
.L_0524:
cmp dword ptr [_Lt_0C6F], 0
jne .L_052C
mov ecx, dword ptr [_Lt_0C69]
and ecx, dword ptr [_Lt_0C71]
je .L_052E
cmp dword ptr [_Lt_0C6A], 0
jne .L_0530
push offset _Lt_04ED
call _OUTP
add esp, 4
jmp .L_052F
.L_0530:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_052F:
jmp .L_052D
.L_052E:
cmp dword ptr [_Lt_0C6A], 0
jne .L_0532
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_0532:
.L_0531:
push dword ptr [_Lt_0C64]
push dword ptr [_Lt_0C66]
call _HMOV
add esp, 8
.L_052D:
jmp .L_052B
.L_052C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0534
push offset _Lt_0088
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C64]
push dword ptr [_Lt_0C66]
call _HMOV
add esp, 8
.L_0534:
.L_0533:
.L_052B:
cmp dword ptr [_Lt_0C70], 0
je .L_0536
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0538
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0538:
.L_0537:
jmp .L_0535
.L_0536:
cmp dword ptr [_Lt_0C6C], 0
jne .L_0539
push offset _Lt_0083
call _HPUSH
add esp, 4
.L_0539:
.L_0535:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_053A
mov dword ptr [ebp-8], 24
jmp .L_0C62
.L_053A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_0C62:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .L_053D
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_053E
mov dword ptr [ebp-12], 24
jmp .L_0C63
.L_053E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0C63:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
jne .L_0541
push offset _Lt_04FF
call _OUTP
add esp, 4
jmp .L_0540
.L_0541:
push offset _Lt_0500
call _OUTP
add esp, 4
.L_0540:
push 0
push 6
push offset _Lt_0501
push -1
push offset _Lt_0C73
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C65
push -1
push offset _Lt_0C73
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C73]
call _OUTP
add esp, 4
jmp .L_053C
.L_053D:
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0C73
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C68
push -1
push offset _Lt_0C73
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0C73
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0C68
push -1
push offset _Lt_0C73
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C73]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0502
push -1
push offset _Lt_0C73
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0C65
push -1
push offset _Lt_0C73
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0C73]
call _OUTP
add esp, 4
.L_053C:
push dword ptr [_Lt_0C68]
push dword ptr [_Lt_0C66]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C70], 0
je .L_0543
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0545
push offset _Lt_0083
call _HPOP
add esp, 4
.L_0545:
.L_0544:
jmp .L_0542
.L_0543:
cmp dword ptr [_Lt_0C6C], 0
jne .L_0546
push offset _Lt_0083
call _HPOP
add esp, 4
.L_0546:
.L_0542:
cmp dword ptr [_Lt_0C6F], 0
jne .L_0548
mov ecx, dword ptr [_Lt_0C69]
and ecx, dword ptr [_Lt_0C71]
je .L_054A
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_054C
cmp dword ptr [_Lt_0C6A], 0
jne .L_054E
push offset _Lt_0086
call _HPOP
add esp, 4
push offset _Lt_0510
call _OUTP
add esp, 4
jmp .L_054D
.L_054E:
push offset _Lt_0086
call _HPOP
add esp, 4
.L_054D:
.L_054C:
.L_054B:
.L_054A:
.L_0549:
push dword ptr [_Lt_0C66]
push dword ptr [_Lt_0C64]
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0C6A], 0
jne .L_0550
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0550:
.L_054F:
jmp .L_0547
.L_0548:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0552
mov ecx, dword ptr [_Lt_0C6B]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C69]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0554
push offset _Lt_0510
call _OUTP
add esp, 4
push offset _Lt_0517
call _OUTP
add esp, 4
jmp .L_0553
.L_0554:
push offset _Lt_0088
push offset _Lt_0086
call _HMOV
add esp, 8
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0553:
push dword ptr [_Lt_0C67]
push dword ptr [_Lt_0C64]
call _HMOV
add esp, 8
mov eax, dword ptr [_Lt_0C6B]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0C69]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0556
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0556:
.L_0555:
.L_0552:
.L_0551:
.L_0547:
cmp dword ptr [_Lt_0C69], 0
je .L_0558
mov ecx, dword ptr [_Lt_0C6B]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0C71]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_055A
push offset _Lt_0086
call _HPOP
add esp, 4
.L_055A:
.L_0559:
.L_0558:
.L_0557:
.L_051F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C64,12
.balign 4
	.lcomm	_Lt_0C65,12
.balign 4
	.lcomm	_Lt_0C69,4
.balign 4
	.lcomm	_Lt_0C6A,4
.balign 4
	.lcomm	_Lt_0C6B,4
.balign 4
	.lcomm	_Lt_0C6C,4
.balign 4
	.lcomm	_Lt_0C6F,4
.balign 4
	.lcomm	_Lt_0C71,4
.balign 4
	.lcomm	_Lt_0C70,4
.balign 4
	.lcomm	_Lt_0C6D,4
.balign 4
	.lcomm	_Lt_0C6E,4
.balign 4
	.lcomm	_Lt_0C66,12
.balign 4
	.lcomm	_Lt_0C67,12
.balign 4
	.lcomm	_Lt_0C68,12
.balign 4
	.lcomm	_Lt_0C73,12

.section .text
.balign 16
_HSHIFTL:
push ebp
mov ebp, esp
sub esp, 216
push ebx
.L_055B:
cmp dword ptr [ebp+8], 41
jne .L_055E
push 0
push 5
push offset _Lt_055F
push -1
push offset _Lt_0C7F
call _fb_StrAssign
add esp, 20
push 0
push 6
push offset _Lt_0560
push -1
push offset _Lt_0C80
call _fb_StrAssign
add esp, 20
jmp .L_055D
.L_055E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0561
mov dword ptr [ebp-4], 24
jmp .L_0C7A
.L_0561:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C7A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0564
push 0
push 5
push offset _Lt_031D
push -1
push offset _Lt_0C7F
call _fb_StrAssign
add esp, 20
jmp .L_0563
.L_0564:
push 0
push 5
push offset _Lt_0565
push -1
push offset _Lt_0C7F
call _fb_StrAssign
add esp, 20
.L_0563:
push 0
push 6
push offset _Lt_0566
push -1
push offset _Lt_0C80
call _fb_StrAssign
add esp, 20
.L_055D:
push offset _Lt_0C81
push offset _Lt_0C82
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push 8
push offset _Lt_0C83
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+8], 41
jne .L_0568
push 0
push -1
push offset _Lt_0C81
push -1
push offset _Lt_0C84
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0C85], ebx
push 0
push -1
push offset _Lt_0C82
push -1
push offset _Lt_0C86
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C87], ebx
jmp .L_0567
.L_0568:
push 0
push -1
push offset _Lt_0C82
push -1
push offset _Lt_0C84
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_0C85], ebx
push 0
push -1
push offset _Lt_0C81
push -1
push offset _Lt_0C86
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0C87], eax
.L_0567:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_056A
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_056C
jg .L_0C88
cmp dword ptr [eax+24], 64
jb .L_056C
.L_0C88:
mov eax, dword ptr [_Lt_0C87]
cmp dword ptr [eax], 4
jne .L_056E
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_03D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_056D
.L_056E:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_017E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_056D:
mov eax, dword ptr [_Lt_0C85]
cmp dword ptr [eax], 4
jne .L_0577
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C84
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push 5
push offset _Lt_03D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0576
.L_0577:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
push offset _Lt_0C84
push 5
push offset _Lt_017E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0576:
jmp .L_056B
.L_056C:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_057F
jg .L_0C89
cmp dword ptr [eax+24], 32
jb .L_057F
.L_0C89:
mov dword ptr [_Lt_0C8A], -1
mov eax, dword ptr [_Lt_0C87]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0C85]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0581
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push 5
push offset _Lt_017E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0580
.L_0581:
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [_Lt_0C8D], eax
cmp dword ptr [_Lt_0C8D], -1
jne .L_0587
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C8D], eax
mov dword ptr [_Lt_0C8A], 0
.L_0587:
.L_0586:
push 0
push 0
push dword ptr [_Lt_0C8D]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C8E
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0C8A], 0
jne .L_0589
push dword ptr [_Lt_0C8E]
call _HPUSH
add esp, 4
.L_0589:
.L_0588:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8E
push 5
push offset _Lt_017E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push 5
push offset _Lt_017E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
.L_0580:
mov eax, dword ptr [ebp+8]
cmp eax, 42
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0592
mov dword ptr [ebp-4], 24
jmp .L_0C7B
.L_0592:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C7B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+8]
and ecx, dword ptr [ebp-8]
je .L_0595
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 5
push offset _Lt_031E
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_031D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _OUTP
add esp, 4
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0594
.L_0595:
mov eax, dword ptr [_Lt_0C87]
cmp dword ptr [eax], 4
jne .L_0599
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_03D2
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0594
.L_0599:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_017E
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call _OUTP
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.L_0594:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_05A2
jg .L_0C90
cmp dword ptr [eax+24], 32
jbe .L_05A2
.L_0C90:
push 0
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
add ebx, 4294967264
adc ecx, 4294967295
push ecx
push ebx
call _fb_LongintToStr
add esp, 8
push eax
push -1
push offset _Lt_0C83
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _OUTP
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_05A2:
.L_05A1:
cmp dword ptr [_Lt_0C8A], 0
jne .L_05A8
push dword ptr [_Lt_0C8E]
call _HPOP
add esp, 4
.L_05A8:
.L_05A7:
jmp .L_056B
.L_057F:
mov eax, dword ptr [_Lt_0C87]
cmp dword ptr [eax], 4
jne .L_05AA
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push -1
push offset _Lt_0C80
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _OUTP
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05A9
.L_05AA:
mov eax, dword ptr [_Lt_0C85]
cmp dword ptr [eax], 4
jne .L_05B5
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push 6
push offset _Lt_0184
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push -1
push offset _Lt_0C80
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call _OUTP
add esp, 4
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push 6
push offset _Lt_0184
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05A9
.L_05B5:
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [_Lt_0C8D], eax
cmp dword ptr [_Lt_0C8D], -1
jne .L_05C9
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0C8D], eax
mov dword ptr [_Lt_0C8A], 0
jmp .L_05C8
.L_05C9:
mov dword ptr [_Lt_0C8A], -1
.L_05C8:
push 0
push 0
push dword ptr [_Lt_0C8D]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C8E
call _fb_StrAssign
add esp, 20
cmp dword ptr [_Lt_0C8A], 0
jne .L_05CB
push dword ptr [_Lt_0C8E]
call _HPUSH
add esp, 4
.L_05CB:
.L_05CA:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push offset _Lt_0C86
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8E
push 5
push offset _Lt_017E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _OUTP
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C84
push -1
push offset _Lt_0C80
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
push -1
push offset _Lt_0C83
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C8E
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-168]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call _OUTP
add esp, 4
lea eax, [ebp-168]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
push -1
push offset _Lt_0C8E
push -1
push 3
push offset _Lt_0074
push -1
push -1
push offset _Lt_0C86
push 5
push offset _Lt_017E
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-216]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call _OUTP
add esp, 4
lea eax, [ebp-216]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_Lt_0C8A], 0
jne .L_05DF
push offset _Lt_0088
call _HPOP
add esp, 4
.L_05DF:
.L_05DE:
.L_05A9:
.L_056B:
jmp .L_0569
.L_056A:
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0C91
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0C81]
call _HPUSH
add esp, 4
push dword ptr [_Lt_0C82]
call _HPUSH
add esp, 4
mov dword ptr [_Lt_0C92], 0
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C93], eax
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C94], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0C95], eax
push 5
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C96], eax
push 0
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C97], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C98], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+12]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_05E1
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_05E2
mov dword ptr [ebp-4], 24
jmp .L_0C7D
.L_05E2:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0C7D:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 4
je .L_05E5
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 4
jne .L_05E7
push 0
push 0
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0C83
call _fb_StrAssign
add esp, 20
.L_05E7:
.L_05E6:
.L_05E5:
.L_05E4:
cmp dword ptr [_Lt_0C95], 0
jne .L_05E9
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [_Lt_0C98]
je .L_05EB
push dword ptr [_Lt_0C83]
push offset _Lt_0086
call _HMOV
add esp, 8
mov dword ptr [_Lt_0C95], -1
jmp .L_05EA
.L_05EB:
push dword ptr [_Lt_0C83]
call _HPUSH
add esp, 4
push offset _Lt_0510
call _OUTP
add esp, 4
add dword ptr [_Lt_0C92], 4
.L_05EA:
jmp .L_05E8
.L_05E9:
push dword ptr [_Lt_0C83]
push offset _Lt_0086
call _HMOV
add esp, 8
.L_05E8:
jmp .L_05E0
.L_05E1:
mov dword ptr [_Lt_0C95], -1
.L_05E0:
cmp dword ptr [_Lt_0C96], 0
je .L_05ED
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
je .L_05EF
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C92]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05EE
.L_05EF:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_05EE:
jmp .L_05EC
.L_05ED:
cmp dword ptr [_Lt_0C93], 0
jne .L_05F7
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C92]
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_05F6
.L_05F7:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
push dword ptr [_Lt_0C92]
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_05F6:
.L_05EC:
cmp dword ptr [_Lt_0C97], 0
je .L_05FF
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0601
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C92]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_0602
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0600
.L_0601:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C92]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0600:
jmp .L_05FE
.L_05FF:
cmp dword ptr [_Lt_0C94], 0
jne .L_060A
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C92]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 16
push offset _Lt_0602
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0609
.L_060A:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0145
push -1
push -1
mov eax, dword ptr [_Lt_0C92]
add eax, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push 15
push offset _Lt_04A1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _OUTP
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_0609:
.L_05FE:
cmp dword ptr [ebp+8], 41
jne .L_0612
push offset _Lt_0613
call _OUTP
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_0614
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0611
.L_0612:
push offset _Lt_0617
call _OUTP
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 9
push offset _Lt_0618
push -1
push offset _Lt_0C7F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0611:
push offset _Lt_061B
call _OUTP
add esp, 4
push dword ptr [_Lt_0C91]
push offset _Lt_03CF
call _HBRANCH
add esp, 8
cmp dword ptr [ebp+8], 41
jne .L_061D
push offset _Lt_061E
call _OUTP
add esp, 4
push offset _Lt_023B
call _OUTP
add esp, 4
jmp .L_061C
.L_061D:
push offset _Lt_061F
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0620
mov dword ptr [ebp-4], 24
jmp .L_0C7E
.L_0620:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C7E:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0623
push offset _Lt_0624
call _OUTP
add esp, 4
jmp .L_0622
.L_0623:
push offset _Lt_0625
call _OUTP
add esp, 4
.L_0622:
.L_061C:
push dword ptr [_Lt_0C91]
call _HLABEL
add esp, 4
cmp dword ptr [_Lt_0C95], 0
jne .L_0627
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0627:
.L_0626:
cmp dword ptr [_Lt_0C97], 0
je .L_0629
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_062B
push offset _Lt_062C
call _OUTP
add esp, 4
jmp .L_062A
.L_062B:
push offset _Lt_062D
call _OUTP
add esp, 4
.L_062A:
jmp .L_0628
.L_0629:
cmp dword ptr [_Lt_0C94], 0
jne .L_062F
push offset _Lt_062C
call _OUTP
add esp, 4
jmp .L_062E
.L_062F:
push offset _Lt_062D
call _OUTP
add esp, 4
.L_062E:
.L_0628:
cmp dword ptr [_Lt_0C96], 0
je .L_0631
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0633
push offset _Lt_0634
call _OUTP
add esp, 4
jmp .L_0632
.L_0633:
push offset _Lt_0635
call _OUTP
add esp, 4
.L_0632:
jmp .L_0630
.L_0631:
cmp dword ptr [_Lt_0C93], 0
jne .L_0637
push offset _Lt_0634
call _OUTP
add esp, 4
jmp .L_0636
.L_0637:
push offset _Lt_0635
call _OUTP
add esp, 4
.L_0636:
.L_0630:
push dword ptr [_Lt_0C82]
call _HPOP
add esp, 4
push dword ptr [_Lt_0C81]
call _HPOP
add esp, 4
.L_0569:
.L_055C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0C82,12
.balign 4
	.lcomm	_Lt_0C81,12
.balign 4
	.lcomm	_Lt_0C83,12
.balign 4
	.lcomm	_Lt_0C91,12
.balign 4
	.lcomm	_Lt_0C7F,12
.balign 4
	.lcomm	_Lt_0C80,12
.balign 4
	.lcomm	_Lt_0C8D,4
.balign 4
	.lcomm	_Lt_0C8A,4
.balign 4
	.lcomm	_Lt_0C8E,12
.balign 4
	.lcomm	_Lt_0C84,12
.balign 4
	.lcomm	_Lt_0C86,12
.balign 4
	.lcomm	_Lt_0C85,4
.balign 4
	.lcomm	_Lt_0C87,4
.balign 4
	.lcomm	_Lt_0C93,4
.balign 4
	.lcomm	_Lt_0C94,4
.balign 4
	.lcomm	_Lt_0C95,4
.balign 4
	.lcomm	_Lt_0C96,4
.balign 4
	.lcomm	_Lt_0C97,4
.balign 4
	.lcomm	_Lt_0C98,4
.balign 4
	.lcomm	_Lt_0C92,4

.section .text
.balign 16
_HSHIFTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0638:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_063A
mov dword ptr [ebp-4], 24
jmp .L_0C9C
.L_063A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0C9C:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_063D
cmp dword ptr [ebp+8], 41
jne .L_063F
push 0
push 4
push offset _Lt_0640
push -1
push offset _Lt_0C9D
call _fb_StrAssign
add esp, 20
jmp .L_063E
.L_063F:
push 0
push 4
push offset _Lt_0641
push -1
push offset _Lt_0C9D
call _fb_StrAssign
add esp, 20
.L_063E:
jmp .L_063C
.L_063D:
cmp dword ptr [ebp+8], 41
jne .L_0643
push 0
push 4
push offset _Lt_0644
push -1
push offset _Lt_0C9D
call _fb_StrAssign
add esp, 20
jmp .L_0642
.L_0643:
push 0
push 4
push offset _Lt_0645
push -1
push offset _Lt_0C9D
call _fb_StrAssign
add esp, 20
.L_0642:
.L_063C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0C9E
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [_Lt_0C9F], 0
mov dword ptr [_Lt_0CA0], 0
mov dword ptr [_Lt_0CA1], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0647
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CA2
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
push 0
push -1
push offset _Lt_0C9E
push -1
push offset _Lt_0CA3
call _fb_StrAssign
add esp, 20
jmp .L_0646
.L_0647:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CA4], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CA5], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_0649
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [_Lt_0CA6], ebx
jmp .L_0648
.L_0649:
mov dword ptr [_Lt_0CA6], -1
.L_0648:
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0C9F], eax
cmp dword ptr [_Lt_0C9F], 0
je .L_064B
push offset _Lt_0086
call _HPUSH
add esp, 4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_064D
push -1
push 0
push 0
push 8
push offset _Lt_0CA7
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0CA7]
call _HPUSH
add esp, 4
.L_064D:
.L_064C:
jmp .L_064A
.L_064B:
mov eax, dword ptr [_Lt_0CA6]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0CA5]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_064E
mov dword ptr [_Lt_0CA1], -1
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_064E:
.L_064A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
je .L_0650
push -1
push 0
push 0
push 2
push offset _Lt_0CA7
push dword ptr [ebp+16]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0CA7]
push offset _Lt_007A
call _HMOV
add esp, 8
jmp .L_064F
.L_0650:
cmp dword ptr [_Lt_0CA6], 3
je .L_0652
mov ebx, dword ptr [_DTYPETB+128]
sal ebx, 3
add ebx, dword ptr [_Lt_0CA6]
lea eax, [_RNAMETB+ebx*8]
push eax
push offset _Lt_0086
call _HMOV
add esp, 8
.L_0652:
.L_0651:
.L_064F:
cmp dword ptr [_Lt_0C9F], 0
je .L_0654
cmp dword ptr [_Lt_0CA4], 0
jne .L_0656
mov dword ptr [_Lt_0CA0], -1
push offset _Lt_04ED
call _OUTP
add esp, 4
jmp .L_0655
.L_0656:
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0655:
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
sal ebx, 4
mov eax, dword ptr [_DTYPETB+ebx]
sal eax, 6
lea ebx, [_RNAMETB+eax+40]
push ebx
push -1
push offset _Lt_0CA3
call _fb_StrAssign
add esp, 20
jmp .L_0653
.L_0654:
push 0
push -1
push offset _Lt_0C9E
push -1
push offset _Lt_0CA3
call _fb_StrAssign
add esp, 20
.L_0653:
push 0
push 3
push offset _Lt_007A
push -1
push offset _Lt_0CA2
call _fb_StrAssign
add esp, 20
.L_0646:
push 0
push -1
push offset _Lt_0C9D
push -1
push offset _Lt_0CA7
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_016F
push -1
push offset _Lt_0CA7
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CA3
push -1
push offset _Lt_0CA7
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CA7
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CA2
push -1
push offset _Lt_0CA7
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CA7]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0C9F], 0
je .L_0658
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_065A
push offset _Lt_0086
call _HPOP
add esp, 4
cmp dword ptr [_Lt_0CA0], 0
je .L_065C
push offset _Lt_0510
call _OUTP
add esp, 4
.L_065C:
.L_065B:
.L_065A:
.L_0659:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
sal eax, 4
mov ebx, dword ptr [_DTYPETB+eax]
sal ebx, 6
lea eax, [_RNAMETB+ebx+40]
push eax
push dword ptr [_Lt_0C9E]
call _HMOV
add esp, 8
.L_0658:
.L_0657:
cmp dword ptr [_Lt_0CA0], 0
je .L_065E
push offset _Lt_0088
call _HPOP
add esp, 4
.L_065E:
.L_065D:
cmp dword ptr [_Lt_0CA1], 0
je .L_0660
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0660:
.L_065F:
.L_0639:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CA0,4
.balign 4
	.lcomm	_Lt_0CA1,4
.balign 4
	.lcomm	_Lt_0CA4,4
.balign 4
	.lcomm	_Lt_0CA5,4
.balign 4
	.lcomm	_Lt_0CA6,4
.balign 4
	.lcomm	_Lt_0C9F,4
.balign 4
	.lcomm	_Lt_0CA7,12
.balign 4
	.lcomm	_Lt_0C9E,12
.balign 4
	.lcomm	_Lt_0CA2,12
.balign 4
	.lcomm	_Lt_0CA3,12
.balign 4
	.lcomm	_Lt_0C9D,12

.section .text
.balign 16
__EMITSHLL:
push ebp
mov ebp, esp
.L_0661:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTL
add esp, 12
.L_0662:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHLI:
push ebp
mov ebp, esp
.L_0663:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call _HSHIFTI
add esp, 12
.L_0664:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHRL:
push ebp
mov ebp, esp
.L_0665:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTL
add esp, 12
.L_0666:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSHRI:
push ebp
mov ebp, esp
.L_0667:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call _HSHIFTI
add esp, 12
.L_0668:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITANDL:
push ebp
mov ebp, esp
.L_0669:
push offset _Lt_0CAA
push offset _Lt_0CAB
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CAC
push offset _Lt_0CAD
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_066B
push -1
push offset _Lt_0CAE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAB
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAD
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CAE]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_066B
push -1
push offset _Lt_0CAE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAA
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAC
push -1
push offset _Lt_0CAE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CAE]
call _OUTP
add esp, 4
.L_066A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CAB,12
.balign 4
	.lcomm	_Lt_0CAA,12
.balign 4
	.lcomm	_Lt_0CAD,12
.balign 4
	.lcomm	_Lt_0CAC,12
.balign 4
	.lcomm	_Lt_0CAE,12

.section .text
.balign 16
__EMITANDI:
push ebp
mov ebp, esp
.L_066C:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CAF
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CB0
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_066B
push -1
push offset _Lt_0CB1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CAF
push -1
push offset _Lt_0CB1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB0
push -1
push offset _Lt_0CB1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB1]
call _OUTP
add esp, 4
.L_066D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CAF,12
.balign 4
	.lcomm	_Lt_0CB0,12
.balign 4
	.lcomm	_Lt_0CB1,12

.section .text
.balign 16
__EMITORL:
push ebp
mov ebp, esp
.L_066E:
push offset _Lt_0CB2
push offset _Lt_0CB3
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CB4
push offset _Lt_0CB5
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CB6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB3
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB5
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB6]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CB6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB2
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB4
push -1
push offset _Lt_0CB6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB6]
call _OUTP
add esp, 4
.L_066F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CB3,12
.balign 4
	.lcomm	_Lt_0CB2,12
.balign 4
	.lcomm	_Lt_0CB5,12
.balign 4
	.lcomm	_Lt_0CB4,12
.balign 4
	.lcomm	_Lt_0CB6,12

.section .text
.balign 16
__EMITORI:
push ebp
mov ebp, esp
.L_0671:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CB7
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CB8
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CB9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB7
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CB8
push -1
push offset _Lt_0CB9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CB9]
call _OUTP
add esp, 4
.L_0672:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CB7,12
.balign 4
	.lcomm	_Lt_0CB8,12
.balign 4
	.lcomm	_Lt_0CB9,12

.section .text
.balign 16
__EMITXORL:
push ebp
mov ebp, esp
.L_0673:
push offset _Lt_0CBA
push offset _Lt_0CBB
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CBC
push offset _Lt_0CBD
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CBE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBB
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBD
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CBE]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CBE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBA
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBC
push -1
push offset _Lt_0CBE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CBE]
call _OUTP
add esp, 4
.L_0674:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CBB,12
.balign 4
	.lcomm	_Lt_0CBA,12
.balign 4
	.lcomm	_Lt_0CBD,12
.balign 4
	.lcomm	_Lt_0CBC,12
.balign 4
	.lcomm	_Lt_0CBE,12

.section .text
.balign 16
__EMITXORI:
push ebp
mov ebp, esp
.L_0675:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CBF
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC0
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CC1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CBF
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC0
push -1
push offset _Lt_0CC1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC1]
call _OUTP
add esp, 4
.L_0676:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CBF,12
.balign 4
	.lcomm	_Lt_0CC0,12
.balign 4
	.lcomm	_Lt_0CC1,12

.section .text
.balign 16
__EMITEQVL:
push ebp
mov ebp, esp
.L_0677:
push offset _Lt_0CC2
push offset _Lt_0CC3
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CC4
push offset _Lt_0CC5
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CC6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC3
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC5
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC6]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CC6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC2
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC4
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC6]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CC6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC3
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC6]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CC6
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC2
push -1
push offset _Lt_0CC6
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC6]
call _OUTP
add esp, 4
.L_0678:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CC3,12
.balign 4
	.lcomm	_Lt_0CC2,12
.balign 4
	.lcomm	_Lt_0CC5,12
.balign 4
	.lcomm	_Lt_0CC4,12
.balign 4
	.lcomm	_Lt_0CC6,12

.section .text
.balign 16
__EMITEQVI:
push ebp
mov ebp, esp
.L_067A:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC7
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CC8
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CC9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC7
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC8
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CC9]
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_067D
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CC9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC7
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
jmp .L_067C
.L_067D:
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CC9
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CC7
push -1
push offset _Lt_0CC9
call _fb_StrConcatAssign
add esp, 20
.L_067C:
push dword ptr [_Lt_0CC9]
call _OUTP
add esp, 4
.L_067B:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CC7,12
.balign 4
	.lcomm	_Lt_0CC8,12
.balign 4
	.lcomm	_Lt_0CC9,12

.section .text
.balign 16
__EMITIMPL:
push ebp
mov ebp, esp
.L_067E:
push offset _Lt_0CCA
push offset _Lt_0CCB
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CCC
push offset _Lt_0CCD
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCB
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CCE]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCA
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CCE]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCB
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCD
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CCE]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CCE
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCA
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCC
push -1
push offset _Lt_0CCE
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CCE]
call _OUTP
add esp, 4
.L_067F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CCB,12
.balign 4
	.lcomm	_Lt_0CCA,12
.balign 4
	.lcomm	_Lt_0CCD,12
.balign 4
	.lcomm	_Lt_0CCC,12
.balign 4
	.lcomm	_Lt_0CCE,12

.section .text
.balign 16
__EMITIMPI:
push ebp
mov ebp, esp
.L_0680:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CCF
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD0
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_0683
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCF
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
jmp .L_0682
.L_0683:
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCF
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
.L_0682:
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
push 0
push 4
push offset _Lt_0670
push -1
push offset _Lt_0CD1
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CCF
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD0
push -1
push offset _Lt_0CD1
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD1]
call _OUTP
add esp, 4
.L_0681:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CCF,12
.balign 4
	.lcomm	_Lt_0CD0,12
.balign 4
	.lcomm	_Lt_0CD1,12

.section .text
.balign 16
__EMITATN2:
push ebp
mov ebp, esp
.L_0684:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD2
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0687
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0CD3
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD2
push -1
push offset _Lt_0CD3
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD3]
call _OUTP
add esp, 4
jmp .L_0686
.L_0687:
push offset _Lt_0688
call _OUTP
add esp, 4
.L_0686:
push offset _Lt_0689
call _OUTP
add esp, 4
.L_0685:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CD2,12
.balign 4
	.lcomm	_Lt_0CD3,12

.section .text
.balign 16
__EMITPOW:
push ebp
mov ebp, esp
.L_068A:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CD4
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_068D
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0CD5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD4
push -1
push offset _Lt_0CD5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CD5]
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
.L_068D:
.L_068C:
push offset _Lt_068E
call _OUTP
add esp, 4
push offset _Lt_068F
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
push offset _Lt_0692
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_0693
call _OUTP
add esp, 4
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_0303
call _OUTP
add esp, 4
push offset _Lt_0695
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
.L_068B:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CD4,12
.balign 4
	.lcomm	_Lt_0CD5,12

.section .text
.balign 16
_HCMPL:
push ebp
mov ebp, esp
sub esp, 36
.L_0697:
push offset _Lt_0CD6
push offset _Lt_0CD7
push dword ptr [ebp+28]
call _HPREPOPERAND64
add esp, 12
push offset _Lt_0CD8
push offset _Lt_0CD9
push dword ptr [ebp+32]
call _HPREPOPERAND64
add esp, 12
cmp dword ptr [ebp+12], 0
jne .L_069A
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CDA
call _fb_StrAssign
add esp, 20
jmp .L_0699
.L_069A:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CDA
call _fb_StrAssign
add esp, 20
.L_0699:
push 0
push 5
push offset _Lt_02FC
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD6
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD8
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CDB]
call _OUTP
add esp, 4
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CDC
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 0
je .L_069C
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDD
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0310
push dword ptr [_Lt_0CDD]
call _HMOV
add esp, 8
.L_069C:
.L_069B:
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+36], 0
jne .L_06A0
push dword ptr [_Lt_0CDA]
push dword ptr [_Lt_0CDB]
call _HBRANCH
add esp, 8
jmp .L_069F
.L_06A0:
push dword ptr [_Lt_0CDC]
push dword ptr [_Lt_0CDB]
call _HBRANCH
add esp, 8
.L_069F:
push 0
push dword ptr [ebp+20]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_06A2
push 0
push -1
push 0
push dword ptr [ebp+20]
push 2
push offset _Lt_069D
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CDC]
push dword ptr [_Lt_0CDB]
call _HBRANCH
add esp, 8
.L_06A2:
.L_06A1:
push 0
push 5
push offset _Lt_02FC
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD7
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CD9
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CDB]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+24]
push 2
push offset _Lt_069D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CDA]
push dword ptr [_Lt_0CDB]
call _HBRANCH
add esp, 8
push dword ptr [_Lt_0CDC]
call _HLABEL
add esp, 4
cmp dword ptr [ebp+8], 0
je .L_06A6
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CDB
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDD
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDD
push -1
push offset _Lt_0CDB
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CDB]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CDA]
call _HLABEL
add esp, 4
.L_06A6:
.L_06A5:
.L_0698:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CD7,12
.balign 4
	.lcomm	_Lt_0CD6,12
.balign 4
	.lcomm	_Lt_0CD9,12
.balign 4
	.lcomm	_Lt_0CD8,12
.balign 4
	.lcomm	_Lt_0CDD,12
.balign 4
	.lcomm	_Lt_0CDB,12
.balign 4
	.lcomm	_Lt_0CDA,12
.balign 4
	.lcomm	_Lt_0CDC,12

.section .text
.balign 16
_HCMPI:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_06A7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDE
push dword ptr [ebp+20]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CDF
push dword ptr [ebp+24]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+12], 0
jne .L_06AA
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CE0
call _fb_StrAssign
add esp, 20
jmp .L_06A9
.L_06AA:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CE0
call _fb_StrAssign
add esp, 20
.L_06A9:
mov dword ptr [_Lt_0CE1], 0
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_06AC
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+28], 0
jne .L_06AE
cmp dword ptr [ecx+24], 0
jne .L_06AE
.L_0CE4:
mov dword ptr [_Lt_0CE1], -1
.L_06AE:
.L_06AD:
.L_06AC:
.L_06AB:
cmp dword ptr [_Lt_0CE1], 0
je .L_06B0
push 0
push 6
push offset _Lt_06B1
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDE
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDE
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
jmp .L_06AF
.L_06B0:
push 0
push 5
push offset _Lt_02FC
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDE
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CDF
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
.L_06AF:
cmp dword ptr [ebp+8], 0
jne .L_06B3
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ecx, [ebp-12]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE0]
push dword ptr [_Lt_0CE5]
call _HBRANCH
add esp, 8
jmp .L_06A8
.L_06B3:
.L_06B2:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CE6
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_ENV+112]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_06B6
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0CE9
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_06B8
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CEC], eax
cmp dword ptr [_Lt_0CEC], 0
jne .L_06BA
push 0
push 11
push offset _Lt_06BB
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
.L_06BA:
.L_06B9:
push 0
push -1
push 4
push offset _Lt_06BD
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0CEC], 0
jne .L_06C1
push 0
push 11
push offset _Lt_06BB
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
jmp .L_06C0
.L_06C1:
push offset _Lt_0083
push dword ptr [_Lt_0CE6]
call _HMOV
add esp, 8
.L_06C0:
jmp .L_06B7
.L_06B8:
push 0
push -1
push -1
push offset _Lt_0CE9
push -1
push 2
push offset _Lt_016F
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
.L_06B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
je .L_06C6
push 0
push 5
push offset _Lt_0565
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06C7
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0469
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
.L_06C6:
.L_06C5:
jmp .L_06B5
.L_06B6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_06C9
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06C7
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
jmp .L_06C8
.L_06C9:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_06CA
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
.L_06C8:
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CE0]
push dword ptr [_Lt_0CE5]
call _HBRANCH
add esp, 8
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CE5
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CE6
push -1
push offset _Lt_0CE5
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CE5]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CE0]
call _HLABEL
add esp, 4
.L_06B5:
.L_06A8:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CE6,12
.balign 4
	.lcomm	_Lt_0CE9,12
.balign 4
	.lcomm	_Lt_0CDE,12
.balign 4
	.lcomm	_Lt_0CDF,12
.balign 4
	.lcomm	_Lt_0CE5,12
.balign 4
	.lcomm	_Lt_0CE0,12
.balign 4
	.lcomm	_Lt_0CEC,4
.balign 4
	.lcomm	_Lt_0CE1,4

.section .text
.balign 16
_HCMPF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_06CC:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CED
push dword ptr [ebp+24]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CEE
push dword ptr [ebp+28]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [ebp+12], 0
jne .L_06CF
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_0CEF
call _fb_StrAssign
add esp, 20
jmp .L_06CE
.L_06CF:
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_0CEF
call _fb_StrAssign
add esp, 20
.L_06CE:
cmp dword ptr [_ENV+112], 3
jl .L_06D1
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06D3
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_06D4
call _OUTP
add esp, 4
push offset _Lt_06D5
call _OUTP
add esp, 4
jmp .L_06D2
.L_06D3:
push 0
push 5
push offset _Lt_03A3
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CEE
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push offset _Lt_06D4
call _OUTP
add esp, 4
push offset _Lt_06D5
call _OUTP
add esp, 4
.L_06D2:
jmp .L_06D0
.L_06D1:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06D7
push offset _Lt_06D8
call _OUTP
add esp, 4
jmp .L_06D6
.L_06D7:
push 0
push 7
push offset _Lt_06D9
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CEE
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06D6:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CF1], eax
cmp dword ptr [ebp+8], 0
je .L_06DB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_Lt_0CF1], ebx
.L_06DB:
.L_06DA:
cmp dword ptr [_Lt_0CF1], 0
jne .L_06DD
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_06DD:
.L_06DC:
push offset _Lt_03CD
call _OUTP
add esp, 4
push 0
push dword ptr [ebp+20]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_06DF
push 0
push -1
push 0
push dword ptr [ebp+20]
push 10
push offset _Lt_06E0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
jmp .L_06DE
.L_06DF:
push offset _Lt_06E2
call _OUTP
add esp, 4
.L_06DE:
cmp dword ptr [_Lt_0CF1], 0
jne .L_06E4
push offset _Lt_0088
call _HPOP
add esp, 4
.L_06E4:
.L_06E3:
.L_06D0:
cmp dword ptr [ebp+8], 0
jne .L_06E6
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CEF]
push dword ptr [_Lt_0CF0]
call _HBRANCH
add esp, 8
jmp .L_06CD
.L_06E6:
.L_06E5:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0CF3
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
cmp dword ptr [_ENV+112], 1
jl .L_06E9
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0CF4
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_06EB
push 0
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0CF7], eax
cmp dword ptr [_Lt_0CF7], 0
jne .L_06ED
push 0
push 11
push offset _Lt_06BB
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06ED:
.L_06EC:
push 0
push -1
push 4
push offset _Lt_06EE
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0CF7], 0
jne .L_06F2
push 0
push 11
push offset _Lt_06BB
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
jmp .L_06F1
.L_06F2:
push offset _Lt_0083
push dword ptr [_Lt_0CF3]
call _HMOV
add esp, 8
.L_06F1:
jmp .L_06EA
.L_06EB:
push 0
push -1
push -1
push offset _Lt_0CF4
push -1
push 2
push offset _Lt_016F
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
.L_06EA:
push 0
push 5
push offset _Lt_0565
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06C7
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0469
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
jmp .L_06E8
.L_06E9:
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_06CA
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push 0
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0CEF]
push dword ptr [_Lt_0CF0]
call _HBRANCH
add esp, 8
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0CF0
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0CF3
push -1
push offset _Lt_0CF0
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0CF0]
call _OUTP
add esp, 4
push dword ptr [_Lt_0CEF]
call _HLABEL
add esp, 4
.L_06E8:
.L_06CD:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CF3,12
.balign 4
	.lcomm	_Lt_0CF4,12
.balign 4
	.lcomm	_Lt_0CED,12
.balign 4
	.lcomm	_Lt_0CEE,12
.balign 4
	.lcomm	_Lt_0CF0,12
.balign 4
	.lcomm	_Lt_0CEF,12
.balign 4
	.lcomm	_Lt_0CF1,4
.balign 4
	.lcomm	_Lt_0CF7,4

.section .text
.balign 16
__EMITCGTL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_06F7:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_06F9
mov dword ptr [ebp-4], 24
jmp .L_0CF8
.L_06F9:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0CF8:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_06FC
push 0
push 2
push offset _Lt_06FD
push -1
push offset _Lt_0CF9
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FE
push -1
push offset _Lt_0CFA
call _fb_StrAssign
add esp, 20
jmp .L_06FB
.L_06FC:
push 0
push 2
push offset _Lt_06FF
push -1
push offset _Lt_0CF9
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0700
push -1
push offset _Lt_0CFA
call _fb_StrAssign
add esp, 20
.L_06FB:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_06FF
push dword ptr [_Lt_0CFA]
push dword ptr [_Lt_0CF9]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_06F8:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CF9,12
.balign 4
	.lcomm	_Lt_0CFA,12

.section .text
.balign 16
__EMITCGTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0701:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0703
mov dword ptr [ebp-4], 24
jmp .L_0CFB
.L_0703:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0CFB:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0706
push 0
push 2
push offset _Lt_06FD
push -1
push offset _Lt_0CFC
call _fb_StrAssign
add esp, 20
jmp .L_0705
.L_0706:
push 0
push 2
push offset _Lt_06FF
push -1
push offset _Lt_0CFC
call _fb_StrAssign
add esp, 20
.L_0705:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0CFC]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0702:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CFC,12

.section .text
.balign 16
__EMITCGTF:
push ebp
mov ebp, esp
.L_0707:
cmp dword ptr [_ENV+112], 3
jl .L_070A
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0700
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0709
.L_070A:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_070C
push offset _Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0709:
.L_0708:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCLTL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_070D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_070F
mov dword ptr [ebp-4], 24
jmp .L_0CFD
.L_070F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0CFD:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0712
push 0
push 2
push offset _Lt_06FE
push -1
push offset _Lt_0CFE
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FD
push -1
push offset _Lt_0CFF
call _fb_StrAssign
add esp, 20
jmp .L_0711
.L_0712:
push 0
push 2
push offset _Lt_0700
push -1
push offset _Lt_0CFE
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FF
push -1
push offset _Lt_0CFF
call _fb_StrAssign
add esp, 20
.L_0711:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0700
push dword ptr [_Lt_0CFF]
push dword ptr [_Lt_0CFE]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_070E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0CFE,12
.balign 4
	.lcomm	_Lt_0CFF,12

.section .text
.balign 16
__EMITCLTI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0713:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0715
mov dword ptr [ebp-4], 24
jmp .L_0D00
.L_0715:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D00:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0718
push 0
push 2
push offset _Lt_06FE
push -1
push offset _Lt_0D01
call _fb_StrAssign
add esp, 20
jmp .L_0717
.L_0718:
push 0
push 2
push offset _Lt_0700
push -1
push offset _Lt_0D01
call _fb_StrAssign
add esp, 20
.L_0717:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D01]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0714:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D01,12

.section .text
.balign 16
__EMITCLTF:
push ebp
mov ebp, esp
.L_0719:
cmp dword ptr [_ENV+112], 3
jl .L_071C
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_06FF
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_071B
.L_071C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_071E
push offset _Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_071B:
.L_071A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQL:
push ebp
mov ebp, esp
.L_071F:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0722
push offset _Lt_0000
push offset _Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0720:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQI:
push ebp
mov ebp, esp
.L_0723:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0722
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_0724:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCEQF:
push ebp
mov ebp, esp
.L_0725:
cmp dword ptr [_ENV+112], 3
jl .L_0728
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0727
.L_0728:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0729
push offset _Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0727:
.L_0726:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEL:
push ebp
mov ebp, esp
.L_072A:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0721
push offset _Lt_0000
push offset _Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_072B:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEI:
push ebp
mov ebp, esp
.L_072C:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_072D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCNEF:
push ebp
mov ebp, esp
.L_072E:
cmp dword ptr [_ENV+112], 3
jl .L_0731
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0730
.L_0731:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0729
push offset _Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0730:
.L_072F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCLEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0732:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0734
mov dword ptr [ebp-4], 24
jmp .L_0D02
.L_0734:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D02:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0737
push 0
push 2
push offset _Lt_06FE
push -1
push offset _Lt_0D03
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FD
push -1
push offset _Lt_0D04
call _fb_StrAssign
add esp, 20
jmp .L_0736
.L_0737:
push 0
push 2
push offset _Lt_0700
push -1
push offset _Lt_0D03
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FF
push -1
push offset _Lt_0D04
call _fb_StrAssign
add esp, 20
.L_0736:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0738
push dword ptr [_Lt_0D04]
push dword ptr [_Lt_0D03]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0733:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D03,12
.balign 4
	.lcomm	_Lt_0D04,12

.section .text
.balign 16
__EMITCLEI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0739:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_073B
mov dword ptr [ebp-4], 24
jmp .L_0D05
.L_073B:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D05:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_073E
push 0
push 3
push offset _Lt_073F
push -1
push offset _Lt_0D06
call _fb_StrAssign
add esp, 20
jmp .L_073D
.L_073E:
push 0
push 3
push offset _Lt_0738
push -1
push offset _Lt_0D06
call _fb_StrAssign
add esp, 20
.L_073D:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D06]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_073A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D06,12

.section .text
.balign 16
__EMITCLEF:
push ebp
mov ebp, esp
.L_0740:
cmp dword ptr [_ENV+112], 3
jl .L_0743
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0744
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0742
.L_0743:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_070C
push offset _Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0742:
.L_0741:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCGEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0745:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0747
mov dword ptr [ebp-4], 24
jmp .L_0D07
.L_0747:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D07:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_074A
push 0
push 2
push offset _Lt_06FD
push -1
push offset _Lt_0D08
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_06FE
push -1
push offset _Lt_0D09
call _fb_StrAssign
add esp, 20
jmp .L_0749
.L_074A:
push 0
push 2
push offset _Lt_06FF
push -1
push offset _Lt_0D08
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0700
push -1
push offset _Lt_0D09
call _fb_StrAssign
add esp, 20
.L_0749:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0744
push dword ptr [_Lt_0D09]
push dword ptr [_Lt_0D08]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPL
add esp, 32
.L_0746:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D08,12
.balign 4
	.lcomm	_Lt_0D09,12

.section .text
.balign 16
__EMITCGEI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_074B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_074D
mov dword ptr [ebp-4], 24
jmp .L_0D0A
.L_074D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D0A:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_0750
push 0
push 3
push offset _Lt_0751
push -1
push offset _Lt_0D0B
call _fb_StrAssign
add esp, 20
jmp .L_074F
.L_0750:
push 0
push 3
push offset _Lt_0744
push -1
push offset _Lt_0D0B
call _fb_StrAssign
add esp, 20
.L_074F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [_Lt_0D0B]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPI
add esp, 20
.L_074C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D0B,12

.section .text
.balign 16
__EMITCGEF:
push ebp
mov ebp, esp
.L_0752:
cmp dword ptr [_ENV+112], 3
jl .L_0755
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0738
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
jmp .L_0754
.L_0755:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset _Lt_0000
push offset _Lt_0744
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCMPF
add esp, 24
.L_0754:
.L_0753:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITNEGL:
push ebp
mov ebp, esp
.L_0756:
push offset _Lt_0D0C
push offset _Lt_0D0D
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0758
push -1
push offset _Lt_0D0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D0D
push -1
push offset _Lt_0D0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D0E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_044C
push -1
push offset _Lt_0D0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D0C
push -1
push offset _Lt_0D0E
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_02FD
push -1
push offset _Lt_0D0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D0E]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0758
push -1
push offset _Lt_0D0E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D0C
push -1
push offset _Lt_0D0E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D0E]
call _OUTP
add esp, 4
.L_0757:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D0D,12
.balign 4
	.lcomm	_Lt_0D0C,12
.balign 4
	.lcomm	_Lt_0D0E,12

.section .text
.balign 16
__EMITNEGI:
push ebp
mov ebp, esp
.L_0759:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D0F
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0758
push -1
push offset _Lt_0D10
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D0F
push -1
push offset _Lt_0D10
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D10]
call _OUTP
add esp, 4
.L_075A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D0F,12
.balign 4
	.lcomm	_Lt_0D10,12

.section .text
.balign 16
__EMITNEGF:
push ebp
mov ebp, esp
.L_075B:
push offset _Lt_075D
call _OUTP
add esp, 4
.L_075C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITNOTL:
push ebp
mov ebp, esp
.L_075E:
push offset _Lt_0D11
push offset _Lt_0D12
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0D13
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D12
push -1
push offset _Lt_0D13
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D13]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0D13
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D11
push -1
push offset _Lt_0D13
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D13]
call _OUTP
add esp, 4
.L_075F:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D12,12
.balign 4
	.lcomm	_Lt_0D11,12
.balign 4
	.lcomm	_Lt_0D13,12

.section .text
.balign 16
__EMITNOTI:
push ebp
mov ebp, esp
.L_0760:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D14
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_0763
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0D15
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D14
push -1
push offset _Lt_0D15
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D15
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0004
push -1
push offset _Lt_0D15
call _fb_StrConcatAssign
add esp, 20
jmp .L_0762
.L_0763:
push 0
push 5
push offset _Lt_0679
push -1
push offset _Lt_0D15
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D14
push -1
push offset _Lt_0D15
call _fb_StrConcatAssign
add esp, 20
.L_0762:
push dword ptr [_Lt_0D15]
call _OUTP
add esp, 4
.L_0761:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D14,12
.balign 4
	.lcomm	_Lt_0D15,12

.section .text
.balign 16
__EMITABSL:
push ebp
mov ebp, esp
.L_0764:
push offset _Lt_0D16
push offset _Lt_0D17
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D18], eax
push 0
push 0
push dword ptr [_Lt_0D18]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D19
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D18]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D1A], eax
cmp dword ptr [_Lt_0D1A], 0
jne .L_0767
push dword ptr [_Lt_0D19]
call _HPUSH
add esp, 4
.L_0767:
.L_0766:
push dword ptr [_Lt_0D16]
push dword ptr [_Lt_0D19]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_031D
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D19
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_031E
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D17
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D19
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D16
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D19
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0468
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D17
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D19
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0469
push -1
push offset _Lt_0D1B
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D16
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D19
push -1
push offset _Lt_0D1B
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D1B]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D1A], 0
jne .L_0769
push dword ptr [_Lt_0D19]
call _HPOP
add esp, 4
.L_0769:
.L_0768:
.L_0765:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D17,12
.balign 4
	.lcomm	_Lt_0D16,12
.balign 4
	.lcomm	_Lt_0D18,4
.balign 4
	.lcomm	_Lt_0D1A,4
.balign 4
	.lcomm	_Lt_0D19,12
.balign 4
	.lcomm	_Lt_0D1B,12

.section .text
.balign 16
__EMITABSI:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_076A:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D1D
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D1E], eax
push 0
push 0
push dword ptr [_Lt_0D1E]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D1F
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D1E]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D20], eax
cmp dword ptr [_Lt_0D20], 0
jne .L_076D
push dword ptr [_Lt_0D1F]
call _HPUSH
add esp, 4
.L_076D:
.L_076C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_076E
mov dword ptr [ebp-4], 24
jmp .L_0D1C
.L_076E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D1C:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [_Lt_0D21], ebx
push dword ptr [_Lt_0D1D]
push dword ptr [_Lt_0D1F]
call _HMOV
add esp, 8
push 0
push 5
push offset _Lt_031D
push -1
push offset _Lt_0D22
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1F
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D21]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D22]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_03D2
push -1
push offset _Lt_0D22
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1D
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1F
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D22]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0468
push -1
push offset _Lt_0D22
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1D
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D1F
push -1
push offset _Lt_0D22
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D22]
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D20], 0
jne .L_0771
push dword ptr [_Lt_0D1F]
call _HPOP
add esp, 4
.L_0771:
.L_0770:
.L_076B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D1D,12
.balign 4
	.lcomm	_Lt_0D1E,4
.balign 4
	.lcomm	_Lt_0D20,4
.balign 4
	.lcomm	_Lt_0D1F,12
.balign 4
	.lcomm	_Lt_0D21,4
.balign 4
	.lcomm	_Lt_0D22,12

.section .text
.balign 16
__EMITABSF:
push ebp
mov ebp, esp
.L_0772:
push offset _Lt_068E
call _OUTP
add esp, 4
.L_0773:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNL:
push ebp
mov ebp, esp
sub esp, 128
.L_0774:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-56], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-56], 0
jne .L_0777
push dword ptr [ebp-48]
call _HPUSH
add esp, 4
.L_0777:
.L_0776:
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call _HMOV
add esp, 8
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call _OUTP
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
push offset _Lt_0310
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0310
push dword ptr [ebp-24]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
push offset _Lt_077B
call _HBRANCH
add esp, 8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
push offset _Lt_077C
call _HBRANCH
add esp, 8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-128]
call _OUTP
add esp, 4
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-36]
push offset _Lt_0780
call _HBRANCH
add esp, 8
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-36]
call _HLABEL
add esp, 4
cmp dword ptr [ebp-56], 0
jne .L_0782
push dword ptr [ebp-48]
call _HPOP
add esp, 4
.L_0782:
.L_0781:
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0775:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNI:
push ebp
mov ebp, esp
sub esp, 60
.L_0783:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push offset _Lt_0788
call _HBRANCH
add esp, 8
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-24]
push offset _Lt_077C
call _HBRANCH
add esp, 8
push offset _Lt_0310
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push dword ptr [ebp-24]
call _HLABEL
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0784:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSGNF:
push ebp
mov ebp, esp
sub esp, 28
.L_0789:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [_ENV+112], 3
jl .L_078C
push offset _Lt_078D
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_03C8
call _OUTP
add esp, 4
jmp .L_078B
.L_078C:
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_078F
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_078F:
.L_078E:
push offset _Lt_0790
call _OUTP
add esp, 4
push offset _Lt_03CD
call _OUTP
add esp, 4
push offset _Lt_06E2
call _OUTP
add esp, 4
cmp dword ptr [ebp-28], 0
jne .L_0792
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0792:
.L_0791:
.L_078B:
push dword ptr [ebp-24]
push offset _Lt_03CF
call _HBRANCH
add esp, 8
push offset _Lt_06D5
call _OUTP
add esp, 4
push offset _Lt_0694
call _OUTP
add esp, 4
push dword ptr [ebp-24]
push offset _Lt_0793
call _HBRANCH
add esp, 8
push offset _Lt_075D
call _OUTP
add esp, 4
push dword ptr [ebp-24]
call _HLABEL
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_078A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSIN:
push ebp
mov ebp, esp
.L_0794:
push offset _Lt_0796
call _OUTP
add esp, 4
.L_0795:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITASIN:
push ebp
mov ebp, esp
.L_0797:
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0799
call _OUTP
add esp, 4
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_047B
call _OUTP
add esp, 4
push offset _Lt_079A
call _OUTP
add esp, 4
push offset _Lt_0689
call _OUTP
add esp, 4
.L_0798:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCOS:
push ebp
mov ebp, esp
.L_079B:
push offset _Lt_079D
call _OUTP
add esp, 4
.L_079C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITACOS:
push ebp
mov ebp, esp
.L_079E:
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0799
call _OUTP
add esp, 4
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_047B
call _OUTP
add esp, 4
push offset _Lt_079A
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_0689
call _OUTP
add esp, 4
.L_079F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITTAN:
push ebp
mov ebp, esp
.L_07A0:
push offset _Lt_07A2
call _OUTP
add esp, 4
push offset _Lt_06D5
call _OUTP
add esp, 4
.L_07A1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITATAN:
push ebp
mov ebp, esp
.L_07A3:
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_0689
call _OUTP
add esp, 4
.L_07A4:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSQRT:
push ebp
mov ebp, esp
.L_07A5:
push offset _Lt_079A
call _OUTP
add esp, 4
.L_07A6:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOG:
push ebp
mov ebp, esp
.L_07A7:
push offset _Lt_07A9
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_068F
call _OUTP
add esp, 4
.L_07A8:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEXP:
push ebp
mov ebp, esp
.L_07AA:
push offset _Lt_07AC
call _OUTP
add esp, 4
push offset _Lt_07AD
call _OUTP
add esp, 4
push offset _Lt_07AE
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
push offset _Lt_07AF
call _OUTP
add esp, 4
push offset _Lt_0688
call _OUTP
add esp, 4
push offset _Lt_0693
call _OUTP
add esp, 4
push offset _Lt_07B0
call _HPUSH
add esp, 4
push offset _Lt_07B1
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
push offset _Lt_0695
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
.L_07AB:
mov esp, ebp
pop ebp
ret
.balign 16
_HFPUCHANGERC:
push ebp
mov ebp, esp
sub esp, 96
.L_07B2:
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_07B4
call _OUTP
add esp, 4
push offset _Lt_07B5
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HMOV
add esp, 8
push 3
push offset _Lt_07B6
push 0
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_07B8
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 21
push offset _Lt_07B9
push -1
push -1
push dword ptr [ebp+8]
push 5
push offset _Lt_066B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-96]
call _OUTP
add esp, 4
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
.L_07B8:
.L_07B7:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push 11
push offset _Lt_07BE
push -1
push 0
push dword ptr [ebp+12]
push 9
push offset _Lt_07BD
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0670
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _OUTP
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HPUSH
add esp, 4
push offset _Lt_07C4
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
.L_07B3:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOATFUNC:
push ebp
mov ebp, esp
sub esp, 20
.L_07C5:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
call _HFINDFREEREG
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .L_07C8
mov dword ptr [ebp-4], 5
mov dword ptr [ebp-8], 0
jmp .L_07C7
.L_07C8:
mov dword ptr [ebp-8], -1
.L_07C7:
push 0
push 0
push dword ptr [ebp-4]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-8], 0
jne .L_07CA
push dword ptr [ebp-20]
call _HPUSH
add esp, 4
.L_07CA:
.L_07C9:
cmp dword ptr [ebp+8], 1
jne .L_07CC
.L_07CD:
push offset _Lt_07CE
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0691
call _OUTP
add esp, 4
jmp .L_07CB
.L_07CC:
cmp dword ptr [ebp+8], 2
jne .L_07CF
.L_07D0:
push offset _Lt_07B6
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0691
call _OUTP
add esp, 4
jmp .L_07CB
.L_07CF:
cmp dword ptr [ebp+8], 3
jne .L_07D1
.L_07D2:
push offset _Lt_07B6
lea eax, [ebp-20]
push eax
call _HFPUCHANGERC
add esp, 8
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_0691
call _OUTP
add esp, 4
push offset _Lt_07D3
call _OUTP
add esp, 4
.L_07D1:
.L_07CB:
push offset _Lt_07C4
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
cmp dword ptr [ebp-8], 0
jne .L_07D5
push dword ptr [ebp-20]
call _HPOP
add esp, 4
.L_07D5:
.L_07D4:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_07C6:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOAT_INT_686:
push ebp
mov ebp, esp
.L_07D6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07D9
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_07DA
call _OUTP
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
jmp .L_07D8
.L_07D9:
push offset _Lt_035B
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_035C
call _OUTP
add esp, 4
push offset _Lt_07DB
call _OUTP
add esp, 4
.L_07D8:
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_07DC
call _OUTP
add esp, 4
push offset _Lt_07DD
call _OUTP
add esp, 4
push offset _Lt_03C8
call _OUTP
add esp, 4
push offset _Lt_07DE
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E0
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_07DF
.L_07E0:
push offset _Lt_036A
call _OUTP
add esp, 4
.L_07DF:
.L_07D7:
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOAT_FIX_686:
push ebp
mov ebp, esp
.L_07E1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E4
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_068E
call _OUTP
add esp, 4
push offset _Lt_07DA
call _OUTP
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
jmp .L_07E3
.L_07E4:
push offset _Lt_035B
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_068E
call _OUTP
add esp, 4
push offset _Lt_0690
call _OUTP
add esp, 4
push offset _Lt_035C
call _OUTP
add esp, 4
push offset _Lt_07DB
call _OUTP
add esp, 4
.L_07E3:
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_07E5
call _OUTP
add esp, 4
push offset _Lt_07DD
call _OUTP
add esp, 4
push offset _Lt_03C8
call _OUTP
add esp, 4
push offset _Lt_07DE
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
push offset _Lt_078D
call _OUTP
add esp, 4
push offset _Lt_07E6
call _OUTP
add esp, 4
push offset _Lt_07E7
call _OUTP
add esp, 4
push offset _Lt_075D
call _OUTP
add esp, 4
push offset _Lt_07DE
call _OUTP
add esp, 4
push offset _Lt_0696
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E9
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_07E8
.L_07E9:
push offset _Lt_036A
call _OUTP
add esp, 4
.L_07E8:
.L_07E2:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFLOOR:
push ebp
mov ebp, esp
.L_07EA:
cmp dword ptr [_ENV+112], 3
jl .L_07ED
push dword ptr [ebp+8]
call _HEMITFLOAT_INT_686
add esp, 4
jmp .L_07EC
.L_07ED:
push 1
call _HEMITFLOATFUNC
add esp, 4
.L_07EC:
.L_07EB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFIX:
push ebp
mov ebp, esp
.L_07EE:
cmp dword ptr [_ENV+112], 3
jl .L_07F1
push dword ptr [ebp+8]
call _HEMITFLOAT_FIX_686
add esp, 4
jmp .L_07F0
.L_07F1:
push 2
call _HEMITFLOATFUNC
add esp, 4
.L_07F0:
.L_07EF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFRAC:
push ebp
mov ebp, esp
.L_07F2:
push 3
call _HEMITFLOATFUNC
add esp, 4
.L_07F3:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVFD2FS:
push ebp
mov ebp, esp
.L_07F4:
push offset _Lt_034A
call _OUTP
add esp, 4
push offset _Lt_07F6
call _OUTP
add esp, 4
push offset _Lt_03C7
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
.L_07F5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITXCHGTOS:
push ebp
mov ebp, esp
.L_07F7:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D23
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_07F9
push -1
push offset _Lt_0D24
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D23
push -1
push offset _Lt_0D24
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D24]
call _OUTP
add esp, 4
.L_07F8:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D23,12
.balign 4
	.lcomm	_Lt_0D24,12

.section .text
.balign 16
__EMITSTACKALIGN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_07FA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jl .L_07FD
jg .L_0D25
cmp dword ptr [eax+24], 0
jbe .L_07FD
.L_0D25:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_027C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_07FC
.L_07FD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
neg ecx
adc ebx, 0
neg ebx
push ebx
push ecx
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_02D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_07FC:
.L_07FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHL:
push ebp
mov ebp, esp
.L_0802:
push offset _Lt_0D26
push offset _Lt_0D27
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0D28
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D26
push -1
push offset _Lt_0D28
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D28]
call _OUTP
add esp, 4
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0D28
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D27
push -1
push offset _Lt_0D28
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D28]
call _OUTP
add esp, 4
.L_0803:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D27,12
.balign 4
	.lcomm	_Lt_0D26,12
.balign 4
	.lcomm	_Lt_0D28,12

.section .text
.balign 16
__EMITPUSHI:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_0804:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0806
mov dword ptr [ebp-40], 24
jmp .L_0D29
.L_0806:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0D29:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 4
jne .L_080A
.L_080B:
cmp dword ptr [ebp-28], 4
jge .L_080D
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_080D:
.L_080C:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0808
.L_080A:
cmp dword ptr [ebp-44], 0
jne .L_0810
.L_0811:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0808
.L_0810:
cmp dword ptr [ebp-28], 4
jge .L_0816
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-36], eax
push 0
push 0
push dword ptr [ebp-32]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-36], 0
jne .L_0818
push dword ptr [ebp-24]
call _HPUSH
add esp, 4
.L_0818:
.L_0817:
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call _OUTP
add esp, 4
lea eax, [ebp-92]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-116]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-116]
call _OUTP
add esp, 4
lea eax, [ebp-116]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-36], 0
jne .L_0820
push dword ptr [ebp-24]
call _HPOP
add esp, 4
.L_0820:
.L_081F:
jmp .L_0815
.L_0816:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call _OUTP
add esp, 4
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
.L_0815:
.L_0814:
.L_0808:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0805:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0823:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D2B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0825
mov dword ptr [ebp-4], 24
jmp .L_0D2A
.L_0825:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D2A:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D2C], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0828
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_082A
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2B
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
jmp .L_0829
.L_082A:
push -1
push 0
push 4
push 8
push offset _Lt_0D2B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2B
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
push -1
push 0
push 0
push 8
push offset _Lt_0D2B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 6
push offset _Lt_0174
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2B
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
.L_0829:
jmp .L_0827
.L_0828:
push 0
push 9
push offset _Lt_082B
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D2C]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D2D
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [_DTYPETB+ebx+4]
push eax
push 6
push offset _Lt_0370
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D2D
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D2D]
call _OUTP
add esp, 4
.L_0827:
.L_0824:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D2B,12
.balign 4
	.lcomm	_Lt_0D2C,4
.balign 4
	.lcomm	_Lt_0D2D,12

.section .text
.balign 16
__EMITPUSHUDT:
push ebp
mov ebp, esp
sub esp, 208
.L_082E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
and eax, 3
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_0831
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-48], eax
push 0
push 0
push dword ptr [ebp-44]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-48], 0
jne .L_0833
push dword ptr [ebp-24]
call _HPUSH
add esp, 4
.L_0833:
.L_0832:
cmp dword ptr [ebp-52], 3
jne .L_0835
.L_0836:
push -1
push 0
mov eax, dword ptr [ebp+12]
dec eax
push eax
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
push 5
push offset _Lt_083B
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_055F
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-160]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-160]
call _OUTP
add esp, 4
lea eax, [ebp-160]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 0
push dword ptr [ebp-44]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -3
push eax
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-36]
push eax
push 5
push offset _Lt_017E
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-208]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-208]
call _OUTP
add esp, 4
lea eax, [ebp-208]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0834
.L_0835:
cmp dword ptr [ebp-52], 2
jne .L_0843
.L_0844:
mov eax, dword ptr [ebp+12]
add eax, -2
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0834
.L_0843:
cmp dword ptr [ebp-52], 1
jne .L_0849
.L_084A:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
push -1
push 0
push dword ptr [ebp-40]
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.L_0849:
.L_0834:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-48], 0
jne .L_0852
push dword ptr [ebp-24]
call _HPOP
add esp, 4
.L_0852:
.L_0851:
mov eax, dword ptr [ebp-52]
sub dword ptr [ebp+12], eax
.L_0831:
.L_0830:
mov eax, dword ptr [ebp+12]
add eax, -4
mov dword ptr [ebp-40], eax
.L_0853:
cmp dword ptr [ebp-40], 0
jl .L_0854
push -1
push 0
push dword ptr [ebp-40]
push 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0174
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
add dword ptr [ebp-40], -4
jmp .L_0853
.L_0854:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_082F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPOPL:
push ebp
mov ebp, esp
.L_0857:
push offset _Lt_0D2E
push offset _Lt_0D2F
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D30
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2F
push -1
push offset _Lt_0D30
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D30]
call _OUTP
add esp, 4
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D30
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D2E
push -1
push offset _Lt_0D30
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D30]
call _OUTP
add esp, 4
.L_0858:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D2F,12
.balign 4
	.lcomm	_Lt_0D2E,12
.balign 4
	.lcomm	_Lt_0D30,12

.section .text
.balign 16
__EMITPOPI:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0859:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D32
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_085B
mov dword ptr [ebp-4], 24
jmp .L_0D31
.L_085B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D31:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D33], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
jne .L_085E
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+28], 0
jne .L_0860
cmp dword ptr [ebx+24], 4
jne .L_0860
.L_0D34:
push 5
push 0
call _HISREGFREE
add esp, 8
test eax, eax
je .L_0862
push offset _Lt_0088
call _HPOP
add esp, 4
jmp .L_0861
.L_0862:
push offset _Lt_034F
call _OUTP
add esp, 4
.L_0861:
jmp .L_085F
.L_0860:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr
add esp, 8
push eax
push 10
push offset _Lt_02D2
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D35
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D35]
call _OUTP
add esp, 4
.L_085F:
jmp .L_085D
.L_085E:
cmp dword ptr [_Lt_0D33], 4
jne .L_0864
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D35
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D32
push -1
push offset _Lt_0D35
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D35]
call _OUTP
add esp, 4
jmp .L_085D
.L_0864:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0866
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D32
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D35
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D32
push -1
push offset _Lt_0D35
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D35]
call _OUTP
add esp, 4
jmp .L_0865
.L_0866:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D36], eax
push 0
push 0
push dword ptr [_Lt_0D36]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D37
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0D36]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D38
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [_Lt_0D36]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D39
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D36]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D3A], eax
cmp dword ptr [_Lt_0D3A], 0
je .L_0868
push offset _Lt_0352
push dword ptr [_Lt_0D39]
call _HMOV
add esp, 8
jmp .L_0867
.L_0868:
push offset _Lt_0352
push dword ptr [_Lt_0D39]
call _HXCHG
add esp, 8
.L_0867:
cmp dword ptr [_Lt_0D33], 1
jne .L_086A
push dword ptr [_Lt_0D37]
push dword ptr [_Lt_0D32]
call _HMOV
add esp, 8
jmp .L_0869
.L_086A:
push dword ptr [_Lt_0D38]
push dword ptr [_Lt_0D32]
call _HMOV
add esp, 8
.L_0869:
cmp dword ptr [_Lt_0D3A], 0
je .L_086C
push offset _Lt_034F
call _OUTP
add esp, 4
jmp .L_086B
.L_086C:
push dword ptr [_Lt_0D39]
call _HPOP
add esp, 4
.L_086B:
.L_0865:
.L_085D:
.L_085A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D32,12
.balign 4
	.lcomm	_Lt_0D35,12
.balign 4
	.lcomm	_Lt_0D33,4
.balign 4
	.lcomm	_Lt_0D36,4
.balign 4
	.lcomm	_Lt_0D3A,4
.balign 4
	.lcomm	_Lt_0D37,12
.balign 4
	.lcomm	_Lt_0D38,12
.balign 4
	.lcomm	_Lt_0D39,12

.section .text
.balign 16
__EMITPOPF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_086D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D3C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_086F
mov dword ptr [ebp-4], 24
jmp .L_0D3B
.L_086F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D3B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [_Lt_0D3D], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0872
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0874
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D3E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3C
push -1
push offset _Lt_0D3E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3E]
call _OUTP
add esp, 4
jmp .L_0873
.L_0874:
push -1
push 0
push 0
push 8
push offset _Lt_0D3C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D3E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3C
push -1
push offset _Lt_0D3E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3E]
call _OUTP
add esp, 4
push -1
push 0
push 4
push 8
push offset _Lt_0D3C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_0179
push -1
push offset _Lt_0D3E
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3C
push -1
push offset _Lt_0D3E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3E]
call _OUTP
add esp, 4
.L_0873:
jmp .L_0871
.L_0872:
push 0
push -1
push 7
push offset _Lt_0367
push -1
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [_DTYPETB+eax+4]
push ebx
push 5
push offset _Lt_03A3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0D3E
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D3E]
call _OUTP
add esp, 4
push 0
push 9
push offset _Lt_0877
push -1
push offset _Lt_0D3E
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_0D3D]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D3E
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D3E]
call _OUTP
add esp, 4
.L_0871:
.L_086E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D3C,12
.balign 4
	.lcomm	_Lt_0D3E,12
.balign 4
	.lcomm	_Lt_0D3D,4

.section .text
.balign 16
__EMITPOPST0:
.L_0878:
push offset _Lt_06D5
call _OUTP
add esp, 4
.L_0879:
ret
.balign 16
__EMITADDROF:
push ebp
mov ebp, esp
.L_087A:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D3F
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 0
push 0
push 0
push -2147483648
push offset _Lt_0D40
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_087C
push -1
push offset _Lt_0D41
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D3F
push -1
push offset _Lt_0D41
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D41
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D40
push -1
push offset _Lt_0D41
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D41]
call _OUTP
add esp, 4
.L_087B:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D3F,12
.balign 4
	.lcomm	_Lt_0D40,12
.balign 4
	.lcomm	_Lt_0D41,12

.section .text
.balign 16
__EMITDEREF:
push ebp
mov ebp, esp
.L_087D:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D42
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push 9
push offset _Lt_0D43
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 0
push 5
push offset _Lt_017E
push -1
push offset _Lt_0D44
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D42
push -1
push offset _Lt_0D44
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0074
push -1
push offset _Lt_0D44
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_0D43
push -1
push offset _Lt_0D44
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D44]
call _OUTP
add esp, 4
.L_087E:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D42,12
.balign 4
	.lcomm	_Lt_0D43,12
.balign 4
	.lcomm	_Lt_0D44,12

.section .text
.balign 16
_HMEMMOVEREP:
push ebp
mov ebp, esp
.L_087F:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D45
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D46
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D47], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D48], eax
push 2
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D49], eax
push 1
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0D4A], eax
push 3
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
mov dword ptr [_Lt_0D4B], eax
cmp dword ptr [_Lt_0D47], 0
jne .L_0882
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_0882:
.L_0881:
cmp dword ptr [_Lt_0D48], 0
jne .L_0884
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0884:
.L_0883:
cmp dword ptr [_Lt_0D49], 0
jne .L_0886
push offset _Lt_0085
call _HPUSH
add esp, 4
.L_0886:
.L_0885:
cmp dword ptr [_Lt_0D4A], 0
jne .L_0888
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_088A
push dword ptr [_Lt_0D45]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_0889
.L_088A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_088C
push dword ptr [_Lt_0D45]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_088C:
.L_088B:
.L_0889:
jmp .L_0887
.L_0888:
cmp dword ptr [_Lt_0D4B], 0
je .L_088E
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_088E:
.L_088D:
push dword ptr [_Lt_0D45]
push offset _Lt_0086
call _HMOV
add esp, 8
cmp dword ptr [_Lt_0D4B], 0
je .L_0890
push offset _Lt_0510
call _OUTP
add esp, 4
.L_0890:
.L_088F:
.L_0887:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0892
push dword ptr [_Lt_0D46]
push offset _Lt_0085
call _HMOV
add esp, 8
jmp .L_0891
.L_0892:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 2
je .L_0894
push dword ptr [_Lt_0D46]
push offset _Lt_0085
call _HMOV
add esp, 8
.L_0894:
.L_0893:
.L_0891:
cmp dword ptr [_Lt_0D4A], 0
je .L_0896
cmp dword ptr [_Lt_0D4B], 0
jne .L_0898
push offset _Lt_0086
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_0897
.L_0898:
push offset _Lt_0084
call _HPOP
add esp, 4
.L_0897:
.L_0896:
.L_0895:
cmp dword ptr [ebp+16], 4
jle .L_089A
push 0
push 10
push offset _Lt_089B
push -1
push offset _Lt_0D4C
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+16]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D4C
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D4C]
call _OUTP
add esp, 4
push offset _Lt_089C
call _OUTP
add esp, 4
jmp .L_0899
.L_089A:
cmp dword ptr [ebp+16], 4
jne .L_089D
push offset _Lt_089E
call _OUTP
add esp, 4
push offset _Lt_089F
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+16]
and eax, 3
test eax, eax
jle .L_08A1
push offset _Lt_08A2
call _OUTP
add esp, 4
push offset _Lt_08A3
call _OUTP
add esp, 4
.L_08A1:
.L_08A0:
.L_089D:
.L_0899:
and dword ptr [ebp+16], 3
cmp dword ptr [ebp+16], 0
jle .L_08A5
cmp dword ptr [ebp+16], 2
jl .L_08A7
push offset _Lt_08A8
call _OUTP
add esp, 4
push offset _Lt_08A9
call _OUTP
add esp, 4
cmp dword ptr [ebp+16], 3
jne .L_08AB
push offset _Lt_08AC
call _OUTP
add esp, 4
push offset _Lt_08AD
call _OUTP
add esp, 4
.L_08AB:
.L_08AA:
.L_08A7:
.L_08A6:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08AF
push offset _Lt_08B0
call _OUTP
add esp, 4
push offset _Lt_08B1
call _OUTP
add esp, 4
.L_08AF:
.L_08AE:
.L_08A5:
.L_08A4:
cmp dword ptr [_Lt_0D49], 0
jne .L_08B3
push offset _Lt_0085
call _HPOP
add esp, 4
.L_08B3:
.L_08B2:
cmp dword ptr [_Lt_0D48], 0
jne .L_08B5
push offset _Lt_0084
call _HPOP
add esp, 4
.L_08B5:
.L_08B4:
cmp dword ptr [_Lt_0D47], 0
jne .L_08B7
push offset _Lt_0086
call _HPOP
add esp, 4
.L_08B7:
.L_08B6:
.L_0880:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D45,12
.balign 4
	.lcomm	_Lt_0D46,12
.balign 4
	.lcomm	_Lt_0D4C,12
.balign 4
	.lcomm	_Lt_0D47,4
.balign 4
	.lcomm	_Lt_0D48,4
.balign 4
	.lcomm	_Lt_0D49,4
.balign 4
	.lcomm	_Lt_0D4A,4
.balign 4
	.lcomm	_Lt_0D4B,4

.section .text
.balign 16
_HMEMMOVEBLK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_08B8:
push 0
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [_Lt_0D4D], eax
push dword ptr [_Lt_0D4D]
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
test eax, eax
je .L_08BB
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP
add esp, 12
jmp .L_08B9
.L_08BB:
.L_08BA:
push 0
push 0
push dword ptr [_Lt_0D4D]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D4E
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0D4D]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D4F], eax
cmp dword ptr [_Lt_0D4F], 0
jne .L_08BD
push dword ptr [_Lt_0D4E]
call _HPUSH
add esp, 4
.L_08BD:
.L_08BC:
mov dword ptr [_Lt_0D50], 0
mov dword ptr [_Lt_0D51], 1
mov eax, dword ptr [ebp+16]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08BF
.L_08C2:
push -1
push 0
push dword ptr [_Lt_0D50]
push 8
push offset _Lt_0D52
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D52]
push dword ptr [_Lt_0D4E]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D50]
push 8
push offset _Lt_0D53
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D4E]
push dword ptr [_Lt_0D53]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D50], 4
.L_08C0:
inc dword ptr [_Lt_0D51]
.L_08BF:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0D51], ebx
jle .L_08C2
.L_08C1:
mov ebx, dword ptr [ebp+16]
and ebx, 2
test ebx, ebx
je .L_08C4
push 0
push 0
push dword ptr [_Lt_0D4D]
push 5
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D4E
call _fb_StrAssign
add esp, 20
push -1
push 0
push dword ptr [_Lt_0D50]
push 5
push offset _Lt_0D52
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D52]
push dword ptr [_Lt_0D4E]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D50]
push 5
push offset _Lt_0D53
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D4E]
push dword ptr [_Lt_0D53]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D50], 2
.L_08C4:
.L_08C3:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08C6
push 0
push 0
push dword ptr [_Lt_0D4D]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
push offset _Lt_0D4E
call _fb_StrAssign
add esp, 20
push -1
push 0
push dword ptr [_Lt_0D50]
push 2
push offset _Lt_0D52
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D52]
push dword ptr [_Lt_0D4E]
call _HMOV
add esp, 8
push -1
push 0
push dword ptr [_Lt_0D50]
push 2
push offset _Lt_0D53
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push dword ptr [_Lt_0D4E]
push dword ptr [_Lt_0D53]
call _HMOV
add esp, 8
.L_08C6:
.L_08C5:
cmp dword ptr [_Lt_0D4F], 0
jne .L_08C8
push dword ptr [_Lt_0D4E]
call _HPOP
add esp, 4
.L_08C8:
.L_08C7:
.L_08B9:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D53,12
.balign 4
	.lcomm	_Lt_0D52,12
.balign 4
	.lcomm	_Lt_0D4E,12
.balign 4
	.lcomm	_Lt_0D51,4
.balign 4
	.lcomm	_Lt_0D50,4
.balign 4
	.lcomm	_Lt_0D4D,4
.balign 4
	.lcomm	_Lt_0D4F,4

.section .text
.balign 16
__EMITMEMMOVE:
push ebp
mov ebp, esp
.L_08C9:
cmp dword ptr [ebp+16], 16
jbe .L_08CC
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEREP
add esp, 12
jmp .L_08CB
.L_08CC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMMOVEBLK
add esp, 12
.L_08CB:
.L_08CA:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEMSWAP:
push ebp
mov ebp, esp
.L_08CD:
.L_08CE:
mov esp, ebp
pop ebp
ret
.balign 16
_HMEMCLEARREPIMM:
push ebp
mov ebp, esp
.L_08CF:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D54
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D55], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D56], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D57], eax
cmp dword ptr [_Lt_0D55], 0
jne .L_08D2
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_08D2:
.L_08D1:
cmp dword ptr [_Lt_0D56], 0
jne .L_08D4
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_08D4:
.L_08D3:
cmp dword ptr [_Lt_0D57], 0
jne .L_08D6
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_08D6:
.L_08D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_08D8
push dword ptr [_Lt_0D54]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_08D7
.L_08D8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_08DA
push dword ptr [_Lt_0D54]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_08DA:
.L_08D9:
.L_08D7:
push offset _Lt_023B
call _OUTP
add esp, 4
cmp dword ptr [ebp+12], 4
jbe .L_08DC
push 0
push 10
push offset _Lt_089B
push -1
push offset _Lt_0D58
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
shr eax, 2
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_0D58
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D58]
call _OUTP
add esp, 4
push offset _Lt_023C
call _OUTP
add esp, 4
jmp .L_08DB
.L_08DC:
cmp dword ptr [ebp+12], 4
jne .L_08DD
push offset _Lt_08DE
call _OUTP
add esp, 4
mov eax, dword ptr [ebp+12]
and eax, 3
test eax, eax
jbe .L_08E0
push offset _Lt_08A3
call _OUTP
add esp, 4
.L_08E0:
.L_08DF:
.L_08DD:
.L_08DB:
and dword ptr [ebp+12], 3
cmp dword ptr [ebp+12], 0
jbe .L_08E2
cmp dword ptr [ebp+12], 2
jb .L_08E4
push offset _Lt_08E5
call _OUTP
add esp, 4
cmp dword ptr [ebp+12], 3
jne .L_08E7
push offset _Lt_08AD
call _OUTP
add esp, 4
.L_08E7:
.L_08E6:
.L_08E4:
.L_08E3:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
je .L_08E9
push offset _Lt_08EA
call _OUTP
add esp, 4
.L_08E9:
.L_08E8:
.L_08E2:
.L_08E1:
cmp dword ptr [_Lt_0D57], 0
jne .L_08EC
push offset _Lt_0084
call _HPOP
add esp, 4
.L_08EC:
.L_08EB:
cmp dword ptr [_Lt_0D56], 0
jne .L_08EE
push offset _Lt_0086
call _HPOP
add esp, 4
.L_08EE:
.L_08ED:
cmp dword ptr [_Lt_0D55], 0
jne .L_08F0
push offset _Lt_0088
call _HPOP
add esp, 4
.L_08F0:
.L_08EF:
.L_08D0:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D54,12
.balign 4
	.lcomm	_Lt_0D58,12
.balign 4
	.lcomm	_Lt_0D55,4
.balign 4
	.lcomm	_Lt_0D56,4
.balign 4
	.lcomm	_Lt_0D57,4

.section .text
.balign 16
_HMEMCLEARBLKIMM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_08F1:
mov dword ptr [_Lt_0D59], 0
mov dword ptr [_Lt_0D5A], 1
mov eax, dword ptr [ebp+12]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08F4
.L_08F7:
push -1
push 0
push dword ptr [_Lt_0D59]
push 8
push offset _Lt_0D5B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0006
push dword ptr [_Lt_0D5B]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D59], 4
.L_08F5:
inc dword ptr [_Lt_0D5A]
.L_08F4:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0D5A], ebx
jle .L_08F7
.L_08F6:
mov ebx, dword ptr [ebp+12]
and ebx, 2
test ebx, ebx
je .L_08F9
push -1
push 0
push dword ptr [_Lt_0D59]
push 5
push offset _Lt_0D5B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0006
push dword ptr [_Lt_0D5B]
call _HMOV
add esp, 8
add dword ptr [_Lt_0D59], 2
.L_08F9:
.L_08F8:
mov ebx, dword ptr [ebp+12]
and ebx, 1
test ebx, ebx
je .L_08FB
push -1
push 0
push dword ptr [_Lt_0D59]
push 2
push offset _Lt_0D5B
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push offset _Lt_0006
push dword ptr [_Lt_0D5B]
call _HMOV
add esp, 8
.L_08FB:
.L_08FA:
.L_08F2:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D5B,12
.balign 4
	.lcomm	_Lt_0D5A,4
.balign 4
	.lcomm	_Lt_0D59,4

.section .text
.balign 16
_HMEMCLEAR:
push ebp
mov ebp, esp
.L_08FC:
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D5C
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
push offset _Lt_0D5D
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D5E], eax
push 3
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D5F], eax
push 1
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [_Lt_0D60], eax
cmp dword ptr [_Lt_0D5E], 0
jne .L_08FF
push offset _Lt_0088
call _HPUSH
add esp, 4
.L_08FF:
.L_08FE:
cmp dword ptr [_Lt_0D5F], 0
jne .L_0901
push offset _Lt_0086
call _HPUSH
add esp, 4
.L_0901:
.L_0900:
cmp dword ptr [_Lt_0D60], 0
jne .L_0903
push offset _Lt_0084
call _HPUSH
add esp, 4
.L_0903:
.L_0902:
push 1
push dword ptr [ebp+12]
call _HISREGINVREG
add esp, 8
test eax, eax
jne .L_0905
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0907
push dword ptr [_Lt_0D5C]
push offset _Lt_0084
call _HMOV
add esp, 8
jmp .L_0906
.L_0907:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_0909
push dword ptr [_Lt_0D5C]
push offset _Lt_0084
call _HMOV
add esp, 8
.L_0909:
.L_0908:
.L_0906:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_090B
push dword ptr [_Lt_0D5D]
push offset _Lt_0086
call _HMOV
add esp, 8
jmp .L_090A
.L_090B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 3
je .L_090D
push dword ptr [_Lt_0D5D]
push offset _Lt_0086
call _HMOV
add esp, 8
.L_090D:
.L_090C:
.L_090A:
jmp .L_0904
.L_0905:
push dword ptr [_Lt_0D5D]
call _HPUSH
add esp, 4
push 0
push 10
push offset _Lt_090E
push -1
push offset _Lt_0D61
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0D5C
push -1
push offset _Lt_0D61
call _fb_StrConcatAssign
add esp, 20
push dword ptr [_Lt_0D61]
call _OUTP
add esp, 4
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0904:
push offset _Lt_023B
call _OUTP
add esp, 4
push offset _Lt_090F
call _OUTP
add esp, 4
push offset _Lt_0910
call _OUTP
add esp, 4
push offset _Lt_023C
call _OUTP
add esp, 4
push offset _Lt_0911
call _OUTP
add esp, 4
push offset _Lt_0912
call _OUTP
add esp, 4
push offset _Lt_0913
call _OUTP
add esp, 4
cmp dword ptr [_Lt_0D60], 0
jne .L_0915
push offset _Lt_0084
call _HPOP
add esp, 4
.L_0915:
.L_0914:
cmp dword ptr [_Lt_0D5F], 0
jne .L_0917
push offset _Lt_0086
call _HPOP
add esp, 4
.L_0917:
.L_0916:
cmp dword ptr [_Lt_0D5E], 0
jne .L_0919
push offset _Lt_0088
call _HPOP
add esp, 4
.L_0919:
.L_0918:
.L_08FD:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D5C,12
.balign 4
	.lcomm	_Lt_0D5D,12
.balign 4
	.lcomm	_Lt_0D61,12
.balign 4
	.lcomm	_Lt_0D5E,4
.balign 4
	.lcomm	_Lt_0D5F,4
.balign 4
	.lcomm	_Lt_0D60,4

.section .text
.balign 16
__EMITMEMCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_091A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_091D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 16
jbe .L_091F
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARREPIMM
add esp, 8
jmp .L_091E
.L_091F:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HMEMCLEARBLKIMM
add esp, 8
.L_091E:
jmp .L_091C
.L_091D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMEMCLEAR
add esp, 8
.L_091C:
.L_091B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTKCLEAR:
push ebp
mov ebp, esp
.L_0920:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HCLEARLOCALS
add esp, 8
.L_0921:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLINEINI:
push ebp
mov ebp, esp
.L_0922:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEBEGIN
add esp, 16
.L_0923:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLINEEND:
push ebp
mov ebp, esp
.L_0924:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EDBGLINEEND
add esp, 12
.L_0925:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEINI:
push ebp
mov ebp, esp
.L_0926:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEINI
add esp, 4
.L_0927:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEEND:
push ebp
mov ebp, esp
.L_0928:
push dword ptr [ebp+8]
call _EDBGEMITSCOPEEND
add esp, 4
.L_0929:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2B:
push ebp
mov ebp, esp
sub esp, 24
.L_092A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_092B:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2B:
push ebp
mov ebp, esp
.L_092C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2B
add esp, 8
.L_092D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2I:
push ebp
mov ebp, esp
sub esp, 108
push ebx
.L_092E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0931
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D65
cmp dword ptr [eax+24], 0
je .L_0933
.L_0D65:
push offset _Lt_0310
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_0932
.L_0933:
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_0932:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_092F
.L_0931:
.L_0930:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0934
mov dword ptr [ebp-28], 24
jmp .L_0D62
.L_0934:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_0D62:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0936
mov dword ptr [ebp-32], 24
jmp .L_0D63
.L_0936:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D63:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jle .L_0939
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea ecx, [ebp-12]
push ecx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ecx, [ebp-24]
push ecx
push 7
push offset _Lt_0318
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ecx, [ebp-72]
push ecx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0938
.L_0939:
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_0938:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_0758
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_092F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2I:
push ebp
mov ebp, esp
.L_0940:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2I
add esp, 8
.L_0941:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADI2B:
push ebp
mov ebp, esp
sub esp, 240
push ebx
.L_0942:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0945
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D66
cmp dword ptr [eax+24], 0
je .L_0947
.L_0D66:
push offset _Lt_0004
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_0946
.L_0947:
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_0946:
jmp .L_0944
.L_0945:
cmp dword ptr [ebp-40], 1
jne .L_0948
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_094C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0944
.L_0948:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_094F
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_094C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call _OUTP
add esp, 4
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0944
.L_094F:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp-68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_095A
push dword ptr [ebp-52]
call _HPUSH
add esp, 4
.L_095A:
.L_0959:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
push 2
push offset _Lt_0006
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-120]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call _OUTP
add esp, 4
lea eax, [ebp-120]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_094C
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call _OUTP
add esp, 4
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0962
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call _OUTP
add esp, 4
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0961
.L_0962:
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call _OUTP
add esp, 4
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push -1
lea eax, [ebp-52]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_017E
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-240]
call _OUTP
add esp, 4
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
.L_0961:
cmp dword ptr [ebp-72], 0
jne .L_0970
push dword ptr [ebp-52]
call _HPOP
add esp, 4
.L_0970:
.L_096F:
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_0944:
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0943:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORI2B:
push ebp
mov ebp, esp
.L_0971:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADI2B
add esp, 8
.L_0972:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADF2B:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.L_0973:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0975
mov dword ptr [ebp-36], 24
jmp .L_0D6A
.L_0975:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0D6A:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
push 5
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0977
push 5
push dword ptr [ebp+8]
call _HISREGINVREG
add esp, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0D6B
.L_0977:
mov dword ptr [ebp-40], -1
.L_0D6B:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_097A
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 5
push offset _Lt_03A3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call _OUTP
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
.L_097A:
.L_0979:
cmp dword ptr [ebp-32], 0
jne .L_097E
push offset _Lt_097F
call _OUTP
add esp, 4
.L_097E:
.L_097D:
cmp dword ptr [_ENV+112], 3
jl .L_0981
push offset _Lt_078D
call _OUTP
add esp, 4
push offset _Lt_03C8
call _OUTP
add esp, 4
push offset _Lt_0982
call _OUTP
add esp, 4
jmp .L_0980
.L_0981:
push offset _Lt_0790
call _OUTP
add esp, 4
push offset _Lt_03CD
call _OUTP
add esp, 4
push offset _Lt_06E2
call _OUTP
add esp, 4
push offset _Lt_0982
call _OUTP
add esp, 4
.L_0980:
push offset _Lt_06D5
call _OUTP
add esp, 4
cmp dword ptr [ebp-28], 1
jne .L_0984
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0985
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_017E
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0983
.L_0984:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
push 5
push offset _Lt_0985
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call _OUTP
add esp, 4
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
.L_0983:
cmp dword ptr [ebp-32], 0
jne .L_098D
push offset _Lt_098E
call _OUTP
add esp, 4
.L_098D:
.L_098C:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0974:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORF2B:
push ebp
mov ebp, esp
.L_098F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADF2B
add esp, 8
.L_0990:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2F:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.L_0991:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0993
mov dword ptr [ebp-32], 24
jmp .L_0D6D
.L_0993:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D6D:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_0996
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .L_0D6E
cmp dword ptr [ebx+24], 0
je .L_0998
.L_0D6E:
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_075D
call _OUTP
add esp, 4
jmp .L_0997
.L_0998:
push offset _Lt_078D
call _OUTP
add esp, 4
.L_0997:
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_0992
.L_0996:
.L_0995:
cmp dword ptr [ebp-28], 1
jne .L_099A
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-52]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_099C
push dword ptr [ebp-44]
call _HPUSH
add esp, 4
.L_099C:
.L_099B:
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-44]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call _OUTP
add esp, 4
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-44]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
cmp dword ptr [ebp-48], 0
jne .L_09A2
push dword ptr [ebp-44]
call _HPOP
add esp, 4
.L_09A2:
.L_09A1:
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_0999
.L_099A:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0366
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.L_0999:
push offset _Lt_075D
call _OUTP
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_0992:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2F:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.L_09A5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_09A7
mov dword ptr [ebp-32], 24
jmp .L_0D6F
.L_09A7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_0D6F:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_09AA
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .L_0D70
cmp dword ptr [ebx+24], 0
je .L_09AC
.L_0D70:
push offset _Lt_0694
call _OUTP
add esp, 4
push offset _Lt_075D
call _OUTP
add esp, 4
jmp .L_09AB
.L_09AC:
push offset _Lt_078D
call _OUTP
add esp, 4
.L_09AB:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea ebx, [ebp-24]
push ebx
push 6
push offset _Lt_0370
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTP
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09A6
.L_09AA:
.L_09A9:
cmp dword ptr [ebp-28], 1
jne .L_09B0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
push 0
push dword ptr [ebp+12]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-76], eax
push 0
push 0
push dword ptr [ebp-76]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09B2
push dword ptr [ebp-68]
call _HPUSH
add esp, 4
.L_09B2:
.L_09B1:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-68]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call _OUTP
add esp, 4
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-68]
call _HPUSH
add esp, 4
push offset _Lt_037D
call _OUTP
add esp, 4
push offset _Lt_034F
call _OUTP
add esp, 4
cmp dword ptr [ebp-72], 0
jne .L_09B8
push dword ptr [ebp-68]
call _HPOP
add esp, 4
.L_09B8:
.L_09B7:
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09AF
.L_09B0:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 6
push offset _Lt_0366
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTP
add esp, 4
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
.L_09AF:
push offset _Lt_075D
call _OUTP
add esp, 4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 6
push offset _Lt_0370
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call _OUTP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADB2L:
push ebp
mov ebp, esp
sub esp, 108
.L_09BD:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND64
add esp, 12
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_09C0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D71
cmp dword ptr [eax+24], 0
je .L_09C2
.L_0D71:
push offset _Lt_0310
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0310
push dword ptr [ebp-24]
call _HMOV
add esp, 8
jmp .L_09C1
.L_09C2:
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV
add esp, 8
push offset _Lt_0006
push dword ptr [ebp-24]
call _HMOV
add esp, 8
.L_09C1:
jmp .L_09BF
.L_09C0:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-36]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND
add esp, 24
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-36]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call _OUTP
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0758
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _HMOV
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.L_09BF:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09BE:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORB2L:
push ebp
mov ebp, esp
.L_09C9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADB2L
add esp, 8
.L_09CA:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADL2B:
push ebp
mov ebp, esp
sub esp, 220
push ebx
.L_09CB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
call _HPREPOPERAND64
add esp, 12
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HPREPOPERAND
add esp, 24
mov eax, dword ptr [_SYMB_DTYPETB+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_09CE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D72
cmp dword ptr [eax+24], 0
je .L_09D0
.L_0D72:
push offset _Lt_0004
push dword ptr [ebp-12]
call _HMOV
add esp, 8
jmp .L_09CF
.L_09D0:
push offset _Lt_0006
push dword ptr [ebp-12]
call _HMOV
add esp, 8
.L_09CF:
jmp .L_09CD
.L_09CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_09D1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0670
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-112]
call _OUTP
add esp, 4
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-148]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call _OUTP
add esp, 4
lea eax, [ebp-148]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_094C
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-172]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-172]
call _OUTP
add esp, 4
lea eax, [ebp-172]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-16], 1
je .L_09DC
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-220]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call _OUTP
add esp, 4
lea eax, [ebp-220]
push eax
call _fb_StrDelete
add esp, 4
.L_09DC:
.L_09DB:
jmp .L_09CD
.L_09D1:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
push -1
push dword ptr [ebp+8]
call _HFINDREGNOTINVREG
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push 0
push dword ptr [ebp-68]
push 2
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push dword ptr [ebp-68]
push 8
call _HGETREGNAME
add esp, 8
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
push 0
call _HISREGFREE
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09E2
push dword ptr [ebp-52]
call _HPUSH
add esp, 4
.L_09E2:
.L_09E1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_09E4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebp-68], ebx
jne .L_09E6
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea ebx, [ebp-40]
push ebx
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea ebx, [ebp-52]
push ebx
push 4
push offset _Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09E5
.L_09E6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ebp-68], eax
jne .L_09EB
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_09E5
.L_09EB:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09E5:
jmp .L_09E3
.L_09E4:
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call _HMOV
add esp, 8
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-40]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 4
push offset _Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
.L_09E3:
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
push 4
push offset _Lt_02FD
push -1
push -1
lea eax, [ebp-52]
push eax
push 5
push offset _Lt_02FC
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call _OUTP
add esp, 4
lea eax, [ebp-108]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push 7
push offset _Lt_094C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-132]
call _OUTP
add esp, 4
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-16], 1
jne .L_09FE
push dword ptr [ebp-64]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
jmp .L_09FD
.L_09FE:
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
push -1
lea eax, [ebp-64]
push eax
push -1
push 3
push offset _Lt_0074
push -1
push -1
lea eax, [ebp-52]
push eax
push 7
push offset _Lt_0318
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-180]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call _OUTP
add esp, 4
lea eax, [ebp-180]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HMOV
add esp, 8
.L_09FD:
cmp dword ptr [ebp-72], 0
jne .L_0A04
push dword ptr [ebp-52]
call _HPOP
add esp, 4
.L_0A04:
.L_0A03:
.L_09CD:
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_09CC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORL2B:
push ebp
mov ebp, esp
.L_0A05:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMITLOADL2B
add esp, 8
.L_0A06:
mov esp, ebp
pop ebp
ret
.balign 16
__INIT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A4B:
call _HINITREGTB
mov eax, dword ptr [_ENV+272]
sal eax, 4
mov ecx, dword ptr [_DTYPETB+eax]
mov dword ptr [_DTYPETB+112], ecx
mov ecx, dword ptr [_DTYPETB+eax+4]
mov dword ptr [_DTYPETB+116], ecx
mov ecx, dword ptr [_DTYPETB+eax+8]
mov dword ptr [_DTYPETB+120], ecx
mov ecx, dword ptr [_DTYPETB+eax+12]
mov dword ptr [_DTYPETB+124], ecx
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
mov dword ptr [ebp-8], 66304
cmp dword ptr [_ENV+116], 1
jne .L_0A4E
or dword ptr [ebp-8], 1
.L_0A4E:
.L_0A4D:
mov eax, dword ptr [ebp-8]
or dword ptr [_IR+272], eax
call _EDBGINIT
mov dword ptr [ebp-4], -1
.L_0A4C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__END:
.L_0A4F:
mov dword ptr [_EMIT+140], -1
mov dword ptr [_EMIT+144], -1
call _HENDREGTB
.L_0A50:
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A51:
cmp dword ptr [ebp+8], 1
jne .L_0A54
.L_0A55:
mov dword ptr [ebp-4], 16
jmp .L_0A52
jmp .L_0A53
.L_0A54:
push 0
push 1
push 0
push offset _Lt_0A57
push 21
call _ERRREPORTEX
add esp, 20
.L_0A56:
.L_0A53:
.L_0A52:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__OPEN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A58:
lea eax, [_ENV+584]
push eax
call _HFILEEXISTS
add esp, 4
test eax, eax
je .L_0A5B
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
.L_0A5B:
.L_0A5A:
call _fb_FileFree
mov dword ptr [_ENV+580], eax
push 0
push dword ptr [_ENV+580]
push 0
push 3
push 0
lea eax, [_ENV+584]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_0A5D
mov dword ptr [ebp-4], 0
jmp .L_0A59
.L_0A5D:
.L_0A5C:
call _HWRITEHEADER
mov dword ptr [ebp-4], -1
.L_0A59:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__CLOSE:
.L_0A5E:
push 0
call _EDBGINCLUDE
add esp, 4
push offset _HDECLVARIABLE
push 1
call _SYMBFOREACHGLOBAL
add esp, 8
mov eax, dword ptr [_ENV+284]
and eax, 4
and eax, dword ptr [_ENV+224]
je .L_0A61
push offset _HEMITEXPORT
push 3
call _SYMBFOREACHGLOBAL
add esp, 8
.L_0A61:
.L_0A60:
push -1
push dword ptr [_SYMB+99040]
call _HWRITECTOR
add esp, 8
push 0
push dword ptr [_SYMB+99080]
call _HWRITECTOR
add esp, 8
call _EDBGEMITFOOTER
push dword ptr [_ENV+580]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0A63
.L_0A63:
.L_0A62:
mov dword ptr [_ENV+580], 0
.L_0A5F:
ret
.balign 16
__PROCGETFRAMEREGNAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0A64:
mov eax, offset _Lt_0D76
mov dword ptr [ebp-4], eax
.L_0A65:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0D76:
.ascii "ebp\0"

.section .text
.balign 16
__ISREGPRESERVED:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A66:
cmp dword ptr [ebp+8], 1
jne .L_0A69
mov dword ptr [ebp-4], 0
jmp .L_0A67
.L_0A69:
.L_0A68:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .L_0A6B
.L_0A6D:
mov dword ptr [ebp-4], 0
jmp .L_0A67
jmp .L_0A6A
.L_0A6E:
mov dword ptr [ebp-4], -1
jmp .L_0A67
jmp .L_0A6A
.L_0A6B:
cmp dword ptr [ebp-8], 5
ja .L_0A6E
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0A6F+eax*4]
_.L_0A6F:
.int .L_0A6D
.int .L_0A6E
.int .L_0A6E
.int .L_0A6D
.int .L_0A6E
.int .L_0A6D
.L_0A6A:
.L_0A67:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__GETARGREG:
push ebp
mov ebp, esp
.L_0A70:
cmp dword ptr [ebp+16], 1
jne .L_0A73
.L_0A74:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 3
jmp .L_0A72
.L_0A73:
cmp dword ptr [ebp+16], 2
jne .L_0A75
.L_0A76:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
jmp .L_0A72
.L_0A75:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A77:
.L_0A72:
.L_0A71:
mov esp, ebp
pop ebp
ret
.balign 16
__GETRESULTREG:
push ebp
mov ebp, esp
sub esp, 12
.L_0A78:
cmp dword ptr [ebp+12], 0
jne .L_0A7B
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 5
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0A7C
mov dword ptr [ebp-4], 24
jmp .L_0D77
.L_0A7C:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0D77:
mov eax, dword ptr [ebp-4]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0A7E
mov dword ptr [ebp-8], 24
jmp .L_0D78
.L_0A7E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D78:
mov eax, dword ptr [ebp-8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
je .L_0A81
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
jmp .L_0A80
.L_0A81:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A80:
jmp .L_0A7A
.L_0A7B:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_0A7A:
.L_0A79:
mov esp, ebp
pop ebp
ret
.balign 16
__GETFREEPRESERVEDREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0A82:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], 1
jne .L_0A85
jmp .L_0A83
.L_0A85:
.L_0A84:
push 4
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A87
mov dword ptr [ebp-4], 4
jmp .L_0A86
.L_0A87:
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A88
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0A89
mov dword ptr [ebp-8], 24
jmp .L_0D7C
.L_0A89:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D7C:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .L_0A8C
mov dword ptr [ebp-4], 2
.L_0A8C:
.L_0A8B:
jmp .L_0A86
.L_0A88:
push 1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
je .L_0A8D
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0A8E
mov dword ptr [ebp-8], 24
jmp .L_0D7D
.L_0A8E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D7D:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 1
je .L_0A91
mov dword ptr [ebp-4], 1
.L_0A91:
.L_0A90:
.L_0A8D:
.L_0A86:
.L_0A83:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_0A92:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+4], 8
push dword ptr [ebp+8]
call _EDBGPROCBEGIN
add esp, 4
.L_0A93:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
.L_0A94:
push dword ptr [ebp+8]
call _EDBGPROCEND
add esp, 4
.L_0A95:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0A96:
.L_0A98:
cmp dword ptr [ebp+8], 0
je .L_0A99
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 15
jne .L_0A9C
.L_0A9D:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS
add esp, 4
jmp .L_0A9A
.L_0A9C:
cmp dword ptr [ebp-4], 1
jne .L_0A9E
.L_0A9F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
je .L_0AA1
push dword ptr [ebp+8]
call _HDECLVARIABLE
add esp, 4
.L_0AA1:
.L_0AA0:
.L_0A9E:
.L_0A9A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .L_0A98
.L_0A99:
.L_0A97:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCLOCAL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0AA2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .L_0AA5
jmp .L_0AA3
.L_0AA5:
.L_0AA4:
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
mov ebx, eax
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
add ebx, 3
and ebx, -4
add dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8]
neg ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
neg ebx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+112]
mov eax, dword ptr [edx+12]
cmp ebx, eax
jle .L_0AA7
mov eax, dword ptr [ebp-4]
neg eax
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+112]
mov dword ptr [edx+12], eax
.L_0AA7:
.L_0AA6:
mov edx, dword ptr [ebp-4]
mov eax, edx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], edx
mov dword ptr [ebx+52], eax
.L_0AA3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCARG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0AA8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_0AAB
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
jmp .L_0AAA
.L_0AAB:
mov eax, dword ptr [_ENV+296]
mov dword ptr [ebp-4], eax
.L_0AAA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
je .L_0AAF
.L_0AB0:
cmp dword ptr [ebp-8], 6
jne .L_0AAE
.L_0AAF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-12], eax
.L_0AB1:
cmp dword ptr [ebp-12], 0
je .L_0AB2
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+76], 0
je .L_0AB4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+60], ebx
jne .L_0AB6
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __PROCALLOCLOCAL
add esp, 8
jmp .L_0AA9
.L_0AB6:
.L_0AB5:
.L_0AB4:
.L_0AB3:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
jmp .L_0AB1
.L_0AB2:
.L_0AAE:
.L_0AAC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov ecx, dword ptr [ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+48], ecx
mov dword ptr [ebx+52], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+112]
mov ecx, dword ptr [ebp-4]
add ecx, 3
and ecx, -4
add dword ptr [eax+4], ecx
.L_0AA9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCHEADER:
push ebp
mov ebp, esp
.L_0AB7:
call _EMITRESET
push dword ptr [ebp+8]
call _EDBGPROCEMITBEGIN
add esp, 4
.L_0AB8:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCFOOTER:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.L_0AB9:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [_ENV+108]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_0ABB
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0D7E
.L_0ABB:
mov dword ptr [ebp-28], 0
.L_0D7E:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
push 0
push 3
call __SETSECTION
add esp, 8
push dword ptr [ebp+8]
call _EDBGEMITPROCHEADER
add esp, 4
push 16
call _HALIGN
add esp, 4
cmp dword ptr [ebp-8], 0
je .L_0ABE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
call _HPUBLIC
add esp, 8
.L_0ABE:
.L_0ABD:
push dword ptr [ebp-12]
call _HLABEL
add esp, 4
cmp dword ptr [ebp-20], 0
je .L_0AC0
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 3
push offset _Lt_016B
push -1
push 12
push offset _Lt_0AC2
push -1
push 0
push dword ptr [ebp-12]
push 7
push offset _Lt_0AC1
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call _OUTEX
add esp, 8
lea eax, [ebp-80]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-24], 0
je .L_0AC8
push 0
push offset _Lt_0ACA
call _OUTEX
add esp, 8
.L_0AC8:
.L_0AC7:
.L_0AC0:
.L_0ABF:
push dword ptr [ebp+8]
call _HCREATEFRAME
add esp, 4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH
add esp, 12
call _EMITFLUSH
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HDESTROYFRAME
add esp, 8
cmp dword ptr [ebp-20], 0
je .L_0ACB
mov eax, dword ptr [ebp-24]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
jmp .L_0D7F
.L_0ACB:
mov dword ptr [ebp-32], 0
.L_0D7F:
cmp dword ptr [ebp-32], 0
je .L_0ACE
push 0
push offset _Lt_0AD0
call _OUTEX
add esp, 8
.L_0ACE:
.L_0ACD:
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+20]
push dword ptr [ebp+8]
call _EDBGEMITLINEFLUSH
add esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _EDBGEMITPROCFOOTER
add esp, 12
.L_0ABA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEBEGIN:
push ebp
mov ebp, esp
.L_0AD1:
push dword ptr [ebp+8]
call _EDBGSCOPEBEGIN
add esp, 4
.L_0AD2:
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEEND:
push ebp
mov ebp, esp
.L_0AD3:
push dword ptr [ebp+8]
call _EDBGSCOPEEND
add esp, 4
.L_0AD4:
mov esp, ebp
pop ebp
ret
.balign 16
__SETSECTION:
push ebp
mov ebp, esp
sub esp, 4
.L_0AD5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __GETSECTIONSTRING
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0AD8
jmp .L_0AD6
.L_0AD8:
.L_0AD7:
push 0
push 0
push dword ptr [ebp-4]
push -1
push offset _Lt_0D85
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0D85
call _fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [_Lt_0D85]
call _OUTEX
add esp, 8
.L_0AD6:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D85,12

.section .text
.balign 16
__GETTYPESTRING:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0AD9:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0ADB
mov dword ptr [ebp-8], 24
jmp .L_0D86
.L_0ADB:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0D86:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_0ADE
.L_0AE0:
mov eax, offset _Lt_0AE1
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE2:
mov eax, offset _Lt_0AE3
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE4:
mov eax, offset _Lt_0AE5
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE6:
mov eax, offset _Lt_0AE7
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE8:
mov eax, offset _Lt_0AE9
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEA:
mov eax, offset _Lt_0AEB
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEC:
mov eax, offset _Lt_0AED
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEE:
mov eax, offset _Lt_0AE7
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEF:
mov eax, offset _Lt_0AED
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0ADE:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 23
ja .L_0AEF
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0AF0+eax*4-4]
_.L_0AF0:
.int .L_0AE0
.int .L_0AE0
.int .L_0AE0
.int .L_0AEA
.int .L_0AE2
.int .L_0AE2
.int .L_0AEA
.int .L_0AE4
.int .L_0AE4
.int .L_0AE4
.int .L_0AE6
.int .L_0AE6
.int .L_0AE8
.int .L_0AE8
.int .L_0AE6
.int .L_0AE8
.int .L_0AEC
.int .L_0AEA
.int .L_0AEF
.int .L_0AEC
.int .L_0AEF
.int .L_0AEF
.int .L_0AEF
.int .L_0AEE
.L_0ADD:
.L_0ADA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__GETSECTIONSTRING:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0AF1:
mov eax, dword ptr [_EMIT+140]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_EMIT+144]
cmp ebx, dword ptr [ebp+12]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0AF4
mov dword ptr [ebp-4], 0
jmp .L_0AF2
.L_0AF4:
.L_0AF3:
push 0
push 3
push offset _Lt_016B
push -1
push offset _Lt_0D89
call _fb_StrAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .L_0AF6
push 0
push 10
push offset _Lt_0AF7
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0AF6:
.L_0AF5:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0AF9
.L_0AFB:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0AFD
.L_0AFF:
push 0
push 6
push offset _Lt_0B00
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AFC
.L_0B01:
push 0
push 6
push offset _Lt_0B02
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AFC
.L_0B03:
push 0
push 7
push offset _Lt_0B04
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AFC
.L_0AFD:
cmp dword ptr [ebp-12], 9
ja .L_0B03
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0B05+eax*4]
_.L_0B05:
.int .L_0AFF
.int .L_0AFF
.int .L_0B03
.int .L_0AFF
.int .L_0AFF
.int .L_0B03
.int .L_0B03
.int .L_0B03
.int .L_0B03
.int .L_0B01
.L_0AFC:
jmp .L_0AF8
.L_0B06:
push 0
push 5
push offset _Lt_0B07
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AF8
.L_0B08:
push 0
push 4
push offset _Lt_0B09
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AF8
.L_0B0A:
push 0
push 5
push offset _Lt_0B0B
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AF8
.L_0B0C:
push 0
push 8
push offset _Lt_0B0D
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0AF8
.L_0B0E:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B10
push 0
push 23
push offset _Lt_0B12
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B0F
.L_0B10:
push 0
push 8
push offset _Lt_001B
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0B0F:
jmp .L_0AF8
.L_0B13:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B15
push 0
push 12
push offset _Lt_0B16
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B14
.L_0B15:
push 0
push 6
push offset _Lt_0B17
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jle .L_0B19
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_0B1A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0B19:
.L_0B18:
cmp dword ptr [_ENV+108], 2
jne .L_0B1D
push 0
push 18
push offset _Lt_0B23
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0B1D:
.L_0B1C:
.L_0B14:
jmp .L_0AF8
.L_0B24:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .L_0B26
push 0
push 11
push offset _Lt_0B27
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
jmp .L_0B25
.L_0B26:
push 0
push 6
push offset _Lt_0B28
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jle .L_0B2A
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 5
push -1
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call _fb_IntToStr
add esp, 4
push eax
push 6
push offset _Lt_0B1A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0B2A:
.L_0B29:
cmp dword ptr [_ENV+108], 2
jne .L_0B2D
push 0
push 18
push offset _Lt_0B23
push -1
push offset _Lt_0D89
call _fb_StrConcatAssign
add esp, 20
.L_0B2D:
.L_0B2C:
.L_0B25:
jmp .L_0AF8
.L_0AF9:
cmp dword ptr [ebp-8], 7
ja .L_0AF8
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0B2E+eax*4]
_.L_0B2E:
.int .L_0AFB
.int .L_0B06
.int .L_0B08
.int .L_0B0A
.int .L_0B0C
.int .L_0B13
.int .L_0B24
.int .L_0B0E
.L_0AF8:
mov eax, dword ptr [_Lt_0D89]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_EMIT+140], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_EMIT+144], eax
.L_0AF2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0D89,12

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_001B:	.ascii	"fbctinf\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_0073,36

.section .data
.balign 4
_Lt_0074:	.ascii	", \0"
.balign 4

.globl _DTYPETB
_DTYPETB:
.int 0
.ascii "void ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 1
.ascii "word ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 2
.ascii "qword ptr\0"
.skip 2,0
.int 3
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "qword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 0
.ascii "dword ptr\0"
.skip 2,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "\0"
.skip 11,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 0
.ascii "byte ptr\0"
.skip 3,0
.int 2
.ascii "dword ptr\0"
.skip 2,0
.int 3
.ascii "xmmword ptr\0"
.balign 4
_RNAMETB:
.ascii "dl\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cl\0"
.skip 5,0
.ascii "bl\0"
.skip 5,0
.ascii "al\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "dx\0"
.skip 5,0
.ascii "di\0"
.skip 5,0
.ascii "si\0"
.skip 5,0
.ascii "cx\0"
.skip 5,0
.ascii "bx\0"
.skip 5,0
.ascii "ax\0"
.skip 5,0
.ascii "bp\0"
.skip 5,0
.ascii "sp\0"
.skip 5,0
.ascii "edx\0"
.skip 4,0
.ascii "edi\0"
.skip 4,0
.ascii "esi\0"
.skip 4,0
.ascii "ecx\0"
.skip 4,0
.ascii "ebx\0"
.skip 4,0
.ascii "eax\0"
.skip 4,0
.ascii "ebp\0"
.skip 4,0
.ascii "esp\0"
.skip 4,0
.ascii "st(0)\0"
.skip 2,0
.ascii "st(1)\0"
.skip 2,0
.ascii "st(2)\0"
.skip 2,0
.ascii "st(3)\0"
.skip 2,0
.ascii "st(4)\0"
.skip 2,0
.ascii "st(5)\0"
.skip 2,0
.ascii "st(6)\0"
.skip 2,0
.ascii "st(7)\0"
.skip 2,0
.balign 4
_Lt_007A:	.ascii	"cl\0"
.balign 4
_Lt_007F:	.ascii	"dx\0"
.balign 4
_Lt_0080:	.ascii	"cx\0"
.balign 4
_Lt_0082:	.ascii	"ax\0"
.balign 4
_Lt_0083:	.ascii	"edx\0"
.balign 4
_Lt_0084:	.ascii	"edi\0"
.balign 4
_Lt_0085:	.ascii	"esi\0"
.balign 4
_Lt_0086:	.ascii	"ecx\0"
.balign 4
_Lt_0087:	.ascii	"ebx\0"
.balign 4
_Lt_0088:	.ascii	"eax\0"
.balign 4
_Lt_0089:	.ascii	"ebp\0"
.balign 4
_Lt_0116:	.ascii	"+\0"
.balign 4
_Lt_0122:	.ascii	"*\0"
.balign 4
_Lt_0135:	.ascii	" [\0"
.balign 4
_Lt_0136:	.ascii	"[\0"
.balign 4
_Lt_0145:	.ascii	"]\0"
.balign 4
_Lt_0147:	.ascii	"offset \0"
.balign 4
_Lt_014B:	.ascii	" + \0"
.balign 4
_Lt_0169:	.ascii	"\t\0"
.balign 4
_Lt_016B:	.ascii	"\r\n\0"
.balign 4
_Lt_016F:	.ascii	" \0"
.balign 4
_Lt_0174:	.ascii	"push \0"
.balign 4
_Lt_0179:	.ascii	"pop \0"
.balign 4
_Lt_017E:	.ascii	"mov \0"
.balign 4
_Lt_0184:	.ascii	"xchg \0"
.balign 4
_Lt_018A:	.ascii	"\t#\0"
.balign 4
_Lt_018F:	.ascii	"\r\n.globl \0"
.balign 4
_Lt_0193:	.ascii	":\0"
.balign 4
_Lt_0194:	.ascii	":\r\n\0"
.balign 4
_Lt_0198:	.ascii	".balign \0"
.balign 4
_Lt_01A3:	.ascii	"xmm\0"
.balign 4
_Lt_01B9:	.ascii	".lcomm\0"
.balign 4
_Lt_01BA:	.ascii	".comm\0"
.balign 4
_Lt_01BC:	.ascii	",\0"
.balign 4
_Lt_01BF:	.ascii	".intel_syntax noprefix\0"
.balign 4
_Lt_01C6:	.ascii	"\"\0"
.balign 4
_Lt_01C8:	.ascii	"\\0\0"
.balign 4
_Lt_01C9:	.ascii	"\\0\"\0"
.balign 4
_Lt_01D7:	.ascii	":\t\0"
.balign 4
_Lt_01EA:	.ascii	".ascii \"\0"
.balign 4
_Lt_01EC:	.ascii	".ascii \" -export:\0"
.balign 4
_Lt_01ED:	.ascii	"\"\r\n\0"
.balign 4
_Lt_0210:	.ascii	"lea edi, [ebp-\0"
.balign 4
_Lt_0214:	.ascii	"mov ecx,\0"
.balign 4
_Lt_0217:	.ascii	"pxor mm0, mm0\0"
.balign 4
_Lt_0218:	.ascii	"movq [edi], mm0\0"
.balign 4
_Lt_0219:	.ascii	"add edi, 8\0"
.balign 4
_Lt_021A:	.ascii	"dec ecx\0"
.balign 4
_Lt_021B:	.ascii	"jnz \0"
.balign 4
_Lt_021E:	.ascii	"emms\0"
.balign 4
_Lt_0226:	.ascii	"movq [ebp-\0"
.balign 4
_Lt_0227:	.ascii	"], mm0\0"
.balign 4
_Lt_022D:	.ascii	"mov dword ptr [ebp-\0"
.balign 4
_Lt_022E:	.ascii	"], 0\0"
.balign 4
_Lt_023B:	.ascii	"xor eax, eax\0"
.balign 4
_Lt_023C:	.ascii	"rep stosd\0"
.balign 4
_Lt_0252:	.ascii	"dword ptr [ebp\0"
.balign 4
_Lt_0271:	.ascii	".cfi_def_cfa_offset 8\0"
.balign 4
_Lt_0272:	.ascii	".cfi_offset 5, -8\0"
.balign 4
_Lt_0273:	.ascii	"mov ebp, esp\0"
.balign 4
_Lt_0276:	.ascii	".cfi_def_cfa_register 5\0"
.balign 4
_Lt_0279:	.ascii	"and esp, 0xFFFFFFF0\0"
.balign 4
_Lt_027C:	.ascii	"sub esp, \0"
.balign 4
_Lt_0284:	.ascii	".section .data\r\n\0"
.balign 4
_Lt_0286:	.ascii	".balign 4\r\n\0"
.balign 4
_Lt_028B:	.ascii	".long 0\0"
.balign 4
_Lt_028D:	.ascii	".section .text\r\n\0"
.balign 4
_Lt_028E:	.ascii	"mov edx, offset .\0"
.balign 4
_Lt_0291:	.ascii	"call _mcount\0"
.balign 4
_Lt_02A6:	.ascii	"mov esp, ebp\0"
.balign 4
_Lt_02A9:	.ascii	".cfi_restore 5\0"
.balign 4
_Lt_02AA:	.ascii	".cfi_def_cfa 4, 4\0"
.balign 4
_Lt_02AD:	.ascii	"ret \0"
.balign 4
_Lt_02B0:	.ascii	"ret\0"
.balign 4
_Lt_02B3:	.ascii	".size \0"
.balign 4
_Lt_02B4:	.ascii	", .-\0"
.balign 4
_Lt_02CE:	.ascii	"call \0"
.balign 4
_Lt_02D2:	.ascii	"add esp, \0"
.balign 4
_Lt_02DD:	.ascii	"jle \0"
.balign 4
_Lt_02DF:	.ascii	"jge \0"
.balign 4
_Lt_02E1:	.ascii	"jl \0"
.balign 4
_Lt_02E3:	.ascii	"jg \0"
.balign 4
_Lt_02E5:	.ascii	"je \0"
.balign 4
_Lt_02E7:	.ascii	"jne \0"
.balign 4
_Lt_02EC:	.ascii	"jmp \0"
.balign 4
_Lt_02FC:	.ascii	"cmp \0"
.balign 4
_Lt_02FD:	.ascii	", 0\0"
.balign 4
_Lt_02FE:	.ascii	"jns \0"
.balign 4
_Lt_02FF:	.ascii	"0x403f\0"
.balign 4
_Lt_0300:	.ascii	"0x80000000\0"
.balign 4
_Lt_0301:	.ascii	"fldt [esp]\0"
.balign 4
_Lt_0302:	.ascii	"add esp, 12\0"
.balign 4
_Lt_0303:	.ascii	"faddp\0"
.balign 4
_Lt_0310:	.ascii	"-1\0"
.balign 4
_Lt_0317:	.ascii	"movsx \0"
.balign 4
_Lt_0318:	.ascii	"movzx \0"
.balign 4
_Lt_031D:	.ascii	"sar \0"
.balign 4
_Lt_031E:	.ascii	", 31\0"
.balign 4
_Lt_0325:	.ascii	"fistp \0"
.balign 4
_Lt_034A:	.ascii	"sub esp, 4\0"
.balign 4
_Lt_034B:	.ascii	"fistp dword ptr [esp]\0"
.balign 4
_Lt_034E:	.ascii	"byte ptr [esp]\0"
.balign 4
_Lt_034F:	.ascii	"add esp, 4\0"
.balign 4
_Lt_0352:	.ascii	"dword ptr [esp]\0"
.balign 4
_Lt_035B:	.ascii	"sub esp, 8\0"
.balign 4
_Lt_035C:	.ascii	"fistp qword ptr [esp]\0"
.balign 4
_Lt_035D:	.ascii	"add esp, 2\0"
.balign 4
_Lt_0366:	.ascii	"fild \0"
.balign 4
_Lt_0367:	.ascii	" [esp]\0"
.balign 4
_Lt_036A:	.ascii	"add esp, 8\0"
.balign 4
_Lt_036B:	.ascii	"fild qword ptr [esp]\0"
.balign 4
_Lt_0370:	.ascii	"fstp \0"
.balign 4
_Lt_037D:	.ascii	"fild dword ptr [esp]\0"
.balign 4
_Lt_0390:	.ascii	"add esp, 6\0"
.balign 4
_Lt_03A3:	.ascii	"fld \0"
.balign 4
_Lt_03C4:	.ascii	"mov dword ptr [esp], 0x5F000000\0"
.balign 4
_Lt_03C7:	.ascii	"fld dword ptr [esp]\0"
.balign 4
_Lt_03C8:	.ascii	"fcomip\0"
.balign 4
_Lt_03C9:	.ascii	"jbe\0"
.balign 4
_Lt_03CA:	.ascii	"fcom dword ptr [esp]\0"
.balign 4
_Lt_03CD:	.ascii	"fnstsw ax\0"
.balign 4
_Lt_03CE:	.ascii	"test ah, 1\0"
.balign 4
_Lt_03CF:	.ascii	"jz\0"
.balign 4
_Lt_03D0:	.ascii	"jmp\0"
.balign 4
_Lt_03D1:	.ascii	"fsub dword ptr [esp]\0"
.balign 4
_Lt_03D2:	.ascii	"xor \0"
.balign 4
_Lt_03D3:	.ascii	", 0x80000000\0"
.balign 4
_Lt_044B:	.ascii	"add \0"
.balign 4
_Lt_044C:	.ascii	"adc \0"
.balign 4
_Lt_0459:	.ascii	"inc \0"
.balign 4
_Lt_045B:	.ascii	"dec \0"
.balign 4
_Lt_0464:	.ascii	"fadd \0"
.balign 4
_Lt_0465:	.ascii	"fiadd \0"
.balign 4
_Lt_0468:	.ascii	"sub \0"
.balign 4
_Lt_0469:	.ascii	"sbb \0"
.balign 4
_Lt_047B:	.ascii	"fsubrp\0"
.balign 4
_Lt_0480:	.ascii	"fsub \0"
.balign 4
_Lt_0481:	.ascii	"fisub \0"
.balign 4
_Lt_0490:	.ascii	"mov eax, [esp+\0"
.balign 4
_Lt_0494:	.ascii	"mul dword ptr [esp+\0"
.balign 4
_Lt_0498:	.ascii	"xchg eax, [esp+\0"
.balign 4
_Lt_049C:	.ascii	"imul eax, [esp+\0"
.balign 4
_Lt_04A0:	.ascii	"add eax, edx\0"
.balign 4
_Lt_04A1:	.ascii	"mov edx, [esp+\0"
.balign 4
_Lt_04A5:	.ascii	"imul edx, [esp+\0"
.balign 4
_Lt_04A9:	.ascii	"add edx, eax\0"
.balign 4
_Lt_04AA:	.ascii	"mov [esp+\0"
.balign 4
_Lt_04AB:	.ascii	"], edx\0"
.balign 4
_Lt_04C1:	.ascii	"imul \0"
.balign 4
_Lt_04C8:	.ascii	"fmulp\0"
.balign 4
_Lt_04CD:	.ascii	"fmul \0"
.balign 4
_Lt_04CE:	.ascii	"fimul \0"
.balign 4
_Lt_04D3:	.ascii	"fdivrp\0"
.balign 4
_Lt_04D8:	.ascii	"fdiv \0"
.balign 4
_Lt_04D9:	.ascii	"fidiv \0"
.balign 4
_Lt_04ED:	.ascii	"xchg eax, [esp]\0"
.balign 4
_Lt_04FF:	.ascii	"cdq\0"
.balign 4
_Lt_0500:	.ascii	"cwd\0"
.balign 4
_Lt_0501:	.ascii	"idiv \0"
.balign 4
_Lt_0502:	.ascii	"div \0"
.balign 4
_Lt_0510:	.ascii	"xchg ecx, [esp]\0"
.balign 4
_Lt_0517:	.ascii	"xchg ecx, eax\0"
.balign 4
_Lt_055F:	.ascii	"shl \0"
.balign 4
_Lt_0560:	.ascii	"shld \0"
.balign 4
_Lt_0565:	.ascii	"shr \0"
.balign 4
_Lt_0566:	.ascii	"shrd \0"
.balign 4
_Lt_0602:	.ascii	"xchg edx, [esp+\0"
.balign 4
_Lt_0613:	.ascii	"shld edx, eax, cl\0"
.balign 4
_Lt_0614:	.ascii	" eax, cl\0"
.balign 4
_Lt_0617:	.ascii	"shrd eax, edx, cl\0"
.balign 4
_Lt_0618:	.ascii	" edx, cl\0"
.balign 4
_Lt_061B:	.ascii	"test cl, 32\0"
.balign 4
_Lt_061E:	.ascii	"mov edx, eax\0"
.balign 4
_Lt_061F:	.ascii	"mov eax, edx\0"
.balign 4
_Lt_0624:	.ascii	"sar edx, 31\0"
.balign 4
_Lt_0625:	.ascii	"xor edx, edx\0"
.balign 4
_Lt_062C:	.ascii	"xchg edx, [esp+4]\0"
.balign 4
_Lt_062D:	.ascii	"mov [esp+4], edx\0"
.balign 4
_Lt_0634:	.ascii	"xchg eax, [esp+0]\0"
.balign 4
_Lt_0635:	.ascii	"mov [esp+0], eax\0"
.balign 4
_Lt_0640:	.ascii	"sal\0"
.balign 4
_Lt_0641:	.ascii	"sar\0"
.balign 4
_Lt_0644:	.ascii	"shl\0"
.balign 4
_Lt_0645:	.ascii	"shr\0"
.balign 4
_Lt_066B:	.ascii	"and \0"
.balign 4
_Lt_0670:	.ascii	"or \0"
.balign 4
_Lt_0679:	.ascii	"not \0"
.balign 4
_Lt_0688:	.ascii	"fxch\0"
.balign 4
_Lt_0689:	.ascii	"fpatan\0"
.balign 4
_Lt_068E:	.ascii	"fabs\0"
.balign 4
_Lt_068F:	.ascii	"fyl2x\0"
.balign 4
_Lt_0690:	.ascii	"fld st(0)\0"
.balign 4
_Lt_0691:	.ascii	"frndint\0"
.balign 4
_Lt_0692:	.ascii	"fsub st(1), st(0)\0"
.balign 4
_Lt_0693:	.ascii	"f2xm1\0"
.balign 4
_Lt_0694:	.ascii	"fld1\0"
.balign 4
_Lt_0695:	.ascii	"fscale\0"
.balign 4
_Lt_0696:	.ascii	"fstp st(1)\0"
.balign 4
_Lt_069D:	.ascii	"j\0"
.balign 4
_Lt_06B1:	.ascii	"test \0"
.balign 4
_Lt_06BB:	.ascii	"xchg edx, \0"
.balign 4
_Lt_06BC:	.ascii	"set\0"
.balign 4
_Lt_06BD:	.ascii	" dl\0"
.balign 4
_Lt_06C7:	.ascii	", 1\0"
.balign 4
_Lt_06CA:	.ascii	", -1\0"
.balign 4
_Lt_06D4:	.ascii	"fcomip st, st(1)\0"
.balign 4
_Lt_06D5:	.ascii	"fstp st(0)\0"
.balign 4
_Lt_06D8:	.ascii	"fcompp\0"
.balign 4
_Lt_06D9:	.ascii	"fcomp \0"
.balign 4
_Lt_06E0:	.ascii	"test ah, \0"
.balign 4
_Lt_06E2:	.ascii	"sahf\0"
.balign 4
_Lt_06EE:	.ascii	"\tdl\0"
.balign 4
_Lt_06FD:	.ascii	"g\0"
.balign 4
_Lt_06FE:	.ascii	"l\0"
.balign 4
_Lt_06FF:	.ascii	"a\0"
.balign 4
_Lt_0700:	.ascii	"b\0"
.balign 4
_Lt_070B:	.ascii	"z\0"
.balign 4
_Lt_070C:	.ascii	"0b01000001\0"
.balign 4
_Lt_071D:	.ascii	"nz\0"
.balign 4
_Lt_071E:	.ascii	"0b00000001\0"
.balign 4
_Lt_0721:	.ascii	"ne\0"
.balign 4
_Lt_0722:	.ascii	"e\0"
.balign 4
_Lt_0729:	.ascii	"0b01000000\0"
.balign 4
_Lt_0738:	.ascii	"be\0"
.balign 4
_Lt_073F:	.ascii	"le\0"
.balign 4
_Lt_0744:	.ascii	"ae\0"
.balign 4
_Lt_0751:	.ascii	"ge\0"
.balign 4
_Lt_0758:	.ascii	"neg \0"
.balign 4
_Lt_075D:	.ascii	"fchs\0"
.balign 4
_Lt_077B:	.ascii	"jl\0"
.balign 4
_Lt_077C:	.ascii	"jg\0"
.balign 4
_Lt_0780:	.ascii	"jne\0"
.balign 4
_Lt_0788:	.ascii	"je\0"
.balign 4
_Lt_078D:	.ascii	"fldz\0"
.balign 4
_Lt_0790:	.ascii	"ftst\0"
.balign 4
_Lt_0793:	.ascii	"ja\0"
.balign 4
_Lt_0796:	.ascii	"fsin\0"
.balign 4
_Lt_0799:	.ascii	"fmul st(0), st(0)\0"
.balign 4
_Lt_079A:	.ascii	"fsqrt\0"
.balign 4
_Lt_079D:	.ascii	"fcos\0"
.balign 4
_Lt_07A2:	.ascii	"fptan\0"
.balign 4
_Lt_07A9:	.ascii	"fldln2\0"
.balign 4
_Lt_07AC:	.ascii	"fldl2e\0"
.balign 4
_Lt_07AD:	.ascii	"fmulp st(1), st\0"
.balign 4
_Lt_07AE:	.ascii	"fld st\0"
.balign 4
_Lt_07AF:	.ascii	"fsub st(1), st\0"
.balign 4
_Lt_07B0:	.ascii	"0x3f800000\0"
.balign 4
_Lt_07B1:	.ascii	"fadd dword ptr [esp]\0"
.balign 4
_Lt_07B4:	.ascii	"fnstcw [esp]\0"
.balign 4
_Lt_07B5:	.ascii	"[esp]\0"
.balign 4
_Lt_07B6:	.ascii	"11\0"
.balign 4
_Lt_07B9:	.ascii	", 0b1111001111111111\0"
.balign 4
_Lt_07BD:	.ascii	", 0b0000\0"
.balign 4
_Lt_07BE:	.ascii	"0000000000\0"
.balign 4
_Lt_07C4:	.ascii	"fldcw [esp]\0"
.balign 4
_Lt_07CE:	.ascii	"01\0"
.balign 4
_Lt_07D3:	.ascii	"fsubp\0"
.balign 4
_Lt_07DA:	.ascii	"fist dword ptr [esp]\0"
.balign 4
_Lt_07DB:	.ascii	"fild  qword ptr [esp]\0"
.balign 4
_Lt_07DC:	.ascii	"fsubr st(0), st(1)\0"
.balign 4
_Lt_07DD:	.ascii	"fxch st(2)\0"
.balign 4
_Lt_07DE:	.ascii	"fcmovb st(0), st(1)\0"
.balign 4
_Lt_07E5:	.ascii	"fsubr st(1)\0"
.balign 4
_Lt_07E6:	.ascii	"fcomip st(2)\0"
.balign 4
_Lt_07E7:	.ascii	"fst st(1)\0"
.balign 4
_Lt_07F6:	.ascii	"fstp dword ptr [esp]\0"
.balign 4
_Lt_07F9:	.ascii	"fxch \0"
.balign 4
_Lt_082B:	.ascii	"sub esp,\0"
.balign 4
_Lt_083B:	.ascii	", 16\0"
.balign 4
_Lt_0877:	.ascii	"add esp,\0"
.balign 4
_Lt_087C:	.ascii	"lea \0"
.balign 4
_Lt_089B:	.ascii	"mov ecx, \0"
.balign 4
_Lt_089C:	.ascii	"rep movsd\0"
.balign 4
_Lt_089E:	.ascii	"mov ecx, [esi]\0"
.balign 4
_Lt_089F:	.ascii	"mov [edi], ecx\0"
.balign 4
_Lt_08A2:	.ascii	"add esi, 4\0"
.balign 4
_Lt_08A3:	.ascii	"add edi, 4\0"
.balign 4
_Lt_08A8:	.ascii	"mov cx, [esi]\0"
.balign 4
_Lt_08A9:	.ascii	"mov [edi], cx\0"
.balign 4
_Lt_08AC:	.ascii	"add esi, 2\0"
.balign 4
_Lt_08AD:	.ascii	"add edi, 2\0"
.balign 4
_Lt_08B0:	.ascii	"mov cl, [esi]\0"
.balign 4
_Lt_08B1:	.ascii	"mov [edi], cl\0"
.balign 4
_Lt_08DE:	.ascii	"mov dword ptr [edi], eax\0"
.balign 4
_Lt_08E5:	.ascii	"mov word ptr [edi], ax\0"
.balign 4
_Lt_08EA:	.ascii	"mov byte ptr [edi], al\0"
.balign 4
_Lt_090E:	.ascii	"lea edi, \0"
.balign 4
_Lt_090F:	.ascii	"push ecx\0"
.balign 4
_Lt_0910:	.ascii	"shr ecx, 2\0"
.balign 4
_Lt_0911:	.ascii	"pop ecx\0"
.balign 4
_Lt_0912:	.ascii	"and ecx, 3\0"
.balign 4
_Lt_0913:	.ascii	"rep stosb\0"
.balign 4
_Lt_094C:	.ascii	"setne \0"
.balign 4
_Lt_097F:	.ascii	"push eax\0"
.balign 4
_Lt_0982:	.ascii	"setnz al\0"
.balign 4
_Lt_0985:	.ascii	", al\0"
.balign 4
_Lt_098E:	.ascii	"pop eax\0"
.balign 4
_Lt_0A13:	.ascii	"0x\0"
.balign 4
_Lt_0A21:	.ascii	".int \0"
.balign 4
_Lt_0A29:	.ascii	"\\0\"\r\n\0"
.balign 4
_Lt_0A36:	.ascii	".skip \0"
.balign 4
_Lt_0A37:	.ascii	",0\0"
.balign 4
_Lt_0A40:	.ascii	" \"\0"
.balign 4
_Lt_0A41:	.ascii	"\\0\"\0"
.balign 4
__OPFNTB:
.int __EMITNOP
.int __EMITLOADI2I
.int __EMITLOADF2I
.int __EMITLOADL2I
.int __EMITLOADB2I
.int __EMITLOADI2F
.int __EMITLOADF2F
.int __EMITLOADL2F
.int __EMITLOADB2F
.int __EMITLOADI2L
.int __EMITLOADF2L
.int __EMITLOADL2L
.int __EMITLOADB2L
.int __EMITLOADI2B
.int __EMITLOADF2B
.int __EMITLOADL2B
.int __EMITLOADB2B
.int __EMITSTORI2I
.int __EMITSTORF2I
.int __EMITSTORL2I
.int __EMITSTORB2I
.int __EMITSTORI2F
.int __EMITSTORF2F
.int __EMITSTORL2F
.int __EMITSTORB2F
.int __EMITSTORI2L
.int __EMITSTORF2L
.int __EMITSTORL2L
.int __EMITSTORB2L
.int __EMITSTORI2B
.int __EMITSTORF2B
.int __EMITSTORL2B
.int __EMITSTORB2B
.int __EMITMOVI
.int __EMITMOVF
.int __EMITMOVL
.int __EMITADDI
.int __EMITADDF
.int __EMITADDL
.int __EMITSUBI
.int __EMITSUBF
.int __EMITSUBL
.int __EMITMULI
.int __EMITMULF
.int __EMITMULL
.int __EMITDIVI
.int __EMITDIVF
.long 0
.int __EMITMODI
.long 0
.long 0
.int __EMITSHLI
.int __EMITSHLL
.int __EMITSHRI
.int __EMITSHRL
.int __EMITANDI
.int __EMITANDL
.int __EMITORI
.int __EMITORL
.int __EMITXORI
.int __EMITXORL
.int __EMITEQVI
.int __EMITEQVL
.int __EMITIMPI
.int __EMITIMPL
.int __EMITATN2
.int __EMITPOW
.int __EMITADDROF
.int __EMITDEREF
.int __EMITCGTI
.int __EMITCGTF
.int __EMITCGTL
.int __EMITCLTI
.int __EMITCLTF
.int __EMITCLTL
.int __EMITCEQI
.int __EMITCEQF
.int __EMITCEQL
.int __EMITCNEI
.int __EMITCNEF
.int __EMITCNEL
.int __EMITCGEI
.int __EMITCGEF
.int __EMITCGEL
.int __EMITCLEI
.int __EMITCLEF
.int __EMITCLEL
.int __EMITNEGI
.int __EMITNEGF
.int __EMITNEGL
.int __EMITNOTI
.int __EMITNOTL
.long 0
.int __EMITABSI
.int __EMITABSF
.int __EMITABSL
.int __EMITSGNI
.int __EMITSGNF
.int __EMITSGNL
.int __EMITFIX
.int __EMITFRAC
.int __EMITCONVFD2FS
.long 0
.int __EMITSIN
.int __EMITASIN
.int __EMITCOS
.int __EMITACOS
.int __EMITTAN
.int __EMITATAN
.int __EMITSQRT
.long 0
.long 0
.int __EMITLOG
.int __EMITEXP
.int __EMITFLOOR
.int __EMITXCHGTOS
.int __EMITSTACKALIGN
.int __EMITPUSHI
.int __EMITPUSHF
.int __EMITPUSHL
.int __EMITPOPI
.int __EMITPOPF
.int __EMITPOPL
.int __EMITPUSHUDT
.int __EMITPOPST0
.int __EMITCALL
.int __EMITCALLPTR
.int __EMITBRANCH
.int __EMITJUMP
.int __EMITJUMPPTR
.int __EMITRET
.int __EMITLABEL
.int __EMITPUBLIC
.int __EMITLIT
.int __EMITJMPTB
.int __EMITMEMMOVE
.int __EMITMEMSWAP
.int __EMITMEMCLEAR
.int __EMITSTKCLEAR
.int __EMITLINEINI
.int __EMITLINEEND
.int __EMITSCOPEINI
.int __EMITSCOPEEND
.balign 4
_Lt_0A57:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0AC1:	.ascii	".type \0"
.balign 4
_Lt_0AC2:	.ascii	", @function\0"
.balign 4
_Lt_0ACA:	.ascii	".cfi_startproc\r\n\0"
.balign 4
_Lt_0AD0:	.ascii	".cfi_endproc\r\n\0"
.balign 4
_Lt_0AE1:	.ascii	".byte\0"
.balign 4
_Lt_0AE3:	.ascii	".short\0"
.balign 4
_Lt_0AE5:	.ascii	".int\0"
.balign 4
_Lt_0AE7:	.ascii	".long\0"
.balign 4
_Lt_0AE9:	.ascii	".quad\0"
.balign 4
_Lt_0AEB:	.ascii	".ascii\0"
.balign 4
_Lt_0AED:	.ascii	".INVALID\0"
.balign 4
_Lt_0AF7:	.ascii	".section \0"
.balign 4
_Lt_0B00:	.ascii	"rdata\0"
.balign 4
_Lt_0B02:	.ascii	"const\0"
.balign 4
_Lt_0B04:	.ascii	"rodata\0"
.balign 4
_Lt_0B07:	.ascii	"data\0"
.balign 4
_Lt_0B09:	.ascii	"bss\0"
.balign 4
_Lt_0B0B:	.ascii	"text\0"
.balign 4
_Lt_0B0D:	.ascii	"drectve\0"
.balign 4
_Lt_0B12:	.ascii	"section __DATA,fbctinf\0"
.balign 4
_Lt_0B16:	.ascii	"constructor\0"
.balign 4
_Lt_0B17:	.ascii	"ctors\0"
.balign 4
_Lt_0B1A:	.ascii	"00000\0"
.balign 4
_Lt_0B23:	.ascii	", \"aw\", @progbits\0"
.balign 4
_Lt_0B27:	.ascii	"destructor\0"
.balign 4
_Lt_0B28:	.ascii	"dtors\0"

.section .ctors
.int _fb_ctor__emit_x86
