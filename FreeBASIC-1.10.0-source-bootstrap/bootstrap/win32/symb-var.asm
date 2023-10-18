	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBVARINIT@0
_SYMBVARINIT@0:
.L_0067:
push 0
push 0
push 0
push 0
push 0
push 0
push offset _Lt_006A
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [_SYMB+99628], eax
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006B
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006C
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006E
push 0
push offset _Lt_006D
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push dword ptr [_SYMB+99628]
call _SYMBSTRUCTEND@8
mov dword ptr [_SYMB+99612], 0
mov eax, dword ptr [_ENV+296]
mov dword ptr [_SYMB+99616], eax
mov eax, dword ptr [_ENV+296]
sal eax, 1
mov dword ptr [_SYMB+99620], eax
mov eax, dword ptr [_ENV+296]
imul eax, 6
mov dword ptr [_SYMB+99624], eax
mov eax, dword ptr [_ENV+296]
mov dword ptr [_SYMB+99632], eax
mov eax, dword ptr [_ENV+296]
sal eax, 1
mov dword ptr [_SYMB+99636], eax
.L_0068:
ret

.section .bss
.balign 4
	.lcomm	_Lt_006F,16

.section .data
.balign 4
_Lt_006E:
.int _Lt_006F
.int _Lt_006F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBVAREND@0
_SYMBVAREND@0:
.L_0070:
.L_0071:
ret
.balign 16

.globl _SYMBGETDESCTYPEARRAYDTYPE@12
_SYMBGETDESCTYPEARRAYDTYPE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0072:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+28]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx], eax
.L_0073:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBGETDESCTYPEDIMENSIONS@4
_SYMBGETDESCTYPEDIMENSIONS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_0074:
push 8
push offset _Lt_0076
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrCompare@16
test eax, eax
jne .L_0078
mov dword ptr [ebp-4], -1
jmp .L_0075
.L_0078:
.L_0077:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_ENV+296]
imul ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
sub edi, esi
sbb ebx, ecx
mov esi, edi
mov dword ptr [ebp-8], esi
mov esi, dword ptr [_ENV+296]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.L_0075:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDARRAYDESCRIPTORTYPE@12
_SYMBADDARRAYDESCRIPTORTYPE@12:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_0079:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .L_007D
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.L_007D:
.L_007C:
push 0
push 8
push offset _Lt_0076
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 0
jle .L_007F
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
.L_007F:
.L_007E:
push 0
push 2
push offset _Lt_0080
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0081
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call _SYMBMANGLETYPE@16
call _SYMBMANGLERESETABBREV@0
push 0
push 2
push offset _Lt_0082
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-52]
push eax
lea eax, [ebp-48]
push eax
push 0
push dword ptr [ebp-16]
call _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE@28
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .L_0085
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .L_007A
.L_0085:
.L_0084:
or dword ptr [ebp-48], 8192
push 1
push dword ptr [ebp-48]
push 0
push 0
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-32], eax
mov dword ptr [_Lt_008F], 0
mov dword ptr [_Lt_008F+4], 0
mov dword ptr [_Lt_008F+8], 0
mov dword ptr [_Lt_008F+12], 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_0090
push 0
push offset _Lt_0086
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_0090
push 0
push offset _Lt_0087
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0090
push 0
push offset _Lt_0088
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0090
push 0
push offset _Lt_0089
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0090
push 0
push offset _Lt_008A
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0090
push 0
push offset _Lt_008B
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
cmp dword ptr [ebp+8], -1
jne .L_008D
mov dword ptr [ebp+8], 8
.L_008D:
.L_008C:
mov dword ptr [_Lt_008F], 0
mov dword ptr [_Lt_008F+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [_Lt_008F+8], ecx
mov dword ptr [_Lt_008F+12], ebx
push 0
push 0
push 0
push 0
push dword ptr [_SYMB+99628]
push 20
push offset _Lt_0090
push 1
push offset _Lt_008E
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push dword ptr [ebp-32]
call _SYMBSTRUCTEND@8
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
lea ecx, [ebp-28]
push ecx
call _fb_StrDelete@4
lea ecx, [ebp-16]
push ecx
call _fb_StrDelete@4
.L_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_008F,16

.section .data
.balign 4
_Lt_0090:
.int _Lt_008F
.int _Lt_008F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDARRAYDESC@4
_SYMBADDARRAYDESC@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0091:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_0094
push 0
call _SYMBUNIQUEID@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_0096
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_0096:
.L_0095:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .L_0093
.L_0094:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 48
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .L_0098
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 512
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .L_009A
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset _Lt_00AE
call _fb_StrAssign@20
push 0
push -1
push 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_00AE
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_00AE
call _fb_StrAssign@20
cmp dword ptr [_ENV+104], 1
jne .L_009E
push 0
push 2
push offset _Lt_0080
push -1
push offset _Lt_00AE
call _fb_StrConcatAssign@20
.L_009E:
.L_009D:
mov eax, dword ptr [_Lt_00AE]
mov dword ptr [ebp-8], eax
.L_009A:
.L_0099:
jmp .L_0097
.L_0098:
push 0
call _SYMBUNIQUEID@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .L_00A0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.L_00A0:
.L_009F:
mov dword ptr [ebp-40], 16
.L_0097:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .L_00A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00A4
and dword ptr [ebp-24], -17
.L_00A4:
.L_00A3:
and dword ptr [ebp-24], -33
.L_00A2:
.L_00A1:
.L_0093:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .L_00A6
cmp dword ptr [_PARSER+100], 0
jne .L_00A8
mov ebx, dword ptr [_PARSER+108]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .L_00A7
.L_00A8:
mov dword ptr [ebp-28], 0
.L_00A7:
jmp .L_00A5
.L_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-28], ebx
.L_00A5:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _SYMBADDARRAYDESCRIPTORTYPE@12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 20
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push 0
push dword ptr [ebp-28]
push 0
push 1
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .L_00AA
jmp .L_0092
.L_00AA:
.L_00A9:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], ecx
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+48], 0
mov dword ptr [esi+52], 0
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+12]
and ecx, 2
or ecx, dword ptr [ebp-40]
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+12], ecx
push dword ptr [ebp-16]
call _SYMBVARINITFIELDS@4
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+96], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.L_0092:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00AE,12

.section .text
.balign 16

.globl _SYMBARRAYHASUNKNOWNBOUNDS@4
_SYMBARRAYHASUNKNOWNBOUNDS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00BC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00BF
jmp .L_00BD
.L_00BF:
.L_00BE:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_00C1
.L_00C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .L_00C6
cmp dword ptr [ecx+8], 0
jne .L_00C6
.L_00C7:
mov dword ptr [ebp-4], -1
jmp .L_00BD
.L_00C6:
.L_00C5:
.L_00C2:
inc dword ptr [ebp-8]
.L_00C1:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .L_00C4
.L_00C3:
.L_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBMAYBEADDARRAYDESC@4
_SYMBMAYBEADDARRAYDESC@4:
push ebp
mov ebp, esp
push ebx
.L_00C8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .L_00CB
jmp .L_00C9
.L_00CB:
.L_00CA:
push dword ptr [ebp+8]
call _SYMBARRAYHASUNKNOWNBOUNDS@4
test eax, eax
je .L_00CD
jmp .L_00C9
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+88], 0
jne .L_00CF
push dword ptr [ebp+8]
call _SYMBADDARRAYDESC@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+88], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+92], ecx
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+88]
call _ASTBUILDARRAYDESCINITREE@12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+88]
mov dword ptr [ebx+56], eax
.L_00CF:
.L_00CE:
.L_00C9:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBSETARRAYDIMTB@12
_SYMBSETARRAYDIMTB@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_00D0:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D3
.L_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebx+12]
mov dword ptr [ecx+12], eax
.L_00D4:
inc dword ptr [ebp-4]
.L_00D3:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .L_00D6
.L_00D5:
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS@4
.L_00D1:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16
_SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ecx]
adc ebx, dword ptr [ecx+4]
add eax, 4294967295
adc ebx, 4294967295
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+8], eax
mov dword ptr [ecx+12], ebx
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS@4
.L_00D8:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBCHECKDYNAMICARRAYDIMENSIONS@8
_SYMBCHECKDYNAMICARRAYDIMENSIONS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00DA:
cmp dword ptr [ebp+12], -1
jne .L_00DD
jmp .L_00DB
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, -1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebp-4]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00DF
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call _ERRREPORTEX@20
.L_00DF:
.L_00DE:
.L_00DB:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBVARINITFIELDS@4
_SYMBVARINITFIELDS@4:
push ebp
mov ebp, esp
push ebx
.L_00E2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+72], 0
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+80], 1
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+88], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+116], 0
.L_00E3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBVARINITARRAYDIMENSIONS@12
_SYMBVARINITARRAYDIMENSIONS@12:
push ebp
mov ebp, esp
push ebx
.L_00E4:
cmp dword ptr [ebp+12], 0
je .L_00E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .L_00E9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .L_00E8
.L_00E9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBSETARRAYDIMTB@12
.L_00E8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16384
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00EB
push dword ptr [ebp+8]
call _SYMBMAYBEADDARRAYDESC@4
.L_00EB:
.L_00EA:
.L_00E7:
.L_00E6:
.L_00E5:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBADDVAR@40
_SYMBADDVAR@40:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_00EE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .L_00F1
jl .L_0106
cmp dword ptr [ebp+24], 0
ja .L_00F1
.L_0106:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBCALCLEN@8
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.L_00F1:
.L_00F0:
cmp dword ptr [ebp+12], 0
jne .L_00F3
cmp dword ptr [_PARSER+104], 0
je .L_00F5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.L_00F5:
.L_00F4:
mov dword ptr [ebp-24], 0
jmp .L_00F2
.L_00F3:
mov dword ptr [ebp-24], 512
.L_00F2:
cmp dword ptr [ebp-20], 0
jne .L_00F7
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .L_00F9
mov eax, dword ptr [_SYMB+98544]
mov dword ptr [ebp-12], eax
jmp .L_00F8
.L_00F9:
mov eax, dword ptr [_PARSER+108]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.L_00F8:
mov edx, dword ptr [_SYMB+98540]
mov dword ptr [ebp-16], edx
jmp .L_00F6
.L_00F7:
lea edx, [_SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [_SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], edx
je .L_00FB
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .L_00FD
mov edx, dword ptr [_SYMB+98536]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_SYMB+98536]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.L_00FD:
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F6:
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
mov edx, dword ptr [ebp+44]
or edx, 32
push edx
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00FF
jmp .L_00EF
.L_00FF:
.L_00FE:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-24]
or dword ptr [eax+12], edx
mov edx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+28]
mov dword ptr [edx+40], ebx
mov dword ptr [edx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
push dword ptr [ebp-8]
call _SYMBVARINITFIELDS@4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _SYMBVARINITARRAYDIMENSIONS@12
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .L_0101
mov ebx, dword ptr [_PARSER+108]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], ebx
jmp .L_0100
.L_0101:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .L_0102
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.L_0102:
.L_0100:
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _SYMBISPARENTNAMESPACE@12
test eax, eax
je .L_0104
mov eax, dword ptr [ebp+20]
or dword ptr [eax+120], 64
.L_0104:
.L_0103:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16

