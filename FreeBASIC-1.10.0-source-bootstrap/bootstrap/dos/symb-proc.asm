	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBPROCINIT
_SYMBPROCINIT:
.L_0067:
mov dword ptr [_SYMB+99040], 0
mov dword ptr [_SYMB+99044], 0
push 6
push 8
push 8
lea eax, [_SYMB+99048]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+99080], 0
mov dword ptr [_SYMB+99084], 0
push 6
push 8
push 8
lea eax, [_SYMB+99088]
push eax
call _LISTINIT
add esp, 16
.L_0068:
ret
.balign 16

.globl _SYMBPROCEND
_SYMBPROCEND:
.L_0069:
lea eax, [_SYMB+99088]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+99048]
push eax
call _LISTEND
add esp, 4
.L_006A:
ret
.balign 16

.globl _SYMBPROCALLOCEXT
_SYMBPROCALLOCEXT:
push ebp
mov ebp, esp
push ebx
.L_006B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .L_006E
push 76
call _XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], eax
.L_006E:
.L_006D:
.L_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCFREEEXT
_SYMBPROCFREEEXT:
push ebp
mov ebp, esp
.L_006F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 0
.L_0072:
.L_0071:
.L_0070:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCRETURNSONSTACK
_SYMBPROCRETURNSONSTACK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0076
jmp .L_0074
.L_0076:
.L_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
jne .L_0078
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_0079
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+128]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_007D
.L_0079:
mov dword ptr [ebp-8], 0
.L_007D:
cmp dword ptr [ebp-8], 0
je .L_007C
jmp .L_0074
.L_007C:
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0078:
.L_0077:
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCARGLEN
_SYMBCALCARGLEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0082:
cmp dword ptr [ebp+16], 2
je .L_0086
.L_0087:
cmp dword ptr [ebp+16], 3
jne .L_0085
.L_0086:
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0085:
.L_0084:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_0089
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .L_0083
.L_0089:
.L_0088:
push dword ptr [_ENV+296]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCLEN
add esp, 8
push edx
push eax
call _HALIGNTOPOW2
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_0083:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCPARAMLEN
_SYMBCALCPARAMLEN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008A:
cmp dword ptr [ebp+16], 4
jne .L_008D
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_008C
.L_008D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCARGLEN
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_008C:
.L_008B:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCCALCSTDCALLSUFFIXN
_SYMBPROCCALCSTDCALLSUFFIXN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-20], ebx
.L_0090:
cmp dword ptr [ebp-20], 0
je .L_0091
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+28]
mov ebx, eax
call _TYPEISTRIVIAL
add esp, 8
not eax
and ebx, eax
je .L_0093
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+28]
call _SYMBCALCLEN
add esp, 8
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
jmp .L_0092
.L_0093:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], edx
.L_0092:
mov ebx, dword ptr [ebp-20]
mov edx, dword ptr [ebx+172]
mov dword ptr [ebp-20], edx
jmp .L_0090
.L_0091:
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.L_008F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCCALCBYTESTOPOP
_SYMBPROCCALCBYTESTOPOP:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0095:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 5
je .L_009A
.L_009B:
cmp dword ptr [ebp-24], 6
jne .L_0099
.L_009A:
call _FBIS64BIT
test eax, eax
jne .L_009D
cmp dword ptr [_ENV+108], 0
jne .L_009F
mov dword ptr [ebp-20], -1
.L_009F:
.L_009E:
.L_009D:
.L_009C:
jmp .L_0097
.L_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 3
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
.L_00A0:
.L_0097:
cmp dword ptr [ebp-20], 0
je .L_00A2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
.L_00A3:
cmp dword ptr [ebp-24], 0
je .L_00A4
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+76], 0
jne .L_00A6
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-16], ecx
adc dword ptr [ebp-12], ebx
.L_00A6:
.L_00A5:
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-24], ebx
jmp .L_00A3
.L_00A4:
.L_00A2:
.L_00A1:
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00A8
mov eax, dword ptr [_ENV+284]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .L_00AA
mov ebx, dword ptr [_ENV+296]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.L_00AA:
.L_00A9:
.L_00A8:
.L_00A7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.L_0096:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROCPARAM
_SYMBADDPROCPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00AD:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+32]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 4
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
push 0
push 1
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00B0
jmp .L_00AE
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
inc ebx
mov eax, dword ptr [ebp+8]
mov word ptr [eax+68], bx
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBCALCPARAMLEN
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+28]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+64], 0
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [edx+68], eax
cmp dword ptr [ebp+28], 3
jne .L_00B2
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+24]
call _SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+72], eax
jmp .L_00B1
.L_00B2:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+72], 0
.L_00B1:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00B3
mov dword ptr [ebp-12], 24
jmp .L_00BB
.L_00B3:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00BB:
cmp dword ptr [ebp-12], 20
jne .L_00B6
cmp dword ptr [ebp+28], 1
jne .L_00B8
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBISPARENTNAMESPACE
add esp, 12
test eax, eax
je .L_00BA
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 32
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
.L_00B5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMAKEPARAMOPTIONAL
_SYMBMAKEPARAMOPTIONAL:
push ebp
mov ebp, esp
push ebx
.L_00BC:
cmp dword ptr [ebp+16], 0
jne .L_00BF
jmp .L_00BD
.L_00BF:
.L_00BE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+70]
inc eax
mov ebx, dword ptr [ebp+8]
mov word ptr [ebx+70], ax
.L_00BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISPROCOVERLOADOF
_SYMBISPROCOVERLOADOF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00C0:
cmp dword ptr [ebp+12], 0
jne .L_00C3
mov dword ptr [ebp-4], 0
jmp .L_00C1
.L_00C3:
.L_00C2:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_00C5
mov dword ptr [ebp-4], -1
jmp .L_00C1
.L_00C5:
.L_00C4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .L_00C7
mov dword ptr [ebp-4], 0
jmp .L_00C1
.L_00C7:
.L_00C6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.L_00C8:
cmp dword ptr [ebp-8], 0
je .L_00C9
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .L_00CB
mov dword ptr [ebp-4], -1
jmp .L_00C1
.L_00CB:
.L_00CA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
jmp .L_00C8
.L_00C9:
mov dword ptr [ebp-4], 0
.L_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCRECALCREALTYPE
_SYMBPROCRECALCREALTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_00CF
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.L_00CF:
.L_00CE:
mov ebx, dword ptr [ebp-4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_00D3
.L_00D4:
cmp dword ptr [ebp-12], 7
jne .L_00D2
.L_00D3:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
jmp .L_00D0
.L_00D2:
cmp dword ptr [ebp-12], 20
jne .L_00D5
.L_00D6:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _SYMBISPARENTNAMESPACE
add esp, 12
test eax, eax
je .L_00D8
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 64
jmp .L_00D7
.L_00D8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+124]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 31
cmp ebx, 20
je .L_00DA
mov dword ptr [ebp-8], 0
.L_00DA:
.L_00D9:
.L_00D7:
.L_00D5:
.L_00D0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+88], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+92], ebx
.L_00CD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROC
_SYMBADDPROC:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01A8:
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+68]
mov dword ptr [ebp-16], eax
or dword ptr [ebp+28], 1
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HSETUPPROC
add esp, 48
mov dword ptr [ebp-4], eax
.L_01A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDOPERATOR
_SYMBADDOPERATOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01AA:
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+40], eax
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+8]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01AD
push dword ptr [ebp+8]
call _SYMBPROCFREEEXT
add esp, 4
jmp .L_01AB
.L_01AD:
.L_01AC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDCTOR
_SYMBADDCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01AE:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
.L_01AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
_SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01B0:
cmp dword ptr [_PARSER+100], 0
sete al
shr eax, 1
sbb eax, eax
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01B3
lea ecx, [_SYMB+98352]
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
lea ecx, [eax+56]
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
lea ecx, [eax+68]
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
or dword ptr [ecx], 1
jmp .L_01B2
.L_01B3:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [_SYMB+98528]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [_SYMB+98536]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
lea ecx, [eax+68]
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
or dword ptr [ecx], 128
.L_01B2:
push 0
push -1
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+24]
push dword ptr [ecx]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01B5
cmp dword ptr [ebp+12], 0
jne .L_01B7
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
jmp .L_01B1
.L_01B7:
.L_01B6:
.L_01B8:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
.L_01BB:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+76]
mov dword ptr [ebp-20], eax
.L_01BE:
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01BF
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+64]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+64]
call _ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_01C1
jmp .L_01BF
.L_01C1:
.L_01C0:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_01BE
.L_01BF:
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01C3
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01B1
.L_01C3:
.L_01C2:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+156]
mov dword ptr [ebp-12], eax
.L_01BD:
cmp dword ptr [ebp-12], 0
jne .L_01BB
.L_01BC:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-8], ecx
.L_01BA:
cmp dword ptr [ebp-8], 0
jne .L_01B8
.L_01B9:
.L_01B5:
.L_01B4:
mov dword ptr [ebp-4], 0
.L_01B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROCPTR
_SYMBADDPROCPTR:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01CA:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
or dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+24]
or dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
push 0
push 7
push offset _Lt_01CC
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
push 22
lea eax, [ebp-32]
push eax
call _SYMBMANGLETYPE
add esp, 16
call _SYMBMANGLERESETABBREV
push 0
push 2
push offset _Lt_01CD
push -1
lea eax, [ebp-32]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+28]
call _fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp+24]
push eax
lea eax, [ebp+20]
push eax
push dword ptr [ebp+8]
push dword ptr [ebp-32]
call _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 28
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01CF
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .L_01CB
.L_01CF:
.L_01CE:
push 133
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HSETUPPROC
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01D1
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16384
.L_01D1:
.L_01D0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.L_01CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROCPTRFROMFUNCTION
_SYMBADDPROCPTRFROMFUNCTION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_01D2:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+96]
mov dword ptr [ebx+96], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
.L_01D4:
cmp dword ptr [ebp-12], 0
je .L_01D5
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+68]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+28]
push 0
push dword ptr [ebp-8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 2048
test ebx, ebx
je .L_01D7
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2048
.L_01D7:
.L_01D6:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBMAKEPARAMOPTIONAL
add esp, 12
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
jmp .L_01D4
.L_01D5:
mov dword ptr [ebp-16], 2048
mov dword ptr [ebp-20], 2048
or dword ptr [ebp-20], 1024
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
and ebx, dword ptr [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
and eax, dword ptr [ebx+4]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call _SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-4], eax
.L_01D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPREADDPROC
_SYMBPREADDPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01D8:
lea eax, [_SYMB+4]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+38], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], 0
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+70], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+80], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_ENV+276]
mov dword ptr [eax+84], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+88], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+104], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+106], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [_SYMB+98528]
lea eax, [ebx+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+160], eax
mov eax, dword ptr [_SYMB+98528]
lea ebx, [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+140], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+144], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+148], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+152], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+156], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+164], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+172], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_01D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
__Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.L_01DA:
cmp dword ptr [ebp+8], 1
jne .L_01DD
.L_01DE:
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_01E0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], ebx
.L_01E0:
.L_01DF:
jmp .L_01DC
.L_01DD:
cmp dword ptr [ebp+8], 2
jne .L_01E1
.L_01E2:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx]
and ecx, 31
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or ecx, eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 32505856
or ecx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
jmp .L_01DC
.L_01E1:
cmp dword ptr [ebp+8], 3
jne .L_01E3
.L_01E4:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 52
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.L_01E3:
.L_01DC:
.L_01DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
__Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.L_01E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+72]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
.L_01E6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDVARFORPARAM
_SYMBADDVARFORPARAM:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.L_01E7:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-76], eax
jmp .L_01EB
.L_01ED:
mov dword ptr [ebp-64], 32768
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-68]
call _TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_01EF
mov dword ptr [ebp-64], 65536
.L_01EF:
.L_01EE:
jmp .L_01EA
.L_01F0:
mov dword ptr [ebp-64], 65536
jmp .L_01EA
.L_01F1:
mov dword ptr [ebp-64], 16384
jmp .L_01EA
.L_01F2:
jmp .L_01E8
jmp .L_01EA
.L_01EB:
mov eax, dword ptr [ebp-76]
add eax, 4294967295
cmp eax, 2
ja .L_01F2
mov eax, dword ptr [ebp-76]
jmp dword ptr [_.L_01F3+eax*4-4]
_.L_01F3:
.int .L_01ED
.int .L_01F0
.int .L_01F1
.L_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_01F5
or dword ptr [ebp-64], 1048576
.L_01F5:
.L_01F4:
push 0
push dword ptr [ebp-64]
lea ebx, [ebp-56]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-68]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_01F7
jmp .L_01E8
.L_01F7:
.L_01F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [eax+72]
mov dword ptr [ebx+88], ecx
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2048
test ebx, ebx
je .L_01F9
mov ebx, dword ptr [ebp-60]
or dword ptr [ebx+12], 2048
.L_01F9:
.L_01F8:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 524288
je .L_01FB
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 524288
.L_01FB:
.L_01FA:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
.L_01E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDVARFORPROCRESULTPARAM
_SYMBADDVARFORPROCRESULTPARAM:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_01FC:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
jne .L_0200
mov dword ptr [ebp-4], 0
jmp .L_01FD
.L_0200:
.L_01FF:
push 1
push 65536
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.L_01FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROCRESULTVAR
_SYMBADDPROCRESULTVAR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0201:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_0205
push dword ptr [ebp+8]
call _SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0202
.L_0205:
.L_0204:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .L_0207
mov eax, dword ptr [ebp-64]
and eax, 31
mov ebx, dword ptr [ebp-64]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-64]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-64]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-64], eax
.L_0207:
.L_0206:
push 1
push 131072
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-64]
push 0
push offset _Lt_0208
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
push -1
push dword ptr [ebp-60]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.L_0202:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDPROCINSTANCEPARAM
_SYMBADDPROCINSTANCEPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0209:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 10
jne .L_020D
.L_020E:
mov dword ptr [ebp-4], 20
jmp .L_020B
.L_020D:
cmp dword ptr [ebp-8], 11
jne .L_020F
.L_0210:
.L_020F:
.L_020B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .L_0212
or dword ptr [ebp-4], 512
.L_0212:
.L_0211:
push 0
push 524288
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-4]
push offset _Lt_0023
push dword ptr [ebp+12]
call _SYMBADDPROCPARAM
add esp, 32
.L_020A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDOVERLOADPROC
_SYMBFINDOVERLOADPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0213:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0216
mov dword ptr [ebp-4], 0
jmp .L_0214
.L_0216:
.L_0215:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0218
mov dword ptr [ebp-4], 0
jmp .L_0214
.L_0218:
.L_0217:
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .L_021A
dec dword ptr [ebp-32]
.L_021A:
.L_0219:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_021B:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_021F
dec dword ptr [ebp-28]
.L_021F:
.L_021E:
cmp dword ptr [ebp-40], 0
je .L_0221
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_0223
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .L_0225
mov dword ptr [ebp-28], -1
.L_0225:
.L_0224:
jmp .L_0222
.L_0223:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_0227
mov dword ptr [ebp-28], -1
.L_0227:
.L_0226:
.L_0222:
.L_0221:
.L_0220:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jne .L_0229
cmp dword ptr [ebp-32], 0
jne .L_022B
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0214
.L_022B:
.L_022A:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-16], eax
.L_022C:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .L_0230
jmp .L_022D
.L_0230:
.L_022F:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+28]
cmp dword ptr [eax+28], ebx
je .L_0232
jmp .L_022D
.L_0232:
.L_0231:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+32], ecx
je .L_0234
jmp .L_022D
.L_0234:
.L_0233:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+168]
mov dword ptr [ebp-12], ecx
dec dword ptr [ebp-28]
.L_022E:
cmp dword ptr [ebp-28], 0
jg .L_022C
.L_022D:
cmp dword ptr [ebp-28], 0
jne .L_0236
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_0214
.L_0236:
.L_0235:
.L_0229:
.L_0228:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-8], ebx
.L_021D:
cmp dword ptr [ebp-8], 0
jne .L_021B
.L_021C:
mov dword ptr [ebp-4], 0
.L_0214:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDOPOVLPROC
_SYMBFINDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_023C:
cmp dword ptr [ebp+8], 27
je .L_023F
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_023D
.L_023F:
.L_023E:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_0240:
cmp dword ptr [ebp-8], 0
je .L_0241
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .L_0243
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .L_0245
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_023D
.L_0245:
.L_0244:
.L_0243:
.L_0242:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .L_0240
.L_0241:
mov dword ptr [ebp-4], 0
.L_023D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDCTORPROC
_SYMBFINDCTORPROC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0246:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0249
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_0247
jmp .L_0248
.L_0249:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
.L_0248:
.L_0247:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDCLOSESTOVLPROC
_SYMBFINDCLOSESTOVLPROC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0331:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 0
jne .L_0334
mov dword ptr [ebp-4], 0
jmp .L_0332
.L_0334:
.L_0333:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_0335:
lea eax, [ebp-32]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
or eax, 8
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKOVLPROC
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-32], 0
je .L_0339
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
cmp ebx, dword ptr [ebp-20]
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_033B
mov dword ptr [ebp-36], -1
mov ebx, dword ptr [ebp+24]
and ebx, 2
je .L_033D
mov ebx, dword ptr [ebp-24]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
.L_033D:
.L_033C:
cmp dword ptr [ebp-36], 0
je .L_033F
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-28], 1
.L_033F:
.L_033E:
jmp .L_033A
.L_033B:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .L_0340
inc dword ptr [ebp-28]
.L_0340:
.L_033A:
.L_0339:
.L_0338:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.L_0337:
cmp dword ptr [ebp-8], 0
jne .L_0335
.L_0336:
cmp dword ptr [ebp-28], 1
jle .L_0342
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
mov dword ptr [ebp-4], 0
jmp .L_0341
.L_0342:
cmp dword ptr [ebp-12], 0
je .L_0344
lea eax, [ebp-32]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKOVLPROC
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-32], 0
jne .L_0346
mov dword ptr [ebp-4], 0
jmp .L_0345
.L_0346:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0345:
jmp .L_0343
.L_0344:
mov dword ptr [ebp-4], 0
.L_0343:
.L_0341:
.L_0332:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDBOPOVLPROC
_SYMBFINDBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_034A:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
je .L_034F
.L_0350:
cmp dword ptr [ebp-36], 10
jne .L_034E
.L_034F:
jmp .L_034C
.L_034E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 20
je .L_0355
.L_0356:
cmp dword ptr [ebp-40], 10
jne .L_0354
.L_0355:
jmp .L_0352
.L_0354:
mov dword ptr [ebp-4], 0
jmp .L_034B
.L_0357:
.L_0352:
.L_0351:
.L_034C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], -1
lea eax, [ebp-28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-20], 0
push 2
push dword ptr [ebp+20]
lea eax, [ebp-16]
push eax
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
push dword ptr [ebx+99120]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0359
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_035B
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _ERRREPORT
add esp, 12
.L_035B:
.L_035A:
.L_0359:
.L_0358:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.L_034B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDSELFBOPOVLPROC
_SYMBFINDSELFBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_035C:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_0360
.L_0361:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+136], 0
jne .L_0363
mov dword ptr [ebp-4], 0
jmp .L_035D
.L_0363:
.L_0362:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-24], ebx
jmp .L_035E
.L_0360:
mov dword ptr [ebp-4], 0
jmp .L_035D
.L_0364:
.L_035E:
cmp dword ptr [ebp-24], 0
jne .L_0366
mov dword ptr [ebp-4], 0
jmp .L_035D
.L_0366:
.L_0365:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+20]
lea ebx, [ebp-16]
push ebx
push 1
push dword ptr [ebp-24]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0368
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_036A
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _ERRREPORT
add esp, 12
.L_036A:
.L_0369:
jmp .L_0367
.L_0368:
push dword ptr [ebp-20]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_036C
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-20], 0
.L_036C:
.L_036B:
.L_0367:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_035D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDUOPOVLPROC
_SYMBFINDUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_036D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
je .L_0372
.L_0373:
cmp dword ptr [ebp-24], 10
jne .L_0371
.L_0372:
jmp .L_036F
.L_0371:
mov dword ptr [ebp-4], 0
jmp .L_036E
.L_0374:
.L_036F:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+16]
lea ebx, [ebp-16]
push ebx
push 1
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset _SYMB
add eax, ebx
push dword ptr [eax+99120]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0376
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0378
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ERRREPORT
add esp, 12
.L_0378:
.L_0377:
.L_0376:
.L_0375:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_036E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDSELFUOPOVLPROC
_SYMBFINDSELFUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0379:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 20
jne .L_037D
.L_037E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+136], 0
jne .L_0380
mov dword ptr [ebp-4], 0
jmp .L_037A
.L_0380:
.L_037F:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-12], ebx
jmp .L_037B
.L_037D:
mov dword ptr [ebp-4], 0
jmp .L_037A
.L_0381:
.L_037B:
cmp dword ptr [ebp-12], 0
jne .L_0383
mov dword ptr [ebp-4], 0
jmp .L_037A
.L_0383:
.L_0382:
push 0
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp-12]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0385
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0387
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ERRREPORT
add esp, 12
.L_0387:
.L_0386:
jmp .L_0384
.L_0385:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0389
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-8]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-8], 0
.L_0389:
.L_0388:
.L_0384:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_037A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDCASTOVLPROC
_SYMBFINDCASTOVLPROC:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_03A4:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 20
jne .L_03A8
.L_03A9:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .L_03AB
mov dword ptr [ebp-4], 0
jmp .L_03A5
.L_03AB:
.L_03AA:
mov eax, dword ptr [ebp-44]
cmp dword ptr [eax+136], 0
jne .L_03AD
mov dword ptr [ebp-4], 0
jmp .L_03A5
.L_03AD:
.L_03AC:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+140]
mov dword ptr [ebp-8], eax
jmp .L_03A6
.L_03A8:
mov dword ptr [ebp-4], 0
jmp .L_03A5
.L_03AE:
.L_03A6:
cmp dword ptr [ebp-8], 0
jne .L_03B0
mov dword ptr [ebp-4], 0
jmp .L_03A5
.L_03B0:
.L_03AF:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03B1
mov dword ptr [ebp-36], 24
jmp .L_03CE
.L_03B1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_03CE:
cmp dword ptr [ebp-36], 0
je .L_03B4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
.L_03B5:
cmp dword ptr [ebp-16], 0
je .L_03B6
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _HCHECKCASTOVL
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_03B8
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 1
jmp .L_03B7
.L_03B8:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .L_03B9
cmp dword ptr [ebp-28], 0
jle .L_03BB
inc dword ptr [ebp-32]
.L_03BB:
.L_03BA:
.L_03B9:
.L_03B7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-16], ebx
jmp .L_03B5
.L_03B6:
jmp .L_03B3
.L_03B4:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-16], ebx
.L_03BC:
cmp dword ptr [ebp-16], 0
je .L_03BD
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+32], 0
jne .L_03BF
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 16
jg .L_03C1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
cmp ebx, eax
jle .L_03C3
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp+8], ebx
.L_03C3:
.L_03C2:
.L_03C1:
.L_03C0:
.L_03BF:
.L_03BE:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-16], eax
jmp .L_03BC
.L_03BD:
.L_03B3:
cmp dword ptr [ebp-32], 1
jle .L_03C5
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_03C7
push 98
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORTPARAM
add esp, 16
.L_03C7:
.L_03C6:
mov dword ptr [ebp-20], 0
jmp .L_03C4
.L_03C5:
cmp dword ptr [ebp-20], 0
je .L_03C9
push dword ptr [ebp-20]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_03CB
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_03CD
push 0
push 1
push 0
push dword ptr [ebp-20]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call _ERRREPORTEX
add esp, 20
.L_03CD:
.L_03CC:
mov dword ptr [ebp-20], 0
.L_03CB:
.L_03CA:
.L_03C9:
.L_03C8:
.L_03C4:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_03A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDCTOROVLPROC
_SYMBFINDCTOROVLPROC:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_03CF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
lea eax, [ebp-16]
push eax
push 1
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-4], eax
.L_03D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELPROTOTYPE
_SYMBDELPROTOTYPE:
push ebp
mov ebp, esp
push ebx
.L_03D5:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jle .L_03D8
push dword ptr [ebp+8]
call _HDELPARAMS
add esp, 4
.L_03D8:
.L_03D7:
push dword ptr [ebp+8]
call _SYMBPROCFREEEXT
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.L_03D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDGLOBALCTOR
_SYMBADDGLOBALCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_03DD:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 65538
push dword ptr [ebp+8]
lea eax, [_SYMB+99040]
push eax
call _HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.L_03DE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDGLOBALDTOR
_SYMBADDGLOBALDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_03DF:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 131074
push dword ptr [ebp+8]
lea eax, [_SYMB+99080]
push eax
call _HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.L_03E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCPROCMATCH
_SYMBCALCPROCMATCH:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_03EB:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_03ED
mov dword ptr [ebp-8], 2
jmp .L_0407
.L_03ED:
mov dword ptr [ebp-8], 1
.L_0407:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03F0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 225
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_03F0:
.L_03EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp ebx, ecx
je .L_03F2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 225
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_03F2:
.L_03F1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .L_03F4
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 226
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_03F4:
.L_03F3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
cmp ecx, ebx
je .L_03F6
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2048
test ecx, ecx
je .L_03F8
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 229
jmp .L_03F7
.L_03F8:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 230
.L_03F7:
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_03F6:
.L_03F5:
mov ecx, dword ptr [ebp+8]
movsx ebx, word ptr [ecx+68]
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
cmp ebx, eax
je .L_03FA
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_03FA:
.L_03F9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_03FC
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_03FE
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+4]
and ecx, 524288
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_0400
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-20], ecx
.L_0400:
.L_03FF:
.L_03FE:
.L_03FD:
.L_03FC:
.L_03FB:
.L_0401:
cmp dword ptr [ebp-16], 0
je .L_0402
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBCALCPARAMMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0404
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .L_03EC
.L_0404:
.L_0403:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .L_0406
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.L_0406:
.L_0405:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_0401
.L_0402:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_03EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCCHECKOVERRIDDEN
_SYMBPROCCHECKOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0413:
push dword ptr [ebp+8]
call _SYMBPROCGETOVERRIDDEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0416
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .L_0418
mov eax, dword ptr [ebp-8]
cmp eax, 226
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+12]
je .L_041A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_041C
mov dword ptr [ebp-8], 227
jmp .L_041B
.L_041C:
mov dword ptr [ebp-8], 228
.L_041B:
.L_041A:
.L_0419:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT
add esp, 12
.L_0418:
.L_0417:
.L_0416:
.L_0415:
.L_0414:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCSETVTABLEINDEX
_SYMBPROCSETVTABLEINDEX:
push ebp
mov ebp, esp
push ebx
.L_041E:
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
.L_041F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCGETVTABLEINDEX
_SYMBPROCGETVTABLEINDEX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0420:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0423
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-4], eax
.L_0423:
.L_0422:
.L_0421:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCGETOVERRIDDEN
_SYMBPROCGETOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0424:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0427
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-4], eax
.L_0427:
.L_0426:
.L_0425:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETPROCRESULT
_SYMBGETPROCRESULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0428:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_042B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_042B:
.L_042A:
.L_0429:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCHASFWDREFINSIGNATURE
_SYMBPROCHASFWDREFINSIGNATURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_042C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .L_042F
mov dword ptr [ebp-4], -1
jmp .L_042D
.L_042F:
.L_042E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
.L_0430:
cmp dword ptr [ebp-8], 0
je .L_0431
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
call _TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .L_0433
mov dword ptr [ebp-4], -1
jmp .L_042D
.L_0433:
.L_0432:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_0430
.L_0431:
mov dword ptr [ebp-4], 0
.L_042D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HDUMPDYNAMICARRAYDIMENSIONS
_HDUMPDYNAMICARRAYDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0465:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0467
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0469
.L_046C:
cmp dword ptr [ebp-28], 1
jle .L_046E
push 0
push 3
push offset _Lt_046F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_046E:
.L_046D:
push 0
push 4
push offset _Lt_0470
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.L_046A:
inc dword ptr [ebp-28]
.L_0469:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .L_046C
.L_046B:
push 0
push 3
push offset _Lt_0471
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_0466:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBPROCPTRTOSTR
_SYMBPROCPTRTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_049D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HSUBORFUNCTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_049E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETFULLPROCNAME
_SYMBGETFULLPROCNAME:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_049F:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_04B8
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_04A1:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_04A2
push 0
push -1
push -1
push offset _Lt_04B8
push -1
push 2
push offset _Lt_0007
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
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
push offset _Lt_04B8
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_04A1
.L_04A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_04A6
push 0
push 12
push offset _Lt_04A7
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
jmp .L_04A5
.L_04A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .L_04A8
push 0
push 11
push offset _Lt_04A9
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
jmp .L_04A5
.L_04A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4096
test ebx, ebx
je .L_04AA
push 0
push 11
push offset _Lt_04A9
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
jmp .L_04A5
.L_04AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 16
test eax, eax
je .L_04AB
push 0
push 10
push offset _Lt_04AC
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_04AE
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
sal eax, 4
push dword ptr [_AST_OPTB+eax+8]
push -1
push offset _Lt_04B8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_04B8
call _fb_StrAssign
add esp, 20
.L_04AE:
.L_04AD:
jmp .L_04A5
.L_04AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_04B0
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_04B8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_04B8
call _fb_StrAssign
add esp, 20
push 0
push 11
push offset _Lt_04B2
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_04B4
push 0
push 4
push offset _Lt_04B5
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
jmp .L_04B3
.L_04B4:
push 0
push 4
push offset _Lt_04B6
push -1
push offset _Lt_04B8
call _fb_StrConcatAssign
add esp, 20
.L_04B3:
jmp .L_04A5
.L_04B0:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_04B8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_04B8
call _fb_StrAssign
add esp, 20
.L_04A5:
mov eax, dword ptr [_Lt_04B8]
mov dword ptr [ebp-4], eax
.L_04A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04B8,12

