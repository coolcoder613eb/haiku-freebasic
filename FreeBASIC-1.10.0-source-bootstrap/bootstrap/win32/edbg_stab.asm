	.intel_syntax noprefix

.section .text
.balign 16

.globl _EDBGINIT@0
_EDBGINIT@0:
push ebx
.L_008F:
mov eax, dword ptr [_ENV+272]
mov ebx, dword ptr [_REMAPTB+eax*4]
mov dword ptr [_REMAPTB+28], ebx
.L_0090:
pop ebx
ret
.balign 16

.globl _EDBGEMITHEADER@4
_EDBGEMITHEADER@4:
push ebp
mov ebp, esp
sub esp, 72
.L_00A6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+148], 0
jne .L_00A9
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_00A7
.L_00A9:
.L_00A8:
mov dword ptr [_CTX], 1
mov dword ptr [_CTX+4], 0
mov dword ptr [_CTX+292], 0
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_CTX+28]
push eax
call _fb_StrAssign@20
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_0094
push -1
push 0
push dword ptr [ebp+8]
call _HESCAPE@4
push eax
push 8
push offset _Lt_00AB
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
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _EMITWRITESTR@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _PATHISABSOLUTE@4
test eax, eax
jne .L_00B0
push dword ptr [ebp-12]
push 0
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
push 100
call _HEMITSTABS@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.L_00B0:
.L_00AF:
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 100
call _HEMITSTABS@20
push 0
push 3
call dword ptr [_EMIT+224]
push dword ptr [ebp-12]
call _HSTABLABEL@4
mov dword ptr [ebp-52], 0
.L_00B6:
push offset _Lt_0006
push 0
push 0
mov eax, dword ptr [ebp-52]
push dword ptr [_STABSTB+eax*4]
push 128
call _HEMITSTABS@20
inc dword ptr [_CTX]
.L_00B4:
inc dword ptr [ebp-52]
.L_00B3:
cmp dword ptr [ebp-52], 16
jle .L_00B6
.L_00B5:
push 0
push offset _Lt_0000
call _EMITWRITESTR@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_00A7:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITFOOTER@0
_EDBGEMITFOOTER@0:
.L_00B7:
cmp dword ptr [_ENV+148], 0
jne .L_00BA
jmp .L_00B8
.L_00BA:
.L_00B9:
push 0
push 3
call dword ptr [_EMIT+224]
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_00BB
call _fb_StrAssign@20
push dword ptr [_Lt_00BB]
push 0
push 0
push offset _Lt_0000
push 100
call _HEMITSTABS@20
push dword ptr [_Lt_00BB]
call _HSTABLABEL@4
.L_00B8:
ret

.section .bss
.balign 4
	.lcomm	_Lt_00BB,12

.section .text
.balign 16

.globl _EDBGLINEBEGIN@16
_EDBGLINEBEGIN@16:
push ebp
mov ebp, esp
.L_00BC:
cmp dword ptr [_ENV+148], 0
jne .L_00BF
jmp .L_00BD
.L_00BF:
.L_00BE:
cmp dword ptr [_CTX+8], 0
jle .L_00C1
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [_CTX+12]
mov dword ptr [_CTX+12], eax
cmp dword ptr [_CTX+12], 0
jle .L_00C3
push dword ptr [_CTX+4]
push dword ptr [_CTX+8]
push dword ptr [ebp+8]
call _EDBGEMITLINE@12
mov dword ptr [_CTX+16], -1
.L_00C3:
.L_00C2:
.L_00C1:
.L_00C0:
push dword ptr [ebp+20]
call _EDBGINCLUDE@4
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+8], eax
cmp dword ptr [_CTX+16], 0
je .L_00C5
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [_CTX+4], eax
push dword ptr [_CTX+4]
call _SYMBGETMANGLEDNAME@4
push eax
call _HSTABLABEL@4
mov dword ptr [_CTX+16], 0
.L_00C5:
.L_00C4:
.L_00BD:
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EDBGLINEEND@12
_EDBGLINEEND@12:
push ebp
mov ebp, esp
.L_00C6:
cmp dword ptr [_ENV+148], 0
jne .L_00C9
jmp .L_00C7
.L_00C9:
.L_00C8:
cmp dword ptr [_CTX+8], 0
jle .L_00CB
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [_CTX+12]
mov dword ptr [_CTX+12], eax
cmp dword ptr [_CTX+12], 0
jle .L_00CD
push dword ptr [_CTX+4]
push dword ptr [_CTX+8]
push dword ptr [ebp+8]
call _EDBGEMITLINE@12
mov dword ptr [_CTX+16], -1
.L_00CD:
.L_00CC:
mov dword ptr [_CTX+8], 0
.L_00CB:
.L_00CA:
.L_00C7:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EDBGEMITLINE@12
_EDBGEMITLINE@12:
push ebp
mov ebp, esp
sub esp, 36
.L_00CE:
cmp dword ptr [_ENV+148], 0
jne .L_00D1
jmp .L_00CF
.L_00D1:
.L_00D0:
cmp dword ptr [_CTX+20], -1
jne .L_00D3
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+20], eax
.L_00D3:
.L_00D2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call _HMAKESTABN@16
mov dword ptr [_Lt_00D8], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 0
push dword ptr [_Lt_00D8]
call _EMITWRITESTR@8
.L_00CF:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_00D8,4

