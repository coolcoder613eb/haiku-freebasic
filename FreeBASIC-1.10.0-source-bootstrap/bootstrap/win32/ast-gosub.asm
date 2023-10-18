	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTGOSUBADDINIT@4
_ASTGOSUBADDINIT@4:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.L_0067:
lea eax, [ebp-16]
mov dword ptr [ebp-52], eax
lea eax, [ebp-16]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 16
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 49
mov dword ptr [ebp-28], 1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .L_006B
jmp .L_0068
.L_006B:
.L_006A:
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+204]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_006D
mov dword ptr [ebp-64], 8
jmp .L_006C
.L_006D:
mov dword ptr [ebp-64], 32
.L_006C:
push 2
push 0
push dword ptr [ebp-64]
call _SYMBADDIMPLICITVAR@12
mov dword ptr [ebp-56], eax
push -1
push dword ptr [ebp-56]
call _ASTNEWDECL@8
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-56]
or dword ptr [eax+12], 8
push dword ptr [ebp-60]
call _ASTADDUNSCOPED@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-56]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 4
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGOSUBADDJMP@8
_ASTGOSUBADDJMP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0071:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+204]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0074
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 99
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp+12]
mov byte ptr [eax+68], 1
jmp .L_0073
.L_0074:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPUSH@4
push eax
call _RTLSETJMP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_0073:
.L_0072:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTGOSUBADDJUMPPTR@12
_ASTGOSUBADDJUMPPTR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0078:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+204]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_007B
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push 88
call _ASTNEWSTACK@8
push eax
call _ASTADD@4
push dword ptr [ebp+12]
call _ASTADD@4
jmp .L_007A
.L_007B:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
push 0
push 0
push dword ptr [ebp-4]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPUSH@4
push eax
call _RTLSETJMP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push dword ptr [ebp+12]
call _ASTADD@4
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+16]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.L_007A:
.L_0079:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTGOSUBADDRETURN@8
_ASTGOSUBADDRETURN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
push dword ptr [ebp+8]
call _ASTGOSUBADDINIT@4
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+204]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0082
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
push 48
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
cmp dword ptr [ebp+12], 0
jne .L_0084
push 0
push 0
push 101
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .L_0083
.L_0084:
push 0
push 8
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push 89
call _ASTNEWSTACK@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.L_0083:
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETNUM@4
cmp dword ptr [_ENV+156], 0
je .L_0086
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORTHROW@12
.L_0086:
.L_0085:
mov dword ptr [ebp-4], -1
jmp .L_0081
.L_0082:
cmp dword ptr [ebp+12], 0
jne .L_0088
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBRETURN@4
mov dword ptr [ebp-4], eax
jmp .L_0087
.L_0088:
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBPOP@4
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push 0
push dword ptr [ebp+12]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORSETNUM@4
cmp dword ptr [_ENV+156], 0
je .L_008A
lea eax, [_ENV+304]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push 0
push 8
push 0
push 16
call _ASTNEWCONSTI@16
push eax
call _RTLERRORTHROW@12
.L_008A:
.L_0089:
mov dword ptr [ebp-4], -1
.L_0087:
.L_0081:
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTGOSUBADDEXIT@4
_ASTGOSUBADDEXIT@4:
push ebp
mov ebp, esp
push ebx
.L_008E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 4
test eax, eax
je .L_0091
mov eax, dword ptr [_ENV+104]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [_ENV+204]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
jne .L_0093
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+60]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _RTLGOSUBEXIT@4
push eax
call _ASTADD@4
.L_0093:
.L_0092:
.L_0091:
.L_0090:
.L_008F:
pop ebx
mov esp, ebp
pop ebp
ret 4
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
