	.intel_syntax noprefix

.section .text
.balign 16

.globl PPDEFINEINIT
PPDEFINEINIT:
.type PPDEFINEINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0066:
push 6
push 388
push 8
lea eax, [PP+176]
push eax
call LISTINIT
add esp, 16
.L_0067:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPDEFINEINIT, .-PPDEFINEINIT
.cfi_endproc
.balign 16

.globl PPDEFINEEND
PPDEFINEEND:
.type PPDEFINEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0068:
sub esp, 12
lea eax, [PP+176]
push eax
call LISTEND
add esp, 16
.L_0069:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPDEFINEEND, .-PPDEFINEEND
.cfi_endproc
.balign 16

.globl PPDEFINELOAD
PPDEFINELOAD:
.type PPDEFINELOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01D1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_01D4
sub esp, 4
push 0
push 0
push 89
call ERRREPORT
add esp, 16
push 0
push 62
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_01D2
.L_01D4:
.L_01D3:
cmp dword ptr [ENV+576], 0
jne .L_01D6
sub esp, 12
push dword ptr [ebp+8]
call HLOADDEFINE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_01D5
.L_01D6:
sub esp, 12
push dword ptr [ebp+8]
call HLOADDEFINEW
add esp, 16
mov dword ptr [ebp-4], eax
.L_01D5:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jle .L_01D8
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16580], 0
jne .L_01DA
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+16580], ebx
.L_01DA:
.L_01D9:
.L_01D8:
.L_01D7:
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16556], 4294967295
.L_01D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPDEFINELOAD, .-PPDEFINELOAD
.cfi_endproc
.balign 16

