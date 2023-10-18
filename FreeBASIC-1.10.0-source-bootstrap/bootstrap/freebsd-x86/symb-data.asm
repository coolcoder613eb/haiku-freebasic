	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBDATAINIT
SYMBDATAINIT:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_0075:
call FBIS64BIT
test eax, eax
je .L_0078
mov dword ptr [ENV+296], 8
mov dword ptr [SYMB_DTYPETB+228], 8
mov dword ptr [SYMB_DTYPETB+256], 8
mov dword ptr [SYMB_DTYPETB+284], 8
mov dword ptr [SYMB_DTYPETB+480], 24
mov dword ptr [SYMB_DTYPETB+676], 8
mov dword ptr [SYMB_DTYPETB+244], 7
mov dword ptr [SYMB_DTYPETB+272], 8
mov dword ptr [SYMB_DTYPETB+300], 7
mov dword ptr [SYMB_DTYPETB+692], 8
mov dword ptr [SYMB_DTYPETB+236], 81
mov dword ptr [SYMB_DTYPETB+264], 86
jmp .L_0077
.L_0078:
mov dword ptr [ENV+296], 4
mov dword ptr [SYMB_DTYPETB+228], 4
mov dword ptr [SYMB_DTYPETB+256], 4
mov dword ptr [SYMB_DTYPETB+284], 4
mov dword ptr [SYMB_DTYPETB+480], 12
mov dword ptr [SYMB_DTYPETB+676], 4
mov dword ptr [SYMB_DTYPETB+244], 5
mov dword ptr [SYMB_DTYPETB+272], 6
mov dword ptr [SYMB_DTYPETB+300], 5
mov dword ptr [SYMB_DTYPETB+692], 6
mov dword ptr [SYMB_DTYPETB+236], 41
mov dword ptr [SYMB_DTYPETB+264], 46
.L_0077:
mov eax, dword ptr [ENV+272]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [SYMB_DTYPETB+196], ebx
mov ebx, dword ptr [ENV+272]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [SYMB_DTYPETB+200], eax
mov eax, dword ptr [ENV+272]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
mov dword ptr [SYMB_DTYPETB+204], ebx
mov ebx, dword ptr [ENV+272]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+16]
mov dword ptr [SYMB_DTYPETB+212], eax
lea eax, [ebp-64]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 16
rep stosd
pop edi
pop eax
lea eax, [ebp-64]
mov dword ptr [ebp-100], eax
lea eax, [ebp-64]
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-92], 64
mov dword ptr [ebp-88], 4
mov dword ptr [ebp-84], 1
mov dword ptr [ebp-80], 49
mov dword ptr [ebp-76], 16
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 15
mov dword ptr [ebp-104], 1
.L_007D:
mov dword ptr [ebp-108], 1
.L_0081:
mov eax, dword ptr [ebp-108]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp+eax*4-68], ebx
.L_007F:
inc dword ptr [ebp-108]
.L_007E:
cmp dword ptr [ebp-108], 16
jle .L_0081
.L_0080:
mov dword ptr [ebp-112], 0
.L_0085:
mov ebx, dword ptr [ebp-112]
inc ebx
mov dword ptr [ebp-116], ebx
jmp .L_0086
.L_0089:
mov ebx, dword ptr [ebp-116]
push dword ptr [ebp+ebx*4-64]
mov ebx, dword ptr [ebp-112]
push dword ptr [ebp+ebx*4-64]
push dword ptr [ebp-104]
call CLOSESTTYPE
add esp, 12
mov ebx, dword ptr [ebp-116]
mov ecx, dword ptr [ebp+ebx*4-64]
cmp eax, ecx
jne .L_008B
mov ecx, dword ptr [ebp-112]
push dword ptr [ebp+ecx*4-64]
mov ecx, dword ptr [ebp-116]
mov eax, dword ptr [ebp-112]
mov ebx, dword ptr [ebp+ecx*4-64]
mov dword ptr [ebp+eax*4-64], ebx
mov ebx, dword ptr [ebp-116]
pop dword ptr [ebp+ebx*4-64]
.L_008B:
.L_008A:
.L_0087:
inc dword ptr [ebp-116]
.L_0086:
cmp dword ptr [ebp-116], 15
jle .L_0089
.L_0088:
.L_0083:
inc dword ptr [ebp-112]
.L_0082:
cmp dword ptr [ebp-112], 14
jle .L_0085
.L_0084:
mov dword ptr [ebp-112], 0
.L_008F:
mov ebx, dword ptr [ebp-112]
mov eax, dword ptr [ebp+ebx*4-64]
mov dword ptr [ebp-108], eax
mov eax, dword ptr [ebp-112]
imul eax, 10
mov ebx, dword ptr [ebp-104]
sal ebx, 4
add ebx, dword ptr [ebp-108]
mov dword ptr [SYMB_DTYPEMATCHTB+ebx*4-68], eax
.L_008D:
inc dword ptr [ebp-112]
.L_008C:
cmp dword ptr [ebp-112], 15
jle .L_008F
.L_008E:
.L_007B:
inc dword ptr [ebp-104]
.L_007A:
cmp dword ptr [ebp-104], 16
jle .L_007D
.L_007C:
.L_0076:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEMAX
TYPEMAX:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0090:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, dword ptr [ebp+16]
and ebx, 511
cmp eax, ebx
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+20]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0093
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0091
.L_0093:
.L_0092:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0094
mov dword ptr [ebp-12], 24
jmp .L_00A6
.L_0094:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_00A6:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+16]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0096
mov dword ptr [ebp-16], 24
jmp .L_00A7
.L_0096:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A7:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jne .L_0099
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_0098
.L_0099:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_009B
mov dword ptr [ebp-20], 24
jmp .L_00A8
.L_009B:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00A8:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_009D
mov dword ptr [ebp-24], 24
jmp .L_00A9
.L_009D:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_00A9:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-28]
je .L_009A
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_009F
mov dword ptr [ebp-32], 24
jmp .L_00AB
.L_009F:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_00AB:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00A1
mov dword ptr [ebp-36], 24
jmp .L_00AC
.L_00A1:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_00AC:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [SYMB_DTYPETB+eax+12]
cmp dword ptr [SYMB_DTYPETB+ecx+12], ebx
jle .L_00A4
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .L_00A3
.L_00A4:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.L_00A3:
jmp .L_0098
.L_009A:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00A5
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .L_0098
.L_00A5:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.L_0098:
.L_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPETOSIGNED
TYPETOSIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00B4
mov dword ptr [ebp-12], 24
jmp .L_00C6
.L_00B4:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00C6:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .L_00B7
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00B3
.L_00B7:
.L_00B6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .L_00B9
.L_00BB:
mov dword ptr [ebp-16], 2
jmp .L_00B8
.L_00BC:
mov dword ptr [ebp-16], 5
jmp .L_00B8
.L_00BD:
mov dword ptr [ebp-16], 8
jmp .L_00B8
.L_00BE:
push dword ptr [ENV+272]
call TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00B3
jmp .L_00B8
.L_00BF:
mov dword ptr [ebp-16], 11
jmp .L_00B8
.L_00C0:
cmp dword ptr [ENV+296], 8
jne .L_00C2
mov dword ptr [ebp-16], 13
jmp .L_00C1
.L_00C2:
mov dword ptr [ebp-16], 11
.L_00C1:
jmp .L_00B8
.L_00C3:
mov dword ptr [ebp-16], 13
jmp .L_00B8
.L_00C4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp-20]
add eax, 4294967293
cmp eax, 21
ja .L_00C4
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00C5+eax*4-12]
.L_00C5:
.int .L_00BB
.int .L_00BB
.int .L_00C4
.int .L_00BC
.int .L_00BE
.int .L_00C4
.int .L_00BD
.int .L_00C4
.int .L_00C4
.int .L_00BF
.int .L_00C4
.int .L_00C3
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C0
.L_00B8:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPETOUNSIGNED
TYPETOUNSIGNED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C7:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00C9
mov dword ptr [ebp-12], 24
jmp .L_00DA
.L_00C9:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00DA:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .L_00CC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C8
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .L_00CE
.L_00D0:
mov dword ptr [ebp-16], 3
jmp .L_00CD
.L_00D1:
mov dword ptr [ebp-16], 6
jmp .L_00CD
.L_00D2:
mov dword ptr [ebp-16], 9
jmp .L_00CD
.L_00D3:
mov dword ptr [ebp-16], 12
jmp .L_00CD
.L_00D4:
cmp dword ptr [ENV+296], 8
jne .L_00D6
mov dword ptr [ebp-16], 14
jmp .L_00D5
.L_00D6:
mov dword ptr [ebp-16], 12
.L_00D5:
jmp .L_00CD
.L_00D7:
mov dword ptr [ebp-16], 14
jmp .L_00CD
.L_00D8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00CD
.L_00CE:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 22
ja .L_00D8
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_00D9+eax*4-8]
.L_00D9:
.int .L_00D0
.int .L_00D8
.int .L_00D8
.int .L_00D1
.int .L_00D8
.int .L_00D8
.int .L_00D2
.int .L_00D8
.int .L_00D2
.int .L_00D3
.int .L_00D8
.int .L_00D7
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D8
.int .L_00D4
.L_00CD:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEHASCTOR
TYPEHASCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DB:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00DD
mov dword ptr [ebp-8], 24
jmp .L_00E3
.L_00DD:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00E3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00E1
.L_00E2:
push dword ptr [ebp+12]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00E1:
.L_00DF:
.L_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEHASDEFCTOR
TYPEHASDEFCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00E7
mov dword ptr [ebp-8], 24
jmp .L_00ED
.L_00E7:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00ED:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00EB
.L_00EC:
push dword ptr [ebp+12]
call SYMBGETCOMPDEFCTOR
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00EB:
.L_00E9:
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEHASDTOR
TYPEHASDTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00EF:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00F1
mov dword ptr [ebp-8], 24
jmp .L_00F7
.L_00F1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00F7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00F5
.L_00F6:
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR1
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00F5:
.L_00F3:
.L_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPENEEDSDTORCALL
TYPENEEDSDTORCALL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPEHASDTOR
add esp, 8
mov ebx, dword ptr [ebp+8]
and ebx, 511
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEISTRIVIAL
TYPEISTRIVIAL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00FC:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0100
.L_0101:
mov dword ptr [ebp-4], 0
jmp .L_00FE
.L_0100:
cmp dword ptr [ebp-8], 20
jne .L_0102
.L_0103:
push dword ptr [ebp+12]
call SYMBCOMPISTRIVIAL
add esp, 4
mov dword ptr [ebp-4], eax
.L_0102:
.L_00FE:
.L_00FD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEHASFWDREFINSIGNATURE
TYPEHASFWDREFINSIGNATURE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0104:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 23
jne .L_0108
.L_0109:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0108:
cmp dword ptr [ebp-8], 22
jne .L_010A
.L_010B:
push dword ptr [ebp+12]
call SYMBPROCHASFWDREFINSIGNATURE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0106
.L_010A:
mov dword ptr [ebp-4], 0
.L_010C:
.L_0106:
.L_0105:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPEMERGE
TYPEMERGE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_010D:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
and eax, 480
sar eax, 5
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
cmp eax, 8
jle .L_0110
push 0
push 0
push 274
call ERRREPORT
add esp, 12
mov eax, 8
sub eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
mov ecx, dword ptr [ebp-8]
sal ecx, 5
add ebx, ecx
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
mov cl, byte ptr [ebp-8]
sal ebx, cl
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
or eax, ebx
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_010E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLOSESTTYPE
CLOSESTTYPE:
push ebp
mov ebp, esp
sub esp, 124
push ebx
mov dword ptr [ebp-4], 0
.L_0111:
mov eax, dword ptr [ebp+12]
cmp eax, 10
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0114
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_0114:
mov ebx, dword ptr [ebp+16]
cmp ebx, 10
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0116
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0116:
mov eax, dword ptr [ebp+12]
cmp eax, 4
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0118
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_0118:
mov ebx, dword ptr [ebp+16]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_011A
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_011A:
mov eax, dword ptr [ebp+12]
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 7
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_011C
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_011C:
mov ebx, dword ptr [ebp+16]
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_011E
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_011E:
cmp dword ptr [ebp+8], 1
je .L_0120
mov eax, dword ptr [ebp+12]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-120]
not eax
and eax, dword ptr [ebp-124]
je .L_0122
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0122:
mov eax, dword ptr [ebp-124]
not eax
and eax, dword ptr [ebp-120]
je .L_0124
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0124:
.L_0120:
.L_011F:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0125
mov dword ptr [ebp-12], 24
jmp .L_015D
.L_0125:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_015D:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0127
mov dword ptr [ebp-16], 24
jmp .L_015E
.L_0127:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_015E:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_0129
mov dword ptr [ebp-24], 24
jmp .L_015F
.L_0129:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_015F:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_012B
mov dword ptr [ebp-28], 24
jmp .L_0160
.L_012B:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-28], ecx
.L_0160:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [SYMB_DTYPETB+ecx]
cmp eax, dword ptr [SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
not eax
and eax, dword ptr [ebp-8]
je .L_012E
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_012E:
mov eax, dword ptr [ebp-8]
not eax
and eax, dword ptr [ebp-20]
je .L_0130
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_0130:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0131
mov dword ptr [ebp-36], 24
jmp .L_0163
.L_0131:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0163:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0133
mov dword ptr [ebp-40], 24
jmp .L_0164
.L_0133:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0164:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+4]
setge cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_0135
mov dword ptr [ebp-48], 24
jmp .L_0165
.L_0135:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_0165:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0137
mov dword ptr [ebp-52], 24
jmp .L_0166
.L_0137:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_0166:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov eax, dword ptr [ebp-124]
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ebx, dword ptr [SYMB_DTYPETB+ecx+4]
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
not ebx
and ebx, dword ptr [ebp-32]
je .L_013A
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_013A:
mov ebx, dword ptr [ebp-32]
not ebx
and ebx, dword ptr [ebp-44]
je .L_013C
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_013C:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_013D
mov dword ptr [ebp-60], 24
jmp .L_0169
.L_013D:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0169:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-120], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_013F
mov dword ptr [ebp-64], 24
jmp .L_016A
.L_013F:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_016A:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov ecx, dword ptr [ebp-120]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
sub eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0141
mov dword ptr [ebp-72], 24
jmp .L_016B
.L_0141:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-72], eax
.L_016B:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0143
mov dword ptr [ebp-76], 24
jmp .L_016C
.L_0143:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-76], eax
.L_016C:
mov eax, dword ptr [ebp-76]
imul eax, 28
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+4]
sub ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov eax, ecx
sar eax, 31
xor ecx, eax
sub ecx, eax
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-68]
cmp dword ptr [ebp-56], ecx
jge .L_0146
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_0112
.L_0146:
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ebp-68], ecx
jge .L_0148
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_0112
.L_0148:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_0149
mov dword ptr [ebp-84], 24
jmp .L_016F
.L_0149:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-84], ecx
.L_016F:
mov ecx, dword ptr [ebp-84]
imul ecx, 28
mov dword ptr [ebp-120], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_014B
mov dword ptr [ebp-88], 24
jmp .L_0170
.L_014B:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-88], ecx
.L_0170:
mov ecx, dword ptr [ebp-88]
imul ecx, 28
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [SYMB_DTYPETB+ecx+8]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_014D
mov dword ptr [ebp-96], 24
jmp .L_0171
.L_014D:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-96], ebx
.L_0171:
mov ebx, dword ptr [ebp-96]
imul ebx, 28
mov dword ptr [ebp-124], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_014F
mov dword ptr [ebp-100], 24
jmp .L_0172
.L_014F:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-100], ebx
.L_0172:
mov ebx, dword ptr [ebp-100]
imul ebx, 28
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+8]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-92], ecx
mov ecx, dword ptr [ebp-92]
not ecx
and ecx, dword ptr [ebp-80]
je .L_0152
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_0112
.L_0152:
mov ecx, dword ptr [ebp-80]
not ecx
and ecx, dword ptr [ebp-92]
je .L_0154
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_0112
.L_0154:
push dword ptr [ebp+12]
call TYPETOSIGNED
add esp, 4
push dword ptr [ebp+8]
mov ebx, eax
call TYPETOSIGNED
add esp, 4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-104], ebx
push dword ptr [ebp+16]
call TYPETOSIGNED
add esp, 4
push dword ptr [ebp+8]
mov ebx, eax
call TYPETOSIGNED
add esp, 4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-108], ebx
mov ebx, dword ptr [ebp-108]
not ebx
and ebx, dword ptr [ebp-104]
je .L_0156
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_0156:
mov ebx, dword ptr [ebp-104]
not ebx
and ebx, dword ptr [ebp-108]
je .L_0158
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0112
.L_0158:
push dword ptr [ebp+12]
call TYPETOSIGNED
add esp, 4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-112], eax
push dword ptr [ebp+16]
call TYPETOSIGNED
add esp, 4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-116]
not eax
and eax, dword ptr [ebp-112]
je .L_015A
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_015A:
mov eax, dword ptr [ebp-112]
not eax
and eax, dword ptr [ebp-116]
je .L_015C
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0112
.L_015C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl TYPECALCMATCH
TYPECALCMATCH:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_018D:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
cmp eax, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+24]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0190
mov dword ptr [ebp-4], 1300
jmp .L_018E
.L_0190:
.L_018F:
mov ecx, dword ptr [ebp+8]
and ecx, 480
sar ecx, 5
mov eax, dword ptr [ebp+20]
and eax, 480
sar eax, 5
cmp ecx, eax
je .L_0192
mov dword ptr [ebp-4], 0
jmp .L_018E
.L_0192:
.L_0191:
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
jne .L_0194
mov dword ptr [ebp-4], 0
jmp .L_018E
.L_0194:
.L_0193:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ecx, dword ptr [ebp+20]
and ecx, 511
cmp eax, ecx
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebp+24]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0196
mov ebx, dword ptr [ebp-8]
imul ebx, 10
add ebx, 1040
mov dword ptr [ebp-4], ebx
jmp .L_018E
.L_0196:
.L_0195:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+20]
and ebx, 31
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .L_0198
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_0199
mov dword ptr [ebp-20], 24
jmp .L_01AD
.L_0199:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01AD:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_019B
mov dword ptr [ebp-24], 24
jmp .L_01AE
.L_019B:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.L_01AE:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_019D
mov dword ptr [ebp-28], 24
jmp .L_01AF
.L_019D:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01AF:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_019F
mov dword ptr [ebp-32], 24
jmp .L_01B0
.L_019F:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01B0:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-40]
je .L_01A2
mov ecx, dword ptr [ebp-12]
sal ecx, 4
add ecx, dword ptr [ebp-16]
mov eax, dword ptr [SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_018E
.L_01A2:
.L_01A1:
mov dword ptr [ebp-4], 0
jmp .L_018E
.L_0198:
.L_0197:
cmp dword ptr [ebp-12], 20
jne .L_01A4
.L_01A5:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+16]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01A7
push dword ptr [ebp+12]
push dword ptr [ebp+24]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_01A9
mov dword ptr [ebp-4], 780
jmp .L_018E
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A6:
jmp .L_01A3
.L_01A4:
cmp dword ptr [ebp-12], 22
jne .L_01AA
.L_01AB:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call SYMBCALCPROCMATCH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_018E
.L_01AA:
.L_01A3:
mov dword ptr [ebp-4], 0
.L_018E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__symbzdata:
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

