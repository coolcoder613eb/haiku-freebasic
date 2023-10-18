	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irztac:
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
__INIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0074:
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
push 128
push 2048
lea eax, [_CTX]
push eax
call _FLISTINIT
add esp, 12
push 68
push 6144
lea eax, [_CTX+64]
push eax
call _FLISTINIT
add esp, 12
call _EMITINIT
mov dword ptr [ebp-4], 0
.L_0079:
push dword ptr [ebp-4]
call _EMITGETREGCLASS
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [_REGTB+ebx*4], eax
.L_0077:
inc dword ptr [ebp-4]
.L_0076:
cmp dword ptr [ebp-4], 1
jle .L_0079
.L_0078:
.L_0075:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__END:
.L_007A:
call _EMITEND
lea eax, [_CTX+64]
push eax
call _FLISTEND
add esp, 4
lea eax, [_CTX]
push eax
call _FLISTEND
add esp, 4
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
.L_007B:
ret
.balign 16
__EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_007C:
call dword ptr [_EMIT+160]
mov dword ptr [ebp-4], eax
.L_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND:
.L_007E:
call dword ptr [_EMIT+164]
.L_007F:
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0080:
push dword ptr [ebp+8]
call dword ptr [_EMIT+156]
add esp, 4
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0082:
cmp dword ptr [ebp+8], 0
jne .L_0085
jmp .L_0083
.L_0085:
.L_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .L_0089
.L_008A:
cmp dword ptr [ebp-8], 3
jne .L_0088
.L_0089:
jmp .L_0086
.L_0088:
jmp .L_0083
.L_008B:
.L_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .L_008D
jmp .L_0083
.L_008D:
.L_008C:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
jne .L_008F
jmp .L_0083
.L_008F:
.L_008E:
push dword ptr [_SYMB_DTYPETB+228]
push 0
push dword ptr [ebp-4]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax]
add esp, 16
.L_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRELINK:
push ebp
mov ebp, esp
push ebx
.L_0090:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .L_0093
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
jmp .L_0092
.L_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
.L_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
.L_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMIT:
push ebp
mov ebp, esp
push ebx
.L_0094:
lea eax, [_CTX]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [_Lt_0415], eax
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [_CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+52], 0
cmp dword ptr [ebp+12], 0
je .L_0097
mov ebx, dword ptr [_Lt_0415]
lea eax, [ebx+44]
push eax
push dword ptr [ebp+12]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+48], 0
je .L_0099
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_0415]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+64], 0
mov eax, dword ptr [_Lt_0415]
lea ecx, [eax+56]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ecx
.L_0099:
.L_0098:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+52], 0
je .L_009B
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+76], 0
mov eax, dword ptr [_Lt_0415]
lea ebx, [eax+68]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+52]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ebx
.L_009B:
.L_009A:
.L_0097:
.L_0096:
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+84], 0
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+88], 0
cmp dword ptr [ebp+16], 0
je .L_009D
mov eax, dword ptr [_Lt_0415]
lea ebx, [eax+80]
push ebx
push dword ptr [ebp+16]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [_Lt_0415]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+48], 0
je .L_009F
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0415]
mov ecx, dword ptr [eax+48]
mov dword ptr [ebx+92], ecx
mov ecx, dword ptr [_Lt_0415]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+96], ebx
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [_Lt_0415]
lea ecx, [ebx+92]
push ecx
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0415]
mov dword ptr [ebx+64], ecx
.L_009F:
.L_009E:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+52], 0
je .L_00A1
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ecx+52]
mov dword ptr [ebx+104], eax
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+108], ebx
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [_Lt_0415]
lea eax, [ebx+104]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+52]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [_Lt_0415]
mov dword ptr [ebx+64], eax
.L_00A1:
.L_00A0:
.L_009D:
.L_009C:
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [ebx+16], 0
cmp dword ptr [ebp+20], 0
je .L_00A3
mov ebx, dword ptr [_Lt_0415]
lea eax, [ebx+8]
push eax
push dword ptr [ebp+20]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx+48], 0
je .L_00A5
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [_Lt_0415]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+28], 0
mov eax, dword ptr [_Lt_0415]
lea ecx, [eax+20]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ecx
.L_00A5:
.L_00A4:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+52], 0
je .L_00A7
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [_Lt_0415]
mov dword ptr [eax+40], 0
mov eax, dword ptr [_Lt_0415]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+52]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [_Lt_0415]
mov dword ptr [eax+64], ebx
.L_00A7:
.L_00A6:
.L_00A3:
.L_00A2:
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+116], eax
mov eax, dword ptr [_Lt_0415]
mov ebx, dword ptr [ebp+28]
mov dword ptr [eax+120], ebx
mov ebx, dword ptr [_Lt_0415]
mov eax, dword ptr [ebp+32]
mov dword ptr [ebx+124], eax
inc dword ptr [_CTX+56]
.L_0095:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0415,4

.section .text
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
.L_00A8:
push dword ptr [ebp+8]
call dword ptr [_EMIT+188]
add esp, 4
.L_00A9:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
.L_00AA:
push dword ptr [ebp+8]
call dword ptr [_EMIT+192]
add esp, 4
.L_00AB:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCARG:
push ebp
mov ebp, esp
.L_00AC:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+204]
add esp, 8
.L_00AD:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCLOCAL:
push ebp
mov ebp, esp
.L_00AE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+208]
add esp, 8
.L_00AF:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCGETFRAMEREGNAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00B0:
call dword ptr [_EMIT+184]
mov dword ptr [ebp-4], eax
.L_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEBEGIN:
push ebp
mov ebp, esp
.L_00B2:
push dword ptr [ebp+8]
call dword ptr [_EMIT+216]
add esp, 4
.L_00B3:
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEEND:
push ebp
mov ebp, esp
.L_00B4:
push dword ptr [ebp+8]
call dword ptr [_EMIT+220]
add esp, 4
.L_00B5:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
.L_00B6:
push dword ptr [ebp+8]
call dword ptr [_EMIT+212]
add esp, 4
.L_00B7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
.L_00B8:
call __FLUSH
push dword ptr [ebp+8]
call _EMITLABEL
add esp, 4
.L_00B9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITRETURN:
push ebp
mov ebp, esp
.L_00BA:
call __FLUSH
push dword ptr [ebp+8]
call _EMITRET
add esp, 4
.L_00BB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPROCBEGIN:
push ebp
mov ebp, esp
push ebx
.L_00BC:
call __FLUSH
mov dword ptr [_Lt_0416], 0
.L_00C1:
mov eax, dword ptr [_Lt_0416]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0416]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+44]
add esp, 4
.L_00BF:
inc dword ptr [_Lt_0416]
.L_00BE:
cmp dword ptr [_Lt_0416], 1
jle .L_00C1
.L_00C0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+196]
add esp, 8
.L_00BD:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0416,4

