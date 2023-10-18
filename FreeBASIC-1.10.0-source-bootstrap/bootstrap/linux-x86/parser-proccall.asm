	.intel_syntax noprefix

.section .text
.balign 16

.globl CBYDESCARRAYARGPARENS
CBYDESCARRAYARGPARENS:
.type CBYDESCARRAYARGPARENS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_006A
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_006C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_006E
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBISARRAY
add esp, 16
test eax, eax
je .L_0070
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 3
.L_0070:
.L_006F:
.L_006E:
.L_006D:
.L_006C:
.L_006B:
.L_006A:
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CBYDESCARRAYARGPARENS, .-CBYDESCARRAYARGPARENS
.cfi_endproc
.balign 16

.globl CASSIGNFUNCTRESULT
CASSIGNFUNCTRESULT:
.type CASSIGNFUNCTRESULT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0071:
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [PARSER+108]
call SYMBGETPROCRESULT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0074
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0074:
.L_0073:
sub esp, 12
push dword ptr [PARSER+108]
call SYMBHASCTOR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [PARSER+108]
call SYMBHASDEFCTOR
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp+8], 0
je .L_0076
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 2
test ebx, ebx
je .L_0078
mov ebx, dword ptr [ebp-36]
not ebx
and ebx, dword ptr [ebp-28]
je .L_007A
sub esp, 4
push 0
push 0
push 178
call ERRREPORT
add esp, 16
.L_007A:
.L_0079:
.L_0078:
.L_0077:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+112]
or dword ptr [eax+48], 1
jmp .L_0075
.L_0076:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .L_007C
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp-28]
je .L_007E
sub esp, 4
push 0
push 0
push 179
call ERRREPORT
add esp, 16
.L_007E:
.L_007D:
.L_007C:
.L_007B:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 2
.L_0075:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+32]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [PARSER+156], ebx
sub esp, 8
push 0
push 319
call HMATCH
add esp, 16
not eax
and eax, dword ptr [ebp-36]
je .L_0080
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0082
sub esp, 12
push dword ptr [ebp-16]
call ASTISACCESSTOLOCAL
add esp, 16
test eax, eax
je .L_0084
sub esp, 4
push 0
push 0
push 272
call ERRREPORT
add esp, 16
.L_0084:
.L_0083:
sub esp, 4
push dword ptr [ebp-16]
mov eax, dword ptr [PARSER+108]
push dword ptr [eax+32]
mov eax, dword ptr [PARSER+108]
push dword ptr [eax+28]
call ASTCHECKBYREFASSIGN
add esp, 16
test eax, eax
je .L_0086
sub esp, 12
push dword ptr [ebp-16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_0085
.L_0086:
sub esp, 4
push 0
push 0
push 318
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 8
mov eax, dword ptr [PARSER+108]
push dword ptr [eax+32]
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [PARSER+108]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-16], eax
.L_0085:
.L_0082:
.L_0081:
jmp .L_007F
.L_0080:
call CEXPRESSION
mov dword ptr [ebp-16], eax
.L_007F:
mov dword ptr [PARSER+160], 0
mov dword ptr [PARSER+156], -2147483648
cmp dword ptr [ebp-16], 0
jne .L_0088
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0088:
.L_0087:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp+8]
je .L_008A
cmp dword ptr [ebp-24], 0
je .L_008C
lea eax, [ebp-40]
push eax
sub esp, 8
push dword ptr [ebp-16]
call CBYDESCARRAYARGPARENS
add esp, 12
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_008E
jmp .L_0072
.L_008E:
.L_008D:
cmp dword ptr [ebp-40], 0
je .L_0090
sub esp, 12
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call ASTBUILDPROCRESULTVAR
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTPATCHCTORCALL
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0090:
.L_008F:
.L_008C:
.L_008B:
mov dword ptr [ebp-32], 64
.L_008A:
.L_0089:
sub esp, 4
push dword ptr [ebp-32]
push dword ptr [ebp-16]
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call ASTBUILDPROCRESULTVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0092
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 181
call ERRREPORT
add esp, 16
jmp .L_0091
.L_0092:
sub esp, 12
push dword ptr [ebp-20]
call ASTADD
add esp, 16
.L_0091:
mov dword ptr [ebp-4], -1
.L_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASSIGNFUNCTRESULT, .-CASSIGNFUNCTRESULT
.cfi_endproc
.balign 16

