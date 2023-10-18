	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWVAR@20
_ASTNEWVAR@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
cmp dword ptr [ebp+20], -2147483648
jne .L_0060
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 7
jne .L_0063
.L_0064:
mov dword ptr [ebp+20], 0
mov dword ptr [ebp+24], 0
jmp .L_0061
.L_0063:
cmp dword ptr [ebp-12], 3
jne .L_0065
.L_0066:
mov dword ptr [ebp+20], 22
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 16384
test eax, eax
je .L_0068
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+24], eax
jmp .L_0067
.L_0068:
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION@4
mov dword ptr [ebp+24], eax
.L_0067:
jmp .L_0061
.L_0065:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp+20], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp+24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_006B
mov eax, dword ptr [ebp+20]
and eax, 31
mov ebx, dword ptr [ebp+20]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+20]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+20]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+20], eax
.L_006B:
.L_006A:
.L_0069:
.L_0061:
.L_0060:
.L_005F:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 17
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_006D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_006F
push dword ptr [ebp+8]
call _ASTDTORLISTADDREF@4
.L_006F:
.L_006E:
.L_006D:
.L_006C:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov dword ptr [ebx+28], ecx
mov eax, dword ptr [ebp+20]
and eax, 511
cmp eax, 1
jne .L_0071
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+20]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTLOADVAR@4
_ASTLOADVAR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .L_007A
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+12], 2
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+48]
mov eax, dword ptr [ecx+52]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.L_007A:
.L_0079:
cmp dword ptr [_AST+136], 0
je .L_007C
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+236]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_007C:
.L_007B:
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_0078:
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
