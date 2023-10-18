	.intel_syntax noprefix

.section .text
.balign 16

.globl HCOMPLAINIFABSTRACTCLASS
HCOMPLAINIFABSTRACTCLASS:
.type HCOMPLAINIFABSTRACTCLASS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0067:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .L_006A
sub esp, 12
push dword ptr [ebp+12]
call SYMBCOMPGETABSTRACTCOUNT
add esp, 16
test eax, eax
jle .L_006C
sub esp, 4
push 0
push 0
push 306
call ERRREPORT
add esp, 16
.L_006C:
.L_006B:
.L_006A:
.L_0069:
.L_0068:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPLAINIFABSTRACTCLASS, .-HCOMPLAINIFABSTRACTCLASS
.cfi_endproc
.balign 16

.globl HMAYBECOMPLAINTYPEUSAGE
HMAYBECOMPLAINTYPEUSAGE:
.type HMAYBECOMPLAINTYPEUSAGE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 20
jne .L_0071
.L_0072:
sub esp, 12
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call SYMBCHECKACCESSSTRUCT
add esp, 16
test eax, eax
jne .L_0074
sub esp, 4
push 0
push 0
push 202
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0075
mov dword ptr [ebp-8], 24
jmp .L_0077
.L_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0077:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_0074:
.L_0073:
.L_0071:
.L_006F:
.L_006E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBECOMPLAINTYPEUSAGE, .-HMAYBECOMPLAINTYPEUSAGE
.cfi_endproc
.balign 16

.globl HCOMPLAINABOUTCONSTDYNAMICARRAY
HCOMPLAINABOUTCONSTDYNAMICARRAY:
.type HCOMPLAINABOUTCONSTDYNAMICARRAY, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0078:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .L_007B
sub esp, 4
push 0
push 0
push 275
call ERRREPORT
add esp, 16
.L_007B:
.L_007A:
.L_0079:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPLAINABOUTCONSTDYNAMICARRAY, .-HCOMPLAINABOUTCONSTDYNAMICARRAY
.cfi_endproc
.balign 16

.globl HSYMBOLTYPE
HSYMBOLTYPE:
.type HSYMBOLTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_007C:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp+20], 0
je .L_007F
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.L_007F:
.L_007E:
cmp dword ptr [ebp+24], 0
je .L_0081
and dword ptr [ebp-4], -2
.L_0081:
.L_0080:
sub esp, 12
push dword ptr [ebp-4]
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .L_0084
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .L_0085
mov dword ptr [ebp-12], 24
jmp .L_008F
.L_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-12], eax
.L_008F:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.L_0084:
.L_0083:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 0
jne .L_0088
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0089
mov dword ptr [ebp-12], 24
jmp .L_0090
.L_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0090:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
.L_0088:
.L_0087:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_008C
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 480
je .L_008D
mov dword ptr [ebp-12], 24
jmp .L_0091
.L_008D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0091:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
.L_008C:
.L_008B:
.L_007D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSYMBOLTYPE, .-HSYMBOLTYPE
.cfi_endproc
.balign 16

.globl HCHECKSCOPE
HCHECKSCOPE:
.type HCHECKSCOPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0094:
cmp dword ptr [PARSER+100], 0
jbe .L_0097
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
je .L_0099
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
jmp .L_0098
.L_0099:
sub esp, 4
push 0
push 0
push 96
call ERRREPORT
add esp, 16
.L_0098:
mov dword ptr [ebp-4], 0
jmp .L_0096
.L_0097:
mov dword ptr [ebp-4], -1
.L_0096:
.L_0095:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKSCOPE, .-HCHECKSCOPE
.cfi_endproc
.balign 16

.globl CVARIABLEDECL
CVARIABLEDECL:
.type CVARIABLEDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_009A:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_009D
.L_009F:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00A1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009B
.L_00A1:
.L_00A0:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00A3
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.L_00A3:
.L_00A2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
or dword ptr [ebp+8], 4
sub esp, 8
push 2048
push 313
call HMATCH
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_009C
.L_00A4:
or dword ptr [ebp+8], 10
or dword ptr [ebp+8], 4
call HCHECKSCOPE
test eax, eax
jne .L_00A6
and dword ptr [ebp+8], -9
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00A8
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.L_00A8:
.L_00A7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_009C
.L_00A9:
cmp dword ptr [ebp+8], 0
jne .L_00AB
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 4
jne .L_00AD
mov dword ptr [ebp-4], 0
jmp .L_009B
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
or dword ptr [ebp+8], 16
or dword ptr [ebp+8], 3
call HCHECKSCOPE
test eax, eax
jne .L_00AF
and dword ptr [ebp+8], -18
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .L_00B1
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.L_00B1:
.L_00B0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_009C
.L_00B2:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00B4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009B
.L_00B4:
.L_00B3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
or dword ptr [ebp+8], 2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 309
jne .L_00B6
sub esp, 12
push dword ptr [ebp+8]
call CAUTOVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009B
.L_00B6:
.L_00B5:
jmp .L_009C
.L_00B7:
sub esp, 12
push dword ptr [ebp+8]
call CAUTOVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009B
jmp .L_009C
.L_00B8:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00BA
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_009B
.L_00BA:
.L_00B9:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
jmp .L_009C
.L_009D:
mov eax, dword ptr [ebp-16]
add eax, 4294966990
cmp eax, 5
ja .L_00B8
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00BB+eax*4-1224]
.L_00BB:
.int .L_00A9
.int .L_00B2
.int .L_00B8
.int .L_00B7
.int .L_009F
.int .L_00A4
.L_009C:
cmp dword ptr [ENV+1096], 0
je .L_00BD
or dword ptr [ebp+8], 4
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp+8]
and eax, 16
test eax, eax
jne .L_00BF
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 312
jne .L_00C1
call HCHECKSCOPE
test eax, eax
jne .L_00C3
or dword ptr [ebp+8], 2
jmp .L_00C2
.L_00C3:
or dword ptr [ebp+8], 3
.L_00C2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_00C1:
.L_00C0:
jmp .L_00BE
.L_00BF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 342
jne .L_00C5
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_00C9
.L_00CA:
cmp dword ptr [ebp-16], 1
jne .L_00C8
.L_00C9:
or dword ptr [ebp+8], 512
.L_00C8:
.L_00C6:
.L_00C5:
.L_00C4:
.L_00BE:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_00CC
or dword ptr [ebp+8], 2
.L_00CC:
.L_00CB:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call CVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
.L_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CVARIABLEDECL, .-CVARIABLEDECL
.cfi_endproc
.balign 16

.globl HMAYBECONVERTEXPRTB2DIMTB
HMAYBECONVERTEXPRTB2DIMTB:
.type HMAYBECONVERTEXPRTB2DIMTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_016B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEXPRTBISCONST
add esp, 16
test eax, eax
je .L_016E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 4
test ebx, ebx
jne .L_0170
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HMAKEARRAYDIMTB
add esp, 16
.L_0170:
.L_016F:
jmp .L_016D
.L_016E:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 4
.L_016D:
.L_016C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBECONVERTEXPRTB2DIMTB, .-HMAYBECONVERTEXPRTB2DIMTB
.cfi_endproc
.balign 16

.globl HCOMPLAINABOUTELLIPSIS
HCOMPLAINABOUTELLIPSIS:
.type HCOMPLAINABOUTELLIPSIS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0171:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_0174
.L_0177:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .L_0179
sub esp, 4
push 0
push 0
push dword ptr [ebp+16]
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.L_0179:
.L_0178:
.L_0175:
inc dword ptr [ebp-4]
.L_0174:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_0177
.L_0176:
.L_0172:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPLAINABOUTELLIPSIS, .-HCOMPLAINABOUTELLIPSIS
.cfi_endproc
.balign 16

