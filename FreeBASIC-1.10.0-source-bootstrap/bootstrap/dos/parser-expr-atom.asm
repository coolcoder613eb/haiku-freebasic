	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEQINPARENSONLYEXPR
_CEQINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [_PARSER+152]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [_PARSER+152], 256
jmp .L_0069
.L_006A:
and dword ptr [_PARSER+152], -257
.L_0069:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_006C
or dword ptr [_PARSER+152], 256
jmp .L_006B
.L_006C:
and dword ptr [_PARSER+152], -257
.L_006B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGTINPARENSONLYEXPR
_CGTINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_006E:
mov eax, dword ptr [_PARSER+152]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [_PARSER+152], 512
jmp .L_0070
.L_0071:
and dword ptr [_PARSER+152], -513
.L_0070:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_0073
or dword ptr [_PARSER+152], 512
jmp .L_0072
.L_0073:
and dword ptr [_PARSER+152], -513
.L_0072:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPARENTEXPRESSION
_CPARENTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0075:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0078
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_0078:
.L_0077:
push 0
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [_PARSER+148]
mov eax, dword ptr [_PARSER+152]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .L_007A
or dword ptr [_PARSER+152], 1
jmp .L_0079
.L_007A:
and dword ptr [_PARSER+152], -2
.L_0079:
mov eax, dword ptr [_PARSER+152]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+152]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+152]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_007C
or dword ptr [_PARSER+152], 256
jmp .L_007B
.L_007C:
and dword ptr [_PARSER+152], -257
.L_007B:
jmp .L_007E
or dword ptr [_PARSER+152], 512
jmp .L_007D
.L_007E:
and dword ptr [_PARSER+152], -513
.L_007D:
jmp .L_0080
or dword ptr [_PARSER+152], 4096
jmp .L_007F
.L_0080:
and dword ptr [_PARSER+152], -4097
.L_007F:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .L_0082
or dword ptr [_PARSER+152], 256
jmp .L_0081
.L_0082:
and dword ptr [_PARSER+152], -257
.L_0081:
cmp dword ptr [ebp-16], 0
je .L_0084
or dword ptr [_PARSER+152], 512
jmp .L_0083
.L_0084:
and dword ptr [_PARSER+152], -513
.L_0083:
cmp dword ptr [ebp-20], 0
je .L_0086
or dword ptr [_PARSER+152], 4096
jmp .L_0085
.L_0086:
and dword ptr [_PARSER+152], -4097
.L_0085:
cmp dword ptr [ebp-8], 0
jne .L_0088
cmp dword ptr [ebp-24], 0
je .L_008A
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_008A:
.L_0089:
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
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0076
.L_0088:
.L_0087:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .L_008C
push 0
call _LEXSKIPTOKEN
add esp, 4
dec dword ptr [_PARSER+148]
jmp .L_008B
.L_008C:
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+148]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_008E
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
.L_008E:
.L_008D:
.L_008B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CATOM
_CATOM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0118:
cmp dword ptr [ebp+12], 0
jne .L_011B
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_011A
.L_011B:
mov dword ptr [ebp-8], 0
.L_011A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_011D
.L_011F:
cmp dword ptr [ebp+12], 0
jne .L_0121
push 50
lea eax, [ebp+8]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
.L_0121:
.L_0120:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKID
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0119
jmp .L_011C
.L_0122:
cmp dword ptr [_ENV+136], 3
jne .L_0124
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
push dword ptr [ebx+1044]
push dword ptr [ebp+8]
call _HCHECKID
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0119
.L_0124:
.L_0123:
jmp .L_011C
.L_0125:
push -1
call _CNUMLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0119
jmp .L_011C
.L_0126:
push -1
call _CSTRLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0119
jmp .L_011C
.L_0127:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .L_0129
mov dword ptr [ebp-4], 0
jmp .L_0119
.L_0129:
.L_0128:
cmp dword ptr [_PARSER+52], 0
je .L_012B
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_012D
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call _CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0119
.L_012D:
.L_012C:
.L_012B:
.L_012A:
push 50
lea eax, [ebp+8]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_012F
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0119
.L_012F:
.L_012E:
jmp .L_011C
.L_011D:
cmp dword ptr [ebp-12], 6
ja .L_011C
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0130+eax*4]
_.L_0130:
.int .L_011F
.int .L_011F
.int .L_011F
.int .L_0125
.int .L_0126
.int .L_0122
.int .L_0127
.L_011C:
mov dword ptr [ebp-4], 0
.L_0119:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HFINDID_QB:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
call _LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-16], eax
.L_0097:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .L_009B
.L_009C:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_00A0
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .L_00A2
cmp dword ptr [ebp-16], 17
jne .L_00A4
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-32], eax
jmp .L_00A6
.L_00A8:
jmp .L_00A5
.L_00A9:
mov dword ptr [ebp-28], 0
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp-32]
add eax, 4294967292
cmp eax, 14
ja .L_00A9
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_00AA+eax*4-16]
_.L_00AA:
.int .L_00A8
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A9
.int .L_00A8
.int .L_00A8
.L_00A5:
jmp .L_00A3
.L_00A4:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, dword ptr [ebp-16]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.L_00A3:
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
cmp dword ptr [ebp-28], 0
je .L_00AC
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
jmp .L_00AE
.L_00B0:
push dword ptr [ebp-20]
call _CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0096
jmp .L_00AD
.L_00B1:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .L_00B3
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.L_00B3:
.L_00B2:
cmp dword ptr [ebp-28], 0
je .L_00B5
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0096
.L_00B5:
.L_00B4:
jmp .L_00AD
.L_00B6:
cmp dword ptr [ebp-24], 0
jne .L_00B8
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_00BA
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
jmp .L_00AD
.L_00BB:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .L_00BD
push dword ptr [ebp-20]
call _CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0096
.L_00BD:
.L_00BC:
jmp .L_00AD
.L_00AE:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_00AD
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_00BE+eax*4-4]
_.L_00BE:
.int .L_00B6
.int .L_00B0
.int .L_00B1
.int .L_00AD
.int .L_00AD
.int .L_00BB
.L_00AD:
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_009E:
cmp dword ptr [ebp-20], 0
jne .L_009C
.L_009D:
jmp .L_009A
.L_009B:
.L_00BF:
cmp dword ptr [ebp-12], 17
jne .L_00C3
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-32], ebx
jmp .L_00C5
.L_00C7:
mov dword ptr [ebp-28], -1
jmp .L_00C4
.L_00C8:
mov dword ptr [ebp-28], 0
jmp .L_00C4
.L_00C5:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 14
ja .L_00C8
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.L_00C9+ebx*4-16]
_.L_00C9:
.int .L_00C7
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C7
.int .L_00C7
.L_00C4:
jmp .L_00C2
.L_00C3:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp-12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.L_00C2:
cmp dword ptr [ebp-28], 0
je .L_00CB
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .L_00CD
.L_00CF:
push dword ptr [ebp-20]
call _CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0096
jmp .L_00CC
.L_00D0:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_0096
jmp .L_00CC
.L_00D1:
cmp dword ptr [ebp-24], 0
jne .L_00D3
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_00D5
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_00D5:
.L_00D4:
.L_00D3:
.L_00D2:
jmp .L_00CC
.L_00D6:
push dword ptr [ebp-20]
call _CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0096
jmp .L_00CC
.L_00CD:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_00CC
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_00D7+eax*4-4]
_.L_00D7:
.int .L_00D1
.int .L_00CF
.int .L_00D0
.int .L_00CC
.int .L_00CC
.int .L_00D6
.L_00CC:
jmp .L_00CA
.L_00CB:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 6
jne .L_00D9
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 478
jne .L_00DB
cmp dword ptr [ebp-12], 17
jne .L_00DD
push dword ptr [ebp-20]
call _CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0096
.L_00DD:
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D8:
.L_00CA:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_00C1:
cmp dword ptr [ebp-20], 0
jne .L_00BF
.L_00C0:
.L_009A:
cmp dword ptr [ebp-24], 0
je .L_00DF
mov ebx, dword ptr [_PARSER+152]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-24]
call __Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0096
.L_00DF:
.L_00DE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
.L_0099:
cmp dword ptr [ebp+12], 0
jne .L_0097
.L_0098:
mov dword ptr [ebp-4], 0
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFINDID:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
cmp dword ptr [_ENV+136], 3
jne .L_00E3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID_QB
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00E1
.L_00E3:
.L_00E2:
.L_00E4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_00E7:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_00EB
.L_00ED:
push dword ptr [ebp-8]
call _CCONSTANT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E1
jmp .L_00EA
.L_00EE:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _CFUNCTIONEX
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00E1
jmp .L_00EA
.L_00EF:
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call __Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00E1
jmp .L_00EA
.L_00F0:
push dword ptr [ebp+16]
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CIMPLICITDATAMEMBER
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00E1
jmp .L_00EA
.L_00F1:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 353
jne .L_00F3
call _HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .L_00E1
jmp .L_00F2
.L_00F3:
push dword ptr [ebp-8]
call _CQUIRKFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E1
.L_00F2:
jmp .L_00EA
.L_00F4:
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_00F6
push dword ptr [ebp-8]
push 20
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-8]
call _CCTORCALL
add esp, 4
push eax
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E1
.L_00F6:
.L_00F5:
jmp .L_00EA
.L_00F7:
push dword ptr [ebp-8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .L_00F9
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push 20
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
call _CCTORCALL
add esp, 4
push eax
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00E1
.L_00F9:
.L_00F8:
jmp .L_00EA
.L_00FA:
push 0
push 0
push 325
call _ERRREPORT
add esp, 12
jmp .L_00EA
.L_00EB:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 15
ja .L_00EA
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00FB+eax*4-4]
_.L_00FB:
.int .L_00EF
.int .L_00ED
.int .L_00EE
.int .L_00EA
.int .L_00EA
.int .L_00F1
.int .L_00EA
.int .L_00EA
.int .L_00EA
.int .L_00F4
.int .L_00F4
.int .L_00F0
.int .L_00F7
.int .L_00EA
.int .L_00EA
.int .L_00FA
.L_00EA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_00E9:
cmp dword ptr [ebp-8], 0
jne .L_00E7
.L_00E8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.L_00E6:
cmp dword ptr [ebp+12], 0
jne .L_00E4
.L_00E5:
mov dword ptr [ebp-4], 0
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBASEMEMBERACCESS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00FC:
mov eax, dword ptr [_PARSER+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_00FF
push 0
push 0
push 294
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FD
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
.L_0100:
cmp dword ptr [ebp-16], 0
jne .L_0104
push 0
push 0
push 295
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FD
.L_0104:
.L_0103:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 0
push 46
call _HMATCH
add esp, 8
test eax, eax
jne .L_0106
push 0
push 0
push 120
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FD
.L_0106:
.L_0105:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 353
je .L_0108
jmp .L_0101
.L_0108:
.L_0107:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_0102:
jmp .L_0100
.L_0101:
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
call _HFINDID
add esp, 12
mov dword ptr [ebp-4], eax
.L_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0109:
cmp dword ptr [ebp+12], 0
je .L_010C
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_010E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_010A
.L_010E:
.L_010D:
.L_010C:
.L_010B:
mov eax, dword ptr [_PARSER+152]
and eax, 1024
test eax, eax
je .L_0110
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_010A
.L_0110:
.L_010F:
cmp dword ptr [_ENV+136], 3
je .L_0113
push 0
call _LEXGETCLASS
add esp, 4
test eax, eax
je .L_0115
mov dword ptr [ebp-4], 0
jmp .L_010A
.L_0115:
.L_0114:
.L_0113:
.L_0112:
jmp .L_0117
push 0
push 149
push 2097152
call _ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_010A
.L_0117:
.L_0116:
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 0
call __Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
mov dword ptr [ebp-4], eax
.L_010A:
mov eax, dword ptr [ebp-4]
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
