	.intel_syntax noprefix

.section .text
.balign 16

.globl XALLOCATE
XALLOCATE:
.type XALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0009:
sub esp, 12
push dword ptr [ebp+8]
call malloc
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_000C
call FATALOUTOFMEMORY
.L_000C:
.L_000B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_000A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size XALLOCATE, .-XALLOCATE
.cfi_endproc
.balign 16

.globl XCALLOCATE
XCALLOCATE:
.type XCALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_000D:
sub esp, 8
push 1
push dword ptr [ebp+8]
call calloc
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0010
call FATALOUTOFMEMORY
.L_0010:
.L_000F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_000E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size XCALLOCATE, .-XCALLOCATE
.cfi_endproc
.balign 16

.globl XREALLOCATE
XREALLOCATE:
.type XREALLOCATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0011:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call realloc
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0014
call FATALOUTOFMEMORY
.L_0014:
.L_0013:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0012:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size XREALLOCATE, .-XREALLOCATE
.cfi_endproc
.balign 16

.globl LISTINIT
LISTINIT:
.type LISTINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0015:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+16]
add eax, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+28], ebx
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call LISTALLOCTB
add esp, 16
.L_0016:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTINIT, .-LISTINIT
.cfi_endproc
.balign 16

.globl LISTEND
LISTEND:
.type LISTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0017:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_0019:
cmp dword ptr [ebp-4], 0
je .L_001A
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call free
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call free
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0019
.L_001A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.L_0018:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTEND, .-LISTEND
.cfi_endproc
.balign 16

.globl LISTALLOCTB
LISTALLOCTB:
.type LISTALLOCTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_001B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 1
test ebx, ebx
je .L_001E
sub esp, 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
imul eax, dword ptr [ebp+12]
push eax
call XCALLOCATE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_001D
.L_001E:
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
imul ebx, dword ptr [ebp+12]
push ebx
call XALLOCATE
add esp, 16
mov dword ptr [ebp-4], eax
.L_001D:
sub esp, 12
push 12
call XALLOCATE
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .L_0020
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax], ebx
.L_0020:
.L_001F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_0022
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax], ebx
.L_0022:
.L_0021:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 2
test ebx, ebx
je .L_0024
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-24], eax
jmp .L_0026
.L_0029:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebx+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
.L_0027:
inc dword ptr [ebp-20]
.L_0026:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ebx
jle .L_0029
.L_0028:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
.L_0024:
.L_0023:
.L_001C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTALLOCTB, .-LISTALLOCTB
.cfi_endproc
.balign 16

.globl LISTNEWNODE
LISTNEWNODE:
.type LISTNEWNODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_002A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_002D
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
shr ebx, 2
mov eax, ebx
push eax
push dword ptr [ebp+8]
call LISTALLOCTB
add esp, 16
.L_002D:
.L_002C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 4
test eax, eax
je .L_002F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+24], eax
cmp dword ptr [ebp-12], 0
je .L_0031
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax+4], ecx
jmp .L_0030
.L_0031:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+20], eax
.L_0030:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-8]
add ecx, 8
mov dword ptr [ebp-4], ecx
jmp .L_002E
.L_002F:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_002E:
.L_002B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTNEWNODE, .-LISTNEWNODE
.cfi_endproc
.balign 16

.globl LISTDELNODE
LISTDELNODE:
.type LISTDELNODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0032:
cmp dword ptr [ebp+12], 0
jne .L_0035
jmp .L_0033
.L_0035:
.L_0034:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 4
test ebx, ebx
je .L_0037
mov ebx, dword ptr [ebp+12]
add ebx, -8
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
je .L_0039
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
jmp .L_0038
.L_0039:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+20], ebx
.L_0038:
cmp dword ptr [ebp-12], 0
je .L_003B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx], eax
jmp .L_003A
.L_003B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+24], ebx
.L_003A:
jmp .L_0036
.L_0037:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_0036:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx+16], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 1
test ecx, ecx
je .L_003D
sub esp, 4
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
add eax, -8
mov ecx, eax
push ecx
push 0
push dword ptr [ebp+12]
call memset
add esp, 16
.L_003D:
.L_003C:
.L_0033:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTDELNODE, .-LISTDELNODE
.cfi_endproc
.balign 16

.globl LISTGETHEAD
LISTGETHEAD:
.type LISTGETHEAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_003E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jne .L_0041
mov dword ptr [ebp-4], 0
jmp .L_0040
.L_0041:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
add ebx, 8
mov dword ptr [ebp-4], ebx
.L_0040:
.L_003F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTGETHEAD, .-LISTGETHEAD
.cfi_endproc
.balign 16

.globl LISTGETTAIL
LISTGETTAIL:
.type LISTGETTAIL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0042:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
jne .L_0045
mov dword ptr [ebp-4], 0
jmp .L_0044
.L_0045:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
add ebx, 8
mov dword ptr [ebp-4], ebx
.L_0044:
.L_0043:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTGETTAIL, .-LISTGETTAIL
.cfi_endproc
.balign 16

.globl LISTGETPREV
LISTGETPREV:
.type LISTGETPREV, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0046:
mov eax, dword ptr [ebp+8]
add eax, -8
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_0049
mov dword ptr [ebp-4], 0
jmp .L_0048
.L_0049:
mov ebx, dword ptr [ebp-8]
add ebx, 8
mov dword ptr [ebp-4], ebx
.L_0048:
.L_0047:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTGETPREV, .-LISTGETPREV
.cfi_endproc
.balign 16

.globl LISTGETNEXT
LISTGETNEXT:
.type LISTGETNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_004A:
mov eax, dword ptr [ebp+8]
add eax, -8
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_004D
mov dword ptr [ebp-4], 0
jmp .L_004C
.L_004D:
mov ebx, dword ptr [ebp-8]
add ebx, 8
mov dword ptr [ebp-4], ebx
.L_004C:
.L_004B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size LISTGETNEXT, .-LISTGETNEXT
.cfi_endproc
.balign 16

.globl STRLISTAPPEND
STRLISTAPPEND:
.type STRLISTAPPEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_004E:
sub esp, 12
push dword ptr [ebp+8]
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp-4]
call fb_StrAssign
add esp, 32
.L_004F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRLISTAPPEND, .-STRLISTAPPEND
.cfi_endproc
.balign 16

.globl STRLISTINIT
STRLISTINIT:
.type STRLISTINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0050:
push -1
push 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call LISTINIT
add esp, 16
.L_0051:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size STRLISTINIT, .-STRLISTINIT
.cfi_endproc
.balign 16
FATALOUTOFMEMORY:
.type FATALOUTOFMEMORY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0004:
.L_0006:
sub esp, 12
push 0
push 0
push offset Lt_0008
push 10
push 4
call fb_ErrorThrowEx
add esp, 32
jmp eax
.L_0007:
.L_0005:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FATALOUTOFMEMORY, .-FATALOUTOFMEMORY
.cfi_endproc

.section .rodata
.balign 4
Lt_0008:	.ascii	"src/compiler/list.bas\0"
