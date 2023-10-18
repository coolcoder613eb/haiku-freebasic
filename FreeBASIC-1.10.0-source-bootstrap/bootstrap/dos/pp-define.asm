	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPDEFINEINIT
_PPDEFINEINIT:
.L_0067:
push 6
push 388
push 8
lea eax, [_PP+176]
push eax
call _LISTINIT
add esp, 16
.L_0068:
ret
.balign 16

.globl _PPDEFINEEND
_PPDEFINEEND:
.L_0069:
lea eax, [_PP+176]
push eax
call _LISTEND
add esp, 4
.L_006A:
ret
.balign 16

.globl _PPDEFINELOAD
_PPDEFINELOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01D4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_01D7
push 0
push 0
push 89
call _ERRREPORT
add esp, 12
push 0
push 62
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .L_01D5
.L_01D7:
.L_01D6:
cmp dword ptr [_ENV+576], 0
jne .L_01D9
push dword ptr [ebp+8]
call _HLOADDEFINE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_01D8
.L_01D9:
push dword ptr [ebp+8]
call _HLOADDEFINEW
add esp, 4
mov dword ptr [ebp-4], eax
.L_01D8:
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4304], 0
jle .L_01DB
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4292], 0
jne .L_01DD
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+4292], ebx
.L_01DD:
.L_01DC:
.L_01DB:
.L_01DA:
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4268], 4294967295
.L_01D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPDEFINE
_PPDEFINE:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_024C:
push 38
lea eax, [ebp-32]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .L_024F
and dword ptr [ebp-12], -5
.L_024F:
.L_024E:
push dword ptr [ebp-12]
push offset _Lt_027F
call _LEXEATTOKEN
add esp, 8
push offset _Lt_027F
call _HISVALIDSYMBOLNAME
add esp, 4
test eax, eax
jne .L_0251
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .L_024D
.L_0251:
.L_0250:
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0253
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.L_0253:
.L_0252:
cmp dword ptr [ebp-28], 0
je .L_0255
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .L_0257
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .L_0259
push 0
push 1
push 0
push 39
call _ERRREPORTWARN
add esp, 16
push dword ptr [ebp-24]
call _SYMBDELFROMHASH
add esp, 4
mov dword ptr [ebp-24], 0
jmp .L_0258
.L_0259:
push 0
push 1
push 0
push offset _Lt_027F
push 4
call _ERRREPORTEX
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_027F
call _fb_StrAssign
add esp, 20
.L_0258:
.L_0257:
.L_0256:
jmp .L_0254
.L_0255:
mov dword ptr [ebp-24], 0
.L_0254:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .L_025B
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 63
jne .L_025D
push 2
call _LEXSKIPTOKEN
add esp, 4
and dword ptr [ebp-40], -9
.L_025D:
.L_025C:
.L_025B:
.L_025A:
push dword ptr [ebp-12]
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .L_025F
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0261
mov dword ptr [ebp-20], 0
.L_0262:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-44], eax
jmp .L_0266
.L_0268:
call _LEXGETTEXT
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0265
.L_0269:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-20], eax
jmp .L_0265
.L_0266:
cmp dword ptr [ebp-44], 2
ja .L_0269
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.L_026A+eax*4]
_.L_026A:
.int .L_0268
.int .L_0268
.int .L_0268
.L_0265:
cmp dword ptr [ebp-20], 0
jne .L_026C
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
.L_026C:
.L_026B:
push 34
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .L_026E
push 0
push 0
push 79
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_024D
.L_026E:
.L_026D:
cmp dword ptr [ebp-16], 0
jne .L_0270
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_0270:
.L_026F:
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .L_0272
jmp .L_0263
.L_0272:
.L_0271:
push 34
call _LEXSKIPTOKEN
add esp, 4
.L_0264:
jmp .L_0262
.L_0263:
call _HMATCHPARAMELLIPSIS
test eax, eax
je .L_0274
or dword ptr [ebp-40], 4
.L_0274:
.L_0273:
jmp .L_0260
.L_0261:
mov dword ptr [ebp-8], -1
.L_0260:
push 62
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .L_0276
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0275
.L_0276:
push 58
call _LEXSKIPTOKEN
add esp, 4
.L_0275:
jmp .L_025E
.L_025F:
cmp dword ptr [ebp+8], 0
jne .L_0278
push 62
call _LEXGETTOKEN
add esp, 4
cmp eax, 32
jne .L_027A
push 58
call _LEXSKIPTOKEN
add esp, 4
.L_027A:
.L_0279:
.L_0278:
.L_0277:
.L_025E:
cmp dword ptr [ebp-4], 0
jne .L_027C
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset _Lt_027F
push dword ptr [ebp-24]
call _HREADDEFINETEXT
add esp, 20
jmp .L_024D
.L_027C:
.L_027B:
cmp dword ptr [ebp-24], 0
je .L_027E
push 0
push 1
push 0
push offset _Lt_027F
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_027D
.L_027E:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HREADMACROTEXT
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset _Lt_027F
call _SYMBADDDEFINEMACRO
add esp, 20
.L_027D:
.L_024D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_027F,129

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
_HREPORTMACROERROR:
push ebp
mov ebp, esp
sub esp, 24
.L_006B:
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 12
push offset _Lt_006D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_006C:
mov esp, ebp
pop ebp
ret
.balign 16
_ISMACROALLOWED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0070:
cmp dword ptr [_PP+212], 0
jne .L_0073
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .L_0075
cmp dword ptr [_ENV+104], 1
jne .L_0077
push 0
push 0
push 286
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .L_0071
.L_0077:
.L_0076:
.L_0075:
.L_0074:
.L_0073:
.L_0072:
mov dword ptr [ebp-4], -1
.L_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADMACRO:
push ebp
mov ebp, esp
sub esp, 1140
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0078:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-1108], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-1112], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_007B
mov dword ptr [ebp-1108], -1
.L_007B:
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_007D
cmp dword ptr [ebp-1108], 0
jne .L_007F
jmp .L_0079
.L_007F:
.L_007E:
jmp .L_007C
.L_007D:
mov ebx, dword ptr [ebp-1112]
not ebx
and dword ptr [ebp-1108], ebx
.L_007C:
push dword ptr [ebp+8]
call _ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_0081
jmp .L_0079
.L_0081:
.L_0080:
inc dword ptr [_PP+216]
cmp dword ptr [ebp-1108], 0
je .L_0083
call _LEXEATCHAR
.L_0083:
.L_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0085
lea ebx, [_PP+176]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-1084], eax
jmp .L_0084
.L_0085:
mov dword ptr [ebp-1084], 0
.L_0084:
mov dword ptr [ebp-1088], 1
mov dword ptr [ebp-1096], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-1100], ebx
mov dword ptr [ebp-1116], -1
mov dword ptr [ebp-1092], 0
cmp dword ptr [ebp-1084], 0
je .L_0087
mov ebx, dword ptr [ebp-1084]
mov dword ptr [ebx+384], 0
.L_0087:
.L_0086:
.L_0088:
cmp dword ptr [ebp-1084], 0
je .L_008C
mov ebx, dword ptr [ebp-1092]
imul ebx, 12
mov eax, dword ptr [ebp-1084]
add eax, ebx
lea ebx, [eax]
push ebx
call _DZSTRZERO
add esp, 4
.L_008C:
.L_008B:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008E
mov eax, dword ptr [ebp-1100]
mov dword ptr [ebp-1096], eax
.L_008E:
.L_008D:
.L_008F:
push 92
lea eax, [ebp-1080]
push eax
call _LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-1080]
mov dword ptr [ebp-1120], eax
jmp .L_0093
.L_0095:
inc dword ptr [ebp-1088]
jmp .L_0092
.L_0096:
cmp dword ptr [ebp-1088], 0
jle .L_0098
dec dword ptr [ebp-1088]
cmp dword ptr [ebp-1088], 0
jne .L_009A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_009C
cmp dword ptr [ebp-1108], 0
jne .L_009E
mov ebx, dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_00A0
cmp dword ptr [_PP+216], 1
jle .L_00A2
mov dword ptr [ebp-1116], 41
.L_00A2:
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_009B:
jmp .L_0090
.L_009A:
.L_0099:
.L_0098:
.L_0097:
jmp .L_0092
.L_00A3:
cmp dword ptr [ebp-1088], 1
jne .L_00A5
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_00A7
cmp dword ptr [ebp-1100], 0
jne .L_00A9
cmp dword ptr [ebp-1108], 0
jne .L_00AB
mov ebx, dword ptr [ebp-1084]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_00AD
cmp dword ptr [_PP+216], 1
jle .L_00AF
mov dword ptr [ebp-1116], 44
.L_00AF:
.L_00AE:
mov dword ptr [ebp-1088], 0
jmp .L_0090
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
cmp dword ptr [ebp-1084], 0
je .L_00B1
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_00B3
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_00B3:
.L_00B2:
mov eax, dword ptr [ebp-1084]
inc dword ptr [eax+384]
.L_00B1:
.L_00B0:
cmp dword ptr [ebp-1096], 0
jne .L_00B5
jmp .L_0090
.L_00B5:
.L_00B4:
.L_00A5:
.L_00A4:
jmp .L_0092
.L_00B6:
mov eax, dword ptr [ebp-1108]
not eax
test eax, eax
je .L_00B8
mov dword ptr [ebp-1116], 58
mov dword ptr [ebp-1088], 0
jmp .L_0090
.L_00B8:
.L_00B7:
jmp .L_0092
.L_00B9:
cmp dword ptr [ebp-1108], 0
je .L_00BB
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
jmp .L_00BA
.L_00BB:
cmp dword ptr [ebp-1080], 256
jne .L_00BC
mov dword ptr [ebp-1124], 0
jmp .L_0280
.L_00BC:
mov dword ptr [ebp-1124], 10
.L_0280:
mov eax, dword ptr [ebp-1124]
mov dword ptr [ebp-1116], eax
.L_00BA:
mov dword ptr [ebp-1088], 0
jmp .L_0090
jmp .L_0092
.L_00BE:
jmp .L_0092
.L_00BF:
cmp dword ptr [ebp-1084], 0
je .L_00C1
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_00C3
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_00C3:
.L_00C2:
.L_00C1:
.L_00C0:
jmp .L_0092
.L_0093:
mov eax, dword ptr [ebp-1120]
add eax, 4294967287
cmp eax, 249
ja .L_00BF
mov eax, dword ptr [ebp-1120]
jmp dword ptr [_.L_00C4+eax*4-36]
_.L_00C4:
.int .L_00BE
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BE
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_0095
.int .L_0096
.int .L_00BF
.int .L_00BF
.int .L_00A3
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00BF
.int .L_00B9
.int .L_00B9
.int .L_00B6
.L_0092:
cmp dword ptr [ebp-1084], 0
je .L_00C6
cmp dword ptr [ebp-1072], 7
je .L_00C8
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DZSTRCONCATASSIGN
add esp, 8
jmp .L_00C7
.L_00C8:
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DZSTRCONCATASSIGNW
add esp, 8
.L_00C7:
.L_00C6:
.L_00C5:
.L_0091:
jmp .L_008F
.L_0090:
cmp dword ptr [ebp-1084], 0
je .L_00CA
mov eax, dword ptr [ebp-1092]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-1120], eax
mov eax, dword ptr [ebp-1120]
cmp dword ptr [eax], 0
je .L_00CD
mov eax, dword ptr [ebp-1120]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-1120]
push 0
mov ecx, dword ptr [ebp-1120]
push dword ptr [ecx]
mov esi, eax
call _fb_StrLen
add esp, 8
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_00CF
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push -1
mov eax, dword ptr [ebp-1120]
push dword ptr [eax]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1132]
mov eax, dword ptr [ebp-1120]
lea esi, [eax]
push esi
call _DZSTRASSIGN
add esp, 8
lea esi, [ebp-1132]
push esi
call _fb_StrDelete
add esp, 4
.L_00CF:
.L_00CE:
.L_00CD:
.L_00CC:
.L_00CA:
.L_00C9:
cmp dword ptr [ebp-1088], 0
jne .L_00D2
cmp dword ptr [ebp-12], 0
je .L_00D4
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-1100]
not esi
or eax, esi
je .L_00D6
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_00D6:
.L_00D5:
.L_00D7:
inc dword ptr [ebp-1092]
mov esi, dword ptr [ebp-1092]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRZERO
add esp, 4
.L_00D9:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-1092], eax
jl .L_00D7
.L_00D8:
.L_00D4:
.L_00D3:
jmp .L_0089
.L_00D2:
.L_00D1:
cmp dword ptr [ebp-12], 0
jne .L_00DB
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0089
.L_00DB:
.L_00DA:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-1092]
.L_008A:
jmp .L_0088
.L_0089:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_0285
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_00DD
mov dword ptr [ebp-1120], 0
push 0
push -1
lea eax, [ebp-1120]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-1120], 0
jne .L_00DF
push 0
push -1
lea eax, [ebp-1132]
push eax
push -1
push offset _Lt_0285
call _fb_StrAssign
add esp, 20
jmp .L_00DE
.L_00DF:
push dword ptr [ebp-1120]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_00DE:
lea eax, [ebp-1132]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_00DC
.L_00DD:
cmp dword ptr [ebp-1084], 0
je .L_00E1
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_00E2:
cmp dword ptr [ebp-16], 0
je .L_00E3
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-1120], eax
jmp .L_00E5
.L_00E7:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1104], esi
cmp dword ptr [ebp-1104], 0
je .L_00E9
push 0
push -1
push 0
push dword ptr [ebp-1104]
push -1
push offset _Lt_0285
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea esi, [ebp-1132]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0285
call _fb_StrAssign
add esp, 20
.L_00E9:
.L_00E8:
jmp .L_00E4
.L_00EB:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1104], esi
cmp dword ptr [ebp-1104], 0
je .L_00ED
push 0
push 3
push offset _Lt_00F0
push -1
push offset _Lt_0285
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_00F1
push offset _Lt_00EF
push dword ptr [ebp-1104]
call _HREPLACE
add esp, 12
push eax
push -1
push offset _Lt_0285
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00EF
push -1
push offset _Lt_0285
call _fb_StrConcatAssign
add esp, 20
jmp .L_00EC
.L_00ED:
push 0
push 3
push offset _Lt_00F1
push -1
push offset _Lt_0285
call _fb_StrConcatAssign
add esp, 20
.L_00EC:
jmp .L_00E4
.L_00F2:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset _Lt_0285
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea eax, [ebp-1132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0285
call _fb_StrAssign
add esp, 20
jmp .L_00E4
.L_00F4:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _fb_WstrToStr
add esp, 4
push eax
push -1
push offset _Lt_0285
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
lea eax, [ebp-1132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0285
call _fb_StrAssign
add esp, 20
jmp .L_00E4
.L_00E5:
cmp dword ptr [ebp-1120], 3
ja .L_00E4
mov eax, dword ptr [ebp-1120]
jmp dword ptr [_.L_00F6+eax*4]
_.L_00F6:
.int .L_00E7
.int .L_00EB
.int .L_00F2
.int .L_00F4
.L_00E4:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_00E2
.L_00E3:
.L_00F7:
cmp dword ptr [ebp-1092], 0
jle .L_00F8
dec dword ptr [ebp-1092]
push 0
mov esi, dword ptr [ebp-1092]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRASSIGN
add esp, 8
jmp .L_00F7
.L_00F8:
push dword ptr [ebp-1084]
lea esi, [_PP+176]
push esi
call _LISTDELNODE
add esp, 8
.L_00E1:
.L_00E0:
cmp dword ptr [ebp-1116], -1
je .L_00FA
push 0
push -1
push dword ptr [ebp-1116]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _Lt_0285
call _fb_StrConcatAssign
add esp, 20
.L_00FA:
.L_00F9:
.L_00DC:
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4304], 0
jne .L_00FC
push dword ptr [_Lt_0285]
mov eax, dword ptr [_LEX+213384]
lea esi, [eax+4312]
push esi
call _DZSTRASSIGN
add esp, 8
jmp .L_00FB
.L_00FC:
mov dword ptr [ebp-1140], 0
mov dword ptr [ebp-1136], 0
mov dword ptr [ebp-1132], 0
push 0
push -1
push 0
mov esi, dword ptr [_LEX+213384]
push dword ptr [esi+4308]
push -1
push offset _Lt_0285
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
mov dword ptr [ebp-1120], 0
lea esi, [ebp-1128]
push esi
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-1140]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1140]
mov eax, dword ptr [_LEX+213384]
lea esi, [eax+4312]
push esi
call _DZSTRASSIGN
add esp, 8
lea esi, [ebp-1140]
push esi
call _fb_StrDelete
add esp, 4
.L_00FB:
dec dword ptr [_PP+216]
push -1
push offset _Lt_0285
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.L_0079:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0285,12

.section .text
.balign 16
_HLOADDEFINE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_00FF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_0102
push dword ptr [ebp+8]
call _HLOADMACRO
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0104
jmp .L_0100
.L_0104:
.L_0103:
jmp .L_0101
.L_0102:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_0106
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_0108
push 0
push -1
push 2
push offset _Lt_00EF
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_00F0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0286
call _fb_StrAssign
add esp, 20
jmp .L_0107
.L_0108:
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
push offset _Lt_0286
call _fb_StrAssign
add esp, 20
.L_0107:
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4304], 0
jne .L_010C
push dword ptr [_Lt_0286]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
jmp .L_010B
.L_010C:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov ebx, dword ptr [_LEX+213384]
push dword ptr [ebx+4308]
push -1
push offset _Lt_0286
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_010B:
push -1
push offset _Lt_0286
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_0105
.L_0106:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_0110
mov dword ptr [ebp-12], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_0112
mov dword ptr [ebp-12], -1
.L_0112:
.L_0111:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_0114
cmp dword ptr [ebp-12], 0
jne .L_0116
jmp .L_0100
.L_0116:
.L_0115:
jmp .L_0113
.L_0114:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_0113:
cmp dword ptr [ebp-12], 0
je .L_0118
call _LEXEATCHAR
call _LEXEATWHITESPACE
call _LEXCURRENTCHAR
cmp eax, 41
je .L_011A
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .L_0119
.L_011A:
call _LEXEATCHAR
.L_0119:
.L_0118:
.L_0117:
.L_0110:
.L_010F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_011C
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4304], 0
jne .L_011E
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4312]
push eax
call _DZSTRASSIGN
add esp, 8
jmp .L_011D
.L_011E:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4308]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_011D:
jmp .L_011B
.L_011C:
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4304], 0
jne .L_0122
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4312]
push eax
call _DZSTRASSIGNW
add esp, 8
jmp .L_0121
.L_0122:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4308]
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrToStr
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DZSTRASSIGN
add esp, 8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete
add esp, 4
.L_0121:
.L_011B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_0105:
.L_0101:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [_LEX+213384]
mov ecx, dword ptr [eax+4312]
mov dword ptr [ebx+4308], ecx
mov ecx, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+4304], ebx
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4268], 4294967295
mov dword ptr [ebp-4], -1
.L_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0286,12

.section .text
.balign 16
_HLOADMACROW:
push ebp
mov ebp, esp
sub esp, 1140
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0125:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-1112], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-1116], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_0128
mov dword ptr [ebp-1112], -1
.L_0128:
.L_0127:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_012A
cmp dword ptr [ebp-1112], 0
jne .L_012C
jmp .L_0126
.L_012C:
.L_012B:
jmp .L_0129
.L_012A:
mov ebx, dword ptr [ebp-1116]
not ebx
and dword ptr [ebp-1112], ebx
.L_0129:
push dword ptr [ebp+8]
call _ISMACROALLOWED
add esp, 4
test eax, eax
jne .L_012E
jmp .L_0126
.L_012E:
.L_012D:
inc dword ptr [_PP+216]
cmp dword ptr [ebp-1112], 0
je .L_0130
call _LEXEATCHAR
.L_0130:
.L_012F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .L_0132
lea ebx, [_PP+176]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-1084], eax
jmp .L_0131
.L_0132:
mov dword ptr [ebp-1084], 0
.L_0131:
mov dword ptr [ebp-1088], 1
mov dword ptr [ebp-1100], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-1104], ebx
mov dword ptr [ebp-1120], -1
mov dword ptr [ebp-1096], 0
cmp dword ptr [ebp-1084], 0
je .L_0134
mov ebx, dword ptr [ebp-1084]
mov dword ptr [ebx+384], 0
.L_0134:
.L_0133:
.L_0135:
cmp dword ptr [ebp-1084], 0
je .L_0139
mov ebx, dword ptr [ebp-1096]
imul ebx, 12
mov eax, dword ptr [ebp-1084]
add eax, ebx
lea ebx, [eax]
push ebx
call _DWSTRZERO
add esp, 4
.L_0139:
.L_0138:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_013B
mov eax, dword ptr [ebp-1104]
mov dword ptr [ebp-1100], eax
.L_013B:
.L_013A:
.L_013C:
push 92
lea eax, [ebp-1080]
push eax
call _LEXNEXTTOKEN
add esp, 8
mov eax, dword ptr [ebp-1080]
mov dword ptr [ebp-1124], eax
jmp .L_0140
.L_0142:
inc dword ptr [ebp-1088]
jmp .L_013F
.L_0143:
cmp dword ptr [ebp-1088], 0
jle .L_0145
dec dword ptr [ebp-1088]
cmp dword ptr [ebp-1088], 0
jne .L_0147
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
jne .L_0149
cmp dword ptr [ebp-1112], 0
jne .L_014B
mov ebx, dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
cmp dword ptr [ebx+384], ecx
jl .L_014D
cmp dword ptr [_PP+216], 1
jle .L_014F
mov dword ptr [ebp-1120], 41
.L_014F:
.L_014E:
.L_014D:
.L_014C:
.L_014B:
.L_014A:
.L_0149:
.L_0148:
jmp .L_013D
.L_0147:
.L_0146:
.L_0145:
.L_0144:
jmp .L_013F
.L_0150:
cmp dword ptr [ebp-1088], 1
jne .L_0152
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
and ebx, 8
test ebx, ebx
jne .L_0154
cmp dword ptr [ebp-1104], 0
jne .L_0156
cmp dword ptr [ebp-1112], 0
jne .L_0158
mov ebx, dword ptr [ebp-1084]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+56]
cmp dword ptr [ebx+384], eax
jl .L_015A
cmp dword ptr [_PP+216], 1
jle .L_015C
mov dword ptr [ebp-1120], 44
.L_015C:
.L_015B:
mov dword ptr [ebp-1088], 0
jmp .L_013D
.L_015A:
.L_0159:
.L_0158:
.L_0157:
.L_0156:
.L_0155:
.L_0154:
.L_0153:
cmp dword ptr [ebp-1084], 0
je .L_015E
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_0160
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_0160:
.L_015F:
mov eax, dword ptr [ebp-1084]
inc dword ptr [eax+384]
.L_015E:
.L_015D:
cmp dword ptr [ebp-1100], 0
jne .L_0162
jmp .L_013D
.L_0162:
.L_0161:
.L_0152:
.L_0151:
jmp .L_013F
.L_0163:
mov eax, dword ptr [ebp-1112]
not eax
test eax, eax
je .L_0165
mov dword ptr [ebp-1120], 58
mov dword ptr [ebp-1088], 0
jmp .L_013D
.L_0165:
.L_0164:
jmp .L_013F
.L_0166:
cmp dword ptr [ebp-1112], 0
je .L_0168
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
jmp .L_0167
.L_0168:
cmp dword ptr [ebp-1080], 256
jne .L_0169
mov dword ptr [ebp-1128], 0
jmp .L_0287
.L_0169:
mov dword ptr [ebp-1128], 10
.L_0287:
mov eax, dword ptr [ebp-1128]
mov dword ptr [ebp-1120], eax
.L_0167:
mov dword ptr [ebp-1088], 0
jmp .L_013D
jmp .L_013F
.L_016B:
jmp .L_013F
.L_016C:
cmp dword ptr [ebp-1084], 0
je .L_016E
mov eax, dword ptr [ebp-1084]
cmp dword ptr [eax+384], 0
jne .L_0170
mov eax, dword ptr [ebp-1084]
mov dword ptr [eax+384], 1
.L_0170:
.L_016F:
.L_016E:
.L_016D:
jmp .L_013F
.L_0140:
mov eax, dword ptr [ebp-1124]
add eax, 4294967287
cmp eax, 249
ja .L_016C
mov eax, dword ptr [ebp-1124]
jmp dword ptr [_.L_0171+eax*4-36]
_.L_0171:
.int .L_016B
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016B
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_0142
.int .L_0143
.int .L_016C
.int .L_016C
.int .L_0150
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_016C
.int .L_0166
.int .L_0166
.int .L_0163
.L_013F:
cmp dword ptr [ebp-1084], 0
je .L_0173
cmp dword ptr [ebp-1072], 7
je .L_0175
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .L_0174
.L_0175:
lea eax, [ebp-1068]
push eax
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
push eax
call _DWSTRCONCATASSIGN
add esp, 8
.L_0174:
.L_0173:
.L_0172:
.L_013E:
jmp .L_013C
.L_013D:
cmp dword ptr [ebp-1084], 0
je .L_0177
mov eax, dword ptr [ebp-1096]
imul eax, 12
mov ebx, dword ptr [ebp-1084]
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-1124], eax
mov eax, dword ptr [ebp-1124]
cmp dword ptr [eax], 0
je .L_017A
mov eax, dword ptr [ebp-1124]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-1124]
mov ecx, dword ptr [ebp-1124]
push dword ptr [ecx]
mov esi, eax
call _fb_WstrLen
add esp, 4
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .L_017C
mov eax, dword ptr [ebp-1124]
push dword ptr [eax]
call _fb_WstrTrim
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
mov eax, dword ptr [ebp-1124]
lea esi, [eax]
push esi
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
.L_017C:
.L_017B:
.L_017A:
.L_0179:
.L_0177:
.L_0176:
cmp dword ptr [ebp-1088], 0
jne .L_017F
cmp dword ptr [ebp-12], 0
je .L_0181
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-1104]
not esi
or eax, esi
je .L_0183
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_0183:
.L_0182:
.L_0184:
inc dword ptr [ebp-1096]
mov esi, dword ptr [ebp-1096]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRZERO
add esp, 4
.L_0186:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-1096], eax
jl .L_0184
.L_0185:
.L_0181:
.L_0180:
jmp .L_0136
.L_017F:
.L_017E:
cmp dword ptr [ebp-12], 0
jne .L_0188
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .L_0136
.L_0188:
.L_0187:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-1096]
.L_0137:
jmp .L_0135
.L_0136:
push 0
push offset _Lt_028C
call _DWSTRASSIGN
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_018A
mov dword ptr [ebp-1124], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .L_018C
lea eax, [ebp-1124]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
add esp, 8
mov dword ptr [ebp-1128], eax
cmp dword ptr [ebp-1124], 0
jne .L_018E
push dword ptr [ebp-1128]
push offset _Lt_028C
call _DWSTRASSIGN
add esp, 8
jmp .L_018D
.L_018E:
push dword ptr [ebp-1124]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_018D:
jmp .L_018B
.L_018C:
push 0
push -1
lea eax, [ebp-1124]
push eax
push dword ptr [ebp-1084]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 8
push eax
push -1
lea eax, [ebp-1136]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-1124], 0
jne .L_0190
push dword ptr [ebp-1136]
push offset _Lt_028C
call _DWSTRASSIGNA
add esp, 8
jmp .L_018F
.L_0190:
push dword ptr [ebp-1124]
push dword ptr [ebp+8]
call _HREPORTMACROERROR
add esp, 8
.L_018F:
lea eax, [ebp-1136]
push eax
call _fb_StrDelete
add esp, 4
.L_018B:
jmp .L_0189
.L_018A:
cmp dword ptr [ebp-1084], 0
je .L_0192
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.L_0193:
cmp dword ptr [ebp-16], 0
je .L_0194
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-1124], eax
jmp .L_0196
.L_0198:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-1108], esi
cmp dword ptr [ebp-1108], 0
je .L_019A
push dword ptr [ebp-1108]
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
.L_019A:
.L_0199:
jmp .L_0195
.L_019B:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-1084]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-1108], eax
cmp dword ptr [ebp-1108], 0
je .L_019D
push offset _Lt_00F0
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
push offset _Lt_00F1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1136], eax
push dword ptr [ebp-1136]
push offset _Lt_00EF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1132], eax
push dword ptr [ebp-1132]
push dword ptr [ebp-1108]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1136]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-1132]
call _fb_WstrDelete
add esp, 4
push offset _Lt_00EF
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1140], eax
push dword ptr [ebp-1140]
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1140]
call _fb_WstrDelete
add esp, 4
jmp .L_019C
.L_019D:
push offset _Lt_00F1
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-1128], eax
push dword ptr [ebp-1128]
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-1128]
call _fb_WstrDelete
add esp, 4
.L_019C:
jmp .L_0195
.L_01A3:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_028C
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .L_0195
.L_01A4:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_028C
call _DWSTRCONCATASSIGN
add esp, 8
jmp .L_0195
.L_0196:
cmp dword ptr [ebp-1124], 3
ja .L_0195
mov eax, dword ptr [ebp-1124]
jmp dword ptr [_.L_01A5+eax*4]
_.L_01A5:
.int .L_0198
.int .L_019B
.int .L_01A3
.int .L_01A4
.L_0195:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .L_0193
.L_0194:
.L_01A6:
cmp dword ptr [ebp-1096], 0
jle .L_01A7
dec dword ptr [ebp-1096]
push 0
mov esi, dword ptr [ebp-1096]
imul esi, 12
mov eax, dword ptr [ebp-1084]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRASSIGN
add esp, 8
jmp .L_01A6
.L_01A7:
push dword ptr [ebp-1084]
lea esi, [_PP+176]
push esi
call _LISTDELNODE
add esp, 8
.L_0192:
.L_0191:
.L_0189:
cmp dword ptr [ebp-1120], -1
je .L_01A9
mov dword ptr [ebp-1132], 0
mov dword ptr [ebp-1128], 0
mov dword ptr [ebp-1124], 0
push 0
push -1
push dword ptr [ebp-1120]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-1132]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-1132]
push offset _Lt_028C
call _DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-1132]
push eax
call _fb_StrDelete
add esp, 4
.L_01A9:
.L_01A8:
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4304], 0
jne .L_01AC
push dword ptr [_Lt_028C]
mov eax, dword ptr [_LEX+213384]
lea esi, [eax+4312]
push esi
call _DWSTRASSIGN
add esp, 8
jmp .L_01AB
.L_01AC:
mov esi, dword ptr [_LEX+213384]
push dword ptr [esi+4308]
push dword ptr [_Lt_028C]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-1124], eax
push dword ptr [ebp-1124]
mov eax, dword ptr [_LEX+213384]
lea esi, [eax+4312]
push esi
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-1124]
call _fb_WstrDelete
add esp, 4
.L_01AB:
dec dword ptr [_PP+216]
push dword ptr [_Lt_028C]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.L_0126:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_028C,12

.section .text
.balign 16
_HLOADDEFINEW:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_01AE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .L_01B1
push dword ptr [ebp+8]
call _HLOADMACROW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_01B3
jmp .L_01AF
.L_01B3:
.L_01B2:
jmp .L_01B0
.L_01B1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .L_01B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .L_01B7
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset _Lt_00EF
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_00F0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
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
push offset _Lt_028D
call _DWSTRASSIGNA
add esp, 8
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01B6
.L_01B7:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
push offset _Lt_028D
call _DWSTRASSIGNA
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_01B6:
mov eax, dword ptr [_LEX+213384]
cmp dword ptr [eax+4304], 0
jne .L_01BD
push dword ptr [_Lt_028D]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
jmp .L_01BC
.L_01BD:
mov ebx, dword ptr [_LEX+213384]
push dword ptr [ebx+4308]
push dword ptr [_Lt_028D]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01BC:
push dword ptr [_Lt_028D]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .L_01B4
.L_01B5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .L_01C0
mov dword ptr [ebp-12], 0
call _LEXEATWHITESPACE
mov dword ptr [ebp-16], eax
call _LEXCURRENTCHAR
cmp eax, 40
jne .L_01C2
mov dword ptr [ebp-12], -1
.L_01C2:
.L_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 8
test ebx, ebx
je .L_01C4
cmp dword ptr [ebp-12], 0
jne .L_01C6
jmp .L_01AF
.L_01C6:
.L_01C5:
jmp .L_01C3
.L_01C4:
mov ebx, dword ptr [ebp-16]
not ebx
and dword ptr [ebp-12], ebx
.L_01C3:
cmp dword ptr [ebp-12], 0
je .L_01C8
call _LEXEATCHAR
call _LEXEATWHITESPACE
call _LEXCURRENTCHAR
cmp eax, 41
je .L_01CA
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .L_01C9
.L_01CA:
call _LEXEATCHAR
.L_01C9:
.L_01C8:
.L_01C7:
.L_01C0:
.L_01BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_01CC
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4304], 0
jne .L_01CE
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4312]
push eax
call _DWSTRASSIGNA
add esp, 8
jmp .L_01CD
.L_01CE:
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4308]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01CD:
jmp .L_01CB
.L_01CC:
mov ebx, dword ptr [_LEX+213384]
cmp dword ptr [ebx+4304], 0
jne .L_01D2
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4312]
push eax
call _DWSTRASSIGN
add esp, 8
jmp .L_01D1
.L_01D2:
mov eax, dword ptr [_LEX+213384]
push dword ptr [eax+4308]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4312]
push ebx
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.L_01D1:
.L_01CB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
.L_01B4:
.L_01B0:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [_LEX+213384]
mov ecx, dword ptr [eax+4312]
mov dword ptr [ebx+4308], ecx
mov ecx, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp-8]
add dword ptr [ecx+4304], ebx
mov dword ptr [ebp-4], -1
.L_01AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_028D,12

