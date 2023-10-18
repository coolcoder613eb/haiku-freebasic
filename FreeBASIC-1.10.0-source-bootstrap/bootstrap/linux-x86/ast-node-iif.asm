	.intel_syntax noprefix

.section .text
.balign 16

.globl HCHECKTYPES
HCHECKTYPES:
.type HCHECKTYPES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
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
je .L_0060
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .L_0062
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
je .L_0064
jmp .L_005E
.L_0064:
.L_0063:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0061
.L_0062:
cmp dword ptr [ebp-8], 0
je .L_0066
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ecx
jmp .L_0065
.L_0066:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+20]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-16], ecx
.L_0065:
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_0067
mov dword ptr [ebp-20], 24
jmp .L_0086
.L_0067:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_0086:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 0
je .L_006A
jmp .L_005E
.L_006A:
.L_0069:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 4
je .L_006E
.L_006F:
cmp dword ptr [ebp-24], 7
jne .L_006D
.L_006E:
jmp .L_005E
.L_006D:
.L_006B:
.L_0061:
mov dword ptr [ebp-4], -1
jmp .L_005E
.L_0060:
.L_005F:
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
je .L_0071
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_0073
jmp .L_005E
.L_0073:
.L_0072:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .L_005E
.L_0071:
.L_0070:
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
je .L_0075
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_0077
jmp .L_005E
.L_0077:
.L_0076:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 7
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
mov dword ptr [ebp-4], -1
jmp .L_005E
.L_0075:
.L_0074:
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
je .L_0079
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
je .L_007B
jmp .L_005E
.L_007B:
.L_007A:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ebp+12], ecx
je .L_007D
jmp .L_005E
.L_007D:
.L_007C:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 20
mov ecx, dword ptr [ebp+28]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
mov dword ptr [ebp-4], -1
jmp .L_005E
.L_0079:
.L_0078:
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
je .L_007F
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ebp-8]
je .L_0081
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
jne .L_0083
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 10
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0082
.L_0083:
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 8
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.L_0082:
mov dword ptr [ebp-4], -1
jmp .L_005E
.L_0081:
.L_0080:
cmp dword ptr [ebp-8], 0
je .L_0085
mov dword ptr [ebp+8], 8
mov dword ptr [ebp+12], 0
jmp .L_0084
.L_0085:
mov dword ptr [ebp+16], 8
mov dword ptr [ebp+20], 0
.L_0084:
.L_007F:
.L_007E:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPEMAX
add esp, 32
mov dword ptr [ebp-4], -1
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKTYPES, .-HCHECKTYPES
.cfi_endproc
.balign 16

