	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSELECTSTMTINIT
PARSERSELECTSTMTINIT:
.type PARSERSELECTSTMTINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0067:
mov dword ptr [CTX], 0
.L_0068:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERSELECTSTMTINIT, .-PARSERSELECTSTMTINIT
.cfi_endproc
.balign 16

.globl PARSERSELECTSTMTEND
PARSERSELECTSTMTEND:
.type PARSERSELECTSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0069:
.L_006A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERSELECTSTMTEND, .-PARSERSELECTSTMTEND
.cfi_endproc
.balign 16

.globl CSELECTSTMTBEGIN
CSELECTSTMTBEGIN:
.type CSELECTSTMTBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_006B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
push 271
call HMATCH
add esp, 16
test eax, eax
jne .L_006E
sub esp, 4
push 0
push 0
push 34
call ERRREPORT
add esp, 16
.L_006E:
.L_006D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_0070
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
push 335
call HMATCH
add esp, 16
test eax, eax
je .L_0072
call CSELCONSTSTMTBEGIN
jmp .L_006C
.L_0072:
.L_0071:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.L_0070:
.L_006F:
call ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0074
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.L_0074:
.L_0073:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0076
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0076:
.L_0075:
sub esp, 12
lea eax, [ebp-4]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .L_0078
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0078:
.L_0077:
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-4]
call ASTGETEFFECTIVENODE
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 17
jne .L_007A
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
sub esp, 12
push dword ptr [ebp-4]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
push eax
call ASTADD
add esp, 16
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_007B
mov dword ptr [ebp-44], 24
jmp .L_0090
.L_007B:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0090:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .L_0080
.L_0081:
cmp dword ptr [ebp-48], 4
jne .L_007F
.L_0080:
mov dword ptr [ebp-8], 17
.L_007F:
.L_007D:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
jne .L_0083
or dword ptr [ebp-12], 2
.L_0083:
.L_0082:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0084
mov dword ptr [ebp-40], 24
jmp .L_0091
.L_0084:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-40], eax
.L_0091:
cmp dword ptr [ebp-40], 7
je .L_0087
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0088
mov dword ptr [ebp-44], 24
jmp .L_0092
.L_0088:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.L_0092:
cmp dword ptr [ebp-44], 17
je .L_008B
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 2048
.L_008B:
.L_008A:
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_008D
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_008C
.L_008D:
sub esp, 12
sub esp, 8
push 0
sub esp, 12
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
sub esp, 12
push 0
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 20
push eax
call ASTNEWLINK
add esp, 20
push eax
call ASTADD
add esp, 16
.L_008C:
jmp .L_0086
.L_0087:
sub esp, 4
push dword ptr [ebp-12]
push 0
push 39
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 16777216
mov eax, dword ptr [ebp-12]
and eax, 2
je .L_008F
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .L_008E
.L_008F:
sub esp, 12
sub esp, 8
push 0
sub esp, 12
push 64
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 24
push eax
sub esp, 12
push 0
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 20
push eax
call ASTNEWLINK
add esp, 20
push eax
call ASTADD
add esp, 16
.L_008E:
.L_0086:
.L_0079:
sub esp, 8
push 0
push 270
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+20], 0
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+56], eax
.L_006C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSELECTSTMTBEGIN, .-CSELECTSTMTBEGIN
.cfi_endproc
.balign 16

