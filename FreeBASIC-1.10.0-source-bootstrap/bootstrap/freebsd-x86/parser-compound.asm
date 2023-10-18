	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERCOMPOUNDSTMTSETCTX
PARSERCOMPOUNDSTMTSETCTX:
.L_0067:
mov dword ptr [PARSER+32], 0
mov dword ptr [PARSER+36], 0
mov dword ptr [PARSER+40], 0
mov dword ptr [PARSER+44], 0
mov dword ptr [PARSER+48], 0
mov dword ptr [PARSER+52], 0
.L_0068:
ret
.balign 16

.globl PARSERCOMPOUNDSTMTINIT
PARSERCOMPOUNDSTMTINIT:
.L_0069:
call PARSERSELECTSTMTINIT
call PARSERSELCONSTSTMTINIT
.L_006A:
ret
.balign 16

.globl PARSERCOMPOUNDSTMTEND
PARSERCOMPOUNDSTMTEND:
.L_006B:
call PARSERSELCONSTSTMTEND
call PARSERSELECTSTMTEND
.L_006C:
ret
.balign 16

.globl CCOMPOUNDSTMT
CCOMPOUNDSTMT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006D:
cmp dword ptr [ENV+136], 3
jne .L_0070
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .L_0072
mov dword ptr [ebp-4], 0
jmp .L_006E
.L_0072:
.L_0071:
.L_0070:
.L_006F:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0074
.L_0076:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0078
push 0
push 266
push 266
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_0078:
.L_0077:
call CIFSTMTBEGIN
jmp .L_0073
.L_0079:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_007B
push 0
push 283
push 281
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_007B:
.L_007A:
call CFORSTMTBEGIN
jmp .L_0073
.L_007C:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_007E
push 0
push 279
push 278
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_007E:
.L_007D:
call CDOSTMTBEGIN
jmp .L_0073
.L_007F:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0081
push 0
push 275
push 273
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_0081:
.L_0080:
call CWHILESTMTBEGIN
jmp .L_0073
.L_0082:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0084
push 0
push 270
push 270
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_0084:
.L_0083:
call CSELECTSTMTBEGIN
jmp .L_0073
.L_0085:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0087
push 0
push 280
push 280
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_0087:
.L_0086:
call CWITHSTMTBEGIN
jmp .L_0073
.L_0088:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_008A
push 0
push 285
push 285
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_008A:
.L_0089:
call CSCOPESTMTBEGIN
jmp .L_0073
.L_008B:
call CNAMESPACESTMTBEGIN
jmp .L_0073
.L_008C:
call CEXTERNSTMTBEGIN
jmp .L_0073
.L_008D:
call CIFSTMTNEXT
jmp .L_0073
.L_008E:
call CSELECTSTMTNEXT
jmp .L_0073
.L_008F:
call CDOSTMTEND
jmp .L_0073
.L_0090:
call CFORSTMTEND
jmp .L_0073
.L_0091:
call CWHILESTMTEND
jmp .L_0073
.L_0092:
call CEXITSTATEMENT
jmp .L_0073
.L_0093:
call CCONTINUESTATEMENT
jmp .L_0073
.L_0094:
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 1
je .L_0096
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0098
push 0
push -1
push -1
call HSKIPCOMPOUND
add esp, 12
jmp .L_006E
.L_0098:
.L_0097:
call CENDSTATEMENT
jmp .L_0095
.L_0096:
call CCOMPOUNDEND
.L_0095:
jmp .L_0073
.L_0099:
call CIFSTMTEND
jmp .L_0073
.L_009A:
call CUSINGSTMT
jmp .L_0073
.L_009B:
mov dword ptr [ebp-4], 0
jmp .L_006E
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 74
ja .L_009B
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_009C+eax*4-1064]
.L_009C:
.int .L_0076
.int .L_009B
.int .L_008D
.int .L_008D
.int .L_0082
.int .L_008E
.int .L_009B
.int .L_007F
.int .L_009B
.int .L_0091
.int .L_0093
.int .L_0092
.int .L_007C
.int .L_008F
.int .L_0085
.int .L_0079
.int .L_009B
.int .L_0090
.int .L_009B
.int .L_0088
.int .L_008B
.int .L_009A
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_008C
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_0099
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_009B
.int .L_0094
.L_0073:
mov dword ptr [ebp-4], -1
.L_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CENDSTATEMENT
CENDSTATEMENT:
push ebp
mov ebp, esp
sub esp, 8
.L_009D:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00A0
.L_00A2:
mov dword ptr [ebp-4], 0
jmp .L_009F
.L_00A3:
call CEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_009F
.L_00A0:
mov eax, dword ptr [ebp-8]
add eax, 4294967040
cmp eax, 84
ja .L_00A3
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_00A4+eax*4-1024]
.L_00A4:
.int .L_00A2
.int .L_00A2
.int .L_00A2
.int .L_00A2
.int .L_00A2
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A2
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A2
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A3
.int .L_00A2
.L_009F:
push dword ptr [ebp-4]
call RTLEXITAPP
add esp, 4
.L_009E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl CEXITSTATEMENT
CEXITSTATEMENT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_00AB:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 9
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00AE
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_00AE:
.L_00AD:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00B0
.L_00B2:
cmp dword ptr [PARSER+32], 0
jne .L_00B4
push 0
push 0
push 239
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00B4:
.L_00B3:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebp-16], eax
.L_00B5:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_00B6
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 281
je .L_00B8
push 0
push 0
push 243
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00BA
push 0
push 0
push 247
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00BA:
.L_00B9:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00B5
.L_00B6:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00BB:
cmp dword ptr [PARSER+36], 0
jne .L_00BD
push 0
push 0
push 240
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00BD:
.L_00BC:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+36]
mov dword ptr [ebp-16], eax
.L_00BE:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_00BF
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 278
je .L_00C1
push 0
push 0
push 244
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00C1:
.L_00C0:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00C3
push 0
push 0
push 248
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00C3:
.L_00C2:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00BE
.L_00BF:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00C4:
cmp dword ptr [PARSER+40], 0
jne .L_00C6
push 0
push 0
push 241
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00C6:
.L_00C5:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebp-16], eax
.L_00C7:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_00C8
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 273
je .L_00CA
push 0
push 0
push 245
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00CA:
.L_00C9:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00CC
push 0
push 0
push 249
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00CC:
.L_00CB:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00C7
.L_00C8:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00CD:
cmp dword ptr [PARSER+44], 0
jne .L_00CF
push 0
push 0
push 242
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00CF:
.L_00CE:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+44]
mov dword ptr [ebp-16], eax
.L_00D0:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_00D1
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 270
je .L_00D3
push 0
push 0
push 246
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_00D5
push 0
push 0
push 250
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00D5:
.L_00D4:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00D0
.L_00D1:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
jmp .L_00AF
.L_00D6:
cmp dword ptr [PARSER+48], 0
je .L_00D8
mov eax, dword ptr [PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-4], ebx
.L_00D8:
.L_00D7:
cmp dword ptr [ebp-4], 0
jne .L_00DA
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
jmp .L_00DC
.L_00DE:
mov dword ptr [ebp-20], 253
jmp .L_00DB
.L_00DF:
mov dword ptr [ebp-20], 193
jmp .L_00DB
.L_00E0:
mov dword ptr [ebp-20], 144
jmp .L_00DB
.L_00E1:
mov dword ptr [ebp-20], 165
jmp .L_00DB
.L_00E2:
mov dword ptr [ebp-20], 166
jmp .L_00DB
.L_00E3:
mov dword ptr [ebp-20], 254
jmp .L_00DB
.L_00DC:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966951
cmp ebx, 5
ja .L_00E3
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.L_00E4+ebx*4-1380]
.L_00E4:
.int .L_00DE
.int .L_00E3
.int .L_00E1
.int .L_00E2
.int .L_00E0
.int .L_00DF
.L_00DB:
push 0
push 0
push dword ptr [ebp-20]
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_00DA:
.L_00D9:
mov dword ptr [ebp-16], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_00E6
.L_00E8:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_00EA
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 4156
test eax, eax
je .L_00EC
mov dword ptr [ebp-16], 253
.L_00EC:
.L_00EB:
jmp .L_00E9
.L_00EA:
mov dword ptr [ebp-16], 253
.L_00E9:
jmp .L_00E5
.L_00ED:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_00EF
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 4156
test eax, eax
je .L_00F1
mov dword ptr [ebp-16], 254
jmp .L_00F0
.L_00F1:
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
.L_00F0:
jmp .L_00EE
.L_00EF:
mov dword ptr [ebp-16], 254
.L_00EE:
jmp .L_00E5
.L_00F2:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00F4
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
jmp .L_00F3
.L_00F4:
mov dword ptr [ebp-16], 193
.L_00F3:
jmp .L_00E5
.L_00F5:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_00F7
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
jmp .L_00F6
.L_00F7:
mov dword ptr [ebp-16], 144
.L_00F6:
jmp .L_00E5
.L_00F8:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_00FA
mov dword ptr [ebp-16], 165
.L_00FA:
.L_00F9:
jmp .L_00E5
.L_00FB:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
jne .L_00FD
mov dword ptr [ebp-16], 166
.L_00FD:
.L_00FC:
jmp .L_00E5
.L_00E6:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_00E5
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00FE+eax*4-1380]
.L_00FE:
.int .L_00E8
.int .L_00ED
.int .L_00F8
.int .L_00FB
.int .L_00F5
.int .L_00F2
.L_00E5:
cmp dword ptr [ebp-16], 0
je .L_0100
push 0
push 0
push dword ptr [ebp-16]
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
.L_0100:
.L_00FF:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_00AF
.L_0101:
push 0
push 0
push 251
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00AC
jmp .L_00AF
.L_00B0:
mov eax, dword ptr [ebp-12]
add eax, 4294967026
cmp eax, 80
ja .L_0101
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0102+eax*4-1080]
.L_0102:
.int .L_00CD
.int .L_0101
.int .L_0101
.int .L_00C4
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_00BB
.int .L_0101
.int .L_0101
.int .L_00B2
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_0101
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.int .L_00D6
.L_00AF:
push dword ptr [ebp-4]
call ASTSCOPEBREAK
add esp, 4
.L_00AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCONTINUESTATEMENT
CCONTINUESTATEMENT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0103:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0106
.L_0108:
cmp dword ptr [PARSER+32], 0
jne .L_010A
push 0
push 0
push 239
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_010A:
.L_0109:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebp-12], eax
.L_010B:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_010C
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 281
je .L_010E
push 0
push 0
push 243
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_010E:
.L_010D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_0110
push 0
push 0
push 247
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0110:
.L_010F:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_010B
.L_010C:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_0111:
cmp dword ptr [PARSER+36], 0
jne .L_0113
push 0
push 0
push 240
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0113:
.L_0112:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+36]
mov dword ptr [ebp-12], eax
.L_0114:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_0115
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 278
je .L_0117
push 0
push 0
push 244
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0117:
.L_0116:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_0119
push 0
push 0
push 248
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0119:
.L_0118:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0114
.L_0115:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_011A:
cmp dword ptr [PARSER+40], 0
jne .L_011C
push 0
push 0
push 241
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_011C:
.L_011B:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebp-12], eax
.L_011D:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .L_011E
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 273
je .L_0120
push 0
push 0
push 245
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0120:
.L_011F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .L_0122
push 0
push 0
push 249
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
.L_0122:
.L_0121:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_011D
.L_011E:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .L_0105
.L_0123:
push 0
push 0
push 252
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0104
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp-8]
add eax, 4294967023
cmp eax, 8
ja .L_0123
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0124+eax*4-1092]
.L_0124:
.int .L_011A
.int .L_0123
.int .L_0123
.int .L_0123
.int .L_0123
.int .L_0111
.int .L_0123
.int .L_0123
.int .L_0108
.L_0105:
push dword ptr [ebp-4]
call ASTSCOPEBREAK
add esp, 4
.L_0104:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCOMPSTMTCHECK
CCOMPSTMTCHECK:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0134:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0137
mov dword ptr [ebp-4], -1
jmp .L_0135
.L_0137:
.L_0136:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0139
.L_013B:
mov dword ptr [ebp-8], 32
jmp .L_0138
.L_013C:
mov dword ptr [ebp-8], 35
jmp .L_0138
.L_013D:
mov dword ptr [ebp-8], 95
jmp .L_0138
.L_013E:
mov dword ptr [ebp-8], 60
jmp .L_0138
.L_013F:
mov dword ptr [ebp-8], 121
jmp .L_0138
.L_0140:
mov dword ptr [ebp-8], 124
jmp .L_0138
.L_0141:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
jmp .L_0143
.L_0145:
mov dword ptr [ebp-8], 125
jmp .L_0142
.L_0146:
mov dword ptr [ebp-8], 126
jmp .L_0142
.L_0147:
mov dword ptr [ebp-8], 127
jmp .L_0142
.L_0148:
mov dword ptr [ebp-8], 128
jmp .L_0142
.L_0149:
mov dword ptr [ebp-8], 129
jmp .L_0142
.L_014A:
mov dword ptr [ebp-8], 130
jmp .L_0142
.L_0143:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .L_0142
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_014B+eax*4-1380]
.L_014B:
.int .L_0145
.int .L_0146
.int .L_0147
.int .L_0148
.int .L_0149
.int .L_014A
.L_0142:
jmp .L_0138
.L_014C:
mov dword ptr [ebp-8], 29
jmp .L_0138
.L_014D:
mov dword ptr [ebp-8], 30
jmp .L_0138
.L_014E:
mov dword ptr [ebp-8], 13
jmp .L_0138
.L_0139:
mov eax, dword ptr [ebp-16]
add eax, 4294967030
cmp eax, 80
ja .L_0138
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_014F+eax*4-1064]
.L_014F:
.int .L_013B
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_013C
.int .L_0138
.int .L_0138
.int .L_014D
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_014C
.int .L_0138
.int .L_013E
.int .L_014E
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_013D
.int .L_013F
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0140
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0138
.int .L_0141
.L_0138:
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
.L_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCOMPSTMTPUSH
CCOMPSTMTPUSH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0150:
lea eax, [PARSER]
push eax
call STACKPUSH
add esp, 4
mov dword ptr [Lt_015C], eax
mov eax, dword ptr [Lt_015C]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_015C]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_015C]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0153
.L_0155:
mov eax, dword ptr [Lt_015C]
mov ebx, dword ptr [PARSER+36]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [Lt_015C]
mov dword ptr [PARSER+36], ebx
jmp .L_0152
.L_0156:
mov ebx, dword ptr [Lt_015C]
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebx+96], eax
mov eax, dword ptr [Lt_015C]
mov dword ptr [PARSER+32], eax
jmp .L_0152
.L_0157:
mov eax, dword ptr [Lt_015C]
mov ebx, dword ptr [PARSER+44]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [Lt_015C]
mov dword ptr [PARSER+44], ebx
jmp .L_0152
.L_0158:
mov ebx, dword ptr [Lt_015C]
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_015C]
mov dword ptr [PARSER+40], eax
jmp .L_0152
.L_0159:
mov eax, dword ptr [Lt_015C]
mov ebx, dword ptr [PARSER+48]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [Lt_015C]
mov dword ptr [PARSER+48], ebx
jmp .L_0152
.L_015A:
mov ebx, dword ptr [Lt_015C]
mov eax, dword ptr [PARSER+52]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_015C]
mov dword ptr [PARSER+52], eax
jmp .L_0152
.L_0153:
mov eax, dword ptr [ebp-8]
add eax, 4294967026
cmp eax, 76
ja .L_0152
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_015B+eax*4-1080]
.L_015B:
.int .L_0157
.int .L_0152
.int .L_0152
.int .L_0158
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0155
.int .L_0152
.int .L_015A
.int .L_0156
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0152
.int .L_0159
.L_0152:
mov eax, dword ptr [ebp+8]
mov dword ptr [PARSER+24], eax
mov eax, dword ptr [Lt_015C]
mov dword ptr [ebp-4], eax
.L_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_015C,4

