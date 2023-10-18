	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTGETOFFSETCHILDOFS
_ASTGETOFFSETCHILDOFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_005D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_0060
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_005F
.L_0060:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
add esi, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
add esi, dword ptr [eax+68]
adc ebx, dword ptr [eax+72]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
add esi, dword ptr [ecx+48]
adc ebx, dword ptr [ecx+52]
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-4], ebx
.L_005F:
.L_005E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADOFFSET
_ASTLOADOFFSET:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_006A
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 2
.L_006A:
.L_0069:
cmp dword ptr [_AST+136], 0
je .L_006C
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+248]
add esp, 20
mov dword ptr [ebp-8], eax
.L_006C:
.L_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 18
jne .L_006E
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+60]
call _ASTDELNODE
add esp, 4
.L_006E:
.L_006D:
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWADDROF
_ASTNEWADDROF:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0083:
cmp dword ptr [ebp+8], 0
jne .L_0086
mov dword ptr [ebp-4], 0
jmp .L_0084
.L_0086:
.L_0085:
push dword ptr [ebp+8]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
jne .L_0089
.L_008A:
cmp dword ptr [_ENV+176], 0
je .L_008C
push dword ptr [ebp-20]
call _HREMOVENULLPTRCHECK
add esp, 4
.L_008C:
.L_008B:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+56], 0
je .L_008E
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+24], 0
jne .L_0090
cmp dword ptr [ebx+20], 0
jne .L_0090
.L_00AD:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _ASTDELNODE
add esp, 4
.L_0090:
.L_008F:
jmp .L_008D
.L_008E:
push 0
push 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+24]
push dword ptr [eax+20]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push dword ptr [ebp-20]
call _ASTDELNODE
add esp, 4
.L_008D:
jmp .L_0087
.L_0089:
cmp dword ptr [ebp-24], 19
jne .L_0091
.L_0092:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 20
jne .L_0094
cmp dword ptr [_ENV+176], 0
je .L_0096
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call _HREMOVENULLPTRCHECK
add esp, 4
.L_0096:
.L_0095:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+56], 0
jne .L_0098
push 0
push 8
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
push dword ptr [ebp-20]
call _ASTDELNODE
add esp, 4
.L_0098:
.L_0097:
.L_0094:
.L_0093:
jmp .L_0087
.L_0091:
cmp dword ptr [ebp-24], 17
jne .L_0099
.L_009A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
je .L_009C
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [ebx+4]
and ecx, 11
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_009E
push dword ptr [ebp-20]
call _ASTNEWOFFSET
add esp, 4
mov dword ptr [ebp-8], eax
.L_009E:
.L_009D:
.L_009C:
.L_009B:
jmp .L_0087
.L_0099:
cmp dword ptr [ebp-24], 18
jne .L_009F
.L_00A0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-20], eax
je .L_00A2
push dword ptr [ebp-20]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+56], ecx
jmp .L_00A1
.L_00A2:
push dword ptr [ebp-20]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+8], eax
.L_00A1:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 0
jne .L_00A4
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+4]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+4]
and ebx, 11
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00A6
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
jne .L_00A8
push dword ptr [ebp-20]
call _ASTNEWOFFSET
add esp, 4
mov dword ptr [ebp-8], eax
.L_00A8:
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
.L_009F:
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-8], 0
je .L_00AA
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebp-20], ecx
je .L_00AC
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.L_00AC:
.L_00AB:
push 0
push 24
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0084
.L_00AA:
.L_00A9:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 6
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 22
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADADDROF
_ASTLOADADDROF:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00B5
mov dword ptr [ebp-4], 0
jmp .L_00B3
.L_00B5:
.L_00B4:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .L_00B7
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00B8
mov dword ptr [ebp-20], 24
jmp .L_00BE
.L_00B8:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_00BE:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00BA
mov dword ptr [ebp-24], 24
jmp .L_00BF
.L_00BA:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.L_00BF:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-32]
je .L_00BD
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call dword ptr [_IR+224]
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 22
call dword ptr [_IR+120]
add esp, 12
jmp .L_00BC
.L_00BD:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_00BC:
.L_00B7:
.L_00B6:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
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
call _fb_StrAssign
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
.balign 16
_ASTNEWOFFSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0061:
cmp dword ptr [ebp+8], 0
jne .L_0064
mov dword ptr [ebp-4], 0
jmp .L_0062
.L_0064:
.L_0063:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
push 23
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+12], ecx
push dword ptr [ebp+8]
call _ASTGETOFFSETCHILDOFS
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], edx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0066
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+12]
or dword ptr [edx+12], 2
.L_0066:
.L_0065:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.L_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREMOVENULLPTRCHECK:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0072
jmp .L_0070
.L_0072:
.L_0071:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 32
jne .L_0075
.L_0076:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+56], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+60]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-4]
call _ASTDELNODE
add esp, 4
jmp .L_0073
.L_0075:
cmp dword ptr [ebp-12], 3
jne .L_0077
.L_0078:
.L_0079:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 32
jne .L_007E
.L_007F:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
jmp .L_007A
jmp .L_007C
.L_007E:
cmp dword ptr [ebp-16], 3
jne .L_0080
.L_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_007C
.L_0080:
jmp .L_007A
.L_0082:
.L_007C:
.L_007B:
jmp .L_0079
.L_007A:
.L_0077:
.L_0073:
.L_0070:
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
