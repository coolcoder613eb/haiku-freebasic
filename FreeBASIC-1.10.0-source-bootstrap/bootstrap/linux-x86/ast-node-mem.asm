	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWMEM
ASTNEWMEM:
.type ASTNEWMEM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
sub esp, 12
push 1
call dword ptr [IR+16]
add esp, 16
mov dword ptr [ebp-12], eax
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 107
jne .L_0060
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 16
jne .L_0062
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
jmp .L_0061
.L_0062:
mov ecx, dword ptr [ebp-12]
inc ecx
mov ebx, ecx
mov eax, 0
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.L_0061:
.L_0060:
.L_005F:
mov eax, dword ptr [ebp-12]
mov ebx, 0
cmp dword ptr [ebp-16], ebx
mov ecx, -1
ja .L_0067
jb .L_0068
cmp dword ptr [ebp-20], eax
ja .L_0067
.L_0068:
xor ecx, ecx
.L_0067:
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0064
sub esp, 12
push dword ptr [ebp+12]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+8], 105
jne .L_0066
sub esp, 12
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+16], eax
.L_0066:
.L_0065:
.L_0064:
.L_0063:
sub esp, 4
push 0
push -2147483648
push 12
call ASTNEWNODE
add esp, 16
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
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWMEM, .-ASTNEWMEM
.cfi_endproc
.balign 16

.globl ASTBUILDNEWOP
ASTBUILDNEWOP:
.type ASTBUILDNEWOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0070:
mov dword ptr [ebp-20], 5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+20], 0
je .L_0074
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPEHASCTOR
add esp, 16
test eax, eax
jne .L_0076
mov dword ptr [ebp-20], 0
jmp .L_0075
.L_0076:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 10
jne .L_0077
mov dword ptr [ebp-20], 1
.L_0077:
.L_0075:
jmp .L_0073
.L_0074:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPEHASDEFCTOR
add esp, 16
test eax, eax
je .L_0079
cmp dword ptr [ebp+8], 79
jne .L_007B
mov dword ptr [ebp-20], 3
inc dword ptr [ebp-24]
jmp .L_007A
.L_007B:
mov dword ptr [ebp-20], 2
.L_007A:
jmp .L_0078
.L_0079:
cmp dword ptr [ebp+32], 0
je .L_007C
mov dword ptr [ebp-20], 4
inc dword ptr [ebp-24]
.L_007C:
.L_0078:
.L_0073:
cmp dword ptr [ebp+8], 79
jne .L_007E
cmp dword ptr [ebp+36], 0
jne .L_0080
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPENEEDSDTORCALL
add esp, 16
mov dword ptr [ebp-16], eax
.L_0080:
.L_007F:
.L_007E:
.L_007D:
cmp dword ptr [ebp+36], 0
jne .L_0082
inc dword ptr [ebp-24]
.L_0082:
.L_0081:
cmp dword ptr [ebp-16], 0
je .L_0084
inc dword ptr [ebp-24]
.L_0084:
.L_0083:
cmp dword ptr [ebp-24], 1
jle .L_0086
sub esp, 12
push dword ptr [ebp+16]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_0088
sub esp, 12
lea eax, [ebp+16]
push eax
call ASTREMSIDEFX
add esp, 16
mov dword ptr [ebp-12], eax
.L_0088:
.L_0087:
.L_0086:
.L_0085:
cmp dword ptr [ebp+36], 0
jne .L_008A
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 28
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .L_008C
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov edx, dword ptr [SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
.L_008C:
.L_008B:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call RTLMEMNEWOP
add esp, 16
mov dword ptr [ebp+36], eax
cmp dword ptr [ebp+36], 0
jne .L_008E
mov dword ptr [ebp-4], 0
jmp .L_0071
.L_008E:
.L_008D:
.L_008A:
.L_0089:
sub esp, 4
push 0
sub esp, 12
push 64
push dword ptr [ebp+36]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 4
push 0
sub esp, 8
push -1
push 0
push dword ptr [ebp-28]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 24
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .L_0090
sub esp, 4
push 0
sub esp, 12
push 64
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
sub esp, 4
push 1
push 0
sub esp, 12
push 0
push 8
mov edx, dword ptr [SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push 32
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 24
push eax
push 1
call ASTNEWSELFBOP
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
.L_0090:
.L_008F:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
jmp .L_0092
.L_0094:
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0091
.L_0095:
sub esp, 8
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 24
push eax
push dword ptr [ebp+20]
call ASTCALLCTORTOCALL
add esp, 4
push eax
call ASTPATCHCTORCALL
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0091
.L_0096:
sub esp, 8
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 24
push eax
push dword ptr [ebp+28]
call ASTBUILDCTORCALL
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0091
.L_0097:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push dword ptr [ebp+12]
call HCALLCTORLIST
add esp, 16
mov dword ptr [ebp+20], eax
jmp .L_0091
.L_0098:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 28
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push 30
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
sub esp, 8
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
add esp, 28
push eax
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 24
push eax
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp+20], eax
jmp .L_0091
.L_0099:
mov dword ptr [ebp+20], 0
jmp .L_0091
.L_0092:
cmp dword ptr [ebp-32], 4
ja .L_0099
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_009A+eax*4]
.L_009A:
.int .L_0094
.int .L_0095
.int .L_0096
.int .L_0097
.int .L_0098
.L_0091:
sub esp, 4
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-28]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call ASTNEWLOOP
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0071:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTBUILDNEWOP, .-ASTBUILDNEWOP
.cfi_endproc
.balign 16

.globl ASTBUILDDELETEOP
ASTBUILDDELETEOP:
.type ASTBUILDDELETEOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009D:
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
sub esp, 12
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .L_00A0
sub esp, 12
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A0:
.L_009F:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
sub esp, 4
push 0
push dword ptr [ebp-12]
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 8
push eax
push 45
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call TYPENEEDSDTORCALL
add esp, 16
test eax, eax
je .L_00A2
cmp dword ptr [ebp+8], 81
jne .L_00A4
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call HCALLDTORLIST
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [SYMB_DTYPETB+228]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+12]
push 29
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+12], eax
jmp .L_00A3
.L_00A4:
sub esp, 4
push 0
sub esp, 4
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWDEREF
add esp, 20
push eax
call _Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A3:
.L_00A2:
.L_00A1:
sub esp, 4
push 0
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLMEMDELETEOP
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTBUILDDELETEOP, .-ASTBUILDDELETEOP
.cfi_endproc
.balign 16

.globl ASTLOADMEM
ASTLOADMEM:
.type ASTLOADMEM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .L_00A8
mov dword ptr [ebp-4], 0
jmp .L_00A6
.L_00A8:
.L_00A7:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
cmp dword ptr [ebp-12], 0
je .L_00AA
sub esp, 12
push dword ptr [ebp-12]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 16
jmp .L_00A9
.L_00AA:
mov dword ptr [ebp-20], 0
.L_00A9:
cmp dword ptr [AST+136], 0
je .L_00AC
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [IR+148]
add esp, 32
.L_00AC:
.L_00AB:
mov dword ptr [ebp-4], 0
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADMEM, .-ASTLOADMEM
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
HCALLCTORLIST:
.type HCALLCTORLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
sub esp, 8
push 0
push 9
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
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
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 4
push 64
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDWHILECOUNTERBEGIN
add esp, 32
mov dword ptr [ebp-24], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 8
push eax
push dword ptr [ebp+20]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push 0
push 1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDWHILECOUNTEREND
add esp, 32
mov dword ptr [ebp-24], eax
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call ASTNEWLOOP
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-16]
call ASTNEWLOOP
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.L_006B:
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
HELEMENTS:
.type HELEMENTS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jle .L_006F
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_006E
.L_006F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_006E:
mov eax, dword ptr [ebp+12]
dec dword ptr [eax]
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HELEMENTS, .-HELEMENTS
.cfi_endproc
.balign 16
HCALLDTORLIST:
.type HCALLDTORLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_009B:
sub esp, 8
push 0
push 8
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 8
push 0
push 8
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push 64
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push 8
sub esp, 8
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [SYMB_DTYPETB+256]
neg eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 8
push eax
push 28
call ASTNEWBOP
add esp, 28
push eax
push 0
push 41
call ASTNEWCONV
add esp, 20
push eax
call ASTNEWDEREF
add esp, 24
push eax
push dword ptr [ebp-24]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 4
push 0
sub esp, 12
push 64
sub esp, 4
push 7
push 0
sub esp, 8
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 28
push eax
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push -1
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDWHILECOUNTERBEGIN
add esp, 32
mov dword ptr [ebp-28], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 4
push eax
call _Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDWHILECOUNTEREND
add esp, 32
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALLDTORLIST, .-HCALLDTORLIST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