.globl PPDEFINE
PPDEFINE:
.type PPDEFINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0249:
sub esp, 8
push 38
lea eax, [ebp-32]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .L_024C
and dword ptr [ebp-12], -5
.L_024C:
.L_024B:
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_027C
call LEXEATTOKEN
add esp, 16
sub esp, 12
push offset Lt_027C
call HISVALIDSYMBOLNAME
add esp, 16
test eax, eax
jne .L_024E
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .L_024A
.L_024E:
.L_024D:
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_0250
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.L_0250:
.L_024F:
cmp dword ptr [ebp-28], 0
je .L_0252
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .L_0254
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .L_0256
push 0
push 1
push 0
push 39
call ERRREPORTWARN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call SYMBDELFROMHASH
add esp, 16
mov dword ptr [ebp-24], 0
jmp .L_0255
.L_0256:
sub esp, 12
push 0
push 1
push 0
push offset Lt_027C
push 4
call ERRREPORTEX
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_027C
call fb_StrAssign
add esp, 32
.L_0255:
.L_0254:
.L_0253:
jmp .L_0251
.L_0252:
mov dword ptr [ebp-24], 0
.L_0251:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .L_0258
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 63
jne .L_025A
sub esp, 12
push 2
call LEXSKIPTOKEN
add esp, 16
and dword ptr [ebp-40], -9
.L_025A:
.L_0259:
.L_0258:
.L_0257:
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .L_025C
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_025E
mov dword ptr [ebp-20], 0
.L_025F:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0263
.L_0265:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0262
.L_0266:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 8
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_0262
.L_0263:
cmp dword ptr [ebp-44], 2
ja .L_0266
mov eax, dword ptr [ebp-44]
jmp dword ptr [.L_0267+eax*4]
.L_0267:
.int .L_0265
.int .L_0265
.int .L_0265
.L_0262:
cmp dword ptr [ebp-20], 0
jne .L_0269
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
.L_0269:
.L_0268:
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .L_026B
sub esp, 4
push 0
push 0
push 79
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_024A
.L_026B:
.L_026A:
cmp dword ptr [ebp-16], 0
jne .L_026D
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_026D:
.L_026C:
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .L_026F
jmp .L_0260
.L_026F:
.L_026E:
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
.L_0261:
jmp .L_025F
.L_0260:
call HMATCHPARAMELLIPSIS
test eax, eax
je .L_0271
or dword ptr [ebp-40], 4
.L_0271:
.L_0270:
jmp .L_025D
.L_025E:
mov dword ptr [ebp-8], -1
.L_025D:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .L_0273
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0272
.L_0273:
sub esp, 12
push 58
call LEXSKIPTOKEN
add esp, 16
.L_0272:
jmp .L_025B
.L_025C:
cmp dword ptr [ebp+8], 0
jne .L_0275
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
cmp eax, 32
jne .L_0277
sub esp, 12
push 58
call LEXSKIPTOKEN
add esp, 16
.L_0277:
.L_0276:
.L_0275:
.L_0274:
.L_025B:
cmp dword ptr [ebp-4], 0
jne .L_0279
sub esp, 12
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset Lt_027C
push dword ptr [ebp-24]
call HREADDEFINETEXT
add esp, 32
jmp .L_024A
.L_0279:
.L_0278:
cmp dword ptr [ebp-24], 0
je .L_027B
sub esp, 12
push 0
push 1
push 0
push offset Lt_027C
push 4
call ERRREPORTEX
add esp, 32
jmp .L_027A
.L_027B:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HREADMACROTEXT
add esp, 16
mov dword ptr [ebp-36], eax
sub esp, 12
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset Lt_027C
call SYMBADDDEFINEMACRO
add esp, 32
.L_027A:
.L_024A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PPDEFINE, .-PPDEFINE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_027C,129

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
HREPORTMACROERROR:
.type HREPORTMACROERROR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_006A:
sub esp, 12
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 12
push offset Lt_006C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_006B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREPORTMACROERROR, .-HREPORTMACROERROR
.cfi_endproc
.balign 16
ISMACROALLOWED:
.type ISMACROALLOWED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_006F:
cmp dword ptr [PP+212], 0
jne .L_0072
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .L_0074
cmp dword ptr [ENV+104], 1
jne .L_0076
sub esp, 4
push 0
push 0
push 286
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_0070
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
.L_0071:
mov dword ptr [ebp-4], -1
.L_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ISMACROALLOWED, .-ISMACROALLOWED
.cfi_endproc
.balign 16
HLOADMACRO:
.type HLOADMACRO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4224
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4180], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-4184], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_007A
mov dword ptr [ebp-4180], -1
.L_007A:
.L_0079:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_007C
cmp dword ptr [ebp-4180], 0
jne .L_007E
jmp .L_0078
.L_007E:
.L_007D:
jmp .L_007B
.L_007C:
mov ebx, dword ptr [ebp-4184]
not ebx
and dword ptr [ebp-4180], ebx
.L_007B:
sub esp, 12
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 16
test eax, eax
jne .L_0080
jmp .L_0078
.L_0080:
.L_007F:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4180], 0
je .L_0082
call LEXEATCHAR
.L_0082:
.L_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0084
sub esp, 12
lea ebx, [PP+176]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4156], eax
jmp .L_0083
.L_0084:
mov dword ptr [ebp-4156], 0
.L_0083:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4168], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4172], ebx
mov dword ptr [ebp-4188], -1
mov dword ptr [ebp-4164], 0
cmp dword ptr [ebp-4156], 0
je .L_0086
mov ebx, dword ptr [ebp-4156]
mov dword ptr [ebx+384], 0
.L_0086:
.L_0085:
.L_0087:
cmp dword ptr [ebp-4156], 0
je .L_008B
sub esp, 12
mov ebx, dword ptr [ebp-4164]
imul ebx, 12
mov eax, dword ptr [ebp-4156]
add eax, ebx
lea ebx, [eax]
push ebx
call DZSTRZERO
add esp, 16
.L_008B:
.L_008A:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008D
mov eax, dword ptr [ebp-4172]
mov dword ptr [ebp-4168], eax
.L_008D:
.L_008C:
.L_008E:
sub esp, 8
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 16
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4192], eax
jmp .L_0092
.L_0094:
inc dword ptr [ebp-4160]
jmp .L_0091
.L_0095:
cmp dword ptr [ebp-4160], 0
jle .L_0097
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .L_0099
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_009B
cmp dword ptr [ebp-4180], 0
jne .L_009D
mov ebx, dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_009F
cmp dword ptr [PP+216], 1
jle .L_00A1
mov dword ptr [ebp-4188], 41
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
.L_009A:
jmp .L_008F
.L_0099:
.L_0098:
.L_0097:
.L_0096:
jmp .L_0091
.L_00A2:
cmp dword ptr [ebp-4160], 1
jne .L_00A4
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_00A6
cmp dword ptr [ebp-4172], 0
jne .L_00A8
cmp dword ptr [ebp-4180], 0
jne .L_00AA
mov ebx, dword ptr [ebp-4156]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_00AC
cmp dword ptr [PP+216], 1
jle .L_00AE
mov dword ptr [ebp-4188], 44
.L_00AE:
.L_00AD:
mov dword ptr [ebp-4160], 0
jmp .L_008F
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
.L_00A5:
cmp dword ptr [ebp-4156], 0
je .L_00B0
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_00B2
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_00B2:
.L_00B1:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.L_00B0:
.L_00AF:
cmp dword ptr [ebp-4168], 0
jne .L_00B4
jmp .L_008F
.L_00B4:
.L_00B3:
.L_00A4:
.L_00A3:
jmp .L_0091
.L_00B5:
mov eax, dword ptr [ebp-4180]
not eax
test eax, eax
je .L_00B7
mov dword ptr [ebp-4188], 58
mov dword ptr [ebp-4160], 0
jmp .L_008F
.L_00B7:
.L_00B6:
jmp .L_0091
.L_00B8:
cmp dword ptr [ebp-4180], 0
je .L_00BA
sub esp, 8
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
jmp .L_00B9
.L_00BA:
cmp dword ptr [ebp-4152], 256
jne .L_00BB
mov dword ptr [ebp-4196], 0
jmp .L_027D
.L_00BB:
mov dword ptr [ebp-4196], 10
.L_027D:
mov eax, dword ptr [ebp-4196]
mov dword ptr [ebp-4188], eax
.L_00B9:
mov dword ptr [ebp-4160], 0
jmp .L_008F
jmp .L_0091
.L_00BD:
jmp .L_0091
.L_00BE:
cmp dword ptr [ebp-4156], 0
je .L_00C0
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_00C2
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-4192]
add eax, 4294967287
cmp eax, 249
ja .L_00BE
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.L_00C3+eax*4-36]
.L_00C3:
.int .L_00BD
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BD
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_0094
.int .L_0095
.int .L_00BE
.int .L_00BE
.int .L_00A2
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00BE
.int .L_00B8
.int .L_00B8
.int .L_00B5
.L_0091:
cmp dword ptr [ebp-4156], 0
je .L_00C5
cmp dword ptr [ebp-4144], 7
je .L_00C7
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DZSTRCONCATASSIGN
add esp, 16
jmp .L_00C6
.L_00C7:
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DZSTRCONCATASSIGNW
add esp, 16
.L_00C6:
.L_00C5:
.L_00C4:
.L_0090:
jmp .L_008E
.L_008F:
cmp dword ptr [ebp-4156], 0
je .L_00C9
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4192], eax
mov eax, dword ptr [ebp-4192]
cmp dword ptr [eax], 0
je .L_00CC
mov eax, dword ptr [ebp-4192]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4192]
sub esp, 8
push 0
mov ecx, dword ptr [ebp-4192]
push dword ptr [ecx]
mov esi, eax
call fb_StrLen
add esp, 16
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_00CE
sub esp, 8
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
sub esp, 4
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-4192]
push dword ptr [eax]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4204]
mov eax, dword ptr [ebp-4192]
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea esi, [ebp-4204]
push esi
call fb_StrDelete
add esp, 16
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CB:
.L_00C9:
.L_00C8:
cmp dword ptr [ebp-4160], 0
jne .L_00D1
cmp dword ptr [ebp-12], 0
je .L_00D3
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4172]
not esi
or eax, esi
je .L_00D5
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.L_00D5:
.L_00D4:
.L_00D6:
inc dword ptr [ebp-4164]
sub esp, 12
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRZERO
add esp, 16
.L_00D8:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4164], eax
jl .L_00D6
.L_00D7:
.L_00D3:
.L_00D2:
jmp .L_0088
.L_00D1:
.L_00D0:
cmp dword ptr [ebp-12], 0
jne .L_00DA
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0088
.L_00DA:
.L_00D9:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4164]
.L_0089:
jmp .L_0087
.L_0088:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_0282
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_00DC
mov dword ptr [ebp-4192], 0
sub esp, 12
push 0
push -1
sub esp, 4
lea eax, [ebp-4192]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-4192], 0
jne .L_00DE
sub esp, 12
push 0
push -1
lea eax, [ebp-4204]
push eax
push -1
push offset Lt_0282
call fb_StrAssign
add esp, 32
jmp .L_00DD
.L_00DE:
sub esp, 8
push dword ptr [ebp-4192]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.L_00DD:
sub esp, 12
lea eax, [ebp-4204]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00DB
.L_00DC:
cmp dword ptr [ebp-4156], 0
je .L_00E0
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_00E1:
cmp dword ptr [ebp-16], 0
je .L_00E2
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4192], eax
jmp .L_00E4
.L_00E6:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .L_00E8
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-4176]
push -1
push offset Lt_0282
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea esi, [ebp-4204]
push esi
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0282
call fb_StrAssign
add esp, 32
.L_00E8:
.L_00E7:
jmp .L_00E3
.L_00EA:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .L_00EC
sub esp, 12
push 0
push 3
push offset Lt_00EF
push -1
push offset Lt_0282
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_00F0
push offset Lt_00EE
push dword ptr [ebp-4176]
call HREPLACE
add esp, 12
push eax
push -1
push offset Lt_0282
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
push offset Lt_0282
call fb_StrConcatAssign
add esp, 32
jmp .L_00EB
.L_00EC:
sub esp, 12
push 0
push 3
push offset Lt_00F0
push -1
push offset Lt_0282
call fb_StrConcatAssign
add esp, 32
.L_00EB:
jmp .L_00E3
.L_00F1:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset Lt_0282
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea eax, [ebp-4204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0282
call fb_StrAssign
add esp, 32
jmp .L_00E3
.L_00F3:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call fb_WstrToStr
add esp, 16
push eax
push -1
push offset Lt_0282
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
lea eax, [ebp-4204]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0282
call fb_StrAssign
add esp, 32
jmp .L_00E3
.L_00E4:
cmp dword ptr [ebp-4192], 3
ja .L_00E3
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.L_00F5+eax*4]
.L_00F5:
.int .L_00E6
.int .L_00EA
.int .L_00F1
.int .L_00F3
.L_00E3:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_00E1
.L_00E2:
.L_00F6:
cmp dword ptr [ebp-4164], 0
jle .L_00F7
dec dword ptr [ebp-4164]
sub esp, 8
push 0
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 16
jmp .L_00F6
.L_00F7:
sub esp, 8
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 16
.L_00E0:
.L_00DF:
cmp dword ptr [ebp-4188], -1
je .L_00F9
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-4188]
push 1
call fb_CHR
add esp, 12
push eax
push -1
push offset Lt_0282
call fb_StrConcatAssign
add esp, 32
.L_00F9:
.L_00F8:
.L_00DB:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_00FB
sub esp, 8
push dword ptr [Lt_0282]
mov eax, dword ptr [LEX+840072]
lea esi, [eax+16600]
push esi
call DZSTRASSIGN
add esp, 16
jmp .L_00FA
.L_00FB:
sub esp, 8
mov dword ptr [ebp-4212], 0
mov dword ptr [ebp-4208], 0
mov dword ptr [ebp-4204], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov esi, dword ptr [LEX+840072]
push dword ptr [esi+16596]
push -1
push offset Lt_0282
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
lea esi, [ebp-4200]
push esi
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-4212]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4212]
mov eax, dword ptr [LEX+840072]
lea esi, [eax+16600]
push esi
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea esi, [ebp-4212]
push esi
call fb_StrDelete
add esp, 16
.L_00FA:
dec dword ptr [PP+216]
sub esp, 8
push -1
push offset Lt_0282
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.L_0078:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADMACRO, .-HLOADMACRO
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0282,12

