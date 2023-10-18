	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWDEREF@20
_ASTNEWDEREF@20:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005D:
cmp dword ptr [ebp+8], 0
je .L_0060
cmp dword ptr [ebp+12], -2147483648
jne .L_0062
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
.L_0062:
.L_0061:
cmp dword ptr [ebp+24], 0
jne .L_0064
cmp dword ptr [ebp+20], 0
jne .L_0064
.L_0076:
push dword ptr [ebp+8]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 6
jne .L_0067
.L_0068:
mov dword ptr [ebp-16], -1
jmp .L_0065
.L_0067:
cmp dword ptr [ebp-20], 23
jne .L_0069
.L_006A:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+28], 0
mov eax, -1
jne .L_0078
cmp dword ptr [ecx+24], 0
je .L_0077
.L_0078:
xor eax, eax
.L_0077:
mov dword ptr [ebp-16], eax
jmp .L_0065
.L_0069:
cmp dword ptr [ebp-20], 32
jne .L_006B
.L_006C:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+64]
mov ecx, dword ptr [ebx]
cmp ecx, 23
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-12]
mov esi, dword ptr [ebx+64]
cmp dword ptr [esi+28], 0
mov ebx, -1
jne .L_007C
cmp dword ptr [esi+24], 0
je .L_007B
.L_007C:
xor ebx, ebx
.L_007B:
and ecx, ebx
or eax, ecx
je .L_006E
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+68]
call _ASTDELTREE@4
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+64]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], -1
jmp .L_006D
.L_006E:
mov dword ptr [ebp-16], 0
.L_006D:
jmp .L_0065
.L_006B:
mov dword ptr [ebp-16], 0
.L_006F:
.L_0065:
cmp dword ptr [ebp-16], 0
je .L_0071
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebp-8], ecx
.L_0072:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp+8], ecx
je .L_0073
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
jmp .L_0072
.L_0073:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTSETTYPE@12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_005E
.L_0071:
.L_0070:
.L_0064:
.L_0063:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0075
push 8
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT@8
add dword ptr [ebp+20], eax
adc dword ptr [ebp+24], edx
mov dword ptr [ebp+8], 0
.L_0075:
.L_0074:
.L_0060:
.L_005F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 20
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+64], edx
mov edx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [edx+24], ecx
mov dword ptr [edx+28], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADDEREF@4
_ASTLOADDEREF@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0080
cmp dword ptr [_AST+136], 0
je .L_0082
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+244]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0082:
.L_0081:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
jmp .L_007E
.L_0080:
.L_007F:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .L_0084
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
je .L_0085
mov dword ptr [ebp-24], 24
jmp .L_008B
.L_0085:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_008B:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0087
mov dword ptr [ebp-28], 24
jmp .L_008C
.L_0087:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.L_008C:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [_ENV+296]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .L_008A
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
call dword ptr [_IR+224]
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 76
call dword ptr [_IR+120]
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0089:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call dword ptr [_IR+244]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0084:
.L_0083:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_007E:
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
