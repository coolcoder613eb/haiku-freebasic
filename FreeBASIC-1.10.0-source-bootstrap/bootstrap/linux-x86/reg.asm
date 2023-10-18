	.intel_syntax noprefix

.section .text
.balign 16

.globl REGNEWCLASS
REGNEWCLASS:
.type REGNEWCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov dword ptr [ebp-8], 0
sub esp, 12
push 304
call XCALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
jne .L_0075
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call REGINITCLASS
add esp, 16
jmp .L_0074
.L_0075:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SREGINITCLASS
add esp, 16
.L_0074:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGNEWCLASS, .-REGNEWCLASS
.cfi_endproc
.balign 16

.globl REGDELCLASS
REGDELCLASS:
.type REGDELCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0076:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_0079
jmp .L_0077
.L_0079:
.L_0078:
sub esp, 12
push dword ptr [ebp+8]
call free
add esp, 16
mov dword ptr [ebp-4], -1
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGDELCLASS, .-REGDELCLASS
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
REGPUSH:
.type REGPUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+132]
mov dword ptr [Lt_0140], ebx
mov ebx, dword ptr [Lt_0140]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+132], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0140]
mov ebx, dword ptr [ecx+128]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0140]
mov dword ptr [ebx+128], eax
mov eax, dword ptr [Lt_0140]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_007B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGPUSH, .-REGPUSH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0140,4

.section .text
.balign 16
REGPOP:
.type REGPOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [Lt_0141], ebx
.L_007E:
cmp dword ptr [Lt_0141], 0
je .L_007F
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [ebx]
sal ecx, 2
add eax, ecx
mov ecx, dword ptr [ebp+12]
and ecx, dword ptr [eax+76]
test ecx, ecx
je .L_0081
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0141]
cmp dword ptr [ecx+128], eax
jne .L_0083
mov eax, dword ptr [Lt_0141]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+128], ebx
jmp .L_0082
.L_0083:
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [Lt_0142]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0082:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [Lt_0141]
mov ebx, dword ptr [eax+132]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [Lt_0141]
mov dword ptr [ebx+132], ecx
mov ecx, dword ptr [Lt_0141]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .L_007D
.L_0081:
.L_0080:
mov ebx, dword ptr [Lt_0141]
mov dword ptr [Lt_0142], ebx
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [ebx+4]
mov dword ptr [Lt_0141], ecx
jmp .L_007E
.L_007F:
mov dword ptr [ebp-4], -1
.L_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGPOP, .-REGPOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0141,4
.balign 4
	.lcomm	Lt_0142,4

.section .text
.balign 16
REGPOPREG:
.type REGPOPREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [Lt_0143], ebx
.L_0086:
cmp dword ptr [Lt_0143], 0
je .L_0087
mov ebx, dword ptr [Lt_0143]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_0089
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0143]
cmp dword ptr [eax+128], ebx
jne .L_008B
mov ebx, dword ptr [Lt_0143]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+128], ecx
jmp .L_008A
.L_008B:
mov ecx, dword ptr [Lt_0143]
mov eax, dword ptr [Lt_0144]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.L_008A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0143]
mov ecx, dword ptr [ebx+132]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0143]
mov dword ptr [ecx+132], eax
jmp .L_0085
.L_0089:
.L_0088:
mov eax, dword ptr [Lt_0143]
mov dword ptr [Lt_0144], eax
mov eax, dword ptr [Lt_0143]
mov ecx, dword ptr [eax+4]
mov dword ptr [Lt_0143], ecx
jmp .L_0086
.L_0087:
sub esp, 12
push 0
push 1
push 0
push offset Lt_008C
push 21
call ERRREPORTEX
add esp, 32
.L_0085:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGPOPREG, .-REGPOPREG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0143,4
.balign 4
	.lcomm	Lt_0144,4

.section .text
.balign 16
REGCLEAR:
.type REGCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_008D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+136], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 0
mov dword ptr [Lt_0145], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_0090
.L_0093:
mov ebx, dword ptr [Lt_0145]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+64], 0
mov eax, dword ptr [Lt_0145]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [Lt_0145]
sal ebx, 2
add eax, ebx
mov dword ptr [eax+108], 4294967295
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [Lt_0145]
sal eax, 3
add ebx, eax
lea eax, [ebx+12]
mov dword ptr [Lt_0146], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0146]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0146]
mov dword ptr [ecx+128], ebx
mov ebx, dword ptr [Lt_0146]
mov ecx, dword ptr [Lt_0145]
mov dword ptr [ebx], ecx
.L_0091:
inc dword ptr [Lt_0145]
.L_0090:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [Lt_0145], ecx
jle .L_0093
.L_0092:
.L_008E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGCLEAR, .-REGCLEAR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0146,4
.balign 4
	.lcomm	Lt_0145,4