.section .text
.balign 16
HLOADDEFINE:
.type HLOADDEFINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00FE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_0101
sub esp, 12
push dword ptr [ebp+8]
call HLOADMACRO
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0103
jmp .L_00FF
.L_0103:
.L_0102:
jmp .L_0100
.L_0101:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_0105
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_0107
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_00EF
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0283
call fb_StrAssign
add esp, 32
jmp .L_0106
.L_0107:
sub esp, 12
push 0
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
push offset Lt_0283
call fb_StrAssign
add esp, 32
.L_0106:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_010B
sub esp, 8
push dword ptr [Lt_0283]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
jmp .L_010A
.L_010B:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [LEX+840072]
push dword ptr [ebx+16596]
push -1
push offset Lt_0283
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 16
.L_010A:
sub esp, 8
push -1
push offset Lt_0283
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0104
.L_0105:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_010F
mov dword ptr [ebp-12], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_0111
mov dword ptr [ebp-12], -1
.L_0111:
.L_0110:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_0113
cmp dword ptr [ebp-12], 0
jne .L_0115
jmp .L_00FF
.L_0115:
.L_0114:
jmp .L_0112
.L_0113:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_0112:
cmp dword ptr [ebp-12], 0
je .L_0117
call LEXEATCHAR
call LEXEATWHITESPACE
call LEXCURRENTCHAR
cmp eax, 41
je .L_0119
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .L_0118
.L_0119:
call LEXEATCHAR
.L_0118:
.L_0117:
.L_0116:
.L_010F:
.L_010E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_011B
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16592], 0
jne .L_011D
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16600]
push eax
call DZSTRASSIGN
add esp, 16
jmp .L_011C
.L_011D:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16596]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 16
.L_011C:
jmp .L_011A
.L_011B:
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16592], 0
jne .L_0121
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16600]
push eax
call DZSTRASSIGNW
add esp, 16
jmp .L_0120
.L_0121:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16596]
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrToStr
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 16
.L_0120:
.L_011A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_0104:
.L_0100:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16600]
mov dword ptr [ebx+16596], ecx
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+16592], ebx
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16556], 4294967295
mov dword ptr [ebp-4], -1
.L_00FF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADDEFINE, .-HLOADDEFINE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0283,12

