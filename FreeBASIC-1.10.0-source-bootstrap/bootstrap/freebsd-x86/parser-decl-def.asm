	.intel_syntax noprefix

.section .text
.balign 16

.globl CDEFDECL
CDEFDECL:
push ebp
mov ebp, esp
sub esp, 20
.L_0066:
mov eax, dword ptr [ENV+1040]
and eax, 4194304
test eax, eax
jne .L_0069
push 0
push 146
push 4194304
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0069:
.L_0068:
cmp dword ptr [ENV+136], 3
jne .L_006A
mov dword ptr [ebp-16], 9
jmp .L_008A
.L_006A:
mov dword ptr [ebp-16], 8
.L_008A:
push dword ptr [ebp-16]
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .L_006D
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_006D:
.L_006C:
mov dword ptr [ebp-4], -2147483648
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .L_006F
.L_0071:
mov dword ptr [ebp-4], 2
jmp .L_006E
.L_0072:
mov dword ptr [ebp-4], 3
jmp .L_006E
.L_0073:
mov dword ptr [ebp-4], 5
jmp .L_006E
.L_0074:
mov dword ptr [ebp-4], 6
jmp .L_006E
.L_0075:
mov eax, dword ptr [ENV+1044]
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_0076:
mov dword ptr [ebp-4], 9
jmp .L_006E
.L_0077:
mov dword ptr [ebp-4], 11
jmp .L_006E
.L_0078:
mov dword ptr [ebp-4], 12
jmp .L_006E
.L_0079:
mov dword ptr [ebp-4], 13
jmp .L_006E
.L_007A:
mov dword ptr [ebp-4], 14
jmp .L_006E
.L_007B:
mov dword ptr [ebp-4], 15
jmp .L_006E
.L_007C:
mov dword ptr [ebp-4], 16
jmp .L_006E
.L_007D:
mov dword ptr [ebp-4], 17
jmp .L_006E
.L_006F:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 12
ja .L_006E
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_007E+eax*4-1284]
.L_007E:
.int .L_0071
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_0075
.int .L_0076
.int .L_0077
.int .L_0078
.int .L_0079
.int .L_007A
.int .L_007B
.int .L_007C
.int .L_007D
.L_006E:
push 2048
call LEXSKIPTOKEN
add esp, 4
.L_007F:
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push 33
push offset Lt_008B
call fb_StrAssign
add esp, 20
push 33
push offset Lt_008B
call fb_StrLen
add esp, 8
cmp eax, 1
je .L_0083
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.L_0083:
.L_0082:
push 1
push offset Lt_008B
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_ASC
add esp, 8
mov dword ptr [ebp-8], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 45
jne .L_0085
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push 33
push offset Lt_008B
call fb_StrAssign
add esp, 20
push 33
push offset Lt_008B
call fb_StrLen
add esp, 8
cmp eax, 1
je .L_0087
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.L_0087:
.L_0086:
push 1
push offset Lt_008B
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_ASC
add esp, 8
mov dword ptr [ebp-12], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .L_0084
.L_0085:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
.L_0084:
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBSETDEFTYPE
add esp, 12
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0089
jmp .L_0080
.L_0089:
.L_0088:
push 0
call LEXSKIPTOKEN
add esp, 4
.L_0081:
jmp .L_007F
.L_0080:
.L_0067:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_008B,33

.section .text
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
