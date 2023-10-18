	.intel_syntax noprefix

.section .text
.balign 16

.globl HISREGFREE
HISREGFREE:
.type HISREGFREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
cmp dword ptr [ebp+8], 0
jne .L_009B
cmp dword ptr [ebp+12], 4
je .L_009E
.L_009F:
cmp dword ptr [ebp+12], 2
je .L_009E
.L_00A0:
cmp dword ptr [ebp+12], 1
jne .L_009D
.L_009E:
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
and eax, dword ptr [EMIT+132]
test eax, eax
jne .L_00A2
mov dword ptr [ebp-4], 0
jmp .L_0099
.L_00A2:
.L_00A1:
.L_009D:
.L_009C:
.L_009B:
.L_009A:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+132], eax
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, dword ptr [EMIT+128]
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
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISREGFREE, .-HISREGFREE
.cfi_endproc
.balign 16

.globl HFINDREGNOTINVREG
HFINDREGNOTINVREG:
.type HFINDREGNOTINVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .L_00A8
.L_00A9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
jmp .L_00A6
.L_00A8:
cmp dword ptr [ebp-24], 2
je .L_00AB
.L_00AC:
cmp dword ptr [ebp-24], 3
jne .L_00AA
.L_00AB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00AE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00B0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AA:
.L_00A6:
mov dword ptr [ebp-16], -1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_00B2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-16], eax
.L_00B4:
.L_00B3:
.L_00B2:
.L_00B1:
sub esp, 12
push dword ptr [EMIT+8]
mov eax, dword ptr [EMIT+8]
call dword ptr [eax+24]
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -1
jne .L_00B6
cmp dword ptr [ebp+12], 0
jne .L_00B8
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00B9
.L_00BC:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00BE
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp-24]
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_00C0
jmp .L_00BB
.L_00C0:
.L_00BF:
.L_00BE:
.L_00BD:
.L_00BA:
dec dword ptr [ebp-24]
.L_00B9:
cmp dword ptr [ebp-24], 0
jge .L_00BC
.L_00BB:
jmp .L_00B7
.L_00B8:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00C1
.L_00C4:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-24], eax
je .L_00C6
cmp dword ptr [ebp-24], 2
je .L_00C8
cmp dword ptr [ebp-24], 1
je .L_00CA
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp-24]
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_00CC
jmp .L_00C3
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C2:
dec dword ptr [ebp-24]
.L_00C1:
cmp dword ptr [ebp-24], 0
jge .L_00C4
.L_00C3:
.L_00B7:
jmp .L_00B5
.L_00B6:
cmp dword ptr [ebp+12], 0
jne .L_00CE
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_00CF
.L_00D2:
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
je .L_00D4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
sub esp, 8
push dword ptr [ebp-24]
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_00D6
jmp .L_00D1
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D0:
dec dword ptr [ebp-24]
.L_00CF:
cmp dword ptr [ebp-24], 0
jge .L_00D2
.L_00D1:
jmp .L_00CD
.L_00CE:
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D7
.L_00DA:
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
je .L_00DC
cmp dword ptr [ebp-8], 2
je .L_00DE
cmp dword ptr [ebp-8], 1
je .L_00E0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
sub esp, 8
push dword ptr [ebp-8]
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_00E2
jmp .L_00D9
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
.L_00DC:
.L_00DB:
.L_00D8:
dec dword ptr [ebp-8]
.L_00D7:
cmp dword ptr [ebp-8], 0
jge .L_00DA
.L_00D9:
.L_00CD:
.L_00B5:
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFINDREGNOTINVREG, .-HFINDREGNOTINVREG
.cfi_endproc
.balign 16

.globl HFINDFREEREG
HFINDFREEREG:
.type HFINDFREEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E7:
mov dword ptr [ebp-4], -1
sub esp, 12
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+24]
add esp, 16
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00E9
.L_00EC:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HISREGFREE
add esp, 16
test eax, eax
je .L_00EE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00EE:
.L_00ED:
.L_00EA:
dec dword ptr [ebp-8]
.L_00E9:
cmp dword ptr [ebp-8], 0
jge .L_00EC
.L_00EB:
.L_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFINDFREEREG, .-HFINDFREEREG
.cfi_endproc
.balign 16

.globl HISREGINVREG
HISREGINVREG:
.type HISREGINVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00EF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 4
jne .L_00F3
.L_00F4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_00F6
mov dword ptr [ebp-4], -1
jmp .L_00F0
.L_00F6:
.L_00F5:
jmp .L_00F1
.L_00F3:
cmp dword ptr [ebp-8], 2
je .L_00F8
.L_00F9:
cmp dword ptr [ebp-8], 3
jne .L_00F7
.L_00F8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .L_00FB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
cmp dword ptr [ebx], 4
jne .L_00FD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+12], ebx
jne .L_00FF
mov dword ptr [ebp-4], -1
jmp .L_00F0
.L_00FF:
.L_00FE:
.L_00FD:
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F7:
.L_00F1:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+52], 0
je .L_0101
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
cmp dword ptr [eax], 4
jne .L_0103
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx+12], eax
jne .L_0105
mov dword ptr [ebp-4], -1
.L_0105:
.L_0104:
.L_0103:
.L_0102:
.L_0101:
.L_0100:
.L_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISREGINVREG, .-HISREGINVREG
.cfi_endproc
.balign 16

.globl HGETREGNAME
HGETREGNAME:
.type HGETREGNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
cmp dword ptr [ebp+12], -1
jne .L_0109
mov dword ptr [ebp-4], 0
jmp .L_0108
.L_0109:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_010A
mov dword ptr [ebp-12], 24
jmp .L_010C
.L_010A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_010C:
mov eax, dword ptr [ebp-12]
sal eax, 4
mov ebx, dword ptr [DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 3
add ebx, dword ptr [ebp+12]
lea eax, [RNAMETB+ebx*8]
mov dword ptr [ebp-4], eax
.L_0108:
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETREGNAME, .-HGETREGNAME
.cfi_endproc
.balign 16

.globl HPREPOPERAND
HPREPOPERAND:
.type HPREPOPERAND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0128:
cmp dword ptr [ebp+8], 0
jne .L_012B
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_0129
.L_012B:
.L_012A:
cmp dword ptr [ebp+16], -2147483648
jne .L_012D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
.L_012D:
.L_012C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
jmp .L_012F
.L_0131:
cmp dword ptr [ebp+28], 0
je .L_0133
sub esp, 12
push 0
push 12
mov eax, dword ptr [ebp+16]
sal eax, 4
lea ebx, [DTYPETB+eax+4]
push ebx
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0134
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
jmp .L_0132
.L_0133:
sub esp, 12
push 0
push 2
push offset Lt_0135
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0132:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 1
jne .L_0137
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [Lt_0158], eax
jmp .L_0136
.L_0137:
sub esp, 12
push dword ptr [ebp+8]
call HGETIDXNAME
add esp, 16
mov dword ptr [Lt_0158], eax
.L_0136:
cmp dword ptr [Lt_0158], 0
je .L_0139
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [Lt_0158]
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0139:
.L_0138:
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+8]
add ebx, dword ptr [ecx+36]
adc eax, dword ptr [ecx+40]
mov ecx, ebx
mov dword ptr [ebp+20], ecx
cmp dword ptr [ebp+24], 0
je .L_013C
add dword ptr [ebp+20], 4
.L_013C:
.L_013B:
cmp dword ptr [ebp+20], 0
jle .L_013E
cmp dword ptr [Lt_0158], 0
je .L_0140
sub esp, 12
push 0
push 2
push offset Lt_0115
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
.L_0140:
.L_013F:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
jmp .L_013D
.L_013E:
cmp dword ptr [ebp+20], 0
jge .L_0141
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
jmp .L_013D
.L_0141:
cmp dword ptr [Lt_0158], 0
jne .L_0143
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
.L_0143:
.L_0142:
.L_013D:
sub esp, 12
push 0
push 2
push offset Lt_0144
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
jmp .L_012E
.L_0145:
sub esp, 12
push 0
push 8
push offset Lt_0146
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .L_0159
cmp dword ptr [eax+36], 0
je .L_0149
.L_0159:
sub esp, 12
push 0
push 4
push offset Lt_014A
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0149:
.L_0148:
jmp .L_012E
.L_014C:
cmp dword ptr [ebp+24], 0
jne .L_014E
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp+16]
call HGETREGNAME
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_014D
.L_014E:
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
push dword ptr [ecx+12]
push dword ptr [ebp+16]
call HGETREGNAME
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_014D:
jmp .L_012E
.L_014F:
cmp dword ptr [ebp+24], 0
jne .L_0151
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [Lt_015A], ebx
mov dword ptr [Lt_015A+4], ecx
jmp .L_0150
.L_0151:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [Lt_015A], eax
mov dword ptr [Lt_015A+4], ebx
.L_0150:
cmp dword ptr [ebp+16], 1
jne .L_0153
cmp dword ptr [Lt_015A+4], 0
jne .L_015B
cmp dword ptr [Lt_015A], 0
je .L_0155
.L_015B:
sub esp, 12
push 0
push 2
push offset Lt_0004
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_0154
.L_0155:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0154:
jmp .L_0152
.L_0153:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [Lt_015A+4]
push dword ptr [Lt_015A]
call fb_LongintToStr
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_0152:
jmp .L_012E
.L_0156:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_012E
.L_012F:
cmp dword ptr [ebp-4], 5
ja .L_0156
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0157+eax*4]
.L_0157:
.int .L_014F
.int .L_0131
.int .L_0131
.int .L_0131
.int .L_014C
.int .L_0145
.L_012E:
.L_0129:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPREPOPERAND, .-HPREPOPERAND
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0158,4
.balign 4
	.lcomm	Lt_015A,8

.section .text
.balign 16

.globl HPREPOPERAND64
HPREPOPERAND64:
.type HPREPOPERAND64, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_015C:
sub esp, 8
push -1
push 0
push 0
push 9
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push -1
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
.L_015D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPREPOPERAND64, .-HPREPOPERAND64
.cfi_endproc
.balign 16

.globl OUTP
OUTP:
.type OUTP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0164:
cmp dword ptr [ENV+148], 0
je .L_0167
sub esp, 12
push 0
push 2
push offset Lt_0168
push -1
push offset Lt_016B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_016B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_016B
call fb_StrAssign
add esp, 32
jmp .L_0166
.L_0167:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_016B
call fb_StrAssign
add esp, 32
.L_0166:
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_016B
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
push offset Lt_016B
call fb_StrLen
add esp, 8
push eax
push dword ptr [Lt_016B]
call OUTEX
add esp, 16
.L_0165:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OUTP, .-OUTP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_016B,12

.section .text
.balign 16

.globl HBRANCH
HBRANCH:
.type HBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_016C:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0170
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016E
push -1
push offset Lt_0170
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+12]
push -1
push offset Lt_0170
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0170
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0170]
call OUTP
add esp, 16
.L_016D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBRANCH, .-HBRANCH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0170,12

.section .text
.balign 16

.globl HPUSH
HPUSH:
.type HPUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0171:
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0175
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0175
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0175
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0175]
call OUTP
add esp, 16
.L_0172:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPUSH, .-HPUSH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0175,12

.section .text
.balign 16

.globl HPOP
HPOP:
.type HPOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0176:
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_017A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_017A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_017A
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_017A]
call OUTP
add esp, 16
.L_0177:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPOP, .-HPOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_017A,12

.section .text
.balign 16

.globl HMOV
HMOV:
.type HMOV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_017B:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0180
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0180
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0180
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0180
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+12]
push -1
push offset Lt_0180
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0180
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0180]
call OUTP
add esp, 16
.L_017C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMOV, .-HMOV
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0180,12

.section .text
.balign 16

.globl HLABEL
HLABEL:
.type HLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0190:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0194
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0193
push -1
push offset Lt_0194
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0194]
call OUTEX
add esp, 16
.L_0191:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLABEL, .-HLABEL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0194,12

.section .text
.balign 16

.globl EMITVARINIBEGIN
EMITVARINIBEGIN:
.type EMITVARINIBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0A07:
sub esp, 8
push 0
push 1
call _SETSECTION
add esp, 16
sub esp, 8
push 1
push dword ptr [ebp+8]
call EDBGEMITGLOBALVAR
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HGETGLOBALVARALIGN
add esp, 4
push eax
call HALIGN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
je .L_0A0A
sub esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HPUBLIC
add esp, 16
.L_0A0A:
.L_0A09:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HLABEL
add esp, 16
.L_0A08:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINIBEGIN, .-EMITVARINIBEGIN
.cfi_endproc
.balign 16

.globl EMITVARINII
EMITVARINII:
.type EMITVARINII, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0A0C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_016E
push 0
sub esp, 4
push dword ptr [ebp+8]
call _GETTYPESTRING
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
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
sub esp, 12
push 0
push 3
push offset Lt_0A13
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_HEX_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0A11
.L_0A12:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0A11:
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp-12]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0A0D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINII, .-EMITVARINII
.cfi_endproc
.balign 16

.globl EMITVARINIF
EMITVARINIF:
.type EMITVARINIF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_0A19:
sub esp, 8
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push -1
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFLOATTOHEX
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_016E
push 0
sub esp, 4
push dword ptr [ebp+8]
call _GETTYPESTRING
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.L_0A1A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINIF, .-EMITVARINIF
.cfi_endproc
.balign 16

.globl EMITVARINIOFS
EMITVARINIOFS:
.type EMITVARINIOFS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0A1F:
sub esp, 12
push 0
push 6
push offset Lt_0A21
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0A25
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A25
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+12], 0
je .L_0A24
sub esp, 12
push 0
push 4
push offset Lt_014A
push -1
push offset Lt_0A25
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0A25
call fb_StrConcatAssign
add esp, 32
.L_0A24:
.L_0A23:
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0A25
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0A25]
call OUTEX
add esp, 16
.L_0A20:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINIOFS, .-EMITVARINIOFS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A25,12

.section .text
.balign 16

.globl EMITVARINISTR
EMITVARINISTR:
.type EMITVARINISTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0A26:
sub esp, 12
push 0
push 9
push offset Lt_01EA
push -1
push offset Lt_0A2A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0A2A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A2A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0A29
push -1
push offset Lt_0A2A
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0A2A]
call OUTEX
add esp, 16
.L_0A27:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINISTR, .-EMITVARINISTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A2A,12

.section .text
.balign 16

.globl EMITVARINIWSTR
EMITVARINIWSTR:
.type EMITVARINIWSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0A2B:
sub esp, 12
push 0
push 9
push offset Lt_01EA
push -1
push offset Lt_0A33
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0A33
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A33
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-16], 1
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-20], eax
jmp .L_0A2F
.L_0A32:
sub esp, 12
push 0
push 3
push offset Lt_01C8
push -1
push offset Lt_0A33
call fb_StrConcatAssign
add esp, 32
.L_0A30:
inc dword ptr [ebp-16]
.L_0A2F:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_0A32
.L_0A31:
sub esp, 12
push 0
push 3
push offset Lt_01ED
push -1
push offset Lt_0A33
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0A33]
call OUTEX
add esp, 16
.L_0A2C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINIWSTR, .-EMITVARINIWSTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A33,12

.section .text
.balign 16

.globl EMITVARINIPAD
EMITVARINIPAD:
.type EMITVARINIPAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_0A34:
sub esp, 8
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push 3
push offset Lt_0A37
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 7
push offset Lt_0A36
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.L_0A35:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITVARINIPAD, .-EMITVARINIPAD
.cfi_endproc
.balign 16

.globl EMITFBCTINFBEGIN
EMITFBCTINFBEGIN:
.type EMITFBCTINFBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A3C:
sub esp, 8
push 0
push 7
call _SETSECTION
add esp, 16
.L_0A3D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFBCTINFBEGIN, .-EMITFBCTINFBEGIN
.cfi_endproc
.balign 16

.globl EMITFBCTINFSTRING
EMITFBCTINFSTRING:
.type EMITFBCTINFSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0A3E:
sub esp, 12
push 0
push 0
sub esp, 8
push 4
call dword ptr [EMIT+228]
add esp, 12
push eax
push -1
push offset Lt_0A45
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 4
push offset Lt_0A41
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_0A40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push offset Lt_0A45
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0A45
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0A45]
call EMITWRITESTR
add esp, 16
.L_0A3F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFBCTINFSTRING, .-EMITFBCTINFSTRING
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0A45,12

.section .text
.balign 16

.globl EMITFBCTINFEND
EMITFBCTINFEND:
.type EMITFBCTINFEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A46:
sub esp, 8
push 0
push offset Lt_0000
call EMITWRITESTR
add esp, 16
.L_0A47:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITFBCTINFEND, .-EMITFBCTINFEND
.cfi_endproc
.balign 16

.globl EMITGASX86_CTOR
EMITGASX86_CTOR:
.type EMITGASX86_CTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0B2F:
lea eax, [EMIT+148]
push edi
push esi
mov edi, eax
mov esi, offset Lt_0B33
mov ecx, 22
rep movsd
pop esi
pop edi
mov eax, offset _OPFNTB
mov dword ptr [EMIT+236], eax
cmp dword ptr [ENV+116], 1
jl .L_0B32
sub esp, 12
push dword ptr [EMIT+236]
call _INIT_OPFNTB_SSE
add esp, 16
.L_0B32:
.L_0B31:
mov dword ptr [ebp-4], -1
.L_0B30:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size EMITGASX86_CTOR, .-EMITGASX86_CTOR
.cfi_endproc

.section .data
.balign 4
Lt_0B33:
.int _INIT
.int _END
.int _GETOPTIONVALUE
.int _OPEN
.int _CLOSE
.int _ISREGPRESERVED
.int _GETFREEPRESERVEDREG
.int _GETARGREG
.int _GETRESULTREG
.int _PROCGETFRAMEREGNAME
.int _PROCBEGIN
.int _PROCEND
.int _PROCHEADER
.int _PROCFOOTER
.int _PROCALLOCARG
.int _PROCALLOCLOCAL
.int _PROCALLOCSTATICVARS
.int _SCOPEBEGIN
.int _SCOPEEND
.int _SETSECTION
.int _GETTYPESTRING
.int _GETSECTIONSTRING

.section .text
.balign 16
fb_ctor__emit_x86:
.type fb_ctor__emit_x86, @function
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
.size fb_ctor__emit_x86, .-fb_ctor__emit_x86
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
HGETIDXNAME:
.type HGETIDXNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_010D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [Lt_0B34], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [Lt_0B35], eax
cmp dword ptr [Lt_0B34], 0
jne .L_0110
cmp dword ptr [Lt_0B35], 0
jne .L_0112
mov dword ptr [ebp-4], 0
jmp .L_010E
.L_0112:
.L_0111:
sub esp, 12
push 0
push 1
push offset Lt_0000
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
jmp .L_010F
.L_0110:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [Lt_0B34]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
cmp dword ptr [Lt_0B35], 0
je .L_0114
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0115
push 154
push offset Lt_0B36
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
.L_0114:
.L_0113:
.L_010F:
sub esp, 8
mov eax, dword ptr [Lt_0B35]
push dword ptr [eax+12]
mov eax, dword ptr [Lt_0B35]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 16
mov dword ptr [Lt_0B37], eax
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [Lt_0B37]
push 154
push offset Lt_0B36
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
cmp dword ptr [Lt_0B35], 0
je .L_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [Lt_0B38], ebx
cmp dword ptr [Lt_0B38], 1
jle .L_011B
mov dword ptr [Lt_0B39], 0
cmp dword ptr [Lt_0B38], 3
je .L_011E
.L_011F:
cmp dword ptr [Lt_0B38], 5
je .L_011E
.L_0120:
cmp dword ptr [Lt_0B38], 9
jne .L_011D
.L_011E:
dec dword ptr [Lt_0B38]
mov dword ptr [Lt_0B39], -1
.L_011D:
.L_011C:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0121
push 154
push offset Lt_0B36
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0B38]
call fb_IntToStr
add esp, 16
push eax
push 154
push offset Lt_0B36
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
cmp dword ptr [Lt_0B39], 0
je .L_0125
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0115
push 154
push offset Lt_0B36
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [Lt_0B37]
push 154
push offset Lt_0B36
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push 154
push offset Lt_0B36
call fb_StrAssign
add esp, 32
.L_0125:
.L_0124:
.L_011B:
.L_011A:
.L_0119:
.L_0118:
mov eax, offset Lt_0B36
mov dword ptr [ebp-4], eax
.L_010E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETIDXNAME, .-HGETIDXNAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B36,154
.balign 4
	.lcomm	Lt_0B34,4
.balign 4
	.lcomm	Lt_0B35,4
.balign 4
	.lcomm	Lt_0B39,4
.balign 4
	.lcomm	Lt_0B38,4
.balign 4
	.lcomm	Lt_0B37,4

.section .text
.balign 16
OUTEX:
.type OUTEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_015E:
cmp dword ptr [ebp+12], 0
jne .L_0161
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp+12], eax
.L_0161:
.L_0160:
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ENV+580]
call fb_FilePutStr
add esp, 16
test eax, eax
jne .L_0163
.L_0163:
.L_0162:
.L_015F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OUTEX, .-OUTEX
.cfi_endproc
.balign 16
HXCHG:
.type HXCHG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0181:
sub esp, 12
push 0
push 6
push offset Lt_0183
push -1
push offset Lt_0B3A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0B3A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B3A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B3A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+12]
push -1
push offset Lt_0B3A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B3A
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B3A]
call OUTP
add esp, 16
.L_0182:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HXCHG, .-HXCHG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B3A,12

.section .text
.balign 16
HPUBLIC:
.type HPUBLIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_018B:
sub esp, 12
push 0
push 9
push offset Lt_018E
push -1
push offset Lt_0B3B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_0B3B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B3B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0B3B
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0B3B]
call OUTEX
add esp, 16
.L_018C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPUBLIC, .-HPUBLIC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B3B,12

.section .text
.balign 16
HALIGN:
.type HALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0195:
sub esp, 12
push 0
push 9
push offset Lt_0197
push -1
push offset Lt_0B3C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0B3C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0B3C
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0B3C]
call OUTEX
add esp, 16
.L_0196:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HALIGN, .-HALIGN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B3C,12

.section .text
.balign 16
HINITREGTB:
.type HINITREGTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0198:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
push offset Lt_0B3D
push 6
push 0
call REGNEWCLASS
add esp, 16
mov dword ptr [EMIT+8], eax
cmp dword ptr [ENV+116], 1
jne .L_019D
push 0
push offset Lt_0B3E
push 7
push 1
call REGNEWCLASS
add esp, 16
mov dword ptr [EMIT+12], eax
mov dword ptr [ebp-12], 0
.L_01A1:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp-12]
call fb_IntToStr
add esp, 16
push eax
push 4
push offset Lt_01A2
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 8
mov eax, dword ptr [ebp-12]
lea ebx, [RNAMETB+eax*8+192]
push ebx
call fb_StrAssign
add esp, 32
.L_019F:
inc dword ptr [ebp-12]
.L_019E:
cmp dword ptr [ebp-12], 7
jle .L_01A1
.L_01A0:
jmp .L_019C
.L_019D:
push -1
push offset Lt_0B3E
push 7
push 1
call REGNEWCLASS
add esp, 16
mov dword ptr [EMIT+12], eax
.L_019C:
.L_0199:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINITREGTB, .-HINITREGTB
.cfi_endproc

.section .data
.balign 4
Lt_0B3F:
.int 7
.int 6
.int 6
.int 7
.int 7
.int 7
.balign 4
Lt_0B3D:
.int Lt_0B3F
.int Lt_0B3F
.int 24
.int 4
.int 1
.int 49
.int 6
.int 0
.int 5
.balign 4
Lt_0B40:
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.int 12
.balign 4
Lt_0B3E:
.int Lt_0B40
.int Lt_0B40
.int 28
.int 4
.int 1
.int 49
.int 7
.int 0
.int 6

.section .text
.balign 16
HENDREGTB:
.type HENDREGTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01A4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.L_01A9:
sub esp, 12
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
push dword ptr [ebx+8]
call REGDELCLASS
add esp, 16
.L_01A7:
inc dword ptr [ebp-4]
.L_01A6:
cmp dword ptr [ebp-4], 1
jle .L_01A9
.L_01A8:
.L_01A5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HENDREGTB, .-HENDREGTB
.cfi_endproc
.balign 16
HGETGLOBALTYPEALIGN:
.type HGETGLOBALTYPEALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01AA:
cmp dword ptr [ebp+8], 16
jne .L_01AD
mov dword ptr [ebp-4], 8
jmp .L_01AC
.L_01AD:
mov dword ptr [ebp-4], 4
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETGLOBALTYPEALIGN, .-HGETGLOBALTYPEALIGN
.cfi_endproc
.balign 16
HGETGLOBALVARALIGN:
.type HGETGLOBALVARALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_01B1
mov dword ptr [ebp-4], 4
jmp .L_01B0
.L_01B1:
sub esp, 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call HGETGLOBALTYPEALIGN
add esp, 16
mov dword ptr [ebp-4], eax
.L_01B0:
.L_01AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETGLOBALVARALIGN, .-HGETGLOBALVARALIGN
.cfi_endproc
.balign 16
HEMITVARBSS:
.type HEMITVARBSS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_01B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [Lt_0B41], ebx
sub esp, 8
push 0
push 2
call _SETSECTION
add esp, 16
mov ebx, dword ptr [Lt_0B41]
and ebx, 8
test ebx, ebx
jne .L_01B5
mov ebx, dword ptr [Lt_0B41]
and ebx, 32
test ebx, ebx
jle .L_01B7
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HPUBLIC
add esp, 16
.L_01B7:
.L_01B6:
sub esp, 12
push 0
push 7
push offset Lt_01B8
push -1
push offset Lt_0B42
call fb_StrAssign
add esp, 32
jmp .L_01B4
.L_01B5:
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HPUBLIC
add esp, 16
sub esp, 12
push 0
push 6
push offset Lt_01B9
push -1
push offset Lt_0B42
call fb_StrAssign
add esp, 32
.L_01B4:
sub esp, 12
push dword ptr [ebp+8]
call HGETGLOBALVARALIGN
add esp, 4
push eax
call HALIGN
add esp, 16
sub esp, 12
push 0
push -1
push offset Lt_0B42
push -1
push offset Lt_0B43
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0168
push -1
push offset Lt_0B43
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_0B43
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B43
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_01BB
push -1
push offset Lt_0B43
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call SYMBGETREALSIZE
add esp, 8
push edx
push eax
call fb_LongintToStr
add esp, 12
push eax
push -1
push offset Lt_0B43
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [Lt_0B43]
call EMITWRITESTR
add esp, 16
sub esp, 8
push 2
push dword ptr [ebp+8]
call EDBGEMITGLOBALVAR
add esp, 16
.L_01B3:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITVARBSS, .-HEMITVARBSS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B42,12
.balign 4
	.lcomm	Lt_0B43,12
.balign 4
	.lcomm	Lt_0B41,4

.section .text
.balign 16
HWRITEHEADER:
.type HWRITEHEADER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01BC:
sub esp, 12
lea eax, [ENV+304]
push eax
call EDBGEMITHEADER
add esp, 16
sub esp, 8
push -1
push offset Lt_01BE
call EMITWRITESTR
add esp, 16
.L_01BD:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HWRITEHEADER, .-HWRITEHEADER
.cfi_endproc
.balign 16
HEMITVARCONST:
.type HEMITVARCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_01BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [Lt_0B44], ebx
mov ebx, dword ptr [Lt_0B44]
mov dword ptr [ebp-4], ebx
jmp .L_01C2
.L_01C4:
sub esp, 12
push 0
push 2
push offset Lt_01C5
push -1
push offset Lt_0B45
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HESCAPE
add esp, 16
push eax
push -1
push offset Lt_0B45
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B45
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_01C9
push -1
push offset Lt_0B45
call fb_StrConcatAssign
add esp, 32
jmp .L_01C1
.L_01CA:
sub esp, 12
push 0
push 2
push offset Lt_01C5
push -1
push offset Lt_0B45
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HESCAPEW
add esp, 16
push eax
push -1
push offset Lt_0B45
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B45
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-20], 1
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-24], eax
jmp .L_01CD
.L_01D0:
sub esp, 12
push 0
push 3
push offset Lt_01C8
push -1
push offset Lt_0B45
call fb_StrConcatAssign
add esp, 32
.L_01CE:
inc dword ptr [ebp-20]
.L_01CD:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_01D0
.L_01CF:
sub esp, 12
push 0
push 2
push offset Lt_01C5
push -1
push offset Lt_0B45
call fb_StrConcatAssign
add esp, 32
jmp .L_01C1
.L_01D1:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
push -1
push offset Lt_0B45
call fb_StrAssign
add esp, 32
jmp .L_01C1
.L_01C2:
mov eax, dword ptr [ebp-4]
add eax, 4294967292
cmp eax, 3
ja .L_01D1
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_01D2+eax*4-16]
.L_01D2:
.int .L_01C4
.int .L_01D1
.int .L_01D1
.int .L_01CA
.L_01C1:
cmp dword ptr [ENV+108], 2
jne .L_01D4
sub esp, 8
push 0
push 0
call _SETSECTION
add esp, 16
jmp .L_01D3
.L_01D4:
sub esp, 8
push 0
push 1
call _SETSECTION
add esp, 16
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+100], 0
je .L_01D6
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call HALIGN
add esp, 16
jmp .L_01D5
.L_01D6:
sub esp, 12
push dword ptr [Lt_0B44]
call HGETGLOBALTYPEALIGN
add esp, 4
push eax
call HALIGN
add esp, 16
.L_01D5:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [Lt_0B44]
call _GETTYPESTRING
add esp, 12
push eax
push -1
push offset Lt_0B46
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0B47
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_01D7
push -1
push offset Lt_0B47
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B46
push -1
push offset Lt_0B47
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0168
push -1
push offset Lt_0B47
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B45
push -1
push offset Lt_0B47
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0B47]
call EMITWRITESTR
add esp, 16
.L_01C0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITVARCONST, .-HEMITVARCONST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B45,12
.balign 4
	.lcomm	Lt_0B46,12
