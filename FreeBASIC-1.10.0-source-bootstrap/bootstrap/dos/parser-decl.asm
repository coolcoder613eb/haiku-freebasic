	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDECLARATION
_CDECLARATION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+136], 3
jne .L_006A
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
je .L_006C
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_006C:
.L_006B:
.L_006A:
.L_0069:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_006E
.L_0070:
call _HCHECKSCOPE
test eax, eax
je .L_0072
mov dword ptr [ebp-8], 32
.L_0072:
.L_0071:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_006D
.L_0073:
call _HCHECKSCOPE
test eax, eax
je .L_0075
mov dword ptr [ebp-8], 64
.L_0075:
.L_0074:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .L_006D
.L_0076:
call _CPROCDECL
mov dword ptr [ebp-4], -1
jmp .L_0068
jmp .L_006D
.L_0077:
call _CDEFDECL
mov dword ptr [ebp-4], -1
jmp .L_0068
jmp .L_006D
.L_0078:
call _COPTDECL
mov dword ptr [ebp-4], -1
jmp .L_0068
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 58
ja .L_006D
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0079+eax*4-1284]
_.L_0079:
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0077
.int .L_0076
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_0078
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_006D
.int .L_0070
.int .L_0073
.L_006D:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_007B
.L_007D:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_007F
.L_0081:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
jmp .L_007E
.L_0082:
cmp dword ptr [ebp-16], 335
jne .L_0084
.L_0085:
push dword ptr [ebp-8]
call _CCONSTDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_0083
.L_0084:
cmp dword ptr [ebp-16], 307
jne .L_0086
.L_0087:
push dword ptr [ebp-8]
call _CVARIABLEDECL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0086:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_0088:
.L_0083:
jmp .L_007E
.L_007F:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 10
ja .L_0082
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_0089+eax*4-1380]
_.L_0089:
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0082
.int .L_0082
.int .L_0082
.int .L_0081
.int .L_0081
.L_007E:
jmp .L_007A
.L_008A:
cmp dword ptr [ebp-8], 0
je .L_008C
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
jmp .L_008B
.L_008C:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .L_0090
.L_0091:
cmp dword ptr [ebp-24], 305
jne .L_008F
.L_0090:
jmp .L_008D
.L_008F:
push 0
push 0
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
.L_0092:
.L_008D:
.L_008B:
jmp .L_007A
.L_0093:
cmp dword ptr [ebp-8], 0
je .L_0095
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
jmp .L_0094
.L_0095:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0097
push 0
push 0
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
.L_0097:
.L_0096:
.L_0094:
jmp .L_007A
.L_0098:
cmp dword ptr [ebp-8], 0
je .L_009A
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
jmp .L_0099
.L_009A:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_009C
push 0
push 0
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
jmp .L_009B
.L_009C:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .L_00A0
.L_00A1:
cmp dword ptr [ebp-24], 305
jne .L_009F
.L_00A0:
jmp .L_009D
.L_009F:
push 0
push 0
call _CPROCSTMTBEGIN
add esp, 8
mov dword ptr [ebp-4], -1
.L_00A2:
.L_009D:
.L_009B:
.L_0099:
jmp .L_007A
.L_00A3:
cmp dword ptr [ebp-8], 0
jne .L_00A5
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 301
je .L_00A9
.L_00AA:
cmp dword ptr [ebp-24], 40
jne .L_00A8
.L_00A9:
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_00A8:
.L_00A6:
.L_00A5:
.L_00A4:
push dword ptr [ebp-8]
call _CTYPEDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_007A
.L_00AB:
push dword ptr [ebp-8]
call _CTYPEDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_007A
.L_00AC:
push dword ptr [ebp-8]
call _CENUMDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_007A
.L_00AD:
push dword ptr [ebp-8]
call _CVARIABLEDECL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_007A
.L_00AE:
cmp dword ptr [ebp-8], 0
je .L_00B0
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
.L_00B0:
.L_00AF:
jmp .L_007A
.L_007B:
mov eax, dword ptr [ebp-20]
add eax, 4294966990
cmp eax, 49
ja .L_00AE
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00B1+eax*4-1224]
_.L_00B1:
.int .L_00AD
.int .L_007D
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AD
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_007D
.int .L_00A3
.int .L_00AB
.int .L_00AC
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_008A
.int .L_008A
.int .L_0093
.int .L_008A
.int .L_0098
.int .L_008A
.int .L_00AE
.int .L_00AE
.int .L_00AE
.int .L_007D
.int .L_007D
.L_007A:
.L_0068:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
