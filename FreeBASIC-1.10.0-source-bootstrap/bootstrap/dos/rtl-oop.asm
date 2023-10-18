	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLOOPMODINIT
_RTLOOPMODINIT:
.L_0060:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.L_0061:
ret
.balign 16

.globl _RTLOOPMODEND
_RTLOOPMODEND:
.L_0062:
.L_0063:
ret
.balign 16

.globl _RTLOOPISTYPEOF
_RTLOOPISTYPEOF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0064:
push 0
push 138
push offset _Lt_005F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0067
jmp .L_0065
.L_0067:
.L_0066:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_0069
jmp .L_0065
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0065:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzoop:
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_005F
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
_Lt_005F:	.ascii	"fb_IsTypeOf\0"

.section .ctors
.int _fb_ctor__rtlzoop
