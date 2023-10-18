	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEXPRESSION@0
_CEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0068:
mov eax, dword ptr [_PARSER+152]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+152], 4
jmp .L_006A
.L_006B:
and dword ptr [_PARSER+152], -5
.L_006A:
call _CBOOLEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_006D
or dword ptr [_PARSER+152], 4
jmp .L_006C
.L_006D:
and dword ptr [_PARSER+152], -5
.L_006C:
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXPRESSIONWITHNIDXARRAY@4
_CEXPRESSIONWITHNIDXARRAY@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006F:
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
not eax
test eax, eax
je .L_0072
or dword ptr [_PARSER+152], 2
jmp .L_0071
.L_0072:
and dword ptr [_PARSER+152], -3
.L_0071:
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_0074
or dword ptr [_PARSER+152], 2
jmp .L_0073
.L_0074:
and dword ptr [_PARSER+152], -3
.L_0073:
.L_0070:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CBOOLEXPRESSION@0
_CBOOLEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0076:
call _CLOGEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0079
mov dword ptr [ebp-4], 0
jmp .L_0077
.L_0079:
.L_0078:
.L_007A:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .L_007E
.L_0080:
mov dword ptr [ebp-8], 36
jmp .L_007D
.L_0081:
mov dword ptr [ebp-8], 37
jmp .L_007D
.L_0082:
jmp .L_007B
jmp .L_007D
.L_007E:
mov eax, dword ptr [ebp-24]
add eax, 4294967006
cmp eax, 1
ja .L_0082
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0083+eax*4-1160]
_.L_0083:
.int .L_0080
.int .L_0081
.L_007D:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_0085
jmp .L_007B
.L_0085:
.L_0084:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _ASTDTORLISTSCOPEBEGIN@4
call _CLOGEXPRESSION@0
mov dword ptr [ebp-16], eax
call _ASTDTORLISTSCOPEEND@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0087
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_007B
.L_0087:
.L_0086:
push 1
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0089
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
.L_0089:
.L_0088:
.L_007C:
jmp .L_007A
.L_007B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGEXPRESSION@0
_CLOGEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_008A:
call _CLOGOREXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_008D
mov dword ptr [ebp-4], 0
jmp .L_008B
.L_008D:
.L_008C:
.L_008E:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
jmp .L_0092
.L_0094:
mov dword ptr [ebp-8], 38
jmp .L_0091
.L_0095:
mov dword ptr [ebp-8], 39
jmp .L_0091
.L_0096:
mov dword ptr [ebp-8], 40
jmp .L_0091
.L_0097:
jmp .L_008F
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-20]
add eax, 4294967004
cmp eax, 2
ja .L_0097
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0098+eax*4-1168]
_.L_0098:
.int .L_0094
.int .L_0095
.int .L_0096
.L_0091:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_009A
jmp .L_008F
.L_009A:
.L_0099:
push 2048
call _LEXSKIPTOKEN@4
call _CLOGOREXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009C
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_008F
.L_009C:
.L_009B:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_009E
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_009E:
.L_009D:
.L_0090:
jmp .L_008E
.L_008F:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGOREXPRESSION@0
_CLOGOREXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_009F:
call _CLOGANDEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A2
mov dword ptr [ebp-4], 0
jmp .L_00A0
.L_00A2:
.L_00A1:
.L_00A3:
push 0
call _LEXGETTOKEN@4
cmp eax, 289
je .L_00A7
jmp .L_00A4
.L_00A7:
.L_00A6:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_00A9
jmp .L_00A4
.L_00A9:
.L_00A8:
push 2048
call _LEXSKIPTOKEN@4
call _CLOGANDEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AB
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_00A4
.L_00AB:
.L_00AA:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 35
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AD
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00AD:
.L_00AC:
.L_00A5:
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGANDEXPRESSION@0
_CLOGANDEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00AE:
call _CRELEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B1
mov dword ptr [ebp-4], 0
jmp .L_00AF
.L_00B1:
.L_00B0:
.L_00B2:
push 0
call _LEXGETTOKEN@4
cmp eax, 288
je .L_00B6
jmp .L_00B3
.L_00B6:
.L_00B5:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_00B8
jmp .L_00B3
.L_00B8:
.L_00B7:
push 2048
call _LEXSKIPTOKEN@4
call _CRELEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00BA
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_00B3
.L_00BA:
.L_00B9:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00BC
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_00BC:
.L_00BB:
.L_00B4:
jmp .L_00B2
.L_00B3:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CRELEXPRESSION@0
_CRELEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00BD:
call _CISEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00C0
mov dword ptr [ebp-4], 0
jmp .L_00BE
.L_00C0:
.L_00BF:
.L_00C1:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
jmp .L_00C5
.L_00C7:
mov eax, dword ptr [_PARSER+148]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_PARSER+164], eax
mov eax, dword ptr [_PARSER+152]
and eax, 256
test eax, eax
je .L_00C9
jmp .L_00C2
.L_00C9:
.L_00C8:
mov dword ptr [ebp-8], 45
jmp .L_00C4
.L_00CA:
mov eax, dword ptr [_PARSER+152]
and eax, 512
test eax, eax
je .L_00CC
jmp .L_00C2
.L_00CC:
.L_00CB:
mov dword ptr [ebp-8], 46
jmp .L_00C4
.L_00CD:
mov dword ptr [ebp-8], 47
jmp .L_00C4
.L_00CE:
mov dword ptr [ebp-8], 48
jmp .L_00C4
.L_00CF:
mov dword ptr [ebp-8], 50
jmp .L_00C4
.L_00D0:
mov dword ptr [ebp-8], 49
jmp .L_00C4
.L_00D1:
jmp .L_00C2
jmp .L_00C4
.L_00C5:
mov eax, dword ptr [ebp-20]
add eax, 4294966997
cmp eax, 5
ja .L_00D1
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00D2+eax*4-1196]
_.L_00D2:
.int .L_00C7
.int .L_00CA
.int .L_00CD
.int .L_00CE
.int .L_00CF
.int .L_00D0
.L_00C4:
push 0
call _LEXSKIPTOKEN@4
call _CISEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00D4
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_00C2
.L_00D4:
.L_00D3:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D6
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_00D6:
.L_00D5:
.L_00C3:
jmp .L_00C1
.L_00C2:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CISEXPRESSION@0
_CISEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_00D8:
call _CCATEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DB
mov dword ptr [ebp-4], 0
jmp .L_00D9
.L_00DB:
.L_00DA:
push 0
call _LEXGETTOKEN@4
cmp eax, 272
je .L_00DD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D9
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_00DF
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_00E1
push 0
push 0
push 297
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00E1:
.L_00E0:
jmp .L_00DE
.L_00DF:
push 0
push 0
push 299
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00DE:
push 2048
call _LEXSKIPTOKEN@4
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
call _CSYMBOLTYPE@20
test eax, eax
jne .L_00E5
mov dword ptr [ebp-4], 0
jmp .L_00D9
.L_00E5:
.L_00E4:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .L_00E7
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_00E9
push 0
push 0
push 297
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_00D9
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .L_00EA
push 0
push 0
push 298
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_00D9
.L_00EA:
.L_00E8:
jmp .L_00E6
.L_00E7:
push 0
push 0
push 299
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_00D9
.L_00E6:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx+152]
call _ASTNEWVAR@20
mov dword ptr [ebp-32], eax
push 1
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push 51
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00EC
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_00EC:
.L_00EB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCATEXPRESSION@0
_CCATEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00ED:
call _CADDEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F0
mov dword ptr [ebp-4], 0
jmp .L_00EE
.L_00F0:
.L_00EF:
.L_00F1:
push 0
call _LEXGETTOKEN@4
cmp eax, 38
je .L_00F5
jmp .L_00F2
.L_00F5:
.L_00F4:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_00F7
jmp .L_00F2
.L_00F7:
.L_00F6:
push 0
call _LEXSKIPTOKEN@4
call _CADDEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F9
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_00F2
.L_00F9:
.L_00F8:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 44
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FB
push 0
push 0
push 20
call _ERRREPORT@12
push 0
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-12], eax
.L_00FB:
.L_00FA:
.L_00F3:
jmp .L_00F1
.L_00F2:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00EE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CADDEXPRESSION@0
_CADDEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_00FC:
call _CSHIFTEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00FF
mov dword ptr [ebp-4], 0
jmp .L_00FD
.L_00FF:
.L_00FE:
.L_0100:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 43
jne .L_0105
.L_0106:
mov dword ptr [ebp-8], 28
jmp .L_0103
.L_0105:
cmp dword ptr [ebp-20], 45
jne .L_0107
.L_0108:
mov dword ptr [ebp-8], 29
jmp .L_0103
.L_0107:
jmp .L_0101
.L_0109:
.L_0103:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_010B
jmp .L_0101
.L_010B:
.L_010A:
push 0
call _LEXSKIPTOKEN@4
call _CSHIFTEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_010D
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0101
.L_010D:
.L_010C:
push 7
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_010F
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_010F:
.L_010E:
.L_0102:
jmp .L_0100
.L_0101:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00FD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSHIFTEXPRESSION@0
_CSHIFTEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0110:
call _CMODEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0113
mov dword ptr [ebp-4], 0
jmp .L_0111
.L_0113:
.L_0112:
.L_0114:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 297
jne .L_0119
.L_011A:
mov dword ptr [ebp-8], 41
jmp .L_0117
.L_0119:
cmp dword ptr [ebp-20], 298
jne .L_011B
.L_011C:
mov dword ptr [ebp-8], 42
jmp .L_0117
.L_011B:
jmp .L_0115
.L_011D:
.L_0117:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_011F
jmp .L_0115
.L_011F:
.L_011E:
push 2048
call _LEXSKIPTOKEN@4
call _CMODEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0121
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0115
.L_0121:
.L_0120:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0123
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_0123:
.L_0122:
.L_0116:
jmp .L_0114
.L_0115:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMODEXPRESSION@0
_CMODEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0124:
call _CINTDIVEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0127
mov dword ptr [ebp-4], 0
jmp .L_0125
.L_0127:
.L_0126:
.L_0128:
push 0
call _LEXGETTOKEN@4
cmp eax, 296
je .L_012C
jmp .L_0129
.L_012C:
.L_012B:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_012E
jmp .L_0129
.L_012E:
.L_012D:
push 2048
call _LEXSKIPTOKEN@4
call _CINTDIVEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0130
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0129
.L_0130:
.L_012F:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 33
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0132
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0132:
.L_0131:
.L_012A:
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0125:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CINTDIVEXPRESSION@0
_CINTDIVEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0133:
call _CMULTEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0136
mov dword ptr [ebp-4], 0
jmp .L_0134
.L_0136:
.L_0135:
.L_0137:
push 0
call _LEXGETTOKEN@4
cmp eax, 92
je .L_013B
jmp .L_0138
.L_013B:
.L_013A:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_013D
jmp .L_0138
.L_013D:
.L_013C:
push 0
call _LEXSKIPTOKEN@4
call _CMULTEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_013F
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0138
.L_013F:
.L_013E:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 32
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0141
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0141:
.L_0140:
.L_0139:
jmp .L_0137
.L_0138:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0134:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMULTEXPRESSION@0
_CMULTEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0142:
call _CEXPEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0145
mov dword ptr [ebp-4], 0
jmp .L_0143
.L_0145:
.L_0144:
.L_0146:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 42
jne .L_014B
.L_014C:
mov dword ptr [ebp-8], 30
jmp .L_0149
.L_014B:
cmp dword ptr [ebp-20], 47
jne .L_014D
.L_014E:
mov dword ptr [ebp-8], 31
jmp .L_0149
.L_014D:
jmp .L_0147
.L_014F:
.L_0149:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_0151
jmp .L_0147
.L_0151:
.L_0150:
push 0
call _LEXSKIPTOKEN@4
call _CEXPEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0153
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_0147
.L_0153:
.L_0152:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0155
push 0
push 0
push 20
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.L_0155:
.L_0154:
.L_0148:
jmp .L_0146
.L_0147:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0143:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXPEXPRESSION@0
_CEXPEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0156:
call _CNEGNOTEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0159
mov dword ptr [ebp-4], 0
jmp .L_0157
.L_0159:
.L_0158:
.L_015A:
push 0
call _LEXGETTOKEN@4
cmp eax, 94
je .L_015E
jmp .L_015B
.L_015E:
.L_015D:
push 0
push 1
call _LEXGETLOOKAHEAD@8
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_0160
jmp .L_015B
.L_0160:
.L_015F:
push 0
call _LEXSKIPTOKEN@4
call _CNEGNOTEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0162
push 0
push 0
push 9
call _ERRREPORT@12
jmp .L_015B
.L_0162:
.L_0161:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 43
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0164
push 0
push 0
push 20
call _ERRREPORT@12
push 16
push dword ptr [_Lt_0165+4]
push dword ptr [_Lt_0165]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-12], eax
.L_0164:
.L_0163:
.L_015C:
jmp .L_015A
.L_015B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0157:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 8
_Lt_0165:	.quad	0x0000000000000000
