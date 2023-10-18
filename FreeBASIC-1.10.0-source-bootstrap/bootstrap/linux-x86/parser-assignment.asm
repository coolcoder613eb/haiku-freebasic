	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERLETINIT
PARSERLETINIT:
.type PARSERLETINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
push -1
push 4
push 16
lea eax, [PARSER+56]
push eax
call LISTINIT
add esp, 16
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERLETINIT, .-PARSERLETINIT
.cfi_endproc
.balign 16

.globl PARSERLETEND
PARSERLETEND:
.type PARSERLETEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0068:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTEND
add esp, 16
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERLETEND, .-PARSERLETEND
.cfi_endproc
.balign 16

.globl HISASSIGNTOKEN
HISASSIGNTOKEN:
.type HISASSIGNTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
mov eax, dword ptr [ebp+8]
cmp eax, 299
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 305
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISASSIGNTOKEN, .-HISASSIGNTOKEN
.cfi_endproc
.balign 16

.globl CASSIGNTOKEN
CASSIGNTOKEN:
.type CASSIGNTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_0071
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0070
.L_0071:
mov dword ptr [ebp-4], 0
.L_0070:
.L_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASSIGNTOKEN, .-CASSIGNTOKEN
.cfi_endproc
.balign 16

.globl COPERATOR
COPERATOR:
.type COPERATOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0075
.L_0077:
mov dword ptr [ebp-8], 34
jmp .L_0074
.L_0078:
mov dword ptr [ebp-8], 35
jmp .L_0074
.L_0079:
mov dword ptr [ebp-8], 36
jmp .L_0074
.L_007A:
mov dword ptr [ebp-8], 37
jmp .L_0074
.L_007B:
mov dword ptr [ebp-8], 38
jmp .L_0074
.L_007C:
mov dword ptr [ebp-8], 39
jmp .L_0074
.L_007D:
mov dword ptr [ebp-8], 40
jmp .L_0074
.L_007E:
mov dword ptr [ebp-8], 41
jmp .L_0074
.L_007F:
mov dword ptr [ebp-8], 42
jmp .L_0074
.L_0080:
mov dword ptr [ebp-8], 33
jmp .L_0074
.L_0081:
mov dword ptr [ebp-8], 28
jmp .L_0074
.L_0082:
mov dword ptr [ebp-8], 29
jmp .L_0074
.L_0083:
mov dword ptr [ebp-8], 32
jmp .L_0074
.L_0084:
mov dword ptr [ebp-8], 30
jmp .L_0074
.L_0085:
mov dword ptr [ebp-8], 31
jmp .L_0074
.L_0086:
mov dword ptr [ebp-8], 43
jmp .L_0074
.L_0087:
mov dword ptr [ebp-8], 44
jmp .L_0074
.L_0088:
cmp dword ptr [ebp+8], 0
jne .L_008A
jmp .L_0073
.L_008A:
.L_0089:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-20], eax
jmp .L_008C
.L_008E:
mov dword ptr [ebp-8], 45
jmp .L_008B
.L_008F:
mov dword ptr [ebp-8], 46
jmp .L_008B
.L_0090:
mov dword ptr [ebp-8], 47
jmp .L_008B
.L_0091:
mov dword ptr [ebp-8], 48
jmp .L_008B
.L_0092:
mov dword ptr [ebp-8], 50
jmp .L_008B
.L_0093:
mov dword ptr [ebp-8], 49
jmp .L_008B
.L_0094:
mov dword ptr [ebp-8], 0
jmp .L_008B
.L_0095:
mov dword ptr [ebp-8], 52
jmp .L_008B
.L_0096:
mov dword ptr [ebp-8], 27
jmp .L_008B
.L_0097:
mov dword ptr [ebp-8], 56
jmp .L_008B
.L_0098:
mov dword ptr [ebp-8], 57
jmp .L_008B
.L_0099:
mov dword ptr [ebp-8], 71
jmp .L_008B
.L_009A:
mov dword ptr [ebp-8], 72
jmp .L_008B
.L_009B:
mov dword ptr [ebp-8], 70
jmp .L_008B
.L_009C:
mov dword ptr [ebp-8], 69
jmp .L_008B
.L_009D:
mov dword ptr [ebp-8], 68
jmp .L_008B
.L_009E:
mov dword ptr [ebp-8], 58
jmp .L_008B
.L_009F:
mov dword ptr [ebp-8], 59
jmp .L_008B
.L_00A0:
mov dword ptr [ebp-8], 60
jmp .L_008B
.L_00A1:
mov dword ptr [ebp-8], 61
jmp .L_008B
.L_00A2:
mov dword ptr [ebp-8], 62
jmp .L_008B
.L_00A3:
mov dword ptr [ebp-8], 63
jmp .L_008B
.L_00A4:
mov dword ptr [ebp-8], 65
jmp .L_008B
.L_00A5:
mov dword ptr [ebp-8], 73
jmp .L_008B
.L_00A6:
mov dword ptr [ebp-8], 22
jmp .L_008B
.L_00A7:
mov dword ptr [ebp-8], 77
jmp .L_008B
.L_00A8:
sub esp, 8
push 0
push 93
call HMATCH
add esp, 16
test eax, eax
jne .L_00AA
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
.L_00AA:
.L_00A9:
mov dword ptr [ebp-8], 23
jmp .L_008B
.L_00AB:
mov eax, dword ptr [ebp-12]
cmp eax, 389
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 91
call HMATCH
add esp, 16
test eax, eax
je .L_00AD
sub esp, 8
push 0
push 93
call HMATCH
add esp, 16
test eax, eax
jne .L_00AF
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
.L_00AF:
.L_00AE:
cmp dword ptr [ebp-24], 0
je .L_00B0
mov dword ptr [ebp-28], 19
jmp .L_00BF
.L_00B0:
mov dword ptr [ebp-28], 21
.L_00BF:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
jmp .L_00AC
.L_00AD:
cmp dword ptr [ebp-24], 0
je .L_00B2
mov dword ptr [ebp-28], 18
jmp .L_00C0
.L_00B2:
mov dword ptr [ebp-28], 20
.L_00C0:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
.L_00AC:
jmp .L_008B
.L_00B4:
mov dword ptr [ebp-8], 24
jmp .L_008B
.L_00B5:
mov dword ptr [ebp-8], 25
jmp .L_008B
.L_00B6:
mov dword ptr [ebp-8], 26
jmp .L_008B
.L_00B7:
jmp .L_008B
.L_008C:
mov eax, dword ptr [ebp-20]
add eax, 4294967232
cmp eax, 401
ja .L_00B7
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00B8+eax*4-256]
.L_00B8:
.int .L_00A6
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00A8
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B4
.int .L_00B5
.int .L_00B6
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_0095
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_008E
.int .L_008F
.int .L_0090
.int .L_0091
.int .L_0092
.int .L_0093
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00AB
.int .L_00AB
.int .L_0094
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00A7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_0096
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_0097
.int .L_0098
.int .L_0099
.int .L_009A
.int .L_009E
.int .L_009F
.int .L_00A0
.int .L_00A1
.int .L_00A2
.int .L_00A3
.int .L_00A4
.int .L_009D
.int .L_009C
.int .L_009B
.int .L_00B7
.int .L_00B7
.int .L_00B7
.int .L_00A5
.L_008B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0073
jmp .L_0074
.L_00B9:
jmp .L_0073
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-16]
add eax, 4294967258
cmp eax, 427
ja .L_00B9
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00BA+eax*4-152]
.L_00BA:
.int .L_0087
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0084
.int .L_0081
.int .L_00B9
.int .L_0082
.int .L_00B9
.int .L_0085
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_0083
.int .L_00B9
.int .L_0086
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0077
.int .L_0078
.int .L_0079
.int .L_007A
.int .L_007B
.int .L_007C
.int .L_007D
.int .L_0088
.int .L_0080
.int .L_007E
.int .L_007F
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_0088
.int .L_00B9
.int .L_00B9
.int .L_00B9
.int .L_0088
.L_0074:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .L_00BC
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0073
.L_00BC:
.L_00BB:
call CASSIGNTOKEN
test eax, eax
je .L_00BE
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+12]
mov dword ptr [ebp-8], ebx
.L_00BE:
.L_00BD:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size COPERATOR, .-COPERATOR
.cfi_endproc
.balign 16

