	.intel_syntax noprefix

.section .text
.balign 16

.globl FBCPUTYPEFROMGNUARCHINFO
FBCPUTYPEFROMGNUARCHINFO:
.type FBCPUTYPEFROMGNUARCHINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_031B:
mov dword ptr [ebp-8], 0
.L_0320:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [GNUARCHMAP+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0322
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ebp-4], ebx
jmp .L_031C
.L_0322:
.L_0321:
.L_031E:
inc dword ptr [ebp-8]
.L_031D:
cmp dword ptr [ebp-8], 16
jle .L_0320
.L_031F:
mov dword ptr [ebp-4], -1
.L_031C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPUTYPEFROMGNUARCHINFO, .-FBCPUTYPEFROMGNUARCHINFO
.cfi_endproc
.balign 16

.globl FBCPARSEARGSFROMSTRING
FBCPARSEARGSFROMSTRING:
.type FBCPARSEARGSFROMSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_057E:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
.L_0580:
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .L_0584
jmp .L_0581
.L_0584:
.L_0583:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
.L_0585:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jge .L_0586
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-44], ebx
jmp .L_0588
.L_058A:
cmp dword ptr [ebp-36], 0
jne .L_058C
jmp .L_0586
.L_058C:
.L_058B:
jmp .L_0587
.L_058D:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jne .L_0590
mov dword ptr [ebp-36], 0
jmp .L_058F
.L_0590:
cmp dword ptr [ebp-36], 0
jne .L_0591
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.L_0591:
.L_058F:
jmp .L_0587
.L_0588:
mov ebx, dword ptr [ebp-44]
add ebx, 4294967264
cmp ebx, 7
ja .L_0587
mov ebx, dword ptr [ebp-44]
jmp dword ptr [.L_0592+ebx*4-128]
.L_0592:
.int .L_058A
.int .L_0587
.int .L_058D
.int .L_0587
.int .L_0587
.int .L_0587
.int .L_0587
.int .L_058D
.L_0587:
inc dword ptr [ebp-32]
jmp .L_0585
.L_0586:
cmp dword ptr [ebp-32], 0
jne .L_0594
mov dword ptr [ebp-32], 1
jmp .L_0593
.L_0594:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-32]
lea ebx, [ebp-12]
push ebx
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-24]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-24]
push eax
call STRUNQUOTE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-24]
push eax
call HANDLEARG
add esp, 16
.L_0593:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-28]
sub eax, dword ptr [ebp-32]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0582:
jmp .L_0580
.L_0581:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_057F:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPARSEARGSFROMSTRING, .-FBCPARSEARGSFROMSTRING
.cfi_endproc
.balign 16

.globl main
main:
.type main, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
and esp, 0xFFFFFFF0
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_Init
add esp, 16
call fb_InitSignals
call fb_CpuDetect
shr eax, 28
cmp eax, 6
jae .L_0004
sub esp, 4
push 1
push 44
push offset Lt_0005
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call fb_End
add esp, 16
.L_0004:
.L_0002:
call FBCINIT
cmp dword ptr [ebp+8], 1
jne .L_0892
sub esp, 12
push 0
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0892:
.L_0891:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARSEARGS
add esp, 16
call HCHECKARGS
cmp dword ptr [FBC+60], 0
je .L_0894
sub esp, 12
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 16
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_0894:
.L_0893:
cmp dword ptr [FBC+56], 0
je .L_0896
mov dword ptr [FBC+60], -1
sub esp, 12
push 0
call HPRINTVERSION
add esp, 16
.L_0896:
.L_0895:
cmp dword ptr [FBC+64], 0
je .L_0898
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0898:
.L_0897:
.L_0899:
call FBCDETERMINEPREFIX
call FBCSETUPCOMPILERPATHS
cmp dword ptr [FBC+56], 0
je .L_089D
call FBCPRINTTARGETINFO
.L_089D:
.L_089C:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+2490]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+264]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+232]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [FBC+68], 0
jl .L_08A0
mov ebx, dword ptr [FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .L_08A3
.L_08A4:
sub esp, 4
push 1
sub esp, 8
call FBGETHOSTID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08A1
.L_08A3:
cmp dword ptr [ebp-24], 1
jne .L_08A5
.L_08A6:
sub esp, 4
push 1
sub esp, 8
call FBGETTARGETID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08A1
.L_08A5:
cmp dword ptr [ebp-24], 2
jne .L_08A7
.L_08A8:
cmp dword ptr [ebp-20], 0
je .L_08AA
call FBCDETERMINEMAINNAME
.L_08AA:
.L_08A9:
call HSETOUTNAME
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08A1
.L_08A7:
cmp dword ptr [ebp-24], 3
jne .L_08AB
.L_08AC:
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+2751]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_08A1
.L_08AB:
cmp dword ptr [ebp-24], 4
jne .L_08AD
.L_08AE:
sub esp, 4
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_08AD:
.L_08A1:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08A0:
.L_089F:
call FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .L_08B0
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08B0:
.L_08AF:
call HCOMPILEMODULES
call FBSHOULDRESTART
test eax, eax
jne .L_08B2
jmp .L_089A
.L_08B2:
.L_08B1:
sub esp, 12
push 8
call FBRESTARTENDREQUEST
add esp, 16
call ERRPREINIT
call HCHECKARGS
cmp dword ptr [FBC+56], 0
je .L_08B4
sub esp, 4
push 1
push 18
push offset Lt_08B5
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_08B4:
.L_08B3:
.L_089B:
jmp .L_0899
.L_089A:
call HCOMPILEXPM
test eax, eax
jne .L_08B7
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08B7:
.L_08B6:
cmp dword ptr [FBC+36], 0
je .L_08B9
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08B9:
.L_08B8:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_08BB
call HCOMPILESTAGE2MODULES
.L_08BB:
.L_08BA:
cmp dword ptr [FBC+44], 0
je .L_08BD
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08BD:
.L_08BC:
call HASSEMBLEMODULES
call HASSEMBLERCS
call HASSEMBLEXPM
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .L_08BF
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08BF:
.L_08BE:
call HSETDEFAULTLIBPATHS
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_08C1
call HCOLLECTOBJINFO
.L_08C1:
.L_08C0:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_08C3
call HARCHIVEFILES
test eax, eax
jne .L_08C5
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08C5:
.L_08C4:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_08C3:
.L_08C2:
cmp dword ptr [FBC+1956], 0
jne .L_08C7
call HADDDEFAULTLIBS
.L_08C7:
.L_08C6:
call HEXCLUDELIBSFROMLINK
call HLINKFILES
test eax, eax
jne .L_08C9
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_08C9:
.L_08C8:
sub esp, 12
push 0
call FBCEND
add esp, 16
.L_0003:
sub esp, 12
push 0
call fb_End
add esp, 16
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size main, .-main
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
.L_0014:
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
.L_0015:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTC1Ev:
.type _ZN10FBC_EXTOPTC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
.L_0023:
.L_0024:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTC1Ev, .-_ZN10FBC_EXTOPTC1Ev
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTaSERKS_:
.type _ZN10FBC_EXTOPTaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0025:
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
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
.L_0026:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTaSERKS_, .-_ZN10FBC_EXTOPTaSERKS_
.cfi_endproc
.balign 16
_ZN10FBC_EXTOPTD1Ev:
.type _ZN10FBC_EXTOPTD1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0029:
.L_002A:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN10FBC_EXTOPTD1Ev, .-_ZN10FBC_EXTOPTD1Ev
.cfi_endproc
.balign 16
_ZN9FBCIOFILEC1Ev:
.type _ZN9FBCIOFILEC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
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
.L_002B:
.L_002C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILEC1Ev, .-_ZN9FBCIOFILEC1Ev
.cfi_endproc
.balign 16
_ZN9FBCIOFILEaSERKS_:
.type _ZN9FBCIOFILEaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_002D:
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
.L_002E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILEaSERKS_, .-_ZN9FBCIOFILEaSERKS_
.cfi_endproc
.balign 16
_ZN9FBCIOFILED1Ev:
.type _ZN9FBCIOFILED1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0031:
.L_0032:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN9FBCIOFILED1Ev, .-_ZN9FBCIOFILED1Ev
.cfi_endproc
.balign 16
_ZN6FBCCTXC1Ev:
.type _ZN6FBCCTXC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
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
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call _ZN9FBCIOFILEC1Ev
add esp, 16
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
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTC1Ev
add esp, 16
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
.L_0033:
.L_0034:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXC1Ev, .-_ZN6FBCCTXC1Ev
.cfi_endproc
.balign 16
_ZN6FBCCTXaSERKS_:
.type _ZN6FBCCTXaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0035:
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
sub esp, 12
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
call fb_StrAssign
add esp, 32
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
sub esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call _ZN9FBCIOFILEaSERKS_
add esp, 16
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
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+12]
add ecx, 1136
mov ebx, dword ptr [ebp+8]
add ebx, 1136
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 8
mov eax, dword ptr [ebp+12]
add eax, 1532
lea ebx, [eax]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 1532
lea eax, [ebx]
push eax
call _ZN10FBC_EXTOPTaSERKS_
add esp, 16
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
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
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 12
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
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+8]
add ecx, 3276
mov ebx, dword ptr [ebp+12]
add ebx, 3276
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0036:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXaSERKS_, .-_ZN6FBCCTXaSERKS_
.cfi_endproc
.balign 16
_ZN6FBCCTXD1Ev:
.type _ZN6FBCCTXD1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0039:
.L_003A:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 1532
lea ebx, [eax]
push ebx
call _ZN10FBC_EXTOPTD1Ev
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea eax, [ebx]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN6FBCCTXD1Ev, .-_ZN6FBCCTXD1Ev
.cfi_endproc
.balign 16
FBCINIT:
.type FBCINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0049:
mov dword ptr [FBC+20], -1
mov dword ptr [FBC+24], -1
mov dword ptr [FBC+32], -1
push -1
push 20
push 64
lea eax, [FBC+72]
push eax
call LISTINIT
add esp, 16
push -1
push 20
push 16
lea eax, [FBC+104]
push eax
call LISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+156]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 64
lea eax, [FBC+200]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+232]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+264]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+308]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+352]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+396]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+440]
push eax
call STRSETINIT
add esp, 16
call FBGLOBALINIT
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [FBC+3276], eax
mov dword ptr [FBC+68], -1
.L_004A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCINIT, .-FBCINIT
.cfi_endproc
.balign 16
HSETOUTNAME:
.type HSETOUTNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
.L_004B:
sub esp, 8
push 261
lea eax, [FBC+484]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_004E
jmp .L_004C
.L_004E:
.L_004D:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_0050
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0052
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
lea eax, [FBC+745]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
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
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_004C
.L_0050:
.L_004F:
sub esp, 12
push 0
push 261
lea eax, [FBC+745]
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_0058
.L_0059:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .L_005D
.L_005E:
cmp dword ptr [ebp-8], 1
je .L_005D
.L_005F:
cmp dword ptr [ebp-8], 0
je .L_005D
.L_0060:
cmp dword ptr [ebp-8], 4
jne .L_005C
.L_005D:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0061
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_005A
.L_005C:
cmp dword ptr [ebp-8], 11
jne .L_0063
.L_0064:
sub esp, 12
push 0
push -1
sub esp, 8
push 6
push offset Lt_0065
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
.L_0063:
.L_005A:
jmp .L_0056
.L_0058:
cmp dword ptr [ebp-4], 2
jne .L_0067
.L_0068:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_006C
.L_006D:
cmp dword ptr [ebp-8], 0
jne .L_006B
.L_006C:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_006E
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
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
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0078
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
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
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0069
.L_0070:
cmp dword ptr [ebp-8], 3
jne .L_007C
.L_007D:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_007E
push 261
lea eax, [FBC+484]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
.L_007C:
.L_0069:
.L_0067:
.L_0056:
.L_004C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETOUTNAME, .-HSETOUTNAME
.cfi_endproc
.balign 16
FBCEND:
.type FBCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0080:
sub esp, 12
lea eax, [FBC+156]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0082:
cmp dword ptr [ebp-4], 0
je .L_0083
sub esp, 12
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_FileKill
add esp, 16
test eax, eax
je .L_0085
.L_0085:
.L_0084:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0083:
sub esp, 12
push dword ptr [ebp+8]
call fb_End
add esp, 16
.L_0081:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCEND, .-FBCEND
.cfi_endproc
.balign 16
FBCADDTEMP:
.type FBCADDTEMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0086:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETADD
add esp, 16
.L_0087:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDTEMP, .-FBCADDTEMP
.cfi_endproc
.balign 16
FBCREMOVETEMP:
.type FBCREMOVETEMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0088:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRSETDEL
add esp, 16
.L_0089:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCREMOVETEMP, .-FBCREMOVETEMP
.cfi_endproc
.balign 16
FBCADDOBJ:
.type FBCADDOBJ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_008A:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDOBJ, .-FBCADDOBJ
.cfi_endproc
.balign 16
HGET1STOUTPUTLINEFROMCOMMAND:
.type HGET1STOUTPUTLINEFROMCOMMAND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008C:
call fb_FileFree
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpenPipe
add esp, 32
test eax, eax
je .L_008F
jmp .L_008D
.L_008F:
.L_008E:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push dword ptr [ebp-16]
call fb_FileInput
add esp, 16
sub esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call fb_InputString
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0090
push 0
push 0
push offset Lt_0091
push 303
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0090:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .L_008D
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_008D:
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
.size HGET1STOUTPUTLINEFROMCOMMAND, .-HGET1STOUTPUTLINEFROMCOMMAND
.cfi_endproc
.balign 16
FBCQUERYGCC:
.type FBCQUERYGCC, @function
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
.L_0092:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
lea eax, [ebp-24]
push eax
push 3
call FBCFINDBIN
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_0096
.L_0097:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_0096:
cmp dword ptr [ebp-56], 1
jne .L_0099
.L_009A:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_0099:
cmp dword ptr [ebp-56], 4
jne .L_009C
.L_009D:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0094
.L_009C:
cmp dword ptr [ebp-56], 5
je .L_009F
.L_00A0:
cmp dword ptr [ebp-56], 6
jne .L_009E
.L_009F:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_009E:
.L_0094:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
call fb_FileFree
mov dword ptr [ebp-40], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-40]
push 0
push 0
push 2
lea eax, [ebp-24]
push eax
call fb_FileOpenPipe
add esp, 32
test eax, eax
je .L_00A3
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0093
.L_00A3:
.L_00A2:
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push dword ptr [ebp-40]
call fb_FileInput
add esp, 16
sub esp, 4
push 0
push -1
lea eax, [ebp-52]
push eax
call fb_InputString
add esp, 16
sub esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 16
test eax, eax
je .L_00A4
push 0
push 0
push offset Lt_0091
push 334
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00A4:
sub esp, 12
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0093
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0093:
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
.size FBCQUERYGCC, .-FBCQUERYGCC
.cfi_endproc
.balign 16
FBCBUILDPATHTOLIBFILE:
.type FBCBUILDPATHTOLIBFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 88
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
sub esp, 4
push 2
push offset Lt_001B
push 261
lea eax, [FBC+2751]
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
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
je .L_00AA
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
jmp .L_00A6
.L_00AA:
.L_00A9:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 8
lea eax, [ebp-60]
push eax
push 3
call FBCFINDBIN
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-88], eax
cmp dword ptr [ebp-88], 0
jne .L_00AD
.L_00AE:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00AD:
cmp dword ptr [ebp-88], 1
jne .L_00AF
.L_00B0:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00AF:
cmp dword ptr [ebp-88], 4
jne .L_00B1
.L_00B2:
sub esp, 12
push 0
push 6
push offset Lt_0098
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_00AB
.L_00B1:
cmp dword ptr [ebp-88], 5
je .L_00B4
.L_00B5:
cmp dword ptr [ebp-88], 6
jne .L_00B3
.L_00B4:
sub esp, 12
push 0
push 6
push offset Lt_009B
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
.L_00B3:
.L_00AB:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
push dword ptr [ebp+8]
push 19
push offset Lt_00B6
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-60]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_00BA
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00BA:
.L_00B9:
push -1
sub esp, 8
push dword ptr [ebp-24]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BC
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00A6
.L_00BC:
.L_00BB:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_00A6:
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
.size FBCBUILDPATHTOLIBFILE, .-FBCBUILDPATHTOLIBFILE
.cfi_endproc
.balign 16
FBCFINDLIBFILE:
.type FBCFINDLIBFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00C0
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00C2
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_00BE:
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
.size FBCFINDLIBFILE, .-FBCFINDLIBFILE
.cfi_endproc
.balign 16
FBCADDDEFLIBPATH:
.type FBCADDDEFLIBPATH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C3:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 16
.L_00C4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDDEFLIBPATH, .-FBCADDDEFLIBPATH
.cfi_endproc
.balign 16
FBCADDLIBPATHFOR:
.type FBCADDLIBPATHFOR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_00C5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HSTRIPFILENAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00C9
sub esp, 12
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 16
.L_00C9:
.L_00C8:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_00C6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDLIBPATHFOR, .-FBCADDLIBPATHFOR
.cfi_endproc
.balign 16
FBCFINDBIN:
.type FBCFINDBIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_00CA:
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [FBCTOOLTB+eax+16]
and ebx, 4
test ebx, ebx
je .L_00CD
sub esp, 12
push 0
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_00CB
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
imul eax, 284
and dword ptr [FBCTOOLTB+eax+16], -9
mov eax, dword ptr [ebp+8]
imul eax, 284
mov ebx, dword ptr [FBCTOOLTB+eax+16]
and ebx, 2
test ebx, ebx
je .L_00CF
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push 0
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_GetEnviron
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00CF:
.L_00CE:
sub esp, 8
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_00D1
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [FBC+2229]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00D5
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .L_00D8
.L_00D9:
cmp dword ptr [ebp+8], 0
jne .L_00DB
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset Lt_00DC
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCQUERYGCC
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
jmp .L_00DA
.L_00DB:
cmp dword ptr [ebp+8], 2
jne .L_00DE
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 21
push offset Lt_00DF
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCQUERYGCC
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
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
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .L_00E5
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_00E7
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_00E9
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 261
lea ebx, [FBC+3012]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .L_00E8
.L_00E9:
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push 129
lea ebx, [FBC+1697]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00E8:
jmp .L_00E6
.L_00E7:
sub esp, 12
push 0
push 16
mov eax, dword ptr [ebp+8]
imul eax, 284
lea ebx, [FBCTOOLTB+eax]
push ebx
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.L_00E6:
mov ebx, dword ptr [ebp+8]
imul ebx, 284
or dword ptr [FBCTOOLTB+ebx+16], 8
.L_00E5:
.L_00E4:
.L_00D1:
.L_00D0:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
mov ebx, dword ptr [ebp+8]
imul ebx, 284
lea eax, [FBCTOOLTB+ebx+20]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
imul eax, 284
or dword ptr [FBCTOOLTB+eax+16], 4
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCFINDBIN, .-FBCFINDBIN
.cfi_endproc
.balign 16
FBCRUNBIN:
.type FBCRUNBIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
call FBCFINDBIN
add esp, 16
cmp dword ptr [FBC+56], 0
je .L_00F1
sub esp, 4
push 2
sub esp, 4
push 3
push offset Lt_00F2
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
push dword ptr [ebp+16]
push -1
sub esp, 4
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_00F1:
.L_00F0:
sub esp, 8
push dword ptr [ebp+16]
lea eax, [ebp-20]
push eax
call fb_Exec
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00F8
mov dword ptr [ebp-4], -1
jmp .L_00F7
.L_00F8:
cmp dword ptr [ebp-8], 0
jge .L_00F9
sub esp, 12
push 0
push 6
push -1
push dword ptr [ebp-20]
push 91
call ERRREPORTEX
add esp, 32
jmp .L_00F7
.L_00F9:
cmp dword ptr [FBC+56], 0
je .L_00FB
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 29
push offset Lt_00FD
push -1
sub esp, 4
push -1
lea eax, [ebp-20]
push eax
push -1
sub esp, 4
push 11
push offset Lt_00FC
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_00FB:
.L_00FA:
.L_00F7:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_00EF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCRUNBIN, .-FBCRUNBIN
.cfi_endproc
.balign 16
CLEARDEFLIST:
.type CLEARDEFLIST, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 56
mov dword ptr [ebp-4], 0
.L_0102:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0105
mov dword ptr [ebp-4], 0
jmp .L_0103
.L_0105:
.L_0104:
sub esp, 12
push 0
push -1
sub esp, 8
push 11
push offset Lt_0106
push -1
sub esp, 4
push dword ptr [ebp+8]
call HSTRIPEXT
add esp, 8
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
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
call fb_FileFree
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0109
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_010A
push 0
push 0
push offset Lt_0091
push 604
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_010A:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0103
.L_0109:
.L_0108:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.L_010B:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_010C
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 5
push offset Lt_010D
push -1
sub esp, 12
push 4
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_010F
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-48]
push eax
call fb_StrLen
add esp, 8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.L_010F:
.L_010E:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
sub esp, 4
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call fb_PrintString
add esp, 16
jmp .L_010B
.L_010C:
sub esp, 12
push dword ptr [ebp-36]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0111
push 0
push 0
push offset Lt_0091
push 619
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0111:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0112
push 0
push 0
push offset Lt_0091
push 620
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0112:
sub esp, 12
push dword ptr [ebp+8]
call fb_FileKill
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call rename
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0103
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0103:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CLEARDEFLIST, .-CLEARDEFLIST
.cfi_endproc
.balign 16
HGENERATEEMPTYDEFFILE:
.type HGENERATEEMPTYDEFFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0113:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0116
jmp .L_0114
.L_0116:
.L_0115:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
sub esp, 4
push 1
push 7
push offset Lt_0118
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0119
push 0
push 0
push offset Lt_0091
push 634
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0119:
mov dword ptr [ebp-4], -1
.L_0114:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGENERATEEMPTYDEFFILE, .-HGENERATEEMPTYDEFFILE
.cfi_endproc
.balign 16
MAKEIMPLIB:
.type MAKEIMPLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 120
mov dword ptr [ebp-4], 0
.L_011A:
sub esp, 12
push dword ptr [ebp+12]
call CLEARDEFLIST
add esp, 16
test eax, eax
jne .L_011D
jmp .L_011B
.L_011D:
.L_011C:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call fb_FileLen
add esp, 16
cmp edx, 0
jne .L_011F
cmp eax, 0
jne .L_011F
.L_08D7:
sub esp, 12
push dword ptr [ebp+12]
call HGENERATEEMPTYDEFFILE
add esp, 16
test eax, eax
jne .L_0121
jmp .L_011B
.L_0121:
.L_0120:
.L_011F:
.L_011E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp+12]
push 8
push offset Lt_0122
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_0127
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 8
push offset Lt_0129
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push -1
sub esp, 4
push 4
push offset Lt_0051
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+484]
push eax
call HSTRIPFILENAME
add esp, 16
push eax
push 16
push offset Lt_0128
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 6
push offset Lt_012F
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0131
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_011B
.L_0131:
.L_0130:
cmp dword ptr [FBC+40], 0
jne .L_0133
sub esp, 12
push dword ptr [ebp+12]
call FBCADDTEMP
add esp, 16
.L_0133:
.L_0132:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_011B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size MAKEIMPLIB, .-MAKEIMPLIB
.cfi_endproc
.balign 16
HFINDLIB:
.type HFINDLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0134:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0137
sub esp, 12
push 0
push 3
push offset Lt_0138
push -1
lea eax, [ebp-12]
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
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0136
.L_0137:
sub esp, 12
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 32
.L_0136:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0135:
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
.size HFINDLIB, .-HFINDLIB
.cfi_endproc
.balign 16
FBCLINKERISGOLD:
.type FBCLINKERISGOLD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0139:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
jne .L_013C
mov dword ptr [ebp-4], 0
jmp .L_013A
jmp .L_013B
.L_013C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 8
lea eax, [ebp-16]
push eax
push 2
call FBCFINDBIN
add esp, 16
sub esp, 12
push 0
push 11
push offset Lt_013D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
sub esp, 4
push 8
push offset Lt_013E
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
lea eax, [ebp-16]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_013A
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_013B:
.L_013A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCLINKERISGOLD, .-FBCLINKERISGOLD
.cfi_endproc
.balign 16
FBCISUSINGGOLDLINKER:
.type FBCISUSINGGOLDLINKER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_013F:
call FBTARGETSUPPORTSELF
test eax, eax
je .L_0142
call FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .L_0140
.L_0142:
.L_0141:
mov dword ptr [ebp-4], 0
.L_0140:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCISUSINGGOLDLINKER, .-FBCISUSINGGOLDLINKER
.cfi_endproc
.balign 16
HLINKFILES:
.type HLINKFILES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
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
call HSETOUTNAME
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .L_0147
.L_0148:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_014B
.L_014C:
sub esp, 12
push 0
push 11
push offset Lt_014D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0149
.L_014B:
cmp dword ptr [ebp-52], 1
jne .L_014E
.L_014F:
sub esp, 12
push 0
push 12
push offset Lt_0150
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_014E:
.L_0149:
jmp .L_0145
.L_0147:
cmp dword ptr [ebp-48], 2
jne .L_0151
.L_0152:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0155
.L_0156:
sub esp, 12
push 0
push 13
push offset Lt_0157
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0153
.L_0155:
cmp dword ptr [ebp-52], 1
jne .L_0158
.L_0159:
sub esp, 12
push 0
push 15
push offset Lt_015A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0153
.L_0158:
cmp dword ptr [ebp-52], 2
jne .L_015B
.L_015C:
sub esp, 12
push 0
push 22
push offset Lt_015D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_015B:
.L_0153:
jmp .L_0145
.L_0151:
cmp dword ptr [ebp-48], 9
jne .L_015E
.L_015F:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .L_0162
.L_0163:
sub esp, 12
push 0
push 12
push offset Lt_0164
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0160
.L_0162:
cmp dword ptr [ebp-52], 1
jne .L_0165
.L_0166:
sub esp, 12
push 0
push 14
push offset Lt_0167
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0160
.L_0165:
cmp dword ptr [ebp-52], 2
jne .L_0168
.L_0169:
sub esp, 12
push 0
push 13
push offset Lt_016A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0168:
.L_0160:
.L_015E:
.L_0145:
sub esp, 12
push 0
push 5
push offset Lt_016D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 0
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_016F
sub esp, 12
push 0
push 9
push offset Lt_0170
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_0172
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 4
push offset Lt_0173
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-60], eax
.L_0174:
cmp dword ptr [ebp-60], 0
je .L_0175
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_0138
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-60], eax
jmp .L_0174
.L_0175:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .L_017A
sub esp, 12
push 0
push 5
push offset Lt_017B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_017A:
.L_0179:
.L_017C:
cmp dword ptr [ebp-60], 0
je .L_017D
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-60]
push 3
push offset Lt_0138
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-60]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-60], eax
jmp .L_017C
.L_017D:
sub esp, 4
lea eax, [ebp-16]
push eax
push 10
push offset Lt_0181
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_016F:
.L_016E:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0183
.L_0185:
sub esp, 8
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0187
sub esp, 12
push 0
push 8
push offset Lt_0188
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0186
.L_0187:
push 4
push offset Lt_0189
push 129
lea eax, [FBC+1401]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_018B
sub esp, 12
push 0
push 8
push offset Lt_018C
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
.L_018B:
.L_018A:
.L_0186:
sub esp, 12
push 0
push 13
push offset Lt_018D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1401]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_018F
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 30
push offset Lt_0192
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
test eax, eax
jne .L_0194
sub esp, 12
push 0
push 26
push offset Lt_0195
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0193
.L_0194:
sub esp, 12
push 0
push 22
push offset Lt_0196
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0193:
.L_018F:
.L_018E:
jmp .L_0182
.L_0197:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0199
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 12
push offset Lt_019C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+484]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
push 4
push offset Lt_0051
push -1
sub esp, 12
push 3
lea eax, [ebp-28]
push eax
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_019E
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.L_019E:
.L_019D:
jmp .L_0198
.L_0199:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_01A0
.L_01A2:
sub esp, 12
push 0
push 38
push offset Lt_01A3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A4:
sub esp, 12
push 0
push 38
push offset Lt_01A5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A6:
sub esp, 12
push 0
push 34
push offset Lt_01A7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A8:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .L_01AB
.L_01AC:
sub esp, 12
push 0
push 36
push offset Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01AB:
cmp dword ptr [ebp-56], 1
jne .L_01AE
.L_01AF:
sub esp, 12
push 0
push 45
push offset Lt_01B0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01AE:
cmp dword ptr [ebp-56], 2
jne .L_01B1
.L_01B2:
sub esp, 12
push 0
push 42
push offset Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A9
.L_01B1:
cmp dword ptr [ebp-56], 3
jne .L_01B4
.L_01B5:
sub esp, 12
push 0
push 44
push offset Lt_01B6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01B4:
.L_01A9:
jmp .L_019F
.L_01B7:
sub esp, 12
push 0
push 40
push offset Lt_01B8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01B9:
sub esp, 12
push 0
push 36
push offset Lt_01BA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_019F
.L_01A0:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .L_019F
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_01BB+eax*4-8]
.L_01BB:
.int .L_01A8
.int .L_019F
.int .L_019F
.int .L_01A2
.int .L_01A4
.int .L_01A6
.int .L_01B9
.int .L_019F
.int .L_01B7
.L_019F:
.L_0198:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 33
mov ebx, eax
call FBGETOPTION
add esp, 16
or ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01BD
sub esp, 12
push 0
push 18
push offset Lt_01BE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01BD:
.L_01BC:
jmp .L_0182
.L_01BF:
sub esp, 12
push 0
push 66
push offset Lt_01C0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0182
.L_01C1:
sub esp, 12
push 0
push 4
push offset Lt_01C2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 26
push offset Lt_01C8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-52], 0
.L_01CC:
sub esp, 12
push 0
push 5
push offset Lt_01CD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [Lt_08E2+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_01CA:
inc dword ptr [ebp-52]
.L_01C9:
cmp dword ptr [ebp-52], 3
jle .L_01CC
.L_01CB:
sub esp, 12
push 0
push 14
push offset Lt_01CE
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01CF
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 11
push offset Lt_01D0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D1
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1401]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_01D3
sub esp, 12
push 0
push 11
push offset Lt_01D0
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D4
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01D3:
.L_01D2:
jmp .L_0182
.L_0183:
cmp dword ptr [ebp-48], 11
ja .L_0182
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01D5+eax*4]
.L_01D5:
.int .L_0185
.int .L_0185
.int .L_0197
.int .L_0182
.int .L_01BF
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_0197
.int .L_01C1
.L_0182:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .L_01D7
sub esp, 12
push 0
push 6
push offset Lt_01D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_01DA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01D6
.L_01D7:
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 7
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .L_01DC
sub esp, 12
push 0
push 6
push offset Lt_01D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_01DE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01DC:
.L_01DB:
.L_01D6:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_01E0
.L_01E2:
sub esp, 12
push 38
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 12
push 0
push 10
push offset Lt_01E3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_01E4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_01E6
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_01E8
push -1
lea eax, [ebp-40]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 16
push offset Lt_01E9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01E6:
.L_01E5:
jmp .L_01DF
.L_01EA:
sub esp, 12
push 0
push 23
push offset Lt_01EB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01DF
.L_01E0:
cmp dword ptr [ebp-48], 4
ja .L_01DF
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_01EC+eax*4]
.L_01EC:
.int .L_01E2
.int .L_01E2
.int .L_01DF
.int .L_01DF
.int .L_01EA
.L_01DF:
cmp dword ptr [FBC+1960], 0
je .L_01EE
sub esp, 12
push 0
push 10
push offset Lt_01EF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01EE:
.L_01ED:
sub esp, 8
push 261
lea eax, [FBC+1140]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_01F1
sub esp, 12
push 0
push 7
push offset Lt_01F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+1140]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01F1:
.L_01F0:
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_01F4
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_01F6
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_01F8
cmp dword ptr [FBC+1964], 0
je .L_01FA
sub esp, 12
push 0
push 4
push offset Lt_01FB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01FA:
.L_01F9:
.L_01F8:
.L_01F7:
.L_01F6:
.L_01F5:
.L_01F4:
.L_01F3:
sub esp, 12
lea eax, [FBC+440]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_01FD
sub esp, 12
push 0
push 6
push offset Lt_01FE
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
jmp .L_01FC
.L_01FD:
sub esp, 12
push 0
push 5
push offset Lt_01FF
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
.L_01FC:
.L_0200:
cmp dword ptr [ebp-48], 0
je .L_0201
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-60]
push ebx
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0200
.L_0201:
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0206
.L_0208:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_020A
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020B
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0209
.L_020A:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020B
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_020D
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020E
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_020D:
.L_020C:
.L_0209:
jmp .L_0205
.L_020F:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0211
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0212
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0210
.L_0211:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0213
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0215
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0216
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0215:
.L_0214:
.L_0210:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0217
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0205
.L_0218:
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_021A
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020E
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0219
.L_021A:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020B
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0219:
jmp .L_0205
.L_021B:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_021D
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_021F
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_0221
.L_0223:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020E
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0220
.L_0224:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0225
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0220
.L_0221:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_0224
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_0226+eax*4-32]
.L_0226:
.int .L_0223
.int .L_0224
.int .L_0223
.L_0220:
jmp .L_021E
.L_021F:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .L_0228
.L_022A:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020B
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0227
.L_022B:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_022C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0227
.L_0228:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .L_022B
mov eax, dword ptr [ebp-52]
jmp dword ptr [.L_022D+eax*4-32]
.L_022D:
.int .L_022A
.int .L_022B
.int .L_022A
.L_0227:
.L_021E:
.L_021D:
.L_021C:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_022F
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .L_0231
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0232
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0231:
.L_0230:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0234
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0235
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0233
.L_0234:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0217
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0233:
.L_022F:
.L_022E:
jmp .L_0205
.L_0236:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020B
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0205
.L_0206:
cmp dword ptr [ebp-48], 10
ja .L_0205
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0237+eax*4]
.L_0237:
.int .L_020F
.int .L_0208
.int .L_021B
.int .L_0218
.int .L_0236
.int .L_021B
.int .L_021B
.int .L_021B
.int .L_021B
.int .L_021B
.int .L_021B
.L_0205:
cmp dword ptr [FBC+1956], 0
jne .L_0239
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_023B
sub esp, 12
push 0
push 3
push offset Lt_0138
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_001B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_023D
sub esp, 12
push 0
push 11
push offset Lt_023E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_023C
.L_023D:
sub esp, 12
push 0
push 8
push offset Lt_023F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_023C:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_023B:
.L_023A:
.L_0239:
.L_0238:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.L_0240:
cmp dword ptr [ebp-48], 0
je .L_0241
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0138
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
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0240
.L_0241:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0246
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_0248
sub esp, 12
push 0
push 6
push offset Lt_0249
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0248:
.L_0247:
.L_0246:
.L_0245:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.L_024A:
cmp dword ptr [ebp-48], 0
je .L_024B
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0138
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
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_024A
.L_024B:
sub esp, 12
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.L_024F:
cmp dword ptr [ebp-48], 0
je .L_0250
cmp dword ptr [ebp-52], 0
je .L_0251
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08D9
.L_0251:
mov dword ptr [ebp-56], -1
.L_08D9:
cmp dword ptr [ebp-56], 0
je .L_0254
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset Lt_0255
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_0254:
.L_0253:
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_024F
.L_0250:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_0259
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_025B
sub esp, 12
push 0
push 6
push offset Lt_025C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_025A
.L_025B:
sub esp, 12
push 0
push 6
push offset Lt_025D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_025A:
.L_0259:
.L_0258:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_025F
.L_0261:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0263
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0264
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0262
.L_0263:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0265
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0262:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .L_0267
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0268
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0267:
.L_0266:
jmp .L_025E
.L_0269:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0265
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_025E
.L_025F:
cmp dword ptr [ebp-48], 10
ja .L_025E
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_026A+eax*4]
.L_026A:
.int .L_0269
.int .L_025E
.int .L_0261
.int .L_025E
.int .L_025E
.int .L_0261
.int .L_0261
.int .L_0261
.int .L_0261
.int .L_025E
.int .L_0261
.L_025E:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_026C
sub esp, 12
push 0
push 26
push offset Lt_026D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_026C:
.L_026B:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_026F
.L_0271:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
je .L_0272
mov eax, dword ptr [ebp-52]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .L_08DA
.L_0272:
mov dword ptr [ebp-56], -1
.L_08DA:
cmp dword ptr [ebp-56], 0
je .L_0275
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 1
je .L_0276
mov eax, dword ptr [ebp-60]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .L_08DB
.L_0276:
mov dword ptr [ebp-64], -1
.L_08DB:
cmp dword ptr [ebp-64], 0
jne .L_0278
mov eax, dword ptr [ebp-60]
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-68], eax
jmp .L_08DC
.L_0278:
mov dword ptr [ebp-68], -1
.L_08DC:
cmp dword ptr [ebp-68], 0
jne .L_027A
mov eax, dword ptr [ebp-60]
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
jmp .L_08DD
.L_027A:
mov dword ptr [ebp-72], -1
.L_08DD:
cmp dword ptr [ebp-72], 0
je .L_027D
sub esp, 12
push 0
push 16
push offset Lt_027E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_027D:
.L_027C:
.L_0275:
.L_0274:
jmp .L_026E
.L_026F:
mov eax, dword ptr [ebp-48]
add eax, 4294967294
cmp eax, 8
ja .L_026E
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_027F+eax*4-8]
.L_027F:
.int .L_0271
.int .L_026E
.int .L_026E
.int .L_0271
.int .L_0271
.int .L_0271
.int .L_0271
.int .L_0271
.int .L_0271
.L_026E:
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1544]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-44], 2
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0281
mov dword ptr [ebp-44], 13
.L_0281:
.L_0280:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset Lt_0282
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0284
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_0284:
.L_0283:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .L_0286
.L_0288:
call fb_FileFree
mov dword ptr [ebp-52], eax
sub esp, 8
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_028A
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_028A:
.L_0289:
push 4
sub esp, 8
push 38
call FBGETOPTION
add esp, 12
mov dword ptr [ebp-56], eax
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call fb_FilePut
add esp, 16
test eax, eax
je .L_028C
push 0
push 0
push offset Lt_0091
push 1262
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_028C:
sub esp, 12
push dword ptr [ebp-52]
call fb_FileClose
add esp, 16
test eax, eax
je .L_028D
push 0
push 0
push offset Lt_0091
push 1264
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_028D:
jmp .L_0285
.L_028E:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_0290
sub esp, 8
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call MAKEIMPLIB
add esp, 16
test eax, eax
jne .L_0292
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_0292:
.L_0291:
.L_0290:
.L_028F:
jmp .L_0285
.L_0293:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
sub esp, 8
push 129
lea eax, [FBC+1826]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0295
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HSTRIPEXT
add esp, 12
push eax
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.L_0295:
.L_0294:
sub esp, 12
push 0
push 9
push offset Lt_0298
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1826]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0299
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
je .L_029B
sub esp, 12
push 0
push 12
push offset Lt_029D
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_02A0
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.L_029B:
.L_029A:
sub esp, 12
push 0
push 8
push offset Lt_02A2
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_02A4
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_02A5
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+484]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [FBC+56], 0
jne .L_02A7
sub esp, 12
push 0
push 6
push offset Lt_02A8
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
.L_02A7:
.L_02A6:
cmp dword ptr [FBC+56], 0
je .L_02AA
sub esp, 4
push 2
push 6
push offset Lt_02AB
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-72]
push eax
push 0
call fb_PrintString
add esp, 16
.L_02AA:
.L_02A9:
sub esp, 8
lea eax, [ebp-60]
push eax
push 9
call FBCFINDBIN
add esp, 16
sub esp, 12
push -1
lea eax, [ebp-72]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 20
push eax
call fb_Shell
add esp, 16
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .L_02AF
cmp dword ptr [FBC+56], 0
je .L_02B1
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 16
push eax
push 24
push offset Lt_02B2
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_02B1:
.L_02B0:
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0144
.L_02AF:
.L_02AE:
sub esp, 12
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0285
.L_0286:
cmp dword ptr [ebp-48], 4
ja .L_0285
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_02B4+eax*4]
.L_02B4:
.int .L_028E
.int .L_028E
.int .L_0285
.int .L_0288
.int .L_0293
.L_0285:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLINKFILES, .-HLINKFILES
.cfi_endproc

