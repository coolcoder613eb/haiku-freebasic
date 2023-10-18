	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWBOUNDCHK@20
_ASTNEWBOUNDCHK@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_006A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_006C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jg .L_006E
jl .L_0073
cmp dword ptr [eax+24], esi
jae .L_006E
.L_0073:
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_006E:
.L_006D:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
cmp dword ptr [esi+28], eax
jl .L_0070
jg .L_0074
cmp dword ptr [esi+24], ebx
jbe .L_0070
.L_0074:
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_0070:
.L_006F:
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+16]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_0068
.L_006C:
.L_006B:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+28], 0
jne .L_0072
cmp dword ptr [ebx+24], 0
jne .L_0072
.L_0075:
push dword ptr [ebp+12]
call _ASTDELNODE@4
mov dword ptr [ebp+12], 0
.L_0072:
.L_0071:
.L_006A:
.L_0069:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push 31
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _SYMBADDTEMPVAR@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
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
call _ASTNEWVAR@20
push eax
call _RTLARRAYBOUNDSCHECK@20
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADBOUNDCHK@4
_ASTLOADBOUNDCHK@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
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
je .L_0079
mov dword ptr [ebp-4], 0
jmp .L_0077
.L_0079:
.L_0078:
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD@4
push dword ptr [ebp-16]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .L_007B
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push 0
push 0
push 0
push 0
push 8
call dword ptr [_IR+228]
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [_IR+92]
push dword ptr [ebp-24]
call dword ptr [_IR+136]
push dword ptr [ebp-20]
call dword ptr [_IR+64]
.L_007B:
.L_007A:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-16]
call _ASTDELNODE@4
.L_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDBOUNDCHK@12
_ASTBUILDBOUNDCHK@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_007E:
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWBOUNDCHK@20
mov dword ptr [ebp-4], eax
.L_007F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWPTRCHK@12
_ASTNEWPTRCHK@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0083
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 32
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBADDTEMPVAR@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ASTNEWVAR@20
push eax
call _RTLNULLPTRCHECK@12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADPTRCHK@4
_ASTLOADPTRCHK@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
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
je .L_0087
mov dword ptr [ebp-4], 0
jmp .L_0085
.L_0087:
.L_0086:
push 80
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD@4
push dword ptr [ebp-16]
call _ASTDELNODE@4
push dword ptr [ebp-12]
call _ASTLOAD@4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .L_0089
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push 0
push 0
push 0
push 0
push 8
call dword ptr [_IR+228]
push eax
push dword ptr [ebp-24]
push 45
call dword ptr [_IR+92]
push dword ptr [ebp-24]
call dword ptr [_IR+136]
push dword ptr [ebp-20]
call dword ptr [_IR+64]
.L_0089:
.L_0088:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-16]
call _ASTDELNODE@4
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDPTRCHK@4
_ASTBUILDPTRCHK@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008C:
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push dword ptr [ebp+8]
call _ASTNEWPTRCHK@12
mov dword ptr [ebp-4], eax
.L_008D:
mov eax, dword ptr [ebp-4]
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
