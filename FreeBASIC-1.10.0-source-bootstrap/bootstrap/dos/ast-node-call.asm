	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCALLINIT
_ASTCALLINIT:
.L_005E:
push 6
push 12
push 32
lea eax, [_AST+44]
push eax
call _LISTINIT
add esp, 16
.L_005F:
ret
.balign 16

.globl _ASTCALLEND
_ASTCALLEND:
.L_0060:
lea eax, [_AST+44]
push eax
call _LISTEND
add esp, 4
.L_0061:
ret
.balign 16

.globl _ASTNEWCALL
_ASTNEWCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0062:
cmp dword ptr [ebp+12], 0
je .L_0065
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp+8], ebx
.L_0065:
.L_0064:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push 9
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
cmp dword ptr [ebp+8], 0
je .L_0067
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+100]
mov dword ptr [ebp-12], ecx
cmp dword ptr [ebp-12], 0
je .L_0069
push dword ptr [ebp+8]
call dword ptr [ebp-12]
add esp, 4
.L_0069:
.L_0068:
jmp .L_0066
.L_0067:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], 0
.L_0066:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+36], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_006B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
call _SYMBADDTEMPVAR
add esp, 8
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+40]
call _ASTDTORLISTADD
add esp, 4
jmp .L_006A
.L_006B:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
.L_006A:
.L_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWCALLCTOR
_ASTNEWCALLCTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 10
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADCALL
_ASTLOADCALL:
push ebp
mov ebp, esp
sub esp, 52
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0073:
mov eax, dword ptr [_Lt_00A9]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-48], 0
inc dword ptr [_Lt_00AA]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_ENV+284]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0076
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.L_0077:
cmp dword ptr [ebp-8], 0
je .L_0078
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+76], 0
jne .L_007A
mov eax, dword ptr [ebp-32]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+20]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+4]
mov esi, eax
call _SYMBCALCARGLEN
add esp, 12
add esi, eax
adc ebx, edx
mov eax, esi
mov dword ptr [ebp-32], eax
.L_007A:
.L_0079:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+60]
mov dword ptr [ebp-8], esi
jmp .L_0077
.L_0078:
push dword ptr [ebp-20]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_007C
mov eax, dword ptr [_ENV+296]
add dword ptr [ebp-32], eax
.L_007C:
.L_007B:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [_Lt_00A9]
and eax, 15
neg eax
add eax, 16
and eax, 15
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .L_007E
cmp dword ptr [_AST+136], 0
je .L_0080
push dword ptr [ebp-28]
call dword ptr [_IR+132]
add esp, 4
.L_0080:
.L_007F:
mov eax, dword ptr [ebp-28]
add dword ptr [_Lt_00A9], eax
.L_007E:
.L_007D:
jmp .L_0075
.L_0076:
mov dword ptr [ebp-28], 0
.L_0075:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+60]
mov dword ptr [ebp-8], esi
.L_0081:
cmp dword ptr [ebp-8], 0
je .L_0082
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+56]
mov dword ptr [ebp-16], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+12]
cmp dword ptr [eax+76], 0
je .L_0084
mov dword ptr [ebp-32], 0
jmp .L_0083
.L_0084:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _SYMBCALCARGLEN
add esp, 12
mov esi, eax
mov dword ptr [ebp-32], esi
mov esi, dword ptr [ebp-20]
cmp dword ptr [esi+84], 3
jne .L_0086
mov esi, dword ptr [ebp-32]
add dword ptr [ebp-24], esi
.L_0086:
.L_0085:
.L_0083:
mov esi, dword ptr [ebp-16]
cmp dword ptr [esi], 5
jne .L_0088
push 0
mov esi, dword ptr [ebp-8]
push dword ptr [esi+4]
push dword ptr [ebp-16]
call _ASTUPDATECONVFD2FS
add esp, 12
.L_0088:
.L_0087:
push dword ptr [ebp-16]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .L_008A
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+12]
cmp dword ptr [esi+76], 0
je .L_008C
mov esi, dword ptr [ebp-16]
push dword ptr [esi+8]
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
and eax, 511
push eax
call dword ptr [_IR+224]
add esp, 8
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [ebp-48]
mov edx, dword ptr [eax+4]
mov dword ptr [esi+4], edx
jmp .L_008B
.L_008C:
mov dword ptr [ebp-48], 0
.L_008B:
push dword ptr [ebp-48]
push dword ptr [_Lt_00AA]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+28]
push dword ptr [edx+24]
push dword ptr [ebp-44]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call dword ptr [_IR+80]
add esp, 24
.L_008A:
.L_0089:
mov edx, dword ptr [ebp-32]
add dword ptr [_Lt_00A9], edx
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
jmp .L_0081
.L_0082:
push dword ptr [ebp-20]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_008E
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+84]
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 3
je .L_0092
.L_0093:
cmp dword ptr [ebp-52], 5
je .L_0092
.L_0094:
cmp dword ptr [ebp-52], 6
jne .L_0091
.L_0092:
mov edx, dword ptr [_ENV+284]
and edx, 8
test edx, edx
jne .L_0096
mov edx, dword ptr [_ENV+296]
add dword ptr [ebp-24], edx
.L_0096:
.L_0095:
.L_0091:
.L_008F:
cmp dword ptr [_AST+136], 0
je .L_0098
mov edx, dword ptr [ebp+8]
push dword ptr [edx+40]
call _SYMBHASCTOR
add esp, 4
test eax, eax
jne .L_009A
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTBUILDTEMPVARCLEAR
add esp, 4
push eax
call _ASTLOAD
add esp, 4
.L_009A:
.L_0099:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push 0
push dword ptr [_Lt_00AA]
push 0
push 0
push dword ptr [ebp-44]
push 0
call dword ptr [_IR+80]
add esp, 24
.L_0098:
.L_0097:
mov eax, dword ptr [_ENV+296]
add dword ptr [_Lt_00A9], eax
.L_008E:
.L_008D:
cmp dword ptr [_AST+136], 0
je .L_009C
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
test edx, edx
jne .L_009E
mov dword ptr [ebp-40], 0
jmp .L_009D
.L_009E:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_00A0
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+92]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call dword ptr [_IR+224]
add esp, 8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+96], 1
je .L_00A2
mov eax, dword ptr [ebp-40]
mov dword ptr [eax+16], 0
.L_00A2:
.L_00A1:
.L_009D:
.L_009C:
.L_009B:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+56]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], 0
je .L_00A4
push dword ptr [ebp-16]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call _ASTDELNODE
add esp, 4
cmp dword ptr [_AST+136], 0
je .L_00A6
push dword ptr [_Lt_00AA]
push dword ptr [ebp-24]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
push dword ptr [ebp-20]
call dword ptr [_IR+128]
add esp, 20
.L_00A6:
.L_00A5:
jmp .L_00A3
.L_00A4:
cmp dword ptr [_AST+136], 0
je .L_00A8
push dword ptr [_Lt_00AA]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call dword ptr [_IR+124]
add esp, 16
.L_00A8:
.L_00A7:
.L_00A3:
mov eax, dword ptr [ebp-36]
mov dword ptr [_Lt_00A9], eax
push dword ptr [ebp+8]
call _HCOPYSTRINGSBACK
add esp, 4
dec dword ptr [_Lt_00AA]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
.L_0074:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_00AA:
.int 0
.balign 4
_Lt_00A9:
.int 0