.section .text
.balign 16
__EMITPROCEND:
push ebp
mov ebp, esp
push ebx
.L_00C2:
call __FLUSH
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBPROCCALCBYTESTOPOP
add esp, 4
mov ebx, eax
push ebx
push dword ptr [ebp+8]
call dword ptr [_EMIT+200]
add esp, 16
.L_00C3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEBEGIN:
push ebp
mov ebp, esp
.L_00C4:
call __FLUSH
.L_00C5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEEND:
push ebp
mov ebp, esp
.L_00C6:
call __FLUSH
.L_00C7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBOP:
push ebp
mov ebp, esp
.L_00C8:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_00C9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITUOP:
push ebp
mov ebp, esp
.L_00CA:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_00CB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_00CE
mov dword ptr [ebp-4], 24
jmp .L_0417
.L_00CE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0417:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .L_00D2
.L_00D3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .L_00D5
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call __EMIT
add esp, 28
jmp .L_00D4
.L_00D5:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call __EMIT
add esp, 28
.L_00D4:
jmp .L_00D0
.L_00D2:
cmp dword ptr [ebp-8], 1
jne .L_00D6
.L_00D7:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call __EMIT
add esp, 28
.L_00D6:
.L_00D0:
.L_00CD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORE:
push ebp
mov ebp, esp
.L_00D8:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call __EMIT
add esp, 28
.L_00D9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSPILLREGS:
.L_00DA:
push 0
push 0
push 0
push 0
push 0
push 0
push 87
call __EMIT
add esp, 28
.L_00DB:
ret
.balign 16
__EMITLOAD:
push ebp
mov ebp, esp
.L_00DC:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 85
call __EMIT
add esp, 28
.L_00DD:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADRES:
push ebp
mov ebp, esp
.L_00DE:
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 86
call __EMIT
add esp, 28
.L_00DF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTACK:
push ebp
mov ebp, esp
.L_00E0:
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_00E1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHARG:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00E2:
cmp dword ptr [ebp+28], 0
je .L_00E5
mov dword ptr [ebp-16], -1
cmp dword ptr [ebp+12], 0
je .L_00E7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_00E8
mov dword ptr [ebp-20], 24
jmp .L_0418
.L_00E8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-20], ebx
.L_0418:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_00EB
mov dword ptr [ebp-8], 9
.L_00EB:
.L_00EA:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
jmp .L_00E6
.L_00E7:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-4], -1
.L_00E6:
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+76]
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call dword ptr [_EMIT+176]
add esp, 16
cmp dword ptr [ebp-16], -1
je .L_00ED
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 4
jne .L_00EF
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
.L_00EF:
.L_00EE:
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .L_00F0
mov dword ptr [ebp-20], 24
jmp .L_0419
.L_00F0:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.L_0419:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
push dword ptr [_SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+28]
mov ecx, dword ptr [ebp-4]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [_REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
push dword ptr [ebp+28]
push dword ptr [ebp+12]
push 88
call __EMITSTACK
add esp, 12
jmp .L_00E3
.L_00ED:
.L_00EC:
.L_00E5:
.L_00E4:
cmp dword ptr [ebp+20], 0
jne .L_00F3
cmp dword ptr [ebp+16], 0
jne .L_00F3
.L_041A:
push 0
push dword ptr [ebp+12]
push 88
call __EMITSTACK
add esp, 12
jmp .L_00F2
.L_00F3:
push 0
mov eax, dword ptr [ebp+16]
push eax
push 0
push 0
push 0
push dword ptr [ebp+12]
push 90
call __EMIT
add esp, 28
.L_00F2:
.L_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDR:
push ebp
mov ebp, esp
.L_00F4:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_00F5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABELNF:
push ebp
mov ebp, esp
.L_00F6:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 100
call __EMIT
add esp, 28
.L_00F7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
.L_00F8:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push 0
push 102
call __EMIT
add esp, 28
.L_00F9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
.L_00FA:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 103
call __EMIT
add esp, 28
.L_00FB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTACKALIGN:
push ebp
mov ebp, esp
.L_00FC:
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 0
push 91
call __EMIT
add esp, 28
.L_00FD:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
.L_00FE:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 104
call __EMIT
add esp, 28
.L_00FF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
.L_0100:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_0101:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
.L_0102:
call __FLUSH
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITJMPTB
add esp, 36
.L_0103:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEM:
push ebp
mov ebp, esp
.L_0104:
push 0
mov eax, dword ptr [ebp+20]
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_0105:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMACRO:
push ebp
mov ebp, esp
.L_0106:
.L_0107:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDECL:
push ebp
mov ebp, esp
.L_0108:
.L_0109:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDBG:
push ebp
mov ebp, esp
.L_010A:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.L_010B:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCOMMENT:
push ebp
mov ebp, esp
.L_010C:
push 0
push 0
push dword ptr [ebp+8]
call _ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 117
call __EMIT
add esp, 28
.L_010D:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_010E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.L_0110:
cmp dword ptr [ebp-16], 0
je .L_0111
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .L_0114
.L_0115:
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .L_0112
.L_0114:
cmp dword ptr [ebp-20], 1
jne .L_0117
.L_0118:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .L_041B
cmp dword ptr [ebp-40], 0
je .L_011B
.L_041B:
cmp dword ptr [ebp-36], 0
jl .L_011D
jg .L_041C
cmp dword ptr [ebp-40], 0
jbe .L_011D
.L_041C:
push 0
push 2
push offset _Lt_011E
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign
add esp, 20
.L_011D:
.L_011C:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_011B:
.L_011A:
.L_0117:
.L_0112:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .L_0110
.L_0111:
push 0
push 0
push dword ptr [ebp-12]
call _ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 118
call __EMIT
add esp, 28
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.L_010F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIBEGIN:
push ebp
mov ebp, esp
.L_011F:
push dword ptr [ebp+8]
call _EMITVARINIBEGIN
add esp, 4
.L_0120:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIEND:
push ebp
mov ebp, esp
.L_0121:
.L_0122:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
.L_0123:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call _SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _EMITVARINII
add esp, 12
.L_0124:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
.L_0125:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call _SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _EMITVARINIF
add esp, 12
.L_0126:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIOFS:
push ebp
mov ebp, esp
.L_0127:
mov eax, dword ptr [ebp+16]
push eax
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _EMITVARINIOFS
add esp, 8
.L_0128:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0129:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_012C
cmp dword ptr [ebp+8], 0
jne .L_012C
.L_041D:
push 0
push 0
push 2
call _EMITVARINII
add esp, 12
jmp .L_012A
.L_012C:
.L_012B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_012E
jg .L_041E
cmp dword ptr [ebp+20], ebx
jbe .L_012E
.L_041E:
push 0
push 1
push 0
push 9
call _ERRREPORTWARN
add esp, 16
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call _HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_012D
.L_012E:
push dword ptr [ebp+16]
call _HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
.L_012D:
push dword ptr [ebp-4]
call _EMITVARINISTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .L_0131
jl .L_041F
cmp dword ptr [ebp+20], ebx
jae .L_0131
.L_041F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov ecx, eax
push ecx
call _EMITVARINIPAD
add esp, 4
.L_0131:
.L_0130:
.L_012A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
.L_0132:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .L_0135
cmp dword ptr [ebp+8], 0
jne .L_0135
.L_0420:
push 0
push 0
push dword ptr [_ENV+272]
call _EMITVARINII
add esp, 12
jmp .L_0133
.L_0135:
.L_0134:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .L_0137
jg .L_0421
cmp dword ptr [ebp+20], ebx
jbe .L_0137
.L_0421:
push 0
push 1
push 0
push 9
call _ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call _fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
jmp .L_0136
.L_0137:
push dword ptr [ebp+16]
call _HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
.L_0136:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _EMITVARINIWSTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .L_013A
jl .L_0422
cmp dword ptr [ebp+20], ebx
jae .L_013A
.L_0422:
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
call _EMITVARINIPAD
add esp, 4
.L_013A:
.L_0139:
.L_0133:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIPAD:
push ebp
mov ebp, esp
.L_013B:
mov eax, dword ptr [ebp+8]
push eax
call _EMITVARINIPAD
add esp, 4
.L_013C:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.L_013D:
.L_013E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEEND:
.L_013F:
.L_0140:
ret
.balign 16
__EMITFBCTINFBEGIN:
.L_0141:
call _EMITFBCTINFBEGIN
.L_0142:
ret
.balign 16
__EMITFBCTINFSTRING:
push ebp
mov ebp, esp
.L_0143:
push dword ptr [ebp+8]
call _EMITFBCTINFSTRING
add esp, 4
.L_0144:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFEND:
.L_0145:
call _EMITFBCTINFEND
.L_0146:
ret
.balign 16
_HNEWVR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0147:
lea eax, [_CTX+64]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .L_0149
mov dword ptr [ebp-12], 24
jmp .L_0423
.L_0149:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_0423:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], -1
cmp dword ptr [_ENV+116], 0
jne .L_014C
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
jmp .L_014B
.L_014C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 1
.L_014B:
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
.L_0148:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_014D:
and dword ptr [ebp+8], 511
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
je .L_0150
push 4
push 0
push 8
call _HNEWVR
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
.L_0150:
.L_014F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_014E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIMM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0151:
and dword ptr [ebp+8], 511
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
je .L_0154
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
and eax, 4294967295
and ebx, 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
push 0
push 0
push 8
call _HNEWVR
add esp, 12
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
jmp .L_0153
.L_0154:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], ecx
.L_0153:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0152:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIMMF:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0155:
and dword ptr [ebp+8], 511
mov eax, dword ptr [_IR+272]
and eax, 2
test eax, eax
je .L_0158
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
jmp .L_0157
.L_0158:
push dword ptr [ebp+8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBALLOCFLOATCONST
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_IR+236]
add esp, 20
mov dword ptr [ebp-8], eax
.L_0157:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0159:
and dword ptr [ebp+8], 511
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
je .L_015C
push 1
push 0
push 8
call _HNEWVR
add esp, 12
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
.L_015C:
.L_015B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_015A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIDX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_015D:
and dword ptr [ebp+8], 511
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
je .L_0160
push 2
push 0
push 8
call _HNEWVR
add esp, 12
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
.L_0160:
.L_015F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0161:
and dword ptr [ebp+8], 511
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
je .L_0164
push 3
push 0
push 8
call _HNEWVR
add esp, 12
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
.L_0164:
.L_0163:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVROFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0165:
and dword ptr [ebp+8], 511
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
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
.L_0166:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0167:
and dword ptr [ebp+12], 511
cmp dword ptr [ebp+8], 0
je .L_016A
mov eax, dword ptr [ebp+12]
and eax, 480
je .L_016B
mov dword ptr [ebp-4], 24
jmp .L_042E
.L_016B:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.L_042E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.L_016A:
.L_0169:
.L_0168:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRENAME:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_016D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.L_016F:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 0
je .L_0173
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+48], ebx
jne .L_0175
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+48], ebx
jmp .L_0174
.L_0175:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+52], ebx
.L_0174:
.L_0173:
.L_0172:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.L_0171:
cmp dword ptr [ebp-4], 0
jne .L_016F
.L_0170:
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
.L_016E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREUSE:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.L_0176:
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
je .L_0179
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_017A
mov dword ptr [ebp-56], 24
jmp .L_042F
.L_017A:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_042F:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 24
jne .L_017D
mov dword ptr [ebp-16], 9
.L_017D:
.L_017C:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-20], eax
jmp .L_0178
.L_0179:
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-20], -1
.L_0178:
cmp dword ptr [ebp-8], 0
je .L_017F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0180
mov dword ptr [ebp-56], 24
jmp .L_0430
.L_0180:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_0430:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 24
jne .L_0183
mov dword ptr [ebp-28], 9
.L_0183:
.L_0182:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
jmp .L_017E
.L_017F:
mov dword ptr [ebp-36], -1
mov dword ptr [ebp-28], -2147483648
mov dword ptr [ebp-32], -1
.L_017E:
cmp dword ptr [ebp-12], 0
je .L_0185
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0186
mov dword ptr [ebp-56], 24
jmp .L_0431
.L_0186:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_0431:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 24
jne .L_0189
mov dword ptr [ebp-40], 9
.L_0189:
.L_0188:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-44], eax
jmp .L_0184
.L_0185:
mov dword ptr [ebp-48], -1
mov dword ptr [ebp-40], -2147483648
mov dword ptr [ebp-44], -1
.L_0184:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
jne .L_018C
.L_018D:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebp-12], ebx
je .L_018F
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .L_0190
mov dword ptr [ebp-60], 24
jmp .L_0432
.L_0190:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-60], ebx
.L_0432:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .L_0192
mov dword ptr [ebp-64], 24
jmp .L_0433
.L_0192:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-64], ebx
.L_0433:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+20]
cmp dword ptr [_SYMB_DTYPETB+eax+20], ecx
jne .L_0195
push dword ptr [ebp-4]
call dword ptr [_IR+256]
add esp, 4
cmp eax, 2147483647
jne .L_0197
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
.L_0197:
.L_0196:
.L_0195:
.L_0194:
.L_018F:
.L_018E:
jmp .L_018A
.L_018C:
cmp dword ptr [ebp-56], 3
je .L_0199
.L_019A:
cmp dword ptr [ebp-56], 14
jne .L_0198
.L_0199:
cmp dword ptr [ebp-12], 0
jne .L_019C
jmp .L_0177
.L_019C:
.L_019B:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-20], eax
je .L_019E
jmp .L_0177
.L_019E:
.L_019D:
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-12], eax
je .L_01A0
mov eax, dword ptr [ebp-40]
and eax, 480
je .L_01A1
mov dword ptr [ebp-68], 24
jmp .L_0435
.L_01A1:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-68], eax
.L_0435:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .L_01A3
mov dword ptr [ebp-72], 24
jmp .L_0436
.L_01A3:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-72], eax
.L_0436:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ecx, dword ptr [ebp-76]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
cmp dword ptr [_SYMB_DTYPETB+ecx+20], ebx
jne .L_01A6
push dword ptr [ebp-4]
call dword ptr [_IR+256]
add esp, 4
cmp eax, 2147483647
jne .L_01A8
mov dword ptr [ebp-60], -1
.L_01A8:
.L_01A7:
.L_01A6:
.L_01A5:
.L_01A0:
.L_019F:
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 2
test ebx, ebx
je .L_01AA
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
je .L_01AC
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .L_01AD
mov dword ptr [ebp-68], 24
jmp .L_0438
.L_01AD:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-68], ebx
.L_0438:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .L_01AF
mov dword ptr [ebp-72], 24
jmp .L_0439
.L_01AF:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-72], ebx
.L_0439:
mov ebx, dword ptr [ebp-72]
imul ebx, 28
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+20]
cmp dword ptr [_SYMB_DTYPETB+eax+20], ecx
jne .L_01B2
cmp dword ptr [ebp-36], 0
je .L_01B4
push dword ptr [ebp-8]
call dword ptr [_IR+256]
add esp, 4
cmp eax, 2147483647
jne .L_01B6
mov dword ptr [ebp-64], -1
.L_01B6:
.L_01B5:
.L_01B4:
.L_01B3:
.L_01B2:
.L_01B1:
.L_01AC:
.L_01AB:
.L_01AA:
.L_01A9:
mov eax, dword ptr [ebp-64]
and eax, dword ptr [ebp-60]
je .L_01B8
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4
je .L_01BA
mov dword ptr [ebp-60], 0
.L_01BA:
.L_01B9:
.L_01B8:
.L_01B7:
cmp dword ptr [ebp-60], 0
je .L_01BC
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
jmp .L_01BB
.L_01BC:
cmp dword ptr [ebp-64], 0
je .L_01BD
push 36
mov eax, dword ptr [ebp+8]
lea ecx, [eax+80]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+44]
push eax
call _fb_MemSwap
add esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
.L_01BD:
.L_01BB:
.L_0198:
.L_018A:
.L_0177:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__FLUSH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_01BE:
cmp dword ptr [_CTX+56], 0
jne .L_01C1
jmp .L_01BF
.L_01C1:
.L_01C0:
lea eax, [_CTX]
push eax
call _FLISTGETHEAD
add esp, 4
mov dword ptr [_Lt_043B], eax
.L_01C2:
mov eax, dword ptr [_Lt_043B]
mov dword ptr [_CTX+60], eax
push dword ptr [_Lt_043B]
call _HREUSE
add esp, 4
mov eax, dword ptr [_Lt_043B]
mov ebx, dword ptr [eax+4]
mov dword ptr [_Lt_043C], ebx
mov ebx, dword ptr [_Lt_043B]
mov eax, dword ptr [ebx+44]
mov dword ptr [_Lt_043D], eax
mov eax, dword ptr [_Lt_043B]
mov ebx, dword ptr [eax+80]
mov dword ptr [_Lt_043E], ebx
mov ebx, dword ptr [_Lt_043B]
mov eax, dword ptr [ebx+8]
mov dword ptr [_Lt_043F], eax
mov eax, dword ptr [_Lt_043C]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-4], ebx
jmp .L_01C6
.L_01C8:
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHUOP
add esp, 12
jmp .L_01C5
.L_01C9:
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHBOP
add esp, 16
jmp .L_01C5
.L_01CA:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHCOMP
add esp, 20
jmp .L_01C5
.L_01CB:
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHSTORE
add esp, 12
jmp .L_01C5
.L_01CC:
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHLOAD
add esp, 12
jmp .L_01C5
.L_01CD:
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHCONVERT
add esp, 12
jmp .L_01C5
.L_01CE:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+120]
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHSTACK
add esp, 16
jmp .L_01C5
.L_01CF:
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043D]
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+120]
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
push dword ptr [_Lt_043C]
call _HFLUSHCALL
add esp, 20
jmp .L_01C5
.L_01D0:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
push dword ptr [_Lt_043C]
call _HFLUSHBRANCH
add esp, 8
jmp .L_01C5
.L_01D1:
push dword ptr [_Lt_043F]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHADDR
add esp, 12
jmp .L_01C5
.L_01D2:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+120]
push dword ptr [_Lt_043E]
push dword ptr [_Lt_043D]
push dword ptr [_Lt_043C]
call _HFLUSHMEM
add esp, 20
jmp .L_01C5
.L_01D3:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+124]
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+120]
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
push dword ptr [_Lt_043C]
call _HFLUSHDBG
add esp, 16
jmp .L_01C5
.L_01D4:
mov ebx, dword ptr [_Lt_043B]
push dword ptr [ebx+116]
push dword ptr [_Lt_043C]
call _HFLUSHLIT
add esp, 8
jmp .L_01C5
.L_01C6:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 29
ja .L_01C5
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_01D5+ebx*4-4]
_.L_01D5:
.int .L_01CC
.int .L_01CB
.int .L_01C9
.int .L_01C8
.int .L_01CD
.int .L_01D1
.int .L_01D0
.int .L_01C5
.int .L_01CF
.int .L_01C5
.int .L_01CE
.int .L_01D2
.int .L_01C5
.int .L_01CA
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01C5
.int .L_01D4
.int .L_01C5
.int .L_01C5
.int .L_01D3
.L_01C5:
cmp dword ptr [_ENV+116], 1
jl .L_01D7
mov ebx, dword ptr [_Lt_043C]
sal ebx, 4
cmp dword ptr [_AST_OPTB+ebx], 9
je .L_01D9
cmp dword ptr [_Lt_043F], 0
je .L_01DB
mov ebx, dword ptr [_Lt_043F]
cmp dword ptr [ebx+16], 0
jne .L_01DD
mov ebx, dword ptr [_Lt_043F]
mov dword ptr [ebx+16], 1
.L_01DD:
.L_01DB:
.L_01DA:
.L_01D9:
.L_01D8:
.L_01D7:
.L_01D6:
push dword ptr [_Lt_043B]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [_Lt_043B], eax
.L_01C4:
cmp dword ptr [_Lt_043B], 0
jne .L_01C2
.L_01C3:
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
lea eax, [_CTX]
push eax
call _FLISTRESET
add esp, 4
lea eax, [_CTX+64]
push eax
call _FLISTRESET
add esp, 4
call _HFREEPRESERVEDREGS
.L_01BF:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_043C,4
.balign 4
	.lcomm	_Lt_043B,4