.section .text
.balign 16
HLOADMACROW:
.type HLOADMACROW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4208
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0124:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4184], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-4188], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_0127
mov dword ptr [ebp-4184], -1
.L_0127:
.L_0126:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_0129
cmp dword ptr [ebp-4184], 0
jne .L_012B
jmp .L_0125
.L_012B:
.L_012A:
jmp .L_0128
.L_0129:
mov ebx, dword ptr [ebp-4188]
not ebx
and dword ptr [ebp-4184], ebx
.L_0128:
sub esp, 12
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 16
test eax, eax
jne .L_012D
jmp .L_0125
.L_012D:
.L_012C:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4184], 0
je .L_012F
call LEXEATCHAR
.L_012F:
.L_012E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0131
sub esp, 12
lea ebx, [PP+176]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4156], eax
jmp .L_0130
.L_0131:
mov dword ptr [ebp-4156], 0
.L_0130:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4172], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4176], ebx
mov dword ptr [ebp-4192], -1
mov dword ptr [ebp-4168], 0
cmp dword ptr [ebp-4156], 0
je .L_0133
mov ebx, dword ptr [ebp-4156]
mov dword ptr [ebx+384], 0
.L_0133:
.L_0132:
.L_0134:
cmp dword ptr [ebp-4156], 0
je .L_0138
sub esp, 12
mov ebx, dword ptr [ebp-4168]
imul ebx, 12
mov eax, dword ptr [ebp-4156]
add eax, ebx
lea ebx, [eax]
push ebx
call DWSTRZERO
add esp, 16
.L_0138:
.L_0137:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_013A
mov eax, dword ptr [ebp-4176]
mov dword ptr [ebp-4172], eax
.L_013A:
.L_0139:
.L_013B:
sub esp, 8
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 16
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4196], eax
jmp .L_013F
.L_0141:
inc dword ptr [ebp-4160]
jmp .L_013E
.L_0142:
cmp dword ptr [ebp-4160], 0
jle .L_0144
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .L_0146
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_0148
cmp dword ptr [ebp-4184], 0
jne .L_014A
mov ebx, dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_014C
cmp dword ptr [PP+216], 1
jle .L_014E
mov dword ptr [ebp-4192], 41
.L_014E:
.L_014D:
.L_014C:
.L_014B:
.L_014A:
.L_0149:
.L_0148:
.L_0147:
jmp .L_013C
.L_0146:
.L_0145:
.L_0144:
.L_0143:
jmp .L_013E
.L_014F:
cmp dword ptr [ebp-4160], 1
jne .L_0151
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_0153
cmp dword ptr [ebp-4176], 0
jne .L_0155
cmp dword ptr [ebp-4184], 0
jne .L_0157
mov ebx, dword ptr [ebp-4156]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_0159
cmp dword ptr [PP+216], 1
jle .L_015B
mov dword ptr [ebp-4192], 44
.L_015B:
.L_015A:
mov dword ptr [ebp-4160], 0
jmp .L_013C
.L_0159:
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
.L_0152:
cmp dword ptr [ebp-4156], 0
je .L_015D
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_015F
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_015F:
.L_015E:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.L_015D:
.L_015C:
cmp dword ptr [ebp-4172], 0
jne .L_0161
jmp .L_013C
.L_0161:
.L_0160:
.L_0151:
.L_0150:
jmp .L_013E
.L_0162:
mov eax, dword ptr [ebp-4184]
not eax
test eax, eax
je .L_0164
mov dword ptr [ebp-4192], 58
mov dword ptr [ebp-4160], 0
jmp .L_013C
.L_0164:
.L_0163:
jmp .L_013E
.L_0165:
cmp dword ptr [ebp-4184], 0
je .L_0167
sub esp, 8
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
jmp .L_0166
.L_0167:
cmp dword ptr [ebp-4152], 256
jne .L_0168
mov dword ptr [ebp-4200], 0
jmp .L_0284
.L_0168:
mov dword ptr [ebp-4200], 10
.L_0284:
mov eax, dword ptr [ebp-4200]
mov dword ptr [ebp-4192], eax
.L_0166:
mov dword ptr [ebp-4160], 0
jmp .L_013C
jmp .L_013E
.L_016A:
jmp .L_013E
.L_016B:
cmp dword ptr [ebp-4156], 0
je .L_016D
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .L_016F
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.L_016F:
.L_016E:
.L_016D:
.L_016C:
jmp .L_013E
.L_013F:
mov eax, dword ptr [ebp-4196]
add eax, 4294967287
cmp eax, 249
ja .L_016B
mov eax, dword ptr [ebp-4196]
jmp dword ptr [.L_0170+eax*4-36]
.L_0170:
.int .L_016A
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016A
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_0141
.int .L_0142
.int .L_016B
.int .L_016B
.int .L_014F
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_016B
.int .L_0165
.int .L_0165
.int .L_0162
.L_013E:
cmp dword ptr [ebp-4156], 0
je .L_0172
cmp dword ptr [ebp-4144], 7
je .L_0174
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DWSTRCONCATASSIGNA
add esp, 16
jmp .L_0173
.L_0174:
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
push eax
call DWSTRCONCATASSIGN
add esp, 16
.L_0173:
.L_0172:
.L_0171:
.L_013D:
jmp .L_013B
.L_013C:
cmp dword ptr [ebp-4156], 0
je .L_0176
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ebx, dword ptr [ebp-4156]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4196], eax
mov eax, dword ptr [ebp-4196]
cmp dword ptr [eax], 0
je .L_0179
mov eax, dword ptr [ebp-4196]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4196]
sub esp, 12
mov ecx, dword ptr [ebp-4196]
push dword ptr [ecx]
mov esi, eax
call fb_WstrLen
add esp, 16
sal eax, 2
mov ecx, dword ptr [ebx]
add ecx, eax
cmp dword ptr [ecx-4], 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_017B
sub esp, 8
sub esp, 4
mov eax, dword ptr [ebp-4196]
push dword ptr [eax]
call fb_WstrTrim
add esp, 8
mov dword ptr [ebp-4200], eax
push dword ptr [ebp-4200]
mov eax, dword ptr [ebp-4196]
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-4200]
call fb_WstrDelete
add esp, 16
.L_017B:
.L_017A:
.L_0179:
.L_0178:
.L_0176:
.L_0175:
cmp dword ptr [ebp-4160], 0
jne .L_017E
cmp dword ptr [ebp-12], 0
je .L_0180
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4176]
not esi
or eax, esi
je .L_0182
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.L_0182:
.L_0181:
.L_0183:
inc dword ptr [ebp-4168]
sub esp, 12
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRZERO
add esp, 16
.L_0185:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4168], eax
jl .L_0183
.L_0184:
.L_0180:
.L_017F:
jmp .L_0135
.L_017E:
.L_017D:
cmp dword ptr [ebp-12], 0
jne .L_0187
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .L_0135
.L_0187:
.L_0186:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4168]
.L_0136:
jmp .L_0134
.L_0135:
sub esp, 8
push 0
push offset Lt_0289
call DWSTRASSIGN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_0189
mov dword ptr [ebp-4196], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .L_018B
sub esp, 8
lea eax, [ebp-4196]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
add esp, 16
mov dword ptr [ebp-4200], eax
cmp dword ptr [ebp-4196], 0
jne .L_018D
sub esp, 8
push dword ptr [ebp-4200]
push offset Lt_0289
call DWSTRASSIGN
add esp, 16
jmp .L_018C
.L_018D:
sub esp, 8
push dword ptr [ebp-4196]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.L_018C:
jmp .L_018A
.L_018B:
sub esp, 12
push 0
push -1
sub esp, 4
lea eax, [ebp-4196]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-4208]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-4196], 0
jne .L_018F
sub esp, 8
push dword ptr [ebp-4208]
push offset Lt_0289
call DWSTRASSIGNA
add esp, 16
jmp .L_018E
.L_018F:
sub esp, 8
push dword ptr [ebp-4196]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.L_018E:
sub esp, 12
lea eax, [ebp-4208]
push eax
call fb_StrDelete
add esp, 16
.L_018A:
jmp .L_0188
.L_0189:
cmp dword ptr [ebp-4156], 0
je .L_0191
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_0192:
cmp dword ptr [ebp-16], 0
je .L_0193
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4196], eax
jmp .L_0195
.L_0197:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4180], esi
cmp dword ptr [ebp-4180], 0
je .L_0199
sub esp, 8
push dword ptr [ebp-4180]
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
.L_0199:
.L_0198:
jmp .L_0194
.L_019A:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-4156]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-4180], eax
cmp dword ptr [ebp-4180], 0
je .L_019C
sub esp, 8
push offset Lt_019D
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
sub esp, 12
push offset Lt_019F
push offset Lt_019E
push dword ptr [ebp-4180]
call HREPLACEW
add esp, 24
push eax
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push offset Lt_019E
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
jmp .L_019B
.L_019C:
sub esp, 8
push offset Lt_019F
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
.L_019B:
jmp .L_0194
.L_01A0:
sub esp, 8
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_0289
call DWSTRCONCATASSIGNA
add esp, 16
jmp .L_0194
.L_01A1:
sub esp, 8
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_0289
call DWSTRCONCATASSIGN
add esp, 16
jmp .L_0194
.L_0195:
cmp dword ptr [ebp-4196], 3
ja .L_0194
mov eax, dword ptr [ebp-4196]
jmp dword ptr [.L_01A2+eax*4]
.L_01A2:
.int .L_0197
.int .L_019A
.int .L_01A0
.int .L_01A1
.L_0194:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_0192
.L_0193:
.L_01A3:
cmp dword ptr [ebp-4168], 0
jle .L_01A4
dec dword ptr [ebp-4168]
sub esp, 8
push 0
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 16
jmp .L_01A3
.L_01A4:
sub esp, 8
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 16
.L_0191:
.L_0190:
.L_0188:
cmp dword ptr [ebp-4192], -1
je .L_01A6
sub esp, 8
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
sub esp, 4
push 0
push -1
sub esp, 4
push dword ptr [ebp-4192]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4204]
push offset Lt_0289
call DWSTRCONCATASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-4204]
push eax
call fb_StrDelete
add esp, 16
.L_01A6:
.L_01A5:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_01A9
sub esp, 8
push dword ptr [Lt_0289]
mov eax, dword ptr [LEX+840072]
lea esi, [eax+16600]
push esi
call DWSTRASSIGN
add esp, 16
jmp .L_01A8
.L_01A9:
sub esp, 8
mov esi, dword ptr [LEX+840072]
push dword ptr [esi+16596]
push dword ptr [Lt_0289]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-4196], eax
push dword ptr [ebp-4196]
mov eax, dword ptr [LEX+840072]
lea esi, [eax+16600]
push esi
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-4196]
call fb_WstrDelete
add esp, 16
.L_01A8:
dec dword ptr [PP+216]
sub esp, 12
push dword ptr [Lt_0289]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
.L_0125:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADMACROW, .-HLOADMACROW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0289,12

