	.intel_syntax noprefix

.section .text
.balign 16

.globl _CBYDESCARRAYARGPARENS
_CBYDESCARRAYARGPARENS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0068:
mov dword ptr [ebp-4], -1
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_006B
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .L_006D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_006F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBISARRAY
add esp, 4
test eax, eax
je .L_0071
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 3
.L_0071:
.L_0070:
.L_006F:
.L_006E:
.L_006D:
.L_006C:
.L_006B:
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CASSIGNFUNCTRESULT
_CASSIGNFUNCTRESULT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov dword ptr [ebp-4], 0
push dword ptr [_PARSER+108]
call _SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0075
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0073
.L_0075:
.L_0074:
push dword ptr [_PARSER+108]
call _SYMBHASCTOR
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [_PARSER+108]
call _SYMBHASDEFCTOR
add esp, 4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp+8], 0
je .L_0077
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 2
test ebx, ebx
je .L_0079
mov ebx, dword ptr [ebp-36]
not ebx
and ebx, dword ptr [ebp-28]
je .L_007B
push 0
push 0
push 178
call _ERRREPORT
add esp, 12
.L_007B:
.L_007A:
.L_0079:
.L_0078:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+112]
or dword ptr [eax+48], 1
jmp .L_0076
.L_0077:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .L_007D
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp-28]
je .L_007F
push 0
push 0
push 179
call _ERRREPORT
add esp, 12
.L_007F:
.L_007E:
.L_007D:
.L_007C:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 2
.L_0076:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [_PARSER+156], ebx
push 0
push 319
call _HMATCH
add esp, 8
not eax
and eax, dword ptr [ebp-36]
je .L_0081
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0083
push dword ptr [ebp-16]
call _ASTISACCESSTOLOCAL
add esp, 4
test eax, eax
je .L_0085
push 0
push 0
push 272
call _ERRREPORT
add esp, 12
.L_0085:
.L_0084:
push dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+108]
push dword ptr [eax+32]
mov eax, dword ptr [_PARSER+108]
push dword ptr [eax+28]
call _ASTCHECKBYREFASSIGN
add esp, 12
test eax, eax
je .L_0087
push dword ptr [ebp-16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_0086
.L_0087:
push 0
push 0
push 318
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [_PARSER+108]
push dword ptr [eax+32]
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [_PARSER+108]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-16], eax
.L_0086:
.L_0083:
.L_0082:
jmp .L_0080
.L_0081:
call _CEXPRESSION
mov dword ptr [ebp-16], eax
.L_0080:
mov dword ptr [_PARSER+160], 0
mov dword ptr [_PARSER+156], -2147483648
cmp dword ptr [ebp-16], 0
jne .L_0089
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0073
.L_0089:
.L_0088:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp+8]
je .L_008B
cmp dword ptr [ebp-24], 0
je .L_008D
lea eax, [ebp-40]
push eax
push dword ptr [ebp-16]
call _CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_008F
jmp .L_0073
.L_008F:
.L_008E:
cmp dword ptr [ebp-40], 0
je .L_0091
push dword ptr [ebp-8]
push dword ptr [_PARSER+108]
call _ASTBUILDPROCRESULTVAR
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTPATCHCTORCALL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_0073
.L_0091:
.L_0090:
.L_008D:
.L_008C:
mov dword ptr [ebp-32], 64
.L_008B:
.L_008A:
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [_PARSER+108]
call _ASTBUILDPROCRESULTVAR
add esp, 8
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0093
push dword ptr [ebp-16]
call _ASTDELTREE
add esp, 4
push 0
push 0
push 181
call _ERRREPORT
add esp, 12
jmp .L_0092
.L_0093:
push dword ptr [ebp-20]
call _ASTADD
add esp, 4
.L_0092:
mov dword ptr [ebp-4], -1
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HMETHODCALLADDINSTPTROVLARG
_HMETHODCALLADDINSTPTROVLARG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0095:
cmp dword ptr [ebp+12], 0
jne .L_0098
jmp .L_0096
.L_0098:
.L_0097:
push 0
push dword ptr [ebp+16]
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
je .L_009A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.L_009A:
.L_0099:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_009B
mov dword ptr [ebp-12], 1
jmp .L_009D
.L_009B:
mov dword ptr [ebp-12], -1
.L_009D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+20]
or dword ptr [eax], 64
.L_0096:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMAYBEIGNORECALLRESULT
_CMAYBEIGNORECALLRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A9:
push dword ptr [ebp+8]
call _ASTSKIPCASTS
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_00AC
push dword ptr [ebp+8]
call _ASTREMOVECASTS
add esp, 4
push eax
call _ASTIGNORECALLRESULT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_00AB
.L_00AC:
push dword ptr [ebp-8]
call _ASTISBYREFRESULTDEREF
add esp, 4
mov ebx, eax
call _HLOOKSLIKEENDOFSTATEMENT
and ebx, eax
je .L_00AD
push dword ptr [ebp+8]
call _ASTREMOVECASTS
add esp, 4
push eax
call _ASTREMOVEBYREFRESULTDEREF
add esp, 4
push eax
call _ASTIGNORECALLRESULT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_00AB
.L_00AD:
mov dword ptr [ebp-4], 0
.L_00AB:
.L_00AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCCALL
_CPROCCALL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00AE:
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
call _HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00B1
mov dword ptr [ebp-28], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00B3
mov dword ptr [ebp-28], -1
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00B5
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-32], eax
.L_00B5:
.L_00B4:
push 0
lea eax, [ebp-24]
push eax
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebx+4], -1
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00B7
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
jmp .L_00B6
.L_00B7:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00B6:
.L_00B3:
.L_00B2:
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .L_00B9
cmp dword ptr [ebp-28], 0
je .L_00BB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 1024
test ebx, ebx
jne .L_00BD
push 0
push -1
push 197
call _ERRREPORT
add esp, 12
jmp .L_00AF
.L_00BD:
.L_00BC:
jmp .L_00BA
.L_00BB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 256
test eax, eax
jne .L_00BF
push 0
push 0
push 195
call _ERRREPORT
add esp, 12
jmp .L_00AF
.L_00BF:
.L_00BE:
.L_00BA:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -1
jmp .L_00B8
.L_00B9:
or dword ptr [ebp+28], 128
cmp dword ptr [ebp-28], 0
je .L_00C1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .L_00C3
push 0
push -1
push 196
call _ERRREPORT
add esp, 12
jmp .L_00AF
.L_00C3:
.L_00C2:
jmp .L_00C0
.L_00C1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 128
test eax, eax
jne .L_00C5
push 0
push 0
push 194
call _ERRREPORT
add esp, 12
jmp .L_00AF
.L_00C5:
.L_00C4:
.L_00C0:
.L_00B8:
mov dword ptr [ebp+24], 0
jmp .L_00B0
.L_00B1:
cmp dword ptr [ebp+24], -1
jne .L_00C7
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00C9
mov dword ptr [ebp+24], 0
.L_00C9:
.L_00C8:
jmp .L_00C6
.L_00C7:
cmp dword ptr [ebp+16], 0
je .L_00CA
mov dword ptr [ebp+24], -1
.L_00CA:
.L_00C6:
.L_00B0:
cmp dword ptr [ebp+24], 0
je .L_00CC
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_00CE
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
mov dword ptr [_PARSER+148], 0
mov eax, dword ptr [ebp+24]
not eax
test eax, eax
je .L_00D0
or dword ptr [_PARSER+152], 1
jmp .L_00CF
.L_00D0:
and dword ptr [_PARSER+152], -2
.L_00CF:
push dword ptr [ebp+28]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+148]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+24]
je .L_00D2
dec dword ptr [_PARSER+148]
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_00D4
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
jmp .L_00D3
.L_00D4:
cmp dword ptr [_PARSER+148], 0
jle .L_00D5
.L_00D6:
cmp dword ptr [_PARSER+148], 0
jle .L_00D7
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
dec dword ptr [_PARSER+148]
jmp .L_00D6
.L_00D7:
.L_00D5:
.L_00D3:
.L_00D2:
.L_00D1:
jmp .L_00D9
or dword ptr [_PARSER+152], 1
jmp .L_00D8
.L_00D9:
and dword ptr [_PARSER+152], -2
.L_00D8:
cmp dword ptr [ebp-8], 0
jne .L_00DB
push dword ptr [ebp-12]
call _ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00DD
jmp .L_00AF
.L_00DD:
.L_00DC:
.L_00DB:
.L_00DA:
push dword ptr [ebp-12]
call _CMAYBEIGNORECALLRESULT
add esp, 4
test eax, eax
je .L_00DF
mov dword ptr [ebp-4], 0
jmp .L_00DE
.L_00DF:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00DE:
.L_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCCALLORASSIGN
_CPROCCALLORASSIGN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0162:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+136], 3
jne .L_0165
call _HPROCCALLORASSIGN_QB
mov dword ptr [ebp-4], eax
jmp .L_0163
.L_0165:
.L_0164:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_0167
.L_0169:
push 50
lea eax, [ebp-12]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0163
jmp .L_0166
.L_016A:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_016C
.L_016E:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0170
push 0
push 0
push 254
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_0170:
.L_016F:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0172
push 0
push 0
push 157
call _ERRREPORT
add esp, 12
jmp .L_0171
.L_0172:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .L_0173
push 0
push 0
push 192
call _ERRREPORT
add esp, 12
.L_0173:
.L_0171:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _CASSIGNFUNCTRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0163
jmp .L_016B
.L_0174:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
jne .L_0176
push 0
push 0
push 144
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_0176:
.L_0175:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _CASSIGNFUNCTRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0163
jmp .L_016B
.L_0177:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0179
push 0
push 0
push 193
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0163
jmp .L_0178
.L_0179:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
jne .L_017B
push 0
push 0
push 193
call _ERRREPORT
add esp, 12
.L_017B:
.L_017A:
.L_0178:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _CASSIGNFUNCTRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0163
jmp .L_016B
.L_017C:
call _HCTORCHAIN
mov dword ptr [ebp-4], -1
jmp .L_0163
jmp .L_016B
.L_017D:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_017F
call _HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .L_0163
jmp .L_017E
.L_017F:
call _HBASEINIT
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_017E:
jmp .L_016B
.L_0180:
mov eax, dword ptr [_ENV+1040]
and eax, 131072
test eax, eax
jne .L_0182
push 0
push 146
push 131072
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_0182:
.L_0181:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_0184
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_0184:
.L_0183:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 34
lea eax, [ebp-12]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0186
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0163
.L_0186:
.L_0185:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], -1
jmp .L_0163
jmp .L_016B
.L_016C:
mov eax, dword ptr [ebp-24]
add eax, 4294966950
cmp eax, 49
ja .L_016B
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0187+eax*4-1384]
_.L_0187:
.int .L_016E
.int .L_017C
.int .L_016B
.int .L_0174
.int .L_0177
.int .L_016B
.int .L_016B
.int .L_017D
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_0180
.L_016B:
jmp .L_0166
.L_0188:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 390
jne .L_018A
call _COPERATORDELETE
mov dword ptr [ebp-4], -1
jmp .L_0163
.L_018A:
.L_0189:
jmp .L_0166
.L_018B:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_018D
cmp dword ptr [_PARSER+52], 0
je .L_018F
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_0191
mov eax, dword ptr [_PARSER+152]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call _CWITHVARIABLE
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0193
jmp .L_0163
.L_0193:
.L_0192:
push dword ptr [ebp-16]
call _CASSIGNMENTORPTRCALLEX
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0163
.L_0191:
.L_0190:
.L_018F:
.L_018E:
push 50
lea eax, [ebp-12]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0195
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0163
.L_0195:
.L_0194:
.L_018D:
.L_018C:
jmp .L_0166
.L_0167:
cmp dword ptr [ebp-20], 6
ja .L_0166
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0196+eax*4]
_.L_0196:
.int .L_0169
.int .L_016A
.int .L_0169
.int .L_0166
.int .L_0166
.int .L_0188
.int .L_018B
.L_0166:
.L_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFORWARDCALL
_HFORWARDCALL:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_01B5:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_01B9
.L_01BA:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_01BC
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_01BE
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .L_01C0
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.L_01C0:
.L_01BF:
.L_01BE:
.L_01BD:
.L_01BC:
.L_01BB:
jmp .L_01B7
.L_01B9:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 40
call _HSKIPUNTIL
add esp, 16
jmp .L_01B6
.L_01C1:
.L_01B7:
push 0
push 0
call _LEXGETTEXT
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
je .L_01C3
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_01C3:
.L_01C2:
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-16]
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_01C5
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-24], -1
.L_01C5:
.L_01C4:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.L_01C6:
call _CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_01CA
jmp .L_01C7
.L_01CA:
.L_01C9:
mov dword ptr [ebp-44], 2
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_01CC
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .L_01CE
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-44], 3
.L_01CE:
.L_01CD:
.L_01CC:
.L_01CB:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-60], ebx
cmp dword ptr [ebp-60], 17
je .L_01D2
.L_01D3:
cmp dword ptr [ebp-60], 18
je .L_01D2
.L_01D4:
cmp dword ptr [ebp-60], 4
je .L_01D2
.L_01D5:
cmp dword ptr [ebp-60], 7
jne .L_01D1
.L_01D2:
mov dword ptr [ebp-48], 17
.L_01D1:
.L_01CF:
push 0
push 0
push dword ptr [ebp-44]
cmp dword ptr [ebp-44], 3
jne .L_01D6
mov dword ptr [ebp-52], -1
jmp .L_01E2
.L_01D6:
mov dword ptr [ebp-52], 0
.L_01E2:
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-48]
push 0
push dword ptr [ebp-20]
call _SYMBADDPROCPARAM
add esp, 32
test eax, eax
jne .L_01D9
jmp .L_01C7
.L_01D9:
.L_01D8:
push 0
lea eax, [ebp-36]
push eax
lea eax, [_PARSER+116]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [ebp-40]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebx+4], -1
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_01DB
jmp .L_01C7
.L_01DB:
.L_01DA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_01C8:
jmp .L_01C6
.L_01C7:
cmp dword ptr [ebp-24], 0
je .L_01DD
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_01DF
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
jmp .L_01DE
.L_01DF:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_01DE:
.L_01DD:
.L_01DC:
push 0
push dword ptr [_ENV+276]
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_01E1
push 0
push -1
push 4
call _ERRREPORT
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01B6
.L_01E1:
.L_01E0:
push 32
lea eax, [ebp-36]
push eax
push 0
push dword ptr [ebp-20]
push 0
call _CPROCARGLIST
add esp, 20
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_01B6:
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
_HLOOKSLIKEENDOFSTATEMENT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009E:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .L_00A3
.L_00A4:
cmp dword ptr [ebp-8], 257
je .L_00A3
.L_00A5:
cmp dword ptr [ebp-8], 256
je .L_00A3
.L_00A6:
cmp dword ptr [ebp-8], 259
je .L_00A3
.L_00A7:
cmp dword ptr [ebp-8], 260
jne .L_00A2
.L_00A3:
mov dword ptr [ebp-4], -1
jmp .L_00A0
.L_00A2:
mov dword ptr [ebp-4], 0
.L_00A8:
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCSYMBOL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
mov dword ptr [ebp-4], 0
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_00E4
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E2
.L_00E4:
.L_00E3:
push 4096
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HISASSIGNTOKEN
add esp, 4
not eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00E6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_00E8
mov dword ptr [ebp-8], -1
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .L_00EA
mov eax, dword ptr [_PARSER+108]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
jne .L_00EC
push dword ptr [ebp+12]
push dword ptr [_PARSER+108]
call _SYMBISPROCOVERLOADOF
add esp, 8
test eax, eax
je .L_00EE
mov dword ptr [ebp-8], 0
.L_00EE:
.L_00ED:
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
cmp dword ptr [ebp-8], 0
je .L_00F0
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCCALL
add esp, 24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_00F2
push dword ptr [ebp-12]
call _CASSIGNMENT
add esp, 4
.L_00F2:
.L_00F1:
mov dword ptr [ebp-4], -1
jmp .L_00E2
.L_00F0:
.L_00EF:
cmp dword ptr [ebp+16], 0
je .L_00F4
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E2
.L_00F4:
.L_00F3:
push dword ptr [ebp+12]
push dword ptr [_PARSER+108]
call _SYMBISPROCOVERLOADOF
add esp, 8
test eax, eax
jne .L_00F6
push 0
push 0
push 317
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00E2
.L_00F6:
.L_00F5:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _CASSIGNFUNCTRESULT
add esp, 4
mov dword ptr [ebp-4], eax
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F7:
mov dword ptr [ebp-4], 0
push -1
push dword ptr [ebp+8]
call __Z11CVARIABLEEXP8FBSYMBOLl
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FA
jmp .L_00F8
.L_00FA:
.L_00F9:
cmp dword ptr [ebp+12], 0
je .L_00FC
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
je .L_00FE
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_00F8
.L_00FE:
.L_00FD:
.L_00FC:
.L_00FB:
push dword ptr [ebp-8]
call _CASSIGNMENTORPTRCALLEX
add esp, 4
mov dword ptr [ebp-4], eax
.L_00F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HMATCHESDEFDTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00FF:
cmp dword ptr [ebp+12], 17
jne .L_0102
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
je .L_0106
.L_0107:
cmp dword ptr [ebp-8], 18
je .L_0106
.L_0108:
cmp dword ptr [ebp-8], 4
jne .L_0105
.L_0106:
mov dword ptr [ebp-4], -1
jmp .L_0103
.L_0105:
mov dword ptr [ebp-4], 0
.L_0109:
.L_0103:
jmp .L_0101
.L_0102:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0101:
.L_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSIGNORCALL_QB:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_010A:
mov dword ptr [ebp-4], 0
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
.L_010C:
cmp dword ptr [ebp+8], 0
je .L_010D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .L_010F
.L_0110:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_0114
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .L_0116
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HMATCHESDEFDTYPE
add esp, 8
mov dword ptr [ebp-28], eax
.L_0116:
.L_0115:
.L_0114:
.L_0113:
cmp dword ptr [ebp-28], 0
je .L_0118
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .L_011A
.L_011C:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .L_011E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.L_011E:
.L_011D:
cmp dword ptr [ebp-28], 0
je .L_0120
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call _HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010B
.L_0120:
.L_011F:
jmp .L_0119
.L_0121:
cmp dword ptr [ebp-24], 0
jne .L_0123
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0125
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_0125:
.L_0124:
.L_0123:
.L_0122:
jmp .L_0119
.L_0126:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .L_0128
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call _CQUIRKSTMT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010B
.L_0128:
.L_0127:
jmp .L_0119
.L_011A:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .L_0119
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_0129+eax*4-4]
_.L_0129:
.int .L_0121
.int .L_0119
.int .L_011C
.int .L_0119
.int .L_0119
.int .L_0126
.L_0119:
.L_0118:
.L_0117:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_0112:
cmp dword ptr [ebp-20], 0
jne .L_0110
.L_0111:
jmp .L_010E
.L_010F:
.L_012A:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _HMATCHESDEFDTYPE
add esp, 8
test eax, eax
je .L_012E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_0130
.L_0132:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call _HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_010B
jmp .L_012F
.L_0133:
cmp dword ptr [ebp-24], 0
jne .L_0135
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .L_0137
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.L_0137:
.L_0136:
.L_0135:
.L_0134:
jmp .L_012F
.L_0138:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call _CQUIRKSTMT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_010B
jmp .L_012F
.L_0130:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 5
ja .L_012F
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_0139+eax*4-4]
_.L_0139:
.int .L_0133
.int .L_012F
.int .L_0132
.int .L_012F
.int .L_012F
.int .L_0138
.L_012F:
.L_012E:
.L_012D:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.L_012C:
cmp dword ptr [ebp-20], 0
jne .L_012A
.L_012B:
.L_010E:
cmp dword ptr [ebp-24], 0
je .L_013B
push dword ptr [ebp+12]
push dword ptr [ebp-24]
call _HVARSYMBOL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_010B
.L_013B:
.L_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .L_010C
.L_010D:
.L_010B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSIGNORPTRCALL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_013C:
cmp dword ptr [ebp+8], 0
jne .L_013F
jmp .L_013D
.L_013F:
.L_013E:
cmp dword ptr [ebp+12], 0
je .L_0141
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .L_0143
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_013D
.L_0143:
.L_0142:
.L_0141:
.L_0140:
push dword ptr [ebp+8]
call _CASSIGNMENTORPTRCALLEX
add esp, 4
mov dword ptr [ebp-4], eax
.L_013D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HASSIGNORCALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0144:
mov dword ptr [ebp-4], 0
.L_0146:
cmp dword ptr [ebp+12], 0
je .L_0147
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_0148:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .L_014C
.L_014E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0145
jmp .L_014B
.L_014F:
push dword ptr [ebp+16]
push -1
push dword ptr [ebp+12]
call __Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 8
push eax
call _HASSIGNORPTRCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0145
jmp .L_014B
.L_0150:
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CIMPLICITDATAMEMBER
add esp, 16
push eax
call _HASSIGNORPTRCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0145
jmp .L_014B
.L_0151:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _CCONSTANT
add esp, 4
push eax
call _HASSIGNORPTRCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0145
jmp .L_014B
.L_0152:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _CQUIRKSTMT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0145
jmp .L_014B
.L_014C:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 11
ja .L_014B
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0153+eax*4-4]
_.L_0153:
.int .L_014F
.int .L_0151
.int .L_014E
.int .L_014B
.int .L_014B
.int .L_0152
.int .L_014B
.int .L_014B
.int .L_014B
.int .L_014B
.int .L_014B
.int .L_0150
.L_014B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.L_014A:
cmp dword ptr [ebp-8], 0
jne .L_0148
.L_0149:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
jmp .L_0146
.L_0147:
.L_0145:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCCALLORASSIGN_QB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0157
.L_0159:
push 0
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
push dword ptr [ebx+1044]
call _HASSIGNORCALL_QB
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0155
jmp .L_0156
.L_015A:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 395
je .L_015C
push 0
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
push dword ptr [ebx+1044]
call _HASSIGNORCALL_QB
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0155
.L_015C:
.L_015B:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_015E
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0155
.L_015E:
.L_015D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1044], 0
jne .L_0160
call _HFORWARDCALL
mov dword ptr [ebp-4], eax
jmp .L_0155
jmp .L_015F
.L_0160:
push -1
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
push dword ptr [ebx+1044]
call _HASSIGNORCALL_QB
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0155
.L_015F:
jmp .L_0156
.L_0157:
cmp dword ptr [ebp-8], 5
ja .L_0156
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0161+eax*4]
_.L_0161:
.int .L_0159
.int .L_015A
.int .L_0159
.int .L_0156
.int .L_0156
.int .L_0159
.L_0156:
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCTORCHAIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0198:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_019B
push 0
push 0
push 165
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0199
.L_019B:
.L_019A:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
push dword ptr [_AST+40]
call _ASTFINDFIRSTCODE
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_019D
push 0
push 0
push 169
call _ERRREPORT
add esp, 12
.L_019D:
.L_019C:
mov eax, dword ptr [_PARSER+108]
or dword ptr [eax+12], 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 0
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
push eax
push 0
call _CPROCCALL
add esp, 24
.L_0199:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBASEINIT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_019E:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .L_01A1
push 0
push 0
push 165
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_019F
.L_01A1:
.L_01A0:
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01A3
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
jmp .L_019F
.L_01A3:
.L_01A2:
push dword ptr [_AST+40]
call _ASTFINDFIRSTCODE
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+108]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01A5
push 0
push 0
push 170
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_019F
.L_01A5:
.L_01A4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-12]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_01A7
push dword ptr [ebp-12]
call _CCTORCALL
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _ASTCALLCTORTOCALL
add esp, 4
mov dword ptr [ebp-20], eax
push 0
push 0
push -1
push dword ptr [ebp-12]
push 20
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-16], eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _ASTTYPEINIADDCTORCALL
add esp, 20
push -1
push dword ptr [ebp-16]
call _ASTTYPEINIEND
add esp, 8
jmp .L_01A6
.L_01A7:
push 0
push -2147483648
push 1
push dword ptr [ebp-8]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-16], eax
.L_01A6:
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+64], eax
.L_019F:
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
.L_01A8:
mov eax, dword ptr [_PARSER+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_01AB
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
mov dword ptr [ebp-4], -1
jmp .L_01A9
.L_01AB:
.L_01AA:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_01AC:
cmp dword ptr [ebp-16], 0
jne .L_01B0
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
mov dword ptr [ebp-4], -1
jmp .L_01A9
.L_01B0:
.L_01AF:
push 2112
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 353
je .L_01B2
jmp .L_01AD
.L_01B2:
.L_01B1:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
je .L_01B4
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
mov dword ptr [ebp-4], -1
jmp .L_01A9
.L_01B4:
.L_01B3:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.L_01AE:
jmp .L_01AC
.L_01AD:
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
call _HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_01A9:
mov eax, dword ptr [ebp-4]
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
