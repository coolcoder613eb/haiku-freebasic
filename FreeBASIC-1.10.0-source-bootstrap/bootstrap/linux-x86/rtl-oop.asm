	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLOOPMODINIT
RTLOOPMODINIT:
.type RTLOOPMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_005F:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.L_0060:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLOOPMODINIT, .-RTLOOPMODINIT
.cfi_endproc
.balign 16

.globl RTLOOPMODEND
RTLOOPMODEND:
.type RTLOOPMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0061:
.L_0062:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLOOPMODEND, .-RTLOOPMODEND
.cfi_endproc
.balign 16

.globl RTLOOPISTYPEOF
RTLOOPISTYPEOF:
.type RTLOOPISTYPEOF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0063:
sub esp, 8
push 0
sub esp, 12
push 138
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0066
jmp .L_0064
.L_0066:
.L_0065:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0068
jmp .L_0064
.L_0068:
.L_0067:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0064:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLOOPISTYPEOF, .-RTLOOPISTYPEOF
.cfi_endproc
.balign 16
fb_ctor__rtlzoop:
.type fb_ctor__rtlzoop, @function
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
.size fb_ctor__rtlzoop, .-fb_ctor__rtlzoop
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
FUNCDATA:
.int Lt_005E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 0
.int 2
.int 0
.skip 4,0
.int 0
.int 2
.int 0
.skip 4,0
.skip 224,0
.long 0
.skip 280,0
.skip 568,0

.section .rodata
.balign 4
Lt_005E:	.ascii	"fb_IsTypeOf\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzoop
