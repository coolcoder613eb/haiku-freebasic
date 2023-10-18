	.intel_syntax noprefix

.section .text
.balign 16

.globl CMATHFUNCT
CMATHFUNCT:
.type CMATHFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_00BD
.L_00BF:
sub esp, 12
push 56
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C0:
sub esp, 12
push 57
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C1:
sub esp, 12
push 71
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C2:
sub esp, 12
push 72
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C3:
sub esp, 12
push 70
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C4:
sub esp, 12
push 58
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C5:
sub esp, 12
push 59
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C6:
sub esp, 12
push 60
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C7:
sub esp, 12
push 61
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C8:
sub esp, 12
push 62
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00C9:
sub esp, 12
push 63
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00CA:
sub esp, 12
push 65
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00CB:
sub esp, 12
push 68
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00CC:
sub esp, 12
push 69
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00CD:
call HATAN2
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00CE:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLENSIZEOF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00BD:
mov eax, dword ptr [ebp-8]
add eax, 4294966848
cmp eax, 18
ja .L_00BC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00CF+eax*4-1792]
.L_00CF:
.int .L_00BF
.int .L_00C0
.int .L_00C1
.int .L_00C2
.int .L_00C4
.int .L_00C5
.int .L_00C6
.int .L_00C7
.int .L_00C8
.int .L_00C9
.int .L_00CA
.int .L_00CB
.int .L_00CC
.int .L_00C3
.int .L_00CD
.int .L_00BC
.int .L_00BC
.int .L_00CE
.int .L_00CE
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMATHFUNCT, .-CMATHFUNCT
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
HMATHOP:
.type HMATHOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_006A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0069
.L_006A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0069:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006C
jmp .L_0068
.L_006C:
.L_006B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_006E
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
jmp .L_006D
.L_006E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_006D:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0070
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0070:
.L_006F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATHOP, .-HMATHOP
.cfi_endproc
.balign 16
HATAN2:
.type HATAN2, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0071:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0074
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0073
.L_0074:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0073:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0076
jmp .L_0072
.L_0076:
.L_0075:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0078
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0077
.L_0078:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0077:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_007A
jmp .L_0072
.L_007A:
.L_0079:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_007C
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
jmp .L_007B
.L_007C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_007B:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 64
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007E
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_007E:
.L_007D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0072:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HATAN2, .-HATAN2
.cfi_endproc
.balign 16
HLEN:
.type HLEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .L_0083
.L_0084:
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0080
jmp .L_0081
.L_0083:
cmp dword ptr [ebp-16], 4
jne .L_0085
.L_0086:
sub esp, 12
push dword ptr [ebp+8]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0088
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0088:
.L_0087:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
jmp .L_0081
.L_0085:
cmp dword ptr [ebp-16], 7
jne .L_0089
.L_008A:
sub esp, 12
push dword ptr [ebp+8]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008C
sub esp, 12
push dword ptr [ebp+8]
call RTLWSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_008C:
.L_008B:
sub esp, 12
sub esp, 12
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 20
push eax
call fb_WstrLen
add esp, 16
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
jmp .L_0081
.L_0089:
cmp dword ptr [ebp-16], 18
jne .L_008E
.L_008F:
sub esp, 8
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
add eax, 4294967295
adc edx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .L_0081
.L_008E:
cmp dword ptr [ebp-16], 20
jne .L_0091
.L_0092:
sub esp, 8
push dword ptr [ebp+8]
push 73
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0094
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0094:
.L_0093:
sub esp, 8
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .L_0081
.L_0091:
sub esp, 8
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0096:
.L_0081:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLEN, .-HLEN
.cfi_endproc
.balign 16
HLENSIZEOF:
.type HLENSIZEOF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_009B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_009A
.L_009B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_009A:
sub esp, 12
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
call CTYPEOREXPRESSION
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009E
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_00A0
mov dword ptr [ebp+8], 466
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A0:
.L_009F:
jmp .L_009D
.L_009E:
cmp dword ptr [ebp+8], 466
jne .L_00A1
mov dword ptr [ebp-32], 0
sub esp, 12
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
call CUDTTYPEMEMBER
add esp, 32
jmp .L_009D
.L_00A1:
cmp dword ptr [ebp+8], 465
jne .L_00A3
mov dword ptr [ebp-32], 0
sub esp, 12
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
call CUDTTYPEMEMBER
add esp, 32
cmp dword ptr [ebp-32], 0
je .L_00A6
mov eax, dword ptr [ebp-12]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 4
je .L_00AA
.L_00AB:
cmp dword ptr [ebp-40], 17
je .L_00AA
.L_00AC:
cmp dword ptr [ebp-40], 18
jne .L_00A9
.L_00AA:
mov ebx, dword ptr [SYMB_DTYPETB+116]
mov eax, ebx
sar eax, 31
sub dword ptr [ebp-20], ebx
sbb dword ptr [ebp-16], eax
fild qword ptr [ebp-20]
fild dword ptr [SYMB_DTYPETB+116]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
jmp .L_00A7
.L_00A9:
cmp dword ptr [ebp-40], 7
jne .L_00AD
.L_00AE:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], ebx
fild qword ptr [ebp-20]
fild dword ptr [SYMB_DTYPETB+200]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
.L_00AD:
.L_00A7:
.L_00A6:
.L_00A5:
.L_00A3:
.L_009D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00B0
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
jmp .L_00AF
.L_00B0:
cmp dword ptr [ebp+12], 0
jne .L_00B2
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00B2:
.L_00B1:
.L_00AF:
cmp dword ptr [ebp-8], 0
je .L_00B4
cmp dword ptr [ebp+8], 465
jne .L_00B6
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call HLEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B8
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B8:
.L_00B7:
jmp .L_00B5
.L_00B6:
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
call ASTSIZEOF
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B5:
jmp .L_00B3
.L_00B4:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLENSIZEOF, .-HLENSIZEOF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