.globl ASTNEWIIF
ASTNEWIIF:
.type ASTNEWIIF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_009A
jmp .L_0098
.L_009A:
.L_0099:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_009C
sub esp, 12
push dword ptr [ebp+8]
call ASTCONSTEQZERO
add esp, 16
test eax, eax
je .L_009E
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEDELETE
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTUNSCOPE
add esp, 16
jmp .L_009D
.L_009E:
sub esp, 12
push dword ptr [ebp+20]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEDELETE
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTUNSCOPE
add esp, 16
.L_009D:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
jmp .L_0098
.L_009C:
.L_009B:
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
cmp dword ptr [eax+4], ecx
je .L_00A0
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 20
jne .L_00A2
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_00A4
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 4
jne .L_00A6
sub esp, 12
lea ecx, [ebp+12]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.L_00A6:
.L_00A5:
jmp .L_00A3
.L_00A4:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_00A7
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 7
jne .L_00A9
sub esp, 12
lea ecx, [ebp+12]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ecx, dword ptr [ebp+12]
and dword ptr [ecx+4], 511
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A3:
jmp .L_00A1
.L_00A2:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+4], 20
jne .L_00AA
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 131072
test ecx, ecx
je .L_00AC
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 4
jne .L_00AE
sub esp, 12
lea ecx, [ebp+20]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.L_00AE:
.L_00AD:
jmp .L_00AB
.L_00AC:
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
je .L_00AF
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+4], 7
jne .L_00B1
sub esp, 12
lea ecx, [ebp+20]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ecx, dword ptr [ebp+20]
and dword ptr [ecx+4], 511
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AB:
.L_00AA:
.L_00A1:
.L_00A0:
.L_009F:
sub esp, 8
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
call HCHECKTYPES
add esp, 32
test eax, eax
jne .L_00B3
jmp .L_0098
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 261632
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 261632
or ecx, ebx
or dword ptr [ebp-16], ecx
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-36], eax
push -1
push 0
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_00B5
jmp .L_0098
.L_00B5:
.L_00B4:
mov eax, dword ptr [ebp-16]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .L_00B9
.L_00BA:
cmp dword ptr [ebp-48], 4
jne .L_00B8
.L_00B9:
mov dword ptr [ebp-16], 17
.L_00B8:
.L_00B6:
mov eax, dword ptr [ebp-16]
and eax, 511
cmp eax, 7
jne .L_00BC
sub esp, 8
push 0
push 39
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
or dword ptr [eax+12], 16777216
sub esp, 12
push dword ptr [ebp-44]
call ASTDTORLISTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 4
push 64
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 16
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 4
push 64
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 16
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
jmp .L_00BB
.L_00BC:
sub esp, 8
push dword ptr [ebp-40]
push dword ptr [ebp-16]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 12
push dword ptr [ebp-44]
call ASTDTORLISTADD
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
sub esp, 12
push dword ptr [ebp-44]
call SYMBHASCTOR
add esp, 16
test eax, eax
je .L_00BE
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
lea eax, [ebp-20]
push eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
lea eax, [ebp-24]
push eax
push -1
push dword ptr [ebp+20]
push dword ptr [ebp-44]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .L_00C0
cmp dword ptr [ebp-20], 0
je .L_00C2
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 8
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp+12]
call ASTPATCHCTORCALL
add esp, 16
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
jmp .L_00C1
.L_00C2:
mov dword ptr [ebp-28], -1
.L_00C1:
cmp dword ptr [ebp-24], 0
je .L_00C4
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 8
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp+20]
call ASTPATCHCTORCALL
add esp, 16
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
jmp .L_00C3
.L_00C4:
mov dword ptr [ebp-32], -1
.L_00C3:
jmp .L_00BF
.L_00C0:
sub esp, 4
push 0
push dword ptr [ebp+8]
sub esp, 12
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 20
push eax
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
.L_00BF:
sub esp, 12
push dword ptr [ebp-44]
call SYMBHASDEFCTOR
add esp, 16
test eax, eax
jne .L_00C6
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
je .L_00C8
jmp .L_0098
.L_00C8:
.L_00C7:
.L_00C6:
.L_00C5:
.L_00BE:
.L_00BD:
cmp dword ptr [ebp-20], 0
jne .L_00CA
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 4
push 64
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-28], 0
je .L_00CC
sub esp, 4
push 0
push dword ptr [ebp+12]
sub esp, 12
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 20
push eax
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+12], eax
.L_00CC:
.L_00CB:
call ASTDTORLISTSCOPEEND
.L_00CA:
.L_00C9:
cmp dword ptr [ebp-24], 0
jne .L_00CE
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 4
push 64
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+20], eax
cmp dword ptr [ebp-32], 0
je .L_00D0
sub esp, 4
push 0
push dword ptr [ebp+20]
sub esp, 12
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-44]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-40]
call ASTBUILDCTORCALL
add esp, 20
push eax
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+20], eax
.L_00D0:
.L_00CF:
call ASTDTORLISTSCOPEEND
.L_00CE:
.L_00CD:
.L_00BB:
sub esp, 12
push dword ptr [ebp+16]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTTYPEINIUPDATE
add esp, 16
mov dword ptr [ebp+12], eax
call ASTDTORLISTSCOPEEND
sub esp, 12
push dword ptr [ebp+24]
call ASTDTORLISTSCOPEBEGIN
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
call ASTTYPEINIUPDATE
add esp, 16
mov dword ptr [ebp+20], eax
call ASTDTORLISTSCOPEEND
cmp dword ptr [ebp+16], 0
je .L_00D2
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+16]
call ASTDTORLISTFLUSH
add esp, 8
push eax
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+12], eax
.L_00D2:
.L_00D1:
cmp dword ptr [ebp+24], 0
je .L_00D4
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+24]
call ASTDTORLISTFLUSH
add esp, 8
push eax
push dword ptr [ebp+20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+20], eax
.L_00D4:
.L_00D3:
sub esp, 4
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push 26
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-44]
mov dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ecx+56], eax
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-36]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWIIF, .-ASTNEWIIF
.cfi_endproc
.balign 16

.globl ASTLOADIIF
ASTLOADIIF:
.type ASTLOADIIF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D7:
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
cmp dword ptr [AST+136], 0
je .L_00DA
call dword ptr [IR+104]
.L_00DA:
.L_00D9:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .L_00DC
sub esp, 8
push dword ptr [ebp-20]
push 98
call dword ptr [IR+140]
add esp, 16
.L_00DC:
.L_00DB:
cmp dword ptr [AST+136], 0
je .L_00DE
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+64]
add esp, 16
.L_00DE:
.L_00DD:
cmp dword ptr [AST+136], 0
je .L_00E0
call dword ptr [IR+104]
.L_00E0:
.L_00DF:
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .L_00E2
sub esp, 12
push dword ptr [ebp-20]
call dword ptr [IR+64]
add esp, 16
.L_00E2:
.L_00E1:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTDELNODE
add esp, 16
.L_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADIIF, .-ASTLOADIIF
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
