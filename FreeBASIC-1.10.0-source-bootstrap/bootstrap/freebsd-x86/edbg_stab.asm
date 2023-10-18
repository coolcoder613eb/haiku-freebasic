	.intel_syntax noprefix

.section .text
.balign 16

.globl EDBGINIT
EDBGINIT:
push ebx
.L_008E:
mov eax, dword ptr [ENV+272]
mov ebx, dword ptr [REMAPTB+eax*4]
mov dword ptr [REMAPTB+28], ebx
.L_008F:
pop ebx
ret
.balign 16

.globl EDBGEMITHEADER
EDBGEMITHEADER:
push ebp
mov ebp, esp
sub esp, 72
.L_00A5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+148], 0
jne .L_00A8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_00A6
.L_00A8:
.L_00A7:
mov dword ptr [CTX], 1
mov dword ptr [CTX+4], 0
mov dword ptr [CTX+292], 0
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [CTX+28]
push eax
call fb_StrAssign
add esp, 20
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset Lt_0093
push -1
push 0
push dword ptr [ebp+8]
call HESCAPE
add esp, 4
push eax
push 8
push offset Lt_00AA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call EMITWRITESTR
add esp, 8
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
push dword ptr [ebp+8]
call PATHISABSOLUTE
add esp, 4
test eax, eax
jne .L_00AF
push dword ptr [ebp-12]
push 0
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset Lt_0019
push -1
call HCURDIR
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
push 100
call HEMITSTABS
add esp, 20
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
.L_00AF:
.L_00AE:
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 100
call HEMITSTABS
add esp, 20
push 0
push 3
call dword ptr [EMIT+224]
add esp, 8
push dword ptr [ebp-12]
call HSTABLABEL
add esp, 4
mov dword ptr [ebp-52], 0
.L_00B5:
push offset Lt_0006
push 0
push 0
mov eax, dword ptr [ebp-52]
push dword ptr [STABSTB+eax*4]
push 128
call HEMITSTABS
add esp, 20
inc dword ptr [CTX]
.L_00B3:
inc dword ptr [ebp-52]
.L_00B2:
cmp dword ptr [ebp-52], 16
jle .L_00B5
.L_00B4:
push 0
push offset Lt_0000
call EMITWRITESTR
add esp, 8
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_00A6:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITFOOTER
EDBGEMITFOOTER:
.L_00B6:
cmp dword ptr [ENV+148], 0
jne .L_00B9
jmp .L_00B7
.L_00B9:
.L_00B8:
push 0
push 3
call dword ptr [EMIT+224]
add esp, 8
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
push offset Lt_00BA
call fb_StrAssign
add esp, 20
push dword ptr [Lt_00BA]
push 0
push 0
push offset Lt_0000
push 100
call HEMITSTABS
add esp, 20
push dword ptr [Lt_00BA]
call HSTABLABEL
add esp, 4
.L_00B7:
ret

.section .bss
.balign 4
	.lcomm	Lt_00BA,12

.section .text
.balign 16

