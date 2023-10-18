	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLERRORMODINIT
RTLERRORMODINIT:
.type RTLERRORMODINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007B:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.L_007C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORMODINIT, .-RTLERRORMODINIT
.cfi_endproc
.balign 16

.globl RTLERRORMODEND
RTLERRORMODEND:
.type RTLERRORMODEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007D:
.L_007E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORMODEND, .-RTLERRORMODEND
.cfi_endproc
.balign 16

.globl RTLERRORCHECK
RTLERRORCHECK:
.type RTLERRORCHECK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0085:
mov dword ptr [ebp-16], 0
cmp dword ptr [ENV+160], 0
je .L_0088
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_0087
.L_0088:
mov dword ptr [ebp-12], 0
.L_0087:
cmp dword ptr [ENV+156], 0
je .L_008A
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 4
push 0
push dword ptr [ebp-8]
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp+8]
push 45
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
sub esp, 12
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HERRORTHROW
add esp, 12
push eax
push 0
push 104
call ASTNEWBRANCH
add esp, 24
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_0089
.L_008A:
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-16], eax
.L_0089:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORCHECK, .-RTLERRORCHECK
.cfi_endproc
.balign 16

.globl RTLERRORTHROW
RTLERRORTHROW:
.type RTLERRORTHROW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_008B:
sub esp, 8
push 0
sub esp, 12
push 293
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_008E
jmp .L_008C
.L_008E:
.L_008D:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0090
jmp .L_008C
.L_0090:
.L_008F:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp+16]
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0092
jmp .L_008C
.L_0092:
.L_0091:
cmp dword ptr [ENV+160], 0
je .L_0094
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0093
.L_0094:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0093:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_0096
jmp .L_008C
.L_0096:
.L_0095:
cmp dword ptr [ENV+160], 0
je .L_0098
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0097
.L_0098:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_0097:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009A
jmp .L_008C
.L_009A:
.L_0099:
sub esp, 12
sub esp, 8
push dword ptr [ebp-4]
push 0
push 104
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.L_008C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORTHROW, .-RTLERRORTHROW
.cfi_endproc
.balign 16

.globl RTLERRORSETHANDLER
RTLERRORSETHANDLER:
.type RTLERRORSETHANDLER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_009B:
sub esp, 8
push 0
sub esp, 12
push 294
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009E
jmp .L_009C
.L_009E:
.L_009D:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
je .L_00A0
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_00A2
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 0
jne .L_00A5
sub esp, 8
push 0
push 32
call SYMBADDTEMPVAR
add esp, 16
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
.L_00A5:
.L_00A4:
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
cmp dword ptr [ebp-8], 0
jne .L_00A7
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_00A7:
.L_00A6:
.L_009C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORSETHANDLER, .-RTLERRORSETHANDLER
.cfi_endproc
.balign 16

.globl RTLERRORGETNUM
RTLERRORGETNUM:
.type RTLERRORGETNUM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00A8:
sub esp, 8
push 0
sub esp, 12
push 295
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
.L_00A9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORGETNUM, .-RTLERRORGETNUM
.cfi_endproc
.balign 16

.globl RTLERRORSETNUM
RTLERRORSETNUM:
.type RTLERRORSETNUM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AA:
sub esp, 8
push 0
sub esp, 12
push 296
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AD
jmp .L_00AB
.L_00AD:
.L_00AC:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.L_00AB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORSETNUM, .-RTLERRORSETNUM
.cfi_endproc
.balign 16

.globl RTLERRORRESUME
RTLERRORRESUME:
.type RTLERRORRESUME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AE:
cmp dword ptr [ebp+8], 0
jne .L_00B1
sub esp, 8
push 297
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00B0
.L_00B1:
sub esp, 8
push 298
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B0:
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
sub esp, 8
push dword ptr [ebp-4]
push 0
push 104
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.L_00AF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORRESUME, .-RTLERRORRESUME
.cfi_endproc
.balign 16

