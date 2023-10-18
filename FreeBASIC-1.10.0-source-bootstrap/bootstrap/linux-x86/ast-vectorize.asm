	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTPROCVECTORIZE
ASTPROCVECTORIZE:
.type ASTPROCVECTORIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_017A:
sub esp, 12
push dword ptr [ebp+8]
call HGETNEXTTREE
add esp, 16
mov dword ptr [ebp-4], eax
.L_017C:
cmp dword ptr [ebp-4], 0
jne .L_0180
jmp .L_017D
.L_0180:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
sub esp, 12
push dword ptr [ebp-4]
call HCHECKLINK
add esp, 16
cmp eax, -1
jne .L_0182
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
jmp .L_0181
.L_0182:
sub esp, 12
push dword ptr [ebp-4]
call HISVECTORIZABLE
add esp, 16
cmp eax, -1
jne .L_0183
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-32], -1
.L_0183:
.L_0181:
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_0184:
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+68]
call HGETNEXTTREE
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0188
mov dword ptr [ebp-28], -1
jmp .L_0187
.L_0188:
sub esp, 12
push dword ptr [ebp-8]
call HISVECTORIZABLE
add esp, 16
cmp eax, -1
jne .L_018A
mov dword ptr [ebp-36], -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .L_0189
.L_018A:
mov dword ptr [ebp-28], -1
.L_0189:
.L_0187:
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ebp-36]
and eax, dword ptr [ebp-32]
je .L_018C
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HMERGENODE
add esp, 16
test eax, eax
je .L_018E
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HMERGENODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+68], 0
je .L_0190
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
.L_0190:
.L_018F:
mov dword ptr [ebp-40], 0
jmp .L_018D
.L_018E:
mov dword ptr [ebp-28], -1
.L_018D:
.L_018C:
.L_018B:
mov eax, dword ptr [ebp-28]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+124]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0192
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
.L_0193:
sub esp, 12
push dword ptr [ebp-12]
call ASTINTRATREEVECTORIZE
add esp, 16
test eax, eax
je .L_0194
jmp .L_0193
.L_0194:
.L_0192:
.L_0191:
cmp dword ptr [ebp-8], 0
je .L_0196
cmp dword ptr [ebp-40], 0
je .L_0198
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0185
jmp .L_0197
.L_0198:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
.L_0197:
jmp .L_0195
.L_0196:
jmp .L_017D
.L_0195:
.L_0186:
jmp .L_0184
.L_0185:
.L_017E:
jmp .L_017C
.L_017D:
.L_017B:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTPROCVECTORIZE, .-ASTPROCVECTORIZE
.cfi_endproc
.balign 16
fb_ctor__astzvectorize:
.type fb_ctor__astzvectorize, @function
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
.size fb_ctor__astzvectorize, .-fb_ctor__astzvectorize
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
HNODESMATCH:
.type HNODESMATCH, @function
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
.L_005C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
je .L_005F
mov dword ptr [ebp-4], 0
jmp .L_005D
.L_005F:
.L_005E:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_0061
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .L_0063
mov dword ptr [ebp-4], 0
jmp .L_005D
.L_0063:
.L_0062:
.L_0061:
.L_0060:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 16
jne .L_0065
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp ecx, eax
je .L_0067
mov dword ptr [ebp-4], 0
jmp .L_005D
.L_0067:
.L_0066:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0068
mov dword ptr [ebp-8], 24
jmp .L_019D
.L_0068:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_019D:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_006B
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [eax+20]
fld qword ptr [ecx+20]
fcomip st, st(1)
fstp st(0)
jz .L_006D
mov dword ptr [ebp-4], 0
jmp .L_005D
.L_006D:
.L_006C:
jmp .L_006A
.L_006B:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .L_019E
cmp dword ptr [ecx+20], esi
je .L_006F
.L_019E:
mov dword ptr [ebp-4], 0
jmp .L_005D
.L_006F:
.L_006E:
.L_006A:
.L_0065:
.L_0064:
mov dword ptr [ebp-4], -1
.L_005D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNODESMATCH, .-HNODESMATCH
.cfi_endproc
.balign 16
HALLOWEDINVECTORIZE:
.type HALLOWEDINVECTORIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0070:
cmp dword ptr [ebp+12], 0
je .L_0073
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_0075
.L_0077:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 28
jne .L_0079
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0079:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 29
jne .L_007B
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_007B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .L_007D
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_007D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 31
jne .L_007F
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_007F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
jne .L_0081
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0081:
jmp .L_0074
.L_0082:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 75
jne .L_0084
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0084:
jmp .L_0074
.L_0085:
mov dword ptr [ebp-4], -1
jmp .L_0071
jmp .L_0074
.L_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 15
jne .L_0088
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0088:
cmp dword ptr [ebp-8], 16
jne .L_008A
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_008A:
.L_0089:
jmp .L_0074
.L_008B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_008D
mov dword ptr [ebp-4], -1
jmp .L_0071
jmp .L_008C
.L_008D:
cmp dword ptr [ebp-8], 16
jne .L_008E
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_008E:
.L_008C:
mov dword ptr [ebp-4], 0
jmp .L_0071
jmp .L_0074
.L_008F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 15
jne .L_0091
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0091:
cmp dword ptr [ebp-8], 16
jne .L_0093
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0071
.L_0093:
.L_0092:
mov dword ptr [ebp-4], 0
jmp .L_0071
jmp .L_0074
.L_0094:
mov dword ptr [ebp-4], -1
jmp .L_0071
jmp .L_0074
.L_0095:
jmp .L_0074
.L_0075:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 19
ja .L_0095
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.L_0096+ebx*4-4]
.L_0096:
.int .L_0085
.int .L_0085
.int .L_0077
.int .L_0082
.int .L_0086
.int .L_0094
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0095
.int .L_0086
.int .L_008B
.int .L_0094
.int .L_008F
.int .L_0094
.L_0074:
mov dword ptr [ebp-4], 0
.L_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HALLOWEDINVECTORIZE, .-HALLOWEDINVECTORIZE
.cfi_endproc
.balign 16
HGETVARDISTANCE:
.type HGETVARDISTANCE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0097:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_009A
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+20]
adc eax, dword ptr [ecx+24]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.L_009A:
.L_0099:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_009C
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+20]
adc eax, dword ptr [ecx+24]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.L_009C:
.L_009B:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
jne .L_009E
jmp .L_0098
.L_009E:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+56], 0
jne .L_00A0
jmp .L_0098
.L_00A0:
push dword ptr [ebp+20]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call HGETVARDISTANCE
add esp, 16
.L_0098:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETVARDISTANCE, .-HGETVARDISTANCE
.cfi_endproc
.balign 16
HSKIPNEWNODES:
.type HSKIPNEWNODES, @function
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
.L_00A3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_00A7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 75
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
cmp ecx, 55
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00A9
cmp dword ptr [ebp+12], 0
je .L_00AB
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00AC
mov dword ptr [ebp-12], 2
jmp .L_01A3
.L_00AC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-12], ebx
.L_01A3:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16], ecx
.L_00AB:
.L_00AA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp+8], ebx
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-8], ebx
jne .L_00AF
jmp .L_00A4
.L_00AF:
.L_00AE:
.L_00A5:
jmp .L_00A3
.L_00A4:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSKIPNEWNODES, .-HSKIPNEWNODES
.cfi_endproc
.balign 16
HCHECKLOAD:
.type HCHECKLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B0:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00B3
mov dword ptr [ebp-4], -1
jmp .L_00B1
.L_00B3:
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00B5
mov dword ptr [ebp-4], 0
jmp .L_00B1
.L_00B5:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HSKIPNEWNODES
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00B7
mov dword ptr [ebp+16], -1
.L_00B7:
.L_00B6:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HALLOWEDINVECTORIZE
add esp, 16
test eax, eax
jne .L_00B9
mov dword ptr [ebp-4], 0
jmp .L_00B1
.L_00B9:
.L_00B8:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNODESMATCH
add esp, 16
test eax, eax
jne .L_00BB
mov dword ptr [ebp-4], 0
jmp .L_00B1
.L_00BB:
.L_00BA:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .L_00BD
mov dword ptr [ebp-4], 0
jmp .L_00B1
.L_00BD:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .L_00BF
mov dword ptr [ebp-4], 0
jmp .L_00B1
.L_00BF:
mov dword ptr [ebp-4], -1
.L_00B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKLOAD, .-HCHECKLOAD
.cfi_endproc
.balign 16
HINSERTSWIZZLE:
.type HINSERTSWIZZLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00C0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push 0
push 0
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 18
rep movsd
pop esi
pop edi
sub esp, 8
push dword ptr [ebp-8]
push 75
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
.L_00C1:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINSERTSWIZZLE, .-HINSERTSWIZZLE
.cfi_endproc
.balign 16
HVECTORIZENODE:
.type HVECTORIZENODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00C2:
cmp dword ptr [ebp+8], 0
jne .L_00C5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C3
.L_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00C7
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00C8
mov dword ptr [ebp-8], 2
jmp .L_01AC
.L_00C8:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.L_01AC:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
jmp .L_00C6
.L_00C7:
cmp dword ptr [ebp+12], 0
jne .L_00CB
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], 0
jmp .L_00CA
.L_00CB:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00CC
mov dword ptr [ebp-8], 2
jmp .L_01AD
.L_00CC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.L_01AD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
.L_00CA:
.L_00C6:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_00C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HVECTORIZENODE, .-HVECTORIZENODE
.cfi_endproc
.balign 16
HCHECKDEREFVAR:
.type HCHECKDEREFVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00CE:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 0
jne .L_00D1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00CF
.L_00D1:
.L_00D2:
cmp dword ptr [ebp+8], 0
je .L_00D3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .L_00D6
.L_00D7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00D9
mov dword ptr [ebp-8], -1
.L_00D9:
.L_00D8:
jmp .L_00D3
jmp .L_00D4
.L_00D6:
cmp dword ptr [ebp-12], 17
je .L_00DB
.L_00DC:
cmp dword ptr [ebp-12], 19
jne .L_00DA
.L_00DB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00DE
mov dword ptr [ebp-8], -1
.L_00DE:
.L_00DD:
jmp .L_00D3
.L_00DA:
.L_00DF:
.L_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .L_00D2
.L_00D3:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKDEREFVAR, .-HCHECKDEREFVAR
.cfi_endproc
.balign 16
HCHECKARRAYVAR:
.type HCHECKARRAYVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_00E3
jmp .L_00E1
.L_00E3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_00E5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00E7
mov dword ptr [ebp-4], -1
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E4:
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKARRAYVAR, .-HCHECKARRAYVAR
.cfi_endproc
.balign 16
HCHECKMEMOFFSET:
.type HCHECKMEMOFFSET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00E8:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_00EB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .L_00ED
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [VECTORWIDTH], eax
.L_00ED:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00EE
mov dword ptr [ebp-12], 24
jmp .L_01B6
.L_00EE:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01B6:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [VECTORWIDTH]
mov dword ptr [ebp-8], ebx
jmp .L_00EA
.L_00EB:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_00F0
mov dword ptr [ebp-12], 24
jmp .L_01B7
.L_00F0:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_01B7:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
.L_00EA:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+16]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00F3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebx+16]
je .L_00F5
mov dword ptr [ebp-4], 0
jmp .L_00E9
.L_00F5:
.L_00F4:
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00F7
mov dword ptr [ebp-4], 0
.L_00F7:
.L_00F6:
.L_00F3:
.L_00F2:
.L_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKMEMOFFSET, .-HCHECKMEMOFFSET
.cfi_endproc
.balign 16
HGETASSIGNDATATYPE:
.type HGETASSIGNDATATYPE, @function
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
cmp dword ptr [ebp+8], 0
jne .L_00FB
mov dword ptr [ebp-4], 0
jmp .L_00F9
.L_00FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
jne .L_00FE
.L_00FF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .L_00F9
jmp .L_00FC
.L_00FE:
cmp dword ptr [ebp-8], 17
je .L_0101
.L_0102:
cmp dword ptr [ebp-8], 19
jne .L_0100
.L_0101:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .L_00F9
jmp .L_00FC
.L_0100:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HGETASSIGNDATATYPE
add esp, 16
mov dword ptr [ebp-4], eax
.L_0103:
.L_00FC:
.L_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETASSIGNDATATYPE, .-HGETASSIGNDATATYPE
.cfi_endproc
.balign 16
HMERGENODE:
.type HMERGENODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0104:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jne .L_0107
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_0107:
cmp dword ptr [ebp+8], 0
jne .L_0109
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_0109:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSKIPNEWNODES
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+16], 0
jne .L_010B
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNODESMATCH
add esp, 16
test eax, eax
jne .L_010D
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_010D:
.L_010C:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HALLOWEDINVECTORIZE
add esp, 16
test eax, eax
jne .L_010F
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_010F:
.L_010E:
.L_010B:
.L_010A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .L_0111
sub esp, 12
push dword ptr [ebp+8]
call HGETASSIGNDATATYPE
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0113
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .L_0115
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [VECTORWIDTH], eax
.L_0115:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0116
mov dword ptr [ebp-28], 24
jmp .L_01BD
.L_0116:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01BD:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [VECTORWIDTH]
mov dword ptr [ebp-12], ebx
jmp .L_0112
.L_0113:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0118
mov dword ptr [ebp-28], 24
jmp .L_01BE
.L_0118:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01BE:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-12], eax
.L_0112:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
je .L_011B
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_011B:
.L_011A:
.L_0111:
.L_0110:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [MAXVECTORWIDTH]
cmp dword ptr [eax+16], ebx
jne .L_011D
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_011D:
.L_011C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .L_011F
cmp dword ptr [ebp+16], 0
jne .L_0121
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .L_0123
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0123:
.L_0122:
.L_0121:
.L_0120:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKMEMOFFSET
add esp, 16
test eax, eax
jne .L_0125
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0125:
.L_0124:
cmp dword ptr [ebp+16], 0
je .L_0127
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [VECTORWIDTH]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0129
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
jmp .L_0128
.L_0129:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.L_0128:
.L_0127:
.L_0126:
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_011F:
.L_011E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_012B
cmp dword ptr [ebp+16], 0
jne .L_012D
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .L_012F
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_012F:
.L_012E:
.L_012D:
.L_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
jne .L_0131
sub esp, 8
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HCHECKDEREFVAR
add esp, 16
test eax, eax
jne .L_0133
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0133:
.L_0132:
jmp .L_0130
.L_0131:
sub esp, 8
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HCHECKARRAYVAR
add esp, 16
test eax, eax
jne .L_0135
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0135:
.L_0134:
.L_0130:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKMEMOFFSET
add esp, 16
test eax, eax
jne .L_0137
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0137:
.L_0136:
cmp dword ptr [ebp+16], 0
je .L_0139
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [VECTORWIDTH]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_013B
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
jmp .L_013A
.L_013B:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.L_013A:
.L_0139:
.L_0138:
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_012B:
.L_012A:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_013D
cmp dword ptr [ebp+16], 0
jne .L_013F
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .L_0141
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0141:
.L_0140:
.L_013F:
.L_013E:
cmp dword ptr [ebp+16], 0
je .L_0143
cmp dword ptr [VECTORWIDTH], 0
jne .L_0145
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
.L_0145:
.L_0144:
.L_0143:
.L_0142:
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0147
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
cmp ecx, 15
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-24]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_0149
cmp dword ptr [ebp+16], 0
je .L_014B
cmp dword ptr [VECTORWIDTH], 0
jne .L_014D
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
.L_014D:
.L_014C:
.L_014B:
.L_014A:
jmp .L_0148
.L_0149:
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0148:
mov dword ptr [ebp-4], -1
jmp .L_0105
.L_0147:
.L_0146:
cmp dword ptr [ebp+16], 0
je .L_014F
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.L_014F:
.L_014E:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
test eax, eax
jne .L_0151
mov dword ptr [ebp-4], 0
jmp .L_0105
.L_0151:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HMERGENODE
add esp, 16
test eax, eax
jne .L_0153
mov dword ptr [ebp-4], 0
.L_0153:
.L_0105:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMERGENODE, .-HMERGENODE
.cfi_endproc
.balign 16
HISVECTORIZABLE:
.type HISVECTORIZABLE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0154:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .L_0157
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_0157:
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISVECTORIZABLE, .-HISVECTORIZABLE
.cfi_endproc
.balign 16
ASTINTRATREEVECTORIZE:
.type ASTINTRATREEVECTORIZE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0158:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .L_015B
mov dword ptr [ebp-4], 0
jmp .L_0159
.L_015B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_015D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .L_015F
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
test eax, eax
je .L_0161
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 4
jne .L_0163
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+20], 55
jne .L_0165
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 18
rep movsd
pop esi
pop edi
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_0159
.L_0165:
.L_0164:
.L_0163:
.L_0162:
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 55
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ecx+16], eax
mov dword ptr [ebp-4], -1
jmp .L_0159
.L_0161:
.L_0160:
.L_015F:
.L_015E:
.L_015D:
.L_015C:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINTRATREEVECTORIZE
add esp, 16
cmp eax, -1
jne .L_0167
mov dword ptr [ebp-12], -1
.L_0167:
.L_0166:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTINTRATREEVECTORIZE
add esp, 16
cmp eax, -1
jne .L_0169
mov dword ptr [ebp-12], -1
.L_0169:
.L_0168:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0159:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ASTINTRATREEVECTORIZE, .-ASTINTRATREEVECTORIZE
.cfi_endproc
.balign 16
HGETNEXTTREE:
.type HGETNEXTTREE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_016A:
mov dword ptr [ebp-8], 0
.L_016C:
cmp dword ptr [ebp+8], 0
je .L_016D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 30
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 27
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 21
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 24
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 33
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 34
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_016F
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_016F:
.L_016E:
cmp dword ptr [ebp-8], 0
je .L_0171
jmp .L_016D
.L_0171:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .L_016C
.L_016D:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_016B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETNEXTTREE, .-HGETNEXTTREE
.cfi_endproc
.balign 16
HCHECKLINK:
.type HCHECKLINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0172:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
je .L_0175
jmp .L_0173
.L_0175:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 24
je .L_0177
jmp .L_0173
.L_0177:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
cmp dword ptr [eax], 2
jne .L_0179
mov dword ptr [ebp-4], -1
.L_0179:
.L_0178:
.L_0173:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKLINK, .-HCHECKLINK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	VECTORWIDTH,4
.balign 4
	.lcomm	MAXVECTORWIDTH,4

.section .ctors, "aw", @progbits
.int fb_ctor__astzvectorize