.section .text
.balign 16
REGFINDFAREST:
.type REGFINDFAREST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0094:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_0097
.L_009A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-16], ebx
je .L_009C
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [ebp-16]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax+76]
je .L_009E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
cmp dword ptr [ebp-8], eax
ja .L_00A0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
.L_0098:
inc dword ptr [ebp-16]
.L_0097:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_009A
.L_0099:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGFINDFAREST, .-REGFINDFAREST
.cfi_endproc
.balign 16
REGALLOCATE:
.type REGALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call REGPOP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_00A4
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+52], 0
je .L_00A5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
cmp dword ptr [ebx], 4
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0147
.L_00A5:
mov dword ptr [ebp-16], 0
.L_0147:
cmp dword ptr [ebp-16], 0
je .L_00A8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.L_00A8:
.L_00A7:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call REGFINDFAREST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [IR+264]
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call REGPOPREG
add esp, 16
.L_00A4:
.L_00A3:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp-8]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
sub esp, 12
push dword ptr [ebp+12]
call dword ptr [IR+256]
add esp, 16
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGALLOCATE, .-REGALLOCATE
.cfi_endproc
.balign 16
REGALLOCATEREG:
.type REGALLOCATEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A9:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
je .L_00AC
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call REGPOPREG
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
not eax
and dword ptr [ebx+136], eax
.L_00AC:
.L_00AB:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
sub esp, 12
push dword ptr [ebp+16]
call dword ptr [IR+256]
add esp, 16
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGALLOCATEREG, .-REGALLOCATEREG
.cfi_endproc
.balign 16
REGENSURE:
.type REGENSURE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00AD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .L_00B0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call REGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [IR+260]
add esp, 16
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGENSURE, .-REGENSURE
.cfi_endproc
.balign 16
REGSETOWNER:
.type REGSETOWNER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+96], ebx
sub esp, 12
push dword ptr [ebp+16]
call dword ptr [IR+256]
add esp, 16
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
.L_00B2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGSETOWNER, .-REGSETOWNER
.cfi_endproc
.balign 16
REGFREE:
.type REGFREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
jne .L_00B6
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+136], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov dword ptr [ebx+108], 4294967295
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call REGPUSH
add esp, 16
.L_00B6:
.L_00B5:
.L_00B4:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGFREE, .-REGFREE
.cfi_endproc
.balign 16
REGISFREE:
.type REGISFREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGISFREE, .-REGISFREE
.cfi_endproc
.balign 16
REGGETMAXREGS:
.type REGGETMAXREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGGETMAXREGS, .-REGGETMAXREGS
.cfi_endproc
.balign 16
REGGETFIRST:
.type REGGETFIRST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00BB:
mov dword ptr [ebp-4], 0
.L_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGGETFIRST, .-REGGETFIRST
.cfi_endproc
.balign 16
REGGETNEXT:
.type REGGETNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jl .L_00C0
inc dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+12], ebx
jge .L_00C2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGGETNEXT, .-REGGETNEXT
.cfi_endproc
.balign 16
REGGETVREG:
.type REGGETVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C3:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.L_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGGETVREG, .-REGGETVREG
.cfi_endproc
.balign 16
REGGETREALREG:
.type REGGETREALREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00C5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00C6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGGETREALREG, .-REGGETREALREG
.cfi_endproc
.balign 16
REGDUMP:
.type REGDUMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C7:
.L_00C8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGDUMP, .-REGDUMP
.cfi_endproc
.balign 16
REGINITCLASS:
.type REGINITCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C9:
sub esp, 12
push dword ptr [ebp+8]
call REGCLEAR
add esp, 16
mov dword ptr [Lt_014B], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_00CC
.L_00CF:
mov ebx, dword ptr [Lt_014B]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+128]
mov eax, dword ptr [Lt_014B]
sal eax, 2
add ecx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ecx+76], eax
.L_00CD:
inc dword ptr [Lt_014B]
.L_00CC:
mov eax, dword ptr [ebp-4]
cmp dword ptr [Lt_014B], eax
jle .L_00CF
.L_00CE:
mov eax, dword ptr [ebp+8]
mov ecx, offset REGENSURE
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGALLOCATE
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGALLOCATEREG
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGFREE
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGISFREE
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGSETOWNER
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETMAXREGS
mov dword ptr [eax+24], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGGETFIRST
mov dword ptr [ecx+28], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETNEXT
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGGETVREG
mov dword ptr [ecx+36], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETREALREG
mov dword ptr [eax+40], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGCLEAR
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGDUMP
mov dword ptr [eax+48], ecx
.L_00CA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size REGINITCLASS, .-REGINITCLASS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_014B,4