.globl HMETHODCALLADDINSTPTROVLARG
HMETHODCALLADDINSTPTROVLARG:
.type HMETHODCALLADDINSTPTROVLARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0094:
cmp dword ptr [ebp+12], 0
jne .L_0097
jmp .L_0095
.L_0097:
.L_0096:
sub esp, 4
push 0
push dword ptr [ebp+16]
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
je .L_0099
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
.L_0099:
.L_0098:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_009A
mov dword ptr [ebp-12], 1
jmp .L_009C
.L_009A:
mov dword ptr [ebp-12], -1
.L_009C:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+20]
or dword ptr [eax], 64
.L_0095:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMETHODCALLADDINSTPTROVLARG, .-HMETHODCALLADDINSTPTROVLARG
.cfi_endproc
.balign 16

.globl CMAYBEIGNORECALLRESULT
CMAYBEIGNORECALLRESULT:
.type CMAYBEIGNORECALLRESULT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A8:
sub esp, 12
push dword ptr [ebp+8]
call ASTSKIPCASTS
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_00AB
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVECASTS
add esp, 4
push eax
call ASTIGNORECALLRESULT
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00AA
.L_00AB:
sub esp, 12
push dword ptr [ebp-8]
call ASTISBYREFRESULTDEREF
add esp, 16
mov ebx, eax
call HLOOKSLIKEENDOFSTATEMENT
and ebx, eax
je .L_00AC
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVECASTS
add esp, 4
push eax
call ASTREMOVEBYREFRESULTDEREF
add esp, 4
push eax
call ASTIGNORECALLRESULT
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00AA
.L_00AC:
mov dword ptr [ebp-4], 0
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CMAYBEIGNORECALLRESULT, .-CMAYBEIGNORECALLRESULT
.cfi_endproc
.balign 16