.section .data
.balign 4
Lt_08E2:
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
HREADOBJINFO:
.type HREADOBJINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02B5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_02B7:
sub esp, 12
lea eax, [ebp-12]
push eax
call OBJINFOREADNEXT
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_02BB
.L_02BD:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 16
jmp .L_02BA
.L_02BE:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+440]
push eax
call STRSETADD
add esp, 16
jmp .L_02BA
.L_02BF:
cmp dword ptr [FBC+3280], 0
jne .L_02C1
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 20
call ERRREPORTWARNEX
add esp, 32
mov dword ptr [FBC+3280], -1
sub esp, 8
push -1
push 35
call FBSETOPTION
add esp, 16
.L_02C1:
.L_02C0:
jmp .L_02BA
.L_02C2:
sub esp, 8
push -1
push 36
call FBSETOPTION
add esp, 16
jmp .L_02BA
.L_02C3:
sub esp, 12
push dword ptr [ebp-12]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .L_02C5
mov dword ptr [ebp-16], 0
.L_02C5:
.L_02C4:
mov eax, dword ptr [FBC+3276]
cmp dword ptr [ebp-16], eax
je .L_02C7
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 21
call ERRREPORTWARNEX
add esp, 32
mov eax, dword ptr [ebp-16]
mov dword ptr [FBC+3276], eax
sub esp, 8
push dword ptr [ebp-16]
push 10
call FBSETOPTION
add esp, 16
.L_02C7:
.L_02C6:
jmp .L_02BA
.L_02C8:
jmp .L_02B8
jmp .L_02BA
.L_02BB:
cmp dword ptr [ebp-20], 4
ja .L_02C8
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02C9+eax*4]
.L_02C9:
.int .L_02BD
.int .L_02BE
.int .L_02BF
.int .L_02C2
.int .L_02C3
.L_02BA:
.L_02B9:
jmp .L_02B7
.L_02B8:
call OBJINFOREADEND
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_02B6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREADOBJINFO, .-HREADOBJINFO
.cfi_endproc
.balign 16
HCOLLECTOBJINFO:
.type HCOLLECTOBJINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02CA:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_02CC:
cmp dword ptr [ebp-4], 0
je .L_02CD
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADOBJ
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02CC
.L_02CD:
sub esp, 12
lea eax, [FBC+396]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.L_02CE:
cmp dword ptr [ebp-8], 0
je .L_02CF
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .L_02D1
sub esp, 8
lea eax, [FBC+440]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call OBJINFOREADLIB
add esp, 16
call HREADOBJINFO
.L_02D1:
.L_02D0:
sub esp, 12
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_02CE
.L_02CF:
sub esp, 12
lea eax, [FBC+232]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_02D2:
cmp dword ptr [ebp-4], 0
je .L_02D3
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADLIBFILE
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_02D2
.L_02D3:
.L_02CB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOLLECTOBJINFO, .-HCOLLECTOBJINFO
.cfi_endproc
.balign 16
HFATALINVALIDOPTION:
.type HFATALINVALIDOPTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_02D4:
sub esp, 12
push 0
push 1
cmp dword ptr [ebp+12], 0
je .L_02D9
mov dword ptr [ebp-40], 0
jmp .L_08EE
.L_02D9:
mov dword ptr [ebp-40], -1
.L_08EE:
push dword ptr [ebp-40]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_016C
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 2
push offset Lt_016C
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
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-36]
push 81
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_02D5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFATALINVALIDOPTION, .-HFATALINVALIDOPTION
.cfi_endproc
.balign 16
HCHECKWAITINGOBJFILE:
.type HCHECKWAITINGOBJFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_02DB:
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_02DE
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
push 4
push offset Lt_016B
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
push 292
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02DE:
.L_02DD:
.L_02DC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKWAITINGOBJFILE, .-HCHECKWAITINGOBJFILE
.cfi_endproc
.balign 16
HSETIOFILE:
.type HSETIOFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02E1:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .L_02E4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .L_02E6
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_02E7
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
jmp .L_02E5
.L_02E6:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_02E7
push -1
sub esp, 4
push dword ptr [ebp+12]
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02E5:
mov eax, dword ptr [ebp+8]
mov dword ptr [FBC+4], eax
jmp .L_02E3
.L_02E4:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.L_02E3:
sub esp, 12
lea eax, [FBC+8]
push eax
call FBCADDOBJ
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.L_02E2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETIOFILE, .-HSETIOFILE
.cfi_endproc
.balign 16
HADDBAS:
.type HADDBAS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02EA:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [FBC+72]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
.L_02EB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDBAS, .-HADDBAS
.cfi_endproc
.balign 16
HPARSEGNUTRIPLET:
.type HPARSEGNUTRIPLET, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_030B:
mov dword ptr [ebp-4], 0
.L_0310:
sub esp, 4
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [GNUOSMAP+eax*8]
call fb_StrAllocTempDescZ
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
test eax, eax
jle .L_0312
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .L_030F
.L_0312:
.L_0311:
.L_030E:
inc dword ptr [ebp-4]
.L_030D:
cmp dword ptr [ebp-4], 11
jle .L_0310
.L_030F:
cmp dword ptr [ebp+12], 0
jle .L_0314
sub esp, 12
push 0
push -1
sub esp, 4
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-16], 0
.L_0318:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_031A
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .L_0317
.L_031A:
.L_0319:
.L_0316:
inc dword ptr [ebp-16]
.L_0315:
cmp dword ptr [ebp-16], 16
jle .L_0318
.L_0317:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
.L_0314:
.L_0313:
.L_030C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEGNUTRIPLET, .-HPARSEGNUTRIPLET
.cfi_endproc
.balign 16
HPARSETARGETARG:
.type HPARSETARGETARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0327:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-20], 0
.L_032C:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_032E
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0328
.L_032E:
.L_032D:
.L_032A:
inc dword ptr [ebp-20]
.L_0329:
cmp dword ptr [ebp-20], 11
jle .L_032C
.L_032B:
sub esp, 4
sub esp, 4
push 1
push offset Lt_032F
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .L_0331
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call FBIDENTIFYOS
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCPUTYPEFROMCPUFAMILYID
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_0331:
.L_0330:
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
je .L_0335
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.L_0335:
.L_0334:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 16
.L_0328:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSETARGETARG, .-HPARSETARGETARG
.cfi_endproc
.balign 16
HANDLEOPT:
.type HANDLEOPT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 148
push ebx
.L_0338:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_033B
.L_033D:
sub esp, 12
push dword ptr [ebp+12]
call FBCADDOBJ
add esp, 16
jmp .L_033A
.L_033E:
push 7
push offset Lt_033F
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [FBC+28], eax
sub esp, 12
push dword ptr [ebp+12]
call FBIDENTIFYFBCARCH
add esp, 16
mov dword ptr [FBC+24], eax
cmp dword ptr [FBC+24], 0
jge .L_0341
sub esp, 8
push dword ptr [ebp+16]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+12]
push 7
push offset Lt_0342
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HFATALINVALIDOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_0341:
.L_0340:
jmp .L_033A
.L_0345:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0349
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0348
.L_034A:
mov dword ptr [FBC+32], 1
jmp .L_0346
.L_0348:
push 6
push offset Lt_034C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_034B
.L_034D:
mov dword ptr [FBC+32], 0
jmp .L_0346
.L_034B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_034E:
.L_0346:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_034F:
sub esp, 12
push dword ptr [ebp+12]
call HADDBAS
add esp, 16
jmp .L_033A
.L_0350:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+3012]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0351:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+52], -1
jmp .L_033A
.L_0352:
mov dword ptr [FBC+52], -1
jmp .L_033A
.L_0353:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREDEFINE
add esp, 16
jmp .L_033A
.L_0354:
sub esp, 8
push 2
push 0
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0355:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0356:
sub esp, 8
push -1
push 22
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0357:
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0358:
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0359:
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035A:
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035B:
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035C:
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035D:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1006]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_035E:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 17
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_035F:
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 17
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 18
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 22
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0360:
sub esp, 8
push -1
push 33
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0361:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0363
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0363:
.L_0362:
sub esp, 12
push 11
call FBGETOPTION
add esp, 16
and eax, dword ptr [ebp+16]
je .L_0365
push 0
push 1
push 0
push 30
call ERRREPORTWARN
add esp, 16
jmp .L_0364
.L_0365:
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 11
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0367
sub esp, 8
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 16
.L_0367:
.L_0366:
.L_0364:
jmp .L_033A
.L_0368:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 8
push offset Lt_036C
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_036B
.L_036D:
mov dword ptr [ebp-8], 0
jmp .L_0369
.L_036B:
push 5
push offset Lt_036F
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_036E
.L_0370:
mov dword ptr [ebp-8], 1
jmp .L_0369
.L_036E:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0371:
.L_0369:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 6
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_0372:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0376
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0378
.L_0379:
push 4
push offset Lt_0377
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0375
.L_0378:
mov dword ptr [ebp-8], 0
jmp .L_0373
.L_0375:
push 4
push offset Lt_037B
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_037A
.L_037C:
mov dword ptr [ebp-8], 1
jmp .L_0373
.L_037A:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_037D:
.L_0373:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 5
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_037E:
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_037F:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0383
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0382
.L_0384:
mov dword ptr [FBC+20], 0
jmp .L_0380
.L_0382:
push 4
push offset Lt_003F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0385
.L_0386:
mov dword ptr [FBC+20], 1
jmp .L_0380
.L_0385:
push 5
push offset Lt_0388
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0387
.L_0389:
mov dword ptr [FBC+20], 2
jmp .L_0380
.L_0387:
push 6
push offset Lt_038B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_038A
.L_038C:
mov dword ptr [FBC+20], 3
jmp .L_0380
.L_038A:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_038D:
.L_0380:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_038E:
mov dword ptr [FBC+64], -1
jmp .L_033A
.L_038F:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_0391:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREINCLUDE
add esp, 16
jmp .L_033A
.L_0392:
sub esp, 4
push 0
push dword ptr [ebp+12]
lea eax, [FBC+264]
push eax
call STRSETADD
add esp, 16
jmp .L_033A
.L_0393:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0395
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_0395:
.L_0394:
sub esp, 12
push 11
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_0397
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3276], eax
cmp dword ptr [ebp+16], 0
je .L_0399
sub esp, 8
push dword ptr [ebp-8]
push 12
call FBSETOPTION
add esp, 16
.L_0399:
.L_0398:
.L_0397:
.L_0396:
jmp .L_033A
.L_039A:
sub esp, 8
push 1
push 0
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_039B:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [FBC+1136], -1
jmp .L_033A
.L_039C:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+1140]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_039D:
push 4
push offset Lt_039E
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03A0
mov dword ptr [ebp-8], 2147483647
jmp .L_039F
.L_03A0:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .L_03A2
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03A2:
.L_03A1:
.L_039F:
sub esp, 8
push dword ptr [ebp-8]
push 26
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03A3:
sub esp, 8
push -1
push 35
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+3280], -1
jmp .L_033A
.L_03A4:
mov dword ptr [FBC+1956], -1
jmp .L_033A
.L_03A5:
sub esp, 8
push 0
push 25
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03A6:
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
sub esp, 4
lea eax, [ebp-124]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
sub esp, 4
push 0
push 2
push offset Lt_01E4
push -1
lea eax, [ebp-136]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-136]
push eax
push dword ptr [ebp+12]
call HSPLITSTR
add esp, 16
sub esp, 12
lea eax, [ebp-136]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayLBound
add esp, 16
mov dword ptr [ebp-140], eax
sub esp, 8
push 1
lea eax, [ebp-124]
push eax
call fb_ArrayUBound
add esp, 16
mov dword ptr [ebp-144], eax
jmp .L_03A9
.L_03AC:
sub esp, 8
push -1
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jle .L_03AE
sub esp, 4
push 0
mov eax, dword ptr [ebp-140]
imul eax, 12
add eax, dword ptr [ebp-124]
lea ebx, [eax]
push ebx
lea ebx, [FBC+352]
push ebx
call STRSETADD
add esp, 16
.L_03AE:
.L_03AD:
.L_03AA:
inc dword ptr [ebp-140]
.L_03A9:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_03AC
.L_03AB:
sub esp, 12
lea ebx, [ebp-124]
push ebx
call fb_ArrayStrErase
add esp, 16
jmp .L_033A
.L_03AF:
sub esp, 8
push 0
push 39
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03B0:
mov dword ptr [FBC+1964], 0
jmp .L_033A
.L_03B1:
call HCHECKWAITINGOBJFILE
cmp dword ptr [FBC+4], 0
je .L_03B3
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov ebx, dword ptr [FBC+4]
push dword ptr [ebx+12]
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [FBC+4]
mov dword ptr [ebx+16], -1
jmp .L_03B2
.L_03B3:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrAssign
add esp, 32
.L_03B2:
jmp .L_033A
.L_03B4:
push 4
push offset Lt_03B5
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03B7
mov dword ptr [ebp-8], 3
jmp .L_03B6
.L_03B7:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .L_03B9
mov dword ptr [ebp-8], 0
jmp .L_03B8
.L_03B9:
cmp dword ptr [ebp-8], 3
jle .L_03BA
mov dword ptr [ebp-8], 3
.L_03BA:
.L_03B8:
.L_03B6:
sub esp, 8
push dword ptr [ebp-8]
push 8
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03BB:
sub esp, 4
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-16]
push eax
lea eax, [FBC+308]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03BD:
sub esp, 8
push -1
push 37
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03BE:
sub esp, 8
push -1
push 1
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
jmp .L_033A
.L_03BF:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 47
lea eax, [FBC+1968]
push eax
call HREPLACESLASH
add esp, 16
jmp .L_033A
.L_03C0:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_03C4
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C3
.L_03C5:
mov dword ptr [FBC+68], 0
jmp .L_03C1
.L_03C3:
push 7
push offset Lt_03C7
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C6
.L_03C8:
mov dword ptr [FBC+68], 1
jmp .L_03C1
.L_03C6:
push 2
push offset Lt_03CA
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03C9
.L_03CB:
mov dword ptr [FBC+68], 2
jmp .L_03C1
.L_03C9:
push 9
push offset Lt_03CD
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CC
.L_03CE:
mov dword ptr [FBC+68], 3
jmp .L_03C1
.L_03CC:
push 6
push offset Lt_03D0
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03CF
.L_03D1:
mov dword ptr [FBC+68], 4
jmp .L_03C1
.L_03CF:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03D2:
.L_03C1:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03D3:
sub esp, 8
push -1
push 23
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03D4:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
mov dword ptr [FBC+40], -1
jmp .L_033A
.L_03D5:
mov dword ptr [FBC+40], -1
jmp .L_033A
.L_03D6:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+44], -1
mov dword ptr [FBC+48], -1
jmp .L_033A
.L_03D7:
mov dword ptr [FBC+48], -1
jmp .L_033A
.L_03D8:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1401]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0189
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03DB
.L_03DC:
sub esp, 8
push 1
push 41
call FBSETOPTION
add esp, 16
.L_03DB:
.L_03D9:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_03DD:
sub esp, 8
push -1
push 40
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03DE:
mov dword ptr [FBC+1960], -1
jmp .L_033A
.L_03DF:
mov dword ptr [FBC+1964], -1
jmp .L_033A
.L_03E0:
sub esp, 8
sub esp, 4
push dword ptr [ebp+12]
call fb_VALINT
add esp, 8
sal eax, 10
push eax
push 38
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03E1:
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
call HPARSETARGETARG
add esp, 16
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
je .L_03E3
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03E3:
.L_03E2:
sub esp, 8
push dword ptr [ebp-8]
push 3
call FBSETOPTION
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push 4
call FBSETOPTION
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
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
je .L_03E5
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [FBC+1568]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_032F
push 129
lea ebx, [FBC+1568]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 129
lea eax, [FBC+1697]
push eax
call fb_StrAssign
add esp, 32
.L_03E5:
.L_03E4:
jmp .L_033A
.L_03E7:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1826]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_03E8:
mov dword ptr [FBC+56], -1
jmp .L_033A
.L_03E9:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_03ED
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_03EE
.L_03EF:
push 2
push offset Lt_0008
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03EC
.L_03EE:
mov dword ptr [ebp-8], 0
jmp .L_03EA
.L_03EC:
push 2
push offset Lt_0006
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F0
.L_03F1:
mov dword ptr [ebp-8], 1
jmp .L_03EA
.L_03F0:
push 2
push offset Lt_03F3
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03F2
.L_03F4:
mov dword ptr [ebp-8], 2
jmp .L_03EA
.L_03F2:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_03F5:
.L_03EA:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 7
call FBSETOPTION
add esp, 16
jmp .L_033A
.L_03F6:
cmp dword ptr [ebp+16], 0
je .L_03F8
cmp dword ptr [FBC+60], 0
jne .L_03FA
sub esp, 12
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 16
.L_03FA:
.L_03F9:
.L_03F8:
.L_03F7:
mov dword ptr [FBC+60], -1
jmp .L_033A
.L_03FB:
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_03FF
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_03FE
.L_0400:
mov dword ptr [ebp-8], 0
jmp .L_03FC
.L_03FE:
push 5
push offset Lt_0402
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0401
.L_0403:
mov dword ptr [ebp-8], 4
jmp .L_03FC
.L_0401:
push 6
push offset Lt_0405
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0404
.L_0406:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 2
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_0404:
push 7
push offset Lt_0408
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0407
.L_0409:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 1
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_0407:
push 5
push offset Lt_040B
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040A
.L_040C:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 8
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_040A:
push 11
push offset Lt_040E
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_040D
.L_040F:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 32
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_040D:
push 10
push offset Lt_0411
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0410
.L_0412:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 128
push eax
push 27
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .L_03FC
.L_0410:
push 8
push offset Lt_0414
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0413
.L_0415:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 64
push eax
push 27
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .L_03FC
.L_0413:
push 7
push offset Lt_0417
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0416
.L_0418:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 256
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_0416:
push 9
push offset Lt_041A
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0419
.L_041B:
sub esp, 8
push -1769
push 27
call FBSETOPTION
add esp, 16
cmp dword ptr [ebp-8], 1
jle .L_041D
mov dword ptr [ebp-8], 1
.L_041D:
.L_041C:
jmp .L_03FC
.L_0419:
push 6
push offset Lt_041F
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_041E
.L_0420:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 512
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_041E:
push 7
push offset Lt_0422
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0421
.L_0423:
sub esp, 8
sub esp, 4
push 27
call FBGETOPTION
add esp, 8
or eax, 1024
push eax
push 27
call FBSETOPTION
add esp, 16
jmp .L_03FC
.L_0421:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
.L_0424:
.L_03FC:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-8], 0
jl .L_0426
sub esp, 8
push dword ptr [ebp-8]
push 24
call FBSETOPTION
add esp, 16
.L_0426:
.L_0425:
jmp .L_033A
.L_0427:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [FBC+1532]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+1532]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_042B:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [FBC+1556]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+1556]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_042F:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00F4
push offset Lt_01E4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00F4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [FBC+1544]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+1544]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0433:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+484]
push eax
call fb_StrAssign
add esp, 32
jmp .L_033A
.L_0434:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 13
push offset Lt_0438
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0437
.L_0439:
sub esp, 8
push -1
push 28
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_0437:
push 14
push offset Lt_043B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_043A
.L_043C:
sub esp, 8
push -1
push 29
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_043A:
push 12
push offset Lt_043E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_043D
.L_043F:
sub esp, 8
push -1
push 30
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_043D:
push 12
push offset Lt_0441
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0440
.L_0442:
sub esp, 8
push -1
push 31
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_0440:
push 5
push offset Lt_0444
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0443
.L_0445:
sub esp, 8
push -1
push 32
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_0443:
push 10
push offset Lt_0447
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0446
.L_0448:
sub esp, 8
push -1
push 42
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_0446:
push 10
push offset Lt_044A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0449
.L_044B:
sub esp, 8
push -1
push 43
call FBSETOPTION
add esp, 16
jmp .L_0435
.L_0449:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.L_044C:
.L_0435:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_033A
.L_033B:
cmp dword ptr [ebp-4], 69
ja .L_033A
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_044D+eax*4]
.L_044D:
.int .L_033D
.int .L_033E
.int .L_0345
.int .L_034F
.int .L_0350
.int .L_0351
.int .L_0352
.int .L_0353
.int .L_0354
.int .L_0354
.int .L_0355
.int .L_0356
.int .L_0357
.int .L_0358
.int .L_0359
.int .L_035A
.int .L_035B
.int .L_035C
.int .L_035D
.int .L_035E
.int .L_035F
.int .L_0360
.int .L_0361
.int .L_0368
.int .L_0372
.int .L_037E
.int .L_037F
.int .L_038E
.int .L_038F
.int .L_0391
.int .L_0392
.int .L_0393
.int .L_039A
.int .L_039B
.int .L_039C
.int .L_039D
.int .L_03A3
.int .L_03A4
.int .L_03A5
.int .L_03A6
.int .L_03AF
.int .L_03B0
.int .L_03B1
.int .L_03B4
.int .L_03BB
.int .L_03BD
.int .L_03BE
.int .L_03BF
.int .L_03C0
.int .L_03D3
.int .L_03D4
.int .L_03D5
.int .L_03D6
.int .L_03D7
.int .L_03D8
.int .L_03DD
.int .L_03DE
.int .L_03DF
.int .L_03E0
.int .L_03E1
.int .L_03E7
.int .L_03E8
.int .L_03E9
.int .L_03F6
.int .L_03FB
.int .L_0427
.int .L_042B
.int .L_042F
.int .L_0433
.int .L_0434
.L_033A:
.L_0339:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HANDLEOPT, .-HANDLEOPT
.cfi_endproc
.balign 16
PARSEOPTION:
.type PARSEOPTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_044E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .L_0451
.L_0453:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_0456
mov dword ptr [ebp-4], 0
jmp .L_044F
.L_0456:
.L_0455:
push 5
push offset Lt_0457
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0459
mov dword ptr [ebp-4], 1
jmp .L_044F
.L_0459:
.L_0458:
push 4
push offset Lt_045A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_045C
mov dword ptr [ebp-4], 2
jmp .L_044F
.L_045C:
.L_045B:
jmp .L_0450
.L_045D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0460
mov dword ptr [ebp-4], 3
jmp .L_044F
.L_0460:
.L_045F:
push 12
push offset Lt_0461
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0463
mov dword ptr [ebp-4], 4
jmp .L_044F
.L_0463:
.L_0462:
jmp .L_0450
.L_0464:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0467
mov dword ptr [ebp-4], 5
jmp .L_044F
.L_0467:
.L_0466:
jmp .L_0450
.L_0468:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_046B
mov dword ptr [ebp-4], 6
jmp .L_044F
.L_046B:
.L_046A:
jmp .L_0450
.L_046C:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_046F
mov dword ptr [ebp-4], 7
jmp .L_044F
.L_046F:
.L_046E:
push 4
push offset Lt_0470
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0472
mov dword ptr [ebp-4], 8
jmp .L_044F
.L_0472:
.L_0471:
push 6
push offset Lt_0473
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0475
mov dword ptr [ebp-4], 9
jmp .L_044F
.L_0475:
.L_0474:
jmp .L_0450
.L_0476:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0479
mov dword ptr [ebp-4], 10
jmp .L_044F
.L_0479:
.L_0478:
push 3
push offset Lt_047A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_047C
mov dword ptr [ebp-4], 19
jmp .L_044F
.L_047C:
.L_047B:
push 7
push offset Lt_047D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_047F
mov dword ptr [ebp-4], 11
jmp .L_044F
.L_047F:
.L_047E:
push 8
push offset Lt_0480
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0482
mov dword ptr [ebp-4], 12
jmp .L_044F
.L_0482:
.L_0481:
push 7
push offset Lt_0483
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0485
mov dword ptr [ebp-4], 13
jmp .L_044F
.L_0485:
.L_0484:
push 11
push offset Lt_0486
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0488
mov dword ptr [ebp-4], 14
jmp .L_044F
.L_0488:
.L_0487:
push 10
push offset Lt_0489
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048B
mov dword ptr [ebp-4], 15
jmp .L_044F
.L_048B:
.L_048A:
push 9
push offset Lt_048C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_048E
mov dword ptr [ebp-4], 16
jmp .L_044F
.L_048E:
.L_048D:
push 8
push offset Lt_048F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0491
mov dword ptr [ebp-4], 17
jmp .L_044F
.L_0491:
.L_0490:
push 6
push offset Lt_0492
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0494
mov dword ptr [ebp-4], 18
jmp .L_044F
.L_0494:
.L_0493:
push 4
push offset Lt_0495
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0497
mov dword ptr [ebp-4], 20
jmp .L_044F
.L_0497:
.L_0496:
push 7
push offset Lt_0498
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_049A
mov dword ptr [ebp-4], 21
jmp .L_044F
.L_049A:
.L_0499:
jmp .L_0450
.L_049B:
push 10
push offset Lt_049D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_049F
mov dword ptr [ebp-4], 22
jmp .L_044F
.L_049F:
.L_049E:
push 7
push offset Lt_04A0
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A2
mov dword ptr [ebp-4], 23
jmp .L_044F
.L_04A2:
.L_04A1:
push 4
push offset Lt_04A3
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04A5
mov dword ptr [ebp-4], 24
jmp .L_044F
.L_04A5:
.L_04A4:
jmp .L_0450
.L_04A6:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04A9
mov dword ptr [ebp-4], 25
jmp .L_044F
.L_04A9:
.L_04A8:
push 4
push offset Lt_04AA
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04AC
mov dword ptr [ebp-4], 26
jmp .L_044F
.L_04AC:
.L_04AB:
jmp .L_0450
.L_04AD:
push 5
push offset Lt_04AF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B1
mov dword ptr [ebp-4], 27
jmp .L_044F
.L_04B1:
.L_04B0:
jmp .L_0450
.L_04B2:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04B5
mov dword ptr [ebp-4], 28
jmp .L_044F
.L_04B5:
.L_04B4:
push 8
push offset Lt_04B6
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04B8
mov dword ptr [ebp-4], 29
jmp .L_044F
.L_04B8:
.L_04B7:
jmp .L_0450
.L_04B9:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04BC
mov dword ptr [ebp-4], 30
jmp .L_044F
.L_04BC:
.L_04BB:
push 5
push offset Lt_04BD
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04BF
mov dword ptr [ebp-4], 31
jmp .L_044F
.L_04BF:
.L_04BE:
push 4
push offset Lt_0051
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C1
mov dword ptr [ebp-4], 32
jmp .L_044F
.L_04C1:
.L_04C0:
jmp .L_0450
.L_04C2:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04C5
mov dword ptr [ebp-4], 33
jmp .L_044F
.L_04C5:
.L_04C4:
push 4
push offset Lt_04C6
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04C8
mov dword ptr [ebp-4], 34
jmp .L_044F
.L_04C8:
.L_04C7:
push 7
push offset Lt_04C9
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CB
mov dword ptr [ebp-4], 35
jmp .L_044F
.L_04CB:
.L_04CA:
push 3
push offset Lt_04CC
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04CE
mov dword ptr [ebp-4], 36
jmp .L_044F
.L_04CE:
.L_04CD:
jmp .L_0450
.L_04CF:
push 10
push offset Lt_04D1
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D3
mov dword ptr [ebp-4], 38
jmp .L_044F
.L_04D3:
.L_04D2:
push 10
push offset Lt_04D4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D6
mov dword ptr [ebp-4], 37
jmp .L_044F
.L_04D6:
.L_04D5:
push 6
push offset Lt_04D7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04D9
mov dword ptr [ebp-4], 39
jmp .L_044F
.L_04D9:
.L_04D8:
push 10
push offset Lt_04DA
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DC
mov dword ptr [ebp-4], 40
jmp .L_044F
.L_04DC:
.L_04DB:
push 8
push offset Lt_04DD
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04DF
mov dword ptr [ebp-4], 41
jmp .L_044F
.L_04DF:
.L_04DE:
jmp .L_0450
.L_04E0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04E3
mov dword ptr [ebp-4], 42
jmp .L_044F
.L_04E3:
.L_04E2:
jmp .L_0450
.L_04E4:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_04E7
mov dword ptr [ebp-4], 43
jmp .L_044F
.L_04E7:
.L_04E6:
jmp .L_0450
.L_04E8:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04EB
mov dword ptr [ebp-4], 44
jmp .L_044F
.L_04EB:
.L_04EA:
push 4
push offset Lt_04EC
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04EE
mov dword ptr [ebp-4], 45
jmp .L_044F
.L_04EE:
.L_04ED:
push 3
push offset Lt_04EF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F1
mov dword ptr [ebp-4], 46
jmp .L_044F
.L_04F1:
.L_04F0:
push 7
push offset Lt_04F2
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F4
mov dword ptr [ebp-4], 47
jmp .L_044F
.L_04F4:
.L_04F3:
push 6
push offset Lt_04F5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04F7
mov dword ptr [ebp-4], 48
jmp .L_044F
.L_04F7:
.L_04F6:
push 8
push offset Lt_04F8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_04FA
mov dword ptr [ebp-4], 49
jmp .L_044F
.L_04FA:
.L_04F9:
jmp .L_0450
.L_04FB:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_04FE
mov dword ptr [ebp-4], 50
jmp .L_044F
.L_04FE:
.L_04FD:
push 3
push offset Lt_04FF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0501
mov dword ptr [ebp-4], 52
jmp .L_044F
.L_0501:
.L_0500:
jmp .L_0450
.L_0502:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0505
mov dword ptr [ebp-4], 51
jmp .L_044F
.L_0505:
.L_0504:
push 3
push offset Lt_0506
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0508
mov dword ptr [ebp-4], 53
jmp .L_044F
.L_0508:
.L_0507:
jmp .L_0450
.L_0509:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_050C
mov dword ptr [ebp-4], 54
jmp .L_044F
.L_050C:
.L_050B:
push 13
push offset Lt_050D
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_050F
mov dword ptr [ebp-4], 55
jmp .L_044F
.L_050F:
.L_050E:
push 7
push offset Lt_0510
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0512
mov dword ptr [ebp-4], 56
jmp .L_044F
.L_0512:
.L_0511:
push 6
push offset Lt_0513
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0515
mov dword ptr [ebp-4], 57
jmp .L_044F
.L_0515:
.L_0514:
jmp .L_0450
.L_0516:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0519
mov dword ptr [ebp-4], 58
jmp .L_044F
.L_0519:
.L_0518:
push 7
push offset Lt_03C7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_051B
mov dword ptr [ebp-4], 59
jmp .L_044F
.L_051B:
.L_051A:
push 6
push offset Lt_051C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_051E
mov dword ptr [ebp-4], 60
jmp .L_044F
.L_051E:
.L_051D:
jmp .L_0450
.L_051F:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_0522
mov dword ptr [ebp-4], 61
jmp .L_044F
.L_0522:
.L_0521:
push 4
push offset Lt_0523
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0525
mov dword ptr [ebp-4], 62
jmp .L_044F
.L_0525:
.L_0524:
push 8
push offset Lt_0526
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0528
mov dword ptr [ebp-4], 63
jmp .L_044F
.L_0528:
.L_0527:
jmp .L_0450
.L_0529:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_052C
mov dword ptr [ebp-4], 64
jmp .L_044F
.L_052C:
.L_052B:
jmp .L_0450
.L_052D:
push 3
push offset Lt_052F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0531
mov dword ptr [ebp-4], 65
jmp .L_044F
.L_0531:
.L_0530:
push 3
push offset Lt_0532
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0534
mov dword ptr [ebp-4], 67
jmp .L_044F
.L_0534:
.L_0533:
push 3
push offset Lt_0535
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0537
mov dword ptr [ebp-4], 66
jmp .L_044F
.L_0537:
.L_0536:
jmp .L_0450
.L_0538:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .L_053A
mov dword ptr [ebp-4], 68
jmp .L_044F
.L_053A:
.L_0539:
jmp .L_0450
.L_053B:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .L_053E
mov dword ptr [ebp-4], 69
jmp .L_044F
.L_053E:
.L_053D:
jmp .L_0450
.L_053F:
push 9
push offset Lt_0540
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0542
mov dword ptr [ebp-4], 63
jmp .L_044F
.L_0542:
.L_0541:
push 6
push offset Lt_0543
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0545
mov dword ptr [ebp-4], 27
jmp .L_044F
.L_0545:
.L_0544:
jmp .L_0450
.L_0451:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .L_0450
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0546+eax*4-180]
.L_0546:
.int .L_053F
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0468
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_04E4
.int .L_0450
.int .L_0450
.int .L_0502
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_052D
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0450
.int .L_0453
.int .L_045D
.int .L_0464
.int .L_046C
.int .L_0476
.int .L_049B
.int .L_04A6
.int .L_04AD
.int .L_04B2
.int .L_0450
.int .L_0450
.int .L_04B9
.int .L_04C2
.int .L_04CF
.int .L_04E0
.int .L_04E8
.int .L_0450
.int .L_04FB
.int .L_0509
.int .L_0516
.int .L_0450
.int .L_051F
.int .L_0529
.int .L_0538
.int .L_0450
.int .L_053B
.L_0450:
mov dword ptr [ebp-4], -1
.L_044F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSEOPTION, .-PARSEOPTION
.cfi_endproc
.balign 16
HANDLEARG:
.type HANDLEARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0547:
cmp dword ptr [FBC], 0
jl .L_054A
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_054C
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_054C:
.L_054B:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [FBC]
call HANDLEOPT
add esp, 16
mov dword ptr [FBC], -1
jmp .L_0548
.L_054A:
.L_0549:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_054E
jmp .L_0548
.L_054E:
.L_054D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .L_0551
.L_0552:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .L_0554
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0554:
.L_0553:
sub esp, 12
push dword ptr [ebp-8]
call PARSEOPTION
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .L_0556
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0556:
.L_0555:
cmp dword ptr [ebp+12], 0
je .L_0558
mov eax, dword ptr [ebp-12]
mov bl, byte ptr [CMDLINEOPTIONTB+eax*8+1]
xor bl, 1
test bl, bl
je .L_055A
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_055A:
.L_0559:
.L_0558:
.L_0557:
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8], 0
je .L_055C
mov ebx, dword ptr [ebp-12]
mov dword ptr [FBC], ebx
jmp .L_055B
.L_055C:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HANDLEOPT
add esp, 16
.L_055B:
cmp dword ptr [ebp+12], 0
je .L_055E
mov ebx, dword ptr [ebp-12]
cmp byte ptr [CMDLINEOPTIONTB+ebx*8+2], 0
je .L_0560
sub esp, 12
push 2
call FBRESTARTBEGINREQUEST
add esp, 16
.L_0560:
.L_055F:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [CMDLINEOPTIONTB+ebx*8+4], 0
je .L_0562
sub esp, 12
push 8
call FBRESTARTBEGINREQUEST
add esp, 16
.L_0562:
.L_0561:
.L_055E:
.L_055D:
jmp .L_054F
.L_0551:
movzx ebx, byte ptr [ebp-4]
cmp ebx, 64
jne .L_0563
.L_0565:
cmp dword ptr [Lt_08F6], 128
jle .L_0567
sub esp, 12
push 0
push 1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push 27
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0567:
.L_0566:
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0569
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_0569:
.L_0568:
inc dword ptr [Lt_08F6]
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call PARSEARGSFROMFILE
add esp, 16
dec dword ptr [Lt_08F6]
jmp .L_054F
.L_0563:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HGETFILEEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_056D
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_056C
.L_056E:
sub esp, 12
push dword ptr [ebp+8]
call HADDBAS
add esp, 16
jmp .L_056B
.L_056C:
push 2
push offset Lt_04E1
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_056F
.L_0570:
sub esp, 12
push dword ptr [ebp+8]
call FBCADDOBJ
add esp, 16
jmp .L_056B
.L_056F:
push 2
push offset Lt_0454
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0571
.L_0572:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+232]
push eax
call STRLISTAPPEND
add esp, 16
jmp .L_056B
.L_0571:
push 3
push offset Lt_0574
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0576
.L_0577:
push 4
push offset Lt_0575
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0573
.L_0576:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+104]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
jmp .L_056B
.L_0573:
push 4
push offset Lt_0579
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0578
.L_057A:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_057C
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_057C:
.L_057B:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+136]
push eax
call HSETIOFILE
add esp, 16
jmp .L_056B
.L_0578:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.L_057D:
.L_056B:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_056A:
.L_054F:
.L_0548:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HANDLEARG, .-HANDLEARG
.cfi_endproc

