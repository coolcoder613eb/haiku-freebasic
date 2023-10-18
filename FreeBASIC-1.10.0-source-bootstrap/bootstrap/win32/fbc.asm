	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBCPUTYPEFROMGNUARCHINFO@4
_FBCPUTYPEFROMGNUARCHINFO@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0339:
mov dword ptr [ebp-8], 0
.L_033E:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0340
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_033A
.L_0340:
.L_033F:
.L_033C:
inc dword ptr [ebp-8]
.L_033B:
cmp dword ptr [ebp-8], 16
jle .L_033E
.L_033D:
mov dword ptr [ebp-4], -1
.L_033A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _FBCPARSEARGSFROMSTRING@12
_FBCPARSEARGSFROMSTRING@12:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_059B:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_059D:
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_05A1
jmp .L_059E
.L_05A1:
.L_05A0:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_05A2:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_05A3
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_05A5
.L_05A7:
cmp dword ptr [ebp-36], 0
jne .L_05A9
jmp .L_05A3
.L_05A9:
.L_05A8:
jmp .L_05A4
.L_05AA:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_05AD
mov dword ptr [ebp-36], 0
jmp .L_05AC
.L_05AD:
cmp dword ptr [ebp-36], 0
jne .L_05AE
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_05AE:
.L_05AC:
jmp .L_05A4
.L_05A5:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_05A4
mov ebx, dword ptr [ebp-44]
jmp dword ptr [_.L_05AF+ebx*4-128]
_.L_05AF:
.int .L_05A7
.int .L_05A4
.int .L_05AA
.int .L_05A4
.int .L_05A4
.int .L_05A4
.int .L_05A4
.int .L_05AA
.L_05A4:
inc dword ptr [ebp-32]
jmp .L_05A2
.L_05A3:
cmp dword ptr [ebp-32], 0
jne .L_05B1
mov dword ptr [ebp-32], 1
jmp .L_05B0
.L_05B1:
push 0
push -1
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
call _STRUNQUOTE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call _HANDLEARG@12
.L_05B0:
push 0
push -1
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_059F:
jmp .L_059D
.L_059E:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_059C:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
call _fb_InitSignals@0
call _fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
call _fb_End@4
.L_0004:
.L_0002:
call _FBCINIT@0
cmp dword ptr [ebp+8], 1
jne .L_08AD
push 0
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08AD:
.L_08AC:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARSEARGS@8
call _HCHECKARGS@0
cmp dword ptr [_FBC+60], 0
je .L_08AF
push dword ptr [_FBC+56]
call _HPRINTVERSION@4
push 0
call _FBCEND@4
.L_08AF:
.L_08AE:
cmp dword ptr [_FBC+56], 0
je .L_08B1
mov dword ptr [_FBC+60], -1
push 0
call _HPRINTVERSION@4
.L_08B1:
.L_08B0:
cmp dword ptr [_FBC+64], 0
je .L_08B3
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08B3:
.L_08B2:
.L_08B4:
call _FBCDETERMINEPREFIX@0
call _FBCSETUPCOMPILERPATHS@0
cmp dword ptr [_FBC+56], 0
je .L_08B8
call _FBCPRINTTARGETINFO@0
.L_08B8:
.L_08B7:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+2490]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+264]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+232]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [_FBC+68], 0
jl .L_08BB
mov ebx, dword ptr [_FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08BE
.L_08BF:
push 1
call _FBGETHOSTID@0
push eax
push 0
call _fb_PrintString@12
jmp .L_08BC
.L_08BE:
cmp dword ptr [ebp-24], 1
jne .L_08C0
.L_08C1:
push 1
call _FBGETTARGETID@0
push eax
push 0
call _fb_PrintString@12
jmp .L_08BC
.L_08C0:
cmp dword ptr [ebp-24], 2
jne .L_08C2
.L_08C3:
cmp dword ptr [ebp-20], 0
je .L_08C5
call _FBCDETERMINEMAINNAME@0
.L_08C5:
.L_08C4:
call _HSETOUTNAME@0
push 1
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .L_08BC
.L_08C2:
cmp dword ptr [ebp-24], 3
jne .L_08C6
.L_08C7:
push 1
lea eax, [_FBC+2751]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .L_08BC
.L_08C6:
cmp dword ptr [ebp-24], 4
jne .L_08C8
.L_08C9:
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08C8:
.L_08BC:
push 0
call _FBCEND@4
.L_08BB:
.L_08BA:
call _FBCDETERMINEMAINNAME@0
cmp dword ptr [ebp-20], 0
jne .L_08CB
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.L_08CB:
.L_08CA:
call _HCOMPILEMODULES@0
call _FBSHOULDRESTART@0
test eax, eax
jne .L_08CD
jmp .L_08B5
.L_08CD:
.L_08CC:
push 8
call _FBRESTARTENDREQUEST@4
call _ERRPREINIT@0
call _HCHECKARGS@0
cmp dword ptr [_FBC+56], 0
je .L_08CF
push 1
push 18
push offset _Lt_08D0
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08CF:
.L_08CE:
.L_08B6:
jmp .L_08B4
.L_08B5:
call _HCOMPILEXPM@0
test eax, eax
jne .L_08D2
push 1
call _FBCEND@4
.L_08D2:
.L_08D1:
cmp dword ptr [_FBC+36], 0
je .L_08D4
push 0
call _FBCEND@4
.L_08D4:
.L_08D3:
push 2
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08D6
call _HCOMPILESTAGE2MODULES@0
.L_08D6:
.L_08D5:
cmp dword ptr [_FBC+44], 0
je .L_08D8
push 0
call _FBCEND@4
.L_08D8:
.L_08D7:
call _HASSEMBLEMODULES@0
call _HASSEMBLERCS@0
call _HASSEMBLEXPM@0
push 0
call _FBGETOPTION@4
cmp eax, 3
jne .L_08DA
push 0
call _FBCEND@4
.L_08DA:
.L_08D9:
call _HSETDEFAULTLIBPATHS@0
push 39
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .L_08DC
call _HCOLLECTOBJINFO@0
.L_08DC:
.L_08DB:
push 0
call _FBGETOPTION@4
cmp eax, 1
jne .L_08DE
call _HARCHIVEFILES@0
test eax, eax
jne .L_08E0
push 1
call _FBCEND@4
.L_08E0:
.L_08DF:
push 0
call _FBCEND@4
.L_08DE:
.L_08DD:
cmp dword ptr [_FBC+1956], 0
jne .L_08E2
call _HADDDEFAULTLIBS@0
.L_08E2:
.L_08E1:
call _HEXCLUDELIBSFROMLINK@0
call _HLINKFILES@0
test eax, eax
jne .L_08E4
push 1
call _FBCEND@4
.L_08E4:
.L_08E3:
push 0
call _FBCEND@4
.L_0003:
push 0
call _fb_End@4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0014:
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
.L_0015:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
.L_0024:
.L_0025:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0026:
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
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 12
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 24
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 24
lea eax, [ebx]
push eax
call _fb_StrAssign@20
.L_0027:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN10FBC_EXTOPTD1Ev:
push ebp
mov ebp, esp
push ebx
.L_002A:
.L_002B:
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
.L_002C:
.L_002D:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_002E:
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
.L_002F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILED1Ev:
push ebp
mov ebp, esp
push ebx
.L_0032:
.L_0033:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXC1Ev:
push ebp
mov ebp, esp
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 72
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 104
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 156
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 200
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 232
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 308
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 352
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 396
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 440
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 484
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 745
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1006
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1136
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1140
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1401
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call __ZN10FBC_EXTOPTC1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 1568
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1697
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1826
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1956
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1960
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1964
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 1968
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2229
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2490
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2751
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 3012
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 3276
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
.L_0034:
.L_0035:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0036:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 72
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 72
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 104
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 104
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call __ZN9FBCIOFILEaSERKS_
add esp, 8
mov ecx, dword ptr [ebp+8]
add ecx, 156
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 156
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 200
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 200
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 232
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 232
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 264
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 264
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 308
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 308
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 352
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 352
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 396
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 396
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 440
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 440
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 484
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 484
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 745
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 745
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 129
mov ecx, dword ptr [ebp+12]
add ecx, 1006
lea ebx, [ecx]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1006
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
mov ecx, dword ptr [ebp+12]
add ecx, 1136
mov ebx, dword ptr [ebp+8]
add ebx, 1136
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
push 0
push 261
mov eax, dword ptr [ebp+12]
add eax, 1140
lea ebx, [eax]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 1140
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1401
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1401
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
add eax, 1532
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1532
lea eax, [ebx]
push eax
call __ZN10FBC_EXTOPTaSERKS_
add esp, 8
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1568
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1568
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1697
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1697
lea eax, [ebx]
push eax
call _fb_StrAssign@20
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1826
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1826
lea eax, [ebx]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
add eax, 1956
mov ebx, dword ptr [ebp+8]
add ebx, 1956
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 1960
mov ebx, dword ptr [ebp+8]
add ebx, 1960
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 1964
mov ebx, dword ptr [ebp+8]
add ebx, 1964
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 1968
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 1968
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2229
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2229
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2490
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2490
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2751
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2751
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 3012
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 3012
lea ecx, [ebx]
push ecx
call _fb_StrAssign@20
mov ecx, dword ptr [ebp+8]
add ecx, 3276
mov ebx, dword ptr [ebp+12]
add ebx, 3276
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0037:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_003A:
.L_003B:
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call __ZN10FBC_EXTOPTD1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea eax, [ebx]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCINIT@0:
.L_004A:
mov dword ptr [_FBC+20], -1
mov dword ptr [_FBC+24], -1
mov dword ptr [_FBC+32], -1
push -1
push 20
push 64
lea eax, [_FBC+72]
push eax
call _LISTINIT@16
push -1
push 20
push 16
lea eax, [_FBC+104]
push eax
call _LISTINIT@16
push 16
lea eax, [_FBC+156]
push eax
call _STRSETINIT@8
push 64
lea eax, [_FBC+200]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+232]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+264]
push eax
call _STRSETINIT@8
push 16
lea eax, [_FBC+308]
push eax
call _STRSETINIT@8
push 16
lea eax, [_FBC+352]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+396]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+440]
push eax
call _STRSETINIT@8
call _FBGLOBALINIT@0
push 10
call _FBGETOPTION@4
mov dword ptr [_FBC+3276], eax
mov dword ptr [_FBC+68], -1
.L_004B:
ret
.balign 16
_HSETOUTNAME@0:
push ebp
mov ebp, esp
sub esp, 44
.L_004C:
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_004F
jmp .L_004D
.L_004F:
.L_004E:
push 0
call _FBGETOPTION@4
cmp eax, 1
jne .L_0051
push 0
push -1
push 3
push offset _Lt_0053
push -1
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPFILENAME@4
push eax
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
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_004D
.L_0051:
.L_0050:
push 0
push 261
lea eax, [_FBC+745]
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0059
.L_005A:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_005E
.L_005F:
cmp dword ptr [ebp-8], 1
je .L_005E
.L_0060:
cmp dword ptr [ebp-8], 0
je .L_005E
.L_0061:
cmp dword ptr [ebp-8], 4
jne .L_005D
.L_005E:
push 0
push -1
push 5
push offset _Lt_001B
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_005B
.L_005D:
cmp dword ptr [ebp-8], 11
jne .L_0063
.L_0064:
push 0
push -1
push 6
push offset _Lt_0065
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
.L_0063:
.L_005B:
jmp .L_0057
.L_0059:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_006C
.L_006D:
cmp dword ptr [ebp-8], 0
jne .L_006B
.L_006C:
push 0
push -1
push 5
push offset _Lt_006E
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_0069
.L_006B:
cmp dword ptr [ebp-8], 2
je .L_0071
.L_0072:
cmp dword ptr [ebp-8], 9
je .L_0071
.L_0073:
cmp dword ptr [ebp-8], 5
je .L_0071
.L_0074:
cmp dword ptr [ebp-8], 8
je .L_0071
.L_0075:
cmp dword ptr [ebp-8], 10
je .L_0071
.L_0076:
cmp dword ptr [ebp-8], 6
je .L_0071
.L_0077:
cmp dword ptr [ebp-8], 7
jne .L_0070
.L_0071:
push 0
push -1
push 4
push offset _Lt_0078
push -1
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_0052
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_0069
.L_0070:
cmp dword ptr [ebp-8], 3
jne .L_007C
.L_007D:
push 0
push -1
push 5
push offset _Lt_007E
push 261
lea eax, [_FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
.L_007C:
.L_0069:
.L_0067:
.L_0057:
.L_004D:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCEND@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0080:
lea eax, [_FBC+156]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_FileKill@4
test eax, eax
je .L_0085
.L_0085:
.L_0084:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
push dword ptr [ebp+8]
call _fb_End@4
.L_0081:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDTEMP@4:
push ebp
mov ebp, esp
.L_0086:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETADD@12
.L_0087:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCREMOVETEMP@4:
push ebp
mov ebp, esp
.L_0088:
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRSETDEL@8
.L_0089:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDOBJ@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
lea eax, [_FBC+200]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGET1STOUTPUTLINEFROMCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call _fb_FileFree@0
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpenPipe@28
test eax, eax
je .L_008F
jmp .L_008D
.L_008F:
.L_008E:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp-16]
call _fb_FileInput@4
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_InputString@12
push dword ptr [ebp-16]
call _fb_FileClose@4
test eax, eax
je .L_0090
push 0
push 0
push offset _Lt_0091
push 303
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0090:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .L_008D
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_008D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCQUERYGCC@4:
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0092:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
push 3
call _FBCFINDBIN@8
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0096
.L_0097:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-56], 1
jne .L_0099
.L_009A:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0094
.L_0099:
cmp dword ptr [ebp-56], 4
jne .L_009C
.L_009D:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .L_0094
.L_009C:
cmp dword ptr [ebp-56], 5
je .L_009F
.L_00A0:
cmp dword ptr [ebp-56], 6
jne .L_009E
.L_009F:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_009E:
.L_0094:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-40], eax
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call _fb_FileOpenPipe@28
test eax, eax
je .L_00A3
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push dword ptr [ebp-40]
call _fb_FileInput@4
push 0
push -1
lea eax, [ebp-52]
push eax
call _fb_InputString@12
push dword ptr [ebp-40]
call _fb_FileClose@4
test eax, eax
je .L_00A4
push 0
push 0
push offset _Lt_0091
push 334
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00A4:
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0093
lea eax, [ebp-52]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0093:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCBUILDPATHTOLIBFILE@4:
push ebp
mov ebp, esp
sub esp, 88
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_001C
push 261
lea eax, [_FBC+2751]
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
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
je .L_00AA
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
jmp .L_00A6
.L_00AA:
.L_00A9:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
push 3
call _FBCFINDBIN@8
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-88], eax
cmp dword ptr [ebp-88], 0
jne .L_00AD
.L_00AE:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-88], 1
jne .L_00AF
.L_00B0:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-88], 4
jne .L_00B1
.L_00B2:
push 0
push 6
push offset _Lt_0098
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-88], 5
je .L_00B4
.L_00B5:
cmp dword ptr [ebp-88], 6
jne .L_00B3
.L_00B4:
push 0
push 6
push offset _Lt_009B
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign@20
.L_00B3:
.L_00AB:
push 0
push -1
push -1
push 0
push dword ptr [ebp+8]
push 19
push offset _Lt_00B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-60]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_00BA
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
push dword ptr [ebp-24]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_00BC
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_00A6
.L_00BC:
.L_00BB:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00A6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDLIBFILE@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00C0
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
jne .L_00C2
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_00BE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDDEFLIBPATH@4:
push ebp
mov ebp, esp
.L_00C3:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+440]
push eax
call _STRSETADD@12
.L_00C4:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDLIBPATHFOR@4:
push ebp
mov ebp, esp
sub esp, 24
.L_00C5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push -1
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00C9
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
.L_00C9:
.L_00C8:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_00C6:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDBIN@8:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.L_00CA:
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 4
test ebx, ebx
je .L_00CD
push 0
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx+20]
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .L_00CB
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
imul eax, 284
and dword ptr [_FBCTOOLTB+eax+16], -9
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 2
test ebx, ebx
je .L_00CF
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_GetEnviron@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00CF:
.L_00CE:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
test eax, eax
jne .L_00D1
push 0
push -1
push 5
push offset _Lt_001B
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [_FBC+2229]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS@4
test eax, eax
jne .L_00D5
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_00D8
.L_00D9:
cmp dword ptr [ebp+8], 0
jne .L_00DB
push 0
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset _Lt_00DC
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp+8], 2
jne .L_00DE
push 0
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset _Lt_00DF
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCQUERYGCC@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_00DE:
.L_00DA:
jmp .L_00D6
.L_00D8:
cmp dword ptr [ebp-28], 0
je .L_00E2
.L_00E3:
cmp dword ptr [ebp-28], 3
jne .L_00E1
.L_00E2:
.L_00E1:
.L_00D6:
.L_00D5:
.L_00D4:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS@4
test eax, eax
jne .L_00E5
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_00E7
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_00E9
push 0
push -1
push 5
push offset _Lt_001B
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [_FBC+3012]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
jmp .L_00E8
.L_00E9:
push 0
push -1
push 5
push offset _Lt_001B
push -1
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push 129
lea ebx, [_FBC+1697]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00E8:
jmp .L_00E6
.L_00E7:
push 0
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [_FBCTOOLTB+eax]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_00E6:
mov ebx, dword ptr [ebp+8]
imul ebx, 284
or dword ptr [_FBCTOOLTB+ebx+16], 8
.L_00E5:
.L_00E4:
.L_00D1:
.L_00D0:
push 0
push -1
push dword ptr [ebp+12]
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [_FBCTOOLTB+ebx+20]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [_FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_FBCRUNBIN@12:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call _FBCFINDBIN@8
cmp dword ptr [_FBC+56], 0
je .L_00F1
push 2
push 3
push offset _Lt_00F2
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_00F1:
.L_00F0:
mov eax, dword ptr [ebp+12]
imul eax, 284
mov ebx, dword ptr [_FBCTOOLTB+eax+16]
and ebx, 8
test ebx, ebx
jne .L_00F8
push dword ptr [ebp+16]
lea ebx, [ebp-20]
push ebx
call _fb_Exec@8
mov dword ptr [ebp-8], eax
jmp .L_00F7
.L_00F8:
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
mov dword ptr [ebp-8], eax
.L_00F7:
cmp dword ptr [ebp-8], 0
jne .L_00FC
mov dword ptr [ebp-4], -1
jmp .L_00FB
.L_00FC:
cmp dword ptr [ebp-8], 0
jge .L_00FD
push 0
push 6
push -1
push dword ptr [ebp-20]
push 91
call _ERRREPORTEX@20
jmp .L_00FB
.L_00FD:
cmp dword ptr [_FBC+56], 0
je .L_00FF
push 1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr@4
push eax
push -1
push 29
push offset _Lt_0101
push -1
push -1
lea eax, [ebp-20]
push eax
push -1
push 11
push offset _Lt_0100
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_00FF:
.L_00FE:
.L_00FB:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HPUTLDARGSINTOFILE@4:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.L_0106:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 10
push offset _Lt_0108
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [ebp-16]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_010A
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0107
.L_010A:
.L_0109:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_010C
push offset _Lt_010B
push dword ptr [ebp-28]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 1
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .L_010E
push 0
push 0
push offset _Lt_0091
push 579
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010E:
cmp dword ptr [_FBC+40], 0
jne .L_0110
lea eax, [ebp-16]
push eax
call _FBCADDTEMP@4
.L_0110:
.L_010F:
cmp dword ptr [_FBC+56], 0
je .L_0112
push 2
push 4
push offset _Lt_0114
push -1
push -1
lea eax, [ebp-16]
push eax
push 16
push offset _Lt_0113
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
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString@12
.L_0112:
.L_0111:
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_0117
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0107:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_CLEARDEFLIST@4:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.L_0119:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_011C
mov dword ptr [ebp-4], 0
jmp .L_011A
.L_011C:
.L_011B:
push 0
push -1
push 11
push offset _Lt_011D
push -1
push dword ptr [ebp+8]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
call _fb_FileFree@0
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_0120
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0121
push 0
push 0
push offset _Lt_0091
push 604
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0121:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_011A
.L_0120:
.L_011F:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_0122:
push dword ptr [ebp-8]
call _fb_FileEof@4
test eax, eax
jne .L_0123
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 5
push offset _Lt_0124
push -1
push 4
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0126
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrLen@8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.L_0126:
.L_0125:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call _fb_PrintString@12
jmp .L_0122
.L_0123:
push dword ptr [ebp-36]
call _fb_FileClose@4
test eax, eax
je .L_0128
push 0
push 0
push offset _Lt_0091
push 619
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0128:
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0129
push 0
push 0
push offset _Lt_0091
push 620
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0129:
push dword ptr [ebp+8]
call _fb_FileKill@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call _rename
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_011A
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_011A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGENERATEEMPTYDEFFILE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_012A:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_012D
jmp .L_012B
.L_012D:
.L_012C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset _Lt_012F
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-12]
call _fb_PrintString@12
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0130
push 0
push 0
push offset _Lt_0091
push 634
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0130:
mov dword ptr [ebp-4], -1
.L_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_MAKEIMPLIB@8:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.L_0131:
push dword ptr [ebp+12]
call _CLEARDEFLIST@4
test eax, eax
jne .L_0134
jmp .L_0132
.L_0134:
.L_0133:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen@4
cmp edx, 0
jne .L_0136
cmp eax, 0
jne .L_0136
.L_08F2:
push dword ptr [ebp+12]
call _HGENERATEEMPTYDEFFILE@4
test eax, eax
jne .L_0138
jmp .L_0132
.L_0138:
.L_0137:
.L_0136:
.L_0135:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset _Lt_0139
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_013E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 8
push offset _Lt_0140
push -1
push -1
push dword ptr [ebp+8]
push -1
push 4
push offset _Lt_0052
push -1
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPFILENAME@4
push eax
push 16
push offset _Lt_013F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 6
push offset _Lt_0146
call _FBCRUNBIN@12
test eax, eax
jne .L_0148
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0132
.L_0148:
.L_0147:
cmp dword ptr [_FBC+40], 0
jne .L_014A
push dword ptr [ebp+12]
call _FBCADDTEMP@4
.L_014A:
.L_0149:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0132:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFINDLIB@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_014B:
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_014E
push 0
push 3
push offset _Lt_014F
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .L_014D
.L_014E:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX@20
.L_014D:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_014C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCLINKERISGOLD@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0150:
push 3
call _FBGETOPTION@4
cmp eax, 7
jne .L_0153
mov dword ptr [ebp-4], 0
jmp .L_0151
jmp .L_0152
.L_0153:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
push 2
call _FBCFINDBIN@8
push 0
push 11
push offset _Lt_0154
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 8
push offset _Lt_0155
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-16]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0151
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0152:
.L_0151:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_FBCISUSINGGOLDLINKER@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0156:
call _FBTARGETSUPPORTSELF@0
test eax, eax
je .L_0159
call _FBCLINKERISGOLD@0
mov dword ptr [ebp-4], eax
jmp .L_0157
.L_0159:
.L_0158:
mov dword ptr [ebp-4], 0
.L_0157:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLINKFILES@0:
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_015A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
call _HSETOUTNAME@0
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_015E
.L_015F:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0162
.L_0163:
push 0
push 11
push offset _Lt_0164
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0160
.L_0162:
cmp dword ptr [ebp-60], 1
jne .L_0165
.L_0166:
push 0
push 12
push offset _Lt_0167
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0165:
.L_0160:
jmp .L_015C
.L_015E:
cmp dword ptr [ebp-56], 2
jne .L_0168
.L_0169:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_016C
.L_016D:
push 0
push 13
push offset _Lt_016E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_016A
.L_016C:
cmp dword ptr [ebp-60], 1
jne .L_016F
.L_0170:
push 0
push 15
push offset _Lt_0171
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_016A
.L_016F:
cmp dword ptr [ebp-60], 2
jne .L_0172
.L_0173:
push 0
push 22
push offset _Lt_0174
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0172:
.L_016A:
jmp .L_015C
.L_0168:
cmp dword ptr [ebp-56], 9
jne .L_0175
.L_0176:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_0179
.L_017A:
push 0
push 12
push offset _Lt_017B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0177
.L_0179:
cmp dword ptr [ebp-60], 1
jne .L_017C
.L_017D:
push 0
push 14
push offset _Lt_017E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0177
.L_017C:
cmp dword ptr [ebp-60], 2
jne .L_017F
.L_0180:
push 0
push 13
push offset _Lt_0181
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_017F:
.L_0177:
.L_0175:
.L_015C:
push 0
push 5
push offset _Lt_0184
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0186
push 0
push 9
push offset _Lt_0187
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0189
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
push 0
push 4
push offset _Lt_018A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-68], eax
.L_018B:
cmp dword ptr [ebp-68], 0
je .L_018C
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-68]
push 3
push offset _Lt_014F
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _LISTGETNEXT@4
mov dword ptr [ebp-68], eax
jmp .L_018B
.L_018C:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .L_0191
push 0
push 5
push offset _Lt_0192
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0191:
.L_0190:
.L_0193:
cmp dword ptr [ebp-68], 0
je .L_0194
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-68]
push 3
push offset _Lt_014F
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-68]
call _LISTGETNEXT@4
mov dword ptr [ebp-68], eax
jmp .L_0193
.L_0194:
lea eax, [ebp-16]
push eax
push 10
push offset _Lt_0198
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_0186:
.L_0185:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_019A
.L_019C:
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_019E
push 0
push 8
push offset _Lt_019F
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
jmp .L_019D
.L_019E:
push 4
push offset _Lt_01A0
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01A2
push 0
push 8
push offset _Lt_01A3
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
.L_01A2:
.L_01A1:
.L_019D:
push 0
push 13
push offset _Lt_01A4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01A6
push 0
push -1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 0
push 30
push offset _Lt_01A9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
test eax, eax
jne .L_01AB
push 0
push 26
push offset _Lt_01AC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01AA
.L_01AB:
push 0
push 22
push offset _Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01AA:
.L_01A6:
.L_01A5:
jmp .L_0199
.L_01AE:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01B0
push 0
push -1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 0
push 12
push offset _Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+484]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 4
push offset _Lt_0052
push -1
push 3
lea eax, [ebp-28]
push eax
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_01B5
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen@8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_01B5:
.L_01B4:
jmp .L_01AF
.L_01B0:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_01B7
.L_01B9:
push 0
push 38
push offset _Lt_01BA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BB:
push 0
push 38
push offset _Lt_01BC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BD:
push 0
push 34
push offset _Lt_01BE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01BF:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 0
jne .L_01C2
.L_01C3:
push 0
push 36
push offset _Lt_01C4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C2:
cmp dword ptr [ebp-64], 1
jne .L_01C5
.L_01C6:
push 0
push 45
push offset _Lt_01C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C5:
cmp dword ptr [ebp-64], 2
jne .L_01C8
.L_01C9:
push 0
push 42
push offset _Lt_01CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01C0
.L_01C8:
cmp dword ptr [ebp-64], 3
jne .L_01CB
.L_01CC:
push 0
push 44
push offset _Lt_01CD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01CB:
.L_01C0:
jmp .L_01B6
.L_01CE:
push 0
push 40
push offset _Lt_01CF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01D0:
push 0
push 36
push offset _Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01B6
.L_01B7:
mov eax, dword ptr [ebp-60]
add eax, 4294967294
cmp eax, 8
ja .L_01B6
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_01D2+eax*4-8]
_.L_01D2:
.int .L_01BF
.int .L_01B6
.int .L_01B6
.int .L_01B9
.int .L_01BB
.int .L_01BD
.int .L_01D0
.int .L_01B6
.int .L_01CE
.L_01B6:
.L_01AF:
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 33
mov ebx, eax
call _FBGETOPTION@4
or ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01D4
push 0
push 18
push offset _Lt_01D5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01D4:
.L_01D3:
jmp .L_0199
.L_01D6:
push 0
push 66
push offset _Lt_01D7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0199
.L_01D8:
push 0
push 4
push offset _Lt_01D9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_01DF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-60], 0
.L_01E3:
push 0
push 5
push offset _Lt_01E4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 32
mov eax, dword ptr [ebp-60]
sal eax, 5
lea ebx, [_Lt_08FE+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
.L_01E1:
inc dword ptr [ebp-60]
.L_01E0:
cmp dword ptr [ebp-60], 3
jle .L_01E3
.L_01E2:
push 0
push 14
push offset _Lt_01E5
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01E6
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 11
push offset _Lt_01E7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01E8
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_01EA
push 0
push 11
push offset _Lt_01E7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_01EB
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01EA:
.L_01E9:
jmp .L_0199
.L_019A:
cmp dword ptr [ebp-56], 11
ja .L_0199
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_01EC+eax*4]
_.L_01EC:
.int .L_019C
.int .L_019C
.int .L_01AE
.int .L_0199
.int .L_01D6
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01AE
.int .L_01D8
.L_0199:
push 3
call _FBGETOPTION@4
cmp eax, 3
jne .L_01EE
push 0
push 6
push offset _Lt_01EF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_01F1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01ED
.L_01EE:
push 39
call _FBGETOPTION@4
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call _FBCISUSINGGOLDLINKER@0
not eax
and ebx, eax
je .L_01F3
push 0
push 6
push offset _Lt_01EF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 12
push offset _Lt_01F5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01F3:
.L_01F2:
.L_01ED:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_01F7
.L_01F9:
push 38
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
push 0
push 10
push offset _Lt_01FA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-60]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01FB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-60]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_01FD
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01FF
push -1
lea eax, [ebp-40]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
push 0
push 16
push offset _Lt_0200
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_01FD:
.L_01FC:
jmp .L_01F6
.L_0201:
push 0
push 23
push offset _Lt_0202
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_01F6
.L_01F7:
cmp dword ptr [ebp-56], 4
ja .L_01F6
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0203+eax*4]
_.L_0203:
.int .L_01F9
.int .L_01F9
.int .L_01F6
.int .L_01F6
.int .L_0201
.L_01F6:
cmp dword ptr [_FBC+1960], 0
je .L_0205
push 0
push 10
push offset _Lt_0206
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0205:
.L_0204:
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0208
push 0
push 7
push offset _Lt_0209
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0208:
.L_0207:
push 14
call _FBGETOPTION@4
test eax, eax
jne .L_020B
push 23
call _FBGETOPTION@4
test eax, eax
jne .L_020D
push 3
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_020F
cmp dword ptr [_FBC+1964], 0
je .L_0211
push 0
push 4
push offset _Lt_0212
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0211:
.L_0210:
.L_020F:
.L_020E:
.L_020D:
.L_020C:
.L_020B:
.L_020A:
lea eax, [_FBC+440]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0214
push 0
push 6
push offset _Lt_0215
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
jmp .L_0213
.L_0214:
push 0
push 5
push offset _Lt_0216
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
.L_0213:
.L_0217:
cmp dword ptr [ebp-56], 0
je .L_0218
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-68]
push ebx
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea ebx, [ebp-80]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0217
.L_0218:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_021D
.L_021F:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_0221
push 0
push -1
push offset _Lt_0222
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0220
.L_0221:
push 0
push -1
push offset _Lt_0222
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0224
push 0
push -1
push offset _Lt_0225
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0224:
.L_0223:
.L_0220:
jmp .L_021C
.L_0226:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_0228
push 0
push -1
push offset _Lt_0229
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0227
.L_0228:
push 0
push -1
push offset _Lt_022A
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 23
call _FBGETOPTION@4
test eax, eax
je .L_022C
push 0
push -1
push offset _Lt_022D
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_022C:
.L_022B:
.L_0227:
push 0
push -1
push offset _Lt_022E
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_021C
.L_022F:
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0231
push 0
push -1
push offset _Lt_0225
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0230
.L_0231:
push 0
push -1
push offset _Lt_0222
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0230:
jmp .L_021C
.L_0232:
push 0
call _FBGETOPTION@4
test eax, eax
jne .L_0234
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0236
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_0238
.L_023A:
push 0
push -1
push offset _Lt_0225
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0237
.L_023B:
push 0
push -1
push offset _Lt_023C
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0237
.L_0238:
mov eax, dword ptr [ebp-60]
add eax, 4294967288
cmp eax, 2
ja .L_023B
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_023D+eax*4-32]
_.L_023D:
.int .L_023A
.int .L_023B
.int .L_023A
.L_0237:
jmp .L_0235
.L_0236:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
jmp .L_023F
.L_0241:
push 0
push -1
push offset _Lt_0222
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_023E
.L_0242:
push 0
push -1
push offset _Lt_0243
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_023E
.L_023F:
mov eax, dword ptr [ebp-60]
add eax, 4294967288
cmp eax, 2
ja .L_0242
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.L_0244+eax*4-32]
_.L_0244:
.int .L_0241
.int .L_0242
.int .L_0241
.L_023E:
.L_0235:
.L_0234:
.L_0233:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0246
push 3
call _FBGETOPTION@4
cmp eax, 8
je .L_0248
push 0
push -1
push offset _Lt_0249
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0248:
.L_0247:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_024B
push 0
push -1
push offset _Lt_024C
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_024A
.L_024B:
push 0
push -1
push offset _Lt_022E
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_024A:
.L_0246:
.L_0245:
jmp .L_021C
.L_024D:
push 0
push -1
push offset _Lt_0222
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_021C
.L_021D:
cmp dword ptr [ebp-56], 10
ja .L_021C
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_024E+eax*4]
_.L_024E:
.int .L_0226
.int .L_021F
.int .L_0232
.int .L_022F
.int .L_024D
.int .L_0232
.int .L_0232
.int .L_0232
.int .L_0232
.int .L_0232
.int .L_0232
.L_021C:
cmp dword ptr [_FBC+1956], 0
jne .L_0250
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0252
push 0
push 3
push offset _Lt_014F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_001C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 37
call _FBGETOPTION@4
test eax, eax
je .L_0254
push 0
push 11
push offset _Lt_0255
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0253
.L_0254:
push 0
push 8
push offset _Lt_0256
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0253:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0252:
.L_0251:
.L_0250:
.L_024F:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
.L_0257:
cmp dword ptr [ebp-56], 0
je .L_0258
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-56]
push 3
push offset _Lt_014F
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0257
.L_0258:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_025D
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_025F
push 0
push 6
push offset _Lt_0260
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_025F:
.L_025E:
.L_025D:
.L_025C:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
.L_0261:
cmp dword ptr [ebp-56], 0
je .L_0262
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
push dword ptr [ebp-56]
push 3
push offset _Lt_014F
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0261
.L_0262:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-56], eax
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.L_0266:
cmp dword ptr [ebp-56], 0
je .L_0267
cmp dword ptr [ebp-60], 0
je .L_0268
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08F4
.L_0268:
mov dword ptr [ebp-64], -1
.L_08F4:
cmp dword ptr [ebp-64], 0
je .L_026B
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-56]
lea ebx, [eax]
push ebx
push 4
push offset _Lt_026C
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_026B:
.L_026A:
push dword ptr [ebp-56]
call _LISTGETNEXT@4
mov dword ptr [ebp-56], eax
jmp .L_0266
.L_0267:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0270
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0272
push 0
push 6
push offset _Lt_0273
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0271
.L_0272:
push 0
push 6
push offset _Lt_0274
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0271:
.L_0270:
.L_026F:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_0276
.L_0278:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_027A
push 0
push -1
push offset _Lt_027B
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0279
.L_027A:
push 0
push -1
push offset _Lt_027C
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0279:
push 3
call _FBGETOPTION@4
cmp eax, 8
je .L_027E
push 0
push -1
push offset _Lt_027F
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_027E:
.L_027D:
jmp .L_0275
.L_0280:
push 0
push -1
push offset _Lt_027C
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0275
.L_0276:
cmp dword ptr [ebp-56], 10
ja .L_0275
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0281+eax*4]
_.L_0281:
.int .L_0280
.int .L_0275
.int .L_0278
.int .L_0275
.int .L_0275
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0278
.int .L_0275
.int .L_0278
.L_0275:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_0283
push 0
push 26
push offset _Lt_0284
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0283:
.L_0282:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_0286
.L_0288:
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_0289
mov eax, dword ptr [ebp-60]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08F5
.L_0289:
mov dword ptr [ebp-64], -1
.L_08F5:
cmp dword ptr [ebp-64], 0
je .L_028C
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 1
je .L_028D
mov eax, dword ptr [ebp-68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_08F6
.L_028D:
mov dword ptr [ebp-72], -1
.L_08F6:
cmp dword ptr [ebp-72], 0
jne .L_028F
mov eax, dword ptr [ebp-68]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .L_08F7
.L_028F:
mov dword ptr [ebp-76], -1
.L_08F7:
cmp dword ptr [ebp-76], 0
jne .L_0291
mov eax, dword ptr [ebp-68]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-80], eax
jmp .L_08F8
.L_0291:
mov dword ptr [ebp-80], -1
.L_08F8:
cmp dword ptr [ebp-80], 0
je .L_0294
push 0
push 16
push offset _Lt_0295
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0294:
.L_0293:
.L_028C:
.L_028B:
jmp .L_0285
.L_0286:
mov eax, dword ptr [ebp-56]
add eax, 4294967294
cmp eax, 8
ja .L_0285
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_0296+eax*4-8]
_.L_0296:
.int .L_0288
.int .L_0285
.int .L_0285
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.int .L_0288
.L_0285:
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrLen@8
push 261
lea ebx, [_FBC+3012]
push ebx
mov ebx, eax
call _fb_StrLen@8
cmp ebx, eax
jle .L_0298
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-48], eax
jmp .L_08F9
.L_0298:
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-48], eax
.L_08F9:
mov eax, dword ptr [ebp-48]
add eax, 7
mov dword ptr [ebp-44], eax
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push -1
lea ebx, [ebp-16]
push ebx
mov ebx, eax
call _fb_StrLen@8
mov ecx, 2047
sub ecx, dword ptr [ebp-44]
cmp eax, ecx
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_029B
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE@4
test eax, eax
jne .L_029D
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_029D:
.L_029C:
.L_029B:
.L_029A:
mov dword ptr [ebp-52], 2
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_029F
mov dword ptr [ebp-52], 13
.L_029F:
.L_029E:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-52]
push offset _Lt_02A0
call _FBCRUNBIN@12
test eax, eax
jne .L_02A2
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02A2:
.L_02A1:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
jmp .L_02A4
.L_02A6:
call _fb_FileFree@0
mov dword ptr [ebp-60], eax
push 0
push dword ptr [ebp-60]
push 0
push 3
push 0
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .L_02A8
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02A8:
.L_02A7:
push 4
push 38
call _FBGETOPTION@4
mov dword ptr [ebp-64], eax
lea eax, [ebp-64]
push eax
push 533
push dword ptr [ebp-60]
call _fb_FilePut@16
test eax, eax
je .L_02AA
push 0
push 0
push offset _Lt_0091
push 1262
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AA:
push dword ptr [ebp-60]
call _fb_FileClose@4
test eax, eax
je .L_02AB
push 0
push 0
push offset _Lt_0091
push 1264
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_02AB:
jmp .L_02A3
.L_02AC:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_02AE
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call _MAKEIMPLIB@8
test eax, eax
jne .L_02B0
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02B0:
.L_02AF:
.L_02AE:
.L_02AD:
jmp .L_02A3
.L_02B1:
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_02B3
push 0
push -1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HSTRIPEXT@4
push eax
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
.L_02B3:
.L_02B2:
push 0
push 9
push offset _Lt_02B6
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push 0
push 129
lea eax, [_FBC+1826]
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_02B7
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 14
call _FBGETOPTION@4
test eax, eax
je .L_02B9
push 0
push 12
push offset _Lt_02BB
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-132]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_02BE
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-132]
push eax
call _fb_StrDelete@4
.L_02B9:
.L_02B8:
push 0
push 8
push offset _Lt_02C0
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_02C2
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
push 0
push 3
push offset _Lt_02C3
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+484]
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0183
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [_FBC+56], 0
jne .L_02C5
push 0
push 6
push offset _Lt_02C6
push -1
lea eax, [ebp-80]
push eax
call _fb_StrConcatAssign@20
.L_02C5:
.L_02C4:
cmp dword ptr [_FBC+56], 0
je .L_02C8
push 2
push 6
push offset _Lt_02C9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-80]
push eax
push 0
call _fb_PrintString@12
.L_02C8:
.L_02C7:
lea eax, [ebp-68]
push eax
push 9
call _FBCFINDBIN@8
push -1
lea eax, [ebp-80]
push eax
push -1
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-68]
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 0
je .L_02CD
cmp dword ptr [_FBC+56], 0
je .L_02CF
push 1
push -1
push dword ptr [ebp-84]
call _fb_IntToStr@4
push eax
push 24
push offset _Lt_02D0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_02CF:
.L_02CE:
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_015B
.L_02CD:
.L_02CC:
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .L_02A3
.L_02A4:
cmp dword ptr [ebp-56], 4
ja .L_02A3
mov eax, dword ptr [ebp-56]
jmp dword ptr [_.L_02D2+eax*4]
_.L_02D2:
.int .L_02AC
.int .L_02AC
.int .L_02A3
.int .L_02A6
.int .L_02B1
.L_02A3:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_08FE:
.ascii "CASE_INSENSITIVE_FS=1\0"
.skip 10,0
.ascii "TOTAL_MEMORY=67108864\0"
.skip 10,0
.ascii "ALLOW_MEMORY_GROWTH=1\0"
.skip 10,0
.ascii "RETAIN_COMPILER_SETTINGS=1\0"
.skip 5,0

