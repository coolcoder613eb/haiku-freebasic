	.intel_syntax noprefix

.section .text
.balign 16

.globl OBJINFOREADOBJ
OBJINFOREADOBJ:
.type OBJINFOREADOBJ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_015B:
sub esp, 12
push dword ptr [ebp+8]
call OBJINFOINIT
add esp, 16
sub esp, 8
push offset OBJDATA
push dword ptr [ebp+8]
call HLOADFILE
add esp, 16
cmp dword ptr [OBJDATA+4], 0
jne .L_015E
jmp .L_015C
.L_015E:
.L_015D:
call HLOADFBCTINFFROMOBJ
.L_015C:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOREADOBJ, .-OBJINFOREADOBJ
.cfi_endproc
.balign 16

.globl OBJINFOREADLIBFILE
OBJINFOREADLIBFILE:
.type OBJINFOREADLIBFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_015F:
sub esp, 12
push dword ptr [ebp+8]
call OBJINFOINIT
add esp, 16
sub esp, 8
push offset ARDATA
push dword ptr [ebp+8]
call HLOADFILE
add esp, 16
cmp dword ptr [ARDATA+4], 0
jne .L_0162
jmp .L_0160
.L_0162:
.L_0161:
call HLOADOBJFROMAR
cmp dword ptr [OBJDATA+4], 0
jne .L_0164
jmp .L_0160
.L_0164:
.L_0163:
call HLOADFBCTINFFROMOBJ
.L_0160:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOREADLIBFILE, .-OBJINFOREADLIBFILE
.cfi_endproc
.balign 16

.globl OBJINFOREADLIB
OBJINFOREADLIB:
.type OBJINFOREADLIB, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 52
push ebx
.L_0165:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0168
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0167
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
add esp, 28
push eax
push -1
push offset Lt_0173
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+12]
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.L_016B:
cmp dword ptr [ebp-4], 0
je .L_016C
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push offset Lt_0173
push -1
sub esp, 4
push 2
push offset Lt_001A
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 24
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
push offset Lt_0174
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0174]
call HFILEEXISTS
add esp, 16
test eax, eax
je .L_0170
jmp .L_016C
.L_0170:
.L_016F:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_016B
.L_016C:
cmp dword ptr [ebp-4], 0
jne .L_0172
jmp .L_0166
.L_0172:
.L_0171:
sub esp, 12
push offset Lt_0174
call OBJINFOREADLIBFILE
add esp, 16
.L_0166:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOREADLIB, .-OBJINFOREADLIB
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0174,12
.balign 4
	.lcomm	Lt_0173,12

.section .text
.balign 16

