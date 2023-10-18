	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBFWDREFINIT
_SYMBFWDREFINIT:
.L_0067:
push 6
push 8
push 500
lea eax, [_SYMB+98620]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+98684], 0
.L_0068:
ret
.balign 16

.globl _SYMBFWDREFEND
_SYMBFWDREFEND:
.L_0069:
lea eax, [_SYMB+98620]
push eax
call _LISTEND
add esp, 4
.L_006A:
ret
.balign 16

.globl _SYMBADDTOFWDREF
_SYMBADDTOFWDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006B:
lea eax, [_SYMB+98620]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx+56], eax
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBREMOVEFROMFWDREF
_SYMBREMOVEFROMFWDREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-8], 0
.L_006F:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_0073
jmp .L_0070
.L_0073:
.L_0072:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_0071:
jmp .L_006F
.L_0070:
cmp dword ptr [ebp-8], 0
jne .L_0075
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+56], ecx
jmp .L_0074
.L_0075:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.L_0074:
push dword ptr [ebp-4]
lea ebx, [_SYMB+98620]
push ebx
call _LISTDELNODE
add esp, 8
.L_006E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKFWDREF
_SYMBCHECKFWDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0087:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0089:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .L_008D
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HFIXFORWARDREF
add esp, 8
jmp .L_0088
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
.L_008B:
cmp dword ptr [ebp-4], 0
jne .L_0089
.L_008A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+152]
mov dword ptr [ebp-4], eax
.L_008E:
cmp dword ptr [ebp-4], 0
je .L_008F
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .L_0091
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HFIXFORWARDREF
add esp, 8
jmp .L_0088
.L_0091:
.L_0090:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
jmp .L_008E
.L_008F:
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDTYPEDEF
_SYMBADDTYPEDEF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0092:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 13
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0095
mov dword ptr [ebp-4], 0
jmp .L_0093
.L_0095:
.L_0094:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
cmp dword ptr [_SYMB+98684], 0
jle .L_0097
push dword ptr [ebp-8]
call _SYMBCHECKFWDREF
add esp, 4
.L_0097:
.L_0096:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0093:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDFWDREF
_SYMBADDFWDREF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0098:
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 14
push 0
push 0
push 0
push 33
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_009B
mov dword ptr [ebp-4], 0
jmp .L_0099
.L_009B:
.L_009A:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+56], 0
inc dword ptr [_SYMB+98684]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
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
.balign 16
_SYMBREPLACEFORWARDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0078
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_009C
.L_0078:
mov dword ptr [ebp-4], 0
.L_009C:
cmp dword ptr [ebp-4], 0
je .L_007B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTREPLACEFWDREF
add esp, 16
.L_007B:
.L_007A:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _TYPEMERGE
add esp, 8
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBSETTYPE
add esp, 12
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFIXFORWARDREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_007C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_007F
.L_0081:
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .L_007E
.L_0082:
mov dword ptr [ebp-16], 10
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .L_007E
.L_0083:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .L_007E
.L_007F:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967287
cmp ebx, 1
ja .L_0083
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.L_0084+ebx*4-36]
_.L_0084:
.int .L_0082
.int .L_0081
.L_007E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.L_0085:
cmp dword ptr [ebp-4], 0
je .L_0086
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _SYMBREPLACEFORWARDREF
add esp, 12
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
lea ebx, [_SYMB+98620]
push ebx
call _LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_0085
.L_0086:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
dec dword ptr [_SYMB+98684]
.L_007D:
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
