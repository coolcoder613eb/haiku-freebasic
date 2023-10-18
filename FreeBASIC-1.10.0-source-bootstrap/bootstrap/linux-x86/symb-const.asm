	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDCONST
SYMBADDCONST:
.type SYMBADDCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_005C:
mov dword ptr [ebp-4], 0
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_005F
jmp .L_005D
.L_005F:
.L_005E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_005D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDCONST, .-SYMBADDCONST
.cfi_endproc
.balign 16

.globl SYMBREUSEORADDCONST
SYMBREUSEORADDCONST:
.type SYMBREUSEORADDCONST, @function
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
.L_0060:
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDCONST
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0063
sub esp, 12
push 0
push 0
push 2
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0065
jmp .L_0061
.L_0065:
.L_0064:
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
je .L_0067
mov eax, dword ptr [ebp+12]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .L_006B
.L_006C:
cmp dword ptr [ebp-16], 4
je .L_006B
.L_006D:
cmp dword ptr [ebp-16], 7
jne .L_006A
.L_006B:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
cmp ecx, dword ptr [ebx+56]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .L_0068
.L_006A:
cmp dword ptr [ebp-16], 15
je .L_006F
.L_0070:
cmp dword ptr [ebp-16], 16
jne .L_006E
.L_006F:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
cmp ecx, dword ptr [ebx+60]
mov eax, -1
jne .L_007A
cmp esi, dword ptr [ebx+56]
je .L_0079
.L_007A:
xor eax, eax
.L_0079:
mov dword ptr [ebp-12], eax
jmp .L_0068
.L_006E:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
cmp esi, dword ptr [ebx+60]
mov eax, -1
jne .L_007C
cmp ecx, dword ptr [ebx+56]
je .L_007B
.L_007C:
xor eax, eax
.L_007B:
mov dword ptr [ebp-12], eax
.L_0071:
.L_0068:
.L_0067:
.L_0066:
cmp dword ptr [ebp-12], 0
jne .L_0073
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 1048576
test ebx, ebx
je .L_0075
push 0
push 1
push 0
push 39
call ERRREPORTWARN
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call SYMBDELFROMHASH
add esp, 16
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDCONST
add esp, 32
mov dword ptr [ebp-8], eax
jmp .L_0074
.L_0075:
mov dword ptr [ebp-8], 0
.L_0074:
jmp .L_0072
.L_0073:
mov eax, dword ptr [ebp-8]
and dword ptr [eax+12], -1048577
.L_0072:
.L_0063:
.L_0062:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0061:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBREUSEORADDCONST, .-SYMBREUSEORADDCONST
.cfi_endproc
.balign 16

.globl SYMBALLOCFLOATCONST
SYMBALLOCFLOATCONST:
.type SYMBALLOCFLOATCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0084:
sub esp, 8
push dword ptr [ebp+16]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFLOATTOHEX
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HALLOCINTORFLOATCONST
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBALLOCFLOATCONST, .-SYMBALLOCFLOATCONST
.cfi_endproc
.balign 16

.globl SYMBALLOCINTCONST
SYMBALLOCINTCONST:
.type SYMBALLOCINTCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0087:
sub esp, 12
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_008A
mov dword ptr [ebp-20], 24
jmp .L_008E
.L_008A:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-20], eax
.L_008E:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .L_008D
sub esp, 12
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_008C
.L_008D:
sub esp, 12
push 0
push -1
sub esp, 4
push 8
mov eax, dword ptr [ebp+8]
push eax
call fb_HEXEx_i
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_008C:
sub esp, 8
push dword ptr [ebp+16]
lea eax, [ebp-16]
push eax
call HALLOCINTORFLOATCONST
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBALLOCINTCONST, .-SYMBALLOCINTCONST
.cfi_endproc
.balign 16

.globl SYMBALLOCSTRCONST
SYMBALLOCSTRCONST:
.type SYMBALLOCSTRCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .L_0093
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.L_0093:
.L_0092:
cmp dword ptr [ebp-12], 122
jg .L_0095
sub esp, 12
push 0
push 7
push offset Lt_0096
push 134
push offset Lt_009A
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push 134
push offset Lt_009A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push 134
push offset Lt_009A
call fb_StrAssign
add esp, 32
jmp .L_0094
.L_0095:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 134
push offset Lt_009A
call fb_StrAssign
add esp, 32
.L_0094:
sub esp, 12
push 0
push -1
push 1
push offset Lt_009A
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0099
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0090
.L_0099:
.L_0098:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 134
push offset Lt_009B
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
inc eax
mov dword ptr [ebp-16], eax
sub esp, 8
push 137
push 3073
push offset Lt_009C
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 4
push offset Lt_009B
push offset Lt_009A
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-12]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBALLOCSTRCONST, .-SYMBALLOCSTRCONST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_009A,134
.balign 4
	.lcomm	Lt_009B,134
.balign 4
	.lcomm	Lt_009D,16

.section .data
.balign 4
Lt_009C:
.int Lt_009D
.int Lt_009D
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBALLOCWSTRCONST
SYMBALLOCWSTRCONST:
.type SYMBALLOCWSTRCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_009E:
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .L_00A2
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.L_00A2:
.L_00A1:
mov eax, dword ptr [ebp-12]
sal eax, 4
cmp eax, 122
jg .L_00A4
sub esp, 12
push 0
push 7
push offset Lt_00A5
push 134
push offset Lt_00A9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call HESCAPEW
add esp, 16
push eax
push 134
push offset Lt_00A9
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push 134
push offset Lt_00A9
call fb_StrAssign
add esp, 32
jmp .L_00A3
.L_00A4:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 134
push offset Lt_00A9
call fb_StrAssign
add esp, 32
.L_00A3:
sub esp, 12
push 0
push -1
push 1
push offset Lt_00A9
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_00A8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_009F
.L_00A8:
.L_00A7:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 134
push offset Lt_00AA
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-16], eax
sub esp, 8
push 137
push 3073
push offset Lt_00AB
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 7
push offset Lt_00AA
push offset Lt_00A9
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
sub esp, 4
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call fb_WstrAssign
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_009F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBALLOCWSTRCONST, .-SYMBALLOCWSTRCONST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00A9,134
.balign 4
	.lcomm	Lt_00AA,134
.balign 4
	.lcomm	Lt_00AC,16

.section .data
.balign 4
Lt_00AB:
.int Lt_00AC
.int Lt_00AC
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBDELCONST
SYMBDELCONST:
.type SYMBDELCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AD:
cmp dword ptr [ebp+8], 0
jne .L_00B0
jmp .L_00AE
.L_00B0:
.L_00AF:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.L_00AE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELCONST, .-SYMBDELCONST
.cfi_endproc
.balign 16

.globl SYMBGETCONSTVALUEASSTR
SYMBGETCONSTVALUEASSTR:
.type SYMBGETCONSTVALUEASSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
je .L_00B6
.L_00B7:
cmp dword ptr [ebp-16], 18
je .L_00B6
.L_00B8:
cmp dword ptr [ebp-16], 4
jne .L_00B5
.L_00B6:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+56]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00B3
.L_00B5:
cmp dword ptr [ebp-16], 16
jne .L_00B9
.L_00BA:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_DoubleToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00B3
.L_00B9:
cmp dword ptr [ebp-16], 15
jne .L_00BB
.L_00BC:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+56]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00B3
.L_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .L_00BE
mov dword ptr [ebp-20], 24
jmp .L_00C2
.L_00BE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00C2:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_00C1
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00C0
.L_00C1:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_ULongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00C0:
.L_00BD:
.L_00B3:
.L_00B2:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETCONSTVALUEASSTR, .-SYMBGETCONSTVALUEASSTR
.cfi_endproc
.balign 16

.globl SYMBCLONECONST
SYMBCLONECONST:
.type SYMBCLONECONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C3:
sub esp, 12
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
call SYMBADDCONST
add esp, 32
mov dword ptr [ebp-4], eax
.L_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBCLONECONST, .-SYMBCLONECONST
.cfi_endproc
.balign 16

.globl SYMBGETCONSTSTRASSTR
SYMBGETCONSTSTRASSTR:
.type SYMBGETCONSTSTRASSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00C5:
sub esp, 8
push 0
push offset Lt_00E0
call DZSTRASSIGN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_00C8
mov dword ptr [ebp-8], 0
sub esp, 8
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push dword ptr [ebp-12]
call fb_StrLen
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp eax, ebx
je .L_00CA
sub esp, 8
push offset Lt_00CD
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_00CF
.L_00D2:
sub esp, 8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 4
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 2
mov ebx, dword ptr [ebp-12]
add ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
push eax
call fb_HEXEx_i
add esp, 16
push eax
push 3
push offset Lt_00D3
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-44]
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.L_00D0:
inc dword ptr [ebp-16]
.L_00CF:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00D2
.L_00D1:
jmp .L_00C9
.L_00CA:
sub esp, 8
push offset Lt_00D7
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
.L_00C9:
sub esp, 8
push offset Lt_00CC
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
jmp .L_00C7
.L_00C8:
mov dword ptr [ebp-8], 0
sub esp, 8
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_00CD
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_00D9
.L_00DC:
sub esp, 8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 4
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 4
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp-12]
add ebx, eax
push dword ptr [ebx]
call fb_HEXEx_i
add esp, 16
push eax
push 3
push offset Lt_00DD
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-44]
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.L_00DA:
inc dword ptr [ebp-16]
.L_00D9:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00DC
.L_00DB:
sub esp, 8
push offset Lt_00CC
push offset Lt_00E0
call DZSTRCONCATASSIGN
add esp, 16
.L_00C7:
mov eax, dword ptr [Lt_00E0]
mov dword ptr [ebp-4], eax
.L_00C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETCONSTSTRASSTR, .-SYMBGETCONSTSTRASSTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00E0,12

