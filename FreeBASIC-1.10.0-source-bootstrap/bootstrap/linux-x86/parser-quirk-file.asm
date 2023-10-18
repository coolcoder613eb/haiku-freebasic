	.intel_syntax noprefix

.section .text
.balign 16

.globl CPRINTSTMT
CPRINTSTMT:
.type CPRINTSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
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
je .L_006B
.L_006C:
cmp dword ptr [ebp+8], 63
jne .L_006A
.L_006B:
mov dword ptr [ebp-44], 0
jmp .L_0069
.L_006A:
cmp dword ptr [ebp+8], 464
jne .L_006D
.L_006E:
mov eax, dword ptr [ENV+1040]
and eax, 33554432
test eax, eax
jne .L_0070
sub esp, 4
push 0
push 146
push 33554432
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_006F
.L_0070:
mov dword ptr [ebp-44], -1
.L_006F:
jmp .L_0069
.L_006D:
jmp .L_0068
.L_0071:
.L_0069:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-44], 0
je .L_0073
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0072
.L_0073:
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .L_0075
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0077
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0079
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_0079:
.L_0078:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-12], eax
.L_0077:
.L_0076:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_007B
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_007A
.L_007B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_007A:
jmp .L_0074
.L_0075:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0074:
.L_0072:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .L_007D
sub esp, 12
lea eax, [ebp-12]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
call ASTADD
add esp, 16
.L_007D:
.L_007C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
.L_007E:
sub esp, 8
push 2048
push 287
call HMATCH
add esp, 16
test eax, eax
je .L_0082
cmp dword ptr [ebp-8], 0
je .L_0084
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call RTLPRINTUSINGEND
add esp, 16
test eax, eax
jne .L_0086
jmp .L_0068
.L_0086:
.L_0085:
.L_0084:
.L_0083:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0088
jmp .L_0068
.L_0088:
.L_0087:
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
jne .L_008A
sub esp, 4
push 0
push 0
push 47
call ERRREPORT
add esp, 16
.L_008A:
.L_0089:
sub esp, 8
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call RTLPRINTUSINGINIT
add esp, 16
test eax, eax
jne .L_008C
jmp .L_0068
.L_008C:
.L_008B:
.L_0082:
.L_0081:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 8
push 4096
push 486
call HMATCH
add esp, 16
test eax, eax
je .L_008E
mov dword ptr [ebp-40], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0090
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_008F
.L_0090:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_008F:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0092
jmp .L_0068
.L_0092:
.L_0091:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0094
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
jmp .L_0093
.L_0094:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0093:
jmp .L_008D
.L_008E:
sub esp, 8
push 4096
push 487
call HMATCH
add esp, 16
test eax, eax
je .L_0095
mov dword ptr [ebp-36], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0097
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0096
.L_0097:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0096:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0099
jmp .L_0068
.L_0099:
.L_0098:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_009B
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
jmp .L_009A
.L_009B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_009A:
jmp .L_008D
.L_0095:
call CEXPRESSION
mov dword ptr [ebp-20], eax
.L_008D:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_009D
cmp dword ptr [ebp-8], 0
je .L_009F
sub esp, 4
push 0
push 0
push 47
call ERRREPORT
add esp, 16
.L_009F:
.L_009E:
mov dword ptr [ebp-32], -1
jmp .L_009C
.L_009D:
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
je .L_00A0
mov dword ptr [ebp-28], -1
.L_00A0:
.L_009C:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00A2
sub esp, 4
push 0
push 0
push 47
call ERRREPORT
add esp, 16
.L_00A2:
.L_00A1:
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
je .L_00A4
jmp .L_007F
.L_00A4:
.L_00A3:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
je .L_00A6
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-36]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call RTLPRINTSPCTAB
add esp, 16
test eax, eax
jne .L_00A8
jmp .L_0068
.L_00A8:
.L_00A7:
jmp .L_00A5
.L_00A6:
cmp dword ptr [ebp-8], 0
jne .L_00AA
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-44]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call RTLPRINT
add esp, 32
test eax, eax
jne .L_00AC
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_00AC:
.L_00AB:
jmp .L_00A9
.L_00AA:
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call RTLPRINTUSING
add esp, 32
test eax, eax
jne .L_00AE
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_00AE:
.L_00AD:
.L_00A9:
.L_00A5:
inc dword ptr [ebp-24]
.L_0080:
mov eax, dword ptr [ebp-28]
or eax, dword ptr [ebp-32]
jne .L_007E
.L_007F:
cmp dword ptr [ebp-8], 0
jne .L_00B0
cmp dword ptr [ebp-24], 0
jne .L_00B2
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-44]
push 0
push 0
push 0
push dword ptr [ebp-16]
call RTLPRINT
add esp, 32
test eax, eax
jne .L_00B4
jmp .L_0068
.L_00B4:
.L_00B3:
.L_00B2:
.L_00B1:
jmp .L_00AF
.L_00B0:
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call RTLPRINTUSINGEND
add esp, 16
test eax, eax
jne .L_00B6
jmp .L_0068
.L_00B6:
.L_00B5:
.L_00AF:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPRINTSTMT, .-CPRINTSTMT
.cfi_endproc
.balign 16

.globl CWRITESTMT
CWRITESTMT:
.type CWRITESTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .L_00BE
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00C0
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_00C2
mov dword ptr [ebp-4], 0
jmp .L_00BC
.L_00C2:
.L_00C1:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_00C0:
.L_00BF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00C4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00C3
.L_00C4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00C3:
jmp .L_00BD
.L_00BE:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00BD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .L_00C6
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
call ASTADD
add esp, 16
.L_00C6:
.L_00C5:
mov dword ptr [ebp-20], 0
.L_00C7:
call CEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00CB
mov dword ptr [ebp-16], 0
.L_00CB:
.L_00CA:
mov dword ptr [ebp-24], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00CD
mov dword ptr [ebp-24], -1
.L_00CD:
.L_00CC:
sub esp, 12
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 16
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
je .L_00CF
cmp dword ptr [ebp-20], 0
jne .L_00D1
sub esp, 4
push 0
push 0
push dword ptr [ebp-12]
call RTLWRITE
add esp, 16
.L_00D1:
.L_00D0:
jmp .L_00C8
.L_00CF:
.L_00CE:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call RTLWRITE
add esp, 16
test eax, eax
jne .L_00D3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_00D3:
.L_00D2:
inc dword ptr [ebp-20]
.L_00C9:
cmp dword ptr [ebp-24], 0
jne .L_00C7
.L_00C8:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], -1
.L_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CWRITESTMT, .-CWRITESTMT
.cfi_endproc
.balign 16

.globl CLINEINPUTSTMT
CLINEINPUTSTMT:
.type CLINEINPUTSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00D6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 478
je .L_00D9
jmp .L_00D7
.L_00D9:
.L_00D8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .L_00DB
mov dword ptr [ebp-20], -1
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DD
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_00DF
mov dword ptr [ebp-4], 0
jmp .L_00D7
.L_00DF:
.L_00DE:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_00DD:
.L_00DC:
jmp .L_00DA
.L_00DB:
call CEXPRESSION
mov dword ptr [ebp-12], eax
.L_00DA:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_00E1
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
jne .L_00E3
cmp dword ptr [ebp-12], 0
jne .L_00E5
cmp dword ptr [ebp-20], 0
je .L_00E7
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_00E6
.L_00E7:
sub esp, 4
push 0
push 0
push 326
call ERRREPORT
add esp, 16
.L_00E6:
.L_00E5:
.L_00E4:
jmp .L_00E2
.L_00E3:
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-28], -1
.L_00E2:
jmp .L_00E0
.L_00E1:
mov dword ptr [ebp-28], -1
.L_00E0:
cmp dword ptr [ebp-28], -1
jne .L_00E9
cmp dword ptr [ebp-12], 0
je .L_00EB
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
cmp dword ptr [ebp-12], 0
jne .L_00ED
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EF
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
jmp .L_00D7
.L_00EF:
.L_00EE:
.L_00ED:
.L_00EC:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_00F1
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
jmp .L_00F0
.L_00F1:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
test eax, eax
je .L_00F2
sub esp, 4
push 0
push -1
push 14
call ERRREPORT
add esp, 16
.L_00F2:
.L_00F0:
sub esp, 8
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
push dword ptr [ebp-12]
call RTLCALCSTRLEN
add esp, 16
cmp edx, 0
jne .L_00F4
cmp eax, 0
jne .L_00F4
.L_0103:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_00F6
call CEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00F8
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
.L_00F8:
.L_00F7:
jmp .L_00F5
.L_00F6:
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
.L_00F5:
.L_00F4:
.L_00F3:
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+4]
and edx, 511
mov dword ptr [ebp-40], edx
cmp dword ptr [ebp-40], 17
je .L_00FC
.L_00FD:
cmp dword ptr [ebp-40], 18
je .L_00FC
.L_00FE:
cmp dword ptr [ebp-40], 4
jne .L_00FB
.L_00FC:
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILELINEINPUT
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FB:
cmp dword ptr [ebp-40], 7
jne .L_00FF
.L_0100:
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILELINEINPUTWSTR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_00F9
.L_00FF:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], -1
.L_0101:
.L_00F9:
.L_00D7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLINEINPUTSTMT, .-CLINEINPUTSTMT
.cfi_endproc
.balign 16

