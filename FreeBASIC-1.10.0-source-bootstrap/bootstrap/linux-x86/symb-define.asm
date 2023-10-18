	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBDEFINEINIT
SYMBDEFINEINIT:
.type SYMBDEFINEINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0282:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 6
push 12
push 500
lea eax, [SYMB+98688]
push eax
call LISTINIT
add esp, 16
push 6
push 16
push 1000
lea eax, [SYMB+98720]
push eax
call LISTINIT
add esp, 16
sub esp, 4
push -1
push 16
lea eax, [SYMB+98752]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-56], 0
.L_0287:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-56]
sal eax, 4
cmp dword ptr [DEFTB+eax+4], 0
je .L_0289
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ebx, dword ptr [DEFTB+eax+8]
and ebx, 1
je .L_028B
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_01AA
push -1
sub esp, 4
push -1
lea ebx, [ebp-12]
push ebx
push 2
push offset Lt_01AA
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_028B:
.L_028A:
.L_0289:
.L_0288:
sub esp, 8
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+8]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+12]
push 0
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax]
call SYMBADDDEFINE
add esp, 32
.L_0285:
inc dword ptr [ebp-56]
.L_0284:
cmp dword ptr [ebp-56], 36
jle .L_0287
.L_0286:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_028F
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ENV+268]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 16
push eax
push 6
push offset Lt_028E
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call SYMBADDDEFINE
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ENV+108], 11
jne .L_0294
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_0295
call SYMBADDDEFINE
add esp, 32
.L_0294:
.L_0293:
mov eax, dword ptr [ENV+284]
and eax, 1
je .L_0297
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_0298
call SYMBADDDEFINE
add esp, 32
jmp .L_0296
.L_0297:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_0299
call SYMBADDDEFINE
add esp, 32
.L_0296:
call FBIS64BIT
test eax, eax
je .L_029B
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_029C
call SYMBADDDEFINE
add esp, 32
.L_029B:
.L_029A:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 2
je .L_02A0
.L_02A1:
cmp dword ptr [ebp-56], 3
jne .L_029F
.L_02A0:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02A2
call SYMBADDDEFINE
add esp, 32
jmp .L_029D
.L_029F:
cmp dword ptr [ebp-56], 0
je .L_02A4
.L_02A5:
cmp dword ptr [ebp-56], 1
jne .L_02A3
.L_02A4:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02A6
call SYMBADDDEFINE
add esp, 32
sub esp, 8
push 1
push offset HDEFASM_CB
push 0
push 0
push 0
push offset Lt_02A7
call SYMBADDDEFINE
add esp, 32
jmp .L_029D
.L_02A3:
cmp dword ptr [ebp-56], 4
je .L_02A9
.L_02AA:
cmp dword ptr [ebp-56], 5
je .L_02A9
.L_02AB:
cmp dword ptr [ebp-56], 6
jne .L_02A8
.L_02A9:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02AC
call SYMBADDDEFINE
add esp, 32
.L_02A8:
.L_029D:
call FBISHOSTBIGENDIAN
test eax, eax
je .L_02AE
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02AF
call SYMBADDDEFINE
add esp, 32
.L_02AE:
.L_02AD:
cmp dword ptr [ebp+8], 0
je .L_02B1
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02B2
call SYMBADDDEFINE
add esp, 32
.L_02B1:
.L_02B0:
cmp dword ptr [ENV+116], 1
jl .L_02B4
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_02B5
call SYMBADDDEFINE
add esp, 32
.L_02B4:
.L_02B3:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+124]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push 0
push 0
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-12]
push offset Lt_02B6
call SYMBADDDEFINE
add esp, 32
mov dword ptr [SYMB+98764], 0
sub esp, 4
push 0
push 32
lea eax, [SYMB+98768]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-56], 0
.L_02BA:
sub esp, 8
mov eax, dword ptr [ebp-56]
imul eax, 40
push dword ptr [MACROTB+eax+20]
push 0
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [MACROTB+eax+16]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .L_02BC
.L_02BF:
sub esp, 8
mov ebx, dword ptr [ebp-56]
imul ebx, 40
lea eax, [MACROTB+ebx]
mov ebx, dword ptr [ebp-72]
sal ebx, 2
add eax, ebx
push dword ptr [eax+20]
push dword ptr [ebp-64]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-64], eax
.L_02BD:
inc dword ptr [ebp-72]
.L_02BC:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .L_02BF
.L_02BE:
sub esp, 12
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [MACROTB+eax+4]
or ebx, 8
push ebx
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [MACROTB+ebx+16]
push 0
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [MACROTB+ebx]
call SYMBADDDEFINEMACRO
add esp, 32
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [ebp-68]
mov ecx, dword ptr [MACROTB+eax+8]
mov dword ptr [ebx+76], ecx
mov ecx, dword ptr [ebp-56]
imul ecx, 40
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [MACROTB+ecx+12]
mov dword ptr [ebx+80], eax
.L_02B8:
inc dword ptr [ebp-56]
.L_02B7:
cmp dword ptr [ebp-56], 12
jle .L_02BA
.L_02B9:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_0283:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDEFINEINIT, .-SYMBDEFINEINIT
.cfi_endproc
.balign 16

.globl SYMBDEFINEEND
SYMBDEFINEEND:
.type SYMBDEFINEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_02C0:
sub esp, 12
lea eax, [SYMB+98768]
push eax
call HASHEND
add esp, 16
mov dword ptr [SYMB+98764], 0
sub esp, 12
lea eax, [SYMB+98752]
push eax
call HASHEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98688]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98720]
push eax
call LISTEND
add esp, 16
.L_02C1:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDEFINEEND, .-SYMBDEFINEEND
.cfi_endproc
.balign 16

.globl SYMBADDDEFINE
SYMBADDDEFINE:
.type SYMBADDDEFINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02C2:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push 4
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02C5
jmp .L_02C3
.L_02C5:
.L_02C4:
sub esp, 12
mov eax, dword ptr [ebp+16]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDDEFINE, .-SYMBADDDEFINE
.cfi_endproc
.balign 16

.globl SYMBADDDEFINEW
SYMBADDDEFINEW:
.type SYMBADDDEFINEW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02C6:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push 7
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02C9
jmp .L_02C7
.L_02C9:
.L_02C8:
sub esp, 12
mov eax, dword ptr [ebp+16]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
sub esp, 4
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call fb_WstrAssign
add esp, 16
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02C7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDDEFINEW, .-SYMBADDDEFINEW
.cfi_endproc
.balign 16

.globl SYMBADDDEFINEMACRO
SYMBADDDEFINEMACRO:
.type SYMBADDDEFINEMACRO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02CA:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_02CD
jmp .L_02CB
.L_02CD:
.L_02CC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+76], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+80], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_02CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDDEFINEMACRO, .-SYMBADDDEFINEMACRO
.cfi_endproc
.balign 16

.globl SYMBADDDEFINEPARAM
SYMBADDDEFINEPARAM:
.type SYMBADDDEFINEPARAM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_02D5:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [SYMB+98688]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [Lt_02DF], eax
cmp dword ptr [ebp+8], 0
je .L_02D8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_02DF]
mov dword ptr [eax+8], ebx
jmp .L_02D7
.L_02D8:
cmp dword ptr [SYMB+98764], 0
jle .L_02DA
call HRESETDEFHASH
.L_02DA:
.L_02D9:
.L_02D7:
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [Lt_02DF]
mov dword ptr [ebx], eax
sub esp, 8
mov eax, dword ptr [Lt_02DF]
push dword ptr [eax]
push dword ptr [ebp+12]
call HUCASE
add esp, 16
sub esp, 12
mov eax, dword ptr [Lt_02DF]
push dword ptr [eax]
call HASHHASH
add esp, 16
mov dword ptr [Lt_02E0], eax
sub esp, 4
push dword ptr [Lt_02E0]
mov eax, dword ptr [Lt_02DF]
push dword ptr [eax]
lea eax, [SYMB+98768]
push eax
call HASHLOOKUPEX
add esp, 16
test eax, eax
je .L_02DC
mov eax, dword ptr [Lt_02DF]
cmp dword ptr [eax], 0
je .L_02DE
sub esp, 12
mov eax, dword ptr [Lt_02DF]
push dword ptr [eax]
call free
add esp, 16
.L_02DE:
.L_02DD:
sub esp, 8
push dword ptr [Lt_02DF]
lea eax, [SYMB+98688]
push eax
call LISTDELNODE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .L_02D6
.L_02DC:
.L_02DB:
push dword ptr [Lt_02E0]
push dword ptr [Lt_02DF]
mov eax, dword ptr [Lt_02DF]
push dword ptr [eax]
lea eax, [SYMB+98768]
push eax
call HASHADD
add esp, 16
lea ebx, [SYMB+98688]
mov ecx, dword ptr [SYMB+98764]
sal ecx, 3
add ebx, ecx
mov dword ptr [ebx+92], eax
lea eax, [SYMB+98688]
mov ebx, dword ptr [SYMB+98764]
sal ebx, 3
add eax, ebx
mov ebx, dword ptr [Lt_02E0]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [Lt_02DF]
mov eax, dword ptr [SYMB+98764]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_02DF]
mov dword ptr [eax+8], 0
inc dword ptr [SYMB+98764]
mov eax, dword ptr [Lt_02DF]
mov dword ptr [ebp-4], eax
.L_02D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDDEFINEPARAM, .-SYMBADDDEFINEPARAM
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02DF,4
.balign 4
	.lcomm	Lt_02E0,4

