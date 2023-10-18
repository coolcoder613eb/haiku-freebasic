	.intel_syntax noprefix

.section .text
.balign 16

.globl _HBUILDBYREFARG@8
_HBUILDBYREFARG@8:
push ebp
mov ebp, esp
push ebx
.L_0093:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTREMOVENOCONVCAST@4
push eax
call _ASTNEWADDROF@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
push 0
push 16
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
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
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 1
.L_0094:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTNEWARG@16
_ASTNEWARG@16:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
movsx ecx, word ptr [eax+68]
cmp dword ptr [ebx+28], ecx
jl .L_01A6
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+80]
mov dword ptr [ebp-16], ebx
jmp .L_01A5
.L_01A6:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-16], ecx
.L_01A5:
cmp dword ptr [ebp+12], 0
jne .L_01A8
push dword ptr [ebp-16]
call _HCREATEOPTARG@4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .L_01AA
mov dword ptr [ebp-4], 0
jmp .L_01A4
.L_01AA:
.L_01A9:
.L_01A8:
.L_01A7:
cmp dword ptr [ebp+16], -2147483648
jne .L_01AC
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp+16], ecx
.L_01AC:
.L_01AB:
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
je .L_01AE
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
call _SYMBCHECKCONSTASSIGNTOPLEVEL@24
test eax, eax
jne .L_01B1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 524288
test ebx, ebx
je .L_01B3
push 276
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ERRREPORTPARAM@16
jmp .L_01B2
.L_01B3:
push 181
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ERRREPORTPARAM@16
.L_01B2:
mov dword ptr [ebp-4], 0
jmp .L_01A4
.L_01B1:
.L_01B0:
.L_01AE:
.L_01AD:
push 0
push -2147483648
push 22
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov dword ptr [ebx+36], 0
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+84], 4
jne .L_01B5
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+68], 0
jne .L_01B7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
.L_01B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+36], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
jmp .L_01B4
.L_01B5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+68], 0
jne .L_01B9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+36], eax
.L_01B9:
.L_01B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebx+68], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+68], ebx
.L_01B4:
push 0
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
inc ecx
push ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+12]
call _ERRPUSHPARAMLOCATION@16
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HCHECKPARAM@12
test eax, eax
jne .L_01BB
call _ERRPOPPARAMLOCATION@0
mov dword ptr [ebp-4], 0
jmp .L_01A4
.L_01BB:
.L_01BA:
call _ERRPOPPARAMLOCATION@0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
movsx ebx, word ptr [ecx+68]
cmp dword ptr [eax+28], ebx
jge .L_01BD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+176]
mov dword ptr [ebx+32], ecx
.L_01BD:
.L_01BC:
.L_01A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTREPLACEINSTANCEARG@12
_ASTREPLACEINSTANCEARG@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+84], 4
jne .L_01C3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
jmp .L_01C2
.L_01C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-12], ebx
.L_01C2:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+32], 0
mov dword ptr [eax+36], 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKPARAM@12
.L_01C1:
pop ebx
mov esp, ebp
pop ebp
ret 12
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
call _fb_StrAssign@20
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
_HALLOCTMPARRAYDESC@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
push dword ptr [ebp+8]
call _SYMBADDARRAYDESC@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTBUILDARRAYDESCINITREE@12
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
push 0
push 64
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ASTNEWLINK@12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDTOCOPYBACKLIST@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0060:
lea eax, [_AST+44]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebx+8], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx], ecx
push dword ptr [ebp+16]
call _ASTCLONETREE@4
push eax
call _ASTOPTIMIZETREE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0061:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HALLOCTMPSTRING@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0062:
push 0
push 17
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTDTORLISTADD@4
cmp dword ptr [ebp+16], 0
je .L_0065
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HADDTOCOPYBACKLIST@12
.L_0065:
.L_0064:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
push 0
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _RTLSTRASSIGN@12
push eax
push dword ptr [ebp-8]
call _ASTBUILDTEMPVARCLEAR@4
push eax
call _ASTNEWLINK@12
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.L_0063:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_HALLOCTMPWSTRPTR@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0066:
push 0
push 39
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-8]
call _ASTDTORLISTADD@4
push 0
push 39
push dword ptr [ebp+12]
call _ASTSETTYPE@12
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKARGFORSTRINGPARAM@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 0
je .L_006B
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 2
jne .L_006D
cmp dword ptr [ebp-8], 17
jne .L_006F
.L_0070:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 9
jne .L_0072
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .L_0069
.L_0072:
.L_0071:
jmp .L_006E
.L_006F:
cmp dword ptr [ebp-8], 4
je .L_0074
.L_0075:
cmp dword ptr [ebp-8], 18
jne .L_0073
.L_0074:
push dword ptr [ebp+16]
call _RTLSTRALLOCTMPDESC@4
mov dword ptr [ebp-4], eax
jmp .L_0069
.L_0073:
.L_006E:
.L_006D:
.L_006C:
.L_006B:
.L_006A:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .L_0077
cmp dword ptr [ebp-8], 18
jne .L_0079
.L_007A:
mov dword ptr [ebp-12], -1
jmp .L_0078
.L_0079:
cmp dword ptr [ebp-8], 17
jne .L_007B
.L_007C:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
je .L_007E
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .L_0069
.L_007E:
.L_007D:
.L_007B:
.L_0078:
.L_0077:
.L_0076:
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HALLOCTMPSTRING@12
mov dword ptr [ebp-4], eax
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HSTRARGTOSTRPTRPARAM@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_007F:
cmp dword ptr [ebp+16], 0
jne .L_0082
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_0084
jmp .L_0080
.L_0084:
.L_0083:
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 17
jne .L_0087
.L_0088:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 9
jne .L_008A
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+64]
push dword ptr [ebp+8]
call _HALLOCTMPSTRING@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
.L_008A:
.L_0089:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTBUILDSTRPTR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_0085
.L_0087:
cmp dword ptr [ebp-4], 18
jne .L_008B
.L_008C:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTNEWADDROF@4
push eax
push 0
push 36
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_0085
.L_008B:
cmp dword ptr [ebp-4], 4
jne .L_008D
.L_008E:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTNEWADDROF@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_0085
.L_008D:
cmp dword ptr [ebp-4], 7
jne .L_008F
.L_0090:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 9
jne .L_0092
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+64]
push dword ptr [ebp+8]
call _HALLOCTMPWSTRPTR@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTNEWADDROF@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
.L_0091:
.L_008F:
.L_0085:
.L_0080:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKBYREFPARAM@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0095:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTSKIPCONSTCASTS@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 9
jne .L_0098
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-8], eax
jmp .L_009A
.L_009C:
jmp .L_0096
jmp .L_0099
.L_009A:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .L_0099
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_009D+eax*4-16]
_.L_009D:
.int .L_009C
.int .L_0099
.int .L_0099
.int .L_009C
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_009C
.int .L_009C
.L_0099:
.L_0098:
.L_0097:
push dword ptr [ebp-4]
call _ASTCANTAKEADDROF@4
test eax, eax
jne .L_009F
push 80
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
push eax
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
.L_009F:
.L_009E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG@8
.L_0096:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKBYDESCDIMENSIONS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
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
mov esi, dword ptr [eax+64]
cmp esi, dword ptr [ecx+68]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
mov dword ptr [ebp-4], ebx
.L_00A1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKBYDESCPARAM@12:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 1
jne .L_00A5
mov dword ptr [ebp-4], -1
jmp .L_00A3
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_00A7
jmp .L_00A3
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
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
je .L_00A9
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_00AA
mov dword ptr [ebp-28], 24
jmp .L_01C7
.L_00AA:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01C7:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_00AC
mov dword ptr [ebp-32], 24
jmp .L_01C8
.L_00AC:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_01C8:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_00AE
mov dword ptr [ebp-36], 24
jmp .L_01C9
.L_00AE:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-36], ecx
.L_01C9:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .L_00B0
mov dword ptr [ebp-40], 24
jmp .L_01CA
.L_00B0:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-40], ecx
.L_01CA:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-48]
je .L_00B3
jmp .L_00A3
.L_00B3:
.L_00B2:
.L_00A9:
.L_00A8:
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
je .L_00B5
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+8], ecx
je .L_00B7
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_00A3
.L_00B7:
.L_00B6:
.L_00B5:
.L_00B4:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+64]
cmp dword ptr [ebx], 17
jne .L_00B9
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+4]
and ecx, 16384
test ecx, ecx
je .L_00BB
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS@8
test eax, eax
jne .L_00BD
jmp .L_00A3
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+92]
push 52
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _ASTSETTYPE@12
mov dword ptr [ebp-4], -1
jmp .L_00A3
.L_00BB:
.L_00BA:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+88]
mov dword ptr [ebp-24], ecx
cmp dword ptr [ebp-24], 0
je .L_00BF
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS@8
test eax, eax
jne .L_00C1
jmp .L_00A3
.L_00C1:
.L_00C0:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _ASTDELTREE@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+64], eax
mov dword ptr [ebp-4], -1
jmp .L_00A3
.L_00BF:
.L_00BE:
jmp .L_00B8
.L_00B9:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+64]
cmp dword ptr [ecx], 19
jne .L_00C2
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .L_00C4
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS@8
test eax, eax
jne .L_00C6
jmp .L_00A3
.L_00C6:
.L_00C5:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+88]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+28]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+64]
call _ASTSETTYPE@12
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+64]
call _ASTNEWADDROF@4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+64], eax
mov dword ptr [ebp-4], -1
jmp .L_00A3
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+64], 0
jle .L_00C7
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS@8
test eax, eax
jne .L_00C9
jmp .L_00A3
.L_00C9:
.L_00C8:
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp-20]
call _HALLOCTMPARRAYDESC@12
mov dword ptr [ebp-24], eax
push 1
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
call _ASTNEWLINK@12
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+64], eax
mov dword ptr [ebp-4], -1
.L_00C7:
.L_00C3:
.L_00C2:
.L_00B8:
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKVARARGPARAM@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_00CA:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_00CC
mov dword ptr [ebp-12], 24
jmp .L_01D4
.L_00CC:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_01D4:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-16], ebx
jmp .L_00CF
.L_00D1:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM@12
jmp .L_00CE
.L_00D2:
cmp dword ptr [ebp-8], 4
je .L_00D5
.L_00D6:
cmp dword ptr [ebp-8], 7
jne .L_00D4
.L_00D5:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM@12
jmp .L_00D3
.L_00D4:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00D8
mov dword ptr [ebp-20], 24
jmp .L_01D5
.L_00D8:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01D5:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jge .L_00DB
push 0
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+64]
push 0
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00DC
mov dword ptr [ebp-24], 24
jmp .L_01D6
.L_00DC:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_01D6:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .L_00DE
mov dword ptr [ebp-28], 11
jmp .L_01D7
.L_00DE:
mov dword ptr [ebp-28], 12
.L_01D7:
push dword ptr [ebp-28]
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
.L_00DB:
.L_00DA:
.L_00D7:
.L_00D3:
jmp .L_00CE
.L_00E0:
cmp dword ptr [ebp-8], 15
jne .L_00E2
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push 0
push 16
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
.L_00E2:
.L_00E1:
jmp .L_00CE
.L_00E3:
push 0
push 0
push 58
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_00CB
jmp .L_00CE
.L_00CF:
cmp dword ptr [ebp-16], 2
ja .L_00E3
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00E4+eax*4]
_.L_00E4:
.int .L_00D2
.int .L_00E0
.int .L_00D1
.L_00CE:
mov dword ptr [ebp-4], -1
.L_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKVOIDPARAM@12:
push ebp
mov ebp, esp
push ebx
.L_00E5:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 1
jne .L_00E8
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM@12
jmp .L_00E6
.L_00E8:
.L_00E7:
cmp dword ptr [_ENV+136], 3
je .L_00EA
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+64]
mov ebx, dword ptr [ecx]
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00EC
jmp .L_00E6
.L_00EC:
.L_00EB:
.L_00EA:
.L_00E9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKBYREFPARAM@8
.L_00E6:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKSTRPARAM@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00F0
.L_00F2:
jmp .L_00EF
.L_00F3:
jmp .L_00EF
.L_00F4:
push 0
push 0
push 58
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_00EE
jmp .L_00EF
.L_00F0:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .L_00F4
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00F5+eax*4-16]
_.L_00F5:
.int .L_00F3
.int .L_00F4
.int .L_00F4
.int .L_00F3
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F2
.int .L_00F2
.L_00EF:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKARGFORSTRINGPARAM@12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .L_00F8
.L_00F9:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 9
je .L_00FB
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HBUILDBYREFARG@8
.L_00FB:
.L_00FA:
jmp .L_00F6
.L_00F8:
cmp dword ptr [ebp-12], 1
jne .L_00FC
.L_00FD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HBUILDBYREFARG@8
.L_00FC:
.L_00F6:
mov dword ptr [ebp-4], -1
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HBYTEBYBYTE@8:
push ebp
mov ebp, esp
push ebx
push esi
.L_00FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+40]
mov ecx, dword ptr [ebx+44]
mov dword ptr [eax+32], esi
mov dword ptr [eax+36], ecx
.L_00FF:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HUDTPASSBYVAL@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0100:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTSKIPNOCONVCAST@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBCOMPISTRIVIAL@4
test eax, eax
je .L_0103
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .L_0105
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTREMOVENOCONVCAST@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+12]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .L_0107
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTBUILDCALLRESULTVAR@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBYTEBYBYTE@8
jmp .L_0106
.L_0107:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+88]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTSETTYPE@12
.L_0106:
jmp .L_0104
.L_0105:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBYTEBYBYTE@8
.L_0104:
jmp .L_0101
.L_0103:
.L_0102:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _ASTDTORLISTADD@4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 36
jne .L_0109
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTREMOVENOCONVCAST@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
push 64
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push dword ptr [ebp-4]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
push eax
call _ASTNEWLINK@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_0108
.L_0109:
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
cmp dword ptr [ebp-16], 0
je .L_010B
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTPATCHCTORCALL@8
push eax
call _ASTNEWCALLCTOR@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_010A
.L_010B:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
push 64
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTNEWLINK@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
.L_010A:
.L_0108:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG@8
.L_0101:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HIMPLICITCTOR@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_010C:
push dword ptr [ebp+8]
call _SYMBHASCTOR@4
test eax, eax
jne .L_010F
jmp .L_010D
.L_010F:
.L_010E:
cmp dword ptr [_Lt_01DA], 0
je .L_0111
jmp .L_010D
.L_0111:
.L_0110:
inc dword ptr [_Lt_01DA]
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp-8], eax
dec dword ptr [_Lt_01DA]
cmp dword ptr [ebp-16], 0
jne .L_0113
jmp .L_010D
.L_0113:
.L_0112:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDTORLISTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-8]
call _ASTPATCHCTORCALL@8
push eax
call _ASTNEWCALLCTOR@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 1
jne .L_0115
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HUDTPASSBYVAL@8
jmp .L_0114
.L_0115:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG@8
.L_0114:
mov dword ptr [ebp-4], -1
.L_010D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_01DA:
.int 0

