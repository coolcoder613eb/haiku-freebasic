	.intel_syntax noprefix

.section .text
.balign 16

.globl FLISTINIT
FLISTINIT:
.type FLISTINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0004:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
push 0
mov eax, dword ptr [ebp+16]
add eax, 4
push eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+20]
push ebx
call LISTINIT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+52], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
.L_0005:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTINIT, .-FLISTINIT
.cfi_endproc
.balign 16

.globl FLISTEND
FLISTEND:
.type FLISTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0006:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+20]
push ebx
call LISTEND
add esp, 16
.L_0007:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTEND, .-FLISTEND
.cfi_endproc
.balign 16

.globl FLISTNEWITEM
FLISTNEWITEM:
.type FLISTNEWITEM, @function
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
.L_0008:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
jg .L_000B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+52], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+52], 0
jne .L_000D
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
shr eax, 1
mov ecx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
add dword ptr [ecx], ebx
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+20]
push ecx
call LISTALLOCTB
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+52], eax
jmp .L_000C
.L_000D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax+4], ecx
.L_000C:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
.L_000B:
.L_000A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
imul esi, dword ptr [ecx+12]
mov ecx, dword ptr [ebx+8]
add ecx, esi
mov dword ptr [Lt_0010], ecx
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+12]
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
je .L_000F
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+16]
mov ecx, dword ptr [Lt_0010]
mov dword ptr [esi], ecx
.L_000F:
.L_000E:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [Lt_0010]
mov dword ptr [ecx+16], esi
mov esi, dword ptr [Lt_0010]
mov dword ptr [esi], 0
mov esi, dword ptr [Lt_0010]
add esi, 4
mov dword ptr [ebp-4], esi
.L_0009:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTNEWITEM, .-FLISTNEWITEM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0010,4

.section .text
.balign 16

.globl FLISTRESET
FLISTRESET:
.type FLISTRESET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0011:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov dword ptr [ebx+52], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+52]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
.L_0012:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTRESET, .-FLISTRESET
.cfi_endproc
.balign 16

.globl FLISTGETHEAD
FLISTGETHEAD:
.type FLISTGETHEAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0013:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+4]
mov dword ptr [Lt_0017], eax
cmp dword ptr [Lt_0017], 0
jne .L_0016
mov dword ptr [ebp-4], 0
jmp .L_0015
.L_0016:
mov eax, dword ptr [Lt_0017]
add eax, 4
mov dword ptr [ebp-4], eax
.L_0015:
.L_0014:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTGETHEAD, .-FLISTGETHEAD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0017,4

.section .text
.balign 16

.globl FLISTGETNEXT
FLISTGETNEXT:
.type FLISTGETNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0018:
mov eax, dword ptr [ebp+8]
add eax, -4
mov ebx, dword ptr [eax]
mov dword ptr [Lt_001C], ebx
cmp dword ptr [Lt_001C], 0
jne .L_001B
mov dword ptr [ebp-4], 0
jmp .L_001A
.L_001B:
mov ebx, dword ptr [Lt_001C]
add ebx, 4
mov dword ptr [ebp-4], ebx
.L_001A:
.L_0019:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FLISTGETNEXT, .-FLISTGETNEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_001C,4
