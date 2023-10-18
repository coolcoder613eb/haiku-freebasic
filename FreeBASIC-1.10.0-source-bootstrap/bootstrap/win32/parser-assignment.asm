	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERLETINIT@0
_PARSERLETINIT@0:
.L_0067:
push -1
push 4
push 16
lea eax, [_PARSER+56]
push eax
call _LISTINIT@16
.L_0068:
ret
.balign 16

.globl _PARSERLETEND@0
_PARSERLETEND@0:
.L_0069:
lea eax, [_PARSER+56]
push eax
call _LISTEND@4
.L_006A:
ret
.balign 16

.globl _HISASSIGNTOKEN@4
_HISASSIGNTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
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
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNTOKEN@0
_CASSIGNTOKEN@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_006F:
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .L_0072
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0072:
mov dword ptr [ebp-4], 0
.L_0071:
.L_0070:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _COPERATOR@4
_COPERATOR@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0076
.L_0078:
mov dword ptr [ebp-8], 34
jmp .L_0075
.L_0079:
mov dword ptr [ebp-8], 35
jmp .L_0075
.L_007A:
mov dword ptr [ebp-8], 36
jmp .L_0075
.L_007B:
mov dword ptr [ebp-8], 37
jmp .L_0075
.L_007C:
mov dword ptr [ebp-8], 38
jmp .L_0075
.L_007D:
mov dword ptr [ebp-8], 39
jmp .L_0075
.L_007E:
mov dword ptr [ebp-8], 40
jmp .L_0075
.L_007F:
mov dword ptr [ebp-8], 41
jmp .L_0075
.L_0080:
mov dword ptr [ebp-8], 42
jmp .L_0075
.L_0081:
mov dword ptr [ebp-8], 33
jmp .L_0075
.L_0082:
mov dword ptr [ebp-8], 28
jmp .L_0075
.L_0083:
mov dword ptr [ebp-8], 29
jmp .L_0075
.L_0084:
mov dword ptr [ebp-8], 32
jmp .L_0075
.L_0085:
mov dword ptr [ebp-8], 30
jmp .L_0075
.L_0086:
mov dword ptr [ebp-8], 31
jmp .L_0075
.L_0087:
mov dword ptr [ebp-8], 43
jmp .L_0075
.L_0088:
mov dword ptr [ebp-8], 44
jmp .L_0075
.L_0089:
cmp dword ptr [ebp+8], 0
jne .L_008B
jmp .L_0074
.L_008B:
.L_008A:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-20], eax
jmp .L_008D
.L_008F:
mov dword ptr [ebp-8], 45
jmp .L_008C
.L_0090:
mov dword ptr [ebp-8], 46
jmp .L_008C
.L_0091:
mov dword ptr [ebp-8], 47
jmp .L_008C
.L_0092:
mov dword ptr [ebp-8], 48
jmp .L_008C
.L_0093:
mov dword ptr [ebp-8], 50
jmp .L_008C
.L_0094:
mov dword ptr [ebp-8], 49
jmp .L_008C
.L_0095:
mov dword ptr [ebp-8], 0
jmp .L_008C
.L_0096:
mov dword ptr [ebp-8], 52
jmp .L_008C
.L_0097:
mov dword ptr [ebp-8], 27
jmp .L_008C
.L_0098:
mov dword ptr [ebp-8], 56
jmp .L_008C
.L_0099:
mov dword ptr [ebp-8], 57
jmp .L_008C
.L_009A:
mov dword ptr [ebp-8], 71
jmp .L_008C
.L_009B:
mov dword ptr [ebp-8], 72
jmp .L_008C
.L_009C:
mov dword ptr [ebp-8], 70
jmp .L_008C
.L_009D:
mov dword ptr [ebp-8], 69
jmp .L_008C
.L_009E:
mov dword ptr [ebp-8], 68
jmp .L_008C
.L_009F:
mov dword ptr [ebp-8], 58
jmp .L_008C
.L_00A0:
mov dword ptr [ebp-8], 59
jmp .L_008C
.L_00A1:
mov dword ptr [ebp-8], 60
jmp .L_008C
.L_00A2:
mov dword ptr [ebp-8], 61
jmp .L_008C
.L_00A3:
mov dword ptr [ebp-8], 62
jmp .L_008C
.L_00A4:
mov dword ptr [ebp-8], 63
jmp .L_008C
.L_00A5:
mov dword ptr [ebp-8], 65
jmp .L_008C
.L_00A6:
mov dword ptr [ebp-8], 73
jmp .L_008C
.L_00A7:
mov dword ptr [ebp-8], 22
jmp .L_008C
.L_00A8:
mov dword ptr [ebp-8], 77
jmp .L_008C
.L_00A9:
push 0
push 93
call _HMATCH@8
test eax, eax
jne .L_00AB
push 0
push 0
push 66
call _ERRREPORT@12
.L_00AB:
.L_00AA:
mov dword ptr [ebp-8], 23
jmp .L_008C
.L_00AC:
mov eax, dword ptr [ebp-12]
cmp eax, 389
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
push 0
push 91
call _HMATCH@8
test eax, eax
je .L_00AE
push 0
push 93
call _HMATCH@8
test eax, eax
jne .L_00B0
push 0
push 0
push 66
call _ERRREPORT@12
.L_00B0:
.L_00AF:
cmp dword ptr [ebp-24], 0
je .L_00B1
mov dword ptr [ebp-28], 19
jmp .L_00C0
.L_00B1:
mov dword ptr [ebp-28], 21
.L_00C0:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
jmp .L_00AD
.L_00AE:
cmp dword ptr [ebp-24], 0
je .L_00B3
mov dword ptr [ebp-28], 18
jmp .L_00C1
.L_00B3:
mov dword ptr [ebp-28], 20
.L_00C1:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
.L_00AD:
jmp .L_008C
.L_00B5:
mov dword ptr [ebp-8], 24
jmp .L_008C
.L_00B6:
mov dword ptr [ebp-8], 25
jmp .L_008C
.L_00B7:
mov dword ptr [ebp-8], 26
jmp .L_008C
.L_00B8:
jmp .L_008C
.L_008D:
mov eax, dword ptr [ebp-20]
add eax, 4294967232
cmp eax, 401
ja .L_00B8
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00B9+eax*4-256]
_.L_00B9:
.int .L_00A7
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00A9
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B5
.int .L_00B6
.int .L_00B7
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_0096
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_008F
.int .L_0090
.int .L_0091
.int .L_0092
.int .L_0093
.int .L_0094
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00AC
.int .L_00AC
.int .L_0095
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00A8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_0097
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_0098
.int .L_0099
.int .L_009A
.int .L_009B
.int .L_009F
.int .L_00A0
.int .L_00A1
.int .L_00A2
.int .L_00A3
.int .L_00A4
.int .L_00A5
.int .L_009E
.int .L_009D
.int .L_009C
.int .L_00B8
.int .L_00B8
.int .L_00B8
.int .L_00A6
.L_008C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0074
jmp .L_0075
.L_00BA:
jmp .L_0074
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp-16]
add eax, 4294967258
cmp eax, 427
ja .L_00BA
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00BB+eax*4-152]
_.L_00BB:
.int .L_0088
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0085
.int .L_0082
.int .L_00BA
.int .L_0083
.int .L_00BA
.int .L_0086
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_0084
.int .L_00BA
.int .L_0087
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0078
.int .L_0079
.int .L_007A
.int .L_007B
.int .L_007C
.int .L_007D
.int .L_007E
.int .L_0089
.int .L_0081
.int .L_007F
.int .L_0080
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_0089
.int .L_00BA
.int .L_00BA
.int .L_00BA
.int .L_0089
.L_0075:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+8], 0
jne .L_00BD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0074
.L_00BD:
.L_00BC:
call _CASSIGNTOKEN@0
test eax, eax
je .L_00BF
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+12]
mov dword ptr [ebp-8], ebx
.L_00BF:
.L_00BE:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENT@4
_CASSIGNMENT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00C3:
push dword ptr [ebp+8]
call _ASTISCONSTANT@4
test eax, eax
je .L_00C6
push 0
push -1
push 119
call _ERRREPORT@12
.L_00C6:
.L_00C5:
mov dword ptr [ebp-4], -1
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
jne .L_00C8
push 0
call _COPERATOR@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
jne .L_00CA
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00C4
.L_00CA:
.L_00C9:
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+12]
mov dword ptr [ebp-4], ebx
.L_00C8:
.L_00C7:
push 0
call _LEXSKIPTOKEN@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [_PARSER+156], ebx
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00CC
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00C4
.L_00CC:
.L_00CB:
mov dword ptr [_PARSER+160], 0
mov dword ptr [_PARSER+156], -2147483648
cmp dword ptr [ebp-4], -1
je .L_00CE
push 2
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWSELFBOP@20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_00D0
push dword ptr [ebp+8]
call _ASTADD@4
jmp .L_00CF
.L_00D0:
push 0
push -1
push 20
call _ERRREPORT@12
.L_00CF:
jmp .L_00CD
.L_00CE:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWASSIGN@12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_00D2
push dword ptr [ebp+8]
call _ASTADD@4
jmp .L_00D1
.L_00D2:
push 0
push -1
push 181
call _ERRREPORT@12
.L_00D1:
.L_00CD:
.L_00C4:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENTORPTRCALLEX@4
_CASSIGNMENTORPTRCALLEX@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00D3:
mov dword ptr [ebp-4], 0
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00D6
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00D4
.L_00D6:
.L_00D5:
cmp dword ptr [ebp+8], 0
je .L_00D8
push dword ptr [ebp+8]
call _CMAYBEIGNORECALLRESULT@4
test eax, eax
jne .L_00DA
push dword ptr [ebp+8]
call _CASSIGNMENT@4
.L_00DA:
.L_00D9:
.L_00D8:
.L_00D7:
mov dword ptr [ebp-4], -1
.L_00D4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENTORPTRCALL@0
_CASSIGNMENTORPTRCALL@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 391
je .L_00FD
push 2
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00FF
jmp .L_00FB
.L_00FF:
.L_00FE:
push dword ptr [ebp-12]
call _CMAYBEIGNORECALLRESULT@4
test eax, eax
je .L_0101
mov dword ptr [ebp-4], -1
jmp .L_00FB
.L_0101:
.L_0100:
push dword ptr [ebp-12]
call _ASTSKIPNOCONVCAST@4
push dword ptr [ebp-12]
mov ebx, eax
call _ASTSKIPCASTS@4
cmp ebx, eax
je .L_0103
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_00FB
.L_0103:
.L_0102:
push dword ptr [ebp-12]
call _CASSIGNMENTORPTRCALLEX@4
mov dword ptr [ebp-4], eax
jmp .L_00FB
.L_00FD:
.L_00FC:
mov eax, dword ptr [_ENV+1040]
and eax, 262144
test eax, eax
jne .L_0105
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 40
je .L_0107
push 0
push 146
push 262144
call _ERRREPORTNOTALLOWED@12
jmp .L_0106
.L_0107:
mov dword ptr [ebp-8], -1
push 2048
call _LEXSKIPTOKEN@4
.L_0106:
.L_0105:
.L_0104:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0109
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_00FB
.L_0109:
.L_0108:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-8], 0
jne .L_010B
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_010D
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_010C
.L_010D:
push dword ptr [ebp-12]
call _CASSIGNMENT@4
.L_010C:
mov dword ptr [ebp-4], -1
jmp .L_00FB
.L_010B:
.L_010A:
mov dword ptr [ebp-20], 0
.L_010E:
lea eax, [_PARSER+56]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-32], eax
push 0
call _CVARORDEREF@4
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .L_0112
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
call _ASTISCONSTANT@4
test eax, eax
je .L_0114
push 0
push -1
push 119
call _ERRREPORT@12
.L_0114:
.L_0113:
inc dword ptr [ebp-20]
.L_0112:
.L_0111:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .L_0116
jmp .L_010F
.L_0116:
.L_0115:
push 0
call _LEXSKIPTOKEN@4
.L_0110:
jmp .L_010E
.L_010F:
cmp dword ptr [ebp-20], 0
jne .L_0118
push 0
push 0
push 14
call _ERRREPORT@12
.L_0118:
.L_0117:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .L_011A
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .L_0119
.L_011A:
push 0
call _LEXSKIPTOKEN@4
.L_0119:
call _CASSIGNTOKEN@0
test eax, eax
jne .L_011C
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-12], 0
jmp .L_011B
.L_011C:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_011E
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.L_011E:
.L_011D:
.L_011B:
cmp dword ptr [ebp-12], 0
je .L_0120
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 20
jne .L_0123
.L_0124:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
mov eax, dword ptr [ecx+120]
and eax, 8192
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0126
push 0
push 0
push 268
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-12], 0
.L_0126:
.L_0125:
jmp .L_0121
.L_0123:
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-12], 0
.L_0127:
.L_0121:
.L_0120:
.L_011F:
cmp dword ptr [ebp-12], 0
jne .L_0129
.L_012A:
lea eax, [_PARSER+56]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_012E
jmp .L_012B
.L_012E:
.L_012D:
push dword ptr [ebp-32]
lea eax, [_PARSER+56]
push eax
call _LISTDELNODE@8
.L_012C:
jmp .L_012A
.L_012B:
jmp .L_00FB
.L_0129:
.L_0128:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .L_0130
push dword ptr [ebp-12]
call _ASTBUILDCALLRESULTUDT@4
mov dword ptr [ebp-12], eax
.L_0130:
.L_012F:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-20], 0
jle .L_0132
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
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-24], eax
push 64
push dword ptr [ebp-12]
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-24]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
mov dword ptr [ebp-28], eax
.L_0132:
.L_0131:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.L_0133:
lea eax, [_PARSER+56]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0137
jmp .L_0134
.L_0137:
.L_0136:
cmp dword ptr [ebp-16], 0
jne .L_0139
push 0
push 0
push 266
call _ERRREPORT@12
jmp .L_0138
.L_0139:
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .L_013B
push dword ptr [ebp-20]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
push dword ptr [ebp-16]
call _HASSIGNFROMFIELD@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_013D
jmp .L_00FB
.L_013D:
.L_013C:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
.L_013B:
.L_013A:
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-16], eax
.L_0138:
push dword ptr [ebp-32]
lea eax, [_PARSER+56]
push eax
call _LISTDELNODE@8
.L_0135:
jmp .L_0133
.L_0134:
push dword ptr [ebp-28]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.L_00FB:
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
_HCARD2ORD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00DB:
cmp dword ptr [ebp+8], 1
jne .L_00DE
.L_00DF:
mov eax, offset _Lt_00E0
mov dword ptr [ebp-4], eax
jmp .L_00DC
jmp .L_00DD
.L_00DE:
cmp dword ptr [ebp+8], 2
jne .L_00E1
.L_00E2:
mov eax, offset _Lt_00E3
mov dword ptr [ebp-4], eax
jmp .L_00DC
jmp .L_00DD
.L_00E1:
cmp dword ptr [ebp+8], 3
jne .L_00E4
.L_00E5:
mov eax, offset _Lt_00E6
mov dword ptr [ebp-4], eax
jmp .L_00DC
jmp .L_00DD
.L_00E4:
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0140
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_00E8
push -1
push offset _Lt_0140
call _fb_StrConcatAssign@20
mov eax, dword ptr [_Lt_0140]
mov dword ptr [ebp-4], eax
.L_00E7:
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0140,12