.section .data
.balign 4

.globl SYMB_DTYPETB
SYMB_DTYPETB:
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int Lt_005C
.int 0
.int 1
.int -1
.int 1
.int 1
.int 0
.int Lt_005D
.int 0
.int 1
.int -1
.int 10
.int 2
.int 1
.int Lt_005E
.int 0
.int 1
.int 0
.int 15
.int 3
.int 2
.int Lt_005F
.int 0
.int 1
.int 0
.int 0
.int 3
.int 2
.int Lt_0060
.int 0
.int 2
.int -1
.int 20
.int 5
.int 3
.int Lt_0061
.int 0
.int 2
.int 0
.int 25
.int 6
.int 4
.int Lt_0062
.int 0
.int 2
.int 0
.int 0
.int -1
.int -1
.int Lt_0063
.int 0
.int -1
.int -1
.int -1
.int 8
.int -1
.int Lt_0064
.int 0
.int -1
.int 0
.int -1
.int 9
.int -1
.int Lt_0065
.int 0
.int -1
.int -1
.int 0
.int 8
.int -1
.int Lt_0066
.int 0
.int 4
.int -1
.int 40
.int 11
.int 5
.int Lt_0067
.int 0
.int 4
.int 0
.int 45
.int 12
.int 6
.int Lt_0068
.int 0
.int 8
.int -1
.int 80
.int 13
.int 7
.int Lt_0069
.int 0
.int 8
.int 0
.int 85
.int 14
.int 8
.int Lt_006A
.int 1
.int 4
.int -1
.int 0
.int 15
.int 9
.int Lt_006B
.int 1
.int 8
.int -1
.int 0
.int 16
.int 10
.int Lt_006C
.int 2
.int -1
.int 0
.int 0
.int 17
.int -1
.int Lt_006D
.int 2
.int 1
.int 0
.int 0
.int 18
.int -1
.int Lt_006D
.int 5
.int -1
.int 0
.int 0
.int 19
.int -1
.int Lt_006E
.int 3
.int 0
.int 0
.int 0
.int 20
.int -1
.int Lt_006F
.int 3
.int 0
.int 0
.int 0
.int 21
.int -1
.int Lt_0070
.int 4
.int 0
.int 0
.int 0
.int 9
.int -1
.int Lt_0071
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int Lt_0072
.int 0
.int -1
.int 0
.int 0
.int 9
.int -1
.int Lt_0073
.int 0
.int 16
.int 0
.int 0
.int 25
.int -1
.int Lt_0074

