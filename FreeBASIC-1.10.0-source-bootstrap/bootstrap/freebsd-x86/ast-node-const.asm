	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCONSTEQZERO
ASTCONSTEQZERO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_005E
mov dword ptr [ebp-8], 24
jmp .L_0062
.L_005E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0062:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0061
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
fld qword ptr [Lt_0063]
fcomip st, st(1)
fstp st(0)
setz al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_0060
.L_0061:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
mov ebx, -1
jne .L_0066
cmp dword ptr [eax+20], 0
je .L_0065
.L_0066:
xor ebx, ebx
.L_0065:
mov dword ptr [ebp-4], ebx
.L_0060:
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONSTGEZERO
ASTCONSTGEZERO:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0069
mov dword ptr [ebp-8], 24
jmp .L_0070
.L_0069:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0070:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_006C
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
fld qword ptr [Lt_0063]
fcomip st, st(1)
fstp st(0)
setbe al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .L_006B
.L_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_006E
mov dword ptr [ebp-12], 24
jmp .L_0071
.L_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_0071:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_006D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
mov ebx, -1
jg .L_0073
jl .L_0074
cmp dword ptr [eax+20], 0
jae .L_0073
.L_0074:
xor ebx, ebx
.L_0073:
mov dword ptr [ebp-4], ebx
jmp .L_006B
.L_006D:
mov dword ptr [ebp-4], -1
.L_006B:
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTISCONST0ORMINUS1
ASTISCONST0ORMINUS1:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .L_0078
push dword ptr [ebp+8]
call ASTCONSTGETASINT64
add esp, 4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
mov eax, -1
jne .L_007C
cmp dword ptr [ebp-12], 0
je .L_007B
.L_007C:
xor eax, eax
.L_007B:
cmp dword ptr [ebp-8], 4294967295
mov edx, -1
jne .L_007E
cmp dword ptr [ebp-12], 4294967295
je .L_007D
.L_007E:
xor edx, edx
.L_007D:
or eax, edx
je .L_007A
mov dword ptr [ebp-4], -1
jmp .L_0076
.L_007A:
.L_0079:
.L_0078:
.L_0077:
mov dword ptr [ebp-4], 0
.L_0076:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONSTSTR
ASTNEWCONSTSTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007F:
push -1
push dword ptr [ebp+8]
call SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0082
jmp .L_0080
.L_0082:
.L_0081:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONSTWSTR
ASTNEWCONSTWSTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0083:
push -1
push dword ptr [ebp+8]
call SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0086
jmp .L_0084
.L_0086:
.L_0085:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.L_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONSTI
ASTNEWCONSTI:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0087:
push 0
push 13
push 16
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0088:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONSTF
ASTNEWCONSTF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0089:
push 0
push 16
push 16
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
.L_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONST
ASTNEWCONST:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008B:
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_008D
mov dword ptr [ebp-8], 24
jmp .L_0091
.L_008D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.L_0091:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_0090
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_008F
.L_0090:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_008F:
.L_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTNEWCONSTZ
ASTNEWCONSTZ:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0092:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-16], ebx
jmp .L_0095
.L_0097:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_0098:
push 0
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_0099:
push 0
call ASTNEWCONSTWSTR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_009A:
push 0
push 0
push -1
push dword ptr [ebp+12]
push 20
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-12], eax
.L_009B:
cmp dword ptr [ebp-12], 0
je .L_009C
push 0
push 0
push -2147483648
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 24
push dword ptr [ebp-12]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .L_009B
.L_009C:
push 0
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 8
push 0
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_009D:
cmp dword ptr [ebp+8], -2147483648
jne .L_009F
mov dword ptr [ebp+8], 8
.L_009F:
.L_009E:
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_00A0
mov dword ptr [ebp-20], 24
jmp .L_00A5
.L_00A0:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00A5:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00A3
push dword ptr [ebp+8]
push dword ptr [Lt_0063+4]
push dword ptr [Lt_0063]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_00A2
.L_00A3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_00A2:
jmp .L_0094
.L_0095:
cmp dword ptr [ebp-16], 20
ja .L_009D
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00A4+eax*4]
.L_00A4:
.int .L_0097
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_0098
.int .L_009D
.int .L_009D
.int .L_0099
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_009D
.int .L_0098
.int .L_0098
.int .L_009D
.int .L_009A
.L_0094:
.L_0093:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADCONST
ASTLOADCONST:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00A6:
cmp dword ptr [AST+136], 0
je .L_00A9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_00AA
mov dword ptr [ebp-12], 24
jmp .L_00AE
.L_00AA:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_00AE:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .L_00AD
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-8]
call dword ptr [IR+232]
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00AC
.L_00AD:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
call dword ptr [IR+228]
add esp, 16
mov dword ptr [ebp-4], eax
.L_00AC:
.L_00A9:
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONSTFLUSHTOINT
ASTCONSTFLUSHTOINT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00AF:
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_00B0:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONSTFLUSHTOSTR
ASTCONSTFLUSHTOSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00B3
mov dword ptr [ebp-16], 24
jmp .L_00BD
.L_00B3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00BD:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00B6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .L_00B8
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00B7
.L_00B8:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00B7:
jmp .L_00B5
.L_00B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .L_00B9
push 0
push -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
push eax
call fb_BoolToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00B5
.L_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00BB
mov dword ptr [ebp-20], 24
jmp .L_00BE
.L_00BB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00BE:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00BA
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .L_00B5
.L_00BA:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_00B5:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.L_00B2:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONSTFLUSHTOWSTR
ASTCONSTFLUSHTOWSTR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00C1
mov dword ptr [ebp-8], 24
jmp .L_00D0
.L_00C1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00D0:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00C4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .L_00C6
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call fb_DoubleToWstr
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D2
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D2
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
.L_00C5:
jmp .L_00C3
.L_00C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .L_00C9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
push eax
call fb_BoolToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D2
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
jmp .L_00C3
.L_00C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CC
mov dword ptr [ebp-12], 24
jmp .L_00D1
.L_00CC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00D1:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00CB
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToWstr
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D2
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
jmp .L_00C3
.L_00CB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_ULongintToWstr
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D2
call fb_WstrAssign
add esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 4
.L_00C3:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
mov eax, offset Lt_00D2
mov dword ptr [ebp-4], eax
.L_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00D2,260