.section .text
.balign 16
_HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01DE:
.L_01E0:
cmp dword ptr [ebp+12], 0
je .L_01E1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .L_01E3
jmp .L_01E1
.L_01E3:
.L_01E2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_01E5
.L_01E7:
push dword ptr [ebp+12]
call _SYMBDELDEFINETOK
add esp, 4
mov dword ptr [ebp+12], eax
jmp .L_01E4
.L_01E8:
jmp .L_01E1
jmp .L_01E4
.L_01E5:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .L_01E8
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_01E9+eax*4-36]
_.L_01E9:
.int .L_01E7
.int .L_01E7
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E8
.int .L_01E7
.L_01E4:
jmp .L_01E0
.L_01E1:
cmp dword ptr [ebp+12], 0
jne .L_01EB
mov dword ptr [ebp-4], 0
jmp .L_01EA
.L_01EB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_01EA:
.L_01DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREADMACROTEXT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01EC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.L_01EE:
mov dword ptr [ebp-20], 0
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_01F2
.L_01F4:
cmp dword ptr [ebp+16], 0
je .L_01F6
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.L_01F6:
.L_01F5:
jmp .L_01EF
jmp .L_01F1
.L_01F7:
cmp dword ptr [ebp+16], 0
jne .L_01F9
jmp .L_01EF
.L_01F9:
.L_01F8:
cmp dword ptr [ebp-16], 0
je .L_01FB
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_01FC
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_01FB:
.L_01FA:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_01F0
jmp .L_01F1
.L_01FD:
cmp dword ptr [ebp+16], 0
jne .L_01FF
jmp .L_01EF
.L_01FF:
.L_01FE:
.L_0200:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .L_0206
.L_0207:
cmp dword ptr [ebp-32], 256
jne .L_0205
.L_0206:
jmp .L_0201
.L_0205:
.L_0203:
.L_0202:
jmp .L_0200
.L_0201:
jmp .L_01F0
jmp .L_01F1
.L_0208:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .L_020B
.L_020C:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 63
call _LEXSKIPTOKEN
add esp, 4
jmp .L_01F0
jmp .L_0209
.L_020B:
cmp dword ptr [ebp-32], 274
jne .L_020D
.L_020E:
cmp dword ptr [ebp+16], 0
je .L_0210
inc dword ptr [ebp-24]
.L_0210:
.L_020F:
jmp .L_0209
.L_020D:
cmp dword ptr [ebp-32], 275
jne .L_0211
.L_0212:
cmp dword ptr [ebp+16], 0
je .L_0214
cmp dword ptr [ebp-24], 0
jne .L_0216
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HRTRIMMACROTEXT
add esp, 8
mov dword ptr [ebp-16], eax
jmp .L_01EF
.L_0216:
.L_0215:
dec dword ptr [ebp-24]
.L_0214:
.L_0213:
jmp .L_0209
.L_0211:
cmp dword ptr [ebp-32], 265
jne .L_0217
.L_0218:
push 62
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-20], -1
.L_0217:
.L_0209:
jmp .L_01F1
.L_0219:
cmp dword ptr [ebp-16], 0
je .L_021B
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
push offset _Lt_021C
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_021B:
.L_021A:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_01F0
jmp .L_01F1
.L_01F2:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .L_01F1
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_021D+ebx*4-36]
_.L_021D:
.int .L_0219
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_0219
.int .L_01F1
.int .L_01F1
.int .L_0208
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F1
.int .L_01F4
.int .L_01F7
.int .L_01F1
.int .L_01FD
.int .L_01FD
.L_01F1:
push 62
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_021F
.L_0221:
cmp dword ptr [_ENV+576], 0
jne .L_0223
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0225
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0225:
.L_0224:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
jmp .L_0222
.L_0223:
push 3
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0227
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0227:
.L_0226:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _WSTRASSIGN
add esp, 8
.L_0222:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
.L_0228:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_022A
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_022A:
.L_0229:
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 129
push offset _Lt_028E
call _fb_StrAssign
add esp, 20
push offset _Lt_028E
lea eax, [_SYMB+98768]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_022C
cmp dword ptr [ebp-20], 0
jne .L_022E
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .L_022D
.L_022E:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.L_022D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .L_022B
.L_022C:
cmp dword ptr [ebp-20], 0
je .L_0230
push offset _Lt_0231
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call _ZSTRASSIGN
add esp, 8
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRCONCATASSIGN
add esp, 8
jmp .L_022F
.L_0230:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
.L_022F:
.L_022B:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
.L_0232:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .L_0234
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.L_0234:
.L_0233:
call _LEXGETTEXT
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN
add esp, 8
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .L_021E
.L_021F:
cmp dword ptr [ebp-28], 4
ja .L_0232
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.L_0235+ebx*4]
_.L_0235:
.int .L_0228
.int .L_0228
.int .L_0228
.int .L_0232
.int .L_0221
.L_021E:
.L_01F0:
jmp .L_01EE
.L_01EF:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_01ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_028E,129

