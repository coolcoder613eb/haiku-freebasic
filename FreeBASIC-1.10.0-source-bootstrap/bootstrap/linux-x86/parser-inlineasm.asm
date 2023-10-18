	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERINLINEASMADDKEYWORD
PARSERINLINEASMADDKEYWORD:
.type PARSERINLINEASMADDKEYWORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0367:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push 1025
push offset Lt_036B
call fb_StrAssign
add esp, 32
call HINITINLINEASMKEYWORDS
sub esp, 12
push offset Lt_036B
call HISINLINEASMKEYWORD
add esp, 16
test eax, eax
je .L_036A
mov dword ptr [ebp-4], 0
jmp .L_0368
.L_036A:
.L_0369:
sub esp, 8
push offset Lt_036B
push offset INLINEASMKEYWORDS
call HADDASMKEYWORD
add esp, 16
mov dword ptr [ebp-4], -1
.L_0368:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERINLINEASMADDKEYWORD, .-PARSERINLINEASMADDKEYWORD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_036B,1025

.section .text
.balign 16

.globl PARSERGLOBALASMADDKEYWORD
PARSERGLOBALASMADDKEYWORD:
.type PARSERGLOBALASMADDKEYWORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_036C:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push 1025
push offset Lt_0370
call fb_StrAssign
add esp, 32
sub esp, 12
push offset Lt_0370
call PARSERISGLOBALASMKEYWORD
add esp, 16
test eax, eax
je .L_036F
mov dword ptr [ebp-4], 0
jmp .L_036D
.L_036F:
.L_036E:
sub esp, 8
push offset Lt_0370
push offset GLOBALASMKEYWORDS
call HADDASMKEYWORD
add esp, 16
mov dword ptr [ebp-4], -1
.L_036D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERGLOBALASMADDKEYWORD, .-PARSERGLOBALASMADDKEYWORD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0370,1025

.section .text
.balign 16

.globl PARSERISGLOBALASMKEYWORD
PARSERISGLOBALASMKEYWORD:
.type PARSERISGLOBALASMKEYWORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0371:
sub esp, 8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-16]
lea eax, [GLOBALASMKEYWORDS+4]
push eax
call HASHLOOKUP
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
sub esp, 12
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 16
.L_0372:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERISGLOBALASMKEYWORD, .-PARSERISGLOBALASMKEYWORD
.cfi_endproc
.balign 16

.globl PARSERASMINIT
PARSERASMINIT:
.type PARSERASMINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0375:
call HINITGLOBALASMKEYWORDS
.L_0376:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERASMINIT, .-PARSERASMINIT
.cfi_endproc
.balign 16

.globl PARSERASMEND
PARSERASMEND:
.type PARSERASMEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0377:
sub esp, 12
push offset GLOBALASMKEYWORDS
call HASMKEYWORDSEND
add esp, 16
sub esp, 12
push offset INLINEASMKEYWORDS
call HASMKEYWORDSEND
add esp, 16
.L_0378:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size PARSERASMEND, .-PARSERASMEND
.cfi_endproc
.balign 16

.globl CASMCODE
CASMCODE:
.type CASMCODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_0379:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_037B:
sub esp, 12
push 1028
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
jmp .L_037F
.L_0381:
jmp .L_037C
jmp .L_037E
.L_037F:
mov eax, dword ptr [ebp-32]
add eax, 4294967040
cmp eax, 84
ja .L_037E
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_0382+eax*4-1024]
.L_0382:
.int .L_0381
.int .L_0381
.int .L_037E
.int .L_0381
.int .L_0381
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_037E
.int .L_0381
.L_037E:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 1028
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-32], eax
jmp .L_0384
.L_0386:
cmp dword ptr [ebp-28], 466
jne .L_0388
sub esp, 8
push -1
push dword ptr [ebp-28]
call CMATHFUNCT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_038A
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_038C
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
jmp .L_038B
.L_038C:
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.L_038B:
jmp .L_0389
.L_038A:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.L_0389:
jmp .L_0387
.L_0388:
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 4
push 0
push offset Lt_03C3
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call HISINLINEASMKEYWORD
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-48], 0
je .L_038D
sub esp, 8
push 34
lea eax, [ebp-52]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-4], eax
.L_0390:
cmp dword ptr [ebp-4], 0
je .L_0391
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-56], ebx
.L_0392:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 3
je .L_0398
.L_0399:
cmp dword ptr [ebp-60], 7
jne .L_0397
.L_0398:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-8], eax
jmp .L_0391
jmp .L_0395
.L_0397:
cmp dword ptr [ebp-60], 2
jne .L_039A
.L_039B:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-56]
call SYMBGETCONSTVALUEASSTR
add esp, 12
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
jmp .L_0391
jmp .L_0395
.L_039A:
cmp dword ptr [ebp-60], 1
jne .L_039C
.L_039D:
sub esp, 8
push 1
push dword ptr [ebp-4]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_039F
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.L_039F:
.L_039E:
jmp .L_0391
.L_039C:
.L_0395:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-56], ebx
.L_0394:
cmp dword ptr [ebp-56], 0
jne .L_0392
.L_0393:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
jmp .L_0390
.L_0391:
.L_038D:
.L_0387:
jmp .L_0383
.L_03A0:
sub esp, 12
push 0
call CNUMLITERAL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03A2
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
.L_03A2:
.L_03A1:
jmp .L_0383
.L_03A3:
sub esp, 12
push 0
call CSTRLITERAL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03A5
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_03A7
sub esp, 12
push 0
push 2
push offset Lt_03A8
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_03AA
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
push 1025
push offset Lt_03C3
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
jmp .L_03A9
.L_03AA:
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [eax+56]
push 1025
push offset Lt_03C3
call fb_WstrConcatAW
add esp, 12
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 1025
push offset Lt_03C3
call fb_WstrAssignToA
add esp, 16
sub esp, 12
push dword ptr [ebp-52]
call fb_WstrDelete
add esp, 16
.L_03A9:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_03A8
push 1025
push offset Lt_03C3
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
.L_03A7:
.L_03A6:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
.L_03A5:
.L_03A4:
jmp .L_0383
.L_03AE:
cmp dword ptr [ebp-28], 346
jne .L_03B0
.L_03B1:
sub esp, 12
push dword ptr [PARSER+108]
call SYMBGETPROCRESULT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03B3
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
jmp .L_03B2
.L_03B3:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.L_03B2:
jmp .L_03AF
.L_03B0:
cmp dword ptr [ebp-28], 406
jne .L_03B4
.L_03B5:
sub esp, 8
push -1
push dword ptr [ebp-28]
call CTYPECONVEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03B7
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_03B9
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_03C3
call fb_StrAssign
add esp, 32
jmp .L_03B8
.L_03B9:
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.L_03B8:
jmp .L_03B6
.L_03B7:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.L_03B6:
.L_03B4:
.L_03AF:
jmp .L_0383
.L_0384:
cmp dword ptr [ebp-32], 4
ja .L_0383
mov eax, dword ptr [ebp-32]
jmp dword ptr [.L_03BA+eax*4]
.L_03BA:
.int .L_0386
.int .L_03AE
.int .L_0386
.int .L_03A0
.int .L_03A3
.L_0383:
cmp dword ptr [ebp-24], 0
jne .L_03BC
cmp dword ptr [ebp-8], 0
je .L_03BE
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call ASTASMAPPENDSYMB
add esp, 16
mov dword ptr [ebp-20], eax
jmp .L_03BD
.L_03BE:
sub esp, 8
push offset Lt_03C3
push dword ptr [ebp-20]
call ASTASMAPPENDTEXT
add esp, 16
mov dword ptr [ebp-20], eax
.L_03BD:
cmp dword ptr [ebp-16], 0
jne .L_03C0
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_03C0:
.L_03BF:
.L_03BC:
.L_03BB:
sub esp, 12
push 1028
call LEXSKIPTOKEN
add esp, 16
.L_037D:
jmp .L_037B
.L_037C:
cmp dword ptr [ebp-16], 0
je .L_03C2
sub esp, 12
push dword ptr [ebp-16]
call ASTNEWASM
add esp, 4
push eax
call ASTADD
add esp, 16
.L_03C2:
.L_03C1:
.L_037A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASMCODE, .-CASMCODE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_03C3,1025

.section .text
.balign 16

