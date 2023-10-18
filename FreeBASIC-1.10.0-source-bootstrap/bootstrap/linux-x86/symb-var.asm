	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBVARINIT
SYMBVARINIT:
.type SYMBVARINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 0
push offset Lt_0069
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [SYMB+99620], eax
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006A
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006B
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006D
push 0
push offset Lt_006C
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [SYMB+99620]
call SYMBSTRUCTEND
add esp, 16
mov dword ptr [SYMB+99604], 0
mov eax, dword ptr [ENV+296]
mov dword ptr [SYMB+99608], eax
mov eax, dword ptr [ENV+296]
sal eax, 1
mov dword ptr [SYMB+99612], eax
mov eax, dword ptr [ENV+296]
imul eax, 6
mov dword ptr [SYMB+99616], eax
mov eax, dword ptr [ENV+296]
mov dword ptr [SYMB+99624], eax
mov eax, dword ptr [ENV+296]
sal eax, 1
mov dword ptr [SYMB+99628], eax
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINIT, .-SYMBVARINIT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_006E,16

.section .data
.balign 4
Lt_006D:
.int Lt_006E
.int Lt_006E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBVAREND
SYMBVAREND:
.type SYMBVAREND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_006F:
.L_0070:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVAREND, .-SYMBVAREND
.cfi_endproc
.balign 16

.globl SYMBGETDESCTYPEARRAYDTYPE
SYMBGETDESCTYPEARRAYDTYPE:
.type SYMBGETDESCTYPEARRAYDTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0071:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+28]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx], eax
.L_0072:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDESCTYPEARRAYDTYPE, .-SYMBGETDESCTYPEARRAYDTYPE
.cfi_endproc
.balign 16