.section .text
.balign 16
_HREADOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 20
.L_02D3:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02D5:
lea eax, [ebp-12]
push eax
call _OBJINFOREADNEXT@4
mov dword ptr [ebp-20], eax
jmp .L_02D9
.L_02DB:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETADD@12
jmp .L_02D8
.L_02DC:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETADD@12
jmp .L_02D8
.L_02DD:
cmp dword ptr [_FBC+3280], 0
jne .L_02DF
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 20
call _ERRREPORTWARNEX@20
mov dword ptr [_FBC+3280], -1
push -1
push 35
call _FBSETOPTION@8
.L_02DF:
.L_02DE:
jmp .L_02D8
.L_02E0:
push -1
push 36
call _FBSETOPTION@8
jmp .L_02D8
.L_02E1:
push dword ptr [ebp-12]
call _FBGETLANGID@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02E3
mov dword ptr [ebp-16], 0
.L_02E3:
.L_02E2:
mov eax, dword ptr [_FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02E5
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 21
call _ERRREPORTWARNEX@20
mov eax, dword ptr [ebp-16]
mov dword ptr [_FBC+3276], eax
push dword ptr [ebp-16]
push 10
call _FBSETOPTION@8
.L_02E5:
.L_02E4:
jmp .L_02D8
.L_02E6:
jmp .L_02D6
jmp .L_02D8
.L_02D9:
cmp dword ptr [ebp-20], 4
ja .L_02E6
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02E7+eax*4]
_.L_02E7:
.int .L_02DB
.int .L_02DC
.int .L_02DD
.int .L_02E0
.int .L_02E1
.L_02D8:
.L_02D7:
jmp .L_02D5
.L_02D6:
call _OBJINFOREADEND@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_02D4:
mov esp, ebp
pop ebp
ret
.balign 16
_HCOLLECTOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02E8:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_02EA:
cmp dword ptr [ebp-4], 0
je .L_02EB
push dword ptr [ebp-4]
call _OBJINFOREADOBJ@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_02EA
.L_02EB:
lea eax, [_FBC+396]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.L_02EC:
cmp dword ptr [ebp-8], 0
je .L_02ED
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02EF
lea eax, [_FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call _OBJINFOREADLIB@8
call _HREADOBJINFO@0
.L_02EF:
.L_02EE:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .L_02EC
.L_02ED:
lea eax, [_FBC+232]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_02F0:
cmp dword ptr [ebp-4], 0
je .L_02F1
push dword ptr [ebp-4]
call _OBJINFOREADLIBFILE@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_02F0
.L_02F1:
.L_02E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFATALINVALIDOPTION@8:
push ebp
mov ebp, esp
sub esp, 40
.L_02F2:
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02F7
mov dword ptr [ebp-40], 0
jmp .L_090C
.L_02F7:
mov dword ptr [ebp-40], -1
.L_090C:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0183
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset _Lt_0183
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 81
call _ERRREPORTEX@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 1
call _FBCEND@4
.L_02F3:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKWAITINGOBJFILE@0:
push ebp
mov ebp, esp
sub esp, 24
.L_02F9:
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_02FC
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
lea eax, [_FBC+8]
push eax
push 4
push offset _Lt_0182
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
push 292
call _ERRREPORTEX@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_02FC:
.L_02FB:
.L_02FA:
mov esp, ebp
pop ebp
ret
.balign 16
_HSETIOFILE@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_02FF:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrLen@8
test eax, eax
jne .L_0302
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_0304
push 0
push -1
push 3
push offset _Lt_0305
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
jmp .L_0303
.L_0304:
push 0
push -1
push 3
push offset _Lt_0305
push -1
push dword ptr [ebp+12]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_0303:
mov eax, dword ptr [ebp+8]
mov dword ptr [_FBC+4], eax
jmp .L_0301
.L_0302:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_0301:
lea eax, [_FBC+8]
push eax
call _FBCADDOBJ@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.L_0300:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDBAS@4:
push ebp
mov ebp, esp
.L_0308:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+72]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
.L_0309:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPARSEGNUTRIPLET@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0329:
mov dword ptr [ebp-4], 0
.L_032E:
mov eax, dword ptr [ebp-4]
push dword ptr [_GNUOSMAP+eax*8]
call _fb_StrAllocTempDescZ@4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
test eax, eax
jle .L_0330
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [_GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_032D
.L_0330:
.L_032F:
.L_032C:
inc dword ptr [ebp-4]
.L_032B:
cmp dword ptr [ebp-4], 11
jle .L_032E
.L_032D:
cmp dword ptr [ebp+12], 0
jle .L_0332
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-16], 0
.L_0336:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0338
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_0335
.L_0338:
.L_0337:
.L_0334:
inc dword ptr [ebp-16]
.L_0333:
cmp dword ptr [ebp-16], 16
jle .L_0336
.L_0335:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.L_0332:
.L_0331:
.L_032A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HPARSETARGETARG@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0345:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-20], 0
.L_034A:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [_FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_034C
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [_FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [_FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_0346
.L_034C:
.L_034B:
.L_0348:
inc dword ptr [ebp-20]
.L_0347:
cmp dword ptr [ebp-20], 11
jle .L_034A
.L_0349:
push 1
push offset _Lt_034D
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_034F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _FBIDENTIFYOS@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCPUTYPEFROMCPUFAMILYID@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_034F:
.L_034E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
test ecx, ecx
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0353
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HPARSEGNUTRIPLET@16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_0353:
.L_0352:
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete@4
.L_0346:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HANDLEOPT@12:
push ebp
mov ebp, esp
sub esp, 144
push ebx
.L_0356:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0359
.L_035B:
push dword ptr [ebp+12]
call _FBCADDOBJ@4
jmp .L_0358
.L_035C:
push 7
push offset _Lt_035D
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_FBC+28], eax
push dword ptr [ebp+12]
call _FBIDENTIFYFBCARCH@4
mov dword ptr [_FBC+24], eax
cmp dword ptr [_FBC+24], 0
jge .L_035F
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_0360
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HFATALINVALIDOPTION@8
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_035F:
.L_035E:
jmp .L_0358
.L_0363:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0367
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0366
.L_0368:
mov dword ptr [_FBC+32], 1
jmp .L_0364
.L_0366:
push 6
push offset _Lt_036A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0369
.L_036B:
mov dword ptr [_FBC+32], 0
jmp .L_0364
.L_0369:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_036C:
.L_0364:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_036D:
push dword ptr [ebp+12]
call _HADDBAS@4
jmp .L_0358
.L_036E:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_036F:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+52], -1
jmp .L_0358
.L_0370:
mov dword ptr [_FBC+52], -1
jmp .L_0358
.L_0371:
push dword ptr [ebp+12]
call _FBADDPREDEFINE@4
jmp .L_0358
.L_0372:
push 2
push 0
call _FBSETOPTION@8
jmp .L_0358
.L_0373:
push -1
push 16
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_0374:
push -1
push 22
call _FBSETOPTION@8
jmp .L_0358
.L_0375:
push -1
push 15
call _FBSETOPTION@8
jmp .L_0358
.L_0376:
push -1
push 13
call _FBSETOPTION@8
jmp .L_0358
.L_0377:
push -1
push 14
call _FBSETOPTION@8
jmp .L_0358
.L_0378:
push -1
push 19
call _FBSETOPTION@8
jmp .L_0358
.L_0379:
push -1
push 20
call _FBSETOPTION@8
jmp .L_0358
.L_037A:
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037B:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1006]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_037C:
push -1
push 16
call _FBSETOPTION@8
push -1
push 17
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037D:
push -1
push 16
call _FBSETOPTION@8
push -1
push 17
call _FBSETOPTION@8
push -1
push 18
call _FBSETOPTION@8
push -1
push 19
call _FBSETOPTION@8
push -1
push 22
call _FBSETOPTION@8
push -1
push 20
call _FBSETOPTION@8
push -1
push 21
call _FBSETOPTION@8
jmp .L_0358
.L_037E:
push -1
push 33
call _FBSETOPTION@8
jmp .L_0358
.L_037F:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0381
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0381:
.L_0380:
push 11
call _FBGETOPTION@4
and eax, dword ptr [ebp+16]
je .L_0383
push 0
push 1
push 0
push 30
call _ERRREPORTWARN@16
jmp .L_0382
.L_0383:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
push -1
push 11
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0385
push dword ptr [ebp-8]
push 12
call _FBSETOPTION@8
.L_0385:
.L_0384:
.L_0382:
jmp .L_0358
.L_0386:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 8
push offset _Lt_038A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0389
.L_038B:
mov dword ptr [ebp-8], 0
jmp .L_0387
.L_0389:
push 5
push offset _Lt_038D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_038C
.L_038E:
mov dword ptr [ebp-8], 1
jmp .L_0387
.L_038C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_038F:
.L_0387:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 6
call _FBSETOPTION@8
jmp .L_0358
.L_0390:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0394
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0396
.L_0397:
push 4
push offset _Lt_0395
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0393
.L_0396:
mov dword ptr [ebp-8], 0
jmp .L_0391
.L_0393:
push 4
push offset _Lt_0399
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0398
.L_039A:
mov dword ptr [ebp-8], 1
jmp .L_0391
.L_0398:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_039B:
.L_0391:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 5
call _FBSETOPTION@8
jmp .L_0358
.L_039C:
push -1
push 13
call _FBSETOPTION@8
push -1
push 14
call _FBSETOPTION@8
push -1
push 15
call _FBSETOPTION@8
jmp .L_0358
.L_039D:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_03A1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A0
.L_03A2:
mov dword ptr [_FBC+20], 0
jmp .L_039E
.L_03A0:
push 4
push offset _Lt_0040
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A3
.L_03A4:
mov dword ptr [_FBC+20], 1
jmp .L_039E
.L_03A3:
push 5
push offset _Lt_03A6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A5
.L_03A7:
mov dword ptr [_FBC+20], 2
jmp .L_039E
.L_03A5:
push 6
push offset _Lt_03A9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03A8
.L_03AA:
mov dword ptr [_FBC+20], 3
jmp .L_039E
.L_03A8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03AB:
.L_039E:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03AC:
mov dword ptr [_FBC+64], -1
jmp .L_0358
.L_03AD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03AF:
push dword ptr [ebp+12]
call _FBADDPREINCLUDE@4
jmp .L_0358
.L_03B0:
push 0
push dword ptr [ebp+12]
lea eax, [_FBC+264]
push eax
call _STRSETADD@12
jmp .L_0358
.L_03B1:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_03B3
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03B3:
.L_03B2:
push 11
call _FBGETOPTION@4
test eax, eax
jne .L_03B5
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_03B7
push dword ptr [ebp-8]
push 12
call _FBSETOPTION@8
.L_03B7:
.L_03B6:
.L_03B5:
.L_03B4:
jmp .L_0358
.L_03B8:
push 1
push 0
call _FBSETOPTION@8
jmp .L_0358
.L_03B9:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
mov dword ptr [_FBC+1136], -1
jmp .L_0358
.L_03BA:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+1140]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_03BB:
push 4
push offset _Lt_03BC
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .L_03BE
mov dword ptr [ebp-8], 2147483647
jmp .L_03BD
.L_03BE:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03C0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03C0:
.L_03BF:
.L_03BD:
push dword ptr [ebp-8]
push 26
call _FBSETOPTION@8
jmp .L_0358
.L_03C1:
push -1
push 35
call _FBSETOPTION@8
mov dword ptr [_FBC+3280], -1
jmp .L_0358
.L_03C2:
mov dword ptr [_FBC+1956], -1
jmp .L_0358
.L_03C3:
push 0
push 25
call _FBSETOPTION@8
jmp .L_0358
.L_03C4:
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 12
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 8
lea eax, [ebp-100]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
lea eax, [ebp-124]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
push 0
push 2
push offset _Lt_01FB
push -1
lea eax, [ebp-136]
push eax
call _fb_StrAssign@20
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call _HSPLITSTR@12
lea eax, [ebp-136]
push eax
call _fb_StrDelete@4
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayLBound@8
mov dword ptr [ebp-140], eax
push 1
lea eax, [ebp-124]
push eax
call _fb_ArrayUBound@8
mov dword ptr [ebp-144], eax
jmp .L_03C7
.L_03CA:
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call _fb_StrLen@8
test eax, eax
jle .L_03CC
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+352]
push ebx
call _STRSETADD@12
.L_03CC:
.L_03CB:
.L_03C8:
inc dword ptr [ebp-140]
.L_03C7:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03CA
.L_03C9:
lea ebx, [ebp-124]
push ebx
call _fb_ArrayStrErase@4
jmp .L_0358
.L_03CD:
push 0
push 39
call _FBSETOPTION@8
jmp .L_0358
.L_03CE:
mov dword ptr [_FBC+1964], 0
jmp .L_0358
.L_03CF:
call _HCHECKWAITINGOBJFILE@0
cmp dword ptr [_FBC+4], 0
je .L_03D1
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [_FBC+4]
push dword ptr [ebx+12]
call _fb_StrAssign@20
mov ebx, dword ptr [_FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03D0
.L_03D1:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrAssign@20
.L_03D0:
jmp .L_0358
.L_03D2:
push 4
push offset _Lt_03D3
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .L_03D5
mov dword ptr [ebp-8], 3
jmp .L_03D4
.L_03D5:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03D7
mov dword ptr [ebp-8], 0
jmp .L_03D6
.L_03D7:
cmp dword ptr [ebp-8], 3
jle .L_03D8
mov dword ptr [ebp-8], 3
.L_03D8:
.L_03D6:
.L_03D4:
push dword ptr [ebp-8]
push 8
call _FBSETOPTION@8
jmp .L_0358
.L_03D9:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
lea eax, [_FBC+308]
push eax
call _STRSETADD@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03DB:
push -1
push 37
call _FBSETOPTION@8
jmp .L_0358
.L_03DC:
push -1
push 1
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
jmp .L_0358
.L_03DD:
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
push 92
lea eax, [_FBC+1968]
push eax
call _HREPLACESLASH@8
jmp .L_0358
.L_03DE:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_03E2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E1
.L_03E3:
mov dword ptr [_FBC+68], 0
jmp .L_03DF
.L_03E1:
push 7
push offset _Lt_03E5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E4
.L_03E6:
mov dword ptr [_FBC+68], 1
jmp .L_03DF
.L_03E4:
push 2
push offset _Lt_03E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03E7
.L_03E9:
mov dword ptr [_FBC+68], 2
jmp .L_03DF
.L_03E7:
push 9
push offset _Lt_03EB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03EA
.L_03EC:
mov dword ptr [_FBC+68], 3
jmp .L_03DF
.L_03EA:
push 6
push offset _Lt_03EE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03ED
.L_03EF:
mov dword ptr [_FBC+68], 4
jmp .L_03DF
.L_03ED:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_03F0:
.L_03DF:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03F1:
push -1
push 23
call _FBSETOPTION@8
jmp .L_0358
.L_03F2:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
mov dword ptr [_FBC+40], -1
jmp .L_0358
.L_03F3:
mov dword ptr [_FBC+40], -1
jmp .L_0358
.L_03F4:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+44], -1
mov dword ptr [_FBC+48], -1
jmp .L_0358
.L_03F5:
mov dword ptr [_FBC+48], -1
jmp .L_0358
.L_03F6:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1401]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_01A0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_03F9
.L_03FA:
push 1
push 41
call _FBSETOPTION@8
.L_03F9:
.L_03F7:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_03FB:
push -1
push 40
call _FBSETOPTION@8
jmp .L_0358
.L_03FC:
mov dword ptr [_FBC+1960], -1
jmp .L_0358
.L_03FD:
mov dword ptr [_FBC+1964], -1
jmp .L_0358
.L_03FE:
push dword ptr [ebp+12]
call _fb_VALINT@4
sal eax, 10
push eax
push 38
call _FBSETOPTION@8
jmp .L_0358
.L_03FF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call _HPARSETARGETARG@16
mov eax, dword ptr [ebp-8]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0401
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0401:
.L_0400:
push dword ptr [ebp-8]
push 3
call _FBSETOPTION@8
push dword ptr [ebp-12]
push 4
call _FBSETOPTION@8
mov ebx, dword ptr [ebp-8]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
or ebx, dword ptr [ebp-16]
je .L_0403
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [_FBC+1568]
push ebx
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_034D
push 129
lea ebx, [_FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push 129
lea eax, [_FBC+1697]
push eax
call _fb_StrAssign@20
.L_0403:
.L_0402:
jmp .L_0358
.L_0405:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1826]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0406:
mov dword ptr [_FBC+56], -1
jmp .L_0358
.L_0407:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_040B
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_040C
.L_040D:
push 2
push offset _Lt_0008
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_040A
.L_040C:
mov dword ptr [ebp-8], 0
jmp .L_0408
.L_040A:
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_040E
.L_040F:
mov dword ptr [ebp-8], 1
jmp .L_0408
.L_040E:
push 2
push offset _Lt_0411
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0410
.L_0412:
mov dword ptr [ebp-8], 2
jmp .L_0408
.L_0410:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_0413:
.L_0408:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 7
call _FBSETOPTION@8
jmp .L_0358
.L_0414:
cmp dword ptr [ebp+16], 0
je .L_0416
cmp dword ptr [_FBC+60], 0
jne .L_0418
push dword ptr [_FBC+56]
call _HPRINTVERSION@4
.L_0418:
.L_0417:
.L_0416:
.L_0415:
mov dword ptr [_FBC+60], -1
jmp .L_0358
.L_0419:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_041D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_041C
.L_041E:
mov dword ptr [ebp-8], 0
jmp .L_041A
.L_041C:
push 5
push offset _Lt_0420
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_041F
.L_0421:
mov dword ptr [ebp-8], 4
jmp .L_041A
.L_041F:
push 6
push offset _Lt_0423
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0422
.L_0424:
push 27
call _FBGETOPTION@4
or eax, 2
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_0422:
push 7
push offset _Lt_0426
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0425
.L_0427:
push 27
call _FBGETOPTION@4
or eax, 1
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_0425:
push 5
push offset _Lt_0429
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0428
.L_042A:
push 27
call _FBGETOPTION@4
or eax, 8
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_0428:
push 11
push offset _Lt_042C
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_042B
.L_042D:
push 27
call _FBGETOPTION@4
or eax, 32
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_042B:
push 10
push offset _Lt_042F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_042E
.L_0430:
push 27
call _FBGETOPTION@4
or eax, 128
push eax
push 27
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .L_041A
.L_042E:
push 8
push offset _Lt_0432
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0431
.L_0433:
push 27
call _FBGETOPTION@4
or eax, 64
push eax
push 27
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .L_041A
.L_0431:
push 7
push offset _Lt_0435
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0434
.L_0436:
push 27
call _FBGETOPTION@4
or eax, 256
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_0434:
push 9
push offset _Lt_0438
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0437
.L_0439:
push -1769
push 27
call _FBSETOPTION@8
cmp dword ptr [ebp-8], 1
jle .L_043B
mov dword ptr [ebp-8], 1
.L_043B:
.L_043A:
jmp .L_041A
.L_0437:
push 6
push offset _Lt_043D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_043C
.L_043E:
push 27
call _FBGETOPTION@4
or eax, 512
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_043C:
push 7
push offset _Lt_0440
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_043F
.L_0441:
push 27
call _FBGETOPTION@4
or eax, 1024
push eax
push 27
call _FBSETOPTION@8
jmp .L_041A
.L_043F:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
.L_0442:
.L_041A:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-8], 0
jl .L_0444
push dword ptr [ebp-8]
push 24
call _FBSETOPTION@8
.L_0444:
.L_0443:
jmp .L_0358
.L_0445:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FB
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1532]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1532]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0449:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FB
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1556]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1556]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_044D:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push -1
push offset _Lt_00F4
push offset _Lt_01FB
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1544]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+1544]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0451:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+484]
push eax
call _fb_StrAssign@20
jmp .L_0358
.L_0452:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 13
push offset _Lt_0456
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0455
.L_0457:
push -1
push 28
call _FBSETOPTION@8
jmp .L_0453
.L_0455:
push 14
push offset _Lt_0459
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0458
.L_045A:
push -1
push 29
call _FBSETOPTION@8
jmp .L_0453
.L_0458:
push 12
push offset _Lt_045C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_045B
.L_045D:
push -1
push 30
call _FBSETOPTION@8
jmp .L_0453
.L_045B:
push 12
push offset _Lt_045F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_045E
.L_0460:
push -1
push 31
call _FBSETOPTION@8
jmp .L_0453
.L_045E:
push 5
push offset _Lt_0462
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0461
.L_0463:
push -1
push 32
call _FBSETOPTION@8
jmp .L_0453
.L_0461:
push 10
push offset _Lt_0465
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0464
.L_0466:
push -1
push 42
call _FBSETOPTION@8
jmp .L_0453
.L_0464:
push 10
push offset _Lt_0468
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0467
.L_0469:
push -1
push 43
call _FBSETOPTION@8
jmp .L_0453
.L_0467:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@8
.L_046A:
.L_0453:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0358
.L_0359:
cmp dword ptr [ebp-4], 69
ja .L_0358
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_046B+eax*4]
_.L_046B:
.int .L_035B
.int .L_035C
.int .L_0363
.int .L_036D
.int .L_036E
.int .L_036F
.int .L_0370
.int .L_0371
.int .L_0372
.int .L_0372
.int .L_0373
.int .L_0374
.int .L_0375
.int .L_0376
.int .L_0377
.int .L_0378
.int .L_0379
.int .L_037A
.int .L_037B
.int .L_037C
.int .L_037D
.int .L_037E
.int .L_037F
.int .L_0386
.int .L_0390
.int .L_039C
.int .L_039D
.int .L_03AC
.int .L_03AD
.int .L_03AF
.int .L_03B0
.int .L_03B1
.int .L_03B8
.int .L_03B9
.int .L_03BA
.int .L_03BB
.int .L_03C1
.int .L_03C2
.int .L_03C3
.int .L_03C4
.int .L_03CD
.int .L_03CE
.int .L_03CF
.int .L_03D2
.int .L_03D9
.int .L_03DB
.int .L_03DC
.int .L_03DD
.int .L_03DE
.int .L_03F1
.int .L_03F2
.int .L_03F3
.int .L_03F4
.int .L_03F5
.int .L_03F6
.int .L_03FB
.int .L_03FC
.int .L_03FD
.int .L_03FE
.int .L_03FF
.int .L_0405
.int .L_0406
.int .L_0407
.int .L_0414
.int .L_0419
.int .L_0445
.int .L_0449
.int .L_044D
.int .L_0451
.int .L_0452
.L_0358:
.L_0357:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_PARSEOPTION@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_046C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_046F
.L_0471:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0474
mov dword ptr [ebp-4], 0
jmp .L_046D
.L_0474:
.L_0473:
push 5
push offset _Lt_0475
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0477
mov dword ptr [ebp-4], 1
jmp .L_046D
.L_0477:
.L_0476:
push 4
push offset _Lt_0478
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_047A
mov dword ptr [ebp-4], 2
jmp .L_046D
.L_047A:
.L_0479:
jmp .L_046E
.L_047B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_047E
mov dword ptr [ebp-4], 3
jmp .L_046D
.L_047E:
.L_047D:
push 12
push offset _Lt_047F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0481
mov dword ptr [ebp-4], 4
jmp .L_046D
.L_0481:
.L_0480:
jmp .L_046E
.L_0482:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0485
mov dword ptr [ebp-4], 5
jmp .L_046D
.L_0485:
.L_0484:
jmp .L_046E
.L_0486:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0489
mov dword ptr [ebp-4], 6
jmp .L_046D
.L_0489:
.L_0488:
jmp .L_046E
.L_048A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_048D
mov dword ptr [ebp-4], 7
jmp .L_046D
.L_048D:
.L_048C:
push 4
push offset _Lt_048E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0490
mov dword ptr [ebp-4], 8
jmp .L_046D
.L_0490:
.L_048F:
push 6
push offset _Lt_0491
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0493
mov dword ptr [ebp-4], 9
jmp .L_046D
.L_0493:
.L_0492:
jmp .L_046E
.L_0494:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0497
mov dword ptr [ebp-4], 10
jmp .L_046D
.L_0497:
.L_0496:
push 3
push offset _Lt_0498
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_049A
mov dword ptr [ebp-4], 19
jmp .L_046D
.L_049A:
.L_0499:
push 7
push offset _Lt_049B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_049D
mov dword ptr [ebp-4], 11
jmp .L_046D
.L_049D:
.L_049C:
push 8
push offset _Lt_049E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A0
mov dword ptr [ebp-4], 12
jmp .L_046D
.L_04A0:
.L_049F:
push 7
push offset _Lt_04A1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A3
mov dword ptr [ebp-4], 13
jmp .L_046D
.L_04A3:
.L_04A2:
push 11
push offset _Lt_04A4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A6
mov dword ptr [ebp-4], 14
jmp .L_046D
.L_04A6:
.L_04A5:
push 10
push offset _Lt_04A7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04A9
mov dword ptr [ebp-4], 15
jmp .L_046D
.L_04A9:
.L_04A8:
push 9
push offset _Lt_04AA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04AC
mov dword ptr [ebp-4], 16
jmp .L_046D
.L_04AC:
.L_04AB:
push 8
push offset _Lt_04AD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04AF
mov dword ptr [ebp-4], 17
jmp .L_046D
.L_04AF:
.L_04AE:
push 6
push offset _Lt_04B0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B2
mov dword ptr [ebp-4], 18
jmp .L_046D
.L_04B2:
.L_04B1:
push 4
push offset _Lt_04B3
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B5
mov dword ptr [ebp-4], 20
jmp .L_046D
.L_04B5:
.L_04B4:
push 7
push offset _Lt_04B6
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04B8
mov dword ptr [ebp-4], 21
jmp .L_046D
.L_04B8:
.L_04B7:
jmp .L_046E
.L_04B9:
push 10
push offset _Lt_04BB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04BD
mov dword ptr [ebp-4], 22
jmp .L_046D
.L_04BD:
.L_04BC:
push 7
push offset _Lt_04BE
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04C0
mov dword ptr [ebp-4], 23
jmp .L_046D
.L_04C0:
.L_04BF:
push 4
push offset _Lt_04C1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04C3
mov dword ptr [ebp-4], 24
jmp .L_046D
.L_04C3:
.L_04C2:
jmp .L_046E
.L_04C4:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04C7
mov dword ptr [ebp-4], 25
jmp .L_046D
.L_04C7:
.L_04C6:
push 4
push offset _Lt_04C8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04CA
mov dword ptr [ebp-4], 26
jmp .L_046D
.L_04CA:
.L_04C9:
jmp .L_046E
.L_04CB:
push 5
push offset _Lt_04CD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04CF
mov dword ptr [ebp-4], 27
jmp .L_046D
.L_04CF:
.L_04CE:
jmp .L_046E
.L_04D0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04D3
mov dword ptr [ebp-4], 28
jmp .L_046D
.L_04D3:
.L_04D2:
push 8
push offset _Lt_04D4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04D6
mov dword ptr [ebp-4], 29
jmp .L_046D
.L_04D6:
.L_04D5:
jmp .L_046E
.L_04D7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04DA
mov dword ptr [ebp-4], 30
jmp .L_046D
.L_04DA:
.L_04D9:
push 5
push offset _Lt_04DB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04DD
mov dword ptr [ebp-4], 31
jmp .L_046D
.L_04DD:
.L_04DC:
push 4
push offset _Lt_0052
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04DF
mov dword ptr [ebp-4], 32
jmp .L_046D
.L_04DF:
.L_04DE:
jmp .L_046E
.L_04E0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04E3
mov dword ptr [ebp-4], 33
jmp .L_046D
.L_04E3:
.L_04E2:
push 4
push offset _Lt_04E4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04E6
mov dword ptr [ebp-4], 34
jmp .L_046D
.L_04E6:
.L_04E5:
push 7
push offset _Lt_04E7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04E9
mov dword ptr [ebp-4], 35
jmp .L_046D
.L_04E9:
.L_04E8:
push 3
push offset _Lt_04EA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04EC
mov dword ptr [ebp-4], 36
jmp .L_046D
.L_04EC:
.L_04EB:
jmp .L_046E
.L_04ED:
push 10
push offset _Lt_04EF
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F1
mov dword ptr [ebp-4], 38
jmp .L_046D
.L_04F1:
.L_04F0:
push 10
push offset _Lt_04F2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F4
mov dword ptr [ebp-4], 37
jmp .L_046D
.L_04F4:
.L_04F3:
push 6
push offset _Lt_04F5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04F7
mov dword ptr [ebp-4], 39
jmp .L_046D
.L_04F7:
.L_04F6:
push 10
push offset _Lt_04F8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04FA
mov dword ptr [ebp-4], 40
jmp .L_046D
.L_04FA:
.L_04F9:
push 8
push offset _Lt_04FB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_04FD
mov dword ptr [ebp-4], 41
jmp .L_046D
.L_04FD:
.L_04FC:
jmp .L_046E
.L_04FE:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0501
mov dword ptr [ebp-4], 42
jmp .L_046D
.L_0501:
.L_0500:
jmp .L_046E
.L_0502:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0505
mov dword ptr [ebp-4], 43
jmp .L_046D
.L_0505:
.L_0504:
jmp .L_046E
.L_0506:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0509
mov dword ptr [ebp-4], 44
jmp .L_046D
.L_0509:
.L_0508:
push 4
push offset _Lt_050A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_050C
mov dword ptr [ebp-4], 45
jmp .L_046D
.L_050C:
.L_050B:
push 3
push offset _Lt_050D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_050F
mov dword ptr [ebp-4], 46
jmp .L_046D
.L_050F:
.L_050E:
push 7
push offset _Lt_0510
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0512
mov dword ptr [ebp-4], 47
jmp .L_046D
.L_0512:
.L_0511:
push 6
push offset _Lt_0513
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0515
mov dword ptr [ebp-4], 48
jmp .L_046D
.L_0515:
.L_0514:
push 8
push offset _Lt_0516
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0518
mov dword ptr [ebp-4], 49
jmp .L_046D
.L_0518:
.L_0517:
jmp .L_046E
.L_0519:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_051C
mov dword ptr [ebp-4], 50
jmp .L_046D
.L_051C:
.L_051B:
push 3
push offset _Lt_051D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_051F
mov dword ptr [ebp-4], 52
jmp .L_046D
.L_051F:
.L_051E:
jmp .L_046E
.L_0520:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0523
mov dword ptr [ebp-4], 51
jmp .L_046D
.L_0523:
.L_0522:
push 3
push offset _Lt_0524
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0526
mov dword ptr [ebp-4], 53
jmp .L_046D
.L_0526:
.L_0525:
jmp .L_046E
.L_0527:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_052A
mov dword ptr [ebp-4], 54
jmp .L_046D
.L_052A:
.L_0529:
push 13
push offset _Lt_052B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_052D
mov dword ptr [ebp-4], 55
jmp .L_046D
.L_052D:
.L_052C:
push 7
push offset _Lt_052E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0530
mov dword ptr [ebp-4], 56
jmp .L_046D
.L_0530:
.L_052F:
push 6
push offset _Lt_0531
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0533
mov dword ptr [ebp-4], 57
jmp .L_046D
.L_0533:
.L_0532:
jmp .L_046E
.L_0534:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0537
mov dword ptr [ebp-4], 58
jmp .L_046D
.L_0537:
.L_0536:
push 7
push offset _Lt_03E5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0539
mov dword ptr [ebp-4], 59
jmp .L_046D
.L_0539:
.L_0538:
push 6
push offset _Lt_053A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_053C
mov dword ptr [ebp-4], 60
jmp .L_046D
.L_053C:
.L_053B:
jmp .L_046E
.L_053D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0540
mov dword ptr [ebp-4], 61
jmp .L_046D
.L_0540:
.L_053F:
push 4
push offset _Lt_0541
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0543
mov dword ptr [ebp-4], 62
jmp .L_046D
.L_0543:
.L_0542:
push 8
push offset _Lt_0544
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0546
mov dword ptr [ebp-4], 63
jmp .L_046D
.L_0546:
.L_0545:
jmp .L_046E
.L_0547:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_054A
mov dword ptr [ebp-4], 64
jmp .L_046D
.L_054A:
.L_0549:
jmp .L_046E
.L_054B:
push 3
push offset _Lt_054D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_054F
mov dword ptr [ebp-4], 65
jmp .L_046D
.L_054F:
.L_054E:
push 3
push offset _Lt_0550
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0552
mov dword ptr [ebp-4], 67
jmp .L_046D
.L_0552:
.L_0551:
push 3
push offset _Lt_0553
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0555
mov dword ptr [ebp-4], 66
jmp .L_046D
.L_0555:
.L_0554:
jmp .L_046E
.L_0556:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0558
mov dword ptr [ebp-4], 68
jmp .L_046D
.L_0558:
.L_0557:
jmp .L_046E
.L_0559:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_055C
mov dword ptr [ebp-4], 69
jmp .L_046D
.L_055C:
.L_055B:
jmp .L_046E
.L_055D:
push 9
push offset _Lt_055E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0560
mov dword ptr [ebp-4], 63
jmp .L_046D
.L_0560:
.L_055F:
push 6
push offset _Lt_0561
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .L_0563
mov dword ptr [ebp-4], 27
jmp .L_046D
.L_0563:
.L_0562:
jmp .L_046E
.L_046F:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_046E
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0564+eax*4-180]
_.L_0564:
.int .L_055D
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_0486
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_0502
.int .L_046E
.int .L_046E
.int .L_0520
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_054B
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_046E
.int .L_0471
.int .L_047B
.int .L_0482
.int .L_048A
.int .L_0494
.int .L_04B9
.int .L_04C4
.int .L_04CB
.int .L_04D0
.int .L_046E
.int .L_046E
.int .L_04D7
.int .L_04E0
.int .L_04ED
.int .L_04FE
.int .L_0506
.int .L_046E
.int .L_0519
.int .L_0527
.int .L_0534
.int .L_046E
.int .L_053D
.int .L_0547
.int .L_0556
.int .L_046E
.int .L_0559
.L_046E:
mov dword ptr [ebp-4], -1
.L_046D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HANDLEARG@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0565:
cmp dword ptr [_FBC], 0
jl .L_0568
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_056A
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_056A:
.L_0569:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [_FBC]
call _HANDLEOPT@12
mov dword ptr [_FBC], -1
jmp .L_0566
.L_0568:
.L_0567:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_056C
jmp .L_0566
.L_056C:
.L_056B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_056F
.L_0570:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0572
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0572:
.L_0571:
push dword ptr [ebp-8]
call _PARSEOPTION@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_0574
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0574:
.L_0573:
cmp dword ptr [ebp+12], 0
je .L_0576
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [_CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_0578
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0578:
.L_0577:
.L_0576:
.L_0575:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8], 0
je .L_057A
mov ebx, dword ptr [ebp-12]
mov dword ptr [_FBC], ebx
jmp .L_0579
.L_057A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HANDLEOPT@12
.L_0579:
cmp dword ptr [ebp+12], 0
je .L_057C
mov ebx, dword ptr [ebp-12]
cmp byte ptr [_CMDLINEOPTIONTB+ebx*8+2], 0
je .L_057E
push 2
call _FBRESTARTBEGINREQUEST@4
.L_057E:
.L_057D:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [_CMDLINEOPTIONTB+ebx*8+4], 0
je .L_0580
push 8
call _FBRESTARTBEGINREQUEST@4
.L_0580:
.L_057F:
.L_057C:
.L_057B:
jmp .L_056D
.L_056F:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_0581
.L_0582:
cmp dword ptr [_Lt_0914], 128
jle .L_0584
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_0584:
.L_0583:
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
push eax
push dword ptr [ebp+8]
call _fb_RIGHT@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .L_0586
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0586:
.L_0585:
inc dword ptr [_Lt_0914]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _PARSEARGSFROMFILE@8
dec dword ptr [_Lt_0914]
jmp .L_056D
.L_0581:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HGETFILEEXT@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
lea eax, [ebp-16]
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 4
push offset _Lt_058A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0589
.L_058B:
push dword ptr [ebp+8]
call _HADDBAS@4
jmp .L_0588
.L_0589:
push 2
push offset _Lt_04FF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_058C
.L_058D:
push dword ptr [ebp+8]
call _FBCADDOBJ@4
jmp .L_0588
.L_058C:
push 2
push offset _Lt_0472
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_058E
.L_058F:
push dword ptr [ebp+8]
lea eax, [_FBC+232]
push eax
call _STRLISTAPPEND@8
jmp .L_0588
.L_058E:
push 3
push offset _Lt_0591
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0593
.L_0594:
push 4
push offset _Lt_0592
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0590
.L_0593:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+104]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
jmp .L_0588
.L_0590:
push 4
push offset _Lt_0596
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0595
.L_0597:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0599
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_0599:
.L_0598:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+136]
push eax
call _HSETIOFILE@12
jmp .L_0588
.L_0595:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@8
.L_059A:
.L_0588:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0587:
.L_056D:
.L_0566:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .data
.balign 4
_Lt_0914:
.int 0

.section .text
.balign 16
_PARSEARGSFROMFILE@8:
push ebp
mov ebp, esp
sub esp, 16
.L_05B2:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_05B5
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05B5:
.L_05B4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_05B6:
push dword ptr [ebp-4]
call _fb_FileEof@4
test eax, eax
jne .L_05B7
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call _fb_FileLineInput@16
push 0
push -1
lea eax, [ebp-16]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _FBCPARSEARGSFROMSTRING@12
jmp .L_05B6
.L_05B7:
push dword ptr [ebp-4]
call _fb_FileClose@4
test eax, eax
je .L_05B8
push 0
push 0
push offset _Lt_0091
push 2700
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_05B8:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_05B3:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTARGETNEEDSPIC@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_05B9:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY@0
test eax, eax
je .L_05BC
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
jmp .L_05BE
.L_05C0:
mov dword ptr [ebp-4], -1
jmp .L_05BD
.L_05BE:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05BD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_05C1+eax*4-8]
_.L_05C1:
.int .L_05C0
.int .L_05BD
.int .L_05BD
.int .L_05C0
.int .L_05C0
.int .L_05C0
.int .L_05C0
.int .L_05BD
.int .L_05C0
.L_05BD:
.L_05BC:
.L_05BB:
.L_05BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEARGS@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_05C2:
mov dword ptr [_FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05C5
.L_05C8:
push 0
push 0
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
push 0
push 0
lea ebx, [ebp-12]
push ebx
call _HANDLEARG@12
.L_05C6:
inc dword ptr [ebp-16]
.L_05C5:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05C8
.L_05C7:
cmp dword ptr [_FBC], 0
jl .L_05CA
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add eax, ebx
push dword ptr [eax-4]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HFATALINVALIDOPTION@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_05CA:
.L_05C9:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_05C3:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKARGS@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.L_05CC:
call _HCHECKWAITINGOBJFILE@0
push 5
call _FBGETOPTION@4
test eax, eax
jne .L_05CF
push 7
call _FBGETOPTION@4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05D1
push 0
push 1
push -1
push offset _Lt_0000
push 284
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05D1:
.L_05D0:
.L_05CF:
.L_05CE:
cmp dword ptr [_FBC+24], 0
jl .L_05D3
push dword ptr [_FBC+24]
push 4
call _FBSETOPTION@8
.L_05D3:
.L_05D2:
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D5
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 82
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05D5:
.L_05D4:
call _FBGETCPUFAMILY@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D7
push 0
push 2
call _FBSETOPTION@8
jmp .L_05D6
.L_05D7:
push 1
push 2
call _FBSETOPTION@8
.L_05D6:
cmp dword ptr [_FBC+20], 0
jl .L_05D9
push dword ptr [_FBC+20]
push 2
call _FBSETOPTION@8
.L_05D9:
.L_05D8:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call _FBGETCPUFAMILY@0
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .L_05DB
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 83
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05DB:
.L_05DA:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_05DD
.L_05DF:
jmp .L_05DC
.L_05E0:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05E2
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05E2:
.L_05E1:
jmp .L_05DC
.L_05DD:
cmp dword ptr [ebp-4], 4
ja .L_05E0
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05E3+eax*4]
_.L_05E3:
.int .L_05DF
.int .L_05DF
.int .L_05E0
.int .L_05E0
.int .L_05DF
.L_05DC:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_05E5
.L_05E7:
jmp .L_05E4
.L_05E8:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_05EA
push 0
push 1
push -1
push dword ptr [_FBC+136]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.L_05EA:
.L_05E9:
jmp .L_05E4
.L_05E5:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05E8
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_05EB+eax*4-8]
_.L_05EB:
.int .L_05E7
.int .L_05E8
.int .L_05E8
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.int .L_05E7
.L_05E4:
push 3
call _FBGETOPTION@4
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05ED
push 1
push 9
call _FBSETOPTION@8
.L_05ED:
.L_05EC:
cmp dword ptr [_FBC+32], 0
jl .L_05EF
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05F3
.L_05F4:
cmp dword ptr [ebp-4], 1
jne .L_05F2
.L_05F3:
jmp .L_05F0
.L_05F2:
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-16]
push 319
call _ERRREPORTEX@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_05F5:
.L_05F0:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [_FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05F8
push 0
push 1
push -1
push offset _Lt_0000
push 84
call _ERRREPORTEX@20
.L_05F8:
.L_05F7:
push dword ptr [_FBC+32]
push 9
call _FBSETOPTION@8
.L_05EF:
.L_05EE:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .L_05FA
call _HTARGETNEEDSPIC@0
test eax, eax
je .L_05FC
push -1
push 37
call _FBSETOPTION@8
.L_05FC:
.L_05FB:
.L_05FA:
.L_05F9:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_05FE
push 0
call _FBGETOPTION@4
test eax, eax
jne .L_0600
push 0
push 1
push -1
push offset _Lt_0000
push 85
call _ERRREPORTEX@20
jmp .L_05FF
.L_0600:
call _HTARGETNEEDSPIC@0
test eax, eax
jne .L_0601
push 0
push 1
push -1
push offset _Lt_0000
push 86
call _ERRREPORTEX@20
.L_0601:
.L_05FF:
.L_05FE:
.L_05FD:
push -1
push 38
call _FBSETOPTION@8
.L_05CD:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEPREFIX@0:
push ebp
mov ebp, esp
sub esp, 36
.L_0602:
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_0605
push 0
push -1
push 2
push offset _Lt_001C
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _fb_ExePath@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push -1
push 4
push offset _Lt_0609
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
jmp .L_0604
.L_0605:
push 0
push -1
push 2
push offset _Lt_001C
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [_FBC+1968]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+1968]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0604:
.L_0603:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCSETUPCOMPILERPATHS@0:
push ebp
mov ebp, esp
sub esp, 168
.L_060D:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 10
push offset _Lt_060F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0052
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
push 261
lea eax, [_FBC+3012]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0611
push 0
push -1
push 261
lea eax, [_FBC+3012]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push 4
push offset _Lt_0612
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign@20
jmp .L_0610
.L_0611:
push 0
push -1
push 129
lea eax, [_FBC+1697]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push 4
push offset _Lt_0612
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2229]
push eax
call _fb_StrAssign@20
.L_0610:
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push 8
push offset _Lt_04D4
push 261
lea eax, [_FBC+1968]
push eax
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
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2490]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [_FBC+1968]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2751]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_060E:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCPRINTTARGETINFO@0:
push ebp
mov ebp, esp
sub esp, 36
.L_0621:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 0
call _FBGETFBCARCH@0
push eax
push 3
push offset _Lt_0623
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0623
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
call _FBGETBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0626
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1568]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0628
push 0
push 3
push offset _Lt_0629
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_062A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.L_0628:
.L_0627:
push 2
push 7
push offset _Lt_062B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
push 2
push 8
push offset _Lt_062C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 2
call _FBGETOPTION@4
push eax
call _FBGETBACKENDNAME@4
push eax
push 0
call _fb_PrintString@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0622:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEMAINNAME@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_062D:
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_0630
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0632
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [_FBC+745]
push ebx
call _fb_StrAssign@20
jmp .L_0631
.L_0632:
lea ebx, [_FBC+200]
push ebx
call _LISTGETHEAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0634
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
jmp .L_0633
.L_0634:
push 0
push 8
push offset _Lt_0635
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
.L_0633:
.L_0631:
push 0
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+745]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HSTRIPEXT@4
push eax
push 261
lea eax, [_FBC+745]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0630:
.L_062F:
.L_062E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASMNAME@8:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0637:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_063A
mov eax, offset _Lt_063B
mov dword ptr [ebp-16], eax
jmp .L_0639
.L_063A:
mov eax, offset _Lt_0305
mov dword ptr [ebp-16], eax
.L_0639:
cmp dword ptr [ebp+12], 1
jne .L_063D
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_0640
.L_0641:
mov eax, offset _Lt_0642
mov dword ptr [ebp-16], eax
jmp .L_063E
.L_0640:
cmp dword ptr [ebp-44], 2
jne .L_0643
.L_0644:
mov eax, offset _Lt_0645
mov dword ptr [ebp-16], eax
.L_0643:
.L_063E:
.L_063D:
.L_063C:
push 0
push -1
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.L_0638:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEBAS@16:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.L_0647:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 1
call _FBGETOPTION@4
test eax, eax
je .L_064A
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_064C
push 0
push -1
push 8
push offset _Lt_064D
push -1
lea eax, [ebp-32]
push eax
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
.L_064C:
.L_064B:
.L_064A:
.L_0649:
cmp dword ptr [_FBC+56], 0
je .L_0650
push 2
push 11
push offset _Lt_0651
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call _fb_PrintString@12
push 0
push 4
push offset _Lt_0652
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
lea eax, [ebp-20]
push eax
push 0
call _fb_PrintString@12
push 1
call _FBGETOPTION@4
test eax, eax
je .L_0654
push 0
push -1
lea eax, [ebp-32]
push eax
push 6
push offset _Lt_0655
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.L_0654:
.L_0653:
cmp dword ptr [ebp+12], 0
je .L_0658
push 0
push 14
push offset _Lt_0659
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0657
.L_0658:
cmp dword ptr [ebp+16], 0
je .L_065A
push 0
push 23
push offset _Lt_065B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_065A:
.L_0657:
push 1
push 0
call _fb_PrintVoid@8
.L_0650:
.L_064F:
push 12
call _FBGETOPTION@4
cmp eax, -1
je .L_065D
push 12
call _FBGETOPTION@4
push eax
push 10
call _FBSETOPTION@8
.L_065D:
.L_065C:
push 10
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_065F
push 3
push 0
call _FBSETOPTION@8
.L_065F:
.L_065E:
.L_0660:
mov eax, dword ptr [_FBC+40]
not eax
push 2
mov ebx, eax
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov esi, eax
call _FBGETOPTION@4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [_FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_0664
lea esi, [ebp-20]
push esi
call _FBCADDTEMP@4
jmp .L_0663
.L_0664:
cmp dword ptr [ebp+20], 1
jne .L_0665
call _FBRESTARTGETCOUNT@0
test eax, eax
jle .L_0667
lea eax, [ebp-20]
push eax
call _FBCREMOVETEMP@4
.L_0667:
.L_0666:
.L_0665:
.L_0663:
push dword ptr [ebp+20]
lea eax, [_FBC+1006]
push eax
push dword ptr [ebp+12]
call _FBINIT@12
cmp dword ptr [ebp+16], 0
je .L_0669
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBSETLIBS@8
jmp .L_0668
.L_0669:
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+264]
push eax
call _FBSETLIBS@8
.L_0668:
push dword ptr [ebp+12]
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _FBCOMPILE@16
call _ERRGETCOUNT@0
test eax, eax
jle .L_066B
push 1
call _FBCEND@4
.L_066B:
.L_066A:
call _FBSHOULDRESTART@0
test eax, eax
jne .L_066D
jmp .L_0661
.L_066D:
.L_066C:
push 7
call _FBRESTARTENDREQUEST@4
call _FBEND@0
call _FBSHOULDRESTART@0
test eax, eax
je .L_066F
push 12
call _FBGETOPTION@4
cmp eax, -1
jne .L_0671
push dword ptr [ebp-4]
push 10
call _FBSETOPTION@8
.L_0671:
.L_0670:
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_0648
.L_066F:
.L_066E:
.L_0662:
jmp .L_0660
.L_0661:
cmp dword ptr [ebp+16], 0
jne .L_0673
lea eax, [_FBC+440]
push eax
lea eax, [_FBC+396]
push eax
call _FBGETLIBS@8
.L_0673:
.L_0672:
call _FBEND@0
cmp dword ptr [ebp+16], 0
je .L_0675
push dword ptr [ebp-8]
push 0
call _FBSETOPTION@8
.L_0675:
.L_0674:
push dword ptr [ebp-4]
push 10
call _FBSETOPTION@8
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0648:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCOMPILEMODULES@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_0676:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_067B
.L_067C:
cmp dword ptr [ebp-32], 2
jne .L_067A
.L_067B:
mov dword ptr [ebp-8], -1
jmp .L_0678
.L_067A:
mov eax, dword ptr [_FBC+1136]
mov dword ptr [ebp-8], eax
.L_067D:
.L_0678:
cmp dword ptr [ebp-8], 0
je .L_067F
push 0
push -1
lea eax, [_FBC+745]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
.L_067F:
.L_067E:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0681
lea eax, [_FBC+264]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETCOPY@8
lea eax, [_FBC+308]
push eax
lea eax, [_FBC+440]
push eax
call _STRSETCOPY@8
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_0677
.L_0681:
.L_0680:
mov dword ptr [ebp-28], 0
.L_0682:
cmp dword ptr [ebp-8], 0
je .L_0686
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-40]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.L_0686:
.L_0685:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call _HCOMPILEBAS@16
call _FBSHOULDRESTART@0
test eax, eax
je .L_0689
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_0677
.L_0689:
.L_0688:
push dword ptr [ebp-24]
call _LISTGETNEXT@4
mov dword ptr [ebp-24], eax
.L_0684:
cmp dword ptr [ebp-24], 0
jne .L_0682
.L_0683:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_0677:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEXPM@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_068A:
push 0
push 28
push offset _Lt_068C
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 21
push offset _Lt_068D
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 20
push offset _Lt_068E
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .L_0690
jmp .L_068B
.L_0690:
.L_068F:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 10
push offset _Lt_0691
push -1
push 0
lea eax, [ebp-20]
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
je .L_0693
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_0694
push 0
push 0
push offset _Lt_0091
push 3280
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0694:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_068B
.L_0693:
.L_0692:
mov dword ptr [ebp-24], 0
.L_0695:
push dword ptr [ebp-8]
call _fb_FileEof@4
test eax, eax
jne .L_0696
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen@8
push 1
push offset _Lt_013A
mov ebx, eax
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-20]
push eax
push 1
call _fb_StrInstr@12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push 1
push offset _Lt_013A
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-20]
push eax
push 2
call _fb_StrInstr@12
push eax
lea eax, [ebp-20]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-20]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0698
cmp dword ptr [ebp-24], 0
je .L_069A
push 0
push 5
push offset _Lt_069B
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
.L_069A:
.L_0699:
push 0
push -1
push -1
lea eax, [ebp-20]
push eax
push 3
push offset _Lt_069C
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
mov dword ptr [ebp-24], -1
.L_0698:
.L_0697:
jmp .L_0695
.L_0696:
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .L_069E
push 0
push 0
push offset _Lt_0091
push 3310
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_069E:
cmp dword ptr [ebp-24], 0
jne .L_06A0
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_068B
.L_06A0:
.L_069F:
push 0
push 5
push offset _Lt_06A1
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 4
push offset _Lt_06A2
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 67
push offset _Lt_06A3
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
push 0
push 74
push offset _Lt_06A6
push -1
push dword ptr [ebp+12]
call _fb_StrConcatByref@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_068B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEXPM@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_06A7:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jne .L_06AA
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06A8
.L_06AA:
.L_06A9:
push 0
push -1
lea eax, [_FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
push dword ptr [_FBC+148]
call _fb_StrLen@8
test eax, eax
jle .L_06AC
push 0
push -1
push dword ptr [_FBC+148]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrAssign@20
.L_06AC:
.L_06AB:
push 0
push 5
push offset _Lt_06AD
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrConcatByref@20
cmp dword ptr [_FBC+56], 0
je .L_06AF
push 2
push 13
push offset _Lt_06B0
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push -1
lea eax, [_FBC+136]
push eax
push -1
push 5
push offset _Lt_0652
push -1
lea eax, [ebp-16]
push eax
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
.L_06AF:
.L_06AE:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call _HPARSEXPM@8
test eax, eax
jne .L_06B4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06A8
.L_06B4:
.L_06B3:
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [_FBC+136]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_06B6
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_06A8
.L_06B6:
.L_06B5:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .L_06B8
push 0
push 0
push offset _Lt_0091
push 3366
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_06B8:
cmp dword ptr [_FBC+40], 0
jne .L_06BA
lea eax, [_FBC+136]
push eax
call _FBCADDTEMP@4
.L_06BA:
.L_06B9:
push -1
push 0
push 0
lea eax, [_FBC+136]
push eax
call _HCOMPILEBAS@16
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_06A8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULE@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_06BB:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_FBC+48]
not eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06BE
lea eax, [ebp-28]
push eax
call _FBCADDTEMP@4
.L_06BE:
.L_06BD:
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06C1
.L_06C2:
mov byte ptr [ebp-36], 0
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06C5
.L_06C6:
push 0
push 6
push offset _Lt_06C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06C3
.L_06C5:
cmp dword ptr [ebp-40], 1
jne .L_06C8
.L_06C9:
push 0
push 6
push offset _Lt_06CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov byte ptr [ebp-36], 1
jmp .L_06C3
.L_06C8:
cmp dword ptr [ebp-40], 4
jne .L_06CB
.L_06CC:
push 0
push 6
push offset _Lt_06C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06C3
.L_06CB:
cmp dword ptr [ebp-40], 5
je .L_06CE
.L_06CF:
cmp dword ptr [ebp-40], 6
jne .L_06CD
.L_06CE:
push 0
push 6
push offset _Lt_06CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov byte ptr [ebp-36], 1
.L_06CD:
.L_06C3:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06D1
call _FBGETCPUFAMILY@0
cmp eax, 4
je .L_06D2
call _FBGETCPUFAMILY@0
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0927
.L_06D2:
mov dword ptr [ebp-40], -1
.L_0927:
cmp dword ptr [ebp-40], 0
jne .L_06D4
call _FBGETCPUFAMILY@0
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_0928
.L_06D4:
mov dword ptr [ebp-44], -1
.L_0928:
cmp dword ptr [ebp-44], 0
je .L_06D7
cmp dword ptr [_FBC+28], 0
je .L_06D9
push 0
push 14
push offset _Lt_06DA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06D8
.L_06D9:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH@0
push eax
push 7
push offset _Lt_06DB
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_06D8:
jmp .L_06D6
.L_06D7:
cmp dword ptr [_FBC+28], 0
je .L_06E0
push 0
push 15
push offset _Lt_06E1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06DF
.L_06E0:
push 0
push -1
push -1
push 2
push offset _Lt_00F4
push -1
push 0
call _FBGETGCCARCH@0
push eax
push 8
push offset _Lt_06E2
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.L_06DF:
.L_06D6:
.L_06D1:
.L_06D0:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_06E7
push 0
push 7
push offset _Lt_06E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06E7:
.L_06E6:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06EA
push 0
push 30
push offset _Lt_06EB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_06EC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06E9
.L_06EA:
push 0
push 90
push offset _Lt_06EF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 70
push offset _Lt_06F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06E9:
push 0
push 11
push offset _Lt_06F1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 39
push offset _Lt_06F2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06F4
push 0
push 3
push offset _Lt_06F5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06F4:
.L_06F3:
push 0
push 22
push offset _Lt_06F6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_06F8
push 0
push 17
push offset _Lt_06F9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06F8:
.L_06F7:
push 0
push 17
push offset _Lt_06FA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_06FB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 49
push offset _Lt_06FC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push 21
mov ebx, eax
call _FBGETOPTION@4
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_06FE
push 0
push 17
push offset _Lt_06FF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_06FD
.L_06FE:
push 0
push 20
push offset _Lt_0700
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_06FD:
push 0
push 13
push offset _Lt_0701
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 14
call _FBGETOPTION@4
test eax, eax
je .L_0703
push 0
push 4
push offset _Lt_0704
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0703:
.L_0702:
push 5
call _FBGETOPTION@4
cmp eax, 1
jne .L_0706
push 0
push 21
push offset _Lt_0707
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0706:
.L_0705:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_070B
.L_070C:
cmp dword ptr [ebp-40], 1
jne .L_070A
.L_070B:
push 9
call _FBGETOPTION@4
test eax, eax
jne .L_070E
push 0
push 13
push offset _Lt_070F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_070E:
.L_070D:
.L_070A:
.L_0708:
jmp .L_06BF
.L_06C1:
cmp dword ptr [ebp-32], 2
jne .L_0710
.L_0711:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_0714
.L_0715:
push 0
push 12
push offset _Lt_0716
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_0714:
cmp dword ptr [ebp-36], 1
jne .L_0717
.L_0718:
push 0
push 15
push offset _Lt_0719
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_0717:
cmp dword ptr [ebp-36], 2
jne .L_071A
.L_071B:
push 0
push 12
push offset _Lt_071C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_071A:
cmp dword ptr [ebp-36], 3
jne .L_071D
.L_071E:
push 0
push 16
push offset _Lt_071F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_071D:
cmp dword ptr [ebp-36], 4
jne .L_0720
.L_0721:
push 0
push 15
push offset _Lt_0722
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_0720:
cmp dword ptr [ebp-36], 5
jne .L_0723
.L_0724:
push 0
push 17
push offset _Lt_0725
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0712
.L_0723:
cmp dword ptr [ebp-36], 6
jne .L_0726
.L_0727:
push 0
push 19
push offset _Lt_0728
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0726:
.L_0712:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_072A
push 0
push 23
push offset _Lt_072B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_072A:
.L_0729:
push 0
push 3
push offset _Lt_06F5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_072F
.L_0730:
cmp dword ptr [ebp-36], 1
jne .L_072E
.L_072F:
push 9
call _FBGETOPTION@4
test eax, eax
jne .L_0732
push 0
push 24
push offset _Lt_0733
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0732:
.L_0731:
.L_072E:
.L_072C:
.L_0710:
.L_06BF:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0734
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0735
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_0738
.L_0739:
mov dword ptr [ebp-36], 3
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_073B
mov dword ptr [ebp-36], 14
.L_073B:
.L_073A:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset _Lt_073C
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
jmp .L_0736
.L_0738:
cmp dword ptr [ebp-32], 2
jne .L_073D
.L_073E:
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_073F
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
.L_073D:
.L_0736:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_06BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCOMPILESTAGE2MODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0740:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0742:
cmp dword ptr [ebp-4], 0
je .L_0743
push dword ptr [ebp-4]
call _HCOMPILESTAGE2MODULE@4
test eax, eax
jne .L_0745
push 1
call _FBCEND@4
.L_0745:
.L_0744:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0742
.L_0743:
.L_0741:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULE@4:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.L_0746:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_074A
.L_074B:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_074D
push 0
push 12
push offset _Lt_017B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_074C
.L_074D:
push 0
push 6
push offset _Lt_074E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_074C:
jmp .L_0748
.L_074A:
cmp dword ptr [ebp-60], 1
jne .L_074F
.L_0750:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .L_0752
push 0
push 14
push offset _Lt_017E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .L_0751
.L_0752:
push 0
push 6
push offset _Lt_0753
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0751:
.L_074F:
.L_0748:
push 14
call _FBGETOPTION@4
test eax, eax
jne .L_0755
push 3
call _FBGETOPTION@4
cmp eax, 9
je .L_0757
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_0759
push 0
push 24
push offset _Lt_075A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0759:
.L_0758:
.L_0757:
.L_0756:
.L_0755:
.L_0754:
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_075C
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0747
.L_075C:
.L_075B:
push 0
push 2
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0734
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset _Lt_0735
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [_FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-56], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .L_0761
mov dword ptr [ebp-56], 11
.L_0761:
.L_0760:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset _Lt_0762
call _FBCRUNBIN@12
test eax, eax
jne .L_0764
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_0747
.L_0764:
.L_0763:
cmp dword ptr [_FBC+52], 0
jne .L_0766
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.L_0766:
.L_0765:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0747:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLEMODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0767:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0769:
cmp dword ptr [ebp-4], 0
je .L_076A
push dword ptr [ebp-4]
call _HASSEMBLEMODULE@4
test eax, eax
jne .L_076C
push 1
call _FBCEND@4
.L_076C:
.L_076B:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0769
.L_076A:
.L_0768:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERC@4:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.L_076D:
push 0
push 37
push offset _Lt_076F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset _Lt_014F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_013A
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset _Lt_014F
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 8
push offset _Lt_0776
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
cmp dword ptr [_FBC+52], 0
jne .L_0778
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.L_0778:
.L_0777:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_076E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLERCS@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0779:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_077B:
cmp dword ptr [ebp-4], 0
je .L_077C
push dword ptr [ebp-4]
call _HASSEMBLERC@4
test eax, eax
jne .L_077E
push 1
call _FBCEND@4
.L_077E:
.L_077D:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_077B
.L_077C:
.L_077A:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEXPM@0:
.L_077F:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_0782
push 2
call _FBGETOPTION@4
test eax, eax
je .L_0784
lea eax, [_FBC+136]
push eax
call _HCOMPILESTAGE2MODULE@4
.L_0784:
.L_0783:
lea eax, [_FBC+136]
push eax
call _HASSEMBLEMODULE@4
test eax, eax
jne .L_0786
push 1
call _FBCEND@4
.L_0786:
.L_0785:
.L_0782:
.L_0781:
.L_0780:
ret
.balign 16
_HCOMPILEFBCTINF@0:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.L_0787:
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset _Lt_001F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [_FBC+56], 0
je .L_078A
push 2
push 10
push offset _Lt_078B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString@12
.L_078A:
.L_0789:
call _fb_FileFree@0
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call _fb_FileOpen@24
test eax, eax
je .L_078D
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
jmp .L_0788
.L_078D:
.L_078C:
push dword ptr [ebp-40]
call _fb_FileClose@4
test eax, eax
je .L_078E
push 0
push 0
push offset _Lt_0091
push 3770
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_078E:
cmp dword ptr [_FBC+40], 0
jne .L_0790
lea eax, [ebp-24]
push eax
call _FBCADDTEMP@4
.L_0790:
.L_078F:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call _HCOMPILEBAS@16
push 2
call _FBGETOPTION@4
test eax, eax
je .L_0792
lea eax, [ebp-24]
push eax
call _HCOMPILESTAGE2MODULE@4
.L_0792:
.L_0791:
lea eax, [ebp-24]
push eax
call _HASSEMBLEMODULE@4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
.L_0788:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HARCHIVEFILES@0:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.L_0793:
call _HSETOUTNAME@0
lea eax, [_FBC+484]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
test eax, eax
je .L_0796
.L_0796:
.L_0795:
push 0
push -1
push 3
push offset _Lt_02B7
push -1
push 261
lea eax, [_FBC+484]
push eax
push 7
push offset _Lt_0798
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 39
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .L_079C
call _HCOMPILEFBCTINF@0
test eax, eax
je .L_079E
push 0
push 15
push offset _Lt_07A1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_079E:
.L_079D:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _FBCADDTEMP@4
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.L_079C:
.L_079B:
lea eax, [_FBC+200]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-44], eax
.L_07A3:
cmp dword ptr [ebp-44], 0
je .L_07A4
push 0
push -1
push -1
push 3
push offset _Lt_0734
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset _Lt_013A
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _LISTGETNEXT@4
mov dword ptr [ebp-44], eax
jmp .L_07A3
.L_07A4:
lea eax, [ebp-16]
push eax
push 1
push offset _Lt_07A8
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0794:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETDEFAULTLIBPATHS@0:
push ebp
mov ebp, esp
sub esp, 28
.L_07A9:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [_FBC+2751]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0009
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
cmp eax, 11
je .L_07AE
push offset _Lt_07AF
call _FBCADDLIBPATHFOR@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_07B2
.L_07B3:
push offset _Lt_07B4
call _FBCADDLIBPATHFOR@4
jmp .L_07B0
.L_07B2:
cmp dword ptr [ebp-28], 3
jne .L_07B5
.L_07B6:
push offset _Lt_07B7
call _FBCADDLIBPATHFOR@4
jmp .L_07B0
.L_07B5:
push offset _Lt_07B9
call _FBCADDLIBPATHFOR@4
.L_07B8:
.L_07B0:
.L_07AE:
.L_07AD:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_07BC
.L_07BD:
push offset _Lt_07BE
call _FBCADDLIBPATHFOR@4
jmp .L_07BA
.L_07BC:
cmp dword ptr [ebp-28], 0
jne .L_07BF
.L_07C0:
push offset _Lt_07C1
call _FBCADDLIBPATHFOR@4
.L_07BF:
.L_07BA:
.L_07AA:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIB@4:
push ebp
mov ebp, esp
sub esp, 12
.L_07C2:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
lea eax, [_FBC+396]
push eax
call _STRSETADD@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_07C3:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETFBLIBNAMESUFFIX@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_07C5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 35
call _FBGETOPTION@4
test eax, eax
je .L_07C8
push 0
push 3
push offset _Lt_04EA
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_07C8:
.L_07C7:
push 37
call _FBGETOPTION@4
test eax, eax
je .L_07CA
push 0
push 4
push offset _Lt_050A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.L_07CA:
.L_07C9:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_07C6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HADDDEFAULTLIBS@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_07CB:
push 32
call _FBGETOPTION@4
test eax, eax
je .L_07CE
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 5
push offset _Lt_0462
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_07CD
.L_07CE:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 3
push offset _Lt_0021
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_07CD:
push 36
call _FBGETOPTION@4
test eax, eax
je .L_07D4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 6
push offset _Lt_07D5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
jmp .L_07D9
.L_07DB:
push offset _Lt_07DC
call _FBCADDDEFLIB@4
push offset _Lt_07DD
call _FBCADDDEFLIB@4
jmp .L_07D8
.L_07DE:
push offset _Lt_07DF
call _FBCADDDEFLIB@4
push offset _Lt_07E0
call _FBCADDDEFLIB@4
push offset _Lt_07E1
call _FBCADDDEFLIB@4
push offset _Lt_07E2
call _FBCADDDEFLIB@4
push offset _Lt_07E3
call _FBCADDDEFLIB@4
jmp .L_07D8
.L_07D9:
cmp dword ptr [ebp-28], 10
ja .L_07D8
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_07E4+eax*4]
_.L_07E4:
.int .L_07DB
.int .L_07DB
.int .L_07DE
.int .L_07D8
.int .L_07D8
.int .L_07DE
.int .L_07DE
.int .L_07DE
.int .L_07DE
.int .L_07DE
.int .L_07DE
.L_07D8:
.L_07D4:
.L_07D3:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
jmp .L_07E6
.L_07E8:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_030E
call _FBCADDDEFLIB@4
push offset _Lt_07E9
call _FBCADDDEFLIB@4
push offset _Lt_07EA
call _FBCADDDEFLIB@4
push 23
call _FBGETOPTION@4
test eax, eax
je .L_07EC
push offset _Lt_07ED
call _FBCADDDEFLIB@4
.L_07EC:
.L_07EB:
jmp .L_07E5
.L_07EE:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07EF
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_07F1
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_07F2:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push 35
call _FBGETOPTION@4
test eax, eax
je .L_07F4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_07F5
call _FBCADDDEFLIB@4
.L_07F4:
.L_07F3:
jmp .L_07E5
.L_07F6:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push offset _Lt_07F1
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_07F7:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push offset _Lt_07F1
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_07F8:
push -1
push offset _Lt_07F9
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_07FA
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07FC
push offset _Lt_07FD
call _FBCADDDEFLIB@4
jmp .L_07FB
.L_07FC:
push offset _Lt_07F1
call _FBCADDDEFLIB@4
.L_07FB:
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push offset _Lt_07FE
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_0040
call _FBCADDDEFLIB@4
push -1
push offset _Lt_07FF
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0800
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0802
push offset _Lt_0803
call _FBCADDDEFLIB@4
.L_0802:
.L_0801:
push offset _Lt_0483
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_0804:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push offset _Lt_07F1
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_0805:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07F0
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push offset _Lt_07F1
call _FBCADDDEFLIB@4
jmp .L_07E5
.L_0806:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_0807
call _FBCADDDEFLIB@4
push offset _Lt_07E9
call _FBCADDDEFLIB@4
push offset _Lt_07EA
call _FBCADDDEFLIB@4
push offset _Lt_0808
call _FBCADDDEFLIB@4
push offset _Lt_0809
call _FBCADDDEFLIB@4
push offset _Lt_080A
call _FBCADDDEFLIB@4
push -1
push offset _Lt_07FF
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_080B
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_080D
push offset _Lt_0803
call _FBCADDDEFLIB@4
.L_080D:
.L_080C:
push 23
call _FBGETOPTION@4
test eax, eax
je .L_080F
push offset _Lt_07ED
call _FBCADDDEFLIB@4
.L_080F:
.L_080E:
jmp .L_07E5
.L_0810:
push offset _Lt_0040
call _FBCADDDEFLIB@4
push offset _Lt_07D5
call _FBCADDDEFLIB@4
push offset _Lt_0811
call _FBCADDDEFLIB@4
push offset _Lt_0812
call _FBCADDDEFLIB@4
push offset _Lt_0483
call _FBCADDDEFLIB@4
push offset _Lt_0813
call _FBCADDDEFLIB@4
push offset _Lt_0814
call _FBCADDDEFLIB@4
push offset _Lt_04E1
call _FBCADDDEFLIB@4
push 23
call _FBGETOPTION@4
test eax, eax
je .L_0816
push offset _Lt_07ED
call _FBCADDDEFLIB@4
.L_0816:
.L_0815:
jmp .L_07E5
.L_07E6:
cmp dword ptr [ebp-4], 10
ja .L_07E5
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0817+eax*4]
_.L_0817:
.int .L_0806
.int .L_07E8
.int .L_07F8
.int .L_07F2
.int .L_0810
.int .L_07F6
.int .L_07F7
.int .L_07F7
.int .L_0805
.int .L_07EE
.int .L_0804
.L_07E5:
.L_07CC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEXCLUDELIBSFROMLINK@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0818:
lea eax, [_FBC+352]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_081A:
cmp dword ptr [ebp-4], 0
je .L_081B
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [_FBC+396]
push ebx
call _STRSETDEL@8
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_081A
.L_081B:
.L_0819:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTOPTIONS@4:
push ebp
mov ebp, esp
.L_081C:
push 1
push 34
push offset _Lt_081E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 12
push offset _Lt_081F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_0820
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 59
push offset _Lt_0821
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 35
push offset _Lt_0822
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_0823
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_0824
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_0825
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_0826
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0827
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0828
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_082A
push 1
push 64
push offset _Lt_082B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_082A:
.L_0829:
push 1
push 44
push offset _Lt_082C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 46
push offset _Lt_082D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_082E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_082F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0830
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0831
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0833
push 1
push 47
push offset _Lt_0834
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_0835
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_0836
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0837
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_0838
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_0839
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_083A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 68
push offset _Lt_083B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0833:
.L_0832:
push 1
push 41
push offset _Lt_083C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 62
push offset _Lt_083D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_083E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 61
push offset _Lt_083F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0841
push 1
push 65
push offset _Lt_0842
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0843
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0841:
.L_0840:
push 1
push 75
push offset _Lt_0844
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0846
push 1
push 58
push offset _Lt_0847
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_0848
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0849
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_084A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0845
.L_0846:
push 1
push 57
push offset _Lt_084B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0845:
push 1
push 77
push offset _Lt_084C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_084D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_084E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 36
push offset _Lt_084F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 64
push offset _Lt_0850
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 42
push offset _Lt_0851
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 76
push offset _Lt_0852
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0853
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0854
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_0855
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 68
push offset _Lt_0856
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_0857
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0858
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 78
push offset _Lt_0859
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 71
push offset _Lt_085A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 74
push offset _Lt_085B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_085C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_085D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 80
push offset _Lt_085E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_085F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_0860
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_0861
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 51
push offset _Lt_0862
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0863
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0865
push 1
push 73
push offset _Lt_0866
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0865:
.L_0864:
push 1
push 44
push offset _Lt_0867
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 65
push offset _Lt_0868
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0869
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_086A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_086B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_086C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 66
push offset _Lt_086D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 73
push offset _Lt_086E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_086F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 75
push offset _Lt_0870
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_0872
push 1
push 47
push offset _Lt_0873
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .L_0871
.L_0872:
push 1
push 47
push offset _Lt_0873
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_0871:
push 1
push 47
push offset _Lt_0874
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 29
push offset _Lt_0875
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 61
push offset _Lt_0876
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 40
push offset _Lt_0877
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0878
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_087A
push 1
push 38
push offset _Lt_087B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_087C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_087D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_087E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_087F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_0880
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_0881
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_0882
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_0883
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 71
push offset _Lt_0884
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_087A:
.L_0879:
push 1
push 39
push offset _Lt_0885
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 72
push offset _Lt_0886
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0887
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_0888
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .L_088A
push 1
push 56
push offset _Lt_088B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_088C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_088D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_088E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_088F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_0890
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 74
push offset _Lt_0891
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_088A:
.L_0889:
.L_081D:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPRINTVERSION@4:
push ebp
mov ebp, esp
sub esp, 60
.L_0897:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset _Lt_089F
push -1
push -1
call _FBGETHOSTBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
push 3
push offset _Lt_0629
push -1
push -1
call _FBGETHOSTID@0
push eax
push 61
push offset _Lt_089E
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_08A4
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .L_08A6
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
.L_08A6:
.L_08A5:
cmp dword ptr [ebp+8], 0
je .L_08A8
call _FBCPRINTTARGETINFO@0
jmp .L_08AA
push 1
push 14
push offset _Lt_08AB
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.L_08AA:
.L_08A9:
.L_08A8:
.L_08A7:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0898:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.L_08E6:
push offset _FBC
call __ZN6FBCCTXC1Ev
add esp, 4
.L_08E7:
ret
.balign 16
__GLOBAL__D:
.L_08E9:
push offset _FBC
call __ZN6FBCCTXD1Ev
add esp, 4
.L_08EA:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0005:	.ascii	"This program requires at least a 686 to run.\0"
.balign 4
_Lt_0006:	.ascii	"1\0"
.balign 4
_Lt_0008:	.ascii	"0\0"
.balign 4
_Lt_0009:	.ascii	".\0"
.balign 4
_Lt_001B:	.ascii	".exe\0"
.balign 4
_Lt_001C:	.ascii	"\\\0"
.balign 4
_Lt_001E:	.ascii	"__fb_ct.inf\0"
.balign 4
_Lt_001F:	.ascii	"__fb_ct.inf.bas\0"
.balign 4
_Lt_0021:	.ascii	"fb\0"
.balign 4
_FBCTOOLTB:
.ascii "as\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "ar\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "ld\0"
.skip 13,0
.int 3
.skip 264,0
.ascii "gcc\0"
.skip 12,0
.int 3
.skip 264,0
.ascii "llc\0"
.skip 12,0
.int 3
.skip 264,0
.ascii "clang\0"
.skip 10,0
.int 3
.skip 264,0
.ascii "dlltool\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "GoRC\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "windres\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "cxbe\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "dxe3gen\0"
.skip 8,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emar\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.ascii "emcc\0"
.skip 11,0
.int 3
.skip 264,0
.balign 4
_Lt_0040:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	_FBC,3284

