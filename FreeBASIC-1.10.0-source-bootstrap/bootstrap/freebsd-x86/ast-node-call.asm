	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCALLINIT
ASTCALLINIT:
.L_005D:
push 6
push 12
push 32
lea eax, [AST+44]
push eax
call LISTINIT
add esp, 16
.L_005E:
ret
.balign 16

.globl ASTCALLEND
ASTCALLEND:
.L_005F:
lea eax, [AST+44]
push eax
call LISTEND
add esp, 4
.L_0060:
ret
.balign 16

.globl ASTNEWCALL
ASTNEWCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0061:
cmp dword ptr [ebp+12], 0
je .L_0064
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp+8], ebx
.L_0064:
.L_0063:
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
call ASTNEWNODE
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
je .L_0066
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
je .L_0068
push dword ptr [ebp+8]
call dword ptr [ebp-12]
add esp, 4
.L_0068:
.L_0067:
jmp .L_0065
.L_0066:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], 0
.L_0065:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+36], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_006A
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
call SYMBADDTEMPVAR
add esp, 8
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+40]
call ASTDTORLISTADD
add esp, 4
jmp .L_0069
.L_006A:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
.L_0069:
.L_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCALLCTOR
ASTNEWCALLCTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_006C:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 10
call ASTNEWNODE
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
.L_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADCALL
ASTLOADCALL:
push ebp
mov ebp, esp
sub esp, 52
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0072:
mov eax, dword ptr [Lt_00A8]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-48], 0
inc dword ptr [Lt_00A9]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+284]
and eax, 64
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0075
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.L_0076:
cmp dword ptr [ebp-8], 0
je .L_0077
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+76], 0
jne .L_0079
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
call SYMBCALCARGLEN
add esp, 12
add esi, eax
adc ebx, edx
mov eax, esi
mov dword ptr [ebp-32], eax
.L_0079:
.L_0078:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+60]
mov dword ptr [ebp-8], esi
jmp .L_0076
.L_0077:
push dword ptr [ebp-20]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_007B
mov eax, dword ptr [ENV+296]
add dword ptr [ebp-32], eax
.L_007B:
.L_007A:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [Lt_00A8]
and eax, 15
neg eax
add eax, 16
and eax, 15
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .L_007D
cmp dword ptr [AST+136], 0
je .L_007F
push dword ptr [ebp-28]
call dword ptr [IR+132]
add esp, 4
.L_007F:
.L_007E:
mov eax, dword ptr [ebp-28]
add dword ptr [Lt_00A8], eax
.L_007D:
.L_007C:
jmp .L_0074
.L_0075:
mov dword ptr [ebp-28], 0
.L_0074:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+60]
mov dword ptr [ebp-8], esi
.L_0080:
cmp dword ptr [ebp-8], 0
je .L_0081
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+56]
mov dword ptr [ebp-16], esi
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+12]
cmp dword ptr [eax+76], 0
je .L_0083
mov dword ptr [ebp-32], 0
jmp .L_0082
.L_0083:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call SYMBCALCARGLEN
add esp, 12
mov esi, eax
mov dword ptr [ebp-32], esi
mov esi, dword ptr [ebp-20]
cmp dword ptr [esi+84], 3
jne .L_0085
mov esi, dword ptr [ebp-32]
add dword ptr [ebp-24], esi
.L_0085:
.L_0084:
.L_0082:
mov esi, dword ptr [ebp-16]
cmp dword ptr [esi], 5
jne .L_0087
push 0
mov esi, dword ptr [ebp-8]
push dword ptr [esi+4]
push dword ptr [ebp-16]
call ASTUPDATECONVFD2FS
add esp, 12
.L_0087:
.L_0086:
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .L_0089
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+12]
cmp dword ptr [esi+76], 0
je .L_008B
mov esi, dword ptr [ebp-16]
push dword ptr [esi+8]
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
and eax, 511
push eax
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [ebp-48]
mov edx, dword ptr [eax+4]
mov dword ptr [esi+4], edx
jmp .L_008A
.L_008B:
mov dword ptr [ebp-48], 0
.L_008A:
push dword ptr [ebp-48]
push dword ptr [Lt_00A9]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+28]
push dword ptr [edx+24]
push dword ptr [ebp-44]
mov edx, dword ptr [ebp-8]
push dword ptr [edx+12]
call dword ptr [IR+80]
add esp, 24
.L_0089:
.L_0088:
mov edx, dword ptr [ebp-32]
add dword ptr [Lt_00A8], edx
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
jmp .L_0080
.L_0081:
push dword ptr [ebp-20]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_008D
mov eax, dword ptr [ebp-20]
mov edx, dword ptr [eax+84]
mov dword ptr [ebp-52], edx
cmp dword ptr [ebp-52], 3
je .L_0091
.L_0092:
cmp dword ptr [ebp-52], 5
je .L_0091
.L_0093:
cmp dword ptr [ebp-52], 6
jne .L_0090
.L_0091:
mov edx, dword ptr [ENV+284]
and edx, 8
test edx, edx
jne .L_0095
mov edx, dword ptr [ENV+296]
add dword ptr [ebp-24], edx
.L_0095:
.L_0094:
.L_0090:
.L_008E:
cmp dword ptr [AST+136], 0
je .L_0097
mov edx, dword ptr [ebp+8]
push dword ptr [edx+40]
call SYMBHASCTOR
add esp, 4
test eax, eax
jne .L_0099
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTBUILDTEMPVARCLEAR
add esp, 4
push eax
call ASTLOAD
add esp, 4
.L_0099:
.L_0098:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push 0
push dword ptr [Lt_00A9]
push 0
push 0
push dword ptr [ebp-44]
push 0
call dword ptr [IR+80]
add esp, 24
.L_0097:
.L_0096:
mov eax, dword ptr [ENV+296]
add dword ptr [Lt_00A8], eax
.L_008D:
.L_008C:
cmp dword ptr [AST+136], 0
je .L_009B
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 511
test edx, edx
jne .L_009D
mov dword ptr [ebp-40], 0
jmp .L_009C
.L_009D:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_009F
.L_009F:
.L_009E:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+92]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call dword ptr [IR+224]
add esp, 8
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+96], 1
je .L_00A1
mov eax, dword ptr [ebp-40]
mov dword ptr [eax+16], 0
.L_00A1:
.L_00A0:
.L_009C:
.L_009B:
.L_009A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+56]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], 0
je .L_00A3
push dword ptr [ebp-16]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 4
cmp dword ptr [AST+136], 0
je .L_00A5
push dword ptr [Lt_00A9]
push dword ptr [ebp-24]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
push dword ptr [ebp-20]
call dword ptr [IR+128]
add esp, 20
.L_00A5:
.L_00A4:
jmp .L_00A2
.L_00A3:
cmp dword ptr [AST+136], 0
je .L_00A7
push dword ptr [Lt_00A9]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call dword ptr [IR+124]
add esp, 16
.L_00A7:
.L_00A6:
.L_00A2:
mov eax, dword ptr [ebp-36]
mov dword ptr [Lt_00A8], eax
push dword ptr [ebp+8]
call HCOPYSTRINGSBACK
add esp, 4
dec dword ptr [Lt_00A9]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_00A9:
.int 0
.balign 4
Lt_00A8:
.int 0