.globl CINPUTSTMT
CINPUTSTMT:
.type CINPUTSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0104:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .L_0107
mov dword ptr [ebp-20], -1
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0109
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_010B
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_010B:
.L_010A:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_0109:
.L_0108:
jmp .L_0106
.L_0107:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .L_010D
sub esp, 12
push 0
push -2147483648
push 0
push 0
sub esp, 12
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4112]
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBALLOCSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_010C
.L_010D:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], -1
.L_010C:
.L_0106:
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .L_010F
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0111
sub esp, 8
push 0
push 59
call HMATCH
add esp, 16
test eax, eax
jne .L_0113
cmp dword ptr [ebp-20], 0
je .L_0115
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0114
.L_0115:
sub esp, 4
push 0
push 0
push 326
call ERRREPORT
add esp, 16
.L_0114:
jmp .L_0112
.L_0113:
mov dword ptr [ebp-28], -1
.L_0112:
.L_0111:
.L_0110:
.L_010F:
.L_010E:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILEINPUT
add esp, 16
test eax, eax
jne .L_0117
jmp .L_0105
.L_0117:
.L_0116:
.L_0118:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_011C
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-12], 0
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_011C:
.L_011B:
cmp dword ptr [ebp-12], 0
je .L_011E
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0120
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
jmp .L_011F
.L_0120:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
test eax, eax
je .L_0121
sub esp, 4
push 0
push -1
push 14
call ERRREPORT
add esp, 16
.L_0121:
.L_011F:
.L_011E:
.L_011D:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0123
mov dword ptr [ebp-16], 0
jmp .L_0122
.L_0123:
mov dword ptr [ebp-16], -1
.L_0122:
cmp dword ptr [ebp-12], 0
je .L_0125
sub esp, 12
push dword ptr [ebp-12]
call RTLFILEINPUTGET
add esp, 16
test eax, eax
jne .L_0127
jmp .L_0105
.L_0127:
.L_0126:
.L_0125:
.L_0124:
.L_011A:
cmp dword ptr [ebp-16], 0
je .L_0118
.L_0119:
mov dword ptr [ebp-4], -1
.L_0105:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CINPUTSTMT, .-CINPUTSTMT
.cfi_endproc
.balign 16

.globl CFILESTMT
CFILESTMT:
.type CFILESTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0285:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_0288
.L_028A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call HFILEOPEN
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_028B:
sub esp, 12
push 0
call HFILECLOSE
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_028C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_028E
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0290
mov dword ptr [ebp-4], 0
jmp .L_0286
.L_0290:
.L_028F:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_028E:
.L_028D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0292
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0291
.L_0292:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0291:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0294
jmp .L_0286
.L_0294:
.L_0293:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILESEEK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0287
.L_0295:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 35
je .L_0297
jmp .L_0286
.L_0297:
.L_0296:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call HFILEPUT
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_0298:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 35
je .L_029A
jmp .L_0286
.L_029A:
.L_0299:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call HFILEGET
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_029B:
cmp dword ptr [ebp+8], 477
jne .L_029D
mov dword ptr [ebp-20], -1
jmp .L_029C
.L_029D:
mov dword ptr [ebp-20], 0
.L_029C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_029F
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_02A1
mov dword ptr [ebp-4], 0
jmp .L_0286
.L_02A1:
.L_02A0:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_029F:
.L_029E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_02A3
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_02A2
.L_02A3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02A2:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_02A5
jmp .L_0286
.L_02A5:
.L_02A4:
sub esp, 8
push 2048
push 284
call HMATCH
add esp, 16
test eax, eax
je .L_02A7
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_02A9
jmp .L_0286
.L_02A9:
.L_02A8:
jmp .L_02A6
.L_02A7:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_02A6:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILELOCK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0287
.L_02AA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call HFILERENAME
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_0287
.L_0288:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966826
cmp ebx, 20
ja .L_0287
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.L_02AB+ebx*4-1880]
.L_02AB:
.int .L_028A
.int .L_028B
.int .L_028C
.int .L_0295
.int .L_0298
.int .L_0287
.int .L_0287
.int .L_029B
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_02AA
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_0287
.int .L_029B
.L_0287:
.L_0286:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CFILESTMT, .-CFILESTMT
.cfi_endproc
.balign 16