.section .data
.balign 4
Lt_08F6:
.int 0

.section .text
.balign 16
PARSEARGSFROMFILE:
.type PARSEARGSFROMFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_0595:
call fb_FileFree
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0598
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0598:
.L_0597:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_0599:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_059A
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-16]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call FBCPARSEARGSFROMSTRING
add esp, 16
jmp .L_0599
.L_059A:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileClose
add esp, 16
test eax, eax
je .L_059B
push 0
push 0
push offset Lt_0091
push 2700
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_059B:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0596:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSEARGSFROMFILE, .-PARSEARGSFROMFILE
.cfi_endproc
.balign 16
HTARGETNEEDSPIC:
.type HTARGETNEEDSPIC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_059C:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .L_059F
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_05A1
.L_05A3:
mov dword ptr [ebp-4], -1
jmp .L_05A0
.L_05A1:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .L_05A0
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_05A4+eax*4-8]
.L_05A4:
.int .L_05A3
.int .L_05A0
.int .L_05A0
.int .L_05A3
.int .L_05A3
.int .L_05A3
.int .L_05A3
.int .L_05A0
.int .L_05A3
.L_05A0:
.L_059F:
.L_059E:
.L_059D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTARGETNEEDSPIC, .-HTARGETNEEDSPIC
.cfi_endproc
.balign 16
HPARSEARGS:
.type HPARSEARGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_05A5:
mov dword ptr [FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .L_05A8
.L_05AB:
sub esp, 12
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
call fb_StrAssign
add esp, 32
sub esp, 4
push 0
push 0
lea ebx, [ebp-12]
push ebx
call HANDLEARG
add esp, 16
.L_05A9:
inc dword ptr [ebp-16]
.L_05A8:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .L_05AB
.L_05AA:
cmp dword ptr [FBC], 0
jl .L_05AD
sub esp, 8
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HFATALINVALIDOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_05AD:
.L_05AC:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05A6:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEARGS, .-HPARSEARGS
.cfi_endproc
.balign 16
HCHECKARGS:
.type HCHECKARGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_05AF:
call HCHECKWAITINGOBJFILE
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_05B2
sub esp, 12
push 7
call FBGETOPTION
add esp, 16
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
sub esp, 12
push 6
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_05B4
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 284
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05B4:
.L_05B3:
.L_05B2:
.L_05B1:
cmp dword ptr [FBC+24], 0
jl .L_05B6
sub esp, 8
push dword ptr [FBC+24]
push 4
call FBSETOPTION
add esp, 16
.L_05B6:
.L_05B5:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05B8
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 82
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05B8:
.L_05B7:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05BA
sub esp, 8
push 0
push 2
call FBSETOPTION
add esp, 16
jmp .L_05B9
.L_05BA:
sub esp, 8
push 1
push 2
call FBSETOPTION
add esp, 16
.L_05B9:
cmp dword ptr [FBC+20], 0
jl .L_05BC
sub esp, 8
push dword ptr [FBC+20]
push 2
call FBSETOPTION
add esp, 16
.L_05BC:
.L_05BB:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call FBGETCPUFAMILY
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .L_05BE
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 83
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05BE:
.L_05BD:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_05C0
.L_05C2:
jmp .L_05BF
.L_05C3:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_05C5
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05C5:
.L_05C4:
jmp .L_05BF
.L_05C0:
cmp dword ptr [ebp-4], 4
ja .L_05C3
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05C6+eax*4]
.L_05C6:
.int .L_05C2
.int .L_05C2
.int .L_05C3
.int .L_05C3
.int .L_05C2
.L_05BF:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_05C8
.L_05CA:
jmp .L_05C7
.L_05CB:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_05CD
sub esp, 12
push 0
push 1
push -1
push dword ptr [FBC+136]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_05CD:
.L_05CC:
jmp .L_05C7
.L_05C8:
mov eax, dword ptr [ebp-4]
add eax, 4294967294
cmp eax, 8
ja .L_05CB
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_05CE+eax*4-8]
.L_05CE:
.int .L_05CA
.int .L_05CB
.int .L_05CB
.int .L_05CA
.int .L_05CA
.int .L_05CA
.int .L_05CA
.int .L_05CA
.int .L_05CA
.L_05C7:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05D0
sub esp, 8
push 1
push 9
call FBSETOPTION
add esp, 16
.L_05D0:
.L_05CF:
cmp dword ptr [FBC+32], 0
jl .L_05D2
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_05D6
.L_05D7:
cmp dword ptr [ebp-4], 1
jne .L_05D5
.L_05D6:
jmp .L_05D3
.L_05D5:
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-16]
push 319
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_05D8:
.L_05D3:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_05DB
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 84
call ERRREPORTEX
add esp, 32
.L_05DB:
.L_05DA:
sub esp, 8
push dword ptr [FBC+32]
push 9
call FBSETOPTION
add esp, 16
.L_05D2:
.L_05D1:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .L_05DD
call HTARGETNEEDSPIC
test eax, eax
je .L_05DF
sub esp, 8
push -1
push 37
call FBSETOPTION
add esp, 16
.L_05DF:
.L_05DE:
.L_05DD:
.L_05DC:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_05E1
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_05E3
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 85
call ERRREPORTEX
add esp, 32
jmp .L_05E2
.L_05E3:
call HTARGETNEEDSPIC
test eax, eax
jne .L_05E4
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 86
call ERRREPORTEX
add esp, 32
.L_05E4:
.L_05E2:
.L_05E1:
.L_05E0:
sub esp, 8
push -1
push 38
call FBSETOPTION
add esp, 16
.L_05B0:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKARGS, .-HCHECKARGS
.cfi_endproc
.balign 16
FBCDETERMINEPREFIX:
.type FBCDETERMINEPREFIX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_05E5:
sub esp, 8
push 261
lea eax, [FBC+1968]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_05E8
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001B
push -1
sub esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
sub esp, 12
call fb_ExePath
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_05EC
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
jmp .L_05E7
.L_05E8:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001B
push -1
sub esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [FBC+1968]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+1968]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05E7:
.L_05E6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCDETERMINEPREFIX, .-FBCDETERMINEPREFIX
.cfi_endproc
.balign 16
FBCSETUPCOMPILERPATHS:
.type FBCSETUPCOMPILERPATHS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 168
.L_05F0:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push 10
push offset Lt_05F2
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0051
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_05F4
sub esp, 12
push 0
push -1
sub esp, 8
push 261
lea eax, [FBC+3012]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push 4
push offset Lt_05F5
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 32
jmp .L_05F3
.L_05F4:
sub esp, 12
push 0
push -1
sub esp, 8
push 129
lea eax, [FBC+1697]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push 4
push offset Lt_05F5
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2229]
push eax
call fb_StrAssign
add esp, 32
.L_05F3:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push 8
push offset Lt_04B6
push 261
lea eax, [FBC+1968]
push eax
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
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2490]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [FBC+1968]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2751]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_05F1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCSETUPCOMPILERPATHS, .-FBCSETUPCOMPILERPATHS
.cfi_endproc
.balign 16
FBCPRINTTARGETINFO:
.type FBCPRINTTARGETINFO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_0604:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
call FBGETFBCARCH
push eax
push 3
push offset Lt_0606
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0606
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 4
call FBGETBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0609
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1568]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_060B
sub esp, 12
push 0
push 3
push offset Lt_060C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1568]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_060D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_060B:
.L_060A:
sub esp, 4
push 2
push 7
push offset Lt_060E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 2
push 8
push offset Lt_060F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push 2
call FBGETOPTION
add esp, 4
push eax
call FBGETBACKENDNAME
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0605:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCPRINTTARGETINFO, .-FBCPRINTTARGETINFO
.cfi_endproc
.balign 16
FBCDETERMINEMAINNAME:
.type FBCDETERMINEMAINNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0610:
sub esp, 8
push 261
lea eax, [FBC+745]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0613
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0615
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [FBC+745]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0614
.L_0615:
sub esp, 12
lea ebx, [FBC+200]
push ebx
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .L_0617
sub esp, 12
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0616
.L_0617:
sub esp, 12
push 0
push 8
push offset Lt_0618
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
.L_0616:
.L_0614:
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+745]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HSTRIPEXT
add esp, 12
push eax
push 261
lea eax, [FBC+745]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0613:
.L_0612:
.L_0611:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCDETERMINEMAINNAME, .-FBCDETERMINEMAINNAME
.cfi_endproc
.balign 16
HGETASMNAME:
.type HGETASMNAME, @function
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
.L_061A:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_061D
mov eax, offset Lt_061E
mov dword ptr [ebp-16], eax
jmp .L_061C
.L_061D:
mov eax, offset Lt_02E7
mov dword ptr [ebp-16], eax
.L_061C:
cmp dword ptr [ebp+12], 1
jne .L_0620
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .L_0623
.L_0624:
mov eax, offset Lt_0625
mov dword ptr [ebp-16], eax
jmp .L_0621
.L_0623:
cmp dword ptr [ebp-44], 2
jne .L_0626
.L_0627:
mov eax, offset Lt_0628
mov dword ptr [ebp-16], eax
.L_0626:
.L_0621:
.L_0620:
.L_061F:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.L_061B:
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
.size HGETASMNAME, .-HGETASMNAME
.cfi_endproc
.balign 16
HCOMPILEBAS:
.type HCOMPILEBAS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 48
push ebx
push esi
.L_062A:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .L_062D
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .L_062F
sub esp, 12
push 0
push -1
sub esp, 8
push 8
push offset Lt_0630
push -1
sub esp, 4
lea eax, [ebp-32]
push eax
call HSTRIPEXT
add esp, 8
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
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 32
.L_062F:
.L_062E:
.L_062D:
.L_062C:
cmp dword ptr [FBC+56], 0
je .L_0633
sub esp, 4
push 2
push 11
push offset Lt_0634
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
push 4
push offset Lt_0635
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
lea eax, [ebp-20]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0637
sub esp, 4
push 0
sub esp, 4
push -1
lea eax, [ebp-32]
push eax
push 6
push offset Lt_0638
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.L_0637:
.L_0636:
cmp dword ptr [ebp+12], 0
je .L_063B
sub esp, 4
push 0
push 14
push offset Lt_063C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_063A
.L_063B:
cmp dword ptr [ebp+16], 0
je .L_063D
sub esp, 4
push 0
push 23
push offset Lt_063E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_063D:
.L_063A:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.L_0633:
.L_0632:
sub esp, 12
push 12
call FBGETOPTION
add esp, 16
cmp eax, -1
je .L_0640
sub esp, 8
sub esp, 4
push 12
call FBGETOPTION
add esp, 8
push eax
push 10
call FBSETOPTION
add esp, 16
.L_0640:
.L_063F:
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .L_0642
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
.L_0642:
.L_0641:
.L_0643:
mov eax, dword ptr [FBC+40]
not eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov esi, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and esi, eax
mov eax, dword ptr [FBC+48]
not eax
or esi, eax
and ebx, esi
je .L_0647
sub esp, 12
lea esi, [ebp-20]
push esi
call FBCADDTEMP
add esp, 16
jmp .L_0646
.L_0647:
cmp dword ptr [ebp+20], 1
jne .L_0648
call FBRESTARTGETCOUNT
test eax, eax
jle .L_064A
sub esp, 12
lea eax, [ebp-20]
push eax
call FBCREMOVETEMP
add esp, 16
.L_064A:
.L_0649:
.L_0648:
.L_0646:
sub esp, 4
push dword ptr [ebp+20]
lea eax, [FBC+1006]
push eax
push dword ptr [ebp+12]
call FBINIT
add esp, 16
cmp dword ptr [ebp+16], 0
je .L_064C
sub esp, 8
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBSETLIBS
add esp, 16
jmp .L_064B
.L_064C:
sub esp, 8
lea eax, [FBC+308]
push eax
lea eax, [FBC+264]
push eax
call FBSETLIBS
add esp, 16
.L_064B:
push dword ptr [ebp+12]
lea eax, [ebp-32]
push eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call FBCOMPILE
add esp, 16
call ERRGETCOUNT
test eax, eax
jle .L_064E
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_064E:
.L_064D:
call FBSHOULDRESTART
test eax, eax
jne .L_0650
jmp .L_0644
.L_0650:
.L_064F:
sub esp, 12
push 7
call FBRESTARTENDREQUEST
add esp, 16
call FBEND
call FBSHOULDRESTART
test eax, eax
je .L_0652
sub esp, 12
push 12
call FBGETOPTION
add esp, 16
cmp eax, -1
jne .L_0654
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 16
.L_0654:
.L_0653:
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_062B
.L_0652:
.L_0651:
.L_0645:
jmp .L_0643
.L_0644:
cmp dword ptr [ebp+16], 0
jne .L_0656
sub esp, 8
lea eax, [FBC+440]
push eax
lea eax, [FBC+396]
push eax
call FBGETLIBS
add esp, 16
.L_0656:
.L_0655:
call FBEND
cmp dword ptr [ebp+16], 0
je .L_0658
sub esp, 8
push dword ptr [ebp-8]
push 0
call FBSETOPTION
add esp, 16
.L_0658:
.L_0657:
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_062B:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEBAS, .-HCOMPILEBAS
.cfi_endproc
.balign 16
HCOMPILEMODULES:
.type HCOMPILEMODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0659:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_065E
.L_065F:
cmp dword ptr [ebp-32], 2
jne .L_065D
.L_065E:
mov dword ptr [ebp-8], -1
jmp .L_065B
.L_065D:
mov eax, dword ptr [FBC+1136]
mov dword ptr [ebp-8], eax
.L_0660:
.L_065B:
cmp dword ptr [ebp-8], 0
je .L_0662
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+745]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
.L_0662:
.L_0661:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0664
sub esp, 8
lea eax, [FBC+264]
push eax
lea eax, [FBC+396]
push eax
call STRSETCOPY
add esp, 16
sub esp, 8
lea eax, [FBC+308]
push eax
lea eax, [FBC+440]
push eax
call STRSETCOPY
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_065A
.L_0664:
.L_0663:
mov dword ptr [ebp-28], 0
.L_0665:
cmp dword ptr [ebp-8], 0
je .L_0669
push -1
sub esp, 8
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-40]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.L_0669:
.L_0668:
inc dword ptr [ebp-28]
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call HCOMPILEBAS
add esp, 16
call FBSHOULDRESTART
test eax, eax
je .L_066C
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_065A
.L_066C:
.L_066B:
sub esp, 12
push dword ptr [ebp-24]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-24], eax
.L_0667:
cmp dword ptr [ebp-24], 0
jne .L_0665
.L_0666:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_065A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEMODULES, .-HCOMPILEMODULES
.cfi_endproc
.balign 16
HPARSEXPM:
.type HPARSEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_066D:
sub esp, 12
push 0
push 28
push offset Lt_066F
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 21
push offset Lt_0670
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 20
push offset Lt_0671
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0673
jmp .L_066E
.L_0673:
.L_0672:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 10
push offset Lt_0674
push -1
sub esp, 12
push 0
lea eax, [ebp-20]
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0676
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0677
push 0
push 0
push offset Lt_0091
push 3280
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0677:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_066E
.L_0676:
.L_0675:
mov dword ptr [ebp-24], 0
.L_0678:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileEof
add esp, 16
test eax, eax
jne .L_0679
push 0
push -1
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 8
sub esp, 12
sub esp, 4
push 1
push offset Lt_0123
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-20]
push eax
push 1
call fb_StrInstr
add esp, 24
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-20]
push ebx
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 12
sub esp, 4
push 1
push offset Lt_0123
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-20]
push eax
push 2
call fb_StrInstr
add esp, 24
push eax
lea eax, [ebp-20]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-20]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_067B
cmp dword ptr [ebp-24], 0
je .L_067D
sub esp, 12
push 0
push 5
push offset Lt_067E
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
.L_067D:
.L_067C:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-20]
push eax
push 3
push offset Lt_067F
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
mov dword ptr [ebp-24], -1
.L_067B:
.L_067A:
jmp .L_0678
.L_0679:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0681
push 0
push 0
push offset Lt_0091
push 3310
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0681:
cmp dword ptr [ebp-24], 0
jne .L_0683
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_066E
.L_0683:
.L_0682:
sub esp, 12
push 0
push 5
push offset Lt_0684
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0685
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 67
push offset Lt_0686
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
sub esp, 12
push 0
push 74
push offset Lt_0689
push -1
push dword ptr [ebp+12]
call fb_StrConcatByref
add esp, 32
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_066E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPARSEXPM, .-HPARSEXPM
.cfi_endproc
.balign 16
HCOMPILEXPM:
.type HCOMPILEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_068A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_068D
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_068B
.L_068D:
.L_068C:
sub esp, 12
push 0
push -1
lea eax, [FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [FBC+148]
call fb_StrLen
add esp, 16
test eax, eax
jle .L_068F
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [FBC+148]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [FBC+136]
push eax
call fb_StrAssign
add esp, 32
.L_068F:
.L_068E:
sub esp, 12
push 0
push 5
push offset Lt_0690
push -1
lea eax, [FBC+136]
push eax
call fb_StrConcatByref
add esp, 32
cmp dword ptr [FBC+56], 0
je .L_0692
sub esp, 4
push 2
push 13
push offset Lt_0693
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
lea eax, [FBC+136]
push eax
push -1
sub esp, 4
push 5
push offset Lt_0635
push -1
lea eax, [ebp-16]
push eax
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
.L_0692:
.L_0691:
sub esp, 8
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call HPARSEXPM
add esp, 16
test eax, eax
jne .L_0697
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_068B
.L_0697:
.L_0696:
call fb_FileFree
mov dword ptr [ebp-32], eax
sub esp, 8
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [FBC+136]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0699
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_068B
.L_0699:
.L_0698:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
sub esp, 4
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-32]
call fb_FileClose
add esp, 16
test eax, eax
je .L_069B
push 0
push 0
push offset Lt_0091
push 3366
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_069B:
cmp dword ptr [FBC+40], 0
jne .L_069D
sub esp, 12
lea eax, [FBC+136]
push eax
call FBCADDTEMP
add esp, 16
.L_069D:
.L_069C:
push -1
push 0
push 0
lea eax, [FBC+136]
push eax
call HCOMPILEBAS
add esp, 16
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_068B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEXPM, .-HCOMPILEXPM
.cfi_endproc
.balign 16
HCOMPILESTAGE2MODULE:
.type HCOMPILESTAGE2MODULE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_069E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [FBC+48]
not eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .L_06A1
sub esp, 12
lea eax, [ebp-28]
push eax
call FBCADDTEMP
add esp, 16
.L_06A1:
.L_06A0:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_06A4
.L_06A5:
mov byte ptr [ebp-36], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .L_06A8
.L_06A9:
sub esp, 12
push 0
push 6
push offset Lt_06AA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06A6
.L_06A8:
cmp dword ptr [ebp-40], 1
jne .L_06AB
.L_06AC:
sub esp, 12
push 0
push 6
push offset Lt_06AD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov byte ptr [ebp-36], 1
jmp .L_06A6
.L_06AB:
cmp dword ptr [ebp-40], 4
jne .L_06AE
.L_06AF:
sub esp, 12
push 0
push 6
push offset Lt_06AA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06A6
.L_06AE:
cmp dword ptr [ebp-40], 5
je .L_06B1
.L_06B2:
cmp dword ptr [ebp-40], 6
jne .L_06B0
.L_06B1:
sub esp, 12
push 0
push 6
push offset Lt_06AD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov byte ptr [ebp-36], 1
.L_06B0:
.L_06A6:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06B4
call FBGETCPUFAMILY
cmp eax, 4
je .L_06B5
call FBGETCPUFAMILY
cmp eax, 5
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0909
.L_06B5:
mov dword ptr [ebp-40], -1
.L_0909:
cmp dword ptr [ebp-40], 0
jne .L_06B7
call FBGETCPUFAMILY
cmp eax, 6
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .L_090A
.L_06B7:
mov dword ptr [ebp-44], -1
.L_090A:
cmp dword ptr [ebp-44], 0
je .L_06BA
cmp dword ptr [FBC+28], 0
je .L_06BC
sub esp, 12
push 0
push 14
push offset Lt_06BD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06BB
.L_06BC:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push 0
call FBGETGCCARCH
push eax
push 7
push offset Lt_06BE
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_06BB:
jmp .L_06B9
.L_06BA:
cmp dword ptr [FBC+28], 0
je .L_06C3
sub esp, 12
push 0
push 15
push offset Lt_06C4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06C2
.L_06C3:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F4
push -1
sub esp, 4
push 0
call FBGETGCCARCH
push eax
push 8
push offset Lt_06C5
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.L_06C2:
.L_06B9:
.L_06B4:
.L_06B3:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_06CA
sub esp, 12
push 0
push 7
push offset Lt_06CB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06CA:
.L_06C9:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06CD
sub esp, 12
push 0
push 30
push offset Lt_06CE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_06CF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06CC
.L_06CD:
sub esp, 12
push 0
push 90
push offset Lt_06D2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 70
push offset Lt_06D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06CC:
sub esp, 12
push 0
push 11
push offset Lt_06D4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 39
push offset Lt_06D5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06D7
sub esp, 12
push 0
push 3
push offset Lt_06D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06D7:
.L_06D6:
sub esp, 12
push 0
push 22
push offset Lt_06D9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_06DB
sub esp, 12
push 0
push 17
push offset Lt_06DC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06DB:
.L_06DA:
sub esp, 12
push 0
push 17
push offset Lt_06DD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_06DE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 49
push offset Lt_06DF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
movzx eax, byte ptr [ebp-36]
neg eax
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 21
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_06E1
sub esp, 12
push 0
push 17
push offset Lt_06E2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06E0
.L_06E1:
sub esp, 12
push 0
push 20
push offset Lt_06E3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06E0:
sub esp, 12
push 0
push 13
push offset Lt_06E4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
je .L_06E6
sub esp, 12
push 0
push 4
push offset Lt_06E7
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06E6:
.L_06E5:
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .L_06E9
sub esp, 12
push 0
push 21
push offset Lt_06EA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06E9:
.L_06E8:
call FBGETCPUFAMILY
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
je .L_06EE
.L_06EF:
cmp dword ptr [ebp-40], 1
jne .L_06ED
.L_06EE:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_06F1
sub esp, 12
push 0
push 13
push offset Lt_06F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_06F1:
.L_06F0:
.L_06ED:
.L_06EB:
jmp .L_06A2
.L_06A4:
cmp dword ptr [ebp-32], 2
jne .L_06F3
.L_06F4:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_06F7
.L_06F8:
sub esp, 12
push 0
push 12
push offset Lt_06F9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_06F7:
cmp dword ptr [ebp-36], 1
jne .L_06FA
.L_06FB:
sub esp, 12
push 0
push 15
push offset Lt_06FC
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_06FA:
cmp dword ptr [ebp-36], 2
jne .L_06FD
.L_06FE:
sub esp, 12
push 0
push 12
push offset Lt_06FF
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_06FD:
cmp dword ptr [ebp-36], 3
jne .L_0700
.L_0701:
sub esp, 12
push 0
push 16
push offset Lt_0702
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_0700:
cmp dword ptr [ebp-36], 4
jne .L_0703
.L_0704:
sub esp, 12
push 0
push 15
push offset Lt_0705
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_0703:
cmp dword ptr [ebp-36], 5
jne .L_0706
.L_0707:
sub esp, 12
push 0
push 17
push offset Lt_0708
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_06F5
.L_0706:
cmp dword ptr [ebp-36], 6
jne .L_0709
.L_070A:
sub esp, 12
push 0
push 19
push offset Lt_070B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0709:
.L_06F5:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_070D
sub esp, 12
push 0
push 23
push offset Lt_070E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_070D:
.L_070C:
sub esp, 12
push 0
push 3
push offset Lt_06D8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_0712
.L_0713:
cmp dword ptr [ebp-36], 1
jne .L_0711
.L_0712:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_0715
sub esp, 12
push 0
push 24
push offset Lt_0716
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0715:
.L_0714:
.L_0711:
.L_070F:
.L_06F3:
.L_06A2:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0717
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0718
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1556]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .L_071B
.L_071C:
mov dword ptr [ebp-36], 3
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_071E
mov dword ptr [ebp-36], 14
.L_071E:
.L_071D:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset Lt_071F
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0719
.L_071B:
cmp dword ptr [ebp-32], 2
jne .L_0720
.L_0721:
sub esp, 4
lea eax, [ebp-16]
push eax
push 4
push offset Lt_0722
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
.L_0720:
.L_0719:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_069F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILESTAGE2MODULE, .-HCOMPILESTAGE2MODULE
.cfi_endproc
.balign 16
HCOMPILESTAGE2MODULES:
.type HCOMPILESTAGE2MODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0723:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0725:
cmp dword ptr [ebp-4], 0
je .L_0726
sub esp, 12
push dword ptr [ebp-4]
call HCOMPILESTAGE2MODULE
add esp, 16
test eax, eax
jne .L_0728
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0728:
.L_0727:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0725
.L_0726:
.L_0724:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILESTAGE2MODULES, .-HCOMPILESTAGE2MODULES
.cfi_endproc
.balign 16
HASSEMBLEMODULE:
.type HASSEMBLEMODULE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
mov dword ptr [ebp-4], 0
.L_0729:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_072D
.L_072E:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0730
sub esp, 12
push 0
push 12
push offset Lt_0164
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_072F
.L_0730:
sub esp, 12
push 0
push 6
push offset Lt_0731
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_072F:
jmp .L_072B
.L_072D:
cmp dword ptr [ebp-60], 1
jne .L_0732
.L_0733:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .L_0735
sub esp, 12
push 0
push 14
push offset Lt_0167
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_0734
.L_0735:
sub esp, 12
push 0
push 6
push offset Lt_0736
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0734:
.L_0732:
.L_072B:
sub esp, 12
push 14
call FBGETOPTION
add esp, 16
test eax, eax
jne .L_0738
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .L_073A
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_073C
sub esp, 12
push 0
push 24
push offset Lt_073D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_073C:
.L_073B:
.L_073A:
.L_0739:
.L_0738:
.L_0737:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_073F
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_072A
.L_073F:
.L_073E:
sub esp, 12
push 0
push 2
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0717
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset Lt_0718
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [FBC+1532]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-56], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .L_0744
mov dword ptr [ebp-56], 11
.L_0744:
.L_0743:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset Lt_0745
call FBCRUNBIN
add esp, 16
test eax, eax
jne .L_0747
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_072A
.L_0747:
.L_0746:
cmp dword ptr [FBC+52], 0
jne .L_0749
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.L_0749:
.L_0748:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_072A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEMODULE, .-HASSEMBLEMODULE
.cfi_endproc
.balign 16
HASSEMBLEMODULES:
.type HASSEMBLEMODULES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_074A:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_074C:
cmp dword ptr [ebp-4], 0
je .L_074D
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .L_074F
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_074F:
.L_074E:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_074C
.L_074D:
.L_074B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEMODULES, .-HASSEMBLEMODULES
.cfi_endproc
.balign 16
HASSEMBLERC:
.type HASSEMBLERC, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
mov dword ptr [ebp-4], 0
.L_0750:
sub esp, 12
push 0
push 37
push offset Lt_0752
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset Lt_0138
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0123
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset Lt_0138
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 8
push offset Lt_0759
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [FBC+52], 0
jne .L_075B
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.L_075B:
.L_075A:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0751:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLERC, .-HASSEMBLERC
.cfi_endproc
.balign 16
HASSEMBLERCS:
.type HASSEMBLERCS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_075C:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_075E:
cmp dword ptr [ebp-4], 0
je .L_075F
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLERC
add esp, 16
test eax, eax
jne .L_0761
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0761:
.L_0760:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_075E
.L_075F:
.L_075D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLERCS, .-HASSEMBLERCS
.cfi_endproc
.balign 16
HASSEMBLEXPM:
.type HASSEMBLEXPM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0762:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_0765
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0767
sub esp, 12
lea eax, [FBC+136]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.L_0767:
.L_0766:
sub esp, 12
lea eax, [FBC+136]
push eax
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .L_0769
sub esp, 12
push 1
call FBCEND
add esp, 16
.L_0769:
.L_0768:
.L_0765:
.L_0764:
.L_0763:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASSEMBLEXPM, .-HASSEMBLEXPM
.cfi_endproc
.balign 16
HCOMPILEFBCTINF:
.type HCOMPILEFBCTINF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
mov dword ptr [ebp-4], 0
.L_076A:
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILEC1Ev
add esp, 16
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push 16
push offset Lt_001E
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_001D
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [FBC+56], 0
je .L_076D
sub esp, 4
push 2
push 10
push offset Lt_076E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-24]
push eax
push 0
call fb_PrintString
add esp, 16
.L_076D:
.L_076C:
call fb_FileFree
mov dword ptr [ebp-40], eax
sub esp, 8
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .L_0770
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
jmp .L_076B
.L_0770:
.L_076F:
sub esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0771
push 0
push 0
push offset Lt_0091
push 3770
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0771:
cmp dword ptr [FBC+40], 0
jne .L_0773
sub esp, 12
lea eax, [ebp-24]
push eax
call FBCADDTEMP
add esp, 16
.L_0773:
.L_0772:
push -1
push -1
push 0
lea eax, [ebp-24]
push eax
call HCOMPILEBAS
add esp, 16
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .L_0775
sub esp, 12
lea eax, [ebp-24]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.L_0775:
.L_0774:
sub esp, 12
lea eax, [ebp-24]
push eax
call HASSEMBLEMODULE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
.L_076B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCOMPILEFBCTINF, .-HCOMPILEFBCTINF
.cfi_endproc
.balign 16
HARCHIVEFILES:
.type HARCHIVEFILES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.L_0776:
call HSETOUTNAME
sub esp, 12
lea eax, [FBC+484]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
test eax, eax
je .L_0779
.L_0779:
.L_0778:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0299
push -1
sub esp, 4
push 261
lea eax, [FBC+484]
push eax
push 7
push offset Lt_077B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 39
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .L_077F
call HCOMPILEFBCTINF
test eax, eax
je .L_0781
sub esp, 12
push 0
push 15
push offset Lt_0784
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0781:
.L_0780:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 12
push offset Lt_001D
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call FBCADDTEMP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.L_077F:
.L_077E:
sub esp, 12
lea eax, [FBC+200]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-44], eax
.L_0786:
cmp dword ptr [ebp-44], 0
je .L_0787
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_0717
push -1
sub esp, 4
push -1
push dword ptr [ebp-44]
push 2
push offset Lt_0123
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-44]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-44], eax
jmp .L_0786
.L_0787:
sub esp, 4
lea eax, [ebp-16]
push eax
push 1
push offset Lt_078B
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0777:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HARCHIVEFILES, .-HARCHIVEFILES
.cfi_endproc
.balign 16
HSETDEFAULTLIBPATHS:
.type HSETDEFAULTLIBPATHS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 40
.L_078C:
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [FBC+2751]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0009
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .L_0791
sub esp, 12
push offset Lt_0792
call FBCADDLIBPATHFOR
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 5
jne .L_0795
.L_0796:
sub esp, 12
push offset Lt_0797
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_0793
.L_0795:
cmp dword ptr [ebp-28], 3
jne .L_0798
.L_0799:
sub esp, 12
push offset Lt_079A
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_0793
.L_0798:
sub esp, 12
push offset Lt_079C
call FBCADDLIBPATHFOR
add esp, 16
.L_079B:
.L_0793:
.L_0791:
.L_0790:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .L_079F
.L_07A0:
sub esp, 12
push offset Lt_07A1
call FBCADDLIBPATHFOR
add esp, 16
jmp .L_079D
.L_079F:
cmp dword ptr [ebp-28], 0
jne .L_07A2
.L_07A3:
sub esp, 12
push offset Lt_07A4
call FBCADDLIBPATHFOR
add esp, 16
.L_07A2:
.L_079D:
.L_078D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSETDEFAULTLIBPATHS, .-HSETDEFAULTLIBPATHS
.cfi_endproc
.balign 16
FBCADDDEFLIB:
.type FBCADDDEFLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
.L_07A5:
sub esp, 4
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-12]
push eax
lea eax, [FBC+396]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_07A6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size FBCADDDEFLIB, .-FBCADDDEFLIB
.cfi_endproc
.balign 16
HGETFBLIBNAMESUFFIX:
.type HGETFBLIBNAMESUFFIX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_07A8:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 35
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07AB
sub esp, 12
push 0
push 3
push offset Lt_04CC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_07AB:
.L_07AA:
sub esp, 12
push 37
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07AD
sub esp, 12
push 0
push 4
push offset Lt_04EC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_07AD:
.L_07AC:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_07A9:
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
.size HGETFBLIBNAMESUFFIX, .-HGETFBLIBNAMESUFFIX
.cfi_endproc
.balign 16
HADDDEFAULTLIBS:
.type HADDDEFAULTLIBS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_07AE:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07B1
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 5
push offset Lt_0444
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
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .L_07B0
.L_07B1:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 3
push offset Lt_0020
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
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_07B0:
sub esp, 12
push 36
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07B7
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 6
push offset Lt_07B8
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
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
jmp .L_07BC
.L_07BE:
sub esp, 12
push offset Lt_07BF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07C0
call FBCADDDEFLIB
add esp, 16
jmp .L_07BB
.L_07C1:
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 15
push offset Lt_07C2
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_07C4
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07C5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07C6
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07C7
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07C8
call FBCADDDEFLIB
add esp, 16
jmp .L_07BB
.L_07BC:
cmp dword ptr [ebp-28], 10
ja .L_07BB
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_07C9+eax*4]
.L_07C9:
.int .L_07BE
.int .L_07BE
.int .L_07C1
.int .L_07BB
.int .L_07BB
.int .L_07C1
.int .L_07C1
.int .L_07C1
.int .L_07C1
.int .L_07C1
.int .L_07C1
.L_07BB:
.L_07B7:
.L_07B6:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_07CB
.L_07CD:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_02F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07D1
sub esp, 12
push offset Lt_07D2
call FBCADDDEFLIB
add esp, 16
.L_07D1:
.L_07D0:
jmp .L_07CA
.L_07D3:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D4
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07D7:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 35
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07D9
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07DA
call FBCADDDEFLIB
add esp, 16
.L_07D9:
.L_07D8:
jmp .L_07CA
.L_07DB:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07DC:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07DD:
sub esp, 8
push -1
push offset Lt_07DE
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07DF
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07E1
sub esp, 12
push offset Lt_07E2
call FBCADDDEFLIB
add esp, 16
jmp .L_07E0
.L_07E1:
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
.L_07E0:
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07E3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_07E4
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07E5
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07E7
sub esp, 12
push offset Lt_07E8
call FBCADDDEFLIB
add esp, 16
.L_07E7:
.L_07E6:
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07E9:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07EA:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D5
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07D6
call FBCADDDEFLIB
add esp, 16
jmp .L_07CA
.L_07EB:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07EC
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07CF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07ED
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07EE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07EF
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_07E4
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_07F0
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_07F2
sub esp, 12
push offset Lt_07E8
call FBCADDDEFLIB
add esp, 16
.L_07F2:
.L_07F1:
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07F4
sub esp, 12
push offset Lt_07D2
call FBCADDDEFLIB
add esp, 16
.L_07F4:
.L_07F3:
jmp .L_07CA
.L_07F5:
sub esp, 12
push offset Lt_003F
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07B8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F6
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F7
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0465
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F8
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_07F9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_04C3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 23
call FBGETOPTION
add esp, 16
test eax, eax
je .L_07FB
sub esp, 12
push offset Lt_07D2
call FBCADDDEFLIB
add esp, 16
.L_07FB:
.L_07FA:
jmp .L_07CA
.L_07CB:
cmp dword ptr [ebp-4], 10
ja .L_07CA
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_07FC+eax*4]
.L_07FC:
.int .L_07EB
.int .L_07CD
.int .L_07DD
.int .L_07D7
.int .L_07F5
.int .L_07DB
.int .L_07DC
.int .L_07DC
.int .L_07EA
.int .L_07D3
.int .L_07E9
.L_07CA:
.L_07AF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDDEFAULTLIBS, .-HADDDEFAULTLIBS
.cfi_endproc
.balign 16
HEXCLUDELIBSFROMLINK:
.type HEXCLUDELIBSFROMLINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_07FD:
sub esp, 12
lea eax, [FBC+352]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_07FF:
cmp dword ptr [ebp-4], 0
je .L_0800
sub esp, 8
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
lea ebx, [FBC+396]
push ebx
call STRSETDEL
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_07FF
.L_0800:
.L_07FE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HEXCLUDELIBSFROMLINK, .-HEXCLUDELIBSFROMLINK
.cfi_endproc
.balign 16
HPRINTOPTIONS:
.type HPRINTOPTIONS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0801:
sub esp, 4
push 1
push 34
push offset Lt_0803
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 12
push offset Lt_0804
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0805
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 59
push offset Lt_0806
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 35
push offset Lt_0807
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 8
push offset Lt_0808
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_0809
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_080A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_080B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_080C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_080D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_080F
sub esp, 4
push 1
push 64
push offset Lt_0810
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_080F:
.L_080E:
sub esp, 4
push 1
push 44
push offset Lt_0811
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 46
push offset Lt_0812
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_0813
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0814
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0815
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_0816
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0818
sub esp, 4
push 1
push 47
push offset Lt_0819
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_081A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_081B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_081C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_081D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_081E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 55
push offset Lt_081F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 68
push offset Lt_0820
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0818:
.L_0817:
sub esp, 4
push 1
push 41
push offset Lt_0821
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 62
push offset Lt_0822
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0823
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 61
push offset Lt_0824
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0826
sub esp, 4
push 1
push 65
push offset Lt_0827
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0828
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0826:
.L_0825:
sub esp, 4
push 1
push 75
push offset Lt_0829
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_082B
sub esp, 4
push 1
push 58
push offset Lt_082C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_082D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_082E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_082F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_082A
.L_082B:
sub esp, 4
push 1
push 57
push offset Lt_0830
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_082A:
sub esp, 4
push 1
push 77
push offset Lt_0831
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0832
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_0833
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 36
push offset Lt_0834
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 64
push offset Lt_0835
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 42
push offset Lt_0836
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 76
push offset Lt_0837
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_0838
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0839
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_083A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 68
push offset Lt_083B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_083C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_083D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 78
push offset Lt_083E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 71
push offset Lt_083F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 74
push offset Lt_0840
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0841
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0842
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 80
push offset Lt_0843
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0844
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0845
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0846
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 51
push offset Lt_0847
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0848
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_084A
sub esp, 4
push 1
push 73
push offset Lt_084B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_084A:
.L_0849:
sub esp, 4
push 1
push 44
push offset Lt_084C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 65
push offset Lt_084D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_084E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_084F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0850
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_0851
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 66
push offset Lt_0852
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 73
push offset Lt_0853
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0854
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 75
push offset Lt_0855
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_0857
sub esp, 4
push 1
push 47
push offset Lt_0858
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .L_0856
.L_0857:
sub esp, 4
push 1
push 47
push offset Lt_0858
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_0856:
sub esp, 4
push 1
push 47
push offset Lt_0859
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 29
push offset Lt_085A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 61
push offset Lt_085B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 40
push offset Lt_085C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_085D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_085F
sub esp, 4
push 1
push 38
push offset Lt_0860
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0861
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0862
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0863
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0864
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0865
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_0866
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0867
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0868
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 71
push offset Lt_0869
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_085F:
.L_085E:
sub esp, 4
push 1
push 39
push offset Lt_086A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 72
push offset Lt_086B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_086C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_086D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .L_086F
sub esp, 4
push 1
push 56
push offset Lt_0870
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_0871
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_0872
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_0873
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0874
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0875
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 74
push offset Lt_0876
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_086F:
.L_086E:
.L_0802:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRINTOPTIONS, .-HPRINTOPTIONS
.cfi_endproc
.balign 16
HPRINTVERSION:
.type HPRINTVERSION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 72
.L_087C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 1
sub esp, 4
push 5
push offset Lt_0884
push -1
sub esp, 4
push -1
sub esp, 12
sub esp, 4
call FBGETHOSTBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_060C
push -1
sub esp, 4
push -1
call FBGETHOSTID
push eax
push 61
push offset Lt_0883
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
sub esp, 4
push 1
push 55
push offset Lt_0889
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_088B
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
.L_088B:
.L_088A:
cmp dword ptr [ebp+8], 0
je .L_088D
call FBCPRINTTARGETINFO
jmp .L_088F
sub esp, 4
push 1
push 14
push offset Lt_0890
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.L_088F:
.L_088E:
.L_088D:
.L_088C:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_087D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRINTVERSION, .-HPRINTVERSION
.cfi_endproc
.balign 16
_GLOBAL__I:
.type _GLOBAL__I, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08CB:
sub esp, 12
push offset FBC
call _ZN6FBCCTXC1Ev
add esp, 16
.L_08CC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GLOBAL__I, .-_GLOBAL__I
.cfi_endproc
.balign 16
_GLOBAL__D:
.type _GLOBAL__D, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_08CE:
sub esp, 12
push offset FBC
call _ZN6FBCCTXD1Ev
add esp, 16
.L_08CF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GLOBAL__D, .-_GLOBAL__D
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0005:	.ascii	"This program requires at least a 686 to run.\0"
.balign 4
Lt_0006:	.ascii	"1\0"
.balign 4
Lt_0008:	.ascii	"0\0"
.balign 4
Lt_0009:	.ascii	".\0"
.balign 4
Lt_001B:	.ascii	"/\0"
.balign 4
Lt_001D:	.ascii	"__fb_ct.inf\0"
.balign 4
Lt_001E:	.ascii	"__fb_ct.inf.bas\0"
.balign 4
Lt_0020:	.ascii	"fb\0"

