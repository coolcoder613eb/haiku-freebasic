	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTGETOFFSETCHILDOFS
ASTGETOFFSETCHILDOFS:
.type ASTGETOFFSETCHILDOFS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_005C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_005F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_005E
.L_005F:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
add esi, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
add esi, dword ptr [eax+68]
adc ebx, dword ptr [eax+72]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
add esi, dword ptr [ecx+48]
adc ebx, dword ptr [ecx+52]
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-4], ebx
.L_005E:
.L_005D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTGETOFFSETCHILDOFS, .-ASTGETOFFSETCHILDOFS
.cfi_endproc
.balign 16

.globl ASTLOADOFFSET
ASTLOADOFFSET:
.type ASTLOADOFFSET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0069
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 2
.L_0069:
.L_0068:
cmp dword ptr [AST+136], 0
je .L_006B
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+248]
add esp, 32
mov dword ptr [ebp-8], eax
.L_006B:
.L_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 18
jne .L_006D
sub esp, 12
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 16
.L_006D:
.L_006C:
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADOFFSET, .-ASTLOADOFFSET
.cfi_endproc
.balign 16

.globl ASTNEWADDROF
ASTNEWADDROF:
.type ASTNEWADDROF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0082:
cmp dword ptr [ebp+8], 0
jne .L_0085
mov dword ptr [ebp-4], 0
jmp .L_0083
.L_0085:
.L_0084:
sub esp, 12
push dword ptr [ebp+8]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .L_0088
.L_0089:
cmp dword ptr [ENV+176], 0
je .L_008B
sub esp, 12
push dword ptr [ebp-20]
call HREMOVENULLPTRCHECK
add esp, 16
.L_008B:
.L_008A:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+56], 0
je .L_008D
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+24], 0
jne .L_008F
cmp dword ptr [ebx+20], 0
jne .L_008F
.L_00AC:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.L_008F:
.L_008E:
jmp .L_008C
.L_008D:
push 0
push 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.L_008C:
jmp .L_0086
.L_0088:
cmp dword ptr [ebp-24], 19
jne .L_0090
.L_0091:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .L_0093
cmp dword ptr [ENV+176], 0
je .L_0095
sub esp, 12
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call HREMOVENULLPTRCHECK
add esp, 16
.L_0095:
.L_0094:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
jne .L_0097
push 0
push 8
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
.L_0097:
.L_0096:
.L_0093:
.L_0092:
jmp .L_0086
.L_0090:
cmp dword ptr [ebp-24], 17
jne .L_0098
.L_0099:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
je .L_009B
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [ebx+4]
and ecx, 11
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_009D
sub esp, 12
push dword ptr [ebp-20]
call ASTNEWOFFSET
add esp, 16
mov dword ptr [ebp-8], eax
.L_009D:
.L_009C:
.L_009B:
.L_009A:
jmp .L_0086
.L_0098:
cmp dword ptr [ebp-24], 18
jne .L_009E
.L_009F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-20], eax
je .L_00A1
sub esp, 12
push dword ptr [ebp-20]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+56], ecx
jmp .L_00A0
.L_00A1:
sub esp, 12
push dword ptr [ebp-20]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+8], eax
.L_00A0:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 0
jne .L_00A3
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+4]
and ebx, 11
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00A5
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
jne .L_00A7
sub esp, 12
push dword ptr [ebp-20]
call ASTNEWOFFSET
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
.L_00A2:
.L_009E:
.L_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-8], 0
je .L_00A9
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebp-20], ecx
je .L_00AB
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.L_00AB:
.L_00AA:
sub esp, 12
push 0
push 24
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_00A9:
.L_00A8:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 6
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 22
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0083:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWADDROF, .-ASTNEWADDROF
.cfi_endproc
.balign 16

.globl ASTLOADADDROF
ASTLOADADDROF:
.type ASTLOADADDROF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00B4
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00B4:
.L_00B3:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .L_00B6
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00B7
mov dword ptr [ebp-20], 24
jmp .L_00BD
.L_00B7:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_00BD:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00B9
mov dword ptr [ebp-24], 24
jmp .L_00BE
.L_00B9:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.L_00BE:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-32]
je .L_00BC
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+224]
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 22
call dword ptr [IR+120]
add esp, 16
jmp .L_00BB
.L_00BC:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_00BB:
.L_00B6:
.L_00B5:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADADDROF, .-ASTLOADADDROF
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
ASTNEWOFFSET:
.type ASTNEWOFFSET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
cmp dword ptr [ebp+8], 0
jne .L_0063
mov dword ptr [ebp-4], 0
jmp .L_0061
.L_0063:
.L_0062:
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
push 23
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
sub esp, 12
push dword ptr [ebp+8]
call ASTGETOFFSETCHILDOFS
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0065
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+12]
or dword ptr [edx+12], 2
.L_0065:
.L_0064:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWOFFSET, .-ASTNEWOFFSET
.cfi_endproc
.balign 16
HREMOVENULLPTRCHECK:
.type HREMOVENULLPTRCHECK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0071
jmp .L_006F
.L_0071:
.L_0070:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 32
jne .L_0074
.L_0075:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
sub esp, 12
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
jmp .L_0072
.L_0074:
cmp dword ptr [ebp-12], 3
jne .L_0076
.L_0077:
.L_0078:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 32
jne .L_007D
.L_007E:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebx+56], eax
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
jmp .L_0079
jmp .L_007B
.L_007D:
cmp dword ptr [ebp-16], 3
jne .L_007F
.L_0080:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_007B
.L_007F:
jmp .L_0079
.L_0081:
.L_007B:
.L_007A:
jmp .L_0078
.L_0079:
.L_0076:
.L_0072:
.L_006F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREMOVENULLPTRCHECK, .-HREMOVENULLPTRCHECK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