.balign 4
	.lcomm	Lt_0B47,12
.balign 4
	.lcomm	Lt_0B44,4

.section .text
.balign 16
HWRITECTOR:
.type HWRITECTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 8
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
call _SETSECTION
add esp, 16
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call EMITVARINIOFS
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HWRITECTOR, .-HWRITECTOR
.cfi_endproc
.balign 16
HEMITEXPORT:
.type HEMITEXPORT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_01E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .L_01E6
sub esp, 8
push 0
push 4
call _SETSECTION
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ENV+292], 0
je .L_01E8
inc dword ptr [ebp-4]
.L_01E8:
.L_01E7:
sub esp, 8
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_01ED
push -1
sub esp, 4
push 0
push dword ptr [ebp-4]
push 18
push offset Lt_01EC
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
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
add esp, 20
push dword ptr [ebp-40]
call EMITWRITESTR
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_01E6:
.L_01E5:
.L_01E4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITEXPORT, .-HEMITEXPORT
.cfi_endproc
.balign 16
HDECLVARIABLE:
.type HDECLVARIABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 12
push dword ptr [ebp+8]
call HEMITVARCONST
add esp, 16
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
sub esp, 8
push 0
push 1
call _SETSECTION
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 16
jmp .L_01F2
.L_0201:
.L_0200:
sub esp, 12
push dword ptr [ebp+8]
call HEMITVARBSS
add esp, 16
.L_01F2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDECLVARIABLE, .-HDECLVARIABLE
.cfi_endproc
.balign 16
HCLEARLOCALS:
.type HCLEARLOCALS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0206:
cmp dword ptr [ebp+8], 0
jne .L_0209
jmp .L_0207
.L_0209:
.L_0208:
cmp dword ptr [ENV+112], 3
jl .L_020B
mov eax, dword ptr [ebp+8]
shr eax, 3
cmp eax, 7
jbe .L_020D
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
jne .L_020F
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_020F:
.L_020E:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_0210
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
shr eax, 3
push eax
call fb_UIntToStr
add esp, 16
push eax
push 9
push offset Lt_0214
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_0217
call OUTP
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0B4B
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B4B]
call HLABEL
add esp, 16
sub esp, 12
push offset Lt_0218
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0219
call OUTP
add esp, 16
sub esp, 12
push offset Lt_021A
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0B4B
push 5
push offset Lt_021B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_021E
call OUTP
add esp, 16
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
jne .L_0220
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_0220:
.L_021F:
jmp .L_020C
.L_020D:
mov eax, dword ptr [ebp+8]
shr eax, 3
test eax, eax
jbe .L_0221
sub esp, 12
push offset Lt_0217
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
shr eax, 3
mov ebx, eax
mov dword ptr [Lt_0B4C], ebx
jmp .L_0222
.L_0225:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_0227
push -1
sub esp, 4
push -1
sub esp, 12
mov ebx, dword ptr [Lt_0B4C]
sal ebx, 3
push ebx
call fb_IntToStr
add esp, 16
push eax
push 11
push offset Lt_0226
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0223:
dec dword ptr [Lt_0B4C]
.L_0222:
cmp dword ptr [Lt_0B4C], 1
jge .L_0225
.L_0224:
sub esp, 12
push offset Lt_021E
call OUTP
add esp, 16
.L_0221:
.L_020C:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_022C
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_022E
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call fb_IntToStr
add esp, 16
push eax
push 20
push offset Lt_022D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_022C:
.L_022B:
jmp .L_0207
.L_020B:
.L_020A:
mov eax, dword ptr [ebp+8]
shr eax, 2
cmp eax, 6
jbe .L_0233
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
jne .L_0235
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_0235:
.L_0234:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp+12]
push eax
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_0210
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
shr eax, 2
push eax
call fb_UIntToStr
add esp, 16
push eax
push 9
push offset Lt_0214
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_023B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_023C
call OUTP
add esp, 16
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
jne .L_023E
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_023E:
.L_023D:
jmp .L_0232
.L_0233:
mov eax, dword ptr [ebp+8]
shr eax, 2
mov ebx, eax
mov dword ptr [Lt_0B4C], ebx
jmp .L_023F
.L_0242:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_022E
push -1
sub esp, 4
push -1
sub esp, 12
mov ebx, dword ptr [Lt_0B4C]
sal ebx, 2
add ebx, dword ptr [ebp+12]
push ebx
call fb_IntToStr
add esp, 16
push eax
push 20
push offset Lt_022D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0240:
dec dword ptr [Lt_0B4C]
.L_023F:
cmp dword ptr [Lt_0B4C], 1
jge .L_0242
.L_0241:
.L_0232:
.L_0207:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCLEARLOCALS, .-HCLEARLOCALS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B4C,4
.balign 4
	.lcomm	Lt_0B4B,12

.section .text
.balign 16
HFRAMEBYTESTOALLOC:
.type HFRAMEBYTESTOALLOC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0246:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+12]
add eax, 3
and eax, -4
mov dword ptr [Lt_0B4D], eax
mov eax, dword ptr [ENV+284]
and eax, 64
test eax, eax
je .L_0249
mov dword ptr [Lt_0B4E], 8
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
je .L_024B
add dword ptr [Lt_0B4E], 4
.L_024B:
.L_024A:
mov eax, dword ptr [EMIT+132]
and eax, 4
test eax, eax
je .L_024D
add dword ptr [Lt_0B4E], 4
.L_024D:
.L_024C:
mov eax, dword ptr [EMIT+132]
and eax, 16
test eax, eax
je .L_024F
add dword ptr [Lt_0B4E], 4
.L_024F:
.L_024E:
mov eax, dword ptr [Lt_0B4E]
add dword ptr [Lt_0B4D], eax
mov eax, dword ptr [Lt_0B4D]
add eax, 15
and eax, -16
mov dword ptr [Lt_0B4D], eax
mov eax, dword ptr [Lt_0B4E]
sub dword ptr [Lt_0B4D], eax
.L_0249:
.L_0248:
mov eax, dword ptr [Lt_0B4D]
mov dword ptr [ebp-4], eax
.L_0247:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFRAMEBYTESTOALLOC, .-HFRAMEBYTESTOALLOC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B4D,4
.balign 4
	.lcomm	Lt_0B4E,4

.section .text
.balign 16
HSTOREREGISTERARGUMENT:
.type HSTOREREGISTERARGUMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0250:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 15
push offset Lt_0252
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-16], 0
jl .L_0254
jg .L_0B4F
cmp dword ptr [ebp-20], 0
jbe .L_0254
.L_0B4F:
sub esp, 12
push 0
push 2
push offset Lt_0115
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 32
.L_0254:
.L_0253:
cmp dword ptr [ebp-16], 0
jne .L_0B50
cmp dword ptr [ebp-20], 0
je .L_0256
.L_0B50:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0256:
.L_0255:
sub esp, 12
push 0
push 2
push offset Lt_0144
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+12]
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_017D
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0251:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTOREREGISTERARGUMENT, .-HSTOREREGISTERARGUMENT
.cfi_endproc
.balign 16
HSTOREREGISTERARGUMENTS:
.type HSTOREREGISTERARGUMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 4
push 0
push 4
push offset Lt_0085
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call HSTOREREGISTERARGUMENT
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_025F
.L_0261:
cmp dword ptr [ebp-8], 2
jne .L_0264
.L_0265:
sub esp, 8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 4
push 0
push 4
push offset Lt_0082
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-20]
push eax
push dword ptr [ebp-4]
call HSTOREREGISTERARGUMENT
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSTOREREGISTERARGUMENTS, .-HSTOREREGISTERARGUMENTS
.cfi_endproc
.balign 16
HCREATEFRAME:
.type HCREATEFRAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0267:
cmp dword ptr [ENV+108], 2
jne .L_0269
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
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
mov dword ptr [Lt_0B53], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_026C
sub esp, 12
push dword ptr [ebp+8]
call HFRAMEBYTESTOALLOC
add esp, 16
mov dword ptr [Lt_0B54], eax
mov eax, dword ptr [Lt_0B54]
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
or eax, dword ptr [ENV+148]
or eax, dword ptr [ENV+184]
je .L_026E
sub esp, 12
push offset Lt_0088
call HPUSH
add esp, 16
cmp dword ptr [Lt_0B53], 0
je .L_0270
sub esp, 12
push offset Lt_0271
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0272
call OUTP
add esp, 16
.L_0270:
.L_026F:
sub esp, 12
push offset Lt_0273
call OUTP
add esp, 16
cmp dword ptr [Lt_0B53], 0
je .L_0275
sub esp, 12
push offset Lt_0276
call OUTP
add esp, 16
.L_0275:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 4096
test ecx, ecx
je .L_0278
sub esp, 12
push offset Lt_0279
call OUTP
add esp, 16
add dword ptr [Lt_0B54], 8
.L_0278:
.L_0277:
cmp dword ptr [Lt_0B54], 0
jle .L_027B
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [Lt_0B54]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_027C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_027B:
.L_027A:
.L_026E:
.L_026D:
cmp dword ptr [ENV+108], 3
jne .L_0280
cmp dword ptr [ENV+184], 0
je .L_0282
call SYMBMAKEPROFILELABELNAME
mov dword ptr [Lt_0B58], eax
sub esp, 8
push 0
push offset Lt_0284
call OUTEX
add esp, 16
sub esp, 8
push 0
push offset Lt_0286
call OUTEX
add esp, 16
sub esp, 8
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push 2
push offset Lt_0192
push -1
sub esp, 4
push 0
push dword ptr [Lt_0B58]
push 2
push offset Lt_0007
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_028B
call OUTP
add esp, 16
sub esp, 8
push 0
push offset Lt_028D
call OUTEX
add esp, 16
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 0
push dword ptr [Lt_0B58]
push 18
push offset Lt_028E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_0291
call OUTP
add esp, 16
.L_0282:
.L_0281:
.L_0280:
.L_027F:
mov eax, dword ptr [EMIT+132]
and eax, 16
test eax, eax
je .L_0293
sub esp, 12
push offset Lt_0086
call HPUSH
add esp, 16
.L_0293:
.L_0292:
mov eax, dword ptr [EMIT+132]
and eax, 4
test eax, eax
je .L_0295
sub esp, 12
push offset Lt_0084
call HPUSH
add esp, 16
.L_0295:
.L_0294:
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
je .L_0297
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_0297:
.L_0296:
sub esp, 12
push dword ptr [ebp+8]
call HSTOREREGISTERARGUMENTS
add esp, 16
.L_026C:
.L_026B:
.L_0268:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCREATEFRAME, .-HCREATEFRAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B54,4
.balign 4
	.lcomm	Lt_0B59,4
.balign 4
	.lcomm	Lt_0B5A,4
.balign 4
	.lcomm	Lt_0B58,4
.balign 4
	.lcomm	Lt_0B53,4

.section .text
.balign 16
HDESTROYFRAME:
.type HDESTROYFRAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0298:
mov eax, dword ptr [ENV+108]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [Lt_0B5D], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
jne .L_029B
cmp dword ptr [Lt_0B5D], 0
je .L_029C
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
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
mov dword ptr [Lt_0B5F], eax
sub esp, 12
push dword ptr [ebp+8]
call HFRAMEBYTESTOALLOC
add esp, 16
mov dword ptr [Lt_0B60], eax
mov eax, dword ptr [EMIT+132]
and eax, 2
test eax, eax
je .L_029F
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_029F:
.L_029E:
mov eax, dword ptr [EMIT+132]
and eax, 4
test eax, eax
je .L_02A1
sub esp, 12
push offset Lt_0084
call HPOP
add esp, 16
.L_02A1:
.L_02A0:
mov eax, dword ptr [EMIT+132]
and eax, 16
test eax, eax
je .L_02A3
sub esp, 12
push offset Lt_0086
call HPOP
add esp, 16
.L_02A3:
.L_02A2:
mov eax, dword ptr [Lt_0B60]
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
or eax, dword ptr [ENV+148]
or eax, dword ptr [ENV+184]
je .L_02A5
sub esp, 12
push offset Lt_02A6
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0088
call HPOP
add esp, 16
cmp dword ptr [Lt_0B5F], 0
je .L_02A8
sub esp, 12
push offset Lt_02A9
call OUTP
add esp, 16
sub esp, 12
push offset Lt_02AA
call OUTP
add esp, 16
.L_02A8:
.L_02A7:
.L_02A5:
.L_02A4:
cmp dword ptr [ebp+12], 0
jle .L_02AC
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 16
push eax
push 5
push offset Lt_02AD
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_02AB
.L_02AC:
sub esp, 12
push offset Lt_02B0
call OUTP
add esp, 16
.L_02AB:
.L_029B:
.L_029A:
cmp dword ptr [Lt_0B5D], 0
je .L_02B2
sub esp, 8
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 5
push offset Lt_02B4
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 7
push offset Lt_02B3
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.L_02B2:
.L_02B1:
.L_0299:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDESTROYFRAME, .-HDESTROYFRAME
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B5D,4
.balign 4
	.lcomm	Lt_0B60,4
.balign 4
	.lcomm	Lt_0B5F,4

.section .text
.balign 16
_EMITLIT:
.type _EMITLIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02BA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp-12]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_02BB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLIT, .-_EMITLIT
.cfi_endproc
.balign 16
_EMITJMPTB:
.type _EMITJMPTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push 2
push offset Lt_0192
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp-72]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_016E
push 0
sub esp, 4
push 9
call _GETTYPESTRING
add esp, 8
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
.L_02BE:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITJMPTB, .-_EMITJMPTB
.cfi_endproc
.balign 16
_EMITCALL:
.type _EMITCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02CC:
sub esp, 12
push 0
push 6
push offset Lt_02CE
push -1
push offset Lt_0B66
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_0B66
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B66
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B66]
call OUTP
add esp, 16
cmp dword ptr [ebp+16], 0
je .L_02D1
sub esp, 12
push 0
push 10
push offset Lt_02D2
push -1
push offset Lt_0B66
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0B66
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B66]
call OUTP
add esp, 16
.L_02D1:
.L_02D0:
.L_02CD:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCALL, .-_EMITCALL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B66,12

.section .text
.balign 16
_EMITCALLPTR:
.type _EMITCALLPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02D3:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B67
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_02CE
push -1
push offset Lt_0B68
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B67
push -1
push offset Lt_0B68
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B68]
call OUTP
add esp, 16
cmp dword ptr [ebp+16], 0
je .L_02D6
sub esp, 12
push 0
push 10
push offset Lt_02D2
push -1
push offset Lt_0B68
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0B68
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B68]
call OUTP
add esp, 16
.L_02D6:
.L_02D5:
.L_02D4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCALLPTR, .-_EMITCALLPTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B67,12
.balign 4
	.lcomm	Lt_0B68,12

.section .text
.balign 16
_EMITBRANCH:
.type _EMITBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02D7:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-16], eax
jmp .L_02DA
.L_02DC:
sub esp, 12
push 0
push 5
push offset Lt_02DD
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02DE:
sub esp, 12
push 0
push 5
push offset Lt_02DF
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02E0:
sub esp, 12
push 0
push 4
push offset Lt_02E1
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02E2:
sub esp, 12
push 0
push 4
push offset Lt_02E3
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02E4:
sub esp, 12
push 0
push 4
push offset Lt_02E5
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02E6:
sub esp, 12
push 0
push 5
push offset Lt_02E7
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
jmp .L_02D9
.L_02DA:
mov eax, dword ptr [ebp-16]
add eax, 4294967204
cmp eax, 5
ja .L_02D9
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_02E8+eax*4-368]
.L_02E8:
.int .L_02E4
.int .L_02E2
.int .L_02E0
.int .L_02E6
.int .L_02DE
.int .L_02DC
.L_02D9:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_0B69
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B69
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B69]
call OUTP
add esp, 16
.L_02D8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITBRANCH, .-_EMITBRANCH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B69,12

.section .text
.balign 16
_EMITJUMP:
.type _EMITJUMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02EA:
sub esp, 12
push 0
push 5
push offset Lt_02EC
push -1
push offset Lt_0B6A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_0B6A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B6A
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B6A]
call OUTP
add esp, 16
.L_02EB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITJUMP, .-_EMITJUMP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B6A,12

.section .text
.balign 16
_EMITJUMPPTR:
.type _EMITJUMPPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02EE:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B6B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_02EC
push -1
push offset Lt_0B6C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B6B
push -1
push offset Lt_0B6C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B6C]
call OUTP
add esp, 16
.L_02EF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITJUMPPTR, .-_EMITJUMPPTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B6B,12
.balign 4
	.lcomm	Lt_0B6C,12

.section .text
.balign 16
_EMITRET:
.type _EMITRET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02F0:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 16
push eax
push 5
push offset Lt_02AD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B6D
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B6D]
call OUTP
add esp, 16
.L_02F1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITRET, .-_EMITRET
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B6D,12

.section .text
.balign 16
_EMITPUBLIC:
.type _EMITPUBLIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02F3:
sub esp, 12
push 0
push 9
push offset Lt_018E
push -1
push offset Lt_0B6E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_0B6E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0B6E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0B6E
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0B6E]
call OUTEX
add esp, 16
.L_02F4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUBLIC, .-_EMITPUBLIC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B6E,12

.section .text
.balign 16
_EMITLABEL:
.type _EMITLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02F6:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0B6F
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0193
push -1
push offset Lt_0B6F
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0B6F]
call OUTEX
add esp, 16
.L_02F7:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLABEL, .-_EMITLABEL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B6F,12

.section .text
.balign 16
_EMITNOP:
.type _EMITNOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02F8:
.L_02F9:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNOP, .-_EMITNOP
.cfi_endproc
.balign 16
HULONG2DBL:
.type HULONG2DBL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02FA:
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0B70
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push -1
push 0
push 8
push offset Lt_0B71
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_02FC
push -1
push offset Lt_0B72
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B71
push -1
push offset Lt_0B72
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_02FD
push -1
push offset Lt_0B72
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B72]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_02FE
push -1
push offset Lt_0B72
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B70
push -1
push offset Lt_0B72
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B72]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_02FF
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_0300
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_0301
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0302
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0303
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0B70]
call HLABEL
add esp, 16
.L_02FB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HULONG2DBL, .-HULONG2DBL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B70,12
.balign 4
	.lcomm	Lt_0B71,12
.balign 4
	.lcomm	Lt_0B72,12

.section .text
.balign 16
_EMITSTORL2L:
.type _EMITSTORL2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0304:
sub esp, 4
push offset Lt_0B73
push offset Lt_0B74
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0B75
push offset Lt_0B76
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B77
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B74
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B76
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B77]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B77
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B73
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B75
push -1
push offset Lt_0B77
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B77]
call OUTP
add esp, 16
.L_0305:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORL2L, .-_EMITSTORL2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B74,12
.balign 4
	.lcomm	Lt_0B73,12
.balign 4
	.lcomm	Lt_0B76,12
.balign 4
	.lcomm	Lt_0B75,12
.balign 4
	.lcomm	Lt_0B77,12

.section .text
.balign 16
_EMITSTORI2L:
.type _EMITSTORI2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0B7C], ebx
sub esp, 4
push offset Lt_0B7D
push offset Lt_0B7E
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B7F
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_030B
sub esp, 8
push dword ptr [Lt_0B7F]
push dword ptr [Lt_0B7E]
call HMOV
add esp, 16
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
and ecx, dword ptr [SYMB_DTYPETB+ebx+8]
je .L_030F
sub esp, 8
push offset Lt_0310
push dword ptr [Lt_0B7D]
call HMOV
add esp, 16
jmp .L_030E
.L_030F:
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0B7D]
call HMOV
add esp, 16
.L_030E:
jmp .L_0307
.L_030B:
.L_030A:
cmp dword ptr [Lt_0B7C], 4
jge .L_0312
sub esp, 12
push 0
push 0
sub esp, 4
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B82
call fb_StrAssign
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0316
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
jmp .L_0315
.L_0316:
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
.L_0315:
sub esp, 12
push 0
push -1
push offset Lt_0B82
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B7F
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B83]
call OUTP
add esp, 16
jmp .L_0311
.L_0312:
sub esp, 12
push 0
push -1
push offset Lt_0B7F
push -1
push offset Lt_0B82
call fb_StrAssign
add esp, 32
.L_0311:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B7E
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B82
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B83]
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_031C
sub esp, 12
push dword ptr [Lt_0B82]
call HPUSH
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_031D
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B82
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_031E
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B83]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B7D
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B82
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B83]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0B82]
call HPOP
add esp, 16
jmp .L_031B
.L_031C:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B83
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B7D
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_02FD
push -1
push offset Lt_0B83
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B83]
call OUTP
add esp, 16
.L_031B:
.L_0307:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORI2L, .-_EMITSTORI2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B7E,12
.balign 4
	.lcomm	Lt_0B7D,12
.balign 4
	.lcomm	Lt_0B7F,12
.balign 4
	.lcomm	Lt_0B82,12
.balign 4
	.lcomm	Lt_0B83,12
.balign 4
	.lcomm	Lt_0B7C,4

.section .text
.balign 16
_EMITSTORF2L:
.type _EMITSTORF2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_031F:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B85
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0324
sub esp, 12
push 0
push 7
push offset Lt_0325
push -1
push offset Lt_0B86
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B85
push -1
push offset Lt_0B86
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B86]
call OUTP
add esp, 16
.L_0324:
.L_0323:
.L_0320:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2L, .-_EMITSTORF2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B85,12
.balign 4
	.lcomm	Lt_0B86,12

.section .text
.balign 16
_EMITSTORI2I:
.type _EMITSTORI2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0326:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B8A
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B8B
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0B8C], ebx
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
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0B8D], eax
cmp dword ptr [Lt_0B8C], 1
jne .L_032D
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_032F
mov dword ptr [Lt_0B8C], 4
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
mov eax, dword ptr [Lt_0B8D]
cmp eax, dword ptr [Lt_0B8C]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0331
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8A
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8B
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
jmp .L_0330
.L_0331:
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B91
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0B8D]
cmp dword ptr [Lt_0B8C], eax
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0337
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
jmp .L_0336
.L_0337:
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
.L_0336:
sub esp, 12
push 0
push -1
push offset Lt_0B91
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8B
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8A
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B91
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
jmp .L_0332
.L_0333:
mov dword ptr [Lt_0B92], 0
cmp dword ptr [Lt_0B8C], 1
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
mov dword ptr [Lt_0B92], ebx
.L_033B:
.L_033A:
.L_0339:
.L_0338:
cmp dword ptr [Lt_0B92], 0
je .L_033D
sub esp, 8
push -1
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0B95], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0B95]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B96
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0B95]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B91
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0B95]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0B97], eax
cmp dword ptr [Lt_0B97], 0
jne .L_033F
sub esp, 12
push dword ptr [Lt_0B91]
call HPUSH
add esp, 16
.L_033F:
.L_033E:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B91
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8B
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8A
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B96
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
cmp dword ptr [Lt_0B97], 0
jne .L_0341
sub esp, 12
push dword ptr [Lt_0B91]
call HPOP
add esp, 16
.L_0341:
.L_0340:
jmp .L_033C
.L_033D:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0B90
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B8A
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B91
push -1
push offset Lt_0B90
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0B90]
call OUTP
add esp, 16
.L_033C:
.L_0332:
.L_0330:
.L_0327:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORI2I, .-_EMITSTORI2I
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B8A,12
.balign 4
	.lcomm	Lt_0B8B,12
.balign 4
	.lcomm	Lt_0B8C,4
.balign 4
	.lcomm	Lt_0B8D,4
.balign 4
	.lcomm	Lt_0B90,12
.balign 4
	.lcomm	Lt_0B91,12
.balign 4
	.lcomm	Lt_0B92,4
.balign 4
	.lcomm	Lt_0B96,12
.balign 4
	.lcomm	Lt_0B95,4
.balign 4
	.lcomm	Lt_0B97,4

.section .text
.balign 16
_EMITSTORL2I:
.type _EMITSTORL2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0342:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITSTORI2I
add esp, 16
.L_0343:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORL2I, .-_EMITSTORL2I
.cfi_endproc
.balign 16
_EMITSTORF2I:
.type _EMITSTORF2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0344:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B9A
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0B9B
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0B9C], ebx
cmp dword ptr [Lt_0B9C], 1
jne .L_0349
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034B
call OUTP
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_034D
sub esp, 8
push offset Lt_034E
push dword ptr [Lt_0B9A]
call HMOV
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_034C
.L_034D:
sub esp, 8
push -1
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0B9D], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0B9D]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B9E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0B9D]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0B9F
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0B9D]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0BA0], eax
cmp dword ptr [Lt_0BA0], 0
jne .L_0351
sub esp, 8
push offset Lt_0352
push dword ptr [Lt_0B9F]
call HXCHG
add esp, 16
jmp .L_0350
.L_0351:
sub esp, 8
push offset Lt_034E
push dword ptr [Lt_0B9E]
call HMOV
add esp, 16
.L_0350:
sub esp, 8
push dword ptr [Lt_0B9E]
push dword ptr [Lt_0B9A]
call HMOV
add esp, 16
cmp dword ptr [Lt_0BA0], 0
jne .L_0354
sub esp, 12
push dword ptr [Lt_0B9F]
call HPOP
add esp, 16
jmp .L_0353
.L_0354:
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0358
sub esp, 12
push 0
push 7
push offset Lt_0325
push -1
push offset Lt_0BA1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0B9A
push -1
push offset Lt_0BA1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BA1]
call OUTP
add esp, 16
jmp .L_0357
.L_0358:
cmp dword ptr [Lt_0B9C], 4
jne .L_035A
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0B9A]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_0359
.L_035A:
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034B
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0B9A]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_035D
call OUTP
add esp, 16
.L_0359:
.L_0357:
.L_0348:
.L_0345:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2I, .-_EMITSTORF2I
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0B9A,12
.balign 4
	.lcomm	Lt_0B9B,12
.balign 4
	.lcomm	Lt_0B9C,4
.balign 4
	.lcomm	Lt_0BA1,12
.balign 4
	.lcomm	Lt_0B9D,4
.balign 4
	.lcomm	Lt_0BA0,4
.balign 4
	.lcomm	Lt_0B9F,12
.balign 4
	.lcomm	Lt_0B9E,12

.section .text
.balign 16
_EMITSTORL2F:
.type _EMITSTORL2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_035E:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BA4
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BA5
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_0365
sub esp, 4
push offset Lt_0BA8
push offset Lt_0BA5
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_0BA8]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BA5]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [DTYPETB+ebx+4]
push ecx
push 6
push offset Lt_0366
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
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
push offset Lt_0BA9
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BA9]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_0364
.L_0365:
sub esp, 4
push offset Lt_0BA8
push offset Lt_0BA5
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_0BA8]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BA5]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_036F
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0BA9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BA5
push -1
push offset Lt_0BA9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BA9]
call OUTP
add esp, 16
jmp .L_036E
.L_036F:
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0BA9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BA5
push -1
push offset Lt_0BA9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BA9]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_036E:
.L_0360:
sub esp, 12
push 0
push 6
push offset Lt_0370
push -1
push offset Lt_0BA9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BA4
push -1
push offset Lt_0BA9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BA9]
call OUTP
add esp, 16
.L_035F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORL2F, .-_EMITSTORL2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BA4,12
.balign 4
	.lcomm	Lt_0BA5,12
.balign 4
	.lcomm	Lt_0BA8,12
.balign 4
	.lcomm	Lt_0BA9,12

.section .text
.balign 16
_EMITSTORI2F:
.type _EMITSTORI2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0371:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BAE
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BAF
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BB0], ebx
cmp dword ptr [Lt_0BB0], 1
jne .L_0376
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0BB1], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0BB1]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BB2
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0BB1]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0BB3], eax
cmp dword ptr [Lt_0BB3], 0
jne .L_0378
sub esp, 12
push dword ptr [Lt_0BB2]
call HPUSH
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_037C
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
jmp .L_037B
.L_037C:
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
.L_037B:
sub esp, 12
push 0
push -1
push offset Lt_0BB2
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BAF
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BB4]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BB2]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
cmp dword ptr [Lt_0BB3], 0
jne .L_037F
sub esp, 12
push dword ptr [Lt_0BB2]
call HPOP
add esp, 16
.L_037F:
.L_037E:
sub esp, 12
push 0
push 6
push offset Lt_0370
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BAE
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BB4]
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_0385
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_0BB0]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0387
sub esp, 12
push 0
push 0
sub esp, 4
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BAF
call fb_StrAssign
add esp, 32
.L_0387:
.L_0386:
sub esp, 12
push dword ptr [Lt_0BAF]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [DTYPETB+ecx+4]
push eax
push 6
push offset Lt_0366
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BB4]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_0384
.L_0385:
cmp dword ptr [Lt_0BB0], 4
jne .L_038B
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BAF]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_038A
.L_038B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_038D
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
.L_038D:
.L_038C:
sub esp, 12
push dword ptr [Lt_0BAF]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_038F
sub esp, 12
push offset Lt_0390
call OUTP
add esp, 16
jmp .L_038E
.L_038F:
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0394
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BAF
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BB4]
call OUTP
add esp, 16
jmp .L_0393
.L_0394:
cmp dword ptr [Lt_0BB0], 4
jne .L_0396
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BAF]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_0395
.L_0396:
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BAF]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0390
call OUTP
add esp, 16
.L_0395:
.L_0393:
.L_0380:
sub esp, 12
push 0
push 6
push offset Lt_0370
push -1
push offset Lt_0BB4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BAE
push -1
push offset Lt_0BB4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BB4]
call OUTP
add esp, 16
.L_0372:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORI2F, .-_EMITSTORI2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BAE,12
.balign 4
	.lcomm	Lt_0BAF,12
.balign 4
	.lcomm	Lt_0BB0,4
.balign 4
	.lcomm	Lt_0BB4,12
.balign 4
	.lcomm	Lt_0BB2,12
.balign 4
	.lcomm	Lt_0BB1,4
.balign 4
	.lcomm	Lt_0BB3,4

