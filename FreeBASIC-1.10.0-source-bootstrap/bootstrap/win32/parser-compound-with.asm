	.intel_syntax noprefix

.section .text
.balign 16

.globl _CWITHSTMTBEGIN@0
_CWITHSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_006D:
push 2048
call _LEXSKIPTOKEN@4
call _ASTSCOPEBEGIN@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0071
push 0
push 0
push 27
call _ERRREPORT@12
.L_0071:
.L_0070:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0073
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
jmp .L_0072
.L_0073:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
je .L_0075
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push -2147483648
push 0
push 0
push 0
push 8
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
jmp .L_0074
.L_0075:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_0077
push dword ptr [ebp-8]
call _ASTBUILDCALLRESULTUDT@4
mov dword ptr [ebp-8], eax
.L_0077:
.L_0076:
.L_0074:
.L_0072:
push dword ptr [ebp-8]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+12]
call _HEXTENDTEMPLIFETIME@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-8]
call _ASTGETEFFECTIVENODE@4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 17
jne .L_0079
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
push 2
push dword ptr [ebp-8]
call _ASTREBUILDWITHOUTEFFECTIVEPART@4
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
jmp .L_0078
.L_0079:
push dword ptr [ebp-8]
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_007B
or dword ptr [ebp-16], 2
.L_007B:
.L_007A:
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-16]
and eax, 2
je .L_007D
push -1
push dword ptr [ebp-4]
call _ASTNEWDECL@8
push eax
call _ASTADDUNSCOPED@4
push 2
push 0
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
jmp .L_007C
.L_007D:
push 2
push 0
push dword ptr [ebp-4]
call _ASTNEWDECL@8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
push 2
push 64
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
.L_007C:
mov dword ptr [ebp-12], -1
.L_0078:
push dword ptr [ebp-28]
call _ASTADD@4
push 1
push 280
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [eax+8], ebx
.L_006E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_007E,16

.section .text
.balign 16

.globl _CWITHSTMTEND@0
_CWITHSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 4
.L_007F:
push -1
push 280
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0082
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0080
.L_0082:
.L_0081:
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0084
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.L_0084:
.L_0083:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
.L_0080:
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
_HEXTENDTEMPLIFETIME@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
.L_0069:
cmp dword ptr [ebp-12], 0
je .L_006A
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 1
jne .L_006C
push dword ptr [ebp-12]
call _ASTDTORLISTDEL@4
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -4097
push 2
push 0
push dword ptr [ebp-12]
call _ASTNEWDECL@8
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.L_006C:
.L_006B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-12], ebx
jmp .L_0069
.L_006A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
