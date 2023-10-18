	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLPROFILEMODINIT
RTLPROFILEMODINIT:
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
push offset DATAMCOUNTWIN64
call RTLADDINTRINSICPROCS
add esp, 4
jmp .L_0071
.L_0072:
push offset DATAMCOUNTNORMAL
call RTLADDINTRINSICPROCS
add esp, 4
.L_0071:
push offset DATAMONSTARTUP
call RTLADDINTRINSICPROCS
add esp, 4
.L_0070:
pop ebx
ret
.balign 16

.globl RTLPROFILEMODEND
RTLPROFILEMODEND:
.L_0074:
.L_0075:
ret
.balign 16

.globl RTLPROFILECALL_MCOUNT
RTLPROFILECALL_MCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0076:
push 0
push 334
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLPROFILECALL_MONSTARTUP
RTLPROFILECALL_MONSTARTUP:
.L_0078:
push 0
push 335
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
push eax
call ASTADD
add esp, 4
.L_0079:
ret
.balign 16
fb_ctor__rtlzprofile:
.L_0002:
.L_0003:
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
.balign 4
Lt_0068:	.ascii	"fb_mcount\0"
.balign 4
Lt_0069:	.ascii	"mcount\0"
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
.balign 4
Lt_006B:	.ascii	"_mcount\0"
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
.balign 4
Lt_006D:	.ascii	"fb__monstartup\0"
.balign 4
Lt_006E:	.ascii	"_monstartup\0"

.section .ctors
.int fb_ctor__rtlzprofile