.globl SYMBGETDESCTYPEDIMENSIONS
SYMBGETDESCTYPEDIMENSIONS:
.type SYMBGETDESCTYPEDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0073:
push 8
push offset Lt_0075
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0077
mov dword ptr [ebp-4], -1
jmp .L_0074
.L_0077:
.L_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ENV+296]
imul ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
sub edi, esi
sbb ebx, ecx
mov esi, edi
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ENV+296]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.L_0074:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETDESCTYPEDIMENSIONS, .-SYMBGETDESCTYPEDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBADDARRAYDESCRIPTORTYPE
SYMBADDARRAYDESCRIPTORTYPE:
.type SYMBADDARRAYDESCRIPTORTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0078:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .L_007C
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.L_007C:
.L_007B:
sub esp, 12
push 0
push 8
push offset Lt_0075
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 0
jle .L_007E
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
.L_007E:
.L_007D:
sub esp, 12
push 0
push 2
push offset Lt_007F
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0080
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
sub esp, 12
push 0
push 2
push offset Lt_0081
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
sub esp, 4
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-52]
push eax
lea eax, [ebp-48]
push eax
push 0
push dword ptr [ebp-16]
call SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 32
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0084
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0079
.L_0084:
.L_0083:
or dword ptr [ebp-48], 8192
sub esp, 8
push 1
push dword ptr [ebp-48]
push 0
push 0
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-32], eax
mov dword ptr [Lt_008E], 0
mov dword ptr [Lt_008E+4], 0
mov dword ptr [Lt_008E+8], 0
mov dword ptr [Lt_008E+12], 0
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset Lt_008F
push 0
push offset Lt_0085
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset Lt_008F
push 0
push offset Lt_0086
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_008F
push 0
push offset Lt_0087
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_008F
push 0
push offset Lt_0088
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_008F
push 0
push offset Lt_0089
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_008F
push 0
push offset Lt_008A
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
cmp dword ptr [ebp+8], -1
jne .L_008C
mov dword ptr [ebp+8], 8
.L_008C:
.L_008B:
mov dword ptr [Lt_008E], 0
mov dword ptr [Lt_008E+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [Lt_008E+8], ecx
mov dword ptr [Lt_008E+12], ebx
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [SYMB+99620]
push 20
push offset Lt_008F
push 1
push offset Lt_008D
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [ebp-32]
call SYMBSTRUCTEND
add esp, 16
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
sub esp, 12
lea ecx, [ebp-28]
push ecx
call fb_StrDelete
add esp, 16
sub esp, 12
lea ecx, [ebp-16]
push ecx
call fb_StrDelete
add esp, 16
.L_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDARRAYDESCRIPTORTYPE, .-SYMBADDARRAYDESCRIPTORTYPE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_008E,16

.section .data
.balign 4
Lt_008F:
.int Lt_008E
.int Lt_008E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDARRAYDESC
SYMBADDARRAYDESC:
.type SYMBADDARRAYDESC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 64
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0090:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_0093
sub esp, 12
push 0
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_0095
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_0095:
.L_0094:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .L_0092
.L_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 48
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .L_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 512
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_0099
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset Lt_00AD
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_00AD
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_00AD
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+104], 1
jne .L_009D
sub esp, 12
push 0
push 2
push offset Lt_007F
push -1
push offset Lt_00AD
call fb_StrConcatAssign
add esp, 32
.L_009D:
.L_009C:
mov eax, dword ptr [Lt_00AD]
mov dword ptr [ebp-8], eax
.L_0099:
.L_0098:
jmp .L_0096
.L_0097:
sub esp, 12
push 0
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_009F
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_009F:
.L_009E:
mov dword ptr [ebp-40], 16
.L_0096:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .L_00A1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00A3
and dword ptr [ebp-24], -17
.L_00A3:
.L_00A2:
and dword ptr [ebp-24], -33
.L_00A1:
.L_00A0:
.L_0092:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .L_00A5
cmp dword ptr [PARSER+100], 0
jne .L_00A7
mov ebx, dword ptr [PARSER+108]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .L_00A6
.L_00A7:
mov dword ptr [ebp-28], 0
.L_00A6:
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-28], ebx
.L_00A4:
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 20
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push 0
push dword ptr [ebp-28]
push 0
push 1
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00A9
jmp .L_0091
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], ecx
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+48], 0
mov dword ptr [esi+52], 0
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+12]
and ecx, 2
or ecx, dword ptr [ebp-40]
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+12], ecx
sub esp, 12
push dword ptr [ebp-16]
call SYMBVARINITFIELDS
add esp, 16
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+92], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_0091:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDARRAYDESC, .-SYMBADDARRAYDESC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00AD,12

.section .text
.balign 16

.globl SYMBARRAYHASUNKNOWNBOUNDS
SYMBARRAYHASUNKNOWNBOUNDS:
.type SYMBARRAYHASUNKNOWNBOUNDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00BE
jmp .L_00BC
.L_00BE:
.L_00BD:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00C0
.L_00C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .L_00C5
cmp dword ptr [ecx+8], 0
jne .L_00C5
.L_00C6:
mov dword ptr [ebp-4], -1
jmp .L_00BC
.L_00C5:
.L_00C4:
.L_00C1:
inc dword ptr [ebp-8]
.L_00C0:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .L_00C3
.L_00C2:
.L_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBARRAYHASUNKNOWNBOUNDS, .-SYMBARRAYHASUNKNOWNBOUNDS
.cfi_endproc
.balign 16

.globl SYMBMAYBEADDARRAYDESC
SYMBMAYBEADDARRAYDESC:
.type SYMBMAYBEADDARRAYDESC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_00CA
jmp .L_00C8
.L_00CA:
.L_00C9:
sub esp, 12
push dword ptr [ebp+8]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .L_00CC
jmp .L_00C8
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
jne .L_00CE
sub esp, 12
push dword ptr [ebp+8]
call SYMBADDARRAYDESC
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+84], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
sub esp, 4
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+84]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebx+56], eax
.L_00CE:
.L_00CD:
.L_00C8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBMAYBEADDARRAYDESC, .-SYMBMAYBEADDARRAYDESC
.cfi_endproc
.balign 16