.globl CVARDECL
CVARDECL:
.type CVARDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_0221:
mov dword ptr [ebp-4], 0
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_0226
mov eax, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], eax
jne .L_0228
or dword ptr [ebp+8], 3
.L_0228:
.L_0227:
.L_0226:
.L_0225:
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-40], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_022A
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push dword ptr [ebp-96]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-96], 0
jne .L_022C
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.L_022C:
.L_022B:
sub esp, 4
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HMAYBECOMPLAINTYPEUSAGE
add esp, 16
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], -1
cmp dword ptr [ebp-96], 0
je .L_022E
mov dword ptr [ebp-96], 0
or dword ptr [ebp+8], 262144
.L_022E:
.L_022D:
.L_022A:
.L_0229:
.L_022F:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-40], 0
jne .L_0233
cmp dword ptr [ebp-96], 0
je .L_0235
mov dword ptr [ebp-96], 0
or dword ptr [ebp-100], 262144
jmp .L_0234
.L_0235:
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
test eax, eax
je .L_0236
or dword ptr [ebp-100], 262144
.L_0236:
.L_0234:
.L_0233:
.L_0232:
mov eax, dword ptr [ebp+16]
cmp eax, 310
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-100]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov dword ptr [ebp-56], eax
sub esp, 12
cmp dword ptr [ebp-56], 0
je .L_0237
mov dword ptr [ebp-104], 0
jmp .L_02CF
.L_0237:
mov dword ptr [ebp-104], 4
.L_02CF:
mov eax, dword ptr [ebp-104]
or eax, 114
or eax, 256
push eax
call CPARENTID
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-56]
je .L_023A
mov dword ptr [ebp-64], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_023C
mov dword ptr [ebp-64], -1
jmp .L_023B
.L_023C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 40
je .L_0240
.L_0241:
cmp dword ptr [ebp-116], 44
je .L_0240
.L_0242:
cmp dword ptr [ebp-116], 376
je .L_0240
.L_0243:
cmp dword ptr [ebp-116], 258
je .L_0240
.L_0244:
cmp dword ptr [ebp-116], 257
je .L_0240
.L_0245:
cmp dword ptr [ebp-116], 256
jne .L_023F
.L_0240:
jmp .L_023D
.L_023F:
mov dword ptr [ebp-64], -1
.L_0246:
.L_023D:
.L_023B:
cmp dword ptr [ebp-64], 0
je .L_0248
sub esp, 12
sub esp, 4
call HIDXINPARENSONLYEXPR
add esp, 4
push eax
call HCHECKDYNAMICARRAYEXPR
add esp, 16
mov dword ptr [ebp-24], eax
.L_0248:
.L_0247:
.L_023A:
.L_0239:
cmp dword ptr [ebp-24], 0
je .L_024A
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 129
push offset Lt_02D4
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-80], -2147483648
jmp .L_0249
.L_024A:
push dword ptr [ebp-56]
lea ebx, [ebp-80]
push ebx
push offset Lt_02D4
push dword ptr [ebp-20]
call HGETID
add esp, 16
mov dword ptr [ebp-8], eax
.L_0249:
mov dword ptr [ebp-48], 0
cmp dword ptr [ebp-40], 0
jne .L_024C
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov eax, dword ptr [ebp-80]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_024B
.L_024C:
cmp dword ptr [ebp-80], -2147483648
je .L_024E
sub esp, 12
push 0
push 1
push 0
push offset Lt_02D4
push 17
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-80], -2147483648
.L_024E:
.L_024D:
.L_024B:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp+20]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .L_0250
mov edx, dword ptr [ebp-100]
and edx, 262144
je .L_0252
sub esp, 4
push 0
push 0
push 322
call ERRREPORT
add esp, 16
and dword ptr [ebp-100], -262145
.L_0252:
.L_0251:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .L_0254
mov dword ptr [ebp-76], -1
or dword ptr [ebp-100], 4
jmp .L_0253
.L_0254:
sub esp, 4
push offset Lt_02D8
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-44], 0
je .L_0256
mov eax, dword ptr [ebp-100]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp-100]
and edx, 16
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and edx, ebx
or eax, edx
je .L_0258
sub esp, 4
push 0
push 0
push 136
call ERRREPORT
add esp, 16
mov dword ptr [ebp-76], -1
mov dword ptr [ebp-44], 0
.L_0258:
.L_0257:
jmp .L_0255
.L_0256:
or dword ptr [ebp-100], 4
.L_0255:
.L_0253:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_025A
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .L_0259
.L_025A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0259:
jmp .L_024F
.L_0250:
cmp dword ptr [ebp+16], 310
jne .L_025B
sub esp, 12
push 0
push 1
push 0
push offset Lt_02D4
push 63
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-76], -1
jmp .L_024F
.L_025B:
and dword ptr [ebp-100], -5
.L_024F:
mov eax, dword ptr [ebp-44]
and dword ptr [ebp-56], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp-100]
and eax, 48
test eax, eax
je .L_025D
call CALIASATTRIBUTE
mov dword ptr [ebp-84], eax
.L_025D:
.L_025C:
cmp dword ptr [ebp-40], 0
jne .L_025F
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_0261
cmp dword ptr [ebp-60], -2147483648
je .L_0263
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-60], -2147483648
.L_0263:
.L_0262:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-100]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
sub esp, 12
push 0
push dword ptr [ebp-116]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-116], 0
jne .L_0265
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.L_0265:
.L_0264:
sub esp, 4
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HMAYBECOMPLAINTYPEUSAGE
add esp, 16
mov dword ptr [ebp-36], 0
jmp .L_0260
.L_0261:
cmp dword ptr [ebp-60], -2147483648
jne .L_0266
mov eax, dword ptr [ENV+1040]
and eax, 4194304
test eax, eax
je .L_0268
sub esp, 12
push offset Lt_02D4
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov dword ptr [ebp-36], -1
.L_0268:
.L_0267:
cmp dword ptr [ebp-56], 0
je .L_026A
mov dword ptr [ebp-48], -1
jmp .L_0269
.L_026A:
cmp dword ptr [ebp-60], -2147483648
jne .L_026C
sub esp, 4
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HERRORDEFTYPENOTALLOWED
add esp, 16
.L_026C:
.L_026B:
.L_0269:
.L_0266:
.L_0260:
.L_025F:
.L_025E:
cmp dword ptr [ebp-24], 0
je .L_026E
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [eax+12]
mov dword ptr [ebp-12], edx
jmp .L_026D
.L_026E:
sub esp, 8
push dword ptr [ebp-56]
mov edx, dword ptr [ebp-80]
cmp edx, -2147483648
setne dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-48]
push dword ptr [ebp-60]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call HLOOKUPVARANDCHECKPARENT
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0270
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .L_0272
sub esp, 8
push dword ptr [ebp-56]
push dword ptr [ebp-12]
call HMAYBEBUILDFIELDACCESS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .L_0274
sub esp, 12
push dword ptr [ebp-24]
call ASTNEWNIDXARRAY
add esp, 4
push eax
call HCHECKDYNAMICARRAYEXPR
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0273
.L_0274:
mov dword ptr [ebp-12], 0
.L_0273:
.L_0272:
.L_0271:
.L_0270:
.L_026F:
.L_026D:
cmp dword ptr [ebp-48], 0
je .L_0276
cmp dword ptr [ebp-12], 0
je .L_0278
sub esp, 12
push dword ptr [ebp-12]
call SYMBISARRAY
add esp, 16
test eax, eax
je .L_027A
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+28]
and edx, 511
mov dword ptr [ebp-60], edx
mov edx, dword ptr [ebp-12]
mov eax, dword ptr [edx+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-72], ebx
mov dword ptr [ebp-68], edx
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 4
test edx, edx
jne .L_027C
mov edx, dword ptr [ebp-12]
mov ebx, dword ptr [edx+4]
and ebx, 16384
test ebx, ebx
jne .L_027E
sub esp, 12
push 0
push 1
push 0
push offset Lt_02D4
push 54
call ERRREPORTEX
add esp, 32
.L_027E:
.L_027D:
.L_027C:
.L_027B:
jmp .L_0279
.L_027A:
sub esp, 4
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call HERRORDEFTYPENOTALLOWED
add esp, 16
.L_0279:
jmp .L_0277
.L_0278:
mov ebx, dword ptr [ENV+1040]
and ebx, 4194304
test ebx, ebx
je .L_027F
jmp .L_0277
.L_027F:
sub esp, 4
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call HERRORDEFTYPENOTALLOWED
add esp, 16
.L_0277:
.L_0276:
.L_0275:
cmp dword ptr [ebp-44], 0
je .L_0281
cmp dword ptr [ebp+16], 308
jne .L_0283
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
jne .L_0285
cmp dword ptr [ebp-12], 0
je .L_0287
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 8
test edx, edx
je .L_0289
mov edx, dword ptr [ebp-12]
cmp dword ptr [edx+60], 0
je .L_028B
or dword ptr [ebp-100], 4
mov dword ptr [ebp-56], -1
.L_028B:
.L_028A:
.L_0289:
.L_0288:
.L_0287:
.L_0286:
.L_0285:
.L_0284:
.L_0283:
.L_0282:
push offset Lt_02DE
push offset Lt_02D8
push dword ptr [ebp-76]
lea edx, [ebp-100]
push edx
call HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov edx, dword ptr [ebp-100]
and edx, 4
je .L_028D
sub esp, 4
push 76
push offset Lt_02D8
push dword ptr [ebp-76]
call HCOMPLAINABOUTELLIPSIS
add esp, 16
jmp .L_028C
.L_028D:
sub esp, 12
mov edx, dword ptr [ebp-100]
and edx, 3
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-68]
push dword ptr [ebp-72]
push offset Lt_02E0
push dword ptr [ebp-76]
call SYMBCHECKARRAYSIZE
add esp, 32
test eax, eax
jne .L_028F
sub esp, 4
push 0
push 0
push 50
call ERRREPORT
add esp, 16
mov dword ptr [ebp-76], 1
mov dword ptr [Lt_02E0], 0
mov dword ptr [Lt_02E0+4], 0
mov dword ptr [Lt_02E0+8], 0
mov dword ptr [Lt_02E0+12], 0
.L_028F:
.L_028E:
.L_028C:
jmp .L_0280
.L_0281:
cmp dword ptr [ebp-76], 0
jne .L_0290
mov eax, dword ptr [ebp-100]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+244]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp-68], edx
mov ecx, -1
jg .L_02E2
jl .L_02E3
cmp dword ptr [ebp-72], ebx
ja .L_02E2
.L_02E3:
xor ecx, ecx
.L_02E2:
and eax, ecx
je .L_0292
push 0
push 1
push 0
push 24
call ERRREPORTWARN
add esp, 16
.L_0292:
.L_0291:
.L_0290:
.L_0280:
mov ecx, dword ptr [ebp-100]
and ecx, 8
je .L_0294
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call TYPEHASCTOR
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
mov ebx, eax
call TYPEHASDTOR
add esp, 16
or ebx, eax
je .L_0296
sub esp, 4
push 0
push -1
push 270
call ERRREPORT
add esp, 16
.L_0296:
.L_0295:
.L_0294:
.L_0293:
mov eax, dword ptr [ebp-100]
and eax, 4
je .L_0298
mov eax, dword ptr [ebp+16]
cmp eax, 310
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .L_029A
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_029C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0222
.L_029C:
.L_029B:
.L_029A:
.L_0299:
cmp dword ptr [ebp-12], 0
je .L_029E
sub esp, 12
push dword ptr [ebp-12]
call HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 16
.L_029E:
.L_029D:
.L_0298:
.L_0297:
sub esp, 12
push dword ptr [ebp+16]
push offset Lt_02DE
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
push dword ptr [ebp-100]
push dword ptr [ebp-36]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
push dword ptr [ebp-84]
push offset Lt_02D4
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call HADDVAR
add esp, 64
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp-12], 0
je .L_02A0
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .L_02A1
mov dword ptr [ebp-116], -1
jmp .L_02D0
.L_02A1:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-116], ebx
.L_02D0:
mov ebx, dword ptr [ebp-116]
mov dword ptr [ebp-52], ebx
sub esp, 12
push dword ptr [ebp-12]
call SYMBHASDEFCTOR
add esp, 16
mov dword ptr [ebp-108], eax
sub esp, 12
push dword ptr [ebp-12]
call SYMBHASDTOR
add esp, 16
mov dword ptr [ebp-112], eax
jmp .L_029F
.L_02A0:
mov dword ptr [ebp-52], 0
.L_029F:
cmp dword ptr [ebp+20], 0
jne .L_02A4
mov dword ptr [ebp-88], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .L_02A6
sub esp, 8
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINIT
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+1040]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_02A8
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 11
test eax, eax
jne .L_02AA
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-88], eax
sub esp, 4
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINITDEFAULT
add esp, 16
mov dword ptr [ebp-28], eax
.L_02AA:
.L_02A9:
.L_02A8:
.L_02A7:
jmp .L_02A5
.L_02A6:
cmp dword ptr [ebp-12], 0
je .L_02AC
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_02AE
sub esp, 4
push 0
push 0
push 320
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0222
.L_02AE:
.L_02AD:
sub esp, 12
push dword ptr [ebp-12]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .L_02B0
sub esp, 4
push 0
push 0
push 281
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0222
.L_02B0:
.L_02AF:
.L_02AC:
.L_02AB:
sub esp, 4
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINITDEFAULT
add esp, 16
mov dword ptr [ebp-28], eax
.L_02A5:
jmp .L_02A3
.L_02A4:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-88], 0
.L_02A3:
cmp dword ptr [ebp-12], 0
je .L_02B2
cmp dword ptr [ebp+16], 306
je .L_02B4
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-52], 0
jne .L_02B6
mov dword ptr [ebp-120], 0
sub esp, 8
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+20]
not ecx
and eax, ecx
push eax
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-120], ecx
cmp dword ptr [ebp-120], 0
je .L_02B8
sub esp, 4
push 0
mov ecx, dword ptr [ebp-120]
cmp dword ptr [ecx+56], 0
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-120]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.L_02B8:
.L_02B7:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-76]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_02BA
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 11
test eax, eax
jne .L_02BC
sub esp, 12
push dword ptr [ebp-116]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-120], 0
je .L_02BE
sub esp, 4
push 0
sub esp, 8
push 64
push 0
mov eax, dword ptr [ebp-120]
push dword ptr [eax+56]
push dword ptr [ebp-120]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-120]
mov dword ptr [eax+56], 0
.L_02BE:
.L_02BD:
.L_02BC:
.L_02BB:
.L_02BA:
.L_02B9:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 8
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
je .L_02C0
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call HFLUSHINITIALIZER
add esp, 16
mov dword ptr [ebp-116], eax
jmp .L_02BF
.L_02C0:
sub esp, 12
sub esp, 4
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call HFLUSHINITIALIZER
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-88], 0
je .L_02C2
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETVARHASDTOR
add esp, 16
test eax, eax
je .L_02C4
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.L_02C4:
.L_02C3:
sub esp, 4
push 0
sub esp, 8
push 64
push 0
push dword ptr [ebp-88]
push dword ptr [ebp-12]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.L_02C2:
.L_02C1:
.L_02BF:
.L_02B6:
.L_02B5:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .L_02C6
cmp dword ptr [ebp-24], 0
jne .L_02C8
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
.L_02C8:
.L_02C7:
sub esp, 12
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp+12]
push offset Lt_02D8
push dword ptr [ebp-76]
push dword ptr [ebp-24]
call RTLARRAYREDIM
add esp, 32
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 9
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
mov eax, dword ptr [ebp-52]
not eax
and ecx, eax
je .L_02CA
sub esp, 12
push dword ptr [ebp-32]
call HWRAPINSTATICFLAG
add esp, 16
mov dword ptr [ebp-32], eax
.L_02CA:
.L_02C9:
sub esp, 4
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.L_02C6:
.L_02C5:
sub esp, 12
push dword ptr [ebp-116]
call ASTADD
add esp, 16
.L_02B4:
.L_02B3:
.L_02B2:
.L_02B1:
cmp dword ptr [ebp+20], 0
je .L_02CC
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .L_0222
.L_02CC:
.L_02CB:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_02CE
jmp .L_0230
.L_02CE:
.L_02CD:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0231:
jmp .L_022F
.L_0230:
.L_0222:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CVARDECL, .-CVARDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02D4,129
.balign 4
	.lcomm	Lt_02F3,64