.section .text
.balign 16
HLOADDEFINEW:
.type HLOADDEFINEW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_01AB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_01AE
sub esp, 12
push dword ptr [ebp+8]
call HLOADMACROW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_01B0
jmp .L_01AC
.L_01B0:
.L_01AF:
jmp .L_01AD
.L_01AE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01B2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_01B4
sub esp, 8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_00EF
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
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
push offset Lt_028A
call DWSTRASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01B3
.L_01B4:
sub esp, 8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 4
push 0
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-20]
push offset Lt_028A
call DWSTRASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_01B3:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_01BA
sub esp, 8
push dword ptr [Lt_028A]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 16
jmp .L_01B9
.L_01BA:
sub esp, 8
mov ebx, dword ptr [LEX+840072]
push dword ptr [ebx+16596]
push dword ptr [Lt_028A]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.L_01B9:
sub esp, 12
push dword ptr [Lt_028A]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_01B1
.L_01B2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_01BD
mov dword ptr [ebp-12], 0
call LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call LEXCURRENTCHAR
cmp eax, 40
jne .L_01BF
mov dword ptr [ebp-12], -1
.L_01BF:
.L_01BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_01C1
cmp dword ptr [ebp-12], 0
jne .L_01C3
jmp .L_01AC
.L_01C3:
.L_01C2:
jmp .L_01C0
.L_01C1:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_01C0:
cmp dword ptr [ebp-12], 0
je .L_01C5
call LEXEATCHAR
call LEXEATWHITESPACE
call LEXCURRENTCHAR
cmp eax, 41
je .L_01C7
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .L_01C6
.L_01C7:
call LEXEATCHAR
.L_01C6:
.L_01C5:
.L_01C4:
.L_01BD:
.L_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_01C9
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16592], 0
jne .L_01CB
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16600]
push eax
call DWSTRASSIGNA
add esp, 16
jmp .L_01CA
.L_01CB:
sub esp, 8
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16596]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.L_01CA:
jmp .L_01C8
.L_01C9:
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16592], 0
jne .L_01CF
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16600]
push eax
call DWSTRASSIGN
add esp, 16
jmp .L_01CE
.L_01CF:
sub esp, 8
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16596]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.L_01CE:
.L_01C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_01B1:
.L_01AD:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16600]
mov dword ptr [ebx+16596], ecx
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+16592], ebx
mov dword ptr [ebp-4], -1
.L_01AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADDEFINEW, .-HLOADDEFINEW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_028A,12

