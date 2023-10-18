	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWIDX
ASTNEWIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 18
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 1
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], 0
mov dword ptr [ecx+24], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADIDX
ASTLOADIDX:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0061
mov dword ptr [ebp-4], 0
jmp .L_005F
.L_0061:
.L_0060:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0063
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0062
.L_0063:
mov dword ptr [ebp-16], 0
.L_0062:
cmp dword ptr [AST+136], 0
je .L_0065
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ecx+4]
and eax, 16388
test eax, eax
jne .L_0067
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+68]
mov ecx, dword ptr [eax+72]
add ebx, dword ptr [ebp-32]
adc ecx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
add ebx, dword ptr [eax+48]
adc ecx, dword ptr [eax+52]
mov eax, dword ptr [ebp-8]
add ebx, dword ptr [eax+20]
adc ecx, dword ptr [eax+24]
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], ecx
jmp .L_0066
.L_0067:
mov dword ptr [ebp-24], 0
.L_0066:
cmp dword ptr [ebp-16], 0
je .L_0069
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 4
je .L_006B
push dword ptr [ebp-16]
call dword ptr [IR+108]
add esp, 4
.L_006B:
.L_006A:
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+240]
add esp, 28
mov dword ptr [ebp-20], eax
jmp .L_0068
.L_0069:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+236]
add esp, 20
mov dword ptr [ebp-20], eax
.L_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0065:
.L_0064:
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_005F:
mov eax, dword ptr [ebp-4]
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