.globl CSELECTSTMTNEXT
CSELECTSTMTNEXT:
.type CSELECTSTMTNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_00B1:
sub esp, 8
push 0
push 270
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_00B4
sub esp, 4
push 0
push 0
push 118
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00B2
.L_00B4:
.L_00B3:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], -1
jne .L_00B6
sub esp, 4
push 0
push 0
push 35
call ERRREPORT
add esp, 16
.L_00B6:
.L_00B5:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+4], 1
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+12], 0
je .L_00B8
sub esp, 12
push dword ptr [ebp-24]
call CSELCONSTSTMTNEXT
add esp, 16
jmp .L_00B2
.L_00B8:
.L_00B7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+8], 0
je .L_00BA
sub esp, 12
mov eax, dword ptr [ebp-24]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+8], 0
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], 0
jle .L_00BC
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+44]
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
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+44], eax
.L_00BC:
.L_00BB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 268
jne .L_00BE
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+20], -1
jmp .L_00B2
.L_00BE:
.L_00BD:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [CTX]
mov dword ptr [ebp-20], eax
.L_00BF:
sub esp, 8
mov eax, dword ptr [ebp-24]
push dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call HCASEEXPRESSION
add esp, 16
inc dword ptr [ebp-12]
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_00C3
jmp .L_00C0
.L_00C3:
.L_00C2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_00C1:
jmp .L_00BF
.L_00C0:
mov eax, dword ptr [ebp-12]
add dword ptr [CTX], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00C5
.L_00C8:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .L_00CA
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C9
.L_00CA:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
.L_00C9:
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-20]
sal ebx, 4
mov eax, offset CTX
add eax, ebx
cmp dword ptr [eax+4], 3
je .L_00CC
sub esp, 12
mov eax, dword ptr [ebp-12]
dec eax
cmp eax, dword ptr [ebp-16]
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-24]
push dword ptr [eax+16]
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call HFLUSHCASEEXPR
add esp, 32
test eax, eax
jne .L_00CE
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .L_00D0
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.L_00D0:
.L_00CF:
.L_00C6:
inc dword ptr [ebp-16]
.L_00C5:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-16], eax
jle .L_00C8
.L_00C7:
mov eax, dword ptr [ebp-12]
sub dword ptr [CTX], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
inc dword ptr [eax+20]
.L_00B2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSELECTSTMTNEXT, .-CSELECTSTMTNEXT
.cfi_endproc
.balign 16

.globl CSELECTSTMTEND
CSELECTSTMTEND:
.type CSELECTSTMTEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00D2:
sub esp, 8
push -1
push 270
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_00D5
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_00D3
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+20], 0
jne .L_00D7
sub esp, 4
push 0
push 0
push 34
call ERRREPORT
add esp, 16
.L_00D7:
.L_00D6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .L_00D9
sub esp, 12
push dword ptr [ebp-4]
call CSELCONSTSTMTEND
add esp, 16
jmp .L_00D3
.L_00D9:
.L_00D8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .L_00DB
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.L_00DB:
.L_00DA:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+48]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+56], 0
je .L_00DD
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call ASTSCOPEEND
add esp, 16
.L_00DD:
.L_00DC:
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.L_00D3:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSELECTSTMTEND, .-CSELECTSTMTEND
.cfi_endproc
.balign 16
fb_ctor__parserzcompoundzselect:
.type fb_ctor__parserzcompoundzselect, @function
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
.size fb_ctor__parserzcompoundzselect, .-fb_ctor__parserzcompoundzselect
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
HCASEEXPRESSION:
.type HCASEEXPRESSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0093:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 45
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 272
jne .L_0096
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HFBRELOP2IRRELOP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .L_0095
.L_0096:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.L_0095:
call CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
jne .L_0098
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
sub esp, 8
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0099
mov dword ptr [ebp-4], 7
jmp .L_00DE
.L_0099:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
.L_00DE:
push dword ptr [ebp-4]
call ASTNEWCONSTZ
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.L_0098:
.L_0097:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
jne .L_009C
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_009E
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .L_009D
.L_009E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
call CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
jne .L_00A0
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.L_00A0:
.L_009F:
.L_009D:
.L_009C:
.L_009B:
.L_0094:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCASEEXPRESSION, .-HCASEEXPRESSION
.cfi_endproc
.balign 16
HFLUSHCASEEXPR:
.type HFLUSHCASEEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_00A3
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_00DF
.L_00A3:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-12], eax
.L_00DF:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
je .L_00A6
cmp dword ptr [ebp+24], 0
je .L_00A8
sub esp, 12
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTGETINVERSELOGOP
add esp, 4
push eax
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_00A7
.L_00A8:
sub esp, 12
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
.L_00A7:
jmp .L_00A5
.L_00A6:
sub esp, 12
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
push 47
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AA
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00AA:
.L_00A9:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_00AB
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_00E0
.L_00AB:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
.L_00E0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .L_00AE
sub esp, 12
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 46
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_00AD
.L_00AE:
sub esp, 12
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 50
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
.L_00AD:
.L_00A5:
cmp dword ptr [ebp-8], 0
jne .L_00B0
mov dword ptr [ebp-4], 0
jmp .L_00A2
.L_00B0:
.L_00AF:
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHCASEEXPR, .-HFLUSHCASEEXPR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	CTX,16388

.section .ctors, "aw", @progbits
.int fb_ctor__parserzcompoundzselect
