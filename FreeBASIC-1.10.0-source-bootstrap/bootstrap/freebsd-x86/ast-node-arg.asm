	.intel_syntax noprefix

.section .text
.balign 16

.globl HBUILDBYREFARG
HBUILDBYREFARG:
push ebp
mov ebp, esp
push ebx
.L_0092:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTREMOVENOCONVCAST
add esp, 4
push eax
call ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push 0
push 16
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
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
push ebx
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 1
.L_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWARG
ASTNEWARG:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
movsx ecx, word ptr [eax+68]
cmp dword ptr [ebx+24], ecx
jl .L_01A5
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+80]
mov dword ptr [ebp-16], ebx
jmp .L_01A4
.L_01A5:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
mov dword ptr [ebp-16], ecx
.L_01A4:
cmp dword ptr [ebp+12], 0
jne .L_01A7
push dword ptr [ebp-16]
call HCREATEOPTARG
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_01A9
mov dword ptr [ebp-4], 0
jmp .L_01A3
.L_01A9:
.L_01A8:
.L_01A7:
.L_01A6:
cmp dword ptr [ebp+16], -2147483648
jne .L_01AB
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp+16], ecx
.L_01AB:
.L_01AA:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 524288
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+8]
and ebx, 1024
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01AD
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+32]
push dword ptr [ebp+16]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+28]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
jne .L_01B0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 524288
test ebx, ebx
je .L_01B2
push 276
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ERRREPORTPARAM
add esp, 16
jmp .L_01B1
.L_01B2:
push 181
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call ERRREPORTPARAM
add esp, 16
.L_01B1:
mov dword ptr [ebp-4], 0
jmp .L_01A3
.L_01B0:
.L_01AF:
.L_01AD:
.L_01AC:
push 0
push -2147483648
push 22
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov dword ptr [ebx+28], 0
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+84], 4
jne .L_01B4
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_01B6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
jmp .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.L_01B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
jmp .L_01B3
.L_01B4:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .L_01B8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+32], eax
.L_01B8:
.L_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+60], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+60], ebx
.L_01B3:
push 0
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
inc ecx
push ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+12]
call ERRPUSHPARAMLOCATION
add esp, 16
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HCHECKPARAM
add esp, 12
test eax, eax
jne .L_01BA
call ERRPOPPARAMLOCATION
mov dword ptr [ebp-4], 0
jmp .L_01A3
.L_01BA:
.L_01B9:
call ERRPOPPARAMLOCATION
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
movsx ebx, word ptr [ecx+68]
cmp dword ptr [eax+24], ebx
jge .L_01BC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebx+28], ecx
.L_01BC:
.L_01BB:
.L_01A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTREPLACEINSTANCEARG
ASTREPLACEINSTANCEARG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+84], 4
jne .L_01C2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
jmp .L_01C1
.L_01C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
.L_01C1:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+24], 0
mov dword ptr [eax+28], 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKPARAM
add esp, 12
.L_01C0:
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
HALLOCTMPARRAYDESC:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
push dword ptr [ebp+8]
call SYMBADDARRAYDESC
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTBUILDARRAYDESCINITREE
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
push 0
push 64
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDTOCOPYBACKLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005F:
lea eax, [AST+44]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+36]
mov dword ptr [ebx+8], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+36], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx], ecx
push dword ptr [ebp+16]
call ASTCLONETREE
add esp, 4
push eax
call ASTOPTIMIZETREE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HALLOCTMPSTRING:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0061:
push 0
push 17
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_0064
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HADDTOCOPYBACKLIST
add esp, 12
.L_0064:
.L_0063:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
push 0
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRASSIGN
add esp, 12
push eax
push dword ptr [ebp-8]
call ASTBUILDTEMPVARCLEAR
add esp, 4
push eax
call ASTNEWLINK
add esp, 12
push eax
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.L_0062:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HALLOCTMPWSTRPTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0065:
push 0
push 39
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 4
push 0
push 39
push dword ptr [ebp+12]
call ASTSETTYPE
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.L_0066:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKARGFORSTRINGPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
je .L_006A
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 2
jne .L_006C
cmp dword ptr [ebp-8], 17
jne .L_006E
.L_006F:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 9
jne .L_0071
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0068
.L_0071:
.L_0070:
jmp .L_006D
.L_006E:
cmp dword ptr [ebp-8], 4
je .L_0073
.L_0074:
cmp dword ptr [ebp-8], 18
jne .L_0072
.L_0073:
push dword ptr [ebp+16]
call RTLSTRALLOCTMPDESC
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_0072:
.L_006D:
.L_006C:
.L_006B:
.L_006A:
.L_0069:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .L_0076
cmp dword ptr [ebp-8], 18
jne .L_0078
.L_0079:
mov dword ptr [ebp-12], -1
jmp .L_0077
.L_0078:
cmp dword ptr [ebp-8], 17
jne .L_007A
.L_007B:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
je .L_007D
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0068
.L_007D:
.L_007C:
.L_007A:
.L_0077:
.L_0076:
.L_0075:
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HALLOCTMPSTRING
add esp, 12
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSTRARGTOSTRPTRPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007E:
cmp dword ptr [ebp+16], 0
jne .L_0081
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_0083
jmp .L_007F
.L_0083:
.L_0082:
.L_0081:
.L_0080:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 17
jne .L_0086
.L_0087:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .L_0089
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call HALLOCTMPSTRING
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.L_0089:
.L_0088:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTBUILDSTRPTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0084
.L_0086:
cmp dword ptr [ebp-4], 18
jne .L_008A
.L_008B:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTNEWADDROF
add esp, 4
push eax
push 0
push 36
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0084
.L_008A:
cmp dword ptr [ebp-4], 4
jne .L_008C
.L_008D:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0084
.L_008C:
cmp dword ptr [ebp-4], 7
jne .L_008E
.L_008F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .L_0091
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call HALLOCTMPWSTRPTR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.L_0090:
.L_008E:
.L_0084:
.L_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKBYREFPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0094:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTSKIPCONSTCASTS
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 9
jne .L_0097
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-8], eax
jmp .L_0099
.L_009B:
jmp .L_0095
jmp .L_0098
.L_0099:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .L_0098
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_009C+eax*4-16]
.L_009C:
.int .L_009B
.int .L_0098
.int .L_0098
.int .L_009B
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_009B
.int .L_009B
.L_0098:
.L_0097:
.L_0096:
push dword ptr [ebp-4]
call ASTCANTAKEADDROF
add esp, 4
test eax, eax
jne .L_009E
push 80
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.L_009E:
.L_009D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDBYREFARG
add esp, 8
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKBYDESCDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_009F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+68]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+60]
cmp esi, dword ptr [ecx+68]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
mov dword ptr [ebp-4], ebx
.L_00A0:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKBYDESCPARAM:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .L_00A4
mov dword ptr [ebp-4], -1
jmp .L_00A2
.L_00A4:
.L_00A3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00A6
jmp .L_00A2
.L_00A6:
.L_00A5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00A8
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_00A9
mov dword ptr [ebp-28], 24
jmp .L_01C6
.L_00A9:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01C6:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_00AB
mov dword ptr [ebp-32], 24
jmp .L_01C7
.L_00AB:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01C7:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
cmp ecx, dword ptr [SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_00AD
mov dword ptr [ebp-36], 24
jmp .L_01C8
.L_00AD:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_01C8:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_00AF
mov dword ptr [ebp-40], 24
jmp .L_01C9
.L_00AF:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_01C9:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [SYMB_DTYPETB+ecx+4]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-48]
je .L_00B2
jmp .L_00A2
.L_00B2:
.L_00B1:
.L_00A8:
.L_00A7:
mov ebx, dword ptr [ebp-16]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00B4
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+8], ecx
je .L_00B6
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_00A2
.L_00B6:
.L_00B5:
.L_00B4:
.L_00B3:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+56]
cmp dword ptr [ebx], 17
jne .L_00B8
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+4]
and ecx, 16384
test ecx, ecx
je .L_00BA
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .L_00BC
jmp .L_00A2
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
push 52
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
mov dword ptr [ebp-4], -1
jmp .L_00A2
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 0
je .L_00BE
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .L_00C0
jmp .L_00A2
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+56], eax
mov dword ptr [ebp-4], -1
jmp .L_00A2
.L_00BE:
.L_00BD:
jmp .L_00B7
.L_00B8:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ecx], 19
jne .L_00C1
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .L_00C3
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .L_00C5
jmp .L_00A2
.L_00C5:
.L_00C4:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+28]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
call ASTSETTYPE
add esp, 12
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
call ASTNEWADDROF
add esp, 4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+56], eax
mov dword ptr [ebp-4], -1
jmp .L_00A2
jmp .L_00C2
.L_00C3:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+60], 0
jle .L_00C6
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .L_00C8
jmp .L_00A2
.L_00C8:
.L_00C7:
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call HALLOCTMPARRAYDESC
add esp, 12
mov dword ptr [ebp-24], eax
push 1
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
call ASTNEWLINK
add esp, 12
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+56], eax
mov dword ptr [ebp-4], -1
.L_00C6:
.L_00C2:
.L_00C1:
.L_00B7:
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKVARARGPARAM:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00CB
mov dword ptr [ebp-12], 24
jmp .L_01D3
.L_00CB:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01D3:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-16], ebx
jmp .L_00CE
.L_00D0:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .L_00CD
.L_00D1:
cmp dword ptr [ebp-8], 4
je .L_00D4
.L_00D5:
cmp dword ptr [ebp-8], 7
jne .L_00D3
.L_00D4:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .L_00D2
.L_00D3:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00D7
mov dword ptr [ebp-20], 24
jmp .L_01D4
.L_00D7:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01D4:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jge .L_00DA
push 0
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push 0
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00DB
mov dword ptr [ebp-24], 24
jmp .L_01D5
.L_00DB:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_01D5:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .L_00DD
mov dword ptr [ebp-28], 11
jmp .L_01D6
.L_00DD:
mov dword ptr [ebp-28], 12
.L_01D6:
push dword ptr [ebp-28]
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.L_00DA:
.L_00D9:
.L_00D6:
.L_00D2:
jmp .L_00CD
.L_00DF:
cmp dword ptr [ebp-8], 15
jne .L_00E1
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push 0
push 16
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.L_00E1:
.L_00E0:
jmp .L_00CD
.L_00E2:
push 0
push 0
push 58
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_00CA
jmp .L_00CD
.L_00CE:
cmp dword ptr [ebp-16], 2
ja .L_00E2
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00E3+eax*4]
.L_00E3:
.int .L_00D1
.int .L_00DF
.int .L_00D0
.L_00CD:
mov dword ptr [ebp-4], -1
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKVOIDPARAM:
push ebp
mov ebp, esp
push ebx
.L_00E4:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .L_00E7
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .L_00E5
.L_00E7:
.L_00E6:
cmp dword ptr [ENV+136], 3
je .L_00E9
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+56]
mov ebx, dword ptr [ecx]
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00EB
jmp .L_00E5
.L_00EB:
.L_00EA:
.L_00E9:
.L_00E8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HCHECKBYREFPARAM
add esp, 8
.L_00E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKSTRPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00EC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00EF
.L_00F1:
jmp .L_00EE
.L_00F2:
jmp .L_00EE
.L_00F3:
push 0
push 0
push 58
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_00ED
jmp .L_00EE
.L_00EF:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00F3
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00F4+eax*4-16]
.L_00F4:
.int .L_00F2
.int .L_00F3
.int .L_00F3
.int .L_00F2
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F3
.int .L_00F1
.int .L_00F1
.L_00EE:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKARGFORSTRINGPARAM
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .L_00F7
.L_00F8:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 9
je .L_00FA
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HBUILDBYREFARG
add esp, 8
.L_00FA:
.L_00F9:
jmp .L_00F5
.L_00F7:
cmp dword ptr [ebp-12], 1
jne .L_00FB
.L_00FC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HBUILDBYREFARG
add esp, 8
.L_00FB:
.L_00F5:
mov dword ptr [ebp-4], -1
.L_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HBYTEBYBYTE:
push ebp
mov ebp, esp
push ebx
push esi
.L_00FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+40]
mov ecx, dword ptr [ebx+44]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
.L_00FE:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTPASSBYVAL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_00FF:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBCOMPISTRIVIAL
add esp, 4
test eax, eax
je .L_0102
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_0104
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+12]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_0106
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTBUILDCALLRESULTVAR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBYTEBYBYTE
add esp, 8
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+88]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTSETTYPE
add esp, 12
.L_0105:
jmp .L_0103
.L_0104:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBYTEBYBYTE
add esp, 8
.L_0103:
jmp .L_0100
.L_0102:
.L_0101:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call ASTDTORLISTADD
add esp, 4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 36
jne .L_0108
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
push 64
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp-4]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
call ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0107
.L_0108:
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp+8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-16], 0
je .L_010A
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTPATCHCTORCALL
add esp, 8
push eax
call ASTNEWCALLCTOR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .L_0109
.L_010A:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
push 64
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.L_0109:
.L_0107:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDBYREFARG
add esp, 8
.L_0100:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HIMPLICITCTOR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_010B:
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 4
test eax, eax
jne .L_010E
jmp .L_010C
.L_010E:
.L_010D:
cmp dword ptr [Lt_01D9], 0
je .L_0110
jmp .L_010C
.L_0110:
.L_010F:
inc dword ptr [Lt_01D9]
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp+8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-8], eax
dec dword ptr [Lt_01D9]
cmp dword ptr [ebp-16], 0
jne .L_0112
jmp .L_010C
.L_0112:
.L_0111:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call ASTDTORLISTADD
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTPATCHCTORCALL
add esp, 8
push eax
call ASTNEWCALLCTOR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 1
jne .L_0114
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HUDTPASSBYVAL
add esp, 8
jmp .L_0113
.L_0114:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDBYREFARG
add esp, 8
.L_0113:
mov dword ptr [ebp-4], -1
.L_010C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_01D9:
.int 0