.globl CASSIGNMENT
CASSIGNMENT:
.type CASSIGNMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00C2:
sub esp, 12
push dword ptr [ebp+8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_00C5
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_00C5:
.L_00C4:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .L_00C7
sub esp, 12
push 0
call COPERATOR
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .L_00C9
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00C3
.L_00C9:
.L_00C8:
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+12]
mov dword ptr [ebp-4], ebx
.L_00C7:
.L_00C6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [PARSER+156], ebx
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00CB
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
jmp .L_00C3
.L_00CB:
.L_00CA:
mov dword ptr [PARSER+160], 0
mov dword ptr [PARSER+156], -2147483648
cmp dword ptr [ebp-4], -1
je .L_00CD
sub esp, 12
push 2
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWSELFBOP
add esp, 32
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_00CF
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
jmp .L_00CE
.L_00CF:
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
.L_00CE:
jmp .L_00CC
.L_00CD:
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_00D1
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
jmp .L_00D0
.L_00D1:
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
.L_00D0:
.L_00CC:
.L_00C3:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASSIGNMENT, .-CASSIGNMENT
.cfi_endproc
.balign 16

.globl CASSIGNMENTORPTRCALLEX
CASSIGNMENTORPTRCALLEX:
.type CASSIGNMENTORPTRCALLEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00D2:
mov dword ptr [ebp-4], 0
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00D5
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00D3
.L_00D5:
.L_00D4:
cmp dword ptr [ebp+8], 0
je .L_00D7
sub esp, 12
push dword ptr [ebp+8]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
jne .L_00D9
sub esp, 12
push dword ptr [ebp+8]
call CASSIGNMENT
add esp, 16
.L_00D9:
.L_00D8:
.L_00D7:
.L_00D6:
mov dword ptr [ebp-4], -1
.L_00D3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASSIGNMENTORPTRCALLEX, .-CASSIGNMENTORPTRCALLEX
.cfi_endproc
.balign 16