.globl CPROCCALL
CPROCCALL:
.type CPROCCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00AD:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp+28]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00B0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_00B2
mov dword ptr [ebp-28], -1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00B4
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-32], eax
.L_00B4:
.L_00B3:
sub esp, 4
push 0
lea eax, [ebp-24]
push eax
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebx+4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_00B6
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
jmp .L_00B5
.L_00B6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00B5:
.L_00B2:
.L_00B1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_00B8
cmp dword ptr [ebp-28], 0
je .L_00BA
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 1024
test ebx, ebx
jne .L_00BC
sub esp, 4
push 0
push -1
push 197
call ERRREPORT
add esp, 16
jmp .L_00AE
.L_00BC:
.L_00BB:
jmp .L_00B9
.L_00BA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 256
test eax, eax
jne .L_00BE
sub esp, 4
push 0
push 0
push 195
call ERRREPORT
add esp, 16
jmp .L_00AE
.L_00BE:
.L_00BD:
.L_00B9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -1
jmp .L_00B7
.L_00B8:
or dword ptr [ebp+28], 128
cmp dword ptr [ebp-28], 0
je .L_00C0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .L_00C2
sub esp, 4
push 0
push -1
push 196
call ERRREPORT
add esp, 16
jmp .L_00AE
.L_00C2:
.L_00C1:
jmp .L_00BF
.L_00C0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 128
test eax, eax
jne .L_00C4
sub esp, 4
push 0
push 0
push 194
call ERRREPORT
add esp, 16
jmp .L_00AE
.L_00C4:
.L_00C3:
.L_00BF:
.L_00B7:
mov dword ptr [ebp+24], 0
jmp .L_00AF
.L_00B0:
cmp dword ptr [ebp+24], -1
jne .L_00C6
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00C8
mov dword ptr [ebp+24], 0
.L_00C8:
.L_00C7:
jmp .L_00C5
.L_00C6:
cmp dword ptr [ebp+16], 0
je .L_00C9
mov dword ptr [ebp+24], -1
.L_00C9:
.L_00C5:
.L_00AF:
cmp dword ptr [ebp+24], 0
je .L_00CB
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .L_00CD
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.L_00CD:
.L_00CC:
.L_00CB:
.L_00CA:
mov dword ptr [PARSER+148], 0
mov eax, dword ptr [ebp+24]
not eax
test eax, eax
je .L_00CF
or dword ptr [PARSER+152], 1
jmp .L_00CE
.L_00CF:
and dword ptr [PARSER+152], -2
.L_00CE:
sub esp, 12
push dword ptr [ebp+28]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 32
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+148]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+24]
je .L_00D1
dec dword ptr [PARSER+148]
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .L_00D3
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
jmp .L_00D2
.L_00D3:
cmp dword ptr [PARSER+148], 0
jle .L_00D4
.L_00D5:
cmp dword ptr [PARSER+148], 0
jle .L_00D6
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
dec dword ptr [PARSER+148]
jmp .L_00D5
.L_00D6:
.L_00D4:
.L_00D2:
.L_00D1:
.L_00D0:
jmp .L_00D8
or dword ptr [PARSER+152], 1
jmp .L_00D7
.L_00D8:
and dword ptr [PARSER+152], -2
.L_00D7:
cmp dword ptr [ebp-8], 0
jne .L_00DA
sub esp, 12
push dword ptr [ebp-12]
call ASTBUILDBYREFRESULTDEREF
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DC
jmp .L_00AE
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
sub esp, 12
push dword ptr [ebp-12]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
je .L_00DE
mov dword ptr [ebp-4], 0
jmp .L_00DD
.L_00DE:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00DD:
.L_00AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCCALL, .-CPROCCALL
.cfi_endproc
.balign 16

.globl CPROCCALLORASSIGN
CPROCCALLORASSIGN:
.type CPROCCALLORASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0161:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+136], 3
jne .L_0164
call HPROCCALLORASSIGN_QB
mov dword ptr [ebp-4], eax
jmp .L_0162
.L_0164:
.L_0163:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0166
.L_0168:
sub esp, 8
push 50
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
jmp .L_0165
.L_0169:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_016B
.L_016D:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_016F
sub esp, 4
push 0
push 0
push 254
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_016F:
.L_016E:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0171
sub esp, 4
push 0
push 0
push 157
call ERRREPORT
add esp, 16
jmp .L_0170
.L_0171:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .L_0172
sub esp, 4
push 0
push 0
push 192
call ERRREPORT
add esp, 16
.L_0172:
.L_0170:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
jmp .L_016A
.L_0173:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
jne .L_0175
sub esp, 4
push 0
push 0
push 144
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_0175:
.L_0174:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
jmp .L_016A
.L_0176:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0178
sub esp, 4
push 0
push 0
push 193
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
jmp .L_0177
.L_0178:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
jne .L_017A
sub esp, 4
push 0
push 0
push 193
call ERRREPORT
add esp, 16
.L_017A:
.L_0179:
.L_0177:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
jmp .L_016A
.L_017B:
call HCTORCHAIN
mov dword ptr [ebp-4], -1
jmp .L_0162
jmp .L_016A
.L_017C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_017E
call HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .L_0162
jmp .L_017D
.L_017E:
call HBASEINIT
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_017D:
jmp .L_016A
.L_017F:
mov eax, dword ptr [ENV+1040]
and eax, 131072
test eax, eax
jne .L_0181
sub esp, 4
push 0
push 146
push 131072
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_0181:
.L_0180:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0183
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_0183:
.L_0182:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 34
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0185
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
.L_0185:
.L_0184:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0162
jmp .L_016A
.L_016B:
mov eax, dword ptr [ebp-24]
add eax, 4294966950
cmp eax, 49
ja .L_016A
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_0186+eax*4-1384]
.L_0186:
.int .L_016D
.int .L_017B
.int .L_016A
.int .L_0173
.int .L_0176
.int .L_016A
.int .L_016A
.int .L_017C
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_016A
.int .L_017F
.L_016A:
jmp .L_0165
.L_0187:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 390
jne .L_0189
call COPERATORDELETE
mov dword ptr [ebp-4], -1
jmp .L_0162
.L_0189:
.L_0188:
jmp .L_0165
.L_018A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_018C
cmp dword ptr [PARSER+52], 0
je .L_018E
sub esp, 8
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
je .L_0190
sub esp, 12
mov eax, dword ptr [PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call CWITHVARIABLE
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0192
jmp .L_0162
.L_0192:
.L_0191:
sub esp, 12
push dword ptr [ebp-16]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
.L_0190:
.L_018F:
.L_018E:
.L_018D:
sub esp, 8
push 50
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0194
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0162
.L_0194:
.L_0193:
.L_018C:
.L_018B:
jmp .L_0165
.L_0166:
cmp dword ptr [ebp-20], 6
ja .L_0165
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0195+eax*4]
.L_0195:
.int .L_0168
.int .L_0169
.int .L_0168
.int .L_0165
.int .L_0165
.int .L_0187
.int .L_018A
.L_0165:
.L_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPROCCALLORASSIGN, .-CPROCCALLORASSIGN
.cfi_endproc
.balign 16

