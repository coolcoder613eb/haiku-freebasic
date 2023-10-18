	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCONSTEQZERO@4
_ASTCONSTEQZERO@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_005F
mov dword ptr [ebp-8], 24
jmp .L_0063
.L_005F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0063:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0062
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
fld qword ptr [_Lt_0064]
fcomip st, st(1)
fstp st(0)
setz al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0061
.L_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
mov ebx, -1
jne .L_0067
cmp dword ptr [eax+24], 0
je .L_0066
.L_0067:
xor ebx, ebx
.L_0066:
mov dword ptr [ebp-4], ebx
.L_0061:
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTGEZERO@4
_ASTCONSTGEZERO@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_006A
mov dword ptr [ebp-8], 24
jmp .L_0071
.L_006A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0071:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_006D
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
fld qword ptr [_Lt_0064]
fcomip st, st(1)
fstp st(0)
setbe al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_006F
mov dword ptr [ebp-12], 24
jmp .L_0072
.L_006F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0072:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_006E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
mov ebx, -1
jg .L_0074
jl .L_0075
cmp dword ptr [eax+24], 0
jae .L_0074
.L_0075:
xor ebx, ebx
.L_0074:
mov dword ptr [ebp-4], ebx
jmp .L_006C
.L_006E:
mov dword ptr [ebp-4], -1
.L_006C:
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTISCONST0ORMINUS1@4
_ASTISCONST0ORMINUS1@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0079
push dword ptr [ebp+8]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
mov eax, -1
jne .L_007D
cmp dword ptr [ebp-12], 0
je .L_007C
.L_007D:
xor eax, eax
.L_007C:
cmp dword ptr [ebp-8], 4294967295
mov edx, -1
jne .L_007F
cmp dword ptr [ebp-12], 4294967295
je .L_007E
.L_007F:
xor edx, edx
.L_007E:
or eax, edx
je .L_007B
mov dword ptr [ebp-4], -1
jmp .L_0077
.L_007B:
.L_007A:
.L_0079:
.L_0078:
mov dword ptr [ebp-4], 0
.L_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTSTR@4
_ASTNEWCONSTSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0080:
push -1
push dword ptr [ebp+8]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0083
jmp .L_0081
.L_0083:
.L_0082:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTWSTR@4
_ASTNEWCONSTWSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0084:
push -1
push dword ptr [ebp+8]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0087
jmp .L_0085
.L_0087:
.L_0086:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.L_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTI@16
_ASTNEWCONSTI@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0088:
push 0
push 13
push 16
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0089:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTNEWCONSTF@12
_ASTNEWCONSTF@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
push 0
push 16
push 16
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWCONST@12
_ASTNEWCONST@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008C:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_008E
mov dword ptr [ebp-8], 24
jmp .L_0092
.L_008E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0092:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_0091
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .L_0090
.L_0091:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_0090:
.L_008D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWCONSTZ@8
_ASTNEWCONSTZ@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0093:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-16], ebx
jmp .L_0096
.L_0098:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_0099:
push 0
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_009A:
push 0
call _ASTNEWCONSTWSTR@4
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_009B:
push 0
push 0
push -1
push dword ptr [ebp+12]
push 20
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN@12
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-12], eax
.L_009C:
cmp dword ptr [ebp-12], 0
je .L_009D
push 0
push 0
push -2147483648
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
call _ASTNEWCONSTZ@8
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@24
push dword ptr [ebp-12]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-12], eax
jmp .L_009C
.L_009D:
push 0
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND@8
push 0
push dword ptr [ebp-8]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_009E:
cmp dword ptr [ebp+8], -2147483648
jne .L_00A0
mov dword ptr [ebp+8], 8
.L_00A0:
.L_009F:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00A1
mov dword ptr [ebp-20], 24
jmp .L_00A6
.L_00A1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00A6:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00A4
push dword ptr [ebp+8]
push dword ptr [_Lt_0064+4]
push dword ptr [_Lt_0064]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .L_00A3
.L_00A4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.L_00A3:
jmp .L_0095
.L_0096:
cmp dword ptr [ebp-16], 20
ja .L_009E
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00A5+eax*4]
_.L_00A5:
.int .L_0098
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_0099
.int .L_009E
.int .L_009E
.int .L_009A
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_009E
.int .L_0099
.int .L_0099
.int .L_009E
.int .L_009B
.L_0095:
.L_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADCONST@4
_ASTLOADCONST@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A7:
cmp dword ptr [_AST+136], 0
je .L_00AA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00AB
mov dword ptr [ebp-12], 24
jmp .L_00AF
.L_00AB:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_00AF:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .L_00AE
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-8]
call dword ptr [_IR+232]
mov dword ptr [ebp-4], eax
jmp .L_00AD
.L_00AE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
call dword ptr [_IR+228]
mov dword ptr [ebp-4], eax
.L_00AD:
.L_00AA:
.L_00A9:
.L_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTFLUSHTOINT@8
_ASTCONSTFLUSHTOINT@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B0:
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call _ASTNEWCONV@20
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_00B1:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTCONSTFLUSHTOSTR@4
_ASTCONSTFLUSHTOSTR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00B4
mov dword ptr [ebp-16], 24
jmp .L_00BE
.L_00B4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00BE:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00B7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .L_00B9
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00B8
.L_00B9:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B8:
jmp .L_00B6
.L_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .L_00BA
push 0
push -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
or eax, dword ptr [ebx+28]
cmp eax, 0
setne al
push eax
call _fb_BoolToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00B6
.L_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00BC
mov dword ptr [ebp-20], 24
jmp .L_00BF
.L_00BC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00BF:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00BB
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .L_00B6
.L_00BB:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_00B6:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.L_00B3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTFLUSHTOWSTR@4
_ASTCONSTFLUSHTOWSTR@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C2
mov dword ptr [ebp-8], 24
jmp .L_00D1
.L_00C2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00D1:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .L_00C7
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D3
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D3
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.L_00C6:
jmp .L_00C4
.L_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .L_00CA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
or eax, dword ptr [ebx+28]
cmp eax, 0
setne al
push eax
call _fb_BoolToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D3
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .L_00C4
.L_00CA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CD
mov dword ptr [ebp-12], 24
jmp .L_00D2
.L_00CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00D2:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00CC
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D3
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .L_00C4
.L_00CC:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_ULongintToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D3
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.L_00C4:
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, offset _Lt_00D3
mov dword ptr [ebp-4], eax
.L_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00D3,130

