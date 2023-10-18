	.intel_syntax noprefix

.section .text
.balign 16

.globl _CERASESTMT@0
_CERASESTMT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
push 2048
call _LEXSKIPTOKEN@4
.L_006A:
push 1
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006E
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_006D
.L_006E:
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_0070
push dword ptr [ebp-12]
call _SYMBISARRAY@4
test eax, eax
jne .L_0072
mov dword ptr [ebp-12], 0
.L_0072:
.L_0071:
.L_0070:
.L_006F:
cmp dword ptr [ebp-12], 0
jne .L_0074
push 0
push 0
push 63
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0076
push 0
push 0
push 119
call _ERRREPORT@12
.L_0076:
.L_0075:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
je .L_0078
push -1
push -1
push dword ptr [ebp-8]
call _RTLARRAYERASE@12
push eax
call _ASTADD@4
jmp .L_0077
.L_0078:
push dword ptr [ebp-8]
call _RTLARRAYCLEAR@4
push eax
call _ASTADD@4
.L_0077:
.L_0073:
.L_006D:
.L_006C:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_006A
.L_006B:
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSWAPSTMT@0
_CSWAPSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BD:
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-8], eax
call _HSCOPEDSWAP@0
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
call _ASTSCOPEEND@4
.L_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CARRAYFUNCT@4
_CARRAYFUNCT@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00BF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 495
je .L_00C3
.L_00C4:
cmp dword ptr [ebp+8], 496
jne .L_00C2
.L_00C3:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_00C6
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_00C5
.L_00C6:
push 0
call _LEXSKIPTOKEN@4
.L_00C5:
push 1
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C8
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_00C0
.L_00C8:
.L_00C7:
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_00CA
push dword ptr [ebp-16]
call _SYMBISARRAY@4
test eax, eax
jne .L_00CC
mov dword ptr [ebp-16], 0
.L_00CC:
.L_00CB:
.L_00CA:
.L_00C9:
cmp dword ptr [ebp-16], 0
jne .L_00CE
push 0
push -1
push 63
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_00C0
.L_00CE:
.L_00CD:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00D0
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00D2
jmp .L_00C0
.L_00D2:
.L_00D1:
jmp .L_00CF
.L_00D0:
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00CF:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_00D4
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_00D3
.L_00D4:
push 0
call _LEXSKIPTOKEN@4
.L_00D3:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTBUILDARRAYBOUND@12
mov dword ptr [ebp-4], eax
.L_00C2:
.L_00C1:
.L_00C0:
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
.balign 16
_HSCOPEDSWAP@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
push 2048
call _LEXSKIPTOKEN@4
push 16
call _CVARORDEREF@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007C
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_007A
.L_007C:
.L_007B:
push dword ptr [ebp-8]
call _ASTISCONSTANT@4
test eax, eax
je .L_007E
push 0
push -1
push 119
call _ERRREPORT@12
.L_007E:
.L_007D:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0080
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_007F
.L_0080:
push 0
call _LEXSKIPTOKEN@4
.L_007F:
push 16
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0082
push 0
push 0
push 14
call _ERRREPORT@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .L_007A
.L_0082:
.L_0081:
push dword ptr [ebp-12]
call _ASTISCONSTANT@4
test eax, eax
je .L_0084
push 0
push -1
push 119
call _ERRREPORT@12
.L_0084:
.L_0083:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
je .L_0086
cmp dword ptr [ebp-16], 20
jne .L_0088
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+120]
and eax, 131072
test eax, eax
je .L_008A
cmp dword ptr [ebp-20], 4
jne .L_008C
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_008C:
.L_008B:
jmp .L_0089
.L_008A:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+120]
and eax, 65536
test eax, eax
je .L_008D
cmp dword ptr [ebp-20], 7
jne .L_008F
lea eax, [ebp-8]
push eax
call _ASTTRYOVLSTRINGCONV@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_008F:
.L_008E:
.L_008D:
.L_0089:
jmp .L_0087
.L_0088:
cmp dword ptr [ebp-20], 20
jne .L_0090
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+120]
and ebx, 131072
test ebx, ebx
je .L_0092
cmp dword ptr [ebp-16], 4
jne .L_0094
lea ebx, [ebp-12]
push ebx
call _ASTTRYOVLSTRINGCONV@4
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.L_0094:
.L_0093:
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+120]
and ebx, 65536
test ebx, ebx
je .L_0095
cmp dword ptr [ebp-16], 7
jne .L_0097
lea ebx, [ebp-12]
push ebx
call _ASTTRYOVLSTRINGCONV@4
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.L_0097:
.L_0096:
.L_0095:
.L_0091:
.L_0090:
.L_0087:
.L_0086:
.L_0085:
cmp dword ptr [ebp-16], 17
je .L_009A
.L_009B:
cmp dword ptr [ebp-16], 18
je .L_009A
.L_009C:
cmp dword ptr [ebp-16], 4
jne .L_0099
.L_009A:
cmp dword ptr [ebp-20], 17
je .L_009F
.L_00A0:
cmp dword ptr [ebp-20], 18
je .L_009F
.L_00A1:
cmp dword ptr [ebp-20], 4
jne .L_009E
.L_009F:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLSTRSWAP@8
mov dword ptr [ebp-4], eax
jmp .L_009D
.L_009E:
push 0
push 0
push 20
call _ERRREPORT@12
.L_00A2:
.L_009D:
jmp .L_007A
jmp .L_0098
.L_0099:
cmp dword ptr [ebp-16], 7
jne .L_00A3
.L_00A4:
cmp dword ptr [ebp-20], 7
jne .L_00A6
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWSTRSWAP@8
mov dword ptr [ebp-4], eax
jmp .L_00A5
.L_00A6:
push 0
push 0
push 20
call _ERRREPORT@12
.L_00A5:
jmp .L_007A
.L_00A3:
.L_0098:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTCHECKASSIGN@12
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, eax
call _ASTCHECKASSIGN@12
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00A8
push 0
push 0
push 20
call _ERRREPORT@12
jmp .L_007A
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp-16]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00AA
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLMEMSWAP@8
mov dword ptr [ebp-4], eax
jmp .L_007A
.L_00AA:
.L_00A9:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_00AB
mov dword ptr [ebp-28], 24
jmp .L_00D5
.L_00AB:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.L_00D5:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00AD
mov dword ptr [ebp-32], 24
jmp .L_00D6
.L_00AD:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-32], eax
.L_00D6:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-56]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_00AF
mov dword ptr [ebp-36], 24
jmp .L_00D7
.L_00AF:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_00D7:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_00B1
mov dword ptr [ebp-40], 24
jmp .L_00D8
.L_00B1:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_00D8:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 19
jne .L_00B3
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_00D9
.L_00B3:
mov dword ptr [ebp-44], 0
.L_00D9:
mov eax, dword ptr [ebp-44]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 19
jne .L_00B5
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_00DA
.L_00B5:
mov dword ptr [ebp-48], 0
.L_00DA:
mov eax, dword ptr [ebp-48]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov dword ptr [ebp-52], 0
push dword ptr [ebp-8]
call _ASTHASSIDEFX@4
test eax, eax
je .L_00B8
push 0
lea eax, [ebp-8]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.L_00B8:
.L_00B7:
push dword ptr [ebp-12]
call _ASTHASSIDEFX@4
test eax, eax
je .L_00BA
push 0
lea eax, [ebp-12]
push eax
call _ASTMAKEREF@4
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.L_00BA:
.L_00B9:
cmp dword ptr [ebp-24], 0
je .L_00BC
push 0
push dword ptr [ebp-8]
call _ASTCLONETREE@4
push eax
push 88
call _ASTNEWSTACK@8
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-12]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp-8]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-12]
push 89
call _ASTNEWSTACK@8
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
jmp .L_00BB
.L_00BC:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-56], eax
push 0
push 0
push dword ptr [ebp-8]
call _ASTCLONETREE@4
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push dword ptr [ebp-12]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp-8]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
push 0
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-12]
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-52]
call _ASTNEWLINK@12
mov dword ptr [ebp-52], eax
.L_00BB:
push dword ptr [ebp-52]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_007A:
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