.globl OBJINFOREADNEXT
OBJINFOREADNEXT:
.type OBJINFOREADNEXT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_017B:
cmp dword ptr [FBCTINF+4], 0
jg .L_017E
mov dword ptr [ebp-4], -1
jmp .L_017C
.L_017E:
.L_017D:
cmp dword ptr [PARSER+16], 0
je .L_0180
.L_0181:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jge .L_0182
cmp dword ptr [PARSER+20], 0
jge .L_0184
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax]
mov dword ptr [PARSER+20], ebx
inc dword ptr [PARSER]
mov ebx, dword ptr [PARSER+20]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+20]
cmp eax, 3
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0186
mov dword ptr [PARSER+20], -1
mov eax, dword ptr [FBCTINF+4]
mov dword ptr [PARSER], eax
mov dword ptr [ebp-4], -1
jmp .L_017C
.L_0186:
.L_0185:
.L_0184:
.L_0183:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jl .L_0188
mov dword ptr [ebp-4], -1
jmp .L_017C
.L_0188:
.L_0187:
inc dword ptr [PARSER]
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .L_018A
mov dword ptr [PARSER+20], -1
jmp .L_0181
.L_018A:
.L_0189:
sub esp, 12
push 0
push 0
sub esp, 12
call HGETNEXTSTRING
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [PARSER+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_018D
.L_018E:
mov dword ptr [ebp-4], 0
jmp .L_017C
jmp .L_018B
.L_018D:
cmp dword ptr [ebp-8], 2
jne .L_018F
.L_0190:
mov dword ptr [ebp-4], 1
jmp .L_017C
jmp .L_018B
.L_018F:
cmp dword ptr [ebp-8], 3
jne .L_0191
.L_0192:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 6
push offset Lt_0156
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0195
.L_0196:
sub esp, 12
push 0
push 0
sub esp, 12
call HGETNEXTSTRING
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
jle .L_0198
mov dword ptr [ebp-4], 4
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_017C
.L_0198:
.L_0197:
jmp .L_0193
.L_0195:
push 4
push offset Lt_0154
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0199
.L_019A:
mov dword ptr [ebp-4], 2
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .L_017C
.L_0199:
.L_0193:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.L_0191:
.L_018B:
jmp .L_0181
.L_0182:
jmp .L_017F
.L_0180:
sub esp, 12
push 0
push 0
sub esp, 12
call HGETNEXTSTRING
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-8], 0
.L_019E:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [ENTRIES+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A0
mov eax, dword ptr [ebp-8]
cmp dword ptr [ENTRIES+eax*8+4], 0
je .L_01A2
sub esp, 12
push 0
push 0
sub esp, 12
call HGETNEXTSTRING
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.L_01A2:
.L_01A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_017C
.L_01A0:
.L_019F:
.L_019C:
inc dword ptr [ebp-8]
.L_019B:
cmp dword ptr [ebp-8], 4
jle .L_019E
.L_019D:
.L_017F:
mov dword ptr [ebp-4], -1
.L_017C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOREADNEXT, .-OBJINFOREADNEXT
.cfi_endproc
.balign 16

.globl OBJINFOGETFILENAME
OBJINFOGETFILENAME:
.type OBJINFOGETFILENAME, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov dword ptr [ebp-4], 0
.L_01A5:
mov eax, dword ptr [PARSER+4]
mov dword ptr [ebp-4], eax
.L_01A6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOGETFILENAME, .-OBJINFOGETFILENAME
.cfi_endproc
.balign 16

.globl OBJINFOREADEND
OBJINFOREADEND:
.type OBJINFOREADEND, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_01A7:
cmp dword ptr [ARDATA], 0
je .L_01AA
sub esp, 12
push dword ptr [ARDATA]
call free
add esp, 16
jmp .L_01A9
.L_01AA:
cmp dword ptr [OBJDATA], 0
je .L_01AB
sub esp, 12
push dword ptr [OBJDATA]
call free
add esp, 16
.L_01AB:
.L_01A9:
call HRESETBUFFERS
.L_01A8:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOREADEND, .-OBJINFOREADEND
.cfi_endproc
.balign 16

.globl OBJINFOENCODE
OBJINFOENCODE:
.type OBJINFOENCODE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ENTRIES+eax*8]
mov dword ptr [ebp-4], ebx
.L_01AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOENCODE, .-OBJINFOENCODE
.cfi_endproc
.balign 16
fb_ctor__objinfo:
.type fb_ctor__objinfo, @function
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
.size fb_ctor__objinfo, .-fb_ctor__objinfo
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
.L_0013:
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
.L_0014:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
_ZN16OBJINFOPARSERCTXC1Ev:
.type _ZN16OBJINFOPARSERCTXC1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
.L_001F:
.L_0020:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN16OBJINFOPARSERCTXC1Ev, .-_ZN16OBJINFOPARSERCTXC1Ev
.cfi_endproc
.balign 16
_ZN16OBJINFOPARSERCTXaSERKS_:
.type _ZN16OBJINFOPARSERCTXaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0021:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
sub esp, 12
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 4
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.L_0022:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN16OBJINFOPARSERCTXaSERKS_, .-_ZN16OBJINFOPARSERCTXaSERKS_
.cfi_endproc
.balign 16
_ZN16OBJINFOPARSERCTXD1Ev:
.type _ZN16OBJINFOPARSERCTXD1Ev, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0025:
.L_0026:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 4
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
.size _ZN16OBJINFOPARSERCTXD1Ev, .-_ZN16OBJINFOPARSERCTXD1Ev
.cfi_endproc
.balign 16
HCHECKELF32_SH:
.type HCHECKELF32_SH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0029:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
imul ebx, 40
mov ecx, ebx
mov ebx, dword ptr [eax+32]
add ebx, ecx
mov eax, ebx
mov dword ptr [ebp-12], eax
mov ecx, dword ptr [ebp-12]
mov eax, ecx
sar eax, 31
add ecx, 40
adc eax, 0
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .L_002C
ja .L_01B4
cmp ecx, esi
jbe .L_002C
.L_01B4:
jmp .L_002A
.L_002C:
.L_002B:
mov esi, dword ptr [OBJDATA]
add esi, dword ptr [ebp-12]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+16]
mov ebx, 0
mov esi, dword ptr [ebp-8]
mov edi, dword ptr [esi+20]
mov eax, 0
add ecx, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_002E
ja .L_01B5
cmp ecx, eax
jbe .L_002E
.L_01B5:
jmp .L_002A
.L_002E:
.L_002D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_002A:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKELF32_SH, .-HCHECKELF32_SH
.cfi_endproc
.balign 16
HGETSECTIONNAMEELF32_SH:
.type HGETSECTIONNAMEELF32_SH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_002F:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKELF32_SH
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0032
jmp .L_0030
.L_0032:
.L_0031:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.L_0033:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0034
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .L_0036
jmp .L_0034
.L_0036:
.L_0035:
mov cl, byte ptr [ebp-20]
mov eax, offset Lt_01B8
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .L_0033
.L_0034:
mov ecx, offset Lt_01B8
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset Lt_01B8
mov dword ptr [ebp-4], ecx
.L_0030:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETSECTIONNAMEELF32_SH, .-HGETSECTIONNAMEELF32_SH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01B8,33