.section .data
.balign 4
FBCTOOLTB:
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

.section .rodata
.balign 4
Lt_003F:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	FBC,3284

.section .rodata
.balign 4
Lt_0051:	.ascii	"lib\0"
.balign 4
Lt_0052:	.ascii	".a\0"
.balign 4
Lt_0061:	.ascii	".exe\0"
.balign 4
Lt_0065:	.ascii	".html\0"
.balign 4
Lt_006E:	.ascii	".dll\0"
.balign 4
Lt_0078:	.ascii	".so\0"
.balign 4
Lt_007E:	.ascii	".dxe\0"
.balign 4
Lt_0091:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
Lt_0098:	.ascii	" -m32\0"
.balign 4
Lt_009B:	.ascii	" -m64\0"
.balign 4
Lt_00B6:	.ascii	" -print-file-name=\0"
.balign 4
Lt_00DC:	.ascii	" -print-prog-name=as\0"
.balign 4
Lt_00DF:	.ascii	" -print-prog-name=ld\0"
.balign 4
Lt_00F2:	.ascii	": \0"
.balign 4
Lt_00F4:	.ascii	" \0"
.balign 4
Lt_00FC:	.ascii	" failed: '\0"
.balign 4
Lt_00FD:	.ascii	"' terminated with exit code \0"
.balign 4
Lt_0106:	.ascii	".clean.def\0"
.balign 4
Lt_010D:	.ascii	"DATA\0"
.balign 4
Lt_0118:	.ascii	"EXPORTS\0"
.balign 4
Lt_0122:	.ascii	"--def \"\0"
.balign 4
Lt_0123:	.ascii	"\"\0"
.balign 4
Lt_0127:	.ascii	" --dllname \"\0"
.balign 4
Lt_0128:	.ascii	" --output-lib \"\0"
.balign 4
Lt_0129:	.ascii	".dll.a\"\0"
.balign 4
Lt_012F:	.ascii	"creating import library\0"
.balign 4
Lt_0138:	.ascii	" \"\0"
.balign 4
Lt_013D:	.ascii	" --version\0"
.balign 4
Lt_013E:	.ascii	"GNU gold\0"
.balign 4
Lt_014D:	.ascii	"-m i386pe \0"
.balign 4
Lt_0150:	.ascii	"-m i386pep \0"
.balign 4
Lt_0157:	.ascii	"-m elf_i386 \0"
.balign 4
Lt_015A:	.ascii	"-m elf_x86_64 \0"
.balign 4
Lt_015D:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
Lt_0164:	.ascii	"-arch i386 \0"
.balign 4
Lt_0167:	.ascii	"-arch x86_64 \0"
.balign 4
Lt_016A:	.ascii	"-arch armv6 \0"
.balign 4
Lt_016B:	.ascii	"-o \0"
.balign 4
Lt_016C:	.ascii	"\"\0"
.balign 4
Lt_016D:	.ascii	"-o \"\0"
.balign 4
Lt_0170:	.ascii	" -I \"lib\0"
.balign 4
Lt_0172:	.ascii	"_il.a\"\0"
.balign 4
Lt_0173:	.ascii	" -U\0"
.balign 4
Lt_017B:	.ascii	" -lc\0"
.balign 4
Lt_0181:	.ascii	"making DXE\0"
.balign 4
Lt_0188:	.ascii	"console\0"
.balign 4
Lt_0189:	.ascii	"gui\0"
.balign 4
Lt_018C:	.ascii	"windows\0"
.balign 4
Lt_018D:	.ascii	" -subsystem \0"
.balign 4
Lt_0192:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
Lt_0195:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
Lt_0196:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
Lt_019C:	.ascii	" -shared -h\0"
.balign 4
Lt_01A3:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
Lt_01A5:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
Lt_01A7:	.ascii	" --dynamic-linker /lib/64/ld.so.1\0"
.balign 4
Lt_01AD:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
Lt_01B0:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
Lt_01B3:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
Lt_01B6:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
Lt_01B8:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
Lt_01BA:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
Lt_01BE:	.ascii	" --export-dynamic\0"
.balign 4
Lt_01C0:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
Lt_01C2:	.ascii	" -O\0"
.balign 4
Lt_01C8:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
Lt_01CD:	.ascii	" -s \0"
.balign 4
Lt_01CE:	.ascii	" --shell-file\0"
.balign 4
Lt_01CF:	.ascii	"fb_shell.html\0"
.balign 4
Lt_01D0:	.ascii	" --post-js\0"
.balign 4
Lt_01D1:	.ascii	"fb_rtlib.js\0"
.balign 4
Lt_01D4:	.ascii	"termlib_min.js\0"
.balign 4
Lt_01D8:	.ascii	" -T \"\0"
.balign 4
Lt_01DA:	.ascii	"/i386go32.x\"\0"
.balign 4
Lt_01DE:	.ascii	"/fbextra.x\"\0"
.balign 4
Lt_01E3:	.ascii	" --stack \0"
.balign 4
Lt_01E4:	.ascii	",\0"
.balign 4
Lt_01E8:	.ascii	".def\0"
.balign 4
Lt_01E9:	.ascii	" --output-def \"\0"
.balign 4
Lt_01EB:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
Lt_01EF:	.ascii	" -Bstatic\0"
.balign 4
Lt_01F2:	.ascii	" -Map \0"
.balign 4
Lt_01FB:	.ascii	" -s\0"
.balign 4
Lt_01FE:	.ascii	" -L \"\0"
.balign 4
Lt_01FF:	.ascii	" -L\"\0"
.balign 4
Lt_020B:	.ascii	"crt0.o\0"
.balign 4
Lt_020E:	.ascii	"gcrt0.o\0"
.balign 4
Lt_0212:	.ascii	"dllcrt2.o\0"
.balign 4
Lt_0213:	.ascii	"crt2.o\0"
.balign 4
Lt_0216:	.ascii	"gcrt2.o\0"
.balign 4
Lt_0217:	.ascii	"crtbegin.o\0"
.balign 4
Lt_0225:	.ascii	"gcrt1.o\0"
.balign 4
Lt_022C:	.ascii	"crt1.o\0"
.balign 4
Lt_0232:	.ascii	"crti.o\0"
.balign 4
Lt_0235:	.ascii	"crtbeginS.o\0"
.balign 4
Lt_023E:	.ascii	"fbrt0pic.o\0"
.balign 4
Lt_023F:	.ascii	"fbrt0.o\0"
.balign 4
Lt_0249:	.ascii	" \"-(\"\0"
.balign 4
Lt_0255:	.ascii	" -l\0"
.balign 4
Lt_025C:	.ascii	" \"-)\"\0"
.balign 4
Lt_025D:	.ascii	" -lfb\0"
.balign 4
Lt_0264:	.ascii	"crtendS.o\0"
.balign 4
Lt_0265:	.ascii	"crtend.o\0"
.balign 4
Lt_0268:	.ascii	"crtn.o\0"
.balign 4
Lt_026D:	.ascii	" -macosx_version_min 10.4\0"
.balign 4
Lt_027E:	.ascii	" --eh-frame-hdr\0"
.balign 4
Lt_0282:	.ascii	"linking\0"
.balign 4
Lt_0298:	.ascii	"-TITLE:\"\0"
.balign 4
Lt_0299:	.ascii	"\" \0"
.balign 4
Lt_029D:	.ascii	"-DUMPINFO:\"\0"
.balign 4
Lt_02A0:	.ascii	".cxbe\"\0"
.balign 4
Lt_02A2:	.ascii	" -OUT:\"\0"
.balign 4
Lt_02A4:	.ascii	".xbe\0"
.balign 4
Lt_02A5:	.ascii	" \"\0"
.balign 4
Lt_02A8:	.ascii	" >nul\0"
.balign 4
Lt_02AB:	.ascii	"cxbe: \0"
.balign 4
Lt_02B2:	.ascii	"cxbe failed: exit code \0"
.balign 4
Lt_02E7:	.ascii	".o\0"

