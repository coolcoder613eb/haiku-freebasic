	.intel_syntax noprefix

.section .text
.balign 16

.globl _CSTATEMENT
_CSTATEMENT:
.L_0067:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 258
jne .L_006A
inc dword ptr [_PARSER+28]
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_006A:
.L_0069:
.L_006B:
call _CDECLARATION
test eax, eax
jne .L_006F
call _CCOMPOUNDSTMT
test eax, eax
jne .L_0071
call _CPROCCALLORASSIGN
test eax, eax
jne .L_0073
push -1
call _CQUIRKSTMT
add esp, 4
test eax, eax
jne .L_0075
call _CASMBLOCK
test eax, eax
jne .L_0077
call _CASSIGNMENTORPTRCALL
.L_0077:
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
.L_0071:
.L_0070:
.L_006F:
.L_006E:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 258
je .L_0079
jmp .L_006C
.L_0079:
.L_0078:
inc dword ptr [_PARSER+28]
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_006D:
jmp .L_006B
.L_006C:
.L_0068:
ret
.balign 16

.globl _CSTMTSEPARATOR
_CSTMTSEPARATOR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007A:
mov dword ptr [ebp-4], 0
.L_007C:
push dword ptr [ebp+8]
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .L_0082
.L_0083:
cmp dword ptr [ebp-8], 257
jne .L_0081
.L_0082:
inc dword ptr [_PARSER+28]
push dword ptr [ebp+8]
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_007F
.L_0081:
cmp dword ptr [ebp-8], 256
jne .L_0084
.L_0085:
mov dword ptr [ebp-4], -1
jmp .L_007D
jmp .L_007F
.L_0084:
jmp .L_007D
.L_0086:
.L_007F:
.L_007E:
jmp .L_007C
.L_007D:
.L_007B:
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
