	.intel_syntax noprefix

.section .text
.balign 16

.globl _OBJINFOREADOBJ
_OBJINFOREADOBJ:
push ebp
mov ebp, esp
.L_015D:
push dword ptr [ebp+8]
call _OBJINFOINIT
add esp, 4
push offset _OBJDATA
push dword ptr [ebp+8]
call _HLOADFILE
add esp, 8
cmp dword ptr [_OBJDATA+4], 0
jne .L_0160
jmp .L_015E
.L_0160:
.L_015F:
call _HLOADFBCTINFFROMOBJ
.L_015E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADLIBFILE
_OBJINFOREADLIBFILE:
push ebp
mov ebp, esp
.L_0161:
push dword ptr [ebp+8]
call _OBJINFOINIT
add esp, 4
push offset _ARDATA
push dword ptr [ebp+8]
call _HLOADFILE
add esp, 8
cmp dword ptr [_ARDATA+4], 0
jne .L_0164
jmp .L_0162
.L_0164:
.L_0163:
call _HLOADOBJFROMAR
cmp dword ptr [_OBJDATA+4], 0
jne .L_0166
jmp .L_0162
.L_0166:
.L_0165:
call _HLOADFBCTINFFROMOBJ
.L_0162:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADLIB
_OBJINFOREADLIB:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.L_0167:
push 0
push -1
push 3
push offset _Lt_016A
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0169
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0175
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+12]
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.L_016D:
cmp dword ptr [ebp-4], 0
je .L_016E
push 0
push -1
push -1
push offset _Lt_0175
push -1
push 2
push offset _Lt_001B
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0176
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0176]
call _HFILEEXISTS
add esp, 4
test eax, eax
je .L_0172
jmp .L_016E
.L_0172:
.L_0171:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_016D
.L_016E:
cmp dword ptr [ebp-4], 0
jne .L_0174
jmp .L_0168
.L_0174:
.L_0173:
push offset _Lt_0176
call _OBJINFOREADLIBFILE
add esp, 4
.L_0168:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0176,12
.balign 4
	.lcomm	_Lt_0175,12

.section .text
.balign 16

.globl _OBJINFOREADNEXT
_OBJINFOREADNEXT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_017D:
cmp dword ptr [_FBCTINF+4], 0
jg .L_0180
mov dword ptr [ebp-4], -1
jmp .L_017E
.L_0180:
.L_017F:
cmp dword ptr [_PARSER+16], 0
je .L_0182
.L_0183:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jge .L_0184
cmp dword ptr [_PARSER+20], 0
jge .L_0186
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax]
mov dword ptr [_PARSER+20], ebx
inc dword ptr [_PARSER]
mov ebx, dword ptr [_PARSER+20]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+20]
cmp eax, 3
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_0188
mov dword ptr [_PARSER+20], -1
mov eax, dword ptr [_FBCTINF+4]
mov dword ptr [_PARSER], eax
mov dword ptr [ebp-4], -1
jmp .L_017E
.L_0188:
.L_0187:
.L_0186:
.L_0185:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jl .L_018A
mov dword ptr [ebp-4], -1
jmp .L_017E
.L_018A:
.L_0189:
inc dword ptr [_PARSER]
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .L_018C
mov dword ptr [_PARSER+20], -1
jmp .L_0183
.L_018C:
.L_018B:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_PARSER+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .L_018F
.L_0190:
mov dword ptr [ebp-4], 0
jmp .L_017E
jmp .L_018D
.L_018F:
cmp dword ptr [ebp-8], 2
jne .L_0191
.L_0192:
mov dword ptr [ebp-4], 1
jmp .L_017E
jmp .L_018D
.L_0191:
cmp dword ptr [ebp-8], 3
jne .L_0193
.L_0194:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 6
push offset _Lt_0158
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0197
.L_0198:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jle .L_019A
mov dword ptr [ebp-4], 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_017E
.L_019A:
.L_0199:
jmp .L_0195
.L_0197:
push 4
push offset _Lt_0156
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_019B
.L_019C:
mov dword ptr [ebp-4], 2
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_017E
.L_019B:
.L_0195:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.L_0193:
.L_018D:
jmp .L_0183
.L_0184:
jmp .L_0181
.L_0182:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
.L_01A0:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_ENTRIES+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_01A2
mov eax, dword ptr [ebp-8]
cmp dword ptr [_ENTRIES+eax*8+4], 0
je .L_01A4
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_01A4:
.L_01A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_017E
.L_01A2:
.L_01A1:
.L_019E:
inc dword ptr [ebp-8]
.L_019D:
cmp dword ptr [ebp-8], 4
jle .L_01A0
.L_019F:
.L_0181:
mov dword ptr [ebp-4], -1
.L_017E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOGETFILENAME
_OBJINFOGETFILENAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01A7:
mov eax, dword ptr [_PARSER+4]
mov dword ptr [ebp-4], eax
.L_01A8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADEND
_OBJINFOREADEND:
.L_01A9:
cmp dword ptr [_ARDATA], 0
je .L_01AC
push dword ptr [_ARDATA]
call _free
add esp, 4
jmp .L_01AB
.L_01AC:
cmp dword ptr [_OBJDATA], 0
je .L_01AD
push dword ptr [_OBJDATA]
call _free
add esp, 4
.L_01AD:
.L_01AB:
call _HRESETBUFFERS
.L_01AA:
ret
.balign 16

