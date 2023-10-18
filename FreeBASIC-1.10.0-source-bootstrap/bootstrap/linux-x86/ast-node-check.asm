	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWBOUNDCHK
ASTNEWBOUNDCHK:
.type ASTNEWBOUNDCHK, @function
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
.L_0066:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_0069
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_006B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
cmp dword ptr [eax+24], ecx
jg .L_006D
jl .L_0072
cmp dword ptr [eax+20], esi
jae .L_006D
.L_0072:
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_006D:
.L_006C:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
cmp dword ptr [esi+24], eax
jl .L_006F
jg .L_0073
cmp dword ptr [esi+20], ebx
jbe .L_006F
.L_0073:
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_006F:
.L_006E:
sub esp, 12
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_0067
.L_006B:
.L_006A:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+24], 0
jne .L_0071
cmp dword ptr [ebx+20], 0
jne .L_0071
.L_0074:
sub esp, 12
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp+12], 0
.L_0071:
.L_0070:
.L_0069:
.L_0068:
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push 31
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call SYMBADDTEMPVAR
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
push eax
call RTLARRAYBOUNDSCHECK
add esp, 32
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWBOUNDCHK, .-ASTNEWBOUNDCHK
.cfi_endproc
.balign 16

.globl ASTLOADBOUNDCHK
ASTLOADBOUNDCHK:
.type ASTLOADBOUNDCHK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0078
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_0078:
.L_0077:
sub esp, 4
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .L_007A
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
push 0
sub esp, 12
push 0
push 0
push 0
push 8
call dword ptr [IR+228]
add esp, 28
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [IR+92]
add esp, 32
sub esp, 12
push dword ptr [ebp-24]
call dword ptr [IR+136]
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call dword ptr [IR+64]
add esp, 16
.L_007A:
.L_0079:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADBOUNDCHK, .-ASTLOADBOUNDCHK
.cfi_endproc
.balign 16

.globl ASTBUILDBOUNDCHK
ASTBUILDBOUNDCHK:
.type ASTBUILDBOUNDCHK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007D:
sub esp, 12
lea eax, [ENV+304]
push eax
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWBOUNDCHK
add esp, 32
mov dword ptr [ebp-4], eax
.L_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTBUILDBOUNDCHK, .-ASTBUILDBOUNDCHK
.cfi_endproc
.balign 16

.globl ASTNEWPTRCHK
ASTNEWPTRCHK:
.type ASTNEWPTRCHK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0082
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 32
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBADDTEMPVAR
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 20
push eax
call RTLNULLPTRCHECK
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWPTRCHK, .-ASTNEWPTRCHK
.cfi_endproc
.balign 16

.globl ASTLOADPTRCHK
ASTLOADPTRCHK:
.type ASTLOADPTRCHK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0086
mov dword ptr [ebp-4], 0
jmp .L_0084
.L_0086:
.L_0085:
sub esp, 4
push 80
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .L_0088
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
push 0
sub esp, 12
push 0
push 0
push 0
push 8
call dword ptr [IR+228]
add esp, 28
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [IR+92]
add esp, 32
sub esp, 12
push dword ptr [ebp-24]
call dword ptr [IR+136]
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call dword ptr [IR+64]
add esp, 16
.L_0088:
.L_0087:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
.L_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADPTRCHK, .-ASTLOADPTRCHK
.cfi_endproc
.balign 16

.globl ASTBUILDPTRCHK
ASTBUILDPTRCHK:
.type ASTBUILDPTRCHK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008B:
sub esp, 4
lea eax, [ENV+304]
push eax
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp+8]
call ASTNEWPTRCHK
add esp, 16
mov dword ptr [ebp-4], eax
.L_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTBUILDPTRCHK, .-ASTBUILDPTRCHK
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