.section .text
.balign 16
_EMITSTORF2F:
.type _EMITSTORF2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0397:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BBB
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BBC
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BBD], ebx
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
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0BBE], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_039E
sub esp, 12
push 0
push 6
push offset Lt_0370
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBB
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
jmp .L_039D
.L_039E:
mov eax, dword ptr [Lt_0BBD]
cmp dword ptr [Lt_0BBE], eax
jne .L_03A0
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0BBC
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBC
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
cmp dword ptr [Lt_0BBE], 4
jle .L_03A2
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0BBC
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBC
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0BBB
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBB
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
.L_03A2:
.L_03A1:
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0BBB
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBB
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
jmp .L_039F
.L_03A0:
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBC
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
sub esp, 12
push 0
push 6
push offset Lt_0370
push -1
push offset Lt_0BBF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BBB
push -1
push offset Lt_0BBF
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BBF]
call OUTP
add esp, 16
.L_039F:
.L_039D:
.L_0398:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2F, .-_EMITSTORF2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BBB,12
.balign 4
	.lcomm	Lt_0BBC,12
.balign 4
	.lcomm	Lt_0BBD,4
.balign 4
	.lcomm	Lt_0BBE,4
.balign 4
	.lcomm	Lt_0BBF,12

.section .text
.balign 16
_EMITLOADL2L:
.type _EMITLOADL2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_03A4:
sub esp, 4
push offset Lt_0BC0
push offset Lt_0BC1
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0BC2
push offset Lt_0BC3
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0BC4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BC1
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BC3
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BC4]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0BC4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BC0
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BC2
push -1
push offset Lt_0BC4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BC4]
call OUTP
add esp, 16
.L_03A5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADL2L, .-_EMITLOADL2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BC1,12
.balign 4
	.lcomm	Lt_0BC0,12
.balign 4
	.lcomm	Lt_0BC3,12
.balign 4
	.lcomm	Lt_0BC2,12
.balign 4
	.lcomm	Lt_0BC4,12

.section .text
.balign 16
_EMITLOADI2L:
.type _EMITLOADI2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BC8], ebx
sub esp, 4
push offset Lt_0BC9
push offset Lt_0BCA
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BCB
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_03AB
sub esp, 8
push dword ptr [Lt_0BCB]
push dword ptr [Lt_0BCA]
call HMOV
add esp, 16
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
and ecx, dword ptr [SYMB_DTYPETB+ebx+8]
je .L_03AF
sub esp, 8
push offset Lt_0310
push dword ptr [Lt_0BC9]
call HMOV
add esp, 16
jmp .L_03AE
.L_03AF:
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0BC9]
call HMOV
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_03B3
cmp dword ptr [Lt_0BC8], 4
jge .L_03B5
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0BCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BCA
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BCB
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BCE]
call OUTP
add esp, 16
jmp .L_03B4
.L_03B5:
sub esp, 8
push dword ptr [Lt_0BCB]
push dword ptr [Lt_0BCA]
call HMOV
add esp, 16
.L_03B4:
sub esp, 8
push dword ptr [Lt_0BCA]
push dword ptr [Lt_0BC9]
call HMOV
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_031D
push -1
push offset Lt_0BCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BC9
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_031E
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BCE]
call OUTP
add esp, 16
jmp .L_03B2
.L_03B3:
cmp dword ptr [Lt_0BC8], 4
jge .L_03B7
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0BCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BCA
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BCB
push -1
push offset Lt_0BCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BCE]
call OUTP
add esp, 16
jmp .L_03B6
.L_03B7:
sub esp, 8
push dword ptr [Lt_0BCB]
push dword ptr [Lt_0BCA]
call HMOV
add esp, 16
.L_03B6:
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0BC9]
call HMOV
add esp, 16
.L_03B2:
.L_03A7:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADI2L, .-_EMITLOADI2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BCA,12
.balign 4
	.lcomm	Lt_0BC9,12
.balign 4
	.lcomm	Lt_0BCB,12
.balign 4
	.lcomm	Lt_0BC8,4
.balign 4
	.lcomm	Lt_0BCE,12

.section .text
.balign 16
_EMITLOADF2L:
.type _EMITLOADF2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_03B8:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BD1
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BD2
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03BB
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0BD3
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BD2
push -1
push offset Lt_0BD3
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BD3]
call OUTP
add esp, 16
.L_03BB:
.L_03BA:
sub esp, 4
push offset Lt_0BD4
push offset Lt_0BD1
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03BF
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 7
push offset Lt_0325
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
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
push offset Lt_0BD3
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BD3]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD1]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD4]
call HPOP
add esp, 16
jmp .L_03BE
.L_03BF:
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0BD5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0BD6
call fb_StrAssign
add esp, 32
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0BD7], eax
cmp dword ptr [Lt_0BD7], 0
jne .L_03C2
sub esp, 8
push 5
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
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
mov dword ptr [Lt_0BD7], eax
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C4
call OUTP
add esp, 16
cmp dword ptr [ENV+112], 3
jl .L_03C6
sub esp, 12
push offset Lt_03C7
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C8
call OUTP
add esp, 16
sub esp, 8
push dword ptr [Lt_0BD5]
push offset Lt_03C9
call HBRANCH
add esp, 16
jmp .L_03C5
.L_03C6:
sub esp, 12
push offset Lt_03CA
call OUTP
add esp, 16
cmp dword ptr [Lt_0BD7], 0
je .L_03CC
sub esp, 12
push offset Lt_03CD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03CE
call OUTP
add esp, 16
jmp .L_03CB
.L_03CC:
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_03CD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03CE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_03CB:
sub esp, 8
push dword ptr [Lt_0BD5]
push offset Lt_03CF
call HBRANCH
add esp, 16
.L_03C5:
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD1]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD4]
call HPOP
add esp, 16
sub esp, 8
push dword ptr [Lt_0BD6]
push offset Lt_03D0
call HBRANCH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD5]
call HLABEL
add esp, 16
sub esp, 12
push offset Lt_03D1
call OUTP
add esp, 16
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD1]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD4]
call HPOP
add esp, 16
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push 13
push offset Lt_03D3
push -1
sub esp, 4
push -1
push offset Lt_0BD4
push 5
push offset Lt_03D2
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [Lt_0BD6]
call HLABEL
add esp, 16
.L_03BE:
.L_03B9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2L, .-_EMITLOADF2L
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BD1,12
.balign 4
	.lcomm	Lt_0BD2,12
.balign 4
	.lcomm	Lt_0BD4,12
.balign 4
	.lcomm	Lt_0BD3,12
.balign 4
	.lcomm	Lt_0BD5,12
.balign 4
	.lcomm	Lt_0BD6,12
.balign 4
	.lcomm	Lt_0BD7,4

.section .text
.balign 16
_EMITLOADI2I:
.type _EMITLOADI2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_03D7:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BDC
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BDD
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BDE], ebx
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
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [Lt_0BDF], eax
cmp dword ptr [Lt_0BDE], 1
jne .L_03DE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_03E0
mov dword ptr [Lt_0BDE], 4
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
mov eax, dword ptr [Lt_0BDF]
cmp eax, dword ptr [Lt_0BDE]
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_03E2
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0BE2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDC
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDD
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BE2]
call OUTP
add esp, 16
jmp .L_03E1
.L_03E2:
mov eax, dword ptr [Lt_0BDF]
cmp dword ptr [Lt_0BDE], eax
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_03E8
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0BE2
call fb_StrAssign
add esp, 32
jmp .L_03E7
.L_03E8:
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0BE2
call fb_StrAssign
add esp, 32
.L_03E7:
sub esp, 12
push 0
push -1
push offset Lt_0BDC
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDD
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BE2]
call OUTP
add esp, 16
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
mov dword ptr [Lt_0BE3], eax
cmp dword ptr [Lt_0BDE], 1
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
mov dword ptr [Lt_0BE3], 8
sub esp, 12
push 0
push 0
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [Lt_0BE3]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BDC
call fb_StrAssign
add esp, 32
.L_03F0:
.L_03EF:
.L_03EE:
.L_03ED:
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push dword ptr [Lt_0BE3]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BE6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0BE2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDC
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BE6
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BE2]
call OUTP
add esp, 16
.L_03EC:
.L_03EB:
jmp .L_03E9
.L_03EA:
sub esp, 8
push -1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push offset Lt_0BDD
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0BE2
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDC
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BDD
push -1
push offset Lt_0BE2
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BE2]
call OUTP
add esp, 16
.L_03E9:
.L_03E3:
.L_03E1:
.L_03D8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADI2I, .-_EMITLOADI2I
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BDC,12
.balign 4
	.lcomm	Lt_0BDD,12
.balign 4
	.lcomm	Lt_0BDE,4
.balign 4
	.lcomm	Lt_0BDF,4
.balign 4
	.lcomm	Lt_0BE2,12
.balign 4
	.lcomm	Lt_0BE6,12
.balign 4
	.lcomm	Lt_0BE3,4

.section .text
.balign 16
_EMITLOADL2I:
.type _EMITLOADL2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_03F1:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADI2I
add esp, 16
.L_03F2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADL2I, .-_EMITLOADL2I
.cfi_endproc
.balign 16
_EMITLOADF2I:
.type _EMITLOADF2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_03F3:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BE9
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BEA
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BEB], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_03F8
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0BEC
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BEA
push -1
push offset Lt_0BEC
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BEC]
call OUTP
add esp, 16
.L_03F8:
.L_03F7:
cmp dword ptr [Lt_0BEB], 1
jne .L_03FA
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034B
call OUTP
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
jne .L_03FC
sub esp, 8
push offset Lt_034E
push dword ptr [Lt_0BE9]
call HMOV
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_03FB
.L_03FC:
sub esp, 8
push -1
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0BED], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0BED]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BEE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0BED]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BEF
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0BED]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0BF0], eax
cmp dword ptr [Lt_0BF0], 0
jne .L_03FE
sub esp, 8
push offset Lt_0352
push dword ptr [Lt_0BEF]
call HXCHG
add esp, 16
jmp .L_03FD
.L_03FE:
sub esp, 8
push offset Lt_034E
push dword ptr [Lt_0BEE]
call HMOV
add esp, 16
.L_03FD:
sub esp, 8
push dword ptr [Lt_0BEE]
push dword ptr [Lt_0BE9]
call HMOV
add esp, 16
cmp dword ptr [Lt_0BF0], 0
jne .L_0400
sub esp, 12
push dword ptr [Lt_0BEF]
call HPOP
add esp, 16
jmp .L_03FF
.L_0400:
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0404
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 7
push offset Lt_0325
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0BEC
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BEC]
call OUTP
add esp, 16
cmp dword ptr [Lt_0BEB], 4
jge .L_0408
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BE9
call fb_StrAssign
add esp, 32
.L_0408:
.L_0407:
sub esp, 12
push dword ptr [Lt_0BE9]
call HPOP
add esp, 16
jmp .L_0403
.L_0404:
cmp dword ptr [Lt_0BEB], 4
jne .L_040A
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BE9]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_0409
.L_040A:
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034B
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0BE9]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_035D
call OUTP
add esp, 16
.L_0409:
.L_0403:
.L_03F9:
.L_03F4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2I, .-_EMITLOADF2I
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BE9,12
.balign 4
	.lcomm	Lt_0BEA,12
.balign 4
	.lcomm	Lt_0BEB,4
.balign 4
	.lcomm	Lt_0BEC,12
.balign 4
	.lcomm	Lt_0BEF,12
.balign 4
	.lcomm	Lt_0BEE,12
.balign 4
	.lcomm	Lt_0BED,4
.balign 4
	.lcomm	Lt_0BF0,4

.section .text
.balign 16
_EMITLOADL2F:
.type _EMITLOADL2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_040B:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BF3
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BF4
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_0412
sub esp, 4
push offset Lt_0BF7
push offset Lt_0BF4
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_0BF7]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BF4]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
sal ebx, 4
lea ecx, [DTYPETB+ebx+4]
push ecx
push 6
push offset Lt_0366
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
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
push offset Lt_0BF8
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BF8]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_0411
.L_0412:
sub esp, 4
push offset Lt_0BF7
push offset Lt_0BF4
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push dword ptr [Lt_0BF7]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BF4]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0418
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0BF8
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BF4
push -1
push offset Lt_0BF8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BF8]
call OUTP
add esp, 16
jmp .L_0417
.L_0418:
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0BF8
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BF4
push -1
push offset Lt_0BF8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0BF8]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HULONG2DBL
add esp, 16
.L_0417:
.L_040D:
.L_040C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADL2F, .-_EMITLOADL2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BF3,12
.balign 4
	.lcomm	Lt_0BF4,12
.balign 4
	.lcomm	Lt_0BF7,12
.balign 4
	.lcomm	Lt_0BF8,12

.section .text
.balign 16
_EMITLOADI2F:
.type _EMITLOADI2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0419:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BFD
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0BFE
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0BFF], ebx
cmp dword ptr [Lt_0BFF], 1
jne .L_041E
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0C00], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0C00]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C01
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0C00]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C02], eax
cmp dword ptr [Lt_0C02], 0
jne .L_0420
sub esp, 12
push dword ptr [Lt_0C01]
call HPUSH
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0424
sub esp, 12
push 0
push 7
push offset Lt_0317
push -1
push offset Lt_0C03
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C01
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BFE
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C03]
call OUTP
add esp, 16
jmp .L_0423
.L_0424:
sub esp, 12
push 0
push 7
push offset Lt_0318
push -1
push offset Lt_0C03
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C01
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BFE
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C03]
call OUTP
add esp, 16
.L_0423:
sub esp, 12
push dword ptr [Lt_0C01]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
cmp dword ptr [Lt_0C02], 0
jne .L_0426
sub esp, 12
push dword ptr [Lt_0C01]
call HPOP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .L_042C
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_0BFF]
cmp ecx, 4
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_042E
sub esp, 12
push 0
push 0
sub esp, 4
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0BFE
call fb_StrAssign
add esp, 32
.L_042E:
.L_042D:
sub esp, 12
push dword ptr [Lt_0BFE]
call HPUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
sal ecx, 4
lea eax, [DTYPETB+ecx+4]
push eax
push 6
push offset Lt_0366
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0C03
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C03]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_042B
.L_042C:
cmp dword ptr [Lt_0BFF], 4
jne .L_0432
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BFE]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_0431
.L_0432:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0434
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
.L_0434:
.L_0433:
sub esp, 12
push dword ptr [Lt_0BFE]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
je .L_0436
sub esp, 12
push offset Lt_0390
call OUTP
add esp, 16
jmp .L_0435
.L_0436:
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_043A
sub esp, 12
push 0
push 6
push offset Lt_0366
push -1
push offset Lt_0C03
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0BFE
push -1
push offset Lt_0C03
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C03]
call OUTP
add esp, 16
jmp .L_0439
.L_043A:
cmp dword ptr [Lt_0BFF], 4
jne .L_043C
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BFE]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_036B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
jmp .L_043B
.L_043C:
sub esp, 12
push offset Lt_0006
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0BFE]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0390
call OUTP
add esp, 16
.L_043B:
.L_0439:
.L_0427:
.L_041A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADI2F, .-_EMITLOADI2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0BFD,12
.balign 4
	.lcomm	Lt_0BFE,12
.balign 4
	.lcomm	Lt_0BFF,4
.balign 4
	.lcomm	Lt_0C03,12
.balign 4
	.lcomm	Lt_0C01,12
.balign 4
	.lcomm	Lt_0C02,4
.balign 4
	.lcomm	Lt_0C00,4

.section .text
.balign 16
_EMITLOADF2F:
.type _EMITLOADF2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_043D:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C08
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0C09
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C08
push -1
push offset Lt_0C09
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C09]
call OUTP
add esp, 16
.L_043E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2F, .-_EMITLOADF2F
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C08,12
.balign 4
	.lcomm	Lt_0C09,12

.section .text
.balign 16
_EMITMOVL:
.type _EMITMOVL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_043F:
sub esp, 4
push offset Lt_0C0A
push offset Lt_0C0B
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0C0C
push offset Lt_0C0D
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0C0E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C0B
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C0D
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C0E]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0C0E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C0A
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C0C
push -1
push offset Lt_0C0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C0E]
call OUTP
add esp, 16
.L_0440:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMOVL, .-_EMITMOVL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C0B,12
.balign 4
	.lcomm	Lt_0C0A,12
.balign 4
	.lcomm	Lt_0C0D,12
.balign 4
	.lcomm	Lt_0C0C,12
.balign 4
	.lcomm	Lt_0C0E,12

.section .text
.balign 16
_EMITMOVI:
.type _EMITMOVI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
jne .L_0446
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C10
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C11
call fb_StrAssign
add esp, 32
jmp .L_0445
.L_0446:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C10
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C11
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
.L_0445:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0C12
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C10
push -1
push offset Lt_0C12
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C12
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C11
push -1
push offset Lt_0C12
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C12]
call OUTP
add esp, 16
.L_0442:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMOVI, .-_EMITMOVI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C10,12
.balign 4
	.lcomm	Lt_0C11,12
.balign 4
	.lcomm	Lt_0C12,12

.section .text
.balign 16
_EMITMOVF:
.type _EMITMOVF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0447:
.L_0448:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMOVF, .-_EMITMOVF
.cfi_endproc
.balign 16
_EMITADDL:
.type _EMITADDL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0449:
sub esp, 4
push offset Lt_0C13
push offset Lt_0C14
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0C15
push offset Lt_0C16
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_044B
push -1
push offset Lt_0C17
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C14
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C16
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C17]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_044C
push -1
push offset Lt_0C17
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C13
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C15
push -1
push offset Lt_0C17
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C17]
call OUTP
add esp, 16
.L_044A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDL, .-_EMITADDL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C14,12
.balign 4
	.lcomm	Lt_0C13,12
.balign 4
	.lcomm	Lt_0C16,12
.balign 4
	.lcomm	Lt_0C15,12
.balign 4
	.lcomm	Lt_0C17,12

.section .text
.balign 16
_EMITADDI:
.type _EMITADDI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_044D:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C18
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C19
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov dword ptr [Lt_0C1A], 0
mov dword ptr [Lt_0C1B], 0
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
mov dword ptr [Lt_0C1A], -1
jmp .L_0451
.L_0453:
cmp dword ptr [ebp-4], 4294967295
jne .L_0455
cmp dword ptr [ebp-8], 4294967295
jne .L_0455
.L_0C1D:
.L_0456:
mov dword ptr [Lt_0C1B], -1
.L_0455:
.L_0451:
.L_0450:
.L_044F:
cmp dword ptr [Lt_0C1A], 0
je .L_0458
sub esp, 12
push 0
push 5
push offset Lt_0459
push -1
push offset Lt_0C1E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C18
push -1
push offset Lt_0C1E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C1E]
call OUTP
add esp, 16
jmp .L_0457
.L_0458:
cmp dword ptr [Lt_0C1B], 0
je .L_045A
sub esp, 12
push 0
push 5
push offset Lt_045B
push -1
push offset Lt_0C1E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C18
push -1
push offset Lt_0C1E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C1E]
call OUTP
add esp, 16
jmp .L_0457
.L_045A:
sub esp, 12
push 0
push 5
push offset Lt_044B
push -1
push offset Lt_0C1E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C18
push -1
push offset Lt_0C1E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C1E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C19
push -1
push offset Lt_0C1E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C1E]
call OUTP
add esp, 16
.L_0457:
.L_044E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDI, .-_EMITADDI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C18,12
.balign 4
	.lcomm	Lt_0C19,12
.balign 4
	.lcomm	Lt_0C1A,4
.balign 4
	.lcomm	Lt_0C1B,4
.balign 4
	.lcomm	Lt_0C1E,12

.section .text
.balign 16
_EMITADDF:
.type _EMITADDF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_045C:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C20
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_045F
sub esp, 12
push 0
push 6
push offset Lt_0303
push -1
push offset Lt_0C21
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C21]
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0463
sub esp, 12
push 0
push 6
push offset Lt_0464
push -1
push offset Lt_0C21
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C20
push -1
push offset Lt_0C21
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C21]
call OUTP
add esp, 16
jmp .L_0462
.L_0463:
sub esp, 12
push 0
push 7
push offset Lt_0465
push -1
push offset Lt_0C21
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C20
push -1
push offset Lt_0C21
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C21]
call OUTP
add esp, 16
.L_0462:
.L_045E:
.L_045D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDF, .-_EMITADDF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C20,12
.balign 4
	.lcomm	Lt_0C21,12

.section .text
.balign 16
_EMITSUBL:
.type _EMITSUBL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0466:
sub esp, 4
push offset Lt_0C22
push offset Lt_0C23
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0C24
push offset Lt_0C25
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0468
push -1
push offset Lt_0C26
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C23
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C25
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C26]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0469
push -1
push offset Lt_0C26
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C22
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C24
push -1
push offset Lt_0C26
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C26]
call OUTP
add esp, 16
.L_0467:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSUBL, .-_EMITSUBL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C23,12
.balign 4
	.lcomm	Lt_0C22,12
.balign 4
	.lcomm	Lt_0C25,12
.balign 4
	.lcomm	Lt_0C24,12
.balign 4
	.lcomm	Lt_0C26,12

.section .text
.balign 16
_EMITSUBI:
.type _EMITSUBI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_046A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C27
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C28
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov dword ptr [Lt_0C29], 0
mov dword ptr [Lt_0C2A], 0
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
mov dword ptr [Lt_0C2A], -1
jmp .L_046E
.L_0470:
cmp dword ptr [ebp-4], 4294967295
jne .L_0472
cmp dword ptr [ebp-8], 4294967295
jne .L_0472
.L_0C2C:
.L_0473:
mov dword ptr [Lt_0C29], -1
.L_0472:
.L_046E:
.L_046D:
.L_046C:
cmp dword ptr [Lt_0C2A], 0
je .L_0475
sub esp, 12
push 0
push 5
push offset Lt_045B
push -1
push offset Lt_0C2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C27
push -1
push offset Lt_0C2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C2D]
call OUTP
add esp, 16
jmp .L_0474
.L_0475:
cmp dword ptr [Lt_0C29], 0
je .L_0476
sub esp, 12
push 0
push 5
push offset Lt_0459
push -1
push offset Lt_0C2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C27
push -1
push offset Lt_0C2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C2D]
call OUTP
add esp, 16
jmp .L_0474
.L_0476:
sub esp, 12
push 0
push 5
push offset Lt_0468
push -1
push offset Lt_0C2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C27
push -1
push offset Lt_0C2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C28
push -1
push offset Lt_0C2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C2D]
call OUTP
add esp, 16
.L_0474:
.L_046B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSUBI, .-_EMITSUBI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C27,12
.balign 4
	.lcomm	Lt_0C28,12
.balign 4
	.lcomm	Lt_0C29,4
.balign 4
	.lcomm	Lt_0C2A,4
.balign 4
	.lcomm	Lt_0C2D,12

.section .text
.balign 16
_EMITSUBF:
.type _EMITSUBF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0477:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C2F
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_047A
sub esp, 12
push offset Lt_047B
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_047F
sub esp, 12
push 0
push 6
push offset Lt_0480
push -1
push offset Lt_0C30
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C2F
push -1
push offset Lt_0C30
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C30]
call OUTP
add esp, 16
jmp .L_047E
.L_047F:
sub esp, 12
push 0
push 7
push offset Lt_0481
push -1
push offset Lt_0C30
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C2F
push -1
push offset Lt_0C30
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C30]
call OUTP
add esp, 16
.L_047E:
.L_0479:
.L_0478:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSUBF, .-_EMITSUBF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C2F,12
.balign 4
	.lcomm	Lt_0C31,4
.balign 4
	.lcomm	Lt_0C32,4
.balign 4
	.lcomm	Lt_0C30,12

.section .text
.balign 16
_EMITMULL:
.type _EMITMULL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 264
.L_0482:
sub esp, 4
push offset Lt_0C33
push offset Lt_0C34
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0C35
push offset Lt_0C36
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C37], eax
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C38], eax
sub esp, 8
push 5
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C39], eax
sub esp, 8
push 0
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C3A], eax
sub esp, 12
push dword ptr [Lt_0C35]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0C36]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0C33]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0C34]
call HPUSH
add esp, 16
mov dword ptr [Lt_0C3B], 0
cmp dword ptr [Lt_0C3A], 0
je .L_0485
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0487
add dword ptr [Lt_0C3B], 4
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
.L_0487:
.L_0486:
jmp .L_0484
.L_0485:
cmp dword ptr [Lt_0C38], 0
jne .L_0489
add dword ptr [Lt_0C3B], 4
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
.L_0489:
.L_0488:
.L_0484:
cmp dword ptr [Lt_0C39], 0
je .L_048B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_048D
add dword ptr [Lt_0C3B], 4
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_048D:
.L_048C:
jmp .L_048A
.L_048B:
cmp dword ptr [Lt_0C37], 0
jne .L_048F
add dword ptr [Lt_0C3B], 4
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_048F:
.L_048E:
.L_048A:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C3B]
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C3B]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 20
push offset Lt_0494
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C3B]
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_0498
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C3B]
add eax, 12
push eax
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_049C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_04A0
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C3B]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_04A1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C3B]
add eax, 8
push eax
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_04A5
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_04A9
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
push 0
push -1
sub esp, 8
push 7
push offset Lt_04AB
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C3B]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_04AA
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
lea eax, [ebp-240]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-252]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-252]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-252]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0C39], 0
je .L_04B0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04B2
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_04B2:
.L_04B1:
jmp .L_04AF
.L_04B0:
cmp dword ptr [Lt_0C37], 0
jne .L_04B4
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_04B4:
.L_04B3:
.L_04AF:
cmp dword ptr [Lt_0C3A], 0
je .L_04B6
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04B8
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_04B8:
.L_04B7:
jmp .L_04B5
.L_04B6:
cmp dword ptr [Lt_0C38], 0
jne .L_04BA
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_04BA:
.L_04B9:
.L_04B5:
sub esp, 12
push dword ptr [Lt_0C34]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_0C33]
call HPOP
add esp, 16
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
.L_0483:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMULL, .-_EMITMULL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C34,12
.balign 4
	.lcomm	Lt_0C33,12
.balign 4
	.lcomm	Lt_0C36,12
.balign 4
	.lcomm	Lt_0C35,12
.balign 4
	.lcomm	Lt_0C37,4
.balign 4
	.lcomm	Lt_0C38,4
.balign 4
	.lcomm	Lt_0C39,4
.balign 4
	.lcomm	Lt_0C3A,4
.balign 4
	.lcomm	Lt_0C3B,4

.section .text
.balign 16
_EMITMULI:
.type _EMITMULI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_04BB:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C3C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C3D
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_04BE
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0C3E], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0C3E]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C3F
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0C3E]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C40], eax
cmp dword ptr [Lt_0C40], 0
jne .L_04C0
sub esp, 12
push dword ptr [Lt_0C3F]
call HPUSH
add esp, 16
.L_04C0:
.L_04BF:
sub esp, 8
push dword ptr [Lt_0C3C]
push dword ptr [Lt_0C3F]
call HMOV
add esp, 16
sub esp, 12
push 0
push 6
push offset Lt_04C1
push -1
push offset Lt_0C41
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C3F
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C3D
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C41]
call OUTP
add esp, 16
sub esp, 8
push dword ptr [Lt_0C3F]
push dword ptr [Lt_0C3C]
call HMOV
add esp, 16
cmp dword ptr [Lt_0C40], 0
jne .L_04C3
sub esp, 12
push dword ptr [Lt_0C3F]
call HPOP
add esp, 16
.L_04C3:
.L_04C2:
jmp .L_04BD
.L_04BE:
sub esp, 12
push 0
push 6
push offset Lt_04C1
push -1
push offset Lt_0C41
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C3C
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C3D
push -1
push offset Lt_0C41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C41]
call OUTP
add esp, 16
.L_04BD:
.L_04BC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMULI, .-_EMITMULI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C3E,4
.balign 4
	.lcomm	Lt_0C40,4
.balign 4
	.lcomm	Lt_0C3F,12
.balign 4
	.lcomm	Lt_0C41,12
.balign 4
	.lcomm	Lt_0C3C,12
.balign 4
	.lcomm	Lt_0C3D,12

.section .text
.balign 16
_EMITMULF:
.type _EMITMULF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_04C4:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C43
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04C7
sub esp, 12
push offset Lt_04C8
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_04CC
sub esp, 12
push 0
push 6
push offset Lt_04CD
push -1
push offset Lt_0C44
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C43
push -1
push offset Lt_0C44
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C44]
call OUTP
add esp, 16
jmp .L_04CB
.L_04CC:
sub esp, 12
push 0
push 7
push offset Lt_04CE
push -1
push offset Lt_0C44
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C43
push -1
push offset Lt_0C44
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C44]
call OUTP
add esp, 16
.L_04CB:
.L_04C6:
.L_04C5:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMULF, .-_EMITMULF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C43,12
.balign 4
	.lcomm	Lt_0C44,12

.section .text
.balign 16
_EMITDIVF:
.type _EMITDIVF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_04CF:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C46
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_04D2
sub esp, 12
push offset Lt_04D3
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_04D7
sub esp, 12
push 0
push 6
push offset Lt_04D8
push -1
push offset Lt_0C47
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C46
push -1
push offset Lt_0C47
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C47]
call OUTP
add esp, 16
jmp .L_04D6
.L_04D7:
sub esp, 12
push 0
push 7
push offset Lt_04D9
push -1
push offset Lt_0C47
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C46
push -1
push offset Lt_0C47
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C47]
call OUTP
add esp, 16
.L_04D6:
.L_04D1:
.L_04D0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDIVF, .-_EMITDIVF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C46,12
.balign 4
	.lcomm	Lt_0C47,12

