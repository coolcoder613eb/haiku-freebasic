	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irztac:
.type fb_ctor__irztac, @function
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
.size fb_ctor__irztac, .-fb_ctor__irztac
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
_INIT:
.type _INIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0073:
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
sub esp, 4
push 128
push 2048
lea eax, [CTX]
push eax
call FLISTINIT
add esp, 16
sub esp, 4
push 68
push 6144
lea eax, [CTX+64]
push eax
call FLISTINIT
add esp, 16
call EMITINIT
mov dword ptr [ebp-4], 0
.L_0078:
sub esp, 12
push dword ptr [ebp-4]
call EMITGETREGCLASS
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [REGTB+ebx*4], eax
.L_0076:
inc dword ptr [ebp-4]
.L_0075:
cmp dword ptr [ebp-4], 1
jle .L_0078
.L_0077:
.L_0074:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _INIT, .-_INIT
.cfi_endproc
.balign 16
_END:
.type _END, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0079:
call EMITEND
sub esp, 12
lea eax, [CTX+64]
push eax
call FLISTEND
add esp, 16
sub esp, 12
lea eax, [CTX]
push eax
call FLISTEND
add esp, 16
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
.L_007A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _END, .-_END
.cfi_endproc
.balign 16
_EMITBEGIN:
.type _EMITBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007B:
call dword ptr [EMIT+160]
mov dword ptr [ebp-4], eax
.L_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITBEGIN, .-_EMITBEGIN
.cfi_endproc
.balign 16
_EMITEND:
.type _EMITEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_007D:
call dword ptr [EMIT+164]
.L_007E:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITEND, .-_EMITEND
.cfi_endproc
.balign 16
_GETOPTIONVALUE:
.type _GETOPTIONVALUE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_007F:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+156]
add esp, 16
mov dword ptr [ebp-4], eax
.L_0080:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETOPTIONVALUE, .-_GETOPTIONVALUE
.cfi_endproc
.balign 16
HLOADIDX:
.type HLOADIDX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0081:
cmp dword ptr [ebp+8], 0
jne .L_0084
jmp .L_0082
.L_0084:
.L_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_0088
.L_0089:
cmp dword ptr [ebp-8], 3
jne .L_0087
.L_0088:
jmp .L_0085
.L_0087:
jmp .L_0082
.L_008A:
.L_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_008C
jmp .L_0082
.L_008C:
.L_008B:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
jne .L_008E
jmp .L_0082
.L_008E:
.L_008D:
push dword ptr [SYMB_DTYPETB+228]
push 0
push dword ptr [ebp-4]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax]
add esp, 16
.L_0082:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADIDX, .-HLOADIDX
.cfi_endproc
.balign 16
HRELINK:
.type HRELINK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_008F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .L_0092
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
jmp .L_0091
.L_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
.L_0091:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
.L_0090:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRELINK, .-HRELINK
.cfi_endproc
.balign 16
_EMIT:
.type _EMIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0093:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [Lt_0414], eax
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+52], 0
cmp dword ptr [ebp+12], 0
je .L_0096
sub esp, 8
mov ebx, dword ptr [Lt_0414]
lea eax, [ebx+44]
push eax
push dword ptr [ebp+12]
call HRELINK
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+48], 0
je .L_0098
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_0414]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+64], 0
sub esp, 8
mov eax, dword ptr [Lt_0414]
lea ecx, [eax+56]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+48]
call HRELINK
add esp, 16
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ecx
.L_0098:
.L_0097:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+52], 0
je .L_009A
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+76], 0
sub esp, 8
mov eax, dword ptr [Lt_0414]
lea ebx, [eax+68]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+52]
call HRELINK
add esp, 16
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ebx
.L_009A:
.L_0099:
.L_0096:
.L_0095:
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+84], 0
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+88], 0
cmp dword ptr [ebp+16], 0
je .L_009C
sub esp, 8
mov eax, dword ptr [Lt_0414]
lea ebx, [eax+80]
push ebx
push dword ptr [ebp+16]
call HRELINK
add esp, 16
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [Lt_0414]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+48], 0
je .L_009E
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0414]
mov ecx, dword ptr [eax+48]
mov dword ptr [ebx+92], ecx
mov ecx, dword ptr [Lt_0414]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+96], ebx
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+100], 0
sub esp, 8
mov ebx, dword ptr [Lt_0414]
lea ecx, [ebx+92]
push ecx
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+48]
call HRELINK
add esp, 16
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0414]
mov dword ptr [ebx+64], ecx
.L_009E:
.L_009D:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+52], 0
je .L_00A0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ecx+52]
mov dword ptr [ebx+104], eax
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+108], ebx
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+112], 0
sub esp, 8
mov ebx, dword ptr [Lt_0414]
lea eax, [ebx+104]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+52]
call HRELINK
add esp, 16
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [Lt_0414]
mov dword ptr [ebx+64], eax
.L_00A0:
.L_009F:
.L_009C:
.L_009B:
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [Lt_0414]
mov dword ptr [ebx+16], 0
cmp dword ptr [ebp+20], 0
je .L_00A2
sub esp, 8
mov ebx, dword ptr [Lt_0414]
lea eax, [ebx+8]
push eax
push dword ptr [ebp+20]
call HRELINK
add esp, 16
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx+48], 0
je .L_00A4
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [Lt_0414]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+28], 0
sub esp, 8
mov eax, dword ptr [Lt_0414]
lea ecx, [eax+20]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+48]
call HRELINK
add esp, 16
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ecx
.L_00A4:
.L_00A3:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+52], 0
je .L_00A6
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [Lt_0414]
mov dword ptr [eax+40], 0
sub esp, 8
mov eax, dword ptr [Lt_0414]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+52]
call HRELINK
add esp, 16
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [Lt_0414]
mov dword ptr [eax+64], ebx
.L_00A6:
.L_00A5:
.L_00A2:
.L_00A1:
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+116], eax
mov eax, dword ptr [Lt_0414]
mov ebx, dword ptr [ebp+28]
mov dword ptr [eax+120], ebx
mov ebx, dword ptr [Lt_0414]
mov eax, dword ptr [ebp+32]
mov dword ptr [ebx+124], eax
inc dword ptr [CTX+56]
.L_0094:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMIT, .-_EMIT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0414,4

.section .text
.balign 16
_PROCBEGIN:
.type _PROCBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00A7:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+188]
add esp, 16
.L_00A8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCBEGIN, .-_PROCBEGIN
.cfi_endproc
.balign 16
_PROCEND:
.type _PROCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00A9:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+192]
add esp, 16
.L_00AA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCEND, .-_PROCEND
.cfi_endproc
.balign 16
_PROCALLOCARG:
.type _PROCALLOCARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AB:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+204]
add esp, 16
.L_00AC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCARG, .-_PROCALLOCARG
.cfi_endproc
.balign 16
_PROCALLOCLOCAL:
.type _PROCALLOCLOCAL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00AD:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+208]
add esp, 16
.L_00AE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCLOCAL, .-_PROCALLOCLOCAL
.cfi_endproc
.balign 16
_PROCGETFRAMEREGNAME:
.type _PROCGETFRAMEREGNAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_00AF:
call dword ptr [EMIT+184]
mov dword ptr [ebp-4], eax
.L_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCGETFRAMEREGNAME, .-_PROCGETFRAMEREGNAME
.cfi_endproc
.balign 16
_SCOPEBEGIN:
.type _SCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B1:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+216]
add esp, 16
.L_00B2:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SCOPEBEGIN, .-_SCOPEBEGIN
.cfi_endproc
.balign 16
_SCOPEEND:
.type _SCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B3:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+220]
add esp, 16
.L_00B4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SCOPEEND, .-_SCOPEEND
.cfi_endproc
.balign 16
_PROCALLOCSTATICVARS:
.type _PROCALLOCSTATICVARS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B5:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [EMIT+212]
add esp, 16
.L_00B6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _PROCALLOCSTATICVARS, .-_PROCALLOCSTATICVARS
.cfi_endproc
.balign 16
_EMITLABEL:
.type _EMITLABEL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B7:
call _FLUSH
sub esp, 12
push dword ptr [ebp+8]
call EMITLABEL
add esp, 16
.L_00B8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLABEL, .-_EMITLABEL
.cfi_endproc
.balign 16
_EMITRETURN:
.type _EMITRETURN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00B9:
call _FLUSH
sub esp, 12
push dword ptr [ebp+8]
call EMITRET
add esp, 16
.L_00BA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITRETURN, .-_EMITRETURN
.cfi_endproc
.balign 16
_EMITPROCBEGIN:
.type _EMITPROCBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00BB:
call _FLUSH
mov dword ptr [Lt_0415], 0
.L_00C0:
sub esp, 12
mov eax, dword ptr [Lt_0415]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0415]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+44]
add esp, 16
.L_00BE:
inc dword ptr [Lt_0415]
.L_00BD:
cmp dword ptr [Lt_0415], 1
jle .L_00C0
.L_00BF:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+196]
add esp, 16
.L_00BC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPROCBEGIN, .-_EMITPROCBEGIN
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0415,4

