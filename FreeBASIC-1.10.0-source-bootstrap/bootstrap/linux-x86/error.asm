	.intel_syntax noprefix

.section .text
.balign 16

.globl ERRPREINIT
ERRPREINIT:
.type ERRPREINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01E1:
mov dword ptr [ERRCTX+8], 0
.L_01E2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRPREINIT, .-ERRPREINIT
.cfi_endproc
.balign 16

.globl ERRINIT
ERRINIT:
.type ERRINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01E3:
inc dword ptr [ERRCTX]
mov dword ptr [ERRCTX+4], 0
mov dword ptr [ERRCTX+8], 0
mov dword ptr [ERRCTX+12], -1
mov dword ptr [ERRCTX+16], -1
sub esp, 4
push -1
push 64
lea eax, [ERRCTX+20]
push eax
call HASHINIT
add esp, 16
push -1
push 16
push 4
lea eax, [ERRCTX+32]
push eax
call LISTINIT
add esp, 16
.L_01E4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRINIT, .-ERRINIT
.cfi_endproc
.balign 16

.globl ERREND
ERREND:
.type ERREND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01E5:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [ERRCTX+20]
push eax
call HASHEND
add esp, 16
dec dword ptr [ERRCTX]
.L_01E6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERREND, .-ERREND
.cfi_endproc
.balign 16

.globl ERRHIDEFURTHERERRORS
ERRHIDEFURTHERERRORS:
.type ERRHIDEFURTHERERRORS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01E7:
mov dword ptr [ERRCTX+8], -1
.L_01E8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRHIDEFURTHERERRORS, .-ERRHIDEFURTHERERRORS
.cfi_endproc
.balign 16

.globl ERRGETCOUNT
ERRGETCOUNT:
.type ERRGETCOUNT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01E9:
mov eax, dword ptr [ERRCTX+4]
mov dword ptr [ebp-4], eax
.L_01EA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRGETCOUNT, .-ERRGETCOUNT
.cfi_endproc
.balign 16

.globl ERRPUSHPARAMLOCATION
ERRPUSHPARAMLOCATION:
.type ERRPUSHPARAMLOCATION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01EB:
cmp dword ptr [ebp+8], 0
je .L_01EE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_01F0
cmp dword ptr [ebp+16], 1
jle .L_01F2
dec dword ptr [ebp+16]
.L_01F2:
.L_01F1:
.L_01F0:
.L_01EF:
.L_01EE:
.L_01ED:
sub esp, 12
lea ebx, [ERRCTX+32]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
.L_01EC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRPUSHPARAMLOCATION, .-ERRPUSHPARAMLOCATION
.cfi_endproc
.balign 16

.globl ERRPOPPARAMLOCATION
ERRPOPPARAMLOCATION:
.type ERRPOPPARAMLOCATION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01F3:
sub esp, 8
sub esp, 4
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 8
push eax
lea eax, [ERRCTX+32]
push eax
call LISTDELNODE
add esp, 16
.L_01F4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRPOPPARAMLOCATION, .-ERRPOPPARAMLOCATION
.cfi_endproc
.balign 16

.globl ERRREPORTEX
ERRREPORTEX:
.type ERRREPORTEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0224:
cmp dword ptr [ERRCTX+8], 0
je .L_0227
jmp .L_0225
.L_0227:
.L_0226:
cmp dword ptr [ERRCTX], 0
jle .L_0229
sub esp, 12
push dword ptr [ebp+12]
call HMAKEPARAMDESC
add esp, 16
mov dword ptr [ebp+12], eax
.L_0229:
.L_0228:
cmp dword ptr [ebp+16], 0
jne .L_022B
mov eax, dword ptr [ERRCTX+16]
cmp dword ptr [PARSER+28], eax
jne .L_022D
jmp .L_0225
.L_022D:
.L_022C:
cmp dword ptr [LEX+840072], 0
je .L_022F
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ebp+16], ebx
.L_022F:
.L_022E:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ERRCTX+12], ebx
mov ebx, dword ptr [PARSER+28]
mov dword ptr [ERRCTX+16], ebx
.L_022B:
.L_022A:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ENV+192]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPRINTERRMSG
add esp, 32
inc dword ptr [ERRCTX+4]
mov ebx, dword ptr [ENV+196]
cmp dword ptr [ERRCTX+4], ebx
jl .L_0231
sub esp, 8
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
push 133
call HPRINTERRMSG
add esp, 32
call ERRHIDEFURTHERERRORS
.L_0231:
.L_0230:
.L_0225:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTEX, .-ERRREPORTEX
.cfi_endproc
.balign 16

.globl ERRREPORT
ERRREPORT:
.type ERRREPORT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0245:
call ERRHAVEPARAMLOCATION
test eax, eax
je .L_0248
mov dword ptr [ebp-4], 0
jmp .L_0247
.L_0248:
sub esp, 4
push 0
push 0
push dword ptr [ebp+12]
call HADDTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
.L_0247:
sub esp, 12
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
.L_0246:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORT, .-ERRREPORT
.cfi_endproc
.balign 16

.globl ERRREPORTWARNEX
ERRREPORTWARNEX:
.type ERRREPORTWARNEX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0249:
mov eax, dword ptr [ebp+8]
cmp eax, 1
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 50
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_024C
jmp .L_024A
.L_024C:
.L_024B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+188]
cmp dword ptr [WARNINGMSGS+ebx*8-8], eax
jge .L_024E
jmp .L_024A
.L_024E:
.L_024D:
cmp dword ptr [ERRCTX+8], 0
je .L_0250
jmp .L_024A
.L_0250:
.L_024F:
mov eax, dword ptr [ENV+200]
and eax, 512
test eax, eax
je .L_0252
inc dword ptr [ERRCTX+4]
.L_0252:
.L_0251:
cmp dword ptr [ERRCTX], 0
jle .L_0254
sub esp, 12
push dword ptr [ebp+12]
call HMAKEPARAMDESC
add esp, 16
mov dword ptr [ebp+12], eax
.L_0254:
.L_0253:
sub esp, 8
push 261
lea eax, [ENV+304]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0256
sub esp, 4
push 0
sub esp, 4
lea eax, [ENV+304]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0255
.L_0256:
cmp dword ptr [ebp+12], 0
je .L_0258
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov dword ptr [ebp+12], 0
.L_0258:
.L_0257:
.L_0255:
cmp dword ptr [ebp+16], 0
jle .L_025A
sub esp, 4
push 0
sub esp, 4
push 2
push offset Lt_025B
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 16
push eax
push 2
push offset Lt_01FF
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0259
.L_025A:
sub esp, 4
push 0
push 2
push offset Lt_025E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0259:
mov eax, dword ptr [ENV+200]
and eax, 512
test eax, eax
je .L_0260
sub esp, 4
push 0
push 6
push offset Lt_0261
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0260:
.L_025F:
sub esp, 4
push 0
sub esp, 4
push 4
push offset Lt_0263
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [WARNINGMSGS+eax*8-8]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_01FF
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0262
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [WARNINGMSGS+eax*8-4]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+24], 0
je .L_0269
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+24]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0269:
.L_0268:
cmp dword ptr [ebp+12], 0
je .L_026B
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_026D
sub esp, 4
push 0
push 2
push offset Lt_0213
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_026C
.L_026D:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .L_026E
sub esp, 4
push 0
push 2
push offset Lt_0207
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_026C
.L_026E:
sub esp, 4
push 0
push 1
push offset Lt_0206
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_026C:
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_0270
sub esp, 4
push 0
push 1
push offset Lt_0217
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0270:
.L_026F:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_0272
sub esp, 4
push 0
push 1
push offset Lt_0217
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0272:
.L_0271:
.L_026B:
.L_026A:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.L_024A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTWARNEX, .-ERRREPORTWARNEX
.cfi_endproc
.balign 16

.globl ERRREPORTWARN
ERRREPORTWARN:
.type ERRREPORTWARN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0275:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTWARNEX
add esp, 32
.L_0276:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTWARN, .-ERRREPORTWARN
.cfi_endproc
.balign 16

