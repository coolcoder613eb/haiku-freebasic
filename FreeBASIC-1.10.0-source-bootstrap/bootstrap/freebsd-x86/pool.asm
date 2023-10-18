	.intel_syntax noprefix

.section .text
.balign 16

.globl POOLINIT
POOLINIT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0004:
mov eax, dword ptr [ebp+16]
add eax, 3
and eax, -4
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+20]
add eax, 3
and eax, -4
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp+20]
dec eax
cdq
idiv dword ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
sal eax, 5
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .L_0007
.L_000A:
push 2
push dword ptr [ebp-4]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
sal eax, 5
mov ecx, dword ptr [ebx+8]
add ecx, eax
push ecx
call LISTINIT
add esp, 16
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
add dword ptr [ebp-4], eax
.L_0008:
inc dword ptr [ebp-8]
.L_0007:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .L_000A
.L_0009:
.L_0005:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl POOLEND
POOLEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_000B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_000E
.L_0011:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 5
mov ecx, dword ptr [ebx+8]
add ecx, eax
push ecx
call LISTEND
add esp, 4
.L_000F:
inc dword ptr [ebp-4]
.L_000E:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0011
.L_0010:
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
call free
add esp, 4
.L_000C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl POOLNEWITEM
POOLNEWITEM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0012:
cmp dword ptr [ebp+12], 0
jg .L_0015
mov dword ptr [ebp-4], 0
jmp .L_0013
.L_0015:
.L_0014:
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, dword ptr [ebp+8]
cdq
idiv dword ptr [ebx+4]
mov dword ptr [Lt_0018], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [Lt_0018], ebx
jl .L_0017
mov ebx, dword ptr [ebp+12]
add ebx, 4
push ebx
call XALLOCATE
add esp, 4
mov dword ptr [Lt_0019], eax
jmp .L_0016
.L_0017:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0018]
sal ebx, 5
mov ecx, dword ptr [eax+8]
add ecx, ebx
push ecx
call LISTNEWNODE
add esp, 4
mov dword ptr [Lt_0019], eax
.L_0016:
mov eax, dword ptr [Lt_0019]
mov ecx, dword ptr [Lt_0018]
mov dword ptr [eax], ecx
mov ecx, dword ptr [Lt_0019]
add ecx, 4
mov dword ptr [ebp-4], ecx
.L_0013:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0019,4
.balign 4
	.lcomm	Lt_0018,4

.section .text
.balign 16

.globl POOLDELITEM
POOLDELITEM:
push ebp
mov ebp, esp
push ebx
.L_001A:
cmp dword ptr [ebp+12], 0
jne .L_001D
jmp .L_001B
.L_001D:
.L_001C:
mov eax, dword ptr [ebp+12]
add eax, -4
mov dword ptr [Lt_0020], eax
mov eax, dword ptr [Lt_0020]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
jl .L_001F
push dword ptr [Lt_0020]
call free
add esp, 4
jmp .L_001E
.L_001F:
push dword ptr [Lt_0020]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0020]
mov ebx, dword ptr [eax]
sal ebx, 5
mov eax, dword ptr [ecx+8]
add eax, ebx
push eax
call LISTDELNODE
add esp, 8
.L_001E:
.L_001B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0020,4