.section .text
.balign 16
HLOADFBCTINFFROMELF32_H:
.type HLOADFBCTINFFROMELF32_H, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 28
push ebx
push esi
push edi
.L_0037:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 52
jge .L_003A
jmp .L_0038
.L_003A:
.L_0039:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [ELFMAGIC+4], 1
call FBISHOSTBIGENDIAN
test eax, eax
je .L_003C
mov byte ptr [ELFMAGIC+5], 2
jmp .L_003B
.L_003C:
mov byte ptr [ELFMAGIC+5], 1
.L_003B:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 5
jne .L_003E
mov byte ptr [ELFMAGIC+7], 9
jmp .L_003D
.L_003E:
mov byte ptr [ELFMAGIC+7], 0
.L_003D:
mov dword ptr [ebp-20], 0
.L_0042:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ELFMAGIC+eax]
cmp ebx, ecx
je .L_0044
jmp .L_0038
.L_0044:
.L_0043:
.L_0040:
inc dword ptr [ebp-20]
.L_003F:
cmp dword ptr [ebp-20], 15
jle .L_0042
.L_0041:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+40]
cmp ebx, 52
je .L_0046
jmp .L_0038
.L_0046:
.L_0045:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .L_0048
jmp .L_0038
.L_0048:
.L_0047:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .L_004A
jmp .L_0038
.L_004A:
.L_0049:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+46]
cmp ebx, 40
je .L_004C
jmp .L_0038
.L_004C:
.L_004B:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+48]
mov ecx, 0
push 0
push 40
push ecx
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
pop ecx
add esp, 8
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .L_004E
ja .L_01B9
cmp eax, esi
jbe .L_004E
.L_01B9:
jmp .L_0038
.L_004E:
.L_004D:
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+50]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp-4]
movzx eax, word ptr [esi+50]
mov esi, dword ptr [ebp-4]
movzx ecx, word ptr [esi+48]
cmp eax, ecx
setge al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0050
jmp .L_0038
.L_0050:
.L_004F:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+32]
mov ebx, 0
mov eax, dword ptr [ebp-4]
movzx esi, word ptr [eax+48]
imul esi, 40
mov edi, esi
mov eax, edi
sar eax, 31
add ecx, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_0052
ja .L_01BC
cmp ecx, eax
jbe .L_0052
.L_01BC:
jmp .L_0038
.L_0052:
.L_0051:
sub esp, 8
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+50]
push edi
push dword ptr [ebp-4]
call HCHECKELF32_SH
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0054
jmp .L_0038
.L_0054:
.L_0053:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+48]
dec edi
mov dword ptr [ebp-24], edi
jmp .L_0056
.L_0059:
sub esp, 4
mov edi, dword ptr [ebp-12]
push dword ptr [edi+16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HGETSECTIONNAMEELF32_SH
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_005B
push 9
push offset FBCTINFNAME
push 0
push dword ptr [ebp-16]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_005D
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HCHECKELF32_SH
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_005F
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [OBJDATA]
add edi, dword ptr [eax+16]
mov dword ptr [FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+20]
mov dword ptr [FBCTINF+4], eax
jmp .L_0058
.L_005F:
.L_005E:
.L_005D:
.L_005C:
.L_005B:
.L_005A:
.L_0057:
inc dword ptr [ebp-20]
.L_0056:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_0059
.L_0058:
.L_0038:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFBCTINFFROMELF32_H, .-HLOADFBCTINFFROMELF32_H
.cfi_endproc
.balign 16
HCHECKELF64_SH:
.type HCHECKELF64_SH, @function
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
.L_0060:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
add esi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
mov eax, esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-12]
mov eax, esi
sar eax, 31
add esi, 64
adc eax, 0
mov ebx, dword ptr [OBJDATA+4]
mov ecx, ebx
sar ecx, 31
cmp eax, ecx
jb .L_0063
ja .L_01BD
cmp esi, ebx
jbe .L_0063
.L_01BD:
jmp .L_0061
.L_0063:
.L_0062:
mov ebx, dword ptr [OBJDATA]
add ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
mov esi, dword ptr [ecx+36]
add eax, dword ptr [ebx+24]
adc esi, dword ptr [ebx+28]
mov ecx, dword ptr [OBJDATA+4]
mov ebx, ecx
sar ebx, 31
cmp esi, ebx
jb .L_0065
ja .L_01BE
cmp eax, ecx
jbe .L_0065
.L_01BE:
jmp .L_0061
.L_0065:
.L_0064:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0061:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HCHECKELF64_SH, .-HCHECKELF64_SH
.cfi_endproc
.balign 16
HGETSECTIONNAMEELF64_SH:
.type HGETSECTIONNAMEELF64_SH, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKELF64_SH
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0069
jmp .L_0067
.L_0069:
.L_0068:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.L_006A:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_006B
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .L_006D
jmp .L_006B
.L_006D:
.L_006C:
mov cl, byte ptr [ebp-20]
mov eax, offset Lt_01C1
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .L_006A
.L_006B:
mov ecx, offset Lt_01C1
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset Lt_01C1
mov dword ptr [ebp-4], ecx
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETSECTIONNAMEELF64_SH, .-HGETSECTIONNAMEELF64_SH
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01C1,33