.section .text
.balign 16
_EMITPROCEND:
.type _EMITPROCEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_00C1:
call _FLUSH
push dword ptr [ebp+16]
push dword ptr [ebp+12]
sub esp, 4
push dword ptr [ebp+8]
call SYMBPROCCALCBYTESTOPOP
add esp, 8
mov ebx, eax
push ebx
push dword ptr [ebp+8]
call dword ptr [EMIT+200]
add esp, 16
.L_00C2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPROCEND, .-_EMITPROCEND
.cfi_endproc
.balign 16
_EMITSCOPEBEGIN:
.type _EMITSCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C3:
call _FLUSH
.L_00C4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSCOPEBEGIN, .-_EMITSCOPEBEGIN
.cfi_endproc
.balign 16
_EMITSCOPEEND:
.type _EMITSCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C5:
call _FLUSH
.L_00C6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSCOPEEND, .-_EMITSCOPEEND
.cfi_endproc
.balign 16
_EMITBOP:
.type _EMITBOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C7:
sub esp, 4
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_00C8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITBOP, .-_EMITBOP
.cfi_endproc
.balign 16
_EMITUOP:
.type _EMITUOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00C9:
sub esp, 4
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_00CA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITUOP, .-_EMITUOP
.cfi_endproc
.balign 16
_EMITCONVERT:
.type _EMITCONVERT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CD
mov dword ptr [ebp-4], 24
jmp .L_0416
.L_00CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0416:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00D1
.L_00D2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .L_00D4
sub esp, 4
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call _EMIT
add esp, 32
jmp .L_00D3
.L_00D4:
sub esp, 4
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call _EMIT
add esp, 32
.L_00D3:
jmp .L_00CF
.L_00D1:
cmp dword ptr [ebp-8], 1
jne .L_00D5
.L_00D6:
sub esp, 4
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call _EMIT
add esp, 32
.L_00D5:
.L_00CF:
.L_00CC:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCONVERT, .-_EMITCONVERT
.cfi_endproc
.balign 16
_EMITSTORE:
.type _EMITSTORE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00D7:
sub esp, 4
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _EMIT
add esp, 32
.L_00D8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTORE, .-_EMITSTORE
.cfi_endproc
.balign 16
_EMITSPILLREGS:
.type _EMITSPILLREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00D9:
sub esp, 4
push 0
push 0
push 0
push 0
push 0
push 0
push 87
call _EMIT
add esp, 32
.L_00DA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSPILLREGS, .-_EMITSPILLREGS
.cfi_endproc
.balign 16
_EMITLOAD:
.type _EMITLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00DB:
sub esp, 4
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 85
call _EMIT
add esp, 32
.L_00DC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOAD, .-_EMITLOAD
.cfi_endproc
.balign 16
_EMITLOADRES:
.type _EMITLOADRES, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00DD:
sub esp, 4
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 86
call _EMIT
add esp, 32
.L_00DE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLOADRES, .-_EMITLOADRES
.cfi_endproc
.balign 16
_EMITSTACK:
.type _EMITSTACK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00DF:
sub esp, 4
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_00E0:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTACK, .-_EMITSTACK
.cfi_endproc
.balign 16
_EMITPUSHARG:
.type _EMITPUSHARG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00E1:
cmp dword ptr [ebp+28], 0
je .L_00E4
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+12], 0
je .L_00E6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00E7
mov dword ptr [ebp-20], 24
jmp .L_0417
.L_00E7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0417:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_00EA
mov dword ptr [ebp-8], 9
.L_00EA:
.L_00E9:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
jmp .L_00E5
.L_00E6:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-4], -1
.L_00E5:
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+76]
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call dword ptr [EMIT+176]
add esp, 16
cmp dword ptr [ebp-16], -1
je .L_00EC
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_00EE
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
.L_00EE:
.L_00ED:
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_00EF
mov dword ptr [ebp-20], 24
jmp .L_0418
.L_00EF:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_0418:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
push dword ptr [SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+28]
mov ecx, dword ptr [ebp-4]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+12]
push 88
call _EMITSTACK
add esp, 16
jmp .L_00E2
.L_00EC:
.L_00EB:
.L_00E4:
.L_00E3:
cmp dword ptr [ebp+20], 0
jne .L_00F2
cmp dword ptr [ebp+16], 0
jne .L_00F2
.L_0419:
sub esp, 4
push 0
push dword ptr [ebp+12]
push 88
call _EMITSTACK
add esp, 16
jmp .L_00F1
.L_00F2:
sub esp, 4
push 0
mov eax, dword ptr [ebp+16]
push eax
push 0
push 0
push 0
push dword ptr [ebp+12]
push 90
call _EMIT
add esp, 32
.L_00F1:
.L_00E2:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITPUSHARG, .-_EMITPUSHARG
.cfi_endproc
.balign 16
_EMITADDR:
.type _EMITADDR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00F3:
sub esp, 4
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_00F4:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITADDR, .-_EMITADDR
.cfi_endproc
.balign 16
_EMITLABELNF:
.type _EMITLABELNF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00F5:
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 100
call _EMIT
add esp, 32
.L_00F6:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITLABELNF, .-_EMITLABELNF
.cfi_endproc
.balign 16
_EMITCALL:
.type _EMITCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00F7:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push 0
push 102
call _EMIT
add esp, 32
.L_00F8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCALL, .-_EMITCALL
.cfi_endproc
.balign 16
_EMITCALLPTR:
.type _EMITCALLPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00F9:
sub esp, 4
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 103
call _EMIT
add esp, 32
.L_00FA:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCALLPTR, .-_EMITCALLPTR
.cfi_endproc
.balign 16
_EMITSTACKALIGN:
.type _EMITSTACKALIGN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00FB:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 0
push 91
call _EMIT
add esp, 32
.L_00FC:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITSTACKALIGN, .-_EMITSTACKALIGN
.cfi_endproc
.balign 16
_EMITJUMPPTR:
.type _EMITJUMPPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00FD:
sub esp, 4
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 104
call _EMIT
add esp, 32
.L_00FE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITJUMPPTR, .-_EMITJUMPPTR
.cfi_endproc
.balign 16
_EMITBRANCH:
.type _EMITBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_00FF:
sub esp, 4
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_0100:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITBRANCH, .-_EMITBRANCH
.cfi_endproc
.balign 16
_EMITJMPTB:
.type _EMITJMPTB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0101:
call _FLUSH
sub esp, 12
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITJMPTB
add esp, 48
.L_0102:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITJMPTB, .-_EMITJMPTB
.cfi_endproc
.balign 16
_EMITMEM:
.type _EMITMEM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0103:
sub esp, 4
push 0
mov eax, dword ptr [ebp+20]
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_0104:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMEM, .-_EMITMEM
.cfi_endproc
.balign 16
_EMITMACRO:
.type _EMITMACRO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0105:
.L_0106:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITMACRO, .-_EMITMACRO
.cfi_endproc
.balign 16
_EMITDECL:
.type _EMITDECL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0107:
.L_0108:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDECL, .-_EMITDECL
.cfi_endproc
.balign 16
_EMITDBG:
.type _EMITDBG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0109:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _EMIT
add esp, 32
.L_010A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITDBG, .-_EMITDBG
.cfi_endproc
.balign 16
_EMITCOMMENT:
.type _EMITCOMMENT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_010B:
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
call ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 117
call _EMIT
add esp, 32
.L_010C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITCOMMENT, .-_EMITCOMMENT
.cfi_endproc
.balign 16
_EMITASMLINE:
.type _EMITASMLINE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_010D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_010F:
cmp dword ptr [ebp-16], 0
je .L_0110
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_0113
.L_0114:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-12]
push ebx
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .L_0111
.L_0113:
cmp dword ptr [ebp-20], 1
jne .L_0116
.L_0117:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_041A
cmp dword ptr [ebp-40], 0
je .L_011A
.L_041A:
cmp dword ptr [ebp-36], 0
jl .L_011C
jg .L_041B
cmp dword ptr [ebp-40], 0
jbe .L_011C
.L_041B:
sub esp, 12
push 0
push 2
push offset Lt_011D
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 32
.L_011C:
.L_011B:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.L_011A:
.L_0119:
.L_0116:
.L_0111:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .L_010F
.L_0110:
sub esp, 4
push 0
push 0
push dword ptr [ebp-12]
call ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 118
call _EMIT
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.L_010E:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITASMLINE, .-_EMITASMLINE
.cfi_endproc
.balign 16
_EMITVARINIBEGIN:
.type _EMITVARINIBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_011E:
sub esp, 12
push dword ptr [ebp+8]
call EMITVARINIBEGIN
add esp, 16
.L_011F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIBEGIN, .-_EMITVARINIBEGIN
.cfi_endproc
.balign 16
_EMITVARINIEND:
.type _EMITVARINIEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0120:
.L_0121:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIEND, .-_EMITVARINIEND
.cfi_endproc
.balign 16
_EMITVARINII:
.type _EMITVARINII, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0122:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call EMITVARINII
add esp, 16
.L_0123:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINII, .-_EMITVARINII
.cfi_endproc
.balign 16
_EMITVARINIF:
.type _EMITVARINIF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0124:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call EMITVARINIF
add esp, 16
.L_0125:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIF, .-_EMITVARINIF
.cfi_endproc
.balign 16
_EMITVARINIOFS:
.type _EMITVARINIOFS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0126:
sub esp, 8
mov eax, dword ptr [ebp+16]
push eax
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call EMITVARINIOFS
add esp, 16
.L_0127:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIOFS, .-_EMITVARINIOFS
.cfi_endproc
.balign 16
_EMITVARINISTR:
.type _EMITVARINISTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0128:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_012B
cmp dword ptr [ebp+8], 0
jne .L_012B
.L_041C:
sub esp, 4
push 0
push 0
push 2
call EMITVARINII
add esp, 16
jmp .L_0129
.L_012B:
.L_012A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_012D
jg .L_041D
cmp dword ptr [ebp+20], ebx
jbe .L_012D
.L_041D:
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call HESCAPE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_012C
.L_012D:
sub esp, 12
push dword ptr [ebp+16]
call HESCAPE
add esp, 16
mov dword ptr [ebp-4], eax
.L_012C:
sub esp, 12
push dword ptr [ebp-4]
call EMITVARINISTR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .L_0130
jl .L_041E
cmp dword ptr [ebp+20], ebx
jae .L_0130
.L_041E:
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov ecx, eax
push ecx
call EMITVARINIPAD
add esp, 16
.L_0130:
.L_012F:
.L_0129:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINISTR, .-_EMITVARINISTR
.cfi_endproc
.balign 16
_EMITVARINIWSTR:
.type _EMITVARINIWSTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
.L_0131:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0134
cmp dword ptr [ebp+8], 0
jne .L_0134
.L_041F:
sub esp, 4
push 0
push 0
push dword ptr [ENV+272]
call EMITVARINII
add esp, 16
jmp .L_0132
.L_0134:
.L_0133:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0136
jg .L_0420
cmp dword ptr [ebp+20], ebx
jbe .L_0136
.L_0420:
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
sub esp, 12
sub esp, 12
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call fb_WstrLeft
add esp, 20
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call HESCAPEW
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
jmp .L_0135
.L_0136:
sub esp, 12
push dword ptr [ebp+16]
call HESCAPEW
add esp, 16
mov dword ptr [ebp-4], eax
.L_0135:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-4]
call EMITVARINIWSTR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .L_0139
jl .L_0421
cmp dword ptr [ebp+20], ebx
jae .L_0139
.L_0421:
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebp-8]
mov ecx, esi
sar ecx, 31
push ecx
push esi
push ebx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ebx
add esp, 8
mov esi, eax
push esi
call EMITVARINIPAD
add esp, 16
.L_0139:
.L_0138:
.L_0132:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIWSTR, .-_EMITVARINIWSTR
.cfi_endproc
.balign 16
_EMITVARINIPAD:
.type _EMITVARINIPAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_013A:
sub esp, 12
mov eax, dword ptr [ebp+8]
push eax
call EMITVARINIPAD
add esp, 16
.L_013B:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINIPAD, .-_EMITVARINIPAD
.cfi_endproc
.balign 16
_EMITVARINISCOPEBEGIN:
.type _EMITVARINISCOPEBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_013C:
.L_013D:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINISCOPEBEGIN, .-_EMITVARINISCOPEBEGIN
.cfi_endproc
.balign 16
_EMITVARINISCOPEEND:
.type _EMITVARINISCOPEEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_013E:
.L_013F:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITVARINISCOPEEND, .-_EMITVARINISCOPEEND
.cfi_endproc
.balign 16
_EMITFBCTINFBEGIN:
.type _EMITFBCTINFBEGIN, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0140:
call EMITFBCTINFBEGIN
.L_0141:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFBCTINFBEGIN, .-_EMITFBCTINFBEGIN
.cfi_endproc
.balign 16
_EMITFBCTINFSTRING:
.type _EMITFBCTINFSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0142:
sub esp, 12
push dword ptr [ebp+8]
call EMITFBCTINFSTRING
add esp, 16
.L_0143:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFBCTINFSTRING, .-_EMITFBCTINFSTRING
.cfi_endproc
.balign 16
_EMITFBCTINFEND:
.type _EMITFBCTINFEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0144:
call EMITFBCTINFEND
.L_0145:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _EMITFBCTINFEND, .-_EMITFBCTINFEND
.cfi_endproc
.balign 16
HNEWVR:
.type HNEWVR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0146:
sub esp, 12
lea eax, [CTX+64]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0148
mov dword ptr [ebp-12], 24
jmp .L_0422
.L_0148:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0422:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], -1
cmp dword ptr [ENV+116], 0
jne .L_014B
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
jmp .L_014A
.L_014B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 1
.L_014A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+36], 0
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0147:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HNEWVR, .-HNEWVR
.cfi_endproc
.balign 16
_ALLOCVREG:
.type _ALLOCVREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_014C:
and dword ptr [ebp+8], 511
sub esp, 4
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_014F
sub esp, 4
push 4
push 0
push 8
call HNEWVR
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
.L_014F:
.L_014E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_014D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVREG, .-_ALLOCVREG
.cfi_endproc
.balign 16
_ALLOCVRIMM:
.type _ALLOCVRIMM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0150:
and dword ptr [ebp+8], 511
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0153
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
and eax, 4294967295
and ebx, 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
sub esp, 4
push 0
push 0
push 8
call HNEWVR
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
mov ebx, eax
xor eax, eax
mov esi, ebx
mov ecx, eax
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+52]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
jmp .L_0152
.L_0153:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], ecx
.L_0152:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0151:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVRIMM, .-_ALLOCVRIMM
.cfi_endproc
.balign 16
_ALLOCVRIMMF:
.type _ALLOCVRIMMF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 24
mov dword ptr [ebp-4], 0
.L_0154:
and dword ptr [ebp+8], 511
mov eax, dword ptr [IR+272]
and eax, 2
test eax, eax
je .L_0157
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
jmp .L_0156
.L_0157:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBALLOCFLOATCONST
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [IR+236]
add esp, 32
mov dword ptr [ebp-8], eax
.L_0156:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0155:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVRIMMF, .-_ALLOCVRIMMF
.cfi_endproc
.balign 16
_ALLOCVRVAR:
.type _ALLOCVRVAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0158:
and dword ptr [ebp+8], 511
sub esp, 4
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp+8]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_015B
sub esp, 4
push 1
push 0
push 8
call HNEWVR
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.L_015B:
.L_015A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0159:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVRVAR, .-_ALLOCVRVAR
.cfi_endproc
.balign 16
_ALLOCVRIDX:
.type _ALLOCVRIDX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_015C:
and dword ptr [ebp+8], 511
sub esp, 4
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov dword ptr [eax+48], ecx
mov ecx, dword ptr [ebp+8]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_015F
sub esp, 4
push 2
push 0
push 8
call HNEWVR
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.L_015F:
.L_015E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVRIDX, .-_ALLOCVRIDX
.cfi_endproc
.balign 16
_ALLOCVRPTR:
.type _ALLOCVRPTR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0160:
and dword ptr [ebp+8], 511
sub esp, 4
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+44], 1
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [ecx+48], ebx
mov ebx, dword ptr [ebp+8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0163
sub esp, 4
push 3
push 0
push 8
call HNEWVR
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.L_0163:
.L_0162:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0161:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVRPTR, .-_ALLOCVRPTR
.cfi_endproc
.balign 16
_ALLOCVROFS:
.type _ALLOCVROFS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0164:
and dword ptr [ebp+8], 511
sub esp, 4
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0165:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ALLOCVROFS, .-_ALLOCVROFS
.cfi_endproc
.balign 16
_SETVREGDATATYPE:
.type _SETVREGDATATYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0166:
and dword ptr [ebp+12], 511
cmp dword ptr [ebp+8], 0
je .L_0169
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_016A
mov dword ptr [ebp-4], 24
jmp .L_042D
.L_016A:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.L_042D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_0169:
.L_0168:
.L_0167:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _SETVREGDATATYPE, .-_SETVREGDATATYPE
.cfi_endproc
.balign 16
HRENAME:
.type HRENAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_016C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_016E:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 0
je .L_0172
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+48], ebx
jne .L_0174
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+48], ebx
jmp .L_0173
.L_0174:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+52], ebx
.L_0173:
.L_0172:
.L_0171:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.L_0170:
cmp dword ptr [ebp-4], 0
jne .L_016E
.L_016F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+64]
mov dword ptr [eax+64], ecx
.L_016D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRENAME, .-HRENAME
.cfi_endproc
.balign 16
HREUSE:
.type HREUSE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 84
push ebx
.L_0175:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .L_0178
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0179
mov dword ptr [ebp-56], 24
jmp .L_042E
.L_0179:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_042E:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 24
jne .L_017C
mov dword ptr [ebp-16], 9
.L_017C:
.L_017B:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-20], eax
jmp .L_0177
.L_0178:
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-20], -1
.L_0177:
cmp dword ptr [ebp-8], 0
je .L_017E
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_017F
mov dword ptr [ebp-56], 24
jmp .L_042F
.L_017F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_042F:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 24
jne .L_0182
mov dword ptr [ebp-28], 9
.L_0182:
.L_0181:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
jmp .L_017D
.L_017E:
mov dword ptr [ebp-36], -1
mov dword ptr [ebp-28], -2147483648
mov dword ptr [ebp-32], -1
.L_017D:
cmp dword ptr [ebp-12], 0
je .L_0184
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0185
mov dword ptr [ebp-56], 24
jmp .L_0430
.L_0185:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_0430:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 24
jne .L_0188
mov dword ptr [ebp-40], 9
.L_0188:
.L_0187:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-44], eax
jmp .L_0183
.L_0184:
mov dword ptr [ebp-48], -1
mov dword ptr [ebp-40], -2147483648
mov dword ptr [ebp-44], -1
.L_0183:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
jne .L_018B
.L_018C:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebp-12], ebx
je .L_018E
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .L_018F
mov dword ptr [ebp-60], 24
jmp .L_0431
.L_018F:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0431:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0191
mov dword ptr [ebp-64], 24
jmp .L_0432
.L_0191:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_0432:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+20]
cmp dword ptr [SYMB_DTYPETB+eax+20], ecx
jne .L_0194
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [IR+256]
add esp, 16
cmp eax, 2147483647
jne .L_0196
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call HRENAME
add esp, 16
.L_0196:
.L_0195:
.L_0194:
.L_0193:
.L_018E:
.L_018D:
jmp .L_0189
.L_018B:
cmp dword ptr [ebp-56], 3
je .L_0198
.L_0199:
cmp dword ptr [ebp-56], 14
jne .L_0197
.L_0198:
cmp dword ptr [ebp-12], 0
jne .L_019B
jmp .L_0176
.L_019B:
.L_019A:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-20], eax
je .L_019D
jmp .L_0176
.L_019D:
.L_019C:
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-12], eax
je .L_019F
mov eax, dword ptr [ebp-40]
and eax, 480
je .L_01A0
mov dword ptr [ebp-68], 24
jmp .L_0434
.L_01A0:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0434:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_01A2
mov dword ptr [ebp-72], 24
jmp .L_0435
.L_01A2:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-72], eax
.L_0435:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ecx, dword ptr [ebp-76]
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
cmp dword ptr [SYMB_DTYPETB+ecx+20], ebx
jne .L_01A5
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [IR+256]
add esp, 16
cmp eax, 2147483647
jne .L_01A7
mov dword ptr [ebp-60], -1
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A4:
.L_019F:
.L_019E:
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 2
test ebx, ebx
je .L_01A9
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
je .L_01AB
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .L_01AC
mov dword ptr [ebp-68], 24
jmp .L_0437
.L_01AC:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0437:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_01AE
mov dword ptr [ebp-72], 24
jmp .L_0438
.L_01AE:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-72], ebx
.L_0438:
mov ebx, dword ptr [ebp-72]
imul ebx, 28
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+20]
cmp dword ptr [SYMB_DTYPETB+eax+20], ecx
jne .L_01B1
cmp dword ptr [ebp-36], 0
je .L_01B3
sub esp, 12
push dword ptr [ebp-8]
call dword ptr [IR+256]
add esp, 16
cmp eax, 2147483647
jne .L_01B5
mov dword ptr [ebp-64], -1
.L_01B5:
.L_01B4:
.L_01B3:
.L_01B2:
.L_01B1:
.L_01B0:
.L_01AB:
.L_01AA:
.L_01A9:
.L_01A8:
mov eax, dword ptr [ebp-64]
and eax, dword ptr [ebp-60]
je .L_01B7
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4
je .L_01B9
mov dword ptr [ebp-60], 0
.L_01B9:
.L_01B8:
.L_01B7:
.L_01B6:
cmp dword ptr [ebp-60], 0
je .L_01BB
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call HRENAME
add esp, 16
jmp .L_01BA
.L_01BB:
cmp dword ptr [ebp-64], 0
je .L_01BC
sub esp, 4
push 36
mov eax, dword ptr [ebp+8]
lea ecx, [eax+80]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+44]
push eax
call fb_MemSwap
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HRENAME
add esp, 16
.L_01BC:
.L_01BA:
.L_0197:
.L_0189:
.L_0176:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HREUSE, .-HREUSE
.cfi_endproc
.balign 16
_FLUSH:
.type _FLUSH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01BD:
cmp dword ptr [CTX+56], 0
jne .L_01C0
jmp .L_01BE
.L_01C0:
.L_01BF:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [Lt_043A], eax
.L_01C1:
mov eax, dword ptr [Lt_043A]
mov dword ptr [CTX+60], eax
sub esp, 12
push dword ptr [Lt_043A]
call HREUSE
add esp, 16
mov eax, dword ptr [Lt_043A]
mov ebx, dword ptr [eax+4]
mov dword ptr [Lt_043B], ebx
mov ebx, dword ptr [Lt_043A]
mov eax, dword ptr [ebx+44]
mov dword ptr [Lt_043C], eax
mov eax, dword ptr [Lt_043A]
mov ebx, dword ptr [eax+80]
mov dword ptr [Lt_043D], ebx
mov ebx, dword ptr [Lt_043A]
mov eax, dword ptr [ebx+8]
mov dword ptr [Lt_043E], eax
mov eax, dword ptr [Lt_043B]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-4], ebx
jmp .L_01C5
.L_01C7:
sub esp, 4
push dword ptr [Lt_043E]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHUOP
add esp, 16
jmp .L_01C4
.L_01C8:
push dword ptr [Lt_043E]
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHBOP
add esp, 16
jmp .L_01C4
.L_01C9:
sub esp, 12
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
push dword ptr [Lt_043E]
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHCOMP
add esp, 32
jmp .L_01C4
.L_01CA:
sub esp, 4
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHSTORE
add esp, 16
jmp .L_01C4
.L_01CB:
sub esp, 4
push dword ptr [Lt_043E]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHLOAD
add esp, 16
jmp .L_01C4
.L_01CC:
sub esp, 4
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHCONVERT
add esp, 16
jmp .L_01C4
.L_01CD:
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+120]
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHSTACK
add esp, 16
jmp .L_01C4
.L_01CE:
sub esp, 12
push dword ptr [Lt_043E]
push dword ptr [Lt_043C]
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+120]
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
push dword ptr [Lt_043B]
call HFLUSHCALL
add esp, 32
jmp .L_01C4
.L_01CF:
sub esp, 8
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
push dword ptr [Lt_043B]
call HFLUSHBRANCH
add esp, 16
jmp .L_01C4
.L_01D0:
sub esp, 4
push dword ptr [Lt_043E]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHADDR
add esp, 16
jmp .L_01C4
.L_01D1:
sub esp, 12
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+120]
push dword ptr [Lt_043D]
push dword ptr [Lt_043C]
push dword ptr [Lt_043B]
call HFLUSHMEM
add esp, 32
jmp .L_01C4
.L_01D2:
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+124]
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+120]
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
push dword ptr [Lt_043B]
call HFLUSHDBG
add esp, 16
jmp .L_01C4
.L_01D3:
sub esp, 8
mov ebx, dword ptr [Lt_043A]
push dword ptr [ebx+116]
push dword ptr [Lt_043B]
call HFLUSHLIT
add esp, 16
jmp .L_01C4
.L_01C5:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 29
ja .L_01C4
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_01D4+ebx*4-4]
.L_01D4:
.int .L_01CB
.int .L_01CA
.int .L_01C8
.int .L_01C7
.int .L_01CC
.int .L_01D0
.int .L_01CF
.int .L_01C4
.int .L_01CE
.int .L_01C4
.int .L_01CD
.int .L_01D1
.int .L_01C4
.int .L_01C9
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01C4
.int .L_01D3
.int .L_01C4
.int .L_01C4
.int .L_01D2
.L_01C4:
cmp dword ptr [ENV+116], 1
jl .L_01D6
mov ebx, dword ptr [Lt_043B]
sal ebx, 4
cmp dword ptr [AST_OPTB+ebx], 9
je .L_01D8
cmp dword ptr [Lt_043E], 0
je .L_01DA
mov ebx, dword ptr [Lt_043E]
cmp dword ptr [ebx+16], 0
jne .L_01DC
mov ebx, dword ptr [Lt_043E]
mov dword ptr [ebx+16], 1
.L_01DC:
.L_01DA:
.L_01D9:
.L_01D8:
.L_01D7:
.L_01D6:
.L_01D5:
sub esp, 12
push dword ptr [Lt_043A]
call FLISTGETNEXT
add esp, 16
mov dword ptr [Lt_043A], eax
.L_01C3:
cmp dword ptr [Lt_043A], 0
jne .L_01C1
.L_01C2:
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
sub esp, 12
lea eax, [CTX]
push eax
call FLISTRESET
add esp, 16
sub esp, 12
lea eax, [CTX+64]
push eax
call FLISTRESET
add esp, 16
call HFREEPRESERVEDREGS
.L_01BE:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _FLUSH, .-_FLUSH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_043B,4
.balign 4
	.lcomm	Lt_043A,4
