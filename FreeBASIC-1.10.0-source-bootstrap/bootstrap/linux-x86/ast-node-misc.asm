	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWLABEL
ASTNEWLABEL:
.type ASTNEWLABEL, @function
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
push 0
push -2147483648
push 21
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 7
jne .L_0069
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_006B
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [PARSER+112]
mov dword ptr [ebx+56], eax
.L_006B:
.L_006A:
.L_0069:
.L_0068:
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
.size ASTNEWLABEL, .-ASTNEWLABEL
.cfi_endproc
.balign 16

.globl ASTLOADLABEL
ASTLOADLABEL:
.type ASTLOADLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_006C:
cmp dword ptr [AST+136], 0
je .L_006F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0071
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [IR+60]
add esp, 16
jmp .L_0070
.L_0071:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [IR+64]
add esp, 16
.L_0070:
.L_006F:
.L_006E:
mov dword ptr [ebp-4], 0
.L_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADLABEL, .-ASTLOADLABEL
.cfi_endproc
.balign 16

.globl ASTNEWLIT
ASTNEWLIT:
.type ASTNEWLIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
sub esp, 4
push 0
push -2147483648
push 27
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWLIT, .-ASTNEWLIT
.cfi_endproc
.balign 16

.globl ASTLOADLIT
ASTLOADLIT:
.type ASTLOADLIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0074:
cmp dword ptr [AST+136], 0
je .L_0077
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+88]
add esp, 16
.L_0077:
.L_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0079
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 16
.L_0079:
.L_0078:
mov dword ptr [ebp-4], 0
.L_0075:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADLIT, .-ASTLOADLIT
.cfi_endproc
.balign 16

.globl ASTASMAPPENDTEXT
ASTASMAPPENDTEXT:
.type ASTASMAPPENDTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007E:
sub esp, 8
push 0
push dword ptr [ebp+8]
call ASTASMAPPEND
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_007F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTASMAPPENDTEXT, .-ASTASMAPPENDTEXT
.cfi_endproc
.balign 16

.globl ASTASMAPPENDSYMB
ASTASMAPPENDSYMB:
.type ASTASMAPPENDSYMB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
sub esp, 8
push 1
push dword ptr [ebp+8]
call ASTASMAPPEND
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTASMAPPENDSYMB, .-ASTASMAPPENDSYMB
.cfi_endproc
.balign 16

.globl ASTNEWASM
ASTNEWASM:
.type ASTNEWASM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0082:
sub esp, 4
push 0
push -2147483648
push 28
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0083:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWASM, .-ASTNEWASM
.cfi_endproc
.balign 16

.globl ASTLOADASM
ASTLOADASM:
.type ASTLOADASM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0084:
cmp dword ptr [AST+136], 0
je .L_0087
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+84]
add esp, 16
.L_0087:
.L_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
.L_0088:
cmp dword ptr [ebp-8], 0
je .L_0089
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_008C
.L_008D:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .L_008F
sub esp, 12
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call free
add esp, 16
.L_008F:
.L_008E:
.L_008C:
.L_008A:
sub esp, 8
push dword ptr [ebp-8]
lea ebx, [AST+200]
push ebx
call LISTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .L_0088
.L_0089:
mov dword ptr [ebp-4], 0
.L_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADASM, .-ASTLOADASM
.cfi_endproc
.balign 16

.globl ASTNEWDBG
ASTNEWDBG:
.type ASTNEWDBG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0090:
cmp dword ptr [ENV+148], 0
jne .L_0093
mov dword ptr [ebp-4], 0
jmp .L_0091
.L_0093:
.L_0092:
sub esp, 4
push 0
push -2147483648
push 30
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWDBG, .-ASTNEWDBG
.cfi_endproc
.balign 16

.globl ASTLOADDBG
ASTLOADDBG:
.type ASTLOADDBG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0094:
cmp dword ptr [AST+136], 0
je .L_0097
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
mov eax, dword ptr [AST+40]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [IR+168]
add esp, 16
.L_0097:
.L_0096:
mov dword ptr [ebp-4], 0
.L_0095:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADDBG, .-ASTLOADDBG
.cfi_endproc
.balign 16

.globl ASTNEWNOP
ASTNEWNOP:
.type ASTNEWNOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0098:
sub esp, 4
push 0
push -2147483648
push 0
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0099:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWNOP, .-ASTNEWNOP
.cfi_endproc
.balign 16

.globl ASTLOADNOP
ASTLOADNOP:
.type ASTLOADNOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009A:
mov dword ptr [ebp-4], 0
.L_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADNOP, .-ASTLOADNOP
.cfi_endproc
.balign 16

.globl ASTNEWNIDXARRAY
ASTNEWNIDXARRAY:
.type ASTNEWNIDXARRAY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009C:
sub esp, 4
push 0
push -2147483648
push 25
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_009D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWNIDXARRAY, .-ASTNEWNIDXARRAY
.cfi_endproc
.balign 16

.globl ASTLOADNIDXARRAY
ASTLOADNIDXARRAY:
.type ASTLOADNIDXARRAY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_009E:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.L_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADNIDXARRAY, .-ASTLOADNIDXARRAY
.cfi_endproc
.balign 16

.globl ASTREMOVENIDXARRAY
ASTREMOVENIDXARRAY:
.type ASTREMOVENIDXARRAY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .L_00A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
.L_00A3:
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTREMOVENIDXARRAY, .-ASTREMOVENIDXARRAY
.cfi_endproc
.balign 16

.globl ASTNEWLINK
ASTNEWLINK:
.type ASTNEWLINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
cmp dword ptr [ebp+16], 1
je .L_00A7
cmp dword ptr [ebp+8], 0
je .L_00A9
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_00AB
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
cmp dword ptr [ebp+16], 2
je .L_00AD
cmp dword ptr [ebp+12], 0
je .L_00AF
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .L_00B1
sub esp, 4
push 0
push 0
push dword ptr [ebp+12]
call ASTSETTYPE
add esp, 16
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
.L_00AC:
cmp dword ptr [ebp+8], 0
jne .L_00B3
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_00A5
.L_00B3:
.L_00B2:
cmp dword ptr [ebp+12], 0
jne .L_00B5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00A5
.L_00B5:
.L_00B4:
cmp dword ptr [ebp+16], 0
jne .L_00B7
.L_00B8:
sub esp, 4
push 0
push 0
push 15
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B6
.L_00B7:
cmp dword ptr [ebp+16], 1
jne .L_00B9
.L_00BA:
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 15
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B6
.L_00B9:
cmp dword ptr [ebp+16], 2
jne .L_00BB
.L_00BC:
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 15
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
.L_00BB:
.L_00B6:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWLINK, .-ASTNEWLINK
.cfi_endproc
.balign 16

.globl ASTLOADLINK
ASTLOADLINK:
.type ASTLOADLINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00BD:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .L_00C1
.L_00C2:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_00BF
.L_00C1:
cmp dword ptr [ebp-16], 2
jne .L_00C3
.L_00C4:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_00BF
.L_00C3:
mov dword ptr [ebp-4], 0
.L_00C5:
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADLINK, .-ASTLOADLINK
.cfi_endproc
.balign 16

.globl ASTNEWLOAD
ASTNEWLOAD:
.type ASTNEWLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C6:
sub esp, 4
push 0
push dword ptr [ebp+12]
push 1
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWLOAD, .-ASTNEWLOAD
.cfi_endproc
.balign 16

.globl ASTLOADLOAD
ASTLOADLOAD:
.type ASTLOADLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00CB
mov dword ptr [ebp-4], 0
jmp .L_00C9
.L_00CB:
.L_00CA:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .L_00CD
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_00CF
sub esp, 8
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call dword ptr [IR+224]
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [IR+112]
add esp, 16
jmp .L_00CE
.L_00CF:
sub esp, 12
push dword ptr [ebp-12]
call dword ptr [IR+108]
add esp, 16
.L_00CE:
.L_00CD:
.L_00CC:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADLOAD, .-ASTLOADLOAD
.cfi_endproc
.balign 16

.globl ASTNEWFIELD
ASTNEWFIELD:
.type ASTNEWFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .L_00D3
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 1
jne .L_00D5
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 8
mov dword ptr [ebp-12], eax
jmp .L_00D4
.L_00D5:
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 9
mov dword ptr [ebp-12], eax
.L_00D4:
mov dword ptr [ebp-16], 0
inc dword ptr [AST+144]
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 19
jne .L_00D7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_00D1
.L_00D7:
.L_00D6:
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 19
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWFIELD, .-ASTNEWFIELD
.cfi_endproc
.balign 16

.globl ASTFORGETBITFIELDS
ASTFORGETBITFIELDS:
.type ASTFORGETBITFIELDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00D8:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [AST+144]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00DB
jmp .L_00D9
.L_00DB:
.L_00DA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .L_00DC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00E0
.L_00DC:
mov dword ptr [ebp-4], 0
.L_00E0:
cmp dword ptr [ebp-4], 0
je .L_00DF
dec dword ptr [AST+144]
.L_00DF:
.L_00DE:
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTFORGETBITFIELDS
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call ASTFORGETBITFIELDS
add esp, 16
.L_00D9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTFORGETBITFIELDS, .-ASTFORGETBITFIELDS
.cfi_endproc
.balign 16

.globl ASTUPDATEBITFIELDS
ASTUPDATEBITFIELDS:
.type ASTUPDATEBITFIELDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0100:
cmp dword ptr [AST+144], 0
jg .L_0103
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0101
.L_0103:
.L_0102:
cmp dword ptr [ebp+8], 0
jne .L_0105
mov dword ptr [ebp-4], 0
jmp .L_0101
.L_0105:
.L_0104:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .L_0108
.L_0109:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 19
jne .L_010B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+112], 0
jle .L_010D
dec dword ptr [AST+144]
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
sub esp, 4
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+60]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
push dword ptr [ebp-12]
call ASTSETBITFIELD
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
.L_010D:
.L_010C:
.L_010B:
.L_010A:
jmp .L_0106
.L_0108:
cmp dword ptr [ebp-8], 19
jne .L_010E
.L_010F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp dword ptr [ecx+112], 0
jle .L_0111
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ASTACCESSBITFIELD
add esp, 16
mov dword ptr [ebp-12], eax
dec dword ptr [AST+144]
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTUPDATEBITFIELDS
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0101
.L_0111:
.L_0110:
.L_010E:
.L_0106:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTUPDATEBITFIELDS
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+56], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTUPDATEBITFIELDS
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTUPDATEBITFIELDS, .-ASTUPDATEBITFIELDS
.cfi_endproc
.balign 16

