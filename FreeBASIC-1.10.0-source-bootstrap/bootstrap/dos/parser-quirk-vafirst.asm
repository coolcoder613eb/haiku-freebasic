	.intel_syntax noprefix

.section .text
.balign 16

.globl _CVAFUNCT
_CVAFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call _HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .L_00A8
jmp .L_00A6
.L_00A8:
.L_00A7:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .L_00AA
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00AC
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
jmp .L_00AB
.L_00AC:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00AB:
.L_00AA:
.L_00A9:
cmp dword ptr [_ENV+104], 1
jne .L_00AE
push 0
push -1
push 286
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AD
.L_00AE:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-20], eax
push 0
push 0
push dword ptr [ebp-20]
push 0
push 32
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
push 8
push 0
push 0
push 9
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.L_00AD:
.L_00A6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVALISTFUNCT
_CVALISTFUNCT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00AF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_00B2
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_00B2:
.L_00B1:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00B4
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00B4:
.L_00B3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00B6
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_00B5
.L_00B6:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00B5:
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00BA
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00BA:
.L_00B9:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00BC
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00BE
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 112
call _ASTNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00BE:
mov dword ptr [ebp-32], 0
push dword ptr [ebp-8]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_00C0
push dword ptr [ebp-8]
call _ASTCANTAKEADDROF
add esp, 4
test eax, eax
je .L_00C2
lea eax, [ebp-8]
push eax
call _ASTMAKEREF
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_00C1
.L_00C2:
lea eax, [ebp-8]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-32], eax
.L_00C1:
.L_00C0:
.L_00BF:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBCALCLEN
add esp, 8
mov ecx, dword ptr [_ENV+296]
mov ebx, ecx
sar ebx, 31
add eax, ecx
adc edx, ebx
add eax, 4294967295
adc edx, 4294967295
mov ecx, dword ptr [_ENV+296]
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
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTCLONETREE
add esp, 4
push eax
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-44], eax
push 0
push 16
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-32]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 29
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-48], eax
push 2
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-32]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.L_00BD:
.L_00B0:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVALISTSTMT
_CVALISTSTMT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00C3:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_00C6
.L_00C8:
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call _HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .L_00CA
jmp .L_00C4
.L_00CA:
.L_00C9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_00CC
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_00CC:
.L_00CB:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00CE
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C4
.L_00CE:
.L_00CD:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00D0
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_00CF
.L_00D0:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00CF:
push 1
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call _HCHECKLASTPARAMETERSYMBOL
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00D2
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00D4
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 109
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .L_00D3
.L_00D4:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-32]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-32], eax
push 16
push dword ptr [ebp-32]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_00D3:
mov dword ptr [ebp-4], -1
jmp .L_00C5
.L_00D5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_00D7
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_00D7:
.L_00D6:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00D9
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C4
.L_00D9:
.L_00D8:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00DB
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_00DB:
.L_00DA:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00DD
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push 0
push dword ptr [ebp-8]
push 110
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .L_00DC
.L_00DD:
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
.L_00DC:
mov dword ptr [ebp-4], -1
jmp .L_00C5
.L_00DE:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_00E0
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_00E0:
.L_00DF:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00E2
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C4
.L_00E2:
.L_00E1:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00E4
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_00E3
.L_00E4:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00E3:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push -1
push dword ptr [ebp-12]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .L_00E6
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .L_00C4
.L_00E6:
.L_00E5:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00E8
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .L_00EA
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
lea eax, [ebp-12]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 111
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .L_00E9
.L_00EA:
push 16
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_00E9:
mov dword ptr [ebp-4], -1
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp-28]
add eax, 4294966781
cmp eax, 3
ja .L_00C5
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_00EB+eax*4-2060]
_.L_00EB:
.int .L_00C8
.int .L_00C5
.int .L_00D5
.int .L_00DE
.L_00C5:
.L_00C4:
mov eax, dword ptr [ebp-4]
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
_HGETVARARGPROCPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_006A
jmp .L_0068
.L_006A:
.L_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+108]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+84], 3
je .L_006C
jmp .L_0068
.L_006C:
.L_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+80]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_006E
jmp .L_0068
.L_006E:
.L_006D:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp dword ptr [eax+56], 4
je .L_0070
jmp .L_0068
.L_0070:
.L_006F:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+168]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .L_0072
jmp .L_0068
.L_0072:
.L_0071:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 0
jne .L_0074
jmp .L_0068
.L_0074:
.L_0073:
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKFORVALISTCOMPATIBLETYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
cmp dword ptr [ebp+8], 0
jne .L_0078
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_0078:
.L_0077:
push dword ptr [ebp+8]
call _ASTISCONSTANT
add esp, 4
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_007A
push 0
push 0
push 119
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_007A:
.L_0079:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_007E
.L_007F:
cmp dword ptr [ebp-8], 20
jne .L_007D
.L_007E:
mov dword ptr [ebp-4], -1
jmp .L_0076
.L_007D:
.L_007B:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKLASTPARAMETERSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
cmp dword ptr [ebp+8], 0
jne .L_0083
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .L_0086
.L_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebx+12], eax
jne .L_0089
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0089:
.L_0088:
jmp .L_0084
.L_0086:
cmp dword ptr [ebp-8], 20
je .L_008B
.L_008C:
cmp dword ptr [ebp-8], 25
jne .L_008A
.L_008B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
jne .L_008E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+12], ebx
jne .L_0090
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_0081
.L_0090:
.L_008F:
.L_008E:
.L_008D:
.L_008A:
.L_0084:
push 0
push 1
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 14
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSOLVEVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0091:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 0
je .L_0094
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
lea ebx, [eax+56]
push ebx
call _HSOLVEVALISTTYPE
add esp, 4
.L_0094:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
je .L_0096
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx+60]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
.L_0096:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_0098
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .L_009C
.L_009D:
cmp dword ptr [ebp-4], 2
jne .L_009B
.L_009C:
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
jmp .L_0099
.L_009B:
cmp dword ptr [ebp-4], 3
jne .L_009E
.L_009F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp dword ptr [ecx], 17
jne .L_00A1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .L_00A3
jmp .L_0099
.L_00A3:
.L_00A2:
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, -32
or eax, 19
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
jmp .L_0099
.L_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.L_00A4:
.L_0099:
.L_0098:
.L_0097:
.L_0092:
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