.balign 4
	.lcomm	_Lt_043D,4
.balign 4
	.lcomm	_Lt_043E,4
.balign 4
	.lcomm	_Lt_043F,4

.section .text
.balign 16
_HFLUSHBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.L_01DE:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_01E1
.L_01E3:
push dword ptr [ebp+12]
call _EMITLABEL
add esp, 4
jmp .L_01E0
.L_01E4:
push dword ptr [ebp+12]
call _EMITJUMP
add esp, 4
jmp .L_01E0
.L_01E5:
push 0
push dword ptr [ebp+12]
call _EMITCALL
add esp, 8
jmp .L_01E0
.L_01E6:
push 0
call _EMITRET
add esp, 4
jmp .L_01E0
.L_01E7:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITBRANCH
add esp, 8
jmp .L_01E0
.L_01E1:
mov eax, dword ptr [ebp-4]
add eax, 4294967198
cmp eax, 3
ja .L_01E7
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_01E8+eax*4-392]
_.L_01E8:
.int .L_01E4
.int .L_01E5
.int .L_01E3
.int .L_01E6
.L_01E0:
.L_01DF:
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEPRESERVEDREGS:
push ebx
.L_01E9:
mov dword ptr [_Lt_0440], 0
.L_01EE:
mov eax, dword ptr [_Lt_0440]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0440]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [_Lt_0441], eax
.L_01EF:
cmp dword ptr [_Lt_0441], -1
je .L_01F0
push dword ptr [_Lt_0441]
mov eax, dword ptr [_Lt_0440]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0440]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .L_01F2
push dword ptr [_Lt_0441]
mov eax, dword ptr [_Lt_0440]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0440]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
.L_01F2:
.L_01F1:
push dword ptr [_Lt_0441]
mov ebx, dword ptr [_Lt_0440]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0440]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+32]
add esp, 8
mov dword ptr [_Lt_0441], eax
jmp .L_01EF
.L_01F0:
.L_01EC:
inc dword ptr [_Lt_0440]
.L_01EB:
cmp dword ptr [_Lt_0440], 1
jle .L_01EE
.L_01ED:
.L_01EA:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_0440,4
.balign 4
	.lcomm	_Lt_0441,4