.globl ASTLOADFIELD
ASTLOADFIELD:
.type ASTLOADFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0112:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .L_0115
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0115:
.L_0114:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADFIELD, .-ASTLOADFIELD
.cfi_endproc
.balign 16

.globl ASTNEWSTACK
ASTNEWSTACK:
.type ASTNEWSTACK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0116:
cmp dword ptr [ebp+12], 0
jne .L_0119
mov dword ptr [ebp-4], 0
jmp .L_0117
.L_0119:
.L_0118:
sub esp, 4
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 11
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTNEWSTACK, .-ASTNEWSTACK
.cfi_endproc
.balign 16

.globl ASTLOADSTACK
ASTLOADSTACK:
.type ASTLOADSTACK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_011D
mov dword ptr [ebp-4], 0
jmp .L_011B
.L_011D:
.L_011C:
sub esp, 12
push dword ptr [ebp-8]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [AST+136], 0
je .L_011F
sub esp, 4
push 0
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call dword ptr [IR+116]
add esp, 16
.L_011F:
.L_011E:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_011B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTLOADSTACK, .-ASTLOADSTACK
.cfi_endproc
.balign 16

.globl ASTDUMPOPTOSTR
ASTDUMPOPTOSTR:
.type ASTDUMPOPTOSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01CB:
mov eax, dword ptr [ebp+8]
cmp eax, 120
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01CE
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 4
push offset Lt_01CF
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01CC
.L_01CE:
.L_01CD:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [DBG_ASTNODEOPNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_01CC:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTDUMPOPTOSTR, .-ASTDUMPOPTOSTR
.cfi_endproc
.balign 16

.globl ASTDUMPTREE
ASTDUMPTREE:
.type ASTDUMPTREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0262:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTDUMPTREEEX
add esp, 16
.L_0263:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTDUMPTREE, .-ASTDUMPTREE
.cfi_endproc
.balign 16

.globl ASTDUMPLIST
ASTDUMPLIST:
.type ASTDUMPLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0264:
.L_0266:
cmp dword ptr [ebp+8], 0
je .L_0267
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTDUMPTREE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .L_0266
.L_0267:
.L_0265:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTDUMPLIST, .-ASTDUMPLIST
.cfi_endproc
.balign 16
fb_ctor__astznodezmisc:
.type fb_ctor__astznodezmisc, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__astznodezmisc, .-fb_ctor__astznodezmisc
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
ASTASMAPPEND:
.type ASTASMAPPEND, @function
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
sub esp, 12
lea eax, [AST+200]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_007D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_007D:
.L_007C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTASMAPPEND, .-ASTASMAPPEND
.cfi_endproc
.balign 16
_Z13HMAKEUINTMASKm:
.type _Z13HMAKEUINTMASKm, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 64
jb .L_00E7
mov dword ptr [ebp-12], 4294967295
mov dword ptr [ebp-8], 4294967295
jmp .L_00E6
.L_00E7:
mov ebx, 1
mov eax, 0
push eax
push ebx
mov ecx, dword ptr [ebp+8]
mov eax, [esp+0]
mov edx, [esp+4]
shld edx, eax, cl
shl  eax, cl
test cl, 32
jz .L_0268
mov edx, eax
xor eax, eax
.L_0268:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
add ebx, 4294967295
adc eax, 4294967295
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
.L_00E6:
call FBIS64BIT
not eax
test eax, eax
je .L_00E9
mov eax, dword ptr [ebp-12]
mov ecx, eax
mov ebx, 0
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-8], ebx
.L_00E9:
.L_00E8:
push 0
push 9
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z13HMAKEUINTMASKm, .-_Z13HMAKEUINTMASKm
.cfi_endproc
.balign 16
_Z13HMAKEUINTMASKmm:
.type _Z13HMAKEUINTMASKmm, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00EA:
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, 0
push eax
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+8]
call _Z13HMAKEUINTMASKm
add esp, 8
push eax
push 41
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _Z13HMAKEUINTMASKmm, .-_Z13HMAKEUINTMASKmm
.cfi_endproc
.balign 16
ASTSETBITFIELD:
.type ASTSETBITFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00EC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00EF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, -512
or eax, 9
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
jmp .L_00EE
.L_00EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx+8], eax
.L_00EE:
sub esp, 12
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 12
push 1
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKmm
add esp, 8
push eax
push 52
call ASTNEWUOP
add esp, 12
push eax
push dword ptr [ebp+12]
push 34
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00F1
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 5
jne .L_00F2
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_0269
.L_00F2:
mov dword ptr [ebp-8], -1
.L_0269:
cmp dword ptr [ebp-8], 0
je .L_00F5
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push 0
push 1
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+16], eax
.L_00F5:
.L_00F4:
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push 0
push 9
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+16], eax
sub esp, 12
push 1
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+108]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKmm
add esp, 12
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+16], eax
jmp .L_00F0
.L_00F1:
sub esp, 12
push 1
push 0
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKm
add esp, 12
push eax
push dword ptr [ebp+16]
push 34
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .L_00F7
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+108]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+16]
push 41
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+16], eax
.L_00F7:
.L_00F6:
.L_00F0:
sub esp, 12
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 35
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-4], eax
.L_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTSETBITFIELD, .-ASTSETBITFIELD
.cfi_endproc
.balign 16
ASTACCESSBITFIELD:
.type ASTACCESSBITFIELD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F8:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00FB
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-8], -1
jmp .L_00FA
.L_00FB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-8], 0
.L_00FA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+108], 0
jle .L_00FD
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+108]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+12]
push 42
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+12], eax
.L_00FD:
.L_00FC:
sub esp, 12
push 1
push 0
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _Z13HMAKEUINTMASKm
add esp, 12
push eax
push dword ptr [ebp+12]
push 34
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
je .L_00FF
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, -512
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx+8], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTACCESSBITFIELD, .-ASTACCESSBITFIELD
.cfi_endproc
.balign 16
DBG_ASTOUTPUT:
.type DBG_ASTOUTPUT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0120:
cmp dword ptr [ebp+16], -1
jne .L_0123
.L_0124:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov ebx, dword ptr [ebp+12]
sub ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_0122
.L_0123:
cmp dword ptr [ebp+16], 1
jne .L_0125
.L_0126:
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_0122
.L_0125:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_0127:
.L_0122:
cmp dword ptr [ebp+20], 0
jge .L_0129
sub esp, 4
push 0
sub esp, 4
mov ebx, dword ptr [ebp-4]
dec ebx
push ebx
call fb_SPACE
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push dword ptr [ebp+8]
push 0
call fb_PrintString
add esp, 16
jmp .L_0128
.L_0129:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
sub esp, 4
mov eax, dword ptr [ebp-4]
dec eax
sub esp, 12
push -1
push dword ptr [ebp+20]
mov ebx, eax
call fb_IntToStr
add esp, 4
push eax
call fb_StrLen
add esp, 20
sub ebx, eax
push ebx
call fb_SPACE
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push dword ptr [ebp+8]
push 0
call fb_PrintString
add esp, 16
.L_0128:
.L_0121:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size DBG_ASTOUTPUT, .-DBG_ASTOUTPUT
.cfi_endproc
.balign 16
HASTNODECLASSTOSTR:
.type HASTNODECLASSTOSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D3:
mov eax, dword ptr [ebp+8]
cmp eax, 44
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01D6
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 7
push offset Lt_01D7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01D4
.L_01D6:
.L_01D5:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [DBG_ASTNODECLASSNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_01D4:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTNODECLASSTOSTR, .-HASTNODECLASSTOSTR
.cfi_endproc
.balign 16
HSYMBTOSTR:
.type HSYMBTOSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D9:
cmp dword ptr [ebp+8], 0
jne .L_01DC
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01DA
.L_01DC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_01DE
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01DA
jmp .L_01DD
.L_01DE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_01DF
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_01DF:
.L_01DD:
.L_01DA:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSYMBTOSTR, .-HSYMBTOSTR
.cfi_endproc
.balign 16
HASTNODETYPETOSTR:
.type HASTNODETYPETOSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01E0:
cmp dword ptr [ebp+8], 0
jne .L_01E3
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E1
.L_01E3:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBTYPETOSTR
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.L_01E1:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTNODETYPETOSTR, .-HASTNODETYPETOSTR
.cfi_endproc
.balign 16
HASTNODETOSTR:
.type HASTNODETOSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 116
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_01E7
.L_01E9:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call HSYMBTOSTR
add esp, 16
push eax
push -1
sub esp, 4
push 6
push offset Lt_01EA
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 8
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_01ED:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_01EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01EF
mov dword ptr [ebp-20], 24
jmp .L_026D
.L_01EF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_026D:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_01F2
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_DoubleToStr
add esp, 8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
.L_01F2:
.L_01F1:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_01FB:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push 3
push offset Lt_0200
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_01FE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .L_026E
.L_01FE:
mov eax, offset Lt_01FD
mov dword ptr [ebp-20], eax
.L_026E:
push dword ptr [ebp-20]
push 6
push offset Lt_01FC
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0206:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push 3
push offset Lt_0200
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 8
push offset Lt_0207
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_020D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_020F
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0200
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset Lt_0210
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
.L_020F:
.L_020E:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push 5
push offset Lt_0143
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0216:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0200
push -1
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset Lt_0217
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_021A:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBTOSTR
add esp, 16
push eax
push 8
push offset Lt_021B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_021D:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HSYMBTOSTR
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_021F
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 16
push eax
push 9
push offset Lt_021E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0223:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSYMBTOSTR
add esp, 16
push eax
push 13
push offset Lt_0224
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0226:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push 4
push offset Lt_0229
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [eax+28]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 9
push offset Lt_0228
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 10
push offset Lt_0227
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HASTNODECLASSTOSTR
add esp, 8
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0232:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push 2
push offset Lt_021F
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTDUMPOPTOSTR
add esp, 16
push eax
push 8
push offset Lt_0233
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_0239:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-104], ebx
cmp dword ptr [ebp-104], 1
jne .L_023C
.L_023D:
sub esp, 12
push 0
push 2
push offset Lt_023E
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_023A
.L_023C:
cmp dword ptr [ebp-104], 2
jne .L_023F
.L_0240:
sub esp, 12
push 0
push 2
push offset Lt_0241
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
.L_023F:
.L_023A:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea ebx, [ebp-28]
push ebx
push -1
sub esp, 4
push 2
push offset Lt_0175
push -1
sub esp, 4
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HASTNODECLASSTOSTR
add esp, 16
push eax
push 2
push offset Lt_0176
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01E5
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01E6
.L_0248:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_01F4
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HASTNODETYPETOSTR
add esp, 16
push eax
push 3
push offset Lt_01F3
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HASTNODECLASSTOSTR
add esp, 8
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_01E5
jmp .L_01E6
.L_01E7:
mov eax, dword ptr [ebp-16]
add eax, 4294967293
cmp eax, 41
ja .L_0248
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_024C+eax*4-12]
.L_024C:
.int .L_01E9
.int .L_01ED
.int .L_0248
.int .L_0248
.int .L_021D
.int .L_0248
.int .L_0216
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0239
.int .L_01EE
.int .L_01FB
.int .L_0248
.int .L_0206
.int .L_0248
.int .L_021A
.int .L_0248
.int .L_0248
.int .L_020D
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0248
.int .L_0223
.int .L_0248
.int .L_0248
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0226
.int .L_0248
.int .L_0232
.L_01E6:
.L_01E5:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASTNODETOSTR, .-HASTNODETOSTR
.cfi_endproc
.balign 16
ASTDUMPTREEEX:
.type ASTDUMPTREEEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_024D:
mov eax, dword ptr [ebp+12]
cmp eax, 4
setle al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
cmp ebx, 76
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0250
mov dword ptr [ebp+12], 40
.L_0250:
.L_024F:
cmp dword ptr [ebp+8], 0
jne .L_0252
sub esp, 4
push 1
push 6
push offset Lt_01FD
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_024E
.L_0252:
.L_0251:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HASTNODETOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-12]
push eax
call DBG_ASTOUTPUT
add esp, 16
inc dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0254
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0256
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset Lt_0257
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0255
.L_0256:
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0019
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0255:
jmp .L_0253
.L_0254:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_025A
push -1
push 0
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 4
push offset Lt_025B
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0253
.L_025A:
push -1
push 0
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call DBG_ASTOUTPUT
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0253:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_025F
push dword ptr [ebp+20]
push -1
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDUMPTREEEX
add esp, 16
.L_025F:
.L_025E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .L_0261
push dword ptr [ebp+20]
push 1
mov eax, dword ptr [ebp+12]
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDUMPTREEEX
add esp, 16
.L_0261:
.L_0260:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_024E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTDUMPTREEEX, .-ASTDUMPTREEEX
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
DBG_ASTNODECLASSNAMES:
.int Lt_012B
.int Lt_012C
.int Lt_012D
.int Lt_012E
.int Lt_012F
.int Lt_0130
.int Lt_0131
.int Lt_0132
.int Lt_0133
.int Lt_0134
.int Lt_0135
.int Lt_0136
.int Lt_0137
.int Lt_0138
.int Lt_0139
.int Lt_013A
.int Lt_013B
.int Lt_013C
.int Lt_013D
.int Lt_013E
.int Lt_013F
.int Lt_0140
.int Lt_0141
.int Lt_0142
.int Lt_0143
.int Lt_0144
.int Lt_0145
.int Lt_0146
.int Lt_0147
.int Lt_0148
.int Lt_0149
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_014F
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0153
.int Lt_0154
.int Lt_0155
.int Lt_0156
.int Lt_0157

