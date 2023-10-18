	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBFWDREFINIT
SYMBFWDREFINIT:
.type SYMBFWDREFINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
push 6
push 8
push 500
lea eax, [SYMB+98620]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+98684], 0
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBFWDREFINIT, .-SYMBFWDREFINIT
.cfi_endproc
.balign 16

.globl SYMBFWDREFEND
SYMBFWDREFEND:
.type SYMBFWDREFEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0068:
sub esp, 12
lea eax, [SYMB+98620]
push eax
call LISTEND
add esp, 16
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBFWDREFEND, .-SYMBFWDREFEND
.cfi_endproc
.balign 16

.globl SYMBADDTOFWDREF
SYMBADDTOFWDREF:
.type SYMBADDTOFWDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_006A:
sub esp, 12
lea eax, [SYMB+98620]
push eax
call LISTNEWNODE
add esp, 16
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
.L_006B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDTOFWDREF, .-SYMBADDTOFWDREF
.cfi_endproc
.balign 16

.globl SYMBREMOVEFROMFWDREF
SYMBREMOVEFROMFWDREF:
.type SYMBREMOVEFROMFWDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-8], 0
.L_006E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_0072
jmp .L_006F
.L_0072:
.L_0071:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_0070:
jmp .L_006E
.L_006F:
cmp dword ptr [ebp-8], 0
jne .L_0074
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+56], ecx
jmp .L_0073
.L_0074:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.L_0073:
sub esp, 8
push dword ptr [ebp-4]
lea ebx, [SYMB+98620]
push ebx
call LISTDELNODE
add esp, 16
.L_006D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBREMOVEFROMFWDREF, .-SYMBREMOVEFROMFWDREF
.cfi_endproc
.balign 16

.globl SYMBCHECKFWDREF
SYMBCHECKFWDREF:
.type SYMBCHECKFWDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0086:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0088:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .L_008C
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HFIXFORWARDREF
add esp, 16
jmp .L_0087
.L_008C:
.L_008B:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
.L_008A:
cmp dword ptr [ebp-4], 0
jne .L_0088
.L_0089:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+152]
mov dword ptr [ebp-4], eax
.L_008D:
cmp dword ptr [ebp-4], 0
je .L_008E
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .L_0090
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HFIXFORWARDREF
add esp, 16
jmp .L_0087
.L_0090:
.L_008F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
jmp .L_008D
.L_008E:
.L_0087:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKFWDREF, .-SYMBCHECKFWDREF
.cfi_endproc
.balign 16

.globl SYMBADDTYPEDEF
SYMBADDTYPEDEF:
.type SYMBADDTYPEDEF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0091:
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0094
mov dword ptr [ebp-4], 0
jmp .L_0092
.L_0094:
.L_0093:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
cmp dword ptr [SYMB+98684], 0
jle .L_0096
sub esp, 12
push dword ptr [ebp-8]
call SYMBCHECKFWDREF
add esp, 16
.L_0096:
.L_0095:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDTYPEDEF, .-SYMBADDTYPEDEF
.cfi_endproc
.balign 16

.globl SYMBADDFWDREF
SYMBADDFWDREF:
.type SYMBADDFWDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0097:
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_009A
mov dword ptr [ebp-4], 0
jmp .L_0098
.L_009A:
.L_0099:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+56], 0
inc dword ptr [SYMB+98684]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0098:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDFWDREF, .-SYMBADDFWDREF
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
SYMBREPLACEFORWARDREF:
.type SYMBREPLACEFORWARDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_0077
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_009B
.L_0077:
mov dword ptr [ebp-4], 0
.L_009B:
cmp dword ptr [ebp-4], 0
je .L_007A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call ASTREPLACEFWDREF
add esp, 16
.L_007A:
.L_0079:
sub esp, 8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call TYPEMERGE
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBSETTYPE
add esp, 16
.L_0076:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBREPLACEFORWARDREF, .-SYMBREPLACEFORWARDREF
.cfi_endproc
.balign 16
HFIXFORWARDREF:
.type HFIXFORWARDREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_007B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .L_007E
.L_0080:
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .L_007D
.L_0081:
mov dword ptr [ebp-16], 10
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .L_007D
.L_0082:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .L_007D
.L_007E:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967287
cmp ebx, 1
ja .L_0082
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.L_0083+ebx*4-36]
.L_0083:
.int .L_0081
.int .L_0080
.L_007D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.L_0084:
cmp dword ptr [ebp-4], 0
je .L_0085
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call SYMBREPLACEFORWARDREF
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
sub esp, 8
push dword ptr [ebp-4]
lea ebx, [SYMB+98620]
push ebx
call LISTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_0084
.L_0085:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
dec dword ptr [SYMB+98684]
.L_007C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFIXFORWARDREF, .-HFIXFORWARDREF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