.section .text
.balign 16

.globl _SYMBMETHODTOSTR
_SYMBMETHODTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_04B9:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.L_04BA:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDEFAULTPARAMMODE
_SYMBGETDEFAULTPARAMMODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_04BB:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-8], ebx
jmp .L_04BE
.L_04C0:
mov dword ptr [ebp-4], 2
jmp .L_04BC
jmp .L_04BD
.L_04C1:
mov dword ptr [ebp-4], 1
jmp .L_04BC
jmp .L_04BD
.L_04BE:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967292
cmp ebx, 19
ja .L_04C1
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.L_04C2+ebx*4-16]
_.L_04C2:
.int .L_04C0
.int .L_04C1
.int .L_04C1
.int .L_04C0
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C1
.int .L_04C0
.int .L_04C0
.int .L_04C1
.int .L_04C0
.int .L_04C1
.int .L_04C1
.int .L_04C0
.L_04BD:
.L_04BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBAREPROCMODESEQUAL
_SYMBAREPROCMODESEQUAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_04C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 1
je .L_04C7
.L_04C8:
cmp dword ptr [ebp-8], 2
jne .L_04C6
.L_04C7:
cmp dword ptr [ebp-12], 1
je .L_04CB
.L_04CC:
cmp dword ptr [ebp-12], 2
jne .L_04CA
.L_04CB:
mov dword ptr [ebp-4], -1
jmp .L_04C4
.L_04CA:
.L_04C9:
.L_04C6:
.L_04C5:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_04C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBALLOCOVLCALLARG
_SYMBALLOCOVLCALLARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_04CE:
push dword ptr [ebp+8]
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_04D1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 0
jne .L_04D3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4], ebx
jmp .L_04D2
.L_04D3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_04D2:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
jmp .L_04D0
.L_04D1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+8], 0
jne .L_04D5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_04D5:
.L_04D4:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
.L_04D0:
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_04CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREEOVLCALLARGS
_SYMBFREEOVLCALLARGS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_04D6:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_04D8:
cmp dword ptr [ebp-4], 0
je .L_04D9
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_04D8
.L_04D9:
.L_04D7:
pop ebx
mov esp, ebp
pop ebp
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
_HALIGNTOPOW2:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0080:
mov eax, dword ptr [ebp+16]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp+8]
adc ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
dec eax
not eax
mov edi, eax
mov esi, edi
sar esi, 31
and ecx, edi
and ebx, esi
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
.L_0081:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCANOVERLOAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00DB:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00DE
mov dword ptr [ebp-4], -1
jmp .L_00DC
.L_00DE:
.L_00DD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 4
jne .L_00E0
mov dword ptr [ebp-4], 0
jmp .L_00DC
.L_00E0:
.L_00DF:
.L_00E1:
cmp dword ptr [ebp-8], 0
je .L_00E2
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
jne .L_00E4
mov dword ptr [ebp-4], 0
jmp .L_00DC
.L_00E4:
.L_00E3:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-8], ebx
jmp .L_00E1
.L_00E2:
mov dword ptr [ebp-4], -1
.L_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCANOVERLOADBYDESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+56]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00E8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+56]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00EA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+68]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_00EC
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
cmp eax, dword ptr [ecx+68]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00EC:
.L_00EB:
jmp .L_00E9
.L_00EA:
mov dword ptr [ebp-4], -1
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDOVLPROC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00ED:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_00F0
jmp .L_00EE
.L_00F0:
.L_00EF:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
and ecx, 32
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp eax, ecx
je .L_00F2
jmp .L_00EE
.L_00F2:
.L_00F1:
mov ecx, dword ptr [ebp+8]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
je .L_00F4
dec dword ptr [ebp-24]
.L_00F4:
.L_00F3:
cmp dword ptr [ebp-24], 0
jle .L_00F6
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+56], 4
jne .L_00F8
jmp .L_00EE
.L_00F8:
.L_00F7:
.L_00F9:
cmp dword ptr [ebp-16], 0
je .L_00FA
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+28], 0
jne .L_00FC
jmp .L_00EE
.L_00FC:
.L_00FB:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+168]
mov dword ptr [ebp-16], eax
jmp .L_00F9
.L_00FA:
.L_00F6:
.L_00F5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_00FD:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_0101
dec dword ptr [ebp-20]
.L_0101:
.L_0100:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
je .L_0103
cmp dword ptr [ebp+32], 0
je .L_0105
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .L_0107
mov dword ptr [ebp-20], -1
.L_0107:
.L_0106:
jmp .L_0104
.L_0105:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_0109
mov dword ptr [ebp-20], -1
.L_0109:
.L_0108:
.L_0104:
.L_0103:
.L_0102:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jne .L_010B
cmp dword ptr [ebp-24], 0
jne .L_010D
jmp .L_00EE
.L_010D:
.L_010C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-12], eax
.L_010E:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .L_0112
jmp .L_010F
.L_0112:
.L_0111:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+28]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
and eax, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
or eax, ecx
test eax, eax
je .L_0114
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+56]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .L_0116
mov ebx, dword ptr [ebp-32]
and ebx, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
cmp ebx, ecx
je .L_0118
jmp .L_010F
.L_0118:
.L_0117:
.L_0116:
.L_0115:
mov ecx, dword ptr [ebp-32]
and ecx, 261632
and ecx, -513
mov ebx, dword ptr [ebp-36]
and ebx, 261632
and ebx, -513
cmp ecx, ebx
je .L_011A
jmp .L_010F
.L_011A:
.L_0119:
and dword ptr [ebp-32], 511
and dword ptr [ebp-36], 511
.L_0114:
.L_0113:
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .L_011C
jmp .L_010F
.L_011C:
.L_011B:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+32]
cmp dword ptr [ebx+32], eax
je .L_011E
jmp .L_010F
.L_011E:
.L_011D:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-12], eax
dec dword ptr [ebp-20]
.L_0110:
cmp dword ptr [ebp-20], 0
jg .L_010E
.L_010F:
cmp dword ptr [ebp-20], 0
jne .L_0120
jmp .L_00EE
.L_0120:
.L_011F:
.L_010B:
.L_010A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.L_00FF:
cmp dword ptr [ebp-8], 0
jne .L_00FD
.L_00FE:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
cmp dword ptr [ebp+48], 0
je .L_0121
mov dword ptr [ebp-28], 1
jmp .L_04E1
.L_0121:
mov dword ptr [ebp-28], 0
.L_04E1:
push dword ptr [ebp-28]
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0124
jmp .L_00EE
.L_0124:
.L_0123:
cmp dword ptr [ebp+24], 0
je .L_0126
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+148]
mov dword ptr [ebx+148], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+144]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+152], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+156], eax
cmp dword ptr [ebp-32], 0
je .L_0128
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+152], ebx
.L_0128:
.L_0127:
.L_0126:
.L_0125:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0129:
cmp dword ptr [ebp+24], 27
je .L_012C
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HADDOVLPROC
add esp, 44
mov dword ptr [ebp-4], eax
jmp .L_012A
.L_012C:
.L_012B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_012D:
cmp dword ptr [ebp-8], 0
je .L_012E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .L_0130
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .L_0132
mov dword ptr [ebp-4], 0
jmp .L_012A
.L_0132:
.L_0131:
.L_0130:
.L_012F:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .L_012D
.L_012E:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETUPPROCREGISTERPARAMETERS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0133:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .L_0137
.L_0138:
mov dword ptr [ebp-8], 1
jmp .L_0135
.L_0137:
cmp dword ptr [ebp-12], 6
jne .L_0139
.L_013A:
mov dword ptr [ebp-8], 2
.L_0139:
.L_0135:
cmp dword ptr [ebp-8], 0
jle .L_013C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 524288
test ebx, ebx
je .L_013E
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+76], eax
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
.L_013E:
.L_013D:
.L_013F:
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp eax, dword ptr [ebp-8]
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0140
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+56], 2
jne .L_0142
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+76], ebx
inc dword ptr [ebp-4]
jmp .L_0141
.L_0142:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_0144
mov dword ptr [ebp-16], 24
jmp .L_04E6
.L_0144:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_04E6:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .L_0143
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [_ENV+296]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebx+44], eax
jg .L_0147
jl .L_04E9
cmp dword ptr [ebx+40], ecx
ja .L_0147
.L_04E9:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx+76], eax
inc dword ptr [ebp-4]
.L_0147:
.L_0146:
.L_0143:
.L_0141:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-12], ecx
jmp .L_013F
.L_0140:
.L_013C:
.L_013B:
.L_0134:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETUPPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0148:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+32], -2147483648
jne .L_014B
push dword ptr [ebp+24]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], 0
.L_014B:
.L_014A:
cmp dword ptr [ebp+28], 0
jne .L_014D
cmp dword ptr [_PARSER+104], 0
je .L_014F
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp+28], eax
.L_014F:
.L_014E:
mov dword ptr [ebp-8], 0
jmp .L_014C
.L_014D:
mov dword ptr [ebp-8], 512
.L_014C:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+44]
and eax, 4108
test eax, eax
je .L_0151
or dword ptr [ebp+44], 1024
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_0153
push dword ptr [ebp+12]
call _SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0152
.L_0153:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .L_0154
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0152
.L_0154:
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR0
add esp, 4
mov dword ptr [ebp-24], eax
.L_0152:
cmp dword ptr [ebp-24], 0
jne .L_0156
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push 0
push 0
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_0158
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPCTORHEAD
add esp, 8
jmp .L_0157
.L_0158:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .L_0159
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPDTOR1
add esp, 8
jmp .L_0157
.L_0159:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPDTOR0
add esp, 8
.L_0157:
jmp .L_0155
.L_0156:
mov eax, dword ptr [ebp+44]
and eax, 4104
test eax, eax
je .L_015B
mov dword ptr [ebp-4], 0
jmp .L_0149
.L_015B:
.L_015A:
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push 0
push 0
push dword ptr [ebp+28]
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_015D
jmp .L_0149
.L_015D:
.L_015C:
.L_0155:
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_015F
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBCHECKCOMPCTOR
add esp, 8
.L_015F:
.L_015E:
jmp .L_0150
.L_0151:
mov eax, dword ptr [ebp+44]
and eax, 16
test eax, eax
je .L_0160
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .L_0162
jmp .L_0163
.L_0162:
.L_0161:
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [ebp+12]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0165
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPOPOVLHEAD
add esp, 8
jmp .L_0164
.L_0165:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp-32]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HADDOPOVLPROC
add esp, 40
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0167
jmp .L_0149
.L_0167:
.L_0166:
cmp dword ptr [ebp-32], 0
jne .L_0169
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBCHECKCOMPLETOP
add esp, 8
.L_0169:
.L_0168:
.L_0164:
jmp .L_0150
.L_0160:
.L_0163:
mov eax, dword ptr [ebp+52]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+52]
or eax, 32
push eax
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_016B
push 0
push dword ptr [ebp-12]
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_016D
jmp .L_0149
.L_016D:
.L_016C:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .L_016F
mov ebx, dword ptr [_ENV+1040]
and ebx, 1024
test ebx, ebx
jne .L_0171
jmp .L_0149
.L_0171:
.L_0170:
.L_016F:
.L_016E:
push dword ptr [ebp-12]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0173
jmp .L_0149
.L_0173:
.L_0172:
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
jmp .L_016A
.L_016B:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
jne .L_0175
mov eax, dword ptr [ebp+44]
and eax, 1
test eax, eax
je .L_0177
push dword ptr [ebp+8]
call _HCANOVERLOAD
add esp, 4
test eax, eax
jne .L_0179
jmp .L_0149
.L_0179:
.L_0178:
jmp .L_0176
.L_0177:
mov eax, dword ptr [_ENV+1040]
and eax, 1024
test eax, eax
je .L_017A
push dword ptr [ebp+8]
call _HCANOVERLOAD
add esp, 4
test eax, eax
je .L_017C
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
.L_017C:
.L_017B:
.L_017A:
.L_0176:
.L_0175:
.L_0174:
.L_016A:
.L_0150:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
je .L_017E
or dword ptr [ebp-8], 32
.L_017E:
.L_017D:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+84], ebx
cmp dword ptr [_PARSER+24], 306
jne .L_0180
mov ebx, dword ptr [_PARSER+104]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+104]
cmp eax, 6
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0182
or dword ptr [ebp-8], 2048
.L_0182:
.L_0181:
.L_0180:
.L_017F:
push dword ptr [ebp-20]
call _SYMBPROCRECALCREALTYPE
add esp, 4
mov eax, dword ptr [ebp+52]
and eax, 4
test eax, eax
je .L_0184
or dword ptr [ebp-8], 8
.L_0184:
.L_0183:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_0186
mov ebx, dword ptr [ebp-20]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_0188
dec dword ptr [ebp-32]
.L_0188:
.L_0187:
cmp dword ptr [ebp-24], 0
je .L_018A
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+108]
mov dword ptr [eax+108], ecx
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-24]
movsx ecx, word ptr [eax+104]
cmp dword ptr [ebp-32], ecx
jge .L_018C
mov cx, word ptr [ebp-32]
mov eax, dword ptr [ebp-24]
mov word ptr [eax+104], cx
.L_018C:
.L_018B:
mov ecx, dword ptr [ebp-24]
movsx eax, word ptr [ecx+106]
cmp dword ptr [ebp-32], eax
jle .L_018E
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-24]
mov word ptr [ecx+106], ax
.L_018E:
.L_018D:
jmp .L_0189
.L_018A:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+108], 0
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+104], ax
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+106], ax
.L_0189:
.L_0186:
.L_0185:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-8]
or dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_0190
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_0192
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
inc dword ptr [eax+156]
.L_0192:
.L_0191:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_0194
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
je .L_0196
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call _SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0195
.L_0196:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 4096
test ecx, ecx
je .L_0197
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call _SYMBGETCOMPDTOR0
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0195
.L_0197:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 16
test ecx, ecx
je .L_0198
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+112]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+40]
call _SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
jmp .L_0195
.L_0198:
cmp dword ptr [ebp+24], 0
je .L_0199
push -1
mov eax, dword ptr [ebp+52]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 3
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
je .L_019B
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_019D
mov dword ptr [ebp-16], 1
.L_019D:
.L_019C:
.L_019B:
.L_019A:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-28], eax
.L_0199:
.L_0195:
cmp dword ptr [ebp-28], 0
je .L_019F
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
jne .L_01A1
mov dword ptr [ebp-28], 0
.L_01A1:
.L_01A0:
.L_019F:
.L_019E:
.L_0194:
.L_0193:
cmp dword ptr [ebp-28], 0
je .L_01A3
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+8]
and eax, 512
test eax, eax
je .L_01A5
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
dec dword ptr [ecx+156]
.L_01A5:
.L_01A4:
push dword ptr [ebp-28]
call _SYMBPROCGETVTABLEINDEX
add esp, 4
push eax
push dword ptr [ebp-20]
call _SYMBPROCSETVTABLEINDEX
add esp, 8
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-28]
mov dword ptr [ecx+72], eax
jmp .L_01A2
.L_01A3:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
je .L_01A7
push dword ptr [ebp+12]
call _SYMBCOMPADDVIRTUAL
add esp, 4
push eax
push dword ptr [ebp-20]
call _SYMBPROCSETVTABLEINDEX
add esp, 8
.L_01A7:
.L_01A6:
.L_01A2:
.L_0190:
.L_018F:
push dword ptr [ebp-20]
call _HSETUPPROCREGISTERPARAMETERS
add esp, 4
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALCTYPESDIFF:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_024C:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+20]
and eax, 511
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_024E
mov dword ptr [ebp-28], 24
jmp .L_04EE
.L_024E:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.L_04EE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_0250
mov dword ptr [ebp-32], 24
jmp .L_04EF
.L_0250:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_04EF:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
jmp .L_0253
.L_0255:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .L_0257
.L_0259:
cmp dword ptr [ebp-20], 4
jne .L_025B
.L_025C:
cmp dword ptr [ebp-24], 4
jne .L_025E
.L_025F:
mov dword ptr [ebp-4], 1300
jmp .L_024D
jmp .L_025D
.L_025E:
cmp dword ptr [ebp-24], 7
jne .L_0260
.L_0261:
mov dword ptr [ebp-4], 777
jmp .L_024D
.L_0260:
.L_025D:
mov dword ptr [ebp-4], 0
jmp .L_024D
jmp .L_025A
.L_025B:
cmp dword ptr [ebp-20], 7
jne .L_0262
.L_0263:
cmp dword ptr [ebp-24], 4
jne .L_0265
.L_0266:
mov dword ptr [ebp-4], 777
jmp .L_024D
jmp .L_0264
.L_0265:
cmp dword ptr [ebp-24], 7
jne .L_0267
.L_0268:
mov dword ptr [ebp-4], 1300
jmp .L_024D
.L_0267:
.L_0264:
mov dword ptr [ebp-4], 0
jmp .L_024D
jmp .L_025A
.L_0262:
cmp dword ptr [ebp-20], 36
jne .L_0269
.L_026A:
cmp dword ptr [ebp-24], 4
jne .L_026C
.L_026D:
mov dword ptr [ebp-4], 1299
jmp .L_024D
jmp .L_026B
.L_026C:
cmp dword ptr [ebp-24], 7
jne .L_026E
.L_026F:
mov dword ptr [ebp-4], 776
jmp .L_024D
.L_026E:
.L_026B:
jmp .L_025A
.L_0269:
cmp dword ptr [ebp-20], 39
jne .L_0270
.L_0271:
cmp dword ptr [ebp-24], 4
jne .L_0273
.L_0274:
mov dword ptr [ebp-4], 776
jmp .L_024D
jmp .L_0272
.L_0273:
cmp dword ptr [ebp-24], 7
jne .L_0275
.L_0276:
mov dword ptr [ebp-4], 1299
jmp .L_024D
.L_0275:
.L_0272:
jmp .L_025A
.L_0270:
cmp dword ptr [ebp-24], 4
je .L_027A
.L_027B:
cmp dword ptr [ebp-24], 7
jne .L_0279
.L_027A:
cmp dword ptr [ebp+28], 0
jne .L_027D
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_027D:
.L_027C:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 20
je .L_027F
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_027F:
.L_027E:
.L_0279:
.L_0278:
.L_0277:
.L_025A:
cmp dword ptr [ebp-24], 10
jne .L_0281
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+16]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-24], eax
.L_0281:
.L_0280:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_0283
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
jne .L_0285
cmp dword ptr [ebp+28], 0
jne .L_0287
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_0287:
.L_0286:
push 0
push dword ptr [ebp+28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call _ASTCHECKCONVNONPTRTOPTR
add esp, 16
test eax, eax
je .L_0289
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_0289:
.L_0288:
mov dword ptr [ebp-4], 1
jmp .L_024D
.L_0285:
.L_0284:
mov eax, dword ptr [ebp-20]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-24]
cmp ecx, 32
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_028B
mov dword ptr [ebp-4], 780
jmp .L_024D
.L_028B:
.L_028A:
push dword ptr [ebp+24]
push dword ptr [ebp-24]
push dword ptr [ebp+32]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_024D
jmp .L_0282
.L_0283:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_028C
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_028C:
.L_0282:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_028D
mov dword ptr [ebp-44], 24
jmp .L_04F0
.L_028D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.L_04F0:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_028F
mov dword ptr [ebp-48], 24
jmp .L_04F1
.L_028F:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.L_04F1:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ecx, dword ptr [_SYMB_DTYPEMATCHTB+eax*4-68]
neg ecx
add ecx, 780
mov dword ptr [ebp-4], ecx
jmp .L_024D
jmp .L_0256
.L_0291:
mov ecx, dword ptr [ebp-20]
and ecx, 480
test ecx, ecx
je .L_0293
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_0293:
.L_0292:
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .L_0294
mov dword ptr [ebp-44], 24
jmp .L_04F3
.L_0294:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_04F3:
mov ecx, dword ptr [ebp-44]
sal ecx, 4
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_0296
mov dword ptr [ebp-48], 24
jmp .L_04F4
.L_0296:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_04F4:
mov ecx, dword ptr [ebp-48]
add ecx, dword ptr [ebp-52]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_024D
jmp .L_0256
.L_0298:
cmp dword ptr [ebp-20], 4
jne .L_029A
.L_029B:
mov dword ptr [ebp-4], 1299
jmp .L_024D
jmp .L_0299
.L_029A:
cmp dword ptr [ebp-20], 36
jne .L_029C
.L_029D:
mov dword ptr [ebp-4], 1298
jmp .L_024D
jmp .L_0299
.L_029C:
cmp dword ptr [ebp-20], 7
jne .L_029E
.L_029F:
mov dword ptr [ebp-4], 777
jmp .L_024D
jmp .L_0299
.L_029E:
cmp dword ptr [ebp-20], 39
jne .L_02A0
.L_02A1:
mov dword ptr [ebp-4], 776
jmp .L_024D
.L_02A0:
.L_0299:
jmp .L_0256
.L_0257:
cmp dword ptr [ebp-40], 2
ja .L_0256
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_02A2+eax*4]
_.L_02A2:
.int .L_0259
.int .L_0291
.int .L_0298
.L_0256:
jmp .L_0252
.L_02A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .L_02A5
.L_02A7:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_02A9
mov dword ptr [ebp-4], 0
jmp .L_024D
.L_02A9:
.L_02A8:
cmp dword ptr [ebp-24], 10
jne .L_02AB
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
.L_02AB:
.L_02AA:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_02AC
mov dword ptr [ebp-44], 24
jmp .L_04F6
.L_02AC:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.L_04F6:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_02AE
mov dword ptr [ebp-48], 24
jmp .L_04F7
.L_02AE:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.L_04F7:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ebx, dword ptr [_SYMB_DTYPEMATCHTB+eax*4-68]
neg ebx
add ebx, 780
mov dword ptr [ebp-4], ebx
jmp .L_024D
jmp .L_02A4
.L_02B0:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_02B1
mov dword ptr [ebp-44], 24
jmp .L_04F9
.L_02B1:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_04F9:
mov ebx, dword ptr [ebp-44]
sal ebx, 4
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_02B3
mov dword ptr [ebp-48], 24
jmp .L_04FA
.L_02B3:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_04FA:
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-52]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ebx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_024D
jmp .L_02A4
.L_02A5:
cmp dword ptr [ebp-40], 1
ja .L_02A4
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.L_02B5+eax*4]
_.L_02B5:
.int .L_02A7
.int .L_02B0
.L_02A4:
jmp .L_0252
.L_02B6:
cmp dword ptr [ebp-8], 2
jne .L_02B8
.L_02B9:
mov dword ptr [ebp-4], 1300
jmp .L_02B7
.L_02B8:
cmp dword ptr [ebp-8], 0
jne .L_02BA
.L_02BB:
cmp dword ptr [ebp-24], 4
jne .L_02BD
.L_02BE:
mov dword ptr [ebp-4], 1298
jmp .L_02BC
.L_02BD:
cmp dword ptr [ebp-24], 7
jne .L_02BF
.L_02C0:
mov dword ptr [ebp-4], 778
.L_02BF:
.L_02BC:
.L_02BA:
.L_02B7:
jmp .L_0252
.L_0253:
cmp dword ptr [ebp-36], 2
ja .L_0252
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.L_02C1+eax*4]
_.L_02C1:
.int .L_0255
.int .L_02A3
.int .L_02B6
.L_0252:
.L_024D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKOVLPARAM:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_02C2:
cmp dword ptr [ebp+16], 0
jne .L_02C5
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
je .L_02C7
mov dword ptr [ebp-4], 1300
jmp .L_02C3
jmp .L_02C6
.L_02C7:
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02C6:
.L_02C5:
.L_02C4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
sar ebx, 5
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-36], 3
jne .L_02C9
.L_02CA:
cmp dword ptr [ebp+20], 3
je .L_02CC
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02CC:
.L_02CB:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1040
jge .L_02CE
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02CE:
.L_02CD:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+68], 0
jle .L_02D0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+60]
cmp ecx, dword ptr [ebx+68]
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+60]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ecx, eax
je .L_02D2
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02D2:
.L_02D1:
.L_02D0:
.L_02CF:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .L_02C3
jmp .L_02C8
.L_02C9:
cmp dword ptr [ebp-36], 2
jne .L_02D3
.L_02D4:
mov eax, dword ptr [ebp+20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_02D5
mov dword ptr [ebp-40], 24
jmp .L_04FE
.L_02D5:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_04FE:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-44]
je .L_02D8
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_02D9
mov dword ptr [ebp-48], 24
jmp .L_0500
.L_02D9:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_0500:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_02DB
mov dword ptr [ebp-52], 24
jmp .L_0501
.L_02DB:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0501:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ecx, dword ptr [_ENV+296]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-56]
je .L_02DE
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02DE:
.L_02DD:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov eax, dword ptr [ebp-8]
and eax, 480
add eax, 32
or ecx, eax
mov eax, dword ptr [ebp-8]
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-8]
and eax, 32505856
or ecx, eax
mov dword ptr [ebp-8], ecx
inc dword ptr [ebp-16]
.L_02D8:
.L_02D7:
.L_02D3:
.L_02C8:
cmp dword ptr [ebp+20], 3
jne .L_02E0
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02E0:
.L_02DF:
mov ecx, dword ptr [ebp-8]
and ecx, 511
mov eax, dword ptr [ebp-12]
and eax, 511
cmp ecx, eax
jne .L_02E2
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .L_02E4
mov dword ptr [ebp-44], 1300
jmp .L_02E3
.L_02E4:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
jne .L_02E7
.L_02E8:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _SYMBGETUDTBASELEVEL
add esp, 8
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_02EA
mov eax, dword ptr [ebp-52]
imul eax, 10
neg eax
add eax, 1300
mov dword ptr [ebp-44], eax
.L_02EA:
.L_02E9:
jmp .L_02E5
.L_02E7:
cmp dword ptr [ebp-48], 22
jne .L_02EB
.L_02EC:
mov dword ptr [ebp-52], 0
lea eax, [ebp-52]
push eax
push dword ptr [ebp-28]
push dword ptr [ebp-24]
call _SYMBCALCPROCMATCH
add esp, 12
mov dword ptr [ebp-44], eax
.L_02EB:
.L_02E5:
.L_02E3:
cmp dword ptr [ebp-44], 0
jle .L_02EF
mov eax, dword ptr [ebp-8]
and eax, 261632
mov ecx, dword ptr [ebp-12]
and ecx, 261632
cmp eax, ecx
jne .L_02F1
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-4], ecx
jmp .L_02C3
.L_02F1:
.L_02F0:
lea ecx, [ebp-20]
push ecx
push dword ptr [ebp-36]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
je .L_02F3
cmp dword ptr [ebp-44], 1040
jle .L_02F5
add dword ptr [ebp-44], -260
.L_02F5:
.L_02F4:
mov eax, dword ptr [ebp-20]
imul eax, 10
add dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .L_02C3
.L_02F3:
.L_02F2:
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_02EF:
.L_02EE:
.L_02E2:
.L_02E1:
cmp dword ptr [ebp-8], 20
jne .L_02F7
.L_02F8:
mov eax, dword ptr [ebp+28]
and eax, 16
test eax, eax
jne .L_02FA
push 16
lea eax, [ebp-40]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
call _SYMBFINDCTOROVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_02FC
mov dword ptr [ebp-4], 580
jmp .L_02C3
.L_02FC:
.L_02FB:
.L_02FA:
.L_02F9:
mov eax, dword ptr [ebp+28]
and eax, 32
test eax, eax
jne .L_02FE
mov eax, dword ptr [ebp+28]
or eax, 32
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_0300
push dword ptr [ebp-36]
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-44]
push dword ptr [eax+28]
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
sar ecx, 5
push ecx
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 1040
jl .L_0302
add dword ptr [ebp-48], -520
jmp .L_0301
.L_0302:
cmp dword ptr [ebp-48], 780
jl .L_0303
add dword ptr [ebp-48], -780
jmp .L_0301
.L_0303:
mov dword ptr [ebp-48], 60
.L_0301:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_02C3
.L_0300:
.L_02FF:
.L_02FE:
.L_02FD:
mov dword ptr [ebp-4], 0
jmp .L_02C3
jmp .L_02F6
.L_02F7:
cmp dword ptr [ebp-8], 10
jne .L_0304
.L_0305:
mov dword ptr [ebp-4], 0
jmp .L_02C3
jmp .L_02F6
.L_0304:
cmp dword ptr [ebp-12], 20
jne .L_0308
.L_0309:
mov eax, dword ptr [ebp+28]
and eax, 32
test eax, eax
jne .L_030B
mov eax, dword ptr [ebp+28]
or eax, 32
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_030D
push dword ptr [ebp-36]
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-44]
push dword ptr [eax+28]
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
sar ecx, 5
push ecx
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 1040
jl .L_030F
add dword ptr [ebp-48], -520
jmp .L_030E
.L_030F:
cmp dword ptr [ebp-48], 780
jl .L_0310
add dword ptr [ebp-48], -780
jmp .L_030E
.L_0310:
mov dword ptr [ebp-48], 60
.L_030E:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_02C3
.L_030D:
.L_030C:
.L_030B:
.L_030A:
mov dword ptr [ebp-4], 0
jmp .L_02C3
.L_0308:
.L_0307:
.L_0306:
.L_02F6:
push dword ptr [ebp-36]
push dword ptr [ebp+16]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.L_02C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKOVLPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0311:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+36]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+28]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_0314
dec dword ptr [ebp-32]
.L_0314:
.L_0313:
cmp dword ptr [ebp-28], 0
je .L_0316
mov ebx, dword ptr [ebp+24]
and ebx, 1
test ebx, ebx
je .L_0318
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_031A
mov dword ptr [ebp-32], -1
.L_031A:
.L_0319:
jmp .L_0317
.L_0318:
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_031C
mov dword ptr [ebp-32], -1
.L_031C:
.L_031B:
.L_0317:
.L_0316:
.L_0315:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp+12], ebx
jg .L_031E
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_0320
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_0320:
.L_031F:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
jmp .L_0322
.L_0325:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp-24]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
push dword ptr [ebp-8]
push dword ptr [ebp+28]
call _HCHECKOVLPARAM
add esp, 24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0327
mov dword ptr [ebp-16], 0
jmp .L_0324
.L_0327:
.L_0326:
cmp dword ptr [ebp-12], 1040
jl .L_0329
mov eax, dword ptr [ebp+32]
inc dword ptr [eax]
.L_0329:
.L_0328:
mov eax, dword ptr [ebp-12]
add dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
.L_0323:
inc dword ptr [ebp-36]
.L_0322:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .L_0325
.L_0324:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+36]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
dec eax
mov dword ptr [ebp-40], eax
jmp .L_032B
.L_032E:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .L_0330
mov eax, dword ptr [ebp+36]
mov dword ptr [eax], 0
jmp .L_032D
.L_0330:
.L_032F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
.L_032C:
inc dword ptr [ebp-36]
.L_032B:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jle .L_032E
.L_032D:
.L_031E:
.L_031D:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0312:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKCASTOVL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_038A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
jne .L_038D
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jne .L_038F
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-8], ebx
jne .L_0391
mov dword ptr [ebp-4], 1300
jmp .L_038B
.L_0391:
.L_0390:
mov dword ptr [ebp-4], 1040
jmp .L_038B
.L_038F:
.L_038E:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0393
mov dword ptr [ebp-4], 0
jmp .L_038B
.L_0393:
.L_0392:
.L_038D:
.L_038C:
mov ebx, dword ptr [ebp+20]
and ebx, 4
test ebx, ebx
je .L_0395
mov dword ptr [ebp-4], 0
jmp .L_038B
.L_0395:
.L_0394:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0396
mov dword ptr [ebp-16], 24
jmp .L_050C
.L_0396:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_050C:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .L_039B
.L_039C:
cmp dword ptr [ebp-20], 10
jne .L_039A
.L_039B:
mov dword ptr [ebp-4], 0
jmp .L_038B
jmp .L_0398
.L_039A:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_039E
mov dword ptr [ebp-24], 24
jmp .L_050D
.L_039E:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_050D:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_03A2
.L_03A3:
mov dword ptr [ebp-4], 0
jmp .L_038B
.L_03A2:
.L_03A0:
.L_039D:
.L_0398:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
sar eax, 5
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.L_038B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELPARAMS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.L_03D3:
cmp dword ptr [ebp-4], 0
je .L_03D4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03D3
.L_03D4:
.L_03D2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDTOGLOBCTORLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03D9:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_03DC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
jmp .L_03DB
.L_03DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.L_03DB:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SYMBCALCPARAMMATCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03E1:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03E4
mov dword ptr [ebp-4], 0
jmp .L_03E2
.L_03E4:
.L_03E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
cmp dword ptr [eax+56], ecx
je .L_03E6
mov dword ptr [ebp-4], 0
jmp .L_03E2
.L_03E6:
.L_03E5:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 3
jne .L_03E8
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ecx+68], ebx
je .L_03EA
mov dword ptr [ebp-4], 0
jmp .L_03E2
.L_03EA:
.L_03E9:
.L_03E8:
.L_03E7:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSUBORFUNCTOSTR:
push ebp
mov ebp, esp
push ebx
.L_0434:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_0437
push 0
push 4
push offset _Lt_0438
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_0436
.L_0437:
push 0
push 9
push offset _Lt_0439
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0436:
.L_0435:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCMODETOSTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_043A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .L_043D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .L_0441
.L_0442:
cmp dword ptr [ebp-4], 2
jne .L_0440
.L_0441:
push 0
push 9
push offset _Lt_0443
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_043E
.L_0440:
cmp dword ptr [ebp-4], 5
jne .L_0444
.L_0445:
push 0
push 10
push offset _Lt_0446
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_043E
.L_0444:
cmp dword ptr [ebp-4], 6
jne .L_0447
.L_0448:
push 0
push 10
push offset _Lt_0449
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_043E
.L_0447:
cmp dword ptr [ebp-4], 4
jne .L_044A
.L_044B:
push 0
push 8
push offset _Lt_044C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_044A:
.L_043E:
jmp .L_043C
.L_043D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .L_0450
.L_0451:
cmp dword ptr [ebp-4], 2
jne .L_044F
.L_0450:
mov eax, dword ptr [_ENV+276]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_0455
.L_0456:
cmp dword ptr [ebp-8], 2
jne .L_0454
.L_0455:
jmp .L_0452
.L_0454:
push 0
push 9
push offset _Lt_0443
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0457:
.L_0452:
jmp .L_044D
.L_044F:
cmp dword ptr [ebp-4], 5
jne .L_0458
.L_0459:
push 0
push 10
push offset _Lt_0446
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_044D
.L_0458:
cmp dword ptr [ebp-4], 6
jne .L_045A
.L_045B:
push 0
push 10
push offset _Lt_0449
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_044D
.L_045A:
cmp dword ptr [ebp-4], 4
jne .L_045C
.L_045D:
cmp dword ptr [_ENV+276], 4
je .L_045F
push 0
push 8
push offset _Lt_044C
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_045F:
.L_045E:
jmp .L_044D
.L_045C:
cmp dword ptr [ebp-4], 3
jne .L_0460
.L_0461:
cmp dword ptr [_ENV+276], 3
je .L_0463
push 0
push 7
push offset _Lt_0464
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0463:
.L_0462:
.L_0460:
.L_044D:
.L_043C:
.L_043B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARAMSTOSTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_0472:
push 0
push 2
push offset _Lt_0467
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0475
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-4], ebx
.L_0475:
.L_0474:
.L_0476:
cmp dword ptr [ebp-4], 0
je .L_0477
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 1
je .L_047A
.L_047B:
cmp dword ptr [ebp-8], 2
je .L_047A
.L_047C:
cmp dword ptr [ebp-8], 3
jne .L_0479
.L_047A:
cmp dword ptr [ebp-8], 1
je .L_047F
.L_0480:
cmp dword ptr [ebp-8], 2
jne .L_047E
.L_047F:
mov ecx, dword ptr [_ENV+136]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+28]
mov ebx, ecx
call _SYMBGETDEFAULTPARAMMODE
add esp, 8
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0482
cmp dword ptr [ebp-8], 1
jne .L_0484
push 0
push 7
push offset _Lt_0485
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
jmp .L_0483
.L_0484:
push 0
push 7
push offset _Lt_0486
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0483:
.L_0482:
.L_0481:
jmp .L_047D
.L_047E:
cmp dword ptr [ebp-8], 3
jne .L_0487
.L_0488:
push 0
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call _HDUMPDYNAMICARRAYDIMENSIONS
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_0487:
.L_047D:
push 0
push -1
push -1
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
call _SYMBTYPETOSTR
add esp, 20
push eax
push 4
push offset _Lt_048A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .L_0478
.L_0479:
cmp dword ptr [ebp-8], 4
jne .L_048D
.L_048E:
push 0
push 4
push offset _Lt_048F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_048D:
.L_0478:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0491
push 0
push 3
push offset _Lt_046F
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0491:
.L_0490:
jmp .L_0476
.L_0477:
push 0
push 2
push offset _Lt_0492
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0473:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESULTTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0493:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0496
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .L_0498
push 0
push 7
push offset _Lt_0499
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref
add esp, 20
.L_0498:
.L_0497:
push 0
push -1
push -1
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _SYMBTYPETOSTR
add esp, 20
push eax
push 5
push offset _Lt_049A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.L_0496:
.L_0495:
.L_0494:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_0023:	.ascii	"THIS\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_Lt_01CC:	.ascii	"{fbfp}\0"
.balign 4
_Lt_01CD:	.ascii	"$\0"
.balign 4
_Lt_0208:	.ascii	"fb$result\0"
.balign 4
_Lt_0438:	.ascii	"sub\0"
.balign 4
_Lt_0439:	.ascii	"function\0"
.balign 4
_Lt_0443:	.ascii	" stdcall\0"
.balign 4
_Lt_0446:	.ascii	" thiscall\0"
.balign 4
_Lt_0449:	.ascii	" fastcall\0"
.balign 4
_Lt_044C:	.ascii	" pascal\0"
.balign 4
_Lt_0464:	.ascii	" cdecl\0"
.balign 4
_Lt_0467:	.ascii	"(\0"
.balign 4
_Lt_046F:	.ascii	", \0"
.balign 4
_Lt_0470:	.ascii	"any\0"
.balign 4
_Lt_0471:	.ascii	") \0"
.balign 4
_Lt_0485:	.ascii	"byval \0"
.balign 4
_Lt_0486:	.ascii	"byref \0"
.balign 4
_Lt_048A:	.ascii	"as \0"
.balign 4
_Lt_048F:	.ascii	"...\0"
.balign 4
_Lt_0492:	.ascii	")\0"
.balign 4
_Lt_0499:	.ascii	" byref\0"
.balign 4
_Lt_049A:	.ascii	" as \0"
.balign 4
_Lt_04A7:	.ascii	"constructor\0"
.balign 4
_Lt_04A9:	.ascii	"destructor\0"
.balign 4
_Lt_04AC:	.ascii	"operator.\0"
.balign 4
_Lt_04B2:	.ascii	".property.\0"
.balign 4
_Lt_04B5:	.ascii	"get\0"
.balign 4
_Lt_04B6:	.ascii	"set\0"