.section .rodata
.balign 4
Lt_012B:	.ascii	"NOP\0"
.balign 4
Lt_012C:	.ascii	"LOAD\0"
.balign 4
Lt_012D:	.ascii	"ASSIGN\0"
.balign 4
Lt_012E:	.ascii	"BOP\0"
.balign 4
Lt_012F:	.ascii	"UOP\0"
.balign 4
Lt_0130:	.ascii	"CONV\0"
.balign 4
Lt_0131:	.ascii	"ADDROF\0"
.balign 4
Lt_0132:	.ascii	"BRANCH\0"
.balign 4
Lt_0133:	.ascii	"JMPTB\0"
.balign 4
Lt_0134:	.ascii	"CALL\0"
.balign 4
Lt_0135:	.ascii	"CALLCTOR\0"
.balign 4
Lt_0136:	.ascii	"STACK\0"
.balign 4
Lt_0137:	.ascii	"MEM\0"
.balign 4
Lt_0138:	.ascii	"LOOP\0"
.balign 4
Lt_0139:	.ascii	"COMP\0"
.balign 4
Lt_013A:	.ascii	"LINK\0"
.balign 4
Lt_013B:	.ascii	"CONST\0"
.balign 4
Lt_013C:	.ascii	"VAR\0"
.balign 4
Lt_013D:	.ascii	"IDX\0"
.balign 4
Lt_013E:	.ascii	"FIELD\0"
.balign 4
Lt_013F:	.ascii	"DEREF\0"
.balign 4
Lt_0140:	.ascii	"LABEL\0"
.balign 4
Lt_0141:	.ascii	"ARG\0"
.balign 4
Lt_0142:	.ascii	"OFFSET\0"
.balign 4
Lt_0143:	.ascii	"DECL\0"
.balign 4
Lt_0144:	.ascii	"NIDXARRAY\0"
.balign 4
Lt_0145:	.ascii	"IIF\0"
.balign 4
Lt_0146:	.ascii	"LIT\0"
.balign 4
Lt_0147:	.ascii	"ASM\0"
.balign 4
Lt_0148:	.ascii	"DATASTMT\0"
.balign 4
Lt_0149:	.ascii	"DBG\0"
.balign 4
Lt_014A:	.ascii	"BOUNDCHK\0"
.balign 4
Lt_014B:	.ascii	"PTRCHK\0"
.balign 4
Lt_014C:	.ascii	"SCOPEBEGIN\0"
.balign 4
Lt_014D:	.ascii	"SCOPEEND\0"
.balign 4
Lt_014E:	.ascii	"SCOPE_BREAK\0"
.balign 4
Lt_014F:	.ascii	"TYPEINI\0"
.balign 4
Lt_0150:	.ascii	"TYPEINI_PAD\0"
.balign 4
Lt_0151:	.ascii	"TYPEINI_ASSIGN\0"
.balign 4
Lt_0152:	.ascii	"TYPEINI_CTORCALL\0"
.balign 4
Lt_0153:	.ascii	"TYPEINI_CTORLIST\0"
.balign 4
Lt_0154:	.ascii	"TYPEINI_SCOPEINI\0"
.balign 4
Lt_0155:	.ascii	"TYPEINI_SCOPEEND\0"
.balign 4
Lt_0156:	.ascii	"PROC\0"
.balign 4
Lt_0157:	.ascii	"MACRO\0"