.section .text
.balign 16
HLOADFBCTINFFROMELF64_H:
.type HLOADFBCTINFFROMELF64_H, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
.L_006E:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 64
jge .L_0071
jmp .L_006F
.L_0071:
.L_0070:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [ELFMAGIC+4], 2
call FBISHOSTBIGENDIAN
test eax, eax
je .L_0073
mov byte ptr [ELFMAGIC+5], 2
jmp .L_0072
.L_0073:
mov byte ptr [ELFMAGIC+5], 1
.L_0072:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 5
jne .L_0075
mov byte ptr [ELFMAGIC+7], 9
jmp .L_0074
.L_0075:
mov byte ptr [ELFMAGIC+7], 0
.L_0074:
mov dword ptr [ebp-20], 0
.L_0079:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ELFMAGIC+eax]
cmp ebx, ecx
je .L_007B
jmp .L_006F
.L_007B:
.L_007A:
.L_0077:
inc dword ptr [ebp-20]
.L_0076:
cmp dword ptr [ebp-20], 15
jle .L_0079
.L_0078:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+52]
cmp ebx, 64
je .L_007D
jmp .L_006F
.L_007D:
.L_007C:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .L_007F
jmp .L_006F
.L_007F:
.L_007E:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .L_0081
jmp .L_006F
.L_0081:
.L_0080:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+58]
cmp ebx, 64
je .L_0083
jmp .L_006F
.L_0083:
.L_0082:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+60]
mov ecx, 0
shld ecx, eax, 6
shl eax, 6
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .L_0085
ja .L_01C2
cmp eax, esi
jbe .L_0085
.L_01C2:
jmp .L_006F
.L_0085:
.L_0084:
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+62]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp-4]
movzx eax, word ptr [esi+62]
mov esi, dword ptr [ebp-4]
movzx ecx, word ptr [esi+60]
cmp eax, ecx
setge al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0087
jmp .L_006F
.L_0087:
.L_0086:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+60]
sal ecx, 6
mov esi, ecx
mov ebx, esi
sar ebx, 31
add esi, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov ecx, dword ptr [OBJDATA+4]
mov eax, ecx
sar eax, 31
cmp ebx, eax
jb .L_0089
ja .L_01C5
cmp esi, ecx
jbe .L_0089
.L_01C5:
jmp .L_006F
.L_0089:
.L_0088:
sub esp, 8
mov ecx, dword ptr [ebp-4]
movzx eax, word ptr [ecx+62]
push eax
push dword ptr [ebp-4]
call HCHECKELF64_SH
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008B
jmp .L_006F
.L_008B:
.L_008A:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx ecx, word ptr [eax+60]
dec ecx
mov dword ptr [ebp-24], ecx
jmp .L_008D
.L_0090:
sub esp, 4
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HGETSECTIONNAMEELF64_SH
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0092
push 9
push offset FBCTINFNAME
push 0
push dword ptr [ebp-16]
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0094
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HCHECKELF64_SH
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0096
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+24]
mov eax, dword ptr [OBJDATA]
add eax, ecx
mov dword ptr [FBCTINF], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [FBCTINF+4], ecx
jmp .L_008F
.L_0096:
.L_0095:
.L_0094:
.L_0093:
.L_0092:
.L_0091:
.L_008E:
inc dword ptr [ebp-20]
.L_008D:
mov ecx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ecx
jle .L_0090
.L_008F:
.L_006F:
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFBCTINFFROMELF64_H, .-HLOADFBCTINFFROMELF64_H
.cfi_endproc
.balign 16
HLOADFBCTINFFROMCOFF:
.type HLOADFBCTINFFROMCOFF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 28
push ebx
push esi
push edi
.L_0097:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 20
jge .L_009A
jmp .L_0098
.L_009A:
.L_0099:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax]
movzx eax, word ptr [ebp+8]
cmp ebx, eax
je .L_009C
jmp .L_0098
.L_009C:
.L_009B:
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax+16]
test ebx, ebx
je .L_009E
jmp .L_0098
.L_009E:
.L_009D:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+2]
mov eax, 0
push 0
push 40
push eax
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop eax
add esp, 8
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .L_00A0
ja .L_01C6
cmp ecx, esi
jbe .L_00A0
.L_01C6:
jmp .L_0098
.L_00A0:
.L_009F:
mov esi, dword ptr [ebp-4]
add esi, 20
mov dword ptr [ebp-12], esi
mov dword ptr [ebp-16], 0
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+2]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_00A2
.L_00A5:
mov ebx, dword ptr [ebp-16]
imul ebx, 40
mov esi, dword ptr [ebp-12]
add esi, ebx
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-24], 0
.L_00A9:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp-24]
movzx ebx, byte ptr [esi]
mov esi, offset FBCTINFNAME
add esi, dword ptr [ebp-24]
movzx ecx, byte ptr [esi]
cmp ebx, ecx
je .L_00AB
jmp .L_00A3
.L_00AB:
.L_00AA:
.L_00A7:
inc dword ptr [ebp-24]
.L_00A6:
cmp dword ptr [ebp-24], 7
jle .L_00A9
.L_00A8:
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov ebx, 0
mov ecx, dword ptr [ebp-8]
mov edi, dword ptr [ecx+16]
mov eax, 0
add esi, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_00AD
ja .L_01C7
cmp esi, eax
jbe .L_00AD
.L_01C7:
jmp .L_0098
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [OBJDATA]
add edi, dword ptr [eax+20]
mov dword ptr [FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+16]
mov dword ptr [FBCTINF+4], eax
jmp .L_00A4
.L_00A3:
inc dword ptr [ebp-16]
.L_00A2:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00A5
.L_00A4:
.L_0098:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFBCTINFFROMCOFF, .-HLOADFBCTINFFROMCOFF
.cfi_endproc
.balign 16
HPROCESSMACHOSEGMENT32:
.type HPROCESSMACHOSEGMENT32, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00AE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 56
mov ebx, dword ptr [OBJDATA]
add ebx, dword ptr [OBJDATA+4]
cmp eax, ebx
jbe .L_00B1
mov dword ptr [ebp-4], 1
jmp .L_00AF
.L_00B1:
.L_00B0:
mov ebx, dword ptr [ebp-8]
add ebx, 56
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+48]
add eax, 4294967295
mov ebx, eax
mov dword ptr [ebp-20], ebx
jmp .L_00B3
.L_00B6:
mov ebx, dword ptr [ebp-12]
add ebx, 68
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [OBJDATA+4]
cmp ebx, eax
jbe .L_00B8
mov dword ptr [ebp-4], 1
jmp .L_00AF
.L_00B8:
.L_00B7:
push 8
push offset Lt_001B
push 16
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BA
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+36]
add ecx, dword ptr [eax+40]
mov eax, dword ptr [OBJDATA+4]
cmp ecx, eax
jbe .L_00BC
mov dword ptr [ebp-4], 1
jmp .L_00AF
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [OBJDATA]
add ecx, dword ptr [eax+40]
mov dword ptr [FBCTINF], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+36]
mov dword ptr [FBCTINF+4], eax
jmp .L_00B5
.L_00BA:
.L_00B9:
add dword ptr [ebp-12], 68
.L_00B4:
inc dword ptr [ebp-16]
.L_00B3:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00B6
.L_00B5:
.L_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPROCESSMACHOSEGMENT32, .-HPROCESSMACHOSEGMENT32
.cfi_endproc
.balign 16
HPROCESSMACHOSEGMENT64:
.type HPROCESSMACHOSEGMENT64, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 72
mov ebx, dword ptr [OBJDATA]
add ebx, dword ptr [OBJDATA+4]
cmp eax, ebx
jbe .L_00C0
mov dword ptr [ebp-4], 1
jmp .L_00BE
.L_00C0:
.L_00BF:
mov ebx, dword ptr [ebp-8]
add ebx, 72
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
add eax, 4294967295
mov ebx, eax
mov dword ptr [ebp-20], ebx
jmp .L_00C2
.L_00C5:
mov ebx, dword ptr [ebp-12]
add ebx, 80
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [OBJDATA+4]
cmp ebx, eax
jbe .L_00C7
mov dword ptr [ebp-4], 1
jmp .L_00BE
.L_00C7:
.L_00C6:
push 8
push offset Lt_001B
push 16
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_00C9
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+48]
mov ebx, 0
mov eax, dword ptr [ebp-12]
add ecx, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov esi, dword ptr [OBJDATA+4]
mov eax, esi
sar eax, 31
cmp ebx, eax
jb .L_00CB
ja .L_01C8
cmp ecx, esi
jbe .L_00CB
.L_01C8:
mov dword ptr [ebp-4], 1
jmp .L_00BE
.L_00CB:
.L_00CA:
mov esi, dword ptr [ebp-12]
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [esi+48]
mov dword ptr [FBCTINF], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+40]
mov dword ptr [FBCTINF+4], esi
jmp .L_00C4
.L_00C9:
.L_00C8:
add dword ptr [ebp-12], 80
.L_00C3:
inc dword ptr [ebp-16]
.L_00C2:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jle .L_00C5
.L_00C4:
.L_00BE:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HPROCESSMACHOSEGMENT64, .-HPROCESSMACHOSEGMENT64
.cfi_endproc
.balign 16
HLOADFBCTINFFROMMACHO:
.type HLOADFBCTINFFROMMACHO, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_00CC:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 28
jge .L_00CF
jmp .L_00CD
.L_00CF:
.L_00CE:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4277009102
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4277009103
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00D1
jmp .L_00CD
.L_00D1:
.L_00D0:
call FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D4
.L_00D5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 7
je .L_00D7
jmp .L_00CD
.L_00D7:
.L_00D6:
jmp .L_00D2
.L_00D4:
cmp dword ptr [ebp-16], 1
jne .L_00D8
.L_00D9:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 16777223
je .L_00DB
jmp .L_00CD
.L_00DB:
.L_00DA:
jmp .L_00D2
.L_00D8:
cmp dword ptr [ebp-16], 2
jne .L_00DC
.L_00DD:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 12
je .L_00DF
jmp .L_00CD
.L_00DF:
.L_00DE:
jmp .L_00D2
.L_00DC:
cmp dword ptr [ebp-16], 3
jne .L_00E0
.L_00E1:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 16777228
je .L_00E3
jmp .L_00CD
.L_00E3:
.L_00E2:
.L_00E0:
.L_00D2:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 1
je .L_00E5
jmp .L_00CD
.L_00E5:
.L_00E4:
mov eax, dword ptr [OBJDATA]
add eax, 28
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4277009103
jne .L_00E7
add dword ptr [ebp-12], 4
.L_00E7:
.L_00E6:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+16]
add ecx, 4294967295
mov eax, ecx
mov dword ptr [ebp-20], eax
jmp .L_00E9
.L_00EC:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 8
mov ecx, dword ptr [OBJDATA]
add ecx, dword ptr [OBJDATA+4]
cmp eax, ecx
jbe .L_00EE
jmp .L_00CD
.L_00EE:
.L_00ED:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 1
jne .L_00F0
sub esp, 12
push dword ptr [ebp-8]
call HPROCESSMACHOSEGMENT32
add esp, 16
test eax, eax
je .L_00F2
jmp .L_00CD
.L_00F2:
.L_00F1:
jmp .L_00EF
.L_00F0:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_00F3
sub esp, 12
push dword ptr [ebp-8]
call HPROCESSMACHOSEGMENT64
add esp, 16
test eax, eax
je .L_00F5
jmp .L_00CD
.L_00F5:
.L_00F4:
.L_00F3:
.L_00EF:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
add dword ptr [ebp-12], ecx
.L_00EA:
inc dword ptr [ebp-16]
.L_00E9:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
jle .L_00EC
.L_00EB:
.L_00CD:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFBCTINFFROMMACHO, .-HLOADFBCTINFFROMMACHO
.cfi_endproc
.balign 16
HLOADARSTRING:
.type HLOADARSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00FF:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
.L_0101:
cmp dword ptr [ebp-8], 0
jl .L_0102
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 32
je .L_0105
jmp .L_0102
.L_0105:
.L_0104:
dec dword ptr [ebp-8]
jmp .L_0101
.L_0102:
mov dword ptr [ebp-12], 0
.L_0106:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jg .L_0107
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-12]
mov eax, offset Lt_01CB
add eax, dword ptr [ebp-12]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
jmp .L_0106
.L_0107:
mov ecx, offset Lt_01CB
add ecx, dword ptr [ebp-12]
mov byte ptr [ecx], 0
mov ecx, offset Lt_01CB
mov dword ptr [ebp-4], ecx
.L_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADARSTRING, .-HLOADARSTRING
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_01CB,17