.section .text
.balign 16

.globl SYMBADDDEFINETOK
SYMBADDDEFINETOK:
.type SYMBADDDEFINETOK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02E1:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [SYMB+98720]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [Lt_02EB], eax
cmp dword ptr [ebp+8], 0
je .L_02E4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_02EB]
mov dword ptr [eax+12], ebx
.L_02E4:
.L_02E3:
mov ebx, dword ptr [Lt_02EB]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_02EB]
mov dword ptr [eax+12], 0
mov eax, dword ptr [Lt_02EB]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
jmp .L_02E6
.L_02E8:
mov ebx, dword ptr [Lt_02EB]
mov dword ptr [ebx+4], 0
jmp .L_02E5
.L_02E9:
mov ebx, dword ptr [Lt_02EB]
mov dword ptr [ebx+4], 0
jmp .L_02E5
.L_02E6:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967294
cmp ebx, 1
ja .L_02E5
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_02EA+ebx*4-8]
.L_02EA:
.int .L_02E8
.int .L_02E9
.L_02E5:
mov ebx, dword ptr [Lt_02EB]
mov dword ptr [ebp-4], ebx
.L_02E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBADDDEFINETOK, .-SYMBADDDEFINETOK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_02EB,4

.section .text
.balign 16

.globl SYMBDELDEFINETOK
SYMBDELDEFINETOK:
.type SYMBDELDEFINETOK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_02EC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .L_02EF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .L_02EE
.L_02EF:
mov dword ptr [ebp-4], 0
.L_02EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .L_02F2
.L_02F3:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_02F5
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call free
add esp, 16
.L_02F5:
.L_02F4:
jmp .L_02F0
.L_02F2:
cmp dword ptr [ebp-8], 3
jne .L_02F6
.L_02F7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .L_02F9
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call free
add esp, 16
.L_02F9:
.L_02F8:
.L_02F6:
.L_02F0:
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [SYMB+98720]
push ebx
call LISTDELNODE
add esp, 16
.L_02ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELDEFINETOK, .-SYMBDELDEFINETOK
.cfi_endproc
.balign 16

.globl SYMBDELDEFINE
SYMBDELDEFINE:
.type SYMBDELDEFINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0304:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_0307
jmp .L_0305
.L_0307:
.L_0306:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .L_0309
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .L_030B
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_030D
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call free
add esp, 16
.L_030D:
.L_030C:
jmp .L_030A
.L_030B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_030F
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call free
add esp, 16
.L_030F:
.L_030E:
.L_030A:
jmp .L_0308
.L_0309:
sub esp, 12
push dword ptr [ebp+8]
call HDELDEFINETOKENS
add esp, 16
.L_0308:
sub esp, 12
push dword ptr [ebp+8]
call HDELDEFINEPARAMS
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
mov dword ptr [ebp-4], -1
.L_0305:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size SYMBDELDEFINE, .-SYMBDELDEFINE
.cfi_endproc
.balign 16
fb_ctor__symbzdefine:
.type fb_ctor__symbzdefine, @function
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
.size fb_ctor__symbzdefine, .-fb_ctor__symbzdefine
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
HDEFFILE_CB:
.type HDEFFILE_CB, @function
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
.L_0068:
sub esp, 12
push 0
push 261
lea eax, [ENV+304]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0069:
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
.size HDEFFILE_CB, .-HDEFFILE_CB
.cfi_endproc
.balign 16
HDEFPATH_CB:
.type HDEFPATH_CB, @function
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
.L_006A:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETINPUTFILEPARENTDIR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_006B:
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
.size HDEFPATH_CB, .-HDEFPATH_CB
.cfi_endproc
.balign 16
HDEFFUNCTION_CB:
.type HDEFFUNCTION_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_006C:
mov eax, dword ptr [PARSER+108]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .L_006F
sub esp, 12
push 0
push 16
push offset Lt_001E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_006E
.L_006F:
mov ebx, dword ptr [PARSER+108]
mov eax, dword ptr [ebx+12]
and eax, 8192
test eax, eax
je .L_0070
sub esp, 12
push 0
push 20
push offset Lt_001F
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_006E
.L_0070:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [PARSER+108]
call SYMBGETFULLPROCNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_006E:
.L_006D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFFUNCTION_CB, .-HDEFFUNCTION_CB
.cfi_endproc
.balign 16
HDEFLINE_CB:
.type HDEFLINE_CB, @function
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
.L_0071:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16568]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0072:
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
.size HDEFLINE_CB, .-HDEFLINE_CB
.cfi_endproc
.balign 16
UNIXTIMETODATESERIAL:
.type UNIXTIMETODATESERIAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0073:
fild qword ptr [ebp+8]
fdiv qword ptr [Lt_0310]
fadd qword ptr [Lt_0311]
fstp qword ptr [ebp-8]
.L_0074:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size UNIXTIMETODATESERIAL, .-UNIXTIMETODATESERIAL
.cfi_endproc
.balign 16
HCHECKSOURCEDATEEPOCH:
.type HCHECKSOURCEDATEEPOCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov byte ptr [ebp-4], 0
.L_0075:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-16]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0078
mov byte ptr [ebp-4], 0
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0076
.L_0078:
.L_0077:
mov dword ptr [ebp-28], 0
sub esp, 8
push -1
lea eax, [ebp-16]
push eax
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-32], eax
jmp .L_007A
.L_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-28]
movzx ebx, byte ptr [ecx]
cmp ebx, 57
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_007F
mov byte ptr [ebp-4], 0
sub esp, 12
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_0076
.L_007F:
.L_007E:
.L_007B:
inc dword ptr [ebp-28]
.L_007A:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .L_007D
.L_007C:
sub esp, 12
push dword ptr [ebp+8]
call fb_VALULNG
add esp, 16
push edx
push eax
fild qword ptr [esp]
add esp, 8
cmp edx, 0
jns .L_0314
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.L_0314:
fstp qword ptr [ebp-24]
fld qword ptr [ebp-24]
sub esp, 8
mov dword ptr [esp], 0x5F000000
fld dword ptr [esp]
fcomip
jbe .L_0315
fistp qword ptr [esp]
pop edx
pop eax
jmp .L_0316
.L_0315:
fsub dword ptr [esp]
fistp qword ptr [esp]
pop edx
pop eax
xor eax, 0x80000000
.L_0316:
cmp eax, 58
jb .L_0081
ja .L_0317
cmp edx, 4294197631
jbe .L_0081
.L_0317:
mov byte ptr [ebp-4], 0
sub esp, 12
lea edx, [ebp-16]
push edx
call fb_StrDelete
add esp, 16
jmp .L_0076
.L_0081:
.L_0080:
mov byte ptr [ebp-4], 1
sub esp, 12
lea edx, [ebp-16]
push edx
call fb_StrDelete
add esp, 16
jmp .L_0076
sub esp, 12
lea edx, [ebp-16]
push edx
call fb_StrDelete
add esp, 16
.L_0076:
mov al, byte ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKSOURCEDATEEPOCH, .-HCHECKSOURCEDATEEPOCH
.cfi_endproc
.balign 16
HGETCOMPILETIME:
.type HGETCOMPILETIME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0082:
cmp dword ptr [Lt_0318], 0
jne .L_0085
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [Lt_0318], 1
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push 17
push offset Lt_0086
call fb_StrAllocTempDescZEx
add esp, 20
push eax
call fb_GetEnviron
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
jle .L_0088
sub esp, 12
lea eax, [ebp-20]
push eax
call HCHECKSOURCEDATEEPOCH
add esp, 16
test al, al
je .L_008A
sub esp, 8
sub esp, 4
lea eax, [ebp-20]
push eax
call fb_VALULNG
add esp, 8
push edx
push eax
call UNIXTIMETODATESERIAL
add esp, 16
fstp qword ptr [Lt_0319]
mov dword ptr [Lt_0318], 2
jmp .L_0089
.L_008A:
sub esp, 12
push 0
push 1
push 0
push 0
push 328
call ERRREPORTEX
add esp, 32
.L_0089:
.L_0088:
.L_0087:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0085:
.L_0084:
cmp dword ptr [Lt_0318], 2
jne .L_008C
push dword ptr [Lt_0319]
push dword ptr [Lt_0319+4]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .L_008B
.L_008C:
call fb_Now
fstp qword ptr [ebp-8]
.L_008B:
.L_0083:
fld qword ptr [ebp-8]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETCOMPILETIME, .-HGETCOMPILETIME
.cfi_endproc

.section .data
.balign 4
Lt_0318:
.int 0
.balign 8
Lt_0319:
.quad 0x0000000000000000

