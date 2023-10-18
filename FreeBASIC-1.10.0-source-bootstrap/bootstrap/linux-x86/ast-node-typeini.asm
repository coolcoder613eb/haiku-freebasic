	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTTYPEINIBEGIN
ASTTYPEINIBEGIN:
.type ASTTYPEINIBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 0
mov dword ptr [ecx+32], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
jne .L_0069
mov ecx, dword ptr [PARSER+112]
cmp dword ptr [ecx], 15
jne .L_006B
mov ecx, dword ptr [PARSER+112]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 36
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
jmp .L_006A
.L_006B:
mov dword ptr [ebp-12], -1
.L_006A:
.L_0069:
.L_0068:
cmp dword ptr [ebp-12], 0
je .L_006D
sub esp, 8
push dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
lea ebx, [ecx+40]
push ebx
call ASTTEMPSCOPEBEGIN
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+36], eax
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
.L_006C:
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIBEGIN, .-ASTTYPEINIBEGIN
.cfi_endproc
.balign 16

.globl ASTTYPEINIEND
ASTTYPEINIEND:
.type ASTTYPEINIEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0086:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
cmp dword ptr [ebp+12], 0
jne .L_0089
inc dword ptr [AST+140]
.L_0089:
.L_0088:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_008A:
cmp dword ptr [ebp-4], 0
je .L_008B
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 38
jne .L_008D
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 36
jne .L_008F
dec dword ptr [AST+140]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+28]
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], ebx
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call HASTTYPEINIMAYBECONVERTUPCAST
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
cmp dword ptr [ebp-8], 0
je .L_0091
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+60], ebx
jmp .L_0090
.L_0091:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+56], eax
.L_0090:
.L_0092:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+60], 0
je .L_0093
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [eax+20], ecx
adc dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp-28]
add dword ptr [ecx+28], eax
adc dword ptr [ecx+32], ebx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .L_0092
.L_0093:
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebp-28]
add dword ptr [ecx+28], ebx
adc dword ptr [ecx+32], eax
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+60], eax
.L_008F:
.L_008E:
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .L_008A
.L_008B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+36], 0
je .L_0095
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
call ASTTEMPSCOPEEND
add esp, 16
.L_0095:
.L_0094:
.L_0087:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIEND, .-ASTTYPEINIEND
.cfi_endproc
.balign 16

.globl ASTTYPEINIREMOVELASTNODE
ASTTYPEINIREMOVELASTNODE:
.type ASTTYPEINIREMOVELASTNODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_009C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.L_009E:
cmp dword ptr [ebp-8], 0
je .L_009F
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+60], 0
jne .L_00A1
cmp dword ptr [ebp-4], 0
je .L_00A3
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+60], 0
jmp .L_00A2
.L_00A3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
.L_00A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+60], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
jmp .L_009F
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .L_009E
.L_009F:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIREMOVELASTNODE, .-ASTTYPEINIREMOVELASTNODE
.cfi_endproc
.balign 16

.globl ASTTYPEINIADDPAD
ASTTYPEINIADDPAD:
.type ASTTYPEINIADDPAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00A4:
sub esp, 12
push 0
push -2147483648
push 0
push 37
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ecx
mov dword ptr [eax+32], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
mov ebx, dword ptr [eax+32]
add dword ptr [esi+28], ecx
adc dword ptr [esi+32], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_00A5:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIADDPAD, .-ASTTYPEINIADDPAD
.cfi_endproc
.balign 16

