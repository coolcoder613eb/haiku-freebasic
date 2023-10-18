	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDNAMESPACE
SYMBADDNAMESPACE:
.type SYMBADDNAMESPACE, @function
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
cmp dword ptr [ebp+12], 0
jne .L_0069
cmp dword ptr [PARSER+104], 0
je .L_006B
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_006B:
.L_006A:
.L_0069:
.L_0068:
sub esp, 4
push 0
push 0
push 0
push 21
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
push 0
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006D
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_006D:
.L_006C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
sub esp, 4
push 0
push 800
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call HASHINIT
add esp, 16
jmp .L_006E
.L_006F:
sub esp, 4
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 16
.L_006E:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDNAMESPACE, .-SYMBADDNAMESPACE
.cfi_endproc
.balign 16

.globl SYMBDELNAMESPACEMEMBERS
SYMBDELNAMESPACEMEMBERS:
.type SYMBDELNAMESPACEMEMBERS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0070:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCOMPDELIMPORTLIST
add esp, 16
.L_0072:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0073
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call SYMBDELSYMBOL
add esp, 16
jmp .L_0072
.L_0073:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
je .L_0075
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
.L_0075:
.L_0074:
cmp dword ptr [ebp+12], 0
je .L_0077
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call HASHEND
add esp, 16
.L_0077:
.L_0076:
.L_0071:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELNAMESPACEMEMBERS, .-SYMBDELNAMESPACEMEMBERS
.cfi_endproc
.balign 16

.globl SYMBDELNAMESPACE
SYMBDELNAMESPACE:
.type SYMBDELNAMESPACE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0078:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_0079:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELNAMESPACE, .-SYMBDELNAMESPACE
.cfi_endproc
.balign 16

.globl SYMBNAMESPACEIMPORTEX
SYMBNAMESPACEIMPORTEX:
.type SYMBNAMESPACEIMPORTEX, @function
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
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HISONPARENTLIST
add esp, 16
test eax, eax
je .L_0099
mov dword ptr [ebp-4], 0
jmp .L_0097
.L_0099:
.L_0098:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .L_009B
sub esp, 12
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.L_009B:
.L_009A:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HISONIMPORTLIST
add esp, 16
test eax, eax
jne .L_009D
sub esp, 12
push dword ptr [ebp+12]
call HADDIMPORT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_009F
mov dword ptr [ebp-4], 0
jmp .L_0097
.L_009F:
.L_009E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBCOMPADDTOIMPORTLIST
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call SYMBCOMPADDTOEXPORTLIST
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A0:
cmp dword ptr [ebp-8], 0
je .L_00A1
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call SYMBNAMESPACEIMPORTEX
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .L_00A0
.L_00A1:
sub esp, 12
push dword ptr [ebp+8]
call HADDTOHASHTBLIST
add esp, 16
.L_009D:
.L_009C:
mov dword ptr [ebp-4], -1
.L_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBNAMESPACEIMPORTEX, .-SYMBNAMESPACEIMPORTEX
.cfi_endproc
.balign 16

.globl SYMBNAMESPACEIMPORT
SYMBNAMESPACEIMPORT:
.type SYMBNAMESPACEIMPORT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A2:
sub esp, 8
push dword ptr [SYMB+98528]
push dword ptr [ebp+8]
call SYMBNAMESPACEIMPORTEX
add esp, 16
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBNAMESPACEIMPORT, .-SYMBNAMESPACEIMPORT
.cfi_endproc
.balign 16

.globl SYMBNAMESPACEREMOVE
SYMBNAMESPACEREMOVE:
.type SYMBNAMESPACEREMOVE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_00A7
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HDELFROMHASHTBLIST
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBCOMPDELFROMEXPORTLIST
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBCOMPDELFROMIMPORTLIST
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.L_00A7:
.L_00A6:
cmp dword ptr [ebp+12], 0
jne .L_00A9
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_00A9:
.L_00A8:
.L_00A5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBNAMESPACEREMOVE, .-SYMBNAMESPACEREMOVE
.cfi_endproc
.balign 16

.globl SYMBNAMESPACEREIMPORT
SYMBNAMESPACEREIMPORT:
.type SYMBNAMESPACEREIMPORT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00AA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+20], 0
je .L_00AD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .L_00AE
.L_00AF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_00AE:
cmp dword ptr [ebp-8], 0
je .L_00B1
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 16
.L_00B1:
.L_00B0:
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.L_00B2:
cmp dword ptr [ebp-4], 0
je .L_00B3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00B4:
cmp dword ptr [ebp-8], 0
je .L_00B5
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call SYMBNAMESPACEIMPORTEX
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .L_00B4
.L_00B5:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-4], eax
jmp .L_00B2
.L_00B3:
.L_00AB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBNAMESPACEREIMPORT, .-SYMBNAMESPACEREIMPORT
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
HADDIMPORT:
.type HADDIMPORT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebp+8], eax
jne .L_007D
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
jmp .L_007C
.L_007D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.L_007C:
sub esp, 4
push 0
cmp dword ptr [ebp-16], 0
je .L_007E
mov dword ptr [ebp-20], 128
jmp .L_00B6
.L_007E:
mov dword ptr [ebp-20], 0
.L_00B6:
push dword ptr [ebp-20]
push 0
push -2147483648
push 0
push 0
push 17
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 0
push 0
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-4], eax
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDIMPORT, .-HADDIMPORT
.cfi_endproc
.balign 16
HADDTOHASHTBLIST:
.type HADDTOHASHTBLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
jne .L_0083
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 16
.L_0083:
.L_0082:
.L_0081:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDTOHASHTBLIST, .-HADDTOHASHTBLIST
.cfi_endproc
.balign 16
HDELFROMHASHTBLIST:
.type HDELFROMHASHTBLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 0
jne .L_0087
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 16
.L_0087:
.L_0086:
.L_0085:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDELFROMHASHTBLIST, .-HDELFROMHASHTBLIST
.cfi_endproc
.balign 16
HISONPARENTLIST:
.type HISONPARENTLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0088:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_008A:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_008B
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .L_008D
mov dword ptr [ebp-4], -1
jmp .L_0089
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_008A
.L_008B:
mov dword ptr [ebp-4], 0
.L_0089:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISONPARENTLIST, .-HISONPARENTLIST
.cfi_endproc
.balign 16
HISONIMPORTLIST:
.type HISONIMPORTLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_008E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+92], 0
je .L_0091
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_0092:
cmp dword ptr [ebp-8], 0
je .L_0093
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .L_0095
mov dword ptr [ebp-4], -1
jmp .L_008F
.L_0095:
.L_0094:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
jmp .L_0092
.L_0093:
.L_0091:
.L_0090:
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISONIMPORTLIST, .-HISONIMPORTLIST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
