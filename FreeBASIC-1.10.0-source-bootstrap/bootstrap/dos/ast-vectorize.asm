	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTPROCVECTORIZE
_ASTPROCVECTORIZE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_017B:
push dword ptr [ebp+8]
call _HGETNEXTTREE
add esp, 4
mov dword ptr [ebp-4], eax
.L_017D:
cmp dword ptr [ebp-4], 0
jne .L_0181
jmp .L_017E
.L_0181:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
push dword ptr [ebp-4]
call _HCHECKLINK
add esp, 4
cmp eax, -1
jne .L_0183
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
jmp .L_0182
.L_0183:
push dword ptr [ebp-4]
call _HISVECTORIZABLE
add esp, 4
cmp eax, -1
jne .L_0184
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-32], -1
.L_0184:
.L_0182:
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_0185:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+68]
call _HGETNEXTTREE
add esp, 4
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
je .L_0189
mov dword ptr [ebp-28], -1
jmp .L_0188
.L_0189:
push dword ptr [ebp-8]
call _HISVECTORIZABLE
add esp, 4
cmp eax, -1
jne .L_018B
mov dword ptr [ebp-36], -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .L_018A
.L_018B:
mov dword ptr [ebp-28], -1
.L_018A:
.L_0188:
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ebp-36]
and eax, dword ptr [ebp-32]
je .L_018D
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HMERGENODE
add esp, 12
test eax, eax
je .L_018F
mov dword ptr [_VECTORWIDTH], 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HMERGENODE
add esp, 12
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
call _ASTNEWNOP
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
je .L_0191
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
.L_0191:
.L_0190:
mov dword ptr [ebp-40], 0
jmp .L_018E
.L_018F:
mov dword ptr [ebp-28], -1
.L_018E:
.L_018D:
.L_018C:
mov eax, dword ptr [ebp-28]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+124]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0193
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
.L_0194:
push dword ptr [ebp-12]
call _ASTINTRATREEVECTORIZE
add esp, 4
test eax, eax
je .L_0195
jmp .L_0194
.L_0195:
.L_0193:
.L_0192:
cmp dword ptr [ebp-8], 0
je .L_0197
cmp dword ptr [ebp-40], 0
je .L_0199
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0186
jmp .L_0198
.L_0199:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
.L_0198:
jmp .L_0196
.L_0197:
jmp .L_017E
.L_0196:
.L_0187:
jmp .L_0185
.L_0186:
.L_017F:
jmp .L_017D
.L_017E:
.L_017C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__astzvectorize:
.L_0002:
.L_0003:
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
_HNODESMATCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
je .L_0060
mov dword ptr [ebp-4], 0
jmp .L_005E
.L_0060:
.L_005F:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_0062
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .L_0064
mov dword ptr [ebp-4], 0
jmp .L_005E
.L_0064:
.L_0063:
.L_0062:
.L_0061:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 16
jne .L_0066
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp ecx, eax
je .L_0068
mov dword ptr [ebp-4], 0
jmp .L_005E
.L_0068:
.L_0067:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .L_0069
mov dword ptr [ebp-8], 24
jmp .L_019E
.L_0069:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_019E:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_006C
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [eax+20]
fld qword ptr [ecx+20]
fcomip st, st(1)
fstp st(0)
jz .L_006E
mov dword ptr [ebp-4], 0
jmp .L_005E
.L_006E:
.L_006D:
jmp .L_006B
.L_006C:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .L_019F
cmp dword ptr [ecx+20], esi
je .L_0070
.L_019F:
mov dword ptr [ebp-4], 0
jmp .L_005E
.L_0070:
.L_006F:
.L_006B:
.L_0066:
.L_0065:
mov dword ptr [ebp-4], -1
.L_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HALLOWEDINVECTORIZE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0071:
cmp dword ptr [ebp+12], 0
je .L_0074
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .L_0076
.L_0078:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 28
jne .L_007A
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_007A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 29
jne .L_007C
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_007C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .L_007E
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_007E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 31
jne .L_0080
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0080:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
jne .L_0082
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0082:
jmp .L_0075
.L_0083:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 75
jne .L_0085
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0085:
jmp .L_0075
.L_0086:
mov dword ptr [ebp-4], -1
jmp .L_0072
jmp .L_0075
.L_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 15
jne .L_0089
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0089:
cmp dword ptr [ebp-8], 16
jne .L_008B
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_008B:
.L_008A:
jmp .L_0075
.L_008C:
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
je .L_008E
mov dword ptr [ebp-4], -1
jmp .L_0072
jmp .L_008D
.L_008E:
cmp dword ptr [ebp-8], 16
jne .L_008F
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_008F:
.L_008D:
mov dword ptr [ebp-4], 0
jmp .L_0072
jmp .L_0075
.L_0090:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 15
jne .L_0092
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0092:
cmp dword ptr [ebp-8], 16
jne .L_0094
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .L_0072
.L_0094:
.L_0093:
mov dword ptr [ebp-4], 0
jmp .L_0072
jmp .L_0075
.L_0095:
mov dword ptr [ebp-4], -1
jmp .L_0072
jmp .L_0075
.L_0096:
jmp .L_0075
.L_0076:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 19
ja .L_0096
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.L_0097+ebx*4-4]
_.L_0097:
.int .L_0086
.int .L_0086
.int .L_0078
.int .L_0083
.int .L_0087
.int .L_0095
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0096
.int .L_0087
.int .L_008C
.int .L_0095
.int .L_0090
.int .L_0095
.L_0075:
mov dword ptr [ebp-4], 0
.L_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETVARDISTANCE:
push ebp
mov ebp, esp
push ebx
.L_0098:
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
je .L_009B
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
.L_009B:
.L_009A:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_009D
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
.L_009D:
.L_009C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
jne .L_009F
jmp .L_0099
.L_009F:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+56], 0
jne .L_00A1
jmp .L_0099
.L_00A1:
push dword ptr [ebp+20]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call _HGETVARDISTANCE
add esp, 16
.L_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSKIPNEWNODES:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
.L_00A4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .L_00A8
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
je .L_00AA
cmp dword ptr [ebp+12], 0
je .L_00AC
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00AD
mov dword ptr [ebp-12], 2
jmp .L_01A4
.L_00AD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-12], ebx
.L_01A4:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16], ecx
.L_00AC:
.L_00AB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp+8], ebx
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-8], ebx
jne .L_00B0
jmp .L_00A5
.L_00B0:
.L_00AF:
.L_00A6:
jmp .L_00A4
.L_00A5:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B1:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00B4
mov dword ptr [ebp-4], -1
jmp .L_00B2
.L_00B4:
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_00B6
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00B6:
push 0
push dword ptr [ebp+8]
call _HSKIPNEWNODES
add esp, 8
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
je .L_00B8
mov dword ptr [ebp+16], -1
.L_00B8:
.L_00B7:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HALLOWEDINVECTORIZE
add esp, 8
test eax, eax
jne .L_00BA
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00BA:
.L_00B9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNODESMATCH
add esp, 8
test eax, eax
jne .L_00BC
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00BC:
.L_00BB:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HCHECKLOAD
add esp, 12
test eax, eax
jne .L_00BE
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00BE:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HCHECKLOAD
add esp, 12
test eax, eax
jne .L_00C0
mov dword ptr [ebp-4], 0
jmp .L_00B2
.L_00C0:
mov dword ptr [ebp-4], -1
.L_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HINSERTSWIZZLE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00C1:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
push 0
push 0
push 0
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 18
rep movsd
pop esi
pop edi
push dword ptr [ebp-8]
push 75
call _ASTNEWUOP
add esp, 8
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
push dword ptr [ebp-4]
call _ASTDELNODE
add esp, 4
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVECTORIZENODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C3:
cmp dword ptr [ebp+8], 0
jne .L_00C6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00C4
.L_00C6:
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
je .L_00C8
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00C9
mov dword ptr [ebp-8], 2
jmp .L_01AD
.L_00C9:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.L_01AD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
jmp .L_00C7
.L_00C8:
cmp dword ptr [ebp+12], 0
jne .L_00CC
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], 0
jmp .L_00CB
.L_00CC:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .L_00CD
mov dword ptr [ebp-8], 2
jmp .L_01AE
.L_00CD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.L_01AE:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
.L_00CB:
.L_00C7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.L_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDEREFVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00CF:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 0
jne .L_00D2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00D0
.L_00D2:
.L_00D3:
cmp dword ptr [ebp+8], 0
je .L_00D4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .L_00D7
.L_00D8:
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
je .L_00DA
mov dword ptr [ebp-8], -1
.L_00DA:
.L_00D9:
jmp .L_00D4
jmp .L_00D5
.L_00D7:
cmp dword ptr [ebp-12], 17
je .L_00DC
.L_00DD:
cmp dword ptr [ebp-12], 19
jne .L_00DB
.L_00DC:
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
je .L_00DF
mov dword ptr [ebp-8], -1
.L_00DF:
.L_00DE:
jmp .L_00D4
.L_00DB:
.L_00E0:
.L_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .L_00D3
.L_00D4:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKARRAYVAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_00E4
jmp .L_00E2
.L_00E4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .L_00E6
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
je .L_00E8
mov dword ptr [ebp-4], -1
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKMEMOFFSET:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E9:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_00EC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .L_00EE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_VECTORWIDTH], eax
.L_00EE:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00EF
mov dword ptr [ebp-12], 24
jmp .L_01B7
.L_00EF:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01B7:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [_VECTORWIDTH]
mov dword ptr [ebp-8], ebx
jmp .L_00EB
.L_00EC:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .L_00F1
mov dword ptr [ebp-12], 24
jmp .L_01B8
.L_00F1:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_01B8:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
.L_00EB:
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
je .L_00F4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebx+16]
je .L_00F6
mov dword ptr [ebp-4], 0
jmp .L_00EA
.L_00F6:
.L_00F5:
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
je .L_00F8
mov dword ptr [ebp-4], 0
.L_00F8:
.L_00F7:
.L_00F4:
.L_00F3:
.L_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASSIGNDATATYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
cmp dword ptr [ebp+8], 0
jne .L_00FC
mov dword ptr [ebp-4], 0
jmp .L_00FA
.L_00FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
jne .L_00FF
.L_0100:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .L_00FA
jmp .L_00FD
.L_00FF:
cmp dword ptr [ebp-8], 17
je .L_0102
.L_0103:
cmp dword ptr [ebp-8], 19
jne .L_0101
.L_0102:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .L_00FA
jmp .L_00FD
.L_0101:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HGETASSIGNDATATYPE
add esp, 4
mov dword ptr [ebp-4], eax
.L_0104:
.L_00FD:
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMERGENODE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0105:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jne .L_0108
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0108:
cmp dword ptr [ebp+8], 0
jne .L_010A
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_010A:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSKIPNEWNODES
add esp, 8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+16], 0
jne .L_010C
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNODESMATCH
add esp, 8
test eax, eax
jne .L_010E
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_010E:
.L_010D:
push 0
push dword ptr [ebp+8]
call _HALLOWEDINVECTORIZE
add esp, 8
test eax, eax
jne .L_0110
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0110:
.L_010F:
.L_010C:
.L_010B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .L_0112
push dword ptr [ebp+8]
call _HGETASSIGNDATATYPE
add esp, 4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_0114
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .L_0116
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_VECTORWIDTH], eax
.L_0116:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_0117
mov dword ptr [ebp-28], 24
jmp .L_01BE
.L_0117:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.L_01BE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [_VECTORWIDTH]
mov dword ptr [ebp-12], ebx
jmp .L_0113
.L_0114:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_0119
mov dword ptr [ebp-28], 24
jmp .L_01BF
.L_0119:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01BF:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-12], eax
.L_0113:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
je .L_011C
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_011C:
.L_011B:
.L_0112:
.L_0111:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_MAXVECTORWIDTH]
cmp dword ptr [eax+16], ebx
jne .L_011E
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_011E:
.L_011D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .L_0120
cmp dword ptr [ebp+16], 0
jne .L_0122
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD
add esp, 12
test eax, eax
jne .L_0124
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0124:
.L_0123:
.L_0122:
.L_0121:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKMEMOFFSET
add esp, 12
test eax, eax
jne .L_0126
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0126:
.L_0125:
cmp dword ptr [ebp+16], 0
je .L_0128
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_VECTORWIDTH]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_012A
push dword ptr [ebp+8]
call _HINSERTSWIZZLE
add esp, 4
jmp .L_0129
.L_012A:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE
add esp, 8
.L_0129:
.L_0128:
.L_0127:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0120:
.L_011F:
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
je .L_012C
cmp dword ptr [ebp+16], 0
jne .L_012E
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD
add esp, 12
test eax, eax
jne .L_0130
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0130:
.L_012F:
.L_012E:
.L_012D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
jne .L_0132
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HCHECKDEREFVAR
add esp, 8
test eax, eax
jne .L_0134
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0134:
.L_0133:
jmp .L_0131
.L_0132:
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HCHECKARRAYVAR
add esp, 8
test eax, eax
jne .L_0136
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0136:
.L_0135:
.L_0131:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKMEMOFFSET
add esp, 12
test eax, eax
jne .L_0138
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0138:
.L_0137:
cmp dword ptr [ebp+16], 0
je .L_013A
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_VECTORWIDTH]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_013C
push dword ptr [ebp+8]
call _HINSERTSWIZZLE
add esp, 4
jmp .L_013B
.L_013C:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE
add esp, 8
.L_013B:
.L_013A:
.L_0139:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_012C:
.L_012B:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .L_013E
cmp dword ptr [ebp+16], 0
jne .L_0140
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD
add esp, 12
test eax, eax
jne .L_0142
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0142:
.L_0141:
.L_0140:
.L_013F:
cmp dword ptr [ebp+16], 0
je .L_0144
cmp dword ptr [_VECTORWIDTH], 0
jne .L_0146
push dword ptr [ebp+8]
call _HINSERTSWIZZLE
add esp, 4
.L_0146:
.L_0145:
.L_0144:
.L_0143:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_013E:
.L_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0148
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
je .L_014A
cmp dword ptr [ebp+16], 0
je .L_014C
cmp dword ptr [_VECTORWIDTH], 0
jne .L_014E
push dword ptr [ebp+8]
call _HINSERTSWIZZLE
add esp, 4
.L_014E:
.L_014D:
.L_014C:
.L_014B:
jmp .L_0149
.L_014A:
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0149:
mov dword ptr [ebp-4], -1
jmp .L_0106
.L_0148:
.L_0147:
cmp dword ptr [ebp+16], 0
je .L_0150
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE
add esp, 8
.L_0150:
.L_014F:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HMERGENODE
add esp, 12
test eax, eax
jne .L_0152
mov dword ptr [ebp-4], 0
jmp .L_0106
.L_0152:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HMERGENODE
add esp, 12
test eax, eax
jne .L_0154
mov dword ptr [ebp-4], 0
.L_0154:
.L_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISVECTORIZABLE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .L_0158
mov dword ptr [ebp-4], -1
jmp .L_0156
.L_0158:
mov dword ptr [ebp-4], 0
.L_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_ASTINTRATREEVECTORIZE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0159:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .L_015C
mov dword ptr [ebp-4], 0
jmp .L_015A
.L_015C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_015E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .L_0160
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HMERGENODE
add esp, 12
test eax, eax
je .L_0162
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HMERGENODE
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 4
jne .L_0164
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+20], 55
jne .L_0166
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
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_015A
.L_0166:
.L_0165:
.L_0164:
.L_0163:
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+60]
call _ASTDELTREE
add esp, 4
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
jmp .L_015A
.L_0162:
.L_0161:
.L_0160:
.L_015F:
.L_015E:
.L_015D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTINTRATREEVECTORIZE
add esp, 4
cmp eax, -1
jne .L_0168
mov dword ptr [ebp-12], -1
.L_0168:
.L_0167:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _ASTINTRATREEVECTORIZE
add esp, 4
cmp eax, -1
jne .L_016A
mov dword ptr [ebp-12], -1
.L_016A:
.L_0169:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_015A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETNEXTTREE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_016B:
mov dword ptr [ebp-8], 0
.L_016D:
cmp dword ptr [ebp+8], 0
je .L_016E
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
je .L_0170
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_0170:
.L_016F:
cmp dword ptr [ebp-8], 0
je .L_0172
jmp .L_016E
.L_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .L_016D
.L_016E:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_016C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKLINK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0173:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
je .L_0176
jmp .L_0174
.L_0176:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 24
je .L_0178
jmp .L_0174
.L_0178:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
cmp dword ptr [eax], 2
jne .L_017A
mov dword ptr [ebp-4], -1
.L_017A:
.L_0179:
.L_0174:
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
.balign 4
	.lcomm	_VECTORWIDTH,4
.balign 4
	.lcomm	_MAXVECTORWIDTH,4

.section .ctors
.int _fb_ctor__astzvectorize
