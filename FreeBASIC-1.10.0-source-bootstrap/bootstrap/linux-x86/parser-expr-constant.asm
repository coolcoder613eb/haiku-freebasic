	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTANT
CCONSTANT:
.type CCONSTANT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0066:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .L_0069
sub esp, 4
push 0
push 0
push 202
call ERRREPORT
add esp, 16
.L_0069:
.L_0068:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDCONST
add esp, 16
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CCONSTANT, .-CCONSTANT
.cfi_endproc
.balign 16

.globl CSTRLITERAL
CSTRLITERAL:
.type CSTRLITERAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_006A:
mov dword ptr [ebp-28], 0
.L_006C:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4112]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_0070
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 263
jne .L_0072
sub esp, 4
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call HREESCAPE
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0071
.L_0072:
call LEXGETTEXT
mov dword ptr [ebp-20], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
je .L_0074
mov ebx, dword ptr [ENV+200]
and ebx, 1
test ebx, ebx
je .L_0076
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 264
je .L_0078
sub esp, 12
push dword ptr [ebp-20]
call HHASESCAPE
add esp, 16
test eax, eax
je .L_007A
push 0
push 6
push dword ptr [ebp-20]
push 16
call ERRREPORTWARN
add esp, 16
.L_007A:
.L_0079:
.L_0078:
.L_0077:
.L_0076:
.L_0075:
.L_0074:
.L_0073:
mov dword ptr [ebp-16], 0
.L_0071:
cmp dword ptr [ebp-16], 0
jne .L_007C
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call SYMBALLOCSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_007B
.L_007C:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call SYMBALLOCWSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 16
.L_007B:
jmp .L_006F
.L_0070:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 263
jne .L_007F
sub esp, 8
lea eax, [ebp-12]
push eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
call HREESCAPEW
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_007E
.L_007F:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
je .L_0081
mov ebx, dword ptr [ENV+200]
and ebx, 1
test ebx, ebx
je .L_0083
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 264
je .L_0085
sub esp, 12
push dword ptr [ebp-24]
call HHASESCAPEW
add esp, 16
test eax, eax
je .L_0087
push 0
push 1
push 0
push 16
call ERRREPORTWARN
add esp, 16
.L_0087:
.L_0086:
.L_0085:
.L_0084:
.L_0083:
.L_0082:
.L_0081:
.L_0080:
.L_007E:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
.L_006F:
cmp dword ptr [ebp-28], 0
jne .L_0089
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-28], eax
jmp .L_0088
.L_0089:
sub esp, 12
push 1
push 0
sub esp, 8
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 28
push eax
push dword ptr [ebp-28]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-28], eax
.L_0088:
cmp dword ptr [ebp+8], 0
je .L_008B
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .L_008D
jmp .L_006D
.L_008D:
.L_008C:
jmp .L_008A
.L_008B:
jmp .L_006D
.L_008A:
.L_006E:
jmp .L_006C
.L_006D:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.L_006B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CSTRLITERAL, .-CSTRLITERAL
.cfi_endproc
.balign 16

.globl CNUMLITERAL
CNUMLITERAL:
.type CNUMLITERAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_008E:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 16
jne .L_0091
.L_0092:
sub esp, 4
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 8
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0090
.L_0091:
cmp dword ptr [ebp-8], 15
jne .L_0093
.L_0094:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 16
fstp dword ptr [ebp-12]
sub esp, 4
push dword ptr [ebp-8]
fld dword ptr [ebp-12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0090
.L_0093:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0096
mov dword ptr [ebp-12], 24
jmp .L_009C
.L_0096:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.L_009C:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .L_0099
push 0
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALLNG
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_0099:
push 0
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALULNG
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.L_0098:
.L_0095:
.L_0090:
cmp dword ptr [ebp+8], 0
je .L_009B
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_009B:
.L_009A:
.L_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CNUMLITERAL, .-CNUMLITERAL
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