.section .text
.balign 16

.globl _ASTLOADCALLCTOR
_ASTLOADCALLCTOR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AD:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTLOAD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTCLONECALL
_ASTCLONECALL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00AF:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00B1:
cmp dword ptr [ebp-4], 0
je .L_00B2
lea ebx, [_AST+44]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call _ASTCLONETREE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+36], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+8]
mov dword ptr [ebp-4], ebx
jmp .L_00B1
.L_00B2:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+60]
mov dword ptr [ebp+8], ecx
.L_00B3:
cmp dword ptr [ebp+8], 0
je .L_00B4
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+60], 0
jne .L_00B6
jmp .L_00B4
.L_00B6:
.L_00B5:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp+8], ebx
jmp .L_00B3
.L_00B4:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+32], ecx
.L_00B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDELCALL
_ASTDELCALL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00B9:
cmp dword ptr [ebp-4], 0
je .L_00BA
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-4]
lea eax, [_AST+44]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00B9
.L_00BA:
.L_00B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREPLACESYMBOLONCALL
_ASTREPLACESYMBOLONCALL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+40], ebx
jne .L_00BE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+40], eax
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00BF:
cmp dword ptr [ebp-4], 0
je .L_00C0
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_00C2
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
.L_00C2:
.L_00C1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
call _ASTREPLACESYMBOLONTREE
add esp, 12
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .L_00BF
.L_00C0:
.L_00BC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDCALLRESULTVAR
_ASTBUILDCALLRESULTVAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00C3:
push 2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_00C4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDCALLRESULTUDT
_ASTBUILDCALLRESULTUDT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00C5:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00C8
push dword ptr [ebp+8]
call _ASTBUILDCALLRESULTVAR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00C7
.L_00C8:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push 20
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 96
push dword ptr [ebp+8]
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_00C7:
.L_00C6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDBYREFRESULTDEREF
_ASTBUILDBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .L_00CC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00CA
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
jne .L_00CE
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00CA
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 31
cmp eax, 23
jne .L_00D0
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp-8]
and eax, -32
or eax, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_00D0:
.L_00CF:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTISBYREFRESULTDEREF
_ASTISBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00D1:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
je .L_00D3
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_00D9
.L_00D3:
mov dword ptr [ebp-8], 0
.L_00D9:
cmp dword ptr [ebp-8], 0
je .L_00D6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .L_00D8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00D8:
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREMOVEBYREFRESULTDEREF
_ASTREMOVEBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.L_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTIGNORECALLRESULT
_ASTIGNORECALLRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00ED
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_00EB
.L_00ED:
.L_00EC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .L_00EF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 64
test ebx, ebx
je .L_00F1
push dword ptr [ebp+8]
call _RTLERRORCHECK
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00EB
.L_00F1:
.L_00F0:
.L_00EF:
.L_00EE:
cmp dword ptr [ebp-8], 17
je .L_00F4
.L_00F5:
cmp dword ptr [ebp-8], 7
jne .L_00F3
.L_00F4:
cmp dword ptr [ebp-8], 7
jne .L_00F7
push 0
push 39
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
.L_00F7:
.L_00F6:
push dword ptr [ebp+8]
call _RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00EB
.L_00F3:
.L_00F2:
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDFAKECALL
_ASTBUILDFAKECALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
push 0
push dword ptr [ebp+8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
.L_00FA:
cmp dword ptr [ebp-12], 0
je .L_00FB
push -1
push -2147483648
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_00FA
.L_00FB:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00F9:
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
_HCOPYSTRINGSBACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-8], ebx
.L_0071:
cmp dword ptr [ebp-8], 0
je .L_0072
push 0
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call _ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _ASTLOAD
add esp, 4
push dword ptr [ebp-4]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-8]
lea ebx, [_AST+44]
push ebx
call _LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .L_0071
.L_0072:
.L_0070:
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