.section .text
.balign 16

.globl _EDBGEMITLINEFLUSH@12
_EDBGEMITLINEFLUSH@12:
push ebp
mov ebp, esp
sub esp, 36
.L_00D9:
cmp dword ptr [_ENV+148], 0
jne .L_00DC
jmp .L_00DA
.L_00DC:
.L_00DB:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call _HEMITSTABN@16
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_00DA:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EDBGSCOPEBEGIN@4
_EDBGSCOPEBEGIN@4:
push ebp
mov ebp, esp
push ebx
.L_00E0:
cmp dword ptr [_ENV+148], 0
jne .L_00E3
jmp .L_00E1
.L_00E3:
.L_00E2:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8376]
mov dword ptr [ebx+72], ecx
push 4
push 0
call _SYMBADDLABEL@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+80], eax
.L_00E1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGSCOPEEND@4
_EDBGSCOPEEND@4:
push ebp
mov ebp, esp
push ebx
.L_00E4:
cmp dword ptr [_ENV+148], 0
jne .L_00E7
jmp .L_00E5
.L_00E7:
.L_00E6:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8376]
mov dword ptr [ebx+76], ecx
push 4
push 0
call _SYMBADDLABEL@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+84], eax
.L_00E5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITSCOPEINI@4
_EDBGEMITSCOPEINI@4:
push ebp
mov ebp, esp
.L_00E8:
cmp dword ptr [_ENV+148], 0
jne .L_00EB
jmp .L_00E9
.L_00EB:
.L_00EA:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call _SYMBGETMANGLEDNAME@4
push eax
call _HSTABLABEL@4
.L_00E9:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITSCOPEEND@4
_EDBGEMITSCOPEEND@4:
push ebp
mov ebp, esp
.L_00EC:
cmp dword ptr [_ENV+148], 0
jne .L_00EF
jmp .L_00ED
.L_00EF:
.L_00EE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _SYMBGETMANGLEDNAME@4
push eax
call _HSTABLABEL@4
.L_00ED:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCBEGIN@4
_EDBGPROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.L_00F0:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+16], ebx
.L_00F1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCEND@4
_EDBGPROCEND@4:
push ebp
mov ebp, esp
push ebx
.L_00F2:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8376]
mov dword ptr [ecx+20], ebx
.L_00F3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCEMITBEGIN@4
_EDBGPROCEMITBEGIN@4:
push ebp
mov ebp, esp
.L_00F4:
mov dword ptr [_CTX+20], -1
mov dword ptr [_CTX+24], -1
.L_00F5:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITPROCHEADER@4
_EDBGEMITPROCHEADER@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00FE:
cmp dword ptr [_ENV+148], 0
jne .L_0101
jmp .L_00FF
.L_0101:
.L_0100:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call _EDBGINCLUDE@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .L_0103
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 1
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _FBGETENTRYPOINT@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-12]
push 42
call _HEMITSTABS@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 1
push 0
push 68
call _HEMITSTABD@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+8376]
mov dword ptr [ecx+20], eax
push 0
push -1
call _FBGETENTRYPOINT@0
push eax
push -1
push offset _Lt_0109
call _fb_StrAssign@20
jmp .L_0102
.L_0103:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
push offset _Lt_0109
call _fb_StrAssign@20
.L_0102:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_010A
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .L_0106
push 0
push 3
push offset _Lt_0107
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
jmp .L_0105
.L_0106:
push 0
push 3
push offset _Lt_0108
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
.L_0105:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
push dword ptr [_Lt_010A]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+16]
push 0
push dword ptr [_Lt_0109]
push 36
call _HEMITSTABS@20
push dword ptr [ebp+8]
call _HDECLARGS@4
mov dword ptr [_CTX+16], -1
mov dword ptr [_CTX+8], 0
mov dword ptr [_CTX+12], 0
mov dword ptr [_CTX+4], 0
.L_00FF:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0109,12
.balign 4
	.lcomm	_Lt_010A,12

