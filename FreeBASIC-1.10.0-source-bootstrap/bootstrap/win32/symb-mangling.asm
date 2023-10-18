	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBMANGLEINIT@0
_SYMBMANGLEINIT@0:
.L_005D:
push 12
push 96
lea eax, [_CTX]
push eax
call _FLISTINIT@12
mov dword ptr [_CTX+56], 0
mov dword ptr [_CTX+80], 0
mov dword ptr [_CTX+84], 0
mov dword ptr [_CTX+88], 0
.L_005E:
ret
.balign 16

.globl _SYMBMANGLEEND@0
_SYMBMANGLEEND@0:
.L_005F:
lea eax, [_CTX]
push eax
call _FLISTEND@4
.L_0060:
ret
.balign 16

.globl _SYMBUNIQUEID@4
_SYMBUNIQUEID@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0061:
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
movzx ebx, byte ptr [ebp+8]
neg ebx
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0064
push 0
push 5
push offset _Lt_0065
push 17
lea ebx, [_CTX+60]
push ebx
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [_CTX+80]
call _fb_IntToStr@4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
jmp .L_0063
.L_0064:
push 0
push 4
push offset _Lt_0067
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT@4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
.L_0063:
inc dword ptr [_CTX+80]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBUNIQUELABEL@0
_SYMBUNIQUELABEL@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_006B:
cmp dword ptr [_ENV+104], 1
jne .L_006E
push 0
push 7
push offset _Lt_006F
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [_CTX+84]
call _fb_IntToStr@4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
inc dword ptr [_CTX+84]
jmp .L_006D
.L_006E:
cmp dword ptr [_ENV+108], 9
jne .L_0072
push 0
push 3
push offset _Lt_0073
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
jmp .L_0071
.L_0072:
push 0
push 4
push offset _Lt_0074
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
.L_0071:
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT@4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
inc dword ptr [_CTX+80]
.L_006D:
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMAKEPROFILELABELNAME@0
_SYMBMAKEPROFILELABELNAME@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0076:
push 0
push -1
push 0
push dword ptr [_CTX+88]
call _HHEXUINT@4
push eax
push 4
push offset _Lt_0078
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign@20
inc dword ptr [_CTX+88]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDBGNAME@4
_SYMBGETDBGNAME@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
push dword ptr [ebp+8]
call _HDOCPPMANGLING@4
test eax, eax
je .L_007D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_007F
.L_0081:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0083
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.L_0083:
.L_0082:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_007B
jmp .L_007E
.L_0084:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
mov dword ptr [ebp-4], eax
jmp .L_007B
jmp .L_007E
.L_007F:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .L_0084
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0085+eax*4-32]
_.L_0085:
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0081
.L_007E:
.L_007D:
.L_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0087
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .L_0089
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .L_007B
.L_0089:
.L_0088:
.L_0087:
.L_0086:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBSETNAME@8
_SYMBSETNAME@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_008C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_008F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [_SYMB+98616]
push eax
call _POOLDELITEM@8
.L_008F:
.L_008E:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0091
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .L_0090
.L_0091:
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [_SYMB+98616]
push eax
call _POOLNEWITEM@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _fb_StrAssign@20
.L_0090:
.L_008D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBGETMANGLEDNAME@4
_SYMBGETMANGLEDNAME@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_00A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .L_00A1
.L_00A3:
.L_00A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A5
.L_00A7:
push dword ptr [ebp+8]
call _HMANGLEPROC@4
jmp .L_00A4
.L_00A8:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
push dword ptr [ebx]
lea ebx, [ebp-20]
push ebx
call _HMANGLENAMESPACE@16
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call _HMANGLEUDTID@8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+144]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .L_00AA
push 0
push 2
push offset _Lt_009F
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign@20
.L_00AA:
.L_00A9:
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID@8
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete@4
jmp .L_00A4
.L_00AB:
push dword ptr [ebp+8]
call _HMANGLEVARIABLE@4
jmp .L_00A4
.L_00AC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .L_00A1
jmp .L_00A4
.L_00A5:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .L_00AC
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_00AD+eax*4-4]
_.L_00AD:
.int .L_00AB
.int .L_00AC
.int .L_00A7
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00AC
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00A8
.int .L_00AC
.int .L_00AC
.int .L_00A8
.L_00A4:
call _SYMBMANGLERESETABBREV@0
cmp dword ptr [_ENV+104], 1
jne .L_00AF
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_00B1
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HREPLACECHAR@12
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.L_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBMANGLERESETABBREV@0
_SYMBMANGLERESETABBREV@0:
.L_00B3:
lea eax, [_CTX]
push eax
call _FLISTRESET@4
mov dword ptr [_CTX+56], 0
.L_00B4:
ret
.balign 16

.globl _HMANGLEBUILTINTYPE@8
_HMANGLEBUILTINTYPE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CE:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .L_00D1
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset _Lt_00D2
mov dword ptr [ebp-4], eax
jmp .L_00CF
.L_00D1:
.L_00D0:
call _FBIS64BIT@0
mov ebx, dword ptr [_ENV+284]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_00D4
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00D6
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .L_00D8
.L_00D9:
mov ebx, offset _Lt_00DA
mov dword ptr [ebp-4], ebx
jmp .L_00CF
jmp .L_00D7
.L_00D8:
cmp dword ptr [ebp+8], 9
jne .L_00DB
.L_00DC:
mov ebx, offset _Lt_00DD
mov dword ptr [ebp-4], ebx
jmp .L_00CF
.L_00DB:
.L_00D7:
jmp .L_00D5
.L_00D6:
cmp dword ptr [ebp+8], 8
jne .L_00DF
.L_00E0:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00E1
mov dword ptr [ebp-4], ebx
jmp .L_00CF
jmp .L_00DE
.L_00DF:
cmp dword ptr [ebp+8], 9
jne .L_00E2
.L_00E3:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00E4
mov dword ptr [ebp-4], ebx
jmp .L_00CF
.L_00E2:
.L_00DE:
.L_00D5:
jmp .L_00D3
.L_00D4:
cmp dword ptr [ebp+8], 8
jne .L_00E6
.L_00E7:
mov ebx, offset _Lt_00DA
mov dword ptr [ebp-4], ebx
jmp .L_00CF
jmp .L_00E5
.L_00E6:
cmp dword ptr [ebp+8], 9
jne .L_00E8
.L_00E9:
mov ebx, offset _Lt_00DD
mov dword ptr [ebp-4], ebx
jmp .L_00CF
.L_00E8:
.L_00E5:
.L_00D3:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .L_00EB
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.L_00EB:
.L_00EA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_00FC+ebx*4]
mov dword ptr [ebp-4], eax
.L_00CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_00FC:
.int _Lt_00ED
.int _Lt_00EE
.int _Lt_00EF
.int _Lt_00F0
.int _Lt_00F1
.int _Lt_00F2
.int _Lt_00F3
.int _Lt_00F4
.long 0
.long 0
.long 0
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.int _Lt_00FA
.long 0
.long 0
.int _Lt_00F1
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl _SYMBMANGLETYPE@16
_SYMBMANGLETYPE@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_00FD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVFIND@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .L_0100
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HABBREVGET@8
jmp .L_00FE
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_0101
mov dword ptr [ebp-16], 24
jmp .L_0140
.L_0101:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0140:
cmp dword ptr [ebp-16], 23
jne .L_0104
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.L_0104:
.L_0103:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .L_0106
push 0
push 2
push offset _Lt_0107
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
jmp .L_00FE
.L_0106:
.L_0105:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .L_0109
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_010B
push 0
push 2
push offset _Lt_010C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_010B:
.L_010A:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_010E
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
.L_010E:
.L_010D:
jmp .L_00FE
.L_0109:
.L_0108:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .L_0110
push 0
push 2
push offset _Lt_0111
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+20]
or eax, 2
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
jmp .L_00FE
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .L_0113
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .L_0115
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .L_0117
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBGETVALISTTYPE@8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .L_011A
.L_011B:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .L_011D
push 0
push 4
push offset _Lt_011E
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_011C
.L_011D:
push 0
push 2
push offset _Lt_0111
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_011C:
and dword ptr [ebp+12], -32505857
jmp .L_0118
.L_011A:
cmp dword ptr [ebp-20], 4
je .L_0120
.L_0121:
cmp dword ptr [ebp-20], 5
jne .L_011F
.L_0120:
push 0
push 3
push offset _Lt_0122
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
and dword ptr [ebp+12], -32505857
.L_011F:
.L_0118:
.L_0117:
.L_0116:
.L_0115:
.L_0114:
.L_0113:
.L_0112:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .L_0126
.L_0127:
cmp dword ptr [ebp-20], 10
jne .L_0125
.L_0126:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .L_0129
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID@8
jmp .L_0128
.L_0129:
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_012B
push 0
push 2
push offset _Lt_012C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_012B:
.L_012A:
push 8
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID@8
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_012E
push 0
push 2
push offset _Lt_009F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_012E:
.L_012D:
.L_0128:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
jmp .L_0123
.L_0125:
cmp dword ptr [ebp-20], 21
jne .L_012F
.L_0130:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .L_0132
jmp .L_00FE
.L_0132:
.L_0131:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0134
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
.L_0134:
.L_0133:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID@8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
jmp .L_0123
.L_012F:
cmp dword ptr [ebp-20], 22
jne .L_0135
.L_0136:
push 0
push 2
push offset _Lt_0137
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0139
push 0
push 2
push offset _Lt_0107
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_0139:
.L_0138:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .L_013B
push 0
push 2
push offset _Lt_010C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_013B:
.L_013A:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HGETPROCPARAMSTYPECODE@12
push 0
push 2
push offset _Lt_009F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
jmp .L_0123
.L_0135:
push 0
push -1
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
cmp dword ptr [ebp-8], 0
je .L_013F
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD@8
.L_013F:
.L_013E:
.L_013C:
.L_0123:
.L_00FE:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBMANGLEPARAM@8
_SYMBMANGLEPARAM@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0141:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .L_0144
.L_0146:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
jmp .L_0143
.L_0147:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
jmp .L_0143
.L_0148:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
jmp .L_0143
.L_0149:
push 0
push 2
push offset _Lt_014A
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_0143
.L_0144:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .L_0143
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_014B+eax*4-4]
_.L_014B:
.int .L_0146
.int .L_0147
.int .L_0148
.int .L_0149
.L_0143:
.L_0142:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__symbzmangling:
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
_SYMBSETMANGLEDID@8:
push ebp
mov ebp, esp
push ebx
.L_0092:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _fb_StrAssign@20
.L_0093:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMANGLEUDTID@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_0094:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .L_0097
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _fb_StrLen@8
push eax
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .L_0096
.L_0097:
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _fb_StrLen@8
push eax
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_0096:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_009D
push 0
push 2
push offset _Lt_009E
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
lea ecx, [ebp-8]
push ecx
lea ecx, [ebp-4]
push ecx
push dword ptr [ebp+12]
call _SYMBGETDESCTYPEARRAYDTYPE@12
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE@16
push 0
push 2
push offset _Lt_009F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_009D:
.L_009C:
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HABBREVFIND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00B5:
cmp dword ptr [_CTX+56], 0
jne .L_00B8
mov dword ptr [ebp-4], -1
jmp .L_00B6
.L_00B8:
.L_00B7:
lea eax, [_CTX]
push eax
call _FLISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_00B9:
cmp dword ptr [ebp-8], 0
je .L_00BA
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .L_00BC
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .L_00BE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .L_00B6
.L_00BE:
.L_00BD:
.L_00BC:
.L_00BB:
push dword ptr [ebp-8]
call _FLISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_00B9
.L_00BA:
mov dword ptr [ebp-4], -1
.L_00B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HABBREVADD@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00BF:
lea eax, [_CTX]
push eax
call _FLISTNEWITEM@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [_CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HABBREVGET@8:
push ebp
mov ebp, esp
push ebx
.L_00C1:
push 0
push 2
push offset _Lt_00C3
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+12], 0
jle .L_00C5
cmp dword ptr [ebp+12], 10
jg .L_00C7
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_00C6
.L_00C7:
cmp dword ptr [ebp+12], 33
jg .L_00C8
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_00C6
.L_00C8:
push 0
push -1
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .L_00CB
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_00CA
.L_00CB:
cmp dword ptr [ebp+12], 33
jg .L_00CC
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00CC:
.L_00CA:
.L_00C6:
.L_00C5:
.L_00C4:
push 0
push 2
push offset _Lt_00CD
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HADDUNDERSCORE@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_014C:
cmp dword ptr [_ENV+104], 1
jne .L_014F
mov dword ptr [ebp-4], 0
jmp .L_014E
.L_014F:
mov eax, dword ptr [_ENV+292]
mov dword ptr [ebp-4], eax
.L_014E:
.L_014D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HDOCPPMANGLING@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0150:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .L_0153
mov dword ptr [ebp-4], -1
jmp .L_0151
.L_0153:
.L_0152:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2080
test eax, eax
je .L_0155
mov dword ptr [ebp-4], 0
jmp .L_0151
.L_0155:
.L_0154:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 6
jne .L_0157
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8388608
test eax, eax
jne .L_0159
mov dword ptr [ebp-4], 0
jmp .L_0151
.L_0159:
.L_0158:
.L_0157:
.L_0156:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_015B
mov dword ptr [ebp-4], -1
jmp .L_0151
.L_015B:
.L_015A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .L_015D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_015F
mov dword ptr [ebp-4], -1
jmp .L_0151
.L_015F:
.L_015E:
.L_015D:
.L_015C:
mov dword ptr [ebp-4], 0
.L_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMANGLENAMESPACE@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0160:
cmp dword ptr [ebp+12], 0
jne .L_0164
jmp .L_0161
.L_0164:
.L_0163:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .L_0166
jmp .L_0161
.L_0166:
.L_0165:
cmp dword ptr [ebp+16], 0
je .L_0168
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-16]
push eax
call _SYMBMANGLETYPE@16
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0168:
.L_0167:
mov dword ptr [ebp-4], -1
.L_0169:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_02B6+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+144]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.L_016B:
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .L_0169
.L_016A:
push 0
push 2
push offset _Lt_012C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
cmp dword ptr [ebp+20], 0
je .L_016D
push 0
push 2
push offset _Lt_010C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
.L_016D:
.L_016C:
.L_016E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_Lt_02B6+ebx*4]
mov dword ptr [ebp+12], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMANGLEUDTID@8
dec dword ptr [ebp-4]
.L_0170:
cmp dword ptr [ebp-4], 0
jge .L_016E
.L_016F:
.L_0161:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_02B6,256

