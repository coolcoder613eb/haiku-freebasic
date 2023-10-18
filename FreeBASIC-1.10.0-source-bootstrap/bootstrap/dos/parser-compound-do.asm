	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDOSTMTBEGIN
_CDOSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0067:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 273
jne .L_006B
.L_006C:
mov dword ptr [ebp-8], -1
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-32], 274
jne .L_006D
.L_006E:
mov dword ptr [ebp-12], -1
.L_006D:
.L_0069:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_0070
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0072
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
.L_0072:
.L_0071:
push 0
mov eax, dword ptr [ebp-8]
not eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0074
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
call _ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_0074:
.L_0073:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
jmp .L_006F
.L_0070:
mov dword ptr [ebp-4], 0
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
.L_006F:
push 1
push 278
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-28], eax
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+24], ebx
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CDOSTMTEND
_CDOSTMTEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0076:
push -1
push 278
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0079
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0077
.L_0079:
.L_0078:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 273
jne .L_007C
.L_007D:
mov dword ptr [ebp-8], -1
jmp .L_007A
.L_007C:
cmp dword ptr [ebp-20], 274
jne .L_007E
.L_007F:
mov dword ptr [ebp-12], -1
.L_007E:
.L_007A:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
and eax, dword ptr [ebx+12]
je .L_0081
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.L_0081:
.L_0080:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+8], 0
je .L_0083
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
call _ASTSCOPEEND
add esp, 4
.L_0083:
.L_0082:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+20], ecx
je .L_0085
push -1
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+20]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.L_0085:
.L_0084:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_0087
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
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
mov dword ptr [ebp-4], eax
.L_0089:
.L_0088:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_008B
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
call _ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_008B:
.L_008A:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
jmp .L_0086
.L_0087:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
.L_0086:
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push dword ptr [ebp-16]
call _CCOMPSTMTPOP
add esp, 4
.L_0077:
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