.section .text
.balign 16
_EMITDIVI:
.type _EMITDIVI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_04DA:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C4B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C4C
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+eax+4], 4
jne .L_04DF
sub esp, 12
push 0
push 4
push offset Lt_0087
push -1
push offset Lt_0C4D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0085
push -1
push offset Lt_0C4E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0082
push -1
push offset Lt_0C4F
call fb_StrAssign
add esp, 32
jmp .L_04DE
.L_04DF:
sub esp, 12
push 0
push 3
push offset Lt_0081
push -1
push offset Lt_0C4D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_007F
push -1
push offset Lt_0C4E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_007E
push -1
push offset Lt_0C4F
call fb_StrAssign
add esp, 32
.L_04DE:
mov dword ptr [Lt_0C50], 0
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C51], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C52], eax
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C53], eax
sub esp, 8
push 5
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C54], eax
sub esp, 8
push 0
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C55], eax
sub esp, 8
push 5
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C56], eax
sub esp, 8
push 0
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C57], eax
sub esp, 8
push 3
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C58], eax
mov eax, dword ptr [Lt_0C55]
or eax, dword ptr [Lt_0C54]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_04E1
mov dword ptr [Lt_0C50], -1
cmp dword ptr [Lt_0C58], 0
je .L_04E3
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04E5
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0C5A
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push dword ptr [Lt_0C5A]
call HPUSH
add esp, 16
.L_04E5:
.L_04E4:
jmp .L_04E2
.L_04E3:
cmp dword ptr [Lt_0C52], 0
jne .L_04E6
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_04E6:
.L_04E2:
sub esp, 8
push dword ptr [Lt_0C4C]
push dword ptr [Lt_0C4E]
call HMOV
add esp, 16
sub esp, 12
push 0
push -1
push offset Lt_0C4E
push -1
push offset Lt_0C4C
call fb_StrAssign
add esp, 32
.L_04E1:
.L_04E0:
cmp dword ptr [Lt_0C56], 0
jne .L_04E8
mov ecx, dword ptr [Lt_0C50]
and ecx, dword ptr [Lt_0C58]
je .L_04EA
cmp dword ptr [Lt_0C51], 0
jne .L_04EC
sub esp, 12
push offset Lt_04ED
call OUTP
add esp, 16
jmp .L_04EB
.L_04EC:
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_04EB:
jmp .L_04E9
.L_04EA:
cmp dword ptr [Lt_0C51], 0
jne .L_04EF
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_04EF:
.L_04EE:
sub esp, 8
push dword ptr [Lt_0C4B]
push dword ptr [Lt_0C4D]
call HMOV
add esp, 16
.L_04E9:
jmp .L_04E7
.L_04E8:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04F1
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
sub esp, 8
push dword ptr [Lt_0C4B]
push dword ptr [Lt_0C4D]
call HMOV
add esp, 16
.L_04F1:
.L_04F0:
.L_04E7:
cmp dword ptr [Lt_0C57], 0
je .L_04F3
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_04F5
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
.L_04F5:
.L_04F4:
jmp .L_04F2
.L_04F3:
cmp dword ptr [Lt_0C53], 0
jne .L_04F6
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
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
cmp dword ptr [SYMB_DTYPETB+ecx+4], 4
jne .L_04FE
sub esp, 12
push offset Lt_04FF
call OUTP
add esp, 16
jmp .L_04FD
.L_04FE:
sub esp, 12
push offset Lt_0500
call OUTP
add esp, 16
.L_04FD:
sub esp, 12
push 0
push 6
push offset Lt_0501
push -1
push offset Lt_0C5A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C4C
push -1
push offset Lt_0C5A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C5A]
call OUTP
add esp, 16
jmp .L_04F9
.L_04FA:
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0C5A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C4F
push -1
push offset Lt_0C5A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C5A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C4F
push -1
push offset Lt_0C5A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C5A]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0502
push -1
push offset Lt_0C5A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C4C
push -1
push offset Lt_0C5A
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C5A]
call OUTP
add esp, 16
.L_04F9:
cmp dword ptr [Lt_0C57], 0
je .L_0504
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0506
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_0506:
.L_0505:
jmp .L_0503
.L_0504:
cmp dword ptr [Lt_0C53], 0
jne .L_0507
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_0507:
.L_0503:
cmp dword ptr [Lt_0C56], 0
jne .L_0509
mov ecx, dword ptr [Lt_0C50]
and ecx, dword ptr [Lt_0C58]
je .L_050B
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_050D
cmp dword ptr [Lt_0C51], 0
jne .L_050F
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
jmp .L_050E
.L_050F:
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_050E:
.L_050D:
.L_050C:
.L_050B:
.L_050A:
sub esp, 8
push dword ptr [Lt_0C4D]
push dword ptr [Lt_0C4B]
call HMOV
add esp, 16
cmp dword ptr [Lt_0C51], 0
jne .L_0512
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0512:
.L_0511:
jmp .L_0508
.L_0509:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0514
mov ecx, dword ptr [Lt_0C52]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_0C50]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0516
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0517
call OUTP
add esp, 16
jmp .L_0515
.L_0516:
sub esp, 8
push offset Lt_0087
push offset Lt_0085
call HMOV
add esp, 16
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0515:
sub esp, 8
push dword ptr [Lt_0C4E]
push dword ptr [Lt_0C4B]
call HMOV
add esp, 16
mov eax, dword ptr [Lt_0C52]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [Lt_0C50]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0519
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0519:
.L_0518:
.L_0514:
.L_0513:
.L_0508:
cmp dword ptr [Lt_0C50], 0
je .L_051B
mov ecx, dword ptr [Lt_0C52]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_0C58]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_051D
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_051D:
.L_051C:
.L_051B:
.L_051A:
.L_04DB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDIVI, .-_EMITDIVI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C4B,12
.balign 4
	.lcomm	Lt_0C4C,12
.balign 4
	.lcomm	Lt_0C50,4
.balign 4
	.lcomm	Lt_0C51,4
.balign 4
	.lcomm	Lt_0C52,4
.balign 4
	.lcomm	Lt_0C53,4
.balign 4
	.lcomm	Lt_0C56,4
.balign 4
	.lcomm	Lt_0C58,4
.balign 4
	.lcomm	Lt_0C57,4
.balign 4
	.lcomm	Lt_0C54,4
.balign 4
	.lcomm	Lt_0C55,4
.balign 4
	.lcomm	Lt_0C4D,12
.balign 4
	.lcomm	Lt_0C4E,12
.balign 4
	.lcomm	Lt_0C4F,12
.balign 4
	.lcomm	Lt_0C5A,12

.section .text
.balign 16
_EMITMODI:
.type _EMITMODI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_051E:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C64
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C65
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+eax+4], 4
jne .L_0523
sub esp, 12
push 0
push 4
push offset Lt_0087
push -1
push offset Lt_0C66
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0085
push -1
push offset Lt_0C67
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0082
push -1
push offset Lt_0C68
call fb_StrAssign
add esp, 32
jmp .L_0522
.L_0523:
sub esp, 12
push 0
push 3
push offset Lt_0081
push -1
push offset Lt_0C66
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_007F
push -1
push offset Lt_0C67
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_007E
push -1
push offset Lt_0C68
call fb_StrAssign
add esp, 32
.L_0522:
mov dword ptr [Lt_0C69], 0
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C6A], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C6B], eax
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C6C], eax
sub esp, 8
push 5
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C6D], eax
sub esp, 8
push 0
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C6E], eax
sub esp, 8
push 5
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C6F], eax
sub esp, 8
push 0
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C70], eax
sub esp, 8
push 3
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C71], eax
mov eax, dword ptr [Lt_0C6E]
or eax, dword ptr [Lt_0C6D]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0525
mov dword ptr [Lt_0C69], -1
cmp dword ptr [Lt_0C71], 0
je .L_0527
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0529
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0C73
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push dword ptr [Lt_0C73]
call HPUSH
add esp, 16
.L_0529:
.L_0528:
jmp .L_0526
.L_0527:
cmp dword ptr [Lt_0C6B], 0
jne .L_052A
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_052A:
.L_0526:
sub esp, 8
push dword ptr [Lt_0C65]
push dword ptr [Lt_0C67]
call HMOV
add esp, 16
sub esp, 12
push 0
push -1
push offset Lt_0C67
push -1
push offset Lt_0C65
call fb_StrAssign
add esp, 32
.L_0525:
.L_0524:
cmp dword ptr [Lt_0C6F], 0
jne .L_052C
mov ecx, dword ptr [Lt_0C69]
and ecx, dword ptr [Lt_0C71]
je .L_052E
cmp dword ptr [Lt_0C6A], 0
jne .L_0530
sub esp, 12
push offset Lt_04ED
call OUTP
add esp, 16
jmp .L_052F
.L_0530:
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_052F:
jmp .L_052D
.L_052E:
cmp dword ptr [Lt_0C6A], 0
jne .L_0532
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_0532:
.L_0531:
sub esp, 8
push dword ptr [Lt_0C64]
push dword ptr [Lt_0C66]
call HMOV
add esp, 16
.L_052D:
jmp .L_052B
.L_052C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0534
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
sub esp, 8
push dword ptr [Lt_0C64]
push dword ptr [Lt_0C66]
call HMOV
add esp, 16
.L_0534:
.L_0533:
.L_052B:
cmp dword ptr [Lt_0C70], 0
je .L_0536
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0538
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
.L_0538:
.L_0537:
jmp .L_0535
.L_0536:
cmp dword ptr [Lt_0C6C], 0
jne .L_0539
sub esp, 12
push offset Lt_0082
call HPUSH
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
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
cmp dword ptr [SYMB_DTYPETB+ecx+4], 4
jne .L_0541
sub esp, 12
push offset Lt_04FF
call OUTP
add esp, 16
jmp .L_0540
.L_0541:
sub esp, 12
push offset Lt_0500
call OUTP
add esp, 16
.L_0540:
sub esp, 12
push 0
push 6
push offset Lt_0501
push -1
push offset Lt_0C73
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C65
push -1
push offset Lt_0C73
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C73]
call OUTP
add esp, 16
jmp .L_053C
.L_053D:
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0C73
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C68
push -1
push offset Lt_0C73
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0C73
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C68
push -1
push offset Lt_0C73
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C73]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0502
push -1
push offset Lt_0C73
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C65
push -1
push offset Lt_0C73
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C73]
call OUTP
add esp, 16
.L_053C:
sub esp, 8
push dword ptr [Lt_0C68]
push dword ptr [Lt_0C66]
call HMOV
add esp, 16
cmp dword ptr [Lt_0C70], 0
je .L_0543
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0545
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_0545:
.L_0544:
jmp .L_0542
.L_0543:
cmp dword ptr [Lt_0C6C], 0
jne .L_0546
sub esp, 12
push offset Lt_0082
call HPOP
add esp, 16
.L_0546:
.L_0542:
cmp dword ptr [Lt_0C6F], 0
jne .L_0548
mov ecx, dword ptr [Lt_0C69]
and ecx, dword ptr [Lt_0C71]
je .L_054A
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_054C
cmp dword ptr [Lt_0C6A], 0
jne .L_054E
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
jmp .L_054D
.L_054E:
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_054D:
.L_054C:
.L_054B:
.L_054A:
.L_0549:
sub esp, 8
push dword ptr [Lt_0C66]
push dword ptr [Lt_0C64]
call HMOV
add esp, 16
cmp dword ptr [Lt_0C6A], 0
jne .L_0550
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0550:
.L_054F:
jmp .L_0547
.L_0548:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 4
je .L_0552
mov ecx, dword ptr [Lt_0C6B]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_0C69]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0554
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0517
call OUTP
add esp, 16
jmp .L_0553
.L_0554:
sub esp, 8
push offset Lt_0087
push offset Lt_0085
call HMOV
add esp, 16
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0553:
sub esp, 8
push dword ptr [Lt_0C67]
push dword ptr [Lt_0C64]
call HMOV
add esp, 16
mov eax, dword ptr [Lt_0C6B]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [Lt_0C69]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0556
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0556:
.L_0555:
.L_0552:
.L_0551:
.L_0547:
cmp dword ptr [Lt_0C69], 0
je .L_0558
mov ecx, dword ptr [Lt_0C6B]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_0C71]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_055A
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_055A:
.L_0559:
.L_0558:
.L_0557:
.L_051F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMODI, .-_EMITMODI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C64,12
.balign 4
	.lcomm	Lt_0C65,12
.balign 4
	.lcomm	Lt_0C69,4
.balign 4
	.lcomm	Lt_0C6A,4
.balign 4
	.lcomm	Lt_0C6B,4
.balign 4
	.lcomm	Lt_0C6C,4
.balign 4
	.lcomm	Lt_0C6F,4
.balign 4
	.lcomm	Lt_0C71,4
.balign 4
	.lcomm	Lt_0C70,4
.balign 4
	.lcomm	Lt_0C6D,4
.balign 4
	.lcomm	Lt_0C6E,4
.balign 4
	.lcomm	Lt_0C66,12
.balign 4
	.lcomm	Lt_0C67,12
.balign 4
	.lcomm	Lt_0C68,12
.balign 4
	.lcomm	Lt_0C73,12

.section .text
.balign 16
HSHIFTL:
.type HSHIFTL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 228
push ebx
.L_055B:
cmp dword ptr [ebp+8], 41
jne .L_055E
sub esp, 12
push 0
push 5
push offset Lt_055F
push -1
push offset Lt_0C7F
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0560
push -1
push offset Lt_0C80
call fb_StrAssign
add esp, 32
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0564
sub esp, 12
push 0
push 5
push offset Lt_031D
push -1
push offset Lt_0C7F
call fb_StrAssign
add esp, 32
jmp .L_0563
.L_0564:
sub esp, 12
push 0
push 5
push offset Lt_0565
push -1
push offset Lt_0C7F
call fb_StrAssign
add esp, 32
.L_0563:
sub esp, 12
push 0
push 6
push offset Lt_0566
push -1
push offset Lt_0C80
call fb_StrAssign
add esp, 32
.L_055D:
sub esp, 4
push offset Lt_0C81
push offset Lt_0C82
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0C83
push dword ptr [ebp+16]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ebp+8], 41
jne .L_0568
sub esp, 12
push 0
push -1
push offset Lt_0C81
push -1
push offset Lt_0C84
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0C85], ebx
sub esp, 12
push 0
push -1
push offset Lt_0C82
push -1
push offset Lt_0C86
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [Lt_0C87], ebx
jmp .L_0567
.L_0568:
sub esp, 12
push 0
push -1
push offset Lt_0C82
push -1
push offset Lt_0C84
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [Lt_0C85], ebx
sub esp, 12
push 0
push -1
push offset Lt_0C81
push -1
push offset Lt_0C86
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0C87], eax
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
mov eax, dword ptr [Lt_0C87]
cmp dword ptr [eax], 4
jne .L_056E
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_03D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_056D
.L_056E:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_017D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_056D:
mov eax, dword ptr [Lt_0C85]
cmp dword ptr [eax], 4
jne .L_0577
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C84
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 5
push offset Lt_03D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0576
.L_0577:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 5
push offset Lt_017D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
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
mov dword ptr [Lt_0C8A], -1
mov eax, dword ptr [Lt_0C87]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0C85]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0581
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 5
push offset Lt_017D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ecx, [ebp-16]
push ecx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0580
.L_0581:
sub esp, 12
push 0
call HFINDFREEREG
add esp, 16
mov dword ptr [Lt_0C8D], eax
cmp dword ptr [Lt_0C8D], -1
jne .L_0587
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0C8D], eax
mov dword ptr [Lt_0C8A], 0
.L_0587:
.L_0586:
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0C8D]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C8E
call fb_StrAssign
add esp, 32
cmp dword ptr [Lt_0C8A], 0
jne .L_0589
sub esp, 12
push dword ptr [Lt_0C8E]
call HPUSH
add esp, 16
.L_0589:
.L_0588:
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C8E
push 5
push offset Lt_017D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C8E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 5
push offset Lt_017D
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
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
mov ecx, dword ptr [SYMB_DTYPETB+eax+8]
and ecx, dword ptr [ebp-8]
je .L_0595
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_031E
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_031D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0594
.L_0595:
mov eax, dword ptr [Lt_0C87]
cmp dword ptr [eax], 4
jne .L_0599
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_03D2
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0594
.L_0599:
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_017D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
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
add esp, 20
push dword ptr [ebp-40]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_0594:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+28], 0
jl .L_05A2
jg .L_0C90
cmp dword ptr [eax+24], 32
jbe .L_05A2
.L_0C90:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
add ebx, 4294967264
adc ecx, 4294967295
push ecx
push ebx
call fb_LongintToStr
add esp, 12
push eax
push -1
push offset Lt_0C83
call fb_StrAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push -1
push offset Lt_0C7F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_05A2:
.L_05A1:
cmp dword ptr [Lt_0C8A], 0
jne .L_05A8
sub esp, 12
push dword ptr [Lt_0C8E]
call HPOP
add esp, 16
.L_05A8:
.L_05A7:
jmp .L_056B
.L_057F:
mov eax, dword ptr [Lt_0C87]
cmp dword ptr [eax], 4
jne .L_05AA
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push -1
push offset Lt_0C80
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push -1
push offset Lt_0C7F
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05A9
.L_05AA:
mov eax, dword ptr [Lt_0C85]
cmp dword ptr [eax], 4
jne .L_05B5
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 6
push offset Lt_0183
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push -1
push offset Lt_0C80
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push -1
push offset Lt_0C7F
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push 6
push offset Lt_0183
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05A9
.L_05B5:
sub esp, 12
push 0
call HFINDFREEREG
add esp, 16
mov dword ptr [Lt_0C8D], eax
cmp dword ptr [Lt_0C8D], -1
jne .L_05C9
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0C8D], eax
mov dword ptr [Lt_0C8A], 0
jmp .L_05C8
.L_05C9:
mov dword ptr [Lt_0C8A], -1
.L_05C8:
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0C8D]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C8E
call fb_StrAssign
add esp, 32
cmp dword ptr [Lt_0C8A], 0
jne .L_05CB
sub esp, 12
push dword ptr [Lt_0C8E]
call HPUSH
add esp, 16
.L_05CB:
.L_05CA:
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C86
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C8E
push 5
push offset Lt_017D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C8E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C84
push -1
push offset Lt_0C80
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C83
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C8E
push -1
push offset Lt_0C7F
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-168]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-168]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-168]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_0C8E
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
push offset Lt_0C86
push 5
push offset Lt_017D
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
lea eax, [ebp-192]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-216]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-216]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-216]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_0C8A], 0
jne .L_05DF
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_05DF:
.L_05DE:
.L_05A9:
.L_056B:
jmp .L_0569
.L_056A:
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0C91
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0C81]
call HPUSH
add esp, 16
sub esp, 12
push dword ptr [Lt_0C82]
call HPUSH
add esp, 16
mov dword ptr [Lt_0C92], 0
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C93], eax
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C94], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0C95], eax
sub esp, 8
push 5
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C96], eax
sub esp, 8
push 0
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C97], eax
sub esp, 8
push 3
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C98], eax
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
cmp dword ptr [SYMB_DTYPETB+ecx+4], 4
je .L_05E5
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 4
jne .L_05E7
sub esp, 12
push 0
push 0
sub esp, 4
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0C83
call fb_StrAssign
add esp, 32
.L_05E7:
.L_05E6:
.L_05E5:
.L_05E4:
cmp dword ptr [Lt_0C95], 0
jne .L_05E9
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 4
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [Lt_0C98]
je .L_05EB
sub esp, 8
push dword ptr [Lt_0C83]
push offset Lt_0085
call HMOV
add esp, 16
mov dword ptr [Lt_0C95], -1
jmp .L_05EA
.L_05EB:
sub esp, 12
push dword ptr [Lt_0C83]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
add dword ptr [Lt_0C92], 4
.L_05EA:
jmp .L_05E8
.L_05E9:
sub esp, 8
push dword ptr [Lt_0C83]
push offset Lt_0085
call HMOV
add esp, 16
.L_05E8:
jmp .L_05E0
.L_05E1:
mov dword ptr [Lt_0C95], -1
.L_05E0:
cmp dword ptr [Lt_0C96], 0
je .L_05ED
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 4
je .L_05EF
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C92]
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05EE
.L_05EF:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C92]
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_05EE:
jmp .L_05EC
.L_05ED:
cmp dword ptr [Lt_0C93], 0
jne .L_05F7
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C92]
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_0498
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_05F6
.L_05F7:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_0C92]
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_0490
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_05F6:
.L_05EC:
cmp dword ptr [Lt_0C97], 0
je .L_05FF
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0601
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C92]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_0602
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0600
.L_0601:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C92]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_04A1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0600:
jmp .L_05FE
.L_05FF:
cmp dword ptr [Lt_0C94], 0
jne .L_060A
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C92]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 16
push offset Lt_0602
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0609
.L_060A:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0144
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [Lt_0C92]
add eax, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push 15
push offset Lt_04A1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_0609:
.L_05FE:
cmp dword ptr [ebp+8], 41
jne .L_0612
sub esp, 12
push offset Lt_0613
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 9
push offset Lt_0614
push -1
push offset Lt_0C7F
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0611
.L_0612:
sub esp, 12
push offset Lt_0617
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 9
push offset Lt_0618
push -1
push offset Lt_0C7F
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0611:
sub esp, 12
push offset Lt_061B
call OUTP
add esp, 16
sub esp, 8
push dword ptr [Lt_0C91]
push offset Lt_03CF
call HBRANCH
add esp, 16
cmp dword ptr [ebp+8], 41
jne .L_061D
sub esp, 12
push offset Lt_061E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_023B
call OUTP
add esp, 16
jmp .L_061C
.L_061D:
sub esp, 12
push offset Lt_061F
call OUTP
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0623
sub esp, 12
push offset Lt_0624
call OUTP
add esp, 16
jmp .L_0622
.L_0623:
sub esp, 12
push offset Lt_0625
call OUTP
add esp, 16
.L_0622:
.L_061C:
sub esp, 12
push dword ptr [Lt_0C91]
call HLABEL
add esp, 16
cmp dword ptr [Lt_0C95], 0
jne .L_0627
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0627:
.L_0626:
cmp dword ptr [Lt_0C97], 0
je .L_0629
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_062B
sub esp, 12
push offset Lt_062C
call OUTP
add esp, 16
jmp .L_062A
.L_062B:
sub esp, 12
push offset Lt_062D
call OUTP
add esp, 16
.L_062A:
jmp .L_0628
.L_0629:
cmp dword ptr [Lt_0C94], 0
jne .L_062F
sub esp, 12
push offset Lt_062C
call OUTP
add esp, 16
jmp .L_062E
.L_062F:
sub esp, 12
push offset Lt_062D
call OUTP
add esp, 16
.L_062E:
.L_0628:
cmp dword ptr [Lt_0C96], 0
je .L_0631
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0633
sub esp, 12
push offset Lt_0634
call OUTP
add esp, 16
jmp .L_0632
.L_0633:
sub esp, 12
push offset Lt_0635
call OUTP
add esp, 16
.L_0632:
jmp .L_0630
.L_0631:
cmp dword ptr [Lt_0C93], 0
jne .L_0637
sub esp, 12
push offset Lt_0634
call OUTP
add esp, 16
jmp .L_0636
.L_0637:
sub esp, 12
push offset Lt_0635
call OUTP
add esp, 16
.L_0636:
.L_0630:
sub esp, 12
push dword ptr [Lt_0C82]
call HPOP
add esp, 16
sub esp, 12
push dword ptr [Lt_0C81]
call HPOP
add esp, 16
.L_0569:
.L_055C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSHIFTL, .-HSHIFTL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0C82,12
.balign 4
	.lcomm	Lt_0C81,12
.balign 4
	.lcomm	Lt_0C83,12
.balign 4
	.lcomm	Lt_0C91,12
.balign 4
	.lcomm	Lt_0C7F,12
.balign 4
	.lcomm	Lt_0C80,12
.balign 4
	.lcomm	Lt_0C8D,4
.balign 4
	.lcomm	Lt_0C8A,4
.balign 4
	.lcomm	Lt_0C8E,12
.balign 4
	.lcomm	Lt_0C84,12
.balign 4
	.lcomm	Lt_0C86,12
.balign 4
	.lcomm	Lt_0C85,4
.balign 4
	.lcomm	Lt_0C87,4
.balign 4
	.lcomm	Lt_0C93,4
.balign 4
	.lcomm	Lt_0C94,4
.balign 4
	.lcomm	Lt_0C95,4
.balign 4
	.lcomm	Lt_0C96,4
.balign 4
	.lcomm	Lt_0C97,4
.balign 4
	.lcomm	Lt_0C98,4
.balign 4
	.lcomm	Lt_0C92,4

.section .text
.balign 16
HSHIFTI:
.type HSHIFTI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_063D
cmp dword ptr [ebp+8], 41
jne .L_063F
sub esp, 12
push 0
push 4
push offset Lt_0640
push -1
push offset Lt_0C9D
call fb_StrAssign
add esp, 32
jmp .L_063E
.L_063F:
sub esp, 12
push 0
push 4
push offset Lt_0641
push -1
push offset Lt_0C9D
call fb_StrAssign
add esp, 32
.L_063E:
jmp .L_063C
.L_063D:
cmp dword ptr [ebp+8], 41
jne .L_0643
sub esp, 12
push 0
push 4
push offset Lt_0644
push -1
push offset Lt_0C9D
call fb_StrAssign
add esp, 32
jmp .L_0642
.L_0643:
sub esp, 12
push 0
push 4
push offset Lt_0645
push -1
push offset Lt_0C9D
call fb_StrAssign
add esp, 32
.L_0642:
.L_063C:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0C9E
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov dword ptr [Lt_0C9F], 0
mov dword ptr [Lt_0CA0], 0
mov dword ptr [Lt_0CA1], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
jne .L_0647
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CA2
push dword ptr [ebp+16]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0C9E
push -1
push offset Lt_0CA3
call fb_StrAssign
add esp, 32
jmp .L_0646
.L_0647:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0CA4], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0CA5], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 4
jne .L_0649
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [Lt_0CA6], ebx
jmp .L_0648
.L_0649:
mov dword ptr [Lt_0CA6], -1
.L_0648:
sub esp, 8
push 3
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0C9F], eax
cmp dword ptr [Lt_0C9F], 0
je .L_064B
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_064D
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0CA7
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push dword ptr [Lt_0CA7]
call HPUSH
add esp, 16
.L_064D:
.L_064C:
jmp .L_064A
.L_064B:
mov eax, dword ptr [Lt_0CA6]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0CA5]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_064E
mov dword ptr [Lt_0CA1], -1
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_064E:
.L_064A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 4
je .L_0650
sub esp, 8
push -1
push 0
push 0
push 2
push offset Lt_0CA7
push dword ptr [ebp+16]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0CA7]
push offset Lt_0079
call HMOV
add esp, 16
jmp .L_064F
.L_0650:
cmp dword ptr [Lt_0CA6], 3
je .L_0652
sub esp, 8
mov ebx, dword ptr [DTYPETB+128]
sal ebx, 3
add ebx, dword ptr [Lt_0CA6]
lea eax, [RNAMETB+ebx*8]
push eax
push offset Lt_0085
call HMOV
add esp, 16
.L_0652:
.L_0651:
.L_064F:
cmp dword ptr [Lt_0C9F], 0
je .L_0654
cmp dword ptr [Lt_0CA4], 0
jne .L_0656
mov dword ptr [Lt_0CA0], -1
sub esp, 12
push offset Lt_04ED
call OUTP
add esp, 16
jmp .L_0655
.L_0656:
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0655:
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
sal ebx, 4
mov eax, dword ptr [DTYPETB+ebx]
sal eax, 6
lea ebx, [RNAMETB+eax+40]
push ebx
push -1
push offset Lt_0CA3
call fb_StrAssign
add esp, 32
jmp .L_0653
.L_0654:
sub esp, 12
push 0
push -1
push offset Lt_0C9E
push -1
push offset Lt_0CA3
call fb_StrAssign
add esp, 32
.L_0653:
sub esp, 12
push 0
push 3
push offset Lt_0079
push -1
push offset Lt_0CA2
call fb_StrAssign
add esp, 32
.L_0646:
sub esp, 12
push 0
push -1
push offset Lt_0C9D
push -1
push offset Lt_0CA7
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016E
push -1
push offset Lt_0CA7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CA3
push -1
push offset Lt_0CA7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CA7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CA2
push -1
push offset Lt_0CA7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CA7]
call OUTP
add esp, 16
cmp dword ptr [Lt_0C9F], 0
je .L_0658
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
je .L_065A
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
cmp dword ptr [Lt_0CA0], 0
je .L_065C
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
.L_065C:
.L_065B:
.L_065A:
.L_0659:
sub esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
sal eax, 4
mov ebx, dword ptr [DTYPETB+eax]
sal ebx, 6
lea eax, [RNAMETB+ebx+40]
push eax
push dword ptr [Lt_0C9E]
call HMOV
add esp, 16
.L_0658:
.L_0657:
cmp dword ptr [Lt_0CA0], 0
je .L_065E
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_065E:
.L_065D:
cmp dword ptr [Lt_0CA1], 0
je .L_0660
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0660:
.L_065F:
.L_0639:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSHIFTI, .-HSHIFTI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CA0,4
.balign 4
	.lcomm	Lt_0CA1,4
.balign 4
	.lcomm	Lt_0CA4,4
.balign 4
	.lcomm	Lt_0CA5,4
.balign 4
	.lcomm	Lt_0CA6,4
.balign 4
	.lcomm	Lt_0C9F,4
.balign 4
	.lcomm	Lt_0CA7,12
.balign 4
	.lcomm	Lt_0C9E,12
.balign 4
	.lcomm	Lt_0CA2,12
.balign 4
	.lcomm	Lt_0CA3,12
.balign 4
	.lcomm	Lt_0C9D,12

.section .text
.balign 16
_EMITSHLL:
.type _EMITSHLL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0661:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call HSHIFTL
add esp, 16
.L_0662:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSHLL, .-_EMITSHLL
.cfi_endproc
.balign 16
_EMITSHLI:
.type _EMITSHLI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0663:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 41
call HSHIFTI
add esp, 16
.L_0664:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSHLI, .-_EMITSHLI
.cfi_endproc
.balign 16
_EMITSHRL:
.type _EMITSHRL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0665:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call HSHIFTL
add esp, 16
.L_0666:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSHRL, .-_EMITSHRL
.cfi_endproc
.balign 16
_EMITSHRI:
.type _EMITSHRI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0667:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 42
call HSHIFTI
add esp, 16
.L_0668:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSHRI, .-_EMITSHRI
.cfi_endproc
.balign 16
_EMITANDL:
.type _EMITANDL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0669:
sub esp, 4
push offset Lt_0CAA
push offset Lt_0CAB
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CAC
push offset Lt_0CAD
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_066B
push -1
push offset Lt_0CAE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CAB
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CAD
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CAE]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_066B
push -1
push offset Lt_0CAE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CAA
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CAC
push -1
push offset Lt_0CAE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CAE]
call OUTP
add esp, 16
.L_066A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITANDL, .-_EMITANDL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CAB,12
.balign 4
	.lcomm	Lt_0CAA,12