.globl ASTTYPEINIADDASSIGN
ASTTYPEINIADDASSIGN:
.type ASTTYPEINIADDASSIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00D3:
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 38
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], ecx
mov esi, dword ptr [ebp-8]
mov dword ptr [esi+28], 0
mov dword ptr [esi+32], 0
mov esi, dword ptr [ebp+12]
cmp dword ptr [esi], 36
jne .L_00D6
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+28], 0
je .L_00D8
mov esi, dword ptr [ebp+20]
and esi, 480
je .L_00D9
mov dword ptr [ebp-16], 24
jmp .L_00EB
.L_00D9:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-16], esi
.L_00EB:
cmp dword ptr [ebp-16], 20
jne .L_00DC
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+4]
and ecx, 511
and ecx, 480
je .L_00DD
mov dword ptr [ebp-20], 24
jmp .L_00EC
.L_00DD:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+4]
and esi, 511
and esi, 31
mov dword ptr [ebp-20], esi
.L_00EC:
cmp dword ptr [ebp-20], 20
jne .L_00E0
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+8]
cmp dword ptr [ebp+24], ecx
je .L_00E2
sub esp, 8
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jle .L_00E4
mov dword ptr [ebp-12], -1
.L_00E4:
.L_00E3:
.L_00E2:
.L_00E1:
.L_00E0:
.L_00DF:
.L_00DC:
.L_00DB:
.L_00D8:
.L_00D7:
cmp dword ptr [ebp-12], 0
je .L_00E6
push dword ptr [ebp+16]
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HASTTYPEINITREEMERGEUPCAST
add esp, 16
jmp .L_00E5
.L_00E6:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+28]
mov esi, dword ptr [ecx+32]
add dword ptr [eax+20], ebx
adc dword ptr [eax+24], esi
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [esi+28]
mov eax, dword ptr [esi+32]
add dword ptr [ebx+28], ecx
adc dword ptr [ebx+32], eax
.L_00E5:
jmp .L_00D5
.L_00D6:
cmp dword ptr [ebp+16], 0
je .L_00E8
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_00EA
mov ecx, dword ptr [ENV+296]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], ecx
mov dword ptr [ebx+32], eax
jmp .L_00E9
.L_00EA:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [eax+28], esi
mov dword ptr [eax+32], ebx
.L_00E9:
.L_00E8:
.L_00E7:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
mov eax, dword ptr [ebx+32]
add dword ptr [esi+20], ecx
adc dword ptr [esi+24], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
mov esi, dword ptr [eax+32]
add dword ptr [ecx+28], ebx
adc dword ptr [ecx+32], esi
.L_00D5:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00D4:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIADDASSIGN, .-ASTTYPEINIADDASSIGN
.cfi_endproc
.balign 16

.globl ASTTYPEINIADDCTORCALL
ASTTYPEINIADDCTORCALL:
.type ASTTYPEINIADDCTORCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00ED:
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push 39
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ecx
mov esi, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [esi+40]
mov eax, dword ptr [esi+44]
mov dword ptr [ecx+28], ebx
mov dword ptr [ecx+32], eax
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ebx+28]
mov ecx, dword ptr [ebx+32]
add dword ptr [eax+20], esi
adc dword ptr [eax+24], ecx
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+28]
mov eax, dword ptr [ecx+32]
add dword ptr [esi+28], ebx
adc dword ptr [esi+32], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00EE:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIADDCTORCALL, .-ASTTYPEINIADDCTORCALL
.cfi_endproc
.balign 16

.globl ASTTYPEINIADDCTORLIST
ASTTYPEINIADDCTORLIST:
.type ASTTYPEINIADDCTORLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00EF:
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push 40
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ecx
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+28], eax
mov dword ptr [esi+32], ecx
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
add dword ptr [eax+20], ebx
adc dword ptr [eax+24], esi
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
add dword ptr [ebx+28], ecx
adc dword ptr [ebx+32], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_00F0:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIADDCTORLIST, .-ASTTYPEINIADDCTORLIST
.cfi_endproc
.balign 16

.globl ASTTYPEINISCOPEBEGIN
ASTTYPEINISCOPEBEGIN:
.type ASTTYPEINISCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F1:
sub esp, 12
push 0
push -2147483648
push 0
push 41
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINISCOPEBEGIN, .-ASTTYPEINISCOPEBEGIN
.cfi_endproc
.balign 16

