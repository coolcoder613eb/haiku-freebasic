	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLPROFILEMODINIT@0
_RTLPROFILEMODINIT@0:
push ebx
.L_0070:
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBIS64BIT@0
and ebx, eax
je .L_0073
push offset _DATAMCOUNTWIN64
call _RTLADDINTRINSICPROCS@4
jmp .L_0072
.L_0073:
push offset _DATAMCOUNTNORMAL
call _RTLADDINTRINSICPROCS@4
.L_0072:
push offset _DATAMONSTARTUP
call _RTLADDINTRINSICPROCS@4
.L_0071:
pop ebx
ret
.balign 16

.globl _RTLPROFILEMODEND@0
_RTLPROFILEMODEND@0:
.L_0075:
.L_0076:
ret
.balign 16

.globl _RTLPROFILECALL_MCOUNT@0
_RTLPROFILECALL_MCOUNT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0077:
push 0
push 334
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
.L_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPROFILECALL_MONSTARTUP@0
_RTLPROFILECALL_MONSTARTUP@0:
.L_0079:
push 0
push 335
push offset _Lt_006E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
push eax
call _ASTADD@4
.L_007A:
ret
.balign 16
_fb_ctor__rtlzprofile:
.L_0002:
.L_0003:
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
call _fb_StrAssign@20
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

.section .data
.balign 4
_DATAMCOUNTNORMAL:
.int _Lt_0069
.int _Lt_006A
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0
.balign 4
_Lt_0069:	.ascii	"fb_mcount\0"
.balign 4
_Lt_006A:	.ascii	"mcount\0"
.balign 4
_DATAMCOUNTWIN64:
.int _Lt_0069
.int _Lt_006C
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0
.balign 4
_Lt_006C:	.ascii	"_mcount\0"
.balign 4
_DATAMONSTARTUP:
.int _Lt_006E
.int _Lt_006F
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.long 0
.skip 280,0
.balign 4
_Lt_006E:	.ascii	"fb__monstartup\0"
.balign 4
_Lt_006F:	.ascii	"_monstartup\0"

.section .ctors
.int _fb_ctor__rtlzprofile
