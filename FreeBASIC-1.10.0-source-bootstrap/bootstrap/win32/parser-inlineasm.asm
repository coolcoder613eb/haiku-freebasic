	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERINLINEASMADDKEYWORD@4
_PARSERINLINEASMADDKEYWORD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0368:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push 1025
push offset _Lt_036C
call _fb_StrAssign@20
call _HINITINLINEASMKEYWORDS@0
push offset _Lt_036C
call _HISINLINEASMKEYWORD@4
test eax, eax
je .L_036B
mov dword ptr [ebp-4], 0
jmp .L_0369
.L_036B:
.L_036A:
push offset _Lt_036C
push offset _INLINEASMKEYWORDS
call _HADDASMKEYWORD@8
mov dword ptr [ebp-4], -1
.L_0369:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_036C,1025

.section .text
.balign 16

.globl _PARSERGLOBALASMADDKEYWORD@4
_PARSERGLOBALASMADDKEYWORD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_036D:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push 1025
push offset _Lt_0371
call _fb_StrAssign@20
push offset _Lt_0371
call _PARSERISGLOBALASMKEYWORD@4
test eax, eax
je .L_0370
mov dword ptr [ebp-4], 0
jmp .L_036E
.L_0370:
.L_036F:
push offset _Lt_0371
push offset _GLOBALASMKEYWORDS
call _HADDASMKEYWORD@8
mov dword ptr [ebp-4], -1
.L_036E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0371,1025

.section .text
.balign 16

.globl _PARSERISGLOBALASMKEYWORD@4
_PARSERISGLOBALASMKEYWORD@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0372:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-16]
lea eax, [_GLOBALASMKEYWORDS+4]
push eax
call _HASHLOOKUP@8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete@4
.L_0373:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _PARSERASMINIT@0
_PARSERASMINIT@0:
.L_0376:
call _HINITGLOBALASMKEYWORDS@0
.L_0377:
ret
.balign 16

.globl _PARSERASMEND@0
_PARSERASMEND@0:
.L_0378:
push offset _GLOBALASMKEYWORDS
call _HASMKEYWORDSEND@4
push offset _INLINEASMKEYWORDS
call _HASMKEYWORDSEND@4
.L_0379:
ret
.balign 16

.globl _CASMCODE@0
_CASMCODE@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_037A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.L_037C:
push 1028
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
jmp .L_0380
.L_0382:
jmp .L_037D
jmp .L_037F
.L_0380:
mov eax, dword ptr [ebp-32]
add eax, 4294967040
cmp eax, 84
ja .L_037F
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_0383+eax*4-1024]
_.L_0383:
.int .L_0382
.int .L_0382
.int .L_037F
.int .L_0382
.int .L_0382
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_037F
.int .L_0382
.L_037F:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
push 1028
call _LEXGETCLASS@4
mov dword ptr [ebp-32], eax
jmp .L_0385
.L_0387:
cmp dword ptr [ebp-28], 466
jne .L_0389
push -1
push dword ptr [ebp-28]
call _CMATHFUNCT@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_038B
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_038D
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
jmp .L_038C
.L_038D:
push 0
push 0
push 11
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.L_038C:
jmp .L_038A
.L_038B:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.L_038A:
jmp .L_0388
.L_0389:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push offset _Lt_03C4
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _HISINLINEASMKEYWORD@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-48], 0
je .L_038E
push 34
lea eax, [ebp-52]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-4], eax
.L_0391:
cmp dword ptr [ebp-4], 0
je .L_0392
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-56], ebx
.L_0393:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 3
je .L_0399
.L_039A:
cmp dword ptr [ebp-60], 7
jne .L_0398
.L_0399:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-8], eax
jmp .L_0392
jmp .L_0396
.L_0398:
cmp dword ptr [ebp-60], 2
jne .L_039B
.L_039C:
push 0
push -1
push dword ptr [ebp-56]
call _SYMBGETCONSTVALUEASSTR@4
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
jmp .L_0392
jmp .L_0396
.L_039B:
cmp dword ptr [ebp-60], 1
jne .L_039D
.L_039E:
push 1
push dword ptr [ebp-4]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_03A0
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.L_03A0:
.L_039F:
jmp .L_0392
.L_039D:
.L_0396:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-56], ebx
.L_0395:
cmp dword ptr [ebp-56], 0
jne .L_0393
.L_0394:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
jmp .L_0391
.L_0392:
.L_038E:
.L_0388:
jmp .L_0384
.L_03A1:
push 0
call _CNUMLITERAL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03A3
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
.L_03A3:
.L_03A2:
jmp .L_0384
.L_03A4:
push 0
call _CSTRLITERAL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03A6
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .L_03A8
push 0
push 2
push offset _Lt_03A9
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_03AB
push 0
push -1
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
push 1025
push offset _Lt_03C4
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call _fb_StrConcat@20
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
jmp .L_03AA
.L_03AB:
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [eax+56]
push 1025
push offset _Lt_03C4
call _fb_WstrConcatAW@12
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 1025
push offset _Lt_03C4
call _fb_WstrAssignToA@16
push dword ptr [ebp-52]
call _fb_WstrDelete@4
.L_03AA:
push 0
push -1
push 2
push offset _Lt_03A9
push 1025
push offset _Lt_03C4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
.L_03A8:
.L_03A7:
push dword ptr [ebp-12]
call _ASTDELTREE@4
.L_03A6:
.L_03A5:
jmp .L_0384
.L_03AF:
cmp dword ptr [ebp-28], 346
jne .L_03B1
.L_03B2:
push dword ptr [_PARSER+108]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03B4
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
jmp .L_03B3
.L_03B4:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.L_03B3:
jmp .L_03B0
.L_03B1:
cmp dword ptr [ebp-28], 406
jne .L_03B5
.L_03B6:
push -1
push dword ptr [ebp-28]
call _CTYPECONVEXPR@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .L_03B8
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .L_03BA
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_03C4
call _fb_StrAssign@20
jmp .L_03B9
.L_03BA:
push 0
push 0
push 11
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.L_03B9:
jmp .L_03B7
.L_03B8:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.L_03B7:
.L_03B5:
.L_03B0:
jmp .L_0384
.L_0385:
cmp dword ptr [ebp-32], 4
ja .L_0384
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.L_03BB+eax*4]
_.L_03BB:
.int .L_0387
.int .L_03AF
.int .L_0387
.int .L_03A1
.int .L_03A4
.L_0384:
cmp dword ptr [ebp-24], 0
jne .L_03BD
cmp dword ptr [ebp-8], 0
je .L_03BF
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _ASTASMAPPENDSYMB@8
mov dword ptr [ebp-20], eax
jmp .L_03BE
.L_03BF:
push offset _Lt_03C4
push dword ptr [ebp-20]
call _ASTASMAPPENDTEXT@8
mov dword ptr [ebp-20], eax
.L_03BE:
cmp dword ptr [ebp-16], 0
jne .L_03C1
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.L_03C1:
.L_03C0:
.L_03BD:
.L_03BC:
push 1028
call _LEXSKIPTOKEN@4
.L_037E:
jmp .L_037C
.L_037D:
cmp dword ptr [ebp-16], 0
je .L_03C3
push dword ptr [ebp-16]
call _ASTNEWASM@4
push eax
call _ASTADD@4
.L_03C3:
.L_03C2:
.L_037B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03C4,1025

.section .text
.balign 16