.globl EDBGLINEBEGIN
EDBGLINEBEGIN:
push ebp
mov ebp, esp
.L_00BB:
cmp dword ptr [ENV+148], 0
jne .L_00BE
jmp .L_00BC
.L_00BE:
.L_00BD:
cmp dword ptr [CTX+8], 0
jle .L_00C0
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [CTX+12]
mov dword ptr [CTX+12], eax
cmp dword ptr [CTX+12], 0
jle .L_00C2
push dword ptr [CTX+4]
push dword ptr [CTX+8]
push dword ptr [ebp+8]
call EDBGEMITLINE
add esp, 12
mov dword ptr [CTX+16], -1
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
push dword ptr [ebp+20]
call EDBGINCLUDE
add esp, 4
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+8], eax
cmp dword ptr [CTX+16], 0
je .L_00C4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [CTX+4], eax
push dword ptr [CTX+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HSTABLABEL
add esp, 4
mov dword ptr [CTX+16], 0
.L_00C4:
.L_00C3:
.L_00BC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGLINEEND
EDBGLINEEND:
push ebp
mov ebp, esp
.L_00C5:
cmp dword ptr [ENV+148], 0
jne .L_00C8
jmp .L_00C6
.L_00C8:
.L_00C7:
cmp dword ptr [CTX+8], 0
jle .L_00CA
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [CTX+12]
mov dword ptr [CTX+12], eax
cmp dword ptr [CTX+12], 0
jle .L_00CC
push dword ptr [CTX+4]
push dword ptr [CTX+8]
push dword ptr [ebp+8]
call EDBGEMITLINE
add esp, 12
mov dword ptr [CTX+16], -1
.L_00CC:
.L_00CB:
mov dword ptr [CTX+8], 0
.L_00CA:
.L_00C9:
.L_00C6:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITLINE
EDBGEMITLINE:
push ebp
mov ebp, esp
sub esp, 36
.L_00CD:
cmp dword ptr [ENV+148], 0
jne .L_00D0
jmp .L_00CE
.L_00D0:
.L_00CF:
cmp dword ptr [CTX+20], -1
jne .L_00D2
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+20], eax
.L_00D2:
.L_00D1:
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00D3
push 0
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call HMAKESTABN
add esp, 16
mov dword ptr [Lt_00D7], eax
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
push 0
push dword ptr [Lt_00D7]
call EMITWRITESTR
add esp, 8
.L_00CE:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00D7,4

.section .text
.balign 16

.globl EDBGEMITLINEFLUSH
EDBGEMITLINEFLUSH:
push ebp
mov ebp, esp
sub esp, 36
.L_00D8:
cmp dword ptr [ENV+148], 0
jne .L_00DB
jmp .L_00D9
.L_00DB:
.L_00DA:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00D3
push 0
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call HEMITSTABN
add esp, 16
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_00D9:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGSCOPEBEGIN
EDBGSCOPEBEGIN:
push ebp
mov ebp, esp
push ebx
.L_00DF:
cmp dword ptr [ENV+148], 0
jne .L_00E2
jmp .L_00E0
.L_00E2:
.L_00E1:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16568]
mov dword ptr [ebx+72], ecx
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+80], eax
.L_00E0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGSCOPEEND
EDBGSCOPEEND:
push ebp
mov ebp, esp
push ebx
.L_00E3:
cmp dword ptr [ENV+148], 0
jne .L_00E6
jmp .L_00E4
.L_00E6:
.L_00E5:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16568]
mov dword ptr [ebx+76], ecx
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+84], eax
.L_00E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITSCOPEINI
EDBGEMITSCOPEINI:
push ebp
mov ebp, esp
.L_00E7:
cmp dword ptr [ENV+148], 0
jne .L_00EA
jmp .L_00E8
.L_00EA:
.L_00E9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HSTABLABEL
add esp, 4
.L_00E8:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITSCOPEEND
EDBGEMITSCOPEEND:
push ebp
mov ebp, esp
.L_00EB:
cmp dword ptr [ENV+148], 0
jne .L_00EE
jmp .L_00EC
.L_00EE:
.L_00ED:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HSTABLABEL
add esp, 4
.L_00EC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGPROCBEGIN
EDBGPROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_00EF:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+16], ebx
.L_00F0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGPROCEND
EDBGPROCEND:
push ebp
mov ebp, esp
push ebx
.L_00F1:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16568]
mov dword ptr [ecx+20], ebx
.L_00F2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGPROCEMITBEGIN
EDBGPROCEMITBEGIN:
push ebp
mov ebp, esp
.L_00F3:
mov dword ptr [CTX+20], -1
mov dword ptr [CTX+24], -1
.L_00F4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITPROCHEADER
EDBGEMITPROCHEADER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00FD:
cmp dword ptr [ENV+148], 0
jne .L_0100
jmp .L_00FE
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call EDBGINCLUDE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .L_0102
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 1
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call FBGETENTRYPOINT
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-12]
push 42
call HEMITSTABS
add esp, 20
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
push 1
push 0
push 68
call HEMITSTABD
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+16568]
mov dword ptr [ecx+20], eax
push 0
push -1
call FBGETENTRYPOINT
push eax
push -1
push offset Lt_0108
call fb_StrAssign
add esp, 20
jmp .L_0101
.L_0102:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
push offset Lt_0108
call fb_StrAssign
add esp, 20
.L_0101:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_0109
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .L_0105
push 0
push 3
push offset Lt_0106
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 20
jmp .L_0104
.L_0105:
push 0
push 3
push offset Lt_0107
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 20
.L_0104:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 8
push eax
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 20
push dword ptr [Lt_0109]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+16]
push 0
push dword ptr [Lt_0108]
push 36
call HEMITSTABS
add esp, 20
push dword ptr [ebp+8]
call HDECLARGS
add esp, 4
mov dword ptr [CTX+16], -1
mov dword ptr [CTX+8], 0
mov dword ptr [CTX+12], 0
mov dword ptr [CTX+4], 0
.L_00FE:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0108,12
.balign 4
	.lcomm	Lt_0109,12

