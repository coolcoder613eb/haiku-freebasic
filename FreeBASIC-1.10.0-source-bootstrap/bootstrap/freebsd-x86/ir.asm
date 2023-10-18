	.intel_syntax noprefix

.section .text
.balign 16

.globl IRINIT
IRINIT:
push ebp
mov ebp, esp
sub esp, 4
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
ret
.balign 16

.globl IREND
IREND:
.L_007D:
call dword ptr [IR+4]
mov dword ptr [IR+272], 0
.L_007E:
ret
.balign 16

.globl IRHLINIT
IRHLINIT:
.L_007F:
push 68
push 6144
lea eax, [IRHL+4]
push eax
call FLISTINIT
add esp, 12
push 6
push 12
push 32
lea eax, [IRHL+60]
push eax
call LISTINIT
add esp, 16
.L_0080:
ret
.balign 16

.globl IRHLEND
IRHLEND:
.L_0081:
lea eax, [IRHL+60]
push eax
call LISTEND
add esp, 4
lea eax, [IRHL+4]
push eax
call FLISTEND
add esp, 4
.L_0082:
ret
.balign 16

.globl IRHLEMITPROCBEGIN
IRHLEMITPROCBEGIN:
.L_0083:
mov dword ptr [IRHL], 0
.L_0084:
ret
.balign 16

.globl IRHLEMITPROCEND
IRHLEMITPROCEND:
.L_0085:
lea eax, [IRHL+4]
push eax
call FLISTRESET
add esp, 4
.L_0086:
ret
.balign 16

.globl IRHLEMITPUSHARG
IRHLEMITPUSHARG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0087:
lea eax, [IRHL+60]
push eax
call LISTNEWNODE
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
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLNEWVREG
IRHLNEWVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0089:
lea eax, [IRHL+4]
push eax
call FLISTNEWITEM
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
ret
.balign 16

.globl IRHLALLOCVREG
IRHLALLOCVREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_008D:
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 12
mov dword ptr [ebp-4], eax
.L_008E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLALLOCVRIMM
IRHLALLOCVRIMM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 12
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
ret
.balign 16

.globl IRHLALLOCVRIMMF
IRHLALLOCVRIMMF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0091:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 12
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
ret
.balign 16

.globl IRHLALLOCVRVAR
IRHLALLOCVRVAR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0093:
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
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
.L_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLALLOCVRIDX
IRHLALLOCVRIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
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
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLALLOCVRPTR
IRHLALLOCVRPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
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
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLALLOCVROFS
IRHLALLOCVROFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
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
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRFOREACHDATASTMT
IRFOREACHDATASTMT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_009B:
mov eax, dword ptr [AST+120]
mov dword ptr [ebp-4], eax
.L_009D:
cmp dword ptr [ebp-4], 0
je .L_009E
push dword ptr [ebp-4]
call dword ptr [ebp+8]
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-4], ebx
jmp .L_009D
.L_009E:
.L_009C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl IRHLFLUSHSTATICINITIALIZER
IRHLFLUSHSTATICINITIALIZER:
push ebp
mov ebp, esp
.L_009F:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOADSTATICINITIALIZER
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_00A0:
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__ir:
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

.section .ctors
.int fb_ctor__ir