.section .text
.balign 16
SREGFINDREG:
.type SREGFINDREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D0:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
cmp dword ptr [eax+300], ecx
jne .L_00D3
jmp .L_00D1
.L_00D3:
.L_00D2:
mov dword ptr [Lt_014C], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D5
.L_00D8:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+268]
mov eax, dword ptr [Lt_014C]
sal eax, 2
add ecx, eax
cmp dword ptr [ecx], -1
je .L_00DA
mov ecx, dword ptr [Lt_014C]
sal ecx, 2
mov eax, dword ptr [ebp+8]
add eax, ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [eax+64], ecx
jne .L_00DC
mov ecx, dword ptr [Lt_014C]
mov dword ptr [ebp-4], ecx
jmp .L_00D1
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D6:
inc dword ptr [Lt_014C]
.L_00D5:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [Lt_014C], ecx
jle .L_00D8
.L_00D7:
.L_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGFINDREG, .-SREGFINDREG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_014C,4

.section .text
.balign 16
SREGXCHG:
.type SREGXCHG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00DD:
sub esp, 12
push dword ptr [ebp+12]
call dword ptr [IR+268]
add esp, 16
mov dword ptr [Lt_014D], -1
mov dword ptr [Lt_014E], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_00E0
.L_00E3:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014E]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .L_00E5
mov eax, dword ptr [Lt_014E]
mov dword ptr [Lt_014D], eax
jmp .L_00E2
.L_00E5:
.L_00E4:
.L_00E1:
inc dword ptr [Lt_014E]
.L_00E0:
mov eax, dword ptr [ebp-4]
cmp dword ptr [Lt_014E], eax
jle .L_00E3
.L_00E2:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014D]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [Lt_014D]
sal ebx, 2
add ecx, ebx
pop dword ptr [ecx]
.L_00DE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGXCHG, .-SREGXCHG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_014E,4
.balign 4
	.lcomm	Lt_014D,4

.section .text
.balign 16
SREGFINDFREEREG:
.type SREGFINDFREEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E6:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+300], 0
jne .L_00E9
jmp .L_00E7
.L_00E9:
.L_00E8:
mov dword ptr [Lt_014F], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_00EB
.L_00EE:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014F]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
jne .L_00F0
mov eax, dword ptr [Lt_014F]
mov dword ptr [ebp-4], eax
jmp .L_00E7
.L_00F0:
.L_00EF:
.L_00EC:
inc dword ptr [Lt_014F]
.L_00EB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_014F], eax
jle .L_00EE
.L_00ED:
.L_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGFINDFREEREG, .-SREGFINDFREEREG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_014F,4

.section .text
.balign 16
SREGFINDTOSREG:
.type SREGFINDTOSREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00FC:
mov dword ptr [Lt_0150], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_00FF
.L_0102:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_0150]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .L_0104
mov eax, dword ptr [Lt_0150]
mov dword ptr [ebp-4], eax
jmp .L_00FD
.L_0104:
.L_0103:
.L_0100:
inc dword ptr [Lt_0150]
.L_00FF:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0150], eax
jle .L_0102
.L_0101:
mov dword ptr [ebp-4], -1
.L_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGFINDTOSREG, .-SREGFINDTOSREG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0150,4