.section .text
.balign 16
HDEFDATE_CB:
.type HDEFDATE_CB, @function
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
.L_008D:
sub esp, 12
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 11
push offset Lt_008F
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 28
lea eax, [ebp-24]
push eax
sub esp, 8
call HGETCOMPILETIME
add esp, 8
sub esp,8
fstp qword ptr [esp]
call fb_StrFormat
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
.L_008E:
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
.size HDEFDATE_CB, .-HDEFDATE_CB
.cfi_endproc
.balign 16
HDEFDATEISO_CB:
.type HDEFDATEISO_CB, @function
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
.L_0091:
sub esp, 12
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 11
push offset Lt_0093
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 28
lea eax, [ebp-24]
push eax
sub esp, 8
call HGETCOMPILETIME
add esp, 8
sub esp,8
fstp qword ptr [esp]
call fb_StrFormat
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
.L_0092:
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
.size HDEFDATEISO_CB, .-HDEFDATEISO_CB
.cfi_endproc
.balign 16
HDEFTIME_CB:
.type HDEFTIME_CB, @function
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
.L_0095:
sub esp, 12
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 9
push offset Lt_0097
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 28
lea eax, [ebp-24]
push eax
sub esp, 8
call HGETCOMPILETIME
add esp, 8
sub esp,8
fstp qword ptr [esp]
call fb_StrFormat
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
.L_0096:
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
.size HDEFTIME_CB, .-HDEFTIME_CB
.cfi_endproc
.balign 16
HDEFMULTITHREAD_CB:
.type HDEFMULTITHREAD_CB, @function
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
.L_0099:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+232]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_009A:
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
.size HDEFMULTITHREAD_CB, .-HDEFMULTITHREAD_CB
.cfi_endproc
.balign 16
HDEFOPTBYVAL_CB:
.type HDEFOPTBYVAL_CB, @function
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
.L_009B:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1080]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_009C:
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
.size HDEFOPTBYVAL_CB, .-HDEFOPTBYVAL_CB
.cfi_endproc
.balign 16
HDEFOPTDYNAMIC_CB:
.type HDEFOPTDYNAMIC_CB, @function
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
.L_009D:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1096]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_009E:
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
.size HDEFOPTDYNAMIC_CB, .-HDEFOPTDYNAMIC_CB
.cfi_endproc
.balign 16
HDEFOPTESCAPE_CB:
.type HDEFOPTESCAPE_CB, @function
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
.L_009F:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1092]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00A0:
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
.size HDEFOPTESCAPE_CB, .-HDEFOPTESCAPE_CB
.cfi_endproc
.balign 16
HDEFOPTEXPLICIT_CB:
.type HDEFOPTEXPLICIT_CB, @function
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
.L_00A1:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1084]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00A2:
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
.size HDEFOPTEXPLICIT_CB, .-HDEFOPTEXPLICIT_CB
.cfi_endproc
.balign 16
HDEFOPTPRIVATE_CB:
.type HDEFOPTPRIVATE_CB, @function
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
.L_00A3:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1088]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00A4:
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
.size HDEFOPTPRIVATE_CB, .-HDEFOPTPRIVATE_CB
.cfi_endproc
.balign 16
HDEFOPTGOSUB_CB:
.type HDEFOPTGOSUB_CB, @function
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
.L_00A5:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+1100]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
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
.size HDEFOPTGOSUB_CB, .-HDEFOPTGOSUB_CB
.cfi_endproc
.balign 16
HDEFGUI_CB:
.type HDEFGUI_CB, @function
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
.L_00A7:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+256]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00A8:
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
.size HDEFGUI_CB, .-HDEFGUI_CB
.cfi_endproc
.balign 16
HDEFOPTIMIZE_CB:
.type HDEFOPTIMIZE_CB, @function
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
.L_00A9:
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00AA:
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
.size HDEFOPTIMIZE_CB, .-HDEFOPTIMIZE_CB
.cfi_endproc
.balign 16
HDEFOUTEXE_CB:
.type HDEFOUTEXE_CB, @function
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
.L_00AB:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00AC:
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
.size HDEFOUTEXE_CB, .-HDEFOUTEXE_CB
.cfi_endproc
.balign 16
HDEFOUTLIB_CB:
.type HDEFOUTLIB_CB, @function
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
.L_00AD:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00AE:
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
.size HDEFOUTLIB_CB, .-HDEFOUTLIB_CB
.cfi_endproc
.balign 16
HDEFOUTDLL_CB:
.type HDEFOUTDLL_CB, @function
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
.L_00AF:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00B0:
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
.size HDEFOUTDLL_CB, .-HDEFOUTDLL_CB
.cfi_endproc
.balign 16
HDEFOUTOBJ_CB:
.type HDEFOUTOBJ_CB, @function
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
.L_00B1:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00B2:
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
.size HDEFOUTOBJ_CB, .-HDEFOUTOBJ_CB
.cfi_endproc
.balign 16
HDEFDEBUG_CB:
.type HDEFDEBUG_CB, @function
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
.L_00B3:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+144]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00B4:
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
.size HDEFDEBUG_CB, .-HDEFDEBUG_CB
.cfi_endproc
.balign 16
HDEFERR_CB:
.type HDEFERR_CB, @function
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
.L_00B5:
mov dword ptr [ebp-16], 0
cmp dword ptr [ENV+156], 0
je .L_00B8
mov dword ptr [ebp-16], 1
.L_00B8:
.L_00B7:
cmp dword ptr [ENV+160], 0
je .L_00BA
or dword ptr [ebp-16], 2
.L_00BA:
.L_00B9:
cmp dword ptr [ENV+164], 0
je .L_00BC
or dword ptr [ebp-16], 4
.L_00BC:
.L_00BB:
cmp dword ptr [ENV+172], 0
je .L_00BE
or dword ptr [ebp-16], 8
.L_00BE:
.L_00BD:
cmp dword ptr [ENV+176], 0
je .L_00C0
or dword ptr [ebp-16], 16
.L_00C0:
.L_00BF:
cmp dword ptr [ENV+152], 0
je .L_00C2
or dword ptr [ebp-16], 32
.L_00C2:
.L_00C1:
cmp dword ptr [ENV+148], 0
je .L_00C4
or dword ptr [ebp-16], 64
.L_00C4:
.L_00C3:
cmp dword ptr [ENV+144], 0
je .L_00C6
or dword ptr [ebp-16], 128
.L_00C6:
.L_00C5:
cmp dword ptr [ENV+168], 0
je .L_00C8
or dword ptr [ebp-16], 256
.L_00C8:
.L_00C7:
cmp dword ptr [ENV+180], 0
je .L_00CA
or dword ptr [ebp-16], 512
.L_00CA:
.L_00C9:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00B6:
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
.size HDEFERR_CB, .-HDEFERR_CB
.cfi_endproc
.balign 16
HDEFLANG_CB:
.type HDEFLANG_CB, @function
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
.L_00CB:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+136]
call FBGETLANGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00CC:
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
.size HDEFLANG_CB, .-HDEFLANG_CB
.cfi_endproc
.balign 16
HDEFBACKEND_CB:
.type HDEFBACKEND_CB, @function
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
.L_00CD:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+104]
call FBGETBACKENDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00CE:
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
.size HDEFBACKEND_CB, .-HDEFBACKEND_CB
.cfi_endproc
.balign 16
HDEFFPU_CB:
.type HDEFFPU_CB, @function
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
.L_00CF:
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D3
.L_00D4:
sub esp, 12
push 0
push 4
push offset Lt_00D5
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_00D0
jmp .L_00D1
.L_00D3:
cmp dword ptr [ebp-16], 1
jne .L_00D6
.L_00D7:
sub esp, 12
push 0
push 4
push offset Lt_00D8
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_00D0
.L_00D6:
.L_00D9:
.L_00D1:
.L_00D0:
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
.size HDEFFPU_CB, .-HDEFFPU_CB
.cfi_endproc
.balign 16
HDEFFPMODE_CB:
.type HDEFFPMODE_CB, @function
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
.L_00DA:
sub esp, 12
push 6
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00DE
.L_00DF:
sub esp, 12
push 0
push 8
push offset Lt_00E0
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_00DB
jmp .L_00DC
.L_00DE:
cmp dword ptr [ebp-16], 1
jne .L_00E1
.L_00E2:
sub esp, 12
push 0
push 5
push offset Lt_00E3
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_00DB
.L_00E1:
.L_00E4:
.L_00DC:
.L_00DB:
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
.size HDEFFPMODE_CB, .-HDEFFPMODE_CB
.cfi_endproc
.balign 16
HDEFGCC_CB:
.type HDEFGCC_CB, @function
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
.L_00E5:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00E6:
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
.size HDEFGCC_CB, .-HDEFGCC_CB
.cfi_endproc
.balign 16
HDEFASM_CB:
.type HDEFASM_CB, @function
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
.L_00E7:
mov eax, dword ptr [ENV+132]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00EB
.L_00EC:
sub esp, 12
push 0
push 6
push offset Lt_00ED
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_00E9
.L_00EB:
cmp dword ptr [ebp-16], 1
jne .L_00EE
.L_00EF:
sub esp, 12
push 0
push 4
push offset Lt_00F0
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_00EE:
.L_00E9:
.L_00E8:
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
.size HDEFASM_CB, .-HDEFASM_CB
.cfi_endproc
.balign 16
HMACRO_GETARGZ:
.type HMACRO_GETARGZ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F1:
mov dword ptr [ebp-8], 0
cmp dword ptr [ENV+576], 0
jne .L_00F4
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F6
mov dword ptr [ebp-4], 0
jmp .L_00F2
.L_00F6:
.L_00F5:
sub esp, 8
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGN
add esp, 16
jmp .L_00F3
.L_00F4:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_00F8
mov dword ptr [ebp-4], 0
jmp .L_00F2
.L_00F8:
.L_00F7:
sub esp, 8
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGNW
add esp, 16
.L_00F3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMACRO_GETARGZ, .-HMACRO_GETARGZ
.cfi_endproc
.balign 16
HMACRO_GETARGW:
.type HMACRO_GETARGW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00F9:
sub esp, 8
push 0
push offset Lt_0326
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ENV+576], 0
jne .L_00FC
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FE
mov dword ptr [ebp-4], 0
jmp .L_00FA
.L_00FE:
.L_00FD:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_0326
call DWSTRCONCATASSIGNA
add esp, 16
jmp .L_00FB
.L_00FC:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0100
mov dword ptr [ebp-4], 0
jmp .L_00FA
.L_0100:
.L_00FF:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_0326
call DWSTRCONCATASSIGN
add esp, 16
.L_00FB:
mov eax, dword ptr [Lt_0326]
mov dword ptr [ebp-4], eax
.L_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMACRO_GETARGW, .-HMACRO_GETARGW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0326,12

