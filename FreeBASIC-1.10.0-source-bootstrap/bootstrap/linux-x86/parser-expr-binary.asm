	.intel_syntax noprefix

.section .text
.balign 16

.globl CEXPRESSION
CEXPRESSION:
.type CEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [PARSER+152]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+152], 4
jmp .L_0069
.L_006A:
and dword ptr [PARSER+152], -5
.L_0069:
call CBOOLEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_006C
or dword ptr [PARSER+152], 4
jmp .L_006B
.L_006C:
and dword ptr [PARSER+152], -5
.L_006B:
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CEXPRESSION, .-CEXPRESSION
.cfi_endproc
.balign 16

.globl CEXPRESSIONWITHNIDXARRAY
CEXPRESSIONWITHNIDXARRAY:
.type CEXPRESSIONWITHNIDXARRAY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006E:
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
not eax
test eax, eax
je .L_0071
or dword ptr [PARSER+152], 2
jmp .L_0070
.L_0071:
and dword ptr [PARSER+152], -3
.L_0070:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_0073
or dword ptr [PARSER+152], 2
jmp .L_0072
.L_0073:
and dword ptr [PARSER+152], -3
.L_0072:
.L_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CEXPRESSIONWITHNIDXARRAY, .-CEXPRESSIONWITHNIDXARRAY
.cfi_endproc
.balign 16

.globl CBOOLEXPRESSION
CBOOLEXPRESSION:
.type CBOOLEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0075:
call CLOGEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0078
mov dword ptr [ebp-4], 0
jmp .L_0076
.L_0078:
.L_0077:
.L_0079:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_007D
.L_007F:
mov dword ptr [ebp-8], 36
jmp .L_007C
.L_0080:
mov dword ptr [ebp-8], 37
jmp .L_007C
.L_0081:
jmp .L_007A
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp-24]
add eax, 4294967006
cmp eax, 1
ja .L_0081
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0082+eax*4-1160]
.L_0082:
.int .L_007F
.int .L_0080
.L_007C:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_0084
jmp .L_007A
.L_0084:
.L_0083:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 16
call CLOGEXPRESSION
mov dword ptr [ebp-16], eax
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0086
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_007A
.L_0086:
.L_0085:
sub esp, 12
push 1
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0088
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.L_0088:
.L_0087:
.L_007B:
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CBOOLEXPRESSION, .-CBOOLEXPRESSION
.cfi_endproc
.balign 16

.globl CLOGEXPRESSION
CLOGEXPRESSION:
.type CLOGEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0089:
call CLOGOREXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_008C
mov dword ptr [ebp-4], 0
jmp .L_008A
.L_008C:
.L_008B:
.L_008D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0091
.L_0093:
mov dword ptr [ebp-8], 38
jmp .L_0090
.L_0094:
mov dword ptr [ebp-8], 39
jmp .L_0090
.L_0095:
mov dword ptr [ebp-8], 40
jmp .L_0090
.L_0096:
jmp .L_008E
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp-20]
add eax, 4294967004
cmp eax, 2
ja .L_0096
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0097+eax*4-1168]
.L_0097:
.int .L_0093
.int .L_0094
.int .L_0095
.L_0090:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_0099
jmp .L_008E
.L_0099:
.L_0098:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CLOGOREXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_009B
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_008E
.L_009B:
.L_009A:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_009D
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_009D:
.L_009C:
.L_008F:
jmp .L_008D
.L_008E:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLOGEXPRESSION, .-CLOGEXPRESSION
.cfi_endproc
.balign 16

.globl CLOGOREXPRESSION
CLOGOREXPRESSION:
.type CLOGOREXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_009E:
call CLOGANDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00A1
mov dword ptr [ebp-4], 0
jmp .L_009F
.L_00A1:
.L_00A0:
.L_00A2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 289
je .L_00A6
jmp .L_00A3
.L_00A6:
.L_00A5:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_00A8
jmp .L_00A3
.L_00A8:
.L_00A7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CLOGANDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AA
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_00A3
.L_00AA:
.L_00A9:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 35
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00AC
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00AC:
.L_00AB:
.L_00A4:
jmp .L_00A2
.L_00A3:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLOGOREXPRESSION, .-CLOGOREXPRESSION
.cfi_endproc
.balign 16

.globl CLOGANDEXPRESSION
CLOGANDEXPRESSION:
.type CLOGANDEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00AD:
call CRELEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00B0
mov dword ptr [ebp-4], 0
jmp .L_00AE
.L_00B0:
.L_00AF:
.L_00B1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 288
je .L_00B5
jmp .L_00B2
.L_00B5:
.L_00B4:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_00B7
jmp .L_00B2
.L_00B7:
.L_00B6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B9
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_00B2
.L_00B9:
.L_00B8:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 34
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00BB
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_00BB:
.L_00BA:
.L_00B3:
jmp .L_00B1
.L_00B2:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLOGANDEXPRESSION, .-CLOGANDEXPRESSION
.cfi_endproc
.balign 16