.globl SYMBSETARRAYDIMTB
SYMBSETARRAYDIMTB:
.type SYMBSETARRAYDIMTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00CF:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
sub esp, 12
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D2
.L_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebx+12]
mov dword ptr [ecx+12], eax
.L_00D3:
inc dword ptr [ebp-4]
.L_00D2:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00D5
.L_00D4:
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 16
.L_00D0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETARRAYDIMTB, .-SYMBSETARRAYDIMTB
.cfi_endproc
.balign 16

.globl SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS:
.type SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ecx]
adc ebx, dword ptr [ecx+4]
add eax, 4294967295
adc ebx, 4294967295
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+8], eax
mov dword ptr [ecx+12], ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 16
.L_00D7:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS, .-SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
.cfi_endproc
.balign 16

.globl SYMBCHECKDYNAMICARRAYDIMENSIONS
SYMBCHECKDYNAMICARRAYDIMENSIONS:
.type SYMBCHECKDYNAMICARRAYDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00D9:
cmp dword ptr [ebp+12], -1
jne .L_00DC
jmp .L_00DA
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, -1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebp-4]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00DE
sub esp, 12
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call ERRREPORTEX
add esp, 32
.L_00DE:
.L_00DD:
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKDYNAMICARRAYDIMENSIONS, .-SYMBCHECKDYNAMICARRAYDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBVARINITFIELDS
SYMBVARINITFIELDS:
.type SYMBVARINITFIELDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+88], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
.L_00E2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINITFIELDS, .-SYMBVARINITFIELDS
.cfi_endproc
.balign 16

.globl SYMBVARINITARRAYDIMENSIONS
SYMBVARINITARRAYDIMENSIONS:
.type SYMBVARINITARRAYDIMENSIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00E3:
cmp dword ptr [ebp+12], 0
je .L_00E6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00E8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
jmp .L_00E7
.L_00E8:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBSETARRAYDIMTB
add esp, 16
.L_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16384
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00EA
sub esp, 12
push dword ptr [ebp+8]
call SYMBMAYBEADDARRAYDESC
add esp, 16
.L_00EA:
.L_00E9:
.L_00E6:
.L_00E5:
.L_00E4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARINITARRAYDIMENSIONS, .-SYMBVARINITARRAYDIMENSIONS
.cfi_endproc
.balign 16

.globl SYMBADDVAR
SYMBADDVAR:
.type SYMBADDVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .L_00F0
jl .L_0105
cmp dword ptr [ebp+24], 0
ja .L_00F0
.L_0105:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.L_00F0:
.L_00EF:
cmp dword ptr [ebp+12], 0
jne .L_00F2
cmp dword ptr [PARSER+104], 0
je .L_00F4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00F4:
.L_00F3:
mov dword ptr [ebp-24], 0
jmp .L_00F1
.L_00F2:
mov dword ptr [ebp-24], 512
.L_00F1:
cmp dword ptr [ebp-20], 0
jne .L_00F6
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .L_00F8
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp-12], eax
jmp .L_00F7
.L_00F8:
mov eax, dword ptr [PARSER+108]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.L_00F7:
mov edx, dword ptr [SYMB+98532]
mov dword ptr [ebp-16], edx
jmp .L_00F5
.L_00F6:
lea edx, [SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [SYMB+98352]
cmp dword ptr [SYMB+98528], edx
je .L_00FA
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .L_00FC
mov edx, dword ptr [SYMB+98528]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [SYMB+98528]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F9:
.L_00F5:
sub esp, 4
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
mov edx, dword ptr [ebp+44]
or edx, 32
push edx
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FE
jmp .L_00EE
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-24]
or dword ptr [eax+12], edx
mov edx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+28]
mov dword ptr [edx+40], ebx
mov dword ptr [edx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARINITFIELDS
add esp, 16
sub esp, 4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call SYMBVARINITARRAYDIMENSIONS
add esp, 16
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .L_0100
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], ebx
jmp .L_00FF
.L_0100:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .L_0101
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.L_0101:
.L_00FF:
sub esp, 4
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call SYMBISPARENTNAMESPACE
add esp, 16
test eax, eax
je .L_0103
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 64
.L_0103:
.L_0102:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDVAR, .-SYMBADDVAR
.cfi_endproc
.balign 16