.section .text
.balign 16
_HCHECKUDTPARAM@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0116:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
je .L_0119
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HIMPLICITCTOR@8
test eax, eax
jne .L_011B
push 0
push 0
push 58
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_0117
.L_011B:
.L_011A:
mov dword ptr [ebp-4], -1
jmp .L_0117
.L_0119:
.L_0118:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+8], ecx
je .L_011D
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+64]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jne .L_011F
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HIMPLICITCTOR@8
test eax, eax
jne .L_0121
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .L_0123
push 0
push 0
push 58
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .L_0117
.L_0123:
.L_0122:
jmp .L_0120
.L_0121:
mov dword ptr [ebp-4], -1
jmp .L_0117
.L_0120:
jmp .L_011E
.L_011F:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _ASTNEWCONV@20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
.L_011E:
.L_011D:
.L_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .L_0126
.L_0127:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+64]
call _ASTREMOVENOCONVCAST@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 9
jne .L_0129
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
jne .L_012B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWADDROF@4
push eax
push 96
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTNEWLINK@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 1
mov dword ptr [ebp-4], -1
jmp .L_0117
.L_012B:
.L_012A:
.L_0129:
.L_0128:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG@8
jmp .L_0124
.L_0126:
cmp dword ptr [ebp-12], 1
jne .L_012C
.L_012D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HUDTPASSBYVAL@8
.L_012C:
.L_0124:
mov dword ptr [ebp-4], -1
.L_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKPARAM@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_012E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _ASTUPDSTRCONCAT@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 3
jne .L_0132
.L_0133:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKBYDESCPARAM@12
test eax, eax
jne .L_0135
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_0135:
.L_0134:
mov dword ptr [ebp-4], -1
jmp .L_012F
jmp .L_0130
.L_0132:
cmp dword ptr [ebp-16], 4
jne .L_0136
.L_0137:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVARARGPARAM@12
mov dword ptr [ebp-4], eax
jmp .L_012F
jmp .L_0130
.L_0136:
cmp dword ptr [ebp-16], 2
jne .L_0138
.L_0139:
cmp dword ptr [ebp-8], 0
jne .L_013B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVOIDPARAM@12
mov dword ptr [ebp-4], -1
jmp .L_012F
.L_013B:
.L_013A:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+24], 1
jne .L_013D
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_013E
mov dword ptr [ebp-24], 24
jmp .L_01DB
.L_013E:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-24], eax
.L_01DB:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_0140
mov dword ptr [ebp-28], 24
jmp .L_01DC
.L_0140:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_01DC:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_ENV+296]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .L_0143
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_0143:
.L_0142:
mov dword ptr [ebp-4], -1
jmp .L_012F
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 19
jne .L_0144
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .L_01DE
.L_0144:
mov dword ptr [ebp-20], 0
.L_01DE:
cmp dword ptr [ebp-20], 0
je .L_0147
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_0147:
.L_0146:
.L_0138:
.L_0130:
cmp dword ptr [ebp-12], 20
jne .L_0149
.L_014A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 1
jne .L_014C
push 32
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBFINDCTOROVLPROC@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_014E
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKUDTPARAM@8
mov dword ptr [ebp-4], eax
jmp .L_012F
.L_014E:
.L_014D:
.L_014C:
.L_014B:
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0150
cmp dword ptr [_Lt_01EC], 0
jne .L_0152
inc dword ptr [_Lt_01EC]
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
push dword ptr [ebp-20]
call _ASTBUILDCALL@16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
dec dword ptr [_Lt_01EC]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.L_0152:
.L_0151:
.L_0150:
.L_014F:
.L_0149:
.L_0148:
cmp dword ptr [ebp-8], 17
jne .L_0154
.L_0155:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKSTRPARAM@12
mov dword ptr [ebp-4], eax
jmp .L_012F
jmp .L_0153
.L_0154:
cmp dword ptr [ebp-8], 4
je .L_0157
.L_0158:
cmp dword ptr [ebp-8], 7
jne .L_0156
.L_0157:
cmp dword ptr [ebp-12], 17
je .L_015B
.L_015C:
cmp dword ptr [ebp-12], 18
je .L_015B
.L_015D:
cmp dword ptr [ebp-12], 4
je .L_015B
.L_015E:
cmp dword ptr [ebp-12], 7
jne .L_015A
.L_015B:
jmp .L_0159
.L_015A:
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_015F:
.L_0159:
jmp .L_0153
.L_0156:
cmp dword ptr [ebp-8], 20
jne .L_0160
.L_0161:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKUDTPARAM@8
mov dword ptr [ebp-4], eax
jmp .L_012F
.L_0160:
.L_0153:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_0163
.L_0165:
cmp dword ptr [ebp-8], 36
je .L_0168
.L_0169:
cmp dword ptr [ebp-8], 4
jne .L_0167
.L_0168:
cmp dword ptr [ebp-12], 7
jne .L_016B
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _RTLTOSTR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
.L_016B:
.L_016A:
jmp .L_0166
.L_0167:
cmp dword ptr [ebp-8], 39
je .L_016D
.L_016E:
cmp dword ptr [ebp-8], 7
jne .L_016C
.L_016D:
cmp dword ptr [ebp-12], 7
je .L_0170
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _RTLTOWSTR@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
.L_0170:
.L_016F:
jmp .L_0166
.L_016C:
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_0171:
.L_0166:
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM@12
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .L_0173
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
call _ASTNEWDEREF@20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
.L_0173:
.L_0172:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
jmp .L_0162
.L_0174:
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
jmp .L_0162
.L_0163:
mov eax, dword ptr [ebp-16]
add eax, 4294967292
cmp eax, 16
ja .L_0162
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0175+eax*4-16]
_.L_0175:
.int .L_0165
.int .L_0162
.int .L_0162
.int .L_0165
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0162
.int .L_0165
.int .L_0165
.int .L_0162
.int .L_0174
.L_0162:
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
je .L_0177
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0178
mov dword ptr [ebp-16], 24
jmp .L_01DF
.L_0178:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_01DF:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .L_017A
mov dword ptr [ebp-20], 24
jmp .L_01E0
.L_017A:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_01E0:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp dword ptr [_SYMB_DTYPETB+eax], ecx
je .L_017D
push 0
push 1
push 0
push 5
call _ERRREPORTWARN@16
.L_017D:
.L_017C:
.L_0177:
.L_0176:
mov ecx, dword ptr [ebp-8]
and ecx, 480
test ecx, ecx
je .L_017F
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+64]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
call _ASTPTRCHECK@16
test eax, eax
jne .L_0181
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
jne .L_0183
push 0
push 1
push 0
push 1
call _ERRREPORTWARN@16
jmp .L_0182
.L_0183:
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
je .L_0185
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+64]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETUDTBASELEVEL@8
test eax, eax
jle .L_0187
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_012F
jmp .L_0186
.L_0187:
push 0
push 1
push 0
push 3
call _ERRREPORTWARN@16
.L_0186:
jmp .L_0184
.L_0185:
push 0
push 1
push 0
push 3
call _ERRREPORTWARN@16
.L_0184:
.L_0182:
.L_0181:
.L_0180:
jmp .L_017E
.L_017F:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .L_0188
push 0
push 1
push 0
push 2
call _ERRREPORTWARN@16
.L_0188:
.L_017E:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+64]
mov ebx, dword ptr [ecx+32]
cmp ebx, dword ptr [esi+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_018A
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_018B
mov dword ptr [ebp-16], 24
jmp .L_01E2
.L_018B:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-16], ecx
.L_01E2:
mov ecx, dword ptr [ebp-16]
imul ecx, 28
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_018D
mov dword ptr [ebp-20], 24
jmp .L_01E3
.L_018D:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_01E3:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [ebp-32]
mov esi, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp esi, dword ptr [_SYMB_DTYPETB+eax+4]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov dword ptr [ebp-36], esi
mov esi, dword ptr [ebp-8]
and esi, 480
je .L_018F
mov dword ptr [ebp-24], 24
jmp .L_01E4
.L_018F:
mov esi, dword ptr [ebp-8]
and esi, 31
mov dword ptr [ebp-24], esi
.L_01E4:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov dword ptr [ebp-40], esi
mov esi, dword ptr [ebp-12]
and esi, 480
je .L_0191
mov dword ptr [ebp-28], 24
jmp .L_01E5
.L_0191:
mov esi, dword ptr [ebp-12]
and esi, 31
mov dword ptr [ebp-28], esi
.L_01E5:
mov esi, dword ptr [ebp-28]
imul esi, 28
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [_SYMB_DTYPETB+esi]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .L_0194
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+56], 2
jne .L_0196
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+64]
call _ASTSKIPNOCONVCAST@4
push eax
call _ASTCANTAKEADDROF@4
test eax, eax
je .L_0198
push 0
push 0
push 58
call _ERRREPORT@12
jmp .L_012F
.L_0198:
.L_0197:
.L_0196:
.L_0195:
.L_0194:
.L_0193:
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _ASTNEWCONV@20
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+64], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+64], 0
jne .L_019A
push 0
push 0
push 24
call _ERRREPORT@12
jmp .L_012F
.L_019A:
.L_0199:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.L_018A:
.L_0189:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .L_019C
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKBYREFPARAM@8
.L_019C:
.L_019B:
mov dword ptr [ebp-4], -1
.L_012F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .data
.balign 4
_Lt_01EC:
.int 0

.section .text
.balign 16
_HCREATEOPTARG@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_019D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_01A0
mov dword ptr [ebp-4], 0
jmp .L_019E
.L_01A0:
.L_019F:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
jne .L_01A2
push dword ptr [ebp-8]
call _ASTTYPEINICLONE@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTTYPEINITRYREMOVE@4
mov dword ptr [ebp-8], eax
jmp .L_01A1
.L_01A2:
push dword ptr [ebp-8]
call _ASTCLONETREE@4
mov dword ptr [ebp-8], eax
.L_01A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