.section .text
.balign 16
HMACRO_EVALZ:
.type HMACRO_EVALZ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0101:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
lea eax, [ebp-24]
push eax
call DZSTRASSIGN
add esp, 16
cmp dword ptr [ENV+900], 16
jl .L_0104
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
sub esp, 12
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0102
.L_0104:
.L_0103:
cmp dword ptr [ebp+8], 0
je .L_0106
call LEXPUSHCTX
sub esp, 8
push -1
push 0
call LEXINIT
add esp, 16
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16576]
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
sub esp, 8
push 0
push dword ptr [ebp+8]
mov ebx, ecx
call fb_StrLen
add esp, 16
add dword ptr [ebx+16592], eax
sub esp, 8
push offset Lt_0107
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRCONCATASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
inc dword ptr [ecx+16592]
call CEXPRESSION
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 0
cmp dword ptr [ebp-28], 0
je .L_0109
sub esp, 12
push dword ptr [ebp-28]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [eax], 16
jne .L_010B
sub esp, 8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 4
push 0
push -1
sub esp, 8
push dword ptr [ebp-28]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-44]
lea eax, [ebp-24]
push eax
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .L_010E
mov dword ptr [ebp-32], 17
.L_010E:
.L_010D:
jmp .L_010A
.L_010B:
sub esp, 12
push dword ptr [ebp-28]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_010F
sub esp, 8
sub esp, 4
mov eax, dword ptr [ebp-28]
push dword ptr [eax+12]
call SYMBGETCONSTSTRASSTR
add esp, 8
push eax
lea eax, [ebp-24]
push eax
call DZSTRASSIGN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .L_0111
mov dword ptr [ebp-32], 17
.L_0111:
.L_0110:
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
jmp .L_010A
.L_010F:
sub esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-32], 11
sub esp, 8
push offset Lt_0112
lea eax, [ebp-24]
push eax
call DZSTRASSIGN
add esp, 16
.L_010A:
jmp .L_0108
.L_0109:
mov dword ptr [ebp-32], 17
.L_0108:
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16576]
call LEXPOPCTX
cmp dword ptr [ebp-32], 0
je .L_0114
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-32]
call ERRREPORTEX
add esp, 32
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.L_0114:
.L_0113:
.L_0106:
.L_0105:
sub esp, 12
push 0
push 0
push dword ptr [ebp-24]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_0102:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMACRO_EVALZ, .-HMACRO_EVALZ
.cfi_endproc
.balign 16
HMACRO_EVALW:
.type HMACRO_EVALW, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0115:
sub esp, 8
push 0
push offset Lt_0327
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ENV+900], 16
jl .L_0118
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
mov eax, dword ptr [Lt_0327]
mov dword ptr [ebp-4], eax
jmp .L_0116
.L_0118:
.L_0117:
cmp dword ptr [ebp+8], 0
je .L_011A
call LEXPUSHCTX
sub esp, 8
push -1
push 0
call LEXINIT
add esp, 16
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16576]
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
sub esp, 12
push dword ptr [ebp+8]
mov ebx, ecx
call fb_WstrLen
add esp, 16
add dword ptr [ebx+16592], eax
sub esp, 8
push offset Lt_011B
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRCONCATASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
inc dword ptr [ecx+16592]
call CEXPRESSION
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp-8], 0
je .L_011D
sub esp, 12
push dword ptr [ebp-8]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
jne .L_011F
sub esp, 8
sub esp, 4
push dword ptr [ebp-8]
call ASTCONSTFLUSHTOWSTR
add esp, 8
push eax
push offset Lt_0327
call DWSTRASSIGN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .L_0121
mov dword ptr [ebp-12], 17
.L_0121:
.L_0120:
jmp .L_011E
.L_011F:
sub esp, 12
push dword ptr [ebp-8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .L_0122
sub esp, 8
sub esp, 4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call SYMBGETCONSTSTRASWSTR
add esp, 8
push eax
push offset Lt_0327
call DWSTRASSIGN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .L_0124
mov dword ptr [ebp-12], 17
.L_0124:
.L_0123:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
jmp .L_011E
.L_0122:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-12], 11
sub esp, 8
push offset Lt_0125
push offset Lt_0327
call DWSTRASSIGN
add esp, 16
.L_011E:
jmp .L_011C
.L_011D:
mov dword ptr [ebp-12], 17
.L_011C:
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16576]
call LEXPOPCTX
cmp dword ptr [ebp-12], 0
je .L_0127
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
push dword ptr [ebp+8]
call fb_WstrToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.L_0127:
.L_0126:
.L_011A:
.L_0119:
mov eax, dword ptr [Lt_0327]
mov dword ptr [ebp-4], eax
.L_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HMACRO_EVALW, .-HMACRO_EVALW
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0327,12