.section .data
.balign 4
GNUOSMAP:
.int Lt_02EC
.int 2
.int Lt_02ED
.int 0
.int Lt_02EE
.int 3
.int Lt_02EF
.int 3
.int Lt_02F0
.int 1
.int Lt_02F1
.int 9
.int Lt_02F2
.int 5
.int Lt_02F3
.int 6
.int Lt_02F4
.int 7
.int Lt_02F5
.int 10
.int Lt_02F6
.int 8
.int Lt_02F7
.int 4

.section .rodata
.balign 4
Lt_02EC:	.ascii	"linux\0"
.balign 4
Lt_02ED:	.ascii	"mingw\0"
.balign 4
Lt_02EE:	.ascii	"djgpp\0"
.balign 4
Lt_02EF:	.ascii	"msdosdjgpp\0"
.balign 4
Lt_02F0:	.ascii	"cygwin\0"
.balign 4
Lt_02F1:	.ascii	"darwin\0"
.balign 4
Lt_02F2:	.ascii	"freebsd\0"
.balign 4
Lt_02F3:	.ascii	"dragonfly\0"
.balign 4
Lt_02F4:	.ascii	"solaris\0"
.balign 4
Lt_02F5:	.ascii	"netbsd\0"
.balign 4
Lt_02F6:	.ascii	"openbsd\0"
.balign 4
Lt_02F7:	.ascii	"xbox\0"