.globl _OBJINFOENCODE
_OBJINFOENCODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_ENTRIES+eax*8]
mov dword ptr [ebp-4], ebx
.L_01AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__objinfo:
.L_0002:
.L_0003:
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0013:
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
.L_0014:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16OBJINFOPARSERCTXC1Ev:
push ebp
mov ebp, esp
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
.L_0020:
.L_0021:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16OBJINFOPARSERCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.L_0022:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
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
call _fb_StrAssign
add esp, 20
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
.L_0023:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16OBJINFOPARSERCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.L_0026:
.L_0027:
mov eax, dword ptr [ebp+8]
add eax, 4
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKELF32_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_002A:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .L_002D
ja .L_01B6
cmp ecx, esi
jbe .L_002D
.L_01B6:
jmp .L_002B
.L_002D:
.L_002C:
mov esi, dword ptr [_OBJDATA]
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
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_002F
ja .L_01B7
cmp ecx, eax
jbe .L_002F
.L_01B7:
jmp .L_002B
.L_002F:
.L_002E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_002B:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETSECTIONNAMEELF32_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0030:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0033
jmp .L_0031
.L_0033:
.L_0032:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.L_0034:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [_OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_0035
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .L_0037
jmp .L_0035
.L_0037:
.L_0036:
mov cl, byte ptr [ebp-20]
mov eax, offset _Lt_01BA
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .L_0034
.L_0035:
mov ecx, offset _Lt_01BA
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_01BA
mov dword ptr [ebp-4], ecx
.L_0031:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01BA,33

.section .text
.balign 16
_HLOADFBCTINFFROMELF32_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.L_0038:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 52
jge .L_003B
jmp .L_0039
.L_003B:
.L_003A:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [_ELFMAGIC+4], 1
call _FBISHOSTBIGENDIAN
test eax, eax
je .L_003D
mov byte ptr [_ELFMAGIC+5], 2
jmp .L_003C
.L_003D:
mov byte ptr [_ELFMAGIC+5], 1
.L_003C:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 5
jne .L_003F
mov byte ptr [_ELFMAGIC+7], 9
jmp .L_003E
.L_003F:
mov byte ptr [_ELFMAGIC+7], 0
.L_003E:
mov dword ptr [ebp-20], 0
.L_0043:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ELFMAGIC+eax]
cmp ebx, ecx
je .L_0045
jmp .L_0039
.L_0045:
.L_0044:
.L_0041:
inc dword ptr [ebp-20]
.L_0040:
cmp dword ptr [ebp-20], 15
jle .L_0043
.L_0042:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+40]
cmp ebx, 52
je .L_0047
jmp .L_0039
.L_0047:
.L_0046:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .L_0049
jmp .L_0039
.L_0049:
.L_0048:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .L_004B
jmp .L_0039
.L_004B:
.L_004A:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+46]
cmp ebx, 40
je .L_004D
jmp .L_0039
.L_004D:
.L_004C:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .L_004F
ja .L_01BB
cmp eax, esi
jbe .L_004F
.L_01BB:
jmp .L_0039
.L_004F:
.L_004E:
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
je .L_0051
jmp .L_0039
.L_0051:
.L_0050:
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
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_0053
ja .L_01BE
cmp ecx, eax
jbe .L_0053
.L_01BE:
jmp .L_0039
.L_0053:
.L_0052:
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+50]
push edi
push dword ptr [ebp-4]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0055
jmp .L_0039
.L_0055:
.L_0054:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+48]
dec edi
mov dword ptr [ebp-24], edi
jmp .L_0057
.L_005A:
mov edi, dword ptr [ebp-12]
push dword ptr [edi+16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HGETSECTIONNAMEELF32_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_005C
push 9
push offset _FBCTINFNAME
push 0
push dword ptr [ebp-16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_005E
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0060
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [_OBJDATA]
add edi, dword ptr [eax+16]
mov dword ptr [_FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+20]
mov dword ptr [_FBCTINF+4], eax
jmp .L_0059
.L_0060:
.L_005F:
.L_005E:
.L_005D:
.L_005C:
.L_005B:
.L_0058:
inc dword ptr [ebp-20]
.L_0057:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_005A
.L_0059:
.L_0039:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKELF64_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0061:
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
mov ebx, dword ptr [_OBJDATA+4]
mov ecx, ebx
sar ecx, 31
cmp eax, ecx
jb .L_0064
ja .L_01BF
cmp esi, ebx
jbe .L_0064
.L_01BF:
jmp .L_0062
.L_0064:
.L_0063:
mov ebx, dword ptr [_OBJDATA]
add ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
mov esi, dword ptr [ecx+36]
add eax, dword ptr [ebx+24]
adc esi, dword ptr [ebx+28]
mov ecx, dword ptr [_OBJDATA+4]
mov ebx, ecx
sar ebx, 31
cmp esi, ebx
jb .L_0066
ja .L_01C0
cmp eax, ecx
jbe .L_0066
.L_01C0:
jmp .L_0062
.L_0066:
.L_0065:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.L_0062:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETSECTIONNAMEELF64_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_006A
jmp .L_0068
.L_006A:
.L_0069:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.L_006B:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [_OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_006C
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .L_006E
jmp .L_006C
.L_006E:
.L_006D:
mov cl, byte ptr [ebp-20]
mov eax, offset _Lt_01C3
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .L_006B
.L_006C:
mov ecx, offset _Lt_01C3
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_01C3
mov dword ptr [ebp-4], ecx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01C3,33

.section .text
.balign 16
_HLOADFBCTINFFROMELF64_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_006F:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 64
jge .L_0072
jmp .L_0070
.L_0072:
.L_0071:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [_ELFMAGIC+4], 2
call _FBISHOSTBIGENDIAN
test eax, eax
je .L_0074
mov byte ptr [_ELFMAGIC+5], 2
jmp .L_0073
.L_0074:
mov byte ptr [_ELFMAGIC+5], 1
.L_0073:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 5
jne .L_0076
mov byte ptr [_ELFMAGIC+7], 9
jmp .L_0075
.L_0076:
mov byte ptr [_ELFMAGIC+7], 0
.L_0075:
mov dword ptr [ebp-20], 0
.L_007A:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ELFMAGIC+eax]
cmp ebx, ecx
je .L_007C
jmp .L_0070
.L_007C:
.L_007B:
.L_0078:
inc dword ptr [ebp-20]
.L_0077:
cmp dword ptr [ebp-20], 15
jle .L_007A
.L_0079:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+52]
cmp ebx, 64
je .L_007E
jmp .L_0070
.L_007E:
.L_007D:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .L_0080
jmp .L_0070
.L_0080:
.L_007F:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .L_0082
jmp .L_0070
.L_0082:
.L_0081:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+58]
cmp ebx, 64
je .L_0084
jmp .L_0070
.L_0084:
.L_0083:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+60]
mov ecx, 0
shld ecx, eax, 6
shl eax, 6
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .L_0086
ja .L_01C4
cmp eax, esi
jbe .L_0086
.L_01C4:
jmp .L_0070
.L_0086:
.L_0085:
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
je .L_0088
jmp .L_0070
.L_0088:
.L_0087:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+60]
sal ecx, 6
mov esi, ecx
mov ebx, esi
sar ebx, 31
add esi, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov ecx, dword ptr [_OBJDATA+4]
mov eax, ecx
sar eax, 31
cmp ebx, eax
jb .L_008A
ja .L_01C7
cmp esi, ecx
jbe .L_008A
.L_01C7:
jmp .L_0070
.L_008A:
.L_0089:
mov ecx, dword ptr [ebp-4]
movzx eax, word ptr [ecx+62]
push eax
push dword ptr [ebp-4]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_008C
jmp .L_0070
.L_008C:
.L_008B:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx ecx, word ptr [eax+60]
dec ecx
mov dword ptr [ebp-24], ecx
jmp .L_008E
.L_0091:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HGETSECTIONNAMEELF64_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .L_0093
push 9
push offset _FBCTINFNAME
push 0
push dword ptr [ebp-16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0095
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_0097
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+24]
mov eax, dword ptr [_OBJDATA]
add eax, ecx
mov dword ptr [_FBCTINF], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [_FBCTINF+4], ecx
jmp .L_0090
.L_0097:
.L_0096:
.L_0095:
.L_0094:
.L_0093:
.L_0092:
.L_008F:
inc dword ptr [ebp-20]
.L_008E:
mov ecx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ecx
jle .L_0091
.L_0090:
.L_0070:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFBCTINFFROMCOFF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.L_0098:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 20
jge .L_009B
jmp .L_0099
.L_009B:
.L_009A:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax]
movzx eax, word ptr [ebp+8]
cmp ebx, eax
je .L_009D
jmp .L_0099
.L_009D:
.L_009C:
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax+16]
test ebx, ebx
je .L_009F
jmp .L_0099
.L_009F:
.L_009E:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .L_00A1
ja .L_01C8
cmp ecx, esi
jbe .L_00A1
.L_01C8:
jmp .L_0099
.L_00A1:
.L_00A0:
mov esi, dword ptr [ebp-4]
add esi, 20
mov dword ptr [ebp-12], esi
mov dword ptr [ebp-16], 0
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+2]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_00A3
.L_00A6:
mov ebx, dword ptr [ebp-16]
imul ebx, 40
mov esi, dword ptr [ebp-12]
add esi, ebx
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-24], 0
.L_00AA:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp-24]
movzx ebx, byte ptr [esi]
mov esi, offset _FBCTINFNAME
add esi, dword ptr [ebp-24]
movzx ecx, byte ptr [esi]
cmp ebx, ecx
je .L_00AC
jmp .L_00A4
.L_00AC:
.L_00AB:
.L_00A8:
inc dword ptr [ebp-24]
.L_00A7:
cmp dword ptr [ebp-24], 7
jle .L_00AA
.L_00A9:
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov ebx, 0
mov ecx, dword ptr [ebp-8]
mov edi, dword ptr [ecx+16]
mov eax, 0
add esi, edi
adc ebx, eax
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .L_00AE
ja .L_01C9
cmp esi, eax
jbe .L_00AE
.L_01C9:
jmp .L_0099
.L_00AE:
.L_00AD:
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [_OBJDATA]
add edi, dword ptr [eax+20]
mov dword ptr [_FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+16]
mov dword ptr [_FBCTINF+4], eax
jmp .L_00A5
.L_00A4:
inc dword ptr [ebp-16]
.L_00A3:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00A6
.L_00A5:
.L_0099:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCESSMACHOSEGMENT32:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00AF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 56
mov ebx, dword ptr [_OBJDATA]
add ebx, dword ptr [_OBJDATA+4]
cmp eax, ebx
jbe .L_00B2
mov dword ptr [ebp-4], 1
jmp .L_00B0
.L_00B2:
.L_00B1:
mov ebx, dword ptr [ebp-8]
add ebx, 56
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+48]
add eax, 4294967295
mov ebx, eax
mov dword ptr [ebp-20], ebx
jmp .L_00B4
.L_00B7:
mov ebx, dword ptr [ebp-12]
add ebx, 68
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [_OBJDATA+4]
cmp ebx, eax
jbe .L_00B9
mov dword ptr [ebp-4], 1
jmp .L_00B0
.L_00B9:
.L_00B8:
push 8
push offset _Lt_001C
push 16
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00BB
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+36]
add ecx, dword ptr [eax+40]
mov eax, dword ptr [_OBJDATA+4]
cmp ecx, eax
jbe .L_00BD
mov dword ptr [ebp-4], 1
jmp .L_00B0
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [_OBJDATA]
add ecx, dword ptr [eax+40]
mov dword ptr [_FBCTINF], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+36]
mov dword ptr [_FBCTINF+4], eax
jmp .L_00B6
.L_00BB:
.L_00BA:
add dword ptr [ebp-12], 68
.L_00B5:
inc dword ptr [ebp-16]
.L_00B4:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_00B7
.L_00B6:
.L_00B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCESSMACHOSEGMENT64:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00BE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 72
mov ebx, dword ptr [_OBJDATA]
add ebx, dword ptr [_OBJDATA+4]
cmp eax, ebx
jbe .L_00C1
mov dword ptr [ebp-4], 1
jmp .L_00BF
.L_00C1:
.L_00C0:
mov ebx, dword ptr [ebp-8]
add ebx, 72
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
add eax, 4294967295
mov ebx, eax
mov dword ptr [ebp-20], ebx
jmp .L_00C3
.L_00C6:
mov ebx, dword ptr [ebp-12]
add ebx, 80
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [_OBJDATA+4]
cmp ebx, eax
jbe .L_00C8
mov dword ptr [ebp-4], 1
jmp .L_00BF
.L_00C8:
.L_00C7:
push 8
push offset _Lt_001C
push 16
mov eax, dword ptr [ebp-12]
lea ebx, [eax]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_00CA
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+48]
mov ebx, 0
mov eax, dword ptr [ebp-12]
add ecx, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov esi, dword ptr [_OBJDATA+4]
mov eax, esi
sar eax, 31
cmp ebx, eax
jb .L_00CC
ja .L_01CA
cmp ecx, esi
jbe .L_00CC
.L_01CA:
mov dword ptr [ebp-4], 1
jmp .L_00BF
.L_00CC:
.L_00CB:
mov esi, dword ptr [ebp-12]
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [esi+48]
mov dword ptr [_FBCTINF], eax
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+40]
mov dword ptr [_FBCTINF+4], esi
jmp .L_00C5
.L_00CA:
.L_00C9:
add dword ptr [ebp-12], 80
.L_00C4:
inc dword ptr [ebp-16]
.L_00C3:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jle .L_00C6
.L_00C5:
.L_00BF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFBCTINFFROMMACHO:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_00CD:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 28
jge .L_00D0
jmp .L_00CE
.L_00D0:
.L_00CF:
mov eax, dword ptr [_OBJDATA]
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
je .L_00D2
jmp .L_00CE
.L_00D2:
.L_00D1:
call _FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00D5
.L_00D6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 7
je .L_00D8
jmp .L_00CE
.L_00D8:
.L_00D7:
jmp .L_00D3
.L_00D5:
cmp dword ptr [ebp-16], 1
jne .L_00D9
.L_00DA:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 16777223
je .L_00DC
jmp .L_00CE
.L_00DC:
.L_00DB:
jmp .L_00D3
.L_00D9:
cmp dword ptr [ebp-16], 2
jne .L_00DD
.L_00DE:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 12
je .L_00E0
jmp .L_00CE
.L_00E0:
.L_00DF:
jmp .L_00D3
.L_00DD:
cmp dword ptr [ebp-16], 3
jne .L_00E1
.L_00E2:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 16777228
je .L_00E4
jmp .L_00CE
.L_00E4:
.L_00E3:
.L_00E1:
.L_00D3:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 1
je .L_00E6
jmp .L_00CE
.L_00E6:
.L_00E5:
mov eax, dword ptr [_OBJDATA]
add eax, 28
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4277009103
jne .L_00E8
add dword ptr [ebp-12], 4
.L_00E8:
.L_00E7:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+16]
add ecx, 4294967295
mov eax, ecx
mov dword ptr [ebp-20], eax
jmp .L_00EA
.L_00ED:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
add eax, 8
mov ecx, dword ptr [_OBJDATA]
add ecx, dword ptr [_OBJDATA+4]
cmp eax, ecx
jbe .L_00EF
jmp .L_00CE
.L_00EF:
.L_00EE:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx], 1
jne .L_00F1
push dword ptr [ebp-8]
call _HPROCESSMACHOSEGMENT32
add esp, 4
test eax, eax
je .L_00F3
jmp .L_00CE
.L_00F3:
.L_00F2:
jmp .L_00F0
.L_00F1:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .L_00F4
push dword ptr [ebp-8]
call _HPROCESSMACHOSEGMENT64
add esp, 4
test eax, eax
je .L_00F6
jmp .L_00CE
.L_00F6:
.L_00F5:
.L_00F4:
.L_00F0:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
add dword ptr [ebp-12], ecx
.L_00EB:
inc dword ptr [ebp-16]
.L_00EA:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ecx
jle .L_00ED
.L_00EC:
.L_00CE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADARSTRING:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0100:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
.L_0102:
cmp dword ptr [ebp-8], 0
jl .L_0103
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 32
je .L_0106
jmp .L_0103
.L_0106:
.L_0105:
dec dword ptr [ebp-8]
jmp .L_0102
.L_0103:
mov dword ptr [ebp-12], 0
.L_0107:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jg .L_0108
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-12]
mov eax, offset _Lt_01CD
add eax, dword ptr [ebp-12]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
jmp .L_0107
.L_0108:
mov ecx, offset _Lt_01CD
add ecx, dword ptr [ebp-12]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_01CD
mov dword ptr [ebp-4], ecx
.L_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01CD,17