.section .text
.balign 16

.globl EDBGEMITPROCFOOTER
EDBGEMITPROCFOOTER:
push ebp
mov ebp, esp
sub esp, 36
.L_0126:
cmp dword ptr [ENV+148], 0
jne .L_0129
jmp .L_0127
.L_0129:
.L_0128:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset Lt_012D
call fb_StrAssign
add esp, 20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call HDECLLOCALVARS
add esp, 16
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
push offset Lt_012E
call fb_StrAssign
add esp, 20
push dword ptr [Lt_012E]
call HSTABLABEL
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push offset Lt_012D
push -1
push 2
push offset Lt_00D3
push -1
push offset Lt_012E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 0
push 0
push offset Lt_0000
push 36
call HEMITSTABS
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
mov dword ptr [CTX+16], -1
mov dword ptr [CTX+8], 0
mov dword ptr [CTX+12], 0
mov dword ptr [CTX+4], 0
.L_0127:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_012D,12
.balign 4
	.lcomm	Lt_012E,12

.section .text
.balign 16

.globl EDBGEMITGLOBALVAR
EDBGEMITGLOBALVAR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0189:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ENV+148], 0
jne .L_018C
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .L_018A
.L_018C:
.L_018B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_018E
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_018A
.L_018E:
.L_018D:
cmp dword ptr [ebp+12], 0
jne .L_0190
.L_0191:
mov dword ptr [ebp-4], 36
jmp .L_018F
.L_0190:
cmp dword ptr [ebp+12], 2
jne .L_0192
.L_0193:
mov dword ptr [ebp-4], 40
jmp .L_018F
.L_0192:
mov dword ptr [ebp-4], 38
.L_0194:
.L_018F:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
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
je .L_0196
push 0
push 3
push offset Lt_0197
push -1
lea ecx, [ebp-20]
push ecx
call fb_StrConcatAssign
add esp, 20
jmp .L_0195
.L_0196:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .L_0198
push 0
push 3
push offset Lt_0199
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_0195
.L_0198:
push 0
push 2
push offset Lt_00A4
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_0195:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HEMITSTABS
add esp, 20
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.L_018A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITLOCALVAR
EDBGEMITLOCALVAR:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_019C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ENV+148], 0
jne .L_019F
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .L_019D
.L_019F:
.L_019E:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
je .L_01A1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .L_01A3
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 4
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 4
jmp .L_019D
.L_01A3:
.L_01A2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .L_01A5
mov dword ptr [ebp-4], 38
jmp .L_01A4
.L_01A5:
mov dword ptr [ebp-4], 40
.L_01A4:
push 0
push 3
push offset Lt_01A6
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
jmp .L_01A0
.L_01A1:
mov dword ptr [ebp-4], 128
push 0
push 2
push offset Lt_00A4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
.L_01A0:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-28]
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HEMITSTABS
add esp, 20
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_019D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGEMITPROCARG
EDBGEMITPROCARG:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.L_01A7:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+148], 0
jne .L_01AA
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01A8
.L_01AA:
.L_01A9:
push 0
push -1
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .L_01AD
push 0
push 2
push offset Lt_01AE
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_01AC
.L_01AD:
push 0
push 2
push offset Lt_01AF
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_01AC:
push 0
push -1
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 0
push 0
push dword ptr [ebp-12]
push 160
call HEMITSTABS
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01A8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl EDBGINCLUDE
EDBGINCLUDE:
push ebp
mov ebp, esp
sub esp, 12
.L_01B1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_01B4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01B2
.L_01B4:
.L_01B3:
mov eax, dword ptr [CTX+292]
cmp dword ptr [ebp+8], eax
jne .L_01B6
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01B2
.L_01B6:
.L_01B5:
push 0
push 3
call dword ptr [EMIT+224]
add esp, 8
push 0
push 0
call SYMBUNIQUELABEL
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 132
call HEMITSTABS
add esp, 20
push dword ptr [ebp-12]
call HSTABLABEL
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+292], eax
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_01B2:
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__edbg_stab:
.L_0002:
.L_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
HEMITSTABS:
push ebp
mov ebp, esp
sub esp, 24
.L_0090:
push 0
push 9
push offset Lt_0094
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call HESCAPE
add esp, 4
push eax
push -1
push offset Lt_01B7
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 20
push 0
push 3
push offset Lt_0097
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+24]
push -1
push offset Lt_01B7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 20
push -1
push dword ptr [Lt_01B7]
call EMITWRITESTR
add esp, 8
.L_0091:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01B7,12

