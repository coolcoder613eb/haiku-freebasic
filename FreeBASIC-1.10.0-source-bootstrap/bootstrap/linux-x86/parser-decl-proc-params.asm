	.intel_syntax noprefix

.section .text
.balign 16

.globl CPARAMETERS
CPARAMETERS:
.type CPARAMETERS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0066:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_0069
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
mov eax, dword ptr [ENV+296]
mov ebx, eax
sar ebx, 31
add dword ptr [ebp-8], eax
adc dword ptr [ebp-4], ebx
.L_0069:
.L_0068:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .L_006B
jmp .L_0067
.L_006B:
.L_006A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .L_006D
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_0067
.L_006D:
.L_006C:
.L_006E:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HPARAMDECL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0072
jmp .L_006F
.L_0072:
.L_0071:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-8], ecx
adc dword ptr [ebp-4], ebx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+56], 4
jne .L_0074
jmp .L_006F
.L_0074:
.L_0073:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_0076
jmp .L_006F
.L_0076:
.L_0075:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0070:
jmp .L_006E
.L_006F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0078
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0077
.L_0078:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_0077:
mov eax, dword ptr [ENV+296]
sal eax, 6
mov ebx, eax
mov ecx, ebx
sar ecx, 31
cmp dword ptr [ebp-4], ecx
jl .L_007A
jg .L_007B
cmp dword ptr [ebp-8], ebx
jbe .L_007A
.L_007B:
push 0
push 1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 18
call ERRREPORTWARN
add esp, 16
.L_007A:
.L_0079:
.L_0067:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CPARAMETERS, .-CPARAMETERS
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
.balign 16
HPARAMERROR:
.type HPARAMERROR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_007C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
.L_007D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARAMERROR, .-HPARAMERROR
.cfi_endproc
.balign 16
HPARAMWARNING:
.type HPARAMWARNING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_007E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call ERRREPORTPARAMWARN
add esp, 16
.L_007F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARAMWARNING, .-HPARAMWARNING
.cfi_endproc
.balign 16
HOPTIONALEXPR:
.type HOPTIONALEXPR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 1
je .L_0083
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 2
je .L_0085
jmp .L_0081
.L_0085:
.L_0084:
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_0089
.L_008A:
cmp dword ptr [ebp-16], 23
jne .L_0088
.L_0089:
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
push -1
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0081
.L_0088:
.L_0086:
push 0
push -2147483648
push 1
push dword ptr [ebp+16]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_008C
jmp .L_0081
.L_008C:
.L_008B:
sub esp, 12
push dword ptr [ebp-8]
call ASTFORGETBITFIELDS
add esp, 16
sub esp, 8
push 12288
push dword ptr [ebp-8]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .L_008E
push 0
push 272
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-8], 0
.L_008E:
.L_008D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HOPTIONALEXPR, .-HOPTIONALEXPR
.cfi_endproc
.balign 16
HMOCKPARAM:
.type HMOCKPARAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_008F:
cmp dword ptr [ebp+12], -1
jne .L_0092
mov eax, dword ptr [ENV+1080]
mov dword ptr [ebp+12], eax
.L_0092:
.L_0091:
cmp dword ptr [ebp+12], 4
jne .L_0094
mov dword ptr [ebp-8], -2147483648
jmp .L_0093
.L_0094:
mov dword ptr [ebp-8], 8
.L_0093:
push 0
push 0
push dword ptr [ebp+12]
cmp dword ptr [ebp+12], 3
jne .L_0095
mov dword ptr [ebp-12], -1
jmp .L_010C
.L_0095:
mov dword ptr [ebp-12], 0
.L_010C:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMOCKPARAM, .-HMOCKPARAM
.cfi_endproc
.balign 16
HPARAMDECL:
.type HPARAMDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0097:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_009C
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_009E
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .L_00A0
push 1
push 59
push offset Lt_00A1
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
jmp .L_009F
.L_00A0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_009F:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00A3
push 1
push 313
push offset Lt_00A1
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_00A3:
.L_00A2:
cmp dword ptr [ebp+12], 3
je .L_00A5
push 1
push 312
push offset Lt_00A1
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_00A5:
.L_00A4:
push 0
push 0
push 4
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
jmp .L_0098
jmp .L_009D
.L_009E:
push 1
push 59
push offset Lt_00A1
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_009D:
.L_009C:
.L_009B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 319
jne .L_00A8
.L_00A9:
mov dword ptr [ebp-16], 1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_00A6
.L_00A8:
cmp dword ptr [ebp-60], 320
jne .L_00AA
.L_00AB:
mov dword ptr [ebp-16], 2
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .L_00A6
.L_00AA:
mov dword ptr [ebp-16], -1
.L_00AC:
.L_00A6:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_00AF
.L_00B0:
mov dword ptr [ebp-28], -1
jmp .L_00AD
.L_00AF:
cmp dword ptr [ebp-60], 1
je .L_00B2
.L_00B3:
cmp dword ptr [ebp-60], 2
jne .L_00B1
.L_00B2:
cmp dword ptr [ebp+16], 0
jne .L_00B5
push 1
push 59
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_00B5:
.L_00B4:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .L_00AD
.L_00B1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_00B8
push 1
push 59
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_00B8:
.L_00B7:
mov dword ptr [ebp-28], 0
.L_00B6:
.L_00AD:
cmp dword ptr [Lt_0114], 8
jl .L_00BA
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0098
.L_00BA:
.L_00B9:
mov eax, dword ptr [Lt_0114]
imul eax, 129
lea ebx, [Lt_0115+eax]
mov dword ptr [ebp-8], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-28], 0
je .L_00BC
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4120]
mov dword ptr [ebp-32], eax
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_00BB
.L_00BC:
mov dword ptr [ebp-12], -2147483648
.L_00BB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_00BE
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-16], -1
je .L_00C0
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.L_00C0:
.L_00BF:
mov dword ptr [ebp-16], 3
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .L_00C2
mov dword ptr [ebp-24], -1
jmp .L_00C1
.L_00C2:
sub esp, 4
push offset Lt_0116
lea eax, [ebp-44]
push eax
lea eax, [ebp-24]
push eax
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-44], 0
je .L_00C4
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.L_00C4:
.L_00C3:
.L_00C1:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .L_00C6
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.L_00C6:
.L_00C5:
.L_00BE:
.L_00BD:
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-16], -1
jne .L_00C8
mov eax, dword ptr [ENV+1080]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ENV+200]
and eax, 2
test eax, eax
je .L_00CA
push 1
push 15
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMWARNING
add esp, 16
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
mov dword ptr [ebp-36], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .L_00CC
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-12], -2147483648
je .L_00CE
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
jmp .L_0098
.L_00CE:
.L_00CD:
inc dword ptr [Lt_0114]
mov dword ptr [ebp-60], 1
cmp dword ptr [ebp-16], 2
jne .L_00D0
cmp dword ptr [ebp+16], 0
je .L_00D2
or dword ptr [ebp-60], 2
.L_00D2:
.L_00D1:
and dword ptr [ebp-60], -2
or dword ptr [ebp-60], 4
.L_00D0:
.L_00CF:
sub esp, 12
push dword ptr [ebp-60]
mov dword ptr [ebp-72], 0
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-68]
push eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-12]
push eax
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .L_00D6
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov dword ptr [ebp-12], 8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-36], -1
.L_00D6:
.L_00D5:
cmp dword ptr [ebp-16], 1
jne .L_00D8
sub esp, 8
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.L_00D8:
.L_00D7:
dec dword ptr [Lt_0114]
jmp .L_00CB
.L_00CC:
mov eax, dword ptr [ENV+1040]
and eax, 4194304
test eax, eax
jne .L_00DA
sub esp, 4
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 16
mov dword ptr [ebp-36], -1
jmp .L_00D9
.L_00DA:
cmp dword ptr [ebp-28], 0
jne .L_00DC
push 1
push 59
push 0
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov dword ptr [ebp-36], -1
.L_00DC:
.L_00DB:
.L_00D9:
mov dword ptr [ebp-48], 0
or dword ptr [ebp-20], 1048576
.L_00CB:
cmp dword ptr [ENV+136], 0
jne .L_00DE
cmp dword ptr [ebp-40], 0
je .L_00E0
sub esp, 8
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call SYMBGETDEFAULTPARAMMODE
add esp, 16
mov dword ptr [ebp-16], eax
.L_00E0:
.L_00DF:
.L_00DE:
.L_00DD:
cmp dword ptr [ebp-12], -2147483648
jne .L_00E2
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-12], eax
.L_00E2:
.L_00E1:
cmp dword ptr [ebp-36], 0
je .L_00E4
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_00E4:
.L_00E3:
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00E5
mov dword ptr [ebp-60], 24
jmp .L_010D
.L_00E5:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-60], eax
.L_010D:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
jmp .L_00E8
.L_00EA:
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_00EB
mov dword ptr [ebp-68], 24
jmp .L_010E
.L_00EB:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-68], eax
.L_010E:
mov eax, dword ptr [ebp-68]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-72]
je .L_00EE
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_00EE:
.L_00ED:
jmp .L_00E7
.L_00EF:
cmp dword ptr [ebp+16], 0
jne .L_00F1
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .L_00F0
.L_00F1:
cmp dword ptr [ebp-16], 1
jne .L_00F3
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.L_00F3:
.L_00F2:
.L_00F0:
jmp .L_00E7
.L_00F4:
cmp dword ptr [ebp+16], 0
jne .L_00F6
cmp dword ptr [ebp-32], 0
jle .L_00F8
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.L_00F8:
.L_00F7:
.L_00F6:
.L_00F5:
jmp .L_00E7
.L_00E8:
cmp dword ptr [ebp-64], 20
ja .L_00E7
mov eax, dword ptr [ebp-64]
jmp dword ptr [.L_00F9+eax*4]
.L_00F9:
.int .L_00EF
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00EA
.int .L_00E7
.int .L_00E7
.int .L_00EA
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00E7
.int .L_00EA
.int .L_00E7
.int .L_00F4
.L_00E7:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-48]
push dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .L_00FA
mov dword ptr [ebp-56], 0
jmp .L_0110
.L_00FA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-56], eax
.L_0110:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_00FD
jmp .L_0098
.L_00FD:
.L_00FC:
cmp dword ptr [ebp+16], 0
jne .L_00FF
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [ENV+296]
sal ebx, 2
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jl .L_0101
jg .L_0119
cmp dword ptr [eax+40], esi
jbe .L_0101
.L_0119:
mov esi, dword ptr [ENV+200]
and esi, 4
test esi, esi
je .L_0103
push 0
push 17
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMWARNING
add esp, 16
.L_0103:
.L_0102:
.L_0101:
.L_0100:
.L_00FF:
.L_00FE:
call CASSIGNTOKEN
test eax, eax
je .L_0105
cmp dword ptr [ebp-16], 3
jne .L_0107
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .L_0109
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-52]
or dword ptr [eax+12], 2048
jmp .L_0108
.L_0109:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_0108:
jmp .L_0106
.L_0107:
sub esp, 4
push dword ptr [ebp-52]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HOPTIONALEXPR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_010B
sub esp, 4
push dword ptr [ebp-60]
push dword ptr [ebp-52]
push dword ptr [ebp+8]
call SYMBMAKEPARAMOPTIONAL
add esp, 16
jmp .L_010A
.L_010B:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.L_010A:
.L_0106:
.L_0105:
.L_0104:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.L_0098:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARAMDECL, .-HPARAMDECL
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0115,1032

.section .data
.balign 4
Lt_0114:
.int 0

.section .bss
.balign 4
	.lcomm	Lt_011A,64

.section .data
.balign 4
Lt_0116:
.int Lt_011A
.int Lt_011A
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_00A1:	.ascii	"...\0"
