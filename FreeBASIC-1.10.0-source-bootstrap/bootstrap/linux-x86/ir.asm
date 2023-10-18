	.intel_syntax noprefix

.section .text
.balign 16

.globl IRINIT
IRINIT:
.type IRINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0072:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_0076
.L_0077:
lea eax, [IR]
push edi
push esi
mov edi, eax
mov esi, offset IRHLC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0074
.L_0076:
cmp dword ptr [ebp-4], 2
jne .L_0078
.L_0079:
lea eax, [IR]
push edi
push esi
mov edi, eax
mov esi, offset IRLLVM_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0074
.L_0078:
cmp dword ptr [ebp-4], 3
jne .L_007A
.L_007B:
lea eax, [IR]
push edi
push esi
mov edi, eax
mov esi, offset IRGAS64_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0074
.L_007A:
lea eax, [IR]
push edi
push esi
mov edi, eax
mov esi, offset IRTAC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
.L_007C:
.L_0074:
mov dword ptr [IR+272], 0
call dword ptr [IR]
.L_0073:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRINIT, .-IRINIT
.cfi_endproc
.balign 16

.globl IREND
IREND:
.type IREND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007D:
call dword ptr [IR+4]
mov dword ptr [IR+272], 0
.L_007E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IREND, .-IREND
.cfi_endproc
.balign 16

.globl IRHLINIT
IRHLINIT:
.type IRHLINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007F:
sub esp, 4
push 68
push 6144
lea eax, [IRHL+4]
push eax
call FLISTINIT
add esp, 16
push 6
push 12
push 32
lea eax, [IRHL+60]
push eax
call LISTINIT
add esp, 16
.L_0080:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLINIT, .-IRHLINIT
.cfi_endproc
.balign 16

.globl IRHLEND
IRHLEND:
.type IRHLEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0081:
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTEND
add esp, 16
.L_0082:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLEND, .-IRHLEND
.cfi_endproc
.balign 16

.globl IRHLEMITPROCBEGIN
IRHLEMITPROCBEGIN:
.type IRHLEMITPROCBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0083:
mov dword ptr [IRHL], 0
.L_0084:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLEMITPROCBEGIN, .-IRHLEMITPROCBEGIN
.cfi_endproc
.balign 16

.globl IRHLEMITPROCEND
IRHLEMITPROCEND:
.type IRHLEMITPROCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0085:
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTRESET
add esp, 16
.L_0086:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLEMITPROCEND, .-IRHLEMITPROCEND
.cfi_endproc
.balign 16

.globl IRHLEMITPUSHARG
IRHLEMITPUSHARG:
.type IRHLEMITPUSHARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0087:
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+8], ebx
.L_0088:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLEMITPUSHARG, .-IRHLEMITPUSHARG
.cfi_endproc
.balign 16

.globl IRHLNEWVREG
IRHLNEWVREG:
.type IRHLNEWVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0089:
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
cmp dword ptr [ebp+16], 4
jne .L_008C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [IRHL]
mov dword ptr [ebx+12], eax
inc dword ptr [IRHL]
jmp .L_008B
.L_008C:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], -1
.L_008B:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
mov dword ptr [eax+40], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+44], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+48], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLNEWVREG, .-IRHLNEWVREG
.cfi_endproc
.balign 16

.globl IRHLALLOCVREG
IRHLALLOCVREG:
.type IRHLALLOCVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008D:
sub esp, 4
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
.L_008E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVREG, .-IRHLALLOCVREG
.cfi_endproc
.balign 16

.globl IRHLALLOCVRIMM
IRHLALLOCVRIMM:
.type IRHLALLOCVRIMM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVRIMM, .-IRHLALLOCVRIMM
.cfi_endproc
.balign 16

.globl IRHLALLOCVRIMMF
IRHLALLOCVRIMMF:
.type IRHLALLOCVRIMMF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0091:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVRIMMF, .-IRHLALLOCVRIMMF
.cfi_endproc
.balign 16

.globl IRHLALLOCVRVAR
IRHLALLOCVRVAR:
.type IRHLALLOCVRVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0093:
sub esp, 4
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVRVAR, .-IRHLALLOCVRVAR
.cfi_endproc
.balign 16

.globl IRHLALLOCVRIDX
IRHLALLOCVRIDX:
.type IRHLALLOCVRIDX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
sub esp, 4
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+32]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVRIDX, .-IRHLALLOCVRIDX
.cfi_endproc
.balign 16

.globl IRHLALLOCVRPTR
IRHLALLOCVRPTR:
.type IRHLALLOCVRPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
sub esp, 4
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], ebx
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [ecx+48], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVRPTR, .-IRHLALLOCVRPTR
.cfi_endproc
.balign 16

.globl IRHLALLOCVROFS
IRHLALLOCVROFS:
.type IRHLALLOCVROFS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
sub esp, 4
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLALLOCVROFS, .-IRHLALLOCVROFS
.cfi_endproc
.balign 16

.globl IRFOREACHDATASTMT
IRFOREACHDATASTMT:
.type IRFOREACHDATASTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_009B:
mov eax, dword ptr [AST+120]
mov dword ptr [ebp-4], eax
.L_009D:
cmp dword ptr [ebp-4], 0
je .L_009E
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [ebp+8]
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-4], ebx
jmp .L_009D
.L_009E:
.L_009C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRFOREACHDATASTMT, .-IRFOREACHDATASTMT
.cfi_endproc
.balign 16

.globl IRHLFLUSHSTATICINITIALIZER
IRHLFLUSHSTATICINITIALIZER:
.type IRHLFLUSHSTATICINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_009F:
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOADSTATICINITIALIZER
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_00A0:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size IRHLFLUSHSTATICINITIALIZER, .-IRHLFLUSHSTATICINITIALIZER
.cfi_endproc
.balign 16
fb_ctor__ir:
.type fb_ctor__ir, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__ir, .-fb_ctor__ir
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

.section .bss

.globl IR
.balign 4
	.lcomm	IR,276
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_0071,36

.globl IRHL
.balign 4
	.lcomm	IRHL,92

.section .ctors, "aw", @progbits
.int fb_ctor__ir