.globl CASMBLOCK
CASMBLOCK:
.type CASMBLOCK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03C5:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 344
je .L_03C8
jmp .L_03C6
.L_03C8:
.L_03C7:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_03CA
sub esp, 4
push 0
push -1
push 344
call HSKIPCOMPOUND
add esp, 16
jmp .L_03C6
.L_03CA:
.L_03C9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call CCOMMENT
add esp, 16
test eax, eax
je .L_03CC
cmp dword ptr [ENV+148], 0
je .L_03CE
cmp dword ptr [ENV+900], 0
jne .L_03D0
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_03D0:
.L_03CF:
.L_03CE:
.L_03CD:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_03D2
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.L_03D2:
.L_03D1:
jmp .L_03CB
.L_03CC:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .L_03D4
mov dword ptr [ebp-8], -1
.L_03D4:
.L_03D3:
.L_03CB:
.L_03D5:
cmp dword ptr [ebp-8], 0
jne .L_03D9
sub esp, 12
sub esp, 8
push dword ptr [ENV+568]
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
push 113
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
.L_03D9:
.L_03D8:
call CASMCODE
sub esp, 12
push 1028
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .L_03DB
cmp dword ptr [ENV+900], 0
jne .L_03DD
sub esp, 12
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+49400]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRRESET
add esp, 16
.L_03DD:
.L_03DC:
.L_03DB:
.L_03DA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 257
jne .L_03E0
.L_03E1:
cmp dword ptr [ebp-8], 0
je .L_03E3
jmp .L_03D6
.L_03E3:
.L_03E2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_03DE
.L_03E0:
cmp dword ptr [ebp-12], 256
jne .L_03E4
.L_03E5:
jmp .L_03D6
jmp .L_03DE
.L_03E4:
cmp dword ptr [ebp-12], 340
jne .L_03E6
.L_03E7:
jmp .L_03D6
jmp .L_03DE
.L_03E6:
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.L_03E8:
.L_03DE:
cmp dword ptr [ebp-8], 0
jne .L_03EA
sub esp, 12
sub esp, 8
push 0
push 0
push 114
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
.L_03EA:
.L_03E9:
.L_03D7:
jmp .L_03D5
.L_03D6:
cmp dword ptr [ebp-8], 0
jne .L_03EC
sub esp, 8
push 2048
push 340
call HMATCH
add esp, 16
test eax, eax
jne .L_03EE
sub esp, 4
push 0
push 0
push 45
call ERRREPORT
add esp, 16
jmp .L_03ED
.L_03EE:
sub esp, 8
push 2048
push 344
call HMATCH
add esp, 16
test eax, eax
jne .L_03F0
sub esp, 4
push 0
push 0
push 45
call ERRREPORT
add esp, 16
.L_03F0:
.L_03EF:
.L_03ED:
.L_03EC:
.L_03EB:
mov dword ptr [ebp-4], -1
.L_03C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CASMBLOCK, .-CASMBLOCK
.cfi_endproc
.balign 16
fb_ctor__parserzinlineasm:
.type fb_ctor__parserzinlineasm, @function
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
.size fb_ctor__parserzinlineasm, .-fb_ctor__parserzinlineasm
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
HINITINLINEASMKEYWORDS:
.type HINITINLINEASMKEYWORDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0344:
cmp dword ptr [INLINEASMKEYWORDS], 0
jne .L_0347
push -1
push 4
push 8
lea eax, [INLINEASMKEYWORDS+16]
push eax
call LISTINIT
add esp, 16
sub esp, 4
push 0
push 800
lea eax, [INLINEASMKEYWORDS+4]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-4], 0
.L_034B:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [INLINEASMKEYWORDSX86+eax*4]
lea eax, [INLINEASMKEYWORDS+4]
push eax
call HASHADD
add esp, 16
.L_0349:
inc dword ptr [ebp-4]
.L_0348:
cmp dword ptr [ebp-4], 555
jle .L_034B
.L_034A:
mov dword ptr [ebp-4], 0
.L_034F:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [GLOBALASMKEYWORDSX86+eax*4]
lea eax, [INLINEASMKEYWORDS+4]
push eax
call HASHADD
add esp, 16
.L_034D:
inc dword ptr [ebp-4]
.L_034C:
cmp dword ptr [ebp-4], 176
jle .L_034F
.L_034E:
mov dword ptr [INLINEASMKEYWORDS], -1
.L_0347:
.L_0346:
.L_0345:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINITINLINEASMKEYWORDS, .-HINITINLINEASMKEYWORDS
.cfi_endproc
.balign 16
HINITGLOBALASMKEYWORDS:
.type HINITGLOBALASMKEYWORDS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0350:
cmp dword ptr [GLOBALASMKEYWORDS], 0
jne .L_0353
push -1
push 4
push 8
lea eax, [GLOBALASMKEYWORDS+16]
push eax
call LISTINIT
add esp, 16
sub esp, 4
push 0
push 200
lea eax, [GLOBALASMKEYWORDS+4]
push eax
call HASHINIT
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0357
.L_0358:
cmp dword ptr [ebp-4], 1
jne .L_0356
.L_0357:
mov dword ptr [ebp-8], 0
.L_035C:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-8]
push dword ptr [GLOBALASMKEYWORDSX86+eax*4]
lea eax, [GLOBALASMKEYWORDS+4]
push eax
call HASHADD
add esp, 16
.L_035A:
inc dword ptr [ebp-8]
.L_0359:
cmp dword ptr [ebp-8], 176
jle .L_035C
.L_035B:
.L_0356:
.L_0354:
mov dword ptr [GLOBALASMKEYWORDS], -1
.L_0353:
.L_0352:
.L_0351:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HINITGLOBALASMKEYWORDS, .-HINITGLOBALASMKEYWORDS
.cfi_endproc
.balign 16
HASMKEYWORDSEND:
.type HASMKEYWORDSEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_035D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0360
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call HASHEND
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_0361:
cmp dword ptr [ebp-4], 0
je .L_0362
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call free
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0361
.L_0362:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call LISTEND
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
.L_0360:
.L_035F:
.L_035E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HASMKEYWORDSEND, .-HASMKEYWORDSEND
.cfi_endproc
.balign 16
HISINLINEASMKEYWORD:
.type HISINLINEASMKEYWORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0363:
call HINITINLINEASMKEYWORDS
sub esp, 8
push dword ptr [ebp+8]
lea eax, [INLINEASMKEYWORDS+4]
push eax
call HASHLOOKUP
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0364:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HISINLINEASMKEYWORD, .-HISINLINEASMKEYWORD
.cfi_endproc
.balign 16
HADDASMKEYWORD:
.type HADDASMKEYWORD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0365:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 1
sub esp, 12
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
mov ebx, eax
push ebx
call calloc
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call fb_StrAssign
add esp, 32
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call HASHADD
add esp, 16
.L_0366:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HADDASMKEYWORD, .-HADDASMKEYWORD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
INLINEASMKEYWORDSX86:
.int Lt_0066
.int Lt_0067
.int Lt_0068
.int Lt_0069
.int Lt_006A
.int Lt_006B
.int Lt_006C
.int Lt_006D
.int Lt_006E
.int Lt_006F
.int Lt_0070
.int Lt_0071
.int Lt_0072
.int Lt_0073
.int Lt_0074
.int Lt_0075
.int Lt_0076
.int Lt_0077
.int Lt_0078
.int Lt_0079
.int Lt_007A
.int Lt_007B
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
.int Lt_008D
.int Lt_008E
.int Lt_008F
.int Lt_0090
.int Lt_0091
.int Lt_0092
.int Lt_0093
.int Lt_0094
.int Lt_0095
.int Lt_0096
.int Lt_0097
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
.int Lt_0147
.int Lt_0148
.int Lt_0149
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_014F
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0153
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
.int Lt_01E1
.int Lt_01E2
.int Lt_01E3
.int Lt_01E4
.int Lt_01E5
.int Lt_01E6
.int Lt_01E7
.int Lt_01E8
.int Lt_01E9
.int Lt_01EA
.int Lt_01EB
.int Lt_01EC
.int Lt_01ED
.int Lt_01EE
.int Lt_01EF
.int Lt_01F0
.int Lt_01F1
.int Lt_01F2
.int Lt_01F3
.int Lt_01F4
.int Lt_01F5
.int Lt_01F6
.int Lt_01F7
.int Lt_01F8
.int Lt_01F9
.int Lt_01FA
.int Lt_01FB
.int Lt_01FC
.int Lt_01FD
.int Lt_01FE
.int Lt_01FF
.int Lt_0200
.int Lt_0201
.int Lt_0202
.int Lt_0203
.int Lt_0204
.int Lt_0205
.int Lt_0206
.int Lt_0207
.int Lt_0208
.int Lt_0209
.int Lt_020A
.int Lt_020B
.int Lt_020C
.int Lt_020D
.int Lt_020E
.int Lt_020F
.int Lt_0210
.int Lt_0211
.int Lt_0212
.int Lt_0213
.int Lt_0214
.int Lt_0215
.int Lt_0216
.int Lt_0217
.int Lt_0218
.int Lt_0219
.int Lt_021A
.int Lt_021B
.int Lt_021C
.int Lt_021D
.int Lt_021E
.int Lt_021F
.int Lt_0220
.int Lt_0221
.int Lt_0222
.int Lt_0223
.int Lt_0224
.int Lt_0225
.int Lt_0226
.int Lt_0227
.int Lt_0228
.int Lt_0229
.int Lt_022A
.int Lt_022B
.int Lt_022C
.int Lt_022D
.int Lt_022E
.int Lt_022F
.int Lt_0230
.int Lt_0231
.int Lt_0232
.int Lt_0233
.int Lt_0234
.int Lt_0235
.int Lt_0236
.int Lt_0237
.int Lt_0238
.int Lt_0239
.int Lt_023A
.int Lt_023B
.int Lt_023C
.int Lt_023D
.int Lt_023E
.int Lt_023F
.int Lt_0240
.int Lt_0241
.int Lt_0242
.int Lt_0243
.int Lt_0244
.int Lt_0245
.int Lt_0246
.int Lt_0247
.int Lt_0248
.int Lt_0249
.int Lt_024A
.int Lt_024B
.int Lt_024C
.int Lt_024D
.int Lt_024E
.int Lt_024F
.int Lt_0250
.int Lt_0251
.int Lt_0252
.int Lt_0253
.int Lt_0254
.int Lt_0255
.int Lt_0256
.int Lt_0257
.int Lt_0258
.int Lt_0259
.int Lt_025A
.int Lt_025B
.int Lt_025C
.int Lt_025D
.int Lt_025E
.int Lt_025F
.int Lt_0260
.int Lt_0261
.int Lt_0262
.int Lt_0263
.int Lt_0264
.int Lt_0265
.int Lt_0266
.int Lt_0267
.int Lt_0268
.int Lt_0269
.int Lt_026A
.int Lt_026B
.int Lt_026C
.int Lt_026D
.int Lt_026E
.int Lt_026F
.int Lt_0270
.int Lt_0271
.int Lt_0272
.int Lt_0273
.int Lt_0274
.int Lt_0275
.int Lt_0276
.int Lt_0277
.int Lt_0278
.int Lt_0279
.int Lt_027A
.int Lt_027B
.int Lt_027C
.int Lt_027D
.int Lt_027E
.int Lt_027F
.int Lt_0280
.int Lt_0281
.int Lt_0282
.int Lt_0283
.int Lt_0284
.int Lt_0285
.int Lt_0286
.int Lt_0287
.int Lt_0288
.int Lt_0289
.int Lt_028A
.int Lt_028B
.int Lt_028C
.int Lt_028D
.int Lt_028E
.int Lt_028F
.int Lt_0290