.globl CRELEXPRESSION
CRELEXPRESSION:
.type CRELEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00BC:
call CISEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00BF
mov dword ptr [ebp-4], 0
jmp .L_00BD
.L_00BF:
.L_00BE:
.L_00C0:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_00C4
.L_00C6:
mov eax, dword ptr [PARSER+148]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [PARSER+164], eax
mov eax, dword ptr [PARSER+152]
and eax, 256
test eax, eax
je .L_00C8
jmp .L_00C1
.L_00C8:
.L_00C7:
mov dword ptr [ebp-8], 45
jmp .L_00C3
.L_00C9:
mov eax, dword ptr [PARSER+152]
and eax, 512
test eax, eax
je .L_00CB
jmp .L_00C1
.L_00CB:
.L_00CA:
mov dword ptr [ebp-8], 46
jmp .L_00C3
.L_00CC:
mov dword ptr [ebp-8], 47
jmp .L_00C3
.L_00CD:
mov dword ptr [ebp-8], 48
jmp .L_00C3
.L_00CE:
mov dword ptr [ebp-8], 50
jmp .L_00C3
.L_00CF:
mov dword ptr [ebp-8], 49
jmp .L_00C3
.L_00D0:
jmp .L_00C1
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp-20]
add eax, 4294966997
cmp eax, 5
ja .L_00D0
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00D1+eax*4-1196]
.L_00D1:
.int .L_00C6
.int .L_00C9
.int .L_00CC
.int .L_00CD
.int .L_00CE
.int .L_00CF
.L_00C3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CISEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00D3
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_00C1
.L_00D3:
.L_00D2:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D5
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_00D5:
.L_00D4:
.L_00C2:
jmp .L_00C0
.L_00C1:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CRELEXPRESSION, .-CRELEXPRESSION
.cfi_endproc
.balign 16

.globl CISEXPRESSION
CISEXPRESSION:
.type CISEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00D7:
call CCATEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00DA
mov dword ptr [ebp-4], 0
jmp .L_00D8
.L_00DA:
.L_00D9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 272
je .L_00DC
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D8
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_00DE
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_00E0
sub esp, 4
push 0
push 0
push 297
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00E0:
.L_00DF:
jmp .L_00DD
.L_00DE:
sub esp, 4
push 0
push 0
push 299
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00DD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
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
add esp, 32
test eax, eax
jne .L_00E4
mov dword ptr [ebp-4], 0
jmp .L_00D8
.L_00E4:
.L_00E3:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .L_00E6
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .L_00E8
sub esp, 4
push 0
push 0
push 297
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00D8
jmp .L_00E7
.L_00E8:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jne .L_00E9
sub esp, 4
push 0
push 0
push 298
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00D8
.L_00E9:
.L_00E7:
jmp .L_00E5
.L_00E6:
sub esp, 4
push 0
push 0
push 299
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00D8
.L_00E5:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+152]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-32], eax
sub esp, 12
push 1
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push 51
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00EB
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_00EB:
.L_00EA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CISEXPRESSION, .-CISEXPRESSION
.cfi_endproc
.balign 16

.globl CCATEXPRESSION
CCATEXPRESSION:
.type CCATEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00EC:
call CADDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00EF
mov dword ptr [ebp-4], 0
jmp .L_00ED
.L_00EF:
.L_00EE:
.L_00F0:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 38
je .L_00F4
jmp .L_00F1
.L_00F4:
.L_00F3:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_00F6
jmp .L_00F1
.L_00F6:
.L_00F5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CADDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F8
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_00F1
.L_00F8:
.L_00F7:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 44
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FA
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-12], eax
.L_00FA:
.L_00F9:
.L_00F2:
jmp .L_00F0
.L_00F1:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CCATEXPRESSION, .-CCATEXPRESSION
.cfi_endproc
.balign 16

.globl CADDEXPRESSION
CADDEXPRESSION:
.type CADDEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_00FB:
call CSHIFTEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00FE
mov dword ptr [ebp-4], 0
jmp .L_00FC
.L_00FE:
.L_00FD:
.L_00FF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 43
jne .L_0104
.L_0105:
mov dword ptr [ebp-8], 28
jmp .L_0102
.L_0104:
cmp dword ptr [ebp-20], 45
jne .L_0106
.L_0107:
mov dword ptr [ebp-8], 29
jmp .L_0102
.L_0106:
jmp .L_0100
.L_0108:
.L_0102:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_010A
jmp .L_0100
.L_010A:
.L_0109:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CSHIFTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_010C
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0100
.L_010C:
.L_010B:
sub esp, 12
push 7
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_010E
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_010E:
.L_010D:
.L_0101:
jmp .L_00FF
.L_0100:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_00FC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CADDEXPRESSION, .-CADDEXPRESSION
.cfi_endproc
.balign 16