.globl CFILEFUNCT
CFILEFUNCT:
.type CFILEFUNCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_02B1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_02B4
.L_02B6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_02B8
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_02B7
.L_02B8:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02B7:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02BA
jmp .L_02B2
.L_02BA:
.L_02B9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_02BC
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
jmp .L_02BB
.L_02BC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02BB:
sub esp, 12
push dword ptr [ebp-8]
call RTLFILETELL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B3
.L_02BD:
sub esp, 12
cmp dword ptr [ebp+8], 478
jne .L_02BE
mov dword ptr [ebp-20], 8192
jmp .L_02DA
.L_02BE:
mov dword ptr [ebp-20], 2048
.L_02DA:
push dword ptr [ebp-20]
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_02C1
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_02C0
.L_02C1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02C0:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_02C3
jmp .L_02B2
.L_02C3:
.L_02C2:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_02C5
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02C7
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_02C9
mov dword ptr [ebp-4], 0
jmp .L_02B2
.L_02C9:
.L_02C8:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_02C7:
.L_02C6:
jmp .L_02C4
.L_02C5:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_02C4:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_02CB
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
jmp .L_02CA
.L_02CB:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02CA:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call RTLFILESTRINPUT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B3
.L_02CC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call HFILEOPEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B3
.L_02CD:
sub esp, 12
push -1
call HFILECLOSE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B3
.L_02CE:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_02D0
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_02CF
.L_02D0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02CF:
sub esp, 12
push -1
call HFILEPUT
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_02D2
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
jmp .L_02D1
.L_02D2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02D1:
jmp .L_02B3
.L_02D3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_02D5
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_02D4
.L_02D5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02D4:
sub esp, 12
push -1
call HFILEGET
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_02D7
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
jmp .L_02D6
.L_02D7:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02D6:
jmp .L_02B3
.L_02D8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call HFILERENAME
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02B3
.L_02B4:
mov eax, dword ptr [ebp-16]
add eax, 4294966826
cmp eax, 15
ja .L_02B3
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_02D9+eax*4-1880]
.L_02D9:
.int .L_02CC
.int .L_02CD
.int .L_02B6
.int .L_02CE
.int .L_02D3
.int .L_02B3
.int .L_02B3
.int .L_02B3
.int .L_02BD
.int .L_02BD
.int .L_02B3
.int .L_02B3
.int .L_02B3
.int .L_02B3
.int .L_02B3
.int .L_02D8
.L_02B3:
.L_02B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CFILEFUNCT, .-CFILEFUNCT
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
HFILECLOSE:
.type HFILECLOSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_012A:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_012D
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_012F
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_012E
.L_012F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_012E:
.L_012D:
.L_012C:
mov dword ptr [ebp-8], 0
.L_0130:
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0134
cmp dword ptr [ebp-8], 0
jne .L_0136
jmp .L_0135
.L_0136:
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0135:
.L_0134:
.L_0133:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call RTLFILECLOSE
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0138
jmp .L_012B
.L_0138:
.L_0137:
cmp dword ptr [ebp+8], 0
je .L_013A
jmp .L_0131
.L_013A:
.L_0139:
inc dword ptr [ebp-8]
.L_0132:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_0130
.L_0131:
cmp dword ptr [ebp+8], 0
je .L_013C
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_013E
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
jmp .L_013D
.L_013E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_013D:
.L_013C:
.L_013B:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILECLOSE, .-HFILECLOSE
.cfi_endproc
.balign 16
HFILEPUT:
.type HFILEPUT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_013F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 35
jne .L_0142
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0142:
.L_0141:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0144
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0146
mov dword ptr [ebp-4], 0
jmp .L_0140
.L_0146:
.L_0145:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_0144:
.L_0143:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0148
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0147
.L_0148:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0147:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_014A
mov dword ptr [ebp-12], 0
.L_014A:
.L_0149:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_014C
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_014B
.L_014C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_014B:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_014E
jmp .L_0140
.L_014E:
.L_014D:
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
je .L_0150
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push -1
push 14
call ERRREPORT
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0152
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0151
.L_0152:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_0151:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0140
.L_0150:
.L_014F:
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0154
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_0156
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-28], 0
je .L_0158
sub esp, 12
push dword ptr [ebp-28]
call SYMBISARRAY
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_015A
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 17
jne .L_015C
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_015E
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_015D
.L_015E:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_015D:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0140
.L_015C:
.L_015B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_015A:
.L_0159:
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0160
cmp dword ptr [ebp-24], 0
je .L_0162
sub esp, 4
push 0
push 0
push 277
call ERRREPORT
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0164
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-20], 0
.L_0164:
.L_0163:
jmp .L_0161
.L_0162:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 17
je .L_0168
.L_0169:
cmp dword ptr [ebp-32], 18
jne .L_0167
.L_0168:
sub esp, 4
push 0
push 0
push 277
call ERRREPORT
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_016B
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-20], 0
.L_016B:
.L_016A:
jmp .L_0165
.L_0167:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_016E
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
.L_016E:
.L_016D:
.L_016C:
.L_0165:
.L_0161:
cmp dword ptr [ebp-20], 0
je .L_0170
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
test ecx, ecx
je .L_0172
push 0
push 1
push 0
push 2
call ERRREPORTWARN
add esp, 16
.L_0172:
.L_0171:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp eax, 8
je .L_0174
sub esp, 12
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0176
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
.L_0176:
.L_0175:
.L_0174:
.L_0173:
.L_0170:
.L_016F:
jmp .L_015F
.L_0160:
mov dword ptr [ebp-20], 0
.L_015F:
cmp dword ptr [ebp-24], 0
jne .L_0178
sub esp, 12
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEPUT
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0177
.L_0178:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEPUTARRAY
add esp, 16
mov dword ptr [ebp-4], eax
.L_0177:
.L_0140:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILEPUT, .-HFILEPUT
.cfi_endproc
.balign 16
HFILEGET:
.type HFILEGET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0179:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 35
jne .L_017C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_017C:
.L_017B:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_017E
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0180
mov dword ptr [ebp-4], 0
jmp .L_017A
.L_0180:
.L_017F:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_017E:
.L_017D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0182
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0181
.L_0182:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0181:
call CEXPRESSION
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0184
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0183
.L_0184:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0183:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0186
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0188
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0187
.L_0188:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_0187:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017A
.L_0186:
.L_0185:
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_018A
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_018C
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_018E
sub esp, 12
push dword ptr [ebp-32]
call SYMBISARRAY
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0190
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_0192
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0194
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0193
.L_0194:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.L_0193:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_017A
.L_0192:
.L_0191:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0190:
.L_018F:
.L_018E:
.L_018D:
.L_018C:
.L_018B:
.L_018A:
.L_0189:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0196
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-28], 0
je .L_0198
cmp dword ptr [ebp-20], 0
je .L_019A
sub esp, 4
push 0
push 0
push 277
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-20], 0
.L_019A:
.L_0199:
jmp .L_0197
.L_0198:
cmp dword ptr [ebp-20], 0
je .L_019C
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .L_01A0
.L_01A1:
cmp dword ptr [ebp-36], 18
jne .L_019F
.L_01A0:
sub esp, 4
push 0
push 0
push 277
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-20], 0
jmp .L_019D
.L_019F:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .L_01A4
push 0
push 1
push 0
push 2
call ERRREPORTWARN
add esp, 16
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 8
je .L_01A6
sub esp, 12
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01A8
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A2:
.L_019D:
.L_019C:
.L_019B:
.L_0197:
jmp .L_0195
.L_0196:
mov dword ptr [ebp-20], 0
.L_0195:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01AA
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_01AC
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_01AE
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
and eax, 480
je .L_01AF
mov dword ptr [ebp-40], 24
jmp .L_02DD
.L_01AF:
mov eax, dword ptr [ebp-36]
and eax, 31
mov dword ptr [ebp-40], eax
.L_02DD:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [ENV+296]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-36]
and ebx, 480
je .L_01B1
mov dword ptr [ebp-44], 24
jmp .L_02DE
.L_01B1:
mov ebx, dword ptr [ebp-36]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_02DE:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
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
je .L_01B4
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.L_01B4:
.L_01B3:
.L_01AE:
.L_01AD:
jmp .L_01AB
.L_01AC:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.L_01AB:
jmp .L_01A9
.L_01AA:
mov dword ptr [ebp-24], 0
.L_01A9:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 512
test eax, eax
je .L_01B6
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
.L_01B6:
.L_01B5:
cmp dword ptr [ebp-24], 0
je .L_01B8
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_01BA
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
.L_01BA:
.L_01B9:
.L_01B8:
.L_01B7:
cmp dword ptr [ebp-28], 0
jne .L_01BC
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEGET
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01BB
.L_01BC:
sub esp, 12
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEGETARRAY
add esp, 32
mov dword ptr [ebp-4], eax
.L_01BB:
.L_017A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILEGET, .-HFILEGET
.cfi_endproc
.balign 16
HFILEOPEN:
.type HFILEOPEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_01BD:
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
cmp dword ptr [ENV+136], 3
je .L_01C0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_01C4
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C3
.L_01C5:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_01C7
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 1
.L_01C7:
.L_01C6:
jmp .L_01C1
.L_01C3:
push 4
push offset Lt_01C9
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01C8
.L_01CA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 2
jmp .L_01C1
.L_01C8:
push 5
push offset Lt_01CC
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01CB
.L_01CD:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_01CF
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 3
.L_01CF:
.L_01CE:
jmp .L_01C1
.L_01CB:
push 5
push offset Lt_01D1
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01D0
.L_01D2:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_01D4
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 4
.L_01D4:
.L_01D3:
jmp .L_01C1
.L_01D0:
push 4
push offset Lt_01D6
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01D5
.L_01D7:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_01D9
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 5
.L_01D9:
.L_01D8:
jmp .L_01C1
.L_01D5:
push 4
push offset Lt_01DB
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01DA
.L_01DC:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_01DE
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-56], 6
.L_01DE:
.L_01DD:
.L_01DA:
.L_01C1:
sub esp, 12
lea ebx, [ebp-68]
push ebx
call fb_StrDelete
add esp, 16
.L_01C0:
.L_01BF:
cmp dword ptr [ebp+8], 0
je .L_01E0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_01E2
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_01E1
.L_01E2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01E1:
.L_01E0:
.L_01DF:
cmp dword ptr [ENV+136], 3
jne .L_01E4
mov dword ptr [ebp-56], 7
.L_01E4:
.L_01E3:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-60], eax
jmp .L_01E6
.L_01E8:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01EA
jmp .L_01BE
.L_01EA:
.L_01E9:
cmp dword ptr [ebp+8], 0
je .L_01EC
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_01EC:
.L_01EB:
cmp dword ptr [ebp-56], 0
je .L_01EF
.L_01F0:
cmp dword ptr [ebp-56], 7
jne .L_01EE
.L_01EF:
cmp dword ptr [ebp+8], 0
je .L_01F2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 281
je .L_01F6
.L_01F7:
cmp dword ptr [ebp-64], 475
je .L_01F6
.L_01F8:
cmp dword ptr [ebp-64], 376
jne .L_01F5
.L_01F6:
jmp .L_01F3
.L_01F5:
mov dword ptr [ebp-36], -1
.L_01F9:
.L_01F3:
jmp .L_01F1
.L_01F2:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_01FB
mov dword ptr [ebp-36], -1
.L_01FB:
.L_01FA:
.L_01F1:
.L_01EE:
.L_01ED:
jmp .L_01E5
.L_01FC:
sub esp, 12
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_01E5
.L_01E6:
cmp dword ptr [ebp-60], 7
ja .L_01FC
mov eax, dword ptr [ebp-60]
jmp dword ptr [.L_01FD+eax*4]
.L_01FD:
.int .L_01E8
.int .L_01FC
.int .L_01FC
.int .L_01E8
.int .L_01FC
.int .L_01E8
.int .L_01E8
.int .L_01E8
.L_01E5:
cmp dword ptr [ebp-36], 0
je .L_01FF
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0201
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0203
mov dword ptr [ebp-4], 0
jmp .L_01BE
.L_0203:
.L_0202:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_0201:
.L_0200:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0205
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0204
.L_0205:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0204:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0207
jmp .L_01BE
.L_0207:
.L_0206:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0209
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_020B
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_020D
jmp .L_01BE
.L_020D:
.L_020C:
.L_020B:
.L_020A:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_020F
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0211
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0213
jmp .L_01BE
.L_0213:
.L_0212:
.L_0211:
.L_0210:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .L_0215
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0217
jmp .L_01BE
.L_0217:
.L_0216:
.L_0215:
.L_0214:
.L_020F:
.L_020E:
.L_0209:
.L_0208:
cmp dword ptr [ebp-28], 0
jne .L_0219
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.L_0219:
.L_0218:
cmp dword ptr [ebp-20], 0
jne .L_021B
sub esp, 12
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-20], eax
.L_021B:
.L_021A:
cmp dword ptr [ebp-24], 0
jne .L_021D
sub esp, 12
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-24], eax
.L_021D:
.L_021C:
cmp dword ptr [ebp+8], 0
je .L_021F
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0221
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
jmp .L_0220
.L_0221:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0220:
.L_021F:
.L_021E:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLFILEOPENSHORT
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_01BE
.L_01FF:
.L_01FE:
sub esp, 8
push 2048
push 281
call HMATCH
add esp, 16
test eax, eax
je .L_0223
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 32
push 6
push offset Lt_0227
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0226
.L_0228:
mov dword ptr [ebp-40], 2
jmp .L_0224
.L_0226:
push 7
push offset Lt_022A
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0229
.L_022B:
mov dword ptr [ebp-40], 3
jmp .L_0224
.L_0229:
push 7
push offset Lt_022D
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_022C
.L_022E:
mov dword ptr [ebp-40], 0
jmp .L_0224
.L_022C:
push 7
push offset Lt_0230
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_022F
.L_0231:
mov dword ptr [ebp-40], 1
jmp .L_0224
.L_022F:
push 7
push offset Lt_0233
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0232
.L_0234:
mov dword ptr [ebp-40], 4
jmp .L_0224
.L_0232:
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01BE
.L_0235:
.L_0224:
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_0222
.L_0223:
mov dword ptr [ebp-40], 1
.L_0222:
push 0
push 8
mov ebx, dword ptr [ebp-40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .L_0237
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_0237:
.L_0236:
mov dword ptr [ebp-32], 0
cmp dword ptr [ENV+136], 3
je .L_0239
cmp dword ptr [ebp-40], 2
je .L_023C
.L_023D:
cmp dword ptr [ebp-40], 3
je .L_023C
.L_023E:
cmp dword ptr [ebp-40], 4
jne .L_023B
.L_023C:
sub esp, 8
push 2048
push 484
call HMATCH
add esp, 16
test eax, eax
je .L_0240
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0242
jmp .L_01BE
.L_0242:
.L_0241:
cmp dword ptr [ebp+8], 0
je .L_0244
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_0244:
.L_0243:
.L_0240:
.L_023F:
.L_023B:
.L_023A:
.L_0239:
.L_0238:
sub esp, 8
push 2048
push offset Lt_0245
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_0247
sub esp, 8
push 2048
push offset Lt_0248
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_024A
mov dword ptr [ebp-44], 2
jmp .L_0249
.L_024A:
sub esp, 8
push 2048
push offset Lt_024C
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_024B
sub esp, 8
push 0
push 476
call HMATCH
add esp, 16
test eax, eax
je .L_024E
mov dword ptr [ebp-44], 3
jmp .L_024D
.L_024E:
mov dword ptr [ebp-44], 1
.L_024D:
.L_024B:
.L_0249:
jmp .L_0246
.L_0247:
mov dword ptr [ebp-44], 0
.L_0246:
push 0
push 8
mov ebx, dword ptr [ebp-44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+8], 0
je .L_0250
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_0250:
.L_024F:
sub esp, 8
push 2048
push 312
call HMATCH
add esp, 16
test eax, eax
je .L_0252
mov dword ptr [ebp-48], 0
jmp .L_0251
.L_0252:
sub esp, 8
push 2048
push offset Lt_0254
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_0253
sub esp, 8
push 2048
push offset Lt_0248
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_0256
mov dword ptr [ebp-48], 2
jmp .L_0255
.L_0256:
sub esp, 8
push 2048
push offset Lt_024C
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_0257
sub esp, 8
push 2048
push 476
call HMATCH
add esp, 16
test eax, eax
je .L_0259
mov dword ptr [ebp-48], 3
jmp .L_0258
.L_0259:
mov dword ptr [ebp-48], 1
.L_0258:
.L_0257:
.L_0255:
jmp .L_0251
.L_0253:
mov dword ptr [ebp-48], 0
.L_0251:
push 0
push 8
mov ebx, dword ptr [ebp-48]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+8], 0
je .L_025B
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_025B:
.L_025A:
sub esp, 8
push 2048
push 376
call HMATCH
add esp, 16
test eax, eax
jne .L_025D
sub esp, 4
push 0
push 0
push 5
call ERRREPORT
add esp, 16
.L_025D:
.L_025C:
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_025F
sub esp, 4
push 0
push 0
push 327
call ERRREPORT
add esp, 16
jmp .L_0261
mov dword ptr [ebp-4], 0
jmp .L_01BE
.L_0261:
.L_0260:
sub esp, 8
push 0
push 8
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-8], eax
.L_025F:
.L_025E:
cmp dword ptr [ebp+8], 0
je .L_0263
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
.L_0263:
.L_0262:
sub esp, 8
push 2048
push offset Lt_0264
call HMATCHIDORKW
add esp, 16
test eax, eax
je .L_0266
call CASSIGNTOKEN
test eax, eax
jne .L_0268
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_0267
.L_0268:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_026A
jmp .L_01BE
.L_026A:
.L_0269:
.L_0267:
jmp .L_0265
.L_0266:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.L_0265:
cmp dword ptr [ebp+8], 0
je .L_026C
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_026E
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
jmp .L_026D
.L_026E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_026D:
.L_026C:
.L_026B:
sub esp, 12
push dword ptr [ebp-56]
push dword ptr [ebp+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLFILEOPEN
add esp, 48
mov dword ptr [ebp-4], eax
.L_01BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILEOPEN, .-HFILEOPEN
.cfi_endproc
.balign 16
HFILERENAME:
.type HFILERENAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_026F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_0272
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_0274
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .L_0273
.L_0274:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0273:
jmp .L_0271
.L_0272:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
mov dword ptr [ebp-16], eax
.L_0271:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0276
jmp .L_0270
.L_0276:
.L_0275:
cmp dword ptr [ebp+8], 0
je .L_0278
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_027A
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .L_0279
.L_027A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0279:
jmp .L_0277
.L_0278:
sub esp, 8
push 2048
push 376
call HMATCH
add esp, 16
test eax, eax
jne .L_027C
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_027E
sub esp, 4
push 0
push 0
push 5
call ERRREPORT
add esp, 16
.L_027E:
.L_027D:
.L_027C:
.L_027B:
.L_0277:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0280
jmp .L_0270
.L_0280:
.L_027F:
mov eax, dword ptr [ebp-16]
or eax, dword ptr [ebp+8]
je .L_0282
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0284
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
jmp .L_0283
.L_0284:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0283:
.L_0282:
.L_0281:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call RTLFILERENAME
add esp, 16
mov dword ptr [ebp-4], eax
.L_0270:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFILERENAME, .-HFILERENAME
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_01C4:	.ascii	"CONS\0"
.balign 4
Lt_01C9:	.ascii	"ERR\0"
.balign 4
Lt_01CC:	.ascii	"PIPE\0"
.balign 4
Lt_01D1:	.ascii	"SCRN\0"
.balign 4
Lt_01D6:	.ascii	"LPT\0"
.balign 4
Lt_01DB:	.ascii	"COM\0"
.balign 4
Lt_0227:	.ascii	"INPUT\0"
.balign 4
Lt_022A:	.ascii	"OUTPUT\0"
.balign 4
Lt_022D:	.ascii	"BINARY\0"
.balign 4
Lt_0230:	.ascii	"RANDOM\0"
.balign 4
Lt_0233:	.ascii	"APPEND\0"
.balign 4
Lt_0245:	.ascii	"ACCESS\0"
.balign 4
Lt_0248:	.ascii	"WRITE\0"
.balign 4
Lt_024C:	.ascii	"READ\0"
.balign 4
Lt_0254:	.ascii	"LOCK\0"
.balign 4
Lt_0264:	.ascii	"LEN\0"