.globl ERRREPORTNOTALLOWED
ERRREPORTNOTALLOWED:
.type ERRREPORTNOTALLOWED, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0283:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call GETNOTALLOWEDMSG
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0284:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTNOTALLOWED, .-ERRREPORTNOTALLOWED
.cfi_endproc
.balign 16

.globl ERRREPORTPARAM
ERRREPORTPARAM:
.type ERRREPORTPARAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02C0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call ERRPUSHPARAMLOCATION
add esp, 16
sub esp, 12
push 0
push 1
push 0
push 0
push dword ptr [ebp+20]
call ERRREPORTEX
add esp, 32
call ERRPOPPARAMLOCATION
.L_02C1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTPARAM, .-ERRREPORTPARAM
.cfi_endproc
.balign 16

.globl ERRREPORTPARAMWARN
ERRREPORTPARAMWARN:
.type ERRREPORTPARAMWARN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02C2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 1
push 0
push dword ptr [ebp+20]
call ERRREPORTWARN
add esp, 16
call ERRPOPPARAMLOCATION
.L_02C3:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTPARAMWARN, .-ERRREPORTPARAMWARN
.cfi_endproc
.balign 16

.globl ERRREPORTUNDEF
ERRREPORTUNDEF:
.type ERRREPORTUNDEF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02C4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+12]
call HASHHASH
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+12]
lea eax, [ERRCTX+20]
push eax
call HASHLOOKUPEX
add esp, 16
test eax, eax
je .L_02C7
jmp .L_02C5
.L_02C7:
.L_02C6:
mov dword ptr [ebp-8], 0
sub esp, 8
push dword ptr [ebp+12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGN
add esp, 16
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push dword ptr [ebp-8]
lea eax, [ERRCTX+20]
push eax
call HASHADD
add esp, 16
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
.L_02C5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRREPORTUNDEF, .-ERRREPORTUNDEF
.cfi_endproc
.balign 16
fb_ctor__error:
.type fb_ctor__error, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0002:
.L_0003:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size fb_ctor__error, .-fb_ctor__error
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
ERRHAVEPARAMLOCATION:
.type ERRHAVEPARAMLOCATION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F5:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_01F6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size ERRHAVEPARAMLOCATION, .-ERRHAVEPARAMLOCATION
.cfi_endproc
.balign 16
HPRINTERRMSG:
.type HPRINTERRMSG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_01F7:
mov eax, dword ptr [ebp+8]
cmp eax, 1
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 329
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01FA
mov dword ptr [Lt_02CB], 0
jmp .L_01F9
.L_01FA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ERRORMSGS+ebx*4-4]
mov dword ptr [Lt_02CB], eax
.L_01F9:
cmp dword ptr [ebp+12], 0
jne .L_01FC
mov eax, offset Lt_0000
mov dword ptr [ebp+12], eax
.L_01FC:
.L_01FB:
sub esp, 8
push 261
lea eax, [ENV+304]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_01FE
sub esp, 4
push 0
sub esp, 4
lea eax, [ENV+304]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
push 1
push offset Lt_01FF
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+20], 0
jle .L_0201
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0201:
.L_0200:
sub esp, 4
push 0
push 2
push offset Lt_0202
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_01FE:
.L_01FD:
sub esp, 4
push 0
push 5
push offset Lt_0203
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
jl .L_0205
sub esp, 4
push 0
sub esp, 4
push 0
push dword ptr [Lt_02CB]
push -1
sub esp, 4
push 3
push offset Lt_0207
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 2
push offset Lt_0206
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+28], 0
je .L_020C
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+28]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_020C:
.L_020B:
cmp dword ptr [ebp+24], 0
je .L_020E
mov eax, dword ptr [ebp+20]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp+24], eax
.L_020E:
.L_020D:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0210
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_0212
sub esp, 4
push 0
push 2
push offset Lt_0213
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0211
.L_0212:
mov eax, dword ptr [ebp+16]
and eax, 2
test eax, eax
je .L_0214
sub esp, 4
push 0
push 2
push offset Lt_0207
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0211
.L_0214:
sub esp, 4
push 0
push 1
push offset Lt_0206
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0211:
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .L_0216
sub esp, 4
push 0
push 1
push offset Lt_0217
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0216:
.L_0215:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .L_0219
sub esp, 4
push 0
push 1
push offset Lt_0217
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0219:
.L_0218:
.L_0210:
.L_020F:
cmp dword ptr [ebp+24], 0
je .L_021B
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ENV+1040]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push offset Lt_02CE
call LEXPEEKCURRENTLINE
add esp, 12
push eax
push -1
push offset Lt_02CF
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push offset Lt_02CF
call fb_StrLen
add esp, 16
test eax, eax
jle .L_021D
mov eax, dword ptr [ENV+1040]
and eax, 256
test eax, eax
je .L_021F
sub esp, 4
push 1
sub esp, 4
push 2
push offset Lt_0221
push -1
sub esp, 4
push -1
push offset Lt_02CF
push 6
push offset Lt_0220
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_021E
.L_021F:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
sub esp, 4
push 1
push 0
push offset Lt_02CE
call LEXPEEKCURRENTLINE
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push offset Lt_02CE
push 0
call fb_PrintString
add esp, 16
.L_021E:
jmp .L_021C
.L_021D:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.L_021C:
jmp .L_021A
.L_021B:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.L_021A:
jmp .L_0204
.L_0205:
sub esp, 4
push 0
push 2
push offset Lt_0207
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0204:
.L_01F8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRINTERRMSG, .-HPRINTERRMSG
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02CB,4
.balign 4
	.lcomm	Lt_02CE,12
.balign 4
	.lcomm	Lt_02CF,12

.section .text
.balign 16
HADDTOKEN:
.type HADDTOKEN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0232:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02D0
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+16], 0
jne .L_0235
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push -1
push offset Lt_02D1
call fb_StrAssign
add esp, 32
jmp .L_0234
.L_0235:
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push -1
push offset Lt_02D1
call fb_StrAssign
add esp, 32
.L_0234:
sub esp, 8
push -1
push offset Lt_02D1
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0237
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 32
jle .L_023B
.L_023C:
cmp dword ptr [ebp-8], 257
je .L_023B
.L_023D:
cmp dword ptr [ebp-8], 256
jne .L_023A
.L_023B:
jmp .L_0238
.L_023A:
cmp dword ptr [ebp+12], 0
je .L_0240
sub esp, 12
push 0
push 3
push offset Lt_0213
push -1
push offset Lt_02D0
call fb_StrConcatAssign
add esp, 32
.L_0240:
.L_023F:
cmp dword ptr [ebp+8], 0
je .L_0242
sub esp, 12
push 0
push 9
push offset Lt_0243
push -1
push offset Lt_02D0
call fb_StrConcatAssign
add esp, 32
jmp .L_0241
.L_0242:
sub esp, 12
push 0
push 8
push offset Lt_0244
push -1
push offset Lt_02D0
call fb_StrConcatAssign
add esp, 32
.L_0241:
sub esp, 12
push 0
push -1
push offset Lt_02D1
push -1
push offset Lt_02D0
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0221
push -1
push offset Lt_02D0
call fb_StrConcatAssign
add esp, 32
.L_023E:
.L_0238:
.L_0237:
.L_0236:
mov eax, dword ptr [Lt_02D0]
mov dword ptr [ebp-4], eax
.L_0233:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDTOKEN, .-HADDTOKEN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02D0,12
.balign 4
	.lcomm	Lt_02D1,12