.section .text
.balign 16
HRTRIMMACROTEXT:
.type HRTRIMMACROTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01DB:
.L_01DD:
cmp dword ptr [ebp+12], 0
je .L_01DE
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .L_01E0
jmp .L_01DE
.L_01E0:
.L_01DF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_01E2
.L_01E4:
sub esp, 12
push dword ptr [ebp+12]
call SYMBDELDEFINETOK
add esp, 16
mov dword ptr [ebp+12], eax
jmp .L_01E1
.L_01E5:
jmp .L_01DE
jmp .L_01E1
.L_01E2:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .L_01E5
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_01E6+eax*4-36]
.L_01E6:
.int .L_01E4
.int .L_01E4
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E5
.int .L_01E4
.L_01E1:
jmp .L_01DD
.L_01DE:
cmp dword ptr [ebp+12], 0
jne .L_01E8
mov dword ptr [ebp-4], 0
jmp .L_01E7
.L_01E8:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_01E7:
.L_01DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRTRIMMACROTEXT, .-HRTRIMMACROTEXT
.cfi_endproc
.balign 16
HREADMACROTEXT:
.type HREADMACROTEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01E9:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.L_01EB:
mov dword ptr [ebp-20], 0
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_01EF
.L_01F1:
cmp dword ptr [ebp+16], 0
je .L_01F3
sub esp, 4
push 0
push 0
push 134
call ERRREPORT
add esp, 16
.L_01F3:
.L_01F2:
jmp .L_01EC
jmp .L_01EE
.L_01F4:
cmp dword ptr [ebp+16], 0
jne .L_01F6
jmp .L_01EC
.L_01F6:
.L_01F5:
cmp dword ptr [ebp-16], 0
je .L_01F8
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_01F9
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.L_01F8:
.L_01F7:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_01ED
jmp .L_01EE
.L_01FA:
cmp dword ptr [ebp+16], 0
jne .L_01FC
jmp .L_01EC
.L_01FC:
.L_01FB:
.L_01FD:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .L_0203
.L_0204:
cmp dword ptr [ebp-32], 256
jne .L_0202
.L_0203:
jmp .L_01FE
.L_0202:
.L_0200:
.L_01FF:
jmp .L_01FD
.L_01FE:
jmp .L_01ED
jmp .L_01EE
.L_0205:
sub esp, 8
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .L_0208
.L_0209:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 63
call LEXSKIPTOKEN
add esp, 16
jmp .L_01ED
jmp .L_0206
.L_0208:
cmp dword ptr [ebp-32], 274
jne .L_020A
.L_020B:
cmp dword ptr [ebp+16], 0
je .L_020D
inc dword ptr [ebp-24]
.L_020D:
.L_020C:
jmp .L_0206
.L_020A:
cmp dword ptr [ebp-32], 275
jne .L_020E
.L_020F:
cmp dword ptr [ebp+16], 0
je .L_0211
cmp dword ptr [ebp-24], 0
jne .L_0213
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HRTRIMMACROTEXT
add esp, 16
mov dword ptr [ebp-16], eax
jmp .L_01EC
.L_0213:
.L_0212:
dec dword ptr [ebp-24]
.L_0211:
.L_0210:
jmp .L_0206
.L_020E:
cmp dword ptr [ebp-32], 265
jne .L_0214
.L_0215:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-20], -1
.L_0214:
.L_0206:
jmp .L_01EE
.L_0216:
cmp dword ptr [ebp-16], 0
je .L_0218
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_0219
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.L_0218:
.L_0217:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_01ED
jmp .L_01EE
.L_01EF:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .L_01EE
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_021A+ebx*4-36]
.L_021A:
.int .L_0216
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_0216
.int .L_01EE
.int .L_01EE
.int .L_0205
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01EE
.int .L_01F1
.int .L_01F4
.int .L_01EE
.int .L_01FA
.int .L_01FA
.L_01EE:
sub esp, 12
push 62
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_021C
.L_021E:
cmp dword ptr [ENV+576], 0
jne .L_0220
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0222
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0222:
.L_0221:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
jmp .L_021F
.L_0220:
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0224
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0224:
.L_0223:
sub esp, 8
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call WSTRASSIGN
add esp, 16
.L_021F:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_021B
.L_0225:
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0227
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0227:
.L_0226:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push 129
push offset Lt_028B
call fb_StrAssign
add esp, 32
sub esp, 8
push offset Lt_028B
lea eax, [SYMB+98768]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0229
cmp dword ptr [ebp-20], 0
jne .L_022B
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .L_022A
.L_022B:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.L_022A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .L_0228
.L_0229:
cmp dword ptr [ebp-20], 0
je .L_022D
sub esp, 8
push offset Lt_022E
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call ZSTRASSIGN
add esp, 16
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRCONCATASSIGN
add esp, 16
jmp .L_022C
.L_022D:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.L_022C:
.L_0228:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_021B
.L_022F:
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0231
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0231:
.L_0230:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .L_021B
.L_021C:
cmp dword ptr [ebp-28], 4
ja .L_022F
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.L_0232+ebx*4]
.L_0232:
.int .L_0225
.int .L_0225
.int .L_0225
.int .L_022F
.int .L_021E
.L_021B:
.L_01ED:
jmp .L_01EB
.L_01EC:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_01EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADMACROTEXT, .-HREADMACROTEXT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_028B,129

