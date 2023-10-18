	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDCONST
_SYMBADDCONST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 2
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0060
jmp .L_005E
.L_0060:
.L_005F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBREUSEORADDCONST
_SYMBREUSEORADDCONST:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0061:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0064
push 0
push 0
push 2
push dword ptr [ebp+8]
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0066
jmp .L_0062
.L_0066:
.L_0065:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [eax+28]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
cmp ecx, dword ptr [ebp+16]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0068
mov eax, dword ptr [ebp+12]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .L_006C
.L_006D:
cmp dword ptr [ebp-16], 4
je .L_006C
.L_006E:
cmp dword ptr [ebp-16], 7
jne .L_006B
.L_006C:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
cmp ecx, dword ptr [ebx+56]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-16], 15
je .L_0070
.L_0071:
cmp dword ptr [ebp-16], 16
jne .L_006F
.L_0070:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
cmp ecx, dword ptr [ebx+60]
mov eax, -1
jne .L_007B
cmp esi, dword ptr [ebx+56]
je .L_007A
.L_007B:
xor eax, eax
.L_007A:
mov dword ptr [ebp-12], eax
jmp .L_0069
.L_006F:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
cmp esi, dword ptr [ebx+60]
mov eax, -1
jne .L_007D
cmp ecx, dword ptr [ebx+56]
je .L_007C
.L_007D:
xor eax, eax
.L_007C:
mov dword ptr [ebp-12], eax
.L_0072:
.L_0069:
.L_0068:
.L_0067:
cmp dword ptr [ebp-12], 0
jne .L_0074
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 1048576
test ebx, ebx
je .L_0076
push 0
push 1
push 0
push 39
call _ERRREPORTWARN
add esp, 16
push dword ptr [ebp-8]
call _SYMBDELFROMHASH
add esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
jmp .L_0075
.L_0076:
mov dword ptr [ebp-8], 0
.L_0075:
jmp .L_0073
.L_0074:
mov eax, dword ptr [ebp-8]
and dword ptr [eax+12], -1048577
.L_0073:
.L_0064:
.L_0063:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0062:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBALLOCFLOATCONST
_SYMBALLOCFLOATCONST:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0085:
push dword ptr [ebp+16]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFLOATTOHEX
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HALLOCINTORFLOATCONST
add esp, 8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBALLOCINTCONST
_SYMBALLOCINTCONST:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.L_0088:
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_008B
mov dword ptr [ebp-20], 24
jmp .L_008F
.L_008B:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-20], eax
.L_008F:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .L_008E
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .L_008D
.L_008E:
push 0
push -1
push 8
mov eax, dword ptr [ebp+8]
push eax
call _fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_008D:
push dword ptr [ebp+16]
lea eax, [ebp-16]
push eax
call _HALLOCINTORFLOATCONST
add esp, 8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBALLOCSTRCONST
_SYMBALLOCSTRCONST:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0090:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .L_0094
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.L_0094:
.L_0093:
cmp dword ptr [ebp-12], 122
jg .L_0096
push 0
push 7
push offset _Lt_0097
push 134
push offset _Lt_009B
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 134
push offset _Lt_009B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 134
push offset _Lt_009B
call _fb_StrAssign
add esp, 20
jmp .L_0095
.L_0096:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset _Lt_009B
call _fb_StrAssign
add esp, 20
.L_0095:
push 0
push -1
push 1
push offset _Lt_009B
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_009A
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0091
.L_009A:
.L_0099:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset _Lt_009C
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
inc eax
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset _Lt_009D
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 4
push offset _Lt_009C
push offset _Lt_009B
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_009B,134
.balign 4
	.lcomm	_Lt_009C,134
.balign 4
	.lcomm	_Lt_009E,16

.section .data
.balign 4
_Lt_009D:
.int _Lt_009E
.int _Lt_009E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBALLOCWSTRCONST
_SYMBALLOCWSTRCONST:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_009F:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .L_00A3
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.L_00A3:
.L_00A2:
mov eax, dword ptr [ebp-12]
sal eax, 2
cmp eax, 122
jg .L_00A5
push 0
push 7
push offset _Lt_00A6
push 134
push offset _Lt_00AA
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HESCAPEW
add esp, 4
push eax
push 134
push offset _Lt_00AA
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 134
push offset _Lt_00AA
call _fb_StrAssign
add esp, 20
jmp .L_00A4
.L_00A5:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset _Lt_00AA
call _fb_StrAssign
add esp, 20
.L_00A4:
push 0
push -1
push 1
push offset _Lt_00AA
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00A9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00A0
.L_00A9:
.L_00A8:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset _Lt_00AB
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset _Lt_00AC
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 7
push offset _Lt_00AB
push offset _Lt_00AA
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _fb_WstrAssign
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00AA,134
.balign 4
	.lcomm	_Lt_00AB,134
.balign 4
	.lcomm	_Lt_00AD,16