.globl RTLERRORSETMODNAME
RTLERRORSETMODNAME:
.type RTLERRORSETMODNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
sub esp, 8
push 0
sub esp, 12
push 299
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00B5
mov dword ptr [ebp-4], 0
jmp .L_00B3
.L_00B5:
.L_00B4:
cmp dword ptr [ebp+8], 0
je .L_00B7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push 36
call SYMBADDTEMPVAR
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00B6
.L_00B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B6:
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORSETMODNAME, .-RTLERRORSETMODNAME
.cfi_endproc
.balign 16

.globl RTLERRORSETFUNCNAME
RTLERRORSETFUNCNAME:
.type RTLERRORSETFUNCNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00B9:
sub esp, 8
push 0
sub esp, 12
push 300
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00BC
mov dword ptr [ebp-4], 0
jmp .L_00BA
.L_00BC:
.L_00BB:
cmp dword ptr [ebp+8], 0
je .L_00BE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push 36
call SYMBADDTEMPVAR
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BD
.L_00BE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BD:
.L_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLERRORSETFUNCNAME, .-RTLERRORSETFUNCNAME
.cfi_endproc
.balign 16
fb_ctor__rtlzerror:
.type fb_ctor__rtlzerror, @function
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
.size fb_ctor__rtlzerror, .-fb_ctor__rtlzerror
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
HERRORTHROW:
.type HERRORTHROW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
sub esp, 8
push 0
sub esp, 12
push 292
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16568]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
sub esp, 4
lea eax, [ENV+304]
push eax
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0082
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0081
.L_0082:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0081:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
cmp dword ptr [ENV+160], 0
je .L_0084
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0083
.L_0084:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.L_0083:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HERRORTHROW, .-HERRORTHROW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0067
.long 0
.int 32
.int 3
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.skip 192,0
.int Lt_0068
.long 0
.int 32
.int 3
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.skip 176,0
.int Lt_0069
.long 0
.int 32
.int -1
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_006A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_006C
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_006D
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_006E
.int Lt_006F
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int Lt_0070
.int Lt_0071
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int Lt_0072
.int Lt_0073
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int Lt_0074
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0075
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int Lt_0076
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 192,0
.int Lt_0076
.int Lt_0077
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1063
.int 1
.int 0
.skip 4,0
.skip 192,0
.int Lt_0078
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 192,0
.int Lt_0078
.int Lt_0079
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1063
.int 1
.int 0
.skip 4,0
.skip 192,0
.long 0
.skip 280,0

.section .rodata
.balign 4
Lt_0067:	.ascii	"fb_ErrorThrowAt\0"
.balign 4
Lt_0068:	.ascii	"fb_ErrorThrowEx\0"
.balign 4
Lt_0069:	.ascii	"fb_ErrorSetHandler\0"
.balign 4
Lt_006A:	.ascii	"fb_ErrorGetNum\0"
.balign 4
Lt_006B:	.ascii	"fb_ErrorSetNum\0"
.balign 4
Lt_006C:	.ascii	"fb_ErrorResume\0"
.balign 4
Lt_006D:	.ascii	"fb_ErrorResumeNext\0"
.balign 4
Lt_006E:	.ascii	"erl\0"
.balign 4
Lt_006F:	.ascii	"fb_ErrorGetLineNum\0"
.balign 4
Lt_0070:	.ascii	"erfn\0"
.balign 4
Lt_0071:	.ascii	"fb_ErrorGetFuncName\0"
.balign 4
Lt_0072:	.ascii	"ermn\0"
.balign 4
Lt_0073:	.ascii	"fb_ErrorGetModName\0"
.balign 4
Lt_0074:	.ascii	"fb_ErrorSetModName\0"
.balign 4
Lt_0075:	.ascii	"fb_ErrorSetFuncName\0"
.balign 4
Lt_0076:	.ascii	"fb_Assert\0"
.balign 4
Lt_0077:	.ascii	"fb_AssertW\0"
.balign 4
Lt_0078:	.ascii	"fb_AssertWarn\0"
.balign 4
Lt_0079:	.ascii	"fb_AssertWarnW\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzerror
