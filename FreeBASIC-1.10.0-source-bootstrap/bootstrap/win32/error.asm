	.intel_syntax noprefix

.section .text
.balign 16

.globl _ERRPREINIT@0
_ERRPREINIT@0:
.L_01E2:
mov dword ptr [_ERRCTX+8], 0
.L_01E3:
ret
.balign 16

.globl _ERRINIT@0
_ERRINIT@0:
.L_01E4:
inc dword ptr [_ERRCTX]
mov dword ptr [_ERRCTX+4], 0
mov dword ptr [_ERRCTX+8], 0
mov dword ptr [_ERRCTX+12], -1
mov dword ptr [_ERRCTX+16], -1
push -1
push 64
lea eax, [_ERRCTX+20]
push eax
call _HASHINIT@12
push -1
push 16
push 4
lea eax, [_ERRCTX+32]
push eax
call _LISTINIT@16
.L_01E5:
ret
.balign 16

.globl _ERREND@0
_ERREND@0:
.L_01E6:
lea eax, [_ERRCTX+32]
push eax
call _LISTEND@4
lea eax, [_ERRCTX+20]
push eax
call _HASHEND@4
dec dword ptr [_ERRCTX]
.L_01E7:
ret
.balign 16

.globl _ERRHIDEFURTHERERRORS@0
_ERRHIDEFURTHERERRORS@0:
.L_01E8:
mov dword ptr [_ERRCTX+8], -1
.L_01E9:
ret
.balign 16

.globl _ERRGETCOUNT@0
_ERRGETCOUNT@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01EA:
mov eax, dword ptr [_ERRCTX+4]
mov dword ptr [ebp-4], eax
.L_01EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRPUSHPARAMLOCATION@16
_ERRPUSHPARAMLOCATION@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01EC:
cmp dword ptr [ebp+8], 0
je .L_01EF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_01F1
cmp dword ptr [ebp+16], 1
jle .L_01F3
dec dword ptr [ebp+16]
.L_01F3:
.L_01F2:
.L_01F1:
.L_01F0:
.L_01EF:
.L_01EE:
lea ebx, [_ERRCTX+32]
push ebx
call _LISTNEWNODE@4
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
.L_01ED:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ERRPOPPARAMLOCATION@0
_ERRPOPPARAMLOCATION@0:
.L_01F4:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL@4
push eax
lea eax, [_ERRCTX+32]
push eax
call _LISTDELNODE@8
.L_01F5:
ret
.balign 16

.globl _ERRREPORTEX@20
_ERRREPORTEX@20:
push ebp
mov ebp, esp
push ebx
.L_0225:
cmp dword ptr [_ERRCTX+8], 0
je .L_0228
jmp .L_0226
.L_0228:
.L_0227:
cmp dword ptr [_ERRCTX], 0
jle .L_022A
push dword ptr [ebp+12]
call _HMAKEPARAMDESC@4
mov dword ptr [ebp+12], eax
.L_022A:
.L_0229:
cmp dword ptr [ebp+16], 0
jne .L_022C
mov eax, dword ptr [_ERRCTX+16]
cmp dword ptr [_PARSER+28], eax
jne .L_022E
jmp .L_0226
.L_022E:
.L_022D:
cmp dword ptr [_LEX+422280], 0
je .L_0230
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ebp+16], ebx
.L_0230:
.L_022F:
mov ebx, dword ptr [ebp+16]
mov dword ptr [_ERRCTX+12], ebx
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [_ERRCTX+16], ebx
.L_022C:
.L_022B:
push dword ptr [ebp+24]
push dword ptr [_ENV+192]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPRINTERRMSG@24
inc dword ptr [_ERRCTX+4]
mov ebx, dword ptr [_ENV+196]
cmp dword ptr [_ERRCTX+4], ebx
jl .L_0232
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
push 133
call _HPRINTERRMSG@24
call _ERRHIDEFURTHERERRORS@0
.L_0232:
.L_0231:
.L_0226:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ERRREPORT@12
_ERRREPORT@12:
push ebp
mov ebp, esp
sub esp, 4
.L_0246:
call _ERRHAVEPARAMLOCATION@0
test eax, eax
je .L_0249
mov dword ptr [ebp-4], 0
jmp .L_0248
.L_0249:
push 0
push 0
push dword ptr [ebp+12]
call _HADDTOKEN@12
mov dword ptr [ebp-4], eax
.L_0248:
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ERRREPORTEX@20
.L_0247:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ERRREPORTWARNEX@20
_ERRREPORTWARNEX@20:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.L_024A:
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
je .L_024D
jmp .L_024B
.L_024D:
.L_024C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+188]
cmp dword ptr [_WARNINGMSGS+ebx*8-8], eax
jge .L_024F
jmp .L_024B
.L_024F:
.L_024E:
cmp dword ptr [_ERRCTX+8], 0
je .L_0251
jmp .L_024B
.L_0251:
.L_0250:
mov eax, dword ptr [_ENV+200]
and eax, 512
test eax, eax
je .L_0253
inc dword ptr [_ERRCTX+4]
.L_0253:
.L_0252:
cmp dword ptr [_ERRCTX], 0
jle .L_0255
push dword ptr [ebp+12]
call _HMAKEPARAMDESC@4
mov dword ptr [ebp+12], eax
.L_0255:
.L_0254:
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0257
push 0
lea eax, [_ENV+304]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .L_0256
.L_0257:
cmp dword ptr [ebp+12], 0
je .L_0259
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
mov dword ptr [ebp+12], 0
.L_0259:
.L_0258:
.L_0256:
cmp dword ptr [ebp+16], 0
jle .L_025B
push 0
push 2
push offset _Lt_025C
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push 2
push offset _Lt_0200
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
jmp .L_025A
.L_025B:
push 0
push 2
push offset _Lt_025F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_025A:
mov eax, dword ptr [_ENV+200]
and eax, 512
test eax, eax
je .L_0261
push 0
push 6
push offset _Lt_0262
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0261:
.L_0260:
push 0
push 4
push offset _Lt_0264
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [_WARNINGMSGS+eax*8-8]
call _fb_IntToStr@4
push eax
push -1
push 2
push offset _Lt_0200
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push 10
push offset _Lt_0263
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_WARNINGMSGS+eax*8-4]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+24], 0
je .L_026A
push 0
push dword ptr [ebp+24]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
.L_026A:
.L_0269:
cmp dword ptr [ebp+12], 0
je .L_026C
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .L_026E
push 0
push 2
push offset _Lt_0214
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_026D
.L_026E:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .L_026F
push 0
push 2
push offset _Lt_0208
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_026D
.L_026F:
push 0
push 1
push offset _Lt_0207
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_026D:
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_0271
push 0
push 1
push offset _Lt_0218
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0271:
.L_0270:
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .L_0273
push 0
push 1
push offset _Lt_0218
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0273:
.L_0272:
.L_026C:
.L_026B:
push 1
push 0
call _fb_PrintVoid@8
.L_024B:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ERRREPORTWARN@16
_ERRREPORTWARN@16:
push ebp
mov ebp, esp
.L_0276:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTWARNEX@20
.L_0277:
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ERRREPORTNOTALLOWED@12
_ERRREPORTNOTALLOWED@12:
push ebp
mov ebp, esp
sub esp, 12
.L_0284:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _GETNOTALLOWEDMSG@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _ERRREPORTEX@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0285:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ERRREPORTPARAM@16
_ERRREPORTPARAM@16:
push ebp
mov ebp, esp
.L_02C1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call _ERRPUSHPARAMLOCATION@16
push 0
push 1
push 0
push 0
push dword ptr [ebp+20]
call _ERRREPORTEX@20
call _ERRPOPPARAMLOCATION@0
.L_02C2:
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ERRREPORTPARAMWARN@16
_ERRREPORTPARAMWARN@16:
push ebp
mov ebp, esp
.L_02C3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call _ERRPUSHPARAMLOCATION@16
push 0
push 1
push 0
push dword ptr [ebp+20]
call _ERRREPORTWARN@16
call _ERRPOPPARAMLOCATION@0
.L_02C4:
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ERRREPORTUNDEF@8
_ERRREPORTUNDEF@8:
push ebp
mov ebp, esp
sub esp, 8
.L_02C5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _HASHHASH@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
lea eax, [_ERRCTX+20]
push eax
call _HASHLOOKUPEX@12
test eax, eax
je .L_02C8
jmp .L_02C6
.L_02C8:
.L_02C7:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGN@8
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push dword ptr [ebp-8]
lea eax, [_ERRCTX+20]
push eax
call _HASHADD@16
push 0
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTEX@20
.L_02C6:
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__error:
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
_ERRHAVEPARAMLOCATION@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01F6:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_01F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTERRMSG@24:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_01F8:
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
je .L_01FB
mov dword ptr [_Lt_02CC], 0
jmp .L_01FA
.L_01FB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_ERRORMSGS+ebx*4-4]
mov dword ptr [_Lt_02CC], eax
.L_01FA:
cmp dword ptr [ebp+12], 0
jne .L_01FD
mov eax, offset _Lt_0000
mov dword ptr [ebp+12], eax
.L_01FD:
.L_01FC:
push 261
lea eax, [_ENV+304]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_01FF
push 0
lea eax, [_ENV+304]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
push 0
push 1
push offset _Lt_0200
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+20], 0
jle .L_0202
push 0
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push 0
call _fb_PrintString@12
.L_0202:
.L_0201:
push 0
push 2
push offset _Lt_0203
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_01FF:
.L_01FE:
push 0
push 5
push offset _Lt_0204
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
jl .L_0206
push 0
push 0
push dword ptr [_Lt_02CC]
push -1
push 3
push offset _Lt_0208
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push 2
push offset _Lt_0207
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+28], 0
je .L_020D
push 0
push dword ptr [ebp+28]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
.L_020D:
.L_020C:
cmp dword ptr [ebp+24], 0
je .L_020F
mov eax, dword ptr [ebp+20]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp+24], eax
.L_020F:
.L_020E:
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
test eax, eax
jle .L_0211
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_0213
push 0
push 2
push offset _Lt_0214
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0212
.L_0213:
mov eax, dword ptr [ebp+16]
and eax, 2
test eax, eax
je .L_0215
push 0
push 2
push offset _Lt_0208
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0212
.L_0215:
push 0
push 1
push offset _Lt_0207
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0212:
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .L_0217
push 0
push 1
push offset _Lt_0218
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0217:
.L_0216:
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .L_021A
push 0
push 1
push offset _Lt_0218
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_021A:
.L_0219:
.L_0211:
.L_0210:
cmp dword ptr [ebp+24], 0
je .L_021C
push 0
push -1
mov eax, dword ptr [_ENV+1040]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push offset _Lt_02CF
call _LEXPEEKCURRENTLINE@8
push eax
push -1
push offset _Lt_02D0
call _fb_StrAssign@20
push -1
push offset _Lt_02D0
call _fb_StrLen@8
test eax, eax
jle .L_021E
mov eax, dword ptr [_ENV+1040]
and eax, 256
test eax, eax
je .L_0220
push 1
push 2
push offset _Lt_0222
push -1
push -1
push offset _Lt_02D0
push 6
push offset _Lt_0221
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
jmp .L_021F
.L_0220:
push 1
push 0
call _fb_PrintVoid@8
push 1
push 0
push offset _Lt_02CF
call _LEXPEEKCURRENTLINE@8
push eax
push 0
call _fb_PrintString@12
push 1
push offset _Lt_02CF
push 0
call _fb_PrintString@12
.L_021F:
jmp .L_021D
.L_021E:
push 1
push 0
call _fb_PrintVoid@8
.L_021D:
jmp .L_021B
.L_021C:
push 1
push 0
call _fb_PrintVoid@8
.L_021B:
jmp .L_0205
.L_0206:
push 0
push 2
push offset _Lt_0208
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
.L_0205:
.L_01F9:
pop ebx
mov esp, ebp
pop ebp
ret 24

.section .bss
.balign 4
	.lcomm	_Lt_02CC,4
.balign 4
	.lcomm	_Lt_02CF,12
.balign 4
	.lcomm	_Lt_02D0,12

.section .text
.balign 16
_HADDTOKEN@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0233:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02D1
call _fb_StrAssign@20
cmp dword ptr [ebp+16], 0
jne .L_0236
push 0
push 0
call _LEXGETTEXT@0
push eax
push -1
push offset _Lt_02D2
call _fb_StrAssign@20
jmp .L_0235
.L_0236:
push 0
push 0
push dword ptr [ebp+16]
push -1
push offset _Lt_02D2
call _fb_StrAssign@20
.L_0235:
push -1
push offset _Lt_02D2
call _fb_StrLen@8
test eax, eax
jle .L_0238
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 32
jle .L_023C
.L_023D:
cmp dword ptr [ebp-8], 257
je .L_023C
.L_023E:
cmp dword ptr [ebp-8], 256
jne .L_023B
.L_023C:
jmp .L_0239
.L_023B:
cmp dword ptr [ebp+12], 0
je .L_0241
push 0
push 3
push offset _Lt_0214
push -1
push offset _Lt_02D1
call _fb_StrConcatAssign@20
.L_0241:
.L_0240:
cmp dword ptr [ebp+8], 0
je .L_0243
push 0
push 9
push offset _Lt_0244
push -1
push offset _Lt_02D1
call _fb_StrConcatAssign@20
jmp .L_0242
.L_0243:
push 0
push 8
push offset _Lt_0245
push -1
push offset _Lt_02D1
call _fb_StrConcatAssign@20
.L_0242:
push 0
push -1
push offset _Lt_02D2
push -1
push offset _Lt_02D1
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0222
push -1
push offset _Lt_02D1
call _fb_StrConcatAssign@20
.L_023F:
.L_0239:
.L_0238:
.L_0237:
mov eax, dword ptr [_Lt_02D1]
mov dword ptr [ebp-4], eax
.L_0234:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_02D1,12
.balign 4
	.lcomm	_Lt_02D2,12

.section .text
.balign 16
_GETNOTALLOWEDMSG@8:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0278:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.L_027D:
push dword ptr [ebp-28]
call _FBGETLANGOPTIONS@4
and eax, dword ptr [ebp+8]
test eax, eax
je .L_027F
cmp dword ptr [ebp-32], 0
jle .L_0281
push 0
push 5
push offset _Lt_0282
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_0281:
.L_0280:
push 0
push -1
push dword ptr [ebp-28]
call _FBGETLANGNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [ebp-32]
.L_027F:
.L_027E:
.L_027B:
inc dword ptr [ebp-28]
.L_027A:
cmp dword ptr [ebp-28], 3
jle .L_027D
.L_027C:
push 0
push -1
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push 0
call _HADDTOKEN@12
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0279
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0279:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMAKEPARAMDESC@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_0286:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0289
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0287
.L_0289:
.L_0288:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02D5
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 0
je .L_028B
push 0
push -1
push 2
push offset _Lt_0207
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02D5
call _fb_StrAssign@20
.L_028B:
.L_028A:
cmp dword ptr [ebp-24], 0
jle .L_028E
push 0
push 14
push offset _Lt_028F
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-24]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-20], 0
jne .L_0291
cmp dword ptr [ebp-12], 0
je .L_0293
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
je .L_0294
mov dword ptr [ebp-40], 0
jmp .L_02D4
.L_0294:
mov dword ptr [ebp-40], 1
.L_02D4:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
.L_0296:
cmp dword ptr [ebp-32], 0
je .L_0297
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-36], eax
jne .L_0299
jmp .L_0297
.L_0299:
.L_0298:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-32], ebx
jmp .L_0296
.L_0297:
cmp dword ptr [ebp-32], 0
je .L_029B
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
.L_029B:
.L_029A:
.L_0293:
.L_0292:
.L_0291:
.L_0290:
cmp dword ptr [ebp-20], 0
je .L_029D
push 0
push dword ptr [ebp-20]
call _fb_StrLen@8
test eax, eax
jle .L_029F
push 0
push 3
push offset _Lt_02A0
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp-20]
push -1
push offset _Lt_02D5
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02D5
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_025C
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
.L_029F:
.L_029E:
.L_029D:
.L_029C:
.L_028E:
.L_028D:
cmp dword ptr [ebp-12], 0
je .L_02A3
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .L_02A5
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+16], 0
je .L_02A7
push 4
push offset _Lt_02A8
push -1
push 3
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_02AA
mov dword ptr [ebp-32], 0
.L_02AA:
.L_02A9:
jmp .L_02A6
.L_02A7:
mov dword ptr [ebp-32], 0
.L_02A6:
jmp .L_02A4
.L_02A5:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .L_02AC
push 0
push -1
push dword ptr [ebp-12]
call _SYMBPROCPTRTOSTR@4
push eax
push -1
push offset _Lt_02D6
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_02D6]
mov dword ptr [ebp-16], eax
jmp .L_02AB
.L_02AC:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 4124
test ebx, ebx
je .L_02AD
push 0
push -1
push dword ptr [ebp-12]
call _SYMBMETHODTOSTR@4
push eax
push -1
push offset _Lt_02D6
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_02D6]
mov dword ptr [ebp-16], eax
.L_02AD:
.L_02AB:
.L_02A4:
cmp dword ptr [ebp-32], 0
je .L_02AF
cmp dword ptr [ebp-16], 0
jne .L_02B1
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .L_02B3
push 0
push dword ptr [ebp-16]
call _fb_StrLen@8
test eax, eax
jne .L_02B5
push dword ptr [ebp-12]
call _SYMBGETMANGLEDNAME@4
mov dword ptr [ebp-16], eax
.L_02B5:
.L_02B4:
.L_02B3:
.L_02B2:
jmp .L_02B0
.L_02B1:
mov dword ptr [ebp-28], 0
.L_02B0:
cmp dword ptr [ebp-16], 0
je .L_02B7
cmp dword ptr [ebp-24], 0
jle .L_02B9
push 0
push 5
push offset _Lt_02BA
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
.L_02B9:
.L_02B8:
push 0
push -1
push 0
push dword ptr [ebp-16]
push -1
push offset _Lt_02D5
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02D5
call _fb_StrAssign@20
cmp dword ptr [ebp-28], 0
je .L_02BD
push 0
push 3
push offset _Lt_025F
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
.L_02BD:
.L_02BC:
.L_02B7:
.L_02B6:
.L_02AF:
.L_02AE:
jmp .L_02A2
.L_02A3:
cmp dword ptr [ebp-24], 0
jle .L_02BF
push 0
push 5
push offset _Lt_02BA
push -1
push offset _Lt_02D5
call _fb_StrConcatAssign@20
.L_02BF:
.L_02BE:
push 0
push -1
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBKEYWORDGETTEXT@4
push eax
push -1
push offset _Lt_02D5
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_02D5
call _fb_StrAssign@20
.L_02A2:
mov eax, dword ptr [_Lt_02D5]
mov dword ptr [ebp-4], eax
.L_0287:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_02D5,12
.balign 4
	.lcomm	_Lt_02D6,12

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
.balign 4
	.lcomm	_ERRCTX,64