.globl SYMBADDTEMPVAR
SYMBADDTEMPVAR:
.type SYMBADDTEMPVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0106:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_010A
or dword ptr [ebp-8], 2
.L_010A:
.L_0109:
sub esp, 8
push dword ptr [ebp-8]
push 4096
push offset Lt_010B
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0107:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDTEMPVAR, .-SYMBADDTEMPVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_010C,16

.section .data
.balign 4
Lt_010B:
.int Lt_010C
.int Lt_010C
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDIMPLICITVAR
SYMBADDIMPLICITVAR:
.type SYMBADDIMPLICITVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010D:
sub esp, 8
push dword ptr [ebp+16]
push 0
push offset Lt_0110
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDIMPLICITVAR, .-SYMBADDIMPLICITVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0111,16

.section .data
.balign 4
Lt_0110:
.int Lt_0111
.int Lt_0111
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDANDALLOCATETEMPVAR
SYMBADDANDALLOCATETEMPVAR:
.type SYMBADDANDALLOCATETEMPVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0112:
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [PARSER+108]
call dword ptr [IR+36]
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0113:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDANDALLOCATETEMPVAR, .-SYMBADDANDALLOCATETEMPVAR
.cfi_endproc
.balign 16

.globl SYMBGETREALSIZE
SYMBGETREALSIZE:
.type SYMBGETREALSIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0114:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_0116
mov eax, dword ptr [ENV+296]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .L_0118
.L_0116:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.L_0118:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov ecx, dword ptr [ebx+80]
push ecx
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-24]
pop dword ptr [ebp-20]
add esp, 8
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.L_0115:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETREALSIZE, .-SYMBGETREALSIZE
.cfi_endproc
.balign 16

.globl SYMBGETREALTYPE
SYMBGETREALTYPE:
.type SYMBGETREALTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0119:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 114688
test ebx, ebx
je .L_011C
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .L_011E
mov dword ptr [ebp-4], 2
jmp .L_011D
.L_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_011F
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
jmp .L_011D
.L_011F:
mov dword ptr [ebp-4], 1
.L_011D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
jmp .L_011B
.L_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0120
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0120:
.L_011B:
.L_011A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETREALTYPE, .-SYMBGETREALTYPE
.cfi_endproc
.balign 16

.globl SYMBCALCARRAYELEMENTS
SYMBCALCARRAYELEMENTS:
.type SYMBCALCARRAYELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0123:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .L_0126
.L_0129:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
sal eax, 4
mov ecx, dword ptr [ebx+64]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
sal ebx, 4
mov esi, dword ptr [eax+64]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
push ebx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
.L_0127:
inc dword ptr [ebp-20]
.L_0126:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_0129
.L_0128:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_0124:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCALCARRAYELEMENTS, .-SYMBCALCARRAYELEMENTS
.cfi_endproc
.balign 16