.section .bss

.globl SYMB_DTYPEMATCHTB
.balign 4
	.lcomm	SYMB_DTYPEMATCHTB,1024

.section .data
.balign 4
Lt_005C:	.ascii	"any\0"
.balign 4
Lt_005D:	.ascii	"boolean\0"
.balign 4
Lt_005E:	.ascii	"byte\0"
.balign 4
Lt_005F:	.ascii	"ubyte\0"
.balign 4
Lt_0060:	.ascii	"zstring\0"
.balign 4
Lt_0061:	.ascii	"short\0"
.balign 4
Lt_0062:	.ascii	"ushort\0"
.balign 4
Lt_0063:	.ascii	"wstring\0"
.balign 4
Lt_0064:	.ascii	"integer\0"
.balign 4
Lt_0065:	.ascii	"uinteger\0"
.balign 4
Lt_0066:	.ascii	"enum\0"
.balign 4
Lt_0067:	.ascii	"long\0"
.balign 4
Lt_0068:	.ascii	"ulong\0"
.balign 4
Lt_0069:	.ascii	"longint\0"
.balign 4
Lt_006A:	.ascii	"ulongint\0"
.balign 4
Lt_006B:	.ascii	"single\0"
.balign 4
Lt_006C:	.ascii	"double\0"
.balign 4
Lt_006D:	.ascii	"string\0"
.balign 4
Lt_006E:	.ascii	"va_list\0"
.balign 4
Lt_006F:	.ascii	"type\0"
.balign 4
Lt_0070:	.ascii	"namepace\0"
.balign 4
Lt_0071:	.ascii	"function\0"
.balign 4
Lt_0072:	.ascii	"fwdref\0"
.balign 4
Lt_0073:	.ascii	"pointer\0"
.balign 4
Lt_0074:	.ascii	"xmmword\0"

.section .ctors
.int fb_ctor__symbzdata