.section .text
.balign 16
HDEFUNIQUEIDPUSH_CB:
.type HDEFUNIQUEIDPUSH_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0129:
cmp dword ptr [PP+212], 0
je .L_012C
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_012A
.L_012C:
.L_012B:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_012E
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_012A
.L_012E:
.L_012D:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0130
sub esp, 8
push 1
push 4
call calloc
add esp, 16
mov dword ptr [ebp-20], eax
push 4294967295
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHADD
add esp, 16
jmp .L_012F
.L_0130:
cmp dword ptr [ebp-16], 0
je .L_0132
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_0132:
.L_0131:
.L_012F:
sub esp, 12
push 8
call malloc
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push 1
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp-28]
call fb_StrLen
add esp, 20
inc eax
mov ebx, eax
push ebx
call malloc
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp-28]
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.L_012A:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFUNIQUEIDPUSH_CB, .-HDEFUNIQUEIDPUSH_CB
.cfi_endproc
.balign 16
HDEFUNIQUEID_CB:
.type HDEFUNIQUEID_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0133:
cmp dword ptr [PP+212], 0
je .L_0136
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0134
.L_0136:
.L_0135:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0138
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0134
.L_0138:
.L_0137:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_013A
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_013A:
.L_0139:
cmp dword ptr [ebp-20], 0
je .L_013C
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_013E
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .L_0134
.L_013E:
.L_013D:
.L_013C:
.L_013B:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.L_0134:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFUNIQUEID_CB, .-HDEFUNIQUEID_CB
.cfi_endproc
.balign 16
HDEFUNIQUEIDPOP_CB:
.type HDEFUNIQUEIDPOP_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_013F:
cmp dword ptr [PP+212], 0
je .L_0142
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0140
.L_0142:
.L_0141:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_0144
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_0140
.L_0144:
.L_0143:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .L_0146
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_0146:
.L_0145:
cmp dword ptr [ebp-20], 0
je .L_0148
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .L_014A
sub esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
call free
add esp, 16
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
jmp .L_0149
.L_014A:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_0149:
jmp .L_0147
.L_0148:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.L_0147:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrAssign
add esp, 32
.L_0140:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFUNIQUEIDPOP_CB, .-HDEFUNIQUEIDPOP_CB
.cfi_endproc
.balign 16
HDEFARGCOUNT_CB:
.type HDEFARGCOUNT_CB, @function
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
.L_014B:
cmp dword ptr [ebp+8], 0
je .L_014E
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+384]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .L_014C
.L_014E:
.L_014D:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.L_014C:
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
.size HDEFARGCOUNT_CB, .-HDEFARGCOUNT_CB
.cfi_endproc
.balign 16
HDEFARGEXTRACT_CB:
.type HDEFARGEXTRACT_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 180
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_014F:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .L_0152
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call HMACRO_EVALZ
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-44], 0
sub esp, 8
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
call HSTR2LONG
add esp, 16
test eax, eax
je .L_0154
cmp dword ptr [ebp-44], 0
jl .L_0156
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+384]
dec ebx
mov eax, ebx
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-44], eax
jae .L_0158
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 12
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 8
lea eax, [ebp-148]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
sub esp, 8
lea eax, [ebp-172]
push eax
push dword ptr [ebp-52]
call HSTR2ARGS
add esp, 16
test eax, eax
jle .L_015A
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-44]
imul eax, 12
add eax, dword ptr [ebp-172]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
.L_015A:
.L_0159:
cmp dword ptr [ebp-52], 0
je .L_015C
sub esp, 12
push dword ptr [ebp-52]
call free
add esp, 16
.L_015C:
.L_015B:
sub esp, 12
lea ebx, [ebp-172]
push ebx
call fb_ArrayStrErase
add esp, 16
.L_0158:
.L_0157:
jmp .L_0155
.L_0156:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_0155:
jmp .L_0153
.L_0154:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.L_0153:
cmp dword ptr [ebp-28], 0
je .L_015E
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_015E:
.L_015D:
sub esp, 12
lea ebx, [ebp-40]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_0151
.L_0152:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_0151:
sub esp, 12
push 0
push -1
lea ebx, [ebp-24]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrInit
add esp, 32
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_0150
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
.L_0150:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFARGEXTRACT_CB, .-HDEFARGEXTRACT_CB
.cfi_endproc
.balign 16
HDEFARGLEFT_CB:
.type HDEFARGLEFT_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 180
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_015F:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0162
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
sub esp, 8
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call HSTR2TOK
add esp, 16
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0164
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call HUCASE
add esp, 16
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_0166
.L_0169:
push 0
push dword ptr [ebp-32]
push -1
sub esp, 12
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_016B
mov dword ptr [ebp-172], 0
mov eax, dword ptr [ebp-164]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_016D
.L_0170:
cmp dword ptr [ebp-172], 0
jle .L_0172
sub esp, 12
push 0
push 2
push offset Lt_0173
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_0172:
.L_0171:
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_016E:
inc dword ptr [ebp-172]
.L_016D:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_0170
.L_016F:
jmp .L_0168
.L_016B:
.L_016A:
.L_0167:
inc dword ptr [ebp-164]
.L_0166:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_0169
.L_0168:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0175
sub esp, 12
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0175:
.L_0174:
jmp .L_0163
.L_0164:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0163:
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_ArrayStrErase
add esp, 16
jmp .L_0161
.L_0162:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_0161:
cmp dword ptr [ebp-36], 0
je .L_0177
sub esp, 12
push dword ptr [ebp-36]
call free
add esp, 16
.L_0177:
.L_0176:
cmp dword ptr [ebp-32], 0
je .L_0179
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.L_0179:
.L_0178:
cmp dword ptr [ebp-28], 0
je .L_017B
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_017B:
.L_017A:
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
jmp .L_0160
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.L_0160:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFARGLEFT_CB, .-HDEFARGLEFT_CB
.cfi_endproc
.balign 16
HDEFARGRIGHT_CB:
.type HDEFARGRIGHT_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 180
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_017C:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_017F
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
sub esp, 8
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call HSTR2TOK
add esp, 16
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .L_0181
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call HUCASE
add esp, 16
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .L_0183
.L_0186:
push 0
push dword ptr [ebp-32]
push -1
sub esp, 12
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0188
mov eax, dword ptr [ebp-164]
inc eax
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-176], eax
jmp .L_018A
.L_018D:
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .L_018F
sub esp, 12
push 0
push 2
push offset Lt_0173
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.L_018F:
.L_018E:
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.L_018B:
inc dword ptr [ebp-172]
.L_018A:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .L_018D
.L_018C:
jmp .L_0185
.L_0188:
.L_0187:
.L_0184:
inc dword ptr [ebp-164]
.L_0183:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .L_0186
.L_0185:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .L_0191
sub esp, 12
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0191:
.L_0190:
jmp .L_0180
.L_0181:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_0180:
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_ArrayStrErase
add esp, 16
jmp .L_017E
.L_017F:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_017E:
cmp dword ptr [ebp-36], 0
je .L_0193
sub esp, 12
push dword ptr [ebp-36]
call free
add esp, 16
.L_0193:
.L_0192:
cmp dword ptr [ebp-32], 0
je .L_0195
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.L_0195:
.L_0194:
cmp dword ptr [ebp-28], 0
je .L_0197
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_0197:
.L_0196:
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
.L_017D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFARGRIGHT_CB, .-HDEFARGRIGHT_CB
.cfi_endproc
.balign 16
HDEFJOINZ_CB:
.type HDEFJOINZ_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0198:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_019B
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-32]
push 0
push dword ptr [ebp-28]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_019A
.L_019B:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_019A:
cmp dword ptr [ebp-28], 0
je .L_019E
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_019E:
.L_019D:
cmp dword ptr [ebp-32], 0
je .L_01A0
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.L_01A0:
.L_019F:
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
.L_0199:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFJOINZ_CB, .-HDEFJOINZ_CB
.cfi_endproc
.balign 16
HDEFJOINW_CB:
.type HDEFJOINW_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01A1:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push offset Lt_032E
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01A4
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_032E
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_032E
call DWSTRCONCATASSIGN
add esp, 16
jmp .L_01A3
.L_01A4:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_01A3:
mov ebx, dword ptr [Lt_032E]
mov dword ptr [ebp-4], ebx
.L_01A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFJOINW_CB, .-HDEFJOINW_CB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_032E,12

.section .text
.balign 16
HDEFQUOTEZ_CB:
.type HDEFQUOTEZ_CB, @function
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
.L_01A5:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .L_01A8
sub esp, 12
push 0
push 3
push offset Lt_01AB
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_01AC
push offset Lt_01AA
push dword ptr [ebp-16]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_01AA
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .L_01A7
.L_01A8:
sub esp, 12
push 0
push 3
push offset Lt_01AC
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
.L_01A7:
cmp dword ptr [ebp-16], 0
je .L_01AE
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_01AE:
.L_01AD:
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
.L_01A6:
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
.size HDEFQUOTEZ_CB, .-HDEFQUOTEZ_CB
.cfi_endproc
.balign 16
HDEFQUOTEW_CB:
.type HDEFQUOTEW_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01AF:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push offset Lt_0331
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
je .L_01B2
sub esp, 8
push offset Lt_01B3
push offset Lt_0331
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
sub esp, 12
push offset Lt_01B5
push offset Lt_01B4
push dword ptr [ebp-8]
call HREPLACEW
add esp, 24
push eax
push offset Lt_0331
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push offset Lt_01B4
push offset Lt_0331
call DWSTRCONCATASSIGN
add esp, 16
jmp .L_01B1
.L_01B2:
sub esp, 8
push offset Lt_01B5
push offset Lt_0331
call DWSTRCONCATASSIGN
add esp, 16
.L_01B1:
mov eax, dword ptr [Lt_0331]
mov dword ptr [ebp-4], eax
.L_01B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFQUOTEW_CB, .-HDEFQUOTEW_CB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0331,12