.section .text
.balign 16
HREADDEFINETEXT:
.type HREADDEFINETEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0233:
cmp dword ptr [ENV+576], 0
jne .L_0236
sub esp, 12
push dword ptr [ebp+20]
call PPREADLITERAL
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_0238
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_023A
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .L_0239
.L_023A:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call fb_StrCompare
add esp, 16
test eax, eax
je .L_023B
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
.L_023B:
.L_0239:
jmp .L_0237
.L_0238:
sub esp, 8
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
sub esp, 4
push 0
push dword ptr [ebp-4]
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call SYMBADDDEFINE
add esp, 32
.L_0237:
jmp .L_0235
.L_0236:
sub esp, 12
push dword ptr [ebp+20]
call PPREADLITERALW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_023D
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .L_023F
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .L_023E
.L_023F:
sub esp, 8
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call fb_WstrCompare
add esp, 16
test eax, eax
je .L_0240
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
.L_0240:
.L_023E:
jmp .L_023C
.L_023D:
sub esp, 8
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
sub esp, 8
push dword ptr [ebp-8]
call fb_WstrLen
add esp, 12
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call SYMBADDDEFINEW
add esp, 32
.L_023C:
.L_0235:
.L_0234:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADDEFINETEXT, .-HREADDEFINETEXT
.cfi_endproc
.balign 16
HMATCHPARAMELLIPSIS:
.type HMATCHPARAMELLIPSIS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0241:
mov dword ptr [ebp-4], 0
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_0244
sub esp, 8
push 34
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_0246
sub esp, 8
push 34
push 2
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .L_0248
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
.L_0248:
.L_0247:
.L_0246:
.L_0245:
.L_0244:
.L_0243:
.L_0242:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMATCHPARAMELLIPSIS, .-HMATCHPARAMELLIPSIS
.cfi_endproc

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
Lt_006C:	.ascii	"expanding: \0"
.balign 4
Lt_00EE:	.ascii	"\"\0"
.balign 4
Lt_00EF:	.ascii	"$\"\0"
.balign 4
Lt_00F0:	.ascii	"\"\"\0"
.balign 4
Lt_019D:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_019E:	.ascii	"\42\0\0\0\0\0\0\0"
.balign 4
Lt_019F:	.ascii	"\42\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_01F9:	.ascii	"\n\0"
.balign 4
Lt_0219:	.ascii	" \0"
.balign 4
Lt_022E:	.ascii	"#\0"