.balign 4
	.lcomm	Lt_043C,4
.balign 4
	.lcomm	Lt_043D,4
.balign 4
	.lcomm	Lt_043E,4

.section .text
.balign 16
HFLUSHBRANCH:
.type HFLUSHBRANCH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01E0
.L_01E2:
sub esp, 12
push dword ptr [ebp+12]
call EMITLABEL
add esp, 16
jmp .L_01DF
.L_01E3:
sub esp, 12
push dword ptr [ebp+12]
call EMITJUMP
add esp, 16
jmp .L_01DF
.L_01E4:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EMITCALL
add esp, 16
jmp .L_01DF
.L_01E5:
sub esp, 12
push 0
call EMITRET
add esp, 16
jmp .L_01DF
.L_01E6:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call EMITBRANCH
add esp, 16
jmp .L_01DF
.L_01E0:
mov eax, dword ptr [ebp-4]
add eax, 4294967198
cmp eax, 3
ja .L_01E6
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_01E7+eax*4-392]
.L_01E7:
.int .L_01E3
.int .L_01E4
.int .L_01E2
.int .L_01E5
.L_01DF:
.L_01DE:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHBRANCH, .-HFLUSHBRANCH
.cfi_endproc
.balign 16
HFREEPRESERVEDREGS:
.type HFREEPRESERVEDREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_01E8:
mov dword ptr [Lt_043F], 0
.L_01ED:
sub esp, 12
mov eax, dword ptr [Lt_043F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_043F]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 16
mov dword ptr [Lt_0440], eax
.L_01EE:
cmp dword ptr [Lt_0440], -1
je .L_01EF
sub esp, 8
push dword ptr [Lt_0440]
mov eax, dword ptr [Lt_043F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_043F]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 16
test eax, eax
jne .L_01F1
sub esp, 8
push dword ptr [Lt_0440]
mov eax, dword ptr [Lt_043F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_043F]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 16
.L_01F1:
.L_01F0:
sub esp, 8
push dword ptr [Lt_0440]
mov ebx, dword ptr [Lt_043F]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_043F]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+32]
add esp, 16
mov dword ptr [Lt_0440], eax
jmp .L_01EE
.L_01EF:
.L_01EB:
inc dword ptr [Lt_043F]
.L_01EA:
cmp dword ptr [Lt_043F], 1
jle .L_01ED
.L_01EC:
.L_01E9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFREEPRESERVEDREGS, .-HFREEPRESERVEDREGS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_043F,4
.balign 4
	.lcomm	Lt_0440,4