.section .text
.balign 16
HLOADOBJFROMAR:
.type HLOADOBJFROMAR, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
.L_0108:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [OBJDATA], 0
mov dword ptr [OBJDATA+4], 0
cmp dword ptr [ARDATA+4], 8
jge .L_010B
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .L_0109
.L_010B:
.L_010A:
mov dword ptr [ebp-20], 0
.L_010F:
mov eax, dword ptr [ARDATA]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ARMAGIC+eax]
cmp ebx, ecx
je .L_0111
sub esp, 12
lea ecx, [ebp-16]
push ecx
call fb_StrDelete
add esp, 16
jmp .L_0109
.L_0111:
.L_0110:
.L_010D:
inc dword ptr [ebp-20]
.L_010C:
cmp dword ptr [ebp-20], 7
jle .L_010F
.L_010E:
mov dword ptr [ebp-20], 8
.L_0112:
mov ecx, dword ptr [ebp-20]
add ecx, 60
mov ebx, dword ptr [ARDATA+4]
cmp ecx, ebx
jle .L_0116
sub esp, 12
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 16
jmp .L_0109
.L_0116:
.L_0115:
mov ebx, dword ptr [ARDATA]
add ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
sub esp, 12
push 0
push 0
sub esp, 4
push 16
mov ebx, dword ptr [ebp-4]
lea ecx, [ebx]
push ecx
call HLOADARSTRING
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
sub esp, 12
push 10
mov eax, dword ptr [ebp-4]
lea ecx, [eax+48]
push ecx
call HLOADARSTRING
add esp, 20
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 16
fistp dword ptr [ebp-24]
cmp dword ptr [ebp-24], 0
jge .L_0118
mov dword ptr [ebp-24], 0
jmp .L_0117
.L_0118:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ARDATA+4]
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ARDATA+4]
sub ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
cmp ebx, ecx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0119
mov ebx, dword ptr [ARDATA+4]
sub ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ebx
.L_0119:
.L_0117:
add dword ptr [ebp-20], 60
push 12
push offset Lt_001C
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
je .L_011D
.L_011E:
push 13
push offset Lt_011C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_011B
.L_011D:
cmp dword ptr [ebp-24], 0
jle .L_0120
mov eax, dword ptr [ARDATA]
add eax, dword ptr [ebp-20]
mov dword ptr [OBJDATA], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [OBJDATA+4], eax
.L_0120:
.L_011F:
jmp .L_0113
jmp .L_011A
.L_011B:
push 2
push offset Lt_001A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0124
.L_0125:
push 3
push offset Lt_0122
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .L_0124
.L_0126:
push 10
push offset Lt_0123
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0121
.L_0124:
jmp .L_011A
.L_0121:
jmp .L_0113
.L_0127:
.L_011A:
mov eax, dword ptr [ebp-24]
add dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
and eax, 1
add dword ptr [ebp-20], eax
.L_0114:
jmp .L_0112
.L_0113:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.L_0109:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADOBJFROMAR, .-HLOADOBJFROMAR
.cfi_endproc
.balign 16
HLOADFILE:
.type HLOADFILE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
.L_0128:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 0
call fb_FileFree
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push 1
push 0
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .L_012B
jmp .L_0129
.L_012B:
.L_012A:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileSize
add esp, 16
mov ebx, eax
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jle .L_012D
sub esp, 12
push dword ptr [ebp-8]
call malloc
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
lea eax, [ebp-8]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-4]
call fb_FileGetIOB
add esp, 32
test eax, eax
je .L_012F
jmp .L_0129
.L_012F:
.L_012E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
.L_012D:
.L_012C:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileClose
add esp, 16
test eax, eax
je .L_0130
push 0
push 0
push offset Lt_0131
push 860
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0130:
.L_0129:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFILE, .-HLOADFILE
.cfi_endproc
.balign 16
HLOADFBCTINFFROMOBJ:
.type HLOADFBCTINFFROMOBJ, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0132:
call FBTARGETSUPPORTSCOFF
test eax, eax
je .L_0135
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_0138
.L_0139:
sub esp, 12
push 34404
call HLOADFBCTINFFROMCOFF
add esp, 16
jmp .L_0136
.L_0138:
cmp dword ptr [ebp-4], 0
jne .L_013A
.L_013B:
sub esp, 12
push 332
call HLOADFBCTINFFROMCOFF
add esp, 16
.L_013A:
.L_0136:
jmp .L_0134
.L_0135:
call FBTARGETSUPPORTSELF
test eax, eax
je .L_013C
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_013F
.L_0140:
sub esp, 12
push 62
call HLOADFBCTINFFROMELF64_H
add esp, 16
jmp .L_013D
.L_013F:
cmp dword ptr [ebp-4], 0
jne .L_0141
.L_0142:
sub esp, 12
push 3
call HLOADFBCTINFFROMELF32_H
add esp, 16
jmp .L_013D
.L_0141:
cmp dword ptr [ebp-4], 3
jne .L_0143
.L_0144:
sub esp, 12
push 183
call HLOADFBCTINFFROMELF64_H
add esp, 16
jmp .L_013D
.L_0143:
cmp dword ptr [ebp-4], 2
jne .L_0145
.L_0146:
sub esp, 12
push 40
call HLOADFBCTINFFROMELF32_H
add esp, 16
jmp .L_013D
.L_0145:
cmp dword ptr [ebp-4], 5
je .L_0148
.L_0149:
cmp dword ptr [ebp-4], 6
jne .L_0147
.L_0148:
sub esp, 12
push 21
call HLOADFBCTINFFROMELF64_H
add esp, 16
jmp .L_013D
.L_0147:
cmp dword ptr [ebp-4], 4
jne .L_014A
.L_014B:
sub esp, 12
push 20
call HLOADFBCTINFFROMELF32_H
add esp, 16
.L_014A:
.L_013D:
jmp .L_0134
.L_013C:
call FBTARGETSUPPORTSMACHO
test eax, eax
je .L_014C
call HLOADFBCTINFFROMMACHO
.L_014C:
.L_0134:
cmp dword ptr [FBCTINF+4], 0
jne .L_014E
jmp .L_0133
.L_014E:
.L_014D:
mov eax, dword ptr [FBCTINF]
movzx ebx, byte ptr [eax]
cmp ebx, 16
jne .L_0150
mov dword ptr [PARSER+16], -1
mov dword ptr [PARSER], 1
jmp .L_014F
.L_0150:
mov dword ptr [PARSER+16], 0
.L_014F:
.L_0133:
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HLOADFBCTINFFROMOBJ, .-HLOADFBCTINFFROMOBJ
.cfi_endproc
.balign 16
HRESETBUFFERS:
.type HRESETBUFFERS, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0157:
mov dword ptr [ARDATA], 0
mov dword ptr [ARDATA+4], 0
mov dword ptr [OBJDATA], 0
mov dword ptr [OBJDATA+4], 0
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
.L_0158:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HRESETBUFFERS, .-HRESETBUFFERS
.cfi_endproc
.balign 16
OBJINFOINIT:
.type OBJINFOINIT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 8
.L_0159:
call HRESETBUFFERS
mov dword ptr [PARSER], 0
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [PARSER+4]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [PARSER+16], 0
mov dword ptr [PARSER+20], -1
.L_015A:
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size OBJINFOINIT, .-OBJINFOINIT
.cfi_endproc
.balign 16
HGETNEXTSTRING:
.type HGETNEXTSTRING, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0175:
mov eax, offset Lt_0000
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PARSER]
mov dword ptr [ebp-8], eax
.L_0177:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jge .L_0178
inc dword ptr [PARSER]
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .L_017A
mov ebx, dword ptr [FBCTINF]
add ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_0176
.L_017A:
.L_0179:
jmp .L_0177
.L_0178:
.L_0176:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETNEXTSTRING, .-HGETNEXTSTRING
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
.L_01AF:
sub esp, 12
push offset PARSER
call _ZN16OBJINFOPARSERCTXC1Ev
add esp, 16
.L_01B0:
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
.L_01B2:
sub esp, 12
push offset PARSER
call _ZN16OBJINFOPARSERCTXD1Ev
add esp, 16
.L_01B3:
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
Lt_001A:	.ascii	"/\0"
.balign 4
Lt_001B:	.ascii	"fbctinf\0"
.balign 4
Lt_001C:	.ascii	"__fb_ct.inf\0"

