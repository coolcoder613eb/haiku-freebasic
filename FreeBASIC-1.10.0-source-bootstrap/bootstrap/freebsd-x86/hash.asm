	.intel_syntax noprefix

.section .text
.balign 16

.globl HASHINIT
HASHINIT:
push ebp
mov ebp, esp
push ebx
.L_0014:
call LAZYINIT
mov eax, dword ptr [ebp+12]
sal eax, 3
push eax
call XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_0015:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHEND
HASHEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0016:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .L_0019
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_001B
.L_001E:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.L_001F:
cmp dword ptr [ebp-8], 0
je .L_0020
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HASHDELITEM
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_001F
.L_0020:
add dword ptr [ebp-16], 8
.L_001C:
inc dword ptr [ebp-4]
.L_001B:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-4], eax
jle .L_001E
.L_001D:
jmp .L_0018
.L_0019:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_0022
.L_0025:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0026:
cmp dword ptr [ebp-8], 0
je .L_0027
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx], 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HASHDELITEM
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .L_0026
.L_0027:
add dword ptr [ebp-16], 8
.L_0023:
inc dword ptr [ebp-4]
.L_0022:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-4], ebx
jle .L_0025
.L_0024:
.L_0018:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
call LAZYEND
.L_0017:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHHASH
HASHHASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0028:
mov dword ptr [ebp-8], 0
.L_002A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .L_002B
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov ebx, dword ptr [ebp-8]
shl ebx, 5
add eax, ebx
sub eax, dword ptr [ebp-8]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp+8]
jmp .L_002A
.L_002B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0029:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHLOOKUPEX
HASHLOOKUPEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_002C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+16], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_002F
jmp .L_002D
.L_002F:
.L_002E:
.L_0030:
cmp dword ptr [ebp-8], 0
je .L_0031
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0033
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-4], ecx
jmp .L_002D
.L_0033:
.L_0032:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-8], eax
jmp .L_0030
.L_0031:
.L_002D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHLOOKUP
HASHLOOKUP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0034:
push dword ptr [ebp+12]
call HASHHASH
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-4], eax
.L_0035:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHADD
HASHADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0042:
cmp dword ptr [ebp+20], 4294967295
jne .L_0045
push dword ptr [ebp+12]
call HASHHASH
add esp, 4
mov dword ptr [ebp+20], eax
.L_0045:
.L_0044:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+20]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+20], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
push ecx
call HASHNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
jne .L_0047
jmp .L_0043
.L_0047:
.L_0046:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx+4], eax
.L_0043:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHDEL
HASHDEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0048:
cmp dword ptr [ebp+12], 0
jne .L_004B
jmp .L_0049
.L_004B:
.L_004A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+16], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+8], 0
je .L_004D
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call free
add esp, 4
.L_004D:
.L_004C:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], 0
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HASHDELITEM
add esp, 8
.L_0049:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETADD
STRSETADD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_004E:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0051
jmp .L_004F
.L_0051:
.L_0050:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHLOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0053
jmp .L_004F
.L_0053:
.L_0052:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+16], 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0055
jmp .L_004F
.L_0055:
.L_0054:
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HASHHASH
add esp, 4
push eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHADD
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+16], eax
.L_004F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETDEL
STRSETDEL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0056:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
test eax, eax
jne .L_0059
jmp .L_0057
.L_0059:
.L_0058:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HASHHASH
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_005B
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHDEL
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-16], eax
.L_005C:
cmp dword ptr [ebp-16], 0
je .L_005D
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-16], eax
jne .L_005F
push 0
push 1
push offset Lt_0000
push -1
mov eax, dword ptr [ebp-16]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call LISTDELNODE
add esp, 8
jmp .L_005D
.L_005F:
.L_005E:
push dword ptr [ebp-16]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-16], eax
jmp .L_005C
.L_005D:
.L_005B:
.L_005A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-12], eax
.L_0060:
cmp dword ptr [ebp-12], 0
je .L_0061
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0063
push 0
push 1
push offset Lt_0000
push -1
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call LISTDELNODE
add esp, 8
jmp .L_0061
.L_0063:
.L_0062:
push dword ptr [ebp-12]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_0060
.L_0061:
.L_0057:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETCOPY
STRSETCOPY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0064:
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_0066:
cmp dword ptr [ebp-4], 0
je .L_0067
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push dword ptr [ebp+8]
call STRSETADD
add esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0066
.L_0067:
.L_0065:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETINIT
STRSETINIT:
push ebp
mov ebp, esp
push ebx
.L_0068:
push -1
push 20
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTINIT
add esp, 16
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+32]
push eax
call HASHINIT
add esp, 12
.L_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETEND
STRSETEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_006A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHEND
add esp, 4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_006C:
cmp dword ptr [ebp-4], 0
je .L_006D
push 0
push 1
push offset Lt_0000
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTEND
add esp, 4
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__hash:
.L_0002:
.L_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0006:
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
.L_0007:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
LAZYINIT:
.L_000C:
inc dword ptr [ITEMPOOL]
cmp dword ptr [ITEMPOOL], 1
jle .L_000F
jmp .L_000D
.L_000F:
.L_000E:
push 6
push 16
push 8096
lea eax, [ITEMPOOL+4]
push eax
call LISTINIT
add esp, 16
.L_000D:
ret
.balign 16
LAZYEND:
.L_0010:
dec dword ptr [ITEMPOOL]
cmp dword ptr [ITEMPOOL], 0
jle .L_0013
jmp .L_0011
.L_0013:
.L_0012:
lea eax, [ITEMPOOL+4]
push eax
call LISTEND
add esp, 4
.L_0011:
ret
.balign 16
HASHNEWITEM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0036:
lea eax, [ITEMPOOL+4]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_0039
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
jmp .L_0038
.L_0039:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.L_0038:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0037:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASHDELITEM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_003A:
cmp dword ptr [ebp+12], 0
jne .L_003D
jmp .L_003B
.L_003D:
.L_003C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .L_003F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
jmp .L_003E
.L_003F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx], eax
.L_003E:
cmp dword ptr [ebp-8], 0
je .L_0041
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
jmp .L_0040
.L_0041:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.L_0040:
push dword ptr [ebp+12]
lea eax, [ITEMPOOL+4]
push eax
call LISTDELNODE
add esp, 8
.L_003B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	ITEMPOOL,36

.section .ctors
.int fb_ctor__hash