.section .text
.balign 16
_HMANGLEVARIABLE@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.L_0171:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .L_0174
mov dword ptr [ebp-20], 0
jmp .L_0173
.L_0174:
push dword ptr [ebp+8]
call _HDOCPPMANGLING@4
mov dword ptr [ebp-20], eax
.L_0173:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .L_0176
cmp dword ptr [_ENV+104], 2
jne .L_0178
push 0
push 2
push offset _Lt_0179
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_0178:
.L_0177:
call _HADDUNDERSCORE@0
test eax, eax
je .L_017B
push 0
push 2
push offset _Lt_00CD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_017B:
.L_017A:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_017F
.L_0180:
cmp dword ptr [ebp-28], 1
jne .L_017E
.L_017F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .L_0182
push 0
push 7
push offset _Lt_0183
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_0182:
.L_0181:
.L_017E:
.L_017C:
cmp dword ptr [ebp-20], 0
je .L_0185
push 0
push 3
push offset _Lt_0186
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .L_0188
push 0
push 3
push offset _Lt_0189
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0187
.L_0188:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .L_018A
push 0
push 3
push offset _Lt_018B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_018A:
.L_0187:
.L_0185:
.L_0184:
jmp .L_0175
.L_0176:
cmp dword ptr [_ENV+104], 2
jne .L_018D
push 0
push 2
push offset _Lt_018E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_018D:
.L_018C:
.L_0175:
cmp dword ptr [ebp-20], 0
je .L_0190
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+144]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call _HMANGLENAMESPACE@16
.L_0190:
.L_018F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .L_0192
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_0191
.L_0192:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .L_0193
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_0191
.L_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 57
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
or ebx, dword ptr [ebp-24]
je .L_0195
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_0197
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0199
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
.L_0199:
.L_0198:
jmp .L_0196
.L_0197:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_0196:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_019B
push 0
push -1
push 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_02B7
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
cmp dword ptr [_ENV+104], 1
jne .L_019F
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
.L_019F:
.L_019E:
.L_019B:
.L_019A:
jmp .L_0194
.L_0195:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_01A2
.L_01A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBHASDTOR@4
and ebx, eax
je .L_01A5
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_01A4
.L_01A5:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01A7
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01A9
push 0
push -1
push 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_02B7
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
.L_01A9:
.L_01A8:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call _fb_UIntToStr@4
push eax
push -1
push offset _Lt_02B7
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_01A6
.L_01A7:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01A6:
.L_01A4:
jmp .L_01A0
.L_01A2:
cmp dword ptr [ebp-28], 2
jne .L_01AD
.L_01AE:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01B0
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01B2
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_02B7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01B2:
.L_01B1:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [_Lt_02BC]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
inc dword ptr [_Lt_02BC]
jmp .L_01AF
.L_01B0:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01AF:
jmp .L_01A0
.L_01AD:
cmp dword ptr [ebp-28], 3
jne .L_01B5
.L_01B6:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .L_01B8
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_01BA
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_02B7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01BA:
.L_01B9:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [_Lt_02BC]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_02B7
call _fb_StrConcatAssign@20
inc dword ptr [_Lt_02BC]
jmp .L_01B7
.L_01B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01BD
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_01B7
.L_01BD:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01B7:
jmp .L_01A0
.L_01B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .L_01C0
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
jmp .L_01BF
.L_01C0:
push 0
push 0
call dword ptr [_IR+40]
push eax
push -1
push offset _Lt_02B7
call _fb_StrAssign@20
.L_01BF:
.L_01BE:
.L_01A0:
.L_0194:
.L_0191:
push -1
push offset _Lt_02B7
call _fb_StrLen@8
test eax, eax
jle .L_01C2
cmp dword ptr [ebp-20], 0
je .L_01C4
push 0
push -1
push -1
push offset _Lt_02B7
call _fb_StrLen@8
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01C4:
.L_01C3:
push 0
push -1
push offset _Lt_02B7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01C2:
.L_01C1:
cmp dword ptr [ebp-20], 0
je .L_01C6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_01C8
push 0
push 2
push offset _Lt_009F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_01C8:
.L_01C7:
.L_01C6:
.L_01C5:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0172:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_02B7,12
.balign 4
	.lcomm	_Lt_02BC,4