.globl SYMBCHECKARRAYSIZE
SYMBCHECKARRAYSIZE:
.type SYMBCHECKARRAYSIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_012A:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_012D
.L_0130:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .L_0132
cmp dword ptr [ebx+8], 0
jne .L_0132
.L_013F:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .L_0131
.L_0132:
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp+12]
add eax, ebx
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov ecx, dword ptr [ebp+12]
add ecx, ebx
mov esi, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
sub esi, dword ptr [ecx]
sbb ebx, dword ptr [ecx+4]
add esi, 1
adc ebx, 0
mov eax, esi
mov ecx, ebx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ecx
.L_0131:
cmp dword ptr [ebp-16], 0
jb .L_0134
ja .L_0140
cmp dword ptr [ebp-20], 2147483647
jbe .L_0134
.L_0140:
mov dword ptr [ebp-24], -1
jmp .L_012F
.L_0134:
.L_0133:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
push eax
push ecx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_0136
ja .L_0141
cmp dword ptr [ebp-12], 2147483647
jbe .L_0136
.L_0141:
mov dword ptr [ebp-24], -1
jmp .L_012F
.L_0136:
.L_0135:
.L_012E:
inc dword ptr [ebp-28]
.L_012D:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_0130
.L_012F:
cmp dword ptr [ebp-24], 0
jne .L_0138
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
push ecx
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_013A
ja .L_0142
cmp dword ptr [ebp-12], 2147483647
jbe .L_013A
.L_0142:
mov dword ptr [ebp-24], -1
.L_013A:
.L_0139:
.L_0138:
.L_0137:
cmp dword ptr [ebp-24], 0
je .L_013C
mov dword ptr [ebp-4], 0
jmp .L_013B
.L_013C:
mov ecx, dword ptr [ENV+244]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .L_0143
jb .L_0144
cmp dword ptr [ebp-12], ecx
ja .L_0143
.L_0144:
xor esi, esi
.L_0143:
and esi, dword ptr [ebp+24]
je .L_013E
push 0
push 1
push 0
push 23
call ERRREPORTWARN
add esp, 16
.L_013E:
.L_013D:
mov dword ptr [ebp-4], -1
.L_013B:
.L_012B:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCHECKARRAYSIZE, .-SYMBCHECKARRAYSIZE
.cfi_endproc
.balign 16

.globl SYMBGETVARHASCTOR
SYMBGETVARHASCTOR:
.type SYMBGETVARHASCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0145:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0148
mov dword ptr [ebp-4], 0
jmp .L_0146
.L_0148:
.L_0147:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_014B
.L_014C:
mov dword ptr [ebp-4], -1
jmp .L_0146
jmp .L_0149
.L_014B:
cmp dword ptr [ebp-8], 39
jne .L_014D
.L_014E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0150
mov dword ptr [ebp-4], -1
jmp .L_0146
.L_0150:
.L_014F:
.L_014D:
.L_0149:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_0152
mov dword ptr [ebp-4], -1
jmp .L_0146
.L_0152:
.L_0151:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_0146:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETVARHASCTOR, .-SYMBGETVARHASCTOR
.cfi_endproc
.balign 16

.globl SYMBGETVARHASDTOR
SYMBGETVARHASDTOR:
.type SYMBGETVARHASDTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0153:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0156
mov dword ptr [ebp-4], 0
jmp .L_0154
.L_0156:
.L_0155:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0159
.L_015A:
mov dword ptr [ebp-4], -1
jmp .L_0154
jmp .L_0157
.L_0159:
cmp dword ptr [ebp-8], 39
jne .L_015B
.L_015C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_015E
mov dword ptr [ebp-4], -1
jmp .L_0154
.L_015E:
.L_015D:
.L_015B:
.L_0157:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .L_0160
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0162
mov dword ptr [ebp-4], -1
jmp .L_0154
.L_0162:
.L_0161:
.L_0160:
.L_015F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETVARHASDTOR, .-SYMBGETVARHASDTOR
.cfi_endproc
.balign 16

.globl SYMBCLONEVAR
SYMBCLONEVAR:
.type SYMBCLONEVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0163:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_0167
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
call SYMBADDARRAYDESC
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .L_0168
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0166
.L_0168:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_016A
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_016C
.L_016F:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [Lt_0170+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [Lt_0170+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [Lt_0170+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [Lt_0170+eax+12], ebx
.L_016D:
inc dword ptr [ebp-8]
.L_016C:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .L_016F
.L_016E:
.L_016A:
.L_0169:
sub esp, 8
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset Lt_0171
mov esi, dword ptr [ebp+8]
push dword ptr [esi+60]
push 0
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+32]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+28]
and eax, 511
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-4], eax
.L_0166:
.L_0164:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCLONEVAR, .-SYMBCLONEVAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0170,128