.section .bss
.balign 4
	.lcomm	ARDATA,8
.balign 4
	.lcomm	OBJDATA,8
.balign 4
	.lcomm	FBCTINF,8
.balign 4
	.lcomm	PARSER,24

.section .data
.balign 4
FBCTINFNAME:
.ascii ".fbctinf\0"
.balign 4
ELFMAGIC:
.byte 127
.byte 69
.byte 76
.byte 70
.byte 0
.byte 1
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.skip 4,0
.balign 4
ARMAGIC:
.byte 33
.byte 60
.byte 97
.byte 114
.byte 99
.byte 104
.byte 62
.byte 10

.section .rodata
.balign 4
Lt_011C:	.ascii	"__fb_ct.inf/\0"
.balign 4
Lt_0122:	.ascii	"//\0"
.balign 4
Lt_0123:	.ascii	"__.SYMDEF\0"
.balign 4
Lt_0131:	.ascii	"src/compiler/objinfo.bas\0"

.section .data
.balign 4
ENTRIES:
.int Lt_0152
.int -1
.int Lt_0153
.int -1
.int Lt_0154
.int 0
.int Lt_0155
.int 0
.int Lt_0156
.int -1

.section .rodata
.balign 4
Lt_0152:	.ascii	"-l\0"
.balign 4
Lt_0153:	.ascii	"-p\0"
.balign 4
Lt_0154:	.ascii	"-mt\0"
.balign 4
Lt_0155:	.ascii	"-gfx\0"
.balign 4
Lt_0156:	.ascii	"-lang\0"
.balign 4
Lt_0167:	.ascii	"lib\0"
.balign 4
Lt_0168:	.ascii	".a\0"

.section .ctors, "aw", @progbits
.int fb_ctor__objinfo
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