.section .text
.balign 16

.globl ASTLOADCALLCTOR
ASTLOADCALLCTOR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AC:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCLONECALL
ASTCLONECALL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00AE:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00B0:
cmp dword ptr [ebp-4], 0
je .L_00B1
lea ebx, [AST+44]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call ASTCLONETREE
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
jmp .L_00B0
.L_00B1:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+60]
mov dword ptr [ebp+8], ecx
.L_00B2:
cmp dword ptr [ebp+8], 0
je .L_00B3
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+60], 0
jne .L_00B5
jmp .L_00B3
.L_00B5:
.L_00B4:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp+8], ebx
jmp .L_00B2
.L_00B3:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+32], ecx
.L_00AF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTDELCALL
ASTDELCALL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00B8:
cmp dword ptr [ebp-4], 0
je .L_00B9
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-4]
lea eax, [AST+44]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00B8
.L_00B9:
.L_00B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACESYMBOLONCALL
ASTREPLACESYMBOLONCALL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+40], ebx
jne .L_00BD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+40], eax
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.L_00BE:
cmp dword ptr [ebp-4], 0
je .L_00BF
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_00C1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
.L_00C1:
.L_00C0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
call ASTREPLACESYMBOLONTREE
add esp, 12
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .L_00BE
.L_00BF:
.L_00BB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDCALLRESULTVAR
ASTBUILDCALLRESULTVAR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00C2:
push 2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_00C3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDCALLRESULTUDT
ASTBUILDCALLRESULTUDT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00C4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00C7
push dword ptr [ebp+8]
call ASTBUILDCALLRESULTVAR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push 20
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 96
push dword ptr [ebp+8]
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp+8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDBYREFRESULTDEREF
ASTBUILDBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .L_00CB
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C9
.L_00CB:
.L_00CA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
jne .L_00CD
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C9
.L_00CD:
.L_00CC:
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
jne .L_00CF
push 0
push 0
push 71
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp-8]
and eax, -32
or eax, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_00CF:
.L_00CE:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISBYREFRESULTDEREF
ASTISBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00D0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
je .L_00D2
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_00D8
.L_00D2:
mov dword ptr [ebp-8], 0
.L_00D8:
cmp dword ptr [ebp-8], 0
je .L_00D5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .L_00D7
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
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREMOVEBYREFRESULTDEREF
ASTREMOVEBYREFRESULTDEREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTIGNORECALLRESULT
ASTIGNORECALLRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00EC
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_00EA
.L_00EC:
.L_00EB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .L_00EE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 64
test ebx, ebx
je .L_00F0
push dword ptr [ebp+8]
call RTLERRORCHECK
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00EA
.L_00F0:
.L_00EF:
.L_00EE:
.L_00ED:
cmp dword ptr [ebp-8], 17
je .L_00F3
.L_00F4:
cmp dword ptr [ebp-8], 7
jne .L_00F2
.L_00F3:
cmp dword ptr [ebp-8], 7
jne .L_00F6
push 0
push 39
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
.L_00F6:
.L_00F5:
push dword ptr [ebp+8]
call RTLSTRDELETE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_00EA
.L_00F2:
.L_00F1:
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDFAKECALL
ASTBUILDFAKECALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00F7:
push 0
push dword ptr [ebp+8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
.L_00F9:
cmp dword ptr [ebp-12], 0
je .L_00FA
push -1
push -2147483648
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .L_00F9
.L_00FA:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
.balign 16
HCOPYSTRINGSBACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-8], ebx
.L_0070:
cmp dword ptr [ebp-8], 0
je .L_0071
push 0
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call RTLSTRASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call ASTLOAD
add esp, 4
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-8]
lea ebx, [AST+44]
push ebx
call LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .L_0070
.L_0071:
.L_006F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