.section .text
.balign 16
HCHECKUDTPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0115:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
je .L_0118
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HIMPLICITCTOR
add esp, 8
test eax, eax
jne .L_011A
push 0
push 0
push 58
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0116
.L_011A:
.L_0119:
mov dword ptr [ebp-4], -1
jmp .L_0116
.L_0118:
.L_0117:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+8], ecx
je .L_011C
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+56]
push dword ptr [ebx+8]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .L_011E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HIMPLICITCTOR
add esp, 8
test eax, eax
jne .L_0120
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
jne .L_0122
push 0
push 0
push 58
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0116
.L_0122:
.L_0121:
jmp .L_011F
.L_0120:
mov dword ptr [ebp-4], -1
jmp .L_0116
.L_011F:
jmp .L_011D
.L_011E:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.L_011D:
.L_011C:
.L_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .L_0125
.L_0126:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
call ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .L_0128
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+12]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
jne .L_012A
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWADDROF
add esp, 4
push eax
push 96
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 1
mov dword ptr [ebp-4], -1
jmp .L_0116
.L_012A:
.L_0129:
.L_0128:
.L_0127:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDBYREFARG
add esp, 8
jmp .L_0123
.L_0125:
cmp dword ptr [ebp-12], 1
jne .L_012B
.L_012C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HUDTPASSBYVAL
add esp, 8
.L_012B:
.L_0123:
mov dword ptr [ebp-4], -1
.L_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPARAM:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_012D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 3
jne .L_0131
.L_0132:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKBYDESCPARAM
add esp, 12
test eax, eax
jne .L_0134
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0134:
.L_0133:
mov dword ptr [ebp-4], -1
jmp .L_012E
jmp .L_012F
.L_0131:
cmp dword ptr [ebp-16], 4
jne .L_0135
.L_0136:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKVARARGPARAM
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_012E
jmp .L_012F
.L_0135:
cmp dword ptr [ebp-16], 2
jne .L_0137
.L_0138:
cmp dword ptr [ebp-8], 0
jne .L_013A
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKVOIDPARAM
add esp, 12
mov dword ptr [ebp-4], -1
jmp .L_012E
.L_013A:
.L_0139:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .L_013C
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_013D
mov dword ptr [ebp-24], 24
jmp .L_01DA
.L_013D:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-24], eax
.L_01DA:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_013F
mov dword ptr [ebp-28], 24
jmp .L_01DB
.L_013F:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01DB:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ENV+296]
cmp eax, dword ptr [SYMB_DTYPETB+ebx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .L_0142
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0142:
.L_0141:
mov dword ptr [ebp-4], -1
jmp .L_012E
.L_013C:
.L_013B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 19
jne .L_0143
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_01DD
.L_0143:
mov dword ptr [ebp-20], 0
.L_01DD:
cmp dword ptr [ebp-20], 0
je .L_0146
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0146:
.L_0145:
.L_0137:
.L_012F:
cmp dword ptr [ebp-12], 20
jne .L_0148
.L_0149:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 1
jne .L_014B
push 32
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBFINDCTOROVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_014D
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HCHECKUDTPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_012E
.L_014D:
.L_014C:
.L_014B:
.L_014A:
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_014F
cmp dword ptr [Lt_01EB], 0
jne .L_0151
inc dword ptr [Lt_01EB]
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
dec dword ptr [Lt_01EB]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.L_0151:
.L_0150:
.L_014F:
.L_014E:
.L_0148:
.L_0147:
cmp dword ptr [ebp-8], 17
jne .L_0153
.L_0154:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKSTRPARAM
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_012E
jmp .L_0152
.L_0153:
cmp dword ptr [ebp-8], 4
je .L_0156
.L_0157:
cmp dword ptr [ebp-8], 7
jne .L_0155
.L_0156:
cmp dword ptr [ebp-12], 17
je .L_015A
.L_015B:
cmp dword ptr [ebp-12], 18
je .L_015A
.L_015C:
cmp dword ptr [ebp-12], 4
je .L_015A
.L_015D:
cmp dword ptr [ebp-12], 7
jne .L_0159
.L_015A:
jmp .L_0158
.L_0159:
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_015E:
.L_0158:
jmp .L_0152
.L_0155:
cmp dword ptr [ebp-8], 20
jne .L_015F
.L_0160:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HCHECKUDTPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_012E
.L_015F:
.L_0152:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0162
.L_0164:
cmp dword ptr [ebp-8], 36
je .L_0167
.L_0168:
cmp dword ptr [ebp-8], 4
jne .L_0166
.L_0167:
cmp dword ptr [ebp-12], 7
jne .L_016A
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.L_016A:
.L_0169:
jmp .L_0165
.L_0166:
cmp dword ptr [ebp-8], 39
je .L_016C
.L_016D:
cmp dword ptr [ebp-8], 7
jne .L_016B
.L_016C:
cmp dword ptr [ebp-12], 7
je .L_016F
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call RTLTOWSTR
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.L_016F:
.L_016E:
jmp .L_0165
.L_016B:
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0170:
.L_0165:
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSTRARGTOSTRPTRPARAM
add esp, 12
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .L_0172
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.L_0172:
.L_0171:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
jmp .L_0161
.L_0173:
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
jmp .L_0161
.L_0162:
mov eax, dword ptr [ebp-16]
add eax, 4294967292
cmp eax, 16
ja .L_0161
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0174+eax*4-16]
.L_0174:
.int .L_0164
.int .L_0161
.int .L_0161
.int .L_0164
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0161
.int .L_0164
.int .L_0164
.int .L_0161
.int .L_0173
.L_0161:
mov eax, dword ptr [ebp-8]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0176
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0177
mov dword ptr [ebp-16], 24
jmp .L_01DE
.L_0177:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_01DE:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_0179
mov dword ptr [ebp-20], 24
jmp .L_01DF
.L_0179:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01DF:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [SYMB_DTYPETB+ebx]
cmp dword ptr [SYMB_DTYPETB+eax], ecx
je .L_017C
push 0
push 1
push 0
push 5
call ERRREPORTWARN
add esp, 16
.L_017C:
.L_017B:
.L_0176:
.L_0175:
mov ecx, dword ptr [ebp-8]
and ecx, 480
test ecx, ecx
je .L_017E
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
call ASTPTRCHECK
add esp, 16
test eax, eax
jne .L_0180
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
jne .L_0182
push 0
push 1
push 0
push 1
call ERRREPORTWARN
add esp, 16
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp-8]
and eax, 31
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0184
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+56]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .L_0186
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_012E
jmp .L_0185
.L_0186:
push 0
push 1
push 0
push 3
call ERRREPORTWARN
add esp, 16
.L_0185:
jmp .L_0183
.L_0184:
push 0
push 1
push 0
push 3
call ERRREPORTWARN
add esp, 16
.L_0183:
.L_0181:
.L_0180:
.L_017F:
jmp .L_017D
.L_017E:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .L_0187
push 0
push 1
push 0
push 2
call ERRREPORTWARN
add esp, 16
.L_0187:
.L_017D:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+56]
mov ebx, dword ptr [ecx+32]
cmp ebx, dword ptr [esi+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0189
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_018A
mov dword ptr [ebp-16], 24
jmp .L_01E1
.L_018A:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-16], ecx
.L_01E1:
mov ecx, dword ptr [ebp-16]
imul ecx, 28
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_018C
mov dword ptr [ebp-20], 24
jmp .L_01E2
.L_018C:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_01E2:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [ebp-32]
mov esi, dword ptr [SYMB_DTYPETB+ecx+4]
cmp esi, dword ptr [SYMB_DTYPETB+eax+4]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov dword ptr [ebp-36], esi
mov esi, dword ptr [ebp-8]
and esi, 480
je .L_018E
mov dword ptr [ebp-24], 24
jmp .L_01E3
.L_018E:
mov esi, dword ptr [ebp-8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_01E3:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov dword ptr [ebp-40], esi
mov esi, dword ptr [ebp-12]
and esi, 480
je .L_0190
mov dword ptr [ebp-28], 24
jmp .L_01E4
.L_0190:
mov esi, dword ptr [ebp-12]
and esi, 31
mov dword ptr [ebp-28], esi
.L_01E4:
mov esi, dword ptr [ebp-28]
imul esi, 28
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [SYMB_DTYPETB+esi]
cmp ecx, dword ptr [SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .L_0193
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+56], 2
jne .L_0195
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
call ASTSKIPNOCONVCAST
add esp, 4
push eax
call ASTCANTAKEADDROF
add esp, 4
test eax, eax
je .L_0197
push 0
push 0
push 58
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0197:
.L_0196:
.L_0195:
.L_0194:
.L_0193:
.L_0192:
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
jne .L_0199
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .L_012E
.L_0199:
.L_0198:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.L_0189:
.L_0188:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .L_019B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HCHECKBYREFPARAM
add esp, 8
.L_019B:
.L_019A:
mov dword ptr [ebp-4], -1
.L_012E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_01EB:
.int 0

.section .text
.balign 16
HCREATEOPTARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_019C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_019F
mov dword ptr [ebp-4], 0
jmp .L_019D
.L_019F:
.L_019E:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
jne .L_01A1
push dword ptr [ebp-8]
call ASTTYPEINICLONE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTTYPEINITRYREMOVE
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01A0
.L_01A1:
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
.L_01A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_019D:
mov eax, dword ptr [ebp-4]
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