.section .data
.balign 4
_Lt_00AC:
.int _Lt_00AD
.int _Lt_00AD
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBDELCONST
_SYMBDELCONST:
push ebp
mov ebp, esp
.L_00AE:
cmp dword ptr [ebp+8], 0
jne .L_00B1
jmp .L_00AF
.L_00B1:
.L_00B0:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.L_00AF:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCONSTVALUEASSTR
_SYMBGETCONSTVALUEASSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
je .L_00B7
.L_00B8:
cmp dword ptr [ebp-16], 18
je .L_00B7
.L_00B9:
cmp dword ptr [ebp-16], 4
jne .L_00B6
.L_00B7:
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+56]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00B4
.L_00B6:
cmp dword ptr [ebp-16], 16
jne .L_00BA
.L_00BB:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00B4
.L_00BA:
cmp dword ptr [ebp-16], 15
jne .L_00BC
.L_00BD:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+56]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00B4
.L_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .L_00BF
mov dword ptr [ebp-20], 24
jmp .L_00C3
.L_00BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00C3:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .L_00C2
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_00C1
.L_00C2:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.L_00C1:
.L_00BE:
.L_00B4:
.L_00B3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONECONST
_SYMBCLONECONST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
push 0
call _SYMBADDCONST
add esp, 20
mov dword ptr [ebp-4], eax
.L_00C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETCONSTSTRASSTR
_SYMBGETCONSTSTRASSTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_00C6:
push 0
push offset _Lt_00E1
call _DZSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_00C9
mov dword ptr [ebp-8], 0
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPE
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-12]
call _fb_StrLen
add esp, 8
mov ebx, dword ptr [ebp-8]
cmp eax, ebx
je .L_00CB
push offset _Lt_00CE
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_00D0
.L_00D3:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 2
mov ebx, dword ptr [ebp-12]
add ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
push eax
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_00D4
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.L_00D1:
inc dword ptr [ebp-16]
.L_00D0:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00D3
.L_00D2:
jmp .L_00CA
.L_00CB:
push offset _Lt_00D8
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
.L_00CA:
push offset _Lt_00CD
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
jmp .L_00C8
.L_00C9:
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HUNESCAPEW
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_00CE
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_00DA
.L_00DD:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 4
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
push ebx
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_00DE
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.L_00DB:
inc dword ptr [ebp-16]
.L_00DA:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00DD
.L_00DC:
push offset _Lt_00CD
push offset _Lt_00E1
call _DZSTRCONCATASSIGN
add esp, 8
.L_00C8:
mov eax, dword ptr [_Lt_00E1]
mov dword ptr [ebp-4], eax
.L_00C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00E1,12

.section .text
.balign 16

.globl _SYMBGETCONSTSTRASWSTR
_SYMBGETCONSTSTRASWSTR:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_00E2:
push 0
push offset _Lt_00FD
call _DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_00E5
mov dword ptr [ebp-8], 0
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPEW
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _fb_WstrLen
add esp, 4
mov ebx, dword ptr [ebp-8]
cmp eax, ebx
je .L_00E7
push offset _Lt_00CE
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-20]
call _fb_WstrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00EA
.L_00ED:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push 4
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
push ebx
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_00DE
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-56], eax
push dword ptr [ebp-56]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-56]
call _fb_WstrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_00EB:
inc dword ptr [ebp-24]
.L_00EA:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00ED
.L_00EC:
jmp .L_00E6
.L_00E7:
push offset _Lt_00D8
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-20]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-12]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
.L_00E6:
push offset _Lt_00CD
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
jmp .L_00E4
.L_00E5:
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HUNESCAPE
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_00CE
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-28], eax
jmp .L_00F5
.L_00F8:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push -1
push 4
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-24]
movzx ebx, byte ptr [eax]
push ebx
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_00DE
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-56], eax
push dword ptr [ebp-56]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-56]
call _fb_WstrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
.L_00F6:
inc dword ptr [ebp-24]
.L_00F5:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00F8
.L_00F7:
push offset _Lt_00CD
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_00FD
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-20]
call _fb_WstrDelete
add esp, 4
.L_00E4:
mov eax, dword ptr [_Lt_00FD]
mov dword ptr [ebp-4], eax
.L_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FD,12

.section .text
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
_HALLOCINTORFLOATCONST:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.L_007E:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 0
push 7
push offset _Lt_0081
push 134
push offset _Lt_00FE
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
push 134
push offset _Lt_00FE
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 134
push offset _Lt_00FE
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset _Lt_00FE
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
je .L_0084
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
jmp .L_007F
.L_0084:
.L_0083:
push 137
push 3073
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push offset _Lt_00FE
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-72], eax
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebx+56], eax
push 0
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-72]
push dword ptr [eax+56]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
.L_007F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FE,134
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_0081:	.ascii	"{fbnc}\0"
.balign 4
_Lt_008A:	.ascii	"0x\0"
.balign 4
_Lt_0097:	.ascii	"{fbsc}\0"
.balign 4
_Lt_00A6:	.ascii	"{fbwc}\0"
.balign 4
_Lt_00CD:	.ascii	"\"\0"
.balign 4
_Lt_00CE:	.ascii	"!\"\0"
.balign 4
_Lt_00D4:	.ascii	"\\x\0"
.balign 4
_Lt_00D8:	.ascii	"$\"\0"
.balign 4
_Lt_00DE:	.ascii	"\\u\0"
