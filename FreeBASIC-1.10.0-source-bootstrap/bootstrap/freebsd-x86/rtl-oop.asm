	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLOOPMODINIT
RTLOOPMODINIT:
.L_005F:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.L_0060:
ret
.balign 16

.globl RTLOOPMODEND
RTLOOPMODEND:
.L_0061:
.L_0062:
ret
.balign 16

.globl RTLOOPISTYPEOF
RTLOOPISTYPEOF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0063:
push 0
push 138
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
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
ret
.balign 16
fb_ctor__rtlzoop:
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
.balign 4
Lt_005E:	.ascii	"fb_IsTypeOf\0"

.section .ctors
.int fb_ctor__rtlzoop