.section .text
.balign 16
HPRESERVEREG:
.type HPRESERVEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 244
push ebx
mov dword ptr [ebp-4], 0
.L_01F2:
cmp dword ptr [ebp+8], 0
je .L_01F5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_01F6
mov dword ptr [ebp-240], 24
jmp .L_0441
.L_01F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-240], ebx
.L_0441:
mov ebx, dword ptr [ebp-240]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 24
jne .L_01F9
mov dword ptr [ebp-12], 9
.L_01F9:
.L_01F8:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-8], eax
jmp .L_01F4
.L_01F5:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-12], -2147483648
mov dword ptr [ebp-8], -1
.L_01F4:
lea eax, [ebp-100]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop esi
pop edi
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [EMIT+168]
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-12]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_01FB
lea ebx, [ebp-168]
mov eax, dword ptr [ebp+8]
push edi
push esi
mov edi, ebx
mov esi, dword ptr [eax+52]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-168]
mov dword ptr [ebp-48], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
push dword ptr [ebx+12]
push dword ptr [ebp-8]
call dword ptr [EMIT+168]
add esp, 16
mov dword ptr [ebp-24], eax
jmp .L_01FA
.L_01FB:
mov dword ptr [ebp-24], -1
.L_01FA:
mov eax, dword ptr [ebp-24]
and eax, dword ptr [ebp-20]
je .L_01FD
mov dword ptr [ebp-4], -1
jmp .L_01F3
.L_01FD:
.L_01FC:
cmp dword ptr [ebp-20], 0
jne .L_01FF
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [EMIT+172]
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], -1
jne .L_0201
mov dword ptr [ebp-4], 0
jmp .L_01F3
.L_0201:
.L_0200:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
.L_01FF:
.L_01FE:
cmp dword ptr [ebp-24], 0
jne .L_0203
sub esp, 8
push 8
push 0
call dword ptr [EMIT+172]
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], -1
jne .L_0205
cmp dword ptr [ebp-20], 0
jne .L_0207
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-88]
mov dword ptr [ebx+12], eax
.L_0207:
.L_0206:
mov dword ptr [ebp-4], 0
jmp .L_01F3
.L_0205:
.L_0204:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [ebp-32]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov dword ptr [ecx+12], eax
.L_0203:
.L_0202:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
not eax
test eax, eax
je .L_0209
sub esp, 8
lea eax, [ebp-100]
push eax
push dword ptr [ebp+8]
call EMITMOV
add esp, 16
jmp .L_0208
.L_0209:
cmp dword ptr [ebp-20], 0
jne .L_020A
mov eax, dword ptr [ebp-12]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_020C
lea ecx, [ebp-236]
push ecx
push edi
push esi
mov edi, ecx
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop esi
pop edi
pop ecx
mov dword ptr [ebp-232], 8
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-96], 8
mov dword ptr [ebp-48], 0
sub esp, 8
lea ecx, [ebp-100]
push ecx
lea ecx, [ebp-236]
push ecx
call EMITMOV
add esp, 16
jmp .L_020B
.L_020C:
sub esp, 8
lea ecx, [ebp-100]
push ecx
push dword ptr [ebp+8]
call EMITMOV
add esp, 16
.L_020B:
jmp .L_0208
.L_020A:
sub esp, 8
lea ecx, [ebp-168]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
call EMITMOV
add esp, 16
.L_0208:
cmp dword ptr [ebp-20], 0
jne .L_020E
sub esp, 8
push dword ptr [ebp-88]
mov ecx, dword ptr [ebp-8]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [REGTB+ecx*4]
call dword ptr [eax+12]
add esp, 16
.L_020E:
.L_020D:
cmp dword ptr [ebp-24], 0
jne .L_0210
sub esp, 8
push dword ptr [ebp-156]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax+12]
add esp, 16
.L_0210:
.L_020F:
mov dword ptr [ebp-4], -1
.L_01F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRESERVEREG, .-HPRESERVEREG
.cfi_endproc
.balign 16
HPRESERVEREGS:
.type HPRESERVEREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0211:
mov dword ptr [ebp-20], 0
.L_0216:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp-20], 0
jne .L_0218
cmp dword ptr [ebp+8], 0
je .L_021A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .L_021D
.L_021E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .L_021B
.L_021D:
cmp dword ptr [ebp-24], 2
je .L_0220
.L_0221:
cmp dword ptr [ebp-24], 3
jne .L_021F
.L_0220:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
je .L_0223
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
.L_0223:
.L_0222:
.L_021F:
.L_021B:
mov dword ptr [ebp+8], 0
.L_021A:
.L_0219:
.L_0218:
.L_0217:
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 16
mov dword ptr [ebp-8], eax
.L_0224:
cmp dword ptr [ebp-8], -1
je .L_0225
sub esp, 8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, dword ptr [ebp-8]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0227
sub esp, 4
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+36]
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .L_0229
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_0229:
.L_0228:
sub esp, 12
push dword ptr [ebp-12]
call HPRESERVEREG
add esp, 16
test eax, eax
jne .L_022B
sub esp, 8
push 0
push dword ptr [ebp-12]
call dword ptr [IR+264]
add esp, 16
.L_022B:
.L_022A:
.L_0227:
.L_0226:
sub esp, 8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0224
.L_0225:
.L_0214:
inc dword ptr [ebp-20]
.L_0213:
cmp dword ptr [ebp-20], 1
jle .L_0216
.L_0215:
.L_0212:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPRESERVEREGS, .-HPRESERVEREGS
.cfi_endproc
.balign 16
HLOADPOINTER:
.type HLOADPOINTER, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_022C:
cmp dword ptr [ebp+8], 0
je .L_022F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0230
mov dword ptr [ebp-16], 24
jmp .L_0448
.L_0230:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0448:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_0233
mov dword ptr [ebp-8], 9
.L_0233:
.L_0232:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .L_022E
.L_022F:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.L_022E:
sub esp, 12
push dword ptr [ebp+8]
call HLOADIDX
add esp, 16
cmp dword ptr [ebp-4], 4
jne .L_0235
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0236
mov dword ptr [ebp-16], 24
jmp .L_0449
.L_0236:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_0449:
mov eax, dword ptr [ebp-16]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_0235:
.L_0234:
.L_022D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADPOINTER, .-HLOADPOINTER
.cfi_endproc
.balign 16
HLOADRESULT:
.type HLOADRESULT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0238:
cmp dword ptr [ebp+12], 0
je .L_023B
cmp dword ptr [ebp+12], 0
je .L_023D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_023E
mov dword ptr [ebp-28], 24
jmp .L_044A
.L_023E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_044A:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_0241
mov dword ptr [ebp-8], 9
.L_0241:
.L_0240:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .L_023C
.L_023D:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.L_023C:
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [EMIT+180]
add esp, 16
mov eax, dword ptr [ebp-8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0243
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax], 4
.L_0243:
.L_0242:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
jmp .L_023A
.L_023B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 480
je .L_0244
mov dword ptr [ebp-28], 24
jmp .L_044B
.L_0244:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
and eax, 31
mov dword ptr [ebp-28], eax
.L_044B:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0247
call EMITPOPST0
.L_0247:
.L_0246:
.L_023A:
.L_0239:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADRESULT, .-HLOADRESULT
.cfi_endproc
.balign 16
HFLUSHCALL:
.type HFLUSHCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0248:
cmp dword ptr [ebp+8], 102
jne .L_024B
.L_024C:
sub esp, 12
push 0
call HPRESERVEREGS
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITCALL
add esp, 16
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HLOADRESULT
add esp, 16
jmp .L_024A
.L_024B:
cmp dword ptr [ebp+8], 103
jne .L_024D
.L_024E:
sub esp, 12
push dword ptr [ebp+20]
call HPRESERVEREGS
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
call HLOADPOINTER
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+20]
call EMITCALLPTR
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 16
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HLOADRESULT
add esp, 16
jmp .L_024A
.L_024D:
cmp dword ptr [ebp+8], 104
jne .L_024F
.L_0250:
sub esp, 12
push dword ptr [ebp+20]
call HLOADPOINTER
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
call EMITJUMPPTR
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 16
.L_024F:
.L_0251:
.L_024A:
.L_0249:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHCALL, .-HFLUSHCALL
.cfi_endproc
.balign 16
HFLUSHSTACK:
.type HFLUSHSTACK, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0252:
cmp dword ptr [ebp+8], 91
jne .L_0255
sub esp, 12
push dword ptr [ebp+20]
call EMITSTACKALIGN
add esp, 16
jmp .L_0253
.L_0255:
.L_0254:
cmp dword ptr [ebp+12], 0
je .L_0257
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0452], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0258
mov dword ptr [ebp-4], 24
jmp .L_0450
.L_0258:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0450:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0453], ebx
cmp dword ptr [Lt_0453], 24
jne .L_025B
mov dword ptr [Lt_0453], 9
.L_025B:
.L_025A:
mov ebx, dword ptr [Lt_0453]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0454], eax
jmp .L_0256
.L_0257:
mov dword ptr [Lt_0452], -1
mov dword ptr [Lt_0453], -2147483648
mov dword ptr [Lt_0454], -1
.L_0256:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
cmp dword ptr [Lt_0452], 4
jne .L_025D
mov eax, dword ptr [Lt_0453]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0453]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_025F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0457], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0457]
mov eax, dword ptr [Lt_0454]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0454]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0453], 8
.L_025F:
.L_025E:
mov ebx, dword ptr [Lt_0453]
and ebx, 480
je .L_0260
mov dword ptr [ebp-4], 24
jmp .L_0451
.L_0260:
mov ebx, dword ptr [Lt_0453]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0451:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_0454]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0454]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_025D:
.L_025C:
cmp dword ptr [ebp+8], 88
jne .L_0263
.L_0264:
cmp dword ptr [ebp+16], 0
je .L_0266
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITLOAD
add esp, 16
jmp .L_0265
.L_0266:
sub esp, 12
push dword ptr [ebp+12]
call EMITPUSH
add esp, 16
.L_0265:
jmp .L_0262
.L_0263:
cmp dword ptr [ebp+8], 90
jne .L_0267
.L_0268:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call EMITPUSHUDT
add esp, 16
jmp .L_0262
.L_0267:
cmp dword ptr [ebp+8], 89
jne .L_0269
.L_026A:
sub esp, 12
push dword ptr [ebp+12]
call EMITPOP
add esp, 16
.L_0269:
.L_0262:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
.L_0253:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHSTACK, .-HFLUSHSTACK
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0452,4
.balign 4
	.lcomm	Lt_0453,4