.section .text
.balign 16

.globl SYMBGETCONSTSTRASWSTR
SYMBGETCONSTSTRASWSTR:
.type SYMBGETCONSTSTRASWSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
sub esp, 8
push 0
push offset Lt_00FA
call DWSTRASSIGN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .L_00E4
mov dword ptr [ebp-8], 0
sub esp, 8
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPEW
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrLen
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp eax, ebx
je .L_00E6
sub esp, 8
push offset Lt_00E7
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_00E9
.L_00EC:
sub esp, 8
sub esp, 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 4
mov ebx, dword ptr [ebp-16]
sal ebx, 2
mov eax, dword ptr [ebp-12]
add eax, ebx
push dword ptr [eax]
call fb_HEXEx_i
add esp, 16
push eax
push 3
push offset Lt_00DD
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call fb_StrToWstr
add esp, 8
mov dword ptr [ebp-48], eax
push dword ptr [ebp-48]
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-48]
call fb_WstrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.L_00EA:
inc dword ptr [ebp-16]
.L_00E9:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00EC
.L_00EB:
jmp .L_00E5
.L_00E6:
sub esp, 8
push offset Lt_00F0
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
.L_00E5:
sub esp, 8
push offset Lt_00F1
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
jmp .L_00E3
.L_00E4:
mov dword ptr [ebp-8], 0
sub esp, 8
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_00E7
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_00F3
.L_00F6:
sub esp, 8
sub esp, 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 4
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
push ebx
call fb_HEXEx_i
add esp, 16
push eax
push 3
push offset Lt_00DD
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call fb_StrToWstr
add esp, 8
mov dword ptr [ebp-48], eax
push dword ptr [ebp-48]
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-48]
call fb_WstrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.L_00F4:
inc dword ptr [ebp-16]
.L_00F3:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00F6
.L_00F5:
sub esp, 8
push offset Lt_00F1
push offset Lt_00FA
call DWSTRCONCATASSIGN
add esp, 16
.L_00E3:
mov eax, dword ptr [Lt_00FA]
mov dword ptr [ebp-4], eax
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBGETCONSTSTRASWSTR, .-SYMBGETCONSTSTRASWSTR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00FA,12

.section .text
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
HALLOCINTORFLOATCONST:
.type HALLOCINTORFLOATCONST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_007D:
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
sub esp, 12
push 0
push 7
push offset Lt_0080
push 134
push offset Lt_00FB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push 134
push offset Lt_00FB
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push 134
push offset Lt_00FB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push 1
push offset Lt_00FB
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
je .L_0083
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
jmp .L_007E
.L_0083:
.L_0082:
sub esp, 8
push 137
push 3073
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
sub esp, 4
push 0
call SYMBUNIQUEID
add esp, 8
push eax
push offset Lt_00FB
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-72], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebx+56], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-72]
push dword ptr [eax+56]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
.L_007E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HALLOCINTORFLOATCONST, .-HALLOCINTORFLOATCONST
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_00FB,134
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0080:	.ascii	"{fbnc}\0"
.balign 4
Lt_0089:	.ascii	"0x\0"
.balign 4
Lt_0096:	.ascii	"{fbsc}\0"
.balign 4
Lt_00A5:	.ascii	"{fbwc}\0"
.balign 4
Lt_00CC:	.ascii	"\"\0"
.balign 4
Lt_00CD:	.ascii	"!\"\0"
.balign 4
Lt_00D3:	.ascii	"\\x\0"
.balign 4
Lt_00D7:	.ascii	"$\"\0"
.balign 4
Lt_00DD:	.ascii	"\\u\0"
.balign 4
Lt_00E7:	.ascii	"\41\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_00F0:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_00F1:	.ascii	"\42\0\0\0\0\0\0\0"
