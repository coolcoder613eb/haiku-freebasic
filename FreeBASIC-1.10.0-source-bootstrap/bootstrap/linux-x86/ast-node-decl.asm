	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWDECL
ASTNEWDECL:
.type ASTNEWDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
sub esp, 4
push 0
push -2147483648
push 24
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
cmp dword ptr [ebp+12], 0
je .L_006D
sub esp, 12
push dword ptr [ebp+8]
call HDEFAULTINIT
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWDECL, .-ASTNEWDECL
.cfi_endproc
.balign 16

.globl ASTLOADDECL
ASTLOADDECL:
.type ASTLOADDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006E:
cmp dword ptr [AST+136], 0
je .L_0071
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_0073
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [IR+164]
add esp, 16
.L_0073:
.L_0072:
.L_0071:
.L_0070:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0075
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
.L_0075:
.L_0074:
mov dword ptr [ebp-4], 0
.L_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADDECL, .-ASTLOADDECL
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
HCTORLIST:
.type HCTORLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
sub esp, 8
push 0
push 8
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
sub esp, 12
push 64
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-16]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDFORBEGIN
add esp, 32
mov dword ptr [ebp-24], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-16]
call ASTBUILDVARDEREF
add esp, 8
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push 0
push 1
push dword ptr [ebp-16]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-24], eax
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCTORLIST, .-HCTORLIST
.cfi_endproc
.balign 16
HDEFAULTINIT:
.type HDEFAULTINIT, @function
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
.L_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 15
test ebx, ebx
je .L_0061
jmp .L_005F
.L_0061:
.L_0060:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .L_0063
jmp .L_005F
.L_0063:
.L_0062:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDEFCTOR
add esp, 16
test eax, eax
je .L_0065
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 131072
test ebx, ebx
je .L_0067
jmp .L_005F
.L_0067:
.L_0066:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_0069
sub esp, 8
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_0069:
sub esp, 12
push dword ptr [ebp+8]
call HCTORLIST
add esp, 16
mov dword ptr [ebp-4], eax
.L_0068:
jmp .L_005F
.L_0065:
.L_0064:
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+76]
mov ecx, dword ptr [ebx+80]
push dword ptr [eax+44]
push dword ptr [eax+40]
push ecx
push esi
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop esi
pop ecx
add esp, 8
push ecx
push esi
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.L_005F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFAULTINIT, .-HDEFAULTINIT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