.section .rodata
.balign 4
Lt_0066:	.ascii	"byte\0"
.balign 4
Lt_0067:	.ascii	"ptr\0"
.balign 4
Lt_0068:	.ascii	"offset\0"
.balign 4
Lt_0069:	.ascii	"aaa\0"
.balign 4
Lt_006A:	.ascii	"aad\0"
.balign 4
Lt_006B:	.ascii	"aam\0"
.balign 4
Lt_006C:	.ascii	"aas\0"
.balign 4
Lt_006D:	.ascii	"adc\0"
.balign 4
Lt_006E:	.ascii	"add\0"
.balign 4
Lt_006F:	.ascii	"addpd\0"
.balign 4
Lt_0070:	.ascii	"addps\0"
.balign 4
Lt_0071:	.ascii	"addsd\0"
.balign 4
Lt_0072:	.ascii	"addss\0"
.balign 4
Lt_0073:	.ascii	"and\0"
.balign 4
Lt_0074:	.ascii	"andpd\0"
.balign 4
Lt_0075:	.ascii	"andps\0"
.balign 4
Lt_0076:	.ascii	"andnpd\0"
.balign 4
Lt_0077:	.ascii	"andnps\0"
.balign 4
Lt_0078:	.ascii	"arpl\0"
.balign 4
Lt_0079:	.ascii	"bound\0"
.balign 4
Lt_007A:	.ascii	"bsf\0"
.balign 4
Lt_007B:	.ascii	"bsr\0"
.balign 4
Lt_007C:	.ascii	"bswap\0"
.balign 4
Lt_007D:	.ascii	"bt\0"
.balign 4
Lt_007E:	.ascii	"btc\0"
.balign 4
Lt_007F:	.ascii	"btr\0"
.balign 4
Lt_0080:	.ascii	"bts\0"
.balign 4
Lt_0081:	.ascii	"call\0"
.balign 4
Lt_0082:	.ascii	"cbw\0"
.balign 4
Lt_0083:	.ascii	"cwde\0"
.balign 4
Lt_0084:	.ascii	"cdq\0"
.balign 4
Lt_0085:	.ascii	"clc\0"
.balign 4
Lt_0086:	.ascii	"cld\0"
.balign 4
Lt_0087:	.ascii	"clflush\0"
.balign 4
Lt_0088:	.ascii	"cli\0"
.balign 4
Lt_0089:	.ascii	"clts\0"
.balign 4
Lt_008A:	.ascii	"cmc\0"
.balign 4
Lt_008B:	.ascii	"cmova\0"
.balign 4
Lt_008C:	.ascii	"cmovae\0"
.balign 4
Lt_008D:	.ascii	"cmovb\0"
.balign 4
Lt_008E:	.ascii	"cmovbe\0"
.balign 4
Lt_008F:	.ascii	"cmovc\0"
.balign 4
Lt_0090:	.ascii	"cmove\0"
.balign 4
Lt_0091:	.ascii	"cmovg\0"
.balign 4
Lt_0092:	.ascii	"cmovge\0"
.balign 4
Lt_0093:	.ascii	"cmovl\0"
.balign 4
Lt_0094:	.ascii	"cmovle\0"
.balign 4
Lt_0095:	.ascii	"cmovna\0"
.balign 4
Lt_0096:	.ascii	"cmovnae\0"
.balign 4
Lt_0097:	.ascii	"cmovnb\0"
.balign 4
Lt_0098:	.ascii	"cmovnbe\0"
.balign 4
Lt_0099:	.ascii	"cmovnc\0"
.balign 4
Lt_009A:	.ascii	"cmovne\0"
.balign 4
Lt_009B:	.ascii	"cmovng\0"
.balign 4
Lt_009C:	.ascii	"cmovnge\0"
.balign 4
Lt_009D:	.ascii	"cmovnl\0"
.balign 4
Lt_009E:	.ascii	"cmovnle\0"
.balign 4
Lt_009F:	.ascii	"cmovno\0"
.balign 4
Lt_00A0:	.ascii	"cmovnp\0"
.balign 4
Lt_00A1:	.ascii	"cmovns\0"
.balign 4
Lt_00A2:	.ascii	"cmovnz\0"
.balign 4
Lt_00A3:	.ascii	"cmovo\0"
.balign 4
Lt_00A4:	.ascii	"cmovp\0"
.balign 4
Lt_00A5:	.ascii	"cmovpe\0"
.balign 4
Lt_00A6:	.ascii	"cmovpo\0"
.balign 4
Lt_00A7:	.ascii	"cmovs\0"
.balign 4
Lt_00A8:	.ascii	"cmovz\0"
.balign 4
Lt_00A9:	.ascii	"cmp\0"
.balign 4
Lt_00AA:	.ascii	"cmppd\0"
.balign 4
Lt_00AB:	.ascii	"cmpps\0"
.balign 4
Lt_00AC:	.ascii	"cmps\0"
.balign 4
Lt_00AD:	.ascii	"cmpsb\0"
.balign 4
Lt_00AE:	.ascii	"cmpsw\0"
.balign 4
Lt_00AF:	.ascii	"cmpsd\0"
.balign 4
Lt_00B0:	.ascii	"cmpss\0"
.balign 4
Lt_00B1:	.ascii	"cmpxchg\0"
.balign 4
Lt_00B2:	.ascii	"cmpxchg8b\0"
.balign 4
Lt_00B3:	.ascii	"comisd\0"
.balign 4
Lt_00B4:	.ascii	"comiss\0"
.balign 4
Lt_00B5:	.ascii	"cpuid\0"
.balign 4
Lt_00B6:	.ascii	"cvtdq2pd\0"
.balign 4
Lt_00B7:	.ascii	"cvtdq2ps\0"
.balign 4
Lt_00B8:	.ascii	"cvtpd2dq\0"
.balign 4
Lt_00B9:	.ascii	"cvtpd2pi\0"
.balign 4
Lt_00BA:	.ascii	"cvtpd2ps\0"
.balign 4
Lt_00BB:	.ascii	"cvtpi2pd\0"
.balign 4
Lt_00BC:	.ascii	"cvtpi2ps\0"
.balign 4
Lt_00BD:	.ascii	"cvtps2dq\0"
.balign 4
Lt_00BE:	.ascii	"cvtps2pd\0"
.balign 4
Lt_00BF:	.ascii	"cvtps2pi\0"
.balign 4
Lt_00C0:	.ascii	"cvtsd2si\0"
.balign 4
Lt_00C1:	.ascii	"cvtsd2ss\0"
.balign 4
Lt_00C2:	.ascii	"cvtsi2sd\0"
.balign 4
Lt_00C3:	.ascii	"cvtsi2ss\0"
.balign 4
Lt_00C4:	.ascii	"cvtss2sd\0"
.balign 4
Lt_00C5:	.ascii	"cvtss2si\0"
.balign 4
Lt_00C6:	.ascii	"cvttpd2pi\0"
.balign 4
Lt_00C7:	.ascii	"cvttpd2dq\0"
.balign 4
Lt_00C8:	.ascii	"cvttps2dq\0"
.balign 4
Lt_00C9:	.ascii	"cvttps2pi\0"
.balign 4
Lt_00CA:	.ascii	"cvttsd2si\0"
.balign 4
Lt_00CB:	.ascii	"cvttss2si\0"
.balign 4
Lt_00CC:	.ascii	"cwd\0"
.balign 4
Lt_00CD:	.ascii	"daa\0"
.balign 4
Lt_00CE:	.ascii	"das\0"
.balign 4
Lt_00CF:	.ascii	"dec\0"
.balign 4
Lt_00D0:	.ascii	"div\0"
.balign 4
Lt_00D1:	.ascii	"divpd\0"
.balign 4
Lt_00D2:	.ascii	"divps\0"
.balign 4
Lt_00D3:	.ascii	"divss\0"
.balign 4
Lt_00D4:	.ascii	"emms\0"
.balign 4
Lt_00D5:	.ascii	"enter\0"
.balign 4
Lt_00D6:	.ascii	"f2xm1\0"
.balign 4
Lt_00D7:	.ascii	"fabs\0"
.balign 4
Lt_00D8:	.ascii	"fadd\0"
.balign 4
Lt_00D9:	.ascii	"faddp\0"
.balign 4
Lt_00DA:	.ascii	"fiadd\0"
.balign 4
Lt_00DB:	.ascii	"fbld\0"
.balign 4
Lt_00DC:	.ascii	"fbstp\0"
.balign 4
Lt_00DD:	.ascii	"fchs\0"
.balign 4
Lt_00DE:	.ascii	"fclex\0"
.balign 4
Lt_00DF:	.ascii	"fnclex\0"
.balign 4
Lt_00E0:	.ascii	"fcmovb\0"
.balign 4
Lt_00E1:	.ascii	"fcmove\0"
.balign 4
Lt_00E2:	.ascii	"fcmovbe\0"
.balign 4
Lt_00E3:	.ascii	"fcmovu\0"
.balign 4
Lt_00E4:	.ascii	"fcmovnb\0"
.balign 4
Lt_00E5:	.ascii	"fcmovne\0"
.balign 4
Lt_00E6:	.ascii	"fcmovnbe\0"
.balign 4
Lt_00E7:	.ascii	"fcmovnu\0"
.balign 4
Lt_00E8:	.ascii	"fcom\0"
.balign 4
Lt_00E9:	.ascii	"fcomp\0"
.balign 4
Lt_00EA:	.ascii	"fcompp\0"
.balign 4
Lt_00EB:	.ascii	"fcomi\0"
.balign 4
Lt_00EC:	.ascii	"fcomip\0"
.balign 4
Lt_00ED:	.ascii	"fucomi\0"
.balign 4
Lt_00EE:	.ascii	"fucomip\0"
.balign 4
Lt_00EF:	.ascii	"fcos\0"
.balign 4
Lt_00F0:	.ascii	"fdecstp\0"
.balign 4
Lt_00F1:	.ascii	"fdiv\0"
.balign 4
Lt_00F2:	.ascii	"fdivp\0"
.balign 4
Lt_00F3:	.ascii	"fidiv\0"
.balign 4
Lt_00F4:	.ascii	"fdivr\0"
.balign 4
Lt_00F5:	.ascii	"fdivrp\0"
.balign 4
Lt_00F6:	.ascii	"fidivr\0"
.balign 4
Lt_00F7:	.ascii	"ffree\0"
.balign 4
Lt_00F8:	.ascii	"ficom\0"
.balign 4
Lt_00F9:	.ascii	"ficomp\0"
.balign 4
Lt_00FA:	.ascii	"fild\0"
.balign 4
Lt_00FB:	.ascii	"fincstp\0"
.balign 4
Lt_00FC:	.ascii	"finit\0"
.balign 4
Lt_00FD:	.ascii	"fninit\0"
.balign 4
Lt_00FE:	.ascii	"fist\0"
.balign 4
Lt_00FF:	.ascii	"fistp\0"
.balign 4
Lt_0100:	.ascii	"fld\0"
.balign 4
Lt_0101:	.ascii	"fld1\0"
.balign 4
Lt_0102:	.ascii	"fldl2t\0"
.balign 4
Lt_0103:	.ascii	"fldl2e\0"
.balign 4
Lt_0104:	.ascii	"fldpi\0"
.balign 4
Lt_0105:	.ascii	"fldlg2\0"
.balign 4
Lt_0106:	.ascii	"fldln2\0"
.balign 4
Lt_0107:	.ascii	"fldz\0"
.balign 4
Lt_0108:	.ascii	"fldcw\0"
.balign 4
Lt_0109:	.ascii	"fldenv\0"
.balign 4
Lt_010A:	.ascii	"fmul\0"
.balign 4
Lt_010B:	.ascii	"fmulp\0"
.balign 4
Lt_010C:	.ascii	"fimul\0"
.balign 4
Lt_010D:	.ascii	"fnop\0"
.balign 4
Lt_010E:	.ascii	"fpatan\0"
.balign 4
Lt_010F:	.ascii	"fprem\0"
.balign 4
Lt_0110:	.ascii	"fprem1\0"
.balign 4
Lt_0111:	.ascii	"fptan\0"
.balign 4
Lt_0112:	.ascii	"frndint\0"
.balign 4
Lt_0113:	.ascii	"frstor\0"
.balign 4
Lt_0114:	.ascii	"fsave\0"
.balign 4
Lt_0115:	.ascii	"fnsave\0"
.balign 4
Lt_0116:	.ascii	"fscale\0"
.balign 4
Lt_0117:	.ascii	"fsin\0"
.balign 4
Lt_0118:	.ascii	"fsincos\0"
.balign 4
Lt_0119:	.ascii	"fsqrt\0"
.balign 4
Lt_011A:	.ascii	"fst\0"
.balign 4
Lt_011B:	.ascii	"fstp\0"
.balign 4
Lt_011C:	.ascii	"fstcw\0"
.balign 4
Lt_011D:	.ascii	"fnstcw\0"
.balign 4
Lt_011E:	.ascii	"fstenv\0"
.balign 4
Lt_011F:	.ascii	"fnstenv\0"
.balign 4
Lt_0120:	.ascii	"fstsw\0"
.balign 4
Lt_0121:	.ascii	"fnstsw\0"
.balign 4
Lt_0122:	.ascii	"fsub\0"
.balign 4
Lt_0123:	.ascii	"fsubp\0"
.balign 4
Lt_0124:	.ascii	"fisub\0"
.balign 4
Lt_0125:	.ascii	"fsubr\0"
.balign 4
Lt_0126:	.ascii	"fsubrp\0"
.balign 4
Lt_0127:	.ascii	"fisubr\0"
.balign 4
Lt_0128:	.ascii	"ftst\0"
.balign 4
Lt_0129:	.ascii	"fucom\0"
.balign 4
Lt_012A:	.ascii	"fucomp\0"
.balign 4
Lt_012B:	.ascii	"fucompp\0"
.balign 4
Lt_012C:	.ascii	"fwait\0"
.balign 4
Lt_012D:	.ascii	"fxam\0"
.balign 4
Lt_012E:	.ascii	"fxch\0"
.balign 4
Lt_012F:	.ascii	"fxrstor\0"
.balign 4
Lt_0130:	.ascii	"fxsave\0"
.balign 4
Lt_0131:	.ascii	"fxtract\0"
.balign 4
Lt_0132:	.ascii	"fyl2x\0"
.balign 4
Lt_0133:	.ascii	"fyl2xp1\0"
.balign 4
Lt_0134:	.ascii	"hlt\0"
.balign 4
Lt_0135:	.ascii	"idiv\0"
.balign 4
Lt_0136:	.ascii	"imul\0"
.balign 4
Lt_0137:	.ascii	"in\0"
.balign 4
Lt_0138:	.ascii	"inc\0"
.balign 4
Lt_0139:	.ascii	"ins\0"
.balign 4
Lt_013A:	.ascii	"insb\0"
.balign 4
Lt_013B:	.ascii	"insw\0"
.balign 4
Lt_013C:	.ascii	"insd\0"
.balign 4
Lt_013D:	.ascii	"int\0"
.balign 4
Lt_013E:	.ascii	"into\0"
.balign 4
Lt_013F:	.ascii	"invd\0"
.balign 4
Lt_0140:	.ascii	"invlpg\0"
.balign 4
Lt_0141:	.ascii	"iret\0"
.balign 4
Lt_0142:	.ascii	"iretd\0"
.balign 4
Lt_0143:	.ascii	"ja\0"
.balign 4
Lt_0144:	.ascii	"jae\0"
.balign 4
Lt_0145:	.ascii	"jb\0"
.balign 4
Lt_0146:	.ascii	"jbe\0"
.balign 4
Lt_0147:	.ascii	"jc\0"
.balign 4
Lt_0148:	.ascii	"jcxz\0"
.balign 4
Lt_0149:	.ascii	"jecxz\0"
.balign 4
Lt_014A:	.ascii	"je\0"
.balign 4
Lt_014B:	.ascii	"jg\0"
.balign 4
Lt_014C:	.ascii	"jge\0"
.balign 4
Lt_014D:	.ascii	"jl\0"
.balign 4
Lt_014E:	.ascii	"jle\0"
.balign 4
Lt_014F:	.ascii	"jna\0"
.balign 4
Lt_0150:	.ascii	"jnae\0"
.balign 4
Lt_0151:	.ascii	"jnb\0"
.balign 4
Lt_0152:	.ascii	"jnbe\0"
.balign 4
Lt_0153:	.ascii	"jnc\0"
.balign 4
Lt_0154:	.ascii	"jne\0"
.balign 4
Lt_0155:	.ascii	"jng\0"
.balign 4
Lt_0156:	.ascii	"jnge\0"
.balign 4
Lt_0157:	.ascii	"jnl\0"
.balign 4
Lt_0158:	.ascii	"jnle\0"
.balign 4
Lt_0159:	.ascii	"jno\0"
.balign 4
Lt_015A:	.ascii	"jnp\0"
.balign 4
Lt_015B:	.ascii	"jns\0"
.balign 4
Lt_015C:	.ascii	"jnz\0"
.balign 4
Lt_015D:	.ascii	"jo\0"
.balign 4
Lt_015E:	.ascii	"jp\0"
.balign 4
Lt_015F:	.ascii	"jpe\0"
.balign 4
Lt_0160:	.ascii	"jpo\0"
.balign 4
Lt_0161:	.ascii	"js\0"
.balign 4
Lt_0162:	.ascii	"jz\0"
.balign 4
Lt_0163:	.ascii	"jmp\0"
.balign 4
Lt_0164:	.ascii	"lahf\0"
.balign 4
Lt_0165:	.ascii	"lar\0"
.balign 4
Lt_0166:	.ascii	"ldmxcsr\0"
.balign 4
Lt_0167:	.ascii	"lds\0"
.balign 4
Lt_0168:	.ascii	"les\0"
.balign 4
Lt_0169:	.ascii	"lfs\0"
.balign 4
Lt_016A:	.ascii	"lgs\0"
.balign 4
Lt_016B:	.ascii	"lss\0"
.balign 4
Lt_016C:	.ascii	"lea\0"
.balign 4
Lt_016D:	.ascii	"leave\0"
.balign 4
Lt_016E:	.ascii	"lfence\0"
.balign 4
Lt_016F:	.ascii	"lgdt\0"
.balign 4
Lt_0170:	.ascii	"lidt\0"
.balign 4
Lt_0171:	.ascii	"lldt\0"
.balign 4
Lt_0172:	.ascii	"lmsw\0"
.balign 4
Lt_0173:	.ascii	"lock\0"
.balign 4
Lt_0174:	.ascii	"lods\0"
.balign 4
Lt_0175:	.ascii	"lodsb\0"
.balign 4
Lt_0176:	.ascii	"lodsw\0"
.balign 4
Lt_0177:	.ascii	"lodsd\0"
.balign 4
Lt_0178:	.ascii	"loop\0"
.balign 4
Lt_0179:	.ascii	"loope\0"
.balign 4
Lt_017A:	.ascii	"loopz\0"
.balign 4
Lt_017B:	.ascii	"loopne\0"
.balign 4
Lt_017C:	.ascii	"loopnz\0"
.balign 4
Lt_017D:	.ascii	"lsl\0"
.balign 4
Lt_017E:	.ascii	"ltr\0"
.balign 4
Lt_017F:	.ascii	"maskmovdqu\0"
.balign 4
Lt_0180:	.ascii	"maskmovq\0"
.balign 4
Lt_0181:	.ascii	"maxpd\0"
.balign 4
Lt_0182:	.ascii	"maxps\0"
.balign 4
Lt_0183:	.ascii	"maxsd\0"
.balign 4
Lt_0184:	.ascii	"maxss\0"
.balign 4
Lt_0185:	.ascii	"mfence\0"
.balign 4
Lt_0186:	.ascii	"minpd\0"
.balign 4
Lt_0187:	.ascii	"minps\0"
.balign 4
Lt_0188:	.ascii	"minsd\0"
.balign 4
Lt_0189:	.ascii	"minss\0"
.balign 4
Lt_018A:	.ascii	"mov\0"
.balign 4
Lt_018B:	.ascii	"movapd\0"
.balign 4
Lt_018C:	.ascii	"movaps\0"
.balign 4
Lt_018D:	.ascii	"movd\0"
.balign 4
Lt_018E:	.ascii	"movdqa\0"
.balign 4
Lt_018F:	.ascii	"movdqu\0"
.balign 4
Lt_0190:	.ascii	"movdq2q\0"
.balign 4
Lt_0191:	.ascii	"movhlps\0"
.balign 4
Lt_0192:	.ascii	"movhpd\0"
.balign 4
Lt_0193:	.ascii	"movhps\0"
.balign 4
Lt_0194:	.ascii	"movlhps\0"
.balign 4
Lt_0195:	.ascii	"movlpd\0"
.balign 4
Lt_0196:	.ascii	"movlps\0"
.balign 4
Lt_0197:	.ascii	"movmskpd\0"
.balign 4
Lt_0198:	.ascii	"movmskps\0"
.balign 4
Lt_0199:	.ascii	"movntdq\0"
.balign 4
Lt_019A:	.ascii	"movnti\0"
.balign 4
Lt_019B:	.ascii	"movntpd\0"
.balign 4
Lt_019C:	.ascii	"movntps\0"
.balign 4
Lt_019D:	.ascii	"movntq\0"
.balign 4
Lt_019E:	.ascii	"movq\0"
.balign 4
Lt_019F:	.ascii	"movq2dq\0"
.balign 4
Lt_01A0:	.ascii	"movs\0"
.balign 4
Lt_01A1:	.ascii	"movsb\0"
.balign 4
Lt_01A2:	.ascii	"movsw\0"
.balign 4
Lt_01A3:	.ascii	"movsd\0"
.balign 4
Lt_01A4:	.ascii	"movss\0"
.balign 4
Lt_01A5:	.ascii	"movsx\0"
.balign 4
Lt_01A6:	.ascii	"movupd\0"
.balign 4
Lt_01A7:	.ascii	"movups\0"
.balign 4
Lt_01A8:	.ascii	"movzx\0"
.balign 4
Lt_01A9:	.ascii	"mul\0"
.balign 4
Lt_01AA:	.ascii	"mulpd\0"
.balign 4
Lt_01AB:	.ascii	"mulps\0"
.balign 4
Lt_01AC:	.ascii	"mulsd\0"
.balign 4
Lt_01AD:	.ascii	"mulss\0"
.balign 4
Lt_01AE:	.ascii	"neg\0"
.balign 4
Lt_01AF:	.ascii	"nop\0"
.balign 4
Lt_01B0:	.ascii	"not\0"
.balign 4
Lt_01B1:	.ascii	"or\0"
.balign 4
Lt_01B2:	.ascii	"orpd\0"
.balign 4
Lt_01B3:	.ascii	"orps\0"
.balign 4
Lt_01B4:	.ascii	"out\0"
.balign 4
Lt_01B5:	.ascii	"outs\0"
.balign 4
Lt_01B6:	.ascii	"outsb\0"
.balign 4
Lt_01B7:	.ascii	"outsw\0"
.balign 4
Lt_01B8:	.ascii	"outsd\0"
.balign 4
Lt_01B9:	.ascii	"packsswb\0"
.balign 4
Lt_01BA:	.ascii	"packssdw\0"
.balign 4
Lt_01BB:	.ascii	"packuswb\0"
.balign 4
Lt_01BC:	.ascii	"paddb\0"
.balign 4
Lt_01BD:	.ascii	"paddw\0"
.balign 4
Lt_01BE:	.ascii	"paddd\0"
.balign 4
Lt_01BF:	.ascii	"paddq\0"
.balign 4
Lt_01C0:	.ascii	"paddsb\0"
.balign 4
Lt_01C1:	.ascii	"paddsw\0"
.balign 4
Lt_01C2:	.ascii	"paddusb\0"
.balign 4
Lt_01C3:	.ascii	"paddusw\0"
.balign 4
Lt_01C4:	.ascii	"pand\0"
.balign 4
Lt_01C5:	.ascii	"pandn\0"
.balign 4
Lt_01C6:	.ascii	"pause\0"
.balign 4
Lt_01C7:	.ascii	"pavgb\0"
.balign 4
Lt_01C8:	.ascii	"pavgw\0"
.balign 4
Lt_01C9:	.ascii	"pcmpeqb\0"
.balign 4
Lt_01CA:	.ascii	"pcmpeqw\0"
.balign 4
Lt_01CB:	.ascii	"pcmpeqd\0"
.balign 4
Lt_01CC:	.ascii	"pcmpgtb\0"
.balign 4
Lt_01CD:	.ascii	"pcmpgtw\0"
.balign 4
Lt_01CE:	.ascii	"pcmpgtd\0"
.balign 4
Lt_01CF:	.ascii	"pextrw\0"
.balign 4
Lt_01D0:	.ascii	"pinsrw\0"
.balign 4
Lt_01D1:	.ascii	"pmaddwd\0"
.balign 4
Lt_01D2:	.ascii	"pmaxsw\0"
.balign 4
Lt_01D3:	.ascii	"pmaxub\0"
.balign 4
Lt_01D4:	.ascii	"pminsw\0"
.balign 4
Lt_01D5:	.ascii	"pminub\0"
.balign 4
Lt_01D6:	.ascii	"pmovmskb\0"
.balign 4
Lt_01D7:	.ascii	"pmulhuv\0"
.balign 4
Lt_01D8:	.ascii	"pmulhw\0"
.balign 4
Lt_01D9:	.ascii	"pmullw\0"
.balign 4
Lt_01DA:	.ascii	"pmuludq\0"
.balign 4
Lt_01DB:	.ascii	"pop\0"
.balign 4
Lt_01DC:	.ascii	"popa\0"
.balign 4
Lt_01DD:	.ascii	"popad\0"
.balign 4
Lt_01DE:	.ascii	"popf\0"
.balign 4
Lt_01DF:	.ascii	"popfd\0"
.balign 4
Lt_01E0:	.ascii	"por\0"
.balign 4
Lt_01E1:	.ascii	"prefetcht0\0"
.balign 4
Lt_01E2:	.ascii	"prefetcht1\0"
.balign 4
Lt_01E3:	.ascii	"prefetcht2\0"
.balign 4
Lt_01E4:	.ascii	"prefetchnta\0"
.balign 4
Lt_01E5:	.ascii	"psadbw\0"
.balign 4
Lt_01E6:	.ascii	"pshufd\0"
.balign 4
Lt_01E7:	.ascii	"pshufhw\0"
.balign 4
Lt_01E8:	.ascii	"pshuflw\0"
.balign 4
Lt_01E9:	.ascii	"pshufw\0"
.balign 4
Lt_01EA:	.ascii	"psllw\0"
.balign 4
Lt_01EB:	.ascii	"pslld\0"
.balign 4
Lt_01EC:	.ascii	"psllq\0"
.balign 4
Lt_01ED:	.ascii	"psraw\0"
.balign 4
Lt_01EE:	.ascii	"psrad\0"
.balign 4
Lt_01EF:	.ascii	"psrldq\0"
.balign 4
Lt_01F0:	.ascii	"psrlw\0"
.balign 4
Lt_01F1:	.ascii	"psrld\0"
.balign 4
Lt_01F2:	.ascii	"psrlq\0"
.balign 4
Lt_01F3:	.ascii	"psubb\0"
.balign 4
Lt_01F4:	.ascii	"psubw\0"
.balign 4
Lt_01F5:	.ascii	"psubd\0"
.balign 4
Lt_01F6:	.ascii	"psubq\0"
.balign 4
Lt_01F7:	.ascii	"psubsb\0"
.balign 4
Lt_01F8:	.ascii	"psubsw\0"
.balign 4
Lt_01F9:	.ascii	"psubusb\0"
.balign 4
Lt_01FA:	.ascii	"psubusw\0"
.balign 4
Lt_01FB:	.ascii	"punpckhbw\0"
.balign 4
Lt_01FC:	.ascii	"punpckhwd\0"
.balign 4
Lt_01FD:	.ascii	"punpckhdq\0"
.balign 4
Lt_01FE:	.ascii	"punpckhqdq\0"
.balign 4
Lt_01FF:	.ascii	"punpcklbw\0"
.balign 4
Lt_0200:	.ascii	"punpcklwd\0"
.balign 4
Lt_0201:	.ascii	"punpckldq\0"
.balign 4
Lt_0202:	.ascii	"punpcklqdq\0"
.balign 4
Lt_0203:	.ascii	"push\0"
.balign 4
Lt_0204:	.ascii	"pusha\0"
.balign 4
Lt_0205:	.ascii	"pushad\0"
.balign 4
Lt_0206:	.ascii	"pushf\0"
.balign 4
Lt_0207:	.ascii	"pushfd\0"
.balign 4
Lt_0208:	.ascii	"pxor\0"
.balign 4
Lt_0209:	.ascii	"rcl\0"
.balign 4
Lt_020A:	.ascii	"rcr\0"
.balign 4
Lt_020B:	.ascii	"rol\0"
.balign 4
Lt_020C:	.ascii	"ror\0"
.balign 4
Lt_020D:	.ascii	"rcpps\0"
.balign 4
Lt_020E:	.ascii	"rcpss\0"
.balign 4
Lt_020F:	.ascii	"rdmsr\0"
.balign 4
Lt_0210:	.ascii	"rdpmc\0"
.balign 4
Lt_0211:	.ascii	"rdtsc\0"
.balign 4
Lt_0212:	.ascii	"rep\0"
.balign 4
Lt_0213:	.ascii	"repe\0"
.balign 4
Lt_0214:	.ascii	"repz\0"
.balign 4
Lt_0215:	.ascii	"repne\0"
.balign 4
Lt_0216:	.ascii	"repnz\0"
.balign 4
Lt_0217:	.ascii	"ret\0"
.balign 4
Lt_0218:	.ascii	"rsm\0"
.balign 4
Lt_0219:	.ascii	"rsqrtps\0"
.balign 4
Lt_021A:	.ascii	"rsqrtss\0"
.balign 4
Lt_021B:	.ascii	"sahf\0"
.balign 4
Lt_021C:	.ascii	"sal\0"
.balign 4
Lt_021D:	.ascii	"sar\0"
.balign 4
Lt_021E:	.ascii	"shl\0"
.balign 4
Lt_021F:	.ascii	"shr\0"
.balign 4
Lt_0220:	.ascii	"sbb\0"
.balign 4
Lt_0221:	.ascii	"scas\0"
.balign 4
Lt_0222:	.ascii	"scasb\0"
.balign 4
Lt_0223:	.ascii	"scasw\0"
.balign 4
Lt_0224:	.ascii	"scasd\0"
.balign 4
Lt_0225:	.ascii	"seta\0"
.balign 4
Lt_0226:	.ascii	"setae\0"
.balign 4
Lt_0227:	.ascii	"setb\0"
.balign 4
Lt_0228:	.ascii	"setbe\0"
.balign 4
Lt_0229:	.ascii	"setc\0"
.balign 4
Lt_022A:	.ascii	"sete\0"
.balign 4
Lt_022B:	.ascii	"setg\0"
.balign 4
Lt_022C:	.ascii	"setge\0"
.balign 4
Lt_022D:	.ascii	"setl\0"
.balign 4
Lt_022E:	.ascii	"setle\0"
.balign 4
Lt_022F:	.ascii	"setna\0"
.balign 4
Lt_0230:	.ascii	"setnae\0"
.balign 4
Lt_0231:	.ascii	"setnb\0"
.balign 4
Lt_0232:	.ascii	"setnbe\0"
.balign 4
Lt_0233:	.ascii	"setnc\0"
.balign 4
Lt_0234:	.ascii	"setne\0"
.balign 4
Lt_0235:	.ascii	"setng\0"
.balign 4
Lt_0236:	.ascii	"setnge\0"
.balign 4
Lt_0237:	.ascii	"setnl\0"
.balign 4
Lt_0238:	.ascii	"setnle\0"
.balign 4
Lt_0239:	.ascii	"setno\0"
.balign 4
Lt_023A:	.ascii	"setnp\0"
.balign 4
Lt_023B:	.ascii	"setns\0"
.balign 4
Lt_023C:	.ascii	"setnz\0"
.balign 4
Lt_023D:	.ascii	"seto\0"
.balign 4
Lt_023E:	.ascii	"setp\0"
.balign 4
Lt_023F:	.ascii	"setpe\0"
.balign 4
Lt_0240:	.ascii	"setpo\0"
.balign 4
Lt_0241:	.ascii	"sets\0"
.balign 4
Lt_0242:	.ascii	"setz\0"
.balign 4
Lt_0243:	.ascii	"sfence\0"
.balign 4
Lt_0244:	.ascii	"sgdt\0"
.balign 4
Lt_0245:	.ascii	"sidt\0"
.balign 4
Lt_0246:	.ascii	"shld\0"
.balign 4
Lt_0247:	.ascii	"shrd\0"
.balign 4
Lt_0248:	.ascii	"shufpd\0"
.balign 4
Lt_0249:	.ascii	"shufps\0"
.balign 4
Lt_024A:	.ascii	"sldt\0"
.balign 4
Lt_024B:	.ascii	"smsw\0"
.balign 4
Lt_024C:	.ascii	"sqrtpd\0"
.balign 4
Lt_024D:	.ascii	"sqrtps\0"
.balign 4
Lt_024E:	.ascii	"sqrtsd\0"
.balign 4
Lt_024F:	.ascii	"sqrtss\0"
.balign 4
Lt_0250:	.ascii	"stc\0"
.balign 4
Lt_0251:	.ascii	"std\0"
.balign 4
Lt_0252:	.ascii	"sti\0"
.balign 4
Lt_0253:	.ascii	"stmxcsr\0"
.balign 4
Lt_0254:	.ascii	"stos\0"
.balign 4
Lt_0255:	.ascii	"stosb\0"
.balign 4
Lt_0256:	.ascii	"stosw\0"
.balign 4
Lt_0257:	.ascii	"stosd\0"
.balign 4
Lt_0258:	.ascii	"str\0"
.balign 4
Lt_0259:	.ascii	"sub\0"
.balign 4
Lt_025A:	.ascii	"subpd\0"
.balign 4
Lt_025B:	.ascii	"subps\0"
.balign 4
Lt_025C:	.ascii	"subsd\0"
.balign 4
Lt_025D:	.ascii	"subss\0"
.balign 4
Lt_025E:	.ascii	"sysenter\0"
.balign 4
Lt_025F:	.ascii	"sysexit\0"
.balign 4
Lt_0260:	.ascii	"test\0"
.balign 4
Lt_0261:	.ascii	"ucomisd\0"
.balign 4
Lt_0262:	.ascii	"ucomiss\0"
.balign 4
Lt_0263:	.ascii	"ud2\0"
.balign 4
Lt_0264:	.ascii	"unpckhpd\0"
.balign 4
Lt_0265:	.ascii	"unpckhps\0"
.balign 4
Lt_0266:	.ascii	"unpcklpd\0"
.balign 4
Lt_0267:	.ascii	"unpcklps\0"
.balign 4
Lt_0268:	.ascii	"verr\0"
.balign 4
Lt_0269:	.ascii	"verw\0"
.balign 4
Lt_026A:	.ascii	"wait\0"
.balign 4
Lt_026B:	.ascii	"wbinvd\0"
.balign 4
Lt_026C:	.ascii	"wrmsr\0"
.balign 4
Lt_026D:	.ascii	"xadd\0"
.balign 4
Lt_026E:	.ascii	"xchg\0"
.balign 4
Lt_026F:	.ascii	"xlat\0"
.balign 4
Lt_0270:	.ascii	"xlatb\0"
.balign 4
Lt_0271:	.ascii	"xor\0"
.balign 4
Lt_0272:	.ascii	"xorpd\0"
.balign 4
Lt_0273:	.ascii	"xorps\0"
.balign 4
Lt_0274:	.ascii	"pavgusb\0"
.balign 4
Lt_0275:	.ascii	"pfadd\0"
.balign 4
Lt_0276:	.ascii	"pfsub\0"
.balign 4
Lt_0277:	.ascii	"pfsubr\0"
.balign 4
Lt_0278:	.ascii	"pfacc\0"
.balign 4
Lt_0279:	.ascii	"pfcmpge\0"
.balign 4
Lt_027A:	.ascii	"pfcmpgt\0"
.balign 4
Lt_027B:	.ascii	"pfcmpeq\0"
.balign 4
Lt_027C:	.ascii	"pfmin\0"
.balign 4
Lt_027D:	.ascii	"pfmax\0"
.balign 4
Lt_027E:	.ascii	"pi2fw\0"
.balign 4
Lt_027F:	.ascii	"pi2fd\0"
.balign 4
Lt_0280:	.ascii	"pf2iw\0"
.balign 4
Lt_0281:	.ascii	"pf2id\0"
.balign 4
Lt_0282:	.ascii	"pfrcp\0"
.balign 4
Lt_0283:	.ascii	"pfrsqrt\0"
.balign 4
Lt_0284:	.ascii	"pfmul\0"
.balign 4
Lt_0285:	.ascii	"pfrcpit1\0"
.balign 4
Lt_0286:	.ascii	"pfrsqit1\0"
.balign 4
Lt_0287:	.ascii	"pfrcpit2\0"
.balign 4
Lt_0288:	.ascii	"pmulhrw\0"
.balign 4
Lt_0289:	.ascii	"pswapw\0"
.balign 4
Lt_028A:	.ascii	"femms\0"
.balign 4
Lt_028B:	.ascii	"prefetch\0"
.balign 4
Lt_028C:	.ascii	"prefetchw\0"
.balign 4
Lt_028D:	.ascii	"pfnacc\0"
.balign 4
Lt_028E:	.ascii	"pfpnacc\0"
.balign 4
Lt_028F:	.ascii	"pswapd\0"
.balign 4
Lt_0290:	.ascii	"pmulhuw\0"

