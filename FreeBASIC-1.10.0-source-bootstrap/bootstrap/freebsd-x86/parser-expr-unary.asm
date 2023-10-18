	.intel_syntax noprefix

.section .text
.balign 16

.globl CNEGNOTEXPRESSION
CNEGNOTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_006D:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 45
jne .L_0071
.L_0072:
push 0
call LEXSKIPTOKEN
add esp, 4
call CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0074
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0073
.L_0074:
push dword ptr [ebp-8]
push 54
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0073:
cmp dword ptr [ebp-8], 0
jne .L_0076
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0076:
.L_0075:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006E
jmp .L_006F
.L_0071:
cmp dword ptr [ebp-12], 43
jne .L_0077
.L_0078:
push 0
call LEXSKIPTOKEN
add esp, 4
call CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_007A
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_007A:
push dword ptr [ebp-8]
push 53
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_0079:
cmp dword ptr [ebp-8], 0
jne .L_007C
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_007C:
.L_007B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006E
jmp .L_006F
.L_0077:
cmp dword ptr [ebp-12], 295
jne .L_007D
.L_007E:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0080
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_007F
.L_0080:
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.L_007F:
cmp dword ptr [ebp-8], 0
jne .L_0082
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0082:
.L_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_007D:
.L_006F:
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSTRIDXORMEMBERDEREF
CSTRIDXORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0083:
cmp dword ptr [ebp+8], 0
jne .L_0086
jmp .L_0084
.L_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_0087
mov dword ptr [ebp-16], 24
jmp .L_00A7
.L_0087:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A7:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_008A
.L_008C:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_008E
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.L_008E:
.L_008D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0084
jmp .L_0089
.L_008F:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 46
jne .L_0092
.L_0093:
push 64
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0095
mov dword ptr [ebp-4], 0
jmp .L_0084
.L_0095:
.L_0094:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
jmp .L_0090
.L_0092:
cmp dword ptr [ebp-24], 400
je .L_0097
.L_0098:
cmp dword ptr [ebp-24], 91
jne .L_0096
.L_0097:
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.L_0096:
.L_0090:
jmp .L_0089
.L_008A:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 16
ja .L_0089
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0099+eax*4-16]
.L_0099:
.int .L_008C
.int .L_0089
.int .L_0089
.int .L_008C
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_008C
.int .L_008C
.int .L_0089
.int .L_008F
.L_0089:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .L_009B
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 40
jne .L_009E
.L_009F:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_009C
.L_009E:
cmp dword ptr [ebp-24], 400
je .L_00A1
.L_00A2:
cmp dword ptr [ebp-24], 91
jne .L_00A0
.L_00A1:
mov dword ptr [ebp-20], -1
jmp .L_009C
.L_00A0:
cmp dword ptr [ebp-24], 46
jne .L_00A3
.L_00A4:
push 0
push -1
push 265
call ERRREPORT
add esp, 12
.L_00A3:
.L_009C:
cmp dword ptr [ebp-20], 0
je .L_00A6
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp+8], eax
.L_00A6:
.L_00A5:
.L_009B:
.L_009A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CHIGHESTPRECEXPR
CHIGHESTPRECEXPR:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_00A9:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 64
jne .L_00AD
.L_00AE:
jmp .L_00B0
or dword ptr [PARSER+152], 1
jmp .L_00AF
.L_00B0:
and dword ptr [PARSER+152], -2
.L_00AF:
call CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AA
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-12], 42
jne .L_00B1
.L_00B2:
jmp .L_00B4
or dword ptr [PARSER+152], 1
jmp .L_00B3
.L_00B4:
and dword ptr [PARSER+152], -2
.L_00B3:
call CDEREFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AA
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-12], 40
jne .L_00B5
.L_00B6:
mov eax, dword ptr [PARSER+152]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
call CPARENTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .L_00B8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00AA
.L_00B8:
.L_00B7:
jmp .L_00AB
.L_00B5:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_00BB
.L_00BD:
call CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .L_00AA
jmp .L_00BA
.L_00BE:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00BA
.L_00BF:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 4
call HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_00BA
.L_00C0:
call COPERATORNEW
mov dword ptr [ebp-8], eax
jmp .L_00BA
.L_00C1:
mov eax, dword ptr [PARSER+152]
and eax, 1024
test eax, eax
je .L_00C3
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 377
jne .L_00C6
.L_00C7:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
call PPTYPEOF
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00AA
jmp .L_00C4
.L_00C6:
cmp dword ptr [ebp-20], 315
jne .L_00C9
.L_00CA:
call HPPDEFINEDEXPR
mov dword ptr [ebp-4], eax
jmp .L_00AA
.L_00C9:
.L_00C4:
.L_00C3:
.L_00C2:
jmp .L_00CC
or dword ptr [PARSER+152], 1
jmp .L_00CB
.L_00CC:
and dword ptr [PARSER+152], -2
.L_00CB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CATOM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_00AA
jmp .L_00BA
.L_00BB:
mov eax, dword ptr [ebp-16]
add eax, 4294966907
cmp eax, 28
ja .L_00C1
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00CD+eax*4-1556]
.L_00CD:
.int .L_00C0
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00BD
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00C1
.int .L_00BF
.int .L_00BE
.L_00BA:
.L_00B9:
.L_00AB:
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_00AA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CDEREFEXPRESSION
CDEREFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_00F9:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 42
je .L_00FC
mov dword ptr [ebp-4], 0
jmp .L_00FA
.L_00FC:
.L_00FB:
mov dword ptr [ebp-8], 0
.L_00FD:
push 0
call LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
.L_00FF:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 42
je .L_00FD
.L_00FE:
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0101
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_0101:
.L_0100:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCPTRBODY
CPROCPTRBODY:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0124:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+8], 20
jne .L_0127
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-8], 0
jmp .L_0126
.L_0127:
push 56
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
.L_0126:
push dword ptr [ebp-8]
lea eax, [ebp-16]
push eax
call CIDENTIFIERORUDTMEMBER
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0129
push 0
push 0
push 8
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
jmp .L_0125
.L_0129:
.L_0128:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
je .L_012B
push 0
push -1
push 24
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
jmp .L_0125
.L_012B:
.L_012A:
call HCHECKEMPTYPROCPARENS
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .L_012D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 354
jne .L_012F
mov dword ptr [ebp-24], -1
push 2048
call LEXSKIPTOKEN
add esp, 4
.L_012F:
.L_012E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0131
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
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_0135
push 0
push -1
push 24
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
jmp .L_0125
.L_0135:
.L_0134:
mov eax, dword ptr [ebp-28]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0138
.L_0139:
jmp .L_0136
.L_0138:
cmp dword ptr [ebp-60], 54
jne .L_013A
.L_013B:
mov dword ptr [ebp-36], -1
jmp .L_0136
.L_013A:
push 0
push -1
push 24
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
jmp .L_0125
.L_013C:
.L_0136:
.L_0131:
.L_0130:
mov eax, dword ptr [PARSER+160]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [PARSER+156], eax
push dword ptr [ebp-24]
cmp dword ptr [ebp-36], 0
setne al
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [PARSER+156], eax
jmp .L_012C
.L_012D:
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-20], eax
.L_012C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0125:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CADDROFEXPRESSION
CADDROFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0151:
mov dword ptr [ebp-8], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 64
jne .L_0154
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
cmp dword ptr [PARSER+52], 0
je .L_0156
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0158
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.L_0158:
.L_0157:
.L_0156:
.L_0155:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], 0
je .L_015A
push 50
lea eax, [ebp-24]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-16], eax
push 3
push dword ptr [ebp-16]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-20], eax
.L_015A:
.L_0159:
cmp dword ptr [ebp-20], 0
je .L_015C
push 4096
call LEXSKIPTOKEN
add esp, 4
call HCHECKEMPTYPROCPARENS
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0152
.L_015C:
.L_015B:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
call HVARPTRBODY
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0152
.L_0154:
.L_0153:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_015E
.L_0160:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_0162
push 0
push 0
push 6
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
jmp .L_0152
.L_0162:
.L_0161:
push 0
push 0
call HVARPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_0164
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
.L_0164:
.L_0163:
jmp .L_015D
.L_0165:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_0167
push 0
push 0
push 6
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
jmp .L_0152
.L_0167:
.L_0166:
push 0
push 0
call CPROCPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_0169
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
.L_0169:
.L_0168:
jmp .L_015D
.L_016A:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_016C
push 0
push 0
push 6
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
jmp .L_0152
.L_016C:
.L_016B:
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_016E
push 0
push 0
push 24
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
jmp .L_0152
.L_016E:
.L_016D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_016F
mov dword ptr [ebp-20], 24
jmp .L_0187
.L_016F:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0187:
cmp dword ptr [ebp-20], 20
jne .L_0172
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
je .L_0174
lea ecx, [ebp-8]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.L_0174:
.L_0173:
.L_0172:
.L_0171:
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 4
test eax, eax
jne .L_0176
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0152
.L_0176:
.L_0175:
push dword ptr [ebp-8]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .L_0178
.L_017A:
jmp .L_0177
.L_017B:
push 0
push 1
push 0
push offset Lt_017C
push 24
call ERRREPORTEX
add esp, 20
jmp .L_0177
.L_0178:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967279
cmp ebx, 19
ja .L_017B
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_017D+ebx*4-68]
.L_017D:
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017A
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017B
.int .L_017A
.L_0177:
cmp dword ptr [ebp-16], 17
jne .L_017F
.L_0180:
push dword ptr [ebp-8]
call ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_017E
.L_017F:
cmp dword ptr [ebp-16], 7
jne .L_0181
.L_0182:
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
push eax
push 0
push 39
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_017E
.L_0181:
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
push eax
push 0
push 36
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.L_0183:
.L_017E:
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_0185
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
.L_0185:
.L_0184:
jmp .L_015D
.L_015E:
mov eax, dword ptr [ebp-12]
add eax, 4294966900
cmp eax, 3
ja .L_015D
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_0186+eax*4-1584]
.L_0186:
.int .L_0160
.int .L_016A
.int .L_0165
.int .L_016A
.L_015D:
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0152:
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
HPPDEFINEDEXPR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_0069
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .L_0068
.L_0069:
push 2
call LEXSKIPTOKEN
add esp, 4
.L_0068:
push 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-12]
push eax
call CIDENTIFIERORUDTMEMBER
add esp, 8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_006C
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
.L_006C:
.L_006B:
push 0
push 8
mov ebx, dword ptr [ebp-8]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCAST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_00CF:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .L_00D2
push 0
push 0
push 6
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
jmp .L_00D0
.L_00D2:
.L_00D1:
push 0
call LEXSKIPTOKEN
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
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00D6
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00D8
mov dword ptr [ebp-8], 32
jmp .L_00D7
.L_00D8:
mov dword ptr [ebp-8], 8
.L_00D7:
mov dword ptr [ebp-16], 0
.L_00D6:
.L_00D5:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00D9
mov dword ptr [ebp-36], 24
jmp .L_018C
.L_00D9:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_018C:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-40], eax
jmp .L_00DC
.L_00DE:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00E0
mov dword ptr [ebp-8], 32
jmp .L_00DF
.L_00E0:
mov dword ptr [ebp-8], 8
.L_00DF:
mov dword ptr [ebp-16], 0
jmp .L_00DB
.L_00E1:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00E3
mov eax, dword ptr [ENV+200]
and eax, 16
test eax, eax
je .L_00E5
push 0
push 1
push 0
push 27
call ERRREPORTWARN
add esp, 16
.L_00E5:
.L_00E4:
.L_00E3:
.L_00E2:
jmp .L_00DB
.L_00E6:
or dword ptr [ebp+8], 4
jmp .L_00DB
.L_00E7:
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00E9
push 0
push 1
push 0
push 27
call ERRREPORTWARN
add esp, 16
.L_00E9:
.L_00E8:
jmp .L_00DB
.L_00DC:
cmp dword ptr [ebp-40], 24
ja .L_00E7
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_00EA+eax*4]
.L_00EA:
.int .L_00DE
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E1
.int .L_00E1
.int .L_00E1
.int .L_00E1
.int .L_00E1
.int .L_00E1
.int .L_00E1
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00DE
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E6
.L_00DB:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_00EC
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .L_00EB
.L_00EC:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00EB:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00EE
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.L_00EE:
.L_00ED:
or dword ptr [ebp+8], 2
mov eax, dword ptr [ENV+200]
and eax, 64
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+200]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00F0
or dword ptr [ebp+8], 32
.L_00F0:
.L_00EF:
lea ebx, [ebp-12]
push ebx
mov ebx, dword ptr [ebp+8]
or ebx, 64
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00F2
cmp dword ptr [ebp-12], 0
jne .L_00F4
mov eax, dword ptr [ebp+8]
and eax, 4
je .L_00F6
mov dword ptr [ebp-12], 28
jmp .L_00F5
.L_00F6:
mov dword ptr [ebp-12], 20
.L_00F5:
.L_00F4:
.L_00F3:
push 0
push -1
push dword ptr [ebp-12]
call ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.L_00F2:
.L_00F1:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00F8
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
jmp .L_00F7
.L_00F8:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_00F7:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCPTRRESOLVEOVERLOAD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0102:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0105
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-8], eax
jmp .L_0104
.L_0105:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_0106
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_0108
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .L_010A
mov dword ptr [ebp-12], 1
.L_010A:
.L_0109:
.L_0108:
.L_0107:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-8], eax
.L_0106:
.L_0104:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKEMPTYPROCPARENS:
.L_010B:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_010E
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .L_0110
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
.L_0110:
.L_010F:
.L_010E:
.L_010D:
.L_010C:
ret
.balign 16
HPROCPTRBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0111:
cmp dword ptr [PARSER+160], 0
je .L_0114
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
je .L_0116
push 0
push dword ptr [PARSER+160]
push dword ptr [ebp+12]
call HPROCPTRRESOLVEOVERLOAD
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0118
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
jmp .L_0117
.L_0118:
cmp byte ptr [ebp+16], 0
je .L_0119
push 0
push -1
push 99
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0119:
.L_0117:
.L_0116:
.L_0115:
.L_0114:
.L_0113:
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_011B
push 0
push 1
push 0
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
.L_011B:
.L_011A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_011D
push dword ptr [ebp+12]
call dword ptr [ebp-8]
add esp, 4
.L_011D:
.L_011C:
cmp dword ptr [ebp+20], 0
je .L_011F
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
je .L_0121
push dword ptr [ebp+12]
call SYMBPROCGETVTABLEINDEX
add esp, 4
add eax, -2
mov dword ptr [ebp-12], eax
.L_0121:
.L_0120:
push 0
push 8
mov ecx, dword ptr [ebp-12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_011F:
.L_011E:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_0123
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 4
push eax
push 54
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0123:
.L_0122:
push dword ptr [ebp+12]
call ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HVARPTRBODY:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_013D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0140
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0140:
.L_013F:
push dword ptr [ebp-8]
call ASTSKIPCONSTCASTS
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_0142
.L_0144:
jmp .L_0141
.L_0145:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .L_0147
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0147:
.L_0146:
jmp .L_0141
.L_0148:
push 0
push 1
push 0
push offset Lt_0149
push 24
call ERRREPORTEX
add esp, 20
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013E
jmp .L_0141
.L_0142:
mov eax, dword ptr [ebp-16]
add eax, 4294967286
cmp eax, 26
ja .L_0148
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_014A+eax*4-40]
.L_014A:
.int .L_0144
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0144
.int .L_0144
.int .L_0145
.int .L_0144
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0148
.int .L_0144
.L_0141:
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
push 22
call SYMBFINDSELFUOPOVLPROC
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_014C
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_014E
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_014E:
.L_014D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_013E
jmp .L_014B
.L_014C:
cmp dword ptr [ebp-20], 0
je .L_0150
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_013E
.L_0150:
.L_014F:
.L_014B:
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.L_013E:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .data
.balign 4
Lt_0149:	.ascii	"for @ or VARPTR\0"
.balign 4
Lt_017C:	.ascii	"for STRPTR\0"
