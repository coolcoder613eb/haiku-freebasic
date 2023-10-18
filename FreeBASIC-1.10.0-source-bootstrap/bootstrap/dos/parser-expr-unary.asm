	.intel_syntax noprefix

.section .text
.balign 16

.globl _CNEGNOTEXPRESSION
_CNEGNOTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_006E:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 45
jne .L_0072
.L_0073:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0075
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
mov dword ptr [ebp-8], eax
jmp .L_0074
.L_0075:
push dword ptr [ebp-8]
push 54
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0074:
cmp dword ptr [ebp-8], 0
jne .L_0077
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0077:
.L_0076:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006F
jmp .L_0070
.L_0072:
cmp dword ptr [ebp-12], 43
jne .L_0078
.L_0079:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007B
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
mov dword ptr [ebp-8], eax
jmp .L_007A
.L_007B:
push dword ptr [ebp-8]
push 53
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_007A:
cmp dword ptr [ebp-8], 0
jne .L_007D
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_007D:
.L_007C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006F
jmp .L_0070
.L_0078:
cmp dword ptr [ebp-12], 295
jne .L_007E
.L_007F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0081
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
mov dword ptr [ebp-8], eax
jmp .L_0080
.L_0081:
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0080:
cmp dword ptr [ebp-8], 0
jne .L_0083
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0083:
.L_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006F
.L_007E:
.L_0070:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-4], eax
.L_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSTRIDXORMEMBERDEREF
_CSTRIDXORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
cmp dword ptr [ebp+8], 0
jne .L_0087
jmp .L_0085
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0088
mov dword ptr [ebp-16], 24
jmp .L_00A8
.L_0088:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A8:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_008B
.L_008D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_008F
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.L_008F:
.L_008E:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0085
jmp .L_008A
.L_0090:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 46
jne .L_0093
.L_0094:
push 64
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0096
mov dword ptr [ebp-4], 0
jmp .L_0085
.L_0096:
.L_0095:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
jmp .L_0091
.L_0093:
cmp dword ptr [ebp-24], 400
je .L_0098
.L_0099:
cmp dword ptr [ebp-24], 91
jne .L_0097
.L_0098:
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.L_0097:
.L_0091:
jmp .L_008A
.L_008B:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 16
ja .L_008A
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_009A+eax*4-16]
_.L_009A:
.int .L_008D
.int .L_008A
.int .L_008A
.int .L_008D
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008A
.int .L_008D
.int .L_008D
.int .L_008A
.int .L_0090
.L_008A:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .L_009C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 40
jne .L_009F
.L_00A0:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_009D
.L_009F:
cmp dword ptr [ebp-24], 400
je .L_00A2
.L_00A3:
cmp dword ptr [ebp-24], 91
jne .L_00A1
.L_00A2:
mov dword ptr [ebp-20], -1
jmp .L_009D
.L_00A1:
cmp dword ptr [ebp-24], 46
jne .L_00A4
.L_00A5:
push 0
push -1
push 265
call _ERRREPORT
add esp, 12
.L_00A4:
.L_009D:
cmp dword ptr [ebp-20], 0
je .L_00A7
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp+8], eax
.L_00A7:
.L_00A6:
.L_009C:
.L_009B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CHIGHESTPRECEXPR
_CHIGHESTPRECEXPR:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00AA:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 64
jne .L_00AE
.L_00AF:
jmp .L_00B1
or dword ptr [_PARSER+152], 1
jmp .L_00B0
.L_00B1:
and dword ptr [_PARSER+152], -2
.L_00B0:
call _CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AB
jmp .L_00AC
.L_00AE:
cmp dword ptr [ebp-12], 42
jne .L_00B2
.L_00B3:
jmp .L_00B5
or dword ptr [_PARSER+152], 1
jmp .L_00B4
.L_00B5:
and dword ptr [_PARSER+152], -2
.L_00B4:
call _CDEREFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AB
jmp .L_00AC
.L_00B2:
cmp dword ptr [ebp-12], 40
jne .L_00B6
.L_00B7:
mov eax, dword ptr [_PARSER+152]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
call _CPARENTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .L_00B9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00AB
.L_00B9:
.L_00B8:
jmp .L_00AC
.L_00B6:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_00BC
.L_00BE:
call _CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AB
jmp .L_00BB
.L_00BF:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00BB
.L_00C0:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
call _HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00BB
.L_00C1:
call _COPERATORNEW
mov dword ptr [ebp-8], eax
jmp .L_00BB
.L_00C2:
mov eax, dword ptr [_PARSER+152]
and eax, 1024
test eax, eax
je .L_00C4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 377
jne .L_00C7
.L_00C8:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00AB
jmp .L_00C5
.L_00C7:
cmp dword ptr [ebp-20], 315
jne .L_00CA
.L_00CB:
call _HPPDEFINEDEXPR
mov dword ptr [ebp-4], eax
jmp .L_00AB
.L_00CA:
.L_00C5:
.L_00C4:
.L_00C3:
jmp .L_00CD
or dword ptr [_PARSER+152], 1
jmp .L_00CC
.L_00CD:
and dword ptr [_PARSER+152], -2
.L_00CC:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CATOM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00AB
jmp .L_00BB
.L_00BC:
mov eax, dword ptr [ebp-16]
add eax, 4294966907
cmp eax, 28
ja .L_00C2
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00CE+eax*4-1556]
_.L_00CE:
.int .L_00C1
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C2
.int .L_00C0
.int .L_00BF
.L_00BB:
.L_00BA:
.L_00AC:
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CDEREFEXPRESSION
_CDEREFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00FA:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
je .L_00FD
mov dword ptr [ebp-4], 0
jmp .L_00FB
.L_00FD:
.L_00FC:
mov dword ptr [ebp-8], 0
.L_00FE:
push 0
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
.L_0100:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
je .L_00FE
.L_00FF:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0102
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
mov dword ptr [ebp-4], eax
jmp .L_00FB
.L_0102:
.L_0101:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPROCPTRBODY
_CPROCPTRBODY:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0125:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+8], 20
jne .L_0128
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-8], 0
jmp .L_0127
.L_0128:
push 56
lea eax, [ebp-16]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
.L_0127:
push dword ptr [ebp-8]
lea eax, [ebp-16]
push eax
call _CIDENTIFIERORUDTMEMBER
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_012A
push 0
push 0
push 8
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
jmp .L_0126
.L_012A:
.L_0129:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
je .L_012C
push 0
push -1
push 24
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
jmp .L_0126
.L_012C:
.L_012B:
call _HCHECKEMPTYPROCPARENS
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .L_012E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 354
jne .L_0130
mov dword ptr [ebp-24], -1
push 2048
call _LEXSKIPTOKEN
add esp, 4
.L_0130:
.L_012F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0132
push 1
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-52]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-28]
push eax
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_0136
push 0
push -1
push 24
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
jmp .L_0126
.L_0136:
.L_0135:
mov eax, dword ptr [ebp-28]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0139
.L_013A:
jmp .L_0137
.L_0139:
cmp dword ptr [ebp-60], 54
jne .L_013B
.L_013C:
mov dword ptr [ebp-36], -1
jmp .L_0137
.L_013B:
push 0
push -1
push 24
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
jmp .L_0126
.L_013D:
.L_0137:
.L_0132:
.L_0131:
mov eax, dword ptr [_PARSER+160]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [_PARSER+156], eax
push dword ptr [ebp-24]
cmp dword ptr [ebp-36], 0
setne al
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [_PARSER+156], eax
jmp .L_012D
.L_012E:
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-20], eax
.L_012D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0126:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CADDROFEXPRESSION
_CADDROFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0152:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 64
jne .L_0155
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
cmp dword ptr [_PARSER+52], 0
je .L_0157
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0159
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0159:
.L_0158:
.L_0157:
.L_0156:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], 0
je .L_015B
push 50
lea eax, [ebp-24]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-16], eax
push 3
push dword ptr [ebp-16]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-20], eax
.L_015B:
.L_015A:
cmp dword ptr [ebp-20], 0
je .L_015D
push 4096
call _LEXSKIPTOKEN
add esp, 4
call _HCHECKEMPTYPROCPARENS
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0153
.L_015D:
.L_015C:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
call _HVARPTRBODY
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0153
.L_0155:
.L_0154:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_015F
.L_0161:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_0163
push 0
push 0
push 6
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
jmp .L_0153
.L_0163:
.L_0162:
push 0
push 0
call _HVARPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_0165
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
.L_0165:
.L_0164:
jmp .L_015E
.L_0166:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_0168
push 0
push 0
push 6
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
jmp .L_0153
.L_0168:
.L_0167:
push 0
push 0
call _CPROCPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_016A
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
.L_016A:
.L_0169:
jmp .L_015E
.L_016B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_016D
push 0
push 0
push 6
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
jmp .L_0153
.L_016D:
.L_016C:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_016F
push 0
push 0
push 24
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
jmp .L_0153
.L_016F:
.L_016E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0170
mov dword ptr [ebp-20], 24
jmp .L_0188
.L_0170:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0188:
cmp dword ptr [ebp-20], 20
jne .L_0173
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0175
lea ecx, [ebp-8]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_0175:
.L_0174:
.L_0173:
.L_0172:
push dword ptr [ebp-16]
call _SYMBISSTRING
add esp, 4
test eax, eax
jne .L_0177
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0153
.L_0177:
.L_0176:
push dword ptr [ebp-8]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_0179
.L_017B:
jmp .L_0178
.L_017C:
push 0
push 1
push 0
push offset _Lt_017D
push 24
call _ERRREPORTEX
add esp, 20
jmp .L_0178
.L_0179:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967279
cmp ebx, 19
ja .L_017C
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_017E+ebx*4-68]
_.L_017E:
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
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
.int .L_017B
.L_0178:
cmp dword ptr [ebp-16], 17
jne .L_0180
.L_0181:
push dword ptr [ebp-8]
call _ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_017F
.L_0180:
cmp dword ptr [ebp-16], 7
jne .L_0182
.L_0183:
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 39
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_017F
.L_0182:
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 36
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_0184:
.L_017F:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_0186
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
.L_0186:
.L_0185:
jmp .L_015E
.L_015F:
mov eax, dword ptr [ebp-12]
add eax, 4294966900
cmp eax, 3
ja .L_015E
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_0187+eax*4-1584]
_.L_0187:
.int .L_0161
.int .L_016B
.int .L_0166
.int .L_016B
.L_015E:
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0153:
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
_HPPDEFINEDEXPR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_006A
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .L_0069
.L_006A:
push 2
call _LEXSKIPTOKEN
add esp, 4
.L_0069:
push 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
call _CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_006D
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
.L_006D:
.L_006C:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCAST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00D0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_00D3
push 0
push 0
push 6
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
jmp .L_00D1
.L_00D3:
.L_00D2:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 1
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00D7
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00D9
mov dword ptr [ebp-8], 32
jmp .L_00D8
.L_00D9:
mov dword ptr [ebp-8], 8
.L_00D8:
mov dword ptr [ebp-16], 0
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00DA
mov dword ptr [ebp-36], 24
jmp .L_018D
.L_00DA:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_018D:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-40], eax
jmp .L_00DD
.L_00DF:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00E1
mov dword ptr [ebp-8], 32
jmp .L_00E0
.L_00E1:
mov dword ptr [ebp-8], 8
.L_00E0:
mov dword ptr [ebp-16], 0
jmp .L_00DC
.L_00E2:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00E4
mov eax, dword ptr [_ENV+200]
and eax, 16
test eax, eax
je .L_00E6
push 0
push 1
push 0
push 27
call _ERRREPORTWARN
add esp, 16
.L_00E6:
.L_00E5:
.L_00E4:
.L_00E3:
jmp .L_00DC
.L_00E7:
or dword ptr [ebp+8], 4
jmp .L_00DC
.L_00E8:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00EA
push 0
push 1
push 0
push 27
call _ERRREPORTWARN
add esp, 16
.L_00EA:
.L_00E9:
jmp .L_00DC
.L_00DD:
cmp dword ptr [ebp-40], 24
ja .L_00E8
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_00EB+eax*4]
_.L_00EB:
.int .L_00DF
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E2
.int .L_00E2
.int .L_00E2
.int .L_00E2
.int .L_00E2
.int .L_00E2
.int .L_00E2
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00DF
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E8
.int .L_00E7
.L_00DC:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00ED
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .L_00EC
.L_00ED:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00EC:
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00EF
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.L_00EF:
.L_00EE:
or dword ptr [ebp+8], 2
mov eax, dword ptr [_ENV+200]
and eax, 64
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+200]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00F1
or dword ptr [ebp+8], 32
.L_00F1:
.L_00F0:
lea ebx, [ebp-12]
push ebx
mov ebx, dword ptr [ebp+8]
or ebx, 64
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00F3
cmp dword ptr [ebp-12], 0
jne .L_00F5
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00F7
mov dword ptr [ebp-12], 28
jmp .L_00F6
.L_00F7:
mov dword ptr [ebp-12], 20
.L_00F6:
.L_00F5:
.L_00F4:
push 0
push -1
push dword ptr [ebp-12]
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.L_00F3:
.L_00F2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00F9
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
jmp .L_00F8
.L_00F9:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00F8:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCPTRRESOLVEOVERLOAD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0103:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0106
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_0107
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_0109
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .L_010B
mov dword ptr [ebp-12], 1
.L_010B:
.L_010A:
.L_0109:
.L_0108:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-8], eax
.L_0107:
.L_0105:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0104:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKEMPTYPROCPARENS:
.L_010C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_010F
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_0111
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
.L_0111:
.L_0110:
.L_010F:
.L_010E:
.L_010D:
ret
.balign 16
_HPROCPTRBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0112:
cmp dword ptr [_PARSER+160], 0
je .L_0115
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
movzx eax, byte ptr [ebp+16]
neg eax
or ebx, eax
je .L_0117
push 0
push dword ptr [_PARSER+160]
push dword ptr [ebp+12]
call _HPROCPTRRESOLVEOVERLOAD
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0119
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
jmp .L_0118
.L_0119:
cmp byte ptr [ebp+16], 0
je .L_011A
push 0
push -1
push 99
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_011A:
.L_0118:
.L_0117:
.L_0116:
.L_0115:
.L_0114:
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_011C
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call _ERRREPORTEX
add esp, 20
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_011E
push dword ptr [ebp+12]
call dword ptr [ebp-8]
add esp, 4
.L_011E:
.L_011D:
cmp dword ptr [ebp+20], 0
je .L_0120
mov dword ptr [ebp-12], -1
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
and ecx, 256
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0122
push dword ptr [ebp+12]
call _SYMBPROCGETVTABLEINDEX
add esp, 4
add eax, -2
mov dword ptr [ebp-12], eax
.L_0122:
.L_0121:
push 0
push 8
mov ecx, dword ptr [ebp-12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_0124
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _SYMBADDPROCPTRFROMFUNCTION
add esp, 4
push eax
push 54
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0124:
.L_0123:
push dword ptr [ebp+12]
call _ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARPTRBODY:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_013E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0141
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013F
.L_0141:
.L_0140:
push dword ptr [ebp-8]
call _ASTSKIPCONSTCASTS
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0143
.L_0145:
jmp .L_0142
.L_0146:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .L_0148
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013F
.L_0148:
.L_0147:
jmp .L_0142
.L_0149:
push 0
push 1
push 0
push offset _Lt_014A
push 24
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013F
jmp .L_0142
.L_0143:
mov eax, dword ptr [ebp-16]
add eax, 4294967286
cmp eax, 26
ja .L_0149
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_014B+eax*4-40]
_.L_014B:
.int .L_0145
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0145
.int .L_0145
.int .L_0146
.int .L_0145
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0149
.int .L_0145
.L_0142:
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
push 22
call _SYMBFINDSELFUOPOVLPROC
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_014D
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_014F
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_014F:
.L_014E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_013F
jmp .L_014C
.L_014D:
cmp dword ptr [ebp-20], 0
je .L_0151
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013F
.L_0151:
.L_0150:
.L_014C:
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_013F:
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

.section .data
.balign 4
_Lt_014A:	.ascii	"for @ or VARPTR\0"
.balign 4
_Lt_017D:	.ascii	"for STRPTR\0"
