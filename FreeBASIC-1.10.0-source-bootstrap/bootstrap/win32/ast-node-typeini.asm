	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTTYPEINIBEGIN@20
_ASTTYPEINIBEGIN@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 0
mov dword ptr [ecx+36], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
jne .L_006A
mov ecx, dword ptr [_PARSER+112]
cmp dword ptr [ecx], 15
jne .L_006C
mov ecx, dword ptr [_PARSER+112]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 36
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
jmp .L_006B
.L_006C:
mov dword ptr [ebp-12], -1
.L_006B:
.L_006A:
.L_0069:
cmp dword ptr [ebp-12], 0
je .L_006E
push dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
lea ebx, [ecx+44]
push ebx
call _ASTTEMPSCOPEBEGIN@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], eax
jmp .L_006D
.L_006E:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
.L_006D:
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTTYPEINIEND@8
_ASTTYPEINIEND@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0087:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
cmp dword ptr [ebp+12], 0
jne .L_008A
inc dword ptr [_AST+140]
.L_008A:
.L_0089:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_008B:
cmp dword ptr [ebp-4], 0
je .L_008C
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 38
jne .L_008E
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 36
jne .L_0090
dec dword ptr [_AST+140]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+32]
mov ebx, dword ptr [ecx+36]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], ebx
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _HASTTYPEINIMAYBECONVERTUPCAST@8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [ebp-8], 0
je .L_0092
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+68], ebx
jmp .L_0091
.L_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+64], eax
.L_0091:
.L_0093:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+68], 0
je .L_0094
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [eax+24], ecx
adc dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp-28]
add dword ptr [ecx+32], eax
adc dword ptr [ecx+36], ebx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .L_0093
.L_0094:
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
add dword ptr [ebx+24], ecx
adc dword ptr [ebx+28], eax
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebp-28]
add dword ptr [ecx+32], ebx
adc dword ptr [ecx+36], eax
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+68], eax
.L_0090:
.L_008F:
.L_008E:
.L_008D:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .L_008B
.L_008C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+40], 0
je .L_0096
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
call _ASTTEMPSCOPEEND@8
.L_0096:
.L_0095:
.L_0088:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIREMOVELASTNODE@4
_ASTTYPEINIREMOVELASTNODE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_009D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
.L_009F:
cmp dword ptr [ebp-8], 0
je .L_00A0
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+68], 0
jne .L_00A2
cmp dword ptr [ebp-4], 0
je .L_00A4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+68], 0
jmp .L_00A3
.L_00A4:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
.L_00A3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+68], eax
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .L_00A0
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .L_009F
.L_00A0:
.L_009E:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIADDPAD@12
_ASTTYPEINIADDPAD@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00A5:
push 0
push -2147483648
push 0
push 37
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ecx
mov dword ptr [eax+36], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov ebx, dword ptr [eax+36]
add dword ptr [esi+32], ecx
adc dword ptr [esi+36], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_00A6:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINIADDASSIGN@24
_ASTTYPEINIADDASSIGN@24:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00D4:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 38
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], ecx
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+32], 0
mov dword ptr [esi+36], 0
mov esi, dword ptr [ebp+12]
cmp dword ptr [esi], 36
jne .L_00D7
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+28], 0
je .L_00D9
mov esi, dword ptr [ebp+20]
and esi, 480
je .L_00DA
mov dword ptr [ebp-16], 24
jmp .L_00EC
.L_00DA:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-16], esi
.L_00EC:
cmp dword ptr [ebp-16], 20
jne .L_00DD
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+4]
and ecx, 511
and ecx, 480
je .L_00DE
mov dword ptr [ebp-20], 24
jmp .L_00ED
.L_00DE:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 511
and esi, 31
mov dword ptr [ebp-20], esi
.L_00ED:
cmp dword ptr [ebp-20], 20
jne .L_00E1
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+8]
cmp dword ptr [ebp+24], ecx
je .L_00E3
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .L_00E5
mov dword ptr [ebp-12], -1
.L_00E5:
.L_00E4:
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DD:
.L_00DC:
.L_00D9:
.L_00D8:
cmp dword ptr [ebp-12], 0
je .L_00E7
push dword ptr [ebp+16]
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HASTTYPEINITREEMERGEUPCAST@16
jmp .L_00E6
.L_00E7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
mov esi, dword ptr [ecx+36]
add dword ptr [eax+24], ebx
adc dword ptr [eax+28], esi
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+32]
mov eax, dword ptr [esi+36]
add dword ptr [ebx+32], ecx
adc dword ptr [ebx+36], eax
.L_00E6:
jmp .L_00D6
.L_00D7:
cmp dword ptr [ebp+16], 0
je .L_00E9
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_00EB
mov ecx, dword ptr [_ENV+296]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], ecx
mov dword ptr [ebx+36], eax
jmp .L_00EA
.L_00EB:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [eax+32], esi
mov dword ptr [eax+36], ebx
.L_00EA:
.L_00E9:
.L_00E8:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov eax, dword ptr [ebx+36]
add dword ptr [esi+24], ecx
adc dword ptr [esi+28], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov esi, dword ptr [eax+36]
add dword ptr [ecx+32], ebx
adc dword ptr [ecx+36], esi
.L_00D6:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00D5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTTYPEINIADDCTORCALL@20
_ASTTYPEINIADDCTORCALL@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00EE:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push 39
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [esi+40]
mov eax, dword ptr [esi+44]
mov dword ptr [ecx+32], ebx
mov dword ptr [ecx+36], eax
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ebx+32]
mov ecx, dword ptr [ebx+36]
add dword ptr [eax+24], esi
adc dword ptr [eax+28], ecx
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+32]
mov eax, dword ptr [ecx+36]
add dword ptr [esi+32], ebx
adc dword ptr [esi+36], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00EF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTTYPEINIADDCTORLIST@24
_ASTTYPEINIADDCTORLIST@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00F0:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push 40
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+32], eax
mov dword ptr [esi+36], ecx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+20]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push esi
push ebx
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop ebx
pop esi
add esp, 8
add dword ptr [eax+24], ebx
adc dword ptr [eax+28], esi
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
push dword ptr [esi+44]
push dword ptr [esi+40]
push eax
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop eax
add esp, 8
add dword ptr [ebx+32], ecx
adc dword ptr [ebx+36], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_00F1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTTYPEINISCOPEBEGIN@12
_ASTTYPEINISCOPEBEGIN@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F2:
push 0
push -2147483648
push 0
push 41
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
mov dword ptr [eax+36], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINISCOPEEND@8
_ASTTYPEINISCOPEEND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F4:
push 0
push -2147483648
push 0
push 42
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov dword ptr [ebx+28], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov dword ptr [ebx+36], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00F5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINICOPYELEMENTS@12
_ASTTYPEINICOPYELEMENTS@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+12], eax
mov dword ptr [ebp-4], 0
.L_00F8:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 38
jne .L_00F9
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-4], eax
jl .L_00FB
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp+8]
call _ASTTYPEINIADDASSIGN@24
.L_00FB:
.L_00FA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+12], ebx
inc dword ptr [ebp-4]
jmp .L_00F8
.L_00F9:
.L_00F7:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINIREPLACEELEMENT@12
_ASTTYPEINIREPLACEELEMENT@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-4], 0
.L_00FE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 38
jne .L_00FF
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
jne .L_0101
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
jmp .L_00FD
.L_0101:
.L_0100:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+8], eax
inc dword ptr [ebp-4]
jmp .L_00FE
.L_00FF:
.L_00FD:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
__Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0115:
mov dword ptr [ebp-32], 0
cmp dword ptr [ebp+16], 0
je .L_0118
dec dword ptr [_AST+140]
.L_0118:
.L_0117:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 19
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_011A
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+12]
call _SYMBGETREALSIZE@4
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.L_011A:
.L_0119:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+64]
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
je .L_011C
mov edx, dword ptr [ebp-8]
cmp dword ptr [edx+68], 0
je .L_011E
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .L_0120
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX@4
mov dword ptr [ebp-16], eax
.L_0120:
.L_011F:
.L_011E:
.L_011D:
.L_011C:
.L_011B:
.L_0121:
cmp dword ptr [ebp-8], 0
je .L_0122
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax]
mov dword ptr [ebp-36], edx
cmp dword ptr [ebp-36], 38
jne .L_0125
.L_0126:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call _HASTCHECKTYPEINIASSIGNMENT@16
test eax, eax
je .L_0128
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
je .L_012A
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
cmp dword ptr [edx], 12
jne .L_012C
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
cmp dword ptr [eax+116], 0
jle .L_012E
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
cmp dword ptr [edx+112], 0
jne .L_0130
push 0
mov edx, dword ptr [ebp-8]
push dword ptr [edx+8]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+4]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+28]
push dword ptr [edx+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
mov eax, dword ptr [edx+28]
and eax, 480
je .L_0131
mov dword ptr [ebp-40], 24
jmp .L_0142
.L_0131:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
mov eax, dword ptr [edx+28]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0142:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov edx, ecx
sar edx, 31
push edx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-20]
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_0130:
.L_012F:
.L_012E:
.L_012D:
.L_012C:
.L_012B:
.L_012A:
.L_0129:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+20]
or eax, 16
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
push dword ptr [ebp-20]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_0128:
.L_0127:
jmp .L_0123
.L_0125:
cmp dword ptr [ebp-36], 37
jne .L_0133
.L_0134:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call _HASTCHECKTYPEINIASSIGNMENT@16
test eax, eax
je .L_0136
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+36]
push dword ptr [eax+32]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-20]
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_0136:
.L_0135:
jmp .L_0123
.L_0133:
cmp dword ptr [ebp-36], 39
jne .L_0137
.L_0138:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call _HASTCHECKTYPEINIASSIGNMENT@16
test eax, eax
je .L_013A
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _ASTPATCHCTORCALL@8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_013A:
.L_0139:
jmp .L_0123
.L_0137:
cmp dword ptr [ebp-36], 40
jne .L_013B
.L_013C:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _HCALLCTORLIST@12
mov dword ptr [ebp-16], eax
jmp .L_0123
.L_013B:
cmp dword ptr [ebp-36], 41
jne .L_013D
.L_013E:
inc dword ptr [ebp-32]
jmp .L_0123
.L_013D:
cmp dword ptr [ebp-36], 42
jne .L_013F
.L_0140:
dec dword ptr [ebp-32]
.L_013F:
.L_0141:
.L_0123:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-12], ecx
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ecx
jmp .L_0121
.L_0122:
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELTREE@4
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.L_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
__Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0145:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
mov dword ptr [ebp-4], eax
.L_0146:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTLOADSTATICINITIALIZER@8
_ASTLOADSTATICINITIALIZER@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0169:
push dword ptr [ebp+12]
call dword ptr [_IR+172]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_016B:
cmp dword ptr [ebp-4], 0
je .L_016C
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_016E
.L_0170:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
call dword ptr [_IR+200]
jmp .L_016D
.L_0171:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call dword ptr [_IR+204]
jmp .L_016D
.L_0172:
call dword ptr [_IR+208]
jmp .L_016D
.L_0173:
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HFLUSHEXPRSTATIC@8
jmp .L_016D
.L_016E:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967259
cmp ebx, 5
ja .L_0173
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_0174+ebx*4-148]
_.L_0174:
.int .L_0170
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0171
.int .L_0172
.L_016D:
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_016B
.L_016C:
push dword ptr [ebp+12]
call dword ptr [_IR+176]
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_016A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIISCONST@4
_ASTTYPEINIISCONST@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
.L_0196:
cmp dword ptr [ebp-8], 0
je .L_0197
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 38
jne .L_019A
.L_019B:
push dword ptr [ebp-8]
call _HEXPRISCONST@4
test eax, eax
jne .L_019D
mov dword ptr [ebp-4], 0
jmp .L_0195
.L_019D:
.L_019C:
jmp .L_0198
.L_019A:
cmp dword ptr [ebp-12], 39
je .L_019F
.L_01A0:
cmp dword ptr [ebp-12], 40
jne .L_019E
.L_019F:
mov dword ptr [ebp-4], 0
jmp .L_0195
.L_019E:
.L_0198:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .L_0196
.L_0197:
mov dword ptr [ebp-4], -1
.L_0195:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIUSESLOCALS@8
_ASTTYPEINIUSESLOCALS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01A1:
cmp dword ptr [ebp+8], 0
jne .L_01A4
mov dword ptr [ebp-4], 0
jmp .L_01A2
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_01A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [ecx+4]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A8
mov dword ptr [ebp-4], -1
jmp .L_01A2
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A5:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTTYPEINIUSESLOCALS@8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
mov ebx, eax
call _ASTTYPEINIUSESLOCALS@8
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_01A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIUPDATE@4
_ASTTYPEINIUPDATE@4:
push ebp
mov ebp, esp
sub esp, 88
mov dword ptr [ebp-4], 0
.L_01B3:
cmp dword ptr [_AST+140], 0
jg .L_01B6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01B4
.L_01B6:
.L_01B5:
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], -2147483648
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
lea eax, [ebp-88]
push eax
push dword ptr [ebp+8]
call _HWALK@8
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.L_01B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINICLONE@4
_ASTTYPEINICLONE@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01B7:
push dword ptr [ebp+8]
call _ASTCLONETREE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
je .L_01BA
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTTEMPSCOPECLONE@8
.L_01BA:
.L_01B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01B8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINITRYREMOVE@4
_ASTTYPEINITRYREMOVE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_01BB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx+68], 0
je .L_01BE
jmp .L_01BC
.L_01BE:
.L_01BD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 38
je .L_01C0
jmp .L_01BC
.L_01C0:
.L_01BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp ebx, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+64]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [esi+8]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01C2
jmp .L_01BC
.L_01C2:
.L_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
dec dword ptr [_AST+140]
.L_01BC:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIDELETE@4
_ASTTYPEINIDELETE@4:
push ebp
mov ebp, esp
.L_01C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
je .L_01C8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTTEMPSCOPEDELETE@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+40], 0
.L_01C8:
.L_01C7:
push dword ptr [ebp+8]
call _ASTDELTREE@4
.L_01C6:
mov esp, ebp
pop ebp
ret 4
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
.balign 16
_HASTTYPEINIMAYBECONVERTUPCAST@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-8], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_0072
mov dword ptr [ebp-16], 24
jmp .L_01C9
.L_0072:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-16], ecx
.L_01C9:
cmp dword ptr [ebp-16], 20
jne .L_0075
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_0076
mov dword ptr [ebp-20], 24
jmp .L_01CA
.L_0076:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_01CA:
cmp dword ptr [ebp-20], 20
jne .L_0079
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ecx+8], ebx
je .L_007B
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .L_007D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+32], eax
mov dword ptr [ecx+36], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+64]
mov esi, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ecx+24], esi
mov dword ptr [ecx+28], ebx
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+64]
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ebp-8]
mov dword ptr [ebx+32], ecx
mov dword ptr [ebx+36], esi
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+64]
mov esi, dword ptr [ecx+8]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+64]
mov esi, dword ptr [ebx]
mov dword ptr [ebp-24], esi
cmp dword ptr [ebp-24], 36
jne .L_0080
.L_0081:
jmp .L_007E
.L_0080:
cmp dword ptr [ebp-24], 38
jne .L_0082
.L_0083:
jmp .L_007E
.L_0082:
cmp dword ptr [ebp-24], 41
jne .L_0084
.L_0085:
.L_0084:
.L_0086:
.L_007E:
.L_007D:
.L_007C:
.L_007B:
.L_007A:
.L_0079:
.L_0078:
.L_0075:
.L_0074:
.L_0071:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HADDNODE@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0097:
mov eax, dword ptr [ebp+20]
cmp eax, -2147483648
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_009A
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+24], ebx
.L_009A:
.L_0099:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_009C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
jmp .L_009B
.L_009C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+64], ebx
.L_009B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HASTINITREEISCONSTANT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A7:
cmp dword ptr [ebp+8], 0
jne .L_00AA
mov dword ptr [ebp-4], -1
jmp .L_00A8
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 36
jne .L_00AD
.L_00AE:
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-8], 37
jne .L_00AF
.L_00B0:
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-8], 38
jne .L_00B1
.L_00B2:
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-8], 39
jne .L_00B3
.L_00B4:
mov dword ptr [ebp-4], 0
jmp .L_00A8
jmp .L_00AB
.L_00B3:
cmp dword ptr [ebp-8], 40
jne .L_00B5
.L_00B6:
mov dword ptr [ebp-4], 0
jmp .L_00A8
jmp .L_00AB
.L_00B5:
cmp dword ptr [ebp-8], 41
jne .L_00B7
.L_00B8:
jmp .L_00AB
.L_00B7:
cmp dword ptr [ebp-8], 42
jne .L_00B9
.L_00BA:
jmp .L_00AB
.L_00B9:
cmp dword ptr [ebp-8], 9
jne .L_00BB
.L_00BC:
mov dword ptr [ebp-4], 0
jmp .L_00A8
jmp .L_00AB
.L_00BB:
cmp dword ptr [ebp-8], 10
jne .L_00BD
.L_00BE:
mov dword ptr [ebp-4], 0
jmp .L_00A8
jmp .L_00AB
.L_00BD:
cmp dword ptr [ebp-8], 17
jne .L_00BF
.L_00C0:
mov dword ptr [ebp-4], -1
jmp .L_00A8
jmp .L_00AB
.L_00BF:
cmp dword ptr [ebp-8], 16
jne .L_00C1
.L_00C2:
mov dword ptr [ebp-4], -1
jmp .L_00A8
jmp .L_00AB
.L_00C1:
mov dword ptr [ebp-4], 0
jmp .L_00A8
.L_00C3:
.L_00AB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_00C5
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _HASTINITREEISCONSTANT@4
test eax, eax
jne .L_00C7
mov dword ptr [ebp-4], 0
jmp .L_00A8
.L_00C7:
.L_00C6:
.L_00C5:
.L_00C4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_00C9
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HASTINITREEISCONSTANT@4
test eax, eax
jne .L_00CB
mov dword ptr [ebp-4], 0
jmp .L_00A8
.L_00CB:
.L_00CA:
.L_00C9:
.L_00C8:
mov dword ptr [ebp-4], -1
.L_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASTTYPEINITREEMERGEUPCAST@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.L_00CC:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov esi, dword ptr [ecx+32]
mov eax, dword ptr [ecx+36]
add esi, dword ptr [ebx+24]
adc eax, dword ptr [ebx+28]
mov ecx, dword ptr [ebp-4]
mov ebx, ecx
sar ebx, 31
cmp eax, ebx
jl .L_00CF
jg .L_01CD
cmp esi, ecx
jbe .L_00CF
.L_01CD:
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx]
call _HASTINITREEISCONSTANT@4
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBGETCOMPDTOR1@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-8]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_00D1
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+28]
and ecx, 511
push ecx
call _ASTNEWCONV@20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00D3
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-16]
mov dword ptr [eax+64], ecx
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, ebx
sar eax, 31
add dword ptr [ecx+24], ebx
adc dword ptr [ecx+28], eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, ecx
sar eax, 31
add dword ptr [ebx+32], ecx
adc dword ptr [ebx+36], eax
jmp .L_00CE
.L_00CF:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov esi, dword ptr [ebx+32]
mov eax, dword ptr [ebx+36]
add dword ptr [ecx+24], esi
adc dword ptr [ecx+28], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov ebx, dword ptr [ecx+32]
mov eax, dword ptr [ecx+36]
add dword ptr [esi+32], ebx
adc dword ptr [esi+36], eax
.L_00CE:
.L_00CD:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCALLCTORLIST@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0102:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+16]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+36], 0
jl .L_0105
jg .L_01D2
cmp dword ptr [eax+32], 1
jbe .L_0105
.L_01D2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push 8
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-20], eax
push 0
push 64
push dword ptr [ebp-8]
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push -1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTBUILDFORBEGIN@20
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF@4
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 1
push dword ptr [ebp-20]
call _ASTBUILDVARINC@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+36]
push dword ptr [eax+32]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTBUILDFOREND@16
mov dword ptr [ebp+8], eax
jmp .L_0104
.L_0105:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.L_0104:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HASTCHECKTYPEINIASSIGNMENT@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0106:
cmp dword ptr [ebp+16], 0
jl .L_0109
jg .L_01D3
cmp dword ptr [ebp+12], 0
jbe .L_0109
.L_01D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 37
jne .L_010C
.L_010D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
mov ecx, dword ptr [eax+36]
add esi, dword ptr [ebx+24]
adc ecx, dword ptr [ebx+28]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ecx, ebx
jl .L_010F
jg .L_01D4
cmp esi, eax
jbe .L_010F
.L_01D4:
mov dword ptr [ebp-4], 0
jmp .L_0107
.L_010F:
.L_010E:
jmp .L_010A
.L_010C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov esi, dword ptr [ebx+36]
add ecx, dword ptr [eax+24]
adc esi, dword ptr [eax+28]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp esi, eax
jl .L_0112
jg .L_01D5
cmp ecx, ebx
jbe .L_0112
.L_01D5:
mov ebx, dword ptr [_ENV+200]
and ebx, 1024
test ebx, ebx
je .L_0114
push 0
push 1
push 0
push 49
call _ERRREPORTWARN@16
.L_0114:
.L_0113:
mov dword ptr [ebp-4], 0
jmp .L_0107
.L_0112:
.L_0111:
.L_0110:
.L_010A:
.L_0109:
.L_0108:
mov dword ptr [ebp-4], -1
.L_0107:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HFLUSHEXPRSTATIC@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_0147:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_014A
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_014A:
.L_0149:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_014C
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_014C:
.L_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 4
je .L_014F
.L_0150:
cmp dword ptr [ebp-20], 7
jne .L_014E
.L_014F:
push dword ptr [ebp-16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-24], eax
.L_014E:
.L_014D:
cmp dword ptr [ebp-24], 0
jne .L_0152
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 23
jne .L_0154
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+12]
push dword ptr [ebp-4]
call dword ptr [_IR+188]
jmp .L_0153
.L_0154:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-28], ebx
.L_0155:
cmp dword ptr [ebp-28], 0
je .L_0156
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 23
jne .L_0158
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+12]
push dword ptr [ebp-4]
call dword ptr [_IR+188]
mov dword ptr [ebp-16], 0
jmp .L_0156
.L_0158:
.L_0157:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-28], eax
jmp .L_0155
.L_0156:
cmp dword ptr [ebp-16], 0
je .L_015A
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-20], eax
je .L_015C
push 0
push 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
push dword ptr [ebp-12]
call _ASTNEWCONV@20
mov dword ptr [ebp-16], eax
.L_015C:
.L_015B:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_015D
mov dword ptr [ebp-28], 24
jmp .L_01D6
.L_015D:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01D6:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0160
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp-4]
call dword ptr [_IR+184]
jmp .L_015F
.L_0160:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp-4]
call dword ptr [_IR+180]
.L_015F:
.L_015A:
.L_0159:
.L_0153:
jmp .L_0151
.L_0152:
cmp dword ptr [ebp-8], 7
je .L_0162
cmp dword ptr [ebp-20], 7
je .L_0164
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
push ebx
push ecx
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
add eax, 4294967295
adc ebx, 4294967295
push ebx
push eax
call dword ptr [_IR+192]
jmp .L_0163
.L_0164:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _fb_WstrToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add ebx, 4294967295
adc edx, 4294967295
push edx
push ebx
call dword ptr [_IR+192]
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete@4
.L_0163:
jmp .L_0161
.L_0162:
cmp dword ptr [ebp-20], 7
je .L_0167
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _fb_StrToWstr@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [_IR+196]
push dword ptr [ebp-28]
call _fb_WstrDelete@4
jmp .L_0166
.L_0167:
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [_IR+196]
.L_0166:
.L_0161:
.L_0151:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.L_0148:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEXPRISCONST@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0175:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0178
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .L_0179
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_01D7
.L_0179:
mov dword ptr [ebp-16], 0
.L_01D7:
cmp dword ptr [ebp-16], 0
je .L_017C
push 0
push -1
push 24
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_0176
.L_017C:
.L_017B:
.L_0178:
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 23
je .L_0180
.L_0181:
cmp dword ptr [ebp-16], 16
jne .L_017F
.L_0180:
mov dword ptr [ebp-4], -1
jmp .L_0176
jmp .L_017D
.L_017F:
cmp dword ptr [ebp-16], 5
jne .L_0182
.L_0183:
.L_0184:
cmp dword ptr [ebp-12], 0
je .L_0185
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 5
jne .L_0188
.L_0189:
jmp .L_0186
.L_0188:
cmp dword ptr [ebp-20], 23
jne .L_018A
.L_018B:
mov dword ptr [ebp-4], -1
jmp .L_0176
jmp .L_0186
.L_018A:
jmp .L_0185
.L_018C:
.L_0186:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
jmp .L_0184
.L_0185:
mov dword ptr [ebp-4], 0
jmp .L_0176
.L_0182:
.L_017D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 4
je .L_0190
.L_0191:
cmp dword ptr [ebp-16], 7
jne .L_018F
.L_0190:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
je .L_0193
mov dword ptr [ebp-4], -1
jmp .L_0176
.L_0193:
.L_0192:
.L_018F:
.L_018D:
mov dword ptr [ebp-4], 0
.L_0176:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWALK@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_01AB:
cmp dword ptr [ebp+8], 0
jne .L_01AE
mov dword ptr [ebp-4], 0
jmp .L_01AC
.L_01AE:
.L_01AD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 36
jne .L_01B0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDTORLISTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+64], ebx
jne .L_01B2
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
jmp .L_01B1
.L_01B2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
.L_01B1:
push 64
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp-4], eax
jmp .L_01AC
.L_01B0:
.L_01AF:
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HWALK@8
push eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HWALK@8
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.L_01AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