.section .text
.balign 16
HMAKESTABN:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0099:
push 0
push 8
push offset Lt_009B
push -1
push offset Lt_01B8
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+20]
push -1
push offset Lt_01B8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_01B8
call fb_StrAssign
add esp, 20
mov eax, dword ptr [Lt_01B8]
mov dword ptr [ebp-4], eax
.L_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01B8,12

.section .text
.balign 16
HEMITSTABN:
push ebp
mov ebp, esp
.L_009D:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMAKESTABN
add esp, 16
push eax
call EMITWRITESTR
add esp, 8
.L_009E:
mov esp, ebp
pop ebp
ret
.balign 16
HEMITSTABD:
push ebp
mov ebp, esp
.L_009F:
push 0
push 8
push offset Lt_00A1
push -1
push offset Lt_01B9
call fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 4
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 20
push -1
push dword ptr [Lt_01B9]
call EMITWRITESTR
add esp, 8
.L_00A0:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01B9,12

.section .text
.balign 16
HSTABLABEL:
push ebp
mov ebp, esp
.L_00A2:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_01BA
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_00A4
push -1
push offset Lt_01BA
call fb_StrConcatAssign
add esp, 20
push 0
push dword ptr [Lt_01BA]
call EMITWRITESTR
add esp, 8
.L_00A3:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01BA,12

.section .text
.balign 16
HDECLARGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_00F7:
cmp dword ptr [ebp-4], 0
je .L_00F8
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .L_00FA
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .L_00FC
push dword ptr [ebp-4]
call EDBGEMITPROCARG
add esp, 4
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .L_00F7
.L_00F8:
.L_00F6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDECLLOCALVARS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.L_010A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .L_010D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .L_010C
.L_010D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.L_010C:
mov dword ptr [Lt_01BB], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_010E:
cmp dword ptr [ebp-8], 0
je .L_010F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-84], ebx
cmp dword ptr [ebp-84], 1
jne .L_0112
.L_0113:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 249860
test eax, eax
jne .L_0115
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16
test ebx, ebx
jne .L_0117
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call EDBGEMITLOCALVAR
add esp, 8
.L_0117:
.L_0116:
.L_0115:
.L_0114:
jmp .L_0110
.L_0112:
cmp dword ptr [ebp-84], 15
jne .L_0118
.L_0119:
inc dword ptr [Lt_01BB]
.L_0118:
.L_0110:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_010E
.L_010F:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00D3
push 0
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
push 0
push 0
push 192
call HEMITSTABN
add esp, 16
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 4
cmp dword ptr [Lt_01BB], 0
jle .L_011E
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.L_011F:
cmp dword ptr [ebp-8], 0
je .L_0120
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 15
jne .L_0122
mov eax, dword ptr [ebp-8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+80]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HDECLLOCALVARS
add esp, 16
.L_0122:
.L_0121:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_011F
.L_0120:
.L_011E:
.L_011D:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 2
push offset Lt_00D3
push 0
push dword ptr [ebp+20]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-80]
push 0
push 0
push 224
call HEMITSTABN
add esp, 16
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 4
.L_010B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01BB,4