.section .text
.balign 16

.globl _EDBGEMITPROCFOOTER@12
_EDBGEMITPROCFOOTER@12:
push ebp
mov ebp, esp
sub esp, 36
.L_0127:
cmp dword ptr [_ENV+148], 0
jne .L_012A
jmp .L_0128
.L_012A:
.L_0129:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_012E
call _fb_StrAssign@20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _HDECLLOCALVARS@16
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_012F
call _fb_StrAssign@20
push dword ptr [_Lt_012F]
call _HSTABLABEL@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push offset _Lt_012E
push -1
push 2
push offset _Lt_00D4
push -1
push offset _Lt_012F
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
push 0
push 0
push offset _Lt_0000
push 36
call _HEMITSTABS@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [_CTX+16], -1
mov dword ptr [_CTX+8], 0
mov dword ptr [_CTX+12], 0
mov dword ptr [_CTX+4], 0
.L_0128:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_012E,12
.balign 4
	.lcomm	_Lt_012F,12

.section .text
.balign 16

.globl _EDBGEMITGLOBALVAR@8
_EDBGEMITGLOBALVAR@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_018A:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [_ENV+148], 0
jne .L_018D
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .L_018B
.L_018D:
.L_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_018F
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete@4
jmp .L_018B
.L_018F:
.L_018E:
cmp dword ptr [ebp+12], 0
jne .L_0191
.L_0192:
mov dword ptr [ebp-4], 36
jmp .L_0190
.L_0191:
cmp dword ptr [ebp+12], 2
jne .L_0193
.L_0194:
mov dword ptr [ebp-4], 40
jmp .L_0190
.L_0193:
mov dword ptr [ebp-4], 38
.L_0195:
.L_0190:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0197
push 0
push 3
push offset _Lt_0198
push -1
lea ecx, [ebp-20]
push ecx
call _fb_StrConcatAssign@20
jmp .L_0196
.L_0197:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .L_0199
push 0
push 3
push offset _Lt_019A
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign@20
jmp .L_0196
.L_0199:
push 0
push 2
push offset _Lt_00A5
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign@20
.L_0196:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HEMITSTABS@20
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.L_018B:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EDBGEMITLOCALVAR@8
_EDBGEMITLOCALVAR@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_019D:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [_ENV+148], 0
jne .L_01A0
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_019E
.L_01A0:
.L_019F:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+12], 0
je .L_01A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_01A4
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete@4
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete@4
jmp .L_019E
.L_01A4:
.L_01A3:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_01A6
mov dword ptr [ebp-4], 38
jmp .L_01A5
.L_01A6:
mov dword ptr [ebp-4], 40
.L_01A5:
push 0
push 3
push offset _Lt_01A7
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
jmp .L_01A1
.L_01A2:
mov dword ptr [ebp-4], 128
push 0
push 2
push offset _Lt_00A5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.L_01A1:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-28]
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HEMITSTABS@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_019E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EDBGEMITPROCARG@4
_EDBGEMITPROCARG@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_01A8:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+148], 0
jne .L_01AB
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_01A9
.L_01AB:
.L_01AA:
push 0
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
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
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_01AE
push 0
push 2
push offset _Lt_01AF
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
jmp .L_01AD
.L_01AE:
push 0
push 2
push offset _Lt_01B0
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.L_01AD:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 0
push 0
push dword ptr [ebp-12]
push 160
call _HEMITSTABS@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01A9:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGINCLUDE@4
_EDBGINCLUDE@4:
push ebp
mov ebp, esp
sub esp, 12
.L_01B2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_01B5
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_01B3
.L_01B5:
.L_01B4:
mov eax, dword ptr [_CTX+292]
cmp dword ptr [ebp+8], eax
jne .L_01B7
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .L_01B3
.L_01B7:
.L_01B6:
push 0
push 3
call dword ptr [_EMIT+224]
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 132
call _HEMITSTABS@20
push dword ptr [ebp-12]
call _HSTABLABEL@4
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+292], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_01B3:
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__edbg_stab:
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
_HEMITSTABS@20:
push ebp
mov ebp, esp
sub esp, 24
.L_0091:
push 0
push 9
push offset _Lt_0095
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _HESCAPE@4
push eax
push -1
push offset _Lt_01B8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0098
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
push -1
push offset _Lt_01B8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push -1
push dword ptr [_Lt_01B8]
call _EMITWRITESTR@8
.L_0092:
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_01B8,12