.section .text
.balign 16
_HLOADOBJFROMAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0109:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [_OBJDATA], 0
mov dword ptr [_OBJDATA+4], 0
cmp dword ptr [_ARDATA+4], 8
jge .L_010C
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_010A
.L_010C:
.L_010B:
mov dword ptr [ebp-20], 0
.L_0110:
mov eax, dword ptr [_ARDATA]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ARMAGIC+eax]
cmp ebx, ecx
je .L_0112
lea ecx, [ebp-16]
push ecx
call _fb_StrDelete
add esp, 4
jmp .L_010A
.L_0112:
.L_0111:
.L_010E:
inc dword ptr [ebp-20]
.L_010D:
cmp dword ptr [ebp-20], 7
jle .L_0110
.L_010F:
mov dword ptr [ebp-20], 8
.L_0113:
mov ecx, dword ptr [ebp-20]
add ecx, 60
mov ebx, dword ptr [_ARDATA+4]
cmp ecx, ebx
jle .L_0117
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete
add esp, 4
jmp .L_010A
.L_0117:
.L_0116:
mov ebx, dword ptr [_ARDATA]
add ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
push 0
push 0
push 16
mov ebx, dword ptr [ebp-4]
lea ecx, [ebx]
push ecx
call _HLOADARSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 10
mov eax, dword ptr [ebp-4]
lea ecx, [eax+48]
push ecx
call _HLOADARSTRING
add esp, 8
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-24]
cmp dword ptr [ebp-24], 0
jge .L_0119
mov dword ptr [ebp-24], 0
jmp .L_0118
.L_0119:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [_ARDATA+4]
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_ARDATA+4]
sub ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
cmp ebx, ecx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_011A
mov ebx, dword ptr [_ARDATA+4]
sub ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ebx
.L_011A:
.L_0118:
add dword ptr [ebp-20], 60
push 12
push offset _Lt_001D
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_011E
.L_011F:
push 13
push offset _Lt_011D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_011C
.L_011E:
cmp dword ptr [ebp-24], 0
jle .L_0121
mov eax, dword ptr [_ARDATA]
add eax, dword ptr [ebp-20]
mov dword ptr [_OBJDATA], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [_OBJDATA+4], eax
.L_0121:
.L_0120:
jmp .L_0114
jmp .L_011B
.L_011C:
push 2
push offset _Lt_0123
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0126
.L_0127:
push 3
push offset _Lt_0124
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .L_0126
.L_0128:
push 10
push offset _Lt_0125
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .L_0122
.L_0126:
jmp .L_011B
.L_0122:
jmp .L_0114
.L_0129:
.L_011B:
mov eax, dword ptr [ebp-24]
add dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
and eax, 1
add dword ptr [ebp-20], eax
.L_0115:
jmp .L_0113
.L_0114:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.L_010A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_012A:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 0
call _fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .L_012D
jmp .L_012B
.L_012D:
.L_012C:
push dword ptr [ebp-4]
call _fb_FileSize
add esp, 4
mov ebx, eax
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jle .L_012F
push dword ptr [ebp-8]
call _malloc
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-4]
call _fb_FileGetIOB
add esp, 20
test eax, eax
je .L_0131
jmp .L_012B
.L_0131:
.L_0130:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
.L_012F:
.L_012E:
push dword ptr [ebp-4]
call _fb_FileClose
add esp, 4
test eax, eax
je .L_0132
push 0
push 0
push offset _Lt_0133
push 860
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0132:
.L_012B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFBCTINFFROMOBJ:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0134:
call _FBTARGETSUPPORTSCOFF
test eax, eax
je .L_0137
call _FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_013A
.L_013B:
push 34404
call _HLOADFBCTINFFROMCOFF
add esp, 4
jmp .L_0138
.L_013A:
cmp dword ptr [ebp-4], 0
jne .L_013C
.L_013D:
push 332
call _HLOADFBCTINFFROMCOFF
add esp, 4
.L_013C:
.L_0138:
jmp .L_0136
.L_0137:
call _FBTARGETSUPPORTSELF
test eax, eax
je .L_013E
call _FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .L_0141
.L_0142:
push 62
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .L_013F
.L_0141:
cmp dword ptr [ebp-4], 0
jne .L_0143
.L_0144:
push 3
call _HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .L_013F
.L_0143:
cmp dword ptr [ebp-4], 3
jne .L_0145
.L_0146:
push 183
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .L_013F
.L_0145:
cmp dword ptr [ebp-4], 2
jne .L_0147
.L_0148:
push 40
call _HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .L_013F
.L_0147:
cmp dword ptr [ebp-4], 5
je .L_014A
.L_014B:
cmp dword ptr [ebp-4], 6
jne .L_0149
.L_014A:
push 21
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .L_013F
.L_0149:
cmp dword ptr [ebp-4], 4
jne .L_014C
.L_014D:
push 20
call _HLOADFBCTINFFROMELF32_H
add esp, 4
.L_014C:
.L_013F:
jmp .L_0136
.L_013E:
call _FBTARGETSUPPORTSMACHO
test eax, eax
je .L_014E
call _HLOADFBCTINFFROMMACHO
.L_014E:
.L_0136:
cmp dword ptr [_FBCTINF+4], 0
jne .L_0150
jmp .L_0135
.L_0150:
.L_014F:
mov eax, dword ptr [_FBCTINF]
movzx ebx, byte ptr [eax]
cmp ebx, 16
jne .L_0152
mov dword ptr [_PARSER+16], -1
mov dword ptr [_PARSER], 1
jmp .L_0151
.L_0152:
mov dword ptr [_PARSER+16], 0
.L_0151:
.L_0135:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESETBUFFERS:
.L_0159:
mov dword ptr [_ARDATA], 0
mov dword ptr [_ARDATA+4], 0
mov dword ptr [_OBJDATA], 0
mov dword ptr [_OBJDATA+4], 0
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
.L_015A:
ret
.balign 16
_OBJINFOINIT:
push ebp
mov ebp, esp
.L_015B:
call _HRESETBUFFERS
mov dword ptr [_PARSER], 0
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_PARSER+4]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_PARSER+16], 0
mov dword ptr [_PARSER+20], -1
.L_015C:
mov esp, ebp
pop ebp
ret
.balign 16
_HGETNEXTSTRING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0177:
mov eax, offset _Lt_0000
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PARSER]
mov dword ptr [ebp-8], eax
.L_0179:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jge .L_017A
inc dword ptr [_PARSER]
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .L_017C
mov ebx, dword ptr [_FBCTINF]
add ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_0178
.L_017C:
.L_017B:
jmp .L_0179
.L_017A:
.L_0178:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__I:
.L_01B1:
push offset _PARSER
call __ZN16OBJINFOPARSERCTXC1Ev
add esp, 4
.L_01B2:
ret
.balign 16
__GLOBAL__D:
.L_01B4:
push offset _PARSER
call __ZN16OBJINFOPARSERCTXD1Ev
add esp, 4
.L_01B5:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_001B:	.ascii	"\\\0"
.balign 4
_Lt_001C:	.ascii	"fbctinf\0"
.balign 4
_Lt_001D:	.ascii	"__fb_ct.inf\0"

