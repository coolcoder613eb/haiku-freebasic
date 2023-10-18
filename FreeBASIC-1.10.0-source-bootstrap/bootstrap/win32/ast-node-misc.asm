	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWLABEL@8
_ASTNEWLABEL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push 0
push -2147483648
push 21
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 7
jne .L_006A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .L_006C
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_PARSER+112]
mov dword ptr [ebx+56], eax
.L_006C:
.L_006B:
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADLABEL@4
_ASTLOADLABEL@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_006D:
cmp dword ptr [_AST+136], 0
je .L_0070
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [_IR+60]
jmp .L_0071
.L_0072:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call dword ptr [_IR+64]
.L_0071:
.L_0070:
.L_006F:
mov dword ptr [ebp-4], 0
.L_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWLIT@4
_ASTNEWLIT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
push 0
push -2147483648
push 27
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADLIT@4
_ASTLOADLIT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0075:
cmp dword ptr [_AST+136], 0
je .L_0078
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call dword ptr [_IR+88]
.L_0078:
.L_0077:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_007A
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
.L_007A:
.L_0079:
mov dword ptr [ebp-4], 0
.L_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTASMAPPENDTEXT@8
_ASTASMAPPENDTEXT@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007F:
push 0
push dword ptr [ebp+8]
call _ASTASMAPPEND@8
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTASMAPPENDSYMB@8
_ASTASMAPPENDSYMB@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0081:
push 1
push dword ptr [ebp+8]
call _ASTASMAPPEND@8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTNEWASM@4
_ASTNEWASM@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0083:
push 0
push -2147483648
push 28
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADASM@4
_ASTLOADASM@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0085:
cmp dword ptr [_AST+136], 0
je .L_0088
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call dword ptr [_IR+84]
.L_0088:
.L_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ebx
.L_0089:
cmp dword ptr [ebp-8], 0
je .L_008A
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .L_008D
.L_008E:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+4], 0
je .L_0090
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
call _free
add esp, 4
.L_0090:
.L_008F:
.L_008D:
.L_008B:
push dword ptr [ebp-8]
lea ebx, [_AST+200]
push ebx
call _LISTDELNODE@8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .L_0089
.L_008A:
mov dword ptr [ebp-4], 0
.L_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWDBG@12
_ASTNEWDBG@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0091:
cmp dword ptr [_ENV+148], 0
jne .L_0094
mov dword ptr [ebp-4], 0
jmp .L_0092
.L_0094:
.L_0093:
push 0
push -2147483648
push 30
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADDBG@4
_ASTLOADDBG@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0095:
cmp dword ptr [_AST+136], 0
je .L_0098
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
mov eax, dword ptr [_AST+40]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call dword ptr [_IR+168]
.L_0098:
.L_0097:
mov dword ptr [ebp-4], 0
.L_0096:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWNOP@0
_ASTNEWNOP@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0099:
push 0
push -2147483648
push 0
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADNOP@4
_ASTLOADNOP@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009B:
mov dword ptr [ebp-4], 0
.L_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWNIDXARRAY@4
_ASTNEWNIDXARRAY@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_009D:
push 0
push -2147483648
push 25
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_009E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADNIDXARRAY@4
_ASTLOADNIDXARRAY@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_009F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov dword ptr [ebp-4], 0
.L_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREMOVENIDXARRAY@4
_ASTREMOVENIDXARRAY@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00A1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
jne .L_00A4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call _ASTDELTREE@4
.L_00A4:
.L_00A3:
.L_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWLINK@12
_ASTNEWLINK@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
cmp dword ptr [ebp+16], 1
je .L_00A8
cmp dword ptr [ebp+8], 0
je .L_00AA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .L_00AC
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE@12
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
cmp dword ptr [ebp+16], 2
je .L_00AE
cmp dword ptr [ebp+12], 0
je .L_00B0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 9
jne .L_00B2
push 0
push 0
push dword ptr [ebp+12]
call _ASTSETTYPE@12
.L_00B2:
.L_00B1:
.L_00B0:
.L_00AF:
.L_00AE:
.L_00AD:
cmp dword ptr [ebp+8], 0
jne .L_00B4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .L_00A6
.L_00B4:
.L_00B3:
cmp dword ptr [ebp+12], 0
jne .L_00B6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_00A6
.L_00B6:
.L_00B5:
cmp dword ptr [ebp+16], 0
jne .L_00B8
.L_00B9:
push 0
push 0
push 15
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
jmp .L_00B7
.L_00B8:
cmp dword ptr [ebp+16], 1
jne .L_00BA
.L_00BB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 15
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
jmp .L_00B7
.L_00BA:
cmp dword ptr [ebp+16], 2
jne .L_00BC
.L_00BD:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 15
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
.L_00BC:
.L_00B7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADLINK@4
_ASTLOADLINK@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00BE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .L_00C2
.L_00C3:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_00C0
.L_00C2:
cmp dword ptr [ebp-16], 2
jne .L_00C4
.L_00C5:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .L_00C0
.L_00C4:
mov dword ptr [ebp-4], 0
.L_00C6:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWLOAD@12
_ASTNEWLOAD@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C7:
push 0
push dword ptr [ebp+12]
push 1
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTLOADLOAD@4
_ASTLOADLOAD@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00CC
mov dword ptr [ebp-4], 0
jmp .L_00CA
.L_00CC:
.L_00CB:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .L_00CE
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .L_00D0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call dword ptr [_IR+224]
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call dword ptr [_IR+112]
jmp .L_00CF
.L_00D0:
push dword ptr [ebp-12]
call dword ptr [_IR+108]
.L_00CF:
.L_00CE:
.L_00CD:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWFIELD@8
_ASTNEWFIELD@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+116], 0
jle .L_00D4
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 1
jne .L_00D6
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 8
mov dword ptr [ebp-12], eax
jmp .L_00D5
.L_00D6:
mov eax, dword ptr [ebp-12]
and eax, -512
or eax, 9
mov dword ptr [ebp-12], eax
.L_00D5:
mov dword ptr [ebp-16], 0
inc dword ptr [_AST+144]
.L_00D4:
.L_00D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 19
jne .L_00D8
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
jmp .L_00D2
.L_00D8:
.L_00D7:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 19
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTFORGETBITFIELDS@4
_ASTFORGETBITFIELDS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00D9:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_AST+144]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00DC
jmp .L_00DA
.L_00DC:
.L_00DB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .L_00DD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+116]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .L_00E1
.L_00DD:
mov dword ptr [ebp-4], 0
.L_00E1:
cmp dword ptr [ebp-4], 0
je .L_00E0
dec dword ptr [_AST+144]
.L_00E0:
.L_00DF:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTFORGETBITFIELDS@4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
call _ASTFORGETBITFIELDS@4
.L_00DA:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTUPDATEBITFIELDS@4
_ASTUPDATEBITFIELDS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0101:
cmp dword ptr [_AST+144], 0
jg .L_0104
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0102
.L_0104:
.L_0103:
cmp dword ptr [ebp+8], 0
jne .L_0106
mov dword ptr [ebp-4], 0
jmp .L_0102
.L_0106:
.L_0105:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .L_0109
.L_010A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 19
jne .L_010C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+116], 0
jle .L_010E
dec dword ptr [_AST+144]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+64]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+68]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
push dword ptr [ebp-12]
call _ASTSETBITFIELD@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
.L_010E:
.L_010D:
.L_010C:
.L_010B:
jmp .L_0107
.L_0109:
cmp dword ptr [ebp-8], 19
jne .L_010F
.L_0110:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
cmp dword ptr [ecx+116], 0
jle .L_0112
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ASTACCESSBITFIELD@8
mov dword ptr [ebp-12], eax
dec dword ptr [_AST+144]
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDATEBITFIELDS@4
mov dword ptr [ebp-4], eax
jmp .L_0102
.L_0112:
.L_0111:
.L_010F:
.L_0107:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTUPDATEBITFIELDS@4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTUPDATEBITFIELDS@4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADFIELD@4
_ASTLOADFIELD@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0113:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .L_0116
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+20], ecx
.L_0116:
.L_0115:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWSTACK@8
_ASTNEWSTACK@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0117:
cmp dword ptr [ebp+12], 0
jne .L_011A
mov dword ptr [ebp-4], 0
jmp .L_0118
.L_011A:
.L_0119:
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 11
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADSTACK@4
_ASTLOADSTACK@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_011B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_011E
mov dword ptr [ebp-4], 0
jmp .L_011C
.L_011E:
.L_011D:
push dword ptr [ebp-8]
call _ASTLOAD@4
mov dword ptr [ebp-12], eax
cmp dword ptr [_AST+136], 0
je .L_0120
push 0
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call dword ptr [_IR+116]
.L_0120:
.L_011F:
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_011C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDUMPOPTOSTR@4
_ASTDUMPOPTOSTR@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01CD:
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
je .L_01D0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_01D1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01CE
.L_01D0:
.L_01CF:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_DBG_ASTNODEOPNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_01CE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDUMPTREE@8
_ASTDUMPTREE@8:
push ebp
mov ebp, esp
.L_0264:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTDUMPTREEEX@16
.L_0265:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTDUMPLIST@8
_ASTDUMPLIST@8:
push ebp
mov ebp, esp
push ebx
.L_0266:
.L_0268:
cmp dword ptr [ebp+8], 0
je .L_0269
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTDUMPTREE@8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp+8], ebx
jmp .L_0268
.L_0269:
.L_0267:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__astznodezmisc:
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
_ASTASMAPPEND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
lea eax, [_AST+200]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_007E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_007E:
.L_007D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__Z13HMAKEUINTMASKm@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 64
jb .L_00E8
mov dword ptr [ebp-12], 4294967295
mov dword ptr [ebp-8], 4294967295
jmp .L_00E7
.L_00E8:
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
jz .L_026A
mov edx, eax
xor eax, eax
.L_026A:
mov [esp+4], edx
mov [esp+0], eax
pop ebx
pop eax
add ebx, 4294967295
adc eax, 4294967295
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
.L_00E7:
call _FBIS64BIT@0
not eax
test eax, eax
je .L_00EA
mov eax, dword ptr [ebp-12]
mov ecx, eax
mov ebx, 0
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-8], ebx
.L_00EA:
.L_00E9:
push 0
push 9
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__Z13HMAKEUINTMASKmm@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00EB:
push 1
push 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, 0
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+8]
call __Z13HMAKEUINTMASKm@4
push eax
push 41
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
.L_00EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_ASTSETBITFIELD@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00F0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, -512
or eax, 9
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
jmp .L_00EF
.L_00F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx+8], eax
.L_00EF:
push dword ptr [ebp+12]
call _ASTCLONETREE@4
mov dword ptr [ebp+12], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+116]
call __Z13HMAKEUINTMASKmm@8
push eax
push 52
call _ASTNEWUOP@8
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00F2
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 5
jne .L_00F3
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_026B
.L_00F3:
mov dword ptr [ebp-8], -1
.L_026B:
cmp dword ptr [ebp-8], 0
je .L_00F6
push 0
push 0
push dword ptr [ebp+16]
push 0
push 1
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
.L_00F6:
.L_00F5:
push 0
push 0
push dword ptr [ebp+16]
push 0
push 9
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+116]
call __Z13HMAKEUINTMASKmm@8
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
jmp .L_00F1
.L_00F2:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+116]
call __Z13HMAKEUINTMASKm@4
push eax
push dword ptr [ebp+16]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jle .L_00F8
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
push 41
call _ASTNEWBOP@20
mov dword ptr [ebp+16], eax
.L_00F8:
.L_00F7:
.L_00F1:
push 1
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 35
call _ASTNEWBOP@20
mov dword ptr [ebp-4], eax
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_ASTACCESSBITFIELD@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 1
jne .L_00FC
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, -512
or eax, 2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 0
mov dword ptr [ebp-8], -1
jmp .L_00FB
.L_00FC:
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
.L_00FB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jle .L_00FE
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+12]
push 42
call _ASTNEWBOP@20
mov dword ptr [ebp+12], eax
.L_00FE:
.L_00FD:
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+116]
call __Z13HMAKEUINTMASKm@4
push eax
push dword ptr [ebp+12]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp-8], 0
je .L_0100
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
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_DBG_ASTOUTPUT@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0121:
cmp dword ptr [ebp+16], -1
jne .L_0124
.L_0125:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov ebx, dword ptr [ebp+12]
sub ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_0123
.L_0124:
cmp dword ptr [ebp+16], 1
jne .L_0126
.L_0127:
mov ebx, dword ptr [ebp+12]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_0123
.L_0126:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_0128:
.L_0123:
cmp dword ptr [ebp+20], 0
jge .L_012A
push 0
mov ebx, dword ptr [ebp-4]
dec ebx
push ebx
call _fb_SPACE@4
push eax
push 0
call _fb_PrintString@12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString@12
jmp .L_0129
.L_012A:
push 0
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push 0
call _fb_PrintString@12
push 0
mov eax, dword ptr [ebp-4]
dec eax
push -1
push dword ptr [ebp+20]
mov ebx, eax
call _fb_IntToStr@4
push eax
call _fb_StrLen@8
sub ebx, eax
push ebx
call _fb_SPACE@4
push eax
push 0
call _fb_PrintString@12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString@12
.L_0129:
.L_0122:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HASTNODECLASSTOSTR@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D5:
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
je .L_01D8
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_01D9
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01D6
.L_01D8:
.L_01D7:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_DBG_ASTNODECLASSNAMES+eax*4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_01D6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSYMBTOSTR@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01DB:
cmp dword ptr [ebp+8], 0
jne .L_01DE
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01DC
.L_01DE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .L_01E0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01DC
jmp .L_01DF
.L_01E0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .L_01E1
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_01E1:
.L_01DF:
.L_01DC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASTNODETYPETOSTR@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01E2:
cmp dword ptr [ebp+8], 0
jne .L_01E5
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E3
.L_01E5:
push 0
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBTYPETOSTR@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_01E3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASTNODETOSTR@4:
push ebp
mov ebp, esp
sub esp, 112
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .L_01E9
.L_01EB:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _HSYMBTOSTR@4
push eax
push -1
push 6
push offset _Lt_01EC
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTDUMPOPTOSTR@4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_01EF:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTDUMPOPTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_01F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_01F1
mov dword ptr [ebp-20], 24
jmp .L_026F
.L_01F1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_026F:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_01F4
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_DoubleToStr@8
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
.L_01F4:
.L_01F3:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
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
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_01FD:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
push 3
push offset _Lt_0202
push -1
push 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0200
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .L_0270
.L_0200:
mov eax, offset _Lt_01FF
mov dword ptr [ebp-20], eax
.L_0270:
push dword ptr [ebp-20]
push 6
push offset _Lt_01FE
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_0208:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
push 3
push offset _Lt_0202
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 8
push offset _Lt_0209
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_020F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .L_0211
push 0
push -1
push 3
push offset _Lt_0202
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset _Lt_0212
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea ebx, [ebp-64]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
.L_0211:
.L_0210:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push 5
push offset _Lt_0144
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_0218:
push 0
push -1
push 3
push offset _Lt_0202
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 7
push offset _Lt_0219
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_021C:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBTOSTR@4
push eax
push 8
push offset _Lt_021D
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_021F:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _HSYMBTOSTR@4
push eax
push -1
push 2
push offset _Lt_0221
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTDUMPOPTOSTR@4
push eax
push 9
push offset _Lt_0220
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_0225:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSYMBTOSTR@4
push eax
push 13
push offset _Lt_0226
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_0228:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
push 4
push offset _Lt_022B
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
push dword ptr [eax+32]
call _fb_LongintToStr@8
push eax
push -1
push 9
push offset _Lt_022A
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push -1
push 10
push offset _Lt_0229
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HASTNODECLASSTOSTR@4
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_0234:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
push 2
push offset _Lt_0221
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTDUMPOPTOSTR@4
push eax
push 8
push offset _Lt_0235
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_023B:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-104], ebx
cmp dword ptr [ebp-104], 1
jne .L_023E
.L_023F:
push 0
push 2
push offset _Lt_0240
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
jmp .L_023C
.L_023E:
cmp dword ptr [ebp-104], 2
jne .L_0241
.L_0242:
push 0
push 2
push offset _Lt_0243
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign@20
.L_0241:
.L_023C:
push 0
push -1
push -1
lea ebx, [ebp-28]
push ebx
push -1
push 2
push offset _Lt_0176
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HASTNODECLASSTOSTR@4
push eax
push 2
push offset _Lt_0177
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_01E7
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_01E8
.L_024A:
push 0
push -1
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _HASTNODETYPETOSTR@4
push eax
push 3
push offset _Lt_01F5
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HASTNODECLASSTOSTR@4
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_01E7
jmp .L_01E8
.L_01E9:
mov eax, dword ptr [ebp-16]
add eax, 4294967293
cmp eax, 41
ja .L_024A
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_024E+eax*4-12]
_.L_024E:
.int .L_01EB
.int .L_01EF
.int .L_024A
.int .L_024A
.int .L_021F
.int .L_024A
.int .L_0218
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_023B
.int .L_01F0
.int .L_01FD
.int .L_024A
.int .L_0208
.int .L_024A
.int .L_021C
.int .L_024A
.int .L_024A
.int .L_020F
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_024A
.int .L_0225
.int .L_024A
.int .L_024A
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_024A
.int .L_0234
.L_01E8:
.L_01E7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_ASTDUMPTREEEX@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_024F:
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
je .L_0252
mov dword ptr [ebp+12], 40
.L_0252:
.L_0251:
cmp dword ptr [ebp+8], 0
jne .L_0254
push 1
push 6
push offset _Lt_01FF
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0250
.L_0254:
.L_0253:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
push dword ptr [ebp+8]
call _HASTNODETOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-12]
push eax
call _DBG_ASTOUTPUT@16
inc dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0256
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0258
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
push offset _Lt_0259
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT@16
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0257
.L_0258:
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
push offset _Lt_0178
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT@16
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0257:
jmp .L_0255
.L_0256:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_025C
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
push offset _Lt_025D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT@16
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0255
.L_025C:
push -1
push 0
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _DBG_ASTOUTPUT@16
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0255:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .L_0261
push dword ptr [ebp+20]
push -1
mov eax, dword ptr [ebp+12]
add eax, -2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDUMPTREEEX@16
.L_0261:
.L_0260:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0263
push dword ptr [ebp+20]
push 1
mov eax, dword ptr [ebp+12]
add eax, 2
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDUMPTREEEX@16
.L_0263:
.L_0262:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0250:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_DBG_ASTNODECLASSNAMES:
.int _Lt_012C
.int _Lt_012D
.int _Lt_012E
.int _Lt_012F
.int _Lt_0130
.int _Lt_0131
.int _Lt_0132
.int _Lt_0133
.int _Lt_0134
.int _Lt_0135
.int _Lt_0136
.int _Lt_0137
.int _Lt_0138
.int _Lt_0139
.int _Lt_013A
.int _Lt_013B
.int _Lt_013C
.int _Lt_013D
.int _Lt_013E
.int _Lt_013F
.int _Lt_0140
.int _Lt_0141
.int _Lt_0142
.int _Lt_0143
.int _Lt_0144
.int _Lt_0145
.int _Lt_0146
.int _Lt_0147
.int _Lt_0148
.int _Lt_0149
.int _Lt_014A
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0150
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0154
.int _Lt_0155
.int _Lt_0156
.int _Lt_0157
.int _Lt_0158
.balign 4
_Lt_012C:	.ascii	"NOP\0"
.balign 4
_Lt_012D:	.ascii	"LOAD\0"
.balign 4
_Lt_012E:	.ascii	"ASSIGN\0"
.balign 4
_Lt_012F:	.ascii	"BOP\0"
.balign 4
_Lt_0130:	.ascii	"UOP\0"
.balign 4
_Lt_0131:	.ascii	"CONV\0"
.balign 4
_Lt_0132:	.ascii	"ADDROF\0"
.balign 4
_Lt_0133:	.ascii	"BRANCH\0"
.balign 4
_Lt_0134:	.ascii	"JMPTB\0"
.balign 4
_Lt_0135:	.ascii	"CALL\0"
.balign 4
_Lt_0136:	.ascii	"CALLCTOR\0"
.balign 4
_Lt_0137:	.ascii	"STACK\0"
.balign 4
_Lt_0138:	.ascii	"MEM\0"
.balign 4
_Lt_0139:	.ascii	"LOOP\0"
.balign 4
_Lt_013A:	.ascii	"COMP\0"
.balign 4
_Lt_013B:	.ascii	"LINK\0"
.balign 4
_Lt_013C:	.ascii	"CONST\0"
.balign 4
_Lt_013D:	.ascii	"VAR\0"
.balign 4
_Lt_013E:	.ascii	"IDX\0"
.balign 4
_Lt_013F:	.ascii	"FIELD\0"
.balign 4
_Lt_0140:	.ascii	"DEREF\0"
.balign 4
_Lt_0141:	.ascii	"LABEL\0"
.balign 4
_Lt_0142:	.ascii	"ARG\0"
.balign 4
_Lt_0143:	.ascii	"OFFSET\0"
.balign 4
_Lt_0144:	.ascii	"DECL\0"
.balign 4
_Lt_0145:	.ascii	"NIDXARRAY\0"
.balign 4
_Lt_0146:	.ascii	"IIF\0"
.balign 4
_Lt_0147:	.ascii	"LIT\0"
.balign 4
_Lt_0148:	.ascii	"ASM\0"
.balign 4
_Lt_0149:	.ascii	"DATASTMT\0"
.balign 4
_Lt_014A:	.ascii	"DBG\0"
.balign 4
_Lt_014B:	.ascii	"BOUNDCHK\0"
.balign 4
_Lt_014C:	.ascii	"PTRCHK\0"
.balign 4
_Lt_014D:	.ascii	"SCOPEBEGIN\0"
.balign 4
_Lt_014E:	.ascii	"SCOPEEND\0"
.balign 4
_Lt_014F:	.ascii	"SCOPE_BREAK\0"
.balign 4
_Lt_0150:	.ascii	"TYPEINI\0"
.balign 4
_Lt_0151:	.ascii	"TYPEINI_PAD\0"
.balign 4
_Lt_0152:	.ascii	"TYPEINI_ASSIGN\0"
.balign 4
_Lt_0153:	.ascii	"TYPEINI_CTORCALL\0"
.balign 4
_Lt_0154:	.ascii	"TYPEINI_CTORLIST\0"
.balign 4
_Lt_0155:	.ascii	"TYPEINI_SCOPEINI\0"
.balign 4
_Lt_0156:	.ascii	"TYPEINI_SCOPEEND\0"
.balign 4
_Lt_0157:	.ascii	"PROC\0"
.balign 4
_Lt_0158:	.ascii	"MACRO\0"
.balign 4
_DBG_ASTNODEOPNAMES:
.int _Lt_015A
.int _Lt_015B
.int _Lt_015C
.int _Lt_015D
.int _Lt_015E
.int _Lt_015F
.int _Lt_0160
.int _Lt_0161
.int _Lt_0162
.int _Lt_0163
.int _Lt_0164
.int _Lt_0165
.int _Lt_0166
.int _Lt_0167
.int _Lt_0168
.int _Lt_0169
.int _Lt_016A
.int _Lt_016B
.int _Lt_016C
.int _Lt_016D
.int _Lt_016E
.int _Lt_016F
.int _Lt_0132
.int _Lt_0170
.int _Lt_0171
.int _Lt_0172
.int _Lt_0173
.int _Lt_0174
.int _Lt_0175
.int _Lt_0176
.int _Lt_0177
.int _Lt_0178
.int _Lt_0179
.int _Lt_017A
.int _Lt_017B
.int _Lt_017C
.int _Lt_017D
.int _Lt_017E
.int _Lt_017F
.int _Lt_0180
.int _Lt_0181
.int _Lt_0182
.int _Lt_0183
.int _Lt_0184
.int _Lt_0185
.int _Lt_0186
.int _Lt_0187
.int _Lt_0188
.int _Lt_0189
.int _Lt_018A
.int _Lt_018B
.int _Lt_018C
.int _Lt_018D
.int _Lt_0175
.int _Lt_018E
.int _Lt_018F
.int _Lt_0190
.int _Lt_0191
.int _Lt_0192
.int _Lt_0193
.int _Lt_0194
.int _Lt_0195
.int _Lt_0196
.int _Lt_0197
.int _Lt_0198
.int _Lt_0199
.int _Lt_019A
.int _Lt_019B
.int _Lt_019C
.int _Lt_019D
.int _Lt_019E
.int _Lt_019F
.int _Lt_01A0
.int _Lt_01A1
.int _Lt_01A2
.int _Lt_01A3
.int _Lt_0140
.int _Lt_01A4
.int _Lt_01A5
.int _Lt_01A6
.int _Lt_01A7
.int _Lt_01A8
.int _Lt_01A9
.int _Lt_01AA
.int _Lt_01AB
.int _Lt_012D
.int _Lt_01AC
.int _Lt_01AD
.int _Lt_01AE
.int _Lt_01AF
.int _Lt_01B0
.int _Lt_01B1
.int _Lt_01B2
.int _Lt_01B3
.int _Lt_01B4
.int _Lt_01B5
.int _Lt_01B6
.int _Lt_01B7
.int _Lt_01B8
.int _Lt_0135
.int _Lt_0141
.int _Lt_01B9
.int _Lt_01BA
.int _Lt_01BB
.int _Lt_01BC
.int _Lt_01BD
.int _Lt_01BE
.int _Lt_01BF
.int _Lt_01C0
.int _Lt_01C1
.int _Lt_01C2
.int _Lt_01C3
.int _Lt_01C4
.int _Lt_01C5
.int _Lt_01C6
.int _Lt_01C7
.int _Lt_01C8
.int _Lt_01C9
.int _Lt_01CA
.int _Lt_01CB
.int _Lt_01CC
.balign 4
_Lt_015A:	.ascii	"=\0"
.balign 4
_Lt_015B:	.ascii	"+=\0"
.balign 4
_Lt_015C:	.ascii	"-=\0"
.balign 4
_Lt_015D:	.ascii	"*=\0"
.balign 4
_Lt_015E:	.ascii	"/=\0"
.balign 4
_Lt_015F:	.ascii	"\\=\0"
.balign 4
_Lt_0160:	.ascii	"MOD=\0"
.balign 4
_Lt_0161:	.ascii	"AND=\0"
.balign 4
_Lt_0162:	.ascii	"OR=\0"
.balign 4
_Lt_0163:	.ascii	"ANDALSO=\0"
.balign 4
_Lt_0164:	.ascii	"ORELSE=\0"
.balign 4
_Lt_0165:	.ascii	"XOR=\0"
.balign 4
_Lt_0166:	.ascii	"EQV=\0"
.balign 4
_Lt_0167:	.ascii	"IMP=\0"
.balign 4
_Lt_0168:	.ascii	"SHL=\0"
.balign 4
_Lt_0169:	.ascii	"SHR=\0"
.balign 4
_Lt_016A:	.ascii	"^=\0"
.balign 4
_Lt_016B:	.ascii	"&=\0"
.balign 4
_Lt_016C:	.ascii	"new=\0"
.balign 4
_Lt_016D:	.ascii	"new[]=\0"
.balign 4
_Lt_016E:	.ascii	"del=\0"
.balign 4
_Lt_016F:	.ascii	"del[]=\0"
.balign 4
_Lt_0170:	.ascii	"PTRINDEX\0"
.balign 4
_Lt_0171:	.ascii	"FOR\0"
.balign 4
_Lt_0172:	.ascii	"STEP\0"
.balign 4
_Lt_0173:	.ascii	"NEXT\0"
.balign 4
_Lt_0174:	.ascii	"CAST\0"
.balign 4
_Lt_0175:	.ascii	"+\0"
.balign 4
_Lt_0176:	.ascii	"-\0"
.balign 4
_Lt_0177:	.ascii	"*\0"
.balign 4
_Lt_0178:	.ascii	"/\0"
.balign 4
_Lt_0179:	.ascii	"\\\0"
.balign 4
_Lt_017A:	.ascii	"MOD\0"
.balign 4
_Lt_017B:	.ascii	"AND\0"
.balign 4
_Lt_017C:	.ascii	"OR\0"
.balign 4
_Lt_017D:	.ascii	"ANDALSO\0"
.balign 4
_Lt_017E:	.ascii	"ORELSE\0"
.balign 4
_Lt_017F:	.ascii	"XOR\0"
.balign 4
_Lt_0180:	.ascii	"EQV\0"
.balign 4
_Lt_0181:	.ascii	"IMP\0"
.balign 4
_Lt_0182:	.ascii	"SHL\0"
.balign 4
_Lt_0183:	.ascii	"SHR\0"
.balign 4
_Lt_0184:	.ascii	"^\0"
.balign 4
_Lt_0185:	.ascii	"&\0"
.balign 4
_Lt_0186:	.ascii	"==\0"
.balign 4
_Lt_0187:	.ascii	">\0"
.balign 4
_Lt_0188:	.ascii	"<\0"
.balign 4
_Lt_0189:	.ascii	"<>\0"
.balign 4
_Lt_018A:	.ascii	">=\0"
.balign 4
_Lt_018B:	.ascii	"<=\0"
.balign 4
_Lt_018C:	.ascii	"IS\0"
.balign 4
_Lt_018D:	.ascii	"NOT\0"
.balign 4
_Lt_018E:	.ascii	"NEG\0"
.balign 4
_Lt_018F:	.ascii	"HADD\0"
.balign 4
_Lt_0190:	.ascii	"ABS\0"
.balign 4
_Lt_0191:	.ascii	"SGN\0"
.balign 4
_Lt_0192:	.ascii	"SIN\0"
.balign 4
_Lt_0193:	.ascii	"ASIN\0"
.balign 4
_Lt_0194:	.ascii	"COS\0"
.balign 4
_Lt_0195:	.ascii	"ACOS\0"
.balign 4
_Lt_0196:	.ascii	"TAN\0"
.balign 4
_Lt_0197:	.ascii	"ATAN\0"
.balign 4
_Lt_0198:	.ascii	"ATAN2\0"
.balign 4
_Lt_0199:	.ascii	"SQRT\0"
.balign 4
_Lt_019A:	.ascii	"RSQRT\0"
.balign 4
_Lt_019B:	.ascii	"RCP\0"
.balign 4
_Lt_019C:	.ascii	"LOG\0"
.balign 4
_Lt_019D:	.ascii	"EXP\0"
.balign 4
_Lt_019E:	.ascii	"FLOOR\0"
.balign 4
_Lt_019F:	.ascii	"FIX\0"
.balign 4
_Lt_01A0:	.ascii	"FRAC\0"
.balign 4
_Lt_01A1:	.ascii	"LEN\0"
.balign 4
_Lt_01A2:	.ascii	"CONVFD2FS\0"
.balign 4
_Lt_01A3:	.ascii	"SWZREP\0"
.balign 4
_Lt_01A4:	.ascii	"FLDDEREF\0"
.balign 4
_Lt_01A5:	.ascii	"NEW\0"
.balign 4
_Lt_01A6:	.ascii	"NEW_VEC\0"
.balign 4
_Lt_01A7:	.ascii	"DEL\0"
.balign 4
_Lt_01A8:	.ascii	"DEL_VEC\0"
.balign 4
_Lt_01A9:	.ascii	"TOINT\0"
.balign 4
_Lt_01AA:	.ascii	"TOFLT\0"
.balign 4
_Lt_01AB:	.ascii	"TOBOOL\0"
.balign 4
_Lt_01AC:	.ascii	"LOADRES\0"
.balign 4
_Lt_01AD:	.ascii	"SPILLREGS\0"
.balign 4
_Lt_01AE:	.ascii	"PUSH\0"
.balign 4
_Lt_01AF:	.ascii	"POP\0"
.balign 4
_Lt_01B0:	.ascii	"PUSHUDT\0"
.balign 4
_Lt_01B1:	.ascii	"STACKALIGN\0"
.balign 4
_Lt_01B2:	.ascii	"JEQ\0"
.balign 4
_Lt_01B3:	.ascii	"JGT\0"
.balign 4
_Lt_01B4:	.ascii	"JLT\0"
.balign 4
_Lt_01B5:	.ascii	"JNE\0"
.balign 4
_Lt_01B6:	.ascii	"JGE\0"
.balign 4
_Lt_01B7:	.ascii	"JLE\0"
.balign 4
_Lt_01B8:	.ascii	"JMP\0"
.balign 4
_Lt_01B9:	.ascii	"RET\0"
.balign 4
_Lt_01BA:	.ascii	"CALLFUNCT\0"
.balign 4
_Lt_01BB:	.ascii	"CALLPTR\0"
.balign 4
_Lt_01BC:	.ascii	"JUMPPTR\0"
.balign 4
_Lt_01BD:	.ascii	"MEMMOVE\0"
.balign 4
_Lt_01BE:	.ascii	"MEMSWAP\0"
.balign 4
_Lt_01BF:	.ascii	"MEMCLEAR\0"
.balign 4
_Lt_01C0:	.ascii	"STKCLEAR\0"
.balign 4
_Lt_01C1:	.ascii	"VA_START\0"
.balign 4
_Lt_01C2:	.ascii	"VA_END\0"
.balign 4
_Lt_01C3:	.ascii	"VA_COPY\0"
.balign 4
_Lt_01C4:	.ascii	"VA_ARG\0"
.balign 4
_Lt_01C5:	.ascii	"DBG_LINEINI\0"
.balign 4
_Lt_01C6:	.ascii	"DBG_LINEEND\0"
.balign 4
_Lt_01C7:	.ascii	"DBG_SCOPEINI\0"
.balign 4
_Lt_01C8:	.ascii	"BDG_SCOPEEND\0"
.balign 4
_Lt_01C9:	.ascii	"LIT_COMMENT\0"
.balign 4
_Lt_01CA:	.ascii	"LIT_ASM\0"
.balign 4
_Lt_01CB:	.ascii	"TOSIGNED\0"
.balign 4
_Lt_01CC:	.ascii	"TOUNSIGNED\0"
.balign 4
_Lt_01D1:	.ascii	"OP:\0"
.balign 4
_Lt_01D9:	.ascii	"CLASS:\0"
.balign 4
_Lt_01EC:	.ascii	" =-= \0"
.balign 4
_Lt_01F5:	.ascii	" (\0"
.balign 4
_Lt_01F6:	.ascii	")\0"
.balign 4
_Lt_01FE:	.ascii	"VAR( \0"
.balign 4
_Lt_01FF:	.ascii	"<NULL>\0"
.balign 4
_Lt_0202:	.ascii	" )\0"
.balign 4
_Lt_0209:	.ascii	"FIELD( \0"
.balign 4
_Lt_0212:	.ascii	"DECL( \0"
.balign 4
_Lt_0219:	.ascii	"CALL( \0"
.balign 4
_Lt_021D:	.ascii	"LABEL: \0"
.balign 4
_Lt_0220:	.ascii	"BRANCH: \0"
.balign 4
_Lt_0221:	.ascii	" \0"
.balign 4
_Lt_0226:	.ascii	"SCOPEBEGIN: \0"
.balign 4
_Lt_0229:	.ascii	"( offset=\0"
.balign 4
_Lt_022A:	.ascii	", bytes=\0"
.balign 4
_Lt_022B:	.ascii	" ) \0"
.balign 4
_Lt_0235:	.ascii	"MACRO: \0"
.balign 4
_Lt_0240:	.ascii	"L\0"
.balign 4
_Lt_0243:	.ascii	"R\0"
.balign 4
_Lt_0259:	.ascii	"/ \\\0"
.balign 4
_Lt_025D:	.ascii	"  \\\0"

.section .ctors
.int _fb_ctor__astznodezmisc