.section .text
.balign 16
_HMAKESTABN@16:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_009A:
push 0
push 8
push offset _Lt_009C
push -1
push offset _Lt_01B9
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+20]
push -1
push offset _Lt_01B9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B9
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_01B9]
mov dword ptr [ebp-4], eax
.L_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_01B9,12

.section .text
.balign 16
_HEMITSTABN@16:
push ebp
mov ebp, esp
.L_009E:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMAKESTABN@16
push eax
call _EMITWRITESTR@8
.L_009F:
mov esp, ebp
pop ebp
ret 16
.balign 16
_HEMITSTABD@12:
push ebp
mov ebp, esp
.L_00A0:
push 0
push 8
push offset _Lt_00A2
push -1
push offset _Lt_01BA
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push -1
push dword ptr [_Lt_01BA]
call _EMITWRITESTR@8
.L_00A1:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_01BA,12

.section .text
.balign 16
_HSTABLABEL@4:
push ebp
mov ebp, esp
.L_00A3:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_01BB
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00A5
push -1
push offset _Lt_01BB
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_01BB]
call _EMITWRITESTR@8
.L_00A4:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01BB,12

.section .text
.balign 16
_HDECLARGS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_00F8:
cmp dword ptr [ebp-4], 0
je .L_00F9
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_00FB
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .L_00FD
push dword ptr [ebp-4]
call _EDBGEMITPROCARG@4
.L_00FD:
.L_00FC:
.L_00FB:
.L_00FA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .L_00F8
.L_00F9:
.L_00F7:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDECLLOCALVARS@16:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_010B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_010E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .L_010D
.L_010E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_010D:
mov dword ptr [_Lt_01BC], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_010F:
cmp dword ptr [ebp-8], 0
je .L_0110
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-84], ebx
cmp dword ptr [ebp-84], 1
jne .L_0113
.L_0114:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 249860
test eax, eax
jne .L_0116
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16
test ebx, ebx
jne .L_0118
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _EDBGEMITLOCALVAR@8
.L_0118:
.L_0117:
.L_0116:
.L_0115:
jmp .L_0111
.L_0113:
cmp dword ptr [ebp-84], 15
jne .L_0119
.L_011A:
inc dword ptr [_Lt_01BC]
.L_0119:
.L_0111:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .L_010F
.L_0110:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
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
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
push 0
push 0
push 192
call _HEMITSTABN@16
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
cmp dword ptr [_Lt_01BC], 0
jle .L_011F
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_0120:
cmp dword ptr [ebp-8], 0
je .L_0121
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 15
jne .L_0123
mov eax, dword ptr [ebp-8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+80]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HDECLLOCALVARS@16
.L_0123:
.L_0122:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .L_0120
.L_0121:
.L_011F:
.L_011E:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+20]
call _SYMBGETMANGLEDNAME@4
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
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
push 0
push 0
push 224
call _HEMITSTABN@16
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
.L_010C:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_01BC,4

.section .text
.balign 16
_HDECLPOINTER@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0130:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_01BE
call _fb_StrAssign@20
.L_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .L_0133
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, -32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
push offset _Lt_01BE
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0134
push -1
push offset _Lt_01BE
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
jmp .L_0132
.L_0133:
push 0
push -1
push offset _Lt_01BE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.L_0131:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01BE,12