.balign 4
	.lcomm	Lt_0454,4
.balign 4
	.lcomm	Lt_0457,4

.section .text
.balign 16
HFLUSHUOP:
.type HFLUSHUOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_026B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [Lt_045C], ebx
cmp dword ptr [ebp+12], 0
je .L_026E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_045D], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_026F
mov dword ptr [ebp-4], 24
jmp .L_0458
.L_026F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0458:
mov eax, dword ptr [ebp-4]
mov dword ptr [Lt_045E], eax
cmp dword ptr [Lt_045E], 24
jne .L_0272
mov dword ptr [Lt_045E], 9
.L_0272:
.L_0271:
mov eax, dword ptr [Lt_045E]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [Lt_045F], ebx
jmp .L_026D
.L_026E:
mov dword ptr [Lt_045D], -1
mov dword ptr [Lt_045E], -2147483648
mov dword ptr [Lt_045F], -1
.L_026D:
cmp dword ptr [ebp+16], 0
je .L_0274
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_0460], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0275
mov dword ptr [ebp-4], 24
jmp .L_0459
.L_0275:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0459:
mov eax, dword ptr [ebp-4]
mov dword ptr [Lt_0461], eax
cmp dword ptr [Lt_0461], 24
jne .L_0278
mov dword ptr [Lt_0461], 9
.L_0278:
.L_0277:
mov eax, dword ptr [Lt_0461]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [Lt_0462], ebx
jmp .L_0273
.L_0274:
mov dword ptr [Lt_0460], -1
mov dword ptr [Lt_0461], -2147483648
mov dword ptr [Lt_0462], -1
.L_0273:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
cmp dword ptr [ebp+16], 0
je .L_027A
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp+12], ebx
je .L_027C
mov ebx, dword ptr [Lt_0461]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0461]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_027E
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0465], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0465]
mov ebx, dword ptr [Lt_0462]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0462]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_0461], 8
.L_027E:
.L_027D:
mov eax, dword ptr [Lt_0461]
and eax, 480
je .L_027F
mov dword ptr [ebp-4], 24
jmp .L_045A
.L_027F:
mov eax, dword ptr [Lt_0461]
and eax, 31
mov dword ptr [ebp-4], eax
.L_045A:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [Lt_0462]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0462]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_027C:
.L_027B:
.L_027A:
.L_0279:
cmp dword ptr [ebp+16], 0
je .L_0282
mov ebx, dword ptr [Lt_045E]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_045E]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0284
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0465], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0465]
mov ebx, dword ptr [Lt_045F]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_045F]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_045E], 8
.L_0284:
.L_0283:
cmp dword ptr [ebp+8], 75
jne .L_0286
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.L_0286:
.L_0285:
mov eax, dword ptr [Lt_045E]
and eax, 480
je .L_0287
mov dword ptr [ebp-4], 24
jmp .L_045B
.L_0287:
mov eax, dword ptr [Lt_045E]
and eax, 31
mov dword ptr [ebp-4], eax
.L_045B:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_045F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_045F]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
cmp dword ptr [ebp+8], 75
jne .L_028A
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_045C]
mov dword ptr [ebx+20], eax
.L_028A:
.L_0289:
.L_0282:
.L_0281:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_028C
.L_028E:
sub esp, 12
push dword ptr [ebp+12]
call EMITNEG
add esp, 16
jmp .L_028B
.L_028F:
sub esp, 12
push dword ptr [ebp+12]
call EMITNOT
add esp, 16
jmp .L_028B
.L_0290:
sub esp, 12
push dword ptr [ebp+12]
call EMITHADD
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
jmp .L_028B
.L_0291:
sub esp, 12
push dword ptr [ebp+12]
call EMITABS
add esp, 16
jmp .L_028B
.L_0292:
sub esp, 12
push dword ptr [ebp+12]
call EMITSGN
add esp, 16
jmp .L_028B
.L_0293:
sub esp, 12
push dword ptr [ebp+12]
call EMITFIX
add esp, 16
jmp .L_028B
.L_0294:
sub esp, 12
push dword ptr [ebp+12]
call EMITFRAC
add esp, 16
jmp .L_028B
.L_0295:
sub esp, 12
push dword ptr [ebp+12]
call EMITCONVFD2FS
add esp, 16
jmp .L_028B
.L_0296:
sub esp, 12
push dword ptr [ebp+12]
call EMITSIN
add esp, 16
jmp .L_028B
.L_0297:
sub esp, 12
push dword ptr [ebp+12]
call EMITASIN
add esp, 16
jmp .L_028B
.L_0298:
sub esp, 12
push dword ptr [ebp+12]
call EMITCOS
add esp, 16
jmp .L_028B
.L_0299:
sub esp, 12
push dword ptr [ebp+12]
call EMITACOS
add esp, 16
jmp .L_028B
.L_029A:
sub esp, 12
push dword ptr [ebp+12]
call EMITTAN
add esp, 16
jmp .L_028B
.L_029B:
sub esp, 12
push dword ptr [ebp+12]
call EMITATAN
add esp, 16
jmp .L_028B
.L_029C:
sub esp, 12
push dword ptr [ebp+12]
call EMITSQRT
add esp, 16
jmp .L_028B
.L_029D:
sub esp, 12
push dword ptr [ebp+12]
call EMITRSQRT
add esp, 16
jmp .L_028B
.L_029E:
sub esp, 12
push dword ptr [ebp+12]
call EMITRCP
add esp, 16
jmp .L_028B
.L_029F:
sub esp, 12
push dword ptr [ebp+12]
call EMITLOG
add esp, 16
jmp .L_028B
.L_02A0:
sub esp, 12
push dword ptr [ebp+12]
call EMITEXP
add esp, 16
jmp .L_028B
.L_02A1:
sub esp, 12
push dword ptr [ebp+12]
call EMITFLOOR
add esp, 16
jmp .L_028B
.L_02A2:
sub esp, 12
push dword ptr [ebp+12]
call EMITSWZREP
add esp, 16
jmp .L_028B
.L_028C:
mov eax, dword ptr [ebp-4]
add eax, 4294967244
cmp eax, 23
ja .L_028B
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_02A3+eax*4-208]
.L_02A3:
.int .L_028F
.int .L_028B
.int .L_028E
.int .L_0290
.int .L_0291
.int .L_0292
.int .L_0296
.int .L_0297
.int .L_0298
.int .L_0299
.int .L_029A
.int .L_029B
.int .L_028B
.int .L_029C
.int .L_029D
.int .L_029E
.int .L_029F
.int .L_02A0
.int .L_02A1
.int .L_0293
.int .L_0294
.int .L_028B
.int .L_0295
.int .L_02A2
.L_028B:
cmp dword ptr [ebp+16], 0
je .L_02A5
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp+12], eax
je .L_02A7
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITMOV
add esp, 16
.L_02A7:
.L_02A6:
.L_02A5:
.L_02A4:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
.L_026C:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHUOP, .-HFLUSHUOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_045D,4
.balign 4
	.lcomm	Lt_045E,4
.balign 4
	.lcomm	Lt_045F,4
.balign 4
	.lcomm	Lt_0460,4
.balign 4
	.lcomm	Lt_0461,4
.balign 4
	.lcomm	Lt_0462,4
.balign 4
	.lcomm	Lt_0465,4
.balign 4
	.lcomm	Lt_045C,4

.section .text
.balign 16
HFLUSHBOP:
.type HFLUSHBOP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_02A8:
cmp dword ptr [ebp+12], 0
je .L_02AB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_046F], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02AC
mov dword ptr [ebp-4], 24
jmp .L_0468
.L_02AC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0468:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0470], ebx
cmp dword ptr [Lt_0470], 24
jne .L_02AF
mov dword ptr [Lt_0470], 9
.L_02AF:
.L_02AE:
mov ebx, dword ptr [Lt_0470]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0471], eax
jmp .L_02AA
.L_02AB:
mov dword ptr [Lt_046F], -1
mov dword ptr [Lt_0470], -2147483648
mov dword ptr [Lt_0471], -1
.L_02AA:
cmp dword ptr [ebp+16], 0
je .L_02B1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0472], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02B2
mov dword ptr [ebp-4], 24
jmp .L_0469
.L_02B2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0469:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0473], ebx
cmp dword ptr [Lt_0473], 24
jne .L_02B5
mov dword ptr [Lt_0473], 9
.L_02B5:
.L_02B4:
mov ebx, dword ptr [Lt_0473]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0474], eax
jmp .L_02B0
.L_02B1:
mov dword ptr [Lt_0472], -1
mov dword ptr [Lt_0473], -2147483648
mov dword ptr [Lt_0474], -1
.L_02B0:
cmp dword ptr [ebp+20], 0
je .L_02B7
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0475], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02B8
mov dword ptr [ebp-4], 24
jmp .L_046A
.L_02B8:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046A:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0476], ebx
cmp dword ptr [Lt_0476], 24
jne .L_02BB
mov dword ptr [Lt_0476], 9
.L_02BB:
.L_02BA:
mov ebx, dword ptr [Lt_0476]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0477], eax
jmp .L_02B6
.L_02B7:
mov dword ptr [Lt_0475], -1
mov dword ptr [Lt_0476], -2147483648
mov dword ptr [Lt_0477], -1
.L_02B6:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
call HLOADIDX
add esp, 16
cmp dword ptr [ebp+20], 0
jne .L_02BD
cmp dword ptr [Lt_0472], 0
je .L_02BF
mov eax, dword ptr [Lt_0473]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0473]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02C1
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_047A], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_047A]
mov eax, dword ptr [Lt_0474]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0474]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0473], 8
.L_02C1:
.L_02C0:
mov ebx, dword ptr [Lt_0473]
and ebx, 480
je .L_02C2
mov dword ptr [ebp-4], 24
jmp .L_046B
.L_02C2:
mov ebx, dword ptr [Lt_0473]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046B:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0474]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0474]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02BF:
.L_02BE:
jmp .L_02BC
.L_02BD:
cmp dword ptr [Lt_0472], 4
jne .L_02C5
mov eax, dword ptr [Lt_0473]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0473]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02C7
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_047A], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_047A]
mov eax, dword ptr [Lt_0474]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0474]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0473], 8
.L_02C7:
.L_02C6:
mov ebx, dword ptr [Lt_0473]
and ebx, 480
je .L_02C8
mov dword ptr [ebp-8], 24
jmp .L_046C
.L_02C8:
mov ebx, dword ptr [Lt_0473]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_046C:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0474]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0474]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02C5:
.L_02C4:
mov eax, dword ptr [Lt_0470]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0470]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02CB
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_047A], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_047A]
mov eax, dword ptr [Lt_0471]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0471]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0470], 8
.L_02CB:
.L_02CA:
mov ebx, dword ptr [Lt_0470]
and ebx, 480
je .L_02CC
mov dword ptr [ebp-4], 24
jmp .L_046D
.L_02CC:
mov ebx, dword ptr [Lt_0470]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046D:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_0471]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0471]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02BC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_02CF
.L_02D1:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITADD
add esp, 16
jmp .L_02CE
.L_02D2:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSUB
add esp, 16
jmp .L_02CE
.L_02D3:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMUL
add esp, 16
jmp .L_02CE
.L_02D4:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDIV
add esp, 16
jmp .L_02CE
.L_02D5:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITINTDIV
add esp, 16
jmp .L_02CE
.L_02D6:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMOD
add esp, 16
jmp .L_02CE
.L_02D7:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSHL
add esp, 16
jmp .L_02CE
.L_02D8:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSHR
add esp, 16
jmp .L_02CE
.L_02D9:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITAND
add esp, 16
jmp .L_02CE
.L_02DA:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITOR
add esp, 16
jmp .L_02CE
.L_02DB:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITXOR
add esp, 16
jmp .L_02CE
.L_02DC:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITEQV
add esp, 16
jmp .L_02CE
.L_02DD:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITIMP
add esp, 16
jmp .L_02CE
.L_02DE:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITATN2
add esp, 16
jmp .L_02CE
.L_02DF:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITPOW
add esp, 16
jmp .L_02CE
.L_02CF:
mov eax, dword ptr [ebp-4]
add eax, 4294967268
cmp eax, 36
ja .L_02CE
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_02E0+eax*4-112]
.L_02E0:
.int .L_02D1
.int .L_02D2
.int .L_02D3
.int .L_02D4
.int .L_02D5
.int .L_02D6
.int .L_02D9
.int .L_02DA
.int .L_02CE
.int .L_02CE
.int .L_02DB
.int .L_02DC
.int .L_02DD
.int .L_02D7
.int .L_02D8
.int .L_02DF
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02CE
.int .L_02DE
.L_02CE:
cmp dword ptr [ebp+20], 0
je .L_02E2
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
je .L_02E4
mov eax, dword ptr [Lt_0476]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0476]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02E6
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_047A], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+20]
push dword ptr [Lt_047A]
mov eax, dword ptr [Lt_0477]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0477]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0476], 8
.L_02E6:
.L_02E5:
mov ebx, dword ptr [Lt_0476]
and ebx, 480
je .L_02E7
mov dword ptr [ebp-4], 24
jmp .L_046E
.L_02E7:
mov ebx, dword ptr [Lt_0476]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046E:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+20]
mov ebx, dword ptr [Lt_0477]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0477]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+20]
call EMITMOV
add esp, 16
.L_02E4:
.L_02E3:
.L_02E2:
.L_02E1:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 16
.L_02A9:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHBOP, .-HFLUSHBOP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_046F,4
.balign 4
	.lcomm	Lt_0470,4