.section .text
.balign 16
GETNOTALLOWEDMSG:
.type GETNOTALLOWEDMSG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0277:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.L_027C:
sub esp, 12
push dword ptr [ebp-28]
call FBGETLANGOPTIONS
add esp, 16
and eax, dword ptr [ebp+8]
test eax, eax
je .L_027E
cmp dword ptr [ebp-32], 0
jle .L_0280
sub esp, 12
push 0
push 5
push offset Lt_0281
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0280:
.L_027F:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-28]
call FBGETLANGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [ebp-32]
.L_027E:
.L_027D:
.L_027A:
inc dword ptr [ebp-28]
.L_0279:
cmp dword ptr [ebp-28], 3
jle .L_027C
.L_027B:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push 0
call HADDTOKEN
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0278
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0278:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size GETNOTALLOWEDMSG, .-GETNOTALLOWEDMSG
.cfi_endproc
.balign 16
HMAKEPARAMDESC:
.type HMAKEPARAMDESC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_0285:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0288
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0286
.L_0288:
.L_0287:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02D4
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 0
je .L_028A
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0206
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02D4
call fb_StrAssign
add esp, 32
.L_028A:
.L_0289:
cmp dword ptr [ebp-24], 0
jle .L_028D
sub esp, 12
push 0
push 14
push offset Lt_028E
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-24]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-20], 0
jne .L_0290
cmp dword ptr [ebp-12], 0
je .L_0292
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
je .L_0293
mov dword ptr [ebp-40], 0
jmp .L_02D3
.L_0293:
mov dword ptr [ebp-40], 1
.L_02D3:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
.L_0295:
cmp dword ptr [ebp-32], 0
je .L_0296
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-36], eax
jne .L_0298
jmp .L_0296
.L_0298:
.L_0297:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-32], ebx
jmp .L_0295
.L_0296:
cmp dword ptr [ebp-32], 0
je .L_029A
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
.L_029A:
.L_0299:
.L_0292:
.L_0291:
.L_0290:
.L_028F:
cmp dword ptr [ebp-20], 0
je .L_029C
sub esp, 8
push 0
push dword ptr [ebp-20]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_029E
sub esp, 12
push 0
push 3
push offset Lt_029F
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-20]
push -1
push offset Lt_02D4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02D4
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_025B
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
.L_029E:
.L_029D:
.L_029C:
.L_029B:
.L_028D:
.L_028C:
cmp dword ptr [ebp-12], 0
je .L_02A2
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .L_02A4
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+16], 0
je .L_02A6
push 4
push offset Lt_02A7
push -1
sub esp, 12
push 3
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_02A9
mov dword ptr [ebp-32], 0
.L_02A9:
.L_02A8:
jmp .L_02A5
.L_02A6:
mov dword ptr [ebp-32], 0
.L_02A5:
jmp .L_02A3
.L_02A4:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_02AB
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call SYMBPROCPTRTOSTR
add esp, 12
push eax
push -1
push offset Lt_02D5
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_02D5]
mov dword ptr [ebp-16], eax
jmp .L_02AA
.L_02AB:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 4124
test ebx, ebx
je .L_02AC
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call SYMBMETHODTOSTR
add esp, 12
push eax
push -1
push offset Lt_02D5
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_02D5]
mov dword ptr [ebp-16], eax
.L_02AC:
.L_02AA:
.L_02A3:
cmp dword ptr [ebp-32], 0
je .L_02AE
cmp dword ptr [ebp-16], 0
jne .L_02B0
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_02B2
sub esp, 8
push 0
push dword ptr [ebp-16]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_02B4
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-16], eax
.L_02B4:
.L_02B3:
.L_02B2:
.L_02B1:
jmp .L_02AF
.L_02B0:
mov dword ptr [ebp-28], 0
.L_02AF:
cmp dword ptr [ebp-16], 0
je .L_02B6
cmp dword ptr [ebp-24], 0
jle .L_02B8
sub esp, 12
push 0
push 5
push offset Lt_02B9
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
.L_02B8:
.L_02B7:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-16]
push -1
push offset Lt_02D4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02D4
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-28], 0
je .L_02BC
sub esp, 12
push 0
push 3
push offset Lt_025E
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
.L_02BC:
.L_02BB:
.L_02B6:
.L_02B5:
.L_02AE:
.L_02AD:
jmp .L_02A1
.L_02A2:
cmp dword ptr [ebp-24], 0
jle .L_02BE
sub esp, 12
push 0
push 5
push offset Lt_02B9
push -1
push offset Lt_02D4
call fb_StrConcatAssign
add esp, 32
.L_02BE:
.L_02BD:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBKEYWORDGETTEXT
add esp, 16
push eax
push -1
push offset Lt_02D4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02D4
call fb_StrAssign
add esp, 32
.L_02A1:
mov eax, dword ptr [Lt_02D4]
mov dword ptr [ebp-4], eax
.L_0286:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMAKEPARAMDESC, .-HMAKEPARAMDESC
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02D4,12
.balign 4
	.lcomm	Lt_02D5,12

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
.balign 4
	.lcomm	ERRCTX,64

.section .data
.balign 4
WARNINGMSGS:
.int 2
.int Lt_0067
.int 2
.int Lt_0068
.int 2
.int Lt_0069
.int 2
.int Lt_006A
.int 1
.int Lt_006B
.int 2
.int Lt_006C
.int 2
.int Lt_006D
.int 2
.int Lt_006E
.int 2
.int Lt_006F
.int 1
.int Lt_0070
.int 1
.int Lt_0071
.int 1
.int Lt_0072
.int 1
.int Lt_0073
.int 2
.int Lt_0074
.int 1
.int Lt_0075
.int 1
.int Lt_0076
.int 1
.int Lt_0077
.int 2
.int Lt_0078
.int 2
.int Lt_0079
.int 3
.int Lt_007A
.int 3
.int Lt_007B
.int 1
.int Lt_007C
.int 3
.int Lt_007D
.int 3
.int Lt_007E
.int 1
.int Lt_007F
.int 1
.int Lt_0080
.int 1
.int Lt_0081
.int 1
.int Lt_0082
.int 1
.int Lt_0083
.int 1
.int Lt_0084
.int 1
.int Lt_0085
.int 1
.int Lt_0086
.int 1
.int Lt_0087
.int 1
.int Lt_0088
.int 1
.int Lt_0089
.int 1
.int Lt_008A
.int 2
.int Lt_0000
.int 1
.int Lt_008B
.int 1
.int Lt_008C
.int 0
.int Lt_008D
.int 0
.int Lt_008E
.int 0
.int Lt_008F
.int 0
.int Lt_0090
.int 1
.int Lt_0091
.int 1
.int Lt_0092
.int 1
.int Lt_0093
.int 1
.int Lt_0094
.int 1
.int Lt_0095
.int 1
.int Lt_0096

.section .rodata
.balign 4
Lt_0067:	.ascii	"Passing scalar as pointer\0"
.balign 4
Lt_0068:	.ascii	"Passing pointer to scalar\0"
.balign 4
Lt_0069:	.ascii	"Passing different pointer types\0"
.balign 4
Lt_006A:	.ascii	"Suspicious pointer assignment\0"
.balign 4
Lt_006B:	.ascii	"Implicit conversion\0"
.balign 4
Lt_006C:	.ascii	"Cannot export symbol without -export option\0"
.balign 4
Lt_006D:	.ascii	"Identifier's name too big, truncated\0"
.balign 4
Lt_006E:	.ascii	"Literal number too big, truncated\0"
.balign 4
Lt_006F:	.ascii	"Literal string too big, truncated\0"
.balign 4
Lt_0070:	.ascii	"UDT with pointer, var-len string, or var-len array fields\0"
.balign 4
Lt_0071:	.ascii	"Implicit variable allocation\0"
.balign 4
Lt_0072:	.ascii	"Missing closing quote in literal string\0"
.balign 4
Lt_0073:	.ascii	"Function result was not explicitly set\0"
.balign 4
Lt_0074:	.ascii	"Branch crossing local variable definition\0"
.balign 4
Lt_0075:	.ascii	"No explicit BYREF or BYVAL\0"
.balign 4
Lt_0076:	.ascii	"Possible escape sequence found in\0"
.balign 4
Lt_0077:	.ascii	"The type length is too large, consider passing BYREF\0"
.balign 4
Lt_0078:	.ascii	"The length of the parameters list is too large, consider passing UDT's BYREF\0"
.balign 4
Lt_0079:	.ascii	"The ANY initializer has no effect on UDT's with default constructors\0"
.balign 4
Lt_007A:	.ascii	"Object files or libraries with mixed multithreading (-mt) options\0"
.balign 4
Lt_007B:	.ascii	"Object files or libraries with mixed language (-lang) options\0"
.balign 4
Lt_007C:	.ascii	"Deleting ANY pointers is undefined\0"
.balign 4
Lt_007D:	.ascii	"Array too large for stack, consider making it var-len or SHARED\0"
.balign 4
Lt_007E:	.ascii	"Variable too large for stack, consider making it SHARED\0"
.balign 4
Lt_007F:	.ascii	"Overflow in constant conversion\0"
.balign 4
Lt_0080:	.ascii	"Variable following NEXT is meaningless\0"
.balign 4
Lt_0081:	.ascii	"Cast to non-pointer\0"
.balign 4
Lt_0082:	.ascii	"Return method mismatch\0"
.balign 4
Lt_0083:	.ascii	"Passing Pointer\0"
.balign 4
Lt_0084:	.ascii	"Command line option overrides directive\0"
.balign 4
Lt_0085:	.ascii	"Directive ignored after first pass\0"
.balign 4
Lt_0086:	.ascii	"'IF' statement found directly after multi-line 'ELSE'\0"
.balign 4
Lt_0087:	.ascii	"Shift value greater than or equal to number of bits in data type\0"
.balign 4
Lt_0088:	.ascii	"'=' parsed as equality operator in function argument, not assignment to BYREF function result\0"
.balign 4
Lt_0089:	.ascii	"Mixing signed/unsigned operands\0"
.balign 4
Lt_008A:	.ascii	"Mismatching parameter initializer\0"
.balign 4
Lt_008B:	.ascii	"Suspicious logic operation, mixed boolean and non-boolean operands\0"
.balign 4
Lt_008C:	.ascii	"Redefinition of intrinsic\0"
.balign 4
Lt_008D:	.ascii	"CONST qualifier discarded\0"
.balign 4
Lt_008E:	.ascii	"Return type mismatch\0"
.balign 4
Lt_008F:	.ascii	"Calling convention mismatch\0"
.balign 4
Lt_0090:	.ascii	"Argument count mismatch\0"
.balign 4
Lt_0091:	.ascii	"Suffix ignored\0"
.balign 4
Lt_0092:	.ascii	"FOR counter variable is unable to exceed limit value\0"
.balign 4
Lt_0093:	.ascii	"#cmdline ignored\0"
.balign 4
Lt_0094:	.ascii	"Use of reserved global or backend symbol\0"
.balign 4
Lt_0095:	.ascii	"Expected digit\0"
.balign 4
Lt_0096:	.ascii	"Up-casting discards initializer(s)\0"