.section .text
.balign 16
_HGETDATATYPE@8:
push ebp
mov ebp, esp
sub esp, 92
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0135:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .L_0138
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .L_0136
.L_0138:
.L_0137:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_013A
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-20], ebx
jmp .L_0139
.L_013A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_013C
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_013E
mov eax, dword ptr [ebp-16]
and eax, 31
mov ecx, dword ptr [ebp-16]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 32505856
or eax, ecx
mov dword ptr [ebp-16], eax
.L_013E:
.L_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jle .L_0140
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0141
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
cmp dword ptr [ebp+12], 0
jle .L_0143
push 0
push 5
push offset _Lt_0144
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0145
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .L_0142
.L_0143:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .L_0148
.L_014B:
push 0
push 5
push offset _Lt_0144
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0146
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+68]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call _fb_LongintToStr@8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0146
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call _fb_LongintToStr@8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
.L_0149:
inc dword ptr [ebp-40]
.L_0148:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .L_014B
.L_014A:
.L_0142:
.L_0140:
.L_013F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .L_0151
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+96]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebp-20], ecx
.L_0151:
.L_0150:
.L_013C:
.L_013B:
.L_0139:
cmp dword ptr [ebp-20], 0
jge .L_0153
mov dword ptr [ebp-20], 1
.L_0153:
.L_0152:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .L_0155
push 0
push -1
lea ecx, [ebp-16]
push ecx
call _HDECLPOINTER@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.L_0155:
.L_0154:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_0157
.L_0159:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+136], -1
jne .L_015B
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HDECLUDT@8
.L_015B:
.L_015A:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+136]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
jmp .L_0156
.L_015D:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .L_015F
push dword ptr [ebp-24]
call _HDECLENUM@4
.L_015F:
.L_015E:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
jmp .L_0156
.L_0161:
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0162
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
push 0
push -1
push 0
push dword ptr [ebp-24]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .L_0156
.L_0163:
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .L_0156
.L_0164:
push 0
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [_REMAPTB+eax*4]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .L_0156
.L_0157:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .L_0164
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_0165+eax*4-40]
_.L_0165:
.int .L_015D
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0164
.int .L_0159
.int .L_0164
.int .L_0161
.int .L_0163
.L_0156:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.L_0136:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDECLUDT@8:
push ebp
mov ebp, esp
sub esp, 168
push ebx
.L_0166:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTX]
mov dword ptr [eax+136], ebx
inc dword ptr [_CTX]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push -1
push 3
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+136]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0168
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
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.L_016E:
cmp dword ptr [ebp-4], 0
je .L_016F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0171
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HGETDATATYPE@8
push eax
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
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
push -1
lea eax, [ebp-16]
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
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
shld ebx, ecx, 3
shl ecx, 3
mov dword ptr [ebp-168], ecx
mov dword ptr [ebp-164], ebx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+116], 0
jle .L_0175
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+112]
mov dword ptr [ebp-104], ebx
jmp .L_01C1
.L_0175:
mov dword ptr [ebp-104], 0
.L_01C1:
mov ecx, dword ptr [ebp-104]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-168]
adc ebx, dword ptr [ebp-164]
push ebx
push ecx
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_0097
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
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
push -1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+116], 0
jle .L_0179
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+116]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-136], ebx
mov dword ptr [ebp-132], ecx
jmp .L_01C2
.L_0179:
push dword ptr [ebp-4]
call _SYMBGETREALSIZE@4
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-136], eax
mov dword ptr [ebp-132], edx
.L_01C2:
push dword ptr [ebp-132]
push dword ptr [ebp-136]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_0097
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.L_0171:
.L_0170:
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .L_016E
.L_016F:
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push offset _Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call _HEMITSTABS@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_0167:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDECLENUM@4:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.L_017D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTX]
mov dword ptr [eax+100], ebx
inc dword ptr [_CTX]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 3
push offset _Lt_0180
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_017F
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
push dword ptr [ebp+8]
call _SYMBGETENUMFIRSTELM@4
mov dword ptr [ebp-4], eax
.L_0184:
cmp dword ptr [ebp-4], 0
je .L_0185
push 0
push -1
push -1
push 2
push offset _Lt_0097
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_LongintToStr@8
push eax
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
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
push -1
lea eax, [ebp-16]
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
call _fb_StrAssign@20
push dword ptr [ebp-4]
call _SYMBGETENUMNEXTELM@4
mov dword ptr [ebp-4], eax
jmp .L_0184
.L_0185:
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push offset _Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call _HEMITSTABS@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.L_017E:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_007B,36
.balign 4
	.lcomm	_CTX,296

