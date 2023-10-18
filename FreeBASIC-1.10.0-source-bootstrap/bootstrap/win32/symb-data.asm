	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBDATAINIT@0
_SYMBDATAINIT@0:
push ebp
mov ebp, esp
sub esp, 116
push ebx
.L_0076:
call _FBIS64BIT@0
test eax, eax
je .L_0079
mov dword ptr [_ENV+296], 8
mov dword ptr [_SYMB_DTYPETB+228], 8
mov dword ptr [_SYMB_DTYPETB+256], 8
mov dword ptr [_SYMB_DTYPETB+284], 8
mov dword ptr [_SYMB_DTYPETB+480], 24
mov dword ptr [_SYMB_DTYPETB+676], 8
mov dword ptr [_SYMB_DTYPETB+244], 7
mov dword ptr [_SYMB_DTYPETB+272], 8
mov dword ptr [_SYMB_DTYPETB+300], 7
mov dword ptr [_SYMB_DTYPETB+692], 8
mov dword ptr [_SYMB_DTYPETB+236], 81
mov dword ptr [_SYMB_DTYPETB+264], 86
jmp .L_0078
.L_0079:
mov dword ptr [_ENV+296], 4
mov dword ptr [_SYMB_DTYPETB+228], 4
mov dword ptr [_SYMB_DTYPETB+256], 4
mov dword ptr [_SYMB_DTYPETB+284], 4
mov dword ptr [_SYMB_DTYPETB+480], 12
mov dword ptr [_SYMB_DTYPETB+676], 4
mov dword ptr [_SYMB_DTYPETB+244], 5
mov dword ptr [_SYMB_DTYPETB+272], 6
mov dword ptr [_SYMB_DTYPETB+300], 5
mov dword ptr [_SYMB_DTYPETB+692], 6
mov dword ptr [_SYMB_DTYPETB+236], 41
mov dword ptr [_SYMB_DTYPETB+264], 46
.L_0078:
mov eax, dword ptr [_ENV+272]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_SYMB_DTYPETB+196], ebx
mov ebx, dword ptr [_ENV+272]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [_SYMB_DTYPETB+200], eax
mov eax, dword ptr [_ENV+272]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
mov dword ptr [_SYMB_DTYPETB+204], ebx
mov ebx, dword ptr [_ENV+272]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
mov dword ptr [_SYMB_DTYPETB+212], eax
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
.L_007E:
mov dword ptr [ebp-108], 1
.L_0082:
mov eax, dword ptr [ebp-108]
mov ebx, dword ptr [ebp-108]
mov dword ptr [ebp+eax*4-68], ebx
.L_0080:
inc dword ptr [ebp-108]
.L_007F:
cmp dword ptr [ebp-108], 16
jle .L_0082
.L_0081:
mov dword ptr [ebp-112], 0
.L_0086:
mov ebx, dword ptr [ebp-112]
inc ebx
mov dword ptr [ebp-116], ebx
jmp .L_0087
.L_008A:
mov ebx, dword ptr [ebp-116]
push dword ptr [ebp+ebx*4-64]
mov ebx, dword ptr [ebp-112]
push dword ptr [ebp+ebx*4-64]
push dword ptr [ebp-104]
call _CLOSESTTYPE@12
mov ebx, dword ptr [ebp-116]
mov ecx, dword ptr [ebp+ebx*4-64]
cmp eax, ecx
jne .L_008C
mov ecx, dword ptr [ebp-112]
push dword ptr [ebp+ecx*4-64]
mov ecx, dword ptr [ebp-116]
mov eax, dword ptr [ebp-112]
mov ebx, dword ptr [ebp+ecx*4-64]
mov dword ptr [ebp+eax*4-64], ebx
mov ebx, dword ptr [ebp-116]
pop dword ptr [ebp+ebx*4-64]
.L_008C:
.L_008B:
.L_0088:
inc dword ptr [ebp-116]
.L_0087:
cmp dword ptr [ebp-116], 15
jle .L_008A
.L_0089:
.L_0084:
inc dword ptr [ebp-112]
.L_0083:
cmp dword ptr [ebp-112], 14
jle .L_0086
.L_0085:
mov dword ptr [ebp-112], 0
.L_0090:
mov ebx, dword ptr [ebp-112]
mov eax, dword ptr [ebp+ebx*4-64]
mov dword ptr [ebp-108], eax
mov eax, dword ptr [ebp-112]
imul eax, 10
mov ebx, dword ptr [ebp-104]
sal ebx, 4
add ebx, dword ptr [ebp-108]
mov dword ptr [_SYMB_DTYPEMATCHTB+ebx*4-68], eax
.L_008E:
inc dword ptr [ebp-112]
.L_008D:
cmp dword ptr [ebp-112], 15
jle .L_0090
.L_008F:
.L_007C:
inc dword ptr [ebp-104]
.L_007B:
cmp dword ptr [ebp-104], 16
jle .L_007E
.L_007D:
.L_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _TYPEMAX@24
_TYPEMAX@24:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0091:
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
je .L_0094
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
jmp .L_0092
.L_0094:
.L_0093:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0095
mov dword ptr [ebp-12], 24
jmp .L_00A7
.L_0095:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-12], ecx
.L_00A7:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+16]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0097
mov dword ptr [ebp-16], 24
jmp .L_00A8
.L_0097:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00A8:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jne .L_009A
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .L_0099
.L_009A:
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_009C
mov dword ptr [ebp-20], 24
jmp .L_00A9
.L_009C:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00A9:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_009E
mov dword ptr [ebp-24], 24
jmp .L_00AA
.L_009E:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_00AA:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-28]
je .L_009B
mov eax, dword ptr [ebp-4]
and eax, 480
je .L_00A0
mov dword ptr [ebp-32], 24
jmp .L_00AC
.L_00A0:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-32], eax
.L_00AC:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00A2
mov dword ptr [ebp-36], 24
jmp .L_00AD
.L_00A2:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_00AD:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
cmp dword ptr [_SYMB_DTYPETB+ecx+12], ebx
jle .L_00A5
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .L_00A4
.L_00A5:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.L_00A4:
jmp .L_0099
.L_009B:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00A6
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
jmp .L_0099
.L_00A6:
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ecx], ebx
.L_0099:
.L_0092:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _TYPETOSIGNED@4
_TYPETOSIGNED@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B3:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00B5
mov dword ptr [ebp-12], 24
jmp .L_00C7
.L_00B5:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00C7:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_00B8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00B4
.L_00B8:
.L_00B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .L_00BA
.L_00BC:
mov dword ptr [ebp-16], 2
jmp .L_00B9
.L_00BD:
mov dword ptr [ebp-16], 5
jmp .L_00B9
.L_00BE:
mov dword ptr [ebp-16], 8
jmp .L_00B9
.L_00BF:
push dword ptr [_ENV+272]
call _TYPETOSIGNED@4
mov dword ptr [ebp-4], eax
jmp .L_00B4
jmp .L_00B9
.L_00C0:
mov dword ptr [ebp-16], 11
jmp .L_00B9
.L_00C1:
cmp dword ptr [_ENV+296], 8
jne .L_00C3
mov dword ptr [ebp-16], 13
jmp .L_00C2
.L_00C3:
mov dword ptr [ebp-16], 11
.L_00C2:
jmp .L_00B9
.L_00C4:
mov dword ptr [ebp-16], 13
jmp .L_00B9
.L_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00B9
.L_00BA:
mov eax, dword ptr [ebp-20]
add eax, 4294967293
cmp eax, 21
ja .L_00C5
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00C6+eax*4-12]
_.L_00C6:
.int .L_00BC
.int .L_00BC
.int .L_00C5
.int .L_00BD
.int .L_00BF
.int .L_00C5
.int .L_00BE
.int .L_00C5
.int .L_00C5
.int .L_00C0
.int .L_00C5
.int .L_00C4
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C1
.L_00B9:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _TYPETOUNSIGNED@4
_TYPETOUNSIGNED@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00CA
mov dword ptr [ebp-12], 24
jmp .L_00DB
.L_00CA:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00DB:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_00CD
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C9
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
jmp .L_00CF
.L_00D1:
mov dword ptr [ebp-16], 3
jmp .L_00CE
.L_00D2:
mov dword ptr [ebp-16], 6
jmp .L_00CE
.L_00D3:
mov dword ptr [ebp-16], 9
jmp .L_00CE
.L_00D4:
mov dword ptr [ebp-16], 12
jmp .L_00CE
.L_00D5:
cmp dword ptr [_ENV+296], 8
jne .L_00D7
mov dword ptr [ebp-16], 14
jmp .L_00D6
.L_00D7:
mov dword ptr [ebp-16], 12
.L_00D6:
jmp .L_00CE
.L_00D8:
mov dword ptr [ebp-16], 14
jmp .L_00CE
.L_00D9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .L_00CE
.L_00CF:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 22
ja .L_00D9
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_00DA+eax*4-8]
_.L_00DA:
.int .L_00D1
.int .L_00D9
.int .L_00D9
.int .L_00D2
.int .L_00D9
.int .L_00D9
.int .L_00D3
.int .L_00D9
.int .L_00D3
.int .L_00D4
.int .L_00D9
.int .L_00D8
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D9
.int .L_00D5
.L_00CE:
mov eax, dword ptr [ebp+8]
and eax, -512
mov ebx, dword ptr [ebp-16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _TYPEHASCTOR@8
_TYPEHASCTOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00DE
mov dword ptr [ebp-8], 24
jmp .L_00E4
.L_00DE:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00E4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00E2
.L_00E3:
push dword ptr [ebp+12]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00E2:
.L_00E0:
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPEHASDEFCTOR@8
_TYPEHASDEFCTOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E6:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00E8
mov dword ptr [ebp-8], 24
jmp .L_00EE
.L_00E8:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00EE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00EC
.L_00ED:
push dword ptr [ebp+12]
call _SYMBGETCOMPDEFCTOR@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00EC:
.L_00EA:
.L_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPEHASDTOR@8
_TYPEHASDTOR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F0:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00F2
mov dword ptr [ebp-8], 24
jmp .L_00F8
.L_00F2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00F8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 20
jne .L_00F6
.L_00F7:
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR1@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00F6:
.L_00F4:
.L_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPENEEDSDTORCALL@8
_TYPENEEDSDTORCALL@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00FA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEHASDTOR@8
mov ebx, dword ptr [ebp+8]
and ebx, 511
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.L_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPEISTRIVIAL@8
_TYPEISTRIVIAL@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00FD:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_0101
.L_0102:
mov dword ptr [ebp-4], 0
jmp .L_00FF
.L_0101:
cmp dword ptr [ebp-8], 20
jne .L_0103
.L_0104:
push dword ptr [ebp+12]
call _SYMBCOMPISTRIVIAL@4
mov dword ptr [ebp-4], eax
.L_0103:
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPEHASFWDREFINSIGNATURE@8
_TYPEHASFWDREFINSIGNATURE@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0105:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 23
jne .L_0109
.L_010A:
mov dword ptr [ebp-4], -1
jmp .L_0107
.L_0109:
cmp dword ptr [ebp-8], 22
jne .L_010B
.L_010C:
push dword ptr [ebp+12]
call _SYMBPROCHASFWDREFINSIGNATURE@4
mov dword ptr [ebp-4], eax
jmp .L_0107
.L_010B:
mov dword ptr [ebp-4], 0
.L_010D:
.L_0107:
.L_0106:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _TYPEMERGE@8
_TYPEMERGE@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_010E:
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
jle .L_0111
push 0
push 0
push 274
call _ERRREPORT@12
mov eax, 8
sub eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
.L_0111:
.L_0110:
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
.L_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CLOSESTTYPE@12
_CLOSESTTYPE@12:
push ebp
mov ebp, esp
sub esp, 124
push ebx
mov dword ptr [ebp-4], 0
.L_0112:
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
je .L_0115
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_0115:
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
je .L_0117
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0117:
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
je .L_0119
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_0119:
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
je .L_011B
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_011B:
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
je .L_011D
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_011D:
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
je .L_011F
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_011F:
cmp dword ptr [ebp+8], 1
je .L_0121
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
je .L_0123
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0123:
mov eax, dword ptr [ebp-124]
not eax
and eax, dword ptr [ebp-120]
je .L_0125
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0125:
.L_0121:
.L_0120:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0126
mov dword ptr [ebp-12], 24
jmp .L_015E
.L_0126:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.L_015E:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0128
mov dword ptr [ebp-16], 24
jmp .L_015F
.L_0128:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_015F:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_012A
mov dword ptr [ebp-24], 24
jmp .L_0160
.L_012A:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-24], ecx
.L_0160:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_012C
mov dword ptr [ebp-28], 24
jmp .L_0161
.L_012C:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-28], ecx
.L_0161:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
not eax
and eax, dword ptr [ebp-8]
je .L_012F
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_012F:
mov eax, dword ptr [ebp-8]
not eax
and eax, dword ptr [ebp-20]
je .L_0131
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_0131:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0132
mov dword ptr [ebp-36], 24
jmp .L_0164
.L_0132:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-36], eax
.L_0164:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov dword ptr [ebp-120], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0134
mov dword ptr [ebp-40], 24
jmp .L_0165
.L_0134:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0165:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [ebp-120]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
setge cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .L_0136
mov dword ptr [ebp-48], 24
jmp .L_0166
.L_0136:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_0166:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov dword ptr [ebp-124], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_0138
mov dword ptr [ebp-52], 24
jmp .L_0167
.L_0138:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-52], ecx
.L_0167:
mov ecx, dword ptr [ebp-52]
imul ecx, 28
mov eax, dword ptr [ebp-124]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ebx, dword ptr [_SYMB_DTYPETB+ecx+4]
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
not ebx
and ebx, dword ptr [ebp-32]
je .L_013B
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_013B:
mov ebx, dword ptr [ebp-32]
not ebx
and ebx, dword ptr [ebp-44]
je .L_013D
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_013D:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_013E
mov dword ptr [ebp-60], 24
jmp .L_016A
.L_013E:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_016A:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-120], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0140
mov dword ptr [ebp-64], 24
jmp .L_016B
.L_0140:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_016B:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov ecx, dword ptr [ebp-120]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
sub eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_0142
mov dword ptr [ebp-72], 24
jmp .L_016C
.L_0142:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-72], eax
.L_016C:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_0144
mov dword ptr [ebp-76], 24
jmp .L_016D
.L_0144:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-76], eax
.L_016D:
mov eax, dword ptr [ebp-76]
imul eax, 28
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
sub ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov eax, ecx
sar eax, 31
xor ecx, eax
sub ecx, eax
mov dword ptr [ebp-68], ecx
mov ecx, dword ptr [ebp-68]
cmp dword ptr [ebp-56], ecx
jge .L_0147
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_0113
.L_0147:
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ebp-68], ecx
jge .L_0149
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_0113
.L_0149:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .L_014A
mov dword ptr [ebp-84], 24
jmp .L_0170
.L_014A:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-84], ecx
.L_0170:
mov ecx, dword ptr [ebp-84]
imul ecx, 28
mov dword ptr [ebp-120], ecx
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .L_014C
mov dword ptr [ebp-88], 24
jmp .L_0171
.L_014C:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-88], ecx
.L_0171:
mov ecx, dword ptr [ebp-88]
imul ecx, 28
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+8]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-80], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_014E
mov dword ptr [ebp-96], 24
jmp .L_0172
.L_014E:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-96], ebx
.L_0172:
mov ebx, dword ptr [ebp-96]
imul ebx, 28
mov dword ptr [ebp-124], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0150
mov dword ptr [ebp-100], 24
jmp .L_0173
.L_0150:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-100], ebx
.L_0173:
mov ebx, dword ptr [ebp-100]
imul ebx, 28
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+8]
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-92], ecx
mov ecx, dword ptr [ebp-92]
not ecx
and ecx, dword ptr [ebp-80]
je .L_0153
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_0113
.L_0153:
mov ecx, dword ptr [ebp-80]
not ecx
and ecx, dword ptr [ebp-92]
je .L_0155
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ecx
jmp .L_0113
.L_0155:
push dword ptr [ebp+12]
call _TYPETOSIGNED@4
push dword ptr [ebp+8]
mov ebx, eax
call _TYPETOSIGNED@4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-104], ebx
push dword ptr [ebp+16]
call _TYPETOSIGNED@4
push dword ptr [ebp+8]
mov ebx, eax
call _TYPETOSIGNED@4
cmp ebx, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-108], ebx
mov ebx, dword ptr [ebp-108]
not ebx
and ebx, dword ptr [ebp-104]
je .L_0157
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_0157:
mov ebx, dword ptr [ebp-104]
not ebx
and ebx, dword ptr [ebp-108]
je .L_0159
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0113
.L_0159:
push dword ptr [ebp+12]
call _TYPETOSIGNED@4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-112], eax
push dword ptr [ebp+16]
call _TYPETOSIGNED@4
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-116]
not eax
and eax, dword ptr [ebp-112]
je .L_015B
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_015B:
mov eax, dword ptr [ebp-112]
not eax
and eax, dword ptr [ebp-116]
je .L_015D
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0113
.L_015D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _TYPECALCMATCH@20
_TYPECALCMATCH@20:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_018E:
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
je .L_0191
mov dword ptr [ebp-4], 1300
jmp .L_018F
.L_0191:
.L_0190:
mov ecx, dword ptr [ebp+8]
and ecx, 480
sar ecx, 5
mov eax, dword ptr [ebp+20]
and eax, 480
sar eax, 5
cmp ecx, eax
je .L_0193
mov dword ptr [ebp-4], 0
jmp .L_018F
.L_0193:
.L_0192:
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL@24
test eax, eax
jne .L_0195
mov dword ptr [ebp-4], 0
jmp .L_018F
.L_0195:
.L_0194:
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
je .L_0197
mov ebx, dword ptr [ebp-8]
imul ebx, 10
add ebx, 1040
mov dword ptr [ebp-4], ebx
jmp .L_018F
.L_0197:
.L_0196:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+20]
and ebx, 31
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
je .L_0199
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_019A
mov dword ptr [ebp-20], 24
jmp .L_01AE
.L_019A:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01AE:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_019C
mov dword ptr [ebp-24], 24
jmp .L_01AF
.L_019C:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-24], eax
.L_01AF:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-36]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_019E
mov dword ptr [ebp-28], 24
jmp .L_01B0
.L_019E:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01B0:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_01A0
mov dword ptr [ebp-32], 24
jmp .L_01B1
.L_01A0:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01B1:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
sete cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-40]
je .L_01A3
mov ecx, dword ptr [ebp-12]
sal ecx, 4
add ecx, dword ptr [ebp-16]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_018F
.L_01A3:
.L_01A2:
mov dword ptr [ebp-4], 0
jmp .L_018F
.L_0199:
.L_0198:
cmp dword ptr [ebp-12], 20
jne .L_01A5
.L_01A6:
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
je .L_01A8
push dword ptr [ebp+12]
push dword ptr [ebp+24]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .L_01AA
mov dword ptr [ebp-4], 780
jmp .L_018F
.L_01AA:
.L_01A9:
.L_01A8:
.L_01A7:
jmp .L_01A4
.L_01A5:
cmp dword ptr [ebp-12], 22
jne .L_01AB
.L_01AC:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SYMBCALCPROCMATCH@12
mov dword ptr [ebp-4], eax
jmp .L_018F
.L_01AB:
.L_01A4:
mov dword ptr [ebp-4], 0
.L_018F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_fb_ctor__symbzdata:
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
call _fb_StrAssign@20
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

