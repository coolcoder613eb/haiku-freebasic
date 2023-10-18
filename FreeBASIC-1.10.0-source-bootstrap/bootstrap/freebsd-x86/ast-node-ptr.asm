	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWDEREF
ASTNEWDEREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005C:
cmp dword ptr [ebp+8], 0
je .L_005F
cmp dword ptr [ebp+12], -2147483648
jne .L_0061
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp+16], ecx
.L_0061:
.L_0060:
cmp dword ptr [ebp+24], 0
jne .L_0063
cmp dword ptr [ebp+20], 0
jne .L_0063
.L_0075:
push dword ptr [ebp+8]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 6
jne .L_0066
.L_0067:
mov dword ptr [ebp-16], -1
jmp .L_0064
.L_0066:
cmp dword ptr [ebp-20], 23
jne .L_0068
.L_0069:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+24], 0
mov eax, -1
jne .L_0077
cmp dword ptr [ecx+20], 0
je .L_0076
.L_0077:
xor eax, eax
.L_0076:
mov dword ptr [ebp-16], eax
jmp .L_0064
.L_0068:
cmp dword ptr [ebp-20], 32
jne .L_006A
.L_006B:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 23
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-12]
mov esi, dword ptr [ebx+56]
cmp dword ptr [esi+24], 0
mov ebx, -1
jne .L_007B
cmp dword ptr [esi+20], 0
je .L_007A
.L_007B:
xor ebx, ebx
.L_007A:
and ecx, ebx
or eax, ecx
je .L_006D
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], -1
jmp .L_006C
.L_006D:
mov dword ptr [ebp-16], 0
.L_006C:
jmp .L_0064
.L_006A:
mov dword ptr [ebp-16], 0
.L_006E:
.L_0064:
cmp dword ptr [ebp-16], 0
je .L_0070
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
.L_0071:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp+8], ecx
je .L_0072
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
jmp .L_0071
.L_0072:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_005D
.L_0070:
.L_006F:
.L_0063:
.L_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0074
push 8
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
add dword ptr [ebp+20], eax
adc dword ptr [ebp+24], edx
mov dword ptr [ebp+8], 0
.L_0074:
.L_0073:
.L_005F:
.L_005E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 20
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [edx+20], ecx
mov dword ptr [edx+24], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_005D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADDEREF
ASTLOADDEREF:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_007F
cmp dword ptr [AST+136], 0
je .L_0081
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [IR+244]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0081:
.L_0080:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
jmp .L_007D
.L_007F:
.L_007E:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .L_0083
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 480
je .L_0084
mov dword ptr [ebp-24], 24
jmp .L_008A
.L_0084:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_008A:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0086
mov dword ptr [ebp-28], 24
jmp .L_008B
.L_0086:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_008B:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [ENV+296]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .L_0089
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
push eax
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 76
call dword ptr [IR+120]
add esp, 12
jmp .L_0088
.L_0089:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0088:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [IR+244]
add esp, 20
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0083:
.L_0082:
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_007D:
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