.section .data
.balign 4
DBG_ASTNODEOPNAMES:
.int Lt_0159
.int Lt_015A
.int Lt_015B
.int Lt_015C
.int Lt_015D
.int Lt_015E
.int Lt_015F
.int Lt_0160
.int Lt_0161
.int Lt_0162
.int Lt_0163
.int Lt_0164
.int Lt_0165
.int Lt_0166
.int Lt_0167
.int Lt_0168
.int Lt_0169
.int Lt_016A
.int Lt_016B
.int Lt_016C
.int Lt_016D
.int Lt_016E
.int Lt_0131
.int Lt_016F
.int Lt_0170
.int Lt_0171
.int Lt_0172
.int Lt_0173
.int Lt_0174
.int Lt_0175
.int Lt_0176
.int Lt_0019
.int Lt_0177
.int Lt_0178
.int Lt_0179
.int Lt_017A
.int Lt_017B
.int Lt_017C
.int Lt_017D
.int Lt_017E
.int Lt_017F
.int Lt_0180
.int Lt_0181
.int Lt_0182
.int Lt_0183
.int Lt_0184
.int Lt_0185
.int Lt_0186
.int Lt_0187
.int Lt_0188
.int Lt_0189
.int Lt_018A
.int Lt_018B
.int Lt_0174
.int Lt_018C
.int Lt_018D
.int Lt_018E
.int Lt_018F
.int Lt_0190
.int Lt_0191
.int Lt_0192
.int Lt_0193
.int Lt_0194
.int Lt_0195
.int Lt_0196
.int Lt_0197
.int Lt_0198
.int Lt_0199
.int Lt_019A
.int Lt_019B
.int Lt_019C
.int Lt_019D
.int Lt_019E
.int Lt_019F
.int Lt_01A0
.int Lt_01A1
.int Lt_013F
.int Lt_01A2
.int Lt_01A3
.int Lt_01A4
.int Lt_01A5
.int Lt_01A6
.int Lt_01A7
.int Lt_01A8
.int Lt_01A9
.int Lt_012C
.int Lt_01AA
.int Lt_01AB
.int Lt_01AC
.int Lt_01AD
.int Lt_01AE
.int Lt_01AF
.int Lt_01B0
.int Lt_01B1
.int Lt_01B2
.int Lt_01B3
.int Lt_01B4
.int Lt_01B5
.int Lt_01B6
.int Lt_0134
.int Lt_0140
.int Lt_01B7
.int Lt_01B8
.int Lt_01B9
.int Lt_01BA
.int Lt_01BB
.int Lt_01BC
.int Lt_01BD
.int Lt_01BE
.int Lt_01BF
.int Lt_01C0
.int Lt_01C1
.int Lt_01C2
.int Lt_01C3
.int Lt_01C4
.int Lt_01C5
.int Lt_01C6
.int Lt_01C7
.int Lt_01C8
.int Lt_01C9
.int Lt_01CA