.section .text
.balign 16

.globl CCOMPSTMTGETTOS
CCOMPSTMTGETTOS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 4
mov dword ptr [Lt_0175], eax
cmp dword ptr [Lt_0175], 0
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [Lt_0177], eax
cmp dword ptr [Lt_0177], 0
jne .L_0160
mov eax, dword ptr [Lt_0175]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [Lt_0177], ebx
.L_0160:
.L_015F:
cmp dword ptr [Lt_0177], 0
je .L_0162
cmp dword ptr [ebp+12], 0
je .L_0164
cmp dword ptr [Lt_0175], 0
je .L_0166
call CCOMPSTMTCHECK
jmp .L_0165
.L_0166:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .L_0168
.L_016A:
mov dword ptr [Lt_0179], 106
jmp .L_0167
.L_016B:
mov dword ptr [Lt_0179], 115
jmp .L_0167
.L_016C:
mov dword ptr [Lt_0179], 107
jmp .L_0167
.L_016D:
mov dword ptr [Lt_0179], 110
jmp .L_0167
.L_016E:
mov dword ptr [Lt_0179], 113
jmp .L_0167
.L_016F:
mov dword ptr [Lt_0179], 111
jmp .L_0167
.L_0170:
mov dword ptr [Lt_0179], 108
jmp .L_0167
.L_0171:
mov dword ptr [Lt_0179], 109
jmp .L_0167
.L_0172:
mov dword ptr [Lt_0179], 112
jmp .L_0167
.L_0173:
mov dword ptr [Lt_0179], 114
jmp .L_0167
.L_0168:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967030
cmp ebx, 80
ja .L_0167
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_0174+ebx*4-1064]
.L_0174:
.int .L_016D
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_016F
.int .L_0167
.int .L_0167
.int .L_0170
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_016A
.int .L_0167
.int .L_0171
.int .L_016C
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_016E
.int .L_0173
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_016B
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0167
.int .L_0172
.L_0167:
push 0
push 0
push dword ptr [Lt_0179]
call ERRREPORT
add esp, 12
.L_0165:
.L_0164:
.L_0163:
mov dword ptr [ebp-4], 0
jmp .L_0161
.L_0162:
mov ebx, dword ptr [Lt_0175]
mov dword ptr [ebp-4], ebx
.L_0161:
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0175,4
.balign 4
	.lcomm	Lt_0177,4