.globl CASSIGNMENTORPTRCALL
CASSIGNMENTORPTRCALL:
.type CASSIGNMENTORPTRCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 391
je .L_00FC
sub esp, 12
push 2
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FE
jmp .L_00FA
.L_00FE:
.L_00FD:
sub esp, 12
push dword ptr [ebp-12]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
je .L_0100
mov dword ptr [ebp-4], -1
jmp .L_00FA
.L_0100:
.L_00FF:
sub esp, 12
push dword ptr [ebp-12]
call ASTSKIPNOCONVCAST
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
mov ebx, eax
call ASTSKIPCASTS
add esp, 16
cmp ebx, eax
je .L_0102
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_00FA
.L_0102:
.L_0101:
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00FA
.L_00FC:
.L_00FB:
mov eax, dword ptr [ENV+1040]
and eax, 262144
test eax, eax
jne .L_0104
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 40
je .L_0106
sub esp, 4
push 0
push 146
push 262144
call ERRREPORTNOTALLOWED
add esp, 16
jmp .L_0105
.L_0106:
mov dword ptr [ebp-8], -1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0105:
.L_0104:
.L_0103:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0108
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00FA
.L_0108:
.L_0107:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-8], 0
jne .L_010A
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_010C
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
jmp .L_010B
.L_010C:
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENT
add esp, 16
.L_010B:
mov dword ptr [ebp-4], -1
jmp .L_00FA
.L_010A:
.L_0109:
mov dword ptr [ebp-20], 0
.L_010D:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .L_0111
sub esp, 12
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_0113
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.L_0113:
.L_0112:
inc dword ptr [ebp-20]
.L_0111:
.L_0110:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0115
jmp .L_010E
.L_0115:
.L_0114:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_010F:
jmp .L_010D
.L_010E:
cmp dword ptr [ebp-20], 0
jne .L_0117
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.L_0117:
.L_0116:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0119
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0118
.L_0119:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0118:
call CASSIGNTOKEN
test eax, eax
jne .L_011B
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-12], 0
jmp .L_011A
.L_011B:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_011D
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
.L_011D:
.L_011C:
.L_011A:
cmp dword ptr [ebp-12], 0
je .L_011F
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 20
jne .L_0122
.L_0123:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
mov eax, dword ptr [ecx+116]
and eax, 8192
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0125
sub esp, 4
push 0
push 0
push 268
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-12], 0
.L_0125:
.L_0124:
jmp .L_0120
.L_0122:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-12], 0
.L_0126:
.L_0120:
.L_011F:
.L_011E:
cmp dword ptr [ebp-12], 0
jne .L_0128
.L_0129:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_012D
jmp .L_012A
.L_012D:
.L_012C:
sub esp, 8
push dword ptr [ebp-32]
lea eax, [PARSER+56]
push eax
call LISTDELNODE
add esp, 16
.L_012B:
jmp .L_0129
.L_012A:
jmp .L_00FA
.L_0128:
.L_0127:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .L_012F
sub esp, 12
push dword ptr [ebp-12]
call ASTBUILDCALLRESULTUDT
add esp, 16
mov dword ptr [ebp-12], eax
.L_012F:
.L_012E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-20], 0
jle .L_0131
sub esp, 8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push 64
sub esp, 4
push dword ptr [ebp-12]
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-24]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 16
mov dword ptr [ebp-28], eax
.L_0131:
.L_0130:
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.L_0132:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0136
jmp .L_0133
.L_0136:
.L_0135:
cmp dword ptr [ebp-16], 0
jne .L_0138
sub esp, 4
push 0
push 0
push 266
call ERRREPORT
add esp, 16
jmp .L_0137
.L_0138:
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .L_013A
push dword ptr [ebp-20]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
push dword ptr [ebp-16]
call HASSIGNFROMFIELD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_013C
jmp .L_00FA
.L_013C:
.L_013B:
sub esp, 4
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
.L_013A:
.L_0139:
sub esp, 12
push dword ptr [ebp-16]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-16], eax
.L_0137:
sub esp, 8
push dword ptr [ebp-32]
lea eax, [PARSER+56]
push eax
call LISTDELNODE
add esp, 16
.L_0134:
jmp .L_0132
.L_0133:
sub esp, 12
push dword ptr [ebp-28]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASSIGNMENTORPTRCALL, .-CASSIGNMENTORPTRCALL
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
HCARD2ORD:
.type HCARD2ORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00DA:
cmp dword ptr [ebp+8], 1
jne .L_00DD
.L_00DE:
mov eax, offset Lt_00DF
mov dword ptr [ebp-4], eax
jmp .L_00DB
jmp .L_00DC
.L_00DD:
cmp dword ptr [ebp+8], 2
jne .L_00E0
.L_00E1:
mov eax, offset Lt_00E2
mov dword ptr [ebp-4], eax
jmp .L_00DB
jmp .L_00DC
.L_00E0:
cmp dword ptr [ebp+8], 3
jne .L_00E3
.L_00E4:
mov eax, offset Lt_00E5
mov dword ptr [ebp-4], eax
jmp .L_00DB
jmp .L_00DC
.L_00E3:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_013F
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00E7
push -1
push offset Lt_013F
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [Lt_013F]
mov dword ptr [ebp-4], eax
.L_00E6:
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCARD2ORD, .-HCARD2ORD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_013F,12