.section .bss
.balign 4
	.lcomm	_ARDATA,8
.balign 4
	.lcomm	_OBJDATA,8
.balign 4
	.lcomm	_FBCTINF,8
.balign 4
	.lcomm	_PARSER,24

.section .data
.balign 4
_FBCTINFNAME:
.ascii ".fbctinf\0"
.balign 4
_ELFMAGIC:
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
_ARMAGIC:
.byte 33
.byte 60
.byte 97
.byte 114
.byte 99
.byte 104
.byte 62
.byte 10
.balign 4
_Lt_011D:	.ascii	"__fb_ct.inf/\0"
.balign 4
_Lt_0123:	.ascii	"/\0"
.balign 4
_Lt_0124:	.ascii	"//\0"
.balign 4
_Lt_0125:	.ascii	"__.SYMDEF\0"
.balign 4
_Lt_0133:	.ascii	"src/compiler/objinfo.bas\0"
.balign 4
_ENTRIES:
.int _Lt_0154
.int -1
.int _Lt_0155
.int -1
.int _Lt_0156
.int 0
.int _Lt_0157
.int 0
.int _Lt_0158
.int -1
.balign 4
_Lt_0154:	.ascii	"-l\0"
.balign 4
_Lt_0155:	.ascii	"-p\0"
.balign 4
_Lt_0156:	.ascii	"-mt\0"
.balign 4
_Lt_0157:	.ascii	"-gfx\0"
.balign 4
_Lt_0158:	.ascii	"-lang\0"
.balign 4
_Lt_0169:	.ascii	"lib\0"
.balign 4
_Lt_016A:	.ascii	".a\0"

.section .ctors
.int _fb_ctor__objinfo
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
