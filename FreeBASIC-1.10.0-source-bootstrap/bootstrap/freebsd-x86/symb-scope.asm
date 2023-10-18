	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDSCOPE
SYMBADDSCOPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
push 0
push 0
push 0
push -2147483648
push 0
push 0
push 15
push 0
push dword ptr [SYMB+98536]
push 0
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSCOPE
SYMBDELSCOPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0069:
cmp dword ptr [ebp+8], 0
jne .L_006C
jmp .L_006A
.L_006C:
.L_006B:
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0071
jmp .L_006E
.L_0071:
.L_0070:
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 8
.L_006F:
jmp .L_006D
.L_006E:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.L_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELSCOPETB
SYMBDELSCOPETB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
.L_0074:
cmp dword ptr [ebp-4], 0
je .L_0075
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .L_0077
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 4
jmp .L_0076
.L_0077:
push -1
push dword ptr [ebp-4]
call SYMBNAMESPACEREMOVE
add esp, 8
.L_0076:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-4], eax
jmp .L_0074
.L_0075:
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