.section .data
.balign 4

.globl _SYMB_DTYPETB
_SYMB_DTYPETB:
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int _Lt_005D
.int 0
.int 1
.int -1
.int 1
.int 1
.int 0
.int _Lt_005E
.int 0
.int 1
.int -1
.int 10
.int 2
.int 1
.int _Lt_005F
.int 0
.int 1
.int 0
.int 15
.int 3
.int 2
.int _Lt_0060
.int 0
.int 1
.int 0
.int 0
.int 3
.int 2
.int _Lt_0061
.int 0
.int 2
.int -1
.int 20
.int 5
.int 3
.int _Lt_0062
.int 0
.int 2
.int 0
.int 25
.int 6
.int 4
.int _Lt_0063
.int 0
.int 2
.int 0
.int 0
.int -1
.int -1
.int _Lt_0064
.int 0
.int -1
.int -1
.int -1
.int 8
.int -1
.int _Lt_0065
.int 0
.int -1
.int 0
.int -1
.int 9
.int -1
.int _Lt_0066
.int 0
.int -1
.int -1
.int 0
.int 8
.int -1
.int _Lt_0067
.int 0
.int 4
.int -1
.int 40
.int 11
.int 5
.int _Lt_0068
.int 0
.int 4
.int 0
.int 45
.int 12
.int 6
.int _Lt_0069
.int 0
.int 8
.int -1
.int 80
.int 13
.int 7
.int _Lt_006A
.int 0
.int 8
.int 0
.int 85
.int 14
.int 8
.int _Lt_006B
.int 1
.int 4
.int -1
.int 0
.int 15
.int 9
.int _Lt_006C
.int 1
.int 8
.int -1
.int 0
.int 16
.int 10
.int _Lt_006D
.int 2
.int -1
.int 0
.int 0
.int 17
.int -1
.int _Lt_006E
.int 2
.int 1
.int 0
.int 0
.int 18
.int -1
.int _Lt_006E
.int 5
.int -1
.int 0
.int 0
.int 19
.int -1
.int _Lt_006F
.int 3
.int 0
.int 0
.int 0
.int 20
.int -1
.int _Lt_0070
.int 3
.int 0
.int 0
.int 0
.int 21
.int -1
.int _Lt_0071
.int 4
.int 0
.int 0
.int 0
.int 9
.int -1
.int _Lt_0072
.int 5
.int 0
.int 0
.int 0
.int 0
.int -1
.int _Lt_0073
.int 0
.int -1
.int 0
.int 0
.int 9
.int -1
.int _Lt_0074
.int 0
.int 16
.int 0
.int 0
.int 25
.int -1
.int _Lt_0075