.section .text
.balign 16
HDEFUNQUOTEZ_CB:
.type HDEFUNQUOTEZ_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01B6:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .L_01B9
sub esp, 8
push 0
push dword ptr [ebp-16]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 3
jl .L_01BA
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .L_0332
.L_01BA:
mov dword ptr [ebp-36], 0
.L_0332:
cmp dword ptr [ebp-36], 0
je .L_01BD
sub esp, 12
push 0
push -1
push offset Lt_01AA
push offset Lt_01AC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -3
push eax
push 3
push dword ptr [ebp-16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01BC
.L_01BD:
cmp dword ptr [ebp-32], 2
jl .L_01C0
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .L_0333
.L_01C0:
mov dword ptr [ebp-40], 0
.L_0333:
cmp dword ptr [ebp-40], 0
je .L_01BF
sub esp, 12
push 0
push -1
push offset Lt_01AA
push offset Lt_01AC
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -2
push eax
push 2
push dword ptr [ebp-16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01BC
.L_01BF:
sub esp, 12
push 0
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.L_01BC:
.L_01B9:
.L_01B8:
cmp dword ptr [ebp-16], 0
je .L_01C4
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_01C4:
.L_01C3:
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
.L_01B7:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFUNQUOTEZ_CB, .-HDEFUNQUOTEZ_CB
.cfi_endproc
.balign 16
HDEFUNQUOTEW_CB:
.type HDEFUNQUOTEW_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01C5:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push offset Lt_033D
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
je .L_01C8
sub esp, 12
push dword ptr [ebp-8]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 3
jl .L_01C9
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 36
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov eax, dword ptr [ebp-8]
add eax, ecx
cmp dword ptr [eax-4], 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_033B
.L_01C9:
mov dword ptr [ebp-16], 0
.L_033B:
cmp dword ptr [ebp-16], 0
je .L_01CC
sub esp, 8
sub esp, 12
push offset Lt_01B4
push offset Lt_01B5
sub esp, 8
mov ebx, dword ptr [ebp-12]
add ebx, -3
push ebx
push 3
push dword ptr [ebp-8]
call fb_WstrMid
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HREPLACEW
add esp, 24
push eax
push offset Lt_033D
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 16
jmp .L_01CB
.L_01CC:
cmp dword ptr [ebp-12], 2
jl .L_01CF
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 34
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp-8]
add ecx, eax
cmp dword ptr [ecx-4], 34
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .L_033C
.L_01CF:
mov dword ptr [ebp-20], 0
.L_033C:
cmp dword ptr [ebp-20], 0
je .L_01CE
sub esp, 8
sub esp, 12
push offset Lt_01B4
push offset Lt_01B5
sub esp, 8
mov ebx, dword ptr [ebp-12]
add ebx, -2
push ebx
push 2
push dword ptr [ebp-8]
call fb_WstrMid
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HREPLACEW
add esp, 24
push eax
push offset Lt_033D
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 16
jmp .L_01CB
.L_01CE:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_033D
call DWSTRASSIGN
add esp, 16
.L_01CB:
.L_01C8:
.L_01C7:
mov eax, dword ptr [Lt_033D]
mov dword ptr [ebp-4], eax
.L_01C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFUNQUOTEW_CB, .-HDEFUNQUOTEW_CB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_033D,12

.section .text
.balign 16
HDEFEVALZ_CB:
.type HDEFEVALZ_CB, @function
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
.L_01D2:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call HMACRO_EVALZ
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .L_01D5
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.L_01D5:
.L_01D4:
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
.L_01D3:
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
.size HDEFEVALZ_CB, .-HDEFEVALZ_CB
.cfi_endproc
.balign 16
HDEFEVALW_CB:
.type HDEFEVALW_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01D6:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HMACRO_EVALW
add esp, 8
push eax
push offset Lt_0345
call DWSTRASSIGN
add esp, 16
mov eax, dword ptr [Lt_0345]
mov dword ptr [ebp-4], eax
.L_01D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFEVALW_CB, .-HDEFEVALW_CB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0345,12

.section .text
.balign 16
HDEFIIFZ_CB:
.type HDEFIIFZ_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01D8:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-36], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01DB
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call HMACRO_EVALZ
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_VALBOOL
add esp, 16
mov byte ptr [ebp-52], al
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-48]
push eax
call fb_VALBOOL
add esp, 12
test al, al
je .L_01DC
sub esp, 8
push 0
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-64]
push eax
call fb_StrInit
add esp, 28
jmp .L_0346
.L_01DC:
sub esp, 8
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-64]
push eax
call fb_StrInit
add esp, 28
.L_0346:
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01DA
.L_01DB:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01DA:
cmp dword ptr [ebp-36], 0
je .L_01DF
sub esp, 12
push dword ptr [ebp-36]
call free
add esp, 16
.L_01DF:
.L_01DE:
cmp dword ptr [ebp-32], 0
je .L_01E1
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.L_01E1:
.L_01E0:
cmp dword ptr [ebp-28], 0
je .L_01E3
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_01E3:
.L_01E2:
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
.L_01D9:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFIIFZ_CB, .-HDEFIIFZ_CB
.cfi_endproc
.balign 16
HDEFIIFW_CB:
.type HDEFIIFW_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_01E4:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp-16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01E7
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HMACRO_EVALW
add esp, 8
push eax
push offset Lt_034E
call DWSTRASSIGN
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_034E]
call fb_UIntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
sub esp, 4
lea eax, [ebp-32]
push eax
call fb_VALBOOL
add esp, 8
test al, al
je .L_01E8
sub esp, 4
push dword ptr [ebp-12]
call fb_WstrLen
add esp, 4
push eax
call fb_WstrAlloc
add esp, 8
mov dword ptr [ebp-36], eax
sub esp, 12
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-36]
call fb_WstrAssign
add esp, 24
jmp .L_034A
.L_01E8:
sub esp, 4
push dword ptr [ebp-16]
call fb_WstrLen
add esp, 4
push eax
call fb_WstrAlloc
add esp, 8
mov dword ptr [ebp-36], eax
sub esp, 12
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-36]
call fb_WstrAssign
add esp, 24
.L_034A:
mov eax, dword ptr [ebp-36]
lea ebx, [eax]
push ebx
push offset Lt_034F
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-36]
call fb_WstrDelete
add esp, 16
sub esp, 12
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_01E6
.L_01E7:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.L_01E6:
mov ebx, dword ptr [Lt_034F]
mov dword ptr [ebp-4], ebx
.L_01E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFIIFW_CB, .-HDEFIIFW_CB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_034F,12
.balign 4
	.lcomm	Lt_034E,12