.section .data
.balign 4
Lt_02D8:
.int Lt_02F3
.int Lt_02F3
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1

.section .bss
.balign 4
	.lcomm	Lt_02E0,128

.section .data
.balign 4
Lt_02DE:
.int Lt_02E0
.int Lt_02E0
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl CARRAYDECL
CARRAYDECL:
.type CARRAYDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
push ebx
push esi
.L_0318:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
.L_031A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 8
jl .L_031E
sub esp, 4
push 0
push 0
push 49
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_031B
.L_031E:
.L_031D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx]
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .L_0320
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_031F
.L_0320:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .L_0321
sub esp, 4
push 0
push 0
push 94
call ERRREPORT
add esp, 16
jmp .L_031F
.L_0321:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call CARRAYDIMENSION
add esp, 16
.L_031F:
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
.L_031C:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .L_031A
.L_031B:
.L_0319:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CARRAYDECL, .-CARRAYDECL
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
HEXPRTBISCONST:
.type HEXPRTBISCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00CD:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00D0
.L_00D3:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 16
je .L_00D5
mov dword ptr [ebp-4], 0
jmp .L_00CE
jmp .L_00D4
.L_00D5:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .L_00D6
jmp .L_00D4
.L_00D6:
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
cmp dword ptr [ebx], 16
je .L_00D7
mov dword ptr [ebp-4], 0
jmp .L_00CE
.L_00D7:
.L_00D4:
.L_00D1:
inc dword ptr [ebp-8]
.L_00D0:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_00D3
.L_00D2:
mov dword ptr [ebp-4], -1
.L_00CE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEXPRTBISCONST, .-HEXPRTBISCONST
.cfi_endproc
.balign 16
HCHECKEXTERNVAR:
.type HCHECKEXTERNVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
cmp ebx, dword ptr [ebp+16]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+20]
cmp ecx, dword ptr [eax+32]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .L_00DB
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00DB:
.L_00DA:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+32]
and esi, 262144
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
cmp ebx, esi
je .L_00DD
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00DD:
.L_00DC:
mov esi, dword ptr [ebp+16]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 18
je .L_00E1
.L_00E2:
cmp dword ptr [ebp-8], 4
je .L_00E1
.L_00E3:
cmp dword ptr [ebp-8], 7
jne .L_00E0
.L_00E1:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [ebp+28], ebx
jne .L_036B
cmp dword ptr [ebp+24], eax
je .L_00E5
.L_036B:
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00E5:
.L_00E4:
.L_00E0:
.L_00DE:
mov eax, dword ptr [ebp+32]
and eax, 4
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 4
cmp eax, esi
je .L_00E7
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 54
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00E7:
.L_00E6:
mov esi, dword ptr [ebp+36]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
or esi, ebx
je .L_00E9
mov ebx, dword ptr [ebp+36]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp ebx, eax
je .L_00EB
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00EB:
.L_00EA:
mov dword ptr [ebp-4], -1
jmp .L_00D9
.L_00E9:
.L_00E8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+36], ebx
je .L_00ED
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call ERRREPORTEX
add esp, 32
jmp .L_00D9
.L_00ED:
.L_00EC:
mov ebx, dword ptr [ebp+32]
and ebx, 4
test ebx, ebx
jne .L_00EF
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+36]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .L_00F1
.L_00F4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+40]
add eax, dword ptr [ebx]
mov ecx, dword ptr [esi]
mov ebx, dword ptr [esi+4]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jne .L_0370
cmp ecx, dword ptr [eax]
jne .L_0370
.L_0371:
xor esi, esi
.L_0370:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov eax, dword ptr [ebp+40]
add ecx, dword ptr [eax]
mov edi, dword ptr [ebx+8]
mov eax, dword ptr [ebx+12]
cmp eax, dword ptr [ecx+12]
mov ebx, -1
jne .L_0372
cmp edi, dword ptr [ecx+8]
jne .L_0372
.L_0373:
xor ebx, ebx
.L_0372:
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov edi, dword ptr [ebp+40]
add ecx, dword ptr [edi]
cmp dword ptr [ecx+12], 2147483648
mov edi, -1
jne .L_0374
cmp dword ptr [ecx+8], 0
jne .L_0374
.L_0375:
xor edi, edi
.L_0374:
and ebx, edi
or esi, ebx
je .L_00F6
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 37
call ERRREPORTEX
add esp, 32
.L_00F6:
.L_00F5:
.L_00F2:
inc dword ptr [ebp-8]
.L_00F1:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .L_00F4
.L_00F3:
.L_00EF:
.L_00EE:
mov dword ptr [ebp-4], -1
.L_00D9:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKEXTERNVAR, .-HCHECKEXTERNVAR
.cfi_endproc
.balign 16
HCHECKEXTERNVARANDRECOVER:
.type HCHECKEXTERNVARANDRECOVER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_00F7:
sub esp, 12
push dword ptr [ebp+40]
mov eax, dword ptr [ebp+32]
push dword ptr [eax]
push dword ptr [ebp+28]
mov eax, dword ptr [ebp+24]
push dword ptr [eax+4]
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKEXTERNVAR
add esp, 48
test eax, eax
jne .L_00FA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp+28]
and esi, -262149
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262148
or esi, ebx
mov dword ptr [ebp+28], esi
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+32]
mov ecx, dword ptr [esi+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
and ecx, 4
je .L_00FC
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], 0
jmp .L_00FB
.L_00FC:
mov ecx, dword ptr [ebp+32]
cmp dword ptr [ecx], 0
jle .L_00FD
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], -1
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ecx]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_00FF
.L_0102:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov ebx, dword ptr [ebp+40]
add ecx, dword ptr [ebx]
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+4]
mov dword ptr [ecx], eax
mov dword ptr [ecx+4], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+40]
add ebx, dword ptr [eax]
mov esi, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebx+8], esi
mov dword ptr [ebx+12], eax
.L_0100:
inc dword ptr [ebp-4]
.L_00FF:
mov esi, dword ptr [ebp-8]
cmp dword ptr [ebp-4], esi
jle .L_0102
.L_0101:
.L_00FD:
.L_00FB:
.L_00FA:
.L_00F9:
.L_00F8:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKEXTERNVARANDRECOVER, .-HCHECKEXTERNVARANDRECOVER
.cfi_endproc
.balign 16
HADDVAR:
.type HADDVAR, @function
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
.L_0103:
cmp dword ptr [ebp+8], 0
je .L_0106
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
cmp dword ptr [PARSER+100], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0108
sub esp, 12
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCHECKEXTERNVARANDRECOVER
add esp, 48
mov eax, dword ptr [ebp+8]
and dword ptr [eax+4], -17
mov eax, dword ptr [ebp+8]
or dword ptr [eax+4], 33
mov eax, dword ptr [ebp+44]
cmp dword ptr [eax], 0
je .L_010A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -17
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+4], 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
jne .L_010C
mov eax, dword ptr [ebp-12]
and dword ptr [eax+4], -33
jmp .L_010B
.L_010C:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+4], 32
.L_010B:
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+56], eax
.L_010A:
.L_0109:
mov dword ptr [ebp-8], -1
jmp .L_0107
.L_0108:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_010D
sub esp, 12
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCHECKEXTERNVARANDRECOVER
add esp, 48
mov dword ptr [ebp-8], -1
jmp .L_0107
.L_010D:
mov eax, dword ptr [ebp+40]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+48]
and eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 16388
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov ecx, dword ptr [ebp+56]
cmp ecx, 310
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 8
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .L_010E
mov dword ptr [ebp-8], -1
jmp .L_0107
.L_010E:
mov dword ptr [ebp-8], 0
.L_0107:
jmp .L_0105
.L_0106:
mov dword ptr [ebp-8], 0
.L_0105:
cmp dword ptr [ebp-8], 0
je .L_0110
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .L_0112
mov eax, dword ptr [ebp+44]
mov ecx, dword ptr [eax]
cmp ecx, -1
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+60]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .L_0114
mov esi, dword ptr [ebp+44]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov dword ptr [ecx+60], eax
.L_0114:
.L_0113:
.L_0112:
.L_0111:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .L_0116
sub esp, 8
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
push dword ptr [ebp+8]
call SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 16
.L_0116:
.L_0115:
jmp .L_010F
.L_0110:
cmp dword ptr [ebp+12], 0
je .L_0118
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call ERRREPORTEX
add esp, 32
.L_0118:
.L_0117:
cmp dword ptr [ebp+36], 0
je .L_011A
or dword ptr [ebp+40], 1048576
.L_011A:
.L_0119:
sub esp, 8
mov ecx, dword ptr [ENV+1040]
and ecx, 2
test ecx, ecx
je .L_011B
mov dword ptr [ebp-12], 0
jmp .L_0376
.L_011B:
mov dword ptr [ebp-12], 2
.L_0376:
push dword ptr [ebp-12]
push dword ptr [ebp+40]
push dword ptr [ebp+52]
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+32]
push dword ptr [ecx+4]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+24]
push dword ptr [ecx]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .L_011E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 57
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
je .L_0120
cmp dword ptr [ebp+16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [esi], eax
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_0122
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
call PARSERISGLOBALASMKEYWORD
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-32], 0
je .L_0125
sub esp, 12
push 0
push 1
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp+16]
push 47
call ERRREPORTWARNEX
add esp, 32
.L_0125:
.L_0124:
.L_0122:
.L_0121:
.L_0120:
.L_011F:
.L_011E:
.L_011D:
.L_010F:
cmp dword ptr [ebp+8], 0
jne .L_0128
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call ERRREPORTEX
add esp, 32
.L_0128:
.L_0127:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0104:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDVAR, .-HADDVAR
.cfi_endproc
.balign 16
HCHECKFORIDTOKEN:
.type HCHECKFORIDTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0129:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_012C
.L_012E:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_0130
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .L_0132
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .L_0134
mov dword ptr [ebp-4], 90
.L_0134:
.L_0133:
.L_0132:
.L_0131:
.L_0130:
.L_012F:
jmp .L_012B
.L_0135:
cmp dword ptr [ENV+136], 3
je .L_0137
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [PARSER+100], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0139
mov dword ptr [ebp-4], 4
.L_0139:
.L_0138:
.L_0137:
.L_0136:
jmp .L_012B
.L_013A:
cmp dword ptr [ENV+136], 3
je .L_013C
mov dword ptr [ebp-4], 4
jmp .L_013B
.L_013C:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
jne .L_013E
mov dword ptr [ebp-4], 4
.L_013E:
.L_013D:
.L_013B:
jmp .L_012B
.L_013F:
mov dword ptr [ebp-4], 14
jmp .L_012B
.L_012C:
cmp dword ptr [ebp-8], 5
ja .L_013F
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_0140+ebx*4]
.L_0140:
.int .L_012E
.int .L_013A
.int .L_0135
.int .L_013F
.int .L_013F
.int .L_013A
.L_012B:
.L_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKFORIDTOKEN, .-HCHECKFORIDTOKEN
.cfi_endproc
.balign 16
HGETID:
.type HGETID, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0141:
sub esp, 12
push dword ptr [ebp+8]
call HCHECKFORIDTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0144
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+8], 0
jne .L_0146
mov ecx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx+16548]
mov ecx, dword ptr [eax+4116]
mov dword ptr [ebp-4], ecx
jmp .L_0145
.L_0146:
push dword ptr [ebp+20]
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.L_0145:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_0143
.L_0144:
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0143:
.L_0142:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETID, .-HGETID
.cfi_endproc
.balign 16
HLOOKUPVAR:
.type HLOOKUPVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0147:
cmp dword ptr [ebp+8], 0
jne .L_014A
jmp .L_0148
.L_014A:
.L_0149:
cmp dword ptr [ebp+16], 0
je .L_014C
mov eax, dword ptr [ENV+1040]
and eax, 4194304
test eax, eax
je .L_014E
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDVARBYDEFTYPE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_014D
.L_014E:
sub esp, 8
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0150
sub esp, 8
push 12
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
.L_0150:
.L_014F:
.L_014D:
jmp .L_014B
.L_014C:
cmp dword ptr [ebp+20], 0
je .L_0151
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDVARBYSUFFIX
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_014B
.L_0151:
sub esp, 4
push dword ptr [ebp+12]
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASSANDTYPE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0153
sub esp, 4
push dword ptr [ebp+12]
push 12
push dword ptr [ebp+8]
call SYMBFINDBYCLASSANDTYPE
add esp, 16
mov dword ptr [ebp-8], eax
.L_0153:
.L_0152:
.L_014B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0148:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOOKUPVAR, .-HLOOKUPVAR
.cfi_endproc
.balign 16
HLOOKUPVARANDCHECKPARENT:
.type HLOOKUPVARANDCHECKPARENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HLOOKUPVAR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
lea ebx, [SYMB+98352]
cmp dword ptr [ebp+8], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0157
cmp dword ptr [ebp-8], 0
je .L_0159
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+4]
and eax, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+140]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+28]
not ebx
and eax, ebx
je .L_015B
sub esp, 4
push 0
push 0
push 158
call ERRREPORT
add esp, 16
.L_015B:
.L_015A:
jmp .L_0158
.L_0159:
sub esp, 4
push 0
push -1
push 131
call ERRREPORT
add esp, 16
.L_0158:
jmp .L_0156
.L_0157:
cmp dword ptr [ebp-8], 0
je .L_015D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
cmp ebx, dword ptr [SYMB+98528]
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+28]
not ebx
and eax, ebx
je .L_015F
mov dword ptr [ebp-8], 0
.L_015F:
.L_015E:
.L_015D:
.L_015C:
.L_0156:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOOKUPVARANDCHECKPARENT, .-HLOOKUPVARANDCHECKPARENT
.cfi_endproc
.balign 16
HMAKEARRAYDIMTB:
.type HMAKEARRAYDIMTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0160:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_0163
.L_0166:
sub esp, 8
push 8
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call ASTCONSTFLUSHTOINT
add esp, 16
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+12]
add eax, 36
mov edx, dword ptr [eax]
imul edx, dword ptr [ebp-4]
sal edx, 2
mov eax, dword ptr [ebp+12]
add edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0168
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 2147483648
jmp .L_0167
.L_0168:
sub esp, 8
push 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 16
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx+8], eax
mov dword ptr [ebx+12], edx
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ebx, dword ptr [ebp+16]
add edx, dword ptr [ebx]
mov ecx, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
cmp ebx, dword ptr [edx+4]
mov eax, -1
jl .L_038C
jg .L_038D
cmp ecx, dword ptr [edx]
jb .L_038C
.L_038D:
xor eax, eax
.L_038C:
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ecx, dword ptr [ebp+16]
add edx, dword ptr [ecx]
cmp dword ptr [edx+12], 2147483648
mov ecx, -1
jne .L_038F
cmp dword ptr [edx+8], 0
je .L_038E
.L_038F:
xor ecx, ecx
.L_038E:
or eax, ecx
je .L_016A
sub esp, 4
push 0
push 0
push 182
call ERRREPORT
add esp, 16
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx+8], 0
mov dword ptr [ecx+12], 0
.L_016A:
.L_0169:
.L_0167:
.L_0164:
inc dword ptr [ebp-4]
.L_0163:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_0166
.L_0165:
.L_0161:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAKEARRAYDIMTB, .-HMAKEARRAYDIMTB
.cfi_endproc
.balign 16
HVARINITDEFAULT:
.type HVARINITDEFAULT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_017A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_017D
jmp .L_017B
.L_017D:
.L_017C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_017F
jmp .L_017B
.L_017F:
.L_017E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_0181
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
jmp .L_017B
.L_0181:
.L_0180:
cmp dword ptr [ebp+16], 0
je .L_0183
mov eax, dword ptr [ebp+12]
not eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 12
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0185
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call SYMBGETCOMPDEFCTOR
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_0187
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.L_0187:
.L_0186:
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDTYPEINICTORLIST
add esp, 16
mov dword ptr [ebp-4], eax
.L_0185:
.L_0184:
jmp .L_0182
.L_0183:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
test eax, eax
je .L_0189
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.L_0189:
.L_0188:
.L_0182:
.L_017B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVARINITDEFAULT, .-HVARINITDEFAULT
.cfi_endproc
.balign 16
HCHECKVARSUSEDINGLOBALINIT:
.type HCHECKVARSUSEDINGLOBALINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_018A:
mov dword ptr [ebp-4], 12288
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_018D
or dword ptr [ebp-4], 2
.L_018D:
.L_018C:
sub esp, 8
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .L_018F
sub esp, 4
push 0
push 0
push 272
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.L_018F:
.L_018E:
.L_018B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKVARSUSEDINGLOBALINIT, .-HCHECKVARSUSEDINGLOBALINIT
.cfi_endproc
.balign 16
HVALIDATEGLOBALVARINIT:
.type HVALIDATEGLOBALVARINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0190:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 3
test ebx, ebx
jne .L_0193
jmp .L_0191
.L_0193:
.L_0192:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0195
sub esp, 4
push 0
push -1
push 87
call ERRREPORT
add esp, 16
sub esp, 12
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
jmp .L_0191
.L_0195:
.L_0194:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
not eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0197
sub esp, 12
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call ASTTYPEINIISCONST
add esp, 16
test eax, eax
jne .L_0199
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .L_0191
.L_0199:
.L_0198:
.L_0197:
.L_0196:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKVARSUSEDINGLOBALINIT
add esp, 16
.L_0191:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVALIDATEGLOBALVARINIT, .-HVALIDATEGLOBALVARINIT
.cfi_endproc
.balign 16
HBUILDFAKEBYREFINITEXPR:
.type HBUILDFAKEBYREFINITEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_019A:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
push eax
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.L_019B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDFAKEBYREFINITEXPR, .-HBUILDFAKEBYREFINITEXPR
.cfi_endproc
.balign 16
HRESOLVEREFTOREFINITIALIZER:
.type HRESOLVEREFTOREFINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_019C:
cmp dword ptr [ebp+12], 0
je .L_019E
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .L_0394
.L_019E:
mov dword ptr [ebp-16], 0
.L_0394:
cmp dword ptr [ebp-16], 0
je .L_01A1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
je .L_01A2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_0395
.L_01A2:
mov dword ptr [ebp-20], 0
.L_0395:
cmp dword ptr [ebp-20], 0
je .L_01A5
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+12], 0
je .L_01A6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0396
.L_01A6:
mov dword ptr [ebp-24], 0
.L_0396:
cmp dword ptr [ebp-24], 0
je .L_01A8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_0397
.L_01A8:
mov dword ptr [ebp-28], 0
.L_0397:
cmp dword ptr [ebp-28], 0
je .L_01AB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_01AC
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .L_0398
.L_01AC:
mov dword ptr [ebp-32], 0
.L_0398:
cmp dword ptr [ebp-32], 0
je .L_01AF
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
je .L_01B0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 38
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0399
.L_01B0:
mov dword ptr [ebp-36], 0
.L_0399:
cmp dword ptr [ebp-36], 0
je .L_01B3
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01B5
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 23
jne .L_01B8
.L_01B9:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_01BA
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 17
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_039A
.L_01BA:
mov dword ptr [ebp-44], 0
.L_039A:
cmp dword ptr [ebp-44], 0
je .L_01BD
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .L_01BF
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp+12], eax
.L_01BF:
.L_01BE:
.L_01BD:
.L_01BC:
.L_01B8:
.L_01B6:
.L_01B5:
.L_01B4:
.L_01B3:
.L_01B2:
.L_01AF:
.L_01AE:
.L_01AB:
.L_01AA:
.L_01A5:
.L_01A4:
.L_01A1:
.L_01A0:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_019D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRESOLVEREFTOREFINITIALIZER, .-HRESOLVEREFTOREFINITIALIZER
.cfi_endproc
.balign 16
HCHECKANDBUILDBYREFINITIALIZER:
.type HCHECKANDBUILDBYREFINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01C0:
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTCHECKBYREFASSIGN
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTCANTAKEADDROF
add esp, 16
and dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01C3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HBUILDFAKEBYREFINITEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .L_01C2
.L_01C3:
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HRESOLVEREFTOREFINITIALIZER
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.L_01C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-16], ecx
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 8
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-20]
call ASTTYPEINIEND
add esp, 16
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_01C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKANDBUILDBYREFINITIALIZER, .-HCHECKANDBUILDBYREFINITIALIZER
.cfi_endproc
.balign 16
HVARINIT:
.type HVARINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01C4:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .L_01C7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .L_01C6
.L_01C7:
mov dword ptr [ebp-8], 0
.L_01C6:
mov ebx, dword ptr [ebp-8]
and ebx, 24
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+12]
je .L_01C9
sub esp, 4
push 0
push 0
push 135
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_01C5
.L_01C9:
.L_01C8:
mov ebx, dword ptr [ENV+1040]
and ebx, 128
test ebx, ebx
jne .L_01CB
sub esp, 4
push 0
push 146
push 128
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .L_01C5
.L_01CB:
.L_01CA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .L_01CD
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .L_01C5
.L_01CD:
.L_01CC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .L_01CF
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_01D1
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_01C5
.L_01D1:
.L_01D0:
sub esp, 8
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCHECKANDBUILDBYREFINITIALIZER
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01C5
.L_01CF:
.L_01CE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .L_01D3
sub esp, 12
push dword ptr [ebp+8]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .L_01D5
sub esp, 4
push 0
push 0
push 280
call ERRREPORT
add esp, 16
jmp .L_01C5
.L_01D5:
.L_01D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .L_01D7
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .L_01D6
.L_01D7:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2048
.L_01D6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_01D9
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_01C5
.L_01D9:
.L_01D8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_01C5
.L_01D3:
.L_01D2:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_01DB
mov dword ptr [ebp-4], 0
jmp .L_01C5
.L_01DB:
.L_01DA:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_01C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVARINIT, .-HVARINIT
.cfi_endproc
.balign 16
HFLUSHDECL:
.type HFLUSHDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01DC:
mov eax, dword ptr [ENV+1040]
and eax, 2
test eax, eax
je .L_01DF
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01DE
.L_01DF:
sub esp, 12
push dword ptr [ebp+8]
call ASTADDUNSCOPED
add esp, 16
mov dword ptr [ebp-4], 0
.L_01DE:
.L_01DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHDECL, .-HFLUSHDECL
.cfi_endproc
.balign 16
HWRAPINSTATICFLAG:
.type HWRAPINSTATICFLAG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_01E0:
lea eax, [ebp-24]
mov dword ptr [ebp-60], eax
lea eax, [ebp-24]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 16
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 49
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 8
push 0
push 2
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push 8
push 0
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
or dword ptr [eax+12], 16
sub esp, 8
push -1
push dword ptr [ebp-64]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-68], eax
sub esp, 4
push 0
sub esp, 8
push -1
push 0
push dword ptr [ebp-68]
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
push dword ptr [ebp-64]
call ASTNEWVAR
add esp, 24
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 12
push 0
push 1
push dword ptr [ebp-64]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 4
push 0
call ASTDTORLISTFLUSH
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-68]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.L_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HWRAPINSTATICFLAG, .-HWRAPINSTATICFLAG
.cfi_endproc
.balign 16
HCALLSTATICCTOR:
.type HCALLSTATICCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_01E3:
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
je .L_01E6
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-12], eax
.L_01E6:
.L_01E5:
cmp dword ptr [ebp+20], 0
je .L_01E8
sub esp, 12
push dword ptr [ebp+8]
call ASTPROCADDSTATICINSTANCE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-16]
call ASTBUILDPROCADDROF
add esp, 4
push eax
call RTLATEXIT
add esp, 8
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
.L_01E8:
.L_01E7:
cmp dword ptr [ebp-12], 0
je .L_01EA
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-12]
call HWRAPINSTATICFLAG
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.L_01EA:
.L_01E9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01E4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALLSTATICCTOR, .-HCALLSTATICCTOR
.cfi_endproc
.balign 16
HCALLGLOBALCTOR:
.type HCALLGLOBALCTOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01EB:
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .L_01EE
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTPROCADDGLOBALINSTANCE
add esp, 16
.L_01EE:
.L_01ED:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_01EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCALLGLOBALCTOR, .-HCALLGLOBALCTOR
.cfi_endproc
.balign 16
HFLUSHINITIALIZER:
.type HFLUSHINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp+20]
je .L_01F2
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBGETCOMPDTOR1
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_01F4
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.L_01F4:
.L_01F3:
.L_01F2:
.L_01F1:
cmp dword ptr [ebp+16], 0
jne .L_01F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
je .L_01F8
cmp dword ptr [ebp+20], 0
je .L_01FA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .L_01FC
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_01FB
.L_01FC:
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp+12], eax
.L_01FB:
.L_01FA:
.L_01F9:
.L_01F8:
.L_01F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_01F0
.L_01F6:
.L_01F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
jne .L_01FE
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 4
push 0
sub esp, 8
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01F0
.L_01FE:
.L_01FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
not eax
or ebx, eax
je .L_0200
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
not ebx
or eax, ebx
je .L_0202
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01F0
.L_0202:
.L_0201:
mov dword ptr [ebp+16], 0
.L_0200:
.L_01FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0204
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0203
.L_0204:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.L_0203:
.L_01F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHINITIALIZER, .-HFLUSHINITIALIZER
.cfi_endproc
.balign 16
HIDXINPARENSONLYEXPR:
.type HIDXINPARENSONLYEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0205:
mov eax, dword ptr [PARSER+152]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+152], 4096
jmp .L_0207
.L_0208:
and dword ptr [PARSER+152], -4097
.L_0207:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .L_020A
or dword ptr [PARSER+152], 4096
jmp .L_0209
.L_020A:
and dword ptr [PARSER+152], -4097
.L_0209:
.L_0206:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HIDXINPARENSONLYEXPR, .-HIDXINPARENSONLYEXPR
.cfi_endproc
.balign 16
HCHECKDYNAMICARRAYEXPR:
.type HCHECKDYNAMICARRAYEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_020B:
cmp dword ptr [ebp+8], 0
je .L_020D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_03AF
.L_020D:
mov dword ptr [ebp-8], 0
.L_03AF:
cmp dword ptr [ebp-8], 0
je .L_0210
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp+8], eax
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
je .L_0212
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_0214
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .L_0216
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .L_020C
.L_0216:
.L_0215:
.L_0214:
.L_0213:
.L_0212:
.L_0211:
.L_0210:
.L_020F:
sub esp, 4
push 0
push -1
push 54
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.L_020C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKDYNAMICARRAYEXPR, .-HCHECKDYNAMICARRAYEXPR
.cfi_endproc
.balign 16
HERRORDEFTYPENOTALLOWED:
.type HERRORDEFTYPENOTALLOWED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0217:
sub esp, 4
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBCALCLEN
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.L_0218:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HERRORDEFTYPENOTALLOWED, .-HERRORDEFTYPENOTALLOWED
.cfi_endproc
.balign 16
HMAYBEBUILDFIELDACCESS:
.type HMAYBEBUILDFIELDACCESS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0219:
cmp dword ptr [ebp+12], 0
jne .L_021C
jmp .L_021A
.L_021C:
.L_021B:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .L_021E
jmp .L_021A
.L_021E:
.L_021D:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0220
jmp .L_021A
.L_0220:
.L_021F:
push 0
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.L_021A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAYBEBUILDFIELDACCESS, .-HMAYBEBUILDFIELDACCESS
.cfi_endproc
.balign 16
HMATCHELLIPSIS:
.type HMATCHELLIPSIS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_02F4:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_02F7
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_02F9
sub esp, 8
push 0
push 2
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_02FB
sub esp, 8
push 0
push 3
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 44
je .L_02FF
.L_0300:
cmp dword ptr [ebp-8], 41
je .L_02FF
.L_0301:
cmp dword ptr [ebp-8], 284
jne .L_02FE
.L_02FF:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_02FE:
.L_02FC:
.L_02FB:
.L_02FA:
.L_02F9:
.L_02F8:
.L_02F7:
.L_02F6:
.L_02F5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCHELLIPSIS, .-HMATCHELLIPSIS
.cfi_endproc
.balign 16
HINTEXPR:
.type HINTEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0302:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0305
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_0307
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .L_0306
.L_0307:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-8], 0
.L_0306:
jmp .L_0304
.L_0305:
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
je .L_0309
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_0309:
.L_0308:
.L_0304:
cmp dword ptr [ebp-8], 0
jne .L_030B
cmp dword ptr [ebp+8], 0
je .L_030D
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_030C
.L_030D:
push 0
push 8
mov ebx, dword ptr [ENV+1076]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.L_030C:
.L_030B:
.L_030A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0303:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINTEXPR, .-HINTEXPR
.cfi_endproc
.balign 16
CARRAYDIMENSION:
.type CARRAYDIMENSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
push ebx
push esi
.L_030E:
call HMATCHELLIPSIS
test eax, eax
je .L_0311
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
jmp .L_0310
.L_0311:
sub esp, 12
push 0
call HINTEXPR
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.L_0310:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
jne .L_0313
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
cmp dword ptr [ecx], 0
jne .L_0315
sub esp, 4
push 0
push 0
push 282
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
.L_0315:
.L_0314:
call HMATCHELLIPSIS
test eax, eax
je .L_0317
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx+4], 0
jmp .L_0316
.L_0317:
sub esp, 12
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
push dword ptr [ebx]
call HINTEXPR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov esi, dword ptr [ecx]
imul esi, dword ptr [ebx]
sal esi, 2
mov ebx, dword ptr [ebp+12]
add esi, dword ptr [ebx]
mov dword ptr [esi+4], eax
.L_0316:
jmp .L_0312
.L_0313:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [eax]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx+4], eax
push 0
push 8
mov ecx, dword ptr [ENV+1076]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.L_0312:
.L_030F:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CARRAYDIMENSION, .-CARRAYDIMENSION
.cfi_endproc
.balign 16
HBUILDAUTOVARINITIALIZER:
.type HBUILDAUTOVARINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0325:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
test eax, eax
jne .L_0328
sub esp, 8
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
jmp .L_0327
.L_0328:
lea eax, [ebp-12]
push eax
sub esp, 8
push dword ptr [ebp+12]
call CBYDESCARRAYARGPARENS
add esp, 12
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .L_032A
cmp dword ptr [ebp-12], 0
je .L_032C
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINIADDCTORCALL
add esp, 32
jmp .L_032B
.L_032C:
sub esp, 8
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
.L_032B:
.L_032A:
.L_0329:
.L_0327:
sub esp, 8
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0326:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HBUILDAUTOVARINITIALIZER, .-HBUILDAUTOVARINITIALIZER
.cfi_endproc
.balign 16
HCHECKANDBUILDAUTOVARINITIALIZER:
.type HCHECKANDBUILDAUTOVARINITIALIZER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_032D:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDAUTOVARINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_032E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKANDBUILDAUTOVARINITIALIZER, .-HCHECKANDBUILDAUTOVARINITIALIZER
.cfi_endproc
.balign 16
CAUTOVARDECL:
.type CAUTOVARDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_032F:
mov eax, dword ptr [ENV+1040]
and eax, 2048
test eax, eax
jne .L_0333
sub esp, 4
push 0
push 150
push 2048
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0330
.L_0333:
.L_0332:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0335
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0330
.L_0335:
.L_0334:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 312
jne .L_0337
call HCHECKSCOPE
test eax, eax
jne .L_0339
or dword ptr [ebp+8], 2
jmp .L_0338
.L_0339:
or dword ptr [ebp+8], 3
.L_0338:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.L_0337:
.L_0336:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .L_033B
or dword ptr [ebp+8], 2
.L_033B:
.L_033A:
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
je .L_033D
mov ebx, dword ptr [ENV+1032]
cmp dword ptr [PARSER+108], ebx
jne .L_033F
or dword ptr [ebp+8], 3
.L_033F:
.L_033E:
.L_033D:
.L_033C:
.L_0340:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ebx
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
test eax, eax
je .L_0344
or dword ptr [ebp-12], 262144
.L_0344:
.L_0343:
sub esp, 12
push 374
call CPARENTID
add esp, 16
mov dword ptr [ebp-4], eax
push 0
lea eax, [ebp-16]
push eax
push offset Lt_03B9
push dword ptr [ebp-4]
call HGETID
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -2147483648
je .L_0346
sub esp, 12
push 0
push 1
push 0
push offset Lt_03B9
push 17
call ERRREPORTEX
add esp, 32
.L_0346:
.L_0345:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_0348
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.L_0348:
.L_0347:
sub esp, 8
push 0
push 0
push -1
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HLOOKUPVARANDCHECKPARENT
add esp, 32
mov dword ptr [ebp-8], eax
call CASSIGNTOKEN
test eax, eax
jne .L_034A
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.L_034A:
.L_0349:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
and eax, 262144
test eax, eax
jne .L_034D
cmp dword ptr [ebp-8], 0
je .L_034B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .L_03B8
.L_034B:
mov dword ptr [ebp-28], 0
.L_03B8:
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .L_03B7
.L_034D:
mov dword ptr [ebp-32], -1
.L_03B7:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_0350
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_034F
.L_0350:
call CEXPRESSION
mov dword ptr [ebp-24], eax
.L_034F:
cmp dword ptr [ebp-24], 0
jne .L_0352
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
cmp dword ptr [ebp-36], 0
je .L_0354
sub esp, 8
push 0
push 8
call HBUILDFAKEBYREFINITEXPR
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0353
.L_0354:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.L_0353:
.L_0352:
.L_0351:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-36], 0
jne .L_0356
mov eax, dword ptr [ebp-40]
and eax, 511
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 7
jne .L_0359
.L_035A:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-40], 8
mov dword ptr [ebp-44], 0
jmp .L_0357
.L_0359:
cmp dword ptr [ebp-64], 4
je .L_035C
.L_035D:
cmp dword ptr [ebp-64], 18
jne .L_035B
.L_035C:
mov dword ptr [ebp-40], 17
.L_035B:
.L_0357:
.L_0356:
.L_0355:
sub esp, 12
push 309
push offset Lt_03BD
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
push dword ptr [ebp-12]
push 0
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call SYMBCALCLEN
add esp, 12
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
lea eax, [ebp-52]
push eax
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push 0
push offset Lt_03B9
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HADDVAR
add esp, 64
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0362
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 262144
test edx, edx
je .L_0364
sub esp, 8
lea edx, [ebp-24]
push edx
push dword ptr [ebp-8]
call HCHECKANDBUILDBYREFINITIALIZER
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_0363
.L_0364:
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call HCHECKANDBUILDAUTOVARINITIALIZER
add esp, 16
mov dword ptr [ebp-24], eax
.L_0363:
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 8
sub esp, 12
sub esp, 4
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASDTOR
add esp, 16
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-64]
push dword ptr [ebp-8]
call HFLUSHINITIALIZER
add esp, 20
push eax
call ASTADD
add esp, 16
.L_0362:
.L_0361:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0366
jmp .L_0341
.L_0366:
.L_0365:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0342:
jmp .L_0340
.L_0341:
.L_0330:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CAUTOVARDECL, .-CAUTOVARDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_03BE,128

.section .data
.balign 4
Lt_03BD:
.int Lt_03BE
.int Lt_03BE
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .bss
.balign 4
	.lcomm	Lt_03B9,129
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