.globl ASTTYPEINISCOPEEND
ASTTYPEINISCOPEEND:
.type ASTTYPEINISCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F3:
sub esp, 12
push 0
push -2147483648
push 0
push 42
push dword ptr [ebp+8]
call HADDNODE
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], 0
mov dword ptr [ebx+32], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINISCOPEEND, .-ASTTYPEINISCOPEEND
.cfi_endproc
.balign 16

.globl ASTTYPEINICOPYELEMENTS
ASTTYPEINICOPYELEMENTS:
.type ASTTYPEINICOPYELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00F5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+12], eax
mov dword ptr [ebp-4], 0
.L_00F7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 38
jne .L_00F8
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-4], eax
jl .L_00FA
sub esp, 8
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTCLONETREE
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTTYPEINIADDASSIGN
add esp, 32
.L_00FA:
.L_00F9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp+12], ebx
inc dword ptr [ebp-4]
jmp .L_00F7
.L_00F8:
.L_00F6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINICOPYELEMENTS, .-ASTTYPEINICOPYELEMENTS
.cfi_endproc
.balign 16

.globl ASTTYPEINIREPLACEELEMENT
ASTTYPEINIREPLACEELEMENT:
.type ASTTYPEINIREPLACEELEMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-4], 0
.L_00FD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 38
jne .L_00FE
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
jne .L_0100
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
jmp .L_00FC
.L_0100:
.L_00FF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+8], eax
inc dword ptr [ebp-4]
jmp .L_00FD
.L_00FE:
.L_00FC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIREPLACEELEMENT, .-ASTTYPEINIREPLACEELEMENT
.cfi_endproc
.balign 16

.globl _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
_Z15ASTTYPEINIFLUSHP7ASTNODES0_ll:
.type _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0114:
mov dword ptr [ebp-32], 0
cmp dword ptr [ebp+16], 0
je .L_0117
dec dword ptr [AST+140]
.L_0117:
.L_0116:
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
je .L_0119
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+12]
call SYMBGETREALSIZE
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
.L_0119:
.L_0118:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+56]
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
je .L_011B
mov edx, dword ptr [ebp-8]
cmp dword ptr [edx+60], 0
je .L_011D
sub esp, 12
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_011F
sub esp, 12
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 16
mov dword ptr [ebp-16], eax
.L_011F:
.L_011E:
.L_011D:
.L_011C:
.L_011B:
.L_011A:
.L_0120:
cmp dword ptr [ebp-8], 0
je .L_0121
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax]
mov dword ptr [ebp-36], edx
cmp dword ptr [ebp-36], 38
jne .L_0124
.L_0125:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call HASTCHECKTYPEINIASSIGNMENT
add esp, 16
test eax, eax
je .L_0127
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
je .L_0129
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
cmp dword ptr [edx], 12
jne .L_012B
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
cmp dword ptr [eax+112], 0
jle .L_012D
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
cmp dword ptr [edx+108], 0
jne .L_012F
sub esp, 8
push 0
mov edx, dword ptr [ebp-8]
push dword ptr [edx+8]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+4]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+24]
push dword ptr [edx+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
mov eax, dword ptr [edx+28]
and eax, 480
je .L_0130
mov dword ptr [ebp-40], 24
jmp .L_0141
.L_0130:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+12]
mov eax, dword ptr [edx+28]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0141:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov edx, ecx
sar edx, 31
push edx
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-20]
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_012F:
.L_012E:
.L_012D:
.L_012C:
.L_012B:
.L_012A:
.L_0129:
.L_0128:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 4
mov eax, dword ptr [ebp+20]
or eax, 16
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_0127:
.L_0126:
jmp .L_0122
.L_0124:
cmp dword ptr [ebp-36], 37
jne .L_0132
.L_0133:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call HASTCHECKTYPEINIASSIGNMENT
add esp, 16
test eax, eax
je .L_0135
sub esp, 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [eax+28]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-20]
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_0135:
.L_0134:
jmp .L_0122
.L_0132:
cmp dword ptr [ebp-36], 39
jne .L_0136
.L_0137:
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
call HASTCHECKTYPEINIASSIGNMENT
add esp, 16
test eax, eax
je .L_0139
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 8
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTPATCHCTORCALL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_0139:
.L_0138:
jmp .L_0122
.L_0136:
cmp dword ptr [ebp-36], 40
jne .L_013A
.L_013B:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HCALLCTORLIST
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_0122
.L_013A:
cmp dword ptr [ebp-36], 41
jne .L_013C
.L_013D:
inc dword ptr [ebp-32]
jmp .L_0122
.L_013C:
cmp dword ptr [ebp-36], 42
jne .L_013E
.L_013F:
dec dword ptr [ebp-32]
.L_013E:
.L_0140:
.L_0122:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-12], ecx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ecx
jmp .L_0120
.L_0121:
sub esp, 12
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.L_0115:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll, .-_Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
.cfi_endproc
.balign 16

