	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLPROFILEMODINIT
RTLPROFILEMODINIT:
.type RTLPROFILEMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_006F:
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBIS64BIT
and ebx, eax
je .L_0072
sub esp, 12
push offset DATAMCOUNTWIN64
call RTLADDINTRINSICPROCS
add esp, 16
jmp .L_0071
.L_0072:
sub esp, 12
push offset DATAMCOUNTNORMAL
call RTLADDINTRINSICPROCS
add esp, 16
.L_0071:
sub esp, 12
push offset DATAMONSTARTUP
call RTLADDINTRINSICPROCS
add esp, 16
.L_0070:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPROFILEMODINIT, .-RTLPROFILEMODINIT
.cfi_endproc
.balign 16

.globl RTLPROFILEMODEND
RTLPROFILEMODEND:
.type RTLPROFILEMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0074:
.L_0075:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPROFILEMODEND, .-RTLPROFILEMODEND
.cfi_endproc
.balign 16

.globl RTLPROFILECALL_MCOUNT
RTLPROFILECALL_MCOUNT:
.type RTLPROFILECALL_MCOUNT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0076:
sub esp, 8
push 0
sub esp, 12
push 334
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPROFILECALL_MCOUNT, .-RTLPROFILECALL_MCOUNT
.cfi_endproc
.balign 16

.globl RTLPROFILECALL_MONSTARTUP
RTLPROFILECALL_MONSTARTUP:
.type RTLPROFILECALL_MONSTARTUP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0078:
sub esp, 12
sub esp, 12
push 0
sub esp, 12
push 335
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 20
push eax
call ASTADD
add esp, 16
.L_0079:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLPROFILECALL_MONSTARTUP, .-RTLPROFILECALL_MONSTARTUP
.cfi_endproc
.balign 16
fb_ctor__rtlzprofile:
.type fb_ctor__rtlzprofile, @function
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
.size fb_ctor__rtlzprofile, .-fb_ctor__rtlzprofile
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
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
DATAMCOUNTNORMAL:
.int Lt_0068
.int Lt_0069
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0

.section .rodata
.balign 4
Lt_0068:	.ascii	"fb_mcount\0"
.balign 4
Lt_0069:	.ascii	"mcount\0"

.section .data
.balign 4
DATAMCOUNTWIN64:
.int Lt_0068
.int Lt_006B
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0

.section .rodata
.balign 4
Lt_006B:	.ascii	"_mcount\0"

.section .data
.balign 4
DATAMONSTARTUP:
.int Lt_006D
.int Lt_006E
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0

.section .rodata
.balign 4
Lt_006D:	.ascii	"fb__monstartup\0"
.balign 4
Lt_006E:	.ascii	"_monstartup\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzprofile
