	.intel_syntax noprefix

.section .text
.balign 16

.globl _COPERATORNEW
_COPERATORNEW:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-28], -1
mov dword ptr [ebp-48], 78
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .L_006A
call _CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_006C
push 0
push -1
push 9
call _ERRREPORT
add esp, 12
.L_006C:
.L_006B:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .L_006E
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.L_006E:
.L_006D:
.L_006A:
.L_0069:
push 0
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call _HSYMBOLTYPE
add esp, 20
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 18
je .L_0073
.L_0074:
cmp dword ptr [ebp-60], 4
je .L_0073
.L_0075:
cmp dword ptr [ebp-60], 7
jne .L_0072
.L_0073:
push 0
push -1
push 201
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 17
.L_0072:
.L_0070:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _TYPEHASCTOR
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _TYPEHASDEFCTOR
add esp, 8
mov dword ptr [ebp-24], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_0077
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0079
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .L_0078
.L_0079:
mov dword ptr [ebp-48], 79
.L_0078:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 93
je .L_007B
push 0
push 0
push 66
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 93
call _HSKIPUNTIL
add esp, 16
jmp .L_007A
.L_007B:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_007A:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 123
jne .L_007D
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .L_007F
cmp dword ptr [ebp-24], 0
je .L_0081
push 0
push 1
push 0
push 19
call _ERRREPORTWARN
add esp, 16
.L_0081:
.L_0080:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .L_0083
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_0082
.L_0083:
mov dword ptr [ebp-28], 0
.L_0082:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_007E
.L_007F:
push 0
push 0
push 200
call _ERRREPORT
add esp, 12
.L_007E:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 125
je .L_0085
push 0
push 0
push 65
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL
add esp, 16
jmp .L_0084
.L_0085:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0084:
.L_007D:
.L_007C:
.L_0077:
.L_0076:
cmp dword ptr [ebp-36], 0
jne .L_0087
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .L_0086
.L_0087:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 16
jne .L_0089
push 0
push 9
push 9
push dword ptr [ebp-36]
call _CCONSTINTEXPRRANGED
add esp, 8
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .L_0088
.L_0089:
push 0
push 1
push dword ptr [ebp-36]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-36], eax
.L_0088:
cmp dword ptr [ebp-36], 0
jne .L_008B
push 0
push -1
push 20
call _ERRREPORT
add esp, 12
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
.L_008B:
.L_008A:
.L_0086:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
and eax, 31
mov edx, dword ptr [ebp-8]
and edx, 480
add edx, 32
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 261632
sal edx, 1
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 32505856
or eax, edx
push eax
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
je .L_008D
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_008F
cmp dword ptr [ebp-48], 79
jne .L_0091
push 0
push -1
push 199
call _ERRREPORT
add esp, 12
jmp .L_0090
.L_0091:
push dword ptr [ebp-12]
call _CCTORCALL
add esp, 4
mov dword ptr [ebp-32], eax
.L_0090:
jmp .L_008E
.L_008F:
push dword ptr [ebp-12]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0093
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
jmp .L_0092
.L_0093:
cmp dword ptr [ebp-48], 79
je .L_0095
push dword ptr [ebp-12]
call _CCTORCALL
add esp, 4
mov dword ptr [ebp-32], eax
jmp .L_0094
.L_0095:
push dword ptr [ebp-60]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0097
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.L_0097:
.L_0096:
.L_0094:
.L_0092:
.L_008E:
jmp .L_008C
.L_008D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_0099
cmp dword ptr [ebp-48], 79
jne .L_009B
push 0
push -1
push 200
call _ERRREPORT
add esp, 12
.L_009B:
.L_009A:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 372
jne .L_009D
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .L_009F
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .L_009E
.L_009F:
mov dword ptr [ebp-28], 0
.L_009E:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_00A1
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
jmp .L_00A0
.L_00A1:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00A0:
jmp .L_009C
.L_009D:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push dword ptr [ebp-16]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_00A3
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
.L_00A3:
.L_00A2:
.L_009C:
.L_0099:
.L_0098:
.L_008C:
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-16]
push dword ptr [ebp-48]
call _ASTBUILDNEWOP
add esp, 32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .L_00A5
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
.L_00A5:
.L_00A4:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-44]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _COPERATORDELETE
_COPERATORDELETE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00A6:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], 80
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .L_00A9
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], 81
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 93
je .L_00AB
push 0
push 0
push 66
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 93
call _HSKIPUNTIL
add esp, 16
jmp .L_00A7
.L_00AB:
.L_00AA:
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_00A9:
.L_00A8:
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00AD
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_00A7
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .L_00AF
push 0
push 0
push 28
call _ERRREPORT
add esp, 12
jmp .L_00A7
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 32
jne .L_00B2
.L_00B3:
push 0
push 1
push 0
push 22
call _ERRREPORTWARN
add esp, 16
jmp .L_00B0
.L_00B2:
cmp dword ptr [ebp-20], 55
jne .L_00B4
.L_00B5:
push 0
push -1
push 71
call _ERRREPORT
add esp, 12
.L_00B4:
.L_00B0:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
push eax
call _TYPEHASDTOR
add esp, 8
test eax, eax
je .L_00B7
push dword ptr [ebp-16]
call _SYMBGETCOMPDTOR1
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_00B9
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDDELETEOP
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_00A7:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
