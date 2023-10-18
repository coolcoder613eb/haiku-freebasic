	.intel_syntax noprefix

.section .text
.balign 16

.globl CSCOPESTMTBEGIN
CSCOPESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_0069
push 0
push 146
push 2
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 285
call HSKIPCOMPOUND
add esp, 12
jmp .L_0067
.L_0069:
.L_0068:
push 2048
call LEXSKIPTOKEN
add esp, 4
call ASTSCOPEBEGIN
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_006B
push 0
push 0
push 27
call ERRREPORT
add esp, 12
.L_006B:
.L_006A:
push 1
push 285
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [PARSER+152]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
or dword ptr [PARSER+152], 8
jmp .L_006C
.L_006D:
and dword ptr [PARSER+152], -9
.L_006C:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSCOPESTMTEND
CSCOPESTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.L_006F:
push -1
push 285
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0072
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0070
.L_0072:
.L_0071:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_0074
or dword ptr [PARSER+152], 8
jmp .L_0073
.L_0074:
and dword ptr [PARSER+152], -9
.L_0073:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_0076
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.L_0076:
.L_0075:
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.L_0070:
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
