	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERCOMPOUNDSTMTSETCTX@0
_PARSERCOMPOUNDSTMTSETCTX@0:
.L_0068:
mov dword ptr [_PARSER+32], 0
mov dword ptr [_PARSER+36], 0
mov dword ptr [_PARSER+40], 0
mov dword ptr [_PARSER+44], 0
mov dword ptr [_PARSER+48], 0
mov dword ptr [_PARSER+52], 0
.L_0069:
ret
.balign 16

.globl _PARSERCOMPOUNDSTMTINIT@0
_PARSERCOMPOUNDSTMTINIT@0:
.L_006A:
call _PARSERSELECTSTMTINIT@0
call _PARSERSELCONSTSTMTINIT@0
.L_006B:
ret
.balign 16

.globl _PARSERCOMPOUNDSTMTEND@0
_PARSERCOMPOUNDSTMTEND@0:
.L_006C:
call _PARSERSELCONSTSTMTEND@0
call _PARSERSELECTSTMTEND@0
.L_006D:
ret
.balign 16

.globl _CCOMPOUNDSTMT@0
_CCOMPOUNDSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006E:
cmp dword ptr [_ENV+136], 3
jne .L_0071
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .L_0073
mov dword ptr [ebp-4], 0
jmp .L_006F
.L_0073:
.L_0072:
.L_0071:
.L_0070:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .L_0075
.L_0077:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0079
push 0
push 266
push 266
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_0079:
.L_0078:
call _CIFSTMTBEGIN@0
jmp .L_0074
.L_007A:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_007C
push 0
push 283
push 281
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_007C:
.L_007B:
call _CFORSTMTBEGIN@0
jmp .L_0074
.L_007D:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_007F
push 0
push 279
push 278
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_007F:
.L_007E:
call _CDOSTMTBEGIN@0
jmp .L_0074
.L_0080:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0082
push 0
push 275
push 273
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_0082:
.L_0081:
call _CWHILESTMTBEGIN@0
jmp .L_0074
.L_0083:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0085
push 0
push 270
push 270
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_0085:
.L_0084:
call _CSELECTSTMTBEGIN@0
jmp .L_0074
.L_0086:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0088
push 0
push 280
push 280
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_0088:
.L_0087:
call _CWITHSTMTBEGIN@0
jmp .L_0074
.L_0089:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_008B
push 0
push 285
push 285
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_008B:
.L_008A:
call _CSCOPESTMTBEGIN@0
jmp .L_0074
.L_008C:
call _CNAMESPACESTMTBEGIN@0
jmp .L_0074
.L_008D:
call _CEXTERNSTMTBEGIN@0
jmp .L_0074
.L_008E:
call _CIFSTMTNEXT@0
jmp .L_0074
.L_008F:
call _CSELECTSTMTNEXT@0
jmp .L_0074
.L_0090:
call _CDOSTMTEND@0
jmp .L_0074
.L_0091:
call _CFORSTMTEND@0
jmp .L_0074
.L_0092:
call _CWHILESTMTEND@0
jmp .L_0074
.L_0093:
call _CEXITSTATEMENT@0
jmp .L_0074
.L_0094:
call _CCONTINUESTATEMENT@0
jmp .L_0074
.L_0095:
push 0
push 1
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 1
je .L_0097
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0099
push 0
push -1
push -1
call _HSKIPCOMPOUND@12
jmp .L_006F
.L_0099:
.L_0098:
call _CENDSTATEMENT@0
jmp .L_0096
.L_0097:
call _CCOMPOUNDEND@0
.L_0096:
jmp .L_0074
.L_009A:
call _CIFSTMTEND@0
jmp .L_0074
.L_009B:
call _CUSINGSTMT@0
jmp .L_0074
.L_009C:
mov dword ptr [ebp-4], 0
jmp .L_006F
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 74
ja .L_009C
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_009D+eax*4-1064]
_.L_009D:
.int .L_0077
.int .L_009C
.int .L_008E
.int .L_008E
.int .L_0083
.int .L_008F
.int .L_009C
.int .L_0080
.int .L_009C
.int .L_0092
.int .L_0094
.int .L_0093
.int .L_007D
.int .L_0090
.int .L_0086
.int .L_007A
.int .L_009C
.int .L_0091
.int .L_009C
.int .L_0089
.int .L_008C
.int .L_009B
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_008D
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009A
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_009C
.int .L_0095
.L_0074:
mov dword ptr [ebp-4], -1
.L_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CENDSTATEMENT@0
_CENDSTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 8
.L_009E:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A3:
mov dword ptr [ebp-4], 0
jmp .L_00A0
.L_00A4:
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
jmp .L_00A0
.L_00A1:
mov eax, dword ptr [ebp-8]
add eax, 4294967040
cmp eax, 84
ja .L_00A4
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00A5+eax*4-1024]
_.L_00A5:
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A3
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A3
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A4
.int .L_00A3
.L_00A0:
push dword ptr [ebp-4]
call _RTLEXITAPP@4
.L_009F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXITSTATEMENT@0
_CEXITSTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_00AC:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00AF
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_00AF:
.L_00AE:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00B1
.L_00B3:
cmp dword ptr [_PARSER+32], 0
jne .L_00B5
push 0
push 0
push 239
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00B5:
.L_00B4:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebp-16], eax
.L_00B6:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00B7
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 281
je .L_00B9
push 0
push 0
push 243
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+136]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00BB
push 0
push 0
push 247
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00BB:
.L_00BA:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_00B6
.L_00B7:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+132]
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00BC:
cmp dword ptr [_PARSER+36], 0
jne .L_00BE
push 0
push 0
push 240
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00BE:
.L_00BD:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+36]
mov dword ptr [ebp-16], eax
.L_00BF:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00C0
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 278
je .L_00C2
push 0
push 0
push 244
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00C2:
.L_00C1:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00C4
push 0
push 0
push 248
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00C4:
.L_00C3:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_00BF
.L_00C0:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00C5:
cmp dword ptr [_PARSER+40], 0
jne .L_00C7
push 0
push 0
push 241
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00C7:
.L_00C6:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebp-16], eax
.L_00C8:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00C9
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 273
je .L_00CB
push 0
push 0
push 245
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00CB:
.L_00CA:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00CD
push 0
push 0
push 249
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00CD:
.L_00CC:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_00C8
.L_00C9:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00CE:
cmp dword ptr [_PARSER+44], 0
jne .L_00D0
push 0
push 0
push 242
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00D0:
.L_00CF:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+44]
mov dword ptr [ebp-16], eax
.L_00D1:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_00D2
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 270
je .L_00D4
push 0
push 0
push 246
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00D6
push 0
push 0
push 250
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00D6:
.L_00D5:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_00D1
.L_00D2:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
jmp .L_00B0
.L_00D7:
cmp dword ptr [_PARSER+48], 0
je .L_00D9
mov eax, dword ptr [_PARSER+48]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.L_00D9:
.L_00D8:
cmp dword ptr [ebp-4], 0
jne .L_00DB
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
jmp .L_00DD
.L_00DF:
mov dword ptr [ebp-20], 253
jmp .L_00DC
.L_00E0:
mov dword ptr [ebp-20], 193
jmp .L_00DC
.L_00E1:
mov dword ptr [ebp-20], 144
jmp .L_00DC
.L_00E2:
mov dword ptr [ebp-20], 165
jmp .L_00DC
.L_00E3:
mov dword ptr [ebp-20], 166
jmp .L_00DC
.L_00E4:
mov dword ptr [ebp-20], 254
jmp .L_00DC
.L_00DD:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966951
cmp ebx, 5
ja .L_00E4
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.L_00E5+ebx*4-1380]
_.L_00E5:
.int .L_00DF
.int .L_00E4
.int .L_00E2
.int .L_00E3
.int .L_00E1
.int .L_00E0
.L_00DC:
push 0
push 0
push dword ptr [ebp-20]
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_00DB:
.L_00DA:
mov dword ptr [ebp-16], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
jmp .L_00E7
.L_00E9:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_00EB
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 4156
test eax, eax
je .L_00ED
mov dword ptr [ebp-16], 253
.L_00ED:
.L_00EC:
jmp .L_00EA
.L_00EB:
mov dword ptr [ebp-16], 253
.L_00EA:
jmp .L_00E6
.L_00EE:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_00F0
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 4156
test eax, eax
je .L_00F2
mov dword ptr [ebp-16], 254
jmp .L_00F1
.L_00F2:
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
.L_00F1:
jmp .L_00EF
.L_00F0:
mov dword ptr [ebp-16], 254
.L_00EF:
jmp .L_00E6
.L_00F3:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00F5
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
jmp .L_00F4
.L_00F5:
mov dword ptr [ebp-16], 193
.L_00F4:
jmp .L_00E6
.L_00F6:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_00F8
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
jmp .L_00F7
.L_00F8:
mov dword ptr [ebp-16], 144
.L_00F7:
jmp .L_00E6
.L_00F9:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_00FB
mov dword ptr [ebp-16], 165
.L_00FB:
.L_00FA:
jmp .L_00E6
.L_00FC:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
jne .L_00FE
mov dword ptr [ebp-16], 166
.L_00FE:
.L_00FD:
jmp .L_00E6
.L_00E7:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_00E6
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00FF+eax*4-1380]
_.L_00FF:
.int .L_00E9
.int .L_00EE
.int .L_00F9
.int .L_00FC
.int .L_00F6
.int .L_00F3
.L_00E6:
cmp dword ptr [ebp-16], 0
je .L_0101
push 0
push 0
push dword ptr [ebp-16]
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
.L_0101:
.L_0100:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_00B0
.L_0102:
push 0
push 0
push 251
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00AD
jmp .L_00B0
.L_00B1:
mov eax, dword ptr [ebp-12]
add eax, 4294967026
cmp eax, 80
ja .L_0102
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0103+eax*4-1080]
_.L_0103:
.int .L_00CE
.int .L_0102
.int .L_0102
.int .L_00C5
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_00BC
.int .L_0102
.int .L_0102
.int .L_00B3
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_0102
.int .L_00D7
.int .L_00D7
.int .L_00D7
.int .L_00D7
.int .L_00D7
.int .L_00D7
.L_00B0:
push dword ptr [ebp-4]
call _ASTSCOPEBREAK@4
.L_00AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCONTINUESTATEMENT@0
_CCONTINUESTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0104:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .L_0107
.L_0109:
cmp dword ptr [_PARSER+32], 0
jne .L_010B
push 0
push 0
push 239
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_010B:
.L_010A:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebp-12], eax
.L_010C:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_010D
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 281
je .L_010F
push 0
push 0
push 243
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_010F:
.L_010E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+136]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_0111
push 0
push 0
push 247
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_0111:
.L_0110:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_010C
.L_010D:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+128]
mov dword ptr [ebp-4], eax
jmp .L_0106
.L_0112:
cmp dword ptr [_PARSER+36], 0
jne .L_0114
push 0
push 0
push 240
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_0114:
.L_0113:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+36]
mov dword ptr [ebp-12], eax
.L_0115:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_0116
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 278
je .L_0118
push 0
push 0
push 244
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_0118:
.L_0117:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_011A
push 0
push 0
push 248
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_011A:
.L_0119:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_0115
.L_0116:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-4], eax
jmp .L_0106
.L_011B:
cmp dword ptr [_PARSER+40], 0
jne .L_011D
push 0
push 0
push 241
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_011D:
.L_011C:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebp-12], eax
.L_011E:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .L_011F
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 273
je .L_0121
push 0
push 0
push 245
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_0121:
.L_0120:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_0123
push 0
push 0
push 249
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
.L_0123:
.L_0122:
push 2048
call _LEXSKIPTOKEN@4
jmp .L_011E
.L_011F:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
jmp .L_0106
.L_0124:
push 0
push 0
push 252
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0105
jmp .L_0106
.L_0107:
mov eax, dword ptr [ebp-8]
add eax, 4294967023
cmp eax, 8
ja .L_0124
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0125+eax*4-1092]
_.L_0125:
.int .L_011B
.int .L_0124
.int .L_0124
.int .L_0124
.int .L_0124
.int .L_0112
.int .L_0124
.int .L_0124
.int .L_0109
.L_0106:
push dword ptr [ebp-4]
call _ASTSCOPEBREAK@4
.L_0105:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOMPSTMTCHECK@0
_CCOMPSTMTCHECK@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0135:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0138
mov dword ptr [ebp-4], -1
jmp .L_0136
.L_0138:
.L_0137:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_013A
.L_013C:
mov dword ptr [ebp-8], 32
jmp .L_0139
.L_013D:
mov dword ptr [ebp-8], 35
jmp .L_0139
.L_013E:
mov dword ptr [ebp-8], 95
jmp .L_0139
.L_013F:
mov dword ptr [ebp-8], 60
jmp .L_0139
.L_0140:
mov dword ptr [ebp-8], 121
jmp .L_0139
.L_0141:
mov dword ptr [ebp-8], 124
jmp .L_0139
.L_0142:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .L_0144
.L_0146:
mov dword ptr [ebp-8], 125
jmp .L_0143
.L_0147:
mov dword ptr [ebp-8], 126
jmp .L_0143
.L_0148:
mov dword ptr [ebp-8], 127
jmp .L_0143
.L_0149:
mov dword ptr [ebp-8], 128
jmp .L_0143
.L_014A:
mov dword ptr [ebp-8], 129
jmp .L_0143
.L_014B:
mov dword ptr [ebp-8], 130
jmp .L_0143
.L_0144:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_0143
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_014C+eax*4-1380]
_.L_014C:
.int .L_0146
.int .L_0147
.int .L_0148
.int .L_0149
.int .L_014A
.int .L_014B
.L_0143:
jmp .L_0139
.L_014D:
mov dword ptr [ebp-8], 29
jmp .L_0139
.L_014E:
mov dword ptr [ebp-8], 30
jmp .L_0139
.L_014F:
mov dword ptr [ebp-8], 13
jmp .L_0139
.L_013A:
mov eax, dword ptr [ebp-16]
add eax, 4294967030
cmp eax, 80
ja .L_0139
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0150+eax*4-1064]
_.L_0150:
.int .L_013C
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_013D
.int .L_0139
.int .L_0139
.int .L_014E
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_014D
.int .L_0139
.int .L_013F
.int .L_014F
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_013E
.int .L_0140
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0141
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0139
.int .L_0142
.L_0139:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
.L_0136:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOMPSTMTPUSH@8
_CCOMPSTMTPUSH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0151:
lea eax, [_PARSER]
push eax
call _STACKPUSH@4
mov dword ptr [_Lt_015D], eax
mov eax, dword ptr [_Lt_015D]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [_Lt_015D]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_015D]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0154
.L_0156:
mov eax, dword ptr [_Lt_015D]
mov ebx, dword ptr [_PARSER+36]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+36], ebx
jmp .L_0153
.L_0157:
mov ebx, dword ptr [_Lt_015D]
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebx+136], eax
mov eax, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+32], eax
jmp .L_0153
.L_0158:
mov eax, dword ptr [_Lt_015D]
mov ebx, dword ptr [_PARSER+44]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+44], ebx
jmp .L_0153
.L_0159:
mov ebx, dword ptr [_Lt_015D]
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+40], eax
jmp .L_0153
.L_015A:
mov eax, dword ptr [_Lt_015D]
mov ebx, dword ptr [_PARSER+48]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+48], ebx
jmp .L_0153
.L_015B:
mov ebx, dword ptr [_Lt_015D]
mov eax, dword ptr [_PARSER+52]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_015D]
mov dword ptr [_PARSER+52], eax
jmp .L_0153
.L_0154:
mov eax, dword ptr [ebp-8]
add eax, 4294967026
cmp eax, 76
ja .L_0153
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_015C+eax*4-1080]
_.L_015C:
.int .L_0158
.int .L_0153
.int .L_0153
.int .L_0159
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0156
.int .L_0153
.int .L_015B
.int .L_0157
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_015A
.L_0153:
mov eax, dword ptr [ebp+8]
mov dword ptr [_PARSER+24], eax
mov eax, dword ptr [_Lt_015D]
mov dword ptr [ebp-4], eax
.L_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_015D,4

