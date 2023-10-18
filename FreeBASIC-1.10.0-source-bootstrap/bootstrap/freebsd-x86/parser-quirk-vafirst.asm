	.intel_syntax noprefix

.section .text
.balign 16

.globl CVAFUNCT
CVAFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00A4:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .L_00A7
jmp .L_00A5
.L_00A7:
.L_00A6:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
je .L_00A9
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00AB
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
jmp .L_00AA
.L_00AB:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00AA:
.L_00A9:
.L_00A8:
cmp dword ptr [ENV+104], 1
jne .L_00AD
push 0
push -1
push 286
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AC
.L_00AD:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-20], eax
push 0
push 0
push dword ptr [ebp-20]
push 0
push 32
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
push 8
push 0
push 0
push 9
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.L_00AC:
.L_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CVALISTFUNCT
CVALISTFUNCT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00AE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_00B1
push 0
push 0
push 6
call ERRREPORT
add esp, 12
.L_00B1:
.L_00B0:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00B3
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00B3:
.L_00B2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00B5
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_00B4
.L_00B5:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00B4:
push 1
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00B9
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00B9:
.L_00B8:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_00BB
push 0
push 0
push 7
call ERRREPORT
add esp, 12
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00BD
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 112
call ASTNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00BC
.L_00BD:
mov dword ptr [ebp-32], 0
push dword ptr [ebp-8]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_00BF
push dword ptr [ebp-8]
call ASTCANTAKEADDROF
add esp, 4
test eax, eax
je .L_00C1
lea eax, [ebp-8]
push eax
call ASTMAKEREF
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_00C0
.L_00C1:
lea eax, [ebp-8]
push eax
call ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-32], eax
.L_00C0:
.L_00BF:
.L_00BE:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBCALCLEN
add esp, 8
mov ecx, dword ptr [ENV+296]
mov ebx, ecx
sar ebx, 31
add eax, ecx
adc edx, ebx
add eax, 4294967295
adc edx, 4294967295
mov ecx, dword ptr [ENV+296]
neg ecx
mov esi, ecx
mov ebx, esi
sar ebx, 31
and eax, esi
and edx, ebx
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], edx
push 1
push 0
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 4
push eax
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-44], eax
push 0
push 16
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-32]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 29
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-48], eax
push 2
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-32]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.L_00BC:
.L_00AF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CVALISTSTMT
CVALISTSTMT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00C2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_00C5
.L_00C7:
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .L_00C9
jmp .L_00C3
.L_00C9:
.L_00C8:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_00CB
push 0
push 0
push 6
call ERRREPORT
add esp, 12
.L_00CB:
.L_00CA:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00CD
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C3
.L_00CD:
.L_00CC:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00CF
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_00CE
.L_00CF:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00CE:
push 1
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call HCHECKLASTPARAMETERSYMBOL
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_00D1
push 0
push 0
push 7
call ERRREPORT
add esp, 12
.L_00D1:
.L_00D0:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00D3
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 109
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 4
jmp .L_00D2
.L_00D3:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-32]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-32], eax
push 16
push dword ptr [ebp-32]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
.L_00D2:
mov dword ptr [ebp-4], -1
jmp .L_00C4
.L_00D4:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_00D6
push 0
push 0
push 6
call ERRREPORT
add esp, 12
.L_00D6:
.L_00D5:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00D8
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C3
.L_00D8:
.L_00D7:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_00DA
push 0
push 0
push 7
call ERRREPORT
add esp, 12
.L_00DA:
.L_00D9:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00DC
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push 0
push dword ptr [ebp-8]
push 110
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 4
jmp .L_00DB
.L_00DC:
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
.L_00DB:
mov dword ptr [ebp-4], -1
jmp .L_00C4
.L_00DD:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_00DF
push 0
push 0
push 6
call ERRREPORT
add esp, 12
.L_00DF:
.L_00DE:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00E1
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C3
.L_00E1:
.L_00E0:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00E3
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_00E2
.L_00E3:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00E2:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push -1
push dword ptr [ebp-12]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00E5
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C3
.L_00E5:
.L_00E4:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_00E7
push 0
push 0
push 7
call ERRREPORT
add esp, 12
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00E9
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 4
lea eax, [ebp-12]
push eax
call HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 111
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 4
jmp .L_00E8
.L_00E9:
push 16
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
.L_00E8:
mov dword ptr [ebp-4], -1
jmp .L_00C4
.L_00C5:
mov eax, dword ptr [ebp-28]
add eax, 4294966781
cmp eax, 3
ja .L_00C4
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_00EA+eax*4-2060]
.L_00EA:
.int .L_00C7
.int .L_00C4
.int .L_00D4
.int .L_00DD
.L_00C4:
.L_00C3:
mov eax, dword ptr [ebp-4]
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
HGETVARARGPROCPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0069
jmp .L_0067
.L_0069:
.L_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+108]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+84], 3
je .L_006B
jmp .L_0067
.L_006B:
.L_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+80]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_006D
jmp .L_0067
.L_006D:
.L_006C:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp dword ptr [eax+56], 4
je .L_006F
jmp .L_0067
.L_006F:
.L_006E:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+168]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_0071
jmp .L_0067
.L_0071:
.L_0070:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 0
jne .L_0073
jmp .L_0067
.L_0073:
.L_0072:
mov dword ptr [ebp-4], -1
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKFORVALISTCOMPATIBLETYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0074:
cmp dword ptr [ebp+8], 0
jne .L_0077
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0075
.L_0077:
.L_0076:
push dword ptr [ebp+8]
call ASTISCONSTANT
add esp, 4
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0079
push 0
push 0
push 119
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0075
.L_0079:
.L_0078:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_007D
.L_007E:
cmp dword ptr [ebp-8], 20
jne .L_007C
.L_007D:
mov dword ptr [ebp-4], -1
jmp .L_0075
.L_007C:
.L_007A:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
.L_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKLASTPARAMETERSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
cmp dword ptr [ebp+8], 0
jne .L_0082
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0085
.L_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebx+12], eax
jne .L_0088
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0080
.L_0088:
.L_0087:
jmp .L_0083
.L_0085:
cmp dword ptr [ebp-8], 20
je .L_008A
.L_008B:
cmp dword ptr [ebp-8], 25
jne .L_0089
.L_008A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
jne .L_008D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+12], ebx
jne .L_008F
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_0080
.L_008F:
.L_008E:
.L_008D:
.L_008C:
.L_0089:
.L_0083:
push 0
push 1
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 14
call ERRREPORTEX
add esp, 20
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSOLVEVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0090:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 0
je .L_0093
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
lea ebx, [eax+56]
push ebx
call HSOLVEVALISTTYPE
add esp, 4
.L_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
je .L_0095
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx+60]
push eax
call HSOLVEVALISTTYPE
add esp, 4
.L_0095:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .L_009B
.L_009C:
cmp dword ptr [ebp-4], 2
jne .L_009A
.L_009B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
jmp .L_0098
.L_009A:
cmp dword ptr [ebp-4], 3
jne .L_009D
.L_009E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp dword ptr [ecx], 17
jne .L_00A0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .L_00A2
jmp .L_0098
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, -32
or eax, 19
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
jmp .L_0098
.L_009D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.L_00A3:
.L_0098:
.L_0097:
.L_0096:
.L_0091:
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