.section .text
.balign 16
HDECLPOINTER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_012F:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_01BD
call fb_StrAssign
add esp, 20
.L_0131:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .L_0132
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
push dword ptr [CTX]
call fb_UIntToStr
add esp, 4
push eax
push -1
push offset Lt_01BD
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0133
push -1
push offset Lt_01BD
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTX]
jmp .L_0131
.L_0132:
push 0
push -1
push offset Lt_01BD
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.L_0130:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_01BD,12

.section .text
.balign 16
HGETDATATYPE:
push ebp
mov ebp, esp
sub esp, 92
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0134:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .L_0137
push 0
push -1
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0135
.L_0137:
.L_0136:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0139
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-20], ebx
jmp .L_0138
.L_0139:
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
je .L_013B
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .L_013D
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
.L_013D:
.L_013C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .L_013F
push 0
push -1
push dword ptr [CTX]
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0140
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTX]
cmp dword ptr [ebp+12], 0
jle .L_0142
push 0
push 5
push offset Lt_0143
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0144
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
push eax
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0141
.L_0142:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .L_0147
.L_014A:
push 0
push 5
push offset Lt_0143
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0145
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset Lt_0145
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
.L_0148:
inc dword ptr [ebp-40]
.L_0147:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .L_014A
.L_0149:
.L_0141:
.L_013F:
.L_013E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .L_0150
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-20], ecx
.L_0150:
.L_014F:
.L_013B:
.L_013A:
.L_0138:
cmp dword ptr [ebp-20], 0
jge .L_0152
mov dword ptr [ebp-20], 1
.L_0152:
.L_0151:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .L_0154
push 0
push -1
lea ecx, [ebp-16]
push ecx
call HDECLPOINTER
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0154:
.L_0153:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .L_0156
.L_0158:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+132], -1
jne .L_015A
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HDECLUDT
add esp, 8
.L_015A:
.L_0159:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0155
.L_015C:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .L_015E
push dword ptr [ebp-24]
call HDECLENUM
add esp, 4
.L_015E:
.L_015D:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
jmp .L_0155
.L_0160:
push 0
push -1
push dword ptr [CTX]
call fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset Lt_0161
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
inc dword ptr [CTX]
push 0
push -1
push 0
push dword ptr [ebp-24]
call HGETDATATYPE
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0155
.L_0162:
push 0
push -1
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0155
.L_0163:
push 0
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [REMAPTB+eax*4]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .L_0155
.L_0156:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .L_0163
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_0164+eax*4-40]
.L_0164:
.int .L_015C
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0163
.int .L_0158
.int .L_0163
.int .L_0160
.int .L_0162
.L_0155:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.L_0135:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDECLUDT:
push ebp
mov ebp, esp
sub esp, 168
push ebx
.L_0165:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTX]
mov dword ptr [eax+132], ebx
inc dword ptr [CTX]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 3
push offset Lt_0168
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 4
push eax
push 4
push offset Lt_0167
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.L_016D:
cmp dword ptr [ebp-4], 0
je .L_016E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_0170
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HGETDATATYPE
add esp, 8
push eax
push -1
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
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
cmp dword ptr [ecx+112], 0
jle .L_0174
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-104], ebx
jmp .L_01C0
.L_0174:
mov dword ptr [ebp-104], 0
.L_01C0:
mov ecx, dword ptr [ebp-104]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-168]
adc ebx, dword ptr [ebp-164]
push ebx
push ecx
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_0096
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+112], 0
jle .L_0178
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+112]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-136], ebx
mov dword ptr [ebp-132], ecx
jmp .L_01C1
.L_0178:
push dword ptr [ebp-4]
call SYMBGETREALSIZE
add esp, 4
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-136], eax
mov dword ptr [ebp-132], edx
.L_01C1:
push dword ptr [ebp-132]
push dword ptr [ebp-136]
call fb_LongintToStr
add esp, 8
push eax
push 2
push offset Lt_0096
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0170:
.L_016F:
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_016D
.L_016E:
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push offset Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call HEMITSTABS
add esp, 20
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_0166:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDECLENUM:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.L_017C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTX]
mov dword ptr [eax+100], ebx
inc dword ptr [CTX]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 3
push offset Lt_017F
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 4
push eax
push 3
push offset Lt_017E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 20
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
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call SYMBGETENUMFIRSTELM
add esp, 4
mov dword ptr [ebp-4], eax
.L_0183:
cmp dword ptr [ebp-4], 0
je .L_0184
push 0
push -1
push -1
push 2
push offset Lt_0096
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_LongintToStr
add esp, 8
push eax
push -1
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
call SYMBGETENUMNEXTELM
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0183
.L_0184:
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push offset Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call HEMITSTABS
add esp, 20
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.L_017D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_007A,36
.balign 4
	.lcomm	CTX,296