.balign 4
	.lcomm	Lt_0CAD,12
.balign 4
	.lcomm	Lt_0CAC,12
.balign 4
	.lcomm	Lt_0CAE,12

.section .text
.balign 16
_EMITANDI:
.type _EMITANDI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_066C:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CAF
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CB0
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_066B
push -1
push offset Lt_0CB1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CAF
push -1
push offset Lt_0CB1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CB1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB0
push -1
push offset Lt_0CB1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CB1]
call OUTP
add esp, 16
.L_066D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITANDI, .-_EMITANDI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CAF,12
.balign 4
	.lcomm	Lt_0CB0,12
.balign 4
	.lcomm	Lt_0CB1,12

.section .text
.balign 16
_EMITORL:
.type _EMITORL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_066E:
sub esp, 4
push offset Lt_0CB2
push offset Lt_0CB3
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CB4
push offset Lt_0CB5
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CB6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB3
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB5
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CB6]
call OUTP
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CB6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB2
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB4
push -1
push offset Lt_0CB6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CB6]
call OUTP
add esp, 16
.L_066F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITORL, .-_EMITORL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CB3,12
.balign 4
	.lcomm	Lt_0CB2,12
.balign 4
	.lcomm	Lt_0CB5,12
.balign 4
	.lcomm	Lt_0CB4,12
.balign 4
	.lcomm	Lt_0CB6,12

.section .text
.balign 16
_EMITORI:
.type _EMITORI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0671:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CB7
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CB8
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CB9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB7
push -1
push offset Lt_0CB9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CB9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CB8
push -1
push offset Lt_0CB9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CB9]
call OUTP
add esp, 16
.L_0672:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITORI, .-_EMITORI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CB7,12
.balign 4
	.lcomm	Lt_0CB8,12
.balign 4
	.lcomm	Lt_0CB9,12

.section .text
.balign 16
_EMITXORL:
.type _EMITXORL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0673:
sub esp, 4
push offset Lt_0CBA
push offset Lt_0CBB
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CBC
push offset Lt_0CBD
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CBE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CBB
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CBD
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CBE]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CBE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CBA
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CBC
push -1
push offset Lt_0CBE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CBE]
call OUTP
add esp, 16
.L_0674:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITXORL, .-_EMITXORL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CBB,12
.balign 4
	.lcomm	Lt_0CBA,12
.balign 4
	.lcomm	Lt_0CBD,12
.balign 4
	.lcomm	Lt_0CBC,12
.balign 4
	.lcomm	Lt_0CBE,12

.section .text
.balign 16
_EMITXORI:
.type _EMITXORI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0675:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CBF
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CC0
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CC1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CBF
push -1
push offset Lt_0CC1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CC1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC0
push -1
push offset Lt_0CC1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC1]
call OUTP
add esp, 16
.L_0676:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITXORI, .-_EMITXORI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CBF,12
.balign 4
	.lcomm	Lt_0CC0,12
.balign 4
	.lcomm	Lt_0CC1,12

.section .text
.balign 16
_EMITEQVL:
.type _EMITEQVL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0677:
sub esp, 4
push offset Lt_0CC2
push offset Lt_0CC3
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CC4
push offset Lt_0CC5
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CC6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC3
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC5
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC6]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CC6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC2
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC4
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC6]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CC6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC3
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC6]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CC6
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC2
push -1
push offset Lt_0CC6
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC6]
call OUTP
add esp, 16
.L_0678:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITEQVL, .-_EMITEQVL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CC3,12
.balign 4
	.lcomm	Lt_0CC2,12
.balign 4
	.lcomm	Lt_0CC5,12
.balign 4
	.lcomm	Lt_0CC4,12
.balign 4
	.lcomm	Lt_0CC6,12

.section .text
.balign 16
_EMITEQVI:
.type _EMITEQVI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_067A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CC7
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CC8
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CC9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC7
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC8
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CC9]
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_067D
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CC9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC7
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0004
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
jmp .L_067C
.L_067D:
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CC9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CC7
push -1
push offset Lt_0CC9
call fb_StrConcatAssign
add esp, 32
.L_067C:
sub esp, 12
push dword ptr [Lt_0CC9]
call OUTP
add esp, 16
.L_067B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITEQVI, .-_EMITEQVI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CC7,12
.balign 4
	.lcomm	Lt_0CC8,12
.balign 4
	.lcomm	Lt_0CC9,12

.section .text
.balign 16
_EMITIMPL:
.type _EMITIMPL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_067E:
sub esp, 4
push offset Lt_0CCA
push offset Lt_0CCB
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CCC
push offset Lt_0CCD
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCB
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CCE]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCA
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CCE]
call OUTP
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCB
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCD
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CCE]
call OUTP
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CCE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCA
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCC
push -1
push offset Lt_0CCE
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CCE]
call OUTP
add esp, 16
.L_067F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITIMPL, .-_EMITIMPL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CCB,12
.balign 4
	.lcomm	Lt_0CCA,12
.balign 4
	.lcomm	Lt_0CCD,12
.balign 4
	.lcomm	Lt_0CCC,12
.balign 4
	.lcomm	Lt_0CCE,12

.section .text
.balign 16
_EMITIMPI:
.type _EMITIMPI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0680:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CCF
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CD0
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_0683
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CD1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCF
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0004
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
jmp .L_0682
.L_0683:
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0CD1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCF
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
.L_0682:
sub esp, 12
push dword ptr [Lt_0CD1]
call OUTP
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0670
push -1
push offset Lt_0CD1
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CCF
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD0
push -1
push offset Lt_0CD1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CD1]
call OUTP
add esp, 16
.L_0681:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITIMPI, .-_EMITIMPI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CCF,12
.balign 4
	.lcomm	Lt_0CD0,12
.balign 4
	.lcomm	Lt_0CD1,12

.section .text
.balign 16
_EMITATN2:
.type _EMITATN2, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0684:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CD2
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0687
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0CD3
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD2
push -1
push offset Lt_0CD3
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CD3]
call OUTP
add esp, 16
jmp .L_0686
.L_0687:
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
.L_0686:
sub esp, 12
push offset Lt_0689
call OUTP
add esp, 16
.L_0685:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITATN2, .-_EMITATN2
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CD2,12
.balign 4
	.lcomm	Lt_0CD3,12

.section .text
.balign 16
_EMITPOW:
.type _EMITPOW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_068A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CD4
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_068D
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0CD5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD4
push -1
push offset Lt_0CD5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CD5]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
.L_068D:
.L_068C:
sub esp, 12
push offset Lt_068E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_068F
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0691
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0692
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0693
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0303
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0695
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0696
call OUTP
add esp, 16
.L_068B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOW, .-_EMITPOW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CD4,12
.balign 4
	.lcomm	Lt_0CD5,12

.section .text
.balign 16
HCMPL:
.type HCMPL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0697:
sub esp, 4
push offset Lt_0CD6
push offset Lt_0CD7
push dword ptr [ebp+28]
call HPREPOPERAND64
add esp, 16
sub esp, 4
push offset Lt_0CD8
push offset Lt_0CD9
push dword ptr [ebp+32]
call HPREPOPERAND64
add esp, 16
cmp dword ptr [ebp+12], 0
jne .L_069A
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0CDA
call fb_StrAssign
add esp, 32
jmp .L_0699
.L_069A:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0CDA
call fb_StrAssign
add esp, 32
.L_0699:
sub esp, 12
push 0
push 5
push offset Lt_02FC
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD6
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD8
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CDB]
call OUTP
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0CDC
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 0
je .L_069C
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CDD
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push offset Lt_0310
push dword ptr [Lt_0CDD]
call HMOV
add esp, 16
.L_069C:
.L_069B:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+36], 0
jne .L_06A0
sub esp, 8
push dword ptr [Lt_0CDA]
push dword ptr [Lt_0CDB]
call HBRANCH
add esp, 16
jmp .L_069F
.L_06A0:
sub esp, 8
push dword ptr [Lt_0CDC]
push dword ptr [Lt_0CDB]
call HBRANCH
add esp, 16
.L_069F:
sub esp, 8
push 0
push dword ptr [ebp+20]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_06A2
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+20]
push 2
push offset Lt_069D
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CDC]
push dword ptr [Lt_0CDB]
call HBRANCH
add esp, 16
.L_06A2:
.L_06A1:
sub esp, 12
push 0
push 5
push offset Lt_02FC
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD7
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CD9
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CDB]
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+24]
push 2
push offset Lt_069D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CDA]
push dword ptr [Lt_0CDB]
call HBRANCH
add esp, 16
sub esp, 12
push dword ptr [Lt_0CDC]
call HLABEL
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_06A6
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CDB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDD
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDD
push -1
push offset Lt_0CDB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CDB]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0CDA]
call HLABEL
add esp, 16
.L_06A6:
.L_06A5:
.L_0698:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCMPL, .-HCMPL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CD7,12
.balign 4
	.lcomm	Lt_0CD6,12
.balign 4
	.lcomm	Lt_0CD9,12
.balign 4
	.lcomm	Lt_0CD8,12
.balign 4
	.lcomm	Lt_0CDD,12
.balign 4
	.lcomm	Lt_0CDB,12
.balign 4
	.lcomm	Lt_0CDA,12
.balign 4
	.lcomm	Lt_0CDC,12

.section .text
.balign 16
HCMPI:
.type HCMPI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_06A7:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CDE
push dword ptr [ebp+20]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CDF
push dword ptr [ebp+24]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ebp+12], 0
jne .L_06AA
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0CE0
call fb_StrAssign
add esp, 32
jmp .L_06A9
.L_06AA:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0CE0
call fb_StrAssign
add esp, 32
.L_06A9:
mov dword ptr [Lt_0CE1], 0
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
mov dword ptr [Lt_0CE1], -1
.L_06AE:
.L_06AD:
.L_06AC:
.L_06AB:
cmp dword ptr [Lt_0CE1], 0
je .L_06B0
sub esp, 12
push 0
push 6
push offset Lt_06B1
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDE
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDE
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
jmp .L_06AF
.L_06B0:
sub esp, 12
push 0
push 5
push offset Lt_02FC
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDE
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CDF
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
.L_06AF:
cmp dword ptr [ebp+8], 0
jne .L_06B3
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ecx, [ebp-12]
push ecx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CE0]
push dword ptr [Lt_0CE5]
call HBRANCH
add esp, 16
jmp .L_06A8
.L_06B3:
.L_06B2:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CE6
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ENV+112]
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
sub esp, 12
push 0
push 0
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0CE9
call fb_StrAssign
add esp, 32
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
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0CEC], eax
cmp dword ptr [Lt_0CEC], 0
jne .L_06BA
sub esp, 12
push 0
push 11
push offset Lt_06BB
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
.L_06BA:
.L_06B9:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_06BD
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
cmp dword ptr [Lt_0CEC], 0
jne .L_06C1
sub esp, 12
push 0
push 11
push offset Lt_06BB
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
jmp .L_06C0
.L_06C1:
sub esp, 8
push offset Lt_0082
push dword ptr [Lt_0CE6]
call HMOV
add esp, 16
.L_06C0:
jmp .L_06B7
.L_06B8:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push offset Lt_0CE9
push -1
sub esp, 4
push 2
push offset Lt_016E
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
.L_06B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
je .L_06C6
sub esp, 12
push 0
push 5
push offset Lt_0565
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_06C7
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0469
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
.L_06C6:
.L_06C5:
jmp .L_06B5
.L_06B6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_06C9
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_06C7
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
jmp .L_06C8
.L_06C9:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_06CA
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
.L_06C8:
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CE0]
push dword ptr [Lt_0CE5]
call HBRANCH
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CE5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CE6
push -1
push offset Lt_0CE5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CE5]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0CE0]
call HLABEL
add esp, 16
.L_06B5:
.L_06A8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCMPI, .-HCMPI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CE6,12
.balign 4
	.lcomm	Lt_0CE9,12
.balign 4
	.lcomm	Lt_0CDE,12
.balign 4
	.lcomm	Lt_0CDF,12
.balign 4
	.lcomm	Lt_0CE5,12
.balign 4
	.lcomm	Lt_0CE0,12
.balign 4
	.lcomm	Lt_0CEC,4
.balign 4
	.lcomm	Lt_0CE1,4

.section .text
.balign 16
HCMPF:
.type HCMPF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_06CC:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CED
push dword ptr [ebp+24]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CEE
push dword ptr [ebp+28]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ebp+12], 0
jne .L_06CF
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_0CEF
call fb_StrAssign
add esp, 32
jmp .L_06CE
.L_06CF:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0CEF
call fb_StrAssign
add esp, 32
.L_06CE:
cmp dword ptr [ENV+112], 3
jl .L_06D1
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06D3
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06D4
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
jmp .L_06D2
.L_06D3:
sub esp, 12
push 0
push 5
push offset Lt_03A3
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CEE
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06D4
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
.L_06D2:
jmp .L_06D0
.L_06D1:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 4
jne .L_06D7
sub esp, 12
push offset Lt_06D8
call OUTP
add esp, 16
jmp .L_06D6
.L_06D7:
sub esp, 12
push 0
push 7
push offset Lt_06D9
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CEE
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
.L_06D6:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0CF1], eax
cmp dword ptr [ebp+8], 0
je .L_06DB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
cmp ebx, 5
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [Lt_0CF1], ebx
.L_06DB:
.L_06DA:
cmp dword ptr [Lt_0CF1], 0
jne .L_06DD
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_06DD:
.L_06DC:
sub esp, 12
push offset Lt_03CD
call OUTP
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+20]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_06DF
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+20]
push 10
push offset Lt_06E0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
jmp .L_06DE
.L_06DF:
sub esp, 12
push offset Lt_06E2
call OUTP
add esp, 16
.L_06DE:
cmp dword ptr [Lt_0CF1], 0
jne .L_06E4
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_06E4:
.L_06E3:
.L_06D0:
cmp dword ptr [ebp+8], 0
jne .L_06E6
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CEF]
push dword ptr [Lt_0CF0]
call HBRANCH
add esp, 16
jmp .L_06CD
.L_06E6:
.L_06E5:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0CF3
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
cmp dword ptr [ENV+112], 1
jl .L_06E9
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0CF4
call fb_StrAssign
add esp, 32
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
sub esp, 8
push 0
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0CF7], eax
cmp dword ptr [Lt_0CF7], 0
jne .L_06ED
sub esp, 12
push 0
push 11
push offset Lt_06BB
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
.L_06ED:
.L_06EC:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_06EE
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
cmp dword ptr [Lt_0CF7], 0
jne .L_06F2
sub esp, 12
push 0
push 11
push offset Lt_06BB
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
jmp .L_06F1
.L_06F2:
sub esp, 8
push offset Lt_0082
push dword ptr [Lt_0CF3]
call HMOV
add esp, 16
.L_06F1:
jmp .L_06EA
.L_06EB:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push offset Lt_0CF4
push -1
sub esp, 4
push 2
push offset Lt_016E
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_06BC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
.L_06EA:
sub esp, 12
push 0
push 5
push offset Lt_0565
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_06C7
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0469
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
jmp .L_06E8
.L_06E9:
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_06CA
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_069D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0CEF]
push dword ptr [Lt_0CF0]
call HBRANCH
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0CF0
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0CF3
push -1
push offset Lt_0CF0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0CF0]
call OUTP
add esp, 16
sub esp, 12
push dword ptr [Lt_0CEF]
call HLABEL
add esp, 16
.L_06E8:
.L_06CD:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCMPF, .-HCMPF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CF3,12
.balign 4
	.lcomm	Lt_0CF4,12
.balign 4
	.lcomm	Lt_0CED,12
.balign 4
	.lcomm	Lt_0CEE,12
.balign 4
	.lcomm	Lt_0CF0,12
.balign 4
	.lcomm	Lt_0CEF,12
.balign 4
	.lcomm	Lt_0CF1,4
.balign 4
	.lcomm	Lt_0CF7,4

.section .text
.balign 16
_EMITCGTL:
.type _EMITCGTL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_06FC
sub esp, 12
push 0
push 2
push offset Lt_06FD
push -1
push offset Lt_0CF9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FE
push -1
push offset Lt_0CFA
call fb_StrAssign
add esp, 32
jmp .L_06FB
.L_06FC:
sub esp, 12
push 0
push 2
push offset Lt_06FF
push -1
push offset Lt_0CF9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0700
push -1
push offset Lt_0CFA
call fb_StrAssign
add esp, 32
.L_06FB:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_06FF
push dword ptr [Lt_0CFA]
push dword ptr [Lt_0CF9]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_06F8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGTL, .-_EMITCGTL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CF9,12
.balign 4
	.lcomm	Lt_0CFA,12

.section .text
.balign 16
_EMITCGTI:
.type _EMITCGTI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0706
sub esp, 12
push 0
push 2
push offset Lt_06FD
push -1
push offset Lt_0CFC
call fb_StrAssign
add esp, 32
jmp .L_0705
.L_0706:
sub esp, 12
push 0
push 2
push offset Lt_06FF
push -1
push offset Lt_0CFC
call fb_StrAssign
add esp, 32
.L_0705:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [Lt_0CFC]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_0702:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGTI, .-_EMITCGTI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CFC,12

.section .text
.balign 16
_EMITCGTF:
.type _EMITCGTF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0707:
cmp dword ptr [ENV+112], 3
jl .L_070A
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0700
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_0709
.L_070A:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_070C
push offset Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_0709:
.L_0708:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGTF, .-_EMITCGTF
.cfi_endproc
.balign 16
_EMITCLTL:
.type _EMITCLTL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0712
sub esp, 12
push 0
push 2
push offset Lt_06FE
push -1
push offset Lt_0CFE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FD
push -1
push offset Lt_0CFF
call fb_StrAssign
add esp, 32
jmp .L_0711
.L_0712:
sub esp, 12
push 0
push 2
push offset Lt_0700
push -1
push offset Lt_0CFE
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FF
push -1
push offset Lt_0CFF
call fb_StrAssign
add esp, 32
.L_0711:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0700
push dword ptr [Lt_0CFF]
push dword ptr [Lt_0CFE]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_070E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLTL, .-_EMITCLTL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0CFE,12
.balign 4
	.lcomm	Lt_0CFF,12

.section .text
.balign 16
_EMITCLTI:
.type _EMITCLTI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0718
sub esp, 12
push 0
push 2
push offset Lt_06FE
push -1
push offset Lt_0D01
call fb_StrAssign
add esp, 32
jmp .L_0717
.L_0718:
sub esp, 12
push 0
push 2
push offset Lt_0700
push -1
push offset Lt_0D01
call fb_StrAssign
add esp, 32
.L_0717:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [Lt_0D01]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_0714:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLTI, .-_EMITCLTI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D01,12

.section .text
.balign 16
_EMITCLTF:
.type _EMITCLTF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0719:
cmp dword ptr [ENV+112], 3
jl .L_071C
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_06FF
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_071B
.L_071C:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_071E
push offset Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_071B:
.L_071A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLTF, .-_EMITCLTF
.cfi_endproc
.balign 16
_EMITCEQL:
.type _EMITCEQL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_071F:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0722
push offset Lt_0000
push offset Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_0720:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCEQL, .-_EMITCEQL
.cfi_endproc
.balign 16
_EMITCEQI:
.type _EMITCEQI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0723:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0722
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_0724:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCEQI, .-_EMITCEQI
.cfi_endproc
.balign 16
_EMITCEQF:
.type _EMITCEQF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0725:
cmp dword ptr [ENV+112], 3
jl .L_0728
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_0727
.L_0728:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0729
push offset Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_0727:
.L_0726:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCEQF, .-_EMITCEQF
.cfi_endproc
.balign 16
_EMITCNEL:
.type _EMITCNEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_072A:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0721
push offset Lt_0000
push offset Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_072B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCNEL, .-_EMITCNEL
.cfi_endproc
.balign 16
_EMITCNEI:
.type _EMITCNEI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_072C:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0721
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_072D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCNEI, .-_EMITCNEI
.cfi_endproc
.balign 16
_EMITCNEF:
.type _EMITCNEF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_072E:
cmp dword ptr [ENV+112], 3
jl .L_0731
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_0730
.L_0731:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0729
push offset Lt_070B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_0730:
.L_072F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCNEF, .-_EMITCNEF
.cfi_endproc
.balign 16
_EMITCLEL:
.type _EMITCLEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0737
sub esp, 12
push 0
push 2
push offset Lt_06FE
push -1
push offset Lt_0D03
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FD
push -1
push offset Lt_0D04
call fb_StrAssign
add esp, 32
jmp .L_0736
.L_0737:
sub esp, 12
push 0
push 2
push offset Lt_0700
push -1
push offset Lt_0D03
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FF
push -1
push offset Lt_0D04
call fb_StrAssign
add esp, 32
.L_0736:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0738
push dword ptr [Lt_0D04]
push dword ptr [Lt_0D03]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_0733:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLEL, .-_EMITCLEL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D03,12
.balign 4
	.lcomm	Lt_0D04,12

.section .text
.balign 16
_EMITCLEI:
.type _EMITCLEI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_073E
sub esp, 12
push 0
push 3
push offset Lt_073F
push -1
push offset Lt_0D06
call fb_StrAssign
add esp, 32
jmp .L_073D
.L_073E:
sub esp, 12
push 0
push 3
push offset Lt_0738
push -1
push offset Lt_0D06
call fb_StrAssign
add esp, 32
.L_073D:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [Lt_0D06]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_073A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLEI, .-_EMITCLEI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D06,12

.section .text
.balign 16
_EMITCLEF:
.type _EMITCLEF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0740:
cmp dword ptr [ENV+112], 3
jl .L_0743
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0744
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_0742
.L_0743:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_070C
push offset Lt_071D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_0742:
.L_0741:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCLEF, .-_EMITCLEF
.cfi_endproc
.balign 16
_EMITCGEL:
.type _EMITCGEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_074A
sub esp, 12
push 0
push 2
push offset Lt_06FD
push -1
push offset Lt_0D08
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_06FE
push -1
push offset Lt_0D09
call fb_StrAssign
add esp, 32
jmp .L_0749
.L_074A:
sub esp, 12
push 0
push 2
push offset Lt_06FF
push -1
push offset Lt_0D08
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0700
push -1
push offset Lt_0D09
call fb_StrAssign
add esp, 32
.L_0749:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0744
push dword ptr [Lt_0D09]
push dword ptr [Lt_0D08]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPL
add esp, 32
.L_0746:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGEL, .-_EMITCGEL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D08,12
.balign 4
	.lcomm	Lt_0D09,12

.section .text
.balign 16
_EMITCGEI:
.type _EMITCGEI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0750
sub esp, 12
push 0
push 3
push offset Lt_0751
push -1
push offset Lt_0D0B
call fb_StrAssign
add esp, 32
jmp .L_074F
.L_0750:
sub esp, 12
push 0
push 3
push offset Lt_0744
push -1
push offset Lt_0D0B
call fb_StrAssign
add esp, 32
.L_074F:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [Lt_0D0B]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPI
add esp, 32
.L_074C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGEI, .-_EMITCGEI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D0B,12

.section .text
.balign 16
_EMITCGEF:
.type _EMITCGEF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0752:
cmp dword ptr [ENV+112], 3
jl .L_0755
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0738
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
jmp .L_0754
.L_0755:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push offset Lt_0000
push offset Lt_0744
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCMPF
add esp, 32
.L_0754:
.L_0753:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCGEF, .-_EMITCGEF
.cfi_endproc
.balign 16
_EMITNEGL:
.type _EMITNEGL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0756:
sub esp, 4
push offset Lt_0D0C
push offset Lt_0D0D
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0758
push -1
push offset Lt_0D0E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D0D
push -1
push offset Lt_0D0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D0E]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_044C
push -1
push offset Lt_0D0E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D0C
push -1
push offset Lt_0D0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_02FD
push -1
push offset Lt_0D0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D0E]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0758
push -1
push offset Lt_0D0E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D0C
push -1
push offset Lt_0D0E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D0E]
call OUTP
add esp, 16
.L_0757:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNEGL, .-_EMITNEGL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D0D,12
.balign 4
	.lcomm	Lt_0D0C,12
.balign 4
	.lcomm	Lt_0D0E,12

.section .text
.balign 16
_EMITNEGI:
.type _EMITNEGI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0759:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D0F
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0758
push -1
push offset Lt_0D10
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D0F
push -1
push offset Lt_0D10
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D10]
call OUTP
add esp, 16
.L_075A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNEGI, .-_EMITNEGI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D0F,12
.balign 4
	.lcomm	Lt_0D10,12

.section .text
.balign 16
_EMITNEGF:
.type _EMITNEGF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_075B:
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
.L_075C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNEGF, .-_EMITNEGF
.cfi_endproc
.balign 16
_EMITNOTL:
.type _EMITNOTL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_075E:
sub esp, 4
push offset Lt_0D11
push offset Lt_0D12
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0D13
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D12
push -1
push offset Lt_0D13
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D13]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0D13
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D11
push -1
push offset Lt_0D13
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D13]
call OUTP
add esp, 16
.L_075F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNOTL, .-_EMITNOTL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D12,12
.balign 4
	.lcomm	Lt_0D11,12
.balign 4
	.lcomm	Lt_0D13,12

.section .text
.balign 16
_EMITNOTI:
.type _EMITNOTI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0760:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D14
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 1
jne .L_0763
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0D15
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D14
push -1
push offset Lt_0D15
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D15
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0004
push -1
push offset Lt_0D15
call fb_StrConcatAssign
add esp, 32
jmp .L_0762
.L_0763:
sub esp, 12
push 0
push 5
push offset Lt_0679
push -1
push offset Lt_0D15
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D14
push -1
push offset Lt_0D15
call fb_StrConcatAssign
add esp, 32
.L_0762:
sub esp, 12
push dword ptr [Lt_0D15]
call OUTP
add esp, 16
.L_0761:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITNOTI, .-_EMITNOTI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D14,12
.balign 4
	.lcomm	Lt_0D15,12

.section .text
.balign 16
_EMITABSL:
.type _EMITABSL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0764:
sub esp, 4
push offset Lt_0D16
push offset Lt_0D17
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0D18], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D18]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D19
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0D18]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D1A], eax
cmp dword ptr [Lt_0D1A], 0
jne .L_0767
sub esp, 12
push dword ptr [Lt_0D19]
call HPUSH
add esp, 16
.L_0767:
.L_0766:
sub esp, 8
push dword ptr [Lt_0D16]
push dword ptr [Lt_0D19]
call HMOV
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_031D
push -1
push offset Lt_0D1B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D19
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_031E
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D1B]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0D1B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D17
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D19
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D1B]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0D1B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D16
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D19
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D1B]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0468
push -1
push offset Lt_0D1B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D17
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D19
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D1B]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0469
push -1
push offset Lt_0D1B
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D16
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D19
push -1
push offset Lt_0D1B
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D1B]
call OUTP
add esp, 16
cmp dword ptr [Lt_0D1A], 0
jne .L_0769
sub esp, 12
push dword ptr [Lt_0D19]
call HPOP
add esp, 16
.L_0769:
.L_0768:
.L_0765:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITABSL, .-_EMITABSL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D17,12
.balign 4
	.lcomm	Lt_0D16,12
.balign 4
	.lcomm	Lt_0D18,4
.balign 4
	.lcomm	Lt_0D1A,4
.balign 4
	.lcomm	Lt_0D19,12
.balign 4
	.lcomm	Lt_0D1B,12

.section .text
.balign 16
_EMITABSI:
.type _EMITABSI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_076A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D1D
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0D1E], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D1E]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D1F
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0D1E]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D20], eax
cmp dword ptr [Lt_0D20], 0
jne .L_076D
sub esp, 12
push dword ptr [Lt_0D1F]
call HPUSH
add esp, 16
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov dword ptr [Lt_0D21], ebx
sub esp, 8
push dword ptr [Lt_0D1D]
push dword ptr [Lt_0D1F]
call HMOV
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_031D
push -1
push offset Lt_0D22
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D1F
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_0D21]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D22]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_03D2
push -1
push offset Lt_0D22
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D1D
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D1F
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D22]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0468
push -1
push offset Lt_0D22
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D1D
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D1F
push -1
push offset Lt_0D22
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D22]
call OUTP
add esp, 16
cmp dword ptr [Lt_0D20], 0
jne .L_0771
sub esp, 12
push dword ptr [Lt_0D1F]
call HPOP
add esp, 16
.L_0771:
.L_0770:
.L_076B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITABSI, .-_EMITABSI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D1D,12
.balign 4
	.lcomm	Lt_0D1E,4
.balign 4
	.lcomm	Lt_0D20,4
.balign 4
	.lcomm	Lt_0D1F,12
.balign 4
	.lcomm	Lt_0D21,4
.balign 4
	.lcomm	Lt_0D22,12

