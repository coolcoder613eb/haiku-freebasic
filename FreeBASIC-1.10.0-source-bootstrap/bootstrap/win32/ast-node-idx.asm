	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWIDX@8
_ASTNEWIDX@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 18
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 1
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], 0
mov dword ptr [ecx+28], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADIDX@4
_ASTLOADIDX@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_005F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0062
mov dword ptr [ebp-4], 0
jmp .L_0060
.L_0062:
.L_0061:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0064
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
jmp .L_0063
.L_0064:
mov dword ptr [ebp-16], 0
.L_0063:
cmp dword ptr [_AST+136], 0
je .L_0066
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+4]
and eax, 16388
test eax, eax
jne .L_0068
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+72]
mov ecx, dword ptr [eax+76]
add ebx, dword ptr [ebp-32]
adc ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
add ebx, dword ptr [eax+48]
adc ecx, dword ptr [eax+52]
mov eax, dword ptr [ebp-8]
add ebx, dword ptr [eax+24]
adc ecx, dword ptr [eax+28]
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], ecx
jmp .L_0067
.L_0068:
mov dword ptr [ebp-24], 0
.L_0067:
cmp dword ptr [ebp-16], 0
je .L_006A
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
je .L_006C
push dword ptr [ebp-16]
call dword ptr [_IR+108]
.L_006C:
.L_006B:
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+240]
mov dword ptr [ebp-20], eax
jmp .L_0069
.L_006A:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+236]
mov dword ptr [ebp-20], eax
.L_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0066:
.L_0065:
push dword ptr [ebp-12]
call _ASTDELNODE@4
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_0060:
mov eax, dword ptr [ebp-4]
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