.section .text
.balign 16
_HPRESERVEREG:
push ebp
mov ebp, esp
sub esp, 240
push ebx
mov dword ptr [ebp-4], 0
.L_01F3:
cmp dword ptr [ebp+8], 0
je .L_01F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_01F7
mov dword ptr [ebp-240], 24
jmp .L_0442
.L_01F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-240], ebx
.L_0442:
mov ebx, dword ptr [ebp-240]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 24
jne .L_01FA
mov dword ptr [ebp-12], 9
.L_01FA:
.L_01F9:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-8], eax
jmp .L_01F5
.L_01F6:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-12], -2147483648
mov dword ptr [ebp-8], -1
.L_01F5:
lea eax, [ebp-100]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+168]
add esp, 8
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
je .L_01FC
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
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
push dword ptr [ebx+12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+168]
add esp, 8
mov dword ptr [ebp-24], eax
jmp .L_01FB
.L_01FC:
mov dword ptr [ebp-24], -1
.L_01FB:
mov eax, dword ptr [ebp-24]
and eax, dword ptr [ebp-20]
je .L_01FE
mov dword ptr [ebp-4], -1
jmp .L_01F4
.L_01FE:
.L_01FD:
cmp dword ptr [ebp-20], 0
jne .L_0200
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+172]
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], -1
jne .L_0202
mov dword ptr [ebp-4], 0
jmp .L_01F4
.L_0202:
.L_0201:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
.L_0200:
.L_01FF:
cmp dword ptr [ebp-24], 0
jne .L_0204
push 8
push 0
call dword ptr [_EMIT+172]
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], -1
jne .L_0206
cmp dword ptr [ebp-20], 0
jne .L_0208
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-88]
mov dword ptr [ebx+12], eax
.L_0208:
.L_0207:
mov dword ptr [ebp-4], 0
jmp .L_01F4
.L_0206:
.L_0205:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [ebp-32]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov dword ptr [ecx+12], eax
.L_0204:
.L_0203:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
not eax
test eax, eax
je .L_020A
lea eax, [ebp-100]
push eax
push dword ptr [ebp+8]
call _EMITMOV
add esp, 8
jmp .L_0209
.L_020A:
cmp dword ptr [ebp-20], 0
jne .L_020B
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
je .L_020D
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
lea ecx, [ebp-100]
push ecx
lea ecx, [ebp-236]
push ecx
call _EMITMOV
add esp, 8
jmp .L_020C
.L_020D:
lea ecx, [ebp-100]
push ecx
push dword ptr [ebp+8]
call _EMITMOV
add esp, 8
.L_020C:
jmp .L_0209
.L_020B:
lea ecx, [ebp-168]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
call _EMITMOV
add esp, 8
.L_0209:
cmp dword ptr [ebp-20], 0
jne .L_020F
push dword ptr [ebp-88]
mov ecx, dword ptr [ebp-8]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [_REGTB+ecx*4]
call dword ptr [eax+12]
add esp, 8
.L_020F:
.L_020E:
cmp dword ptr [ebp-24], 0
jne .L_0211
push dword ptr [ebp-156]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax+12]
add esp, 8
.L_0211:
.L_0210:
mov dword ptr [ebp-4], -1
.L_01F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRESERVEREGS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0212:
mov dword ptr [ebp-20], 0
.L_0217:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp-20], 0
jne .L_0219
cmp dword ptr [ebp+8], 0
je .L_021B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .L_021E
.L_021F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .L_021C
.L_021E:
cmp dword ptr [ebp-24], 2
je .L_0221
.L_0222:
cmp dword ptr [ebp-24], 3
jne .L_0220
.L_0221:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
je .L_0224
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
.L_0224:
.L_0223:
.L_0220:
.L_021C:
mov dword ptr [ebp+8], 0
.L_021B:
.L_021A:
.L_0219:
.L_0218:
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-8], eax
.L_0225:
cmp dword ptr [ebp-8], -1
je .L_0226
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
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
je .L_0228
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+36]
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .L_022A
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_022A:
.L_0229:
push dword ptr [ebp-12]
call _HPRESERVEREG
add esp, 4
test eax, eax
jne .L_022C
push 0
push dword ptr [ebp-12]
call dword ptr [_IR+264]
add esp, 8
.L_022C:
.L_022B:
.L_0228:
.L_0227:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-8], eax
jmp .L_0225
.L_0226:
.L_0215:
inc dword ptr [ebp-20]
.L_0214:
cmp dword ptr [ebp-20], 1
jle .L_0217
.L_0216:
.L_0213:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADPOINTER:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_022D:
cmp dword ptr [ebp+8], 0
je .L_0230
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0231
mov dword ptr [ebp-16], 24
jmp .L_0449
.L_0231:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_0449:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_0234
mov dword ptr [ebp-8], 9
.L_0234:
.L_0233:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .L_022F
.L_0230:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.L_022F:
push dword ptr [ebp+8]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp-4], 4
jne .L_0236
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0237
mov dword ptr [ebp-16], 24
jmp .L_044A
.L_0237:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-16], eax
.L_044A:
mov eax, dword ptr [ebp-16]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_0236:
.L_0235:
.L_022E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADRESULT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.L_0239:
cmp dword ptr [ebp+12], 0
je .L_023C
cmp dword ptr [ebp+12], 0
je .L_023E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_023F
mov dword ptr [ebp-28], 24
jmp .L_044B
.L_023F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-28], ebx
.L_044B:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .L_0242
mov dword ptr [ebp-8], 9
.L_0242:
.L_0241:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .L_023D
.L_023E:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.L_023D:
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+180]
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
je .L_0244
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax], 4
.L_0244:
.L_0243:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
jmp .L_023B
.L_023C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 480
je .L_0245
mov dword ptr [ebp-28], 24
jmp .L_044C
.L_0245:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
and eax, 31
mov dword ptr [ebp-28], eax
.L_044C:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
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
je .L_0248
call _EMITPOPST0
.L_0248:
.L_0247:
.L_023B:
.L_023A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHCALL:
push ebp
mov ebp, esp
.L_0249:
cmp dword ptr [ebp+8], 102
jne .L_024C
.L_024D:
push 0
call _HPRESERVEREGS
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITCALL
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HLOADRESULT
add esp, 8
jmp .L_024B
.L_024C:
cmp dword ptr [ebp+8], 103
jne .L_024E
.L_024F:
push dword ptr [ebp+20]
call _HPRESERVEREGS
add esp, 4
push dword ptr [ebp+20]
call _HLOADPOINTER
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+20]
call _EMITCALLPTR
add esp, 8
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HLOADRESULT
add esp, 8
jmp .L_024B
.L_024E:
cmp dword ptr [ebp+8], 104
jne .L_0250
.L_0251:
push dword ptr [ebp+20]
call _HLOADPOINTER
add esp, 4
push dword ptr [ebp+20]
call _EMITJUMPPTR
add esp, 4
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.L_0250:
.L_0252:
.L_024B:
.L_024A:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0253:
cmp dword ptr [ebp+8], 91
jne .L_0256
push dword ptr [ebp+20]
call _EMITSTACKALIGN
add esp, 4
jmp .L_0254
.L_0256:
.L_0255:
cmp dword ptr [ebp+12], 0
je .L_0258
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0453], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0259
mov dword ptr [ebp-4], 24
jmp .L_0451
.L_0259:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0451:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0454], ebx
cmp dword ptr [_Lt_0454], 24
jne .L_025C
mov dword ptr [_Lt_0454], 9
.L_025C:
.L_025B:
mov ebx, dword ptr [_Lt_0454]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0455], eax
jmp .L_0257
.L_0258:
mov dword ptr [_Lt_0453], -1
mov dword ptr [_Lt_0454], -2147483648
mov dword ptr [_Lt_0455], -1
.L_0257:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
cmp dword ptr [_Lt_0453], 4
jne .L_025E
mov eax, dword ptr [_Lt_0454]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0454]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0260
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0458], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0458]
mov eax, dword ptr [_Lt_0455]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0455]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0454], 8
.L_0260:
.L_025F:
mov ebx, dword ptr [_Lt_0454]
and ebx, 480
je .L_0261
mov dword ptr [ebp-4], 24
jmp .L_0452
.L_0261:
mov ebx, dword ptr [_Lt_0454]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0452:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_0455]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0455]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_025E:
.L_025D:
cmp dword ptr [ebp+8], 88
jne .L_0264
.L_0265:
cmp dword ptr [ebp+16], 0
je .L_0267
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITLOAD
add esp, 8
jmp .L_0266
.L_0267:
push dword ptr [ebp+12]
call _EMITPUSH
add esp, 4
.L_0266:
jmp .L_0263
.L_0264:
cmp dword ptr [ebp+8], 90
jne .L_0268
.L_0269:
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _EMITPUSHUDT
add esp, 8
jmp .L_0263
.L_0268:
cmp dword ptr [ebp+8], 89
jne .L_026A
.L_026B:
push dword ptr [ebp+12]
call _EMITPOP
add esp, 4
.L_026A:
.L_0263:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.L_0254:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0453,4
.balign 4
	.lcomm	_Lt_0454,4
.balign 4
	.lcomm	_Lt_0455,4
.balign 4
	.lcomm	_Lt_0458,4

.section .text
.balign 16
_HFLUSHUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_026C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [_Lt_045D], ebx
cmp dword ptr [ebp+12], 0
je .L_026F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_045E], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0270
mov dword ptr [ebp-4], 24
jmp .L_0459
.L_0270:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0459:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_045F], eax
cmp dword ptr [_Lt_045F], 24
jne .L_0273
mov dword ptr [_Lt_045F], 9
.L_0273:
.L_0272:
mov eax, dword ptr [_Lt_045F]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_Lt_0460], ebx
jmp .L_026E
.L_026F:
mov dword ptr [_Lt_045E], -1
mov dword ptr [_Lt_045F], -2147483648
mov dword ptr [_Lt_0460], -1
.L_026E:
cmp dword ptr [ebp+16], 0
je .L_0275
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_0461], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .L_0276
mov dword ptr [ebp-4], 24
jmp .L_045A
.L_0276:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_045A:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_0462], eax
cmp dword ptr [_Lt_0462], 24
jne .L_0279
mov dword ptr [_Lt_0462], 9
.L_0279:
.L_0278:
mov eax, dword ptr [_Lt_0462]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_Lt_0463], ebx
jmp .L_0274
.L_0275:
mov dword ptr [_Lt_0461], -1
mov dword ptr [_Lt_0462], -2147483648
mov dword ptr [_Lt_0463], -1
.L_0274:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+16], 0
je .L_027B
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp+12], ebx
je .L_027D
mov ebx, dword ptr [_Lt_0462]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0462]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_027F
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0466], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0466]
mov ebx, dword ptr [_Lt_0463]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0463]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_0462], 8
.L_027F:
.L_027E:
mov eax, dword ptr [_Lt_0462]
and eax, 480
je .L_0280
mov dword ptr [ebp-4], 24
jmp .L_045B
.L_0280:
mov eax, dword ptr [_Lt_0462]
and eax, 31
mov dword ptr [ebp-4], eax
.L_045B:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [_Lt_0463]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0463]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_027D:
.L_027C:
.L_027B:
.L_027A:
cmp dword ptr [ebp+16], 0
je .L_0283
mov ebx, dword ptr [_Lt_045F]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_045F]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0285
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0466], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0466]
mov ebx, dword ptr [_Lt_0460]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0460]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_045F], 8
.L_0285:
.L_0284:
cmp dword ptr [ebp+8], 75
jne .L_0287
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.L_0287:
.L_0286:
mov eax, dword ptr [_Lt_045F]
and eax, 480
je .L_0288
mov dword ptr [ebp-4], 24
jmp .L_045C
.L_0288:
mov eax, dword ptr [_Lt_045F]
and eax, 31
mov dword ptr [ebp-4], eax
.L_045C:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_0460]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0460]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
cmp dword ptr [ebp+8], 75
jne .L_028B
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_045D]
mov dword ptr [ebx+20], eax
.L_028B:
.L_028A:
.L_0283:
.L_0282:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_028D
.L_028F:
push dword ptr [ebp+12]
call _EMITNEG
add esp, 4
jmp .L_028C
.L_0290:
push dword ptr [ebp+12]
call _EMITNOT
add esp, 4
jmp .L_028C
.L_0291:
push dword ptr [ebp+12]
call _EMITHADD
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
jmp .L_028C
.L_0292:
push dword ptr [ebp+12]
call _EMITABS
add esp, 4
jmp .L_028C
.L_0293:
push dword ptr [ebp+12]
call _EMITSGN
add esp, 4
jmp .L_028C
.L_0294:
push dword ptr [ebp+12]
call _EMITFIX
add esp, 4
jmp .L_028C
.L_0295:
push dword ptr [ebp+12]
call _EMITFRAC
add esp, 4
jmp .L_028C
.L_0296:
push dword ptr [ebp+12]
call _EMITCONVFD2FS
add esp, 4
jmp .L_028C
.L_0297:
push dword ptr [ebp+12]
call _EMITSIN
add esp, 4
jmp .L_028C
.L_0298:
push dword ptr [ebp+12]
call _EMITASIN
add esp, 4
jmp .L_028C
.L_0299:
push dword ptr [ebp+12]
call _EMITCOS
add esp, 4
jmp .L_028C
.L_029A:
push dword ptr [ebp+12]
call _EMITACOS
add esp, 4
jmp .L_028C
.L_029B:
push dword ptr [ebp+12]
call _EMITTAN
add esp, 4
jmp .L_028C
.L_029C:
push dword ptr [ebp+12]
call _EMITATAN
add esp, 4
jmp .L_028C
.L_029D:
push dword ptr [ebp+12]
call _EMITSQRT
add esp, 4
jmp .L_028C
.L_029E:
push dword ptr [ebp+12]
call _EMITRSQRT
add esp, 4
jmp .L_028C
.L_029F:
push dword ptr [ebp+12]
call _EMITRCP
add esp, 4
jmp .L_028C
.L_02A0:
push dword ptr [ebp+12]
call _EMITLOG
add esp, 4
jmp .L_028C
.L_02A1:
push dword ptr [ebp+12]
call _EMITEXP
add esp, 4
jmp .L_028C
.L_02A2:
push dword ptr [ebp+12]
call _EMITFLOOR
add esp, 4
jmp .L_028C
.L_02A3:
push dword ptr [ebp+12]
call _EMITSWZREP
add esp, 4
jmp .L_028C
.L_028D:
mov eax, dword ptr [ebp-4]
add eax, 4294967244
cmp eax, 23
ja .L_028C
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_02A4+eax*4-208]
_.L_02A4:
.int .L_0290
.int .L_028C
.int .L_028F
.int .L_0291
.int .L_0292
.int .L_0293
.int .L_0297
.int .L_0298
.int .L_0299
.int .L_029A
.int .L_029B
.int .L_029C
.int .L_028C
.int .L_029D
.int .L_029E
.int .L_029F
.int .L_02A0
.int .L_02A1
.int .L_02A2
.int .L_0294
.int .L_0295
.int .L_028C
.int .L_0296
.int .L_02A3
.L_028C:
cmp dword ptr [ebp+16], 0
je .L_02A6
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp+12], eax
je .L_02A8
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITMOV
add esp, 8
.L_02A8:
.L_02A7:
.L_02A6:
.L_02A5:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.L_026D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_045E,4
.balign 4
	.lcomm	_Lt_045F,4
.balign 4
	.lcomm	_Lt_0460,4
.balign 4
	.lcomm	_Lt_0461,4
.balign 4
	.lcomm	_Lt_0462,4
.balign 4
	.lcomm	_Lt_0463,4
.balign 4
	.lcomm	_Lt_0466,4
.balign 4
	.lcomm	_Lt_045D,4

.section .text
.balign 16
_HFLUSHBOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02A9:
cmp dword ptr [ebp+12], 0
je .L_02AC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0470], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02AD
mov dword ptr [ebp-4], 24
jmp .L_0469
.L_02AD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0469:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0471], ebx
cmp dword ptr [_Lt_0471], 24
jne .L_02B0
mov dword ptr [_Lt_0471], 9
.L_02B0:
.L_02AF:
mov ebx, dword ptr [_Lt_0471]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0472], eax
jmp .L_02AB
.L_02AC:
mov dword ptr [_Lt_0470], -1
mov dword ptr [_Lt_0471], -2147483648
mov dword ptr [_Lt_0472], -1
.L_02AB:
cmp dword ptr [ebp+16], 0
je .L_02B2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0473], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02B3
mov dword ptr [ebp-4], 24
jmp .L_046A
.L_02B3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046A:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0474], ebx
cmp dword ptr [_Lt_0474], 24
jne .L_02B6
mov dword ptr [_Lt_0474], 9
.L_02B6:
.L_02B5:
mov ebx, dword ptr [_Lt_0474]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0475], eax
jmp .L_02B1
.L_02B2:
mov dword ptr [_Lt_0473], -1
mov dword ptr [_Lt_0474], -2147483648
mov dword ptr [_Lt_0475], -1
.L_02B1:
cmp dword ptr [ebp+20], 0
je .L_02B8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0476], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02B9
mov dword ptr [ebp-4], 24
jmp .L_046B
.L_02B9:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046B:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0477], ebx
cmp dword ptr [_Lt_0477], 24
jne .L_02BC
mov dword ptr [_Lt_0477], 9
.L_02BC:
.L_02BB:
mov ebx, dword ptr [_Lt_0477]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0478], eax
jmp .L_02B7
.L_02B8:
mov dword ptr [_Lt_0476], -1
mov dword ptr [_Lt_0477], -2147483648
mov dword ptr [_Lt_0478], -1
.L_02B7:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+20], 0
jne .L_02BE
cmp dword ptr [_Lt_0473], 0
je .L_02C0
mov eax, dword ptr [_Lt_0474]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0474]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02C2
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_047B], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_047B]
mov eax, dword ptr [_Lt_0475]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0475]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0474], 8
.L_02C2:
.L_02C1:
mov ebx, dword ptr [_Lt_0474]
and ebx, 480
je .L_02C3
mov dword ptr [ebp-4], 24
jmp .L_046C
.L_02C3:
mov ebx, dword ptr [_Lt_0474]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046C:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0475]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0475]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02C0:
.L_02BF:
jmp .L_02BD
.L_02BE:
cmp dword ptr [_Lt_0473], 4
jne .L_02C6
mov eax, dword ptr [_Lt_0474]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0474]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02C8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_047B], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_047B]
mov eax, dword ptr [_Lt_0475]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0475]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0474], 8
.L_02C8:
.L_02C7:
mov ebx, dword ptr [_Lt_0474]
and ebx, 480
je .L_02C9
mov dword ptr [ebp-8], 24
jmp .L_046D
.L_02C9:
mov ebx, dword ptr [_Lt_0474]
and ebx, 31
mov dword ptr [ebp-8], ebx
.L_046D:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0475]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0475]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02C6:
.L_02C5:
mov eax, dword ptr [_Lt_0471]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0471]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02CC
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_047B], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_047B]
mov eax, dword ptr [_Lt_0472]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0472]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0471], 8
.L_02CC:
.L_02CB:
mov ebx, dword ptr [_Lt_0471]
and ebx, 480
je .L_02CD
mov dword ptr [ebp-4], 24
jmp .L_046E
.L_02CD:
mov ebx, dword ptr [_Lt_0471]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046E:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_0472]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0472]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_02BD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_02D0
.L_02D2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITADD
add esp, 8
jmp .L_02CF
.L_02D3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSUB
add esp, 8
jmp .L_02CF
.L_02D4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMUL
add esp, 8
jmp .L_02CF
.L_02D5:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDIV
add esp, 8
jmp .L_02CF
.L_02D6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITINTDIV
add esp, 8
jmp .L_02CF
.L_02D7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMOD
add esp, 8
jmp .L_02CF
.L_02D8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSHL
add esp, 8
jmp .L_02CF
.L_02D9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSHR
add esp, 8
jmp .L_02CF
.L_02DA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITAND
add esp, 8
jmp .L_02CF
.L_02DB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITOR
add esp, 8
jmp .L_02CF
.L_02DC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITXOR
add esp, 8
jmp .L_02CF
.L_02DD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITEQV
add esp, 8
jmp .L_02CF
.L_02DE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITIMP
add esp, 8
jmp .L_02CF
.L_02DF:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITATN2
add esp, 8
jmp .L_02CF
.L_02E0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITPOW
add esp, 8
jmp .L_02CF
.L_02D0:
mov eax, dword ptr [ebp-4]
add eax, 4294967268
cmp eax, 36
ja .L_02CF
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_02E1+eax*4-112]
_.L_02E1:
.int .L_02D2
.int .L_02D3
.int .L_02D4
.int .L_02D5
.int .L_02D6
.int .L_02D7
.int .L_02DA
.int .L_02DB
.int .L_02CF
.int .L_02CF
.int .L_02DC
.int .L_02DD
.int .L_02DE
.int .L_02D8
.int .L_02D9
.int .L_02E0
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02CF
.int .L_02DF
.L_02CF:
cmp dword ptr [ebp+20], 0
je .L_02E3
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
je .L_02E5
mov eax, dword ptr [_Lt_0477]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0477]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_02E7
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_047B], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+20]
push dword ptr [_Lt_047B]
mov eax, dword ptr [_Lt_0478]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0478]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0477], 8
.L_02E7:
.L_02E6:
mov ebx, dword ptr [_Lt_0477]
and ebx, 480
je .L_02E8
mov dword ptr [ebp-4], 24
jmp .L_046F
.L_02E8:
mov ebx, dword ptr [_Lt_0477]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_046F:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+20]
mov ebx, dword ptr [_Lt_0478]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0478]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
push dword ptr [ebp+12]
push dword ptr [ebp+20]
call _EMITMOV
add esp, 8
.L_02E5:
.L_02E4:
.L_02E3:
.L_02E2:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.L_02AA:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0470,4
.balign 4
	.lcomm	_Lt_0471,4
.balign 4
	.lcomm	_Lt_0472,4
.balign 4
	.lcomm	_Lt_0473,4
.balign 4
	.lcomm	_Lt_0474,4
.balign 4
	.lcomm	_Lt_0475,4
.balign 4
	.lcomm	_Lt_0476,4
.balign 4
	.lcomm	_Lt_0477,4
.balign 4
	.lcomm	_Lt_0478,4
.balign 4
	.lcomm	_Lt_047B,4

.section .text
.balign 16
_HFLUSHCOMP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_02EA:
cmp dword ptr [ebp+12], 0
je .L_02ED
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0488], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02EE
mov dword ptr [ebp-4], 24
jmp .L_0482
.L_02EE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0482:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0489], ebx
cmp dword ptr [_Lt_0489], 24
jne .L_02F1
mov dword ptr [_Lt_0489], 9
.L_02F1:
.L_02F0:
mov ebx, dword ptr [_Lt_0489]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_048A], eax
jmp .L_02EC
.L_02ED:
mov dword ptr [_Lt_0488], -1
mov dword ptr [_Lt_0489], -2147483648
mov dword ptr [_Lt_048A], -1
.L_02EC:
cmp dword ptr [ebp+16], 0
je .L_02F3
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_048B], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02F4
mov dword ptr [ebp-4], 24
jmp .L_0483
.L_02F4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0483:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_048C], ebx
cmp dword ptr [_Lt_048C], 24
jne .L_02F7
mov dword ptr [_Lt_048C], 9
.L_02F7:
.L_02F6:
mov ebx, dword ptr [_Lt_048C]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_048D], eax
jmp .L_02F2
.L_02F3:
mov dword ptr [_Lt_048B], -1
mov dword ptr [_Lt_048C], -2147483648
mov dword ptr [_Lt_048D], -1
.L_02F2:
cmp dword ptr [ebp+20], 0
je .L_02F9
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_048E], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_02FA
mov dword ptr [ebp-4], 24
jmp .L_0484
.L_02FA:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0484:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_048F], ebx
cmp dword ptr [_Lt_048F], 24
jne .L_02FD
mov dword ptr [_Lt_048F], 9
.L_02FD:
.L_02FC:
mov ebx, dword ptr [_Lt_048F]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0490], eax
jmp .L_02F8
.L_02F9:
mov dword ptr [_Lt_048E], -1
mov dword ptr [_Lt_048F], -2147483648
mov dword ptr [_Lt_0490], -1
.L_02F8:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call _HLOADIDX
add esp, 4
mov dword ptr [_Lt_0491], 0
cmp dword ptr [ebp+20], 0
jne .L_02FF
cmp dword ptr [_Lt_048D], 0
jne .L_0301
cmp dword ptr [_Lt_048B], 0
je .L_0303
cmp dword ptr [_Lt_048A], 1
je .L_0305
mov dword ptr [_Lt_0491], -1
.L_0305:
.L_0304:
.L_0303:
.L_0302:
.L_0301:
.L_0300:
.L_02FF:
.L_02FE:
mov eax, dword ptr [_Lt_048B]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_Lt_0491]
je .L_0307
mov eax, dword ptr [_Lt_048C]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_048C]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0309
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0495], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0495]
mov eax, dword ptr [_Lt_048D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_048D]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_048C], 8
.L_0309:
.L_0308:
mov ebx, dword ptr [_Lt_048C]
and ebx, 480
je .L_030A
mov dword ptr [ebp-4], 24
jmp .L_0485
.L_030A:
mov ebx, dword ptr [_Lt_048C]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_0485:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_048D]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_048D]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_048B], 4
.L_0307:
.L_0306:
mov dword ptr [_Lt_0491], 0
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
je .L_030D
mov dword ptr [_Lt_0491], -1
jmp .L_030C
.L_030D:
cmp dword ptr [_Lt_048A], 1
jne .L_030E
mov dword ptr [_Lt_0491], -1
jmp .L_030C
.L_030E:
cmp dword ptr [_Lt_0488], 0
jne .L_030F
mov dword ptr [_Lt_0491], -1
jmp .L_030C
.L_030F:
mov ecx, dword ptr [_Lt_0488]
cmp ecx, 5
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_048B]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0310
mov dword ptr [_Lt_0491], -1
jmp .L_030C
.L_0310:
cmp dword ptr [_Lt_048B], 4
je .L_0311
cmp dword ptr [_Lt_048B], 0
je .L_0313
mov dword ptr [_Lt_0491], -1
.L_0313:
.L_0312:
jmp .L_030C
.L_0311:
cmp dword ptr [_Lt_0488], 5
jne .L_0314
mov dword ptr [_Lt_0491], -1
.L_0314:
.L_030C:
mov eax, dword ptr [_Lt_0488]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_Lt_0491]
je .L_0316
mov eax, dword ptr [_Lt_0489]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0489]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0318
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+52]
mov dword ptr [_Lt_0495], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0495]
mov eax, dword ptr [_Lt_048A]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_048A]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [_Lt_0489], 8
.L_0318:
.L_0317:
mov ecx, dword ptr [_Lt_0489]
and ecx, 480
je .L_0319
mov dword ptr [ebp-4], 24
jmp .L_0486
.L_0319:
mov ecx, dword ptr [_Lt_0489]
and ecx, 31
mov dword ptr [ebp-4], ecx
.L_0486:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
push dword ptr [_SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [_Lt_048A]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_048A]
mov eax, dword ptr [_REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
.L_0316:
.L_0315:
cmp dword ptr [ebp+20], 0
je .L_031C
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
je .L_031E
mov eax, dword ptr [_Lt_048F]
and eax, 480
je .L_031F
mov dword ptr [ebp-4], 24
jmp .L_0487
.L_031F:
mov eax, dword ptr [_Lt_048F]
and eax, 31
mov dword ptr [ebp-4], eax
.L_0487:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [_Lt_0490]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0490]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 4
.L_031E:
.L_031D:
.L_031C:
.L_031B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0322
.L_0324:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITEQ
add esp, 16
jmp .L_0321
.L_0325:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITNE
add esp, 16
jmp .L_0321
.L_0326:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITGT
add esp, 16
jmp .L_0321
.L_0327:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITLT
add esp, 16
jmp .L_0321
.L_0328:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITLE
add esp, 16
jmp .L_0321
.L_0329:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITGE
add esp, 16
jmp .L_0321
.L_0322:
mov eax, dword ptr [ebp-4]
add eax, 4294967251
cmp eax, 5
ja .L_0321
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_032A+eax*4-180]
_.L_032A:
.int .L_0324
.int .L_0326
.int .L_0327
.int .L_0325
.int .L_0329
.int .L_0328
.L_0321:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
cmp dword ptr [ebp+20], 0
je .L_032C
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.L_032C:
.L_032B:
.L_02EB:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_049D,12
.balign 4
	.lcomm	_Lt_0488,4
.balign 4
	.lcomm	_Lt_0489,4
.balign 4
	.lcomm	_Lt_048A,4
.balign 4
	.lcomm	_Lt_048B,4
.balign 4
	.lcomm	_Lt_048C,4
.balign 4
	.lcomm	_Lt_048D,4
.balign 4
	.lcomm	_Lt_048E,4
.balign 4
	.lcomm	_Lt_048F,4
.balign 4
	.lcomm	_Lt_0490,4
.balign 4
	.lcomm	_Lt_0495,4
.balign 4
	.lcomm	_Lt_0491,4

.section .text
.balign 16
_HSPILLREGS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_032D:
mov dword ptr [ebp-16], 0
.L_0332:
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-12], eax
.L_0333:
cmp dword ptr [ebp-12], -1
je .L_0334
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .L_0336
lea eax, [ebp-8]
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+36]
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call dword ptr [_IR+264]
add esp, 8
.L_0336:
.L_0335:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-12], eax
jmp .L_0333
.L_0334:
.L_0330:
inc dword ptr [ebp-16]
.L_032F:
cmp dword ptr [ebp-16], 1
jle .L_0332
.L_0331:
.L_032E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHSTORE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0337:
cmp dword ptr [ebp+8], 87
jne .L_033A
call _HSPILLREGS
jmp .L_0338
.L_033A:
.L_0339:
cmp dword ptr [ebp+12], 0
je .L_033C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04A1], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_033D
mov dword ptr [ebp-4], 24
jmp .L_049E
.L_033D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_049E:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04A2], ebx
cmp dword ptr [_Lt_04A2], 24
jne .L_0340
mov dword ptr [_Lt_04A2], 9
.L_0340:
.L_033F:
mov ebx, dword ptr [_Lt_04A2]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04A3], eax
jmp .L_033B
.L_033C:
mov dword ptr [_Lt_04A1], -1
mov dword ptr [_Lt_04A2], -2147483648
mov dword ptr [_Lt_04A3], -1
.L_033B:
cmp dword ptr [ebp+16], 0
je .L_0342
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04A4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0343
mov dword ptr [ebp-4], 24
jmp .L_049F
.L_0343:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_049F:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04A5], ebx
cmp dword ptr [_Lt_04A5], 24
jne .L_0346
mov dword ptr [_Lt_04A5], 9
.L_0346:
.L_0345:
mov ebx, dword ptr [_Lt_04A5]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04A6], eax
jmp .L_0341
.L_0342:
mov dword ptr [_Lt_04A4], -1
mov dword ptr [_Lt_04A5], -2147483648
mov dword ptr [_Lt_04A6], -1
.L_0341:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov eax, dword ptr [_Lt_04A4]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04A4]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_04A3]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .L_0348
mov ebx, dword ptr [_Lt_04A5]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_04A5]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_034A
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_04AC], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_04AC]
mov ebx, dword ptr [_Lt_04A6]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04A6]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_04A5], 8
.L_034A:
.L_0349:
mov eax, dword ptr [_Lt_04A5]
and eax, 480
je .L_034B
mov dword ptr [ebp-4], 24
jmp .L_04A0
.L_034B:
mov eax, dword ptr [_Lt_04A5]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04A0:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [_Lt_04A6]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04A6]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_0348:
.L_0347:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSTORE
add esp, 8
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.L_0338:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04A1,4
.balign 4
	.lcomm	_Lt_04A2,4
.balign 4
	.lcomm	_Lt_04A3,4
.balign 4
	.lcomm	_Lt_04A4,4
.balign 4
	.lcomm	_Lt_04A5,4
.balign 4
	.lcomm	_Lt_04A6,4
.balign 4
	.lcomm	_Lt_04AC,4

.section .text
.balign 16
_HFLUSHLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_034D:
cmp dword ptr [ebp+12], 0
je .L_0350
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04B0], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0351
mov dword ptr [ebp-4], 24
jmp .L_04AD
.L_0351:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04AD:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04B1], ebx
cmp dword ptr [_Lt_04B1], 24
jne .L_0354
mov dword ptr [_Lt_04B1], 9
.L_0354:
.L_0353:
mov ebx, dword ptr [_Lt_04B1]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04B2], eax
jmp .L_034F
.L_0350:
mov dword ptr [_Lt_04B0], -1
mov dword ptr [_Lt_04B1], -2147483648
mov dword ptr [_Lt_04B2], -1
.L_034F:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+8], 85
jne .L_0356
.L_0357:
mov eax, dword ptr [_Lt_04B1]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04B1]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0359
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04B5], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04B5]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_04B1], 8
.L_0359:
.L_0358:
mov ebx, dword ptr [_Lt_04B1]
and ebx, 480
je .L_035A
mov dword ptr [ebp-4], 24
jmp .L_04AE
.L_035A:
mov ebx, dword ptr [_Lt_04B1]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04AE:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04B2]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
jmp .L_0355
.L_0356:
cmp dword ptr [ebp+8], 86
jne .L_035C
.L_035D:
cmp dword ptr [_Lt_04B0], 4
jne .L_035F
mov eax, dword ptr [_Lt_04B1]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04B1]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0361
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04B5], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04B5]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
push dword ptr [_SYMB_DTYPETB+228]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04B2]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_04B8], eax
jmp .L_0360
.L_0361:
mov eax, dword ptr [_Lt_04B1]
and eax, 480
je .L_0362
mov dword ptr [ebp-4], 24
jmp .L_04AF
.L_0362:
mov eax, dword ptr [_Lt_04B1]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04AF:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_04B8], eax
.L_0360:
jmp .L_035E
.L_035F:
mov dword ptr [_Lt_04B8], -1
.L_035E:
push offset _Lt_04B9
push offset _Lt_04BA
push dword ptr [_Lt_04B2]
push dword ptr [_Lt_04B1]
call dword ptr [_EMIT+180]
add esp, 16
mov eax, dword ptr [_Lt_04B8]
cmp dword ptr [_Lt_04BA], eax
je .L_0365
mov eax, dword ptr [_Lt_04B1]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04B1]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0367
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04B5], eax
push dword ptr [ebp+16]
push dword ptr [_Lt_04B5]
push dword ptr [_Lt_04B9]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [_Lt_04B5]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_04B5]
mov dword ptr [eax], 4
.L_0367:
.L_0366:
push 0
push dword ptr [ebp+16]
push dword ptr [_Lt_04BA]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 4
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+96], 1
je .L_0369
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+16], 0
.L_0369:
.L_0368:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITLOAD
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.L_0365:
.L_0364:
.L_035C:
.L_0355:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.L_034E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04B0,4
.balign 4
	.lcomm	_Lt_04B1,4
.balign 4
	.lcomm	_Lt_04B2,4
.balign 4
	.lcomm	_Lt_04B8,4
.balign 4
	.lcomm	_Lt_04B5,4
.balign 4
	.lcomm	_Lt_04BA,4
.balign 4
	.lcomm	_Lt_04B9,4

.section .text
.balign 16
_HFLUSHCONVERT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_036A:
cmp dword ptr [ebp+12], 0
je .L_036D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04C3], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_036E
mov dword ptr [ebp-4], 24
jmp .L_04BD
.L_036E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04BD:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04C4], ebx
cmp dword ptr [_Lt_04C4], 24
jne .L_0371
mov dword ptr [_Lt_04C4], 9
.L_0371:
.L_0370:
mov ebx, dword ptr [_Lt_04C4]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04C5], eax
jmp .L_036C
.L_036D:
mov dword ptr [_Lt_04C3], -1
mov dword ptr [_Lt_04C4], -2147483648
mov dword ptr [_Lt_04C5], -1
.L_036C:
cmp dword ptr [ebp+16], 0
je .L_0373
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04C6], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_0374
mov dword ptr [ebp-4], 24
jmp .L_04BE
.L_0374:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04BE:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04C7], ebx
cmp dword ptr [_Lt_04C7], 24
jne .L_0377
mov dword ptr [_Lt_04C7], 9
.L_0377:
.L_0376:
mov ebx, dword ptr [_Lt_04C7]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04C8], eax
jmp .L_0372
.L_0373:
mov dword ptr [_Lt_04C6], -1
mov dword ptr [_Lt_04C7], -2147483648
mov dword ptr [_Lt_04C8], -1
.L_0372:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov dword ptr [_Lt_04C9], 0
mov eax, dword ptr [_Lt_04C8]
cmp eax, dword ptr [_Lt_04C5]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04C6]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0379
cmp dword ptr [_Lt_04C8], 1
jne .L_037B
mov ebx, dword ptr [_IR+272]
and ebx, 1
test ebx, ebx
je .L_037D
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+16], 0
jne .L_037F
jmp .L_036B
.L_037F:
jmp .L_037C
.L_037D:
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
mov ebx, dword ptr [_Lt_04C5]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04C5]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+20]
add esp, 16
jmp .L_036B
.L_037C:
.L_037B:
.L_037A:
push dword ptr [ebp+16]
call dword ptr [_IR+256]
add esp, 4
cmp eax, 2147483647
jne .L_0381
mov eax, dword ptr [_Lt_04C4]
and eax, 480
je .L_0382
mov dword ptr [ebp-4], 24
jmp .L_04BF
.L_0382:
mov eax, dword ptr [_Lt_04C4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04BF:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .L_0387
.L_0388:
cmp dword ptr [ebp-8], 8
jne .L_0386
.L_0387:
jmp .L_0384
.L_0386:
mov ebx, dword ptr [_Lt_04C7]
and ebx, 480
je .L_038A
mov dword ptr [ebp-12], 24
jmp .L_04C0
.L_038A:
mov ebx, dword ptr [_Lt_04C7]
and ebx, 31
mov dword ptr [ebp-12], ebx
.L_04C0:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1
je .L_038F
.L_0390:
cmp dword ptr [ebp-16], 8
jne .L_038E
.L_038F:
jmp .L_038C
.L_038E:
mov dword ptr [_Lt_04C9], -1
.L_0391:
.L_038C:
.L_0389:
.L_0384:
.L_0381:
.L_0380:
.L_0379:
.L_0378:
cmp dword ptr [_Lt_04C9], 0
je .L_0393
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
mov ecx, dword ptr [_Lt_04C5]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_04C5]
mov ebx, dword ptr [_REGTB+ecx*4]
call dword ptr [ebx+20]
add esp, 16
jmp .L_0392
.L_0393:
cmp dword ptr [_Lt_04C6], 4
jne .L_0395
mov ebx, dword ptr [_Lt_04C7]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_04C7]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0397
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+52]
mov dword ptr [_Lt_04CE], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_04CE]
mov ebx, dword ptr [_Lt_04C8]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04C8]
mov ecx, dword ptr [_REGTB+ebx*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [_Lt_04C7], 8
.L_0397:
.L_0396:
mov ecx, dword ptr [_Lt_04C7]
and ecx, 480
je .L_0398
mov dword ptr [ebp-8], 24
jmp .L_04C1
.L_0398:
mov ecx, dword ptr [_Lt_04C7]
and ecx, 31
mov dword ptr [ebp-8], ecx
.L_04C1:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
push dword ptr [_SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+16]
mov ecx, dword ptr [_Lt_04C8]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_04C8]
mov ebx, dword ptr [_REGTB+ecx*4]
call dword ptr [ebx]
add esp, 16
.L_0395:
.L_0394:
mov ebx, dword ptr [_Lt_04C4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_04C4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_039B
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+52]
mov dword ptr [_Lt_04CE], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04CE]
mov ebx, dword ptr [_Lt_04C5]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04C5]
mov ecx, dword ptr [_REGTB+ebx*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [_Lt_04CE]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [_Lt_04CE]
mov dword ptr [eax], 4
mov dword ptr [_Lt_04C4], 8
.L_039B:
.L_039A:
mov eax, dword ptr [_Lt_04C4]
and eax, 480
je .L_039C
mov dword ptr [ebp-4], 24
jmp .L_04C2
.L_039C:
mov eax, dword ptr [_Lt_04C4]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04C2:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_04C5]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04C5]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
.L_0392:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITLOAD
add esp, 8
cmp dword ptr [_Lt_04C9], 0
jne .L_039F
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
jmp .L_039E
.L_039F:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+12], -1
.L_039E:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.L_036B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04C3,4
.balign 4
	.lcomm	_Lt_04C4,4
.balign 4
	.lcomm	_Lt_04C5,4
.balign 4
	.lcomm	_Lt_04C6,4
.balign 4
	.lcomm	_Lt_04C7,4
.balign 4
	.lcomm	_Lt_04C8,4
.balign 4
	.lcomm	_Lt_04C9,4
.balign 4
	.lcomm	_Lt_04CE,4

.section .text
.balign 16
_HFLUSHADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03A0:
cmp dword ptr [ebp+12], 0
je .L_03A3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04D5], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03A4
mov dword ptr [ebp-4], 24
jmp .L_04D1
.L_03A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D1:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04D6], ebx
cmp dword ptr [_Lt_04D6], 24
jne .L_03A7
mov dword ptr [_Lt_04D6], 9
.L_03A7:
.L_03A6:
mov ebx, dword ptr [_Lt_04D6]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04D7], eax
jmp .L_03A2
.L_03A3:
mov dword ptr [_Lt_04D5], -1
mov dword ptr [_Lt_04D6], -2147483648
mov dword ptr [_Lt_04D7], -1
.L_03A2:
cmp dword ptr [ebp+16], 0
je .L_03A9
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04D8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03AA
mov dword ptr [ebp-4], 24
jmp .L_04D2
.L_03AA:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D2:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04D9], ebx
cmp dword ptr [_Lt_04D9], 24
jne .L_03AD
mov dword ptr [_Lt_04D9], 9
.L_03AD:
.L_03AC:
mov ebx, dword ptr [_Lt_04D9]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04DA], eax
jmp .L_03A8
.L_03A9:
mov dword ptr [_Lt_04D8], -1
mov dword ptr [_Lt_04D9], -2147483648
mov dword ptr [_Lt_04DA], -1
.L_03A8:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
cmp dword ptr [_Lt_04D5], 4
jne .L_03AF
mov eax, dword ptr [_Lt_04D6]
and eax, 480
je .L_03B0
mov dword ptr [ebp-4], 24
jmp .L_04D3
.L_03B0:
mov eax, dword ptr [_Lt_04D6]
and eax, 31
mov dword ptr [ebp-4], eax
.L_04D3:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_04D7]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04D7]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.L_03AF:
.L_03AE:
cmp dword ptr [_Lt_04D8], 4
jne .L_03B3
mov ebx, dword ptr [_Lt_04D9]
and ebx, 480
je .L_03B4
mov dword ptr [ebp-4], 24
jmp .L_04D4
.L_03B4:
mov ebx, dword ptr [_Lt_04D9]
and ebx, 31
mov dword ptr [ebp-4], ebx
.L_04D4:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_04DA]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04DA]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.L_03B3:
.L_03B2:
cmp dword ptr [ebp+8], 22
jne .L_03B7
.L_03B8:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITADDROF
add esp, 8
jmp .L_03B6
.L_03B7:
cmp dword ptr [ebp+8], 76
jne .L_03B9
.L_03BA:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITDEREF
add esp, 8
.L_03B9:
.L_03B6:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.L_03A1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04D5,4
.balign 4
	.lcomm	_Lt_04D6,4
.balign 4
	.lcomm	_Lt_04D7,4
.balign 4
	.lcomm	_Lt_04D8,4
.balign 4
	.lcomm	_Lt_04D9,4
.balign 4
	.lcomm	_Lt_04DA,4

.section .text
.balign 16
_HFLUSHMEM:
push ebp
mov ebp, esp
sub esp, 4
.L_03BB:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_03BE
.L_03C0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMMOVE
add esp, 12
jmp .L_03BD
.L_03C1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMSWAP
add esp, 12
jmp .L_03BD
.L_03C2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMCLEAR
add esp, 8
jmp .L_03BD
.L_03C3:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITSTKCLEAR
add esp, 8
jmp .L_03BD
.L_03BE:
mov eax, dword ptr [ebp-4]
add eax, 4294967191
cmp eax, 3
ja .L_03BD
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_03C4+eax*4-420]
_.L_03C4:
.int .L_03C0
.int .L_03C1
.int .L_03C2
.int .L_03C3
.L_03BD:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.L_03BC:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHDBG:
push ebp
mov ebp, esp
sub esp, 4
.L_03C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_03C8
.L_03CA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDBGLINEBEGIN
add esp, 12
jmp .L_03C7
.L_03CB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDBGLINEEND
add esp, 8
jmp .L_03C7
.L_03CC:
push dword ptr [ebp+16]
call _EMITDBGSCOPEBEGIN
add esp, 4
jmp .L_03C7
.L_03CD:
push dword ptr [ebp+16]
call _EMITDBGSCOPEEND
add esp, 4
jmp .L_03C7
.L_03C8:
mov eax, dword ptr [ebp-4]
add eax, 4294967183
cmp eax, 3
ja .L_03C7
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_03CE+eax*4-452]
_.L_03CE:
.int .L_03CA
.int .L_03CB
.int .L_03CC
.int .L_03CD
.L_03C7:
.L_03C6:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHLIT:
push ebp
mov ebp, esp
.L_03CF:
cmp dword ptr [ebp+8], 117
jne .L_03D2
.L_03D3:
push dword ptr [ebp+12]
call _EMITCOMMENT
add esp, 4
jmp .L_03D1
.L_03D2:
cmp dword ptr [ebp+8], 118
jne .L_03D4
.L_03D5:
push dword ptr [ebp+12]
call _EMITASM
add esp, 4
.L_03D4:
.L_03D1:
cmp dword ptr [ebp+12], 0
je .L_03D7
push dword ptr [ebp+12]
call _free
add esp, 4
.L_03D7:
.L_03D6:
.L_03D0:
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03D8:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_03DB
jmp .L_03D9
.L_03DB:
.L_03DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_03DD
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], -1
je .L_03DF
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HFREEREG
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], 0
.L_03DF:
.L_03DE:
.L_03DD:
.L_03DC:
.L_03D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEREG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03E0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .L_03E3
jmp .L_03E1
.L_03E3:
.L_03E2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFREEIDX
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .L_03E5
jmp .L_03E1
.L_03E5:
.L_03E4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], -1
jne .L_03E7
jmp .L_03E1
.L_03E7:
.L_03E6:
mov dword ptr [ebp-8], 2147483647
cmp dword ptr [ebp+12], 0
jne .L_03E9
push dword ptr [ebp+8]
call dword ptr [_IR+256]
add esp, 4
mov dword ptr [ebp-8], eax
.L_03E9:
.L_03E8:
cmp dword ptr [ebp-8], 2147483647
jne .L_03EB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .L_03ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+12], -1
je .L_03EF
push -1
push dword ptr [ebp-12]
call _HFREEREG
add esp, 8
.L_03EF:
.L_03EE:
.L_03ED:
.L_03EC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .L_03F0
mov dword ptr [ebp-16], 24
jmp .L_04DB
.L_03F0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_04DB:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
.L_03EB:
.L_03EA:
.L_03E1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__GETDISTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_03F2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 0
jne .L_03F5
mov dword ptr [ebp-4], 2147483647
jmp .L_03F3
.L_03F5:
.L_03F4:
push dword ptr [_CTX+60]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03F7
mov dword ptr [ebp-4], 2147483647
jmp .L_03F3
.L_03F7:
.L_03F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebx]
sub ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
jge .L_03F9
mov dword ptr [ebp-4], 2147483647
jmp .L_03F8
.L_03F9:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.L_03F8:
.L_03F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__LOADVR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.L_03FA:
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
je .L_03FD
cmp dword ptr [ebp+16], 0
jne .L_03FF
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
push dword ptr [ebp+12]
lea ebx, [ebp-68]
push ebx
call _EMITLOAD
add esp, 8
.L_03FF:
.L_03FE:
push -1
push dword ptr [ebp+12]
call _HFREEIDX
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
.L_03FD:
.L_03FC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_ENV+116]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0401
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], 1
.L_0401:
.L_0400:
.L_03FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__STOREVR:
push ebp
mov ebp, esp
sub esp, 144
push ebx
push esi
.L_0402:
cmp dword ptr [ebp+12], 0
je .L_0405
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
.L_0405:
.L_0404:
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
je .L_0407
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
.L_0407:
.L_0406:
push dword ptr [ebp+8]
call dword ptr [_IR+256]
add esp, 4
cmp eax, 2147483647
je .L_0409
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDANDALLOCATETEMPVAR
add esp, 4
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
je .L_040B
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
.L_040B:
.L_040A:
cmp dword ptr [_ENV+116], 1
jl .L_040D
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+16], 1
.L_040D:
.L_040C:
lea esi, [ebp-68]
push esi
push dword ptr [ebp+8]
call _EMITSTORE
add esp, 8
.L_0409:
.L_0408:
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
je .L_040F
push dword ptr [ebp-124]
push dword ptr [_REGTB]
mov ecx, dword ptr [_REGTB]
call dword ptr [ecx+12]
add esp, 8
.L_040F:
.L_040E:
mov ecx, dword ptr [ebp-64]
and ecx, 480
je .L_0410
mov dword ptr [ebp-144], 24
jmp .L_04DE
.L_0410:
mov ecx, dword ptr [ebp-64]
and ecx, 31
mov dword ptr [ebp-144], ecx
.L_04DE:
mov ecx, dword ptr [ebp-144]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-140], esi
push dword ptr [ebp-56]
mov esi, dword ptr [ebp-140]
push dword ptr [_REGTB+esi*4]
mov esi, dword ptr [ebp-140]
mov ecx, dword ptr [_REGTB+esi*4]
call dword ptr [ecx+12]
add esp, 8
.L_0403:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__XCHGTOS:
push ebp
mov ebp, esp
.L_0412:
mov dword ptr [_Lt_04E5], 4
mov dword ptr [_Lt_04E5+4], 16
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_04E5+12], eax
push offset _Lt_04E5
call _EMITXCHGTOS
add esp, 4
.L_0413:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04E5,68

.section .data
.balign 4

.globl _IRTAC_VTBL
_IRTAC_VTBL:
.int __INIT
.int __END
.int __EMITBEGIN
.int __EMITEND
.int __GETOPTIONVALUE
.long 0
.int __PROCBEGIN
.int __PROCEND
.int __PROCALLOCARG
.int __PROCALLOCLOCAL
.int __PROCGETFRAMEREGNAME
.int __SCOPEBEGIN
.int __SCOPEEND
.int __PROCALLOCSTATICVARS
.int __EMITCONVERT
.int __EMITLABEL
.int __EMITLABELNF
.int __EMITRETURN
.int __EMITPROCBEGIN
.int __EMITPROCEND
.int __EMITPUSHARG
.int __EMITASMLINE
.int __EMITCOMMENT
.int __EMITBOP
.int __EMITUOP
.int __EMITSTORE
.int __EMITSPILLREGS
.int __EMITLOAD
.int __EMITLOADRES
.int __EMITSTACK
.int __EMITADDR
.int __EMITCALL
.int __EMITCALLPTR
.int __EMITSTACKALIGN
.int __EMITJUMPPTR
.int __EMITBRANCH
.int __EMITJMPTB
.int __EMITMEM
.int __EMITMACRO
.int __EMITSCOPEBEGIN
.int __EMITSCOPEEND
.int __EMITDECL
.int __EMITDBG
.int __EMITVARINIBEGIN
.int __EMITVARINIEND
.int __EMITVARINII
.int __EMITVARINIF
.int __EMITVARINIOFS
.int __EMITVARINISTR
.int __EMITVARINIWSTR
.int __EMITVARINIPAD
.int __EMITVARINISCOPEBEGIN
.int __EMITVARINISCOPEEND
.int __EMITFBCTINFBEGIN
.int __EMITFBCTINFSTRING
.int __EMITFBCTINFEND
.int __ALLOCVREG
.int __ALLOCVRIMM
.int __ALLOCVRIMMF
.int __ALLOCVRVAR
.int __ALLOCVRIDX
.int __ALLOCVRPTR
.int __ALLOCVROFS
.int __SETVREGDATATYPE
.int __GETDISTANCE
.int __LOADVR
.int __STOREVR
.int __XCHGTOS

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_0072,36
.balign 4
	.lcomm	_CTX,120
.balign 4
	.lcomm	_REGTB,8

.section .data
.balign 4
_Lt_011E:	.ascii	"+\0"

.section .ctors
.int _fb_ctor__irztac
