	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPOKESTMT
_CPOKESTMT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call _HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0079
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_0078
.L_0079:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0078:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_007B
jmp .L_0077
.L_007B:
.L_007A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_007C
mov dword ptr [ebp-24], 24
jmp .L_008D
.L_007C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.L_008D:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2
jne .L_0080
.L_0081:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
jmp .L_0077
jmp .L_007E
.L_0080:
cmp dword ptr [ebp-28], 1
jne .L_0082
.L_0083:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_007E
.L_0082:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0085
mov dword ptr [ebp-32], 24
jmp .L_008E
.L_0085:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-32], eax
.L_008E:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
je .L_0088
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
jmp .L_0077
.L_0088:
.L_0087:
.L_0084:
.L_007E:
mov ebx, dword ptr [_ENV+200]
and ebx, 128
test ebx, ebx
je .L_008A
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov eax, dword ptr [ebp-16]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 32505856
or ebx, eax
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_008A:
.L_0089:
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008C
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_008B
.L_008C:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
.L_008B:
mov dword ptr [ebp-4], -1
.L_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPEEKFUNCT
_CPEEKFUNCT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0092
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_0091
.L_0092:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0091:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0094
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0093
.L_0094:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0093:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0095
mov dword ptr [ebp-20], 24
jmp .L_00AA
.L_0095:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.L_00AA:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 2
jne .L_0099
.L_009A:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
jmp .L_0097
.L_0099:
cmp dword ptr [ebp-24], 1
jne .L_009B
.L_009C:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0097
.L_009B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_009E
mov dword ptr [ebp-28], 24
jmp .L_00AB
.L_009E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.L_00AB:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp dword ptr [_SYMB_DTYPETB+eax+4], ebx
je .L_00A1
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.L_00A1:
.L_00A0:
.L_009D:
.L_0097:
cmp dword ptr [ebp-8], 0
jne .L_00A3
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A3:
.L_00A2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_00A5
cmp dword ptr [ebp-12], 20
jne .L_00A7
.L_00A8:
jmp .L_00A6
.L_00A7:
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0090
.L_00A9:
.L_00A6:
push 64
call _LEXSKIPTOKEN
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00A4
.L_00A5:
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_00A4:
.L_0090:
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
_HOPTIONALTYPEANDFIRSTEXPR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 466
call _CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_006C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .L_0070
.L_0071:
cmp dword ptr [ebp-24], 18
jne .L_006F
.L_0070:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_006F:
.L_006D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0073
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_0072
.L_0073:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0072:
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0075
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.L_0075:
.L_0074:
jmp .L_006B
.L_006C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_006B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
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