.section .text
.balign 16
_HREPORTLETERROR@8:
push ebp
mov ebp, esp
sub esp, 36
.L_00E9:
push 0
push 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 18
push offset _Lt_00EC
push -1
push 0
push dword ptr [ebp+12]
call _HCARD2ORD@4
push eax
push 8
push offset _Lt_00EB
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call _ERRREPORTEX@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_00EA:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HASSIGNFROMFIELD@16:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00F0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
je .L_00F3
push dword ptr [ebp+20]
push 267
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F3:
.L_00F2:
push dword ptr [ebp+8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .L_00F5
push dword ptr [ebp+20]
push 202
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F5:
.L_00F4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_00F7
push dword ptr [ebp+20]
push 269
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F7:
.L_00F6:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWFIELD@8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F9
push dword ptr [ebp+20]
push 181
call _HREPORTLETERROR@8
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .L_00F1
.L_00F9:
.L_00F8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_00E0:	.ascii	"1st\0"
.balign 4
_Lt_00E3:	.ascii	"2nd\0"
.balign 4
_Lt_00E6:	.ascii	"3rd\0"
.balign 4
_Lt_00E8:	.ascii	"th\0"
.balign 4
_Lt_00EB:	.ascii	"at the \0"
.balign 4
_Lt_00EC:	.ascii	" element of LET()\0"