.section .data
.balign 4
_REMAPTB:
.int 7
.int 16
.int 2
.int 3
.int 4
.int 5
.int 6
.int 6
.int 1
.int 8
.int 1
.int 1
.int 8
.int 9
.int 10
.int 11
.int 12
.int 13
.int 14
.int 17
.skip 24,0
.balign 4
_STABSTB:
.int _Lt_007D
.int _Lt_007E
.int _Lt_007F
.int _Lt_0080
.int _Lt_0081
.int _Lt_0082
.int _Lt_0083
.int _Lt_0084
.int _Lt_0085
.int _Lt_0086
.int _Lt_0087
.int _Lt_0088
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.int _Lt_008C
.int _Lt_008D
.balign 4
_Lt_007D:	.ascii	"integer:t1=-1\0"
.balign 4
_Lt_007E:	.ascii	"void:t7=-11\0"
.balign 4
_Lt_007F:	.ascii	"byte:t2=-6\0"
.balign 4
_Lt_0080:	.ascii	"ubyte:t3=-5\0"
.balign 4
_Lt_0081:	.ascii	"char:t4=-2\0"
.balign 4
_Lt_0082:	.ascii	"short:t5=-3\0"
.balign 4
_Lt_0083:	.ascii	"ushort:t6=-7\0"
.balign 4
_Lt_0084:	.ascii	"uinteger:t8=-8\0"
.balign 4
_Lt_0085:	.ascii	"longint:t9=-31\0"
.balign 4
_Lt_0086:	.ascii	"ulongint:t10=-32\0"
.balign 4
_Lt_0087:	.ascii	"single:t11=-12\0"
.balign 4
_Lt_0088:	.ascii	"double:t12=-13\0"
.balign 4
_Lt_0089:	.ascii	"string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;\0"
.balign 4
_Lt_008A:	.ascii	"fixstr:t14=-2\0"
.balign 4
_Lt_008B:	.ascii	"pchar:t15=*4;\0"
.balign 4
_Lt_008C:	.ascii	"boolean:t16=@s8;-16\0"
.balign 4
_Lt_008D:	.ascii	"va_list:t17=-11\0"
.balign 4
_Lt_0094:	.ascii	"\"\0"
.balign 4
_Lt_0095:	.ascii	".stabs \"\0"
.balign 4
_Lt_0097:	.ascii	",\0"
.balign 4
_Lt_0098:	.ascii	"\",\0"
.balign 4
_Lt_009C:	.ascii	".stabn \0"
.balign 4
_Lt_00A2:	.ascii	".stabd \0"
.balign 4
_Lt_00A5:	.ascii	":\0"
.balign 4
_Lt_00AB:	.ascii	".file \"\0"
.balign 4
_Lt_00D4:	.ascii	"-\0"
.balign 4
_Lt_0107:	.ascii	":F\0"
.balign 4
_Lt_0108:	.ascii	":f\0"
.balign 4
_Lt_0134:	.ascii	"=*\0"
.balign 4
_Lt_0141:	.ascii	"=\0"
.balign 4
_Lt_0144:	.ascii	"ar1;\0"
.balign 4
_Lt_0145:	.ascii	"0;\0"
.balign 4
_Lt_0146:	.ascii	";\0"
.balign 4
_Lt_0162:	.ascii	"=f\0"
.balign 4
_Lt_0168:	.ascii	":Tt\0"
.balign 4
_Lt_0169:	.ascii	"=s\0"
.balign 4
_Lt_017F:	.ascii	":T\0"
.balign 4
_Lt_0180:	.ascii	"=e\0"
.balign 4
_Lt_0198:	.ascii	":G\0"
.balign 4
_Lt_019A:	.ascii	":S\0"
.balign 4
_Lt_01A7:	.ascii	":V\0"
.balign 4
_Lt_01AF:	.ascii	"p\0"
.balign 4
_Lt_01B0:	.ascii	"v\0"

.section .ctors
.int _fb_ctor__edbg_stab
