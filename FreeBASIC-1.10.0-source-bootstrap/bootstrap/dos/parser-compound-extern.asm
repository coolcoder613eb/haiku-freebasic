	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEXTERNSTMTBEGIN
_CEXTERNSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0067:
mov eax, dword ptr [_ENV+1040]
and eax, 8
test eax, eax
jne .L_006A
push 0
push 146
push 8
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 306
call _HSKIPCOMPOUND
add esp, 12
jmp .L_0068
.L_006A:
.L_0069:
push 16
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006C
push 0
push -1
push 306
call _HSKIPCOMPOUND
add esp, 12
jmp .L_0068
.L_006C:
.L_006B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_006E
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov eax, offset _Lt_006F
mov dword ptr [ebp-12], eax
jmp .L_006D
.L_006E:
call _LEXGETTEXT
mov dword ptr [ebp-12], eax
.L_006D:
push 0
push -1
push 0
push dword ptr [ebp-12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 2
push offset _Lt_006F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0072
.L_0073:
mov dword ptr [ebp-8], 1
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_0072:
push 8
push offset _Lt_0075
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0074
.L_0076:
mov dword ptr [ebp-8], 2
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_0074:
push 11
push offset _Lt_0078
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0077
.L_0079:
mov dword ptr [ebp-8], 3
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_0077:
push 4
push offset _Lt_007B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_007A
.L_007C:
mov dword ptr [ebp-8], 4
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_007A:
push 6
push offset _Lt_007E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_007D
.L_007F:
mov dword ptr [ebp-8], 6
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .L_0070
.L_007D:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 1
push 0
call _LEXSKIPTOKEN
add esp, 4
.L_0080:
.L_0070:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
call _CLIBATTRIBUTE
push -34
push 306
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+104]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_PARSER+104], ebx
.L_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXTERNSTMTEND
_CEXTERNSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0081:
push -1
push 306
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0084
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .L_0082
.L_0084:
.L_0083:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [_PARSER+104], ebx
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.L_0082:
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

.section .data
.balign 4
_Lt_006F:	.ascii	"c\0"
.balign 4
_Lt_0075:	.ascii	"windows\0"
.balign 4
_Lt_0078:	.ascii	"windows-ms\0"
.balign 4
_Lt_007B:	.ascii	"c++\0"
.balign 4
_Lt_007E:	.ascii	"rtlib\0"
