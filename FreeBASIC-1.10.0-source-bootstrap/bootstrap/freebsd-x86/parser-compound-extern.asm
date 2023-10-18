	.intel_syntax noprefix

.section .text
.balign 16

.globl CEXTERNSTMTBEGIN
CEXTERNSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 8
test eax, eax
jne .L_0069
push 0
push 146
push 8
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 12
jmp .L_0067
.L_0069:
.L_0068:
push 16
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006B
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 12
jmp .L_0067
.L_006B:
.L_006A:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .L_006D
push 0
push 0
push 17
call ERRREPORT
add esp, 12
mov eax, offset Lt_006E
mov dword ptr [ebp-12], eax
jmp .L_006C
.L_006D:
call LEXGETTEXT
mov dword ptr [ebp-12], eax
.L_006C:
push 0
push -1
push 0
push dword ptr [ebp-12]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
push 2
push offset Lt_006E
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0071
.L_0072:
mov dword ptr [ebp-8], 1
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_0071:
push 8
push offset Lt_0074
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0073
.L_0075:
mov dword ptr [ebp-8], 2
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_0073:
push 11
push offset Lt_0077
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0076
.L_0078:
mov dword ptr [ebp-8], 3
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_0076:
push 4
push offset Lt_007A
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0079
.L_007B:
mov dword ptr [ebp-8], 4
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_0079:
push 6
push offset Lt_007D
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_007C
.L_007E:
mov dword ptr [ebp-8], 6
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .L_006F
.L_007C:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 1
push 0
call LEXSKIPTOKEN
add esp, 4
.L_007F:
.L_006F:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
call CLIBATTRIBUTE
push -34
push 306
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+104]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [PARSER+104], ebx
.L_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CEXTERNSTMTEND
CEXTERNSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
push -1
push 306
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0083
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0081
.L_0083:
.L_0082:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [PARSER+104], ebx
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.L_0081:
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

.section .data
.balign 4
Lt_006E:	.ascii	"c\0"
.balign 4
Lt_0074:	.ascii	"windows\0"
.balign 4
Lt_0077:	.ascii	"windows-ms\0"
.balign 4
Lt_007A:	.ascii	"c++\0"
.balign 4
Lt_007D:	.ascii	"rtlib\0"