.globl _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
_Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll:
.type _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0144:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
.L_0145:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll, .-_Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
.cfi_endproc
.balign 16

.globl ASTLOADSTATICINITIALIZER
ASTLOADSTATICINITIALIZER:
.type ASTLOADSTATICINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0168:
sub esp, 12
push dword ptr [ebp+12]
call dword ptr [IR+172]
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_016A:
cmp dword ptr [ebp-4], 0
je .L_016B
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_016D
.L_016F:
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
push dword ptr [ebx+28]
call dword ptr [IR+200]
add esp, 16
jmp .L_016C
.L_0170:
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call dword ptr [IR+204]
add esp, 16
jmp .L_016C
.L_0171:
call dword ptr [IR+208]
jmp .L_016C
.L_0172:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HFLUSHEXPRSTATIC
add esp, 16
jmp .L_016C
.L_016D:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967259
cmp ebx, 5
ja .L_0172
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_0173+ebx*4-148]
.L_0173:
.int .L_016F
.int .L_0172
.int .L_0172
.int .L_0172
.int .L_0170
.int .L_0171
.L_016C:
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_016A
.L_016B:
sub esp, 12
push dword ptr [ebp+12]
call dword ptr [IR+176]
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.L_0169:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADSTATICINITIALIZER, .-ASTLOADSTATICINITIALIZER
.cfi_endproc
.balign 16

.globl ASTTYPEINIISCONST
ASTTYPEINIISCONST:
.type ASTTYPEINIISCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.L_0195:
cmp dword ptr [ebp-8], 0
je .L_0196
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 38
jne .L_0199
.L_019A:
sub esp, 12
push dword ptr [ebp-8]
call HEXPRISCONST
add esp, 16
test eax, eax
jne .L_019C
mov dword ptr [ebp-4], 0
jmp .L_0194
.L_019C:
.L_019B:
jmp .L_0197
.L_0199:
cmp dword ptr [ebp-12], 39
je .L_019E
.L_019F:
cmp dword ptr [ebp-12], 40
jne .L_019D
.L_019E:
mov dword ptr [ebp-4], 0
jmp .L_0194
.L_019D:
.L_0197:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .L_0195
.L_0196:
mov dword ptr [ebp-4], -1
.L_0194:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIISCONST, .-ASTTYPEINIISCONST
.cfi_endproc
.balign 16

.globl ASTTYPEINIUSESLOCALS
ASTTYPEINIUSESLOCALS:
.type ASTTYPEINIUSESLOCALS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01A0:
cmp dword ptr [ebp+8], 0
jne .L_01A3
mov dword ptr [ebp-4], 0
jmp .L_01A1
.L_01A3:
.L_01A2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_01A5
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
je .L_01A7
mov dword ptr [ebp-4], -1
jmp .L_01A1
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A4:
sub esp, 8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTTYPEINIUSESLOCALS
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
mov ebx, eax
call ASTTYPEINIUSESLOCALS
add esp, 16
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_01A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIUSESLOCALS, .-ASTTYPEINIUSESLOCALS
.cfi_endproc
.balign 16