.globl CSHIFTEXPRESSION
CSHIFTEXPRESSION:
.type CSHIFTEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_010F:
call CMODEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0112
mov dword ptr [ebp-4], 0
jmp .L_0110
.L_0112:
.L_0111:
.L_0113:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 297
jne .L_0118
.L_0119:
mov dword ptr [ebp-8], 41
jmp .L_0116
.L_0118:
cmp dword ptr [ebp-20], 298
jne .L_011A
.L_011B:
mov dword ptr [ebp-8], 42
jmp .L_0116
.L_011A:
jmp .L_0114
.L_011C:
.L_0116:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_011E
jmp .L_0114
.L_011E:
.L_011D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CMODEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0120
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0114
.L_0120:
.L_011F:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0122
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_0122:
.L_0121:
.L_0115:
jmp .L_0113
.L_0114:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0110:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSHIFTEXPRESSION, .-CSHIFTEXPRESSION
.cfi_endproc
.balign 16

.globl CMODEXPRESSION
CMODEXPRESSION:
.type CMODEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0123:
call CINTDIVEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0126
mov dword ptr [ebp-4], 0
jmp .L_0124
.L_0126:
.L_0125:
.L_0127:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 296
je .L_012B
jmp .L_0128
.L_012B:
.L_012A:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_012D
jmp .L_0128
.L_012D:
.L_012C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CINTDIVEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_012F
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0128
.L_012F:
.L_012E:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 33
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0131
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0131:
.L_0130:
.L_0129:
jmp .L_0127
.L_0128:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0124:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMODEXPRESSION, .-CMODEXPRESSION
.cfi_endproc
.balign 16

.globl CINTDIVEXPRESSION
CINTDIVEXPRESSION:
.type CINTDIVEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0132:
call CMULTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0135
mov dword ptr [ebp-4], 0
jmp .L_0133
.L_0135:
.L_0134:
.L_0136:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 92
je .L_013A
jmp .L_0137
.L_013A:
.L_0139:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_013C
jmp .L_0137
.L_013C:
.L_013B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CMULTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_013E
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0137
.L_013E:
.L_013D:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 32
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0140
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0140:
.L_013F:
.L_0138:
jmp .L_0136
.L_0137:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0133:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CINTDIVEXPRESSION, .-CINTDIVEXPRESSION
.cfi_endproc
.balign 16

.globl CMULTEXPRESSION
CMULTEXPRESSION:
.type CMULTEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0141:
call CEXPEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0144
mov dword ptr [ebp-4], 0
jmp .L_0142
.L_0144:
.L_0143:
.L_0145:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 42
jne .L_014A
.L_014B:
mov dword ptr [ebp-8], 30
jmp .L_0148
.L_014A:
cmp dword ptr [ebp-20], 47
jne .L_014C
.L_014D:
mov dword ptr [ebp-8], 31
jmp .L_0148
.L_014C:
jmp .L_0146
.L_014E:
.L_0148:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_0150
jmp .L_0146
.L_0150:
.L_014F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0152
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_0146
.L_0152:
.L_0151:
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0154
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.L_0154:
.L_0153:
.L_0147:
jmp .L_0145
.L_0146:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0142:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMULTEXPRESSION, .-CMULTEXPRESSION
.cfi_endproc
.balign 16

.globl CEXPEXPRESSION
CEXPEXPRESSION:
.type CEXPEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0155:
call CNEGNOTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0158
mov dword ptr [ebp-4], 0
jmp .L_0156
.L_0158:
.L_0157:
.L_0159:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 94
je .L_015D
jmp .L_015A
.L_015D:
.L_015C:
sub esp, 12
sub esp, 12
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 20
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_015F
jmp .L_015A
.L_015F:
.L_015E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CNEGNOTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0161
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .L_015A
.L_0161:
.L_0160:
sub esp, 12
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 43
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0163
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
sub esp, 4
push 16
push dword ptr [Lt_0164+4]
push dword ptr [Lt_0164]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-12], eax
.L_0163:
.L_0162:
.L_015B:
jmp .L_0159
.L_015A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CEXPEXPRESSION, .-CEXPEXPRESSION
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 8
Lt_0164:	.quad	0x0000000000000000
