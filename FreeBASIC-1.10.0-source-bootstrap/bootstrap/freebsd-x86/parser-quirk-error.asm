	.intel_syntax noprefix

.section .text
.balign 16

.globl CERRORSTMT
CERRORSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006A
jmp .L_0068
.L_006A:
.L_0069:
lea eax, [ENV+304]
push eax
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp-8]
call RTLERRORTHROW
add esp, 12
mov dword ptr [ebp-4], -1
.L_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CERRSETSTMT
CERRSETSTMT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006B:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
call CASSIGNTOKEN
test eax, eax
jne .L_006E
push 0
push 0
push 10
call ERRREPORT
add esp, 12
.L_006E:
.L_006D:
mov dword ptr [ebp-8], 0
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0070
jmp .L_006C
.L_0070:
.L_006F:
push dword ptr [ebp-8]
call RTLERRORSETNUM
add esp, 4
mov dword ptr [ebp-4], -1
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CERRORFUNCT
CERRORFUNCT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0071:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
je .L_0074
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0076
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
jmp .L_0075
.L_0076:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0075:
.L_0074:
.L_0073:
call RTLERRORGETNUM
mov dword ptr [ebp-4], eax
.L_0072:
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
