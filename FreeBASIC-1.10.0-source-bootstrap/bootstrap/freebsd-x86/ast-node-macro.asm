	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWMACRO
ASTNEWMACRO:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 44
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
cmp dword ptr [ebp+8], 112
jne .L_005F
mov ecx, dword ptr [ebp+20]
and ecx, 480
je .L_0060
mov dword ptr [ebp-12], 24
jmp .L_0070
.L_0060:
mov ecx, dword ptr [ebp+20]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_0070:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0064
.L_0065:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_0066
mov dword ptr [ebp-20], 24
jmp .L_0071
.L_0066:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0071:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+228]
cmp dword ptr [SYMB_DTYPETB+eax+4], ecx
jge .L_0069
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
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_0069:
.L_0068:
jmp .L_0062
.L_0064:
cmp dword ptr [ebp-16], 1
jne .L_006A
.L_006B:
mov eax, dword ptr [ebp+20]
and eax, 480
je .L_006C
mov dword ptr [ebp-20], 24
jmp .L_0072
.L_006C:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.L_0072:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+452]
cmp dword ptr [SYMB_DTYPETB+eax+4], ecx
jge .L_006F
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
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_006F:
.L_006E:
.L_006A:
.L_0062:
.L_005F:
.L_005E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADMACRO
ASTLOADMACRO:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 109
jne .L_0076
.L_0077:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
jmp .L_0075
.L_0076:
cmp dword ptr [ebp-8], 110
jne .L_0078
.L_0079:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
jmp .L_0075
.L_0078:
cmp dword ptr [ebp-8], 112
jne .L_007A
.L_007B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0075
.L_007A:
cmp dword ptr [ebp-8], 111
jne .L_007C
.L_007D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.L_007C:
.L_0075:
cmp dword ptr [AST+136], 0
je .L_007F
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [IR+152]
add esp, 16
.L_007F:
.L_007E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0081
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 4
.L_0081:
.L_0080:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0074:
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