.globl HFORWARDCALL
HFORWARDCALL:
.type HFORWARDCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_01B4:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_01B8
.L_01B9:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_01BB
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_01BD
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_01BF
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_01BF:
.L_01BE:
.L_01BD:
.L_01BC:
.L_01BB:
.L_01BA:
jmp .L_01B6
.L_01B8:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 40
call HSKIPUNTIL
add esp, 16
jmp .L_01B5
.L_01C0:
.L_01B6:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .L_01C2
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_01C2:
.L_01C1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_01C4
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-24], -1
.L_01C4:
.L_01C3:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.L_01C5:
call CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_01C9
jmp .L_01C6
.L_01C9:
.L_01C8:
mov dword ptr [ebp-44], 2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_01CB
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .L_01CD
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-44], 3
.L_01CD:
.L_01CC:
.L_01CB:
.L_01CA:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-60], ebx
cmp dword ptr [ebp-60], 17
je .L_01D1
.L_01D2:
cmp dword ptr [ebp-60], 18
je .L_01D1
.L_01D3:
cmp dword ptr [ebp-60], 4
je .L_01D1
.L_01D4:
cmp dword ptr [ebp-60], 7
jne .L_01D0
.L_01D1:
mov dword ptr [ebp-48], 17
.L_01D0:
.L_01CE:
push 0
push 0
push dword ptr [ebp-44]
cmp dword ptr [ebp-44], 3
jne .L_01D5
mov dword ptr [ebp-52], -1
jmp .L_01E1
.L_01D5:
mov dword ptr [ebp-52], 0
.L_01E1:
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-48]
push 0
push dword ptr [ebp-20]
call SYMBADDPROCPARAM
add esp, 32
test eax, eax
jne .L_01D8
jmp .L_01C6
.L_01D8:
.L_01D7:
sub esp, 4
push 0
lea eax, [ebp-36]
push eax
lea eax, [PARSER+116]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [ebp-40]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebx+4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_01DA
jmp .L_01C6
.L_01DA:
.L_01D9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01C7:
jmp .L_01C5
.L_01C6:
cmp dword ptr [ebp-24], 0
je .L_01DC
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_01DE
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
jmp .L_01DD
.L_01DE:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_01DD:
.L_01DC:
.L_01DB:
sub esp, 12
push 0
push dword ptr [ENV+276]
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01E0
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01B5
.L_01E0:
.L_01DF:
sub esp, 12
push 32
lea eax, [ebp-36]
push eax
push 0
push dword ptr [ebp-20]
push 0
call CPROCARGLIST
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_01B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFORWARDCALL, .-HFORWARDCALL
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
HLOOKSLIKEENDOFSTATEMENT:
.type HLOOKSLIKEENDOFSTATEMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .L_00A2
.L_00A3:
cmp dword ptr [ebp-8], 257
je .L_00A2
.L_00A4:
cmp dword ptr [ebp-8], 256
je .L_00A2
.L_00A5:
cmp dword ptr [ebp-8], 259
je .L_00A2
.L_00A6:
cmp dword ptr [ebp-8], 260
jne .L_00A1
.L_00A2:
mov dword ptr [ebp-4], -1
jmp .L_009F
.L_00A1:
mov dword ptr [ebp-4], 0
.L_00A7:
.L_009F:
.L_009E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOOKSLIKEENDOFSTATEMENT, .-HLOOKSLIKEENDOFSTATEMENT
.cfi_endproc
.balign 16
HPROCSYMBOL:
.type HPROCSYMBOL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
mov dword ptr [ebp-4], 0
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00E3
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E1
.L_00E3:
.L_00E2:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
not eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00E7
mov dword ptr [ebp-8], -1
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .L_00E9
mov eax, dword ptr [PARSER+108]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
jne .L_00EB
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [PARSER+108]
call SYMBISPROCOVERLOADOF
add esp, 16
test eax, eax
je .L_00ED
mov dword ptr [ebp-8], 0
.L_00ED:
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E4:
cmp dword ptr [ebp-8], 0
je .L_00EF
sub esp, 8
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCCALL
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00F1
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENT
add esp, 16
.L_00F1:
.L_00F0:
mov dword ptr [ebp-4], -1
jmp .L_00E1
.L_00EF:
.L_00EE:
cmp dword ptr [ebp+16], 0
je .L_00F3
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E1
.L_00F3:
.L_00F2:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [PARSER+108]
call SYMBISPROCOVERLOADOF
add esp, 16
test eax, eax
jne .L_00F5
sub esp, 4
push 0
push 0
push 317
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E1
.L_00F5:
.L_00F4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPROCSYMBOL, .-HPROCSYMBOL
.cfi_endproc
.balign 16
HVARSYMBOL:
.type HVARSYMBOL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F6:
mov dword ptr [ebp-4], 0
sub esp, 8
push -1
push dword ptr [ebp+8]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F9
jmp .L_00F7
.L_00F9:
.L_00F8:
cmp dword ptr [ebp+12], 0
je .L_00FB
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
je .L_00FD
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00F7
.L_00FD:
.L_00FC:
.L_00FB:
.L_00FA:
sub esp, 12
push dword ptr [ebp-8]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
.L_00F7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVARSYMBOL, .-HVARSYMBOL
.cfi_endproc
.balign 16
HMATCHESDEFDTYPE:
.type HMATCHESDEFDTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00FE:
cmp dword ptr [ebp+12], 17
jne .L_0101
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
je .L_0105
.L_0106:
cmp dword ptr [ebp-8], 18
je .L_0105
.L_0107:
cmp dword ptr [ebp-8], 4
jne .L_0104
.L_0105:
mov dword ptr [ebp-4], -1
jmp .L_0102
.L_0104:
mov dword ptr [ebp-4], 0
.L_0108:
.L_0102:
jmp .L_0100
.L_0101:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCHESDEFDTYPE, .-HMATCHESDEFDTYPE
.cfi_endproc
.balign 16
HASSIGNORCALL_QB:
.type HASSIGNORCALL_QB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0109:
mov dword ptr [ebp-4], 0
call LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-16], eax
.L_010B:
cmp dword ptr [ebp+8], 0
je .L_010C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .L_010E
.L_010F:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_0113
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .L_0115
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HMATCHESDEFDTYPE
add esp, 16
mov dword ptr [ebp-28], eax
.L_0115:
.L_0114:
.L_0113:
.L_0112:
cmp dword ptr [ebp-28], 0
je .L_0117
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .L_0119
.L_011B:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_011D
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.L_011D:
.L_011C:
cmp dword ptr [ebp-28], 0
je .L_011F
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010A
.L_011F:
.L_011E:
jmp .L_0118
.L_0120:
cmp dword ptr [ebp-24], 0
jne .L_0122
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .L_0124
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_0124:
.L_0123:
.L_0122:
.L_0121:
jmp .L_0118
.L_0125:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .L_0127
sub esp, 12
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010A
.L_0127:
.L_0126:
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_0118
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_0128+eax*4-4]
.L_0128:
.int .L_0120
.int .L_0118
.int .L_011B
.int .L_0118
.int .L_0118
.int .L_0125
.L_0118:
.L_0117:
.L_0116:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_0111:
cmp dword ptr [ebp-20], 0
jne .L_010F
.L_0110:
jmp .L_010D
.L_010E:
.L_0129:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call HMATCHESDEFDTYPE
add esp, 16
test eax, eax
je .L_012D
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_012F
.L_0131:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010A
jmp .L_012E
.L_0132:
cmp dword ptr [ebp-24], 0
jne .L_0134
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .L_0136
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_0136:
.L_0135:
.L_0134:
.L_0133:
jmp .L_012E
.L_0137:
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010A
jmp .L_012E
.L_012F:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 5
ja .L_012E
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_0138+eax*4-4]
.L_0138:
.int .L_0132
.int .L_012E
.int .L_0131
.int .L_012E
.int .L_012E
.int .L_0137
.L_012E:
.L_012D:
.L_012C:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_012B:
cmp dword ptr [ebp-20], 0
jne .L_0129
.L_012A:
.L_010D:
cmp dword ptr [ebp-24], 0
je .L_013A
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-24]
call HVARSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010A
.L_013A:
.L_0139:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_010B
.L_010C:
.L_010A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSIGNORCALL_QB, .-HASSIGNORCALL_QB
.cfi_endproc
.balign 16
HASSIGNORPTRCALL:
.type HASSIGNORPTRCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_013B:
cmp dword ptr [ebp+8], 0
jne .L_013E
jmp .L_013C
.L_013E:
.L_013D:
cmp dword ptr [ebp+12], 0
je .L_0140
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .L_0142
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_013C
.L_0142:
.L_0141:
.L_0140:
.L_013F:
sub esp, 12
push dword ptr [ebp+8]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
.L_013C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSIGNORPTRCALL, .-HASSIGNORPTRCALL
.cfi_endproc
.balign 16
HASSIGNORCALL:
.type HASSIGNORCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
mov dword ptr [ebp-4], 0
.L_0145:
cmp dword ptr [ebp+12], 0
je .L_0146
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0147:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_014B
.L_014D:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0144
jmp .L_014A
.L_014E:
sub esp, 8
push dword ptr [ebp+16]
sub esp, 12
push -1
push dword ptr [ebp+12]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 20
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0144
jmp .L_014A
.L_014F:
sub esp, 8
push dword ptr [ebp+16]
sub esp, 4
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CIMPLICITDATAMEMBER
add esp, 20
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0144
jmp .L_014A
.L_0150:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call CCONSTANT
add esp, 4
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0144
jmp .L_014A
.L_0151:
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0144
jmp .L_014A
.L_014B:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 11
ja .L_014A
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0152+eax*4-4]
.L_0152:
.int .L_014E
.int .L_0150
.int .L_014D
.int .L_014A
.int .L_014A
.int .L_0151
.int .L_014A
.int .L_014A
.int .L_014A
.int .L_014A
.int .L_014A
.int .L_014F
.L_014A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_0149:
cmp dword ptr [ebp-8], 0
jne .L_0147
.L_0148:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
jmp .L_0145
.L_0146:
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSIGNORCALL, .-HASSIGNORCALL
.cfi_endproc
.balign 16
HPROCCALLORASSIGN_QB:
.type HPROCCALLORASSIGN_QB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0153:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0156
.L_0158:
sub esp, 8
push 0
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0154
jmp .L_0155
.L_0159:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 395
je .L_015B
sub esp, 8
push 0
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0154
.L_015B:
.L_015A:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_015D
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0154
.L_015D:
.L_015C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .L_015F
call HFORWARDCALL
mov dword ptr [ebp-4], eax
jmp .L_0154
jmp .L_015E
.L_015F:
sub esp, 8
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0154
.L_015E:
jmp .L_0155
.L_0156:
cmp dword ptr [ebp-8], 5
ja .L_0155
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0160+eax*4]
.L_0160:
.int .L_0158
.int .L_0159
.int .L_0158
.int .L_0155
.int .L_0155
.int .L_0158
.L_0155:
.L_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPROCCALLORASSIGN_QB, .-HPROCCALLORASSIGN_QB
.cfi_endproc
.balign 16
HCTORCHAIN:
.type HCTORCHAIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0197:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_019A
sub esp, 4
push 0
push 0
push 165
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0198
.L_019A:
.L_0199:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
sub esp, 12
push dword ptr [AST+40]
call ASTFINDFIRSTCODE
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_019C
sub esp, 4
push 0
push 0
push 169
call ERRREPORT
add esp, 16
.L_019C:
.L_019B:
mov eax, dword ptr [PARSER+108]
or dword ptr [eax+12], 4
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
sub esp, 4
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 8
push eax
push 0
call CPROCCALL
add esp, 32
.L_0198:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCTORCHAIN, .-HCTORCHAIN
.cfi_endproc
.balign 16
HBASEINIT:
.type HBASEINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_019D:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_01A0
sub esp, 4
push 0
push 0
push 165
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_019E
.L_01A0:
.L_019F:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01A2
sub esp, 4
push 0
push 0
push 295
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_019E
.L_01A2:
.L_01A1:
sub esp, 12
push dword ptr [AST+40]
call ASTFINDFIRSTCODE
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+108]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01A4
sub esp, 4
push 0
push 0
push 170
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_019E
.L_01A4:
.L_01A3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .L_01A6
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTCALLCTORTOCALL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
push 0
push -1
push dword ptr [ebp-12]
push 20
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call ASTTYPEINIADDCTORCALL
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-16]
call ASTTYPEINIEND
add esp, 16
jmp .L_01A5
.L_01A6:
push 0
push -2147483648
push 1
push dword ptr [ebp-8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-16], eax
.L_01A5:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+64], eax
.L_019E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBASEINIT, .-HBASEINIT
.cfi_endproc
.balign 16
HBASEMEMBERACCESS:
.type HBASEMEMBERACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_01A7:
mov eax, dword ptr [PARSER+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_01AA
sub esp, 4
push 0
push 0
push 294
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_01A8
.L_01AA:
.L_01A9:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_01AB:
cmp dword ptr [ebp-16], 0
jne .L_01AF
sub esp, 4
push 0
push 0
push 295
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_01A8
.L_01AF:
.L_01AE:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 353
je .L_01B1
jmp .L_01AC
.L_01B1:
.L_01B0:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
je .L_01B3
sub esp, 4
push 0
push 0
push 120
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_01A8
.L_01B3:
.L_01B2:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_01AD:
jmp .L_01AB
.L_01AC:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 2048
push 0
lea eax, [ebp-40]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBASEMEMBERACCESS, .-HBASEMEMBERACCESS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