.section .data
.balign 4
GLOBALASMKEYWORDSX86:
.int Lt_0292
.int Lt_0293
.int Lt_0294
.int Lt_0295
.int Lt_0296
.int Lt_0297
.int Lt_0298
.int Lt_0299
.int Lt_029A
.int Lt_029B
.int Lt_029C
.int Lt_029D
.int Lt_029E
.int Lt_029F
.int Lt_02A0
.int Lt_02A1
.int Lt_02A2
.int Lt_02A3
.int Lt_02A4
.int Lt_02A5
.int Lt_02A6
.int Lt_02A7
.int Lt_02A8
.int Lt_02A9
.int Lt_02AA
.int Lt_02AB
.int Lt_02AC
.int Lt_02AD
.int Lt_02AE
.int Lt_02AF
.int Lt_02B0
.int Lt_02B1
.int Lt_02B2
.int Lt_02B3
.int Lt_02B4
.int Lt_02B5
.int Lt_02B6
.int Lt_02B7
.int Lt_02B8
.int Lt_02B9
.int Lt_02BA
.int Lt_02BB
.int Lt_02BC
.int Lt_02BD
.int Lt_02BE
.int Lt_02BF
.int Lt_02C0
.int Lt_02C1
.int Lt_02C2
.int Lt_02C3
.int Lt_02C4
.int Lt_02C5
.int Lt_02C6
.int Lt_02C7
.int Lt_02C8
.int Lt_02C9
.int Lt_02CA
.int Lt_02CB
.int Lt_02CC
.int Lt_02CD
.int Lt_02CE
.int Lt_02CF
.int Lt_02D0
.int Lt_02D1
.int Lt_02D2
.int Lt_02D3
.int Lt_02D4
.int Lt_02D5
.int Lt_02D6
.int Lt_02D7
.int Lt_02D8
.int Lt_02D9
.int Lt_02DA
.int Lt_02DB
.int Lt_02DC
.int Lt_02DD
.int Lt_02DE
.int Lt_02DF
.int Lt_02E0
.int Lt_02E1
.int Lt_02E2
.int Lt_02E3
.int Lt_02E4
.int Lt_02E5
.int Lt_02E6
.int Lt_02E7
.int Lt_02E8
.int Lt_02E9
.int Lt_02EA
.int Lt_02EB
.int Lt_02EC
.int Lt_02ED
.int Lt_02EE
.int Lt_02EF
.int Lt_02F0
.int Lt_02F1
.int Lt_02F2
.int Lt_02F3
.int Lt_02F4
.int Lt_02F5
.int Lt_02F6
.int Lt_02F7
.int Lt_02F8
.int Lt_02F9
.int Lt_02FA
.int Lt_02FB
.int Lt_02FC
.int Lt_02FD
.int Lt_02FE
.int Lt_02FF
.int Lt_0300
.int Lt_0301
.int Lt_0302
.int Lt_0303
.int Lt_0304
.int Lt_0305
.int Lt_0306
.int Lt_0307
.int Lt_0308
.int Lt_0309
.int Lt_030A
.int Lt_030B
.int Lt_030C
.int Lt_030D
.int Lt_030E
.int Lt_030F
.int Lt_0310
.int Lt_0311
.int Lt_0312
.int Lt_0313
.int Lt_0314
.int Lt_0315
.int Lt_0316
.int Lt_0317
.int Lt_0318
.int Lt_0319
.int Lt_031A
.int Lt_031B
.int Lt_031C
.int Lt_031D
.int Lt_031E
.int Lt_031F
.int Lt_0320
.int Lt_0321
.int Lt_0322
.int Lt_0323
.int Lt_0324
.int Lt_0325
.int Lt_0326
.int Lt_0327
.int Lt_0328
.int Lt_0329
.int Lt_032A
.int Lt_032B
.int Lt_032C
.int Lt_032D
.int Lt_032E
.int Lt_032F
.int Lt_0330
.int Lt_0331
.int Lt_0332
.int Lt_0333
.int Lt_0334
.int Lt_0335
.int Lt_0336
.int Lt_0337
.int Lt_0338
.int Lt_0339
.int Lt_033A
.int Lt_033B
.int Lt_033C
.int Lt_033D
.int Lt_033E
.int Lt_033F
.int Lt_0340
.int Lt_0341
.int Lt_0342

