	.intel_syntax noprefix

.section .text
.balign 16

.globl _IRINIT
_IRINIT:
push ebp
mov ebp, esp
sub esp, 4
.L_0073:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_0077
.L_0078:
lea eax, [_IR]
push edi
push esi
mov edi, eax
mov esi, offset _IRHLC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0075
.L_0077:
cmp dword ptr [ebp-4], 2
jne .L_0079
.L_007A:
lea eax, [_IR]
push edi
push esi
mov edi, eax
mov esi, offset _IRLLVM_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0075
.L_0079:
cmp dword ptr [ebp-4], 3
jne .L_007B
.L_007C:
lea eax, [_IR]
push edi
push esi
mov edi, eax
mov esi, offset _IRGAS64_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .L_0075
.L_007B:
lea eax, [_IR]
push edi
push esi
mov edi, eax
mov esi, offset _IRTAC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
.L_007D:
.L_0075:
mov dword ptr [_IR+272], 0
call dword ptr [_IR]
.L_0074:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IREND
_IREND:
.L_007E:
call dword ptr [_IR+4]
mov dword ptr [_IR+272], 0
.L_007F:
ret
.balign 16

.globl _IRHLINIT
_IRHLINIT:
.L_0080:
push 68
push 6144
lea eax, [_IRHL+4]
push eax
call _FLISTINIT
add esp, 12
push 6
push 12
push 32
lea eax, [_IRHL+60]
push eax
call _LISTINIT
add esp, 16
.L_0081:
ret
.balign 16

.globl _IRHLEND
_IRHLEND:
.L_0082:
lea eax, [_IRHL+60]
push eax
call _LISTEND
add esp, 4
lea eax, [_IRHL+4]
push eax
call _FLISTEND
add esp, 4
.L_0083:
ret
.balign 16

.globl _IRHLEMITPROCBEGIN
_IRHLEMITPROCBEGIN:
.L_0084:
mov dword ptr [_IRHL], 0
.L_0085:
ret
.balign 16

.globl _IRHLEMITPROCEND
_IRHLEMITPROCEND:
.L_0086:
lea eax, [_IRHL+4]
push eax
call _FLISTRESET
add esp, 4
.L_0087:
ret
.balign 16

.globl _IRHLEMITPUSHARG
_IRHLEMITPUSHARG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0088:
lea eax, [_IRHL+60]
push eax
call _LISTNEWNODE
add esp, 4
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
.L_0089:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLNEWVREG
_IRHLNEWVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_008A:
lea eax, [_IRHL+4]
push eax
call _FLISTNEWITEM
add esp, 4
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
jne .L_008D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_IRHL]
mov dword ptr [ebx+12], eax
inc dword ptr [_IRHL]
jmp .L_008C
.L_008D:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], -1
.L_008C:
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
.L_008B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVREG
_IRHLALLOCVREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008E:
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
mov dword ptr [ebp-4], eax
.L_008F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVRIMM
_IRHLALLOCVRIMM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0090:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVRIMMF
_IRHLALLOCVRIMMF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0092:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0093:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVRVAR
_IRHLALLOCVRVAR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0094:
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
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
.L_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVRIDX
_IRHLALLOCVRIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0096:
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
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
.L_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVRPTR
_IRHLALLOCVRPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
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
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLALLOCVROFS
_IRHLALLOCVROFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_009A:
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _IRHLNEWVREG
add esp, 12
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
.L_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRFOREACHDATASTMT
_IRFOREACHDATASTMT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009C:
mov eax, dword ptr [_AST+120]
mov dword ptr [ebp-4], eax
.L_009E:
cmp dword ptr [ebp-4], 0
je .L_009F
push dword ptr [ebp-4]
call dword ptr [ebp+8]
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-4], ebx
jmp .L_009E
.L_009F:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _IRHLFLUSHSTATICINITIALIZER
_IRHLFLUSHSTATICINITIALIZER:
push ebp
mov ebp, esp
.L_00A0:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOADSTATICINITIALIZER
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_00A1:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ir:
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

.globl _IR
.balign 4
	.lcomm	_IR,276
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_0072,36

.globl _IRHL
.balign 4
	.lcomm	_IRHL,92

.section .ctors
.int _fb_ctor__ir
