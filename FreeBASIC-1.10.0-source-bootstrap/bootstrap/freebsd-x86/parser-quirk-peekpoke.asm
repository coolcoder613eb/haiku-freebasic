	.intel_syntax noprefix

.section .text
.balign 16

.globl CPOKESTMT
CPOKESTMT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0078
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_0077
.L_0078:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0077:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_007A
jmp .L_0076
.L_007A:
.L_0079:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_007B
mov dword ptr [ebp-24], 24
jmp .L_008C
.L_007B:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.L_008C:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2
jne .L_007F
.L_0080:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .L_0076
jmp .L_007D
.L_007F:
cmp dword ptr [ebp-28], 1
jne .L_0081
.L_0082:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_007D
.L_0081:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0084
mov dword ptr [ebp-32], 24
jmp .L_008D
.L_0084:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-32], eax
.L_008D:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
je .L_0087
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .L_0076
.L_0087:
.L_0086:
.L_0083:
.L_007D:
mov ebx, dword ptr [ENV+200]
and ebx, 128
test ebx, ebx
je .L_0089
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
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_0089:
.L_0088:
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008B
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_008A
.L_008B:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.L_008A:
mov dword ptr [ebp-4], -1
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPEEKFUNCT
CPEEKFUNCT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_008E:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0091
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .L_0090
.L_0091:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0090:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0093
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0092
.L_0093:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0092:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_0094
mov dword ptr [ebp-20], 24
jmp .L_00A9
.L_0094:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.L_00A9:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 2
jne .L_0098
.L_0099:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
jmp .L_0096
.L_0098:
cmp dword ptr [ebp-24], 1
jne .L_009A
.L_009B:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0096
.L_009A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .L_009D
mov dword ptr [ebp-28], 24
jmp .L_00AA
.L_009D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.L_00AA:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
je .L_00A0
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.L_00A0:
.L_009F:
.L_009C:
.L_0096:
cmp dword ptr [ebp-8], 0
jne .L_00A2
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A2:
.L_00A1:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_00A4
cmp dword ptr [ebp-12], 20
jne .L_00A6
.L_00A7:
jmp .L_00A5
.L_00A6:
push 0
push -1
push 265
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_008F
.L_00A8:
.L_00A5:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00A3
.L_00A4:
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_00A3:
.L_008F:
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
.balign 16
HOPTIONALTYPEANDFIRSTEXPR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
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
call CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_006B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .L_006F
.L_0070:
cmp dword ptr [ebp-24], 18
jne .L_006E
.L_006F:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.L_006E:
.L_006C:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0072
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_0071
.L_0072:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0071:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0074
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.L_0074:
.L_0073:
jmp .L_006A
.L_006B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_006A:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
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