.section .text
.balign 16
HREPORTLETERROR:
.type HREPORTLETERROR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_00E8:
sub esp, 12
push 0
push 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 18
push offset Lt_00EB
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+12]
call HCARD2ORD
add esp, 16
push eax
push 8
push offset Lt_00EA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.L_00E9:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREPORTLETERROR, .-HREPORTLETERROR
.cfi_endproc
.balign 16
HASSIGNFROMFIELD:
.type HASSIGNFROMFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00EF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
je .L_00F2
sub esp, 8
push dword ptr [ebp+20]
push 267
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .L_00F0
.L_00F2:
.L_00F1:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_00F4
sub esp, 8
push dword ptr [ebp+20]
push 202
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .L_00F0
.L_00F4:
.L_00F3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00F6
sub esp, 8
push dword ptr [ebp+20]
push 269
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .L_00F0
.L_00F6:
.L_00F5:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F8
sub esp, 8
push dword ptr [ebp+20]
push 181
call HREPORTLETERROR
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .L_00F0
.L_00F8:
.L_00F7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSIGNFROMFIELD, .-HASSIGNFROMFIELD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_00DF:	.ascii	"1st\0"
.balign 4
Lt_00E2:	.ascii	"2nd\0"
.balign 4
Lt_00E5:	.ascii	"3rd\0"
.balign 4
Lt_00E7:	.ascii	"th\0"
.balign 4
Lt_00EA:	.ascii	"at the \0"
.balign 4
Lt_00EB:	.ascii	" element of LET()\0"