.globl ASTTYPEINIUPDATE
ASTTYPEINIUPDATE:
.type ASTTYPEINIUPDATE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 88
mov dword ptr [ebp-4], 0
.L_01B2:
cmp dword ptr [AST+140], 0
jg .L_01B5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01B3
.L_01B5:
.L_01B4:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], -2147483648
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
sub esp, 8
lea eax, [ebp-80]
push eax
push dword ptr [ebp+8]
call HWALK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 2
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.L_01B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIUPDATE, .-ASTTYPEINIUPDATE
.cfi_endproc
.balign 16

.globl ASTTYPEINICLONE
ASTTYPEINICLONE:
.type ASTTYPEINICLONE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01B6:
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+36], 0
je .L_01B9
sub esp, 8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
call ASTTEMPSCOPECLONE
add esp, 16
.L_01B9:
.L_01B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01B7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINICLONE, .-ASTTYPEINICLONE
.cfi_endproc
.balign 16

.globl ASTTYPEINITRYREMOVE
ASTTYPEINITRYREMOVE:
.type ASTTYPEINITRYREMOVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_01BA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx+60], 0
je .L_01BD
jmp .L_01BB
.L_01BD:
.L_01BC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 38
je .L_01BF
jmp .L_01BB
.L_01BF:
.L_01BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp ebx, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+56]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [esi+8]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_01C1
jmp .L_01BB
.L_01C1:
.L_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
dec dword ptr [AST+140]
.L_01BB:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINITRYREMOVE, .-ASTTYPEINITRYREMOVE
.cfi_endproc
.balign 16