.section .text
.balign 16

.globl _CCOMPSTMTGETTOS@8
_CCOMPSTMTGETTOS@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015E:
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [_Lt_0176], eax
cmp dword ptr [_Lt_0176], 0
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_Lt_0178], eax
cmp dword ptr [_Lt_0178], 0
jne .L_0161
mov eax, dword ptr [_Lt_0176]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_Lt_0178], ebx
.L_0161:
.L_0160:
cmp dword ptr [_Lt_0178], 0
je .L_0163
cmp dword ptr [ebp+12], 0
je .L_0165
cmp dword ptr [_Lt_0176], 0
je .L_0167
call _CCOMPSTMTCHECK@0
jmp .L_0166
.L_0167:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_0169
.L_016B:
mov dword ptr [_Lt_017A], 106
jmp .L_0168
.L_016C:
mov dword ptr [_Lt_017A], 115
jmp .L_0168
.L_016D:
mov dword ptr [_Lt_017A], 107
jmp .L_0168
.L_016E:
mov dword ptr [_Lt_017A], 110
jmp .L_0168
.L_016F:
mov dword ptr [_Lt_017A], 113
jmp .L_0168
.L_0170:
mov dword ptr [_Lt_017A], 111
jmp .L_0168
.L_0171:
mov dword ptr [_Lt_017A], 108
jmp .L_0168
.L_0172:
mov dword ptr [_Lt_017A], 109
jmp .L_0168
.L_0173:
mov dword ptr [_Lt_017A], 112
jmp .L_0168
.L_0174:
mov dword ptr [_Lt_017A], 114
jmp .L_0168
.L_0169:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967030
cmp ebx, 80
ja .L_0168
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_0175+ebx*4-1064]
_.L_0175:
.int .L_016E
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0170
.int .L_0168
.int .L_0168
.int .L_0171
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_016B
.int .L_0168
.int .L_0172
.int .L_016D
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_016F
.int .L_0174
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_016C
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0168
.int .L_0173
.L_0168:
push 0
push 0
push dword ptr [_Lt_017A]
call _ERRREPORT@12
.L_0166:
.L_0165:
.L_0164:
mov dword ptr [ebp-4], 0
jmp .L_0162
.L_0163:
mov ebx, dword ptr [_Lt_0176]
mov dword ptr [ebp-4], ebx
.L_0162:
.L_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0176,4
.balign 4
	.lcomm	_Lt_0178,4