.section .text
.balign 16
HDEFQUERYSYMZ_CB:
.type HDEFQUERYSYMZ_CB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_01EA:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ENV+900], 16
jl .L_01ED
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
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
jmp .L_01EB
.L_01ED:
.L_01EC:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_01EF
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-28]
call HMACRO_EVALZ
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_VALINT
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 8
lea eax, [ebp-48]
push eax
lea eax, [ebp-44]
push eax
call HSTR2LONG
add esp, 16
test eax, eax
je .L_01F1
mov dword ptr [ebp-52], -2147483648
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-48]
and eax, 255
mov dword ptr [ebp-80], eax
mov eax, dword ptr [ebp-48]
and eax, 65280
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-88], 0
call LEXPUSHCTX
sub esp, 8
push -1
push 0
call LEXINIT
add esp, 16
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16576]
sub esp, 8
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
sub esp, 8
push 0
push dword ptr [ebp-32]
mov ebx, ecx
call fb_StrLen
add esp, 16
add dword ptr [ebx+16592], eax
cmp dword ptr [ebp-84], 0
jne .L_01F3
cmp dword ptr [ebp-80], 3
je .L_01F6
.L_01F7:
cmp dword ptr [ebp-80], 4
je .L_01F6
.L_01F8:
cmp dword ptr [ebp-80], 5
je .L_01F6
.L_01F9:
cmp dword ptr [ebp-80], 6
jne .L_01F5
.L_01F6:
or dword ptr [ebp-84], 256
jmp .L_01F4
.L_01F5:
or dword ptr [ebp-84], 768
.L_01FA:
.L_01F4:
.L_01F3:
.L_01F2:
mov eax, dword ptr [ebp-84]
and eax, 256
test eax, eax
je .L_01FC
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-92], eax
cmp dword ptr [ebp-92], 0
je .L_0200
.L_0201:
cmp dword ptr [ebp-92], 1
je .L_0200
.L_0202:
cmp dword ptr [ebp-92], 2
je .L_0200
.L_0203:
cmp dword ptr [ebp-92], 5
jne .L_01FF
.L_0200:
sub esp, 8
push 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-96]
push eax
call CIDENTIFIERORUDTMEMBER
add esp, 16
mov dword ptr [ebp-72], eax
.L_01FF:
.L_01FD:
cmp dword ptr [ebp-72], 0
je .L_0206
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-92], ebx
cmp dword ptr [ebp-92], 6
jne .L_0209
.L_020A:
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -2147483648
jne .L_020C
cmp dword ptr [ebp-80], 0
je .L_020F
.L_0210:
cmp dword ptr [ebp-80], 6
jne .L_020E
.L_020F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .L_020D
.L_020E:
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-60], -1
.L_0211:
.L_020D:
jmp .L_020B
.L_020C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.L_020B:
jmp .L_0207
.L_0209:
cmp dword ptr [ebp-92], 10
jne .L_0212
.L_0213:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebp-76], ebx
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .L_0215
sub esp, 12
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call CUDTTYPEMEMBER
add esp, 32
.L_0215:
.L_0214:
jmp .L_0207
.L_0212:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-72]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-72]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-76], eax
.L_0216:
.L_0207:
.L_0206:
.L_0205:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 256
je .L_0218
mov dword ptr [ebp-60], -1
.L_0218:
.L_0217:
cmp dword ptr [ebp-60], 0
je .L_021A
mov dword ptr [ebp-72], 0
sub esp, 8
push -1
push 0
call LEXINIT
add esp, 16
sub esp, 8
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DZSTRASSIGN
add esp, 16
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+16600]
mov dword ptr [eax+16596], ecx
mov ecx, dword ptr [LEX+840072]
sub esp, 8
push 0
push dword ptr [ebp-32]
mov ebx, ecx
call fb_StrLen
add esp, 16
add dword ptr [ebx+16592], eax
.L_021A:
.L_0219:
.L_01FC:
.L_01FB:
mov eax, dword ptr [ebp-84]
and eax, 512
test eax, eax
je .L_021C
cmp dword ptr [ebp-72], 0
jne .L_021E
sub esp, 12
lea eax, [ebp-72]
push eax
lea eax, [ebp-56]
push eax
lea eax, [ebp-68]
push eax
lea eax, [ebp-76]
push eax
lea eax, [ebp-52]
push eax
call CTYPEOF
add esp, 32
.L_021E:
.L_021D:
.L_021C:
.L_021B:
cmp dword ptr [ebp-80], 0
jne .L_0220
.L_0221:
cmp dword ptr [ebp-72], 0
je .L_0223
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-72]
push dword ptr [eax]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0222
.L_0223:
cmp dword ptr [ebp-76], 0
je .L_0224
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0222
.L_0224:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0222:
jmp .L_021F
.L_0220:
cmp dword ptr [ebp-80], 1
jne .L_0225
.L_0226:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_021F
.L_0225:
cmp dword ptr [ebp-80], 2
jne .L_0227
.L_0228:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-52]
and eax, 480
je .L_0229
mov dword ptr [ebp-92], 24
jmp .L_0350
.L_0229:
mov eax, dword ptr [ebp-52]
and eax, 31
mov dword ptr [ebp-92], eax
.L_0350:
mov eax, dword ptr [ebp-92]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_021F
.L_0227:
cmp dword ptr [ebp-80], 3
je .L_022C
.L_022D:
cmp dword ptr [ebp-80], 4
jne .L_022B
.L_022C:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-64]
push dword ptr [ebp-68]
push dword ptr [ebp-76]
push dword ptr [ebp-52]
call SYMBTYPETOSTR
add esp, 20
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-80], 4
jne .L_022F
sub esp, 4
push 95
push 32
push dword ptr [ebp-24]
call HREPLACECHAR
add esp, 16
sub esp, 4
push 95
push 46
push dword ptr [ebp-24]
call HREPLACECHAR
add esp, 16
sub esp, 4
push 95
push 40
push dword ptr [ebp-24]
call HREPLACECHAR
add esp, 16
sub esp, 4
push 95
push 41
push dword ptr [ebp-24]
call HREPLACECHAR
add esp, 16
sub esp, 4
push 95
push 42
push dword ptr [ebp-24]
call HREPLACECHAR
add esp, 16
.L_022F:
.L_022E:
jmp .L_021F
.L_022B:
cmp dword ptr [ebp-80], 5
jne .L_0234
.L_0235:
cmp dword ptr [ebp-72], 0
je .L_0237
push 0
push dword ptr [ebp-72]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
jmp .L_0236
.L_0237:
cmp dword ptr [ebp-76], 0
je .L_0238
push 0
push dword ptr [ebp-76]
push dword ptr [ebp-52]
lea eax, [ebp-24]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
jmp .L_0236
.L_0238:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_0236:
jmp .L_021F
.L_0234:
cmp dword ptr [ebp-80], 6
jne .L_0239
.L_023A:
sub esp, 12
push 0
push -1
sub esp, 8
cmp dword ptr [ebp-72], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .L_021F
.L_0239:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
sub esp, 12
push 0
push 3
push offset Lt_023C
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.L_023B:
.L_021F:
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16576]
call LEXPOPCTX
jmp .L_01F0
.L_01F1:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.L_01F0:
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .L_01EE
.L_01EF:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.L_01EE:
cmp dword ptr [ebp-28], 0
je .L_023E
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.L_023E:
.L_023D:
cmp dword ptr [ebp-32], 0
je .L_0240
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.L_0240:
.L_023F:
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
.L_01EB:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDEFQUERYSYMZ_CB, .-HDEFQUERYSYMZ_CB
.cfi_endproc
.balign 16
HRESETDEFHASH:
.type HRESETDEFHASH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02CE:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [SYMB+98764]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_02D1
.L_02D4:
sub esp, 4
lea eax, [SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+96]
lea eax, [SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+92]
lea eax, [SYMB+98768]
push eax
call HASHDEL
add esp, 16
.L_02D2:
inc dword ptr [ebp-4]
.L_02D1:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .L_02D4
.L_02D3:
mov dword ptr [SYMB+98764], 0
.L_02CF:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRESETDEFHASH, .-HRESETDEFHASH
.cfi_endproc
.balign 16
HDELDEFINEPARAMS:
.type HDELDEFINEPARAMS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02FA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_02FC:
cmp dword ptr [ebp-4], 0
je .L_02FD
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .L_02FF
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call free
add esp, 16
.L_02FF:
.L_02FE:
sub esp, 8
push dword ptr [ebp-4]
lea eax, [SYMB+98688]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_02FC
.L_02FD:
.L_02FB:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDELDEFINEPARAMS, .-HDELDEFINEPARAMS
.cfi_endproc
.balign 16
HDELDEFINETOKENS:
.type HDELDEFINETOKENS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0300:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.L_0302:
cmp dword ptr [ebp-4], 0
je .L_0303
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELDEFINETOK
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0302
.L_0303:
.L_0301:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HDELDEFINETOKENS, .-HDELDEFINETOKENS
.cfi_endproc

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"
.balign 4
Lt_0005:	.ascii	"10\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_000B:	.ascii	"1.10.0\0"
.balign 4
Lt_000C:	.ascii	"10-18-2023\0"
.balign 4
Lt_000D:	.ascii	"2023-10-18\0"
.balign 4
Lt_000F:	.ascii	"FreeBASIC 1.10.0\0"
.balign 4
Lt_001E:	.ascii	"__FB_MAINPROC__\0"
.balign 4
Lt_001F:	.ascii	"__FB_MODLEVELPROC__\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_0086:	.ascii	"SOURCE_DATE_EPOCH\0"
.balign 4
Lt_008F:	.ascii	"mm-dd-yyyy\0"
.balign 4
Lt_0093:	.ascii	"yyyy-mm-dd\0"
.balign 4
Lt_0097:	.ascii	"hh:nn:ss\0"
.balign 4
Lt_00D5:	.ascii	"x87\0"
.balign 4
Lt_00D8:	.ascii	"sse\0"
.balign 4
Lt_00E0:	.ascii	"precise\0"
.balign 4
Lt_00E3:	.ascii	"fast\0"
.balign 4
Lt_00ED:	.ascii	"intel\0"
.balign 4
Lt_00F0:	.ascii	"att\0"
.balign 4
Lt_0107:	.ascii	"\n\0"
.balign 4
Lt_0112:	.ascii	"\0""\0"
.balign 4
Lt_011B:	.ascii	"\12\0\0\0\0\0\0\0"
.balign 4
Lt_0125:	.ascii	"\0\0\0\0\0\0\0\0"
.balign 4
Lt_0173:	.ascii	" \0"
.balign 4
Lt_01AA:	.ascii	"\"\0"
.balign 4
Lt_01AB:	.ascii	"$\"\0"
.balign 4
Lt_01AC:	.ascii	"\"\"\0"
.balign 4
Lt_01B3:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_01B4:	.ascii	"\42\0\0\0\0\0\0\0"
.balign 4
Lt_01B5:	.ascii	"\42\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_023C:	.ascii	"-1\0"

.section .data
.balign 4
DEFTB:
.int Lt_0241
.int Lt_000B
.int 1
.long 0
.int Lt_0242
.int Lt_000C
.int 1
.long 0
.int Lt_0243
.int Lt_000D
.int 1
.long 0
.int Lt_0244
.int Lt_0004
.int 0
.long 0
.int Lt_0245
.int Lt_0005
.int 0
.long 0
.int Lt_0246
.int Lt_0006
.int 0
.long 0
.int Lt_0247
.int Lt_000F
.int 1
.long 0
.int Lt_0248
.int Lt_0000
.int 1
.long 0
.int Lt_0249
.long 0
.int 0
.int HDEFMULTITHREAD_CB
.int Lt_024A
.long 0
.int 1
.int HDEFFILE_CB
.int Lt_024B
.long 0
.int 0
.int HDEFFILE_CB
.int Lt_024C
.long 0
.int 1
.int HDEFFUNCTION_CB
.int Lt_024D
.long 0
.int 0
.int HDEFFUNCTION_CB
.int Lt_024E
.long 0
.int 0
.int HDEFLINE_CB
.int Lt_024F
.long 0
.int 1
.int HDEFDATE_CB
.int Lt_0250
.long 0
.int 1
.int HDEFDATEISO_CB
.int Lt_0251
.long 0
.int 1
.int HDEFTIME_CB
.int Lt_0252
.long 0
.int 1
.int HDEFPATH_CB
.int Lt_0253
.long 0
.int 0
.int HDEFOPTBYVAL_CB
.int Lt_0254
.long 0
.int 0
.int HDEFOPTDYNAMIC_CB
.int Lt_0255
.long 0
.int 0
.int HDEFOPTESCAPE_CB
.int Lt_0256
.long 0
.int 0
.int HDEFOPTEXPLICIT_CB
.int Lt_0257
.long 0
.int 0
.int HDEFOPTPRIVATE_CB
.int Lt_0258
.long 0
.int 0
.int HDEFOPTGOSUB_CB
.int Lt_0259
.long 0
.int 0
.int HDEFOUTEXE_CB
.int Lt_025A
.long 0
.int 0
.int HDEFOUTLIB_CB
.int Lt_025B
.long 0
.int 0
.int HDEFOUTDLL_CB
.int Lt_025C
.long 0
.int 0
.int HDEFOUTOBJ_CB
.int Lt_025D
.long 0
.int 0
.int HDEFDEBUG_CB
.int Lt_025E
.long 0
.int 0
.int HDEFERR_CB
.int Lt_025F
.long 0
.int 1
.int HDEFLANG_CB
.int Lt_0260
.long 0
.int 1
.int HDEFBACKEND_CB
.int Lt_0261
.long 0
.int 1
.int HDEFFPU_CB
.int Lt_0262
.long 0
.int 1
.int HDEFFPMODE_CB
.int Lt_0263
.long 0
.int 0
.int HDEFGCC_CB
.int Lt_0264
.long 0
.int 0
.int HDEFGUI_CB
.int Lt_0265
.long 0
.int 0
.int HDEFOPTIMIZE_CB

