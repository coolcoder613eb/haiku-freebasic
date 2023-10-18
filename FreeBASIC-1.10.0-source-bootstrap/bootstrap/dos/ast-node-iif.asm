	.intel_syntax noprefix

.section .text
.balign 16

.globl _HCHECKTYPES
_HCHECKTYPES:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_0061
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .L_0063
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, dword ptr [ebp+16]
and ebx, 511
cmp eax, ebx
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+20]
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0065
jmp .L_005F
.L_0065:
.L_0064:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0062
.L_0063:
cmp dword ptr [ebp-8], 0
je .L_0067
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
jmp .L_0066
.L_0067:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+20]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
.L_0066:
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0068
mov dword ptr [ebp-20], 24
jmp .L_0087
.L_0068:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_0087:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 0
je .L_006B
jmp .L_005F
.L_006B:
.L_006A:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 4
je .L_006F
.L_0070:
cmp dword ptr [ebp-24], 7
jne .L_006E
.L_006F:
jmp .L_005F
.L_006E:
.L_006C:
.L_0062:
mov dword ptr [ebp-4], -1
jmp .L_005F
.L_0061:
.L_0060:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 17
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 17
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .L_0072
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_0074
jmp .L_005F
.L_0074:
.L_0073:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .L_005F
.L_0072:
.L_0071:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 7
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 7
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .L_0076
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_0078
jmp .L_005F
.L_0078:
.L_0077:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 7
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .L_005F
.L_0076:
.L_0075:
mov ecx, dword ptr [ebp+8]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
or ecx, dword ptr [ebp-8]
je .L_007A
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_007C
jmp .L_005F
.L_007C:
.L_007B:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ebp+12], ecx
je .L_007E
jmp .L_005F
.L_007E:
.L_007D:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 20
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
mov dword ptr [ebp-4], -1
jmp .L_005F
.L_007A:
.L_0079:
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
and eax, 31
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .L_0080
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .L_0082
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
jne .L_0084
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 10
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0083
.L_0084:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 8
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_0083:
mov dword ptr [ebp-4], -1
jmp .L_005F
.L_0082:
.L_0081:
cmp dword ptr [ebp-8], 0
je .L_0086
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .L_0085
.L_0086:
mov dword ptr [ebp+16], 8
mov dword ptr [ebp+20], 0
.L_0085:
.L_0080:
.L_007F:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEMAX
add esp, 24
mov dword ptr [ebp-4], -1
.L_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWIIF
_ASTNEWIIF:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_009B
jmp .L_0099
.L_009B:
.L_009A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_009D
push dword ptr [ebp+8]
call _ASTCONSTEQZERO
add esp, 4
test eax, eax
je .L_009F
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEDELETE
add esp, 4
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+24]
call _ASTDTORLISTUNSCOPE
add esp, 4
jmp .L_009E
.L_009F:
push dword ptr [ebp+20]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEDELETE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+16]
call _ASTDTORLISTUNSCOPE
add esp, 4
.L_009E:
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
jmp .L_0099
.L_009D:
.L_009C:
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
cmp dword ptr [eax+4], ecx
je .L_00A1
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 20
jne .L_00A3
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_00A5
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 4
jne .L_00A7
lea ecx, [ebp+12]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.L_00A7:
.L_00A6:
jmp .L_00A4
.L_00A5:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_00A8
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 7
jne .L_00AA
lea ecx, [ebp+12]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A4:
jmp .L_00A2
.L_00A3:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 20
jne .L_00AB
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_00AD
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 4
jne .L_00AF
lea ecx, [ebp+20]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.L_00AF:
.L_00AE:
jmp .L_00AC
.L_00AD:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_00B0
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 7
jne .L_00B2
lea ecx, [ebp+20]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AC:
.L_00AB:
.L_00A2:
.L_00A1:
.L_00A0:
lea ecx, [ebp-40]
push ecx
lea ecx, [ebp-16]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+4]
call _HCHECKTYPES
add esp, 24
test eax, eax
jne .L_00B4
jmp .L_0099
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 261632
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 261632
or ecx, ebx
or dword ptr [ebp-16], ecx
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-36], eax
push -1
push 0
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call _ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_00B6
jmp .L_0099
.L_00B6:
.L_00B5:
mov eax, dword ptr [ebp-16]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .L_00BA
.L_00BB:
cmp dword ptr [ebp-48], 4
jne .L_00B9
.L_00BA:
mov dword ptr [ebp-16], 17
.L_00B9:
.L_00B7:
mov eax, dword ptr [ebp-16]
and eax, 511
cmp eax, 7
jne .L_00BD
push 0
push 39
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-44]
call _ASTDTORLISTADD
add esp, 4
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call _ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND
jmp .L_00BC
.L_00BD:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-44], eax
push dword ptr [ebp-44]
call _ASTDTORLISTADD
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push dword ptr [ebp-44]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .L_00BF
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
lea eax, [ebp-24]
push eax
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00C1
cmp dword ptr [ebp-20], 0
je .L_00C3
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+12]
call _ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND
jmp .L_00C2
.L_00C3:
mov dword ptr [ebp-28], -1
.L_00C2:
cmp dword ptr [ebp-24], 0
je .L_00C5
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+20]
call _ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND
jmp .L_00C4
.L_00C5:
mov dword ptr [ebp-32], -1
.L_00C4:
jmp .L_00C0
.L_00C1:
push 0
push dword ptr [ebp+8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.L_00C0:
push dword ptr [ebp-44]
call _SYMBHASDEFCTOR
add esp, 4
test eax, eax
jne .L_00C7
mov eax, dword ptr [ebp-20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-24]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_00C9
jmp .L_0099
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
.L_00BF:
.L_00BE:
cmp dword ptr [ebp-20], 0
jne .L_00CB
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .L_00CD
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+12], eax
.L_00CD:
.L_00CC:
call _ASTDTORLISTSCOPEEND
.L_00CB:
.L_00CA:
cmp dword ptr [ebp-24], 0
jne .L_00CF
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push 64
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+20], eax
cmp dword ptr [ebp-32], 0
je .L_00D1
push 0
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-40]
call _ASTBUILDCTORCALL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+20], eax
.L_00D1:
.L_00D0:
call _ASTDTORLISTSCOPEEND
.L_00CF:
.L_00CE:
.L_00BC:
push dword ptr [ebp+16]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push dword ptr [ebp+12]
call _ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+12], eax
call _ASTDTORLISTSCOPEEND
push dword ptr [ebp+24]
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
push dword ptr [ebp+20]
call _ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+20], eax
call _ASTDTORLISTSCOPEEND
cmp dword ptr [ebp+16], 0
je .L_00D3
push 0
push dword ptr [ebp+16]
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+12], eax
.L_00D3:
.L_00D2:
cmp dword ptr [ebp+24], 0
je .L_00D5
push 0
push dword ptr [ebp+24]
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+20]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+20], eax
.L_00D5:
.L_00D4:
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push 26
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-44]
mov dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ecx+56], eax
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _ASTNEWLINK
add esp, 12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-36]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADIIF
_ASTLOADIIF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [_AST+136], 0
je .L_00DB
call dword ptr [_IR+104]
.L_00DB:
.L_00DA:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTLOAD
add esp, 4
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .L_00DD
push dword ptr [ebp-20]
push 98
call dword ptr [_IR+140]
add esp, 8
.L_00DD:
.L_00DC:
cmp dword ptr [_AST+136], 0
je .L_00DF
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [_IR+64]
add esp, 4
.L_00DF:
.L_00DE:
cmp dword ptr [_AST+136], 0
je .L_00E1
call dword ptr [_IR+104]
.L_00E1:
.L_00E0:
push dword ptr [ebp-16]
call _ASTLOAD
add esp, 4
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .L_00E3
push dword ptr [ebp-20]
call dword ptr [_IR+64]
add esp, 4
.L_00E3:
.L_00E2:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
push dword ptr [ebx+60]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _ASTDELNODE
add esp, 4
.L_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
