	.intel_syntax noprefix

.section .text
.balign 16

.globl CERASESTMT
CERASESTMT:
.type CERASESTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0069:
sub esp, 12
push 1
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_006C
.L_006D:
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .L_006F
sub esp, 12
push dword ptr [ebp-12]
call SYMBISARRAY
add esp, 16
test eax, eax
jne .L_0071
mov dword ptr [ebp-12], 0
.L_0071:
.L_0070:
.L_006F:
.L_006E:
cmp dword ptr [ebp-12], 0
jne .L_0073
sub esp, 4
push 0
push 0
push 63
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_0072
.L_0073:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0075
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
.L_0075:
.L_0074:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 16388
test eax, eax
je .L_0077
sub esp, 12
sub esp, 8
push -1
push -1
push dword ptr [ebp-8]
call RTLARRAYERASE
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_0076
.L_0077:
sub esp, 12
push dword ptr [ebp-8]
call RTLARRAYCLEAR
add esp, 4
push eax
call ASTADD
add esp, 16
.L_0076:
.L_0072:
.L_006C:
.L_006B:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0069
.L_006A:
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CERASESTMT, .-CERASESTMT
.cfi_endproc
.balign 16

.globl CSWAPSTMT
CSWAPSTMT:
.type CSWAPSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BC:
call ASTSCOPEBEGIN
mov dword ptr [ebp-8], eax
call HSCOPEDSWAP
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTSCOPEEND
add esp, 16
.L_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSWAPSTMT, .-CSWAPSTMT
.cfi_endproc
.balign 16

.globl CARRAYFUNCT
CARRAYFUNCT:
.type CARRAYFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BE:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 495
je .L_00C2
.L_00C3:
cmp dword ptr [ebp+8], 496
jne .L_00C1
.L_00C2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_00C5
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_00C4
.L_00C5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00C4:
sub esp, 12
push 1
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C7
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BF
.L_00C7:
.L_00C6:
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_00C9
sub esp, 12
push dword ptr [ebp-16]
call SYMBISARRAY
add esp, 16
test eax, eax
jne .L_00CB
mov dword ptr [ebp-16], 0
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
cmp dword ptr [ebp-16], 0
jne .L_00CD
sub esp, 4
push 0
push -1
push 63
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BF
.L_00CD:
.L_00CC:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00CF
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00D1
jmp .L_00BF
.L_00D1:
.L_00D0:
jmp .L_00CE
.L_00CF:
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00CE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00D3
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_00D2
.L_00D3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00D2:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTBUILDARRAYBOUND
add esp, 16
mov dword ptr [ebp-4], eax
.L_00C1:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CARRAYFUNCT, .-CARRAYFUNCT
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
HSCOPEDSWAP:
.type HSCOPEDSWAP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0078:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 16
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007B
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0079
.L_007B:
.L_007A:
sub esp, 12
push dword ptr [ebp-8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_007D
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_007D:
.L_007C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_007F
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_007E
.L_007F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_007E:
sub esp, 12
push 16
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0081
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0079
.L_0081:
.L_0080:
sub esp, 12
push dword ptr [ebp-12]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_0083
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_0083:
.L_0082:
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
je .L_0085
cmp dword ptr [ebp-16], 20
jne .L_0087
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+116]
and eax, 131072
test eax, eax
je .L_0089
cmp dword ptr [ebp-20], 4
jne .L_008B
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_008B:
.L_008A:
jmp .L_0088
.L_0089:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .L_008C
cmp dword ptr [ebp-20], 7
jne .L_008E
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_008E:
.L_008D:
.L_008C:
.L_0088:
jmp .L_0086
.L_0087:
cmp dword ptr [ebp-20], 20
jne .L_008F
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .L_0091
cmp dword ptr [ebp-16], 4
jne .L_0093
sub esp, 12
lea ebx, [ebp-12]
push ebx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.L_0093:
.L_0092:
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+116]
and ebx, 65536
test ebx, ebx
je .L_0094
cmp dword ptr [ebp-16], 7
jne .L_0096
sub esp, 12
lea ebx, [ebp-12]
push ebx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
.L_0096:
.L_0095:
.L_0094:
.L_0090:
.L_008F:
.L_0086:
.L_0085:
.L_0084:
cmp dword ptr [ebp-16], 17
je .L_0099
.L_009A:
cmp dword ptr [ebp-16], 18
je .L_0099
.L_009B:
cmp dword ptr [ebp-16], 4
jne .L_0098
.L_0099:
cmp dword ptr [ebp-20], 17
je .L_009E
.L_009F:
cmp dword ptr [ebp-20], 18
je .L_009E
.L_00A0:
cmp dword ptr [ebp-20], 4
jne .L_009D
.L_009E:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLSTRSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_009C
.L_009D:
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
.L_00A1:
.L_009C:
jmp .L_0079
jmp .L_0097
.L_0098:
cmp dword ptr [ebp-16], 7
jne .L_00A2
.L_00A3:
cmp dword ptr [ebp-20], 7
jne .L_00A5
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWSTRSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00A4
.L_00A5:
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
.L_00A4:
jmp .L_0079
.L_00A2:
.L_0097:
sub esp, 4
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTCHECKASSIGN
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 4
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, eax
call ASTCHECKASSIGN
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00A7
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
jmp .L_0079
.L_00A7:
.L_00A6:
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
je .L_00A9
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLMEMSWAP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0079
.L_00A9:
.L_00A8:
mov dword ptr [ebp-24], -1
mov eax, dword ptr [ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_00AA
mov dword ptr [ebp-28], 24
jmp .L_00D4
.L_00AA:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-28], eax
.L_00D4:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_00AC
mov dword ptr [ebp-32], 24
jmp .L_00D5
.L_00AC:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-32], eax
.L_00D5:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ebp-56]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_00AE
mov dword ptr [ebp-36], 24
jmp .L_00D6
.L_00AE:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_00D6:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-60], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_00B0
mov dword ptr [ebp-40], 24
jmp .L_00D7
.L_00B0:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_00D7:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [SYMB_DTYPETB+ecx]
cmp eax, dword ptr [SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 19
jne .L_00B2
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_00D8
.L_00B2:
mov dword ptr [ebp-44], 0
.L_00D8:
mov eax, dword ptr [ebp-44]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 19
jne .L_00B4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .L_00D9
.L_00B4:
mov dword ptr [ebp-48], 0
.L_00D9:
mov eax, dword ptr [ebp-48]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-24], eax
mov dword ptr [ebp-52], 0
sub esp, 12
push dword ptr [ebp-8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_00B7
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp-8]
push eax
call ASTMAKEREF
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.L_00B7:
.L_00B6:
sub esp, 12
push dword ptr [ebp-12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_00B9
sub esp, 4
push 0
sub esp, 4
lea eax, [ebp-12]
push eax
call ASTMAKEREF
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.L_00B9:
.L_00B8:
cmp dword ptr [ebp-24], 0
je .L_00BB
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 8
push eax
push 88
call ASTNEWSTACK
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
push dword ptr [ebp-12]
push 89
call ASTNEWSTACK
add esp, 8
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_00BA
.L_00BB:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-56], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 8
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 4
push 0
sub esp, 12
push 0
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-56]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-52]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-52], eax
.L_00BA:
sub esp, 12
push dword ptr [ebp-52]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.L_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSCOPEDSWAP, .-HSCOPEDSWAP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