.section .text
.balign 16
_HGETPROCPARAMSTYPECODE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01C9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_01CC
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .L_01CE
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
.L_01CE:
.L_01CD:
.L_01CC:
.L_01CB:
cmp dword ptr [ebp-4], 0
jne .L_01D0
push 0
push 2
push offset _Lt_00ED
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
jmp .L_01CA
.L_01D0:
.L_01CF:
.L_01D1:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLEPARAM@8
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-4], eax
.L_01D3:
cmp dword ptr [ebp-4], 0
jne .L_01D1
.L_01D2:
.L_01CA:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETOPERATORNAME@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .L_01D7
.L_01D9:
mov eax, offset _Lt_01DA
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01DB:
mov eax, offset _Lt_01DC
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01DD:
mov eax, offset _Lt_01DE
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01DF:
mov eax, offset _Lt_01E0
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01E1:
mov eax, offset _Lt_01E2
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01E3:
mov eax, offset _Lt_01E4
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01E5:
mov eax, offset _Lt_01E6
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01E7:
mov eax, offset _Lt_01E8
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01E9:
mov eax, offset _Lt_01EA
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01EB:
mov eax, offset _Lt_01EC
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01ED:
mov eax, offset _Lt_01EE
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01EF:
mov eax, offset _Lt_01F0
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01F1:
mov eax, offset _Lt_01F2
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01F3:
mov eax, offset _Lt_01F4
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01F5:
mov eax, offset _Lt_01F6
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01F7:
mov eax, offset _Lt_01F8
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01F9:
mov eax, offset _Lt_01FA
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01FB:
mov eax, offset _Lt_01FC
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01FD:
mov eax, offset _Lt_01FE
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_01FF:
mov eax, offset _Lt_0200
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0201:
mov eax, offset _Lt_0202
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0203:
mov eax, offset _Lt_0204
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0205:
mov eax, offset _Lt_0206
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0207:
mov eax, offset _Lt_0208
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0209:
mov eax, offset _Lt_020A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_020B:
mov eax, offset _Lt_020C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_020D:
mov eax, offset _Lt_020E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_020F:
mov eax, offset _Lt_0210
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0211:
mov eax, offset _Lt_0212
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0213:
mov eax, offset _Lt_0214
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0215:
mov eax, offset _Lt_0216
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0217:
mov eax, offset _Lt_0218
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0219:
mov eax, offset _Lt_021A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_021B:
mov eax, offset _Lt_021C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_021D:
mov eax, offset _Lt_021E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_021F:
mov eax, offset _Lt_0220
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0221:
mov eax, offset _Lt_0222
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0223:
mov eax, offset _Lt_0224
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0225:
mov eax, offset _Lt_0226
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0227:
mov eax, offset _Lt_0228
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0229:
mov eax, offset _Lt_022A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_022B:
mov eax, offset _Lt_022C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_022D:
mov eax, offset _Lt_022E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_022F:
mov eax, offset _Lt_0230
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0231:
mov eax, offset _Lt_0232
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0233:
mov eax, offset _Lt_0234
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0235:
mov eax, offset _Lt_0236
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0237:
mov eax, offset _Lt_0238
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0239:
mov eax, offset _Lt_023A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_023B:
mov eax, offset _Lt_023C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_023D:
mov eax, offset _Lt_023E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_023F:
mov eax, offset _Lt_0240
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0241:
mov eax, offset _Lt_0242
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0243:
mov eax, offset _Lt_0244
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0245:
mov eax, offset _Lt_0246
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0247:
mov eax, offset _Lt_0248
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0249:
mov eax, offset _Lt_024A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_024B:
mov eax, offset _Lt_024C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_024D:
mov eax, offset _Lt_024E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_024F:
mov eax, offset _Lt_0250
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0251:
mov eax, offset _Lt_0252
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0253:
mov eax, offset _Lt_0254
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0255:
mov eax, offset _Lt_0256
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0257:
mov eax, offset _Lt_0258
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_0259:
mov eax, offset _Lt_025A
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_025B:
mov eax, offset _Lt_025C
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_025D:
mov eax, offset _Lt_025E
mov dword ptr [ebp-4], eax
jmp .L_01D6
.L_025F:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .L_0261
mov ebx, offset _Lt_0262
mov dword ptr [ebp-4], ebx
jmp .L_0260
.L_0261:
mov ebx, offset _Lt_0263
mov dword ptr [ebp-4], ebx
.L_0260:
jmp .L_01D6
.L_0264:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .L_0266
mov eax, offset _Lt_0267
mov dword ptr [ebp-4], eax
jmp .L_0265
.L_0266:
mov eax, offset _Lt_0268
mov dword ptr [ebp-4], eax
.L_0265:
jmp .L_01D6
.L_0269:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .L_026B
mov ebx, offset _Lt_026C
mov dword ptr [ebp-4], ebx
jmp .L_026A
.L_026B:
mov ebx, offset _Lt_026D
mov dword ptr [ebp-4], ebx
.L_026A:
jmp .L_01D6
.L_01D7:
cmp dword ptr [ebp-8], 81
ja .L_01D6
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_026E+ebx*4]
_.L_026E:
.int .L_01D9
.int .L_01DD
.int .L_01E1
.int .L_01E5
.int .L_01E9
.int .L_01ED
.int .L_01F1
.int .L_01F5
.int .L_01F9
.int .L_01FD
.int .L_0201
.int .L_0205
.int .L_0209
.int .L_020D
.int .L_0211
.int .L_0215
.int .L_0219
.int .L_021D
.int .L_024F
.int .L_0251
.int .L_0253
.int .L_0255
.int .L_025D
.int .L_025B
.int .L_025F
.int .L_0264
.int .L_0269
.int .L_01D6
.int .L_01DB
.int .L_01DF
.int .L_01E3
.int .L_01E7
.int .L_01EB
.int .L_01EF
.int .L_01F3
.int .L_01F7
.int .L_01FB
.int .L_01FF
.int .L_0203
.int .L_0207
.int .L_020B
.int .L_020F
.int .L_0213
.int .L_0217
.int .L_021B
.int .L_021F
.int .L_0221
.int .L_0223
.int .L_0225
.int .L_0227
.int .L_0229
.int .L_01D6
.int .L_022B
.int .L_022F
.int .L_022D
.int .L_01D6
.int .L_0231
.int .L_0239
.int .L_0241
.int .L_0243
.int .L_0245
.int .L_0247
.int .L_0249
.int .L_024B
.int .L_01D6
.int .L_024D
.int .L_01D6
.int .L_01D6
.int .L_023F
.int .L_023D
.int .L_023B
.int .L_0233
.int .L_0235
.int .L_0237
.int .L_01D6
.int .L_01D6
.int .L_0257
.int .L_0259
.int .L_024F
.int .L_0251
.int .L_0253
.int .L_0255
.L_01D6:
.L_01D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMANGLEPROC@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
.L_026F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _HDOCPPMANGLING@4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+84]
cmp ecx, 6
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [_ENV+108]
cmp esi, 1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
mov esi, dword ptr [_ENV+108]
cmp esi, 4
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or eax, esi
and ecx, eax
or ebx, ecx
call _FBGETCPUFAMILY@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [_ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [_ENV+104], 2
jne .L_0272
push 0
push 2
push offset _Lt_0179
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-24], 0
je .L_0274
push 0
push 2
push offset _Lt_0275
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], -1
.L_0274:
.L_0273:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .L_0279
.L_027A:
cmp dword ptr [ebp-36], 1
je .L_0279
.L_027B:
cmp dword ptr [ebp-36], 4
jne .L_0278
.L_0279:
cmp dword ptr [ebp-28], 0
jne .L_027D
push 0
push 2
push offset _Lt_0275
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], -1
.L_027D:
.L_027C:
push 0
push 2
push offset _Lt_027E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_0278:
.L_0276:
.L_0272:
.L_0271:
call _HADDUNDERSCORE@0
test eax, eax
je .L_0280
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 6
jne .L_0282
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0286
.L_0287:
cmp dword ptr [ebp-36], 1
je .L_0286
.L_0288:
cmp dword ptr [ebp-36], 4
jne .L_0285
.L_0286:
push 0
push 2
push offset _Lt_0179
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_0283
.L_0285:
push 0
push 2
push offset _Lt_00CD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0289:
.L_0283:
jmp .L_0281
.L_0282:
push 0
push 2
push offset _Lt_00CD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0281:
.L_0280:
.L_027F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .L_028B
push 0
push 3
push offset _Lt_0186
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_028B:
.L_028A:
cmp dword ptr [ebp-20], 0
je .L_028D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
push dword ptr [ebx]
lea ebx, [ebp-12]
push ebx
call _HMANGLENAMESPACE@16
.L_028D:
.L_028C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .L_028F
cmp dword ptr [ebp-20], 0
je .L_0291
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrLen@8
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0291:
.L_0290:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_028E
.L_028F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .L_0294
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .L_0296
push 0
push 3
push offset _Lt_0297
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call _SYMBMANGLETYPE@16
jmp .L_0295
.L_0296:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETOPERATORNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0295:
jmp .L_028E
.L_0294:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_0299
push 0
push 3
push offset _Lt_029A
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
jmp .L_028E
.L_0299:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 4096
test eax, eax
je .L_029B
push 0
push 3
push offset _Lt_029C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_028E
.L_029B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_029D
push 0
push 3
push offset _Lt_029E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
jmp .L_028E
.L_029D:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .L_02A0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-32], ebx
jmp .L_029F
.L_02A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-32], eax
.L_029F:
cmp dword ptr [ebp-20], 0
je .L_02A2
push 0
push dword ptr [ebp-32]
call _fb_StrLen@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A4
add dword ptr [ebp-16], 7
.L_02A4:
.L_02A3:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_02A2:
.L_02A1:
push 0
push -1
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_02A7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_02A9
push 0
push 8
push offset _Lt_02AA
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_02A8
.L_02A9:
push 0
push 8
push offset _Lt_02AB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_02A8:
.L_02A7:
.L_02A6:
.L_028E:
cmp dword ptr [ebp-20], 0
je .L_02AD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .L_02AF
push 0
push 2
push offset _Lt_009F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_02AF:
.L_02AE:
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call _HGETPROCPARAMSTYPECODE@12
.L_02AD:
.L_02AC:
cmp dword ptr [ebp-24], 0
je .L_02B1
push 0
push 2
push offset _Lt_0179
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN@4
push edx
push eax
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_02B1:
.L_02B0:
cmp dword ptr [ebp-28], 0
je .L_02B3
push 0
push 2
push offset _Lt_0275
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_02B3:
.L_02B2:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0270:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_CTX,92

