	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWMEM
_ASTNEWMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
push 1
call dword ptr [_IR+16]
add esp, 4
mov dword ptr [ebp-12], eax
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 107
jne .L_0061
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 16
jne .L_0063
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
jmp .L_0062
.L_0063:
mov ecx, dword ptr [ebp-12]
inc ecx
mov ebx, ecx
mov eax, 0
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.L_0062:
.L_0061:
.L_0060:
mov eax, dword ptr [ebp-12]
mov ebx, 0
cmp dword ptr [ebp-16], ebx
mov ecx, -1
ja .L_0068
jb .L_0069
cmp dword ptr [ebp-20], eax
ja .L_0068
.L_0069:
xor ecx, ecx
.L_0068:
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0065
push dword ptr [ebp+12]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+8], 105
jne .L_0067
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.L_0067:
.L_0066:
.L_0065:
.L_0064:
push 0
push -2147483648
push 12
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [eax+60], ecx
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDNEWOP
_ASTBUILDNEWOP:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.L_0071:
mov dword ptr [ebp-20], 5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+20], 0
je .L_0075
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPEHASCTOR
add esp, 8
test eax, eax
jne .L_0077
mov dword ptr [ebp-20], 0
jmp .L_0076
.L_0077:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 10
jne .L_0078
mov dword ptr [ebp-20], 1
.L_0078:
.L_0076:
jmp .L_0074
.L_0075:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPEHASDEFCTOR
add esp, 8
test eax, eax
je .L_007A
cmp dword ptr [ebp+8], 79
jne .L_007C
mov dword ptr [ebp-20], 3
inc dword ptr [ebp-24]
jmp .L_007B
.L_007C:
mov dword ptr [ebp-20], 2
.L_007B:
jmp .L_0079
.L_007A:
cmp dword ptr [ebp+32], 0
je .L_007D
mov dword ptr [ebp-20], 4
inc dword ptr [ebp-24]
.L_007D:
.L_0079:
.L_0074:
cmp dword ptr [ebp+8], 79
jne .L_007F
cmp dword ptr [ebp+36], 0
jne .L_0081
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPENEEDSDTORCALL
add esp, 8
mov dword ptr [ebp-16], eax
.L_0081:
.L_0080:
.L_007F:
.L_007E:
cmp dword ptr [ebp+36], 0
jne .L_0083
inc dword ptr [ebp-24]
.L_0083:
.L_0082:
cmp dword ptr [ebp-16], 0
je .L_0085
inc dword ptr [ebp-24]
.L_0085:
.L_0084:
cmp dword ptr [ebp-24], 1
jle .L_0087
push dword ptr [ebp+16]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_0089
lea eax, [ebp+16]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-12], eax
.L_0089:
.L_0088:
.L_0087:
.L_0086:
cmp dword ptr [ebp+36], 0
jne .L_008B
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN
add esp, 8
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .L_008D
push 1
push 0
push 0
push 9
mov edx, dword ptr [_SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.L_008D:
.L_008C:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _RTLMEMNEWOP
add esp, 16
mov dword ptr [ebp+36], eax
cmp dword ptr [ebp+36], 0
jne .L_008F
mov dword ptr [ebp-4], 0
jmp .L_0072
.L_008F:
.L_008E:
.L_008B:
.L_008A:
push 0
push 64
push dword ptr [ebp+36]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-28], eax
push 0
push -1
push 0
push dword ptr [ebp-28]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
push 48
call _ASTNEWBOP
add esp, 20
push eax
call _ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .L_0091
push 0
push 64
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 0
push 0
push 0
push -2147483648
push 0
push 41
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 1
push 0
push 0
push 8
mov edx, dword ptr [_SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 32
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
push 1
call _ASTNEWSELFBOP
add esp, 20
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
.L_0091:
.L_0090:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
jmp .L_0093
.L_0095:
push 64
push 0
push dword ptr [ebp+20]
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0092
.L_0096:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+20]
call _ASTCALLCTORTOCALL
add esp, 4
push eax
call _ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .L_0092
.L_0097:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+28]
call _ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .L_0092
.L_0098:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push dword ptr [ebp+12]
call _HCALLCTORLIST
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0092
.L_0099:
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN
add esp, 8
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
push eax
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp+20], eax
jmp .L_0092
.L_009A:
mov dword ptr [ebp+20], 0
jmp .L_0092
.L_0093:
cmp dword ptr [ebp-32], 4
ja .L_009A
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_009B+eax*4]
_.L_009B:
.int .L_0095
.int .L_0096
.int .L_0097
.int .L_0098
.int .L_0099
.L_0092:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-28]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0072:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDDELETEOP
_ASTBUILDDELETEOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009E:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
and eax, 31
mov ebx, dword ptr [ebp-20]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-20]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-20]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-20], eax
push dword ptr [ebp+12]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .L_00A1
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-8], eax
.L_00A1:
.L_00A0:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
push 45
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _TYPENEEDSDTORCALL
add esp, 8
test eax, eax
je .L_00A3
cmp dword ptr [ebp+8], 81
jne .L_00A5
push 0
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _HCALLDTORLIST
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB_DTYPETB+228]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 29
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
jmp .L_00A4
.L_00A5:
push 0
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call __Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.L_00A4:
.L_00A3:
.L_00A2:
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMEMDELETEOP
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADMEM
_ASTLOADMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .L_00A9
mov dword ptr [ebp-4], 0
jmp .L_00A7
.L_00A9:
.L_00A8:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
cmp dword ptr [ebp-12], 0
je .L_00AB
push dword ptr [ebp-12]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
jmp .L_00AA
.L_00AB:
mov dword ptr [ebp-20], 0
.L_00AA:
cmp dword ptr [_AST+136], 0
je .L_00AD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [_IR+148]
add esp, 20
.L_00AD:
.L_00AC:
mov dword ptr [ebp-4], 0
.L_00A7:
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
_HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_006B:
push 0
push 9
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
push eax
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 64
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp+20]
call _ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push 1
push dword ptr [ebp-20]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-16]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jle .L_0070
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_006F
.L_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006F:
mov eax, dword ptr [ebp+12]
dec dword ptr [eax]
.L_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLDTORLIST:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_009C:
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-24], eax
push 64
push 0
push 0
push 0
push -2147483648
push 0
push 8
push 1
push 0
push 0
push 8
mov eax, dword ptr [_SYMB_DTYPETB+256]
neg eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
push eax
push 28
call _ASTNEWBOP
add esp, 20
push eax
push 0
push 41
call _ASTNEWCONV
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-24]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push 64
push 7
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-28], eax
push 0
push -1
push dword ptr [ebp-20]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF
add esp, 4
push eax
call __Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_009D:
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