.section .data
.balign 4
_WARNINGMSGS:
.int 2
.int _Lt_0068
.int 2
.int _Lt_0069
.int 2
.int _Lt_006A
.int 2
.int _Lt_006B
.int 1
.int _Lt_006C
.int 2
.int _Lt_006D
.int 2
.int _Lt_006E
.int 2
.int _Lt_006F
.int 2
.int _Lt_0070
.int 1
.int _Lt_0071
.int 1
.int _Lt_0072
.int 1
.int _Lt_0073
.int 1
.int _Lt_0074
.int 2
.int _Lt_0075
.int 1
.int _Lt_0076
.int 1
.int _Lt_0077
.int 1
.int _Lt_0078
.int 2
.int _Lt_0079
.int 2
.int _Lt_007A
.int 3
.int _Lt_007B
.int 3
.int _Lt_007C
.int 1
.int _Lt_007D
.int 3
.int _Lt_007E
.int 3
.int _Lt_007F
.int 1
.int _Lt_0080
.int 1
.int _Lt_0081
.int 1
.int _Lt_0082
.int 1
.int _Lt_0083
.int 1
.int _Lt_0084
.int 1
.int _Lt_0085
.int 1
.int _Lt_0086
.int 1
.int _Lt_0087
.int 1
.int _Lt_0088
.int 1
.int _Lt_0089
.int 1
.int _Lt_008A
.int 1
.int _Lt_008B
.int 2
.int _Lt_0000
.int 1
.int _Lt_008C
.int 1
.int _Lt_008D
.int 0
.int _Lt_008E
.int 0
.int _Lt_008F
.int 0
.int _Lt_0090
.int 0
.int _Lt_0091
.int 1
.int _Lt_0092
.int 1
.int _Lt_0093
.int 1
.int _Lt_0094
.int 1
.int _Lt_0095
.int 1
.int _Lt_0096
.int 1
.int _Lt_0097
.balign 4
_Lt_0068:	.ascii	"Passing scalar as pointer\0"
.balign 4
_Lt_0069:	.ascii	"Passing pointer to scalar\0"
.balign 4
_Lt_006A:	.ascii	"Passing different pointer types\0"
.balign 4
_Lt_006B:	.ascii	"Suspicious pointer assignment\0"
.balign 4
_Lt_006C:	.ascii	"Implicit conversion\0"
.balign 4
_Lt_006D:	.ascii	"Cannot export symbol without -export option\0"
.balign 4
_Lt_006E:	.ascii	"Identifier's name too big, truncated\0"
.balign 4
_Lt_006F:	.ascii	"Literal number too big, truncated\0"
.balign 4
_Lt_0070:	.ascii	"Literal string too big, truncated\0"
.balign 4
_Lt_0071:	.ascii	"UDT with pointer, var-len string, or var-len array fields\0"
.balign 4
_Lt_0072:	.ascii	"Implicit variable allocation\0"
.balign 4
_Lt_0073:	.ascii	"Missing closing quote in literal string\0"
.balign 4
_Lt_0074:	.ascii	"Function result was not explicitly set\0"
.balign 4
_Lt_0075:	.ascii	"Branch crossing local variable definition\0"
.balign 4
_Lt_0076:	.ascii	"No explicit BYREF or BYVAL\0"
.balign 4
_Lt_0077:	.ascii	"Possible escape sequence found in\0"
.balign 4
_Lt_0078:	.ascii	"The type length is too large, consider passing BYREF\0"
.balign 4
_Lt_0079:	.ascii	"The length of the parameters list is too large, consider passing UDT's BYREF\0"
.balign 4
_Lt_007A:	.ascii	"The ANY initializer has no effect on UDT's with default constructors\0"
.balign 4
_Lt_007B:	.ascii	"Object files or libraries with mixed multithreading (-mt) options\0"
.balign 4
_Lt_007C:	.ascii	"Object files or libraries with mixed language (-lang) options\0"
.balign 4
_Lt_007D:	.ascii	"Deleting ANY pointers is undefined\0"
.balign 4
_Lt_007E:	.ascii	"Array too large for stack, consider making it var-len or SHARED\0"
.balign 4
_Lt_007F:	.ascii	"Variable too large for stack, consider making it SHARED\0"
.balign 4
_Lt_0080:	.ascii	"Overflow in constant conversion\0"
.balign 4
_Lt_0081:	.ascii	"Variable following NEXT is meaningless\0"
.balign 4
_Lt_0082:	.ascii	"Cast to non-pointer\0"
.balign 4
_Lt_0083:	.ascii	"Return method mismatch\0"
.balign 4
_Lt_0084:	.ascii	"Passing Pointer\0"
.balign 4
_Lt_0085:	.ascii	"Command line option overrides directive\0"
.balign 4
_Lt_0086:	.ascii	"Directive ignored after first pass\0"
.balign 4
_Lt_0087:	.ascii	"'IF' statement found directly after multi-line 'ELSE'\0"
.balign 4
_Lt_0088:	.ascii	"Shift value greater than or equal to number of bits in data type\0"
.balign 4
_Lt_0089:	.ascii	"'=' parsed as equality operator in function argument, not assignment to BYREF function result\0"
.balign 4
_Lt_008A:	.ascii	"Mixing signed/unsigned operands\0"
.balign 4
_Lt_008B:	.ascii	"Mismatching parameter initializer\0"
.balign 4
_Lt_008C:	.ascii	"Suspicious logic operation, mixed boolean and non-boolean operands\0"
.balign 4
_Lt_008D:	.ascii	"Redefinition of intrinsic\0"
.balign 4
_Lt_008E:	.ascii	"CONST qualifier discarded\0"
.balign 4
_Lt_008F:	.ascii	"Return type mismatch\0"
.balign 4
_Lt_0090:	.ascii	"Calling convention mismatch\0"
.balign 4
_Lt_0091:	.ascii	"Argument count mismatch\0"
.balign 4
_Lt_0092:	.ascii	"Suffix ignored\0"
.balign 4
_Lt_0093:	.ascii	"FOR counter variable is unable to exceed limit value\0"
.balign 4
_Lt_0094:	.ascii	"#cmdline ignored\0"
.balign 4
_Lt_0095:	.ascii	"Use of reserved global or backend symbol\0"
.balign 4
_Lt_0096:	.ascii	"Expected digit\0"
.balign 4
_Lt_0097:	.ascii	"Up-casting discards initializer(s)\0"
.balign 4
_ERRORMSGS:
.int _Lt_0091
.int _Lt_0099
.int _Lt_009A
.int _Lt_009B
.int _Lt_009C
.int _Lt_009D
.int _Lt_009E
.int _Lt_009F
.int _Lt_00A0
.int _Lt_00A1
.int _Lt_00A2
.int _Lt_00A3
.int _Lt_00A4
.int _Lt_00A5
.int _Lt_00A6
.int _Lt_00A7
.int _Lt_00A8
.int _Lt_00A9
.int _Lt_00AA
.int _Lt_00AB
.int _Lt_00AC
.int _Lt_00AD
.int _Lt_00AE
.int _Lt_00AF
.int _Lt_00B0
.int _Lt_00B1
.int _Lt_00B2
.int _Lt_00B3
.int _Lt_00B4
.int _Lt_00B5
.int _Lt_00B6
.int _Lt_00B7
.int _Lt_00B8
.int _Lt_00B9
.int _Lt_00BA
.int _Lt_00BB
.int _Lt_00BC
.int _Lt_00BD
.int _Lt_00BE
.int _Lt_00BF
.int _Lt_00C0
.int _Lt_00C1
.int _Lt_00C2
.int _Lt_00C3
.int _Lt_00C4
.int _Lt_00C5
.int _Lt_00C6
.int _Lt_00C7
.int _Lt_00C8
.int _Lt_00C9
.int _Lt_00CA
.int _Lt_00CB
.int _Lt_00CC
.int _Lt_00CD
.int _Lt_00CE
.int _Lt_00CF
.int _Lt_00D0
.int _Lt_00AB
.int _Lt_00D1
.int _Lt_00D2
.int _Lt_00D3
.int _Lt_00D4
.int _Lt_00D5
.int _Lt_00D6
.int _Lt_00D7
.int _Lt_00D8
.int _Lt_00D9
.int _Lt_00DA
.int _Lt_00DB
.int _Lt_00DC
.int _Lt_00DD
.int _Lt_00DE
.int _Lt_00DF
.int _Lt_00E0
.int _Lt_00E1
.int _Lt_00E2
.int _Lt_00E3
.int _Lt_00E4
.int _Lt_00E5
.int _Lt_00E6
.int _Lt_00E7
.int _Lt_00E8
.int _Lt_00E9
.int _Lt_00EA
.int _Lt_00EB
.int _Lt_00EC
.int _Lt_00ED
.int _Lt_00EE
.int _Lt_00EF
.int _Lt_00F0
.int _Lt_00F1
.int _Lt_00F2
.int _Lt_00F3
.int _Lt_00F4
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.int _Lt_00FA
.int _Lt_00FB
.int _Lt_00FC
.int _Lt_00FD
.int _Lt_00FE
.int _Lt_00FF
.int _Lt_0100
.int _Lt_0101
.int _Lt_0102
.int _Lt_0103
.int _Lt_0104
.int _Lt_0105
.int _Lt_0106
.int _Lt_0107
.int _Lt_0108
.int _Lt_0109
.int _Lt_010A
.int _Lt_010B
.int _Lt_010C
.int _Lt_010D
.int _Lt_010E
.int _Lt_010F
.int _Lt_0110
.int _Lt_0111
.int _Lt_0112
.int _Lt_0113
.int _Lt_0114
.int _Lt_0115
.int _Lt_0116
.int _Lt_0117
.int _Lt_0118
.int _Lt_0119
.int _Lt_011A
.int _Lt_011B
.int _Lt_011C
.int _Lt_011D
.int _Lt_011E
.int _Lt_011F
.int _Lt_0120
.int _Lt_0121
.int _Lt_0122
.int _Lt_0123
.int _Lt_0124
.int _Lt_0125
.int _Lt_0126
.int _Lt_0127
.int _Lt_0128
.int _Lt_0129
.int _Lt_012A
.int _Lt_012B
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
.int _Lt_0149
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0150
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0155
.int _Lt_0156
.int _Lt_0157
.int _Lt_0158
.int _Lt_0159
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
.int _Lt_01A4
.int _Lt_01A5
.int _Lt_01A6
.int _Lt_01A7
.int _Lt_01A8
.int _Lt_01A9
.int _Lt_01AA
.int _Lt_01AB
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
.int _Lt_01CD
.int _Lt_01CE
.int _Lt_01CF
.int _Lt_01D0
.int _Lt_01D1
.int _Lt_01D2
.int _Lt_01D3
.int _Lt_01D4
.int _Lt_01D5
.int _Lt_01D6
.int _Lt_01D7
.int _Lt_01D8
.int _Lt_01D9
.int _Lt_01DA
.int _Lt_01DB
.int _Lt_01DC
.int _Lt_01DD
.int _Lt_01DE
.int _Lt_01DF
.int _Lt_01E0
.int _Lt_01E1
.balign 4
_Lt_0099:	.ascii	"Expected End-of-File\0"
.balign 4
_Lt_009A:	.ascii	"Expected End-of-Line\0"
.balign 4
_Lt_009B:	.ascii	"Duplicated definition\0"
.balign 4
_Lt_009C:	.ascii	"Expected 'AS'\0"
.balign 4
_Lt_009D:	.ascii	"Expected '('\0"
.balign 4
_Lt_009E:	.ascii	"Expected ')'\0"
.balign 4
_Lt_009F:	.ascii	"Undefined symbol\0"
.balign 4
_Lt_00A0:	.ascii	"Expected expression\0"
.balign 4
_Lt_00A1:	.ascii	"Expected '='\0"
.balign 4
_Lt_00A2:	.ascii	"Expected constant\0"
.balign 4
_Lt_00A3:	.ascii	"Expected 'TO'\0"
.balign 4
_Lt_00A4:	.ascii	"Expected 'NEXT'\0"
.balign 4
_Lt_00A5:	.ascii	"Expected identifier\0"
.balign 4
_Lt_00A6:	.ascii	"Expected '-'\0"
.balign 4
_Lt_00A7:	.ascii	"Expected ','\0"
.balign 4
_Lt_00A8:	.ascii	"Syntax error\0"
.balign 4
_Lt_00A9:	.ascii	"Element not defined\0"
.balign 4
_Lt_00AA:	.ascii	"Expected 'END TYPE' or 'END UNION'\0"
.balign 4
_Lt_00AB:	.ascii	"Type mismatch\0"
.balign 4
_Lt_00AC:	.ascii	"Internal!\0"
.balign 4
_Lt_00AD:	.ascii	"Parameter type mismatch\0"
.balign 4
_Lt_00AE:	.ascii	"File not found\0"
.balign 4
_Lt_00AF:	.ascii	"Invalid data types\0"
.balign 4
_Lt_00B0:	.ascii	"Invalid character\0"
.balign 4
_Lt_00B1:	.ascii	"File access error\0"
.balign 4
_Lt_00B2:	.ascii	"Recursion level too deep\0"
.balign 4
_Lt_00B3:	.ascii	"Expected pointer\0"
.balign 4
_Lt_00B4:	.ascii	"Expected 'LOOP'\0"
.balign 4
_Lt_00B5:	.ascii	"Expected 'WEND'\0"
.balign 4
_Lt_00B6:	.ascii	"Expected 'THEN'\0"
.balign 4
_Lt_00B7:	.ascii	"Expected 'END IF'\0"
.balign 4
_Lt_00B8:	.ascii	"Illegal 'END'\0"
.balign 4
_Lt_00B9:	.ascii	"Expected 'CASE'\0"
.balign 4
_Lt_00BA:	.ascii	"Expected 'END SELECT'\0"
.balign 4
_Lt_00BB:	.ascii	"Wrong number of dimensions\0"
.balign 4
_Lt_00BC:	.ascii	"Array boundaries do not match the original EXTERN declaration\0"
.balign 4
_Lt_00BD:	.ascii	"'SUB' or 'FUNCTION' without 'END SUB' or 'END FUNCTION'\0"
.balign 4
_Lt_00BE:	.ascii	"Expected 'END SUB' or 'END FUNCTION'\0"
.balign 4
_Lt_00BF:	.ascii	"Return type here does not match DECLARE prototype\0"
.balign 4
_Lt_00C0:	.ascii	"Calling convention does not match DECLARE prototype\0"
.balign 4
_Lt_00C1:	.ascii	"Variable not declared\0"
.balign 4
_Lt_00C2:	.ascii	"Variable required\0"
.balign 4
_Lt_00C3:	.ascii	"Illegal outside a compound statement\0"
.balign 4
_Lt_00C4:	.ascii	"Expected 'END ASM'\0"
.balign 4
_Lt_00C5:	.ascii	"Function not declared\0"
.balign 4
_Lt_00C6:	.ascii	"Expected ';'\0"
.balign 4
_Lt_00C7:	.ascii	"Undefined label\0"
.balign 4
_Lt_00C8:	.ascii	"Too many array dimensions\0"
.balign 4
_Lt_00C9:	.ascii	"Array too big\0"
.balign 4
_Lt_00CA:	.ascii	"User Defined Type too big\0"
.balign 4
_Lt_00CB:	.ascii	"Expected scalar counter\0"
.balign 4
_Lt_00CC:	.ascii	"Illegal outside a CONSTRUCTOR, DESTRUCTOR, FUNCTION, OPERATOR, PROPERTY or SUB block\0"
.balign 4
_Lt_00CD:	.ascii	"Expected var-len array\0"
.balign 4
_Lt_00CE:	.ascii	"Fixed-len strings cannot be returned from functions\0"
.balign 4
_Lt_00CF:	.ascii	"Array already dimensioned\0"
.balign 4
_Lt_00D0:	.ascii	"Illegal without the -ex option\0"
.balign 4
_Lt_00D1:	.ascii	"Illegal specification\0"
.balign 4
_Lt_00D2:	.ascii	"Expected 'END WITH'\0"
.balign 4
_Lt_00D3:	.ascii	"Illegal inside functions\0"
.balign 4
_Lt_00D4:	.ascii	"Statement in between SELECT and first CASE\0"
.balign 4
_Lt_00D5:	.ascii	"Expected array\0"
.balign 4
_Lt_00D6:	.ascii	"Expected '{'\0"
.balign 4
_Lt_00D7:	.ascii	"Expected '}'\0"
.balign 4
_Lt_00D8:	.ascii	"Expected ']'\0"
.balign 4
_Lt_00D9:	.ascii	"Too many expressions\0"
.balign 4
_Lt_00DA:	.ascii	"Expected explicit result type\0"
.balign 4
_Lt_00DB:	.ascii	"Range too large\0"
.balign 4
_Lt_00DC:	.ascii	"Forward references not allowed\0"
.balign 4
_Lt_00DD:	.ascii	"Incomplete type\0"
.balign 4
_Lt_00DE:	.ascii	"Array not dimensioned\0"
.balign 4
_Lt_00DF:	.ascii	"Array access, index expected\0"
.balign 4
_Lt_00E0:	.ascii	"Expected 'END ENUM'\0"
.balign 4
_Lt_00E1:	.ascii	"Var-len arrays cannot be initialized\0"
.balign 4
_Lt_00E2:	.ascii	"'...' ellipsis upper bound given for dynamic array (this is not supported)\0"
.balign 4
_Lt_00E3:	.ascii	"'...' ellipsis upper bound given for array field (this is not supported)\0"
.balign 4
_Lt_00E4:	.ascii	"Invalid bitfield\0"
.balign 4
_Lt_00E5:	.ascii	"Too many parameters\0"
.balign 4
_Lt_00E6:	.ascii	"Macro text too long\0"
.balign 4
_Lt_00E7:	.ascii	"Invalid command-line option\0"
.balign 4
_Lt_00E8:	.ascii	"Selected non-x86 CPU when compiling for DOS\0"
.balign 4
_Lt_00E9:	.ascii	"Selected -gen gas|gas64 ASM backend is incompatible with CPU\0"
.balign 4
_Lt_00EA:	.ascii	"-asm att used for -gen gas, but -gen gas only supports -asm intel\0"
.balign 4
_Lt_00EB:	.ascii	"-pic used when making executable (only works when making a shared library)\0"
.balign 4
_Lt_00EC:	.ascii	"-pic used, but not supported by target system (only works for non-x86 Unixes)\0"
.balign 4
_Lt_00ED:	.ascii	"Var-len strings cannot be initialized\0"
.balign 4
_Lt_00EE:	.ascii	"Recursive TYPE or UNION not allowed\0"
.balign 4
_Lt_00EF:	.ascii	"Recursive DEFINE not allowed\0"
.balign 4
_Lt_00F0:	.ascii	"Identifier cannot include periods\0"
.balign 4
_Lt_00F1:	.ascii	"Executable not found\0"
.balign 4
_Lt_00F2:	.ascii	"Array out-of-bounds\0"
.balign 4
_Lt_00F3:	.ascii	"Missing command-line option for\0"
.balign 4
_Lt_00F4:	.ascii	"Expected 'ANY'\0"
.balign 4
_Lt_00F5:	.ascii	"Expected 'END SCOPE'\0"
.balign 4
_Lt_00F6:	.ascii	"Illegal inside a compound statement or scoped block\0"
.balign 4
_Lt_00F7:	.ascii	"UDT function results cannot be passed by reference\0"
.balign 4
_Lt_00F8:	.ascii	"Ambiguous call to overloaded function\0"
.balign 4
_Lt_00F9:	.ascii	"No matching overloaded function\0"
.balign 4
_Lt_00FA:	.ascii	"Division by zero\0"
.balign 4
_Lt_00FB:	.ascii	"Cannot pop stack, underflow\0"
.balign 4
_Lt_00FC:	.ascii	"UDT's containing var-len string fields cannot be initialized\0"
.balign 4
_Lt_00FD:	.ascii	"Branching to scope block containing local variables\0"
.balign 4
_Lt_00FE:	.ascii	"Branching to other functions or to module-level\0"
.balign 4
_Lt_00FF:	.ascii	"Branch crossing local array, var-len string or object definition\0"
.balign 4
_Lt_0100:	.ascii	"LOOP without DO\0"
.balign 4
_Lt_0101:	.ascii	"NEXT without FOR\0"
.balign 4
_Lt_0102:	.ascii	"WEND without WHILE\0"
.balign 4
_Lt_0103:	.ascii	"END WITH without WITH\0"
.balign 4
_Lt_0104:	.ascii	"END IF without IF\0"
.balign 4
_Lt_0105:	.ascii	"END SELECT without SELECT\0"
.balign 4
_Lt_0106:	.ascii	"END SUB or FUNCTION without SUB or FUNCTION\0"
.balign 4
_Lt_0107:	.ascii	"END SCOPE without SCOPE\0"
.balign 4
_Lt_0108:	.ascii	"END NAMESPACE without NAMESPACE\0"
.balign 4
_Lt_0109:	.ascii	"END EXTERN without EXTERN\0"
.balign 4
_Lt_010A:	.ascii	"ELSEIF without IF\0"
.balign 4
_Lt_010B:	.ascii	"ELSE without IF\0"
.balign 4
_Lt_010C:	.ascii	"CASE without SELECT\0"
.balign 4
_Lt_010D:	.ascii	"Cannot modify a constant\0"
.balign 4
_Lt_010E:	.ascii	"Expected period ('.')\0"
.balign 4
_Lt_010F:	.ascii	"Expected 'END NAMESPACE'\0"
.balign 4
_Lt_0110:	.ascii	"Illegal inside a NAMESPACE block\0"
.balign 4
_Lt_0111:	.ascii	"Symbols defined inside namespaces cannot be removed\0"
.balign 4
_Lt_0112:	.ascii	"Expected 'END EXTERN'\0"
.balign 4
_Lt_0113:	.ascii	"Expected 'END SUB'\0"
.balign 4
_Lt_0114:	.ascii	"Expected 'END FUNCTION'\0"
.balign 4
_Lt_0115:	.ascii	"Expected 'END CONSTRUCTOR'\0"
.balign 4
_Lt_0116:	.ascii	"Expected 'END DESTRUCTOR'\0"
.balign 4
_Lt_0117:	.ascii	"Expected 'END OPERATOR'\0"
.balign 4
_Lt_0118:	.ascii	"Expected 'END PROPERTY'\0"
.balign 4
_Lt_0119:	.ascii	"Declaration outside the original namespace\0"
.balign 4
_Lt_011A:	.ascii	"No end of multi-line comment, expected \"'/\"\0"
.balign 4
_Lt_011B:	.ascii	"Too many errors, exiting\0"
.balign 4
_Lt_011C:	.ascii	"Expected 'ENDMACRO'\0"
.balign 4
_Lt_011D:	.ascii	"EXTERN or COMMON variables cannot be initialized\0"
.balign 4
_Lt_011E:	.ascii	"EXTERN or COMMON dynamic arrays cannot have initial bounds\0"
.balign 4
_Lt_011F:	.ascii	"At least one parameter must be a user-defined type\0"
.balign 4
_Lt_0120:	.ascii	"Parameter or result must be a user-defined type\0"
.balign 4
_Lt_0121:	.ascii	"Both parameters can't be of the same type\0"
.balign 4
_Lt_0122:	.ascii	"Parameter and result can't be of the same type\0"
.balign 4
_Lt_0123:	.ascii	"Invalid result type for this operator\0"
.balign 4
_Lt_0124:	.ascii	"Invalid parameter type, it must be the same as the parent TYPE/CLASS\0"
.balign 4
_Lt_0125:	.ascii	"Vararg parameters are not allowed in overloaded functions\0"
.balign 4
_Lt_0126:	.ascii	"Illegal outside an OPERATOR block\0"
.balign 4
_Lt_0127:	.ascii	"Parameter cannot be optional\0"
.balign 4
_Lt_0128:	.ascii	"Only valid in -lang\0"
.balign 4
_Lt_0129:	.ascii	"Default types or suffixes are only valid in -lang\0"
.balign 4
_Lt_012A:	.ascii	"Suffixes are only valid in -lang\0"
.balign 4
_Lt_012B:	.ascii	"Implicit variables are only valid in -lang\0"
.balign 4
_Lt_012C:	.ascii	"Auto variables are only valid in -lang\0"
.balign 4
_Lt_012D:	.ascii	"Invalid array index\0"
.balign 4
_Lt_012E:	.ascii	"Operator must be a member function\0"
.balign 4
_Lt_012F:	.ascii	"Operator cannot be a member function\0"
.balign 4
_Lt_0130:	.ascii	"Method declared in anonymous UDT\0"
.balign 4
_Lt_0131:	.ascii	"Constant declared in anonymous UDT\0"
.balign 4
_Lt_0132:	.ascii	"Static variable declared in anonymous UDT\0"
.balign 4
_Lt_0133:	.ascii	"Expected operator\0"
.balign 4
_Lt_0134:	.ascii	"Declaration outside the original namespace or class\0"
.balign 4
_Lt_0135:	.ascii	"A destructor should not have any parameters\0"
.balign 4
_Lt_0136:	.ascii	"Expected class or UDT identifier\0"
.balign 4
_Lt_0137:	.ascii	"Var-len strings cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0138:	.ascii	"Dynamic arrays cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0139:	.ascii	"Fields with constructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_013A:	.ascii	"Fields with destructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_013B:	.ascii	"Illegal outside a CONSTRUCTOR block\0"
.balign 4
_Lt_013C:	.ascii	"Illegal outside a DESTRUCTOR block\0"
.balign 4
_Lt_013D:	.ascii	"UDT's with methods must have unique names\0"
.balign 4
_Lt_013E:	.ascii	"Parent is not a class or UDT\0"
.balign 4
_Lt_013F:	.ascii	"CONSTRUCTOR() chain call not at top of constructor\0"
.balign 4
_Lt_0140:	.ascii	"BASE() initializer not at top of constructor\0"
.balign 4
_Lt_0141:	.ascii	"REDIM on UDT with non-CDECL constructor\0"
.balign 4
_Lt_0142:	.ascii	"REDIM on UDT with non-CDECL destructor\0"
.balign 4
_Lt_0143:	.ascii	"REDIM on UDT with non-parameterless default constructor\0"
.balign 4
_Lt_0144:	.ascii	"ERASE on UDT with non-CDECL constructor\0"
.balign 4
_Lt_0145:	.ascii	"ERASE on UDT with non-CDECL destructor\0"
.balign 4
_Lt_0146:	.ascii	"ERASE on UDT with non-parameterless default constructor\0"
.balign 4
_Lt_0147:	.ascii	"This symbol cannot be undefined\0"
.balign 4
_Lt_0149:	.ascii	"RETURN mixed with 'FUNCTION =' or EXIT FUNCTION (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
_Lt_014B:	.ascii	"'FUNCTION =' or EXIT FUNCTION mixed with RETURN (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
_Lt_014C:	.ascii	"Missing RETURN to copy-construct function result\0"
.balign 4
_Lt_014D:	.ascii	"Invalid assignment/conversion\0"
.balign 4
_Lt_014E:	.ascii	"Invalid array subscript\0"
.balign 4
_Lt_014F:	.ascii	"TYPE or CLASS has no default constructor\0"
.balign 4
_Lt_0150:	.ascii	"Function result TYPE has no default constructor\0"
.balign 4
_Lt_0151:	.ascii	"Missing BASE() initializer (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0152:	.ascii	"Missing default constructor implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0153:	.ascii	"Missing UDT.constructor(byref as UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0155:	.ascii	"Missing UDT.constructor(byref as const UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0156:	.ascii	"Invalid priority attribute\0"
.balign 4
_Lt_0157:	.ascii	"PROPERTY GET should have no parameter, or just one if indexed\0"
.balign 4
_Lt_0158:	.ascii	"PROPERTY SET should have one parameter, or just two if indexed\0"
.balign 4
_Lt_0159:	.ascii	"Expected 'PROPERTY'\0"
.balign 4
_Lt_015A:	.ascii	"Illegal outside a PROPERTY block\0"
.balign 4
_Lt_015B:	.ascii	"PROPERTY has no GET method/accessor\0"
.balign 4
_Lt_015C:	.ascii	"PROPERTY has no SET method/accessor\0"
.balign 4
_Lt_015D:	.ascii	"PROPERTY has no indexed GET method/accessor\0"
.balign 4
_Lt_015E:	.ascii	"PROPERTY has no indexed SET method/accessor\0"
.balign 4
_Lt_015F:	.ascii	"Missing overloaded operator: \0"
.balign 4
_Lt_0160:	.ascii	"The NEW[] operator does not allow explicit calls to constructors\0"
.balign 4
_Lt_0161:	.ascii	"The NEW[] operator only supports the { ANY } initialization\0"
.balign 4
_Lt_0162:	.ascii	"The NEW operator cannot be used with fixed-length strings\0"
.balign 4
_Lt_0163:	.ascii	"Illegal member access\0"
.balign 4
_Lt_0164:	.ascii	"Expected ':'\0"
.balign 4
_Lt_0165:	.ascii	"The default constructor has no public access\0"
.balign 4
_Lt_0166:	.ascii	"Constructor has no public access\0"
.balign 4
_Lt_0167:	.ascii	"Destructor has no public access\0"
.balign 4
_Lt_0168:	.ascii	"Accessing base UDT's private default constructor\0"
.balign 4
_Lt_0169:	.ascii	"Accessing base UDT's private destructor\0"
.balign 4
_Lt_016A:	.ascii	"Illegal non-static member access\0"
.balign 4
_Lt_016B:	.ascii	"Constructor declared ABSTRACT\0"
.balign 4
_Lt_016C:	.ascii	"Constructor declared VIRTUAL\0"
.balign 4
_Lt_016D:	.ascii	"Destructor declared ABSTRACT\0"
.balign 4
_Lt_016E:	.ascii	"Member cannot be static\0"
.balign 4
_Lt_016F:	.ascii	"Member isn't static\0"
.balign 4
_Lt_0170:	.ascii	"Only static members can be accessed from static functions and parameter initializers\0"
.balign 4
_Lt_0171:	.ascii	"The PRIVATE and PUBLIC attributes are not allowed with REDIM, COMMON or EXTERN\0"
.balign 4
_Lt_0172:	.ascii	"STATIC used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0173:	.ascii	"CONST used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0174:	.ascii	"VIRTUAL used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0175:	.ascii	"ABSTRACT used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0176:	.ascii	"Method declared VIRTUAL, but UDT does not extend OBJECT\0"
.balign 4
_Lt_0177:	.ascii	"Method declared ABSTRACT, but UDT does not extend OBJECT\0"
.balign 4
_Lt_0178:	.ascii	"Not overriding any virtual method\0"
.balign 4
_Lt_0179:	.ascii	"Implemented body for an ABSTRACT method\0"
.balign 4
_Lt_017A:	.ascii	"Override has different return type than overridden method\0"
.balign 4
_Lt_017B:	.ascii	"Override has different calling convention than overridden method\0"
.balign 4
_Lt_017C:	.ascii	"Implicit destructor override would have different calling convention\0"
.balign 4
_Lt_017D:	.ascii	"Implicit LET operator override would have different calling convention\0"
.balign 4
_Lt_017E:	.ascii	"Override is not a CONST member like the overridden method\0"
.balign 4
_Lt_017F:	.ascii	"Override is a CONST member, but the overridden method is not\0"
.balign 4
_Lt_0180:	.ascii	"Override has different parameters than overridden method\0"
.balign 4
_Lt_0181:	.ascii	"This operator cannot be STATIC\0"
.balign 4
_Lt_0182:	.ascii	"This operator is implicitly STATIC and cannot be VIRTUAL or ABSTRACT\0"
.balign 4
_Lt_0183:	.ascii	"This operator is implicitly STATIC and cannot be CONST\0"
.balign 4
_Lt_0184:	.ascii	"Parameter must be an integer\0"
.balign 4
_Lt_0185:	.ascii	"Parameter must be a pointer\0"
.balign 4
_Lt_0186:	.ascii	"Expected initializer\0"
.balign 4
_Lt_0187:	.ascii	"Fields cannot be named as keywords in TYPE's that contain member functions or in CLASS'es\0"
.balign 4
_Lt_0188:	.ascii	"Illegal outside a FOR compound statement\0"
.balign 4
_Lt_0189:	.ascii	"Illegal outside a DO compound statement\0"
.balign 4
_Lt_018A:	.ascii	"Illegal outside a WHILE compound statement\0"
.balign 4
_Lt_018B:	.ascii	"Illegal outside a SELECT compound statement\0"
.balign 4
_Lt_018C:	.ascii	"Expected 'FOR'\0"
.balign 4
_Lt_018D:	.ascii	"Expected 'DO'\0"
.balign 4
_Lt_018E:	.ascii	"Expected 'WHILE'\0"
.balign 4
_Lt_018F:	.ascii	"Expected 'SELECT'\0"
.balign 4
_Lt_0190:	.ascii	"No outer FOR compound statement found\0"
.balign 4
_Lt_0191:	.ascii	"No outer DO compound statement found\0"
.balign 4
_Lt_0192:	.ascii	"No outer WHILE compound statement found\0"
.balign 4
_Lt_0193:	.ascii	"No outer SELECT compound statement found\0"
.balign 4
_Lt_0194:	.ascii	"Expected 'CONSTRUCTOR', 'DESTRUCTOR', 'DO', 'FOR', 'FUNCTION', 'OPERATOR', 'PROPERTY', 'SELECT', 'SUB' or 'WHILE'\0"
.balign 4
_Lt_0195:	.ascii	"Expected 'DO', 'FOR' or 'WHILE'\0"
.balign 4
_Lt_0196:	.ascii	"Illegal outside a SUB block\0"
.balign 4
_Lt_0197:	.ascii	"Illegal outside a FUNCTION block\0"
.balign 4
_Lt_0198:	.ascii	"Ambiguous symbol access, explicit scope resolution required\0"
.balign 4
_Lt_0199:	.ascii	"An ENUM, TYPE or UNION cannot be empty\0"
.balign 4
_Lt_019A:	.ascii	"ENUM's declared inside EXTERN .. END EXTERN blocks don't open new scopes\0"
.balign 4
_Lt_019B:	.ascii	"STATIC used on non-member procedure\0"
.balign 4
_Lt_019C:	.ascii	"CONST used on non-member procedure\0"
.balign 4
_Lt_019D:	.ascii	"ABSTRACT used on non-member procedure\0"
.balign 4
_Lt_019E:	.ascii	"VIRTUAL used on non-member procedure\0"
.balign 4
_Lt_019F:	.ascii	"Invalid initializer\0"
.balign 4
_Lt_01A0:	.ascii	"Objects with default [con|de]structors or methods are only allowed in the module level\0"
.balign 4
_Lt_01A1:	.ascii	"Static member variable in nested UDT (only allowed in toplevel UDTs)\0"
.balign 4
_Lt_01A2:	.ascii	"Symbol not a CLASS, ENUM, TYPE or UNION type\0"
.balign 4
_Lt_01A3:	.ascii	"Too many elements\0"
.balign 4
_Lt_01A4:	.ascii	"Only data members supported\0"
.balign 4
_Lt_01A5:	.ascii	"UNIONs are not allowed\0"
.balign 4
_Lt_01A6:	.ascii	"Arrays are not allowed\0"
.balign 4
_Lt_01A7:	.ascii	"COMMON variables cannot be object instances of CLASS/TYPE's with cons/destructors\0"
.balign 4
_Lt_01A8:	.ascii	"Cloning operators (LET, Copy constructors) can't take a byval arg of the parent's type\0"
.balign 4
_Lt_01A9:	.ascii	"Local symbols can't be referenced\0"
.balign 4
_Lt_01AA:	.ascii	"Expected 'PTR' or 'POINTER'\0"
.balign 4
_Lt_01AB:	.ascii	"Too many levels of pointer indirection\0"
.balign 4
_Lt_01AC:	.ascii	"Dynamic arrays can't be const\0"
.balign 4
_Lt_01AD:	.ascii	"Const UDT cannot invoke non-const method\0"
.balign 4
_Lt_01AE:	.ascii	"Elements must be empty for strings and arrays\0"
.balign 4
_Lt_01AF:	.ascii	"GOSUB disabled, use 'OPTION GOSUB' to enable\0"
.balign 4
_Lt_01B0:	.ascii	"Invalid -lang\0"
.balign 4
_Lt_01B1:	.ascii	"Can't use ANY as initializer in array with ellipsis bound\0"
.balign 4
_Lt_01B2:	.ascii	"Must have initializer with array with ellipsis bound\0"
.balign 4
_Lt_01B3:	.ascii	"Can't use ... as lower bound\0"
.balign 4
_Lt_01B4:	.ascii	"FOR/NEXT variable name mismatch\0"
.balign 4
_Lt_01B5:	.ascii	"Selected option requires an SSE FPU mode\0"
.balign 4
_Lt_01B6:	.ascii	"Expected relational operator ( =, >, <, <>, <=, >= )\0"
.balign 4
_Lt_01B7:	.ascii	"Unsupported statement in -gen gcc mode\0"
.balign 4
_Lt_01B8:	.ascii	"Too many labels\0"
.balign 4
_Lt_01B9:	.ascii	"Unsupported function\0"
.balign 4
_Lt_01BA:	.ascii	"Expected sub\0"
.balign 4
_Lt_01BB:	.ascii	"Expected '#ENDIF'\0"
.balign 4
_Lt_01BC:	.ascii	"Resource file given for target system that does not support them\0"
.balign 4
_Lt_01BD:	.ascii	"-o <file> option without corresponding input file\0"
.balign 4
_Lt_01BE:	.ascii	"Not extending a TYPE/UNION (a TYPE/UNION can only extend other TYPEs/UNIONs)\0"
.balign 4
_Lt_01BF:	.ascii	"Illegal outside a CLASS, TYPE or UNION method\0"
.balign 4
_Lt_01C0:	.ascii	"CLASS, TYPE or UNION not derived\0"
.balign 4
_Lt_01C1:	.ascii	"CLASS, TYPE or UNION has no constructor\0"
.balign 4
_Lt_01C2:	.ascii	"Symbol type has no Run-Time Type Info (RTTI)\0"
.balign 4
_Lt_01C3:	.ascii	"Types have no hierarchical relation\0"
.balign 4
_Lt_01C4:	.ascii	"Expected a CLASS, TYPE or UNION symbol type\0"
.balign 4
_Lt_01C5:	.ascii	"Casting derived UDT pointer from incompatible pointer type\0"
.balign 4
_Lt_01C6:	.ascii	"Casting derived UDT pointer from unrelated UDT pointer type\0"
.balign 4
_Lt_01C7:	.ascii	"Casting derived UDT pointer to incompatible pointer type\0"
.balign 4
_Lt_01C8:	.ascii	"Casting derived UDT pointer to unrelated UDT pointer type\0"
.balign 4
_Lt_01C9:	.ascii	"ALIAS name string is empty\0"
.balign 4
_Lt_01CA:	.ascii	"LIB name string is empty\0"
.balign 4
_Lt_01CB:	.ascii	"UDT has unimplemented abstract methods\0"
.balign 4
_Lt_01CC:	.ascii	"Non-virtual call to ABSTRACT method\0"
.balign 4
_Lt_01CD:	.ascii	"#ASSERT condition failed\0"
.balign 4
_Lt_01CE:	.ascii	"Expected '>'\0"
.balign 4
_Lt_01CF:	.ascii	"Invalid size\0"
.balign 4
_Lt_01D0:	.ascii	"ALIAS name here does not match ALIAS given in DECLARE prototype\0"
.balign 4
_Lt_01D1:	.ascii	"vararg parameters are only allowed in CDECL procedures\0"
.balign 4
_Lt_01D2:	.ascii	"the first parameter in a procedure may not be vararg\0"
.balign 4
_Lt_01D3:	.ascii	"CONST used on constructor (not needed)\0"
.balign 4
_Lt_01D4:	.ascii	"CONST used on destructor (not needed)\0"
.balign 4
_Lt_01D5:	.ascii	"Byref function result not set\0"
.balign 4
_Lt_01D6:	.ascii	"Function result assignment outside of the function\0"
.balign 4
_Lt_01D7:	.ascii	"Type mismatch in byref function result assignment\0"
.balign 4
_Lt_01D8:	.ascii	"-asm att|intel option given, but not supported for this target (only x86 or x86_64)\0"
.balign 4
_Lt_01D9:	.ascii	"Reference not initialized\0"
.balign 4
_Lt_01DA:	.ascii	"Incompatible reference initializer\0"
.balign 4
_Lt_01DB:	.ascii	"Array of references - not supported yet\0"
.balign 4
_Lt_01DC:	.ascii	"Invalid CASE range, start value is greater than the end value\0"
.balign 4
_Lt_01DD:	.ascii	"Fixed-length string combined with BYREF (not supported)\0"
.balign 4
_Lt_01DE:	.ascii	"Illegal use of reserved symbol\0"
.balign 4
_Lt_01DF:	.ascii	"Expected ',' or ';'\0"
.balign 4
_Lt_01E0:	.ascii	"Expected file number expression\0"
.balign 4
_Lt_01E1:	.ascii	"Malformed SOURCE_DATE_EPOCH environment variable\0"
.balign 4
_Lt_0200:	.ascii	"(\0"
.balign 4
_Lt_0203:	.ascii	") \0"
.balign 4
_Lt_0204:	.ascii	"error\0"
.balign 4
_Lt_0207:	.ascii	" \0"
.balign 4
_Lt_0208:	.ascii	": \0"
.balign 4
_Lt_0214:	.ascii	", \0"
.balign 4
_Lt_0218:	.ascii	"\"\0"
.balign 4
_Lt_0221:	.ascii	" in '\0"
.balign 4
_Lt_0222:	.ascii	"'\0"
.balign 4
_Lt_0244:	.ascii	"before '\0"
.balign 4
_Lt_0245:	.ascii	"found '\0"
.balign 4
_Lt_025C:	.ascii	")\0"
.balign 4
_Lt_025F:	.ascii	"()\0"
.balign 4
_Lt_0262:	.ascii	" error\0"
.balign 4
_Lt_0263:	.ascii	" warning \0"
.balign 4
_Lt_0264:	.ascii	"): \0"
.balign 4
_Lt_0282:	.ascii	" or \0"
.balign 4
_Lt_028F:	.ascii	"at parameter \0"
.balign 4
_Lt_02A0:	.ascii	" (\0"
.balign 4
_Lt_02A8:	.ascii	"FB_\0"
.balign 4
_Lt_02BA:	.ascii	" of \0"

.section .ctors
.int _fb_ctor__error