.balign 4
	.lcomm	Lt_0471,4
.balign 4
	.lcomm	Lt_0472,4
.balign 4
	.lcomm	Lt_0473,4
.balign 4
	.lcomm	Lt_0474,4
.balign 4
	.lcomm	Lt_0475,4
.balign 4
	.lcomm	Lt_0476,4
.balign 4
	.lcomm	Lt_0477,4
.balign 4
	.lcomm	Lt_047A,4

.section .text
.balign 16
HFLUSHCOMP:
.type HFLUSHCOMP, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_02E9:
cmp dword ptr [ebp+12], 0
je .L_02EC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0487], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02ED
mov dword ptr [ebp-4], 24
jmp .L_0481
.L_02ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0481:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0488], ebx
cmp dword ptr [Lt_0488], 24
jne .L_02F0
mov dword ptr [Lt_0488], 9
.L_02F0:
.L_02EF:
mov ebx, dword ptr [Lt_0488]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0489], eax
jmp .L_02EB
.L_02EC:
mov dword ptr [Lt_0487], -1
mov dword ptr [Lt_0488], -2147483648
mov dword ptr [Lt_0489], -1
.L_02EB:
cmp dword ptr [ebp+16], 0
je .L_02F2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_048A], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02F3
mov dword ptr [ebp-4], 24
jmp .L_0482
.L_02F3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0482:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_048B], ebx
cmp dword ptr [Lt_048B], 24
jne .L_02F6
mov dword ptr [Lt_048B], 9
.L_02F6:
.L_02F5:
mov ebx, dword ptr [Lt_048B]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_048C], eax
jmp .L_02F1
.L_02F2:
mov dword ptr [Lt_048A], -1
mov dword ptr [Lt_048B], -2147483648
mov dword ptr [Lt_048C], -1
.L_02F1:
cmp dword ptr [ebp+20], 0
je .L_02F8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_048D], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02F9
mov dword ptr [ebp-4], 24
jmp .L_0483
.L_02F9:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0483:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_048E], ebx
cmp dword ptr [Lt_048E], 24
jne .L_02FC
mov dword ptr [Lt_048E], 9
.L_02FC:
.L_02FB:
mov ebx, dword ptr [Lt_048E]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_048F], eax
jmp .L_02F7
.L_02F8:
mov dword ptr [Lt_048D], -1
mov dword ptr [Lt_048E], -2147483648
mov dword ptr [Lt_048F], -1
.L_02F7:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
call HLOADIDX
add esp, 16
mov dword ptr [Lt_0490], 0
cmp dword ptr [ebp+20], 0
jne .L_02FE
cmp dword ptr [Lt_048C], 0
jne .L_0300
cmp dword ptr [Lt_048A], 0
je .L_0302
cmp dword ptr [Lt_0489], 1
je .L_0304
mov dword ptr [Lt_0490], -1
.L_0304:
.L_0303:
.L_0302:
.L_0301:
.L_0300:
.L_02FF:
.L_02FE:
.L_02FD:
mov eax, dword ptr [Lt_048A]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [Lt_0490]
je .L_0306
mov eax, dword ptr [Lt_048B]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_048B]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0308
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0494], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0494]
mov eax, dword ptr [Lt_048C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_048C]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_048B], 8
.L_0308:
.L_0307:
mov ebx, dword ptr [Lt_048B]
and ebx, 480
je .L_0309
mov dword ptr [ebp-4], 24
jmp .L_0484
.L_0309:
mov ebx, dword ptr [Lt_048B]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0484:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_048C]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_048C]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_048A], 4
.L_0306:
.L_0305:
mov dword ptr [Lt_0490], 0
cmp dword ptr [ebp+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
cmp ebx, dword ptr [ebp+12]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_030C
mov dword ptr [Lt_0490], -1
jmp .L_030B
.L_030C:
cmp dword ptr [Lt_0489], 1
jne .L_030D
mov dword ptr [Lt_0490], -1
jmp .L_030B
.L_030D:
cmp dword ptr [Lt_0487], 0
jne .L_030E
mov dword ptr [Lt_0490], -1
jmp .L_030B
.L_030E:
mov ecx, dword ptr [Lt_0487]
cmp ecx, 5
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_048A]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_030F
mov dword ptr [Lt_0490], -1
jmp .L_030B
.L_030F:
cmp dword ptr [Lt_048A], 4
je .L_0310
cmp dword ptr [Lt_048A], 0
je .L_0312
mov dword ptr [Lt_0490], -1
.L_0312:
.L_0311:
jmp .L_030B
.L_0310:
cmp dword ptr [Lt_0487], 5
jne .L_0313
mov dword ptr [Lt_0490], -1
.L_0313:
.L_030B:
mov eax, dword ptr [Lt_0487]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [Lt_0490]
je .L_0315
mov eax, dword ptr [Lt_0488]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [Lt_0488]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0317
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+52]
mov dword ptr [Lt_0494], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0494]
mov eax, dword ptr [Lt_0489]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0489]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [Lt_0488], 8
.L_0317:
.L_0316:
mov ecx, dword ptr [Lt_0488]
and ecx, 480
je .L_0318
mov dword ptr [ebp-4], 24
jmp .L_0485
.L_0318:
mov ecx, dword ptr [Lt_0488]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0485:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
push dword ptr [SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [Lt_0489]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_0489]
mov eax, dword ptr [REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
.L_0315:
.L_0314:
cmp dword ptr [ebp+20], 0
je .L_031B
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
je .L_031D
mov eax, dword ptr [Lt_048E]
and eax, 480
je .L_031E
mov dword ptr [ebp-4], 24
jmp .L_0486
.L_031E:
mov eax, dword ptr [Lt_048E]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0486:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [Lt_048F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_048F]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 4
.L_031D:
.L_031C:
.L_031B:
.L_031A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0321
.L_0323:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITEQ
add esp, 16
jmp .L_0320
.L_0324:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITNE
add esp, 16
jmp .L_0320
.L_0325:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITGT
add esp, 16
jmp .L_0320
.L_0326:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITLT
add esp, 16
jmp .L_0320
.L_0327:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITLE
add esp, 16
jmp .L_0320
.L_0328:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITGE
add esp, 16
jmp .L_0320
.L_0321:
mov eax, dword ptr [ebp-4]
add eax, 4294967251
cmp eax, 5
ja .L_0320
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0329+eax*4-180]
.L_0329:
.int .L_0323
.int .L_0325
.int .L_0326
.int .L_0324
.int .L_0328
.int .L_0327
.L_0320:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
cmp dword ptr [ebp+20], 0
je .L_032B
sub esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 16
.L_032B:
.L_032A:
.L_02EA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHCOMP, .-HFLUSHCOMP
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_049C,12
.balign 4
	.lcomm	Lt_0487,4
.balign 4
	.lcomm	Lt_0488,4
.balign 4
	.lcomm	Lt_0489,4
.balign 4
	.lcomm	Lt_048A,4
.balign 4
	.lcomm	Lt_048B,4
.balign 4
	.lcomm	Lt_048C,4
.balign 4
	.lcomm	Lt_048D,4
.balign 4
	.lcomm	Lt_048E,4
.balign 4
	.lcomm	Lt_048F,4
.balign 4
	.lcomm	Lt_0494,4
.balign 4
	.lcomm	Lt_0490,4

.section .text
.balign 16
HSPILLREGS:
.type HSPILLREGS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_032C:
mov dword ptr [ebp-16], 0
.L_0331:
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 16
mov dword ptr [ebp-12], eax
.L_0332:
cmp dword ptr [ebp-12], -1
je .L_0333
sub esp, 8
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 16
test eax, eax
jne .L_0335
sub esp, 4
lea eax, [ebp-8]
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+36]
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call dword ptr [IR+264]
add esp, 16
.L_0335:
.L_0334:
sub esp, 8
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 16
mov dword ptr [ebp-12], eax
jmp .L_0332
.L_0333:
.L_032F:
inc dword ptr [ebp-16]
.L_032E:
cmp dword ptr [ebp-16], 1
jle .L_0331
.L_0330:
.L_032D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HSPILLREGS, .-HSPILLREGS
.cfi_endproc
.balign 16
HFLUSHSTORE:
.type HFLUSHSTORE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0336:
cmp dword ptr [ebp+8], 87
jne .L_0339
call HSPILLREGS
jmp .L_0337
.L_0339:
.L_0338:
cmp dword ptr [ebp+12], 0
je .L_033B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04A0], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_033C
mov dword ptr [ebp-4], 24
jmp .L_049D
.L_033C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_049D:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04A1], ebx
cmp dword ptr [Lt_04A1], 24
jne .L_033F
mov dword ptr [Lt_04A1], 9
.L_033F:
.L_033E:
mov ebx, dword ptr [Lt_04A1]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04A2], eax
jmp .L_033A
.L_033B:
mov dword ptr [Lt_04A0], -1
mov dword ptr [Lt_04A1], -2147483648
mov dword ptr [Lt_04A2], -1
.L_033A:
cmp dword ptr [ebp+16], 0
je .L_0341
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04A3], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0342
mov dword ptr [ebp-4], 24
jmp .L_049E
.L_0342:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_049E:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04A4], ebx
cmp dword ptr [Lt_04A4], 24
jne .L_0345
mov dword ptr [Lt_04A4], 9
.L_0345:
.L_0344:
mov ebx, dword ptr [Lt_04A4]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04A5], eax
jmp .L_0340
.L_0341:
mov dword ptr [Lt_04A3], -1
mov dword ptr [Lt_04A4], -2147483648
mov dword ptr [Lt_04A5], -1
.L_0340:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
mov eax, dword ptr [Lt_04A3]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04A3]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_04A2]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_0347
mov ebx, dword ptr [Lt_04A4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_04A4]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0349
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_04AB], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_04AB]
mov ebx, dword ptr [Lt_04A5]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04A5]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_04A4], 8
.L_0349:
.L_0348:
mov eax, dword ptr [Lt_04A4]
and eax, 480
je .L_034A
mov dword ptr [ebp-4], 24
jmp .L_049F
.L_034A:
mov eax, dword ptr [Lt_04A4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_049F:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [Lt_04A5]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04A5]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_0347:
.L_0346:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSTORE
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
.L_0337:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHSTORE, .-HFLUSHSTORE
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04A0,4
.balign 4
	.lcomm	Lt_04A1,4
