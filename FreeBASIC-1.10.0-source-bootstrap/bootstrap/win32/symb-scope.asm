	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDSCOPE@4
_SYMBADDSCOPE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-8], 0
push 0
push 0
push 0
push -2147483648
push 0
push 0
push 15
push 0
push dword ptr [_SYMB+98544]
push 0
push 0
call _SYMBNEWSYMBOL@44
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
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDELSCOPE@4
_SYMBDELSCOPE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006A:
cmp dword ptr [ebp+8], 0
jne .L_006D
jmp .L_006B
.L_006D:
.L_006C:
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0072
jmp .L_006F
.L_0072:
.L_0071:
push -1
push dword ptr [ebp-4]
call _SYMBDELSYMBOL@8
.L_0070:
jmp .L_006E
.L_006F:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDELSCOPETB@4
_SYMBDELSCOPETB@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
.L_0075:
cmp dword ptr [ebp-4], 0
je .L_0076
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 17
je .L_0078
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
jmp .L_0077
.L_0078:
push -1
push dword ptr [ebp-4]
call _SYMBNAMESPACEREMOVE@8
.L_0077:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .L_0075
.L_0076:
.L_0074:
pop ebx
mov esp, ebp
pop ebp
ret 4
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
call _fb_StrAssign@20
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
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
