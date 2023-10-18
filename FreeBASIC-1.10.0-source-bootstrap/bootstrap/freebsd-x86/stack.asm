	.intel_syntax noprefix

.section .text
.balign 16

.globl STACKNEW
STACKNEW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0004:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+16]
add eax, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HALLOCTB
add esp, 8
mov dword ptr [ebp-4], eax
.L_0005:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STACKFREE
STACKFREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0006:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0008:
cmp dword ptr [ebp-8], 0
je .L_0009
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call free
add esp, 4
push dword ptr [ebp-8]
call free
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0008
.L_0009:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-4], -1
.L_0007:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STACKPUSH
STACKPUSH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_001B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_001E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+16], ecx
jmp .L_001D
.L_001E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+16]
cmp dword ptr [eax+4], 0
jne .L_0020
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
shr ecx, 2
mov eax, ecx
push eax
push dword ptr [ebp+8]
call HALLOCTB
add esp, 8
.L_0020:
.L_001F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+16], ebx
.L_001D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
add eax, 8
mov dword ptr [ebp-4], eax
.L_001C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STACKPOP
STACKPOP:
push ebp
mov ebp, esp
push ebx
.L_0021:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0024
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
add ebx, -8
mov eax, ebx
push eax
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
add ebx, 8
push ebx
call memset
add esp, 12
.L_0024:
.L_0023:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+16], ecx
.L_0022:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STACKGETTOS
STACKGETTOS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0025:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_0028
mov dword ptr [ebp-4], 0
jmp .L_0026
jmp .L_0027
.L_0028:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
add ebx, 8
mov dword ptr [ebp-4], ebx
.L_0027:
.L_0026:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HALLOCTB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_000A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 1
jg .L_000D
jmp .L_000B
.L_000D:
.L_000C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_000F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp+12]
push ebx
call XCALLOCATE
add esp, 4
mov dword ptr [Lt_0029], eax
jmp .L_000E
.L_000F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp+12]
push ebx
call XALLOCATE
add esp, 4
mov dword ptr [Lt_0029], eax
.L_000E:
push 12
call XALLOCATE
add esp, 4
mov dword ptr [Lt_002A], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0011
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_002A]
mov dword ptr [eax], ebx
.L_0011:
.L_0010:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_0013
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [Lt_002A]
mov dword ptr [eax], ebx
.L_0013:
.L_0012:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_002A]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_002A]
mov dword ptr [eax], 0
mov eax, dword ptr [Lt_002A]
mov ebx, dword ptr [Lt_0029]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_002A]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [Lt_002B], eax
mov eax, dword ptr [Lt_0029]
mov dword ptr [Lt_002C], eax
cmp dword ptr [Lt_002B], 0
je .L_0015
mov eax, dword ptr [Lt_002B]
mov ebx, dword ptr [Lt_002C]
mov dword ptr [eax+4], ebx
.L_0015:
.L_0014:
mov dword ptr [Lt_002D], 1
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_0017
.L_001A:
mov ebx, dword ptr [Lt_002C]
mov eax, dword ptr [Lt_002B]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_002C]
add ebx, dword ptr [eax+12]
mov eax, dword ptr [Lt_002C]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [Lt_002C]
mov dword ptr [Lt_002B], ebx
mov ebx, dword ptr [Lt_002C]
mov eax, dword ptr [ebx+4]
mov dword ptr [Lt_002C], eax
.L_0018:
inc dword ptr [Lt_002D]
.L_0017:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_002D], eax
jle .L_001A
.L_0019:
mov eax, dword ptr [Lt_002C]
mov ebx, dword ptr [Lt_002B]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_002C]
mov dword ptr [ebx+4], 0
mov dword ptr [ebp-4], -1
.L_000B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0029,4
.balign 4
	.lcomm	Lt_002C,4
.balign 4
	.lcomm	Lt_002B,4
.balign 4
	.lcomm	Lt_002A,4
.balign 4
	.lcomm	Lt_002D,4