.section .rodata
.balign 4
Lt_0292:	.ascii	"dl\0"
.balign 4
Lt_0293:	.ascii	"di\0"
.balign 4
Lt_0294:	.ascii	"si\0"
.balign 4
Lt_0295:	.ascii	"cl\0"
.balign 4
Lt_0296:	.ascii	"bl\0"
.balign 4
Lt_0297:	.ascii	"al\0"
.balign 4
Lt_0298:	.ascii	"bp\0"
.balign 4
Lt_0299:	.ascii	"sp\0"
.balign 4
Lt_029A:	.ascii	"dx\0"
.balign 4
Lt_029B:	.ascii	"cx\0"
.balign 4
Lt_029C:	.ascii	"bx\0"
.balign 4
Lt_029D:	.ascii	"ax\0"
.balign 4
Lt_029E:	.ascii	"edx\0"
.balign 4
Lt_029F:	.ascii	"edi\0"
.balign 4
Lt_02A0:	.ascii	"esi\0"
.balign 4
Lt_02A1:	.ascii	"ecx\0"
.balign 4
Lt_02A2:	.ascii	"ebx\0"
.balign 4
Lt_02A3:	.ascii	"eax\0"
.balign 4
Lt_02A4:	.ascii	"ebp\0"
.balign 4
Lt_02A5:	.ascii	"esp\0"
.balign 4
Lt_02A6:	.ascii	"st\0"
.balign 4
Lt_02A7:	.ascii	"cs\0"
.balign 4
Lt_02A8:	.ascii	"ds\0"
.balign 4
Lt_02A9:	.ascii	"es\0"
.balign 4
Lt_02AA:	.ascii	"fs\0"
.balign 4
Lt_02AB:	.ascii	"gs\0"
.balign 4
Lt_02AC:	.ascii	"ss\0"
.balign 4
Lt_02AD:	.ascii	"mm0\0"
.balign 4
Lt_02AE:	.ascii	"mm1\0"
.balign 4
Lt_02AF:	.ascii	"mm2\0"
.balign 4
Lt_02B0:	.ascii	"mm3\0"
.balign 4
Lt_02B1:	.ascii	"mm4\0"
.balign 4
Lt_02B2:	.ascii	"mm5\0"
.balign 4
Lt_02B3:	.ascii	"mm6\0"
.balign 4
Lt_02B4:	.ascii	"mm7\0"
.balign 4
Lt_02B5:	.ascii	"xmm0\0"
.balign 4
Lt_02B6:	.ascii	"xmm1\0"
.balign 4
Lt_02B7:	.ascii	"xmm2\0"
.balign 4
Lt_02B8:	.ascii	"xmm3\0"
.balign 4
Lt_02B9:	.ascii	"xmm4\0"
.balign 4
Lt_02BA:	.ascii	"xmm5\0"
.balign 4
Lt_02BB:	.ascii	"xmm6\0"
.balign 4
Lt_02BC:	.ascii	"xmm7\0"
.balign 4
Lt_02BD:	.ascii	"xmm8\0"
.balign 4
Lt_02BE:	.ascii	"xmm9\0"
.balign 4
Lt_02BF:	.ascii	"xmm10\0"
.balign 4
Lt_02C0:	.ascii	"xmm11\0"
.balign 4
Lt_02C1:	.ascii	"xmm12\0"
.balign 4
Lt_02C2:	.ascii	"xmm13\0"
.balign 4
Lt_02C3:	.ascii	"xmm14\0"
.balign 4
Lt_02C4:	.ascii	"xmm15\0"
.balign 4
Lt_02C5:	.ascii	"word\0"
.balign 4
Lt_02C6:	.ascii	"dword\0"
.balign 4
Lt_02C7:	.ascii	"qword\0"
.balign 4
Lt_02C8:	.ascii	"fword\0"
.balign 4
Lt_02C9:	.ascii	"mmword\0"
.balign 4
Lt_02CA:	.ascii	"oword\0"
.balign 4
Lt_02CB:	.ascii	"r8\0"
.balign 4
Lt_02CC:	.ascii	"r9\0"
.balign 4
Lt_02CD:	.ascii	"r10\0"
.balign 4
Lt_02CE:	.ascii	"r11\0"
.balign 4
Lt_02CF:	.ascii	"r12\0"
.balign 4
Lt_02D0:	.ascii	"r13\0"
.balign 4
Lt_02D1:	.ascii	"r14\0"
.balign 4
Lt_02D2:	.ascii	"r15\0"
.balign 4
Lt_02D3:	.ascii	"r8w\0"
.balign 4
Lt_02D4:	.ascii	"r9w\0"
.balign 4
Lt_02D5:	.ascii	"r10w\0"
.balign 4
Lt_02D6:	.ascii	"r11w\0"
.balign 4
Lt_02D7:	.ascii	"r12w\0"
.balign 4
Lt_02D8:	.ascii	"r13w\0"
.balign 4
Lt_02D9:	.ascii	"r14w\0"
.balign 4
Lt_02DA:	.ascii	"r15w\0"
.balign 4
Lt_02DB:	.ascii	"rax\0"
.balign 4
Lt_02DC:	.ascii	"rbp\0"
.balign 4
Lt_02DD:	.ascii	"rbx\0"
.balign 4
Lt_02DE:	.ascii	"rcx\0"
.balign 4
Lt_02DF:	.ascii	"rdi\0"
.balign 4
Lt_02E0:	.ascii	"rdx\0"
.balign 4
Lt_02E1:	.ascii	"rsi\0"
.balign 4
Lt_02E2:	.ascii	"rsp\0"
.balign 4
Lt_02E3:	.ascii	"tbyte\0"
.balign 4
Lt_02E4:	.ascii	"xmmword\0"
.balign 4
Lt_02E5:	.ascii	"ymmword\0"
.balign 4
Lt_02E6:	.ascii	"zmmword\0"
.balign 4
Lt_02E7:	.ascii	"ah\0"
.balign 4
Lt_02E8:	.ascii	"axl\0"
.balign 4
Lt_02E9:	.ascii	"bh\0"
.balign 4
Lt_02EA:	.ascii	"bpl\0"
.balign 4
Lt_02EB:	.ascii	"bxl\0"
.balign 4
Lt_02EC:	.ascii	"ch\0"
.balign 4
Lt_02ED:	.ascii	"cxl\0"
.balign 4
Lt_02EE:	.ascii	"dh\0"
.balign 4
Lt_02EF:	.ascii	"dil\0"
.balign 4
Lt_02F0:	.ascii	"dr0\0"
.balign 4
Lt_02F1:	.ascii	"dr1\0"
.balign 4
Lt_02F2:	.ascii	"dr2\0"
.balign 4
Lt_02F3:	.ascii	"dr3\0"
.balign 4
Lt_02F4:	.ascii	"dr4\0"
.balign 4
Lt_02F5:	.ascii	"dr5\0"
.balign 4
Lt_02F6:	.ascii	"dr6\0"
.balign 4
Lt_02F7:	.ascii	"dr7\0"
.balign 4
Lt_02F8:	.ascii	"dxl\0"
.balign 4
Lt_02F9:	.ascii	"eip\0"
.balign 4
Lt_02FA:	.ascii	"eq\0"
.balign 4
Lt_02FB:	.ascii	"ge\0"
.balign 4
Lt_02FC:	.ascii	"gt\0"
.balign 4
Lt_02FD:	.ascii	"le\0"
.balign 4
Lt_02FE:	.ascii	"lt\0"
.balign 4
Lt_02FF:	.ascii	"ne\0"
.balign 4
Lt_0300:	.ascii	"r8b\0"
.balign 4
Lt_0301:	.ascii	"r9b\0"
.balign 4
Lt_0302:	.ascii	"r10b\0"
.balign 4
Lt_0303:	.ascii	"r11b\0"
.balign 4
Lt_0304:	.ascii	"r12b\0"
.balign 4
Lt_0305:	.ascii	"r13b\0"
.balign 4
Lt_0306:	.ascii	"r14b\0"
.balign 4
Lt_0307:	.ascii	"r15b\0"
.balign 4
Lt_0308:	.ascii	"r8d\0"
.balign 4
Lt_0309:	.ascii	"r9d\0"
.balign 4
Lt_030A:	.ascii	"r10d\0"
.balign 4
Lt_030B:	.ascii	"r11d\0"
.balign 4
Lt_030C:	.ascii	"r12d\0"
.balign 4
Lt_030D:	.ascii	"r13d\0"
.balign 4
Lt_030E:	.ascii	"r14d\0"
.balign 4
Lt_030F:	.ascii	"r15d\0"
.balign 4
Lt_0310:	.ascii	"rip\0"
.balign 4
Lt_0311:	.ascii	"sil\0"
.balign 4
Lt_0312:	.ascii	"spl\0"
.balign 4
Lt_0313:	.ascii	"ymm0\0"
.balign 4
Lt_0314:	.ascii	"ymm1\0"
.balign 4
Lt_0315:	.ascii	"ymm2\0"
.balign 4
Lt_0316:	.ascii	"ymm3\0"
.balign 4
Lt_0317:	.ascii	"ymm4\0"
.balign 4
Lt_0318:	.ascii	"ymm5\0"
.balign 4
Lt_0319:	.ascii	"ymm6\0"
.balign 4
Lt_031A:	.ascii	"ymm7\0"
.balign 4
Lt_031B:	.ascii	"ymm8\0"
.balign 4
Lt_031C:	.ascii	"ymm9\0"
.balign 4
Lt_031D:	.ascii	"ymm10\0"
.balign 4
Lt_031E:	.ascii	"ymm11\0"
.balign 4
Lt_031F:	.ascii	"ymm12\0"
.balign 4
Lt_0320:	.ascii	"ymm13\0"
.balign 4
Lt_0321:	.ascii	"ymm14\0"
.balign 4
Lt_0322:	.ascii	"ymm15\0"
.balign 4
Lt_0323:	.ascii	"zmm0\0"
.balign 4
Lt_0324:	.ascii	"zmm1\0"
.balign 4
Lt_0325:	.ascii	"zmm2\0"
.balign 4
Lt_0326:	.ascii	"zmm3\0"
.balign 4
Lt_0327:	.ascii	"zmm4\0"
.balign 4
Lt_0328:	.ascii	"zmm5\0"
.balign 4
Lt_0329:	.ascii	"zmm6\0"
.balign 4
Lt_032A:	.ascii	"zmm7\0"
.balign 4
Lt_032B:	.ascii	"zmm8\0"
.balign 4
Lt_032C:	.ascii	"zmm9\0"
.balign 4
Lt_032D:	.ascii	"zmm10\0"
.balign 4
Lt_032E:	.ascii	"zmm11\0"
.balign 4
Lt_032F:	.ascii	"zmm12\0"
.balign 4
Lt_0330:	.ascii	"zmm13\0"
.balign 4
Lt_0331:	.ascii	"zmm14\0"
.balign 4
Lt_0332:	.ascii	"zmm15\0"
.balign 4
Lt_0333:	.ascii	"zmm16\0"
.balign 4
Lt_0334:	.ascii	"zmm17\0"
.balign 4
Lt_0335:	.ascii	"zmm18\0"
.balign 4
Lt_0336:	.ascii	"zmm19\0"
.balign 4
Lt_0337:	.ascii	"zmm20\0"
.balign 4
Lt_0338:	.ascii	"zmm21\0"
.balign 4
Lt_0339:	.ascii	"zmm22\0"
.balign 4
Lt_033A:	.ascii	"zmm23\0"
.balign 4
Lt_033B:	.ascii	"zmm24\0"
.balign 4
Lt_033C:	.ascii	"zmm25\0"
.balign 4
Lt_033D:	.ascii	"zmm26\0"
.balign 4
Lt_033E:	.ascii	"zmm27\0"
.balign 4
Lt_033F:	.ascii	"zmm28\0"
.balign 4
Lt_0340:	.ascii	"zmm29\0"
.balign 4
Lt_0341:	.ascii	"zmm30\0"
.balign 4
Lt_0342:	.ascii	"zmm31\0"

.section .bss
.balign 4
	.lcomm	INLINEASMKEYWORDS,48
.balign 4
	.lcomm	GLOBALASMKEYWORDS,48

.section .rodata
.balign 4
Lt_03A8:	.ascii	"\"\0"

.section .ctors, "aw", @progbits
.int fb_ctor__parserzinlineasm
