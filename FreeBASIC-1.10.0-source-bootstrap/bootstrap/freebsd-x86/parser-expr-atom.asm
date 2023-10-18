	.intel_syntax noprefix

.section .text
.balign 16

.globl CEQINPARENSONLYEXPR
CEQINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0066:
mov eax, dword ptr [PARSER+152]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [PARSER+152], 256
jmp .L_0068
.L_0069:
and dword ptr [PARSER+152], -257
.L_0068:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_006B
or dword ptr [PARSER+152], 256
jmp .L_006A
.L_006B:
and dword ptr [PARSER+152], -257
.L_006A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CGTINPARENSONLYEXPR
CGTINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [PARSER+152]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [PARSER+152], 512
jmp .L_006F
.L_0070:
and dword ptr [PARSER+152], -513
.L_006F:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_0072
or dword ptr [PARSER+152], 512
jmp .L_0071
.L_0072:
and dword ptr [PARSER+152], -513
.L_0071:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPARENTEXPRESSION
CPARENTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0074:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0077
mov dword ptr [ebp-4], 0
jmp .L_0075
.L_0077:
.L_0076:
push 0
call LEXSKIPTOKEN
add esp, 4
inc dword ptr [PARSER+148]
mov eax, dword ptr [PARSER+152]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_0079
or dword ptr [PARSER+152], 1
jmp .L_0078
.L_0079:
and dword ptr [PARSER+152], -2
.L_0078:
mov eax, dword ptr [PARSER+152]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+152]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+152]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_007B
or dword ptr [PARSER+152], 256
jmp .L_007A
.L_007B:
and dword ptr [PARSER+152], -257
.L_007A:
jmp .L_007D
or dword ptr [PARSER+152], 512
jmp .L_007C
.L_007D:
and dword ptr [PARSER+152], -513
.L_007C:
jmp .L_007F
or dword ptr [PARSER+152], 4096
jmp .L_007E
.L_007F:
and dword ptr [PARSER+152], -4097
.L_007E:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_0081
or dword ptr [PARSER+152], 256
jmp .L_0080
.L_0081:
and dword ptr [PARSER+152], -257
.L_0080:
cmp dword ptr [ebp-16], 0
je .L_0083
or dword ptr [PARSER+152], 512
jmp .L_0082
.L_0083:
and dword ptr [PARSER+152], -513
.L_0082:
cmp dword ptr [ebp-20], 0
je .L_0085
or dword ptr [PARSER+152], 4096
jmp .L_0084
.L_0085:
and dword ptr [PARSER+152], -4097
.L_0084:
cmp dword ptr [ebp-8], 0
jne .L_0087
cmp dword ptr [ebp-24], 0
je .L_0089
mov dword ptr [ebp-4], 0
jmp .L_0075
.L_0089:
.L_0088:
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
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0075
.L_0087:
.L_0086:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .L_008B
push 0
call LEXSKIPTOKEN
add esp, 4
dec dword ptr [PARSER+148]
jmp .L_008A
.L_008B:
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+148]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_008D
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
.L_008D:
.L_008C:
.L_008A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CATOM
CATOM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0117:
cmp dword ptr [ebp+12], 0
jne .L_011A
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0119
.L_011A:
mov dword ptr [ebp-8], 0
.L_0119:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_011C
.L_011E:
cmp dword ptr [ebp+12], 0
jne .L_0120
push 50
lea eax, [ebp+8]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
.L_0120:
.L_011F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKID
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0118
jmp .L_011B
.L_0121:
cmp dword ptr [ENV+136], 3
jne .L_0123
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
push dword ptr [ebp+8]
call HCHECKID
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0118
.L_0123:
.L_0122:
jmp .L_011B
.L_0124:
push -1
call CNUMLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0118
jmp .L_011B
.L_0125:
push -1
call CSTRLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0118
jmp .L_011B
.L_0126:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_0128
mov dword ptr [ebp-4], 0
jmp .L_0118
.L_0128:
.L_0127:
cmp dword ptr [PARSER+52], 0
je .L_012A
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_012C
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0118
.L_012C:
.L_012B:
.L_012A:
.L_0129:
push 50
lea eax, [ebp+8]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_012E
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0118
.L_012E:
.L_012D:
jmp .L_011B
.L_011C:
cmp dword ptr [ebp-12], 6
ja .L_011B
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_012F+eax*4]
.L_012F:
.int .L_011E
.int .L_011E
.int .L_011E
.int .L_0124
.int .L_0125
.int .L_0121
.int .L_0126
.L_011B:
mov dword ptr [ebp-4], 0
.L_0118:
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
HFINDID_QB:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0094:
call LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-16], eax
.L_0096:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .L_009A
.L_009B:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_009F
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .L_00A1
cmp dword ptr [ebp-16], 17
jne .L_00A3
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-32], eax
jmp .L_00A5
.L_00A7:
jmp .L_00A4
.L_00A8:
mov dword ptr [ebp-28], 0
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-32]
add eax, 4294967292
cmp eax, 14
ja .L_00A8
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_00A9+eax*4-16]
.L_00A9:
.int .L_00A7
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A7
.int .L_00A7
.L_00A4:
jmp .L_00A2
.L_00A3:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, dword ptr [ebp-16]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
cmp dword ptr [ebp-28], 0
je .L_00AB
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
jmp .L_00AD
.L_00AF:
push dword ptr [ebp-20]
call CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0095
jmp .L_00AC
.L_00B0:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .L_00B2
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.L_00B2:
.L_00B1:
cmp dword ptr [ebp-28], 0
je .L_00B4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_00B4:
.L_00B3:
jmp .L_00AC
.L_00B5:
cmp dword ptr [ebp-24], 0
jne .L_00B7
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_00B9
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
jmp .L_00AC
.L_00BA:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .L_00BC
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_00BC:
.L_00BB:
jmp .L_00AC
.L_00AD:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_00AC
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_00BD+eax*4-4]
.L_00BD:
.int .L_00B5
.int .L_00AF
.int .L_00B0
.int .L_00AC
.int .L_00AC
.int .L_00BA
.L_00AC:
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_009D:
cmp dword ptr [ebp-20], 0
jne .L_009B
.L_009C:
jmp .L_0099
.L_009A:
.L_00BE:
cmp dword ptr [ebp-12], 17
jne .L_00C2
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-32], ebx
jmp .L_00C4
.L_00C6:
mov dword ptr [ebp-28], -1
jmp .L_00C3
.L_00C7:
mov dword ptr [ebp-28], 0
jmp .L_00C3
.L_00C4:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 14
ja .L_00C7
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.L_00C8+ebx*4-16]
.L_00C8:
.int .L_00C6
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C6
.int .L_00C6
.L_00C3:
jmp .L_00C1
.L_00C2:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp-12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.L_00C1:
cmp dword ptr [ebp-28], 0
je .L_00CA
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .L_00CC
.L_00CE:
push dword ptr [ebp-20]
call CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0095
jmp .L_00CB
.L_00CF:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0095
jmp .L_00CB
.L_00D0:
cmp dword ptr [ebp-24], 0
jne .L_00D2
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_00D4
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_00D4:
.L_00D3:
.L_00D2:
.L_00D1:
jmp .L_00CB
.L_00D5:
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0095
jmp .L_00CB
.L_00CC:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_00CB
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_00D6+eax*4-4]
.L_00D6:
.int .L_00D0
.int .L_00CE
.int .L_00CF
.int .L_00CB
.int .L_00CB
.int .L_00D5
.L_00CB:
jmp .L_00C9
.L_00CA:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 6
jne .L_00D8
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 478
jne .L_00DA
cmp dword ptr [ebp-12], 17
jne .L_00DC
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D8:
.L_00D7:
.L_00C9:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_00C0:
cmp dword ptr [ebp-20], 0
jne .L_00BE
.L_00BF:
.L_0099:
cmp dword ptr [ebp-24], 0
je .L_00DE
mov ebx, dword ptr [PARSER+152]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-24]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_00DE:
.L_00DD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
.L_0098:
cmp dword ptr [ebp+12], 0
jne .L_0096
.L_0097:
mov dword ptr [ebp-4], 0
.L_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFINDID:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DF:
cmp dword ptr [ENV+136], 3
jne .L_00E2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID_QB
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00E2:
.L_00E1:
.L_00E3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_00E6:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_00EA
.L_00EC:
push dword ptr [ebp-8]
call CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E0
jmp .L_00E9
.L_00ED:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00E0
jmp .L_00E9
.L_00EE:
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00E0
jmp .L_00E9
.L_00EF:
push dword ptr [ebp+16]
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CIMPLICITDATAMEMBER
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E0
jmp .L_00E9
.L_00F0:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 353
jne .L_00F2
call HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .L_00E0
jmp .L_00F1
.L_00F2:
push dword ptr [ebp-8]
call CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00F1:
jmp .L_00E9
.L_00F3:
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_00F5
push dword ptr [ebp-8]
push 20
call HCOMPLAINIFABSTRACTCLASS
add esp, 8
push 2048
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-8]
call CCTORCALL
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00F5:
.L_00F4:
jmp .L_00E9
.L_00F6:
push dword ptr [ebp-8]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .L_00F8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push 20
call HCOMPLAINIFABSTRACTCLASS
add esp, 8
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
call CCTORCALL
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E0
.L_00F8:
.L_00F7:
jmp .L_00E9
.L_00F9:
push 0
push 0
push 325
call ERRREPORT
add esp, 12
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .L_00E9
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00FA+eax*4-4]
.L_00FA:
.int .L_00EE
.int .L_00EC
.int .L_00ED
.int .L_00E9
.int .L_00E9
.int .L_00F0
.int .L_00E9
.int .L_00E9
.int .L_00E9
.int .L_00F3
.int .L_00F3
.int .L_00EF
.int .L_00F6
.int .L_00E9
.int .L_00E9
.int .L_00F9
.L_00E9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_00E8:
cmp dword ptr [ebp-8], 0
jne .L_00E6
.L_00E7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.L_00E5:
cmp dword ptr [ebp+12], 0
jne .L_00E3
.L_00E4:
mov dword ptr [ebp-4], 0
.L_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBASEMEMBERACCESS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00FB:
mov eax, dword ptr [PARSER+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_00FE
push 0
push 0
push 294
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FC
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
.L_00FF:
cmp dword ptr [ebp-16], 0
jne .L_0103
push 0
push 0
push 295
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FC
.L_0103:
.L_0102:
push 2112
call LEXSKIPTOKEN
add esp, 4
push 0
push 46
call HMATCH
add esp, 8
test eax, eax
jne .L_0105
push 0
push 0
push 120
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FC
.L_0105:
.L_0104:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 353
je .L_0107
jmp .L_0100
.L_0107:
.L_0106:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_0101:
jmp .L_00FF
.L_0100:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 2048
lea eax, [ebp-40]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
call HFINDID
add esp, 12
mov dword ptr [ebp-4], eax
.L_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0108:
cmp dword ptr [ebp+12], 0
je .L_010B
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_010D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0109
.L_010D:
.L_010C:
.L_010B:
.L_010A:
mov eax, dword ptr [PARSER+152]
and eax, 1024
test eax, eax
je .L_010F
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0109
.L_010F:
.L_010E:
cmp dword ptr [ENV+136], 3
je .L_0112
push 0
call LEXGETCLASS
add esp, 4
test eax, eax
je .L_0114
mov dword ptr [ebp-4], 0
jmp .L_0109
.L_0114:
.L_0113:
.L_0112:
.L_0111:
jmp .L_0116
push 0
push 149
push 2097152
call ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0109
.L_0116:
.L_0115:
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 0
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
.L_0109:
mov eax, dword ptr [ebp-4]
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