.globl _SYMBADDTEMPVAR@8
_SYMBADDTEMPVAR@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.L_0107:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+1040]
and eax, 2
test eax, eax
jne .L_010B
or dword ptr [ebp-8], 2
.L_010B:
.L_010A:
push dword ptr [ebp-8]
push 4096
push offset _Lt_010C
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID@4
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0108:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_010D,16

.section .data
.balign 4
_Lt_010C:
.int _Lt_010D
.int _Lt_010D
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDIMPLICITVAR@12
_SYMBADDIMPLICITVAR@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_010E:
push dword ptr [ebp+16]
push 0
push offset _Lt_0111
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID@4
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_010F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0112,16

.section .data
.balign 4
_Lt_0111:
.int _Lt_0112
.int _Lt_0112
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDANDALLOCATETEMPVAR@4
_SYMBADDANDALLOCATETEMPVAR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0113:
push 0
push dword ptr [ebp+8]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [_PARSER+108]
call dword ptr [_IR+36]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0114:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETREALSIZE@4
_SYMBGETREALSIZE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0115:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .L_0117
mov eax, dword ptr [_ENV+296]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .L_0119
.L_0117:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.L_0119:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov ecx, dword ptr [ebx+84]
push ecx
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-24]
pop dword ptr [ebp-20]
add esp, 8
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.L_0116:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETREALTYPE@12
_SYMBGETREALTYPE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 114688
test ebx, ebx
je .L_011D
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .L_011F
mov dword ptr [ebp-4], 2
jmp .L_011E
.L_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .L_0120
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-8], eax
jmp .L_011E
.L_0120:
mov dword ptr [ebp-4], 1
.L_011E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_@16
jmp .L_011C
.L_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0121
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_0121:
.L_011C:
.L_011B:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBCALCARRAYELEMENTS@8
_SYMBCALCARRAYELEMENTS@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0124:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .L_0127
.L_012A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
sal eax, 4
mov ecx, dword ptr [ebx+68]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
sal ebx, 4
mov esi, dword ptr [eax+68]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
push ebx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
.L_0128:
inc dword ptr [ebp-20]
.L_0127:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .L_012A
.L_0129:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_0125:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCHECKARRAYSIZE@20
_SYMBCHECKARRAYSIZE@20:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_012B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_012E
.L_0131:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .L_0133
cmp dword ptr [ebx+8], 0
jne .L_0133
.L_0140:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .L_0132
.L_0133:
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp+12]
add eax, ebx
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov ecx, dword ptr [ebp+12]
add ecx, ebx
mov esi, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
sub esi, dword ptr [ecx]
sbb ebx, dword ptr [ecx+4]
add esi, 1
adc ebx, 0
mov eax, esi
mov ecx, ebx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ecx
.L_0132:
cmp dword ptr [ebp-16], 0
jb .L_0135
ja .L_0141
cmp dword ptr [ebp-20], 2147483647
jbe .L_0135
.L_0141:
mov dword ptr [ebp-24], -1
jmp .L_0130
.L_0135:
.L_0134:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
push eax
push ecx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_0137
ja .L_0142
cmp dword ptr [ebp-12], 2147483647
jbe .L_0137
.L_0142:
mov dword ptr [ebp-24], -1
jmp .L_0130
.L_0137:
.L_0136:
.L_012F:
inc dword ptr [ebp-28]
.L_012E:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_0131
.L_0130:
cmp dword ptr [ebp-24], 0
jne .L_0139
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
push ecx
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .L_013B
ja .L_0143
cmp dword ptr [ebp-12], 2147483647
jbe .L_013B
.L_0143:
mov dword ptr [ebp-24], -1
.L_013B:
.L_013A:
.L_0139:
.L_0138:
cmp dword ptr [ebp-24], 0
je .L_013D
mov dword ptr [ebp-4], 0
jmp .L_013C
.L_013D:
mov ecx, dword ptr [_ENV+244]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .L_0144
jb .L_0145
cmp dword ptr [ebp-12], ecx
ja .L_0144
.L_0145:
xor esi, esi
.L_0144:
and esi, dword ptr [ebp+24]
je .L_013F
push 0
push 1
push 0
push 23
call _ERRREPORTWARN@16
.L_013F:
.L_013E:
mov dword ptr [ebp-4], -1
.L_013C:
.L_012C:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBGETVARHASCTOR@4
_SYMBGETVARHASCTOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0146:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0149
mov dword ptr [ebp-4], 0
jmp .L_0147
.L_0149:
.L_0148:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_014C
.L_014D:
mov dword ptr [ebp-4], -1
jmp .L_0147
jmp .L_014A
.L_014C:
cmp dword ptr [ebp-8], 39
jne .L_014E
.L_014F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_0151
mov dword ptr [ebp-4], -1
jmp .L_0147
.L_0151:
.L_0150:
.L_014E:
.L_014A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_0153
mov dword ptr [ebp-4], -1
jmp .L_0147
.L_0153:
.L_0152:
push dword ptr [ebp+8]
call _SYMBHASCTOR@4
mov dword ptr [ebp-4], eax
.L_0147:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETVARHASDTOR@4
_SYMBGETVARHASDTOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0154:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .L_0157
mov dword ptr [ebp-4], 0
jmp .L_0155
.L_0157:
.L_0156:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .L_015A
.L_015B:
mov dword ptr [ebp-4], -1
jmp .L_0155
jmp .L_0158
.L_015A:
cmp dword ptr [ebp-8], 39
jne .L_015C
.L_015D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .L_015F
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_015F:
.L_015E:
.L_015C:
.L_0158:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .L_0161
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .L_0163
mov dword ptr [ebp-4], -1
jmp .L_0155
.L_0163:
.L_0162:
.L_0161:
.L_0160:
push dword ptr [ebp+8]
call _SYMBHASDTOR@4
mov dword ptr [ebp-4], eax
.L_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCLONEVAR@4
_SYMBCLONEVAR@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_0164:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .L_0168
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+96]
call _SYMBADDARRAYDESC@4
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_0168:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .L_0169
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-4], eax
jmp .L_0167
.L_0169:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .L_016B
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-12], eax
jmp .L_016D
.L_0170:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+68]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [_Lt_0171+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [_Lt_0171+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [_Lt_0171+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [_Lt_0171+eax+12], ebx
.L_016E:
inc dword ptr [ebp-8]
.L_016D:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .L_0170
.L_016F:
.L_016B:
.L_016A:
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset _Lt_0172
mov esi, dword ptr [ebp+8]
push dword ptr [esi+64]
push 0
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+32]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+28]
and eax, 511
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _SYMBADDVAR@40
mov dword ptr [ebp-4], eax
.L_0167:
.L_0165:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0171,128

.section .data
.balign 4
_Lt_0172:
.int _Lt_0171
.int _Lt_0171
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl _SYMBVARCHECKACCESS@4
_SYMBVARCHECKACCESS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0173:
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_0176
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .L_0178
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .L_017A
mov dword ptr [ebp-4], 0
jmp .L_0174
.L_017A:
.L_0179:
jmp .L_0177
.L_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .L_017B
mov dword ptr [ebp-4], 0
jmp .L_0174
.L_017B:
.L_0177:
.L_0176:
.L_0175:
mov dword ptr [ebp-4], -1
.L_0174:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDELVAR@8
_SYMBDELVAR@8:
push ebp
mov ebp, esp
push ebx
.L_017C:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS@4
cmp dword ptr [ebp+12], 0
jne .L_017F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+88], 0
je .L_0181
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
call _SYMBDELSYMBOL@8
.L_0181:
.L_0180:
.L_017F:
.L_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .L_0183
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .L_0185
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0187
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_0189
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.L_0189:
.L_0188:
.L_0187:
.L_0186:
jmp .L_0184
.L_0185:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_018B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .L_018D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.L_018D:
.L_018C:
.L_018B:
.L_018A:
.L_0184:
.L_0183:
.L_0182:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.L_017D:
pop ebx
mov esp, ebp
pop ebp
ret 8
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
_SYMBDROPARRAYDIMS@4:
push ebp
mov ebp, esp
.L_00AF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
.L_00B0:
mov esp, ebp
pop ebp
ret 4
.balign 16
_SYMBRECALCARRAYDIFF@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.L_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-32], eax
jmp .L_00B4
.L_00B7:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp-24]
add ebx, eax
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ecx, dword ptr [ebp-24]
add ecx, eax
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
sub esi, dword ptr [ecx+16]
sbb eax, dword ptr [ecx+20]
add esi, 1
adc eax, 0
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-28]
sal esi, 4
mov eax, dword ptr [ebp-24]
add eax, esi
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
add ecx, dword ptr [ebp-8]
adc esi, dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push esi
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
pop esi
add esp, 8
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], esi
.L_00B5:
inc dword ptr [ebp-28]
.L_00B4:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .L_00B7
.L_00B6:
mov ecx, dword ptr [ebp-20]
sal ecx, 4
mov esi, dword ptr [ebp-24]
add esi, ecx
mov eax, dword ptr [esi]
mov ecx, dword ptr [esi+4]
add eax, dword ptr [ebp-8]
adc ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+44]
push dword ptr [esi+40]
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
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+72], ecx
mov dword ptr [esi+76], eax
.L_00B2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SYMBRECALCARRAYDIFFANDELEMENTS@4:
push ebp
mov ebp, esp
push ebx
.L_00B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jle .L_00BB
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFF@4
push 0
push dword ptr [ebp+8]
call _SYMBCALCARRAYELEMENTS@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+80], eax
mov dword ptr [ebx+84], edx
jmp .L_00BA
.L_00BB:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+72], 0
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+80], 1
mov dword ptr [eax+84], 0
.L_00BA:
.L_00B9:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_006A:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
_Lt_006B:	.ascii	"elements\0"
.balign 4
_Lt_006C:	.ascii	"lbound\0"
.balign 4
_Lt_006D:	.ascii	"ubound\0"
.balign 4
_Lt_0076:	.ascii	"FBARRAY\0"
.balign 4
_Lt_0080:	.ascii	"$\0"
.balign 4
_Lt_0081:	.ascii	"<\0"
.balign 4
_Lt_0082:	.ascii	">\0"
.balign 4
_Lt_0086:	.ascii	"data\0"
.balign 4
_Lt_0087:	.ascii	"ptr\0"
.balign 4
_Lt_0088:	.ascii	"size\0"
.balign 4
_Lt_0089:	.ascii	"element_len\0"
.balign 4
_Lt_008A:	.ascii	"dimensions\0"
.balign 4
_Lt_008B:	.ascii	"flags\0"
.balign 4
_Lt_008E:	.ascii	"dimTB\0"