.section .data
.balign 4
REMAPTB:
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
STABSTB:
.int Lt_007C
.int Lt_007D
.int Lt_007E
.int Lt_007F
.int Lt_0080
.int Lt_0081
.int Lt_0082
.int Lt_0083
.int Lt_0084
.int Lt_0085
.int Lt_0086
.int Lt_0087
.int Lt_0088
.int Lt_0089
.int Lt_008A
.int Lt_008B
.int Lt_008C
.balign 4
Lt_007C:	.ascii	"integer:t1=-1\0"
.balign 4
Lt_007D:	.ascii	"void:t7=-11\0"
.balign 4
Lt_007E:	.ascii	"byte:t2=-6\0"
.balign 4
Lt_007F:	.ascii	"ubyte:t3=-5\0"
.balign 4
Lt_0080:	.ascii	"char:t4=-2\0"
.balign 4
Lt_0081:	.ascii	"short:t5=-3\0"
.balign 4
Lt_0082:	.ascii	"ushort:t6=-7\0"
.balign 4
Lt_0083:	.ascii	"uinteger:t8=-8\0"
.balign 4
Lt_0084:	.ascii	"longint:t9=-31\0"
.balign 4
Lt_0085:	.ascii	"ulongint:t10=-32\0"
.balign 4
Lt_0086:	.ascii	"single:t11=-12\0"
.balign 4
Lt_0087:	.ascii	"double:t12=-13\0"
.balign 4
Lt_0088:	.ascii	"string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;\0"
.balign 4
Lt_0089:	.ascii	"fixstr:t14=-2\0"
.balign 4
Lt_008A:	.ascii	"pchar:t15=*4;\0"
.balign 4
Lt_008B:	.ascii	"boolean:t16=@s8;-16\0"
.balign 4
Lt_008C:	.ascii	"va_list:t17=-11\0"
.balign 4
Lt_0093:	.ascii	"\"\0"
.balign 4
Lt_0094:	.ascii	".stabs \"\0"
.balign 4
Lt_0096:	.ascii	",\0"
.balign 4
Lt_0097:	.ascii	"\",\0"
.balign 4
Lt_009B:	.ascii	".stabn \0"
.balign 4
Lt_00A1:	.ascii	".stabd \0"
.balign 4
Lt_00A4:	.ascii	":\0"
.balign 4
Lt_00AA:	.ascii	".file \"\0"
.balign 4
Lt_00D3:	.ascii	"-\0"
.balign 4
Lt_0106:	.ascii	":F\0"
.balign 4
Lt_0107:	.ascii	":f\0"
.balign 4
Lt_0133:	.ascii	"=*\0"
.balign 4
Lt_0140:	.ascii	"=\0"
.balign 4
Lt_0143:	.ascii	"ar1;\0"
.balign 4
Lt_0144:	.ascii	"0;\0"
.balign 4
Lt_0145:	.ascii	";\0"
.balign 4
Lt_0161:	.ascii	"=f\0"
.balign 4
Lt_0167:	.ascii	":Tt\0"
.balign 4
Lt_0168:	.ascii	"=s\0"
.balign 4
Lt_017E:	.ascii	":T\0"
.balign 4
Lt_017F:	.ascii	"=e\0"
.balign 4
Lt_0197:	.ascii	":G\0"
.balign 4
Lt_0199:	.ascii	":S\0"
.balign 4
Lt_01A6:	.ascii	":V\0"
.balign 4
Lt_01AE:	.ascii	"p\0"
.balign 4
Lt_01AF:	.ascii	"v\0"

.section .ctors
.int fb_ctor__edbg_stab