.section .text
.balign 16
_EMITABSF:
.type _EMITABSF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0772:
sub esp, 12
push offset Lt_068E
call OUTP
add esp, 16
.L_0773:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITABSF, .-_EMITABSF
.cfi_endproc
.balign 16
_EMITSGNL:
.type _EMITSGNL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 136
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
sub esp, 4
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 8
push dword ptr [ebp-52]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-56], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-52]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-56], 0
jne .L_0777
sub esp, 12
push dword ptr [ebp-48]
call HPUSH
add esp, 16
.L_0777:
.L_0776:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call HMOV
add esp, 16
sub esp, 12
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-24]
call HMOV
add esp, 16
sub esp, 8
push dword ptr [ebp-36]
push offset Lt_077B
call HBRANCH
add esp, 16
sub esp, 8
push offset Lt_0004
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-24]
call HMOV
add esp, 16
sub esp, 8
push dword ptr [ebp-36]
push offset Lt_077C
call HBRANCH
add esp, 16
sub esp, 12
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-128]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-36]
push offset Lt_0780
call HBRANCH
add esp, 16
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 12
push dword ptr [ebp-36]
call HLABEL
add esp, 16
cmp dword ptr [ebp-56], 0
jne .L_0782
sub esp, 12
push dword ptr [ebp-48]
call HPOP
add esp, 16
.L_0782:
.L_0781:
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0775:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSGNL, .-_EMITSGNL
.cfi_endproc
.balign 16
_EMITSGNI:
.type _EMITSGNI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
.L_0783:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-24]
push offset Lt_0788
call HBRANCH
add esp, 16
sub esp, 8
push offset Lt_0004
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 8
push dword ptr [ebp-24]
push offset Lt_077C
call HBRANCH
add esp, 16
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call HLABEL
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0784:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSGNI, .-_EMITSGNI
.cfi_endproc
.balign 16
_EMITSGNF:
.type _EMITSGNF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0789:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+112], 3
jl .L_078C
sub esp, 12
push offset Lt_078D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C8
call OUTP
add esp, 16
jmp .L_078B
.L_078C:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_078F
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_078F:
.L_078E:
sub esp, 12
push offset Lt_0790
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03CD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06E2
call OUTP
add esp, 16
cmp dword ptr [ebp-28], 0
jne .L_0792
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0792:
.L_0791:
.L_078B:
sub esp, 8
push dword ptr [ebp-24]
push offset Lt_03CF
call HBRANCH
add esp, 16
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 8
push dword ptr [ebp-24]
push offset Lt_0793
call HBRANCH
add esp, 16
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call HLABEL
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_078A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSGNF, .-_EMITSGNF
.cfi_endproc
.balign 16
_EMITSIN:
.type _EMITSIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0794:
sub esp, 12
push offset Lt_0796
call OUTP
add esp, 16
.L_0795:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSIN, .-_EMITSIN
.cfi_endproc
.balign 16
_EMITASIN:
.type _EMITASIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0797:
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0799
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_047B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_079A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0689
call OUTP
add esp, 16
.L_0798:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITASIN, .-_EMITASIN
.cfi_endproc
.balign 16
_EMITCOS:
.type _EMITCOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_079B:
sub esp, 12
push offset Lt_079D
call OUTP
add esp, 16
.L_079C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCOS, .-_EMITCOS
.cfi_endproc
.balign 16
_EMITACOS:
.type _EMITACOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_079E:
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0799
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_047B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_079A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0689
call OUTP
add esp, 16
.L_079F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITACOS, .-_EMITACOS
.cfi_endproc
.balign 16
_EMITTAN:
.type _EMITTAN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07A0:
sub esp, 12
push offset Lt_07A2
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
.L_07A1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITTAN, .-_EMITTAN
.cfi_endproc
.balign 16
_EMITATAN:
.type _EMITATAN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07A3:
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0689
call OUTP
add esp, 16
.L_07A4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITATAN, .-_EMITATAN
.cfi_endproc
.balign 16
_EMITSQRT:
.type _EMITSQRT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07A5:
sub esp, 12
push offset Lt_079A
call OUTP
add esp, 16
.L_07A6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSQRT, .-_EMITSQRT
.cfi_endproc
.balign 16
_EMITLOG:
.type _EMITLOG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07A7:
sub esp, 12
push offset Lt_07A9
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_068F
call OUTP
add esp, 16
.L_07A8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOG, .-_EMITLOG
.cfi_endproc
.balign 16
_EMITEXP:
.type _EMITEXP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07AA:
sub esp, 12
push offset Lt_07AC
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07AD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07AE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0691
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07AF
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0688
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0693
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07B0
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_07B1
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0695
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0696
call OUTP
add esp, 16
.L_07AB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITEXP, .-_EMITEXP
.cfi_endproc
.balign 16
HFPUCHANGERC:
.type HFPUCHANGERC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 104
.L_07B2:
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07B4
call OUTP
add esp, 16
sub esp, 8
push offset Lt_07B5
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HMOV
add esp, 16
push 3
push offset Lt_07B6
push 0
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_07B8
sub esp, 12
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
sub esp, 8
push 21
push offset Lt_07B9
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 5
push offset Lt_066B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-96]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 16
.L_07B8:
.L_07B7:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 11
push offset Lt_07BE
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
push 9
push offset Lt_07BD
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0670
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_07C4
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
.L_07B3:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFPUCHANGERC, .-HFPUCHANGERC
.cfi_endproc
.balign 16
HEMITFLOATFUNC:
.type HEMITFLOATFUNC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_07C5:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call HFINDFREEREG
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .L_07C8
mov dword ptr [ebp-4], 5
mov dword ptr [ebp-8], 0
jmp .L_07C7
.L_07C8:
mov dword ptr [ebp-8], -1
.L_07C7:
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-4]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-8], 0
jne .L_07CA
sub esp, 12
push dword ptr [ebp-20]
call HPUSH
add esp, 16
.L_07CA:
.L_07C9:
cmp dword ptr [ebp+8], 1
jne .L_07CC
.L_07CD:
sub esp, 8
push offset Lt_07CE
lea eax, [ebp-20]
push eax
call HFPUCHANGERC
add esp, 16
sub esp, 12
push offset Lt_0691
call OUTP
add esp, 16
jmp .L_07CB
.L_07CC:
cmp dword ptr [ebp+8], 2
jne .L_07CF
.L_07D0:
sub esp, 8
push offset Lt_07B6
lea eax, [ebp-20]
push eax
call HFPUCHANGERC
add esp, 16
sub esp, 12
push offset Lt_0691
call OUTP
add esp, 16
jmp .L_07CB
.L_07CF:
cmp dword ptr [ebp+8], 3
jne .L_07D1
.L_07D2:
sub esp, 8
push offset Lt_07B6
lea eax, [ebp-20]
push eax
call HFPUCHANGERC
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0691
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07D3
call OUTP
add esp, 16
.L_07D1:
.L_07CB:
sub esp, 12
push offset Lt_07C4
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
cmp dword ptr [ebp-8], 0
jne .L_07D5
sub esp, 12
push dword ptr [ebp-20]
call HPOP
add esp, 16
.L_07D5:
.L_07D4:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_07C6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITFLOATFUNC, .-HEMITFLOATFUNC
.cfi_endproc
.balign 16
HEMITFLOAT_INT_686:
.type HEMITFLOAT_INT_686, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07D6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07D9
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DA
call OUTP
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
jmp .L_07D8
.L_07D9:
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DB
call OUTP
add esp, 16
.L_07D8:
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DC
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C8
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0696
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E0
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_07DF
.L_07E0:
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
.L_07DF:
.L_07D7:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITFLOAT_INT_686, .-HEMITFLOAT_INT_686
.cfi_endproc
.balign 16
HEMITFLOAT_FIX_686:
.type HEMITFLOAT_FIX_686, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07E1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E4
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_068E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DA
call OUTP
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
jmp .L_07E3
.L_07E4:
sub esp, 12
push offset Lt_035B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_068E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0690
call OUTP
add esp, 16
sub esp, 12
push offset Lt_035C
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DB
call OUTP
add esp, 16
.L_07E3:
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07E5
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C8
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0696
call OUTP
add esp, 16
sub esp, 12
push offset Lt_078D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07E6
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07E7
call OUTP
add esp, 16
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07DE
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0696
call OUTP
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 15
jne .L_07E9
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_07E8
.L_07E9:
sub esp, 12
push offset Lt_036A
call OUTP
add esp, 16
.L_07E8:
.L_07E2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEMITFLOAT_FIX_686, .-HEMITFLOAT_FIX_686
.cfi_endproc
.balign 16
_EMITFLOOR:
.type _EMITFLOOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07EA:
cmp dword ptr [ENV+112], 3
jl .L_07ED
sub esp, 12
push dword ptr [ebp+8]
call HEMITFLOAT_INT_686
add esp, 16
jmp .L_07EC
.L_07ED:
sub esp, 12
push 1
call HEMITFLOATFUNC
add esp, 16
.L_07EC:
.L_07EB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFLOOR, .-_EMITFLOOR
.cfi_endproc
.balign 16
_EMITFIX:
.type _EMITFIX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07EE:
cmp dword ptr [ENV+112], 3
jl .L_07F1
sub esp, 12
push dword ptr [ebp+8]
call HEMITFLOAT_FIX_686
add esp, 16
jmp .L_07F0
.L_07F1:
sub esp, 12
push 2
call HEMITFLOATFUNC
add esp, 16
.L_07F0:
.L_07EF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFIX, .-_EMITFIX
.cfi_endproc
.balign 16
_EMITFRAC:
.type _EMITFRAC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07F2:
sub esp, 12
push 3
call HEMITFLOATFUNC
add esp, 16
.L_07F3:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFRAC, .-_EMITFRAC
.cfi_endproc
.balign 16
_EMITCONVFD2FS:
.type _EMITCONVFD2FS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07F4:
sub esp, 12
push offset Lt_034A
call OUTP
add esp, 16
sub esp, 12
push offset Lt_07F6
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C7
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
.L_07F5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCONVFD2FS, .-_EMITCONVFD2FS
.cfi_endproc
.balign 16
_EMITXCHGTOS:
.type _EMITXCHGTOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_07F7:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D23
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_07F9
push -1
push offset Lt_0D24
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D23
push -1
push offset Lt_0D24
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D24]
call OUTP
add esp, 16
.L_07F8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITXCHGTOS, .-_EMITXCHGTOS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D23,12
.balign 4
	.lcomm	Lt_0D24,12

.section .text
.balign 16
_EMITSTACKALIGN:
.type _EMITSTACKALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_07FA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jl .L_07FD
jg .L_0D25
cmp dword ptr [eax+24], 0
jbe .L_07FD
.L_0D25:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 16
push eax
push 10
push offset Lt_027C
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07FC
.L_07FD:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
neg ecx
adc ebx, 0
neg ebx
push ebx
push ecx
call fb_LongintToStr
add esp, 16
push eax
push 10
push offset Lt_02D2
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
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_07FC:
.L_07FB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTACKALIGN, .-_EMITSTACKALIGN
.cfi_endproc
.balign 16
_EMITPUSHL:
.type _EMITPUSHL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0802:
sub esp, 4
push offset Lt_0D26
push offset Lt_0D27
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0D28
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D26
push -1
push offset Lt_0D28
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D28]
call OUTP
add esp, 16
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0D28
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D27
push -1
push offset Lt_0D28
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D28]
call OUTP
add esp, 16
.L_0803:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHL, .-_EMITPUSHL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D27,12
.balign 4
	.lcomm	Lt_0D26,12
.balign 4
	.lcomm	Lt_0D28,12

.section .text
.balign 16
_EMITPUSHI:
.type _EMITPUSHI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 116
push ebx
.L_0804:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 4
jne .L_080A
.L_080B:
cmp dword ptr [ebp-28], 4
jge .L_080D
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_080D:
.L_080C:
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0808
.L_080A:
cmp dword ptr [ebp-44], 0
jne .L_0810
.L_0811:
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0808
.L_0810:
cmp dword ptr [ebp-28], 4
jge .L_0816
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push dword ptr [ebp-32]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-36], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-32]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-36], 0
jne .L_0818
sub esp, 12
push dword ptr [ebp-24]
call HPUSH
add esp, 16
.L_0818:
.L_0817:
sub esp, 12
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-92]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-116]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-116]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-116]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-36], 0
jne .L_0820
sub esp, 12
push dword ptr [ebp-24]
call HPOP
add esp, 16
.L_0820:
.L_081F:
jmp .L_0815
.L_0816:
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-68]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
.L_0815:
.L_0814:
.L_0808:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0805:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHI, .-_EMITPUSHI
.cfi_endproc
.balign 16
_EMITPUSHF:
.type _EMITPUSHF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0823:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D2B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0D2C], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0828
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_082A
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0D2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D2B
push -1
push offset Lt_0D2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D2D]
call OUTP
add esp, 16
jmp .L_0829
.L_082A:
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0D2B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0D2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D2B
push -1
push offset Lt_0D2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D2D]
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0D2B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_0173
push -1
push offset Lt_0D2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D2B
push -1
push offset Lt_0D2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D2D]
call OUTP
add esp, 16
.L_0829:
jmp .L_0827
.L_0828:
sub esp, 12
push 0
push 9
push offset Lt_082B
push -1
push offset Lt_0D2D
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_0D2C]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0D2D
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D2D]
call OUTP
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
sal ebx, 4
lea eax, [DTYPETB+ebx+4]
push eax
push 6
push offset Lt_0370
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
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
push offset Lt_0D2D
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D2D]
call OUTP
add esp, 16
.L_0827:
.L_0824:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHF, .-_EMITPUSHF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D2B,12
.balign 4
	.lcomm	Lt_0D2C,4
.balign 4
	.lcomm	Lt_0D2D,12

.section .text
.balign 16
_EMITPUSHUDT:
.type _EMITPUSHUDT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 216
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
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 8
push dword ptr [ebp-44]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-44]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-48], 0
jne .L_0833
sub esp, 12
push dword ptr [ebp-24]
call HPUSH
add esp, 16
.L_0833:
.L_0832:
cmp dword ptr [ebp-52], 3
jne .L_0835
.L_0836:
sub esp, 8
push -1
push 0
mov eax, dword ptr [ebp+12]
dec eax
push eax
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_083B
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_055F
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-160]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-160]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-160]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-44]
push 5
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -3
push eax
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-36]
push eax
push 5
push offset Lt_017D
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-208]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-208]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-208]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0834
.L_0835:
cmp dword ptr [ebp-52], 2
jne .L_0843
.L_0844:
mov eax, dword ptr [ebp+12]
add eax, -2
mov dword ptr [ebp-40], eax
sub esp, 8
push -1
push 0
push dword ptr [ebp-40]
push 5
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0834
.L_0843:
cmp dword ptr [ebp-52], 1
jne .L_0849
.L_084A:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
sub esp, 8
push -1
push 0
push dword ptr [ebp-40]
push 2
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.L_0849:
.L_0834:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-48], 0
jne .L_0852
sub esp, 12
push dword ptr [ebp-24]
call HPOP
add esp, 16
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
sub esp, 8
push -1
push 0
push dword ptr [ebp-40]
push 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0173
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
add dword ptr [ebp-40], -4
jmp .L_0853
.L_0854:
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_082F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHUDT, .-_EMITPUSHUDT
.cfi_endproc
.balign 16
_EMITPOPL:
.type _EMITPOPL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0857:
sub esp, 4
push offset Lt_0D2E
push offset Lt_0D2F
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D30
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D2F
push -1
push offset Lt_0D30
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D30]
call OUTP
add esp, 16
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D30
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D2E
push -1
push offset Lt_0D30
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D30]
call OUTP
add esp, 16
.L_0858:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOPL, .-_EMITPOPL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D2F,12
.balign 4
	.lcomm	Lt_0D2E,12
.balign 4
	.lcomm	Lt_0D30,12

.section .text
.balign 16
_EMITPOPI:
.type _EMITPOPI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0859:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D32
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0D33], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
jne .L_085E
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+28], 0
jne .L_0860
cmp dword ptr [ebx+24], 4
jne .L_0860
.L_0D34:
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
test eax, eax
je .L_0862
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
jmp .L_0861
.L_0862:
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
.L_0861:
jmp .L_085F
.L_0860:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 16
push eax
push 10
push offset Lt_02D2
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0D35
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D35]
call OUTP
add esp, 16
.L_085F:
jmp .L_085D
.L_085E:
cmp dword ptr [Lt_0D33], 4
jne .L_0864
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D35
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D32
push -1
push offset Lt_0D35
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D35]
call OUTP
add esp, 16
jmp .L_085D
.L_0864:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0866
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D32
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D35
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D32
push -1
push offset Lt_0D35
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D35]
call OUTP
add esp, 16
jmp .L_0865
.L_0866:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0D36], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D36]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D37
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D36]
push 5
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D38
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D36]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D39
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0D36]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D3A], eax
cmp dword ptr [Lt_0D3A], 0
je .L_0868
sub esp, 8
push offset Lt_0352
push dword ptr [Lt_0D39]
call HMOV
add esp, 16
jmp .L_0867
.L_0868:
sub esp, 8
push offset Lt_0352
push dword ptr [Lt_0D39]
call HXCHG
add esp, 16
.L_0867:
cmp dword ptr [Lt_0D33], 1
jne .L_086A
sub esp, 8
push dword ptr [Lt_0D37]
push dword ptr [Lt_0D32]
call HMOV
add esp, 16
jmp .L_0869
.L_086A:
sub esp, 8
push dword ptr [Lt_0D38]
push dword ptr [Lt_0D32]
call HMOV
add esp, 16
.L_0869:
cmp dword ptr [Lt_0D3A], 0
je .L_086C
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
jmp .L_086B
.L_086C:
sub esp, 12
push dword ptr [Lt_0D39]
call HPOP
add esp, 16
.L_086B:
.L_0865:
.L_085D:
.L_085A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOPI, .-_EMITPOPI
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D32,12
.balign 4
	.lcomm	Lt_0D35,12
.balign 4
	.lcomm	Lt_0D33,4
.balign 4
	.lcomm	Lt_0D36,4
.balign 4
	.lcomm	Lt_0D3A,4
.balign 4
	.lcomm	Lt_0D37,12
.balign 4
	.lcomm	Lt_0D38,12
.balign 4
	.lcomm	Lt_0D39,12

.section .text
.balign 16
_EMITPOPF:
.type _EMITPOPF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_086D:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D3C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [Lt_0D3D], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 4
je .L_0872
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .L_0874
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D3E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D3C
push -1
push offset Lt_0D3E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D3E]
call OUTP
add esp, 16
jmp .L_0873
.L_0874:
sub esp, 8
push -1
push 0
push 0
push 8
push offset Lt_0D3C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D3E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D3C
push -1
push offset Lt_0D3E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D3E]
call OUTP
add esp, 16
sub esp, 8
push -1
push 0
push 4
push 8
push offset Lt_0D3C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0178
push -1
push offset Lt_0D3E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D3C
push -1
push offset Lt_0D3E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D3E]
call OUTP
add esp, 16
.L_0873:
jmp .L_0871
.L_0872:
sub esp, 12
push 0
push -1
sub esp, 8
push 7
push offset Lt_0367
push -1
sub esp, 4
push 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
sal eax, 4
lea ebx, [DTYPETB+eax+4]
push ebx
push 5
push offset Lt_03A3
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
push offset Lt_0D3E
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D3E]
call OUTP
add esp, 16
sub esp, 12
push 0
push 9
push offset Lt_0877
push -1
push offset Lt_0D3E
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_0D3D]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0D3E
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D3E]
call OUTP
add esp, 16
.L_0871:
.L_086E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOPF, .-_EMITPOPF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D3C,12
.balign 4
	.lcomm	Lt_0D3E,12
.balign 4
	.lcomm	Lt_0D3D,4

.section .text
.balign 16
_EMITPOPST0:
.type _EMITPOPST0, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0878:
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
.L_0879:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPOPST0, .-_EMITPOPST0
.cfi_endproc
.balign 16
_EMITADDROF:
.type _EMITADDROF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_087A:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D3F
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 0
push 0
push 0
push -2147483648
push offset Lt_0D40
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_087C
push -1
push offset Lt_0D41
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D3F
push -1
push offset Lt_0D41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D40
push -1
push offset Lt_0D41
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D41]
call OUTP
add esp, 16
.L_087B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDROF, .-_EMITADDROF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D3F,12
.balign 4
	.lcomm	Lt_0D40,12
.balign 4
	.lcomm	Lt_0D41,12

.section .text
.balign 16
_EMITDEREF:
.type _EMITDEREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_087D:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D42
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push 9
push offset Lt_0D43
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_017D
push -1
push offset Lt_0D44
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D42
push -1
push offset Lt_0D44
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0073
push -1
push offset Lt_0D44
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D43
push -1
push offset Lt_0D44
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D44]
call OUTP
add esp, 16
.L_087E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDEREF, .-_EMITDEREF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D42,12
.balign 4
	.lcomm	Lt_0D43,12
.balign 4
	.lcomm	Lt_0D44,12

.section .text
.balign 16
HMEMMOVEREP:
.type HMEMMOVEREP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_087F:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D45
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D46
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D47], eax
sub esp, 8
push 1
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D48], eax
sub esp, 8
push 2
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D49], eax
sub esp, 8
push 1
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0D4A], eax
sub esp, 8
push 3
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
mov dword ptr [Lt_0D4B], eax
cmp dword ptr [Lt_0D47], 0
jne .L_0882
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_0882:
.L_0881:
cmp dword ptr [Lt_0D48], 0
jne .L_0884
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_0884:
.L_0883:
cmp dword ptr [Lt_0D49], 0
jne .L_0886
sub esp, 12
push offset Lt_0084
call HPUSH
add esp, 16
.L_0886:
.L_0885:
cmp dword ptr [Lt_0D4A], 0
jne .L_0888
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_088A
sub esp, 8
push dword ptr [Lt_0D45]
push offset Lt_0083
call HMOV
add esp, 16
jmp .L_0889
.L_088A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_088C
sub esp, 8
push dword ptr [Lt_0D45]
push offset Lt_0083
call HMOV
add esp, 16
.L_088C:
.L_088B:
.L_0889:
jmp .L_0887
.L_0888:
cmp dword ptr [Lt_0D4B], 0
je .L_088E
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_088E:
.L_088D:
sub esp, 8
push dword ptr [Lt_0D45]
push offset Lt_0085
call HMOV
add esp, 16
cmp dword ptr [Lt_0D4B], 0
je .L_0890
sub esp, 12
push offset Lt_0510
call OUTP
add esp, 16
.L_0890:
.L_088F:
.L_0887:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_0892
sub esp, 8
push dword ptr [Lt_0D46]
push offset Lt_0084
call HMOV
add esp, 16
jmp .L_0891
.L_0892:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 2
je .L_0894
sub esp, 8
push dword ptr [Lt_0D46]
push offset Lt_0084
call HMOV
add esp, 16
.L_0894:
.L_0893:
.L_0891:
cmp dword ptr [Lt_0D4A], 0
je .L_0896
cmp dword ptr [Lt_0D4B], 0
jne .L_0898
sub esp, 8
push offset Lt_0085
push offset Lt_0083
call HMOV
add esp, 16
jmp .L_0897
.L_0898:
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_0897:
.L_0896:
.L_0895:
cmp dword ptr [ebp+16], 4
jle .L_089A
sub esp, 12
push 0
push 10
push offset Lt_089B
push -1
push offset Lt_0D4C
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+16]
shr eax, 2
push eax
call fb_UIntToStr
add esp, 12
push eax
push -1
push offset Lt_0D4C
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D4C]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_089C
call OUTP
add esp, 16
jmp .L_0899
.L_089A:
cmp dword ptr [ebp+16], 4
jne .L_089D
sub esp, 12
push offset Lt_089E
call OUTP
add esp, 16
sub esp, 12
push offset Lt_089F
call OUTP
add esp, 16
mov eax, dword ptr [ebp+16]
and eax, 3
test eax, eax
jle .L_08A1
sub esp, 12
push offset Lt_08A2
call OUTP
add esp, 16
sub esp, 12
push offset Lt_08A3
call OUTP
add esp, 16
.L_08A1:
.L_08A0:
.L_089D:
.L_0899:
and dword ptr [ebp+16], 3
cmp dword ptr [ebp+16], 0
jle .L_08A5
cmp dword ptr [ebp+16], 2
jl .L_08A7
sub esp, 12
push offset Lt_08A8
call OUTP
add esp, 16
sub esp, 12
push offset Lt_08A9
call OUTP
add esp, 16
cmp dword ptr [ebp+16], 3
jne .L_08AB
sub esp, 12
push offset Lt_08AC
call OUTP
add esp, 16
sub esp, 12
push offset Lt_08AD
call OUTP
add esp, 16
.L_08AB:
.L_08AA:
.L_08A7:
.L_08A6:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08AF
sub esp, 12
push offset Lt_08B0
call OUTP
add esp, 16
sub esp, 12
push offset Lt_08B1
call OUTP
add esp, 16
.L_08AF:
.L_08AE:
.L_08A5:
.L_08A4:
cmp dword ptr [Lt_0D49], 0
jne .L_08B3
sub esp, 12
push offset Lt_0084
call HPOP
add esp, 16
.L_08B3:
.L_08B2:
cmp dword ptr [Lt_0D48], 0
jne .L_08B5
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_08B5:
.L_08B4:
cmp dword ptr [Lt_0D47], 0
jne .L_08B7
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_08B7:
.L_08B6:
.L_0880:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMMOVEREP, .-HMEMMOVEREP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D45,12
.balign 4
	.lcomm	Lt_0D46,12
.balign 4
	.lcomm	Lt_0D4C,12
.balign 4
	.lcomm	Lt_0D47,4
.balign 4
	.lcomm	Lt_0D48,4
.balign 4
	.lcomm	Lt_0D49,4
.balign 4
	.lcomm	Lt_0D4A,4
.balign 4
	.lcomm	Lt_0D4B,4

.section .text
.balign 16
HMEMMOVEBLK:
.type HMEMMOVEBLK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_08B8:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [Lt_0D4D], eax
sub esp, 8
push dword ptr [Lt_0D4D]
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
test eax, eax
je .L_08BB
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMEMMOVEREP
add esp, 16
jmp .L_08B9
.L_08BB:
.L_08BA:
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D4D]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D4E
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [Lt_0D4D]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D4F], eax
cmp dword ptr [Lt_0D4F], 0
jne .L_08BD
sub esp, 12
push dword ptr [Lt_0D4E]
call HPUSH
add esp, 16
.L_08BD:
.L_08BC:
mov dword ptr [Lt_0D50], 0
mov dword ptr [Lt_0D51], 1
mov eax, dword ptr [ebp+16]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08BF
.L_08C2:
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 8
push offset Lt_0D52
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D52]
push dword ptr [Lt_0D4E]
call HMOV
add esp, 16
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 8
push offset Lt_0D53
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D4E]
push dword ptr [Lt_0D53]
call HMOV
add esp, 16
add dword ptr [Lt_0D50], 4
.L_08C0:
inc dword ptr [Lt_0D51]
.L_08BF:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [Lt_0D51], ebx
jle .L_08C2
.L_08C1:
mov ebx, dword ptr [ebp+16]
and ebx, 2
test ebx, ebx
je .L_08C4
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D4D]
push 5
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D4E
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 5
push offset Lt_0D52
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D52]
push dword ptr [Lt_0D4E]
call HMOV
add esp, 16
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 5
push offset Lt_0D53
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D4E]
push dword ptr [Lt_0D53]
call HMOV
add esp, 16
add dword ptr [Lt_0D50], 2
.L_08C4:
.L_08C3:
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_08C6
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [Lt_0D4D]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
push offset Lt_0D4E
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 2
push offset Lt_0D52
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D52]
push dword ptr [Lt_0D4E]
call HMOV
add esp, 16
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D50]
push 2
push offset Lt_0D53
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [Lt_0D4E]
push dword ptr [Lt_0D53]
call HMOV
add esp, 16
.L_08C6:
.L_08C5:
cmp dword ptr [Lt_0D4F], 0
jne .L_08C8
sub esp, 12
push dword ptr [Lt_0D4E]
call HPOP
add esp, 16
.L_08C8:
.L_08C7:
.L_08B9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMMOVEBLK, .-HMEMMOVEBLK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D53,12
.balign 4
	.lcomm	Lt_0D52,12
.balign 4
	.lcomm	Lt_0D4E,12
.balign 4
	.lcomm	Lt_0D51,4
.balign 4
	.lcomm	Lt_0D50,4
.balign 4
	.lcomm	Lt_0D4D,4
.balign 4
	.lcomm	Lt_0D4F,4

.section .text
.balign 16
_EMITMEMMOVE:
.type _EMITMEMMOVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08C9:
cmp dword ptr [ebp+16], 16
jbe .L_08CC
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMEMMOVEREP
add esp, 16
jmp .L_08CB
.L_08CC:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMEMMOVEBLK
add esp, 16
.L_08CB:
.L_08CA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMEMMOVE, .-_EMITMEMMOVE
.cfi_endproc
.balign 16
_EMITMEMSWAP:
.type _EMITMEMSWAP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08CD:
.L_08CE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMEMSWAP, .-_EMITMEMSWAP
.cfi_endproc
.balign 16
HMEMCLEARREPIMM:
.type HMEMCLEARREPIMM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08CF:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D54
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D55], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D56], eax
sub esp, 8
push 1
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D57], eax
cmp dword ptr [Lt_0D55], 0
jne .L_08D2
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_08D2:
.L_08D1:
cmp dword ptr [Lt_0D56], 0
jne .L_08D4
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_08D4:
.L_08D3:
cmp dword ptr [Lt_0D57], 0
jne .L_08D6
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_08D6:
.L_08D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_08D8
sub esp, 8
push dword ptr [Lt_0D54]
push offset Lt_0083
call HMOV
add esp, 16
jmp .L_08D7
.L_08D8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_08DA
sub esp, 8
push dword ptr [Lt_0D54]
push offset Lt_0083
call HMOV
add esp, 16
.L_08DA:
.L_08D9:
.L_08D7:
sub esp, 12
push offset Lt_023B
call OUTP
add esp, 16
cmp dword ptr [ebp+12], 4
jbe .L_08DC
sub esp, 12
push 0
push 10
push offset Lt_089B
push -1
push offset Lt_0D58
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
shr eax, 2
push eax
call fb_UIntToStr
add esp, 12
push eax
push -1
push offset Lt_0D58
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D58]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_023C
call OUTP
add esp, 16
jmp .L_08DB
.L_08DC:
cmp dword ptr [ebp+12], 4
jne .L_08DD
sub esp, 12
push offset Lt_08DE
call OUTP
add esp, 16
mov eax, dword ptr [ebp+12]
and eax, 3
test eax, eax
jbe .L_08E0
sub esp, 12
push offset Lt_08A3
call OUTP
add esp, 16
.L_08E0:
.L_08DF:
.L_08DD:
.L_08DB:
and dword ptr [ebp+12], 3
cmp dword ptr [ebp+12], 0
jbe .L_08E2
cmp dword ptr [ebp+12], 2
jb .L_08E4
sub esp, 12
push offset Lt_08E5
call OUTP
add esp, 16
cmp dword ptr [ebp+12], 3
jne .L_08E7
sub esp, 12
push offset Lt_08AD
call OUTP
add esp, 16
.L_08E7:
.L_08E6:
.L_08E4:
.L_08E3:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
je .L_08E9
sub esp, 12
push offset Lt_08EA
call OUTP
add esp, 16
.L_08E9:
.L_08E8:
.L_08E2:
.L_08E1:
cmp dword ptr [Lt_0D57], 0
jne .L_08EC
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_08EC:
.L_08EB:
cmp dword ptr [Lt_0D56], 0
jne .L_08EE
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_08EE:
.L_08ED:
cmp dword ptr [Lt_0D55], 0
jne .L_08F0
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_08F0:
.L_08EF:
.L_08D0:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMCLEARREPIMM, .-HMEMCLEARREPIMM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D54,12
.balign 4
	.lcomm	Lt_0D58,12