.section .data
.balign 4
ERRORMSGS:
.int Lt_0090
.int Lt_0098
.int Lt_0099
.int Lt_009A
.int Lt_009B
.int Lt_009C
.int Lt_009D
.int Lt_009E
.int Lt_009F
.int Lt_00A0
.int Lt_00A1
.int Lt_00A2
.int Lt_00A3
.int Lt_00A4
.int Lt_00A5
.int Lt_00A6
.int Lt_00A7
.int Lt_00A8
.int Lt_00A9
.int Lt_00AA
.int Lt_00AB
.int Lt_00AC
.int Lt_00AD
.int Lt_00AE
.int Lt_00AF
.int Lt_00B0
.int Lt_00B1
.int Lt_00B2
.int Lt_00B3
.int Lt_00B4
.int Lt_00B5
.int Lt_00B6
.int Lt_00B7
.int Lt_00B8
.int Lt_00B9
.int Lt_00BA
.int Lt_00BB
.int Lt_00BC
.int Lt_00BD
.int Lt_00BE
.int Lt_00BF
.int Lt_00C0
.int Lt_00C1
.int Lt_00C2
.int Lt_00C3
.int Lt_00C4
.int Lt_00C5
.int Lt_00C6
.int Lt_00C7
.int Lt_00C8
.int Lt_00C9
.int Lt_00CA
.int Lt_00CB
.int Lt_00CC
.int Lt_00CD
.int Lt_00CE
.int Lt_00CF
.int Lt_00AA
.int Lt_00D0
.int Lt_00D1
.int Lt_00D2
.int Lt_00D3
.int Lt_00D4
.int Lt_00D5
.int Lt_00D6
.int Lt_00D7
.int Lt_00D8
.int Lt_00D9
.int Lt_00DA
.int Lt_00DB
.int Lt_00DC
.int Lt_00DD
.int Lt_00DE
.int Lt_00DF
.int Lt_00E0
.int Lt_00E1
.int Lt_00E2
.int Lt_00E3
.int Lt_00E4
.int Lt_00E5
.int Lt_00E6
.int Lt_00E7
.int Lt_00E8
.int Lt_00E9
.int Lt_00EA
.int Lt_00EB
.int Lt_00EC
.int Lt_00ED
.int Lt_00EE
.int Lt_00EF
.int Lt_00F0
.int Lt_00F1
.int Lt_00F2
.int Lt_00F3
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.int Lt_00F9
.int Lt_00FA
.int Lt_00FB
.int Lt_00FC
.int Lt_00FD
.int Lt_00FE
.int Lt_00FF
.int Lt_0100
.int Lt_0101
.int Lt_0102
.int Lt_0103
.int Lt_0104
.int Lt_0105
.int Lt_0106
.int Lt_0107
.int Lt_0108
.int Lt_0109
.int Lt_010A
.int Lt_010B
.int Lt_010C
.int Lt_010D
.int Lt_010E
.int Lt_010F
.int Lt_0110
.int Lt_0111
.int Lt_0112
.int Lt_0113
.int Lt_0114
.int Lt_0115
.int Lt_0116
.int Lt_0117
.int Lt_0118
.int Lt_0119
.int Lt_011A
.int Lt_011B
.int Lt_011C
.int Lt_011D
.int Lt_011E
.int Lt_011F
.int Lt_0120
.int Lt_0121
.int Lt_0122
.int Lt_0123
.int Lt_0124
.int Lt_0125
.int Lt_0126
.int Lt_0127
.int Lt_0128
.int Lt_0129
.int Lt_012A
.int Lt_012B
.int Lt_012C
.int Lt_012D
.int Lt_012E
.int Lt_012F
.int Lt_0130
.int Lt_0131
.int Lt_0132
.int Lt_0133
.int Lt_0134
.int Lt_0135
.int Lt_0136
.int Lt_0137
.int Lt_0138
.int Lt_0139
.int Lt_013A
.int Lt_013B
.int Lt_013C
.int Lt_013D
.int Lt_013E
.int Lt_013F
.int Lt_0140
.int Lt_0141
.int Lt_0142
.int Lt_0143
.int Lt_0144
.int Lt_0145
.int Lt_0146
.int Lt_0148
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_014F
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0154
.int Lt_0155
.int Lt_0156
.int Lt_0157
.int Lt_0158
.int Lt_0159
.int Lt_015A
.int Lt_015B
.int Lt_015C
.int Lt_015D
.int Lt_015E
.int Lt_015F
.int Lt_0160
.int Lt_0161
.int Lt_0162
.int Lt_0163
.int Lt_0164
.int Lt_0165
.int Lt_0166
.int Lt_0167
.int Lt_0168
.int Lt_0169
.int Lt_016A
.int Lt_016B
.int Lt_016C
.int Lt_016D
.int Lt_016E
.int Lt_016F
.int Lt_0170
.int Lt_0171
.int Lt_0172
.int Lt_0173
.int Lt_0174
.int Lt_0175
.int Lt_0176
.int Lt_0177
.int Lt_0178
.int Lt_0179
.int Lt_017A
.int Lt_017B
.int Lt_017C
.int Lt_017D
.int Lt_017E
.int Lt_017F
.int Lt_0180
.int Lt_0181
.int Lt_0182
.int Lt_0183
.int Lt_0184
.int Lt_0185
.int Lt_0186
.int Lt_0187
.int Lt_0188
.int Lt_0189
.int Lt_018A
.int Lt_018B
.int Lt_018C
.int Lt_018D
.int Lt_018E
.int Lt_018F
.int Lt_0190
.int Lt_0191
.int Lt_0192
.int Lt_0193
.int Lt_0194
.int Lt_0195
.int Lt_0196
.int Lt_0197
.int Lt_0198
.int Lt_0199
.int Lt_019A
.int Lt_019B
.int Lt_019C
.int Lt_019D
.int Lt_019E
.int Lt_019F
.int Lt_01A0
.int Lt_01A1
.int Lt_01A2
.int Lt_01A3
.int Lt_01A4
.int Lt_01A5
.int Lt_01A6
.int Lt_01A7
.int Lt_01A8
.int Lt_01A9
.int Lt_01AA
.int Lt_01AB
.int Lt_01AC
.int Lt_01AD
.int Lt_01AE
.int Lt_01AF
.int Lt_01B0
.int Lt_01B1
.int Lt_01B2
.int Lt_01B3
.int Lt_01B4
.int Lt_01B5
.int Lt_01B6
.int Lt_01B7
.int Lt_01B8
.int Lt_01B9
.int Lt_01BA
.int Lt_01BB
.int Lt_01BC
.int Lt_01BD
.int Lt_01BE
.int Lt_01BF
.int Lt_01C0
.int Lt_01C1
.int Lt_01C2
.int Lt_01C3
.int Lt_01C4
.int Lt_01C5
.int Lt_01C6
.int Lt_01C7
.int Lt_01C8
.int Lt_01C9
.int Lt_01CA
.int Lt_01CB
.int Lt_01CC
.int Lt_01CD
.int Lt_01CE
.int Lt_01CF
.int Lt_01D0
.int Lt_01D1
.int Lt_01D2
.int Lt_01D3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.int Lt_01D7
.int Lt_01D8
.int Lt_01D9
.int Lt_01DA
.int Lt_01DB
.int Lt_01DC
.int Lt_01DD
.int Lt_01DE
.int Lt_01DF
.int Lt_01E0

