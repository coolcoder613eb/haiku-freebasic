	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDENUM
SYMBADDENUM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
cmp dword ptr [ebp+12], 0
jne .L_0069
cmp dword ptr [PARSER+104], 0
je .L_006B
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_006B:
.L_006A:
.L_0069:
.L_0068:
push 0
push dword ptr [ebp+16]
push 0
push 10
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
push 0
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+20], 0
je .L_006F
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call HASHINIT
add esp, 12
jmp .L_0070
.L_0071:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 12
.L_0070:
jmp .L_006E
.L_006F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+84], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+88], 0
jmp .L_0073
push 0
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call HASHINIT
add esp, 12
jmp .L_0072
.L_0073:
push 12
push 0
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call memset
add esp, 12
.L_0072:
.L_006E:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+100], -1
cmp dword ptr [SYMB+98684], 0
jle .L_0075
push dword ptr [ebp-8]
call SYMBCHECKFWDREF
add esp, 4
.L_0075:
.L_0074:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDENUMELEMENT
SYMBADDENUMELEMENT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], eax
push dword ptr [ebp+24]
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
push 10
push dword ptr [ebp+12]
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELENUM
SYMBDELENUM:
push ebp
mov ebp, esp
push ebx
.L_0078:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 8
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.L_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETENUMFIRSTELM
SYMBGETENUMFIRSTELM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.L_007D:
cmp dword ptr [ebp-8], 0
je .L_007E
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 2
jne .L_0080
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_007C
.L_0080:
.L_007F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
jmp .L_007D
.L_007E:
mov dword ptr [ebp-4], 0
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETENUMNEXTELM
SYMBGETENUMNEXTELM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
.L_0083:
cmp dword ptr [ebp+8], 0
je .L_0084
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 2
jne .L_0086
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_0082
.L_0086:
.L_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .L_0083
.L_0084:
mov dword ptr [ebp-4], 0
.L_0082:
mov eax, dword ptr [ebp-4]
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