.section .data
.balign 4
Lt_0171:
.int Lt_0170
.int Lt_0170
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl SYMBVARCHECKACCESS
SYMBVARCHECKACCESS:
.type SYMBVARCHECKACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0172:
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_0175
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0177
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_0179
mov dword ptr [ebp-4], 0
jmp .L_0173
.L_0179:
.L_0178:
jmp .L_0176
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_017A
mov dword ptr [ebp-4], 0
jmp .L_0173
.L_017A:
.L_0176:
.L_0175:
.L_0174:
mov dword ptr [ebp-4], -1
.L_0173:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBVARCHECKACCESS, .-SYMBVARCHECKACCESS
.cfi_endproc
.balign 16

.globl SYMBDELVAR
SYMBDELVAR:
.type SYMBDELVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_017B:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 16
cmp dword ptr [ebp+12], 0
jne .L_017E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
je .L_0180
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call SYMBDELSYMBOL
add esp, 16
.L_0180:
.L_017F:
.L_017E:
.L_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0182
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_0184
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0186
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0188
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 16
.L_0188:
.L_0187:
.L_0186:
.L_0185:
jmp .L_0183
.L_0184:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_018A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_018C
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 16
.L_018C:
.L_018B:
.L_018A:
.L_0189:
.L_0183:
.L_0182:
.L_0181:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_017C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELVAR, .-SYMBDELVAR
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
SYMBDROPARRAYDIMS:
.type SYMBDROPARRAYDIMS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AE:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.L_00AF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDROPARRAYDIMS, .-SYMBDROPARRAYDIMS
.cfi_endproc
.balign 16
SYMBRECALCARRAYDIFF:
.type SYMBRECALCARRAYDIFF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_00B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_00B3
.L_00B6:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp-24]
add ebx, eax
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ecx, dword ptr [ebp-24]
add ecx, eax
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
sub esi, dword ptr [ecx+16]
sbb eax, dword ptr [ecx+20]
add esi, 1
adc eax, 0
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-28]
sal esi, 4
mov eax, dword ptr [ebp-24]
add eax, esi
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
add ecx, dword ptr [ebp-8]
adc esi, dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push esi
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop esi
add esp, 8
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], esi
.L_00B4:
inc dword ptr [ebp-28]
.L_00B3:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_00B6
.L_00B5:
mov ecx, dword ptr [ebp-20]
sal ecx, 4
mov esi, dword ptr [ebp-24]
add esi, ecx
mov eax, dword ptr [esi]
mov ecx, dword ptr [esi+4]
add eax, dword ptr [ebp-8]
adc ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+44]
push dword ptr [esi+40]
push ecx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ecx
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+68], ecx
mov dword ptr [esi+72], eax
.L_00B1:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBRECALCARRAYDIFF, .-SYMBRECALCARRAYDIFF
.cfi_endproc
.balign 16
SYMBRECALCARRAYDIFFANDELEMENTS:
.type SYMBRECALCARRAYDIFFANDELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_00BA
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFF
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBCALCARRAYELEMENTS
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
mov dword ptr [ebx+80], edx
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
.L_00B9:
.L_00B8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBRECALCARRAYDIFFANDELEMENTS, .-SYMBRECALCARRAYDIFFANDELEMENTS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0069:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
Lt_006A:	.ascii	"elements\0"
.balign 4
Lt_006B:	.ascii	"lbound\0"
.balign 4
Lt_006C:	.ascii	"ubound\0"
.balign 4
Lt_0075:	.ascii	"FBARRAY\0"
.balign 4
Lt_007F:	.ascii	"$\0"
.balign 4
Lt_0080:	.ascii	"<\0"
.balign 4
Lt_0081:	.ascii	">\0"
.balign 4
Lt_0085:	.ascii	"data\0"
.balign 4
Lt_0086:	.ascii	"ptr\0"
.balign 4
Lt_0087:	.ascii	"size\0"
.balign 4
Lt_0088:	.ascii	"element_len\0"
.balign 4
Lt_0089:	.ascii	"dimensions\0"
.balign 4
Lt_008A:	.ascii	"flags\0"
.balign 4
Lt_008D:	.ascii	"dimTB\0"