.section .rodata
.balign 4
Lt_0159:	.ascii	"=\0"
.balign 4
Lt_015A:	.ascii	"+=\0"
.balign 4
Lt_015B:	.ascii	"-=\0"
.balign 4
Lt_015C:	.ascii	"*=\0"
.balign 4
Lt_015D:	.ascii	"/=\0"
.balign 4
Lt_015E:	.ascii	"\\=\0"
.balign 4
Lt_015F:	.ascii	"MOD=\0"
.balign 4
Lt_0160:	.ascii	"AND=\0"
.balign 4
Lt_0161:	.ascii	"OR=\0"
.balign 4
Lt_0162:	.ascii	"ANDALSO=\0"
.balign 4
Lt_0163:	.ascii	"ORELSE=\0"
.balign 4
Lt_0164:	.ascii	"XOR=\0"
.balign 4
Lt_0165:	.ascii	"EQV=\0"
.balign 4
Lt_0166:	.ascii	"IMP=\0"
.balign 4
Lt_0167:	.ascii	"SHL=\0"
.balign 4
Lt_0168:	.ascii	"SHR=\0"
.balign 4
Lt_0169:	.ascii	"^=\0"
.balign 4
Lt_016A:	.ascii	"&=\0"
.balign 4
Lt_016B:	.ascii	"new=\0"
.balign 4
Lt_016C:	.ascii	"new[]=\0"
.balign 4
Lt_016D:	.ascii	"del=\0"
.balign 4
Lt_016E:	.ascii	"del[]=\0"
.balign 4
Lt_016F:	.ascii	"PTRINDEX\0"
.balign 4
Lt_0170:	.ascii	"FOR\0"
.balign 4
Lt_0171:	.ascii	"STEP\0"
.balign 4
Lt_0172:	.ascii	"NEXT\0"
.balign 4
Lt_0173:	.ascii	"CAST\0"
.balign 4
Lt_0174:	.ascii	"+\0"
.balign 4
Lt_0175:	.ascii	"-\0"
.balign 4
Lt_0176:	.ascii	"*\0"
.balign 4
Lt_0177:	.ascii	"\\\0"
.balign 4
Lt_0178:	.ascii	"MOD\0"
.balign 4
Lt_0179:	.ascii	"AND\0"
.balign 4
Lt_017A:	.ascii	"OR\0"
.balign 4
Lt_017B:	.ascii	"ANDALSO\0"
.balign 4
Lt_017C:	.ascii	"ORELSE\0"
.balign 4
Lt_017D:	.ascii	"XOR\0"
.balign 4
Lt_017E:	.ascii	"EQV\0"
.balign 4
Lt_017F:	.ascii	"IMP\0"
.balign 4
Lt_0180:	.ascii	"SHL\0"
.balign 4
Lt_0181:	.ascii	"SHR\0"
.balign 4
Lt_0182:	.ascii	"^\0"
.balign 4
Lt_0183:	.ascii	"&\0"
.balign 4
Lt_0184:	.ascii	"==\0"
.balign 4
Lt_0185:	.ascii	">\0"
.balign 4
Lt_0186:	.ascii	"<\0"
.balign 4
Lt_0187:	.ascii	"<>\0"
.balign 4
Lt_0188:	.ascii	">=\0"
.balign 4
Lt_0189:	.ascii	"<=\0"
.balign 4
Lt_018A:	.ascii	"IS\0"
.balign 4
Lt_018B:	.ascii	"NOT\0"
.balign 4
Lt_018C:	.ascii	"NEG\0"
.balign 4
Lt_018D:	.ascii	"HADD\0"
.balign 4
Lt_018E:	.ascii	"ABS\0"
.balign 4
Lt_018F:	.ascii	"SGN\0"
.balign 4
Lt_0190:	.ascii	"SIN\0"
.balign 4
Lt_0191:	.ascii	"ASIN\0"
.balign 4
Lt_0192:	.ascii	"COS\0"
.balign 4
Lt_0193:	.ascii	"ACOS\0"
.balign 4
Lt_0194:	.ascii	"TAN\0"
.balign 4
Lt_0195:	.ascii	"ATAN\0"
.balign 4
Lt_0196:	.ascii	"ATAN2\0"
.balign 4
Lt_0197:	.ascii	"SQRT\0"
.balign 4
Lt_0198:	.ascii	"RSQRT\0"
.balign 4
Lt_0199:	.ascii	"RCP\0"
.balign 4
Lt_019A:	.ascii	"LOG\0"
.balign 4
Lt_019B:	.ascii	"EXP\0"
.balign 4
Lt_019C:	.ascii	"FLOOR\0"
.balign 4
Lt_019D:	.ascii	"FIX\0"
.balign 4
Lt_019E:	.ascii	"FRAC\0"
.balign 4
Lt_019F:	.ascii	"LEN\0"
.balign 4
Lt_01A0:	.ascii	"CONVFD2FS\0"
.balign 4
Lt_01A1:	.ascii	"SWZREP\0"
.balign 4
Lt_01A2:	.ascii	"FLDDEREF\0"
.balign 4
Lt_01A3:	.ascii	"NEW\0"
.balign 4
Lt_01A4:	.ascii	"NEW_VEC\0"
.balign 4
Lt_01A5:	.ascii	"DEL\0"
.balign 4
Lt_01A6:	.ascii	"DEL_VEC\0"
.balign 4
Lt_01A7:	.ascii	"TOINT\0"
.balign 4
Lt_01A8:	.ascii	"TOFLT\0"
.balign 4
Lt_01A9:	.ascii	"TOBOOL\0"
.balign 4
Lt_01AA:	.ascii	"LOADRES\0"
.balign 4
Lt_01AB:	.ascii	"SPILLREGS\0"
.balign 4
Lt_01AC:	.ascii	"PUSH\0"
.balign 4
Lt_01AD:	.ascii	"POP\0"
.balign 4
Lt_01AE:	.ascii	"PUSHUDT\0"
.balign 4
Lt_01AF:	.ascii	"STACKALIGN\0"
.balign 4
Lt_01B0:	.ascii	"JEQ\0"
.balign 4
Lt_01B1:	.ascii	"JGT\0"
.balign 4
Lt_01B2:	.ascii	"JLT\0"
.balign 4
Lt_01B3:	.ascii	"JNE\0"
.balign 4
Lt_01B4:	.ascii	"JGE\0"
.balign 4
Lt_01B5:	.ascii	"JLE\0"
.balign 4
Lt_01B6:	.ascii	"JMP\0"
.balign 4
Lt_01B7:	.ascii	"RET\0"
.balign 4
Lt_01B8:	.ascii	"CALLFUNCT\0"
.balign 4
Lt_01B9:	.ascii	"CALLPTR\0"
.balign 4
Lt_01BA:	.ascii	"JUMPPTR\0"
.balign 4
Lt_01BB:	.ascii	"MEMMOVE\0"
.balign 4
Lt_01BC:	.ascii	"MEMSWAP\0"
.balign 4
Lt_01BD:	.ascii	"MEMCLEAR\0"
.balign 4
Lt_01BE:	.ascii	"STKCLEAR\0"
.balign 4
Lt_01BF:	.ascii	"VA_START\0"
.balign 4
Lt_01C0:	.ascii	"VA_END\0"
.balign 4
Lt_01C1:	.ascii	"VA_COPY\0"
.balign 4
Lt_01C2:	.ascii	"VA_ARG\0"
.balign 4
Lt_01C3:	.ascii	"DBG_LINEINI\0"
.balign 4
Lt_01C4:	.ascii	"DBG_LINEEND\0"
.balign 4
Lt_01C5:	.ascii	"DBG_SCOPEINI\0"
.balign 4
Lt_01C6:	.ascii	"BDG_SCOPEEND\0"
.balign 4
Lt_01C7:	.ascii	"LIT_COMMENT\0"
.balign 4
Lt_01C8:	.ascii	"LIT_ASM\0"
.balign 4
Lt_01C9:	.ascii	"TOSIGNED\0"
.balign 4
Lt_01CA:	.ascii	"TOUNSIGNED\0"
.balign 4
Lt_01CF:	.ascii	"OP:\0"
.balign 4
Lt_01D7:	.ascii	"CLASS:\0"
.balign 4
Lt_01EA:	.ascii	" =-= \0"
.balign 4
Lt_01F3:	.ascii	" (\0"
.balign 4
Lt_01F4:	.ascii	")\0"
.balign 4
Lt_01FC:	.ascii	"VAR( \0"
.balign 4
Lt_01FD:	.ascii	"<NULL>\0"
.balign 4
Lt_0200:	.ascii	" )\0"
.balign 4
Lt_0207:	.ascii	"FIELD( \0"
.balign 4
Lt_0210:	.ascii	"DECL( \0"
.balign 4
Lt_0217:	.ascii	"CALL( \0"
.balign 4
Lt_021B:	.ascii	"LABEL: \0"
.balign 4
Lt_021E:	.ascii	"BRANCH: \0"
.balign 4
Lt_021F:	.ascii	" \0"
.balign 4
Lt_0224:	.ascii	"SCOPEBEGIN: \0"
.balign 4
Lt_0227:	.ascii	"( offset=\0"
.balign 4
Lt_0228:	.ascii	", bytes=\0"
.balign 4
Lt_0229:	.ascii	" ) \0"
.balign 4
Lt_0233:	.ascii	"MACRO: \0"
.balign 4
Lt_023E:	.ascii	"L\0"
.balign 4
Lt_0241:	.ascii	"R\0"
.balign 4
Lt_0257:	.ascii	"/ \\\0"
.balign 4
Lt_025B:	.ascii	"  \\\0"

.section .ctors, "aw", @progbits
.int fb_ctor__astznodezmisc
