	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWMACRO@20
_ASTNEWMACRO@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 44
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
cmp dword ptr [ebp+8], 112
jne .L_0060
mov ecx, dword ptr [ebp+20]
and ecx, 480
je .L_0061
mov dword ptr [ebp-12], 24
jmp .L_0071
.L_0061:
mov ecx, dword ptr [ebp+20]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0071:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0065
.L_0066:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0067
mov dword ptr [ebp-20], 24
jmp .L_0072
.L_0067:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0072:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+228]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ecx
jge .L_006A
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
.L_006A:
.L_0069:
jmp .L_0063
.L_0065:
cmp dword ptr [ebp-16], 1
jne .L_006B
.L_006C:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_006D
mov dword ptr [ebp-20], 24
jmp .L_0073
.L_006D:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0073:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+452]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ecx
jge .L_0070
mov ecx, dword ptr [ebp+20]
and ecx, -512
or ecx, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
.L_0070:
.L_006F:
.L_006B:
.L_0063:
.L_0060:
.L_005F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADMACRO@4
_ASTLOADMACRO@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0074:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 109
jne .L_0077
.L_0078:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
jmp .L_0076
.L_0077:
cmp dword ptr [ebp-8], 110
jne .L_0079
.L_007A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .L_0076
.L_0079:
cmp dword ptr [ebp-8], 112
jne .L_007B
.L_007C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+224]
mov dword ptr [ebp-20], eax
jmp .L_0076
.L_007B:
cmp dword ptr [ebp-8], 111
jne .L_007D
.L_007E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTLOAD@4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.L_007D:
.L_0076:
cmp dword ptr [_AST+136], 0
je .L_0080
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_IR+152]
.L_0080:
.L_007F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0082
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDELNODE@4
.L_0082:
.L_0081:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0075:
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
