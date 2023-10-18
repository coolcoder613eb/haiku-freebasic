	.intel_syntax noprefix

.section .text
.balign 16

.globl _CMATHFUNCT@8
_CMATHFUNCT@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00BE
.L_00C0:
push 56
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C1:
push 57
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C2:
push 71
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C3:
push 72
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C4:
push 70
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C5:
push 58
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C6:
push 59
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C7:
push 60
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C8:
push 61
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00C9:
push 62
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CA:
push 63
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CB:
push 65
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CC:
push 68
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CD:
push 69
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CE:
call _HATAN2@0
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00CF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLENSIZEOF@8
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00BE:
mov eax, dword ptr [ebp-8]
add eax, 4294966848
cmp eax, 18
ja .L_00BD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00D0+eax*4-1792]
_.L_00D0:
.int .L_00C0
.int .L_00C1
.int .L_00C2
.int .L_00C3
.int .L_00C5
.int .L_00C6
.int .L_00C7
.int .L_00C8
.int .L_00C9
.int .L_00CA
.int .L_00CB
.int .L_00CC
.int .L_00CD
.int .L_00C4
.int .L_00CE
.int .L_00BD
.int .L_00BD
.int .L_00CF
.int .L_00CF
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
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
.balign 16
_HMATHOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0068:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_006B
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_006A
.L_006B:
push 0
call _LEXSKIPTOKEN@4
.L_006A:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
jmp .L_0069
.L_006D:
.L_006C:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_006F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_006E
.L_006F:
push 0
call _LEXSKIPTOKEN@4
.L_006E:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0071
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HATAN2@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0072:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0075
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0074
.L_0075:
push 0
call _LEXSKIPTOKEN@4
.L_0074:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0077
jmp .L_0073
.L_0077:
.L_0076:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0079
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0078
.L_0079:
push 0
call _LEXSKIPTOKEN@4
.L_0078:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_007B
jmp .L_0073
.L_007B:
.L_007A:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_007D
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_007C
.L_007D:
push 0
call _LEXSKIPTOKEN@4
.L_007C:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 64
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007F
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_007F:
.L_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLEN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .L_0084
.L_0085:
push dword ptr [ebp+8]
call _RTLSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .L_0081
jmp .L_0082
.L_0084:
cmp dword ptr [ebp-16], 4
jne .L_0086
.L_0087:
push dword ptr [ebp+8]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0089
push dword ptr [ebp+8]
call _RTLSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0089:
.L_0088:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
jmp .L_0082
.L_0086:
cmp dword ptr [ebp-16], 7
jne .L_008A
.L_008B:
push dword ptr [ebp+8]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008D
push dword ptr [ebp+8]
call _RTLWSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_008D:
.L_008C:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _HUNESCAPEW@8
push eax
call _fb_WstrLen@4
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
jmp .L_0082
.L_008A:
cmp dword ptr [ebp-16], 18
jne .L_008F
.L_0090:
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _ASTSIZEOF@8
add eax, 4294967295
adc edx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .L_0082
.L_008F:
cmp dword ptr [ebp-16], 20
jne .L_0092
.L_0093:
push dword ptr [ebp+8]
push 73
call _ASTNEWUOP@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0095
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0095:
.L_0094:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .L_0082
.L_0092:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0097:
.L_0082:
push dword ptr [ebp+8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], 0
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HLENSIZEOF@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_009C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_009B
.L_009C:
push 0
call _LEXSKIPTOKEN@4
.L_009B:
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _CTYPEOREXPRESSION@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009F
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_00A1
mov dword ptr [ebp+8], 466
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
.L_00A1:
.L_00A0:
jmp .L_009E
.L_009F:
cmp dword ptr [ebp+8], 466
jne .L_00A2
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
call _CUDTTYPEMEMBER@20
jmp .L_009E
.L_00A2:
cmp dword ptr [ebp+8], 465
jne .L_00A4
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
call _CUDTTYPEMEMBER@20
cmp dword ptr [ebp-32], 0
je .L_00A7
mov eax, dword ptr [ebp-12]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 4
je .L_00AB
.L_00AC:
cmp dword ptr [ebp-40], 17
je .L_00AB
.L_00AD:
cmp dword ptr [ebp-40], 18
jne .L_00AA
.L_00AB:
mov ebx, dword ptr [_SYMB_DTYPETB+116]
mov eax, ebx
sar eax, 31
sub dword ptr [ebp-20], ebx
sbb dword ptr [ebp-16], eax
fild qword ptr [ebp-20]
fild dword ptr [_SYMB_DTYPETB+116]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
jmp .L_00A8
.L_00AA:
cmp dword ptr [ebp-40], 7
jne .L_00AE
.L_00AF:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], ebx
fild qword ptr [ebp-20]
fild dword ptr [_SYMB_DTYPETB+200]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
.L_00AE:
.L_00A8:
.L_00A7:
.L_00A6:
.L_00A4:
.L_009E:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00B1
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00B0
.L_00B1:
cmp dword ptr [ebp+12], 0
jne .L_00B3
push 0
call _LEXSKIPTOKEN@4
.L_00B3:
.L_00B2:
.L_00B0:
cmp dword ptr [ebp-8], 0
je .L_00B5
cmp dword ptr [ebp+8], 465
jne .L_00B7
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _HLEN@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B9
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00B9:
.L_00B8:
jmp .L_00B6
.L_00B7:
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
call _ASTSIZEOF@8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00B6:
jmp .L_00B4
.L_00B5:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00B4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