.section .data
.balign 4
_Lt_0065:	.ascii	"tmp$\0"
.balign 4
_Lt_0067:	.ascii	"Lt_\0"
.balign 4
_Lt_006F:	.ascii	"label$\0"
.balign 4
_Lt_0073:	.ascii	"L_\0"
.balign 4
_Lt_0074:	.ascii	".L_\0"
.balign 4
_Lt_0078:	.ascii	"LP_\0"
.balign 4
_Lt_009E:	.ascii	"I\0"
.balign 4
_Lt_009F:	.ascii	"E\0"
.balign 4
_Lt_00B2:	.ascii	"$\0"
.balign 4
_Lt_00C3:	.ascii	"S\0"
.balign 4
_Lt_00CD:	.ascii	"_\0"
.balign 4
_Lt_00D2:	.ascii	"8FBSTRING\0"
.balign 4
_Lt_00DA:	.ascii	"l\0"
.balign 4
_Lt_00DD:	.ascii	"m\0"
.balign 4
_Lt_00E1:	.ascii	"u7INTEGER\0"
.balign 4
_Lt_00E4:	.ascii	"u8UINTEGER\0"
.balign 4
_Lt_00ED:	.ascii	"v\0"
.balign 4
_Lt_00EE:	.ascii	"b\0"
.balign 4
_Lt_00EF:	.ascii	"a\0"
.balign 4
_Lt_00F0:	.ascii	"h\0"
.balign 4
_Lt_00F1:	.ascii	"c\0"
.balign 4
_Lt_00F2:	.ascii	"s\0"
.balign 4
_Lt_00F3:	.ascii	"t\0"
.balign 4
_Lt_00F4:	.ascii	"w\0"
.balign 4
_Lt_00F5:	.ascii	"i\0"
.balign 4
_Lt_00F6:	.ascii	"j\0"
.balign 4
_Lt_00F7:	.ascii	"x\0"
.balign 4
_Lt_00F8:	.ascii	"y\0"
.balign 4
_Lt_00F9:	.ascii	"f\0"
.balign 4
_Lt_00FA:	.ascii	"d\0"
.balign 4
_Lt_0107:	.ascii	"R\0"
.balign 4
_Lt_010C:	.ascii	"K\0"
.balign 4
_Lt_0111:	.ascii	"P\0"
.balign 4
_Lt_011E:	.ascii	"A1_\0"
.balign 4
_Lt_0122:	.ascii	"St\0"
.balign 4
_Lt_012C:	.ascii	"N\0"
.balign 4
_Lt_0137:	.ascii	"F\0"
.balign 4
_Lt_014A:	.ascii	"z\0"
.balign 4
_Lt_0179:	.ascii	"@\0"
.balign 4
_Lt_0183:	.ascii	"_imp__\0"
.balign 4
_Lt_0186:	.ascii	"_Z\0"
.balign 4
_Lt_0189:	.ascii	"TS\0"
.balign 4
_Lt_018B:	.ascii	"TV\0"
.balign 4
_Lt_018E:	.ascii	"%\0"
.balign 4
_Lt_01DA:	.ascii	"aS\0"
.balign 4
_Lt_01DC:	.ascii	"pl\0"
.balign 4
_Lt_01DE:	.ascii	"pL\0"
.balign 4
_Lt_01E0:	.ascii	"mi\0"
.balign 4
_Lt_01E2:	.ascii	"mI\0"
.balign 4
_Lt_01E4:	.ascii	"ml\0"
.balign 4
_Lt_01E6:	.ascii	"mL\0"
.balign 4
_Lt_01E8:	.ascii	"dv\0"
.balign 4
_Lt_01EA:	.ascii	"dV\0"
.balign 4
_Lt_01EC:	.ascii	"v24idiv\0"
.balign 4
_Lt_01EE:	.ascii	"v28selfidiv\0"
.balign 4
_Lt_01F0:	.ascii	"rm\0"
.balign 4
_Lt_01F2:	.ascii	"rM\0"
.balign 4
_Lt_01F4:	.ascii	"an\0"
.balign 4
_Lt_01F6:	.ascii	"aN\0"
.balign 4
_Lt_01F8:	.ascii	"or\0"
.balign 4
_Lt_01FA:	.ascii	"oR\0"
.balign 4
_Lt_01FC:	.ascii	"aa\0"
.balign 4
_Lt_01FE:	.ascii	"aA\0"
.balign 4
_Lt_0200:	.ascii	"oo\0"
.balign 4
_Lt_0202:	.ascii	"oO\0"
.balign 4
_Lt_0204:	.ascii	"eo\0"
.balign 4
_Lt_0206:	.ascii	"eO\0"
.balign 4
_Lt_0208:	.ascii	"v23eqv\0"
.balign 4
_Lt_020A:	.ascii	"v27selfeqv\0"
.balign 4
_Lt_020C:	.ascii	"v23imp\0"
.balign 4
_Lt_020E:	.ascii	"v27selfimp\0"
.balign 4
_Lt_0210:	.ascii	"ls\0"
.balign 4
_Lt_0212:	.ascii	"lS\0"
.balign 4
_Lt_0214:	.ascii	"rs\0"
.balign 4
_Lt_0216:	.ascii	"rS\0"
.balign 4
_Lt_0218:	.ascii	"v23pow\0"
.balign 4
_Lt_021A:	.ascii	"v27selfpow\0"
.balign 4
_Lt_021C:	.ascii	"v23cat\0"
.balign 4
_Lt_021E:	.ascii	"v27selfcat\0"
.balign 4
_Lt_0220:	.ascii	"eq\0"
.balign 4
_Lt_0222:	.ascii	"gt\0"
.balign 4
_Lt_0224:	.ascii	"lt\0"
.balign 4
_Lt_0226:	.ascii	"ne\0"
.balign 4
_Lt_0228:	.ascii	"ge\0"
.balign 4
_Lt_022A:	.ascii	"le\0"
.balign 4
_Lt_022C:	.ascii	"co\0"
.balign 4
_Lt_022E:	.ascii	"ng\0"
.balign 4
_Lt_0230:	.ascii	"ps\0"
.balign 4
_Lt_0232:	.ascii	"v13abs\0"
.balign 4
_Lt_0234:	.ascii	"v13fix\0"
.balign 4
_Lt_0236:	.ascii	"v14frac\0"
.balign 4
_Lt_0238:	.ascii	"v13len\0"
.balign 4
_Lt_023A:	.ascii	"v13sgn\0"
.balign 4
_Lt_023C:	.ascii	"v13int\0"
.balign 4
_Lt_023E:	.ascii	"v13exp\0"
.balign 4
_Lt_0240:	.ascii	"v13log\0"
.balign 4
_Lt_0242:	.ascii	"v13sin\0"
.balign 4
_Lt_0244:	.ascii	"v14asin\0"
.balign 4
_Lt_0246:	.ascii	"v13cos\0"
.balign 4
_Lt_0248:	.ascii	"v14acos\0"
.balign 4
_Lt_024A:	.ascii	"v13tan\0"
.balign 4
_Lt_024C:	.ascii	"v13atn\0"
.balign 4
_Lt_024E:	.ascii	"v13sqr\0"
.balign 4
_Lt_0250:	.ascii	"nw\0"
.balign 4
_Lt_0252:	.ascii	"na\0"
.balign 4
_Lt_0254:	.ascii	"dl\0"
.balign 4
_Lt_0256:	.ascii	"da\0"
.balign 4
_Lt_0258:	.ascii	"de\0"
.balign 4
_Lt_025A:	.ascii	"pt\0"
.balign 4
_Lt_025C:	.ascii	"ix\0"
.balign 4
_Lt_025E:	.ascii	"ad\0"
.balign 4
_Lt_0262:	.ascii	"v13for\0"
.balign 4
_Lt_0263:	.ascii	"v03for\0"
.balign 4
_Lt_0267:	.ascii	"v14step\0"
.balign 4
_Lt_0268:	.ascii	"v04step\0"
.balign 4
_Lt_026C:	.ascii	"v24next\0"
.balign 4
_Lt_026D:	.ascii	"v14next\0"
.balign 4
_Lt_0275:	.ascii	"\"\0"
.balign 4
_Lt_027E:	.ascii	"\1""\0"
.balign 4
_Lt_0297:	.ascii	"cv\0"
.balign 4
_Lt_029A:	.ascii	"C1\0"
.balign 4
_Lt_029C:	.ascii	"D0\0"
.balign 4
_Lt_029E:	.ascii	"D1\0"
.balign 4
_Lt_02AA:	.ascii	"__set__\0"
.balign 4
_Lt_02AB:	.ascii	"__get__\0"

.section .ctors
.int _fb_ctor__symbzmangling