.balign 4
	.lcomm	Lt_0179,4

.section .text
.balign 16

.globl CCOMPSTMTPOP
CCOMPSTMTPOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_017A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_017D
.L_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [PARSER+36], eax
jmp .L_017C
.L_0180:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [PARSER+32], ebx
jmp .L_017C
.L_0181:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
mov dword ptr [PARSER+44], eax
jmp .L_017C
.L_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [PARSER+40], ebx
jmp .L_017C
.L_0183:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [PARSER+48], eax
jmp .L_017C
.L_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [PARSER+52], ebx
jmp .L_017C
.L_017D:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967026
cmp ebx, 76
ja .L_017C
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_0185+ebx*4-1080]
.L_0185:
.int .L_0181
.int .L_017C
.int .L_017C
.int .L_0182
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017F
.int .L_017C
.int .L_0184
.int .L_0180
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_017C
.int .L_0183
.L_017C:
lea ebx, [PARSER]
push ebx
call STACKPOP
add esp, 4
lea ebx, [PARSER]
push ebx
call STACKGETTOS
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_0187
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [PARSER+24], ebx
jmp .L_0186
.L_0187:
mov dword ptr [PARSER+24], 0
.L_0186:
.L_017B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCOMPSTMTISALLOWED
CCOMPSTMTISALLOWED:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0188:
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_018B
mov dword ptr [ebp-4], -1
jmp .L_0189
.L_018B:
.L_018A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
and ebx, dword ptr [eax+4]
je .L_018D
mov dword ptr [ebp-4], -1
jmp .L_0189
.L_018D:
.L_018C:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_018F
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .L_0191
mov dword ptr [ebp-12], 62
jmp .L_0190
.L_0191:
mov dword ptr [ebp-12], 61
.L_0190:
jmp .L_018E
.L_018F:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .L_0193
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .L_0195
mov dword ptr [ebp-12], 62
jmp .L_0194
.L_0195:
mov dword ptr [ebp-12], 96
.L_0194:
jmp .L_0192
.L_0193:
mov dword ptr [ebp-12], 122
.L_0192:
.L_018E:
push 0
push 1
push 0
push offset Lt_0000
push dword ptr [ebp-12]
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-4], 0
.L_0189:
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
HCHECKFORCTORRESULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .L_00A8
push dword ptr [PARSER+108]
call SYMBHASCTOR
add esp, 4
mov ebx, dword ptr [PARSER+108]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00AA
mov dword ptr [ebp-4], 180
jmp .L_00A6
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
mov ecx, dword ptr [PARSER+108]
mov eax, dword ptr [ecx+112]
or dword ptr [eax+48], 2
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CCOMPOUNDEND:
push ebp
mov ebp, esp
sub esp, 4
.L_0125:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0128
.L_012A:
call CIFSTMTEND
jmp .L_0127
.L_012B:
call CSELECTSTMTEND
jmp .L_0127
.L_012C:
call CPROCSTMTEND
jmp .L_0127
.L_012D:
call CSCOPESTMTEND
jmp .L_0127
.L_012E:
call CWITHSTMTEND
jmp .L_0127
.L_012F:
call CNAMESPACESTMTEND
jmp .L_0127
.L_0130:
call CEXTERNSTMTEND
jmp .L_0127
.L_0131:
call CENDSTATEMENT
jmp .L_0127
.L_0132:
push 0
push 0
push 33
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0127
.L_0128:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 84
ja .L_0132
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0133+eax*4-1064]
.L_0133:
.int .L_012A
.int .L_0132
.int .L_0131
.int .L_0132
.int .L_012B
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_012E
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_012D
.int .L_012F
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0130
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0131
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0131
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_0132
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.int .L_012C
.L_0127:
.L_0126:
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