.section .rodata
.balign 4
Lt_0241:	.ascii	"__FB_VERSION__\0"
.balign 4
Lt_0242:	.ascii	"__FB_BUILD_DATE__\0"
.balign 4
Lt_0243:	.ascii	"__FB_BUILD_DATE_ISO__\0"
.balign 4
Lt_0244:	.ascii	"__FB_VER_MAJOR__\0"
.balign 4
Lt_0245:	.ascii	"__FB_VER_MINOR__\0"
.balign 4
Lt_0246:	.ascii	"__FB_VER_PATCH__\0"
.balign 4
Lt_0247:	.ascii	"__FB_SIGNATURE__\0"
.balign 4
Lt_0248:	.ascii	"__FB_BUILD_SHA1__\0"
.balign 4
Lt_0249:	.ascii	"__FB_MT__\0"
.balign 4
Lt_024A:	.ascii	"__FILE__\0"
.balign 4
Lt_024B:	.ascii	"__FILE_NQ__\0"
.balign 4
Lt_024C:	.ascii	"__FUNCTION__\0"
.balign 4
Lt_024D:	.ascii	"__FUNCTION_NQ__\0"
.balign 4
Lt_024E:	.ascii	"__LINE__\0"
.balign 4
Lt_024F:	.ascii	"__DATE__\0"
.balign 4
Lt_0250:	.ascii	"__DATE_ISO__\0"
.balign 4
Lt_0251:	.ascii	"__TIME__\0"
.balign 4
Lt_0252:	.ascii	"__PATH__\0"
.balign 4
Lt_0253:	.ascii	"__FB_OPTION_BYVAL__\0"
.balign 4
Lt_0254:	.ascii	"__FB_OPTION_DYNAMIC__\0"
.balign 4
Lt_0255:	.ascii	"__FB_OPTION_ESCAPE__\0"
.balign 4
Lt_0256:	.ascii	"__FB_OPTION_EXPLICIT__\0"
.balign 4
Lt_0257:	.ascii	"__FB_OPTION_PRIVATE__\0"
.balign 4
Lt_0258:	.ascii	"__FB_OPTION_GOSUB__\0"
.balign 4
Lt_0259:	.ascii	"__FB_OUT_EXE__\0"
.balign 4
Lt_025A:	.ascii	"__FB_OUT_LIB__\0"
.balign 4
Lt_025B:	.ascii	"__FB_OUT_DLL__\0"
.balign 4
Lt_025C:	.ascii	"__FB_OUT_OBJ__\0"
.balign 4
Lt_025D:	.ascii	"__FB_DEBUG__\0"
.balign 4
Lt_025E:	.ascii	"__FB_ERR__\0"
.balign 4
Lt_025F:	.ascii	"__FB_LANG__\0"
.balign 4
Lt_0260:	.ascii	"__FB_BACKEND__\0"
.balign 4
Lt_0261:	.ascii	"__FB_FPU__\0"
.balign 4
Lt_0262:	.ascii	"__FB_FPMODE__\0"
.balign 4
Lt_0263:	.ascii	"__FB_GCC__\0"
.balign 4
Lt_0264:	.ascii	"__FB_GUI__\0"
.balign 4
Lt_0265:	.ascii	"__FB_OPTIMIZE__\0"

.section .data
.balign 4
MACROTB:
.int Lt_0267
.int 0
.int HDEFUNIQUEIDPUSH_CB
.long 0
.int 1
.int Lt_0268
.skip 16,0
.int Lt_0269
.int 0
.int HDEFUNIQUEID_CB
.long 0
.int 1
.int Lt_0268
.skip 16,0
.int Lt_026A
.int 0
.int HDEFUNIQUEIDPOP_CB
.long 0
.int 1
.int Lt_0268
.skip 16,0
.int Lt_026B
.int 4
.int HDEFARGCOUNT_CB
.long 0
.int 1
.int Lt_026C
.skip 16,0
.int Lt_026D
.int 4
.int HDEFARGEXTRACT_CB
.long 0
.int 2
.int Lt_026E
.int Lt_026C
.skip 12,0
.int Lt_026F
.int 4
.int HDEFARGLEFT_CB
.long 0
.int 3
.int Lt_0270
.int Lt_0271
.int Lt_0272
.skip 8,0
.int Lt_0273
.int 4
.int HDEFARGRIGHT_CB
.long 0
.int 3
.int Lt_0270
.int Lt_0271
.int Lt_0272
.skip 8,0
.int Lt_0274
.int 0
.int HDEFJOINZ_CB
.int HDEFJOINW_CB
.int 2
.int Lt_0275
.int Lt_0276
.skip 12,0
.int Lt_0277
.int 0
.int HDEFQUOTEZ_CB
.int HDEFQUOTEW_CB
.int 1
.int Lt_0270
.skip 16,0
.int Lt_0278
.int 0
.int HDEFUNQUOTEZ_CB
.int HDEFUNQUOTEW_CB
.int 1
.int Lt_0270
.skip 16,0
.int Lt_0279
.int 0
.int HDEFEVALZ_CB
.int HDEFEVALW_CB
.int 1
.int Lt_0270
.skip 16,0
.int Lt_027A
.int 0
.int HDEFIIFZ_CB
.int HDEFIIFW_CB
.int 3
.int Lt_027B
.int Lt_027C
.int Lt_027D
.skip 8,0
.int Lt_027E
.int 0
.int HDEFQUERYSYMZ_CB
.long 0
.int 2
.int Lt_027F
.int Lt_0280
.skip 12,0

.section .rodata
.balign 4
Lt_0267:	.ascii	"__FB_UNIQUEID_PUSH__\0"
.balign 4
Lt_0268:	.ascii	"ID\0"
.balign 4
Lt_0269:	.ascii	"__FB_UNIQUEID__\0"
.balign 4
Lt_026A:	.ascii	"__FB_UNIQUEID_POP__\0"
.balign 4
Lt_026B:	.ascii	"__FB_ARG_COUNT__\0"
.balign 4
Lt_026C:	.ascii	"ARGS\0"
.balign 4
Lt_026D:	.ascii	"__FB_ARG_EXTRACT__\0"
.balign 4
Lt_026E:	.ascii	"ARGNUM\0"
.balign 4
Lt_026F:	.ascii	"__FB_ARG_LEFTOF__\0"
.balign 4
Lt_0270:	.ascii	"ARG\0"
.balign 4
Lt_0271:	.ascii	"SEP\0"
.balign 4
Lt_0272:	.ascii	"RET\0"
.balign 4
Lt_0273:	.ascii	"__FB_ARG_RIGHTOF__\0"
.balign 4
Lt_0274:	.ascii	"__FB_JOIN__\0"
.balign 4
Lt_0275:	.ascii	"L\0"
.balign 4
Lt_0276:	.ascii	"R\0"
.balign 4
Lt_0277:	.ascii	"__FB_QUOTE__\0"
.balign 4
Lt_0278:	.ascii	"__FB_UNQUOTE__\0"
.balign 4
Lt_0279:	.ascii	"__FB_EVAL__\0"
.balign 4
Lt_027A:	.ascii	"__FB_IIF__\0"
.balign 4
Lt_027B:	.ascii	"CMPEXPR\0"
.balign 4
Lt_027C:	.ascii	"TEXPR\0"
.balign 4
Lt_027D:	.ascii	"FEXPR\0"
.balign 4
Lt_027E:	.ascii	"__FB_QUERY_SYMBOL__\0"
.balign 4
Lt_027F:	.ascii	"WHAT\0"
.balign 4
Lt_0280:	.ascii	"SYM\0"
.balign 4
Lt_028E:	.ascii	"__FB_\0"
.balign 4
Lt_028F:	.ascii	"__\0"
.balign 4
Lt_0295:	.ascii	"__FB_LINUX__\0"
.balign 4
Lt_0298:	.ascii	"__FB_UNIX__\0"
.balign 4
Lt_0299:	.ascii	"__FB_PCOS__\0"
.balign 4
Lt_029C:	.ascii	"__FB_64BIT__\0"
.balign 4
Lt_02A2:	.ascii	"__FB_ARM__\0"
.balign 4
Lt_02A6:	.ascii	"__FB_X86__\0"
.balign 4
Lt_02A7:	.ascii	"__FB_ASM__\0"
.balign 4
Lt_02AC:	.ascii	"__FB_PPC__\0"
.balign 4
Lt_02AF:	.ascii	"__FB_BIGENDIAN__\0"
.balign 4
Lt_02B2:	.ascii	"__FB_MAIN__\0"
.balign 4
Lt_02B5:	.ascii	"__FB_SSE__\0"
.balign 4
Lt_02B6:	.ascii	"__FB_VECTORIZE__\0"
.balign 8
Lt_0310:	.quad	0x40F5180000000000
.balign 8
Lt_0311:	.quad	0x40D8F84000000000

.section .ctors, "aw", @progbits
.int fb_ctor__symbzdefine