.section .data
.balign 4
GNUARCHMAP:
.int Lt_02F9
.int 0
.int Lt_02FA
.int 1
.int Lt_02FB
.int 2
.int Lt_02FC
.int 3
.int Lt_02FD
.int 3
.int Lt_02FE
.int 13
.int Lt_02FF
.int 13
.int Lt_0300
.int 14
.int Lt_0301
.int 15
.int Lt_0302
.int 15
.int Lt_0303
.int 16
.int Lt_0304
.int 17
.int Lt_0305
.int 17
.int Lt_0306
.int 18
.int Lt_0307
.int 18
.int Lt_0308
.int 19
.int Lt_0309
.int 19

.section .rodata
.balign 4
Lt_02F9:	.ascii	"i386\0"
.balign 4
Lt_02FA:	.ascii	"i486\0"
.balign 4
Lt_02FB:	.ascii	"i586\0"
.balign 4
Lt_02FC:	.ascii	"i686\0"
.balign 4
Lt_02FD:	.ascii	"x86\0"
.balign 4
Lt_02FE:	.ascii	"x86_64\0"
.balign 4
Lt_02FF:	.ascii	"amd64\0"
.balign 4
Lt_0300:	.ascii	"armv6\0"
.balign 4
Lt_0301:	.ascii	"armv7a\0"
.balign 4
Lt_0302:	.ascii	"arm\0"
.balign 4
Lt_0303:	.ascii	"aarch64\0"
.balign 4
Lt_0304:	.ascii	"ppc\0"
.balign 4
Lt_0305:	.ascii	"powerpc\0"
.balign 4
Lt_0306:	.ascii	"ppc64  \0"
.balign 4
Lt_0307:	.ascii	"powerpc64\0"
.balign 4
Lt_0308:	.ascii	"ppc64le  \0"
.balign 4
Lt_0309:	.ascii	"powerpc64le\0"

.section .data
.balign 4
FBOSARCHMAP:
.int Lt_0323
.int 0
.int 3
.int Lt_0324
.int 0
.int 13
.int Lt_02F3
.int 6
.int 13
.int Lt_02F4
.int 7
.int 13
.int Lt_0325
.int 3
.int 3
.int Lt_02F7
.int 4
.int 3
.int Lt_02F0
.int 1
.int 3
.int Lt_02F1
.int 9
.int 3
.int Lt_02F2
.int 5
.int 3
.int Lt_02EC
.int 2
.int 3
.int Lt_02F5
.int 10
.int 3
.int Lt_02F6
.int 8
.int 3

.section .rodata
.balign 4
Lt_0323:	.ascii	"win32\0"
.balign 4
Lt_0324:	.ascii	"win64\0"
.balign 4
Lt_0325:	.ascii	"dos\0"
.balign 4
Lt_032F:	.ascii	"-\0"

