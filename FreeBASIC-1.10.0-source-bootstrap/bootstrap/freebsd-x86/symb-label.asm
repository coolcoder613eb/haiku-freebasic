	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDLABEL
SYMBADDLABEL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_0069
push -1
push 0
push 7
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_006B
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_006D
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+60], 0
je .L_006F
jmp .L_0067
.L_006F:
.L_006E:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [PARSER+112]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+64], eax
mov ax, word ptr [PARSER+100]
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+36], ax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0067
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0067
.L_006C:
.L_006B:
.L_006A:
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_0071
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0070
.L_0071:
call SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.L_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0068
.L_0069:
mov dword ptr [ebp-8], 0
call SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.L_0068:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .L_0073
mov dword ptr [ebp-28], -1
lea eax, [SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [SYMB+98420]
mov dword ptr [ebp-24], eax
jmp .L_0072
.L_0073:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0075
mov dword ptr [ebp-28], -1
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_0077
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [SYMB+98532]
mov dword ptr [ebp-24], eax
jmp .L_0076
.L_0077:
lea eax, [SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [SYMB+98420]
mov dword ptr [ebp-24], eax
.L_0076:
jmp .L_0074
.L_0075:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [PARSER+108]
lea ebx, [eax+56]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [SYMB+98532]
mov dword ptr [ebp-24], ebx
.L_0074:
.L_0072:
push 0
cmp dword ptr [ebp-28], 0
je .L_007A
mov dword ptr [ebp-36], 0
jmp .L_0080
.L_007A:
mov dword ptr [ebp-36], 128
.L_0080:
push dword ptr [ebp-36]
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 7
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 0
cmp dword ptr [ebp+8], 0
jne .L_0078
mov dword ptr [ebp-32], 0
jmp .L_0081
.L_0078:
mov dword ptr [ebp-32], 32
.L_0081:
push dword ptr [ebp-32]
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_007D
jmp .L_0067
.L_007D:
.L_007C:
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_007F
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [PARSER+112]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
jmp .L_007E
.L_007F:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], 0
.L_007E:
mov eax, dword ptr [ebp-16]
mov byte ptr [eax+68], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCLONELABEL
SYMBCLONELABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0082:
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
.L_0083:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELLABEL
SYMBDELLABEL:
push ebp
mov ebp, esp
.L_0084:
cmp dword ptr [ebp+8], 0
jne .L_0087
jmp .L_0085
.L_0087:
.L_0086:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.L_0085:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKLABELS
SYMBCHECKLABELS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0088:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.L_008A:
cmp dword ptr [ebp-12], 0
je .L_008B
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 7
jne .L_008D
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .L_008F
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+16], 0
je .L_0091
push 0
push 1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 48
call ERRREPORTEX
add esp, 20
inc dword ptr [ebp-8]
.L_0091:
.L_0090:
.L_008F:
.L_008E:
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_008A
.L_008B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0089:
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
