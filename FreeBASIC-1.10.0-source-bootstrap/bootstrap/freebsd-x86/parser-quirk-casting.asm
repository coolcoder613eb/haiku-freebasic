	.intel_syntax noprefix

.section .text
.balign 16

.globl CTYPECONVEXPR
CTYPECONVEXPR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_0069
.L_006B:
mov dword ptr [ebp-8], 1
jmp .L_0068
.L_006C:
mov dword ptr [ebp-8], 2
jmp .L_0068
.L_006D:
mov dword ptr [ebp-8], 3
jmp .L_0068
.L_006E:
mov dword ptr [ebp-8], 5
jmp .L_0068
.L_006F:
mov dword ptr [ebp-8], 6
jmp .L_0068
.L_0070:
mov eax, dword ptr [ENV+1044]
mov dword ptr [ebp-8], eax
jmp .L_0068
.L_0071:
mov dword ptr [ebp-8], 9
jmp .L_0068
.L_0072:
mov dword ptr [ebp-8], 11
jmp .L_0068
.L_0073:
mov dword ptr [ebp-8], 12
jmp .L_0068
.L_0074:
mov dword ptr [ebp-8], 13
jmp .L_0068
.L_0075:
mov dword ptr [ebp-8], 14
jmp .L_0068
.L_0076:
mov dword ptr [ebp-8], 15
jmp .L_0068
.L_0077:
mov dword ptr [ebp-8], 16
jmp .L_0068
.L_0078:
mov dword ptr [ebp-12], 119
jmp .L_0068
.L_0079:
mov dword ptr [ebp-12], 120
jmp .L_0068
.L_0069:
mov eax, dword ptr [ebp-24]
add eax, 4294966895
cmp eax, 14
ja .L_0068
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_007A+eax*4-1604]
.L_007A:
.int .L_006B
.int .L_006C
.int .L_006D
.int .L_006E
.int .L_006F
.int .L_0070
.int .L_0071
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_0075
.int .L_0076
.int .L_0077
.int .L_0078
.int .L_0079
.L_0068:
cmp dword ptr [ebp-8], -2147483648
jne .L_007C
cmp dword ptr [ebp-12], -1
jne .L_007E
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_007E:
.L_007D:
.L_007C:
.L_007B:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp eax, 406
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 407
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0080
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
je .L_0082
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
mov eax, dword ptr [ebp+8]
cmp eax, 407
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .L_0084
push 0
push 0
push 309
call ERRREPORT
add esp, 12
.L_0084:
.L_0083:
.L_0082:
.L_0081:
.L_0080:
.L_007F:
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .L_0086
push 0
push 0
push 6
call ERRREPORT
add esp, 12
.L_0086:
.L_0085:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0088
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
mov dword ptr [ebp-20], eax
.L_0088:
.L_0087:
cmp dword ptr [ebp-12], 119
jne .L_008A
.L_008B:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_0089
.L_008A:
cmp dword ptr [ebp-12], 120
jne .L_008C
.L_008D:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
.L_008C:
.L_0089:
lea eax, [ebp-16]
push eax
push 66
push dword ptr [ebp-20]
push 0
push dword ptr [ebp-8]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_008F
cmp dword ptr [ebp-16], 0
jne .L_0091
mov dword ptr [ebp-16], 20
.L_0091:
.L_0090:
push 0
push -1
push dword ptr [ebp-16]
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.L_008F:
.L_008E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0093
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
jmp .L_0092
.L_0093:
cmp dword ptr [ebp+12], 0
jne .L_0095
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0095:
.L_0094:
.L_0092:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CANONTYPE
CANONTYPE:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_0099:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 301
call HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_009C
push 1
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00A0
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A0:
.L_009F:
jmp .L_009B
.L_009C:
mov eax, dword ptr [PARSER+160]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], -2147483648
jne .L_00A2
push 0
push 0
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-20]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_00A6
.L_00A7:
cmp dword ptr [ebp-28], 23
jne .L_00A5
.L_00A6:
push 0
push 0
push 71
call ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A5:
.L_00A3:
.L_009B:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCOMPLAINIFABSTRACTCLASS
add esp, 8
cmp dword ptr [ebp-24], 0
je .L_00A9
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .L_00AB
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 300
call HSKIPUNTIL
add esp, 16
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 20
jne .L_00AD
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00AF
jmp .L_00B1
or dword ptr [PARSER+152], 1
jmp .L_00B0
.L_00B1:
and dword ptr [PARSER+152], -2
.L_00B0:
.L_00AF:
.L_00AE:
push dword ptr [ebp-16]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_00B3
push dword ptr [ebp-16]
call CCTORCALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_009A
.L_00B3:
.L_00B2:
.L_00AD:
.L_00AC:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push -2147483648
push 0
push dword ptr [ebp-12]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 12
push 0
push dword ptr [ebp-12]
call SYMBDELSYMBOL
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