.section .text
.balign 16

.globl ASTCONSTGETASINT64
ASTCONSTGETASINT64:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00D5
mov dword ptr [ebp-12], 24
jmp .L_00D9
.L_00D5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00D9:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00D8
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .L_00D7
.L_00D8:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.L_00D7:
.L_00D4:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONSTGETASDOUBLE
ASTCONSTGETASDOUBLE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00DC
mov dword ptr [ebp-12], 24
jmp .L_00E3
.L_00DC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00E3:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .L_00DF
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push dword ptr [eax+24]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .L_00DE
.L_00DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00E1
mov dword ptr [ebp-16], 24
jmp .L_00E4
.L_00E1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.L_00E4:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00E0
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+20]
fstp qword ptr [ebp-8]
jmp .L_00DE
.L_00E0:
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .L_00E5
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_00E5:
fstp qword ptr [ebp-8]
.L_00DE:
.L_00DB:
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDCONST
ASTBUILDCONST:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00E6:
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
je .L_00EB
.L_00EC:
cmp dword ptr [ebp-16], 7
jne .L_00EA
.L_00EB:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00EA:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
call ASTNEWCONST
add esp, 12
mov dword ptr [ebp-4], eax
.L_00ED:
.L_00E8:
.L_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTCONVERTRAWCONSTI
ASTCONVERTRAWCONSTI:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00EE:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00F0
mov dword ptr [ebp-8], 24
jmp .L_00F4
.L_00F0:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.L_00F4:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00F2
mov dword ptr [ebp-12], 13
jmp .L_00F5
.L_00F2:
mov dword ptr [ebp-12], 14
.L_00F5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+8], 0
inc dword ptr [AST+232]
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.L_00EF:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 8
Lt_0063:	.quad	0x0000000000000000