.section .text
.balign 16

.globl _ASTCONSTGETASINT64@4
_ASTCONSTGETASINT64@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00D6
mov dword ptr [ebp-12], 24
jmp .L_00DA
.L_00D6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00DA:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00D9
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_00D8
.L_00D9:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.L_00D8:
.L_00D5:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTGETASDOUBLE@4
_ASTCONSTGETASDOUBLE@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00DD
mov dword ptr [ebp-12], 24
jmp .L_00E4
.L_00DD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00E4:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .L_00E0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+28]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .L_00DF
.L_00E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E2
mov dword ptr [ebp-16], 24
jmp .L_00E5
.L_00E2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00E5:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00E1
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+24]
fstp qword ptr [ebp-8]
jmp .L_00DF
.L_00E1:
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+24]
cmp dword ptr [eax+28], 0
jns .L_00E6
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_00E6:
fstp qword ptr [ebp-8]
.L_00DF:
.L_00DC:
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDCONST@4
_ASTBUILDCONST@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 4
je .L_00EC
.L_00ED:
cmp dword ptr [ebp-16], 7
jne .L_00EB
.L_00EC:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
jmp .L_00E9
.L_00EB:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
call _ASTNEWCONST@12
mov dword ptr [ebp-4], eax
.L_00EE:
.L_00E9:
.L_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONVERTRAWCONSTI@12
_ASTCONVERTRAWCONSTI@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00EF:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00F1
mov dword ptr [ebp-8], 24
jmp .L_00F5
.L_00F1:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00F5:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00F3
mov dword ptr [ebp-12], 13
jmp .L_00F6
.L_00F3:
mov dword ptr [ebp-12], 14
.L_00F6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+8], 0
inc dword ptr [_AST+232]
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_00F0:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 8
_Lt_0064:	.quad	0x0000000000000000