.section .text
.balign 16
_HREADDEFINETEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0236:
cmp dword ptr [_ENV+576], 0
jne .L_0239
push dword ptr [ebp+20]
call _PPREADLITERAL
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .L_023B
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
je .L_023D
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_023C
.L_023D:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_023E
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
.L_023E:
.L_023C:
jmp .L_023A
.L_023B:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-4]
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SYMBADDDEFINE
add esp, 24
.L_023A:
jmp .L_0238
.L_0239:
push dword ptr [ebp+20]
call _PPREADLITERALW
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .L_0240
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
je .L_0242
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
jmp .L_0241
.L_0242:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _fb_WstrCompare
add esp, 8
test eax, eax
je .L_0243
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
.L_0243:
.L_0241:
jmp .L_023F
.L_0240:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _fb_WstrLen
add esp, 4
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _SYMBADDDEFINEW
add esp, 24
.L_023F:
.L_0238:
.L_0237:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMATCHPARAMELLIPSIS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0244:
mov dword ptr [ebp-4], 0
push 34
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .L_0247
push 34
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_0249
push 34
push 2
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .L_024B
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXSKIPTOKEN
add esp, 4
push 34
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
.L_024B:
.L_024A:
.L_0249:
.L_0248:
.L_0247:
.L_0246:
.L_0245:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

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
_Lt_006D:	.ascii	"expanding: \0"
.balign 4
_Lt_00EF:	.ascii	"\"\0"
.balign 4
_Lt_00F0:	.ascii	"$\"\0"
.balign 4
_Lt_00F1:	.ascii	"\"\"\0"
.balign 4
_Lt_01FC:	.ascii	"\n\0"
.balign 4
_Lt_021C:	.ascii	" \0"
.balign 4
_Lt_0231:	.ascii	"#\0"