.globl _CASMBLOCK@0
_CASMBLOCK@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_03C6:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 344
je .L_03C9
jmp .L_03C7
.L_03C9:
.L_03C8:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_03CB
push 0
push -1
push 344
call _HSKIPCOMPOUND@12
jmp .L_03C7
.L_03CB:
.L_03CA:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 0
push 0
call _CCOMMENT@4
test eax, eax
je .L_03CD
cmp dword ptr [_ENV+148], 0
je .L_03CF
cmp dword ptr [_ENV+900], 0
jne .L_03D1
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_03D1:
.L_03D0:
.L_03CF:
.L_03CE:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_03D3
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.L_03D3:
.L_03D2:
jmp .L_03CC
.L_03CD:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .L_03D5
mov dword ptr [ebp-8], -1
.L_03D5:
.L_03D4:
.L_03CC:
.L_03D6:
cmp dword ptr [ebp-8], 0
jne .L_03DA
push dword ptr [_ENV+568]
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8376]
push 113
call _ASTNEWDBG@12
push eax
call _ASTADD@4
.L_03DA:
.L_03D9:
call _CASMCODE@0
push 1028
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .L_03DC
cmp dword ptr [_ENV+900], 0
jne .L_03DE
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+24824]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRRESET@4
.L_03DE:
.L_03DD:
.L_03DC:
.L_03DB:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 257
jne .L_03E1
.L_03E2:
cmp dword ptr [ebp-8], 0
je .L_03E4
jmp .L_03D7
.L_03E4:
.L_03E3:
push 0
call _LEXSKIPTOKEN@4
jmp .L_03DF
.L_03E1:
cmp dword ptr [ebp-12], 256
jne .L_03E5
.L_03E6:
jmp .L_03D7
jmp .L_03DF
.L_03E5:
cmp dword ptr [ebp-12], 340
jne .L_03E7
.L_03E8:
jmp .L_03D7
jmp .L_03DF
.L_03E7:
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.L_03E9:
.L_03DF:
cmp dword ptr [ebp-8], 0
jne .L_03EB
push 0
push 0
push 114
call _ASTNEWDBG@12
push eax
call _ASTADD@4
.L_03EB:
.L_03EA:
.L_03D8:
jmp .L_03D6
.L_03D7:
cmp dword ptr [ebp-8], 0
jne .L_03ED
push 2048
push 340
call _HMATCH@8
test eax, eax
jne .L_03EF
push 0
push 0
push 45
call _ERRREPORT@12
jmp .L_03EE
.L_03EF:
push 2048
push 344
call _HMATCH@8
test eax, eax
jne .L_03F1
push 0
push 0
push 45
call _ERRREPORT@12
.L_03F1:
.L_03F0:
.L_03EE:
.L_03ED:
.L_03EC:
mov dword ptr [ebp-4], -1
.L_03C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzinlineasm:
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
_HINITINLINEASMKEYWORDS@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0345:
cmp dword ptr [_INLINEASMKEYWORDS], 0
jne .L_0348
push -1
push 4
push 8
lea eax, [_INLINEASMKEYWORDS+16]
push eax
call _LISTINIT@16
push 0
push 800
lea eax, [_INLINEASMKEYWORDS+4]
push eax
call _HASHINIT@12
mov dword ptr [ebp-4], 0
.L_034C:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [_INLINEASMKEYWORDSX86+eax*4]
lea eax, [_INLINEASMKEYWORDS+4]
push eax
call _HASHADD@16
.L_034A:
inc dword ptr [ebp-4]
.L_0349:
cmp dword ptr [ebp-4], 555
jle .L_034C
.L_034B:
mov dword ptr [ebp-4], 0
.L_0350:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [_GLOBALASMKEYWORDSX86+eax*4]
lea eax, [_INLINEASMKEYWORDS+4]
push eax
call _HASHADD@16
.L_034E:
inc dword ptr [ebp-4]
.L_034D:
cmp dword ptr [ebp-4], 176
jle .L_0350
.L_034F:
mov dword ptr [_INLINEASMKEYWORDS], -1
.L_0348:
.L_0347:
.L_0346:
mov esp, ebp
pop ebp
ret
.balign 16
_HINITGLOBALASMKEYWORDS@0:
push ebp
mov ebp, esp
sub esp, 8
.L_0351:
cmp dword ptr [_GLOBALASMKEYWORDS], 0
jne .L_0354
push -1
push 4
push 8
lea eax, [_GLOBALASMKEYWORDS+16]
push eax
call _LISTINIT@16
push 0
push 200
lea eax, [_GLOBALASMKEYWORDS+4]
push eax
call _HASHINIT@12
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0358
.L_0359:
cmp dword ptr [ebp-4], 1
jne .L_0357
.L_0358:
mov dword ptr [ebp-8], 0
.L_035D:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-8]
push dword ptr [_GLOBALASMKEYWORDSX86+eax*4]
lea eax, [_GLOBALASMKEYWORDS+4]
push eax
call _HASHADD@16
.L_035B:
inc dword ptr [ebp-8]
.L_035A:
cmp dword ptr [ebp-8], 176
jle .L_035D
.L_035C:
.L_0357:
.L_0355:
mov dword ptr [_GLOBALASMKEYWORDS], -1
.L_0354:
.L_0353:
.L_0352:
mov esp, ebp
pop ebp
ret
.balign 16
_HASMKEYWORDSEND@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_035E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_0361
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call _HASHEND@4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+16]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.L_0362:
cmp dword ptr [ebp-4], 0
je .L_0363
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .L_0362
.L_0363:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call _LISTEND@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
.L_0361:
.L_0360:
.L_035F:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HISINLINEASMKEYWORD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0364:
call _HINITINLINEASMKEYWORDS@0
push dword ptr [ebp+8]
lea eax, [_INLINEASMKEYWORDS+4]
push eax
call _HASHLOOKUP@8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0365:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDASMKEYWORD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0366:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+16]
push ebx
call _LISTNEWNODE@4
mov dword ptr [ebp-4], eax
push 1
push 0
push dword ptr [ebp+12]
call _fb_StrLen@8
inc eax
mov ebx, eax
push ebx
call _calloc
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _fb_StrAssign@20
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
call _HASHADD@16
.L_0367:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_INLINEASMKEYWORDSX86:
.int _Lt_0067
.int _Lt_0068
.int _Lt_0069
.int _Lt_006A
.int _Lt_006B
.int _Lt_006C
.int _Lt_006D
.int _Lt_006E
.int _Lt_006F
.int _Lt_0070
.int _Lt_0071
.int _Lt_0072
.int _Lt_0073
.int _Lt_0074
.int _Lt_0075
.int _Lt_0076
.int _Lt_0077
.int _Lt_0078
.int _Lt_0079
.int _Lt_007A
.int _Lt_007B
.int _Lt_007C
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
.int _Lt_008E
.int _Lt_008F
.int _Lt_0090
.int _Lt_0091
.int _Lt_0092
.int _Lt_0093
.int _Lt_0094
.int _Lt_0095
.int _Lt_0096
.int _Lt_0097
.int _Lt_0098
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
.int _Lt_0148
.int _Lt_0149
.int _Lt_014A
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0150
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0154
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
.int _Lt_01E2
.int _Lt_01E3
.int _Lt_01E4
.int _Lt_01E5
.int _Lt_01E6
.int _Lt_01E7
.int _Lt_01E8
.int _Lt_01E9
.int _Lt_01EA
.int _Lt_01EB
.int _Lt_01EC
.int _Lt_01ED
.int _Lt_01EE
.int _Lt_01EF
.int _Lt_01F0
.int _Lt_01F1
.int _Lt_01F2
.int _Lt_01F3
.int _Lt_01F4
.int _Lt_01F5
.int _Lt_01F6
.int _Lt_01F7
.int _Lt_01F8
.int _Lt_01F9
.int _Lt_01FA
.int _Lt_01FB
.int _Lt_01FC
.int _Lt_01FD
.int _Lt_01FE
.int _Lt_01FF
.int _Lt_0200
.int _Lt_0201
.int _Lt_0202
.int _Lt_0203
.int _Lt_0204
.int _Lt_0205
.int _Lt_0206
.int _Lt_0207
.int _Lt_0208
.int _Lt_0209
.int _Lt_020A
.int _Lt_020B
.int _Lt_020C
.int _Lt_020D
.int _Lt_020E
.int _Lt_020F
.int _Lt_0210
.int _Lt_0211
.int _Lt_0212
.int _Lt_0213
.int _Lt_0214
.int _Lt_0215
.int _Lt_0216
.int _Lt_0217
.int _Lt_0218
.int _Lt_0219
.int _Lt_021A
.int _Lt_021B
.int _Lt_021C
.int _Lt_021D
.int _Lt_021E
.int _Lt_021F
.int _Lt_0220
.int _Lt_0221
.int _Lt_0222
.int _Lt_0223
.int _Lt_0224
.int _Lt_0225
.int _Lt_0226
.int _Lt_0227
.int _Lt_0228
.int _Lt_0229
.int _Lt_022A
.int _Lt_022B
.int _Lt_022C
.int _Lt_022D
.int _Lt_022E
.int _Lt_022F
.int _Lt_0230
.int _Lt_0231
.int _Lt_0232
.int _Lt_0233
.int _Lt_0234
.int _Lt_0235
.int _Lt_0236
.int _Lt_0237
.int _Lt_0238
.int _Lt_0239
.int _Lt_023A
.int _Lt_023B
.int _Lt_023C
.int _Lt_023D
.int _Lt_023E
.int _Lt_023F
.int _Lt_0240
.int _Lt_0241
.int _Lt_0242
.int _Lt_0243
.int _Lt_0244
.int _Lt_0245
.int _Lt_0246
.int _Lt_0247
.int _Lt_0248
.int _Lt_0249
.int _Lt_024A
.int _Lt_024B
.int _Lt_024C
.int _Lt_024D
.int _Lt_024E
.int _Lt_024F
.int _Lt_0250
.int _Lt_0251
.int _Lt_0252
.int _Lt_0253
.int _Lt_0254
.int _Lt_0255
.int _Lt_0256
.int _Lt_0257
.int _Lt_0258
.int _Lt_0259
.int _Lt_025A
.int _Lt_025B
.int _Lt_025C
.int _Lt_025D
.int _Lt_025E
.int _Lt_025F
.int _Lt_0260
.int _Lt_0261
.int _Lt_0262
.int _Lt_0263
.int _Lt_0264
.int _Lt_0265
.int _Lt_0266
.int _Lt_0267
.int _Lt_0268
.int _Lt_0269
.int _Lt_026A
.int _Lt_026B
.int _Lt_026C
.int _Lt_026D
.int _Lt_026E
.int _Lt_026F
.int _Lt_0270
.int _Lt_0271
.int _Lt_0272
.int _Lt_0273
.int _Lt_0274
.int _Lt_0275
.int _Lt_0276
.int _Lt_0277
.int _Lt_0278
.int _Lt_0279
.int _Lt_027A
.int _Lt_027B
.int _Lt_027C
.int _Lt_027D
.int _Lt_027E
.int _Lt_027F
.int _Lt_0280
.int _Lt_0281
.int _Lt_0282
.int _Lt_0283
.int _Lt_0284
.int _Lt_0285
.int _Lt_0286
.int _Lt_0287
.int _Lt_0288
.int _Lt_0289
.int _Lt_028A
.int _Lt_028B
.int _Lt_028C
.int _Lt_028D
.int _Lt_028E
.int _Lt_028F
.int _Lt_0290
.int _Lt_0291
.balign 4
_Lt_0067:	.ascii	"byte\0"
.balign 4
_Lt_0068:	.ascii	"ptr\0"
.balign 4
_Lt_0069:	.ascii	"offset\0"
.balign 4
_Lt_006A:	.ascii	"aaa\0"
.balign 4
_Lt_006B:	.ascii	"aad\0"
.balign 4
_Lt_006C:	.ascii	"aam\0"
.balign 4
_Lt_006D:	.ascii	"aas\0"
.balign 4
_Lt_006E:	.ascii	"adc\0"
.balign 4
_Lt_006F:	.ascii	"add\0"
.balign 4
_Lt_0070:	.ascii	"addpd\0"
.balign 4
_Lt_0071:	.ascii	"addps\0"
.balign 4
_Lt_0072:	.ascii	"addsd\0"
.balign 4
_Lt_0073:	.ascii	"addss\0"
.balign 4
_Lt_0074:	.ascii	"and\0"
.balign 4
_Lt_0075:	.ascii	"andpd\0"
.balign 4
_Lt_0076:	.ascii	"andps\0"
.balign 4
_Lt_0077:	.ascii	"andnpd\0"
.balign 4
_Lt_0078:	.ascii	"andnps\0"
.balign 4
_Lt_0079:	.ascii	"arpl\0"
.balign 4
_Lt_007A:	.ascii	"bound\0"
.balign 4
_Lt_007B:	.ascii	"bsf\0"
.balign 4
_Lt_007C:	.ascii	"bsr\0"
.balign 4
_Lt_007D:	.ascii	"bswap\0"
.balign 4
_Lt_007E:	.ascii	"bt\0"
.balign 4
_Lt_007F:	.ascii	"btc\0"
.balign 4
_Lt_0080:	.ascii	"btr\0"
.balign 4
_Lt_0081:	.ascii	"bts\0"
.balign 4
_Lt_0082:	.ascii	"call\0"
.balign 4
_Lt_0083:	.ascii	"cbw\0"
.balign 4
_Lt_0084:	.ascii	"cwde\0"
.balign 4
_Lt_0085:	.ascii	"cdq\0"
.balign 4
_Lt_0086:	.ascii	"clc\0"
.balign 4
_Lt_0087:	.ascii	"cld\0"
.balign 4
_Lt_0088:	.ascii	"clflush\0"
.balign 4
_Lt_0089:	.ascii	"cli\0"
.balign 4
_Lt_008A:	.ascii	"clts\0"
.balign 4
_Lt_008B:	.ascii	"cmc\0"
.balign 4
_Lt_008C:	.ascii	"cmova\0"
.balign 4
_Lt_008D:	.ascii	"cmovae\0"
.balign 4
_Lt_008E:	.ascii	"cmovb\0"
.balign 4
_Lt_008F:	.ascii	"cmovbe\0"
.balign 4
_Lt_0090:	.ascii	"cmovc\0"
.balign 4
_Lt_0091:	.ascii	"cmove\0"
.balign 4
_Lt_0092:	.ascii	"cmovg\0"
.balign 4
_Lt_0093:	.ascii	"cmovge\0"
.balign 4
_Lt_0094:	.ascii	"cmovl\0"
.balign 4
_Lt_0095:	.ascii	"cmovle\0"
.balign 4
_Lt_0096:	.ascii	"cmovna\0"
.balign 4
_Lt_0097:	.ascii	"cmovnae\0"
.balign 4
_Lt_0098:	.ascii	"cmovnb\0"
.balign 4
_Lt_0099:	.ascii	"cmovnbe\0"
.balign 4
_Lt_009A:	.ascii	"cmovnc\0"
.balign 4
_Lt_009B:	.ascii	"cmovne\0"
.balign 4
_Lt_009C:	.ascii	"cmovng\0"
.balign 4
_Lt_009D:	.ascii	"cmovnge\0"
.balign 4
_Lt_009E:	.ascii	"cmovnl\0"
.balign 4
_Lt_009F:	.ascii	"cmovnle\0"
.balign 4
_Lt_00A0:	.ascii	"cmovno\0"
.balign 4
_Lt_00A1:	.ascii	"cmovnp\0"
.balign 4
_Lt_00A2:	.ascii	"cmovns\0"
.balign 4
_Lt_00A3:	.ascii	"cmovnz\0"
.balign 4
_Lt_00A4:	.ascii	"cmovo\0"
.balign 4
_Lt_00A5:	.ascii	"cmovp\0"
.balign 4
_Lt_00A6:	.ascii	"cmovpe\0"
.balign 4
_Lt_00A7:	.ascii	"cmovpo\0"
.balign 4
_Lt_00A8:	.ascii	"cmovs\0"
.balign 4
_Lt_00A9:	.ascii	"cmovz\0"
.balign 4
_Lt_00AA:	.ascii	"cmp\0"
.balign 4
_Lt_00AB:	.ascii	"cmppd\0"
.balign 4
_Lt_00AC:	.ascii	"cmpps\0"
.balign 4
_Lt_00AD:	.ascii	"cmps\0"
.balign 4
_Lt_00AE:	.ascii	"cmpsb\0"
.balign 4
_Lt_00AF:	.ascii	"cmpsw\0"
.balign 4
_Lt_00B0:	.ascii	"cmpsd\0"
.balign 4
_Lt_00B1:	.ascii	"cmpss\0"
.balign 4
_Lt_00B2:	.ascii	"cmpxchg\0"
.balign 4
_Lt_00B3:	.ascii	"cmpxchg8b\0"
.balign 4
_Lt_00B4:	.ascii	"comisd\0"
.balign 4
_Lt_00B5:	.ascii	"comiss\0"
.balign 4
_Lt_00B6:	.ascii	"cpuid\0"
.balign 4
_Lt_00B7:	.ascii	"cvtdq2pd\0"
.balign 4
_Lt_00B8:	.ascii	"cvtdq2ps\0"
.balign 4
_Lt_00B9:	.ascii	"cvtpd2dq\0"
.balign 4
_Lt_00BA:	.ascii	"cvtpd2pi\0"
.balign 4
_Lt_00BB:	.ascii	"cvtpd2ps\0"
.balign 4
_Lt_00BC:	.ascii	"cvtpi2pd\0"
.balign 4
_Lt_00BD:	.ascii	"cvtpi2ps\0"
.balign 4
_Lt_00BE:	.ascii	"cvtps2dq\0"
.balign 4
_Lt_00BF:	.ascii	"cvtps2pd\0"
.balign 4
_Lt_00C0:	.ascii	"cvtps2pi\0"
.balign 4
_Lt_00C1:	.ascii	"cvtsd2si\0"
.balign 4
_Lt_00C2:	.ascii	"cvtsd2ss\0"
.balign 4
_Lt_00C3:	.ascii	"cvtsi2sd\0"
.balign 4
_Lt_00C4:	.ascii	"cvtsi2ss\0"
.balign 4
_Lt_00C5:	.ascii	"cvtss2sd\0"
.balign 4
_Lt_00C6:	.ascii	"cvtss2si\0"
.balign 4
_Lt_00C7:	.ascii	"cvttpd2pi\0"
.balign 4
_Lt_00C8:	.ascii	"cvttpd2dq\0"
.balign 4
_Lt_00C9:	.ascii	"cvttps2dq\0"
.balign 4
_Lt_00CA:	.ascii	"cvttps2pi\0"
.balign 4
_Lt_00CB:	.ascii	"cvttsd2si\0"
.balign 4
_Lt_00CC:	.ascii	"cvttss2si\0"
.balign 4
_Lt_00CD:	.ascii	"cwd\0"
.balign 4
_Lt_00CE:	.ascii	"daa\0"
.balign 4
_Lt_00CF:	.ascii	"das\0"
.balign 4
_Lt_00D0:	.ascii	"dec\0"
.balign 4
_Lt_00D1:	.ascii	"div\0"
.balign 4
_Lt_00D2:	.ascii	"divpd\0"
.balign 4
_Lt_00D3:	.ascii	"divps\0"
.balign 4
_Lt_00D4:	.ascii	"divss\0"
.balign 4
_Lt_00D5:	.ascii	"emms\0"
.balign 4
_Lt_00D6:	.ascii	"enter\0"
.balign 4
_Lt_00D7:	.ascii	"f2xm1\0"
.balign 4
_Lt_00D8:	.ascii	"fabs\0"
.balign 4
_Lt_00D9:	.ascii	"fadd\0"
.balign 4
_Lt_00DA:	.ascii	"faddp\0"
.balign 4
_Lt_00DB:	.ascii	"fiadd\0"
.balign 4
_Lt_00DC:	.ascii	"fbld\0"
.balign 4
_Lt_00DD:	.ascii	"fbstp\0"
.balign 4
_Lt_00DE:	.ascii	"fchs\0"
.balign 4
_Lt_00DF:	.ascii	"fclex\0"
.balign 4
_Lt_00E0:	.ascii	"fnclex\0"
.balign 4
_Lt_00E1:	.ascii	"fcmovb\0"
.balign 4
_Lt_00E2:	.ascii	"fcmove\0"
.balign 4
_Lt_00E3:	.ascii	"fcmovbe\0"
.balign 4
_Lt_00E4:	.ascii	"fcmovu\0"
.balign 4
_Lt_00E5:	.ascii	"fcmovnb\0"
.balign 4
_Lt_00E6:	.ascii	"fcmovne\0"
.balign 4
_Lt_00E7:	.ascii	"fcmovnbe\0"
.balign 4
_Lt_00E8:	.ascii	"fcmovnu\0"
.balign 4
_Lt_00E9:	.ascii	"fcom\0"
.balign 4
_Lt_00EA:	.ascii	"fcomp\0"
.balign 4
_Lt_00EB:	.ascii	"fcompp\0"
.balign 4
_Lt_00EC:	.ascii	"fcomi\0"
.balign 4
_Lt_00ED:	.ascii	"fcomip\0"
.balign 4
_Lt_00EE:	.ascii	"fucomi\0"
.balign 4
_Lt_00EF:	.ascii	"fucomip\0"
.balign 4
_Lt_00F0:	.ascii	"fcos\0"
.balign 4
_Lt_00F1:	.ascii	"fdecstp\0"
.balign 4
_Lt_00F2:	.ascii	"fdiv\0"
.balign 4
_Lt_00F3:	.ascii	"fdivp\0"
.balign 4
_Lt_00F4:	.ascii	"fidiv\0"
.balign 4
_Lt_00F5:	.ascii	"fdivr\0"
.balign 4
_Lt_00F6:	.ascii	"fdivrp\0"
.balign 4
_Lt_00F7:	.ascii	"fidivr\0"
.balign 4
_Lt_00F8:	.ascii	"ffree\0"
.balign 4
_Lt_00F9:	.ascii	"ficom\0"
.balign 4
_Lt_00FA:	.ascii	"ficomp\0"
.balign 4
_Lt_00FB:	.ascii	"fild\0"
.balign 4
_Lt_00FC:	.ascii	"fincstp\0"
.balign 4
_Lt_00FD:	.ascii	"finit\0"
.balign 4
_Lt_00FE:	.ascii	"fninit\0"
.balign 4
_Lt_00FF:	.ascii	"fist\0"
.balign 4
_Lt_0100:	.ascii	"fistp\0"
.balign 4
_Lt_0101:	.ascii	"fld\0"
.balign 4
_Lt_0102:	.ascii	"fld1\0"
.balign 4
_Lt_0103:	.ascii	"fldl2t\0"
.balign 4
_Lt_0104:	.ascii	"fldl2e\0"
.balign 4
_Lt_0105:	.ascii	"fldpi\0"
.balign 4
_Lt_0106:	.ascii	"fldlg2\0"
.balign 4
_Lt_0107:	.ascii	"fldln2\0"
.balign 4
_Lt_0108:	.ascii	"fldz\0"
.balign 4
_Lt_0109:	.ascii	"fldcw\0"
.balign 4
_Lt_010A:	.ascii	"fldenv\0"
.balign 4
_Lt_010B:	.ascii	"fmul\0"
.balign 4
_Lt_010C:	.ascii	"fmulp\0"
.balign 4
_Lt_010D:	.ascii	"fimul\0"
.balign 4
_Lt_010E:	.ascii	"fnop\0"
.balign 4
_Lt_010F:	.ascii	"fpatan\0"
.balign 4
_Lt_0110:	.ascii	"fprem\0"
.balign 4
_Lt_0111:	.ascii	"fprem1\0"
.balign 4
_Lt_0112:	.ascii	"fptan\0"
.balign 4
_Lt_0113:	.ascii	"frndint\0"
.balign 4
_Lt_0114:	.ascii	"frstor\0"
.balign 4
_Lt_0115:	.ascii	"fsave\0"
.balign 4
_Lt_0116:	.ascii	"fnsave\0"
.balign 4
_Lt_0117:	.ascii	"fscale\0"
.balign 4
_Lt_0118:	.ascii	"fsin\0"
.balign 4
_Lt_0119:	.ascii	"fsincos\0"
.balign 4
_Lt_011A:	.ascii	"fsqrt\0"
.balign 4
_Lt_011B:	.ascii	"fst\0"
.balign 4
_Lt_011C:	.ascii	"fstp\0"
.balign 4
_Lt_011D:	.ascii	"fstcw\0"
.balign 4
_Lt_011E:	.ascii	"fnstcw\0"
.balign 4
_Lt_011F:	.ascii	"fstenv\0"
.balign 4
_Lt_0120:	.ascii	"fnstenv\0"
.balign 4
_Lt_0121:	.ascii	"fstsw\0"
.balign 4
_Lt_0122:	.ascii	"fnstsw\0"
.balign 4
_Lt_0123:	.ascii	"fsub\0"
.balign 4
_Lt_0124:	.ascii	"fsubp\0"
.balign 4
_Lt_0125:	.ascii	"fisub\0"
.balign 4
_Lt_0126:	.ascii	"fsubr\0"
.balign 4
_Lt_0127:	.ascii	"fsubrp\0"
.balign 4
_Lt_0128:	.ascii	"fisubr\0"
.balign 4
_Lt_0129:	.ascii	"ftst\0"
.balign 4
_Lt_012A:	.ascii	"fucom\0"
.balign 4
_Lt_012B:	.ascii	"fucomp\0"
.balign 4
_Lt_012C:	.ascii	"fucompp\0"
.balign 4
_Lt_012D:	.ascii	"fwait\0"
.balign 4
_Lt_012E:	.ascii	"fxam\0"
.balign 4
_Lt_012F:	.ascii	"fxch\0"
.balign 4
_Lt_0130:	.ascii	"fxrstor\0"
.balign 4
_Lt_0131:	.ascii	"fxsave\0"
.balign 4
_Lt_0132:	.ascii	"fxtract\0"
.balign 4
_Lt_0133:	.ascii	"fyl2x\0"
.balign 4
_Lt_0134:	.ascii	"fyl2xp1\0"
.balign 4
_Lt_0135:	.ascii	"hlt\0"
.balign 4
_Lt_0136:	.ascii	"idiv\0"
.balign 4
_Lt_0137:	.ascii	"imul\0"
.balign 4
_Lt_0138:	.ascii	"in\0"
.balign 4
_Lt_0139:	.ascii	"inc\0"
.balign 4
_Lt_013A:	.ascii	"ins\0"
.balign 4
_Lt_013B:	.ascii	"insb\0"
.balign 4
_Lt_013C:	.ascii	"insw\0"
.balign 4
_Lt_013D:	.ascii	"insd\0"
.balign 4
_Lt_013E:	.ascii	"int\0"
.balign 4
_Lt_013F:	.ascii	"into\0"
.balign 4
_Lt_0140:	.ascii	"invd\0"
.balign 4
_Lt_0141:	.ascii	"invlpg\0"
.balign 4
_Lt_0142:	.ascii	"iret\0"
.balign 4
_Lt_0143:	.ascii	"iretd\0"
.balign 4
_Lt_0144:	.ascii	"ja\0"
.balign 4
_Lt_0145:	.ascii	"jae\0"
.balign 4
_Lt_0146:	.ascii	"jb\0"
.balign 4
_Lt_0147:	.ascii	"jbe\0"
.balign 4
_Lt_0148:	.ascii	"jc\0"
.balign 4
_Lt_0149:	.ascii	"jcxz\0"
.balign 4
_Lt_014A:	.ascii	"jecxz\0"
.balign 4
_Lt_014B:	.ascii	"je\0"
.balign 4
_Lt_014C:	.ascii	"jg\0"
.balign 4
_Lt_014D:	.ascii	"jge\0"
.balign 4
_Lt_014E:	.ascii	"jl\0"
.balign 4
_Lt_014F:	.ascii	"jle\0"
.balign 4
_Lt_0150:	.ascii	"jna\0"
.balign 4
_Lt_0151:	.ascii	"jnae\0"
.balign 4
_Lt_0152:	.ascii	"jnb\0"
.balign 4
_Lt_0153:	.ascii	"jnbe\0"
.balign 4
_Lt_0154:	.ascii	"jnc\0"
.balign 4
_Lt_0155:	.ascii	"jne\0"
.balign 4
_Lt_0156:	.ascii	"jng\0"
.balign 4
_Lt_0157:	.ascii	"jnge\0"
.balign 4
_Lt_0158:	.ascii	"jnl\0"
.balign 4
_Lt_0159:	.ascii	"jnle\0"
.balign 4
_Lt_015A:	.ascii	"jno\0"
.balign 4
_Lt_015B:	.ascii	"jnp\0"
.balign 4
_Lt_015C:	.ascii	"jns\0"
.balign 4
_Lt_015D:	.ascii	"jnz\0"
.balign 4
_Lt_015E:	.ascii	"jo\0"
.balign 4
_Lt_015F:	.ascii	"jp\0"
.balign 4
_Lt_0160:	.ascii	"jpe\0"
.balign 4
_Lt_0161:	.ascii	"jpo\0"
.balign 4
_Lt_0162:	.ascii	"js\0"
.balign 4
_Lt_0163:	.ascii	"jz\0"
.balign 4
_Lt_0164:	.ascii	"jmp\0"
.balign 4
_Lt_0165:	.ascii	"lahf\0"
.balign 4
_Lt_0166:	.ascii	"lar\0"
.balign 4
_Lt_0167:	.ascii	"ldmxcsr\0"
.balign 4
_Lt_0168:	.ascii	"lds\0"
.balign 4
_Lt_0169:	.ascii	"les\0"
.balign 4
_Lt_016A:	.ascii	"lfs\0"
.balign 4
_Lt_016B:	.ascii	"lgs\0"
.balign 4
_Lt_016C:	.ascii	"lss\0"
.balign 4
_Lt_016D:	.ascii	"lea\0"
.balign 4
_Lt_016E:	.ascii	"leave\0"
.balign 4
_Lt_016F:	.ascii	"lfence\0"
.balign 4
_Lt_0170:	.ascii	"lgdt\0"
.balign 4
_Lt_0171:	.ascii	"lidt\0"
.balign 4
_Lt_0172:	.ascii	"lldt\0"
.balign 4
_Lt_0173:	.ascii	"lmsw\0"
.balign 4
_Lt_0174:	.ascii	"lock\0"
.balign 4
_Lt_0175:	.ascii	"lods\0"
.balign 4
_Lt_0176:	.ascii	"lodsb\0"
.balign 4
_Lt_0177:	.ascii	"lodsw\0"
.balign 4
_Lt_0178:	.ascii	"lodsd\0"
.balign 4
_Lt_0179:	.ascii	"loop\0"
.balign 4
_Lt_017A:	.ascii	"loope\0"
.balign 4
_Lt_017B:	.ascii	"loopz\0"
.balign 4
_Lt_017C:	.ascii	"loopne\0"
.balign 4
_Lt_017D:	.ascii	"loopnz\0"
.balign 4
_Lt_017E:	.ascii	"lsl\0"
.balign 4
_Lt_017F:	.ascii	"ltr\0"
.balign 4
_Lt_0180:	.ascii	"maskmovdqu\0"
.balign 4
_Lt_0181:	.ascii	"maskmovq\0"
.balign 4
_Lt_0182:	.ascii	"maxpd\0"
.balign 4
_Lt_0183:	.ascii	"maxps\0"
.balign 4
_Lt_0184:	.ascii	"maxsd\0"
.balign 4
_Lt_0185:	.ascii	"maxss\0"
.balign 4
_Lt_0186:	.ascii	"mfence\0"
.balign 4
_Lt_0187:	.ascii	"minpd\0"
.balign 4
_Lt_0188:	.ascii	"minps\0"
.balign 4
_Lt_0189:	.ascii	"minsd\0"
.balign 4
_Lt_018A:	.ascii	"minss\0"
.balign 4
_Lt_018B:	.ascii	"mov\0"
.balign 4
_Lt_018C:	.ascii	"movapd\0"
.balign 4
_Lt_018D:	.ascii	"movaps\0"
.balign 4
_Lt_018E:	.ascii	"movd\0"
.balign 4
_Lt_018F:	.ascii	"movdqa\0"
.balign 4
_Lt_0190:	.ascii	"movdqu\0"
.balign 4
_Lt_0191:	.ascii	"movdq2q\0"
.balign 4
_Lt_0192:	.ascii	"movhlps\0"
.balign 4
_Lt_0193:	.ascii	"movhpd\0"
.balign 4
_Lt_0194:	.ascii	"movhps\0"
.balign 4
_Lt_0195:	.ascii	"movlhps\0"
.balign 4
_Lt_0196:	.ascii	"movlpd\0"
.balign 4
_Lt_0197:	.ascii	"movlps\0"
.balign 4
_Lt_0198:	.ascii	"movmskpd\0"
.balign 4
_Lt_0199:	.ascii	"movmskps\0"
.balign 4
_Lt_019A:	.ascii	"movntdq\0"
.balign 4
_Lt_019B:	.ascii	"movnti\0"
.balign 4
_Lt_019C:	.ascii	"movntpd\0"
.balign 4
_Lt_019D:	.ascii	"movntps\0"
.balign 4
_Lt_019E:	.ascii	"movntq\0"
.balign 4
_Lt_019F:	.ascii	"movq\0"
.balign 4
_Lt_01A0:	.ascii	"movq2dq\0"
.balign 4
_Lt_01A1:	.ascii	"movs\0"
.balign 4
_Lt_01A2:	.ascii	"movsb\0"
.balign 4
_Lt_01A3:	.ascii	"movsw\0"
.balign 4
_Lt_01A4:	.ascii	"movsd\0"
.balign 4
_Lt_01A5:	.ascii	"movss\0"
.balign 4
_Lt_01A6:	.ascii	"movsx\0"
.balign 4
_Lt_01A7:	.ascii	"movupd\0"
.balign 4
_Lt_01A8:	.ascii	"movups\0"
.balign 4
_Lt_01A9:	.ascii	"movzx\0"
.balign 4
_Lt_01AA:	.ascii	"mul\0"
.balign 4
_Lt_01AB:	.ascii	"mulpd\0"
.balign 4
_Lt_01AC:	.ascii	"mulps\0"
.balign 4
_Lt_01AD:	.ascii	"mulsd\0"
.balign 4
_Lt_01AE:	.ascii	"mulss\0"
.balign 4
_Lt_01AF:	.ascii	"neg\0"
.balign 4
_Lt_01B0:	.ascii	"nop\0"
.balign 4
_Lt_01B1:	.ascii	"not\0"
.balign 4
_Lt_01B2:	.ascii	"or\0"
.balign 4
_Lt_01B3:	.ascii	"orpd\0"
.balign 4
_Lt_01B4:	.ascii	"orps\0"
.balign 4
_Lt_01B5:	.ascii	"out\0"
.balign 4
_Lt_01B6:	.ascii	"outs\0"
.balign 4
_Lt_01B7:	.ascii	"outsb\0"
.balign 4
_Lt_01B8:	.ascii	"outsw\0"
.balign 4
_Lt_01B9:	.ascii	"outsd\0"
.balign 4
_Lt_01BA:	.ascii	"packsswb\0"
.balign 4
_Lt_01BB:	.ascii	"packssdw\0"
.balign 4
_Lt_01BC:	.ascii	"packuswb\0"
.balign 4
_Lt_01BD:	.ascii	"paddb\0"
.balign 4
_Lt_01BE:	.ascii	"paddw\0"
.balign 4
_Lt_01BF:	.ascii	"paddd\0"
.balign 4
_Lt_01C0:	.ascii	"paddq\0"
.balign 4
_Lt_01C1:	.ascii	"paddsb\0"
.balign 4
_Lt_01C2:	.ascii	"paddsw\0"
.balign 4
_Lt_01C3:	.ascii	"paddusb\0"
.balign 4
_Lt_01C4:	.ascii	"paddusw\0"
.balign 4
_Lt_01C5:	.ascii	"pand\0"
.balign 4
_Lt_01C6:	.ascii	"pandn\0"
.balign 4
_Lt_01C7:	.ascii	"pause\0"
.balign 4
_Lt_01C8:	.ascii	"pavgb\0"
.balign 4
_Lt_01C9:	.ascii	"pavgw\0"
.balign 4
_Lt_01CA:	.ascii	"pcmpeqb\0"
.balign 4
_Lt_01CB:	.ascii	"pcmpeqw\0"
.balign 4
_Lt_01CC:	.ascii	"pcmpeqd\0"
.balign 4
_Lt_01CD:	.ascii	"pcmpgtb\0"
.balign 4
_Lt_01CE:	.ascii	"pcmpgtw\0"
.balign 4
_Lt_01CF:	.ascii	"pcmpgtd\0"
.balign 4
_Lt_01D0:	.ascii	"pextrw\0"
.balign 4
_Lt_01D1:	.ascii	"pinsrw\0"
.balign 4
_Lt_01D2:	.ascii	"pmaddwd\0"
.balign 4
_Lt_01D3:	.ascii	"pmaxsw\0"
.balign 4
_Lt_01D4:	.ascii	"pmaxub\0"
.balign 4
_Lt_01D5:	.ascii	"pminsw\0"
.balign 4
_Lt_01D6:	.ascii	"pminub\0"
.balign 4
_Lt_01D7:	.ascii	"pmovmskb\0"
.balign 4
_Lt_01D8:	.ascii	"pmulhuv\0"
.balign 4
_Lt_01D9:	.ascii	"pmulhw\0"
.balign 4
_Lt_01DA:	.ascii	"pmullw\0"
.balign 4
_Lt_01DB:	.ascii	"pmuludq\0"
.balign 4
_Lt_01DC:	.ascii	"pop\0"
.balign 4
_Lt_01DD:	.ascii	"popa\0"
.balign 4
_Lt_01DE:	.ascii	"popad\0"
.balign 4
_Lt_01DF:	.ascii	"popf\0"
.balign 4
_Lt_01E0:	.ascii	"popfd\0"
.balign 4
_Lt_01E1:	.ascii	"por\0"
.balign 4
_Lt_01E2:	.ascii	"prefetcht0\0"
.balign 4
_Lt_01E3:	.ascii	"prefetcht1\0"
.balign 4
_Lt_01E4:	.ascii	"prefetcht2\0"
.balign 4
_Lt_01E5:	.ascii	"prefetchnta\0"
.balign 4
_Lt_01E6:	.ascii	"psadbw\0"
.balign 4
_Lt_01E7:	.ascii	"pshufd\0"
.balign 4
_Lt_01E8:	.ascii	"pshufhw\0"
.balign 4
_Lt_01E9:	.ascii	"pshuflw\0"
.balign 4
_Lt_01EA:	.ascii	"pshufw\0"
.balign 4
_Lt_01EB:	.ascii	"psllw\0"
.balign 4
_Lt_01EC:	.ascii	"pslld\0"
.balign 4
_Lt_01ED:	.ascii	"psllq\0"
.balign 4
_Lt_01EE:	.ascii	"psraw\0"
.balign 4
_Lt_01EF:	.ascii	"psrad\0"
.balign 4
_Lt_01F0:	.ascii	"psrldq\0"
.balign 4
_Lt_01F1:	.ascii	"psrlw\0"
.balign 4
_Lt_01F2:	.ascii	"psrld\0"
.balign 4
_Lt_01F3:	.ascii	"psrlq\0"
.balign 4
_Lt_01F4:	.ascii	"psubb\0"
.balign 4
_Lt_01F5:	.ascii	"psubw\0"
.balign 4
_Lt_01F6:	.ascii	"psubd\0"
.balign 4
_Lt_01F7:	.ascii	"psubq\0"
.balign 4
_Lt_01F8:	.ascii	"psubsb\0"
.balign 4
_Lt_01F9:	.ascii	"psubsw\0"
.balign 4
_Lt_01FA:	.ascii	"psubusb\0"
.balign 4
_Lt_01FB:	.ascii	"psubusw\0"
.balign 4
_Lt_01FC:	.ascii	"punpckhbw\0"
.balign 4
_Lt_01FD:	.ascii	"punpckhwd\0"
.balign 4
_Lt_01FE:	.ascii	"punpckhdq\0"
.balign 4
_Lt_01FF:	.ascii	"punpckhqdq\0"
.balign 4
_Lt_0200:	.ascii	"punpcklbw\0"
.balign 4
_Lt_0201:	.ascii	"punpcklwd\0"
.balign 4
_Lt_0202:	.ascii	"punpckldq\0"
.balign 4
_Lt_0203:	.ascii	"punpcklqdq\0"
.balign 4
_Lt_0204:	.ascii	"push\0"
.balign 4
_Lt_0205:	.ascii	"pusha\0"
.balign 4
_Lt_0206:	.ascii	"pushad\0"
.balign 4
_Lt_0207:	.ascii	"pushf\0"
.balign 4
_Lt_0208:	.ascii	"pushfd\0"
.balign 4
_Lt_0209:	.ascii	"pxor\0"
.balign 4
_Lt_020A:	.ascii	"rcl\0"
.balign 4
_Lt_020B:	.ascii	"rcr\0"
.balign 4
_Lt_020C:	.ascii	"rol\0"
.balign 4
_Lt_020D:	.ascii	"ror\0"
.balign 4
_Lt_020E:	.ascii	"rcpps\0"
.balign 4
_Lt_020F:	.ascii	"rcpss\0"
.balign 4
_Lt_0210:	.ascii	"rdmsr\0"
.balign 4
_Lt_0211:	.ascii	"rdpmc\0"
.balign 4
_Lt_0212:	.ascii	"rdtsc\0"
.balign 4
_Lt_0213:	.ascii	"rep\0"
.balign 4
_Lt_0214:	.ascii	"repe\0"
.balign 4
_Lt_0215:	.ascii	"repz\0"
.balign 4
_Lt_0216:	.ascii	"repne\0"
.balign 4
_Lt_0217:	.ascii	"repnz\0"
.balign 4
_Lt_0218:	.ascii	"ret\0"
.balign 4
_Lt_0219:	.ascii	"rsm\0"
.balign 4
_Lt_021A:	.ascii	"rsqrtps\0"
.balign 4
_Lt_021B:	.ascii	"rsqrtss\0"
.balign 4
_Lt_021C:	.ascii	"sahf\0"
.balign 4
_Lt_021D:	.ascii	"sal\0"
.balign 4
_Lt_021E:	.ascii	"sar\0"
.balign 4
_Lt_021F:	.ascii	"shl\0"
.balign 4
_Lt_0220:	.ascii	"shr\0"
.balign 4
_Lt_0221:	.ascii	"sbb\0"
.balign 4
_Lt_0222:	.ascii	"scas\0"
.balign 4
_Lt_0223:	.ascii	"scasb\0"
.balign 4
_Lt_0224:	.ascii	"scasw\0"
.balign 4
_Lt_0225:	.ascii	"scasd\0"
.balign 4
_Lt_0226:	.ascii	"seta\0"
.balign 4
_Lt_0227:	.ascii	"setae\0"
.balign 4
_Lt_0228:	.ascii	"setb\0"
.balign 4
_Lt_0229:	.ascii	"setbe\0"
.balign 4
_Lt_022A:	.ascii	"setc\0"
.balign 4
_Lt_022B:	.ascii	"sete\0"
.balign 4
_Lt_022C:	.ascii	"setg\0"
.balign 4
_Lt_022D:	.ascii	"setge\0"
.balign 4
_Lt_022E:	.ascii	"setl\0"
.balign 4
_Lt_022F:	.ascii	"setle\0"
.balign 4
_Lt_0230:	.ascii	"setna\0"
.balign 4
_Lt_0231:	.ascii	"setnae\0"
.balign 4
_Lt_0232:	.ascii	"setnb\0"
.balign 4
_Lt_0233:	.ascii	"setnbe\0"
.balign 4
_Lt_0234:	.ascii	"setnc\0"
.balign 4
_Lt_0235:	.ascii	"setne\0"
.balign 4
_Lt_0236:	.ascii	"setng\0"
.balign 4
_Lt_0237:	.ascii	"setnge\0"
.balign 4
_Lt_0238:	.ascii	"setnl\0"
.balign 4
_Lt_0239:	.ascii	"setnle\0"
.balign 4
_Lt_023A:	.ascii	"setno\0"
.balign 4
_Lt_023B:	.ascii	"setnp\0"
.balign 4
_Lt_023C:	.ascii	"setns\0"
.balign 4
_Lt_023D:	.ascii	"setnz\0"
.balign 4
_Lt_023E:	.ascii	"seto\0"
.balign 4
_Lt_023F:	.ascii	"setp\0"
.balign 4
_Lt_0240:	.ascii	"setpe\0"
.balign 4
_Lt_0241:	.ascii	"setpo\0"
.balign 4
_Lt_0242:	.ascii	"sets\0"
.balign 4
_Lt_0243:	.ascii	"setz\0"
.balign 4
_Lt_0244:	.ascii	"sfence\0"
.balign 4
_Lt_0245:	.ascii	"sgdt\0"
.balign 4
_Lt_0246:	.ascii	"sidt\0"
.balign 4
_Lt_0247:	.ascii	"shld\0"
.balign 4
_Lt_0248:	.ascii	"shrd\0"
.balign 4
_Lt_0249:	.ascii	"shufpd\0"
.balign 4
_Lt_024A:	.ascii	"shufps\0"
.balign 4
_Lt_024B:	.ascii	"sldt\0"
.balign 4
_Lt_024C:	.ascii	"smsw\0"
.balign 4
_Lt_024D:	.ascii	"sqrtpd\0"
.balign 4
_Lt_024E:	.ascii	"sqrtps\0"
.balign 4
_Lt_024F:	.ascii	"sqrtsd\0"
.balign 4
_Lt_0250:	.ascii	"sqrtss\0"
.balign 4
_Lt_0251:	.ascii	"stc\0"
.balign 4
_Lt_0252:	.ascii	"std\0"
.balign 4
_Lt_0253:	.ascii	"sti\0"
.balign 4
_Lt_0254:	.ascii	"stmxcsr\0"
.balign 4
_Lt_0255:	.ascii	"stos\0"
.balign 4
_Lt_0256:	.ascii	"stosb\0"
.balign 4
_Lt_0257:	.ascii	"stosw\0"
.balign 4
_Lt_0258:	.ascii	"stosd\0"
.balign 4
_Lt_0259:	.ascii	"str\0"
.balign 4
_Lt_025A:	.ascii	"sub\0"
.balign 4
_Lt_025B:	.ascii	"subpd\0"
.balign 4
_Lt_025C:	.ascii	"subps\0"
.balign 4
_Lt_025D:	.ascii	"subsd\0"
.balign 4
_Lt_025E:	.ascii	"subss\0"
.balign 4
_Lt_025F:	.ascii	"sysenter\0"
.balign 4
_Lt_0260:	.ascii	"sysexit\0"
.balign 4
_Lt_0261:	.ascii	"test\0"
.balign 4
_Lt_0262:	.ascii	"ucomisd\0"
.balign 4
_Lt_0263:	.ascii	"ucomiss\0"
.balign 4
_Lt_0264:	.ascii	"ud2\0"
.balign 4
_Lt_0265:	.ascii	"unpckhpd\0"
.balign 4
_Lt_0266:	.ascii	"unpckhps\0"
.balign 4
_Lt_0267:	.ascii	"unpcklpd\0"
.balign 4
_Lt_0268:	.ascii	"unpcklps\0"
.balign 4
_Lt_0269:	.ascii	"verr\0"
.balign 4
_Lt_026A:	.ascii	"verw\0"
.balign 4
_Lt_026B:	.ascii	"wait\0"
.balign 4
_Lt_026C:	.ascii	"wbinvd\0"
.balign 4
_Lt_026D:	.ascii	"wrmsr\0"
.balign 4
_Lt_026E:	.ascii	"xadd\0"
.balign 4
_Lt_026F:	.ascii	"xchg\0"
.balign 4
_Lt_0270:	.ascii	"xlat\0"
.balign 4
_Lt_0271:	.ascii	"xlatb\0"
.balign 4
_Lt_0272:	.ascii	"xor\0"
.balign 4
_Lt_0273:	.ascii	"xorpd\0"
.balign 4
_Lt_0274:	.ascii	"xorps\0"
.balign 4
_Lt_0275:	.ascii	"pavgusb\0"
.balign 4
_Lt_0276:	.ascii	"pfadd\0"
.balign 4
_Lt_0277:	.ascii	"pfsub\0"
.balign 4
_Lt_0278:	.ascii	"pfsubr\0"
.balign 4
_Lt_0279:	.ascii	"pfacc\0"
.balign 4
_Lt_027A:	.ascii	"pfcmpge\0"
.balign 4
_Lt_027B:	.ascii	"pfcmpgt\0"
.balign 4
_Lt_027C:	.ascii	"pfcmpeq\0"
.balign 4
_Lt_027D:	.ascii	"pfmin\0"
.balign 4
_Lt_027E:	.ascii	"pfmax\0"
.balign 4
_Lt_027F:	.ascii	"pi2fw\0"
.balign 4
_Lt_0280:	.ascii	"pi2fd\0"
.balign 4
_Lt_0281:	.ascii	"pf2iw\0"
.balign 4
_Lt_0282:	.ascii	"pf2id\0"
.balign 4
_Lt_0283:	.ascii	"pfrcp\0"
.balign 4
_Lt_0284:	.ascii	"pfrsqrt\0"
.balign 4
_Lt_0285:	.ascii	"pfmul\0"
.balign 4
_Lt_0286:	.ascii	"pfrcpit1\0"
.balign 4
_Lt_0287:	.ascii	"pfrsqit1\0"
.balign 4
_Lt_0288:	.ascii	"pfrcpit2\0"
.balign 4
_Lt_0289:	.ascii	"pmulhrw\0"
.balign 4
_Lt_028A:	.ascii	"pswapw\0"
.balign 4
_Lt_028B:	.ascii	"femms\0"
.balign 4
_Lt_028C:	.ascii	"prefetch\0"
.balign 4
_Lt_028D:	.ascii	"prefetchw\0"
.balign 4
_Lt_028E:	.ascii	"pfnacc\0"
.balign 4
_Lt_028F:	.ascii	"pfpnacc\0"
.balign 4
_Lt_0290:	.ascii	"pswapd\0"
.balign 4
_Lt_0291:	.ascii	"pmulhuw\0"
.balign 4
_GLOBALASMKEYWORDSX86:
.int _Lt_0293
.int _Lt_0294
.int _Lt_0295
.int _Lt_0296
.int _Lt_0297
.int _Lt_0298
.int _Lt_0299
.int _Lt_029A
.int _Lt_029B
.int _Lt_029C
.int _Lt_029D
.int _Lt_029E
.int _Lt_029F
.int _Lt_02A0
.int _Lt_02A1
.int _Lt_02A2
.int _Lt_02A3
.int _Lt_02A4
.int _Lt_02A5
.int _Lt_02A6
.int _Lt_02A7
.int _Lt_02A8
.int _Lt_02A9
.int _Lt_02AA
.int _Lt_02AB
.int _Lt_02AC
.int _Lt_02AD
.int _Lt_02AE
.int _Lt_02AF
.int _Lt_02B0
.int _Lt_02B1
.int _Lt_02B2
.int _Lt_02B3
.int _Lt_02B4
.int _Lt_02B5
.int _Lt_02B6
.int _Lt_02B7
.int _Lt_02B8
.int _Lt_02B9
.int _Lt_02BA
.int _Lt_02BB
.int _Lt_02BC
.int _Lt_02BD
.int _Lt_02BE
.int _Lt_02BF
.int _Lt_02C0
.int _Lt_02C1
.int _Lt_02C2
.int _Lt_02C3
.int _Lt_02C4
.int _Lt_02C5
.int _Lt_02C6
.int _Lt_02C7
.int _Lt_02C8
.int _Lt_02C9
.int _Lt_02CA
.int _Lt_02CB
.int _Lt_02CC
.int _Lt_02CD
.int _Lt_02CE
.int _Lt_02CF
.int _Lt_02D0
.int _Lt_02D1
.int _Lt_02D2
.int _Lt_02D3
.int _Lt_02D4
.int _Lt_02D5
.int _Lt_02D6
.int _Lt_02D7
.int _Lt_02D8
.int _Lt_02D9
.int _Lt_02DA
.int _Lt_02DB
.int _Lt_02DC
.int _Lt_02DD
.int _Lt_02DE
.int _Lt_02DF
.int _Lt_02E0
.int _Lt_02E1
.int _Lt_02E2
.int _Lt_02E3
.int _Lt_02E4
.int _Lt_02E5
.int _Lt_02E6
.int _Lt_02E7
.int _Lt_02E8
.int _Lt_02E9
.int _Lt_02EA
.int _Lt_02EB
.int _Lt_02EC
.int _Lt_02ED
.int _Lt_02EE
.int _Lt_02EF
.int _Lt_02F0
.int _Lt_02F1
.int _Lt_02F2
.int _Lt_02F3
.int _Lt_02F4
.int _Lt_02F5
.int _Lt_02F6
.int _Lt_02F7
.int _Lt_02F8
.int _Lt_02F9
.int _Lt_02FA
.int _Lt_02FB
.int _Lt_02FC
.int _Lt_02FD
.int _Lt_02FE
.int _Lt_02FF
.int _Lt_0300
.int _Lt_0301
.int _Lt_0302
.int _Lt_0303
.int _Lt_0304
.int _Lt_0305
.int _Lt_0306
.int _Lt_0307
.int _Lt_0308
.int _Lt_0309
.int _Lt_030A
.int _Lt_030B
.int _Lt_030C
.int _Lt_030D
.int _Lt_030E
.int _Lt_030F
.int _Lt_0310
.int _Lt_0311
.int _Lt_0312
.int _Lt_0313
.int _Lt_0314
.int _Lt_0315
.int _Lt_0316
.int _Lt_0317
.int _Lt_0318
.int _Lt_0319
.int _Lt_031A
.int _Lt_031B
.int _Lt_031C
.int _Lt_031D
.int _Lt_031E
.int _Lt_031F
.int _Lt_0320
.int _Lt_0321
.int _Lt_0322
.int _Lt_0323
.int _Lt_0324
.int _Lt_0325
.int _Lt_0326
.int _Lt_0327
.int _Lt_0328
.int _Lt_0329
.int _Lt_032A
.int _Lt_032B
.int _Lt_032C
.int _Lt_032D
.int _Lt_032E
.int _Lt_032F
.int _Lt_0330
.int _Lt_0331
.int _Lt_0332
.int _Lt_0333
.int _Lt_0334
.int _Lt_0335
.int _Lt_0336
.int _Lt_0337
.int _Lt_0338
.int _Lt_0339
.int _Lt_033A
.int _Lt_033B
.int _Lt_033C
.int _Lt_033D
.int _Lt_033E
.int _Lt_033F
.int _Lt_0340
.int _Lt_0341
.int _Lt_0342
.int _Lt_0343
.balign 4
_Lt_0293:	.ascii	"dl\0"
.balign 4
_Lt_0294:	.ascii	"di\0"
.balign 4
_Lt_0295:	.ascii	"si\0"
.balign 4
_Lt_0296:	.ascii	"cl\0"
.balign 4
_Lt_0297:	.ascii	"bl\0"
.balign 4
_Lt_0298:	.ascii	"al\0"
.balign 4
_Lt_0299:	.ascii	"bp\0"
.balign 4
_Lt_029A:	.ascii	"sp\0"
.balign 4
_Lt_029B:	.ascii	"dx\0"
.balign 4
_Lt_029C:	.ascii	"cx\0"
.balign 4
_Lt_029D:	.ascii	"bx\0"
.balign 4
_Lt_029E:	.ascii	"ax\0"
.balign 4
_Lt_029F:	.ascii	"edx\0"
.balign 4
_Lt_02A0:	.ascii	"edi\0"
.balign 4
_Lt_02A1:	.ascii	"esi\0"
.balign 4
_Lt_02A2:	.ascii	"ecx\0"
.balign 4
_Lt_02A3:	.ascii	"ebx\0"
.balign 4
_Lt_02A4:	.ascii	"eax\0"
.balign 4
_Lt_02A5:	.ascii	"ebp\0"
.balign 4
_Lt_02A6:	.ascii	"esp\0"
.balign 4
_Lt_02A7:	.ascii	"st\0"
.balign 4
_Lt_02A8:	.ascii	"cs\0"
.balign 4
_Lt_02A9:	.ascii	"ds\0"
.balign 4
_Lt_02AA:	.ascii	"es\0"
.balign 4
_Lt_02AB:	.ascii	"fs\0"
.balign 4
_Lt_02AC:	.ascii	"gs\0"
.balign 4
_Lt_02AD:	.ascii	"ss\0"
.balign 4
_Lt_02AE:	.ascii	"mm0\0"
.balign 4
_Lt_02AF:	.ascii	"mm1\0"
.balign 4
_Lt_02B0:	.ascii	"mm2\0"
.balign 4
_Lt_02B1:	.ascii	"mm3\0"
.balign 4
_Lt_02B2:	.ascii	"mm4\0"
.balign 4
_Lt_02B3:	.ascii	"mm5\0"
.balign 4
_Lt_02B4:	.ascii	"mm6\0"
.balign 4
_Lt_02B5:	.ascii	"mm7\0"
.balign 4
_Lt_02B6:	.ascii	"xmm0\0"
.balign 4
_Lt_02B7:	.ascii	"xmm1\0"
.balign 4
_Lt_02B8:	.ascii	"xmm2\0"
.balign 4
_Lt_02B9:	.ascii	"xmm3\0"
.balign 4
_Lt_02BA:	.ascii	"xmm4\0"
.balign 4
_Lt_02BB:	.ascii	"xmm5\0"
.balign 4
_Lt_02BC:	.ascii	"xmm6\0"
.balign 4
_Lt_02BD:	.ascii	"xmm7\0"
.balign 4
_Lt_02BE:	.ascii	"xmm8\0"
.balign 4
_Lt_02BF:	.ascii	"xmm9\0"
.balign 4
_Lt_02C0:	.ascii	"xmm10\0"
.balign 4
_Lt_02C1:	.ascii	"xmm11\0"
.balign 4
_Lt_02C2:	.ascii	"xmm12\0"
.balign 4
_Lt_02C3:	.ascii	"xmm13\0"
.balign 4
_Lt_02C4:	.ascii	"xmm14\0"
.balign 4
_Lt_02C5:	.ascii	"xmm15\0"
.balign 4
_Lt_02C6:	.ascii	"word\0"
.balign 4
_Lt_02C7:	.ascii	"dword\0"
.balign 4
_Lt_02C8:	.ascii	"qword\0"
.balign 4
_Lt_02C9:	.ascii	"fword\0"
.balign 4
_Lt_02CA:	.ascii	"mmword\0"
.balign 4
_Lt_02CB:	.ascii	"oword\0"
.balign 4
_Lt_02CC:	.ascii	"r8\0"
.balign 4
_Lt_02CD:	.ascii	"r9\0"
.balign 4
_Lt_02CE:	.ascii	"r10\0"
.balign 4
_Lt_02CF:	.ascii	"r11\0"
.balign 4
_Lt_02D0:	.ascii	"r12\0"
.balign 4
_Lt_02D1:	.ascii	"r13\0"
.balign 4
_Lt_02D2:	.ascii	"r14\0"
.balign 4
_Lt_02D3:	.ascii	"r15\0"
.balign 4
_Lt_02D4:	.ascii	"r8w\0"
.balign 4
_Lt_02D5:	.ascii	"r9w\0"
.balign 4
_Lt_02D6:	.ascii	"r10w\0"
.balign 4
_Lt_02D7:	.ascii	"r11w\0"
.balign 4
_Lt_02D8:	.ascii	"r12w\0"
.balign 4
_Lt_02D9:	.ascii	"r13w\0"
.balign 4
_Lt_02DA:	.ascii	"r14w\0"
.balign 4
_Lt_02DB:	.ascii	"r15w\0"
.balign 4
_Lt_02DC:	.ascii	"rax\0"
.balign 4
_Lt_02DD:	.ascii	"rbp\0"
.balign 4
_Lt_02DE:	.ascii	"rbx\0"
.balign 4
_Lt_02DF:	.ascii	"rcx\0"
.balign 4
_Lt_02E0:	.ascii	"rdi\0"
.balign 4
_Lt_02E1:	.ascii	"rdx\0"
.balign 4
_Lt_02E2:	.ascii	"rsi\0"
.balign 4
_Lt_02E3:	.ascii	"rsp\0"
.balign 4
_Lt_02E4:	.ascii	"tbyte\0"
.balign 4
_Lt_02E5:	.ascii	"xmmword\0"
.balign 4
_Lt_02E6:	.ascii	"ymmword\0"
.balign 4
_Lt_02E7:	.ascii	"zmmword\0"
.balign 4
_Lt_02E8:	.ascii	"ah\0"
.balign 4
_Lt_02E9:	.ascii	"axl\0"
.balign 4
_Lt_02EA:	.ascii	"bh\0"
.balign 4
_Lt_02EB:	.ascii	"bpl\0"
.balign 4
_Lt_02EC:	.ascii	"bxl\0"
.balign 4
_Lt_02ED:	.ascii	"ch\0"
.balign 4
_Lt_02EE:	.ascii	"cxl\0"
.balign 4
_Lt_02EF:	.ascii	"dh\0"
.balign 4
_Lt_02F0:	.ascii	"dil\0"
.balign 4
_Lt_02F1:	.ascii	"dr0\0"
.balign 4
_Lt_02F2:	.ascii	"dr1\0"
.balign 4
_Lt_02F3:	.ascii	"dr2\0"
.balign 4
_Lt_02F4:	.ascii	"dr3\0"
.balign 4
_Lt_02F5:	.ascii	"dr4\0"
.balign 4
_Lt_02F6:	.ascii	"dr5\0"
.balign 4
_Lt_02F7:	.ascii	"dr6\0"
.balign 4
_Lt_02F8:	.ascii	"dr7\0"
.balign 4
_Lt_02F9:	.ascii	"dxl\0"
.balign 4
_Lt_02FA:	.ascii	"eip\0"
.balign 4
_Lt_02FB:	.ascii	"eq\0"
.balign 4
_Lt_02FC:	.ascii	"ge\0"
.balign 4
_Lt_02FD:	.ascii	"gt\0"
.balign 4
_Lt_02FE:	.ascii	"le\0"
.balign 4
_Lt_02FF:	.ascii	"lt\0"
.balign 4
_Lt_0300:	.ascii	"ne\0"
.balign 4
_Lt_0301:	.ascii	"r8b\0"
.balign 4
_Lt_0302:	.ascii	"r9b\0"
.balign 4
_Lt_0303:	.ascii	"r10b\0"
.balign 4
_Lt_0304:	.ascii	"r11b\0"
.balign 4
_Lt_0305:	.ascii	"r12b\0"
.balign 4
_Lt_0306:	.ascii	"r13b\0"
.balign 4
_Lt_0307:	.ascii	"r14b\0"
.balign 4
_Lt_0308:	.ascii	"r15b\0"
.balign 4
_Lt_0309:	.ascii	"r8d\0"
.balign 4
_Lt_030A:	.ascii	"r9d\0"
.balign 4
_Lt_030B:	.ascii	"r10d\0"
.balign 4
_Lt_030C:	.ascii	"r11d\0"
.balign 4
_Lt_030D:	.ascii	"r12d\0"
.balign 4
_Lt_030E:	.ascii	"r13d\0"
.balign 4
_Lt_030F:	.ascii	"r14d\0"
.balign 4
_Lt_0310:	.ascii	"r15d\0"
.balign 4
_Lt_0311:	.ascii	"rip\0"
.balign 4
_Lt_0312:	.ascii	"sil\0"
.balign 4
_Lt_0313:	.ascii	"spl\0"
.balign 4
_Lt_0314:	.ascii	"ymm0\0"
.balign 4
_Lt_0315:	.ascii	"ymm1\0"
.balign 4
_Lt_0316:	.ascii	"ymm2\0"
.balign 4
_Lt_0317:	.ascii	"ymm3\0"
.balign 4
_Lt_0318:	.ascii	"ymm4\0"
.balign 4
_Lt_0319:	.ascii	"ymm5\0"
.balign 4
_Lt_031A:	.ascii	"ymm6\0"
.balign 4
_Lt_031B:	.ascii	"ymm7\0"
.balign 4
_Lt_031C:	.ascii	"ymm8\0"
.balign 4
_Lt_031D:	.ascii	"ymm9\0"
.balign 4
_Lt_031E:	.ascii	"ymm10\0"
.balign 4
_Lt_031F:	.ascii	"ymm11\0"
.balign 4
_Lt_0320:	.ascii	"ymm12\0"
.balign 4
_Lt_0321:	.ascii	"ymm13\0"
.balign 4
_Lt_0322:	.ascii	"ymm14\0"
.balign 4
_Lt_0323:	.ascii	"ymm15\0"
.balign 4
_Lt_0324:	.ascii	"zmm0\0"
.balign 4
_Lt_0325:	.ascii	"zmm1\0"
.balign 4
_Lt_0326:	.ascii	"zmm2\0"
.balign 4
_Lt_0327:	.ascii	"zmm3\0"
.balign 4
_Lt_0328:	.ascii	"zmm4\0"
.balign 4
_Lt_0329:	.ascii	"zmm5\0"
.balign 4
_Lt_032A:	.ascii	"zmm6\0"
.balign 4
_Lt_032B:	.ascii	"zmm7\0"
.balign 4
_Lt_032C:	.ascii	"zmm8\0"
.balign 4
_Lt_032D:	.ascii	"zmm9\0"
.balign 4
_Lt_032E:	.ascii	"zmm10\0"
.balign 4
_Lt_032F:	.ascii	"zmm11\0"
.balign 4
_Lt_0330:	.ascii	"zmm12\0"
.balign 4
_Lt_0331:	.ascii	"zmm13\0"
.balign 4
_Lt_0332:	.ascii	"zmm14\0"
.balign 4
_Lt_0333:	.ascii	"zmm15\0"
.balign 4
_Lt_0334:	.ascii	"zmm16\0"
.balign 4
_Lt_0335:	.ascii	"zmm17\0"
.balign 4
_Lt_0336:	.ascii	"zmm18\0"
.balign 4
_Lt_0337:	.ascii	"zmm19\0"
.balign 4
_Lt_0338:	.ascii	"zmm20\0"
.balign 4
_Lt_0339:	.ascii	"zmm21\0"
.balign 4
_Lt_033A:	.ascii	"zmm22\0"
.balign 4
_Lt_033B:	.ascii	"zmm23\0"
.balign 4
_Lt_033C:	.ascii	"zmm24\0"
.balign 4
_Lt_033D:	.ascii	"zmm25\0"
.balign 4
_Lt_033E:	.ascii	"zmm26\0"
.balign 4
_Lt_033F:	.ascii	"zmm27\0"
.balign 4
_Lt_0340:	.ascii	"zmm28\0"
.balign 4
_Lt_0341:	.ascii	"zmm29\0"
.balign 4
_Lt_0342:	.ascii	"zmm30\0"
.balign 4
_Lt_0343:	.ascii	"zmm31\0"

.section .bss
.balign 4
	.lcomm	_INLINEASMKEYWORDS,48
.balign 4
	.lcomm	_GLOBALASMKEYWORDS,48

.section .data
.balign 4
_Lt_03A9:	.ascii	"\"\0"

.section .ctors
.int _fb_ctor__parserzinlineasm