.balign 4
	.lcomm	Lt_0D55,4
.balign 4
	.lcomm	Lt_0D56,4
.balign 4
	.lcomm	Lt_0D57,4

.section .text
.balign 16
HMEMCLEARBLKIMM:
.type HMEMCLEARBLKIMM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_08F1:
mov dword ptr [Lt_0D59], 0
mov dword ptr [Lt_0D5A], 1
mov eax, dword ptr [ebp+12]
shr eax, 2
mov ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_08F4
.L_08F7:
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D59]
push 8
push offset Lt_0D5B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0D5B]
call HMOV
add esp, 16
add dword ptr [Lt_0D59], 4
.L_08F5:
inc dword ptr [Lt_0D5A]
.L_08F4:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [Lt_0D5A], ebx
jle .L_08F7
.L_08F6:
mov ebx, dword ptr [ebp+12]
and ebx, 2
test ebx, ebx
je .L_08F9
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D59]
push 5
push offset Lt_0D5B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0D5B]
call HMOV
add esp, 16
add dword ptr [Lt_0D59], 2
.L_08F9:
.L_08F8:
mov ebx, dword ptr [ebp+12]
and ebx, 1
test ebx, ebx
je .L_08FB
sub esp, 8
push -1
push 0
push dword ptr [Lt_0D59]
push 2
push offset Lt_0D5B
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push offset Lt_0006
push dword ptr [Lt_0D5B]
call HMOV
add esp, 16
.L_08FB:
.L_08FA:
.L_08F2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMCLEARBLKIMM, .-HMEMCLEARBLKIMM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D5B,12
.balign 4
	.lcomm	Lt_0D5A,4
.balign 4
	.lcomm	Lt_0D59,4

.section .text
.balign 16
HMEMCLEAR:
.type HMEMCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08FC:
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D5C
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
push offset Lt_0D5D
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D5E], eax
sub esp, 8
push 3
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D5F], eax
sub esp, 8
push 1
push 0
call HISREGFREE
add esp, 16
mov dword ptr [Lt_0D60], eax
cmp dword ptr [Lt_0D5E], 0
jne .L_08FF
sub esp, 12
push offset Lt_0087
call HPUSH
add esp, 16
.L_08FF:
.L_08FE:
cmp dword ptr [Lt_0D5F], 0
jne .L_0901
sub esp, 12
push offset Lt_0085
call HPUSH
add esp, 16
.L_0901:
.L_0900:
cmp dword ptr [Lt_0D60], 0
jne .L_0903
sub esp, 12
push offset Lt_0083
call HPUSH
add esp, 16
.L_0903:
.L_0902:
sub esp, 8
push 1
push dword ptr [ebp+12]
call HISREGINVREG
add esp, 16
test eax, eax
jne .L_0905
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_0907
sub esp, 8
push dword ptr [Lt_0D5C]
push offset Lt_0083
call HMOV
add esp, 16
jmp .L_0906
.L_0907:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 1
je .L_0909
sub esp, 8
push dword ptr [Lt_0D5C]
push offset Lt_0083
call HMOV
add esp, 16
.L_0909:
.L_0908:
.L_0906:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_090B
sub esp, 8
push dword ptr [Lt_0D5D]
push offset Lt_0085
call HMOV
add esp, 16
jmp .L_090A
.L_090B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+12], 3
je .L_090D
sub esp, 8
push dword ptr [Lt_0D5D]
push offset Lt_0085
call HMOV
add esp, 16
.L_090D:
.L_090C:
.L_090A:
jmp .L_0904
.L_0905:
sub esp, 12
push dword ptr [Lt_0D5D]
call HPUSH
add esp, 16
sub esp, 12
push 0
push 10
push offset Lt_090E
push -1
push offset Lt_0D61
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_0D5C
push -1
push offset Lt_0D61
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0D61]
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0904:
sub esp, 12
push offset Lt_023B
call OUTP
add esp, 16
sub esp, 12
push offset Lt_090F
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0910
call OUTP
add esp, 16
sub esp, 12
push offset Lt_023C
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0911
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0912
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0913
call OUTP
add esp, 16
cmp dword ptr [Lt_0D60], 0
jne .L_0915
sub esp, 12
push offset Lt_0083
call HPOP
add esp, 16
.L_0915:
.L_0914:
cmp dword ptr [Lt_0D5F], 0
jne .L_0917
sub esp, 12
push offset Lt_0085
call HPOP
add esp, 16
.L_0917:
.L_0916:
cmp dword ptr [Lt_0D5E], 0
jne .L_0919
sub esp, 12
push offset Lt_0087
call HPOP
add esp, 16
.L_0919:
.L_0918:
.L_08FD:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMEMCLEAR, .-HMEMCLEAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D5C,12
.balign 4
	.lcomm	Lt_0D5D,12
.balign 4
	.lcomm	Lt_0D61,12
.balign 4
	.lcomm	Lt_0D5E,4
.balign 4
	.lcomm	Lt_0D5F,4
.balign 4
	.lcomm	Lt_0D60,4

.section .text
.balign 16
_EMITMEMCLEAR:
.type _EMITMEMCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HMEMCLEARREPIMM
add esp, 16
jmp .L_091E
.L_091F:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HMEMCLEARBLKIMM
add esp, 16
.L_091E:
jmp .L_091C
.L_091D:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMEMCLEAR
add esp, 16
.L_091C:
.L_091B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMEMCLEAR, .-_EMITMEMCLEAR
.cfi_endproc
.balign 16
_EMITSTKCLEAR:
.type _EMITSTKCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0920:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HCLEARLOCALS
add esp, 16
.L_0921:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTKCLEAR, .-_EMITSTKCLEAR
.cfi_endproc
.balign 16
_EMITLINEINI:
.type _EMITLINEINI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0922:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call EDBGLINEBEGIN
add esp, 16
.L_0923:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLINEINI, .-_EMITLINEINI
.cfi_endproc
.balign 16
_EMITLINEEND:
.type _EMITLINEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0924:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call EDBGLINEEND
add esp, 16
.L_0925:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLINEEND, .-_EMITLINEEND
.cfi_endproc
.balign 16
_EMITSCOPEINI:
.type _EMITSCOPEINI, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0926:
sub esp, 12
push dword ptr [ebp+8]
call EDBGEMITSCOPEINI
add esp, 16
.L_0927:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSCOPEINI, .-_EMITSCOPEINI
.cfi_endproc
.balign 16
_EMITSCOPEEND:
.type _EMITSCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0928:
sub esp, 12
push dword ptr [ebp+8]
call EDBGEMITSCOPEEND
add esp, 16
.L_0929:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSCOPEEND, .-_EMITSCOPEEND
.cfi_endproc
.balign 16
_EMITLOADB2B:
.type _EMITLOADB2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_092A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_092B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADB2B, .-_EMITLOADB2B
.cfi_endproc
.balign 16
_EMITSTORB2B:
.type _EMITSTORB2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_092C:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADB2B
add esp, 16
.L_092D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORB2B, .-_EMITSTORB2B
.cfi_endproc
.balign 16
_EMITLOADB2I:
.type _EMITLOADB2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 116
push ebx
.L_092E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_0931
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D65
cmp dword ptr [eax+24], 0
je .L_0933
.L_0D65:
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-24]
call HMOV
add esp, 16
jmp .L_0932
.L_0933:
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-24]
call HMOV
add esp, 16
.L_0932:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
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
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jle .L_0939
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
lea ecx, [ebp-12]
push ecx
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea ecx, [ebp-24]
push ecx
push 7
push offset Lt_0318
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ecx, [ebp-72]
push ecx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0938
.L_0939:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call HMOV
add esp, 16
.L_0938:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_0758
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_092F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADB2I, .-_EMITLOADB2I
.cfi_endproc
.balign 16
_EMITSTORB2I:
.type _EMITSTORB2I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0940:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADB2I
add esp, 16
.L_0941:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORB2I, .-_EMITSTORB2I
.cfi_endproc
.balign 16
_EMITLOADI2B:
.type _EMITLOADI2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 244
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
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [SYMB_DTYPETB+32]
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
sub esp, 8
push offset Lt_0004
push dword ptr [ebp-24]
call HMOV
add esp, 16
jmp .L_0946
.L_0947:
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-24]
call HMOV
add esp, 16
.L_0946:
jmp .L_0944
.L_0945:
cmp dword ptr [ebp-40], 1
jne .L_0948
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_094C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-36]
push eax
push 7
push offset Lt_094C
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-36]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 8
push -1
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-68], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-68]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-68]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_095A
sub esp, 12
push dword ptr [ebp-52]
call HPUSH
add esp, 16
.L_095A:
.L_0959:
sub esp, 12
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0006
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-120]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-120]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push 7
push offset Lt_094C
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-144]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0962
sub esp, 12
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0961
.L_0962:
sub esp, 12
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-192]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-52]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_017D
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
lea eax, [ebp-204]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-240]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 16
.L_0961:
cmp dword ptr [ebp-72], 0
jne .L_0970
sub esp, 12
push dword ptr [ebp-52]
call HPOP
add esp, 16
.L_0970:
.L_096F:
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
.L_0944:
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0943:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADI2B, .-_EMITLOADI2B
.cfi_endproc
.balign 16
_EMITSTORI2B:
.type _EMITSTORI2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0971:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADI2B
add esp, 16
.L_0972:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORI2B, .-_EMITSTORI2B
.cfi_endproc
.balign 16
_EMITLOADF2B:
.type _EMITLOADF2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0973:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-28], ebx
sub esp, 8
push 5
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0977
sub esp, 8
push 5
push dword ptr [ebp+8]
call HISREGINVREG
add esp, 16
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
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 5
push offset Lt_03A3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-64]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
.L_097A:
.L_0979:
cmp dword ptr [ebp-32], 0
jne .L_097E
sub esp, 12
push offset Lt_097F
call OUTP
add esp, 16
.L_097E:
.L_097D:
cmp dword ptr [ENV+112], 3
jl .L_0981
sub esp, 12
push offset Lt_078D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03C8
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0982
call OUTP
add esp, 16
jmp .L_0980
.L_0981:
sub esp, 12
push offset Lt_0790
call OUTP
add esp, 16
sub esp, 12
push offset Lt_03CD
call OUTP
add esp, 16
sub esp, 12
push offset Lt_06E2
call OUTP
add esp, 16
sub esp, 12
push offset Lt_0982
call OUTP
add esp, 16
.L_0980:
sub esp, 12
push offset Lt_06D5
call OUTP
add esp, 16
cmp dword ptr [ebp-28], 1
jne .L_0984
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_0985
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_017D
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0983
.L_0984:
sub esp, 12
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_0985
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-76]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
.L_0983:
cmp dword ptr [ebp-32], 0
jne .L_098D
sub esp, 12
push offset Lt_098E
call OUTP
add esp, 16
.L_098D:
.L_098C:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0974:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADF2B, .-_EMITLOADF2B
.cfi_endproc
.balign 16
_EMITSTORF2B:
.type _EMITSTORF2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_098F:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADF2B
add esp, 16
.L_0990:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORF2B, .-_EMITSTORF2B
.cfi_endproc
.balign 16
_EMITLOADB2F:
.type _EMITLOADB2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
.L_0991:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
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
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
jmp .L_0997
.L_0998:
sub esp, 12
push offset Lt_078D
call OUTP
add esp, 16
.L_0997:
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
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
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-52]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-52]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_099C
sub esp, 12
push dword ptr [ebp-44]
call HPUSH
add esp, 16
.L_099C:
.L_099B:
sub esp, 12
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-44]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-100]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-44]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
cmp dword ptr [ebp-48], 0
jne .L_09A2
sub esp, 12
push dword ptr [ebp-44]
call HPOP
add esp, 16
.L_09A2:
.L_09A1:
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0999
.L_099A:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0366
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_0999:
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0992:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADB2F, .-_EMITLOADB2F
.cfi_endproc
.balign 16
_EMITSTORB2F:
.type _EMITSTORB2F, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
.L_09A5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
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
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
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
sub esp, 12
push offset Lt_0694
call OUTP
add esp, 16
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
jmp .L_09AB
.L_09AC:
sub esp, 12
push offset Lt_078D
call OUTP
add esp, 16
.L_09AB:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
push 6
push offset Lt_0370
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-76], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-76]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-76]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09B2
sub esp, 12
push dword ptr [ebp-68]
call HPUSH
add esp, 16
.L_09B2:
.L_09B1:
sub esp, 12
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-68]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-124]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-68]
call HPUSH
add esp, 16
sub esp, 12
push offset Lt_037D
call OUTP
add esp, 16
sub esp, 12
push offset Lt_034F
call OUTP
add esp, 16
cmp dword ptr [ebp-72], 0
jne .L_09B8
sub esp, 12
push dword ptr [ebp-68]
call HPOP
add esp, 16
.L_09B8:
.L_09B7:
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .L_09AF
.L_09B0:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 6
push offset Lt_0366
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.L_09AF:
sub esp, 12
push offset Lt_075D
call OUTP
add esp, 16
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 6
push offset Lt_0370
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_09A6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORB2F, .-_EMITSTORB2F
.cfi_endproc
.balign 16
_EMITLOADB2L:
.type _EMITLOADB2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 120
.L_09BD:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND64
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .L_09C0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+28], 0
jne .L_0D71
cmp dword ptr [eax+24], 0
je .L_09C2
.L_0D71:
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 8
push offset Lt_0310
push dword ptr [ebp-24]
call HMOV
add esp, 16
jmp .L_09C1
.L_09C2:
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-12]
call HMOV
add esp, 16
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-24]
call HMOV
add esp, 16
.L_09C1:
jmp .L_09BF
.L_09C0:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-36]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND
add esp, 32
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-36]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-84]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0758
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call HMOV
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_09BF:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_09BE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADB2L, .-_EMITLOADB2L
.cfi_endproc
.balign 16
_EMITSTORB2L:
.type _EMITSTORB2L, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_09C9:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADB2L
add esp, 16
.L_09CA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORB2L, .-_EMITSTORB2L
.cfi_endproc
.balign 16
_EMITLOADL2B:
.type _EMITLOADL2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 228
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
sub esp, 4
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
push dword ptr [ebp+12]
call HPREPOPERAND64
add esp, 16
sub esp, 8
push -1
push 0
push 0
push -2147483648
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HPREPOPERAND
add esp, 32
mov eax, dword ptr [SYMB_DTYPETB+32]
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
sub esp, 8
push offset Lt_0004
push dword ptr [ebp-12]
call HMOV
add esp, 16
jmp .L_09CF
.L_09D0:
sub esp, 8
push offset Lt_0006
push dword ptr [ebp-12]
call HMOV
add esp, 16
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
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call HMOV
add esp, 16
sub esp, 12
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-40]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 4
push offset Lt_0670
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-112]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-148]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-148]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-148]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push 7
push offset Lt_094C
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-172]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-172]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-172]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-16], 1
je .L_09DC
sub esp, 12
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
lea eax, [ebp-184]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-220]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-220]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-220]
push eax
call fb_StrDelete
add esp, 16
.L_09DC:
.L_09DB:
jmp .L_09CD
.L_09D1:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-72], 0
sub esp, 8
push -1
push dword ptr [ebp+8]
call HFINDREGNOTINVREG
add esp, 16
mov dword ptr [ebp-68], eax
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-68]
push 2
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 4
push dword ptr [ebp-68]
push 8
call HGETREGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-68]
push 0
call HISREGFREE
add esp, 16
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
jne .L_09E2
sub esp, 12
push dword ptr [ebp-52]
call HPUSH
add esp, 16
.L_09E2:
.L_09E1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .L_09E4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebp-68], ebx
jne .L_09E6
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push -1
lea ebx, [ebp-40]
push ebx
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea ebx, [ebp-52]
push ebx
push 4
push offset Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea ebx, [ebp-144]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
jmp .L_09E5
.L_09E6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebx+12]
cmp dword ptr [ebp-68], eax
jne .L_09EB
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-28]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 4
push offset Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
jmp .L_09E5
.L_09EB:
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call HMOV
add esp, 16
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-40]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 4
push offset Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
.L_09E5:
jmp .L_09E3
.L_09E4:
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-52]
call HMOV
add esp, 16
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-40]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 4
push offset Lt_0670
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
.L_09E3:
sub esp, 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_02FD
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 5
push offset Lt_02FC
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-108]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push 7
push offset Lt_094C
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-132]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-16], 1
jne .L_09FE
sub esp, 8
push dword ptr [ebp-64]
push dword ptr [ebp-12]
call HMOV
add esp, 16
jmp .L_09FD
.L_09FE:
sub esp, 12
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
push -1
sub esp, 4
push 3
push offset Lt_0073
push -1
sub esp, 4
push -1
lea eax, [ebp-52]
push eax
push 7
push offset Lt_0318
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-180]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-180]
call OUTP
add esp, 16
sub esp, 12
lea eax, [ebp-180]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HMOV
add esp, 16
.L_09FD:
cmp dword ptr [ebp-72], 0
jne .L_0A04
sub esp, 12
push dword ptr [ebp-52]
call HPOP
add esp, 16
.L_0A04:
.L_0A03:
.L_09CD:
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_09CC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADL2B, .-_EMITLOADL2B
.cfi_endproc
.balign 16
_EMITSTORL2B:
.type _EMITSTORL2B, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A05:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITLOADL2B
add esp, 16
.L_0A06:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORL2B, .-_EMITSTORL2B
.cfi_endproc
.balign 16
_INIT:
.type _INIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A4B:
call HINITREGTB
mov eax, dword ptr [ENV+272]
sal eax, 4
mov ecx, dword ptr [DTYPETB+eax]
mov dword ptr [DTYPETB+112], ecx
mov ecx, dword ptr [DTYPETB+eax+4]
mov dword ptr [DTYPETB+116], ecx
mov ecx, dword ptr [DTYPETB+eax+8]
mov dword ptr [DTYPETB+120], ecx
mov ecx, dword ptr [DTYPETB+eax+12]
mov dword ptr [DTYPETB+124], ecx
mov dword ptr [EMIT+140], -1
mov dword ptr [EMIT+144], -1
mov dword ptr [ebp-8], 66304
cmp dword ptr [ENV+116], 1
jne .L_0A4E
or dword ptr [ebp-8], 1
.L_0A4E:
.L_0A4D:
mov eax, dword ptr [ebp-8]
or dword ptr [IR+272], eax
call EDBGINIT
mov dword ptr [ebp-4], -1
.L_0A4C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _INIT, .-_INIT
.cfi_endproc
.balign 16
_END:
.type _END, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A4F:
mov dword ptr [EMIT+140], -1
mov dword ptr [EMIT+144], -1
call HENDREGTB
.L_0A50:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _END, .-_END
.cfi_endproc
.balign 16
_GETOPTIONVALUE:
.type _GETOPTIONVALUE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A51:
cmp dword ptr [ebp+8], 1
jne .L_0A54
.L_0A55:
mov dword ptr [ebp-4], 16
jmp .L_0A52
jmp .L_0A53
.L_0A54:
sub esp, 12
push 0
push 1
push 0
push offset Lt_0A57
push 21
call ERRREPORTEX
add esp, 32
.L_0A56:
.L_0A53:
.L_0A52:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETOPTIONVALUE, .-_GETOPTIONVALUE
.cfi_endproc
.balign 16
_OPEN:
.type _OPEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A58:
sub esp, 12
lea eax, [ENV+584]
push eax
call HFILEEXISTS
add esp, 16
test eax, eax
je .L_0A5B
sub esp, 12
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
.L_0A5B:
.L_0A5A:
call fb_FileFree
mov dword ptr [ENV+580], eax
sub esp, 8
push 0
push dword ptr [ENV+580]
push 0
push 3
push 0
lea eax, [ENV+584]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0A5D
mov dword ptr [ebp-4], 0
jmp .L_0A59
.L_0A5D:
.L_0A5C:
call HWRITEHEADER
mov dword ptr [ebp-4], -1
.L_0A59:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _OPEN, .-_OPEN
.cfi_endproc
.balign 16
_CLOSE:
.type _CLOSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A5E:
sub esp, 12
push 0
call EDBGINCLUDE
add esp, 16
sub esp, 8
push offset HDECLVARIABLE
push 1
call SYMBFOREACHGLOBAL
add esp, 16
mov eax, dword ptr [ENV+284]
and eax, 4
and eax, dword ptr [ENV+224]
je .L_0A61
sub esp, 8
push offset HEMITEXPORT
push 3
call SYMBFOREACHGLOBAL
add esp, 16
.L_0A61:
.L_0A60:
sub esp, 8
push -1
push dword ptr [SYMB+99040]
call HWRITECTOR
add esp, 16
sub esp, 8
push 0
push dword ptr [SYMB+99080]
call HWRITECTOR
add esp, 16
call EDBGEMITFOOTER
sub esp, 12
push dword ptr [ENV+580]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0A63
.L_0A63:
.L_0A62:
mov dword ptr [ENV+580], 0
.L_0A5F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _CLOSE, .-_CLOSE
.cfi_endproc
.balign 16
_PROCGETFRAMEREGNAME:
.type _PROCGETFRAMEREGNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0A64:
mov eax, offset Lt_0D76
mov dword ptr [ebp-4], eax
.L_0A65:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCGETFRAMEREGNAME, .-_PROCGETFRAMEREGNAME
.cfi_endproc

.section .data
.balign 4
Lt_0D76:
.ascii "ebp\0"

.section .text
.balign 16
_ISREGPRESERVED:
.type _ISREGPRESERVED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
jmp dword ptr [.L_0A6F+eax*4]
.L_0A6F:
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ISREGPRESERVED, .-_ISREGPRESERVED
.cfi_endproc
.balign 16
_GETARGREG:
.type _GETARGREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETARGREG, .-_GETARGREG
.cfi_endproc
.balign 16
_GETRESULTREG:
.type _GETRESULTREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETRESULTREG, .-_GETRESULTREG
.cfi_endproc
.balign 16
_GETFREEPRESERVEDREG:
.type _GETFREEPRESERVEDREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0A82:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+8], 1
jne .L_0A85
jmp .L_0A83
.L_0A85:
.L_0A84:
sub esp, 8
push 4
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 16
test eax, eax
je .L_0A87
mov dword ptr [ebp-4], 4
jmp .L_0A86
.L_0A87:
sub esp, 8
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
je .L_0A8C
mov dword ptr [ebp-4], 2
.L_0A8C:
.L_0A8B:
jmp .L_0A86
.L_0A88:
sub esp, 8
push 1
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset EMIT
add ebx, eax
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset EMIT
add eax, ebx
mov ebx, dword ptr [eax+8]
call dword ptr [ebx+16]
add esp, 16
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
cmp dword ptr [SYMB_DTYPETB+eax+4], 1
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETFREEPRESERVEDREG, .-_GETFREEPRESERVEDREG
.cfi_endproc
.balign 16
_PROCBEGIN:
.type _PROCBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
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
sub esp, 12
push dword ptr [ebp+8]
call EDBGPROCBEGIN
add esp, 16
.L_0A93:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCBEGIN, .-_PROCBEGIN
.cfi_endproc
.balign 16
_PROCEND:
.type _PROCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0A94:
sub esp, 12
push dword ptr [ebp+8]
call EDBGPROCEND
add esp, 16
.L_0A95:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCEND, .-_PROCEND
.cfi_endproc
.balign 16
_PROCALLOCSTATICVARS:
.type _PROCALLOCSTATICVARS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
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
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _PROCALLOCSTATICVARS
add esp, 16
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
sub esp, 12
push dword ptr [ebp+8]
call HDECLVARIABLE
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCSTATICVARS, .-_PROCALLOCSTATICVARS
.cfi_endproc
.balign 16
_PROCALLOCLOCAL:
.type _PROCALLOCLOCAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
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
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCLOCAL, .-_PROCALLOCLOCAL
.cfi_endproc
.balign 16
_PROCALLOCARG:
.type _PROCALLOCARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
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
mov eax, dword ptr [ENV+296]
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
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _PROCALLOCLOCAL
add esp, 16
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCARG, .-_PROCALLOCARG
.cfi_endproc
.balign 16
_PROCHEADER:
.type _PROCHEADER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0AB7:
call EMITRESET
sub esp, 12
push dword ptr [ebp+8]
call EDBGPROCEMITBEGIN
add esp, 16
.L_0AB8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCHEADER, .-_PROCHEADER
.cfi_endproc
.balign 16
_PROCFOOTER:
.type _PROCFOOTER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0AB9:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ENV+108]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .L_0ABB
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
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
sub esp, 8
push 0
push 3
call _SETSECTION
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call EDBGEMITPROCHEADER
add esp, 16
sub esp, 12
push 16
call HALIGN
add esp, 16
cmp dword ptr [ebp-8], 0
je .L_0ABE
sub esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-12]
call HPUBLIC
add esp, 16
.L_0ABE:
.L_0ABD:
sub esp, 12
push dword ptr [ebp-12]
call HLABEL
add esp, 16
cmp dword ptr [ebp-20], 0
je .L_0AC0
sub esp, 8
push 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push 12
push offset Lt_0AC2
push -1
sub esp, 4
push 0
push dword ptr [ebp-12]
push 7
push offset Lt_0AC1
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
call OUTEX
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-24], 0
je .L_0AC8
sub esp, 8
push 0
push offset Lt_0ACA
call OUTEX
add esp, 16
.L_0AC8:
.L_0AC7:
.L_0AC0:
.L_0ABF:
sub esp, 12
push dword ptr [ebp+8]
call HCREATEFRAME
add esp, 16
sub esp, 4
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp+8]
call EDBGEMITLINEFLUSH
add esp, 16
call EMITFLUSH
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HDESTROYFRAME
add esp, 16
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
sub esp, 8
push 0
push offset Lt_0AD0
call OUTEX
add esp, 16
.L_0ACE:
.L_0ACD:
sub esp, 4
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+20]
push dword ptr [ebp+8]
call EDBGEMITLINEFLUSH
add esp, 16
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call EDBGEMITPROCFOOTER
add esp, 16
.L_0ABA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCFOOTER, .-_PROCFOOTER
.cfi_endproc
.balign 16
_SCOPEBEGIN:
.type _SCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0AD1:
sub esp, 12
push dword ptr [ebp+8]
call EDBGSCOPEBEGIN
add esp, 16
.L_0AD2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SCOPEBEGIN, .-_SCOPEBEGIN
.cfi_endproc
.balign 16
_SCOPEEND:
.type _SCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0AD3:
sub esp, 12
push dword ptr [ebp+8]
call EDBGSCOPEEND
add esp, 16
.L_0AD4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SCOPEEND, .-_SCOPEEND
.cfi_endproc
.balign 16
_SETSECTION:
.type _SETSECTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0AD5:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _GETSECTIONSTRING
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0AD8
jmp .L_0AD6
.L_0AD8:
.L_0AD7:
sub esp, 12
push 0
push 0
push dword ptr [ebp-4]
push -1
push offset Lt_0D85
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0D85
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_0D85]
call OUTEX
add esp, 16
.L_0AD6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SETSECTION, .-_SETSECTION
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D85,12