.balign 4
	.lcomm	_Lt_017A,4

.section .text
.balign 16

.globl _CCOMPSTMTPOP@4
_CCOMPSTMTPOP@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_017E
.L_0180:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+36], eax
jmp .L_017D
.L_0181:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov dword ptr [_PARSER+32], ebx
jmp .L_017D
.L_0182:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [_PARSER+44], eax
jmp .L_017D
.L_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [_PARSER+40], ebx
jmp .L_017D
.L_0184:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [_PARSER+48], eax
jmp .L_017D
.L_0185:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [_PARSER+52], ebx
jmp .L_017D
.L_017E:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967026
cmp ebx, 76
ja .L_017D
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_0186+ebx*4-1080]
_.L_0186:
.int .L_0182
.int .L_017D
.int .L_017D
.int .L_0183
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_0180
.int .L_017D
.int .L_0185
.int .L_0181
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_017D
.int .L_0184
.L_017D:
lea ebx, [_PARSER]
push ebx
call _STACKPOP@4
lea ebx, [_PARSER]
push ebx
call _STACKGETTOS@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_0188
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [_PARSER+24], ebx
jmp .L_0187
.L_0188:
mov dword ptr [_PARSER+24], 0
.L_0187:
.L_017C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CCOMPSTMTISALLOWED@4
_CCOMPSTMTISALLOWED@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0189:
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_018C
mov dword ptr [ebp-4], -1
jmp .L_018A
.L_018C:
.L_018B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
and ebx, dword ptr [eax+4]
je .L_018E
mov dword ptr [ebp-4], -1
jmp .L_018A
.L_018E:
.L_018D:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0190
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .L_0192
mov dword ptr [ebp-12], 62
jmp .L_0191
.L_0192:
mov dword ptr [ebp-12], 61
.L_0191:
jmp .L_018F
.L_0190:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
jne .L_0194
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .L_0196
mov dword ptr [ebp-12], 62
jmp .L_0195
.L_0196:
mov dword ptr [ebp-12], 96
.L_0195:
jmp .L_0193
.L_0194:
mov dword ptr [ebp-12], 122
.L_0193:
.L_018F:
push 0
push 1
push 0
push offset _Lt_0000
push dword ptr [ebp-12]
call _ERRREPORTEX@20
mov dword ptr [ebp-4], 0
.L_018A:
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
_HCHECKFORCTORRESULT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .L_00A9
push dword ptr [_PARSER+108]
call _SYMBHASCTOR@4
mov ebx, dword ptr [_PARSER+108]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00AB
mov dword ptr [ebp-4], 180
jmp .L_00A7
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
mov ecx, dword ptr [_PARSER+108]
mov eax, dword ptr [ecx+112]
or dword ptr [eax+48], 2
mov dword ptr [ebp-4], 0
.L_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CCOMPOUNDEND@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0126:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-4], eax
jmp .L_0129
.L_012B:
call _CIFSTMTEND@0
jmp .L_0128
.L_012C:
call _CSELECTSTMTEND@0
jmp .L_0128
.L_012D:
call _CPROCSTMTEND@0
jmp .L_0128
.L_012E:
call _CSCOPESTMTEND@0
jmp .L_0128
.L_012F:
call _CWITHSTMTEND@0
jmp .L_0128
.L_0130:
call _CNAMESPACESTMTEND@0
jmp .L_0128
.L_0131:
call _CEXTERNSTMTEND@0
jmp .L_0128
.L_0132:
call _CENDSTATEMENT@0
jmp .L_0128
.L_0133:
push 0
push 0
push 33
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 84
ja .L_0133
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0134+eax*4-1064]
_.L_0134:
.int .L_012B
.int .L_0133
.int .L_0132
.int .L_0133
.int .L_012C
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_012F
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_012E
.int .L_0130
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0131
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0132
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0132
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_0133
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.int .L_012D
.L_0128:
.L_0127:
mov esp, ebp
pop ebp
ret

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
