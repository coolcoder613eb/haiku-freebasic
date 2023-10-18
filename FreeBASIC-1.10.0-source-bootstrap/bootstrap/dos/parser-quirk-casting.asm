	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTYPECONVEXPR
_CTYPECONVEXPR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .L_006A
.L_006C:
mov dword ptr [ebp-8], 1
jmp .L_0069
.L_006D:
mov dword ptr [ebp-8], 2
jmp .L_0069
.L_006E:
mov dword ptr [ebp-8], 3
jmp .L_0069
.L_006F:
mov dword ptr [ebp-8], 5
jmp .L_0069
.L_0070:
mov dword ptr [ebp-8], 6
jmp .L_0069
.L_0071:
mov eax, dword ptr [_ENV+1044]
mov dword ptr [ebp-8], eax
jmp .L_0069
.L_0072:
mov dword ptr [ebp-8], 9
jmp .L_0069
.L_0073:
mov dword ptr [ebp-8], 11
jmp .L_0069
.L_0074:
mov dword ptr [ebp-8], 12
jmp .L_0069
.L_0075:
mov dword ptr [ebp-8], 13
jmp .L_0069
.L_0076:
mov dword ptr [ebp-8], 14
jmp .L_0069
.L_0077:
mov dword ptr [ebp-8], 15
jmp .L_0069
.L_0078:
mov dword ptr [ebp-8], 16
jmp .L_0069
.L_0079:
mov dword ptr [ebp-12], 119
jmp .L_0069
.L_007A:
mov dword ptr [ebp-12], 120
jmp .L_0069
.L_006A:
mov eax, dword ptr [ebp-24]
add eax, 4294966895
cmp eax, 14
ja .L_0069
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_007B+eax*4-1604]
_.L_007B:
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
.int .L_007A
.L_0069:
cmp dword ptr [ebp-8], -2147483648
jne .L_007D
cmp dword ptr [ebp-12], -1
jne .L_007F
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_007F:
.L_007E:
.L_007D:
.L_007C:
push 2048
call _LEXSKIPTOKEN
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
je .L_0081
push 0
push 301
call _HMATCH
add esp, 8
test eax, eax
je .L_0083
push 8
call _CGTINPARENSONLYEXPR
push eax
call _CCONSTINTEXPR
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
call _HINTEGERTYPEFROMBITSIZE
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .L_0085
push 0
push 0
push 309
call _ERRREPORT
add esp, 12
.L_0085:
.L_0084:
.L_0083:
.L_0082:
.L_0081:
.L_0080:
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .L_0087
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.L_0087:
.L_0086:
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0089
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
mov dword ptr [ebp-20], eax
.L_0089:
.L_0088:
cmp dword ptr [ebp-12], 119
jne .L_008B
.L_008C:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call _TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_008A
.L_008B:
cmp dword ptr [ebp-12], 120
jne .L_008D
.L_008E:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
.L_008D:
.L_008A:
lea eax, [ebp-16]
push eax
push 66
push dword ptr [ebp-20]
push 0
push dword ptr [ebp-8]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0090
cmp dword ptr [ebp-16], 0
jne .L_0092
mov dword ptr [ebp-16], 20
.L_0092:
.L_0091:
push 0
push -1
push dword ptr [ebp-16]
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.L_0090:
.L_008F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0094
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
jmp .L_0093
.L_0094:
cmp dword ptr [ebp+12], 0
jne .L_0096
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0096:
.L_0095:
.L_0093:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CANONTYPE
_CANONTYPE:
push ebp
mov ebp, esp
sub esp, 36
mov dword ptr [ebp-4], 0
.L_009A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 301
call _HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_009D
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .L_00A1
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A1:
.L_00A0:
jmp .L_009C
.L_009D:
mov eax, dword ptr [_PARSER+160]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], -2147483648
jne .L_00A3
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A3:
.L_00A2:
mov eax, dword ptr [ebp-20]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_00A7
.L_00A8:
cmp dword ptr [ebp-28], 23
jne .L_00A6
.L_00A7:
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.L_00A6:
.L_00A4:
.L_009C:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
cmp dword ptr [ebp-24], 0
je .L_00AA
push 0
push 300
call _HMATCH
add esp, 8
test eax, eax
jne .L_00AC
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 300
call _HSKIPUNTIL
add esp, 16
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 20
jne .L_00AE
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_00B0
jmp .L_00B2
or dword ptr [_PARSER+152], 1
jmp .L_00B1
.L_00B2:
and dword ptr [_PARSER+152], -2
.L_00B1:
.L_00B0:
.L_00AF:
push dword ptr [ebp-16]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .L_00B4
push dword ptr [ebp-16]
call _CCTORCALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_009B
.L_00B4:
.L_00B3:
.L_00AE:
.L_00AD:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push -2147483648
push 0
push dword ptr [ebp-12]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE
add esp, 12
push 0
push dword ptr [ebp-12]
call _SYMBDELSYMBOL
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009B:
mov eax, dword ptr [ebp-4]
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
