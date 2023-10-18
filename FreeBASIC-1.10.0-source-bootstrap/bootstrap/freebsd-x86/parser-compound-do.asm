	.intel_syntax noprefix

.section .text
.balign 16

.globl CDOSTMTBEGIN
CDOSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0066:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 273
jne .L_006A
.L_006B:
mov dword ptr [ebp-8], -1
jmp .L_0068
.L_006A:
cmp dword ptr [ebp-32], 274
jne .L_006C
.L_006D:
mov dword ptr [ebp-12], -1
.L_006C:
.L_0068:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_006F
push 2048
call LEXSKIPTOKEN
add esp, 4
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0071
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
.L_0071:
.L_0070:
push 0
mov eax, dword ptr [ebp-8]
not eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0073
push 0
push 0
push 24
call ERRREPORT
add esp, 12
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_0073:
.L_0072:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
jmp .L_006E
.L_006F:
mov dword ptr [ebp-4], 0
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-24], eax
.L_006E:
push 1
push 278
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-28], eax
call ASTSCOPEBEGIN
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
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CDOSTMTEND
CDOSTMTEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0075:
push -1
push 278
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0078
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0076
.L_0078:
.L_0077:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 273
jne .L_007B
.L_007C:
mov dword ptr [ebp-8], -1
jmp .L_0079
.L_007B:
cmp dword ptr [ebp-20], 274
jne .L_007D
.L_007E:
mov dword ptr [ebp-12], -1
.L_007D:
.L_0079:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
and eax, dword ptr [ebx+12]
je .L_0080
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.L_0080:
.L_007F:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+8], 0
je .L_0082
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
call ASTSCOPEEND
add esp, 4
.L_0082:
.L_0081:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+20], ecx
je .L_0084
push -1
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.L_0084:
.L_0083:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_0086
push 2048
call LEXSKIPTOKEN
add esp, 4
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
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
mov dword ptr [ebp-4], eax
.L_0088:
.L_0087:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_008A
push 0
push 0
push 24
call ERRREPORT
add esp, 12
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.L_008A:
.L_0089:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
jmp .L_0085
.L_0086:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.L_0085:
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push dword ptr [ebp-16]
call CCOMPSTMTPOP
add esp, 4
.L_0076:
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