.balign 4
	.lcomm	Lt_04A2,4
.balign 4
	.lcomm	Lt_04A3,4
.balign 4
	.lcomm	Lt_04A4,4
.balign 4
	.lcomm	Lt_04A5,4
.balign 4
	.lcomm	Lt_04AB,4

.section .text
.balign 16
HFLUSHLOAD:
.type HFLUSHLOAD, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_034C:
cmp dword ptr [ebp+12], 0
je .L_034F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04AF], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0350
mov dword ptr [ebp-4], 24
jmp .L_04AC
.L_0350:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04AC:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04B0], ebx
cmp dword ptr [Lt_04B0], 24
jne .L_0353
mov dword ptr [Lt_04B0], 9
.L_0353:
.L_0352:
mov ebx, dword ptr [Lt_04B0]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04B1], eax
jmp .L_034E
.L_034F:
mov dword ptr [Lt_04AF], -1
mov dword ptr [Lt_04B0], -2147483648
mov dword ptr [Lt_04B1], -1
.L_034E:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
cmp dword ptr [ebp+8], 85
jne .L_0355
.L_0356:
mov eax, dword ptr [Lt_04B0]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04B0]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0358
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04B4], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04B4]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_04B0], 8
.L_0358:
.L_0357:
mov ebx, dword ptr [Lt_04B0]
and ebx, 480
je .L_0359
mov dword ptr [ebp-4], 24
jmp .L_04AD
.L_0359:
mov ebx, dword ptr [Lt_04B0]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04AD:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_04B1]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04B1]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
jmp .L_0354
.L_0355:
cmp dword ptr [ebp+8], 86
jne .L_035B
.L_035C:
cmp dword ptr [Lt_04AF], 4
jne .L_035E
mov eax, dword ptr [Lt_04B0]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04B0]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0360
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04B4], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04B4]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
push dword ptr [SYMB_DTYPETB+228]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_04B1]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04B1]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_04B7], eax
jmp .L_035F
.L_0360:
mov eax, dword ptr [Lt_04B0]
and eax, 480
je .L_0361
mov dword ptr [ebp-4], 24
jmp .L_04AE
.L_0361:
mov eax, dword ptr [Lt_04B0]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04AE:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_04B7], eax
.L_035F:
jmp .L_035D
.L_035E:
mov dword ptr [Lt_04B7], -1
.L_035D:
push offset Lt_04B8
push offset Lt_04B9
push dword ptr [Lt_04B1]
push dword ptr [Lt_04B0]
call dword ptr [EMIT+180]
add esp, 16
mov eax, dword ptr [Lt_04B7]
cmp dword ptr [Lt_04B9], eax
je .L_0364
mov eax, dword ptr [Lt_04B0]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04B0]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0366
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04B4], eax
push dword ptr [ebp+16]
push dword ptr [Lt_04B4]
push dword ptr [Lt_04B8]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [Lt_04B4]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_04B4]
mov dword ptr [eax], 4
.L_0366:
.L_0365:
push 0
push dword ptr [ebp+16]
push dword ptr [Lt_04B9]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 4
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+96], 1
je .L_0368
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+16], 0
.L_0368:
.L_0367:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITLOAD
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
.L_0364:
.L_0363:
.L_035B:
.L_0354:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
.L_034D:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHLOAD, .-HFLUSHLOAD
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04AF,4
.balign 4
	.lcomm	Lt_04B0,4
.balign 4
	.lcomm	Lt_04B1,4
.balign 4
	.lcomm	Lt_04B7,4
.balign 4
	.lcomm	Lt_04B4,4
.balign 4
	.lcomm	Lt_04B9,4
.balign 4
	.lcomm	Lt_04B8,4

.section .text
.balign 16
HFLUSHCONVERT:
.type HFLUSHCONVERT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0369:
cmp dword ptr [ebp+12], 0
je .L_036C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04C2], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_036D
mov dword ptr [ebp-4], 24
jmp .L_04BC
.L_036D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04BC:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04C3], ebx
cmp dword ptr [Lt_04C3], 24
jne .L_0370
mov dword ptr [Lt_04C3], 9
.L_0370:
.L_036F:
mov ebx, dword ptr [Lt_04C3]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04C4], eax
jmp .L_036B
.L_036C:
mov dword ptr [Lt_04C2], -1
mov dword ptr [Lt_04C3], -2147483648
mov dword ptr [Lt_04C4], -1
.L_036B:
cmp dword ptr [ebp+16], 0
je .L_0372
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04C5], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0373
mov dword ptr [ebp-4], 24
jmp .L_04BD
.L_0373:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04BD:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04C6], ebx
cmp dword ptr [Lt_04C6], 24
jne .L_0376
mov dword ptr [Lt_04C6], 9
.L_0376:
.L_0375:
mov ebx, dword ptr [Lt_04C6]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04C7], eax
jmp .L_0371
.L_0372:
mov dword ptr [Lt_04C5], -1
mov dword ptr [Lt_04C6], -2147483648
mov dword ptr [Lt_04C7], -1
.L_0371:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
mov dword ptr [Lt_04C8], 0
mov eax, dword ptr [Lt_04C7]
cmp eax, dword ptr [Lt_04C4]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04C5]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0378
cmp dword ptr [Lt_04C7], 1
jne .L_037A
mov ebx, dword ptr [IR+272]
and ebx, 1
test ebx, ebx
je .L_037C
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+16], 0
jne .L_037E
jmp .L_036A
.L_037E:
jmp .L_037B
.L_037C:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], -1
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
mov ebx, dword ptr [Lt_04C4]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04C4]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+20]
add esp, 16
jmp .L_036A
.L_037B:
.L_037A:
.L_0379:
sub esp, 12
push dword ptr [ebp+16]
call dword ptr [IR+256]
add esp, 16
cmp eax, 2147483647
jne .L_0380
mov eax, dword ptr [Lt_04C3]
and eax, 480
je .L_0381
mov dword ptr [ebp-4], 24
jmp .L_04BE
.L_0381:
mov eax, dword ptr [Lt_04C3]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04BE:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_0386
.L_0387:
cmp dword ptr [ebp-8], 8
jne .L_0385
.L_0386:
jmp .L_0383
.L_0385:
mov ebx, dword ptr [Lt_04C6]
and ebx, 480
je .L_0389
mov dword ptr [ebp-12], 24
jmp .L_04BF
.L_0389:
mov ebx, dword ptr [Lt_04C6]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_04BF:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1
je .L_038E
.L_038F:
cmp dword ptr [ebp-16], 8
jne .L_038D
.L_038E:
jmp .L_038B
.L_038D:
mov dword ptr [Lt_04C8], -1
.L_0390:
.L_038B:
.L_0388:
.L_0383:
.L_0380:
.L_037F:
.L_0378:
.L_0377:
cmp dword ptr [Lt_04C8], 0
je .L_0392
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 4
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
mov ecx, dword ptr [Lt_04C4]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_04C4]
mov ebx, dword ptr [REGTB+ecx*4]
call dword ptr [ebx+20]
add esp, 16
jmp .L_0391
.L_0392:
cmp dword ptr [Lt_04C5], 4
jne .L_0394
mov ebx, dword ptr [Lt_04C6]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_04C6]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0396
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+52]
mov dword ptr [Lt_04CD], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_04CD]
mov ebx, dword ptr [Lt_04C7]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04C7]
mov ecx, dword ptr [REGTB+ebx*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [Lt_04C6], 8
.L_0396:
.L_0395:
mov ecx, dword ptr [Lt_04C6]
and ecx, 480
je .L_0397
mov dword ptr [ebp-8], 24
jmp .L_04C0
.L_0397:
mov ecx, dword ptr [Lt_04C6]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_04C0:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
push dword ptr [SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+16]
mov ecx, dword ptr [Lt_04C7]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_04C7]
mov ebx, dword ptr [REGTB+ecx*4]
call dword ptr [ebx]
add esp, 16
.L_0394:
.L_0393:
mov ebx, dword ptr [Lt_04C3]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_04C3]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_039A
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+52]
mov dword ptr [Lt_04CD], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04CD]
mov ebx, dword ptr [Lt_04C4]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04C4]
mov ecx, dword ptr [REGTB+ebx*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [Lt_04CD]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [Lt_04CD]
mov dword ptr [eax], 4
mov dword ptr [Lt_04C3], 8
.L_039A:
.L_0399:
mov eax, dword ptr [Lt_04C3]
and eax, 480
je .L_039B
mov dword ptr [ebp-4], 24
jmp .L_04C1
.L_039B:
mov eax, dword ptr [Lt_04C3]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04C1:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_04C4]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04C4]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
.L_0391:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITLOAD
add esp, 16
cmp dword ptr [Lt_04C8], 0
jne .L_039E
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
jmp .L_039D
.L_039E:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+12], -1
.L_039D:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
.L_036A:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHCONVERT, .-HFLUSHCONVERT
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04C2,4
.balign 4
	.lcomm	Lt_04C3,4
.balign 4
	.lcomm	Lt_04C4,4
.balign 4
	.lcomm	Lt_04C5,4
.balign 4
	.lcomm	Lt_04C6,4
.balign 4
	.lcomm	Lt_04C7,4
.balign 4
	.lcomm	Lt_04C8,4
.balign 4
	.lcomm	Lt_04CD,4

.section .text
.balign 16
HFLUSHADDR:
.type HFLUSHADDR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_039F:
cmp dword ptr [ebp+12], 0
je .L_03A2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04D4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03A3
mov dword ptr [ebp-4], 24
jmp .L_04D0
.L_03A3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D0:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04D5], ebx
cmp dword ptr [Lt_04D5], 24
jne .L_03A6
mov dword ptr [Lt_04D5], 9
.L_03A6:
.L_03A5:
mov ebx, dword ptr [Lt_04D5]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04D6], eax
jmp .L_03A1
.L_03A2:
mov dword ptr [Lt_04D4], -1
mov dword ptr [Lt_04D5], -2147483648
mov dword ptr [Lt_04D6], -1
.L_03A1:
cmp dword ptr [ebp+16], 0
je .L_03A8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04D7], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03A9
mov dword ptr [ebp-4], 24
jmp .L_04D1
.L_03A9:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D1:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04D8], ebx
cmp dword ptr [Lt_04D8], 24
jne .L_03AC
mov dword ptr [Lt_04D8], 9
.L_03AC:
.L_03AB:
mov ebx, dword ptr [Lt_04D8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04D9], eax
jmp .L_03A7
.L_03A8:
mov dword ptr [Lt_04D7], -1
mov dword ptr [Lt_04D8], -2147483648
mov dword ptr [Lt_04D9], -1
.L_03A7:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
cmp dword ptr [Lt_04D4], 4
jne .L_03AE
mov eax, dword ptr [Lt_04D5]
and eax, 480
je .L_03AF
mov dword ptr [ebp-4], 24
jmp .L_04D2
.L_03AF:
mov eax, dword ptr [Lt_04D5]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04D2:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_04D6]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04D6]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_03AE:
.L_03AD:
cmp dword ptr [Lt_04D7], 4
jne .L_03B2
mov ebx, dword ptr [Lt_04D8]
and ebx, 480
je .L_03B3
mov dword ptr [ebp-4], 24
jmp .L_04D3
.L_03B3:
mov ebx, dword ptr [Lt_04D8]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D3:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_04D9]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04D9]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_03B2:
.L_03B1:
cmp dword ptr [ebp+8], 22
jne .L_03B6
.L_03B7:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITADDROF
add esp, 16
jmp .L_03B5
.L_03B6:
cmp dword ptr [ebp+8], 76
jne .L_03B8
.L_03B9:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITDEREF
add esp, 16
.L_03B8:
.L_03B5:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
.L_03A0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHADDR, .-HFLUSHADDR
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04D4,4
.balign 4
	.lcomm	Lt_04D5,4