.section .rodata
.balign 4
Lt_0098:	.ascii	"Expected End-of-File\0"
.balign 4
Lt_0099:	.ascii	"Expected End-of-Line\0"
.balign 4
Lt_009A:	.ascii	"Duplicated definition\0"
.balign 4
Lt_009B:	.ascii	"Expected 'AS'\0"
.balign 4
Lt_009C:	.ascii	"Expected '('\0"
.balign 4
Lt_009D:	.ascii	"Expected ')'\0"
.balign 4
Lt_009E:	.ascii	"Undefined symbol\0"
.balign 4
Lt_009F:	.ascii	"Expected expression\0"
.balign 4
Lt_00A0:	.ascii	"Expected '='\0"
.balign 4
Lt_00A1:	.ascii	"Expected constant\0"
.balign 4
Lt_00A2:	.ascii	"Expected 'TO'\0"
.balign 4
Lt_00A3:	.ascii	"Expected 'NEXT'\0"
.balign 4
Lt_00A4:	.ascii	"Expected identifier\0"
.balign 4
Lt_00A5:	.ascii	"Expected '-'\0"
.balign 4
Lt_00A6:	.ascii	"Expected ','\0"
.balign 4
Lt_00A7:	.ascii	"Syntax error\0"
.balign 4
Lt_00A8:	.ascii	"Element not defined\0"
.balign 4
Lt_00A9:	.ascii	"Expected 'END TYPE' or 'END UNION'\0"
.balign 4
Lt_00AA:	.ascii	"Type mismatch\0"
.balign 4
Lt_00AB:	.ascii	"Internal!\0"
.balign 4
Lt_00AC:	.ascii	"Parameter type mismatch\0"
.balign 4
Lt_00AD:	.ascii	"File not found\0"
.balign 4
Lt_00AE:	.ascii	"Invalid data types\0"
.balign 4
Lt_00AF:	.ascii	"Invalid character\0"
.balign 4
Lt_00B0:	.ascii	"File access error\0"
.balign 4
Lt_00B1:	.ascii	"Recursion level too deep\0"
.balign 4
Lt_00B2:	.ascii	"Expected pointer\0"
.balign 4
Lt_00B3:	.ascii	"Expected 'LOOP'\0"
.balign 4
Lt_00B4:	.ascii	"Expected 'WEND'\0"
.balign 4
Lt_00B5:	.ascii	"Expected 'THEN'\0"
.balign 4
Lt_00B6:	.ascii	"Expected 'END IF'\0"
.balign 4
Lt_00B7:	.ascii	"Illegal 'END'\0"
.balign 4
Lt_00B8:	.ascii	"Expected 'CASE'\0"
.balign 4
Lt_00B9:	.ascii	"Expected 'END SELECT'\0"
.balign 4
Lt_00BA:	.ascii	"Wrong number of dimensions\0"
.balign 4
Lt_00BB:	.ascii	"Array boundaries do not match the original EXTERN declaration\0"
.balign 4
Lt_00BC:	.ascii	"'SUB' or 'FUNCTION' without 'END SUB' or 'END FUNCTION'\0"
.balign 4
Lt_00BD:	.ascii	"Expected 'END SUB' or 'END FUNCTION'\0"
.balign 4
Lt_00BE:	.ascii	"Return type here does not match DECLARE prototype\0"
.balign 4
Lt_00BF:	.ascii	"Calling convention does not match DECLARE prototype\0"
.balign 4
Lt_00C0:	.ascii	"Variable not declared\0"
.balign 4
Lt_00C1:	.ascii	"Variable required\0"
.balign 4
Lt_00C2:	.ascii	"Illegal outside a compound statement\0"
.balign 4
Lt_00C3:	.ascii	"Expected 'END ASM'\0"
.balign 4
Lt_00C4:	.ascii	"Function not declared\0"
.balign 4
Lt_00C5:	.ascii	"Expected ';'\0"
.balign 4
Lt_00C6:	.ascii	"Undefined label\0"
.balign 4
Lt_00C7:	.ascii	"Too many array dimensions\0"
.balign 4
Lt_00C8:	.ascii	"Array too big\0"
.balign 4
Lt_00C9:	.ascii	"User Defined Type too big\0"
.balign 4
Lt_00CA:	.ascii	"Expected scalar counter\0"
.balign 4
Lt_00CB:	.ascii	"Illegal outside a CONSTRUCTOR, DESTRUCTOR, FUNCTION, OPERATOR, PROPERTY or SUB block\0"
.balign 4
Lt_00CC:	.ascii	"Expected var-len array\0"
.balign 4
Lt_00CD:	.ascii	"Fixed-len strings cannot be returned from functions\0"
.balign 4
Lt_00CE:	.ascii	"Array already dimensioned\0"
.balign 4
Lt_00CF:	.ascii	"Illegal without the -ex option\0"
.balign 4
Lt_00D0:	.ascii	"Illegal specification\0"
.balign 4
Lt_00D1:	.ascii	"Expected 'END WITH'\0"
.balign 4
Lt_00D2:	.ascii	"Illegal inside functions\0"
.balign 4
Lt_00D3:	.ascii	"Statement in between SELECT and first CASE\0"
.balign 4
Lt_00D4:	.ascii	"Expected array\0"
.balign 4
Lt_00D5:	.ascii	"Expected '{'\0"
.balign 4
Lt_00D6:	.ascii	"Expected '}'\0"
.balign 4
Lt_00D7:	.ascii	"Expected ']'\0"
.balign 4
Lt_00D8:	.ascii	"Too many expressions\0"
.balign 4
Lt_00D9:	.ascii	"Expected explicit result type\0"
.balign 4
Lt_00DA:	.ascii	"Range too large\0"
.balign 4
Lt_00DB:	.ascii	"Forward references not allowed\0"
.balign 4
Lt_00DC:	.ascii	"Incomplete type\0"
.balign 4
Lt_00DD:	.ascii	"Array not dimensioned\0"
.balign 4
Lt_00DE:	.ascii	"Array access, index expected\0"
.balign 4
Lt_00DF:	.ascii	"Expected 'END ENUM'\0"
.balign 4
Lt_00E0:	.ascii	"Var-len arrays cannot be initialized\0"
.balign 4
Lt_00E1:	.ascii	"'...' ellipsis upper bound given for dynamic array (this is not supported)\0"
.balign 4
Lt_00E2:	.ascii	"'...' ellipsis upper bound given for array field (this is not supported)\0"
.balign 4
Lt_00E3:	.ascii	"Invalid bitfield\0"
.balign 4
Lt_00E4:	.ascii	"Too many parameters\0"
.balign 4
Lt_00E5:	.ascii	"Macro text too long\0"
.balign 4
Lt_00E6:	.ascii	"Invalid command-line option\0"
.balign 4
Lt_00E7:	.ascii	"Selected non-x86 CPU when compiling for DOS\0"
.balign 4
Lt_00E8:	.ascii	"Selected -gen gas|gas64 ASM backend is incompatible with CPU\0"
.balign 4
Lt_00E9:	.ascii	"-asm att used for -gen gas, but -gen gas only supports -asm intel\0"
.balign 4
Lt_00EA:	.ascii	"-pic used when making executable (only works when making a shared library)\0"
.balign 4
Lt_00EB:	.ascii	"-pic used, but not supported by target system (only works for non-x86 Unixes)\0"
.balign 4
Lt_00EC:	.ascii	"Var-len strings cannot be initialized\0"
.balign 4
Lt_00ED:	.ascii	"Recursive TYPE or UNION not allowed\0"
.balign 4
Lt_00EE:	.ascii	"Recursive DEFINE not allowed\0"
.balign 4
Lt_00EF:	.ascii	"Identifier cannot include periods\0"
.balign 4
Lt_00F0:	.ascii	"Executable not found\0"
.balign 4
Lt_00F1:	.ascii	"Array out-of-bounds\0"
.balign 4
Lt_00F2:	.ascii	"Missing command-line option for\0"
.balign 4
Lt_00F3:	.ascii	"Expected 'ANY'\0"
.balign 4
Lt_00F4:	.ascii	"Expected 'END SCOPE'\0"
.balign 4
Lt_00F5:	.ascii	"Illegal inside a compound statement or scoped block\0"
.balign 4
Lt_00F6:	.ascii	"UDT function results cannot be passed by reference\0"
.balign 4
Lt_00F7:	.ascii	"Ambiguous call to overloaded function\0"
.balign 4
Lt_00F8:	.ascii	"No matching overloaded function\0"
.balign 4
Lt_00F9:	.ascii	"Division by zero\0"
.balign 4
Lt_00FA:	.ascii	"Cannot pop stack, underflow\0"
.balign 4
Lt_00FB:	.ascii	"UDT's containing var-len string fields cannot be initialized\0"
.balign 4
Lt_00FC:	.ascii	"Branching to scope block containing local variables\0"
.balign 4
Lt_00FD:	.ascii	"Branching to other functions or to module-level\0"
.balign 4
Lt_00FE:	.ascii	"Branch crossing local array, var-len string or object definition\0"
.balign 4
Lt_00FF:	.ascii	"LOOP without DO\0"
.balign 4
Lt_0100:	.ascii	"NEXT without FOR\0"
.balign 4
Lt_0101:	.ascii	"WEND without WHILE\0"
.balign 4
Lt_0102:	.ascii	"END WITH without WITH\0"
.balign 4
Lt_0103:	.ascii	"END IF without IF\0"
.balign 4
Lt_0104:	.ascii	"END SELECT without SELECT\0"
.balign 4
Lt_0105:	.ascii	"END SUB or FUNCTION without SUB or FUNCTION\0"
.balign 4
Lt_0106:	.ascii	"END SCOPE without SCOPE\0"
.balign 4
Lt_0107:	.ascii	"END NAMESPACE without NAMESPACE\0"
.balign 4
Lt_0108:	.ascii	"END EXTERN without EXTERN\0"
.balign 4
Lt_0109:	.ascii	"ELSEIF without IF\0"
.balign 4
Lt_010A:	.ascii	"ELSE without IF\0"
.balign 4
Lt_010B:	.ascii	"CASE without SELECT\0"
.balign 4
Lt_010C:	.ascii	"Cannot modify a constant\0"
.balign 4
Lt_010D:	.ascii	"Expected period ('.')\0"
.balign 4
Lt_010E:	.ascii	"Expected 'END NAMESPACE'\0"
.balign 4
Lt_010F:	.ascii	"Illegal inside a NAMESPACE block\0"
.balign 4
Lt_0110:	.ascii	"Symbols defined inside namespaces cannot be removed\0"
.balign 4
Lt_0111:	.ascii	"Expected 'END EXTERN'\0"
.balign 4
Lt_0112:	.ascii	"Expected 'END SUB'\0"
.balign 4
Lt_0113:	.ascii	"Expected 'END FUNCTION'\0"
.balign 4
Lt_0114:	.ascii	"Expected 'END CONSTRUCTOR'\0"
.balign 4
Lt_0115:	.ascii	"Expected 'END DESTRUCTOR'\0"
.balign 4
Lt_0116:	.ascii	"Expected 'END OPERATOR'\0"
.balign 4
Lt_0117:	.ascii	"Expected 'END PROPERTY'\0"
.balign 4
Lt_0118:	.ascii	"Declaration outside the original namespace\0"
.balign 4
Lt_0119:	.ascii	"No end of multi-line comment, expected \"'/\"\0"
.balign 4
Lt_011A:	.ascii	"Too many errors, exiting\0"
.balign 4
Lt_011B:	.ascii	"Expected 'ENDMACRO'\0"
.balign 4
Lt_011C:	.ascii	"EXTERN or COMMON variables cannot be initialized\0"
.balign 4
Lt_011D:	.ascii	"EXTERN or COMMON dynamic arrays cannot have initial bounds\0"
.balign 4
Lt_011E:	.ascii	"At least one parameter must be a user-defined type\0"
.balign 4
Lt_011F:	.ascii	"Parameter or result must be a user-defined type\0"
.balign 4
Lt_0120:	.ascii	"Both parameters can't be of the same type\0"
.balign 4
Lt_0121:	.ascii	"Parameter and result can't be of the same type\0"
.balign 4
Lt_0122:	.ascii	"Invalid result type for this operator\0"
.balign 4
Lt_0123:	.ascii	"Invalid parameter type, it must be the same as the parent TYPE/CLASS\0"
.balign 4
Lt_0124:	.ascii	"Vararg parameters are not allowed in overloaded functions\0"
.balign 4
Lt_0125:	.ascii	"Illegal outside an OPERATOR block\0"
.balign 4
Lt_0126:	.ascii	"Parameter cannot be optional\0"
.balign 4
Lt_0127:	.ascii	"Only valid in -lang\0"
.balign 4
Lt_0128:	.ascii	"Default types or suffixes are only valid in -lang\0"
.balign 4
Lt_0129:	.ascii	"Suffixes are only valid in -lang\0"
.balign 4
Lt_012A:	.ascii	"Implicit variables are only valid in -lang\0"
.balign 4
Lt_012B:	.ascii	"Auto variables are only valid in -lang\0"
.balign 4
Lt_012C:	.ascii	"Invalid array index\0"
.balign 4
Lt_012D:	.ascii	"Operator must be a member function\0"
.balign 4
Lt_012E:	.ascii	"Operator cannot be a member function\0"
.balign 4
Lt_012F:	.ascii	"Method declared in anonymous UDT\0"
.balign 4
Lt_0130:	.ascii	"Constant declared in anonymous UDT\0"
.balign 4
Lt_0131:	.ascii	"Static variable declared in anonymous UDT\0"
.balign 4
Lt_0132:	.ascii	"Expected operator\0"
.balign 4
Lt_0133:	.ascii	"Declaration outside the original namespace or class\0"
.balign 4
Lt_0134:	.ascii	"A destructor should not have any parameters\0"
.balign 4
Lt_0135:	.ascii	"Expected class or UDT identifier\0"
.balign 4
Lt_0136:	.ascii	"Var-len strings cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0137:	.ascii	"Dynamic arrays cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0138:	.ascii	"Fields with constructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0139:	.ascii	"Fields with destructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_013A:	.ascii	"Illegal outside a CONSTRUCTOR block\0"
.balign 4
Lt_013B:	.ascii	"Illegal outside a DESTRUCTOR block\0"
.balign 4
Lt_013C:	.ascii	"UDT's with methods must have unique names\0"
.balign 4
Lt_013D:	.ascii	"Parent is not a class or UDT\0"
.balign 4
Lt_013E:	.ascii	"CONSTRUCTOR() chain call not at top of constructor\0"
.balign 4
Lt_013F:	.ascii	"BASE() initializer not at top of constructor\0"
.balign 4
Lt_0140:	.ascii	"REDIM on UDT with non-CDECL constructor\0"
.balign 4
Lt_0141:	.ascii	"REDIM on UDT with non-CDECL destructor\0"
.balign 4
Lt_0142:	.ascii	"REDIM on UDT with non-parameterless default constructor\0"
.balign 4
Lt_0143:	.ascii	"ERASE on UDT with non-CDECL constructor\0"
.balign 4
Lt_0144:	.ascii	"ERASE on UDT with non-CDECL destructor\0"
.balign 4
Lt_0145:	.ascii	"ERASE on UDT with non-parameterless default constructor\0"
.balign 4
Lt_0146:	.ascii	"This symbol cannot be undefined\0"
.balign 4
Lt_0148:	.ascii	"RETURN mixed with 'FUNCTION =' or EXIT FUNCTION (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
Lt_014A:	.ascii	"'FUNCTION =' or EXIT FUNCTION mixed with RETURN (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
Lt_014B:	.ascii	"Missing RETURN to copy-construct function result\0"
.balign 4
Lt_014C:	.ascii	"Invalid assignment/conversion\0"
.balign 4
Lt_014D:	.ascii	"Invalid array subscript\0"
.balign 4
Lt_014E:	.ascii	"TYPE or CLASS has no default constructor\0"
.balign 4
Lt_014F:	.ascii	"Function result TYPE has no default constructor\0"
.balign 4
Lt_0150:	.ascii	"Missing BASE() initializer (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0151:	.ascii	"Missing default constructor implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0152:	.ascii	"Missing UDT.constructor(byref as UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0154:	.ascii	"Missing UDT.constructor(byref as const UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0155:	.ascii	"Invalid priority attribute\0"
.balign 4
Lt_0156:	.ascii	"PROPERTY GET should have no parameter, or just one if indexed\0"
.balign 4
Lt_0157:	.ascii	"PROPERTY SET should have one parameter, or just two if indexed\0"
.balign 4
Lt_0158:	.ascii	"Expected 'PROPERTY'\0"
.balign 4
Lt_0159:	.ascii	"Illegal outside a PROPERTY block\0"
.balign 4
Lt_015A:	.ascii	"PROPERTY has no GET method/accessor\0"
.balign 4
Lt_015B:	.ascii	"PROPERTY has no SET method/accessor\0"
.balign 4
Lt_015C:	.ascii	"PROPERTY has no indexed GET method/accessor\0"
.balign 4
Lt_015D:	.ascii	"PROPERTY has no indexed SET method/accessor\0"
.balign 4
Lt_015E:	.ascii	"Missing overloaded operator: \0"
.balign 4
Lt_015F:	.ascii	"The NEW[] operator does not allow explicit calls to constructors\0"
.balign 4
Lt_0160:	.ascii	"The NEW[] operator only supports the { ANY } initialization\0"
.balign 4
Lt_0161:	.ascii	"The NEW operator cannot be used with fixed-length strings\0"
.balign 4
Lt_0162:	.ascii	"Illegal member access\0"
.balign 4
Lt_0163:	.ascii	"Expected ':'\0"
.balign 4
Lt_0164:	.ascii	"The default constructor has no public access\0"
.balign 4
Lt_0165:	.ascii	"Constructor has no public access\0"
.balign 4
Lt_0166:	.ascii	"Destructor has no public access\0"
.balign 4
Lt_0167:	.ascii	"Accessing base UDT's private default constructor\0"
.balign 4
Lt_0168:	.ascii	"Accessing base UDT's private destructor\0"
.balign 4
Lt_0169:	.ascii	"Illegal non-static member access\0"
.balign 4
Lt_016A:	.ascii	"Constructor declared ABSTRACT\0"
.balign 4
Lt_016B:	.ascii	"Constructor declared VIRTUAL\0"
.balign 4
Lt_016C:	.ascii	"Destructor declared ABSTRACT\0"
.balign 4
Lt_016D:	.ascii	"Member cannot be static\0"
.balign 4
Lt_016E:	.ascii	"Member isn't static\0"
.balign 4
Lt_016F:	.ascii	"Only static members can be accessed from static functions and parameter initializers\0"
.balign 4
Lt_0170:	.ascii	"The PRIVATE and PUBLIC attributes are not allowed with REDIM, COMMON or EXTERN\0"
.balign 4
Lt_0171:	.ascii	"STATIC used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0172:	.ascii	"CONST used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0173:	.ascii	"VIRTUAL used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0174:	.ascii	"ABSTRACT used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0175:	.ascii	"Method declared VIRTUAL, but UDT does not extend OBJECT\0"
.balign 4
Lt_0176:	.ascii	"Method declared ABSTRACT, but UDT does not extend OBJECT\0"
.balign 4
Lt_0177:	.ascii	"Not overriding any virtual method\0"
.balign 4
Lt_0178:	.ascii	"Implemented body for an ABSTRACT method\0"
.balign 4
Lt_0179:	.ascii	"Override has different return type than overridden method\0"
.balign 4
Lt_017A:	.ascii	"Override has different calling convention than overridden method\0"
.balign 4
Lt_017B:	.ascii	"Implicit destructor override would have different calling convention\0"
.balign 4
Lt_017C:	.ascii	"Implicit LET operator override would have different calling convention\0"
.balign 4
Lt_017D:	.ascii	"Override is not a CONST member like the overridden method\0"
.balign 4
Lt_017E:	.ascii	"Override is a CONST member, but the overridden method is not\0"
.balign 4
Lt_017F:	.ascii	"Override has different parameters than overridden method\0"
.balign 4
Lt_0180:	.ascii	"This operator cannot be STATIC\0"
.balign 4
Lt_0181:	.ascii	"This operator is implicitly STATIC and cannot be VIRTUAL or ABSTRACT\0"
.balign 4
Lt_0182:	.ascii	"This operator is implicitly STATIC and cannot be CONST\0"
.balign 4
Lt_0183:	.ascii	"Parameter must be an integer\0"
.balign 4
Lt_0184:	.ascii	"Parameter must be a pointer\0"
.balign 4
Lt_0185:	.ascii	"Expected initializer\0"
.balign 4
Lt_0186:	.ascii	"Fields cannot be named as keywords in TYPE's that contain member functions or in CLASS'es\0"
.balign 4
Lt_0187:	.ascii	"Illegal outside a FOR compound statement\0"
.balign 4
Lt_0188:	.ascii	"Illegal outside a DO compound statement\0"
.balign 4
Lt_0189:	.ascii	"Illegal outside a WHILE compound statement\0"
.balign 4
Lt_018A:	.ascii	"Illegal outside a SELECT compound statement\0"
.balign 4
Lt_018B:	.ascii	"Expected 'FOR'\0"
.balign 4
Lt_018C:	.ascii	"Expected 'DO'\0"
.balign 4
Lt_018D:	.ascii	"Expected 'WHILE'\0"
.balign 4
Lt_018E:	.ascii	"Expected 'SELECT'\0"
.balign 4
Lt_018F:	.ascii	"No outer FOR compound statement found\0"
.balign 4
Lt_0190:	.ascii	"No outer DO compound statement found\0"
.balign 4
Lt_0191:	.ascii	"No outer WHILE compound statement found\0"
.balign 4
Lt_0192:	.ascii	"No outer SELECT compound statement found\0"
.balign 4
Lt_0193:	.ascii	"Expected 'CONSTRUCTOR', 'DESTRUCTOR', 'DO', 'FOR', 'FUNCTION', 'OPERATOR', 'PROPERTY', 'SELECT', 'SUB' or 'WHILE'\0"
.balign 4
Lt_0194:	.ascii	"Expected 'DO', 'FOR' or 'WHILE'\0"
.balign 4
Lt_0195:	.ascii	"Illegal outside a SUB block\0"
.balign 4
Lt_0196:	.ascii	"Illegal outside a FUNCTION block\0"
.balign 4
Lt_0197:	.ascii	"Ambiguous symbol access, explicit scope resolution required\0"
.balign 4
Lt_0198:	.ascii	"An ENUM, TYPE or UNION cannot be empty\0"
.balign 4
Lt_0199:	.ascii	"ENUM's declared inside EXTERN .. END EXTERN blocks don't open new scopes\0"
.balign 4
Lt_019A:	.ascii	"STATIC used on non-member procedure\0"
.balign 4
Lt_019B:	.ascii	"CONST used on non-member procedure\0"
.balign 4
Lt_019C:	.ascii	"ABSTRACT used on non-member procedure\0"
.balign 4
Lt_019D:	.ascii	"VIRTUAL used on non-member procedure\0"
.balign 4
Lt_019E:	.ascii	"Invalid initializer\0"
.balign 4
Lt_019F:	.ascii	"Objects with default [con|de]structors or methods are only allowed in the module level\0"
.balign 4
Lt_01A0:	.ascii	"Static member variable in nested UDT (only allowed in toplevel UDTs)\0"
.balign 4
Lt_01A1:	.ascii	"Symbol not a CLASS, ENUM, TYPE or UNION type\0"
.balign 4
Lt_01A2:	.ascii	"Too many elements\0"
.balign 4
Lt_01A3:	.ascii	"Only data members supported\0"
.balign 4
Lt_01A4:	.ascii	"UNIONs are not allowed\0"
.balign 4
Lt_01A5:	.ascii	"Arrays are not allowed\0"
.balign 4
Lt_01A6:	.ascii	"COMMON variables cannot be object instances of CLASS/TYPE's with cons/destructors\0"
.balign 4
Lt_01A7:	.ascii	"Cloning operators (LET, Copy constructors) can't take a byval arg of the parent's type\0"
.balign 4
Lt_01A8:	.ascii	"Local symbols can't be referenced\0"
.balign 4
Lt_01A9:	.ascii	"Expected 'PTR' or 'POINTER'\0"
.balign 4
Lt_01AA:	.ascii	"Too many levels of pointer indirection\0"
.balign 4
Lt_01AB:	.ascii	"Dynamic arrays can't be const\0"
.balign 4
Lt_01AC:	.ascii	"Const UDT cannot invoke non-const method\0"
.balign 4
Lt_01AD:	.ascii	"Elements must be empty for strings and arrays\0"
.balign 4
Lt_01AE:	.ascii	"GOSUB disabled, use 'OPTION GOSUB' to enable\0"
.balign 4
Lt_01AF:	.ascii	"Invalid -lang\0"
.balign 4
Lt_01B0:	.ascii	"Can't use ANY as initializer in array with ellipsis bound\0"
.balign 4
Lt_01B1:	.ascii	"Must have initializer with array with ellipsis bound\0"
.balign 4
Lt_01B2:	.ascii	"Can't use ... as lower bound\0"
.balign 4
Lt_01B3:	.ascii	"FOR/NEXT variable name mismatch\0"
.balign 4
Lt_01B4:	.ascii	"Selected option requires an SSE FPU mode\0"
.balign 4
Lt_01B5:	.ascii	"Expected relational operator ( =, >, <, <>, <=, >= )\0"
.balign 4
Lt_01B6:	.ascii	"Unsupported statement in -gen gcc mode\0"
.balign 4
Lt_01B7:	.ascii	"Too many labels\0"
.balign 4
Lt_01B8:	.ascii	"Unsupported function\0"
.balign 4
Lt_01B9:	.ascii	"Expected sub\0"
.balign 4
Lt_01BA:	.ascii	"Expected '#ENDIF'\0"
.balign 4
Lt_01BB:	.ascii	"Resource file given for target system that does not support them\0"
.balign 4
Lt_01BC:	.ascii	"-o <file> option without corresponding input file\0"
.balign 4
Lt_01BD:	.ascii	"Not extending a TYPE/UNION (a TYPE/UNION can only extend other TYPEs/UNIONs)\0"
.balign 4
Lt_01BE:	.ascii	"Illegal outside a CLASS, TYPE or UNION method\0"
.balign 4
Lt_01BF:	.ascii	"CLASS, TYPE or UNION not derived\0"
.balign 4
Lt_01C0:	.ascii	"CLASS, TYPE or UNION has no constructor\0"
.balign 4
Lt_01C1:	.ascii	"Symbol type has no Run-Time Type Info (RTTI)\0"
.balign 4
Lt_01C2:	.ascii	"Types have no hierarchical relation\0"
.balign 4
Lt_01C3:	.ascii	"Expected a CLASS, TYPE or UNION symbol type\0"
.balign 4
Lt_01C4:	.ascii	"Casting derived UDT pointer from incompatible pointer type\0"
.balign 4
Lt_01C5:	.ascii	"Casting derived UDT pointer from unrelated UDT pointer type\0"
.balign 4
Lt_01C6:	.ascii	"Casting derived UDT pointer to incompatible pointer type\0"
.balign 4
Lt_01C7:	.ascii	"Casting derived UDT pointer to unrelated UDT pointer type\0"
.balign 4
Lt_01C8:	.ascii	"ALIAS name string is empty\0"
.balign 4
Lt_01C9:	.ascii	"LIB name string is empty\0"
.balign 4
Lt_01CA:	.ascii	"UDT has unimplemented abstract methods\0"
.balign 4
Lt_01CB:	.ascii	"Non-virtual call to ABSTRACT method\0"
.balign 4
Lt_01CC:	.ascii	"#ASSERT condition failed\0"
.balign 4
Lt_01CD:	.ascii	"Expected '>'\0"
.balign 4
Lt_01CE:	.ascii	"Invalid size\0"
.balign 4
Lt_01CF:	.ascii	"ALIAS name here does not match ALIAS given in DECLARE prototype\0"
.balign 4
Lt_01D0:	.ascii	"vararg parameters are only allowed in CDECL procedures\0"
.balign 4
Lt_01D1:	.ascii	"the first parameter in a procedure may not be vararg\0"
.balign 4
Lt_01D2:	.ascii	"CONST used on constructor (not needed)\0"
.balign 4
Lt_01D3:	.ascii	"CONST used on destructor (not needed)\0"
.balign 4
Lt_01D4:	.ascii	"Byref function result not set\0"
.balign 4
Lt_01D5:	.ascii	"Function result assignment outside of the function\0"
.balign 4
Lt_01D6:	.ascii	"Type mismatch in byref function result assignment\0"
.balign 4
Lt_01D7:	.ascii	"-asm att|intel option given, but not supported for this target (only x86 or x86_64)\0"
.balign 4
Lt_01D8:	.ascii	"Reference not initialized\0"
.balign 4
Lt_01D9:	.ascii	"Incompatible reference initializer\0"
.balign 4
Lt_01DA:	.ascii	"Array of references - not supported yet\0"
.balign 4
Lt_01DB:	.ascii	"Invalid CASE range, start value is greater than the end value\0"
.balign 4
Lt_01DC:	.ascii	"Fixed-length string combined with BYREF (not supported)\0"
.balign 4
Lt_01DD:	.ascii	"Illegal use of reserved symbol\0"
.balign 4
Lt_01DE:	.ascii	"Expected ',' or ';'\0"
.balign 4
Lt_01DF:	.ascii	"Expected file number expression\0"
.balign 4
Lt_01E0:	.ascii	"Malformed SOURCE_DATE_EPOCH environment variable\0"
.balign 4
Lt_01FF:	.ascii	"(\0"
.balign 4
Lt_0202:	.ascii	") \0"
.balign 4
Lt_0203:	.ascii	"error\0"
.balign 4
Lt_0206:	.ascii	" \0"
.balign 4
Lt_0207:	.ascii	": \0"
.balign 4
Lt_0213:	.ascii	", \0"
.balign 4
Lt_0217:	.ascii	"\"\0"
.balign 4
Lt_0220:	.ascii	" in '\0"
.balign 4
Lt_0221:	.ascii	"'\0"
.balign 4
Lt_0243:	.ascii	"before '\0"
.balign 4
Lt_0244:	.ascii	"found '\0"
.balign 4
Lt_025B:	.ascii	")\0"
.balign 4
Lt_025E:	.ascii	"()\0"
.balign 4
Lt_0261:	.ascii	" error\0"
.balign 4
Lt_0262:	.ascii	" warning \0"
.balign 4
Lt_0263:	.ascii	"): \0"
.balign 4
Lt_0281:	.ascii	" or \0"
.balign 4
Lt_028E:	.ascii	"at parameter \0"
.balign 4
Lt_029F:	.ascii	" (\0"
.balign 4
Lt_02A7:	.ascii	"FB_\0"
.balign 4
Lt_02B9:	.ascii	" of \0"

.section .ctors, "aw", @progbits
.int fb_ctor__error