.section .text
.balign 16
SREGALLOCATE:
.type SREGALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
sub esp, 12
push dword ptr [ebp+8]
call SREGFINDFREEREG
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0108
sub esp, 12
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [IR+264]
add esp, 16
.L_0108:
.L_0107:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+300]
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-16], ebx
jmp .L_010A
.L_010D:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .L_010F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-12]
sal eax, 2
add ebx, eax
inc dword ptr [ebx]
.L_010F:
.L_010E:
.L_010B:
inc dword ptr [ebp-12]
.L_010A:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jle .L_010D
.L_010C:
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGALLOCATE, .-SREGALLOCATE
.cfi_endproc
.balign 16
SREGALLOCATEREG:
.type SREGALLOCATEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0110:
push 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call SREGALLOCATE
add esp, 16
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGALLOCATEREG, .-SREGALLOCATEREG
.cfi_endproc
.balign 16
SREGENSURE:
.type SREGENSURE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0112:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SREGFINDREG
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0115
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SREGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [IR+260]
add esp, 16
jmp .L_0114
.L_0115:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-8]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], 0
je .L_0117
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SREGXCHG
add esp, 16
.L_0117:
.L_0116:
.L_0114:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGENSURE, .-SREGENSURE
.cfi_endproc
.balign 16
SREGFREE:
.type SREGFREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0118:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], -1
jne .L_011B
jmp .L_0119
.L_011B:
.L_011A:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .L_011D
.L_0120:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .L_0122
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx], eax
jle .L_0124
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
dec dword ptr [ebx]
.L_0124:
.L_0123:
.L_0122:
.L_0121:
.L_011E:
inc dword ptr [ebp-4]
.L_011D:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-4], ebx
jle .L_0120
.L_011F:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+300]
.L_0119:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGFREE, .-SREGFREE
.cfi_endproc
.balign 16
SREGISFREE:
.type SREGISFREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0125:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0126:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGISFREE, .-SREGISFREE
.cfi_endproc
.balign 16
SREGSETOWNER:
.type SREGSETOWNER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0127:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
.L_0128:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGSETOWNER, .-SREGSETOWNER
.cfi_endproc
.balign 16
SREGGETREALREG:
.type SREGGETREALREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0129:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGGETREALREG, .-SREGGETREALREG
.cfi_endproc
.balign 16
SREGGETMAXREGS:
.type SREGGETMAXREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_012C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGGETMAXREGS, .-SREGGETMAXREGS
.cfi_endproc
.balign 16
SREGGETFIRST:
.type SREGGETFIRST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_012D:
sub esp, 12
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 16
mov dword ptr [ebp-4], eax
.L_012E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGGETFIRST, .-SREGGETFIRST
.cfi_endproc
.balign 16
SREGGETNEXT:
.type SREGGETNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012F:
mov eax, dword ptr [ebp+12]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebx+60]
setge cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0132
mov dword ptr [ebp-4], -1
jmp .L_0131
.L_0132:
sub esp, 12
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 16
mov dword ptr [ebp-4], eax
.L_0131:
.L_0130:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGGETNEXT, .-SREGGETNEXT
.cfi_endproc
.balign 16
SREGGETVREG:
.type SREGGETVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0133:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.L_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGGETVREG, .-SREGGETVREG
.cfi_endproc
.balign 16
SREGDUMP:
.type SREGDUMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0135:
.L_0136:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGDUMP, .-SREGDUMP
.cfi_endproc
.balign 16
SREGCLEAR:
.type SREGCLEAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0137:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+300], ecx
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_013A
.L_013D:
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx], -1
mov ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+8]
add ebx, ecx
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [ebp+8]
add ecx, ebx
mov dword ptr [ecx+96], 0
.L_013B:
inc dword ptr [ebp-4]
.L_013A:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_013D
.L_013C:
.L_0138:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGCLEAR, .-SREGCLEAR
.cfi_endproc
.balign 16
SREGINITCLASS:
.type SREGINITCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_013E:
sub esp, 12
push dword ptr [ebp+8]
call SREGCLEAR
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGENSURE
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGALLOCATE
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGALLOCATEREG
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGFREE
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGISFREE
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGSETOWNER
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETMAXREGS
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGGETFIRST
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETNEXT
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGGETVREG
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETREALREG
mov dword ptr [eax+40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGCLEAR
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGDUMP
mov dword ptr [eax+48], ebx
.L_013F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SREGINITCLASS, .-SREGINITCLASS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_0071,36

.section .rodata
.balign 4
Lt_008C:	.ascii	"REGPOPREG\0"