.balign 4
	.lcomm	Lt_04D6,4
.balign 4
	.lcomm	Lt_04D7,4
.balign 4
	.lcomm	Lt_04D8,4
.balign 4
	.lcomm	Lt_04D9,4

.section .text
.balign 16
HFLUSHMEM:
.type HFLUSHMEM, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_03BA:
sub esp, 12
push dword ptr [ebp+12]
call HLOADIDX
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADIDX
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_03BD
.L_03BF:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMMOVE
add esp, 16
jmp .L_03BC
.L_03C0:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMSWAP
add esp, 16
jmp .L_03BC
.L_03C1:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMCLEAR
add esp, 16
jmp .L_03BC
.L_03C2:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITSTKCLEAR
add esp, 16
jmp .L_03BC
.L_03BD:
mov eax, dword ptr [ebp-4]
add eax, 4294967191
cmp eax, 3
ja .L_03BC
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_03C3+eax*4-420]
.L_03C3:
.int .L_03BF
.int .L_03C0
.int .L_03C1
.int .L_03C2
.L_03BC:
sub esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 16
.L_03BB:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHMEM, .-HFLUSHMEM
.cfi_endproc
.balign 16
HFLUSHDBG:
.type HFLUSHDBG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_03C4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_03C7
.L_03C9:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDBGLINEBEGIN
add esp, 16
jmp .L_03C6
.L_03CA:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDBGLINEEND
add esp, 16
jmp .L_03C6
.L_03CB:
sub esp, 12
push dword ptr [ebp+16]
call EMITDBGSCOPEBEGIN
add esp, 16
jmp .L_03C6
.L_03CC:
sub esp, 12
push dword ptr [ebp+16]
call EMITDBGSCOPEEND
add esp, 16
jmp .L_03C6
.L_03C7:
mov eax, dword ptr [ebp-4]
add eax, 4294967183
cmp eax, 3
ja .L_03C6
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_03CD+eax*4-452]
.L_03CD:
.int .L_03C9
.int .L_03CA
.int .L_03CB
.int .L_03CC
.L_03C6:
.L_03C5:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHDBG, .-HFLUSHDBG
.cfi_endproc
.balign 16
HFLUSHLIT:
.type HFLUSHLIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_03CE:
cmp dword ptr [ebp+8], 117
jne .L_03D1
.L_03D2:
sub esp, 12
push dword ptr [ebp+12]
call EMITCOMMENT
add esp, 16
jmp .L_03D0
.L_03D1:
cmp dword ptr [ebp+8], 118
jne .L_03D3
.L_03D4:
sub esp, 12
push dword ptr [ebp+12]
call EMITASM
add esp, 16
.L_03D3:
.L_03D0:
cmp dword ptr [ebp+12], 0
je .L_03D6
sub esp, 12
push dword ptr [ebp+12]
call free
add esp, 16
.L_03D6:
.L_03D5:
.L_03CF:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFLUSHLIT, .-HFLUSHLIT
.cfi_endproc
.balign 16
HFREEIDX:
.type HFREEIDX, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_03D7:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_03DA
jmp .L_03D8
.L_03DA:
.L_03D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_03DC
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], -1
je .L_03DE
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HFREEREG
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], 0
.L_03DE:
.L_03DD:
.L_03DC:
.L_03DB:
.L_03D8:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFREEIDX, .-HFREEIDX
.cfi_endproc
.balign 16
HFREEREG:
.type HFREEREG, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_03DF:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .L_03E2
jmp .L_03E0
.L_03E2:
.L_03E1:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFREEIDX
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_03E4
jmp .L_03E0
.L_03E4:
.L_03E3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], -1
jne .L_03E6
jmp .L_03E0
.L_03E6:
.L_03E5:
mov dword ptr [ebp-8], 2147483647
cmp dword ptr [ebp+12], 0
jne .L_03E8
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [IR+256]
add esp, 16
mov dword ptr [ebp-8], eax
.L_03E8:
.L_03E7:
cmp dword ptr [ebp-8], 2147483647
jne .L_03EA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .L_03EC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+12], -1
je .L_03EE
sub esp, 8
push -1
push dword ptr [ebp-12]
call HFREEREG
add esp, 16
.L_03EE:
.L_03ED:
.L_03EC:
.L_03EB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03EF
mov dword ptr [ebp-16], 24
jmp .L_04DA
.L_03EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_04DA:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
.L_03EA:
.L_03E9:
.L_03E0:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HFREEREG, .-HFREEREG
.cfi_endproc
.balign 16
_GETDISTANCE:
.type _GETDISTANCE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_03F1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 0
jne .L_03F4
mov dword ptr [ebp-4], 2147483647
jmp .L_03F2
.L_03F4:
.L_03F3:
sub esp, 12
push dword ptr [CTX+60]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03F6
mov dword ptr [ebp-4], 2147483647
jmp .L_03F2
.L_03F6:
.L_03F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebx]
sub ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
jge .L_03F8
mov dword ptr [ebp-4], 2147483647
jmp .L_03F7
.L_03F8:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.L_03F7:
.L_03F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _GETDISTANCE, .-_GETDISTANCE
.cfi_endproc
.balign 16
_LOADVR:
.type _LOADVR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 68
push ebx
.L_03F9:
lea eax, [ebp-68]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .L_03FC
cmp dword ptr [ebp+16], 0
jne .L_03FE
mov dword ptr [ebp-68], 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-52], ebx
sub esp, 8
push dword ptr [ebp+12]
lea ebx, [ebp-68]
push ebx
call EMITLOAD
add esp, 16
.L_03FE:
.L_03FD:
sub esp, 8
push -1
push dword ptr [ebp+12]
call HFREEIDX
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
.L_03FC:
.L_03FB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ENV+116]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0400
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], 1
.L_0400:
.L_03FF:
.L_03FA:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _LOADVR, .-_LOADVR
.cfi_endproc
.balign 16
_STOREVR:
.type _STOREVR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 144
push ebx
push esi
.L_0401:
cmp dword ptr [ebp+12], 0
je .L_0404
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
.L_0404:
.L_0403:
lea eax, [ebp-68]
push edi
mov edi, eax
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop edi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0406
lea ecx, [ebp-136]
mov ebx, dword ptr [ebp+8]
push ecx
push edi
mov edi, ecx
mov esi, dword ptr [ebx+52]
mov ecx, 17
rep movsd
pop edi
pop ecx
lea ebx, [ebp-136]
mov dword ptr [ebp-16], ebx
.L_0406:
.L_0405:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [IR+256]
add esp, 16
cmp eax, 2147483647
je .L_0408
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDANDALLOCATETEMPVAR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebx+48]
mov ecx, dword ptr [ebx+52]
mov dword ptr [eax+36], esi
mov dword ptr [eax+40], ecx
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+12], -1
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .L_040A
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add esi, 4
adc ecx, 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebx+36], esi
mov dword ptr [ebx+40], ecx
.L_040A:
.L_0409:
cmp dword ptr [ENV+116], 1
jl .L_040C
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+16], 1
.L_040C:
.L_040B:
sub esp, 8
lea esi, [ebp-68]
push esi
push dword ptr [ebp+8]
call EMITSTORE
add esp, 16
.L_0408:
.L_0407:
mov esi, dword ptr [ebp-64]
cmp esi, 13
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp-64]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or esi, ecx
je .L_040E
sub esp, 8
push dword ptr [ebp-124]
push dword ptr [REGTB]
mov ecx, dword ptr [REGTB]
call dword ptr [ecx+12]
add esp, 16
.L_040E:
.L_040D:
mov ecx, dword ptr [ebp-64]
and ecx, 480
je .L_040F
mov dword ptr [ebp-144], 24
jmp .L_04DD
.L_040F:
mov ecx, dword ptr [ebp-64]
and ecx, 31
mov dword ptr [ebp-144], ecx
.L_04DD:
mov ecx, dword ptr [ebp-144]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-140], esi
sub esp, 8
push dword ptr [ebp-56]
mov esi, dword ptr [ebp-140]
push dword ptr [REGTB+esi*4]
mov esi, dword ptr [ebp-140]
mov ecx, dword ptr [REGTB+esi*4]
call dword ptr [ecx+12]
add esp, 16
.L_0402:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _STOREVR, .-_STOREVR
.cfi_endproc
.balign 16
_XCHGTOS:
.type _XCHGTOS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0411:
mov dword ptr [Lt_04E4], 4
mov dword ptr [Lt_04E4+4], 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_04E4+12], eax
sub esp, 12
push offset Lt_04E4
call EMITXCHGTOS
add esp, 16
.L_0412:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _XCHGTOS, .-_XCHGTOS
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_04E4,68

.section .data
.balign 4

.globl IRTAC_VTBL
IRTAC_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.long 0
.int _PROCBEGIN
.int _PROCEND
.int _PROCALLOCARG
.int _PROCALLOCLOCAL
.int _PROCGETFRAMEREGNAME
.int _SCOPEBEGIN
.int _SCOPEEND
.int _PROCALLOCSTATICVARS
.int _EMITCONVERT
.int _EMITLABEL
.int _EMITLABELNF
.int _EMITRETURN
.int _EMITPROCBEGIN
.int _EMITPROCEND
.int _EMITPUSHARG
.int _EMITASMLINE
.int _EMITCOMMENT
.int _EMITBOP
.int _EMITUOP
.int _EMITSTORE
.int _EMITSPILLREGS
.int _EMITLOAD
.int _EMITLOADRES
.int _EMITSTACK
.int _EMITADDR
.int _EMITCALL
.int _EMITCALLPTR
.int _EMITSTACKALIGN
.int _EMITJUMPPTR
.int _EMITBRANCH
.int _EMITJMPTB
.int _EMITMEM
.int _EMITMACRO
.int _EMITSCOPEBEGIN
.int _EMITSCOPEEND
.int _EMITDECL
.int _EMITDBG
.int _EMITVARINIBEGIN
.int _EMITVARINIEND
.int _EMITVARINII
.int _EMITVARINIF
.int _EMITVARINIOFS
.int _EMITVARINISTR
.int _EMITVARINIWSTR
.int _EMITVARINIPAD
.int _EMITVARINISCOPEBEGIN
.int _EMITVARINISCOPEEND
.int _EMITFBCTINFBEGIN
.int _EMITFBCTINFSTRING
.int _EMITFBCTINFEND
.int _ALLOCVREG
.int _ALLOCVRIMM
.int _ALLOCVRIMMF
.int _ALLOCVRVAR
.int _ALLOCVRIDX
.int _ALLOCVRPTR
.int _ALLOCVROFS
.int _SETVREGDATATYPE
.int _GETDISTANCE
.int _LOADVR
.int _STOREVR
.int _XCHGTOS

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
.balign 4
	.lcomm	Lt_0071,36
.balign 4
	.lcomm	CTX,120
.balign 4
	.lcomm	REGTB,8

.section .rodata
.balign 4
Lt_011D:	.ascii	"+\0"

.section .ctors, "aw", @progbits
.int fb_ctor__irztac