.section .data
.balign 4
CMDLINEOPTIONTB:
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

.section .rodata
.balign 4
Lt_033F:	.ascii	"native\0"
.balign 4
Lt_0342:	.ascii	"-arch \0"
.balign 4
Lt_0349:	.ascii	"att\0"
.balign 4
Lt_034C:	.ascii	"intel\0"
.balign 4
Lt_036C:	.ascii	"PRECISE\0"
.balign 4
Lt_036F:	.ascii	"FAST\0"
.balign 4
Lt_0376:	.ascii	"X87\0"
.balign 4
Lt_0377:	.ascii	"FPU\0"
.balign 4
Lt_037B:	.ascii	"SSE\0"
.balign 4
Lt_0383:	.ascii	"gas\0"
.balign 4
Lt_0388:	.ascii	"llvm\0"
.balign 4
Lt_038B:	.ascii	"gas64\0"
.balign 4
Lt_039E:	.ascii	"inf\0"
.balign 4
Lt_03B5:	.ascii	"max\0"
.balign 4
Lt_03C4:	.ascii	"host\0"
.balign 4
Lt_03C7:	.ascii	"target\0"
.balign 4
Lt_03CA:	.ascii	"x\0"
.balign 4
Lt_03CD:	.ascii	"fblibdir\0"
.balign 4
Lt_03D0:	.ascii	"sha-1\0"
.balign 4
Lt_03ED:	.ascii	"NONE\0"
.balign 4
Lt_03F3:	.ascii	"2\0"
.balign 4
Lt_03FF:	.ascii	"all\0"
.balign 4
Lt_0402:	.ascii	"none\0"
.balign 4
Lt_0405:	.ascii	"param\0"
.balign 4
Lt_0408:	.ascii	"escape\0"
.balign 4
Lt_040B:	.ascii	"next\0"
.balign 4
Lt_040E:	.ascii	"signedness\0"
.balign 4
Lt_0411:	.ascii	"constness\0"
.balign 4
Lt_0414:	.ascii	"funcptr\0"
.balign 4
Lt_0417:	.ascii	"suffix\0"
.balign 4
Lt_041A:	.ascii	"pedantic\0"
.balign 4
Lt_041F:	.ascii	"error\0"
.balign 4
Lt_0422:	.ascii	"upcast\0"
.balign 4
Lt_0438:	.ascii	"gosub-setjmp\0"
.balign 4
Lt_043B:	.ascii	"valist-as-ptr\0"
.balign 4
Lt_043E:	.ascii	"no-thiscall\0"
.balign 4
Lt_0441:	.ascii	"no-fastcall\0"
.balign 4
Lt_0444:	.ascii	"fbrt\0"
.balign 4
Lt_0447:	.ascii	"nocmdline\0"
.balign 4
Lt_044A:	.ascii	"retinflts\0"
.balign 4
Lt_0454:	.ascii	"a\0"
.balign 4
Lt_0457:	.ascii	"arch\0"
.balign 4
Lt_045A:	.ascii	"asm\0"
.balign 4
Lt_0461:	.ascii	"buildprefix\0"
.balign 4
Lt_0465:	.ascii	"c\0"
.balign 4
Lt_0470:	.ascii	"dll\0"
.balign 4
Lt_0473:	.ascii	"dylib\0"
.balign 4
Lt_047A:	.ascii	"ex\0"
.balign 4
Lt_047D:	.ascii	"earray\0"
.balign 4
Lt_0480:	.ascii	"eassert\0"
.balign 4
Lt_0483:	.ascii	"edebug\0"
.balign 4
Lt_0486:	.ascii	"edebuginfo\0"
.balign 4
Lt_0489:	.ascii	"elocation\0"
.balign 4
Lt_048C:	.ascii	"enullptr\0"
.balign 4
Lt_048F:	.ascii	"eunwind\0"
.balign 4
Lt_0492:	.ascii	"entry\0"
.balign 4
Lt_0495:	.ascii	"exx\0"
.balign 4
Lt_0498:	.ascii	"export\0"
.balign 4
Lt_049D:	.ascii	"forcelang\0"
.balign 4
Lt_04A0:	.ascii	"fpmode\0"
.balign 4
Lt_04A3:	.ascii	"fpu\0"
.balign 4
Lt_04AA:	.ascii	"gen\0"
.balign 4
Lt_04AF:	.ascii	"help\0"
.balign 4
Lt_04B6:	.ascii	"include\0"
.balign 4
Lt_04BD:	.ascii	"lang\0"
.balign 4
Lt_04C3:	.ascii	"m\0"
.balign 4
Lt_04C6:	.ascii	"map\0"
.balign 4
Lt_04C9:	.ascii	"maxerr\0"
.balign 4
Lt_04CC:	.ascii	"mt\0"
.balign 4
Lt_04D1:	.ascii	"noerrline\0"
.balign 4
Lt_04D4:	.ascii	"nodeflibs\0"
.balign 4
Lt_04D7:	.ascii	"nolib\0"
.balign 4
Lt_04DA:	.ascii	"noobjinfo\0"
.balign 4
Lt_04DD:	.ascii	"nostrip\0"
.balign 4
Lt_04E1:	.ascii	"o\0"
.balign 4
Lt_04EC:	.ascii	"pic\0"
.balign 4
Lt_04EF:	.ascii	"pp\0"
.balign 4
Lt_04F2:	.ascii	"prefix\0"
.balign 4
Lt_04F5:	.ascii	"print\0"
.balign 4
Lt_04F8:	.ascii	"profile\0"
.balign 4
Lt_04FF:	.ascii	"rr\0"
.balign 4
Lt_0506:	.ascii	"RR\0"
.balign 4
Lt_050D:	.ascii	"showincludes\0"
.balign 4
Lt_0510:	.ascii	"static\0"
.balign 4
Lt_0513:	.ascii	"strip\0"
.balign 4
Lt_051C:	.ascii	"title\0"
.balign 4
Lt_0523:	.ascii	"vec\0"
.balign 4
Lt_0526:	.ascii	"version\0"
.balign 4
Lt_052F:	.ascii	"Wa\0"
.balign 4
Lt_0532:	.ascii	"Wl\0"
.balign 4
Lt_0535:	.ascii	"Wc\0"
.balign 4
Lt_0540:	.ascii	"-version\0"
.balign 4
Lt_0543:	.ascii	"-help\0"
.balign 4
Lt_056D:	.ascii	"bas\0"
.balign 4
Lt_0574:	.ascii	"rc\0"
.balign 4
Lt_0575:	.ascii	"res\0"
.balign 4
Lt_0579:	.ascii	"xpm\0"
.balign 4
Lt_05EC:	.ascii	"../\0"
.balign 4
Lt_05F2:	.ascii	"freebasic\0"
.balign 4
Lt_05F5:	.ascii	"bin\0"
.balign 4
Lt_0606:	.ascii	", \0"
.balign 4
Lt_0609:	.ascii	"bit\0"
.balign 4
Lt_060C:	.ascii	" (\0"
.balign 4
Lt_060D:	.ascii	")\0"
.balign 4
Lt_060E:	.ascii	"target:\0"
.balign 4
Lt_060F:	.ascii	"backend:\0"
.balign 4
Lt_0618:	.ascii	"unnamed\0"
.balign 4
Lt_061E:	.ascii	".asm\0"
.balign 4
Lt_0625:	.ascii	".c\0"
.balign 4
Lt_0628:	.ascii	".ll\0"
.balign 4
Lt_0630:	.ascii	".pp.bas\0"
.balign 4
Lt_0634:	.ascii	"compiling: \0"
.balign 4
Lt_0635:	.ascii	" -o \0"
.balign 4
Lt_0638:	.ascii	" -pp \0"
.balign 4
Lt_063C:	.ascii	" (main module)\0"
.balign 4
Lt_063E:	.ascii	" (FB compile-time info)\0"
.balign 4
Lt_066F:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
Lt_0670:	.ascii	"fb_program_icon_data\0"
.balign 4
Lt_0671:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
Lt_0674:	.ascii	"/* XPM */\0"
.balign 4
Lt_067E:	.ascii	", _\n\0"
.balign 4
Lt_067F:	.ascii	"\t@\0"
.balign 4
Lt_0684:	.ascii	" _ \n\0"
.balign 4
Lt_0685:	.ascii	"}\n\n\0"
.balign 4
Lt_0686:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
Lt_0689:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
Lt_0690:	.ascii	".bas\0"
.balign 4
Lt_0693:	.ascii	"parsing xpm: \0"
.balign 4
Lt_06AA:	.ascii	"-m32 \0"
.balign 4
Lt_06AD:	.ascii	"-m64 \0"
.balign 4
Lt_06BD:	.ascii	"-mcpu=native \0"
.balign 4
Lt_06BE:	.ascii	"-mcpu=\0"
.balign 4
Lt_06C4:	.ascii	"-march=native \0"
.balign 4
Lt_06C5:	.ascii	"-march=\0"
.balign 4
Lt_06CB:	.ascii	"-fPIC \0"
.balign 4
Lt_06CE:	.ascii	"-S -nostdlib -nostdinc -Wall \0"
.balign 4
Lt_06CF:	.ascii	"-Wno-unused \0"
.balign 4
Lt_06D2:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
Lt_06D3:	.ascii	"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 \0"
.balign 4
Lt_06D4:	.ascii	"-Wno-main \0"
.balign 4
Lt_06D5:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
Lt_06D8:	.ascii	"-O\0"
.balign 4
Lt_06D9:	.ascii	"-fno-strict-aliasing \0"
.balign 4
Lt_06DC:	.ascii	"-frounding-math \0"
.balign 4
Lt_06DD:	.ascii	"-fno-math-errno \0"
.balign 4
Lt_06DE:	.ascii	"-fwrapv \0"
.balign 4
Lt_06DF:	.ascii	"-fno-exceptions -fno-asynchronous-unwind-tables \0"
.balign 4
Lt_06E2:	.ascii	"-funwind-tables \0"
.balign 4
Lt_06E3:	.ascii	"-fno-unwind-tables \0"
.balign 4
Lt_06E4:	.ascii	"-Wno-format \0"
.balign 4
Lt_06E7:	.ascii	"-g \0"
.balign 4
Lt_06EA:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
Lt_06F2:	.ascii	"-masm=intel \0"
.balign 4
Lt_06F9:	.ascii	"-march=x86 \0"
.balign 4
Lt_06FC:	.ascii	"-march=x86-64 \0"
.balign 4
Lt_06FF:	.ascii	"-march=arm \0"
.balign 4
Lt_0702:	.ascii	"-march=armv8-a \0"
.balign 4
Lt_0705:	.ascii	"-mcpu=powerpc \0"
.balign 4
Lt_0708:	.ascii	"-mcpu=powerpc64 \0"
.balign 4
Lt_070B:	.ascii	"-mcpu=powerpc64le \0"
.balign 4
Lt_070E:	.ascii	"-relocation-model=pic \0"
.balign 4
Lt_0716:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
Lt_0717:	.ascii	"\" \0"
.balign 4
Lt_0718:	.ascii	"-o \"\0"
.balign 4
Lt_071F:	.ascii	"compiling C\0"
.balign 4
Lt_0722:	.ascii	"compiling LLVM IR\0"
.balign 4
Lt_0731:	.ascii	"--32 \0"
.balign 4
Lt_0736:	.ascii	"--64 \0"
.balign 4
Lt_073D:	.ascii	"--strip-local-absolute \0"
.balign 4
Lt_0745:	.ascii	"assembling\0"
.balign 4
Lt_0752:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
Lt_0759:	.ascii	"compiling rc\0"
.balign 4
Lt_076E:	.ascii	"creating: \0"
.balign 4
Lt_077B:	.ascii	"-rsc \"\0"
.balign 4
Lt_0784:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
Lt_078B:	.ascii	"archiving\0"
.balign 4
Lt_0792:	.ascii	"libgcc.a\0"
.balign 4
Lt_0797:	.ascii	"libc++.so\0"
.balign 4
Lt_079A:	.ascii	"libstdcx.a\0"
.balign 4
Lt_079C:	.ascii	"libstdc++.so\0"
.balign 4
Lt_07A1:	.ascii	"libm.a\0"
.balign 4
Lt_07A4:	.ascii	"libmingw32.a\0"
.balign 4
Lt_07B8:	.ascii	"fbgfx\0"
.balign 4
Lt_07BF:	.ascii	"gdi32\0"
.balign 4
Lt_07C0:	.ascii	"winmm\0"
.balign 4
Lt_07C2:	.ascii	"/usr/X11R6/lib\0"
.balign 4
Lt_07C4:	.ascii	"X11\0"
.balign 4
Lt_07C5:	.ascii	"Xext\0"
.balign 4
Lt_07C6:	.ascii	"Xpm\0"
.balign 4
Lt_07C7:	.ascii	"Xrandr\0"
.balign 4
Lt_07C8:	.ascii	"Xrender\0"
.balign 4
Lt_07CE:	.ascii	"kernel32\0"
.balign 4
Lt_07CF:	.ascii	"user32\0"
.balign 4
Lt_07D2:	.ascii	"gmon\0"
.balign 4
Lt_07D4:	.ascii	"System\0"
.balign 4
Lt_07D5:	.ascii	"pthread\0"
.balign 4
Lt_07D6:	.ascii	"ncurses\0"
.balign 4
Lt_07DA:	.ascii	"socket\0"
.balign 4
Lt_07DE:	.ascii	"libtinfo.a\0"
.balign 4
Lt_07DF:	.ascii	"libtinfo.so\0"
.balign 4
Lt_07E2:	.ascii	"tinfo\0"
.balign 4
Lt_07E3:	.ascii	"dl\0"
.balign 4
Lt_07E4:	.ascii	"libgcc_eh.a\0"
.balign 4
Lt_07E5:	.ascii	"libgcc_eh.so\0"
.balign 4
Lt_07E8:	.ascii	"gcc_eh\0"
.balign 4
Lt_07EC:	.ascii	"msvcrt\0"
.balign 4
Lt_07ED:	.ascii	"mingw32\0"
.balign 4
Lt_07EE:	.ascii	"mingwex\0"
.balign 4
Lt_07EF:	.ascii	"moldname\0"
.balign 4
Lt_07F0:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
Lt_07F6:	.ascii	"openxdk\0"
.balign 4
Lt_07F7:	.ascii	"hal\0"
.balign 4
Lt_07F8:	.ascii	"usb\0"
.balign 4
Lt_07F9:	.ascii	"xboxkrnl\0"
.balign 4
Lt_0803:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
Lt_0804:	.ascii	"input files:\0"
.balign 4
Lt_0805:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
Lt_0806:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
Lt_0807:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
Lt_0808:	.ascii	"options:\0"
.balign 4
Lt_0809:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
Lt_080A:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
Lt_080B:	.ascii	"  -arch <type>     Set target architecture (default: 686)\0"
.balign 4
Lt_080C:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
Lt_080D:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
Lt_0810:	.ascii	"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)\0"
.balign 4
Lt_0811:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
Lt_0812:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
Lt_0813:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
Lt_0814:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
Lt_0815:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
Lt_0816:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
Lt_0819:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
Lt_081A:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
Lt_081B:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
Lt_081C:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
Lt_081D:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
Lt_081E:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
Lt_081F:	.ascii	"  -eunwind         Enable call stack unwind information\0"
.balign 4
Lt_0820:	.ascii	"  -entry           Change the entry point of the program from main()\0"
.balign 4
Lt_0821:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
Lt_0822:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
Lt_0823:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
Lt_0824:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
Lt_0827:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
Lt_0828:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
Lt_0829:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
Lt_082C:	.ascii	"  -gen gas         Select GNU gas 32-bit assembler backend\0"
.balign 4
Lt_082D:	.ascii	"  -gen gas64       Select GNU gas 64-bit assembler backend\0"
.balign 4
Lt_082E:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
Lt_082F:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
Lt_0830:	.ascii	"  -gen gas|gas64|gcc|llvm  Select code generation backend\0"
.balign 4
Lt_0831:	.ascii	"  [-]-help         Show this help output; use '-help -v' to show verbose help\0"
.balign 4
Lt_0832:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
Lt_0833:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
Lt_0834:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
Lt_0835:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
Lt_0836:	.ascii	"  -lib             Create a static library\0"
.balign 4
Lt_0837:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
Lt_0838:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
Lt_0839:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
Lt_083A:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
Lt_083B:	.ascii	"  -nodeflibs       Do not include the default libraries when linking\0"
.balign 4
Lt_083C:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
Lt_083D:	.ascii	"  -nolib <a,b,c>   Do not include the specified libraries when linking\0"
.balign 4
Lt_083E:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
Lt_083F:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
Lt_0840:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
Lt_0841:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
Lt_0842:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
Lt_0843:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
Lt_0844:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
Lt_0845:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
Lt_0846:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
Lt_0847:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
Lt_0848:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
Lt_084B:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
Lt_084C:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
Lt_084D:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
Lt_084E:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
Lt_084F:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
Lt_0850:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
Lt_0851:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
Lt_0852:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
Lt_0853:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
Lt_0854:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
Lt_0855:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
Lt_0858:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
Lt_0859:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
Lt_085A:	.ascii	"  -v               Be verbose\0"
.balign 4
Lt_085B:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
Lt_085C:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
Lt_085D:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
Lt_0860:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
Lt_0861:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
Lt_0862:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
Lt_0863:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
Lt_0864:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
Lt_0865:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
Lt_0866:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
Lt_0867:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
Lt_0868:	.ascii	"  -w error         Report warnings as errors\0"
.balign 4
Lt_0869:	.ascii	"  -w upcast        Enable warning when up-casting discards initializers\0"
.balign 4
Lt_086A:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
Lt_086B:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
Lt_086C:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
Lt_086D:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
Lt_0870:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
Lt_0871:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
Lt_0872:	.ascii	"  -z no-thiscall   Don't use '__thiscall' calling convention\0"
.balign 4
Lt_0873:	.ascii	"  -z no-fastcall   Don't use '__fastcall' calling convention\0"
.balign 4
Lt_0874:	.ascii	"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library\0"
.balign 4
Lt_0875:	.ascii	"  -z nocmdline     Disable #cmdline source directives\0"
.balign 4
Lt_0876:	.ascii	"  -z retinflts     Enable returning some types in floating point registers\0"
.balign 4
Lt_0883:	.ascii	"FreeBASIC Compiler - Version 1.10.0 (2023-10-18), built for \0"
.balign 4
Lt_0884:	.ascii	"bit)\0"
.balign 4
Lt_0889:	.ascii	"Copyright (C) 2004-2023 The FreeBASIC development team.\0"
.balign 4
Lt_0890:	.ascii	"source sha-1: \0"
.balign 4
Lt_08B5:	.ascii	"Restarting fbc ...\0"

.section .ctors, "aw", @progbits
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