.globl ASTTYPEINIDELETE
ASTTYPEINIDELETE:
.type ASTTYPEINIDELETE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01C4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+36], 0
je .L_01C7
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
call ASTTEMPSCOPEDELETE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+36], 0
.L_01C7:
.L_01C6:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
.L_01C5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTTYPEINIDELETE, .-ASTTYPEINIDELETE
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
.balign 16
HASTTYPEINIMAYBECONVERTUPCAST:
.type HASTTYPEINIMAYBECONVERTUPCAST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_006F:
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
je .L_0071
mov dword ptr [ebp-16], 24
jmp .L_01C8
.L_0071:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-16], ecx
.L_01C8:
cmp dword ptr [ebp-16], 20
jne .L_0074
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 511
and eax, 480
je .L_0075
mov dword ptr [ebp-20], 24
jmp .L_01C9
.L_0075:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_01C9:
cmp dword ptr [ebp-20], 20
jne .L_0078
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
cmp dword ptr [ecx+8], ebx
je .L_007A
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jle .L_007C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+28], eax
mov dword ptr [ecx+32], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ecx+20], esi
mov dword ptr [ecx+24], ebx
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+56]
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ebp-8]
mov dword ptr [ebx+28], ecx
mov dword ptr [ebx+32], esi
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+56]
mov esi, dword ptr [ecx+8]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+56]
mov esi, dword ptr [ebx]
mov dword ptr [ebp-24], esi
cmp dword ptr [ebp-24], 36
jne .L_007F
.L_0080:
jmp .L_007D
.L_007F:
cmp dword ptr [ebp-24], 38
jne .L_0081
.L_0082:
jmp .L_007D
.L_0081:
cmp dword ptr [ebp-24], 41
jne .L_0083
.L_0084:
.L_0083:
.L_0085:
.L_007D:
.L_007C:
.L_007B:
.L_007A:
.L_0079:
.L_0078:
.L_0077:
.L_0074:
.L_0073:
.L_0070:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTTYPEINIMAYBECONVERTUPCAST, .-HASTTYPEINIMAYBECONVERTUPCAST
.cfi_endproc
.balign 16
HADDNODE:
.type HADDNODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0096:
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
je .L_0099
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+24], ebx
.L_0099:
.L_0098:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_009B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
jmp .L_009A
.L_009B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
.L_009A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDNODE, .-HADDNODE
.cfi_endproc
.balign 16
HASTINITREEISCONSTANT:
.type HASTINITREEISCONSTANT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
cmp dword ptr [ebp+8], 0
jne .L_00A9
mov dword ptr [ebp-4], -1
jmp .L_00A7
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 36
jne .L_00AC
.L_00AD:
jmp .L_00AA
.L_00AC:
cmp dword ptr [ebp-8], 37
jne .L_00AE
.L_00AF:
jmp .L_00AA
.L_00AE:
cmp dword ptr [ebp-8], 38
jne .L_00B0
.L_00B1:
jmp .L_00AA
.L_00B0:
cmp dword ptr [ebp-8], 39
jne .L_00B2
.L_00B3:
mov dword ptr [ebp-4], 0
jmp .L_00A7
jmp .L_00AA
.L_00B2:
cmp dword ptr [ebp-8], 40
jne .L_00B4
.L_00B5:
mov dword ptr [ebp-4], 0
jmp .L_00A7
jmp .L_00AA
.L_00B4:
cmp dword ptr [ebp-8], 41
jne .L_00B6
.L_00B7:
jmp .L_00AA
.L_00B6:
cmp dword ptr [ebp-8], 42
jne .L_00B8
.L_00B9:
jmp .L_00AA
.L_00B8:
cmp dword ptr [ebp-8], 9
jne .L_00BA
.L_00BB:
mov dword ptr [ebp-4], 0
jmp .L_00A7
jmp .L_00AA
.L_00BA:
cmp dword ptr [ebp-8], 10
jne .L_00BC
.L_00BD:
mov dword ptr [ebp-4], 0
jmp .L_00A7
jmp .L_00AA
.L_00BC:
cmp dword ptr [ebp-8], 17
jne .L_00BE
.L_00BF:
mov dword ptr [ebp-4], -1
jmp .L_00A7
jmp .L_00AA
.L_00BE:
cmp dword ptr [ebp-8], 16
jne .L_00C0
.L_00C1:
mov dword ptr [ebp-4], -1
jmp .L_00A7
jmp .L_00AA
.L_00C0:
mov dword ptr [ebp-4], 0
jmp .L_00A7
.L_00C2:
.L_00AA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_00C4
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HASTINITREEISCONSTANT
add esp, 16
test eax, eax
jne .L_00C6
mov dword ptr [ebp-4], 0
jmp .L_00A7
.L_00C6:
.L_00C5:
.L_00C4:
.L_00C3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_00C8
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HASTINITREEISCONSTANT
add esp, 16
test eax, eax
jne .L_00CA
mov dword ptr [ebp-4], 0
jmp .L_00A7
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
mov dword ptr [ebp-4], -1
.L_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTINITREEISCONSTANT, .-HASTINITREEISCONSTANT
.cfi_endproc
.balign 16
HASTTYPEINITREEMERGEUPCAST:
.type HASTTYPEINITREEMERGEUPCAST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_00CB:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov esi, dword ptr [ecx+28]
mov eax, dword ptr [ecx+32]
add esi, dword ptr [ebx+20]
adc eax, dword ptr [ebx+24]
mov ecx, dword ptr [ebp-4]
mov ebx, ecx
sar ebx, 31
cmp eax, ebx
jl .L_00CE
jg .L_01CC
cmp esi, ecx
jbe .L_00CE
.L_01CC:
sub esp, 12
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx]
call HASTINITREEISCONSTANT
add esp, 16
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBGETCOMPDTOR1
add esp, 16
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
je .L_00D0
sub esp, 12
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
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00D2
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-16]
mov dword ptr [eax+56], ecx
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, ebx
sar eax, 31
add dword ptr [ecx+20], ebx
adc dword ptr [ecx+24], eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, ecx
sar eax, 31
add dword ptr [ebx+28], ecx
adc dword ptr [ebx+32], eax
jmp .L_00CD
.L_00CE:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov esi, dword ptr [ebx+28]
mov eax, dword ptr [ebx+32]
add dword ptr [ecx+20], esi
adc dword ptr [ecx+24], eax
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov ebx, dword ptr [ecx+28]
mov eax, dword ptr [ecx+32]
add dword ptr [esi+28], ebx
adc dword ptr [esi+32], eax
.L_00CD:
.L_00CC:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTTYPEINITREEMERGEUPCAST, .-HASTTYPEINITREEMERGEUPCAST
.cfi_endproc
.balign 16
HCALLCTORLIST:
.type HCALLCTORLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0101:
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+16]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
jl .L_0104
jg .L_01D1
cmp dword ptr [eax+28], 1
jbe .L_0104
.L_01D1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 8
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
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
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 0
sub esp, 12
push 64
sub esp, 4
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push -1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTBUILDFORBEGIN
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
push 1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [eax+28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp+8], eax
jmp .L_0103
.L_0104:
sub esp, 4
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
.L_0103:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALLCTORLIST, .-HCALLCTORLIST
.cfi_endproc
.balign 16
HASTCHECKTYPEINIASSIGNMENT:
.type HASTCHECKTYPEINIASSIGNMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0105:
cmp dword ptr [ebp+16], 0
jl .L_0108
jg .L_01D2
cmp dword ptr [ebp+12], 0
jbe .L_0108
.L_01D2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 37
jne .L_010B
.L_010C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+28]
mov ecx, dword ptr [eax+32]
add esi, dword ptr [ebx+20]
adc ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ecx, ebx
jl .L_010E
jg .L_01D3
cmp esi, eax
jbe .L_010E
.L_01D3:
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_010E:
.L_010D:
jmp .L_0109
.L_010B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
mov esi, dword ptr [ebx+32]
add ecx, dword ptr [eax+20]
adc esi, dword ptr [eax+24]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp esi, eax
jl .L_0111
jg .L_01D4
cmp ecx, ebx
jbe .L_0111
.L_01D4:
mov ebx, dword ptr [ENV+200]
and ebx, 1024
test ebx, ebx
je .L_0113
push 0
push 1
push 0
push 49
call ERRREPORTWARN
add esp, 16
.L_0113:
.L_0112:
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0111:
.L_0110:
.L_010F:
.L_0109:
.L_0108:
.L_0107:
mov dword ptr [ebp-4], -1
.L_0106:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTCHECKTYPEINIASSIGNMENT, .-HASTCHECKTYPEINIASSIGNMENT
.cfi_endproc
.balign 16
HFLUSHEXPRSTATIC:
.type HFLUSHEXPRSTATIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0146:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .L_0149
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_0149:
.L_0148:
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
je .L_014B
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
.L_014B:
.L_014A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 4
je .L_014E
.L_014F:
cmp dword ptr [ebp-20], 7
jne .L_014D
.L_014E:
sub esp, 12
push dword ptr [ebp-16]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-24], eax
.L_014D:
.L_014C:
cmp dword ptr [ebp-24], 0
jne .L_0151
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 23
jne .L_0153
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+12]
push dword ptr [ebp-4]
call dword ptr [IR+188]
add esp, 16
jmp .L_0152
.L_0153:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-28], ebx
.L_0154:
cmp dword ptr [ebp-28], 0
je .L_0155
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 23
jne .L_0157
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+12]
push dword ptr [ebp-4]
call dword ptr [IR+188]
add esp, 16
mov dword ptr [ebp-16], 0
jmp .L_0155
.L_0157:
.L_0156:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-28], eax
jmp .L_0154
.L_0155:
cmp dword ptr [ebp-16], 0
je .L_0159
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-20], eax
je .L_015B
sub esp, 12
push 0
push 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-16], eax
.L_015B:
.L_015A:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_015C
mov dword ptr [ebp-28], 24
jmp .L_01D5
.L_015C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01D5:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_015F
sub esp, 4
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call dword ptr [IR+184]
add esp, 16
jmp .L_015E
.L_015F:
sub esp, 4
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call dword ptr [IR+180]
add esp, 16
.L_015E:
.L_0159:
.L_0158:
.L_0152:
jmp .L_0150
.L_0151:
cmp dword ptr [ebp-8], 7
je .L_0161
cmp dword ptr [ebp-20], 7
je .L_0163
sub esp, 12
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
call dword ptr [IR+192]
add esp, 32
jmp .L_0162
.L_0163:
sub esp, 12
sub esp, 4
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 20
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 8
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call fb_WstrToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 28
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add ebx, 4294967295
adc edx, 4294967295
push edx
push ebx
call dword ptr [IR+192]
add esp, 32
sub esp, 12
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 16
.L_0162:
jmp .L_0160
.L_0161:
cmp dword ptr [ebp-20], 7
je .L_0166
sub esp, 12
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
sub esp, 8
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call fb_StrToWstr
add esp, 12
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
sub esp, 8
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 24
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [IR+196]
add esp, 32
sub esp, 12
push dword ptr [ebp-28]
call fb_WstrDelete
add esp, 16
jmp .L_0165
.L_0166:
sub esp, 12
sub esp, 4
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 20
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
sub esp, 8
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 24
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [IR+196]
add esp, 32
.L_0165:
.L_0160:
.L_0150:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_0147:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHEXPRSTATIC, .-HFLUSHEXPRSTATIC
.cfi_endproc
.balign 16
HEXPRISCONST:
.type HEXPRISCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0174:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0177
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .L_0178
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_01D6
.L_0178:
mov dword ptr [ebp-16], 0
.L_01D6:
cmp dword ptr [ebp-16], 0
je .L_017B
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0175
.L_017B:
.L_017A:
.L_0177:
.L_0176:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 23
je .L_017F
.L_0180:
cmp dword ptr [ebp-16], 16
jne .L_017E
.L_017F:
mov dword ptr [ebp-4], -1
jmp .L_0175
jmp .L_017C
.L_017E:
cmp dword ptr [ebp-16], 5
jne .L_0181
.L_0182:
.L_0183:
cmp dword ptr [ebp-12], 0
je .L_0184
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 5
jne .L_0187
.L_0188:
jmp .L_0185
.L_0187:
cmp dword ptr [ebp-20], 23
jne .L_0189
.L_018A:
mov dword ptr [ebp-4], -1
jmp .L_0175
jmp .L_0185
.L_0189:
jmp .L_0184
.L_018B:
.L_0185:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
jmp .L_0183
.L_0184:
mov dword ptr [ebp-4], 0
jmp .L_0175
.L_0181:
.L_017C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 4
je .L_018F
.L_0190:
cmp dword ptr [ebp-16], 7
jne .L_018E
.L_018F:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
test eax, eax
je .L_0192
mov dword ptr [ebp-4], -1
jmp .L_0175
.L_0192:
.L_0191:
.L_018E:
.L_018C:
mov dword ptr [ebp-4], 0
.L_0175:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEXPRISCONST, .-HEXPRISCONST
.cfi_endproc
.balign 16
HWALK:
.type HWALK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01AA:
cmp dword ptr [ebp+8], 0
jne .L_01AD
mov dword ptr [ebp-4], 0
jmp .L_01AB
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 36
jne .L_01AF
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDTORLISTADD
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .L_01B1
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .L_01B0
.L_01B1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
.L_01B0:
push 64
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01AB
.L_01AF:
.L_01AE:
sub esp, 4
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HWALK
add esp, 8
push eax
sub esp, 12
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HWALK
add esp, 20
push eax
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.L_01AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HWALK, .-HWALK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
