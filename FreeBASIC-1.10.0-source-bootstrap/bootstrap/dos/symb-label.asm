	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDLABEL
_SYMBADDLABEL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_006A
push -1
push 0
push 7
push dword ptr [ebp+8]
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_006C
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_006E
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+60], 0
je .L_0070
jmp .L_0068
.L_0070:
.L_006F:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_PARSER+112]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+64], eax
mov ax, word ptr [_PARSER+100]
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+36], ax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0068
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_006D:
.L_006C:
.L_006B:
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_0072
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0071
.L_0072:
call _SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.L_0071:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .L_0069
.L_006A:
mov dword ptr [ebp-8], 0
call _SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.L_0069:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .L_0074
mov dword ptr [ebp-28], -1
lea eax, [_SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [_SYMB+98420]
mov dword ptr [ebp-24], eax
jmp .L_0073
.L_0074:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
jne .L_0076
mov dword ptr [ebp-28], -1
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .L_0078
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [_SYMB+98532]
mov dword ptr [ebp-24], eax
jmp .L_0077
.L_0078:
lea eax, [_SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [_SYMB+98420]
mov dword ptr [ebp-24], eax
.L_0077:
jmp .L_0075
.L_0076:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [_PARSER+108]
lea ebx, [eax+56]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_SYMB+98532]
mov dword ptr [ebp-24], ebx
.L_0075:
.L_0073:
push 0
cmp dword ptr [ebp-28], 0
je .L_007B
mov dword ptr [ebp-36], 0
jmp .L_0081
.L_007B:
mov dword ptr [ebp-36], 128
.L_0081:
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
jne .L_0079
mov dword ptr [ebp-32], 0
jmp .L_0082
.L_0079:
mov dword ptr [ebp-32], 32
.L_0082:
push dword ptr [ebp-32]
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_007E
jmp .L_0068
.L_007E:
.L_007D:
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_0080
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_PARSER+112]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
jmp .L_007F
.L_0080:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], 0
.L_007F:
mov eax, dword ptr [ebp-16]
mov byte ptr [eax+68], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONELABEL
_SYMBCLONELABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0083:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELLABEL
_SYMBDELLABEL:
push ebp
mov ebp, esp
.L_0085:
cmp dword ptr [ebp+8], 0
jne .L_0088
jmp .L_0086
.L_0088:
.L_0087:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.L_0086:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKLABELS
_SYMBCHECKLABELS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0089:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.L_008B:
cmp dword ptr [ebp-12], 0
je .L_008C
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 7
jne .L_008E
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .L_0090
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+16], 0
je .L_0092
push 0
push 1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 48
call _ERRREPORTEX
add esp, 20
inc dword ptr [ebp-8]
.L_0092:
.L_0091:
.L_0090:
.L_008F:
.L_008E:
.L_008D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_008B
.L_008C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_008A:
mov eax, dword ptr [ebp-4]
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
