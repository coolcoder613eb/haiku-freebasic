	.intel_syntax noprefix

.section .text
.balign 16

.globl _FLISTINIT@12
_FLISTINIT@12:
push ebp
mov ebp, esp
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
call _LISTINIT@16
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
ret 12
.balign 16

.globl _FLISTEND@4
_FLISTEND@4:
push ebp
mov ebp, esp
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
mov eax, dword ptr [ebp+8]
lea ebx, [eax+20]
push ebx
call _LISTEND@4
.L_0007:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FLISTNEWITEM@4
_FLISTNEWITEM@4:
push ebp
mov ebp, esp
sub esp, 4
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
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+20]
push ecx
call _LISTALLOCTB@8
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
mov dword ptr [_Lt_0010], ecx
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+12]
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
je .L_000F
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+16]
mov ecx, dword ptr [_Lt_0010]
mov dword ptr [esi], ecx
.L_000F:
.L_000E:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [_Lt_0010]
mov dword ptr [ecx+16], esi
mov esi, dword ptr [_Lt_0010]
mov dword ptr [esi], 0
mov esi, dword ptr [_Lt_0010]
add esi, 4
mov dword ptr [ebp-4], esi
.L_0009:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0010,4

.section .text
.balign 16

.globl _FLISTRESET@4
_FLISTRESET@4:
push ebp
mov ebp, esp
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
ret 4
.balign 16

.globl _FLISTGETHEAD@4
_FLISTGETHEAD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0013:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+4]
mov dword ptr [_Lt_0017], eax
cmp dword ptr [_Lt_0017], 0
jne .L_0016
mov dword ptr [ebp-4], 0
jmp .L_0015
.L_0016:
mov eax, dword ptr [_Lt_0017]
add eax, 4
mov dword ptr [ebp-4], eax
.L_0015:
.L_0014:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0017,4

.section .text
.balign 16

.globl _FLISTGETNEXT@4
_FLISTGETNEXT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0018:
mov eax, dword ptr [ebp+8]
add eax, -4
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_001C], ebx
cmp dword ptr [_Lt_001C], 0
jne .L_001B
mov dword ptr [ebp-4], 0
jmp .L_001A
.L_001B:
mov ebx, dword ptr [_Lt_001C]
add ebx, 4
mov dword ptr [ebp-4], ebx
.L_001A:
.L_0019:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_001C,4