.section .data
.balign 4
_Lt_0052:	.ascii	"lib\0"
.balign 4
_Lt_0053:	.ascii	".a\0"
.balign 4
_Lt_0065:	.ascii	".html\0"
.balign 4
_Lt_006E:	.ascii	".dll\0"
.balign 4
_Lt_0078:	.ascii	".so\0"
.balign 4
_Lt_007E:	.ascii	".dxe\0"
.balign 4
_Lt_0091:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
_Lt_0098:	.ascii	" -m32\0"
.balign 4
_Lt_009B:	.ascii	" -m64\0"
.balign 4
_Lt_00B6:	.ascii	" -print-file-name=\0"
.balign 4
_Lt_00DC:	.ascii	" -print-prog-name=as\0"
.balign 4
_Lt_00DF:	.ascii	" -print-prog-name=ld\0"
.balign 4
_Lt_00F2:	.ascii	": \0"
.balign 4
_Lt_00F4:	.ascii	" \0"
.balign 4
_Lt_0100:	.ascii	" failed: '\0"
.balign 4
_Lt_0101:	.ascii	"' terminated with exit code \0"
.balign 4
_Lt_0108:	.ascii	"ldopt.tmp\0"
.balign 4
_Lt_010B:	.ascii	"\\\0"
.balign 4
_Lt_010C:	.ascii	"\\\\\0"
.balign 4
_Lt_0113:	.ascii	"ld options in '\0"
.balign 4
_Lt_0114:	.ascii	"': \0"
.balign 4
_Lt_0117:	.ascii	"@\0"
.balign 4
_Lt_011D:	.ascii	".clean.def\0"
.balign 4
_Lt_0124:	.ascii	"DATA\0"
.balign 4
_Lt_012F:	.ascii	"EXPORTS\0"
.balign 4
_Lt_0139:	.ascii	"--def \"\0"
.balign 4
_Lt_013A:	.ascii	"\"\0"
.balign 4
_Lt_013E:	.ascii	" --dllname \"\0"
.balign 4
_Lt_013F:	.ascii	" --output-lib \"\0"
.balign 4
_Lt_0140:	.ascii	".dll.a\"\0"
.balign 4
_Lt_0146:	.ascii	"creating import library\0"
.balign 4
_Lt_014F:	.ascii	" \"\0"
.balign 4
_Lt_0154:	.ascii	" --version\0"
.balign 4
_Lt_0155:	.ascii	"GNU gold\0"
.balign 4
_Lt_0164:	.ascii	"-m i386pe \0"
.balign 4
_Lt_0167:	.ascii	"-m i386pep \0"
.balign 4
_Lt_016E:	.ascii	"-m elf_i386 \0"
.balign 4
_Lt_0171:	.ascii	"-m elf_x86_64 \0"
.balign 4
_Lt_0174:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
_Lt_017B:	.ascii	"-arch i386 \0"
.balign 4
_Lt_017E:	.ascii	"-arch x86_64 \0"
.balign 4
_Lt_0181:	.ascii	"-arch armv6 \0"
.balign 4
_Lt_0182:	.ascii	"-o \0"
.balign 4
_Lt_0183:	.ascii	"\"\0"
.balign 4
_Lt_0184:	.ascii	"-o \"\0"
.balign 4
_Lt_0187:	.ascii	" -I \"lib\0"
.balign 4
_Lt_0189:	.ascii	"_il.a\"\0"
.balign 4
_Lt_018A:	.ascii	" -U\0"
.balign 4
_Lt_0192:	.ascii	" -lc\0"
.balign 4
_Lt_0198:	.ascii	"making DXE\0"
.balign 4
_Lt_019F:	.ascii	"console\0"
.balign 4
_Lt_01A0:	.ascii	"gui\0"
.balign 4
_Lt_01A3:	.ascii	"windows\0"
.balign 4
_Lt_01A4:	.ascii	" -subsystem \0"
.balign 4
_Lt_01A9:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
_Lt_01AC:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
_Lt_01AD:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
_Lt_01B3:	.ascii	" -shared -h\0"
.balign 4
_Lt_01BA:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
_Lt_01BC:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
_Lt_01BE:	.ascii	" --dynamic-linker /lib/64/ld.so.1\0"
.balign 4
_Lt_01C4:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
_Lt_01C7:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
_Lt_01CA:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
_Lt_01CD:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
_Lt_01CF:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
_Lt_01D1:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
_Lt_01D5:	.ascii	" --export-dynamic\0"
.balign 4
_Lt_01D7:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
_Lt_01D9:	.ascii	" -O\0"
.balign 4
_Lt_01DF:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
_Lt_01E4:	.ascii	" -s \0"
.balign 4
_Lt_01E5:	.ascii	" --shell-file\0"
.balign 4
_Lt_01E6:	.ascii	"fb_shell.html\0"
.balign 4
_Lt_01E7:	.ascii	" --post-js\0"
.balign 4
_Lt_01E8:	.ascii	"fb_rtlib.js\0"
.balign 4
_Lt_01EB:	.ascii	"termlib_min.js\0"
.balign 4
_Lt_01EF:	.ascii	" -T \"\0"
.balign 4
_Lt_01F1:	.ascii	"\\i386go32.x\"\0"
.balign 4
_Lt_01F5:	.ascii	"\\fbextra.x\"\0"
.balign 4
_Lt_01FA:	.ascii	" --stack \0"
.balign 4
_Lt_01FB:	.ascii	",\0"
.balign 4
_Lt_01FF:	.ascii	".def\0"
.balign 4
_Lt_0200:	.ascii	" --output-def \"\0"
.balign 4
_Lt_0202:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
_Lt_0206:	.ascii	" -Bstatic\0"
.balign 4
_Lt_0209:	.ascii	" -Map \0"
.balign 4
_Lt_0212:	.ascii	" -s\0"
.balign 4
_Lt_0215:	.ascii	" -L \"\0"
.balign 4
_Lt_0216:	.ascii	" -L\"\0"
.balign 4
_Lt_0222:	.ascii	"crt0.o\0"
.balign 4
_Lt_0225:	.ascii	"gcrt0.o\0"
.balign 4
_Lt_0229:	.ascii	"dllcrt2.o\0"
.balign 4
_Lt_022A:	.ascii	"crt2.o\0"
.balign 4
_Lt_022D:	.ascii	"gcrt2.o\0"
.balign 4
_Lt_022E:	.ascii	"crtbegin.o\0"
.balign 4
_Lt_023C:	.ascii	"gcrt1.o\0"
.balign 4
_Lt_0243:	.ascii	"crt1.o\0"
.balign 4
_Lt_0249:	.ascii	"crti.o\0"
.balign 4
_Lt_024C:	.ascii	"crtbeginS.o\0"
.balign 4
_Lt_0255:	.ascii	"fbrt0pic.o\0"
.balign 4
_Lt_0256:	.ascii	"fbrt0.o\0"
.balign 4
_Lt_0260:	.ascii	" \"-(\"\0"
.balign 4
_Lt_026C:	.ascii	" -l\0"
.balign 4
_Lt_0273:	.ascii	" \"-)\"\0"
.balign 4
_Lt_0274:	.ascii	" -lfb\0"
.balign 4
_Lt_027B:	.ascii	"crtendS.o\0"
.balign 4
_Lt_027C:	.ascii	"crtend.o\0"
.balign 4
_Lt_027F:	.ascii	"crtn.o\0"
.balign 4
_Lt_0284:	.ascii	" -macosx_version_min 10.4\0"
.balign 4
_Lt_0295:	.ascii	" --eh-frame-hdr\0"
.balign 4
_Lt_02A0:	.ascii	"linking\0"
.balign 4
_Lt_02B6:	.ascii	"-TITLE:\"\0"
.balign 4
_Lt_02B7:	.ascii	"\" \0"
.balign 4
_Lt_02BB:	.ascii	"-DUMPINFO:\"\0"
.balign 4
_Lt_02BE:	.ascii	".cxbe\"\0"
.balign 4
_Lt_02C0:	.ascii	" -OUT:\"\0"
.balign 4
_Lt_02C2:	.ascii	".xbe\0"
.balign 4
_Lt_02C3:	.ascii	" \"\0"
.balign 4
_Lt_02C6:	.ascii	" >nul\0"
.balign 4
_Lt_02C9:	.ascii	"cxbe: \0"
.balign 4
_Lt_02D0:	.ascii	"cxbe failed: exit code \0"
.balign 4
_Lt_0305:	.ascii	".o\0"
.balign 4
_GNUOSMAP:
.int _Lt_030A
.int 2
.int _Lt_030B
.int 0
.int _Lt_030C
.int 3
.int _Lt_030D
.int 3
.int _Lt_030E
.int 1
.int _Lt_030F
.int 9
.int _Lt_0310
.int 5
.int _Lt_0311
.int 6
.int _Lt_0312
.int 7
.int _Lt_0313
.int 10
.int _Lt_0314
.int 8
.int _Lt_0315
.int 4
.balign 4
_Lt_030A:	.ascii	"linux\0"
.balign 4
_Lt_030B:	.ascii	"mingw\0"
.balign 4
_Lt_030C:	.ascii	"djgpp\0"
.balign 4
_Lt_030D:	.ascii	"msdosdjgpp\0"
.balign 4
_Lt_030E:	.ascii	"cygwin\0"
.balign 4
_Lt_030F:	.ascii	"darwin\0"
.balign 4
_Lt_0310:	.ascii	"freebsd\0"
.balign 4
_Lt_0311:	.ascii	"dragonfly\0"
.balign 4
_Lt_0312:	.ascii	"solaris\0"
.balign 4
_Lt_0313:	.ascii	"netbsd\0"
.balign 4
_Lt_0314:	.ascii	"openbsd\0"
.balign 4
_Lt_0315:	.ascii	"xbox\0"
.balign 4
_GNUARCHMAP:
.int _Lt_0317
.int 0
.int _Lt_0318
.int 1
.int _Lt_0319
.int 2
.int _Lt_031A
.int 3
.int _Lt_031B
.int 3
.int _Lt_031C
.int 13
.int _Lt_031D
.int 13
.int _Lt_031E
.int 14
.int _Lt_031F
.int 15
.int _Lt_0320
.int 15
.int _Lt_0321
.int 16
.int _Lt_0322
.int 17
.int _Lt_0323
.int 17
.int _Lt_0324
.int 18
.int _Lt_0325
.int 18
.int _Lt_0326
.int 19
.int _Lt_0327
.int 19
.balign 4
_Lt_0317:	.ascii	"i386\0"
.balign 4
_Lt_0318:	.ascii	"i486\0"
.balign 4
_Lt_0319:	.ascii	"i586\0"
.balign 4
_Lt_031A:	.ascii	"i686\0"
.balign 4
_Lt_031B:	.ascii	"x86\0"
.balign 4
_Lt_031C:	.ascii	"x86_64\0"
.balign 4
_Lt_031D:	.ascii	"amd64\0"
.balign 4
_Lt_031E:	.ascii	"armv6\0"
.balign 4
_Lt_031F:	.ascii	"armv7a\0"
.balign 4
_Lt_0320:	.ascii	"arm\0"
.balign 4
_Lt_0321:	.ascii	"aarch64\0"
.balign 4
_Lt_0322:	.ascii	"ppc\0"
.balign 4
_Lt_0323:	.ascii	"powerpc\0"
.balign 4
_Lt_0324:	.ascii	"ppc64  \0"
.balign 4
_Lt_0325:	.ascii	"powerpc64\0"
.balign 4
_Lt_0326:	.ascii	"ppc64le  \0"
.balign 4
_Lt_0327:	.ascii	"powerpc64le\0"
.balign 4
_FBOSARCHMAP:
.int _Lt_0341
.int 0
.int 3
.int _Lt_0342
.int 0
.int 13
.int _Lt_0311
.int 6
.int 13
.int _Lt_0312
.int 7
.int 13
.int _Lt_0343
.int 3
.int 3
.int _Lt_0315
.int 4
.int 3
.int _Lt_030E
.int 1
.int 3
.int _Lt_030F
.int 9
.int 3
.int _Lt_0310
.int 5
.int 3
.int _Lt_030A
.int 2
.int 3
.int _Lt_0313
.int 10
.int 3
.int _Lt_0314
.int 8
.int 3
.balign 4
_Lt_0341:	.ascii	"win32\0"
.balign 4
_Lt_0342:	.ascii	"win64\0"
.balign 4
_Lt_0343:	.ascii	"dos\0"
.balign 4
_Lt_034D:	.ascii	"-\0"
.balign 4
_CMDLINEOPTIONTB:
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 0
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 1
.byte 0
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 1
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.byte 0
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 0
.skip 1,0
.int 0
.byte 1
.byte 1
.byte 1
.skip 1,0
.int -1
.balign 4
_Lt_035D:	.ascii	"native\0"
.balign 4
_Lt_0360:	.ascii	"-arch \0"
.balign 4
_Lt_0367:	.ascii	"att\0"
.balign 4
_Lt_036A:	.ascii	"intel\0"
.balign 4
_Lt_038A:	.ascii	"PRECISE\0"
.balign 4
_Lt_038D:	.ascii	"FAST\0"
.balign 4
_Lt_0394:	.ascii	"X87\0"
.balign 4
_Lt_0395:	.ascii	"FPU\0"
.balign 4
_Lt_0399:	.ascii	"SSE\0"
.balign 4
_Lt_03A1:	.ascii	"gas\0"
.balign 4
_Lt_03A6:	.ascii	"llvm\0"
.balign 4
_Lt_03A9:	.ascii	"gas64\0"
.balign 4
_Lt_03BC:	.ascii	"inf\0"
.balign 4
_Lt_03D3:	.ascii	"max\0"
.balign 4
_Lt_03E2:	.ascii	"host\0"
.balign 4
_Lt_03E5:	.ascii	"target\0"
.balign 4
_Lt_03E8:	.ascii	"x\0"
.balign 4
_Lt_03EB:	.ascii	"fblibdir\0"
.balign 4
_Lt_03EE:	.ascii	"sha-1\0"
.balign 4
_Lt_040B:	.ascii	"NONE\0"
.balign 4
_Lt_0411:	.ascii	"2\0"
.balign 4
_Lt_041D:	.ascii	"all\0"
.balign 4
_Lt_0420:	.ascii	"none\0"
.balign 4
_Lt_0423:	.ascii	"param\0"
.balign 4
_Lt_0426:	.ascii	"escape\0"
.balign 4
_Lt_0429:	.ascii	"next\0"
.balign 4
_Lt_042C:	.ascii	"signedness\0"
.balign 4
_Lt_042F:	.ascii	"constness\0"
.balign 4
_Lt_0432:	.ascii	"funcptr\0"
.balign 4
_Lt_0435:	.ascii	"suffix\0"
.balign 4
_Lt_0438:	.ascii	"pedantic\0"
.balign 4
_Lt_043D:	.ascii	"error\0"
.balign 4
_Lt_0440:	.ascii	"upcast\0"
.balign 4
_Lt_0456:	.ascii	"gosub-setjmp\0"
.balign 4
_Lt_0459:	.ascii	"valist-as-ptr\0"
.balign 4
_Lt_045C:	.ascii	"no-thiscall\0"
.balign 4
_Lt_045F:	.ascii	"no-fastcall\0"
.balign 4
_Lt_0462:	.ascii	"fbrt\0"
.balign 4
_Lt_0465:	.ascii	"nocmdline\0"
.balign 4
_Lt_0468:	.ascii	"retinflts\0"
.balign 4
_Lt_0472:	.ascii	"a\0"
.balign 4
_Lt_0475:	.ascii	"arch\0"
.balign 4
_Lt_0478:	.ascii	"asm\0"
.balign 4
_Lt_047F:	.ascii	"buildprefix\0"
.balign 4
_Lt_0483:	.ascii	"c\0"
.balign 4
_Lt_048E:	.ascii	"dll\0"
.balign 4
_Lt_0491:	.ascii	"dylib\0"
.balign 4
_Lt_0498:	.ascii	"ex\0"
.balign 4
_Lt_049B:	.ascii	"earray\0"
.balign 4
_Lt_049E:	.ascii	"eassert\0"
.balign 4
_Lt_04A1:	.ascii	"edebug\0"
.balign 4
_Lt_04A4:	.ascii	"edebuginfo\0"
.balign 4
_Lt_04A7:	.ascii	"elocation\0"
.balign 4
_Lt_04AA:	.ascii	"enullptr\0"
.balign 4
_Lt_04AD:	.ascii	"eunwind\0"
.balign 4
_Lt_04B0:	.ascii	"entry\0"
.balign 4
_Lt_04B3:	.ascii	"exx\0"
.balign 4
_Lt_04B6:	.ascii	"export\0"
.balign 4
_Lt_04BB:	.ascii	"forcelang\0"
.balign 4
_Lt_04BE:	.ascii	"fpmode\0"
.balign 4
_Lt_04C1:	.ascii	"fpu\0"
.balign 4
_Lt_04C8:	.ascii	"gen\0"
.balign 4
_Lt_04CD:	.ascii	"help\0"
.balign 4
_Lt_04D4:	.ascii	"include\0"
.balign 4
_Lt_04DB:	.ascii	"lang\0"
.balign 4
_Lt_04E1:	.ascii	"m\0"
.balign 4
_Lt_04E4:	.ascii	"map\0"
.balign 4
_Lt_04E7:	.ascii	"maxerr\0"
.balign 4
_Lt_04EA:	.ascii	"mt\0"
.balign 4
_Lt_04EF:	.ascii	"noerrline\0"
.balign 4
_Lt_04F2:	.ascii	"nodeflibs\0"
.balign 4
_Lt_04F5:	.ascii	"nolib\0"
.balign 4
_Lt_04F8:	.ascii	"noobjinfo\0"
.balign 4
_Lt_04FB:	.ascii	"nostrip\0"
.balign 4
_Lt_04FF:	.ascii	"o\0"
.balign 4
_Lt_050A:	.ascii	"pic\0"
.balign 4
_Lt_050D:	.ascii	"pp\0"
.balign 4
_Lt_0510:	.ascii	"prefix\0"
.balign 4
_Lt_0513:	.ascii	"print\0"
.balign 4
_Lt_0516:	.ascii	"profile\0"
.balign 4
_Lt_051D:	.ascii	"rr\0"
.balign 4
_Lt_0524:	.ascii	"RR\0"
.balign 4
_Lt_052B:	.ascii	"showincludes\0"
.balign 4
_Lt_052E:	.ascii	"static\0"
.balign 4
_Lt_0531:	.ascii	"strip\0"
.balign 4
_Lt_053A:	.ascii	"title\0"
.balign 4
_Lt_0541:	.ascii	"vec\0"
.balign 4
_Lt_0544:	.ascii	"version\0"
.balign 4
_Lt_054D:	.ascii	"Wa\0"
.balign 4
_Lt_0550:	.ascii	"Wl\0"
.balign 4
_Lt_0553:	.ascii	"Wc\0"
.balign 4
_Lt_055E:	.ascii	"-version\0"
.balign 4
_Lt_0561:	.ascii	"-help\0"
.balign 4
_Lt_058A:	.ascii	"bas\0"
.balign 4
_Lt_0591:	.ascii	"rc\0"
.balign 4
_Lt_0592:	.ascii	"res\0"
.balign 4
_Lt_0596:	.ascii	"xpm\0"
.balign 4
_Lt_0609:	.ascii	"..\\\0"
.balign 4
_Lt_060F:	.ascii	"freebasic\0"
.balign 4
_Lt_0612:	.ascii	"bin\0"
.balign 4
_Lt_0623:	.ascii	", \0"
.balign 4
_Lt_0626:	.ascii	"bit\0"
.balign 4
_Lt_0629:	.ascii	" (\0"
.balign 4
_Lt_062A:	.ascii	")\0"
.balign 4
_Lt_062B:	.ascii	"target:\0"
.balign 4
_Lt_062C:	.ascii	"backend:\0"
.balign 4
_Lt_0635:	.ascii	"unnamed\0"
.balign 4
_Lt_063B:	.ascii	".asm\0"
.balign 4
_Lt_0642:	.ascii	".c\0"
.balign 4
_Lt_0645:	.ascii	".ll\0"
.balign 4
_Lt_064D:	.ascii	".pp.bas\0"
.balign 4
_Lt_0651:	.ascii	"compiling: \0"
.balign 4
_Lt_0652:	.ascii	" -o \0"
.balign 4
_Lt_0655:	.ascii	" -pp \0"
.balign 4
_Lt_0659:	.ascii	" (main module)\0"
.balign 4
_Lt_065B:	.ascii	" (FB compile-time info)\0"
.balign 4
_Lt_068C:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
_Lt_068D:	.ascii	"fb_program_icon_data\0"
.balign 4
_Lt_068E:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
_Lt_0691:	.ascii	"/* XPM */\0"
.balign 4
_Lt_069B:	.ascii	", _\n\0"
.balign 4
_Lt_069C:	.ascii	"\t@\0"
.balign 4
_Lt_06A1:	.ascii	" _ \n\0"
.balign 4
_Lt_06A2:	.ascii	"}\n\n\0"
.balign 4
_Lt_06A3:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
_Lt_06A6:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
_Lt_06AD:	.ascii	".bas\0"
.balign 4
_Lt_06B0:	.ascii	"parsing xpm: \0"
.balign 4
_Lt_06C7:	.ascii	"-m32 \0"
.balign 4
_Lt_06CA:	.ascii	"-m64 \0"
.balign 4
_Lt_06DA:	.ascii	"-mcpu=native \0"
.balign 4
_Lt_06DB:	.ascii	"-mcpu=\0"
.balign 4
_Lt_06E1:	.ascii	"-march=native \0"
.balign 4
_Lt_06E2:	.ascii	"-march=\0"
.balign 4
_Lt_06E8:	.ascii	"-fPIC \0"
.balign 4
_Lt_06EB:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
_Lt_06EC:	.ascii	"-Wno-unused \0"
.balign 4
_Lt_06EF:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_06F0:	.ascii	"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 \0"
.balign 4
_Lt_06F1:	.ascii	"-Wno-main \0"
.balign 4
_Lt_06F2:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
_Lt_06F5:	.ascii	"-O\0"
.balign 4
_Lt_06F6:	.ascii	"-fno-strict-aliasing \0"
.balign 4
_Lt_06F9:	.ascii	"-frounding-math \0"
.balign 4
_Lt_06FA:	.ascii	"-fno-math-errno \0"
.balign 4
_Lt_06FB:	.ascii	"-fwrapv \0"
.balign 4
_Lt_06FC:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
_Lt_06FF:	.ascii	"-funwind-tables \0"
.balign 4
_Lt_0700:	.ascii	"-fno-unwind-tables \0"
.balign 4
_Lt_0701:	.ascii	"-Wno-format \0"
.balign 4
_Lt_0704:	.ascii	"-g \0"
.balign 4
_Lt_0707:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
_Lt_070F:	.ascii	"-masm=intel \0"
.balign 4
_Lt_0716:	.ascii	"-march=x86 \0"
.balign 4
_Lt_0719:	.ascii	"-march=x86-64 \0"
.balign 4
_Lt_071C:	.ascii	"-march=arm \0"
.balign 4
_Lt_071F:	.ascii	"-march=armv8-a \0"
.balign 4
_Lt_0722:	.ascii	"-mcpu=powerpc \0"
.balign 4
_Lt_0725:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
_Lt_0728:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
_Lt_072B:	.ascii	"-relocation-model=pic \0"
.balign 4
_Lt_0733:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
_Lt_0734:	.ascii	"\" \0"
.balign 4
_Lt_0735:	.ascii	"-o \"\0"
.balign 4
_Lt_073C:	.ascii	"compiling C\0"
.balign 4
_Lt_073F:	.ascii	"compiling LLVM IR\0"
.balign 4
_Lt_074E:	.ascii	"--32 \0"
.balign 4
_Lt_0753:	.ascii	"--64 \0"
.balign 4
_Lt_075A:	.ascii	"--strip-local-absolute \0"
.balign 4
_Lt_0762:	.ascii	"assembling\0"
.balign 4
_Lt_076F:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
_Lt_0776:	.ascii	"compiling rc\0"
.balign 4
_Lt_078B:	.ascii	"creating: \0"
.balign 4
_Lt_0798:	.ascii	"-rsc \"\0"
.balign 4
_Lt_07A1:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
_Lt_07A8:	.ascii	"archiving\0"
.balign 4
_Lt_07AF:	.ascii	"libgcc.a\0"
.balign 4
_Lt_07B4:	.ascii	"libc++.so\0"
.balign 4
_Lt_07B7:	.ascii	"libstdcx.a\0"
.balign 4
_Lt_07B9:	.ascii	"libstdc++.so\0"
.balign 4
_Lt_07BE:	.ascii	"libm.a\0"
.balign 4
_Lt_07C1:	.ascii	"libmingw32.a\0"
.balign 4
_Lt_07D5:	.ascii	"fbgfx\0"
.balign 4
_Lt_07DC:	.ascii	"gdi32\0"
.balign 4
_Lt_07DD:	.ascii	"winmm\0"
.balign 4
_Lt_07DF:	.ascii	"X11\0"
.balign 4
_Lt_07E0:	.ascii	"Xext\0"
.balign 4
_Lt_07E1:	.ascii	"Xpm\0"
.balign 4
_Lt_07E2:	.ascii	"Xrandr\0"
.balign 4
_Lt_07E3:	.ascii	"Xrender\0"
.balign 4
_Lt_07E9:	.ascii	"kernel32\0"
.balign 4
_Lt_07EA:	.ascii	"user32\0"
.balign 4
_Lt_07ED:	.ascii	"gmon\0"
.balign 4
_Lt_07EF:	.ascii	"System\0"
.balign 4
_Lt_07F0:	.ascii	"pthread\0"
.balign 4
_Lt_07F1:	.ascii	"ncurses\0"
.balign 4
_Lt_07F5:	.ascii	"socket\0"
.balign 4
_Lt_07F9:	.ascii	"libtinfo.a\0"
.balign 4
_Lt_07FA:	.ascii	"libtinfo.so\0"
.balign 4
_Lt_07FD:	.ascii	"tinfo\0"
.balign 4
_Lt_07FE:	.ascii	"dl\0"
.balign 4
_Lt_07FF:	.ascii	"libgcc_eh.a\0"
.balign 4
_Lt_0800:	.ascii	"libgcc_eh.so\0"
.balign 4
_Lt_0803:	.ascii	"gcc_eh\0"
.balign 4
_Lt_0807:	.ascii	"msvcrt\0"
.balign 4
_Lt_0808:	.ascii	"mingw32\0"
.balign 4
_Lt_0809:	.ascii	"mingwex\0"
.balign 4
_Lt_080A:	.ascii	"moldname\0"
.balign 4
_Lt_080B:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
_Lt_0811:	.ascii	"openxdk\0"
.balign 4
_Lt_0812:	.ascii	"hal\0"
.balign 4
_Lt_0813:	.ascii	"usb\0"
.balign 4
_Lt_0814:	.ascii	"xboxkrnl\0"
.balign 4
_Lt_081E:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
_Lt_081F:	.ascii	"input files:\0"
.balign 4
_Lt_0820:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
_Lt_0821:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
_Lt_0822:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
_Lt_0823:	.ascii	"options:\0"
.balign 4
_Lt_0824:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
_Lt_0825:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
_Lt_0826:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
_Lt_0827:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
_Lt_0828:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
_Lt_082B:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
_Lt_082C:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
_Lt_082D:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
_Lt_082E:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
_Lt_082F:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
_Lt_0830:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
_Lt_0831:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
_Lt_0834:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
_Lt_0835:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
_Lt_0836:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
_Lt_0837:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
_Lt_0838:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
_Lt_0839:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
_Lt_083A:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
_Lt_083B:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
_Lt_083C:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
_Lt_083D:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
_Lt_083E:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
_Lt_083F:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
_Lt_0842:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
_Lt_0843:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
_Lt_0844:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
_Lt_0847:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
_Lt_0848:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
_Lt_0849:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
_Lt_084A:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
_Lt_084B:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
_Lt_084C:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
_Lt_084D:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
_Lt_084E:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
_Lt_084F:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
_Lt_0850:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
_Lt_0851:	.ascii	"  -lib             Create a static library\0"
.balign 4
_Lt_0852:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
_Lt_0853:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
_Lt_0854:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
_Lt_0855:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
_Lt_0856:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
_Lt_0857:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
_Lt_0858:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
_Lt_0859:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
_Lt_085A:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
_Lt_085B:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
_Lt_085C:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
_Lt_085D:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
_Lt_085E:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
_Lt_085F:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
_Lt_0860:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
_Lt_0861:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
_Lt_0862:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
_Lt_0863:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
_Lt_0866:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
_Lt_0867:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
_Lt_0868:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
_Lt_0869:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
_Lt_086A:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
_Lt_086B:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
_Lt_086C:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
_Lt_086D:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
_Lt_086E:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
_Lt_086F:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
_Lt_0870:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
_Lt_0873:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
_Lt_0874:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
_Lt_0875:	.ascii	"  -v               Be verbose\0"
.balign 4
_Lt_0876:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
_Lt_0877:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
_Lt_0878:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
_Lt_087B:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
_Lt_087C:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
_Lt_087D:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
_Lt_087E:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
_Lt_087F:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
_Lt_0880:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
_Lt_0881:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
_Lt_0882:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
_Lt_0883:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
_Lt_0884:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
_Lt_0885:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
_Lt_0886:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
_Lt_0887:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
_Lt_0888:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
_Lt_088B:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
_Lt_088C:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
_Lt_088D:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
_Lt_088E:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
_Lt_088F:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
_Lt_0890:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
_Lt_0891:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
_Lt_089E:	.ascii	"FreeBASIC Compiler - Version 1.10.0 (2023-10-18), built for \0"
.balign 4
_Lt_089F:	.ascii	"bit)\0"
.balign 4
_Lt_08A4:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
_Lt_08AB:	.ascii	"source sha-1: \0"
.balign 4
_Lt_08D0:	.ascii	"Restarting fbc ...\0"

.section .ctors
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