.section .bss

.globl _SYMB_DTYPEMATCHTB
.balign 4
	.lcomm	_SYMB_DTYPEMATCHTB,1024

.section .data
.balign 4
_Lt_005D:	.ascii	"any\0"
.balign 4
_Lt_005E:	.ascii	"boolean\0"
.balign 4
_Lt_005F:	.ascii	"byte\0"
.balign 4
_Lt_0060:	.ascii	"ubyte\0"
.balign 4
_Lt_0061:	.ascii	"zstring\0"
.balign 4
_Lt_0062:	.ascii	"short\0"
.balign 4
_Lt_0063:	.ascii	"ushort\0"
.balign 4
_Lt_0064:	.ascii	"wstring\0"
.balign 4
_Lt_0065:	.ascii	"integer\0"
.balign 4
_Lt_0066:	.ascii	"uinteger\0"
.balign 4
_Lt_0067:	.ascii	"enum\0"
.balign 4
_Lt_0068:	.ascii	"long\0"
.balign 4
_Lt_0069:	.ascii	"ulong\0"
.balign 4
_Lt_006A:	.ascii	"longint\0"
.balign 4
_Lt_006B:	.ascii	"ulongint\0"
.balign 4
_Lt_006C:	.ascii	"single\0"
.balign 4
_Lt_006D:	.ascii	"double\0"
.balign 4
_Lt_006E:	.ascii	"string\0"
.balign 4
_Lt_006F:	.ascii	"va_list\0"
.balign 4
_Lt_0070:	.ascii	"type\0"
.balign 4
_Lt_0071:	.ascii	"namepace\0"
.balign 4
_Lt_0072:	.ascii	"function\0"
.balign 4
_Lt_0073:	.ascii	"fwdref\0"
.balign 4
_Lt_0074:	.ascii	"pointer\0"
.balign 4
_Lt_0075:	.ascii	"xmmword\0"

.section .ctors
.int _fb_ctor__symbzdata
