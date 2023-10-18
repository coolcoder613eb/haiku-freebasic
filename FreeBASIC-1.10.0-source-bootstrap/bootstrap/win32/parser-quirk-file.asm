	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPRINTSTMT@4
_CPRINTSTMT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 463
je .L_006C
.L_006D:
cmp dword ptr [ebp+8], 63
jne .L_006B
.L_006C:
mov dword ptr [ebp-44], 0
jmp .L_006A
.L_006B:
cmp dword ptr [ebp+8], 464
jne .L_006E
.L_006F:
mov eax, dword ptr [_ENV+1040]
and eax, 33554432
test eax, eax
jne .L_0071
push 0
push 146
push 33554432
call _ERRREPORTNOTALLOWED@12
jmp .L_0070
.L_0071:
mov dword ptr [ebp-44], -1
.L_0070:
jmp .L_006A
.L_006E:
jmp .L_0069
.L_0072:
.L_006A:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-44], 0
je .L_0074
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .L_0073
.L_0074:
push 0
push 35
call _HMATCH@8
test eax, eax
je .L_0076
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0078
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_007A
mov dword ptr [ebp-4], 0
jmp .L_0069
.L_007A:
.L_0079:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-12], eax
.L_0078:
.L_0077:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_007C
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_007B
.L_007C:
push 0
call _LEXSKIPTOKEN@4
.L_007B:
jmp .L_0075
.L_0076:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0075:
.L_0073:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .L_007E
lea eax, [ebp-12]
push eax
call _ASTREMSIDEFX@4
push eax
call _ASTADD@4
.L_007E:
.L_007D:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
.L_007F:
push 2048
push 287
call _HMATCH@8
test eax, eax
je .L_0083
cmp dword ptr [ebp-8], 0
je .L_0085
push 0
push 0
push 3
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _RTLPRINTUSINGEND@8
test eax, eax
jne .L_0087
jmp .L_0069
.L_0087:
.L_0086:
.L_0085:
.L_0084:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0089
jmp .L_0069
.L_0089:
.L_0088:
push 0
push 59
call _HMATCH@8
test eax, eax
jne .L_008B
push 0
push 0
push 47
call _ERRREPORT@12
.L_008B:
.L_008A:
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call _RTLPRINTUSINGINIT@8
test eax, eax
jne .L_008D
jmp .L_0069
.L_008D:
.L_008C:
.L_0083:
.L_0082:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 4096
push 486
call _HMATCH@8
test eax, eax
je .L_008F
mov dword ptr [ebp-40], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0091
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0090
.L_0091:
push 0
call _LEXSKIPTOKEN@4
.L_0090:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0093
jmp .L_0069
.L_0093:
.L_0092:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0095
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0094
.L_0095:
push 0
call _LEXSKIPTOKEN@4
.L_0094:
jmp .L_008E
.L_008F:
push 4096
push 487
call _HMATCH@8
test eax, eax
je .L_0096
mov dword ptr [ebp-36], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0098
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0097
.L_0098:
push 0
call _LEXSKIPTOKEN@4
.L_0097:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_009A
jmp .L_0069
.L_009A:
.L_0099:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_009C
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_009B
.L_009C:
push 0
call _LEXSKIPTOKEN@4
.L_009B:
jmp .L_008E
.L_0096:
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
.L_008E:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_009E
cmp dword ptr [ebp-8], 0
je .L_00A0
push 0
push 0
push 47
call _ERRREPORT@12
.L_00A0:
.L_009F:
mov dword ptr [ebp-32], -1
jmp .L_009D
.L_009E:
push 0
push 59
call _HMATCH@8
test eax, eax
je .L_00A1
mov dword ptr [ebp-28], -1
.L_00A1:
.L_009D:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00A3
push 0
push 0
push 47
call _ERRREPORT@12
.L_00A3:
.L_00A2:
mov ebx, dword ptr [ebp-32]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00A5
jmp .L_0080
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
je .L_00A7
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-36]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _RTLPRINTSPCTAB@16
test eax, eax
jne .L_00A9
jmp .L_0069
.L_00A9:
.L_00A8:
jmp .L_00A6
.L_00A7:
cmp dword ptr [ebp-8], 0
jne .L_00AB
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call _RTLPRINT@20
test eax, eax
jne .L_00AD
push 0
push 0
push 24
call _ERRREPORT@12
.L_00AD:
.L_00AC:
jmp .L_00AA
.L_00AB:
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _RTLPRINTUSING@20
test eax, eax
jne .L_00AF
push 0
push 0
push 24
call _ERRREPORT@12
.L_00AF:
.L_00AE:
.L_00AA:
.L_00A6:
inc dword ptr [ebp-24]
.L_0081:
mov eax, dword ptr [ebp-28]
or eax, dword ptr [ebp-32]
jne .L_007F
.L_0080:
cmp dword ptr [ebp-8], 0
jne .L_00B1
cmp dword ptr [ebp-24], 0
jne .L_00B3
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push 0
push 0
push 0
push dword ptr [ebp-16]
call _RTLPRINT@20
test eax, eax
jne .L_00B5
jmp .L_0069
.L_00B5:
.L_00B4:
.L_00B3:
.L_00B2:
jmp .L_00B0
.L_00B1:
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _RTLPRINTUSINGEND@8
test eax, eax
jne .L_00B7
jmp .L_0069
.L_00B7:
.L_00B6:
.L_00B0:
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CWRITESTMT@0
_CWRITESTMT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00BC:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
test eax, eax
je .L_00BF
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C1
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_00C3
mov dword ptr [ebp-4], 0
jmp .L_00BD
.L_00C3:
.L_00C2:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_00C1:
.L_00C0:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_00C5
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_00C4
.L_00C5:
push 0
call _LEXSKIPTOKEN@4
.L_00C4:
jmp .L_00BE
.L_00BF:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00BE:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_00C7
lea eax, [ebp-8]
push eax
call _ASTREMSIDEFX@4
push eax
call _ASTADD@4
.L_00C7:
.L_00C6:
mov dword ptr [ebp-20], 0
.L_00C8:
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00CC
mov dword ptr [ebp-16], 0
.L_00CC:
.L_00CB:
mov dword ptr [ebp-24], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00CE
mov dword ptr [ebp-24], -1
.L_00CE:
.L_00CD:
push dword ptr [ebp-8]
call _ASTCLONETREE@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-16], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D0
cmp dword ptr [ebp-20], 0
jne .L_00D2
push 0
push 0
push dword ptr [ebp-12]
call _RTLWRITE@12
.L_00D2:
.L_00D1:
jmp .L_00C9
.L_00D0:
.L_00CF:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _RTLWRITE@12
test eax, eax
jne .L_00D4
push 0
push 0
push 24
call _ERRREPORT@12
.L_00D4:
.L_00D3:
inc dword ptr [ebp-20]
.L_00CA:
cmp dword ptr [ebp-24], 0
jne .L_00C8
.L_00C9:
push dword ptr [ebp-8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
.L_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLINEINPUTSTMT@0
_CLINEINPUTSTMT@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00D7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 478
je .L_00DA
jmp .L_00D8
.L_00DA:
.L_00D9:
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
push 0
push 59
call _HMATCH@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
push 0
push 35
call _HMATCH@8
test eax, eax
je .L_00DC
mov dword ptr [ebp-20], -1
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DE
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_00E0
mov dword ptr [ebp-4], 0
jmp .L_00D8
.L_00E0:
.L_00DF:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_00DE:
.L_00DD:
jmp .L_00DB
.L_00DC:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
.L_00DB:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_00E2
push 0
push 59
call _HMATCH@8
test eax, eax
jne .L_00E4
cmp dword ptr [ebp-12], 0
jne .L_00E6
cmp dword ptr [ebp-20], 0
je .L_00E8
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_00E7
.L_00E8:
push 0
push 0
push 326
call _ERRREPORT@12
.L_00E7:
.L_00E6:
.L_00E5:
jmp .L_00E3
.L_00E4:
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-28], -1
.L_00E3:
jmp .L_00E1
.L_00E2:
mov dword ptr [ebp-28], -1
.L_00E1:
cmp dword ptr [ebp-28], -1
jne .L_00EA
cmp dword ptr [ebp-12], 0
je .L_00EC
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
cmp dword ptr [ebp-12], 0
jne .L_00EE
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F0
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
jmp .L_00D8
.L_00F0:
.L_00EF:
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_00F2
push 0
push 0
push 119
call _ERRREPORT@12
jmp .L_00F1
.L_00F2:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
je .L_00F3
push 0
push -1
push 14
call _ERRREPORT@12
.L_00F3:
.L_00F1:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
push dword ptr [ebp-12]
call _RTLCALCSTRLEN@8
cmp edx, 0
jne .L_00F5
cmp eax, 0
jne .L_00F5
.L_0104:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_00F7
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00F9
push 0
push 0
push 9
call _ERRREPORT@12
.L_00F9:
.L_00F8:
jmp .L_00F6
.L_00F7:
push 0
push 0
push 16
call _ERRREPORT@12
.L_00F6:
.L_00F5:
.L_00F4:
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-40], edx
cmp dword ptr [ebp-40], 17
je .L_00FD
.L_00FE:
cmp dword ptr [ebp-40], 18
je .L_00FD
.L_00FF:
cmp dword ptr [ebp-40], 4
jne .L_00FC
.L_00FD:
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILELINEINPUT@24
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_00FC:
cmp dword ptr [ebp-40], 7
jne .L_0100
.L_0101:
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILELINEINPUTWSTR@24
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_0100:
push dword ptr [ebp-12]
call _ASTDELTREE@4
push 0
push 0
push 24
call _ERRREPORT@12
mov dword ptr [ebp-4], -1
.L_0102:
.L_00FA:
.L_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CINPUTSTMT@0
_CINPUTSTMT@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
push 59
call _HMATCH@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
push 0
push 35
call _HMATCH@8
test eax, eax
je .L_0108
mov dword ptr [ebp-20], -1
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_010A
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_010C
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_010C:
.L_010B:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_010A:
.L_0109:
jmp .L_0107
.L_0108:
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .L_010E
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2064]
call _LEXGETTEXT@0
push eax
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push 0
call _LEXSKIPTOKEN@4
jmp .L_010D
.L_010E:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], -1
.L_010D:
.L_0107:
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .L_0110
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0112
push 0
push 59
call _HMATCH@8
test eax, eax
jne .L_0114
cmp dword ptr [ebp-20], 0
je .L_0116
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0115
.L_0116:
push 0
push 0
push 326
call _ERRREPORT@12
.L_0115:
jmp .L_0113
.L_0114:
mov dword ptr [ebp-28], -1
.L_0113:
.L_0112:
.L_0111:
.L_0110:
.L_010F:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILEINPUT@16
test eax, eax
jne .L_0118
jmp .L_0106
.L_0118:
.L_0117:
.L_0119:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_011D
push 0
push 0
push 14
call _ERRREPORT@12
mov dword ptr [ebp-12], 0
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
.L_011D:
.L_011C:
cmp dword ptr [ebp-12], 0
je .L_011F
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0121
push 0
push 0
push 119
call _ERRREPORT@12
jmp .L_0120
.L_0121:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
je .L_0122
push 0
push -1
push 14
call _ERRREPORT@12
.L_0122:
.L_0120:
.L_011F:
.L_011E:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0124
mov dword ptr [ebp-16], 0
jmp .L_0123
.L_0124:
mov dword ptr [ebp-16], -1
.L_0123:
cmp dword ptr [ebp-12], 0
je .L_0126
push dword ptr [ebp-12]
call _RTLFILEINPUTGET@4
test eax, eax
jne .L_0128
jmp .L_0106
.L_0128:
.L_0127:
.L_0126:
.L_0125:
.L_011B:
cmp dword ptr [ebp-16], 0
je .L_0119
.L_011A:
mov dword ptr [ebp-4], -1
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFILESTMT@4
_CFILESTMT@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0286:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_0289
.L_028B:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEOPEN@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0288
.L_028C:
push 0
call _HFILECLOSE@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0288
.L_028D:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_028F
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_0291
mov dword ptr [ebp-4], 0
jmp .L_0287
.L_0291:
.L_0290:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_028F:
.L_028E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0293
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0292
.L_0293:
push 0
call _LEXSKIPTOKEN@4
.L_0292:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0295
jmp .L_0287
.L_0295:
.L_0294:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILESEEK@8
mov dword ptr [ebp-4], eax
jmp .L_0288
.L_0296:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 35
je .L_0298
jmp .L_0287
.L_0298:
.L_0297:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEPUT@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0288
.L_0299:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 35
je .L_029B
jmp .L_0287
.L_029B:
.L_029A:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEGET@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0288
.L_029C:
cmp dword ptr [ebp+8], 477
jne .L_029E
mov dword ptr [ebp-20], -1
jmp .L_029D
.L_029E:
mov dword ptr [ebp-20], 0
.L_029D:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02A0
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_02A2
mov dword ptr [ebp-4], 0
jmp .L_0287
.L_02A2:
.L_02A1:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_02A0:
.L_029F:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_02A4
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_02A3
.L_02A4:
push 0
call _LEXSKIPTOKEN@4
.L_02A3:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_02A6
jmp .L_0287
.L_02A6:
.L_02A5:
push 2048
push 284
call _HMATCH@8
test eax, eax
je .L_02A8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02AA
jmp .L_0287
.L_02AA:
.L_02A9:
jmp .L_02A7
.L_02A8:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_02A7:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILELOCK@16
mov dword ptr [ebp-4], eax
jmp .L_0288
.L_02AB:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILERENAME@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0288
.L_0289:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966826
cmp ebx, 20
ja .L_0288
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.L_02AC+ebx*4-1880]
_.L_02AC:
.int .L_028B
.int .L_028C
.int .L_028D
.int .L_0296
.int .L_0299
.int .L_0288
.int .L_0288
.int .L_029C
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_02AB
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_029C
.L_0288:
.L_0287:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CFILEFUNCT@4
_CFILEFUNCT@4:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_02B2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_02B5
.L_02B7:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_02B9
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_02B8
.L_02B9:
push 0
call _LEXSKIPTOKEN@4
.L_02B8:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02BB
jmp .L_02B3
.L_02BB:
.L_02BA:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_02BD
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_02BC
.L_02BD:
push 0
call _LEXSKIPTOKEN@4
.L_02BC:
push dword ptr [ebp-8]
call _RTLFILETELL@4
mov dword ptr [ebp-4], eax
jmp .L_02B4
.L_02BE:
cmp dword ptr [ebp+8], 478
jne .L_02BF
mov dword ptr [ebp-20], 8192
jmp .L_02DB
.L_02BF:
mov dword ptr [ebp-20], 2048
.L_02DB:
push dword ptr [ebp-20]
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_02C2
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_02C1
.L_02C2:
push 0
call _LEXSKIPTOKEN@4
.L_02C1:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_02C4
jmp .L_02B3
.L_02C4:
.L_02C3:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_02C6
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02C8
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_02CA
mov dword ptr [ebp-4], 0
jmp .L_02B3
.L_02CA:
.L_02C9:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_02C8:
.L_02C7:
jmp .L_02C5
.L_02C6:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_02C5:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_02CC
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_02CB
.L_02CC:
push 0
call _LEXSKIPTOKEN@4
.L_02CB:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _RTLFILESTRINPUT@12
mov dword ptr [ebp-4], eax
jmp .L_02B4
.L_02CD:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _HFILEOPEN@4
mov dword ptr [ebp-4], eax
jmp .L_02B4
.L_02CE:
push -1
call _HFILECLOSE@4
mov dword ptr [ebp-4], eax
jmp .L_02B4
.L_02CF:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_02D1
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_02D0
.L_02D1:
push 0
call _LEXSKIPTOKEN@4
.L_02D0:
push -1
call _HFILEPUT@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_02D3
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_02D2
.L_02D3:
push 0
call _LEXSKIPTOKEN@4
.L_02D2:
jmp .L_02B4
.L_02D4:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_02D6
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_02D5
.L_02D6:
push 0
call _LEXSKIPTOKEN@4
.L_02D5:
push -1
call _HFILEGET@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_02D8
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_02D7
.L_02D8:
push 0
call _LEXSKIPTOKEN@4
.L_02D7:
jmp .L_02B4
.L_02D9:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _HFILERENAME@4
mov dword ptr [ebp-4], eax
jmp .L_02B4
.L_02B5:
mov eax, dword ptr [ebp-16]
add eax, 4294966826
cmp eax, 15
ja .L_02B4
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_02DA+eax*4-1880]
_.L_02DA:
.int .L_02CD
.int .L_02CE
.int .L_02B7
.int .L_02CF
.int .L_02D4
.int .L_02B4
.int .L_02B4
.int .L_02B4
.int .L_02BE
.int .L_02BE
.int .L_02B4
.int .L_02B4
.int .L_02B4
.int .L_02B4
.int .L_02B4
.int .L_02D9
.L_02B4:
.L_02B3:
mov eax, dword ptr [ebp-4]
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
_HFILECLOSE@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_012B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+8], 0
je .L_012E
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0130
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_012F
.L_0130:
push 0
call _LEXSKIPTOKEN@4
.L_012F:
.L_012E:
.L_012D:
mov dword ptr [ebp-8], 0
.L_0131:
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0135
cmp dword ptr [ebp-8], 0
jne .L_0137
jmp .L_0136
.L_0137:
push 0
push 0
push 327
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0136:
.L_0135:
.L_0134:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _RTLFILECLOSE@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0139
jmp .L_012C
.L_0139:
.L_0138:
cmp dword ptr [ebp+8], 0
je .L_013B
jmp .L_0132
.L_013B:
.L_013A:
inc dword ptr [ebp-8]
.L_0133:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_0131
.L_0132:
cmp dword ptr [ebp+8], 0
je .L_013D
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_013F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_013E
.L_013F:
push 0
call _LEXSKIPTOKEN@4
.L_013E:
.L_013D:
.L_013C:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_012C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEPUT@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0140:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 35
jne .L_0143
push 0
call _LEXSKIPTOKEN@4
.L_0143:
.L_0142:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0145
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_0147
mov dword ptr [ebp-4], 0
jmp .L_0141
.L_0147:
.L_0146:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_0145:
.L_0144:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0149
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0148
.L_0149:
push 0
call _LEXSKIPTOKEN@4
.L_0148:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_014B
mov dword ptr [ebp-12], 0
.L_014B:
.L_014A:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_014D
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_014C
.L_014D:
push 0
call _LEXSKIPTOKEN@4
.L_014C:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_014F
jmp .L_0141
.L_014F:
.L_014E:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 23
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0151
push dword ptr [ebp-16]
call _ASTDELTREE@4
push 0
push -1
push 14
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .L_0153
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .L_0152
.L_0153:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_0152:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0141
.L_0151:
.L_0150:
mov dword ptr [ebp-24], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .L_0155
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .L_0157
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-28], 0
je .L_0159
push dword ptr [ebp-28]
call _SYMBISARRAY@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_015B
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 17
jne .L_015D
push dword ptr [ebp-16]
call _ASTDELTREE@4
push 0
push -1
push 24
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .L_015F
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .L_015E
.L_015F:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_015E:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0141
.L_015D:
.L_015C:
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
.L_015B:
.L_015A:
.L_0159:
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0161
cmp dword ptr [ebp-24], 0
je .L_0163
push 0
push 0
push 277
call _ERRREPORT@12
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0165
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.L_0165:
.L_0164:
jmp .L_0162
.L_0163:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 17
je .L_0169
.L_016A:
cmp dword ptr [ebp-32], 18
jne .L_0168
.L_0169:
push 0
push 0
push 277
call _ERRREPORT@12
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_016C
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.L_016C:
.L_016B:
jmp .L_0166
.L_0168:
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_016F
push 0
push 0
push 9
call _ERRREPORT@12
.L_016F:
.L_016E:
.L_016D:
.L_0166:
.L_0162:
cmp dword ptr [ebp-20], 0
je .L_0171
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
test ecx, ecx
je .L_0173
push 0
push 1
push 0
push 2
call _ERRREPORTWARN@16
.L_0173:
.L_0172:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp eax, 8
je .L_0175
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0177
push 0
push -1
push 17
call _ERRREPORT@12
.L_0177:
.L_0176:
.L_0175:
.L_0174:
.L_0171:
.L_0170:
jmp .L_0160
.L_0161:
mov dword ptr [ebp-20], 0
.L_0160:
cmp dword ptr [ebp-24], 0
jne .L_0179
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEPUT@20
mov dword ptr [ebp-4], eax
jmp .L_0178
.L_0179:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEPUTARRAY@16
mov dword ptr [ebp-4], eax
.L_0178:
.L_0141:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEGET@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_017A:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 35
jne .L_017D
push 0
call _LEXSKIPTOKEN@4
.L_017D:
.L_017C:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_017F
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_0181
mov dword ptr [ebp-4], 0
jmp .L_017B
.L_0181:
.L_0180:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_017F:
.L_017E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0183
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0182
.L_0183:
push 0
call _LEXSKIPTOKEN@4
.L_0182:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0185
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0184
.L_0185:
push 0
call _LEXSKIPTOKEN@4
.L_0184:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0187
push 0
push 0
push 14
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .L_0189
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .L_0188
.L_0189:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_0188:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_017B
.L_0187:
.L_0186:
mov dword ptr [ebp-28], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .L_018B
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .L_018D
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_018F
push dword ptr [ebp-32]
call _SYMBISARRAY@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0191
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0193
push 0
push -1
push 24
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .L_0195
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .L_0194
.L_0195:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_0194:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_017B
.L_0193:
.L_0192:
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
.L_0191:
.L_0190:
.L_018F:
.L_018E:
.L_018D:
.L_018C:
.L_018B:
.L_018A:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0197
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-28], 0
je .L_0199
cmp dword ptr [ebp-20], 0
je .L_019B
push 0
push 0
push 277
call _ERRREPORT@12
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.L_019B:
.L_019A:
jmp .L_0198
.L_0199:
cmp dword ptr [ebp-20], 0
je .L_019D
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .L_01A1
.L_01A2:
cmp dword ptr [ebp-36], 18
jne .L_01A0
.L_01A1:
push 0
push 0
push 277
call _ERRREPORT@12
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
jmp .L_019E
.L_01A0:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_01A5
push 0
push 1
push 0
push 2
call _ERRREPORTWARN@16
.L_01A5:
.L_01A4:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 8
je .L_01A7
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01A9
push 0
push -1
push 17
call _ERRREPORT@12
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A3:
.L_019E:
.L_019D:
.L_019C:
.L_0198:
jmp .L_0196
.L_0197:
mov dword ptr [ebp-20], 0
.L_0196:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01AB
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_01AD
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_01AF
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
and eax, 480
je .L_01B0
mov dword ptr [ebp-40], 24
jmp .L_02DE
.L_01B0:
mov eax, dword ptr [ebp-36]
and eax, 31
mov dword ptr [ebp-40], eax
.L_02DE:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_ENV+296]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-36]
and ebx, 480
je .L_01B2
mov dword ptr [ebp-44], 24
jmp .L_02DF
.L_01B2:
mov ebx, dword ptr [ebp-36]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_02DF:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-36]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01B5
push 0
push 0
push 24
call _ERRREPORT@12
.L_01B5:
.L_01B4:
.L_01AF:
.L_01AE:
jmp .L_01AC
.L_01AD:
push 0
push 0
push 14
call _ERRREPORT@12
.L_01AC:
jmp .L_01AA
.L_01AB:
mov dword ptr [ebp-24], 0
.L_01AA:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 512
test eax, eax
je .L_01B7
push 0
push 0
push 119
call _ERRREPORT@12
.L_01B7:
.L_01B6:
cmp dword ptr [ebp-24], 0
je .L_01B9
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_01BB
push 0
push 0
push 119
call _ERRREPORT@12
.L_01BB:
.L_01BA:
.L_01B9:
.L_01B8:
cmp dword ptr [ebp-28], 0
jne .L_01BD
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEGET@24
mov dword ptr [ebp-4], eax
jmp .L_01BC
.L_01BD:
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEGETARRAY@20
mov dword ptr [ebp-4], eax
.L_01BC:
.L_017B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEOPEN@4:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_01BE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-36], 0
cmp dword ptr [_ENV+136], 3
je .L_01C1
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_01C5
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01C4
.L_01C6:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .L_01C8
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 1
.L_01C8:
.L_01C7:
jmp .L_01C2
.L_01C4:
push 4
push offset _Lt_01CA
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_01C9
.L_01CB:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 2
jmp .L_01C2
.L_01C9:
push 5
push offset _Lt_01CD
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01CC
.L_01CE:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .L_01D0
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 3
.L_01D0:
.L_01CF:
jmp .L_01C2
.L_01CC:
push 5
push offset _Lt_01D2
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_01D1
.L_01D3:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .L_01D5
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 4
.L_01D5:
.L_01D4:
jmp .L_01C2
.L_01D1:
push 4
push offset _Lt_01D7
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_01D6
.L_01D8:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .L_01DA
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 5
.L_01DA:
.L_01D9:
jmp .L_01C2
.L_01D6:
push 4
push offset _Lt_01DC
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .L_01DB
.L_01DD:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .L_01DF
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 6
.L_01DF:
.L_01DE:
.L_01DB:
.L_01C2:
lea ebx, [ebp-68]
push ebx
call _fb_StrDelete@4
.L_01C1:
.L_01C0:
cmp dword ptr [ebp+8], 0
je .L_01E1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_01E3
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_01E2
.L_01E3:
push 0
call _LEXSKIPTOKEN@4
.L_01E2:
.L_01E1:
.L_01E0:
cmp dword ptr [_ENV+136], 3
jne .L_01E5
mov dword ptr [ebp-56], 7
.L_01E5:
.L_01E4:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-60], eax
jmp .L_01E7
.L_01E9:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01EB
jmp .L_01BF
.L_01EB:
.L_01EA:
cmp dword ptr [ebp+8], 0
je .L_01ED
push 0
push 44
call _HMATCH@8
.L_01ED:
.L_01EC:
cmp dword ptr [ebp-56], 0
je .L_01F0
.L_01F1:
cmp dword ptr [ebp-56], 7
jne .L_01EF
.L_01F0:
cmp dword ptr [ebp+8], 0
je .L_01F3
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 281
je .L_01F7
.L_01F8:
cmp dword ptr [ebp-64], 475
je .L_01F7
.L_01F9:
cmp dword ptr [ebp-64], 376
jne .L_01F6
.L_01F7:
jmp .L_01F4
.L_01F6:
mov dword ptr [ebp-36], -1
.L_01FA:
.L_01F4:
jmp .L_01F2
.L_01F3:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_01FC
mov dword ptr [ebp-36], -1
.L_01FC:
.L_01FB:
.L_01F2:
.L_01EF:
.L_01EE:
jmp .L_01E6
.L_01FD:
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-12], eax
jmp .L_01E6
.L_01E7:
cmp dword ptr [ebp-60], 7
ja .L_01FD
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_01FE+eax*4]
_.L_01FE:
.int .L_01E9
.int .L_01FD
.int .L_01FD
.int .L_01E9
.int .L_01FD
.int .L_01E9
.int .L_01E9
.int .L_01E9
.L_01E6:
cmp dword ptr [ebp-36], 0
je .L_0200
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0202
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_0204
mov dword ptr [ebp-4], 0
jmp .L_01BF
.L_0204:
.L_0203:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_0202:
.L_0201:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0206
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_0205
.L_0206:
push 0
call _LEXSKIPTOKEN@4
.L_0205:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0208
jmp .L_01BF
.L_0208:
.L_0207:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_020A
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_020C
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_020E
jmp .L_01BF
.L_020E:
.L_020D:
.L_020C:
.L_020B:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0210
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0212
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0214
jmp .L_01BF
.L_0214:
.L_0213:
.L_0212:
.L_0211:
push 0
push 44
call _HMATCH@8
test eax, eax
je .L_0216
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0218
jmp .L_01BF
.L_0218:
.L_0217:
.L_0216:
.L_0215:
.L_0210:
.L_020F:
.L_020A:
.L_0209:
cmp dword ptr [ebp-28], 0
jne .L_021A
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
.L_021A:
.L_0219:
cmp dword ptr [ebp-20], 0
jne .L_021C
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-20], eax
.L_021C:
.L_021B:
cmp dword ptr [ebp-24], 0
jne .L_021E
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-24], eax
.L_021E:
.L_021D:
cmp dword ptr [ebp+8], 0
je .L_0220
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0222
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0221
.L_0222:
push 0
call _LEXSKIPTOKEN@4
.L_0221:
.L_0220:
.L_021F:
push dword ptr [ebp+8]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLFILEOPENSHORT@28
mov dword ptr [ebp-4], eax
jmp .L_01BF
.L_0200:
.L_01FF:
push 2048
push 281
call _HMATCH@8
test eax, eax
je .L_0224
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 6
push offset _Lt_0228
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0227
.L_0229:
mov dword ptr [ebp-40], 2
jmp .L_0225
.L_0227:
push 7
push offset _Lt_022B
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_022A
.L_022C:
mov dword ptr [ebp-40], 3
jmp .L_0225
.L_022A:
push 7
push offset _Lt_022E
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_022D
.L_022F:
mov dword ptr [ebp-40], 0
jmp .L_0225
.L_022D:
push 7
push offset _Lt_0231
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0230
.L_0232:
mov dword ptr [ebp-40], 1
jmp .L_0225
.L_0230:
push 7
push offset _Lt_0234
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0233
.L_0235:
mov dword ptr [ebp-40], 4
jmp .L_0225
.L_0233:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .L_01BF
.L_0236:
.L_0225:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0223
.L_0224:
mov dword ptr [ebp-40], 1
.L_0223:
push 0
push 8
mov ebx, dword ptr [ebp-40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_0238
push 0
push 44
call _HMATCH@8
.L_0238:
.L_0237:
mov dword ptr [ebp-32], 0
cmp dword ptr [_ENV+136], 3
je .L_023A
cmp dword ptr [ebp-40], 2
je .L_023D
.L_023E:
cmp dword ptr [ebp-40], 3
je .L_023D
.L_023F:
cmp dword ptr [ebp-40], 4
jne .L_023C
.L_023D:
push 2048
push 484
call _HMATCH@8
test eax, eax
je .L_0241
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0243
jmp .L_01BF
.L_0243:
.L_0242:
cmp dword ptr [ebp+8], 0
je .L_0245
push 0
push 44
call _HMATCH@8
.L_0245:
.L_0244:
.L_0241:
.L_0240:
.L_023C:
.L_023B:
.L_023A:
.L_0239:
push 2048
push offset _Lt_0246
call _HMATCHIDORKW@8
test eax, eax
je .L_0248
push 2048
push offset _Lt_0249
call _HMATCHIDORKW@8
test eax, eax
je .L_024B
mov dword ptr [ebp-44], 2
jmp .L_024A
.L_024B:
push 2048
push offset _Lt_024D
call _HMATCHIDORKW@8
test eax, eax
je .L_024C
push 0
push 476
call _HMATCH@8
test eax, eax
je .L_024F
mov dword ptr [ebp-44], 3
jmp .L_024E
.L_024F:
mov dword ptr [ebp-44], 1
.L_024E:
.L_024C:
.L_024A:
jmp .L_0247
.L_0248:
mov dword ptr [ebp-44], 0
.L_0247:
push 0
push 8
mov ebx, dword ptr [ebp-44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+8], 0
je .L_0251
push 0
push 44
call _HMATCH@8
.L_0251:
.L_0250:
push 2048
push 312
call _HMATCH@8
test eax, eax
je .L_0253
mov dword ptr [ebp-48], 0
jmp .L_0252
.L_0253:
push 2048
push offset _Lt_0255
call _HMATCHIDORKW@8
test eax, eax
je .L_0254
push 2048
push offset _Lt_0249
call _HMATCHIDORKW@8
test eax, eax
je .L_0257
mov dword ptr [ebp-48], 2
jmp .L_0256
.L_0257:
push 2048
push offset _Lt_024D
call _HMATCHIDORKW@8
test eax, eax
je .L_0258
push 2048
push 476
call _HMATCH@8
test eax, eax
je .L_025A
mov dword ptr [ebp-48], 3
jmp .L_0259
.L_025A:
mov dword ptr [ebp-48], 1
.L_0259:
.L_0258:
.L_0256:
jmp .L_0252
.L_0254:
mov dword ptr [ebp-48], 0
.L_0252:
push 0
push 8
mov ebx, dword ptr [ebp-48]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+8], 0
je .L_025C
push 0
push 44
call _HMATCH@8
.L_025C:
.L_025B:
push 2048
push 376
call _HMATCH@8
test eax, eax
jne .L_025E
push 0
push 0
push 5
call _ERRREPORT@12
.L_025E:
.L_025D:
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0260
push 0
push 0
push 327
call _ERRREPORT@12
jmp .L_0262
mov dword ptr [ebp-4], 0
jmp .L_01BF
.L_0262:
.L_0261:
push 0
push 8
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.L_0260:
.L_025F:
cmp dword ptr [ebp+8], 0
je .L_0264
push 0
push 44
call _HMATCH@8
.L_0264:
.L_0263:
push 2048
push offset _Lt_0265
call _HMATCHIDORKW@8
test eax, eax
je .L_0267
call _CASSIGNTOKEN@0
test eax, eax
jne .L_0269
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
jmp .L_0268
.L_0269:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_026B
jmp .L_01BF
.L_026B:
.L_026A:
.L_0268:
jmp .L_0266
.L_0267:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
.L_0266:
cmp dword ptr [ebp+8], 0
je .L_026D
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_026F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_026E
.L_026F:
push 0
call _LEXSKIPTOKEN@4
.L_026E:
.L_026D:
.L_026C:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLFILEOPEN@36
mov dword ptr [ebp-4], eax
.L_01BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILERENAME@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0270:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_0273
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .L_0275
push 0
push 0
push 6
call _ERRREPORT@12
jmp .L_0274
.L_0275:
push 0
call _LEXSKIPTOKEN@4
.L_0274:
jmp .L_0272
.L_0273:
push 0
push 40
call _HMATCH@8
mov dword ptr [ebp-16], eax
.L_0272:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0277
jmp .L_0271
.L_0277:
.L_0276:
cmp dword ptr [ebp+8], 0
je .L_0279
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_027B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .L_027A
.L_027B:
push 0
call _LEXSKIPTOKEN@4
.L_027A:
jmp .L_0278
.L_0279:
push 2048
push 376
call _HMATCH@8
test eax, eax
jne .L_027D
push 0
push 44
call _HMATCH@8
test eax, eax
jne .L_027F
push 0
push 0
push 5
call _ERRREPORT@12
.L_027F:
.L_027E:
.L_027D:
.L_027C:
.L_0278:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0281
jmp .L_0271
.L_0281:
.L_0280:
mov eax, dword ptr [ebp-16]
or eax, dword ptr [ebp+8]
je .L_0283
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_0285
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .L_0284
.L_0285:
push 0
call _LEXSKIPTOKEN@4
.L_0284:
.L_0283:
.L_0282:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _RTLFILERENAME@12
mov dword ptr [ebp-4], eax
.L_0271:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_01C5:	.ascii	"CONS\0"
.balign 4
_Lt_01CA:	.ascii	"ERR\0"
.balign 4
_Lt_01CD:	.ascii	"PIPE\0"
.balign 4
_Lt_01D2:	.ascii	"SCRN\0"
.balign 4
_Lt_01D7:	.ascii	"LPT\0"
.balign 4
_Lt_01DC:	.ascii	"COM\0"
.balign 4
_Lt_0228:	.ascii	"INPUT\0"
.balign 4
_Lt_022B:	.ascii	"OUTPUT\0"
.balign 4
_Lt_022E:	.ascii	"BINARY\0"
.balign 4
_Lt_0231:	.ascii	"RANDOM\0"
.balign 4
_Lt_0234:	.ascii	"APPEND\0"
.balign 4
_Lt_0246:	.ascii	"ACCESS\0"
.balign 4
_Lt_0249:	.ascii	"WRITE\0"
.balign 4
_Lt_024D:	.ascii	"READ\0"
.balign 4
_Lt_0255:	.ascii	"LOCK\0"
.balign 4
_Lt_0265:	.ascii	"LEN\0"
