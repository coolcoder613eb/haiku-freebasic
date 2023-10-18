	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWUOP
_ASTNEWUOP:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_0093:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_0096
jmp .L_0094
.L_0096:
.L_0095:
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
cmp dword ptr [ebx+99120], 0
je .L_0098
lea ebx, [ebp-48]
push ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDUOPOVLPROC
add esp, 12
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_009A
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-44]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0094
jmp .L_0099
.L_009A:
cmp dword ptr [ebp-48], 0
je .L_009C
jmp .L_0094
.L_009C:
.L_009B:
.L_0099:
.L_0098:
.L_0097:
cmp dword ptr [ebp+8], 75
jne .L_009E
.L_009F:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 4
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0094
jmp .L_009D
.L_009E:
cmp dword ptr [ebp+8], 73
jne .L_00A0
.L_00A1:
jmp .L_0094
.L_00A0:
.L_009D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00A2
mov dword ptr [ebp-36], 24
jmp .L_00FB
.L_00A2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.L_00FB:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 2
jne .L_00A5
jmp .L_0094
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00A6
mov dword ptr [ebp-44], 24
jmp .L_00FC
.L_00A6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.L_00FC:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
jmp .L_00A9
.L_00AB:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
je .L_00AD
jmp .L_0094
.L_00AD:
.L_00AC:
jmp .L_00A8
.L_00AE:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_00B0
jmp .L_0094
.L_00B0:
.L_00AF:
jmp .L_00A8
.L_00B1:
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
jmp .L_00A8
.L_00B2:
jmp .L_0094
jmp .L_00A8
.L_00A9:
mov eax, dword ptr [ebp-48]
add eax, 4294967292
cmp eax, 20
ja .L_00A8
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_00B3+eax*4-16]
_.L_00B3:
.int .L_00AB
.int .L_00A8
.int .L_00A8
.int .L_00AB
.int .L_00A8
.int .L_00A8
.int .L_00B1
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00AE
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00B2
.L_00A8:
mov eax, dword ptr [_ENV+136]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00B4
mov dword ptr [ebp-40], 24
jmp .L_00FD
.L_00B4:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.L_00FD:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-44]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .L_00B7
cmp dword ptr [ebp+8], 52
jne .L_00B9
mov dword ptr [ebp-32], 0
jmp .L_00B8
.L_00B9:
jmp .L_0094
.L_00B8:
.L_00B7:
.L_00B6:
cmp dword ptr [ebp-32], 0
je .L_00BB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00BC
mov dword ptr [ebp-44], 24
jmp .L_00FF
.L_00BC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-44], eax
.L_00FF:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
and ebx, 480
je .L_00C0
mov dword ptr [ebp-52], 24
jmp .L_0100
.L_00C0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00BE
mov dword ptr [ebp-48], 24
jmp .L_0101
.L_00BE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_0101:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+16]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0100:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+12]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [_SYMB_DTYPETB+236]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_SYMB_DTYPETB+264]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jge .L_00C3
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 8
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
jmp .L_00C2
.L_00C3:
mov eax, dword ptr [ebp-20]
cmp eax, dword ptr [ebp-16]
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-24]
setl bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00C5
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 9
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
.L_00C5:
.L_00C4:
.L_00C2:
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-44], eax
jmp .L_00C7
.L_00C9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CA
mov dword ptr [ebp-48], 24
jmp .L_0102
.L_00CA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0102:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .L_00CD
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
or ebx, 8
push ebx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
.L_00CD:
.L_00CC:
jmp .L_00C6
.L_00CE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CF
mov dword ptr [ebp-48], 24
jmp .L_0103
.L_00CF:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0103:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_00D2
push dword ptr [ebp-12]
call _TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-12], eax
.L_00D2:
.L_00D1:
jmp .L_00C6
.L_00D3:
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00D4
mov dword ptr [ebp-48], 24
jmp .L_0104
.L_00D4:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0104:
mov eax, dword ptr [ebp-48]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
not ebx
test ebx, ebx
je .L_00D7
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .L_00D9
cmp dword ptr [_AST+232], 0
jne .L_00DB
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_00DC
mov dword ptr [ebp-52], 24
jmp .L_0105
.L_00DC:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-52], ebx
.L_0105:
mov ebx, dword ptr [ebp-52]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
sal eax, 3
dec eax
mov ecx, 1
mov ebx, 0
push ebx
push ecx
mov ecx, eax
xchg eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_010E
mov edx, eax
xor eax, eax
.L_010E:
mov [esp+4], edx
xchg eax, [esp+0]
pop ecx
pop ebx
mov eax, dword ptr [ebp-56]
cmp dword ptr [eax+24], ebx
jb .L_00DF
ja .L_010F
cmp dword ptr [eax+20], ecx
jbe .L_00DF
.L_010F:
push 0
push 1
push 0
push 5
call _ERRREPORTWARN
add esp, 16
.L_00DF:
.L_00DE:
.L_00DB:
.L_00DA:
.L_00D9:
.L_00D8:
push dword ptr [ebp-12]
call _TYPETOSIGNED
add esp, 4
mov dword ptr [ebp-12], eax
.L_00D7:
.L_00D6:
jmp .L_00C6
.L_00E0:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_00E1
mov dword ptr [ebp-48], 24
jmp .L_0107
.L_00E1:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0107:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .L_00E4
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, -512
or ecx, 16
push ecx
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-28], eax
.L_00E4:
.L_00E3:
jmp .L_00C6
.L_00E5:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_00E6
mov dword ptr [ebp-48], 24
jmp .L_0108
.L_00E6:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0108:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_00E9
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_00E9:
.L_00E8:
jmp .L_00C6
.L_00EA:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_00EB
mov dword ptr [ebp-48], 24
jmp .L_0109
.L_00EB:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-48], eax
.L_0109:
mov eax, dword ptr [ebp-48]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .L_00EE
push 1
push 0
push 0
push dword ptr [ebp-12]
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_00EE:
.L_00ED:
jmp .L_00C6
.L_00EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0094
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp-44]
add eax, 4294967244
cmp eax, 20
ja .L_00C6
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_00F0+eax*4-208]
_.L_00F0:
.int .L_00C9
.int .L_00EF
.int .L_00D3
.int .L_00C6
.int .L_00C6
.int .L_00CE
.int .L_00E0
.int .L_00E0
.int .L_00E0
.int .L_00E0
.int .L_00E0
.int .L_00E0
.int .L_00C6
.int .L_00E0
.int .L_00C6
.int .L_00C6
.int .L_00E0
.int .L_00E0
.int .L_00E5
.int .L_00E5
.int .L_00EA
.L_00C6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 16
jne .L_00F2
push dword ptr [ebp+12]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HCONSTUOP
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ecx
jmp .L_0094
.L_00F2:
.L_00F1:
cmp dword ptr [ebp+8], 52
jne .L_00F4
push dword ptr [ebp+12]
call _ASTISRELATIONALBOP
add esp, 4
test eax, eax
je .L_00F6
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _ASTGETINVERSELOGOP
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F3:
mov eax, dword ptr [_IR+272]
and eax, 131072
test eax, eax
je .L_00F8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call dword ptr [_IR+20]
add esp, 8
test eax, eax
jne .L_00FA
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMATHUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_00FA:
.L_00F9:
.L_00F8:
.L_00F7:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push 4
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+60], 0
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADUOP
_ASTLOADUOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0110:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .L_0113
mov dword ptr [ebp-4], 0
jmp .L_0111
.L_0113:
.L_0112:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 5
jne .L_0115
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-8]
call _ASTUPDATECONVFD2FS
add esp, 12
.L_0115:
.L_0114:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [_AST+136], 0
je .L_0117
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
and ebx, 1
test ebx, ebx
je .L_0119
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call dword ptr [_IR+224]
add esp, 8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+16]
mov dword ptr [ebx+20], eax
jmp .L_0118
.L_0119:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0118:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [_IR+96]
add esp, 12
cmp dword ptr [ebp-20], 0
jne .L_011B
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ecx
.L_011B:
.L_011A:
.L_0117:
.L_0116:
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ecx
.L_0111:
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
.balign 16
_HSGNLONGINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_005E:
cmp dword ptr [ebp+12], 0
jne .L_0061
cmp dword ptr [ebp+8], 0
jne .L_0061
.L_011C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_0060
.L_0061:
cmp dword ptr [ebp+12], 0
jl .L_0062
jg .L_011D
cmp dword ptr [ebp+8], 0
jbe .L_0062
.L_011D:
mov dword ptr [ebp-8], 1
mov dword ptr [ebp-4], 0
jmp .L_0060
.L_0062:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
.L_0060:
.L_005F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCONSTUOP:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0063:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0065
mov dword ptr [ebp-24], 24
jmp .L_011E
.L_0065:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-24], eax
.L_011E:
mov eax, dword ptr [ebp-24]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0068
mov eax, dword ptr [ebp+20]
push dword ptr [eax+20]
push dword ptr [eax+24]
pop dword ptr [ebp-8]
pop dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .L_006A
.L_006C:
fld qword ptr [ebp-12]
fchs
fstp qword ptr [ebp-12]
jmp .L_0069
.L_006D:
fld qword ptr [ebp-12]
fabs
fstp qword ptr [ebp-12]
jmp .L_0069
.L_006E:
fld qword ptr [ebp-12]
fldz
fxch
fcomip
jz .L_0120
fstp st(0)
fld1
ja .L_0120
fchs
.L_0120:
fstp qword ptr [ebp-12]
jmp .L_0069
.L_006F:
fld qword ptr [ebp-12]
fsin
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0070:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fpatan
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0071:
fld qword ptr [ebp-12]
fcos
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0072:
fld qword ptr [ebp-12]
fld st(0)
fmul st(0), st(0)
fld1
fsubrp
fsqrt
fxch
fpatan
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0073:
fld qword ptr [ebp-12]
fptan
fstp st(0)
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0074:
fld qword ptr [ebp-12]
fld1
fpatan
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0075:
fld qword ptr [ebp-12]
fsqrt
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0076:
fld qword ptr [ebp-12]
fldln2
fxch
fyl2x
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0077:
fld qword ptr [ebp-12]
fldl2e
fmulp st(1), st
fld st
frndint
fsub st(1), st
fxch
f2xm1
push 0x3f800000
fadd dword ptr [esp]
add esp, 4
fscale
fstp st(1)
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0078:
fld qword ptr [ebp-12]
sub esp, 8
fld st(0)
fistp qword ptr [esp]
fild  qword ptr [esp]
fld1
fsubr st(0), st(1)
fxch st(2)
fcomip
fcmovb st(0), st(1)
fstp st(1)
add esp, 8
fstp qword ptr [ebp-12]
jmp .L_0069
.L_0079:
fld qword ptr [ebp-12]
sub esp, 8
fld st(0)
fabs
fld st(0)
fistp qword ptr [esp]
fild  qword ptr [esp]
fld1
fsubr st(1)
fxch st(2)
fcomip
fcmovb st(0), st(1)
fstp st(1)
fldz
fcomip st(2)
fst st(1)
fchs
fcmovb st(0), st(1)
fstp st(1)
add esp, 8
fstp qword ptr [ebp-12]
jmp .L_0069
.L_007A:
fld qword ptr [ebp-12]
sub esp, 4
fnstcw [esp]
mov eax, [esp]
or eax, 0b0000110000000000
push eax
fldcw [esp]
add esp, 4
fld st(0)
frndint
fsubp
fldcw [esp]
add esp, 4
fstp qword ptr [ebp-12]
jmp .L_0069
.L_007B:
jmp .L_0069
.L_006A:
mov eax, dword ptr [ebp-28]
add eax, 4294967242
cmp eax, 18
ja .L_007B
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_007C+eax*4-216]
_.L_007C:
.int .L_006C
.int .L_007B
.int .L_006D
.int .L_006E
.int .L_006F
.int .L_0070
.int .L_0071
.int .L_0072
.int .L_0073
.int .L_0074
.int .L_007B
.int .L_0075
.int .L_007B
.int .L_007B
.int .L_0076
.int .L_0077
.int .L_0078
.int .L_0079
.int .L_007A
.L_0069:
mov eax, dword ptr [ebp+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
jmp .L_0067
.L_0068:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], ebx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .L_007D
mov dword ptr [ebp-28], 24
jmp .L_011F
.L_007D:
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-28], ecx
.L_011F:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+4], 8
jne .L_0080
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-32], ecx
jmp .L_0082
.L_0084:
not dword ptr [ebp-20]
not dword ptr [ebp-16]
jmp .L_0081
.L_0085:
neg dword ptr [ebp-20]
adc dword ptr [ebp-16], 0
neg dword ptr [ebp-16]
jmp .L_0081
.L_0086:
mov eax, dword ptr [ebp-16]
sar eax, 31
xor dword ptr [ebp-20], eax
xor dword ptr [ebp-16], eax
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], eax
jmp .L_0081
.L_0087:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HSGNLONGINT
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .L_0081
.L_0088:
jmp .L_0081
.L_0082:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .L_0088
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_0089+eax*4-208]
_.L_0089:
.int .L_0084
.int .L_0088
.int .L_0085
.int .L_0088
.int .L_0086
.int .L_0087
.L_0081:
jmp .L_007F
.L_0080:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_008B
.L_008D:
mov eax, dword ptr [ebp-20]
not eax
mov ecx, eax
mov edx, ecx
sar edx, 31
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], edx
jmp .L_008A
.L_008E:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .L_008A
.L_008F:
mov eax, dword ptr [ebp-20]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
mov ecx, eax
mov edx, ecx
sar edx, 31
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], edx
jmp .L_008A
.L_0090:
mov ecx, dword ptr [ebp-20]
cmp ecx, 0
je .L_0121
mov ecx, 1
jg .L_0121
mov ecx, -1
.L_0121:
mov eax, ecx
mov edx, eax
sar edx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
jmp .L_008A
.L_0091:
jmp .L_008A
.L_008B:
mov eax, dword ptr [ebp-32]
add eax, 4294967244
cmp eax, 5
ja .L_0091
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_0092+eax*4-208]
_.L_0092:
.int .L_008D
.int .L_0091
.int .L_008E
.int .L_0091
.int .L_008F
.int .L_0090
.L_008A:
.L_007F:
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp-20]
mov edx, dword ptr [ebp-16]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], edx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCONVERTRAWCONSTI
add esp, 12
mov dword ptr [ebp+20], eax
.L_0067:
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-4], eax
.L_0064:
mov eax, dword ptr [ebp-4]
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