.section .text
.balign 16
_GETTYPESTRING:
.type _GETTYPESTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
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
mov eax, offset Lt_0AE1
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE2:
mov eax, offset Lt_0AE3
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE4:
mov eax, offset Lt_0AE5
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE6:
mov eax, offset Lt_0AE7
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AE8:
mov eax, offset Lt_0AE9
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEA:
mov eax, offset Lt_0AEB
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEC:
mov eax, offset Lt_0AED
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEE:
mov eax, offset Lt_0AE7
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0AEF:
mov eax, offset Lt_0AED
mov dword ptr [ebp-4], eax
jmp .L_0ADD
.L_0ADE:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 23
ja .L_0AEF
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0AF0+eax*4-4]
.L_0AF0:
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETTYPESTRING, .-_GETTYPESTRING
.cfi_endproc
.balign 16
_GETSECTIONSTRING:
.type _GETSECTIONSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0AF1:
mov eax, dword ptr [EMIT+140]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [EMIT+144]
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
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
push offset Lt_0D89
call fb_StrAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0AF6
sub esp, 12
push 0
push 10
push offset Lt_0AF7
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0AF6:
.L_0AF5:
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0AF9
.L_0AFB:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0AFD
.L_0AFF:
sub esp, 12
push 0
push 6
push offset Lt_0B00
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AFC
.L_0B01:
sub esp, 12
push 0
push 6
push offset Lt_0B02
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AFC
.L_0B03:
sub esp, 12
push 0
push 7
push offset Lt_0B04
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AFC
.L_0AFD:
cmp dword ptr [ebp-12], 9
ja .L_0B03
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0B05+eax*4]
.L_0B05:
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
sub esp, 12
push 0
push 5
push offset Lt_0B07
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AF8
.L_0B08:
sub esp, 12
push 0
push 4
push offset Lt_0B09
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AF8
.L_0B0A:
sub esp, 12
push 0
push 5
push offset Lt_0B0B
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AF8
.L_0B0C:
sub esp, 12
push 0
push 8
push offset Lt_0B0D
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0AF8
.L_0B0E:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0B10
sub esp, 12
push 0
push 23
push offset Lt_0B12
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0B0F
.L_0B10:
sub esp, 12
push 0
push 8
push offset Lt_001A
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0B0F:
jmp .L_0AF8
.L_0B13:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0B15
sub esp, 12
push 0
push 12
push offset Lt_0B16
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0B14
.L_0B15:
sub esp, 12
push 0
push 6
push offset Lt_0B17
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+12], 0
jle .L_0B19
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 5
push -1
sub esp, 12
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call fb_IntToStr
add esp, 16
push eax
push 6
push offset Lt_0B1A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0B19:
.L_0B18:
cmp dword ptr [ENV+108], 2
jne .L_0B1D
sub esp, 12
push 0
push 18
push offset Lt_0B23
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0B1D:
.L_0B1C:
.L_0B14:
jmp .L_0AF8
.L_0B24:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0B26
sub esp, 12
push 0
push 11
push offset Lt_0B27
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
jmp .L_0B25
.L_0B26:
sub esp, 12
push 0
push 6
push offset Lt_0B28
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+12], 0
jle .L_0B2A
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 5
push -1
sub esp, 12
mov eax, 65535
sub eax, dword ptr [ebp+12]
push eax
call fb_IntToStr
add esp, 16
push eax
push 6
push offset Lt_0B1A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0B2A:
.L_0B29:
cmp dword ptr [ENV+108], 2
jne .L_0B2D
sub esp, 12
push 0
push 18
push offset Lt_0B23
push -1
push offset Lt_0D89
call fb_StrConcatAssign
add esp, 32
.L_0B2D:
.L_0B2C:
.L_0B25:
jmp .L_0AF8
.L_0AF9:
cmp dword ptr [ebp-8], 7
ja .L_0AF8
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0B2E+eax*4]
.L_0B2E:
.int .L_0AFB
.int .L_0B06
.int .L_0B08
.int .L_0B0A
.int .L_0B0C
.int .L_0B13
.int .L_0B24
.int .L_0B0E
.L_0AF8:
mov eax, dword ptr [Lt_0D89]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [EMIT+140], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [EMIT+144], eax
.L_0AF2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETSECTIONSTRING, .-_GETSECTIONSTRING
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0D89,12

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4
Lt_001A:	.ascii	"fbctinf\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_0072,36

.section .rodata
.balign 4
Lt_0073:	.ascii	", \0"

.section .data
.balign 4

.globl DTYPETB
DTYPETB:
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
RNAMETB:
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

.section .rodata
.balign 4
Lt_0079:	.ascii	"cl\0"
.balign 4
Lt_007E:	.ascii	"dx\0"
.balign 4
Lt_007F:	.ascii	"cx\0"
.balign 4
Lt_0081:	.ascii	"ax\0"
.balign 4
Lt_0082:	.ascii	"edx\0"
.balign 4
Lt_0083:	.ascii	"edi\0"
.balign 4
Lt_0084:	.ascii	"esi\0"
.balign 4
Lt_0085:	.ascii	"ecx\0"
.balign 4
Lt_0086:	.ascii	"ebx\0"
.balign 4
Lt_0087:	.ascii	"eax\0"
.balign 4
Lt_0088:	.ascii	"ebp\0"
.balign 4
Lt_0115:	.ascii	"+\0"
.balign 4
Lt_0121:	.ascii	"*\0"
.balign 4
Lt_0134:	.ascii	" [\0"
.balign 4
Lt_0135:	.ascii	"[\0"
.balign 4
Lt_0144:	.ascii	"]\0"
.balign 4
Lt_0146:	.ascii	"offset \0"
.balign 4
Lt_014A:	.ascii	" + \0"
.balign 4
Lt_0168:	.ascii	"\t\0"
.balign 4
Lt_016A:	.ascii	"\n\0"
.balign 4
Lt_016E:	.ascii	" \0"
.balign 4
Lt_0173:	.ascii	"push \0"
.balign 4
Lt_0178:	.ascii	"pop \0"
.balign 4
Lt_017D:	.ascii	"mov \0"
.balign 4
Lt_0183:	.ascii	"xchg \0"
.balign 4
Lt_0189:	.ascii	"\t#\0"
.balign 4
Lt_018E:	.ascii	"\n.globl \0"
.balign 4
Lt_0192:	.ascii	":\0"
.balign 4
Lt_0193:	.ascii	":\n\0"
.balign 4
Lt_0197:	.ascii	".balign \0"
.balign 4
Lt_01A2:	.ascii	"xmm\0"
.balign 4
Lt_01B8:	.ascii	".lcomm\0"
.balign 4
Lt_01B9:	.ascii	".comm\0"
.balign 4
Lt_01BB:	.ascii	",\0"
.balign 4
Lt_01BE:	.ascii	".intel_syntax noprefix\0"
.balign 4
Lt_01C5:	.ascii	"\"\0"
.balign 4
Lt_01C8:	.ascii	"\\0\0"
.balign 4
Lt_01C9:	.ascii	"\\0\"\0"
.balign 4
Lt_01D7:	.ascii	":\t\0"
.balign 4
Lt_01EA:	.ascii	".ascii \"\0"
.balign 4
Lt_01EC:	.ascii	".ascii \" -export:\0"
.balign 4
Lt_01ED:	.ascii	"\"\n\0"
.balign 4
Lt_0210:	.ascii	"lea edi, [ebp-\0"
.balign 4
Lt_0214:	.ascii	"mov ecx,\0"
.balign 4
Lt_0217:	.ascii	"pxor mm0, mm0\0"
.balign 4
Lt_0218:	.ascii	"movq [edi], mm0\0"
.balign 4
Lt_0219:	.ascii	"add edi, 8\0"
.balign 4
Lt_021A:	.ascii	"dec ecx\0"
.balign 4
Lt_021B:	.ascii	"jnz \0"
.balign 4
Lt_021E:	.ascii	"emms\0"
.balign 4
Lt_0226:	.ascii	"movq [ebp-\0"
.balign 4
Lt_0227:	.ascii	"], mm0\0"
.balign 4
Lt_022D:	.ascii	"mov dword ptr [ebp-\0"
.balign 4
Lt_022E:	.ascii	"], 0\0"
.balign 4
Lt_023B:	.ascii	"xor eax, eax\0"
.balign 4
Lt_023C:	.ascii	"rep stosd\0"
.balign 4
Lt_0252:	.ascii	"dword ptr [ebp\0"
.balign 4
Lt_0271:	.ascii	".cfi_def_cfa_offset 8\0"
.balign 4
Lt_0272:	.ascii	".cfi_offset 5, -8\0"
.balign 4
Lt_0273:	.ascii	"mov ebp, esp\0"
.balign 4
Lt_0276:	.ascii	".cfi_def_cfa_register 5\0"
.balign 4
Lt_0279:	.ascii	"and esp, 0xFFFFFFF0\0"
.balign 4
Lt_027C:	.ascii	"sub esp, \0"
.balign 4
Lt_0284:	.ascii	".section .data\n\0"
.balign 4
Lt_0286:	.ascii	".balign 4\n\0"
.balign 4
Lt_028B:	.ascii	".long 0\0"
.balign 4
Lt_028D:	.ascii	".section .text\n\0"
.balign 4
Lt_028E:	.ascii	"mov edx, offset .\0"
.balign 4
Lt_0291:	.ascii	"call _mcount\0"
.balign 4
Lt_02A6:	.ascii	"mov esp, ebp\0"
.balign 4
Lt_02A9:	.ascii	".cfi_restore 5\0"
.balign 4
Lt_02AA:	.ascii	".cfi_def_cfa 4, 4\0"
.balign 4
Lt_02AD:	.ascii	"ret \0"
.balign 4
Lt_02B0:	.ascii	"ret\0"
.balign 4
Lt_02B3:	.ascii	".size \0"
.balign 4
Lt_02B4:	.ascii	", .-\0"
.balign 4
Lt_02CE:	.ascii	"call \0"
.balign 4
Lt_02D2:	.ascii	"add esp, \0"
.balign 4
Lt_02DD:	.ascii	"jle \0"
.balign 4
Lt_02DF:	.ascii	"jge \0"
.balign 4
Lt_02E1:	.ascii	"jl \0"
.balign 4
Lt_02E3:	.ascii	"jg \0"
.balign 4
Lt_02E5:	.ascii	"je \0"
.balign 4
Lt_02E7:	.ascii	"jne \0"
.balign 4
Lt_02EC:	.ascii	"jmp \0"
.balign 4
Lt_02FC:	.ascii	"cmp \0"
.balign 4
Lt_02FD:	.ascii	", 0\0"
.balign 4
Lt_02FE:	.ascii	"jns \0"
.balign 4
Lt_02FF:	.ascii	"0x403f\0"
.balign 4
Lt_0300:	.ascii	"0x80000000\0"
.balign 4
Lt_0301:	.ascii	"fldt [esp]\0"
.balign 4
Lt_0302:	.ascii	"add esp, 12\0"
.balign 4
Lt_0303:	.ascii	"faddp\0"
.balign 4
Lt_0310:	.ascii	"-1\0"
.balign 4
Lt_0317:	.ascii	"movsx \0"
.balign 4
Lt_0318:	.ascii	"movzx \0"
.balign 4
Lt_031D:	.ascii	"sar \0"
.balign 4
Lt_031E:	.ascii	", 31\0"
.balign 4
Lt_0325:	.ascii	"fistp \0"
.balign 4
Lt_034A:	.ascii	"sub esp, 4\0"
.balign 4
Lt_034B:	.ascii	"fistp dword ptr [esp]\0"
.balign 4
Lt_034E:	.ascii	"byte ptr [esp]\0"
.balign 4
Lt_034F:	.ascii	"add esp, 4\0"
.balign 4
Lt_0352:	.ascii	"dword ptr [esp]\0"
.balign 4
Lt_035B:	.ascii	"sub esp, 8\0"
.balign 4
Lt_035C:	.ascii	"fistp qword ptr [esp]\0"
.balign 4
Lt_035D:	.ascii	"add esp, 2\0"
.balign 4
Lt_0366:	.ascii	"fild \0"
.balign 4
Lt_0367:	.ascii	" [esp]\0"
.balign 4
Lt_036A:	.ascii	"add esp, 8\0"
.balign 4
Lt_036B:	.ascii	"fild qword ptr [esp]\0"
.balign 4
Lt_0370:	.ascii	"fstp \0"
.balign 4
Lt_037D:	.ascii	"fild dword ptr [esp]\0"
.balign 4
Lt_0390:	.ascii	"add esp, 6\0"
.balign 4
Lt_03A3:	.ascii	"fld \0"
.balign 4
Lt_03C4:	.ascii	"mov dword ptr [esp], 0x5F000000\0"
.balign 4
Lt_03C7:	.ascii	"fld dword ptr [esp]\0"
.balign 4
Lt_03C8:	.ascii	"fcomip\0"
.balign 4
Lt_03C9:	.ascii	"jbe\0"
.balign 4
Lt_03CA:	.ascii	"fcom dword ptr [esp]\0"
.balign 4
Lt_03CD:	.ascii	"fnstsw ax\0"
.balign 4
Lt_03CE:	.ascii	"test ah, 1\0"
.balign 4
Lt_03CF:	.ascii	"jz\0"
.balign 4
Lt_03D0:	.ascii	"jmp\0"
.balign 4
Lt_03D1:	.ascii	"fsub dword ptr [esp]\0"
.balign 4
Lt_03D2:	.ascii	"xor \0"
.balign 4
Lt_03D3:	.ascii	", 0x80000000\0"
.balign 4
Lt_044B:	.ascii	"add \0"
.balign 4
Lt_044C:	.ascii	"adc \0"
.balign 4
Lt_0459:	.ascii	"inc \0"
.balign 4
Lt_045B:	.ascii	"dec \0"
.balign 4
Lt_0464:	.ascii	"fadd \0"
.balign 4
Lt_0465:	.ascii	"fiadd \0"
.balign 4
Lt_0468:	.ascii	"sub \0"
.balign 4
Lt_0469:	.ascii	"sbb \0"
.balign 4
Lt_047B:	.ascii	"fsubrp\0"
.balign 4
Lt_0480:	.ascii	"fsub \0"
.balign 4
Lt_0481:	.ascii	"fisub \0"
.balign 4
Lt_0490:	.ascii	"mov eax, [esp+\0"
.balign 4
Lt_0494:	.ascii	"mul dword ptr [esp+\0"
.balign 4
Lt_0498:	.ascii	"xchg eax, [esp+\0"
.balign 4
Lt_049C:	.ascii	"imul eax, [esp+\0"
.balign 4
Lt_04A0:	.ascii	"add eax, edx\0"
.balign 4
Lt_04A1:	.ascii	"mov edx, [esp+\0"
.balign 4
Lt_04A5:	.ascii	"imul edx, [esp+\0"
.balign 4
Lt_04A9:	.ascii	"add edx, eax\0"
.balign 4
Lt_04AA:	.ascii	"mov [esp+\0"
.balign 4
Lt_04AB:	.ascii	"], edx\0"
.balign 4
Lt_04C1:	.ascii	"imul \0"
.balign 4
Lt_04C8:	.ascii	"fmulp\0"
.balign 4
Lt_04CD:	.ascii	"fmul \0"
.balign 4
Lt_04CE:	.ascii	"fimul \0"
.balign 4
Lt_04D3:	.ascii	"fdivrp\0"
.balign 4
Lt_04D8:	.ascii	"fdiv \0"
.balign 4
Lt_04D9:	.ascii	"fidiv \0"
.balign 4
Lt_04ED:	.ascii	"xchg eax, [esp]\0"
.balign 4
Lt_04FF:	.ascii	"cdq\0"
.balign 4
Lt_0500:	.ascii	"cwd\0"
.balign 4
Lt_0501:	.ascii	"idiv \0"
.balign 4
Lt_0502:	.ascii	"div \0"
.balign 4
Lt_0510:	.ascii	"xchg ecx, [esp]\0"
.balign 4
Lt_0517:	.ascii	"xchg ecx, eax\0"
.balign 4
Lt_055F:	.ascii	"shl \0"
.balign 4
Lt_0560:	.ascii	"shld \0"
.balign 4
Lt_0565:	.ascii	"shr \0"
.balign 4
Lt_0566:	.ascii	"shrd \0"
.balign 4
Lt_0602:	.ascii	"xchg edx, [esp+\0"
.balign 4
Lt_0613:	.ascii	"shld edx, eax, cl\0"
.balign 4
Lt_0614:	.ascii	" eax, cl\0"
.balign 4
Lt_0617:	.ascii	"shrd eax, edx, cl\0"
.balign 4
Lt_0618:	.ascii	" edx, cl\0"
.balign 4
Lt_061B:	.ascii	"test cl, 32\0"
.balign 4
Lt_061E:	.ascii	"mov edx, eax\0"
.balign 4
Lt_061F:	.ascii	"mov eax, edx\0"
.balign 4
Lt_0624:	.ascii	"sar edx, 31\0"
.balign 4
Lt_0625:	.ascii	"xor edx, edx\0"
.balign 4
Lt_062C:	.ascii	"xchg edx, [esp+4]\0"
.balign 4
Lt_062D:	.ascii	"mov [esp+4], edx\0"
.balign 4
Lt_0634:	.ascii	"xchg eax, [esp+0]\0"
.balign 4
Lt_0635:	.ascii	"mov [esp+0], eax\0"
.balign 4
Lt_0640:	.ascii	"sal\0"
.balign 4
Lt_0641:	.ascii	"sar\0"
.balign 4
Lt_0644:	.ascii	"shl\0"
.balign 4
Lt_0645:	.ascii	"shr\0"
.balign 4
Lt_066B:	.ascii	"and \0"
.balign 4
Lt_0670:	.ascii	"or \0"
.balign 4
Lt_0679:	.ascii	"not \0"
.balign 4
Lt_0688:	.ascii	"fxch\0"
.balign 4
Lt_0689:	.ascii	"fpatan\0"
.balign 4
Lt_068E:	.ascii	"fabs\0"
.balign 4
Lt_068F:	.ascii	"fyl2x\0"
.balign 4
Lt_0690:	.ascii	"fld st(0)\0"
.balign 4
Lt_0691:	.ascii	"frndint\0"
.balign 4
Lt_0692:	.ascii	"fsub st(1), st(0)\0"
.balign 4
Lt_0693:	.ascii	"f2xm1\0"
.balign 4
Lt_0694:	.ascii	"fld1\0"
.balign 4
Lt_0695:	.ascii	"fscale\0"
.balign 4
Lt_0696:	.ascii	"fstp st(1)\0"
.balign 4
Lt_069D:	.ascii	"j\0"
.balign 4
Lt_06B1:	.ascii	"test \0"
.balign 4
Lt_06BB:	.ascii	"xchg edx, \0"
.balign 4
Lt_06BC:	.ascii	"set\0"
.balign 4
Lt_06BD:	.ascii	" dl\0"
.balign 4
Lt_06C7:	.ascii	", 1\0"
.balign 4
Lt_06CA:	.ascii	", -1\0"
.balign 4
Lt_06D4:	.ascii	"fcomip st, st(1)\0"
.balign 4
Lt_06D5:	.ascii	"fstp st(0)\0"
.balign 4
Lt_06D8:	.ascii	"fcompp\0"
.balign 4
Lt_06D9:	.ascii	"fcomp \0"
.balign 4
Lt_06E0:	.ascii	"test ah, \0"
.balign 4
Lt_06E2:	.ascii	"sahf\0"
.balign 4
Lt_06EE:	.ascii	"\tdl\0"
.balign 4
Lt_06FD:	.ascii	"g\0"
.balign 4
Lt_06FE:	.ascii	"l\0"
.balign 4
Lt_06FF:	.ascii	"a\0"
.balign 4
Lt_0700:	.ascii	"b\0"
.balign 4
Lt_070B:	.ascii	"z\0"
.balign 4
Lt_070C:	.ascii	"0b01000001\0"
.balign 4
Lt_071D:	.ascii	"nz\0"
.balign 4
Lt_071E:	.ascii	"0b00000001\0"
.balign 4
Lt_0721:	.ascii	"ne\0"
.balign 4
Lt_0722:	.ascii	"e\0"
.balign 4
Lt_0729:	.ascii	"0b01000000\0"
.balign 4
Lt_0738:	.ascii	"be\0"
.balign 4
Lt_073F:	.ascii	"le\0"
.balign 4
Lt_0744:	.ascii	"ae\0"
.balign 4
Lt_0751:	.ascii	"ge\0"
.balign 4
Lt_0758:	.ascii	"neg \0"
.balign 4
Lt_075D:	.ascii	"fchs\0"
.balign 4
Lt_077B:	.ascii	"jl\0"
.balign 4
Lt_077C:	.ascii	"jg\0"
.balign 4
Lt_0780:	.ascii	"jne\0"
.balign 4
Lt_0788:	.ascii	"je\0"
.balign 4
Lt_078D:	.ascii	"fldz\0"
.balign 4
Lt_0790:	.ascii	"ftst\0"
.balign 4
Lt_0793:	.ascii	"ja\0"
.balign 4
Lt_0796:	.ascii	"fsin\0"
.balign 4
Lt_0799:	.ascii	"fmul st(0), st(0)\0"
.balign 4
Lt_079A:	.ascii	"fsqrt\0"
.balign 4
Lt_079D:	.ascii	"fcos\0"
.balign 4
Lt_07A2:	.ascii	"fptan\0"
.balign 4
Lt_07A9:	.ascii	"fldln2\0"
.balign 4
Lt_07AC:	.ascii	"fldl2e\0"
.balign 4
Lt_07AD:	.ascii	"fmulp st(1), st\0"
.balign 4
Lt_07AE:	.ascii	"fld st\0"
.balign 4
Lt_07AF:	.ascii	"fsub st(1), st\0"
.balign 4
Lt_07B0:	.ascii	"0x3f800000\0"
.balign 4
Lt_07B1:	.ascii	"fadd dword ptr [esp]\0"
.balign 4
Lt_07B4:	.ascii	"fnstcw [esp]\0"
.balign 4
Lt_07B5:	.ascii	"[esp]\0"
.balign 4
Lt_07B6:	.ascii	"11\0"
.balign 4
Lt_07B9:	.ascii	", 0b1111001111111111\0"
.balign 4
Lt_07BD:	.ascii	", 0b0000\0"
.balign 4
Lt_07BE:	.ascii	"0000000000\0"
.balign 4
Lt_07C4:	.ascii	"fldcw [esp]\0"
.balign 4
Lt_07CE:	.ascii	"01\0"
.balign 4
Lt_07D3:	.ascii	"fsubp\0"
.balign 4
Lt_07DA:	.ascii	"fist dword ptr [esp]\0"
.balign 4
Lt_07DB:	.ascii	"fild  qword ptr [esp]\0"
.balign 4
Lt_07DC:	.ascii	"fsubr st(0), st(1)\0"
.balign 4
Lt_07DD:	.ascii	"fxch st(2)\0"
.balign 4
Lt_07DE:	.ascii	"fcmovb st(0), st(1)\0"
.balign 4
Lt_07E5:	.ascii	"fsubr st(1)\0"
.balign 4
Lt_07E6:	.ascii	"fcomip st(2)\0"
.balign 4
Lt_07E7:	.ascii	"fst st(1)\0"
.balign 4
Lt_07F6:	.ascii	"fstp dword ptr [esp]\0"
.balign 4
Lt_07F9:	.ascii	"fxch \0"
.balign 4
Lt_082B:	.ascii	"sub esp,\0"
.balign 4
Lt_083B:	.ascii	", 16\0"
.balign 4
Lt_0877:	.ascii	"add esp,\0"
.balign 4
Lt_087C:	.ascii	"lea \0"
.balign 4
Lt_089B:	.ascii	"mov ecx, \0"
.balign 4
Lt_089C:	.ascii	"rep movsd\0"
.balign 4
Lt_089E:	.ascii	"mov ecx, [esi]\0"
.balign 4
Lt_089F:	.ascii	"mov [edi], ecx\0"
.balign 4
Lt_08A2:	.ascii	"add esi, 4\0"
.balign 4
Lt_08A3:	.ascii	"add edi, 4\0"
.balign 4
Lt_08A8:	.ascii	"mov cx, [esi]\0"
.balign 4
Lt_08A9:	.ascii	"mov [edi], cx\0"
.balign 4
Lt_08AC:	.ascii	"add esi, 2\0"
.balign 4
Lt_08AD:	.ascii	"add edi, 2\0"
.balign 4
Lt_08B0:	.ascii	"mov cl, [esi]\0"
.balign 4
Lt_08B1:	.ascii	"mov [edi], cl\0"
.balign 4
Lt_08DE:	.ascii	"mov dword ptr [edi], eax\0"
.balign 4
Lt_08E5:	.ascii	"mov word ptr [edi], ax\0"
.balign 4
Lt_08EA:	.ascii	"mov byte ptr [edi], al\0"
.balign 4
Lt_090E:	.ascii	"lea edi, \0"
.balign 4
Lt_090F:	.ascii	"push ecx\0"
.balign 4
Lt_0910:	.ascii	"shr ecx, 2\0"
.balign 4
Lt_0911:	.ascii	"pop ecx\0"
.balign 4
Lt_0912:	.ascii	"and ecx, 3\0"
.balign 4
Lt_0913:	.ascii	"rep stosb\0"
.balign 4
Lt_094C:	.ascii	"setne \0"
.balign 4
Lt_097F:	.ascii	"push eax\0"
.balign 4
Lt_0982:	.ascii	"setnz al\0"
.balign 4
Lt_0985:	.ascii	", al\0"
.balign 4
Lt_098E:	.ascii	"pop eax\0"
.balign 4
Lt_0A13:	.ascii	"0x\0"
.balign 4
Lt_0A21:	.ascii	".int \0"
.balign 4
Lt_0A29:	.ascii	"\\0\"\n\0"
.balign 4
Lt_0A36:	.ascii	".skip \0"
.balign 4
Lt_0A37:	.ascii	",0\0"
.balign 4
Lt_0A40:	.ascii	" \"\0"
.balign 4
Lt_0A41:	.ascii	"\\0\"\0"

.section .data
.balign 4
_OPFNTB:
.int _EMITNOP
.int _EMITLOADI2I
.int _EMITLOADF2I
.int _EMITLOADL2I
.int _EMITLOADB2I
.int _EMITLOADI2F
.int _EMITLOADF2F
.int _EMITLOADL2F
.int _EMITLOADB2F
.int _EMITLOADI2L
.int _EMITLOADF2L
.int _EMITLOADL2L
.int _EMITLOADB2L
.int _EMITLOADI2B
.int _EMITLOADF2B
.int _EMITLOADL2B
.int _EMITLOADB2B
.int _EMITSTORI2I
.int _EMITSTORF2I
.int _EMITSTORL2I
.int _EMITSTORB2I
.int _EMITSTORI2F
.int _EMITSTORF2F
.int _EMITSTORL2F
.int _EMITSTORB2F
.int _EMITSTORI2L
.int _EMITSTORF2L
.int _EMITSTORL2L
.int _EMITSTORB2L
.int _EMITSTORI2B
.int _EMITSTORF2B
.int _EMITSTORL2B
.int _EMITSTORB2B
.int _EMITMOVI
.int _EMITMOVF
.int _EMITMOVL
.int _EMITADDI
.int _EMITADDF
.int _EMITADDL
.int _EMITSUBI
.int _EMITSUBF
.int _EMITSUBL
.int _EMITMULI
.int _EMITMULF
.int _EMITMULL
.int _EMITDIVI
.int _EMITDIVF
.long 0
.int _EMITMODI
.long 0
.long 0
.int _EMITSHLI
.int _EMITSHLL
.int _EMITSHRI
.int _EMITSHRL
.int _EMITANDI
.int _EMITANDL
.int _EMITORI
.int _EMITORL
.int _EMITXORI
.int _EMITXORL
.int _EMITEQVI
.int _EMITEQVL
.int _EMITIMPI
.int _EMITIMPL
.int _EMITATN2
.int _EMITPOW
.int _EMITADDROF
.int _EMITDEREF
.int _EMITCGTI
.int _EMITCGTF
.int _EMITCGTL
.int _EMITCLTI
.int _EMITCLTF
.int _EMITCLTL
.int _EMITCEQI
.int _EMITCEQF
.int _EMITCEQL
.int _EMITCNEI
.int _EMITCNEF
.int _EMITCNEL
.int _EMITCGEI
.int _EMITCGEF
.int _EMITCGEL
.int _EMITCLEI
.int _EMITCLEF
.int _EMITCLEL
.int _EMITNEGI
.int _EMITNEGF
.int _EMITNEGL
.int _EMITNOTI
.int _EMITNOTL
.long 0
.int _EMITABSI
.int _EMITABSF
.int _EMITABSL
.int _EMITSGNI
.int _EMITSGNF
.int _EMITSGNL
.int _EMITFIX
.int _EMITFRAC
.int _EMITCONVFD2FS
.long 0
.int _EMITSIN
.int _EMITASIN
.int _EMITCOS
.int _EMITACOS
.int _EMITTAN
.int _EMITATAN
.int _EMITSQRT
.long 0
.long 0
.int _EMITLOG
.int _EMITEXP
.int _EMITFLOOR
.int _EMITXCHGTOS
.int _EMITSTACKALIGN
.int _EMITPUSHI
.int _EMITPUSHF
.int _EMITPUSHL
.int _EMITPOPI
.int _EMITPOPF
.int _EMITPOPL
.int _EMITPUSHUDT
.int _EMITPOPST0
.int _EMITCALL
.int _EMITCALLPTR
.int _EMITBRANCH
.int _EMITJUMP
.int _EMITJUMPPTR
.int _EMITRET
.int _EMITLABEL
.int _EMITPUBLIC
.int _EMITLIT
.int _EMITJMPTB
.int _EMITMEMMOVE
.int _EMITMEMSWAP
.int _EMITMEMCLEAR
.int _EMITSTKCLEAR
.int _EMITLINEINI
.int _EMITLINEEND
.int _EMITSCOPEINI
.int _EMITSCOPEEND

.section .rodata
.balign 4
Lt_0A57:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_0AC1:	.ascii	".type \0"
.balign 4
Lt_0AC2:	.ascii	", @function\0"
.balign 4
Lt_0ACA:	.ascii	".cfi_startproc\n\0"
.balign 4
Lt_0AD0:	.ascii	".cfi_endproc\n\0"
.balign 4
Lt_0AE1:	.ascii	".byte\0"
.balign 4
Lt_0AE3:	.ascii	".short\0"
.balign 4
Lt_0AE5:	.ascii	".int\0"
.balign 4
Lt_0AE7:	.ascii	".long\0"
.balign 4
Lt_0AE9:	.ascii	".quad\0"
.balign 4
Lt_0AEB:	.ascii	".ascii\0"
.balign 4
Lt_0AED:	.ascii	".INVALID\0"
.balign 4
Lt_0AF7:	.ascii	".section \0"
.balign 4
Lt_0B00:	.ascii	"rdata\0"
.balign 4
Lt_0B02:	.ascii	"const\0"
.balign 4
Lt_0B04:	.ascii	"rodata\0"
.balign 4
Lt_0B07:	.ascii	"data\0"
.balign 4
Lt_0B09:	.ascii	"bss\0"
.balign 4
Lt_0B0B:	.ascii	"text\0"
.balign 4
Lt_0B0D:	.ascii	"drectve\0"
.balign 4
Lt_0B12:	.ascii	"section __DATA,fbctinf\0"
.balign 4
Lt_0B16:	.ascii	"constructor\0"
.balign 4
Lt_0B17:	.ascii	"ctors\0"
.balign 4
Lt_0B1A:	.ascii	"00000\0"
.balign 4
Lt_0B23:	.ascii	", \"aw\", @progbits\0"
.balign 4
Lt_0B27:	.ascii	"destructor\0"
.balign 4
Lt_0B28:	.ascii	"dtors\0"

.section .ctors, "aw", @progbits
.int fb_ctor__emit_x86
