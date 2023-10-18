	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBPROCINIT
SYMBPROCINIT:
.L_0066:
mov dword ptr [SYMB+99040], 0
mov dword ptr [SYMB+99044], 0
push 6
push 8
push 8
lea eax, [SYMB+99048]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+99080], 0
mov dword ptr [SYMB+99084], 0
push 6
push 8
push 8
lea eax, [SYMB+99088]
push eax
call LISTINIT
add esp, 16
.L_0067:
ret
.balign 16

.globl SYMBPROCEND
SYMBPROCEND:
.L_0068:
lea eax, [SYMB+99088]
push eax
call LISTEND
add esp, 4
lea eax, [SYMB+99048]
push eax
call LISTEND
add esp, 4
.L_0069:
ret
.balign 16

.globl SYMBPROCALLOCEXT
SYMBPROCALLOCEXT:
push ebp
mov ebp, esp
push ebx
.L_006A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .L_006D
push 76
call XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], eax
.L_006D:
.L_006C:
.L_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCFREEEXT
SYMBPROCFREEEXT:
push ebp
mov ebp, esp
.L_006E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0071
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 0
.L_0071:
.L_0070:
.L_006F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCRETURNSONSTACK
SYMBPROCRETURNSONSTACK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_0075
jmp .L_0073
.L_0075:
.L_0074:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
jne .L_0077
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .L_0078
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+128]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .L_007C
.L_0078:
mov dword ptr [ebp-8], 0
.L_007C:
cmp dword ptr [ebp-8], 0
je .L_007B
jmp .L_0073
.L_007B:
.L_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_0077:
.L_0076:
.L_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCARGLEN
SYMBCALCARGLEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0081:
cmp dword ptr [ebp+16], 2
je .L_0085
.L_0086:
cmp dword ptr [ebp+16], 3
jne .L_0084
.L_0085:
mov ebx, dword ptr [ENV+296]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0084:
.L_0083:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_0088
mov ebx, dword ptr [ENV+296]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .L_0082
.L_0088:
.L_0087:
push dword ptr [ENV+296]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call HALIGNTOPOW2
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_0082:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCPARAMLEN
SYMBCALCPARAMLEN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0089:
cmp dword ptr [ebp+16], 4
jne .L_008C
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .L_008B
.L_008C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCARGLEN
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.L_008B:
.L_008A:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCALCSTDCALLSUFFIXN
SYMBPROCCALCSTDCALLSUFFIXN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_008D:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-20], ebx
.L_008F:
cmp dword ptr [ebp-20], 0
je .L_0090
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
call TYPEISTRIVIAL
add esp, 8
not eax
and ebx, eax
je .L_0092
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+28]
call SYMBCALCLEN
add esp, 8
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
jmp .L_0091
.L_0092:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], edx
.L_0091:
mov ebx, dword ptr [ebp-20]
mov edx, dword ptr [ebx+172]
mov dword ptr [ebp-20], edx
jmp .L_008F
.L_0090:
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.L_008E:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCALCBYTESTOPOP
SYMBPROCCALCBYTESTOPOP:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0094:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 5
je .L_0099
.L_009A:
cmp dword ptr [ebp-24], 6
jne .L_0098
.L_0099:
call FBIS64BIT
test eax, eax
jne .L_009C
cmp dword ptr [ENV+108], 0
jne .L_009E
mov dword ptr [ebp-20], -1
.L_009E:
.L_009D:
.L_009C:
.L_009B:
jmp .L_0096
.L_0098:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 3
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
.L_009F:
.L_0096:
cmp dword ptr [ebp-20], 0
je .L_00A1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
.L_00A2:
cmp dword ptr [ebp-24], 0
je .L_00A3
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+76], 0
jne .L_00A5
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-16], ecx
adc dword ptr [ebp-12], ebx
.L_00A5:
.L_00A4:
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-24], ebx
jmp .L_00A2
.L_00A3:
.L_00A1:
.L_00A0:
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_00A7
mov eax, dword ptr [ENV+284]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .L_00A9
mov ebx, dword ptr [ENV+296]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.L_00A9:
.L_00A8:
.L_00A7:
.L_00A6:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.L_0095:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPARAM
SYMBADDPROCPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_00AC:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_00AF
jmp .L_00AD
.L_00AF:
.L_00AE:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
inc ebx
mov eax, dword ptr [ebp+8]
mov word ptr [eax+68], bx
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBCALCPARAMLEN
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
jne .L_00B1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+24]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+72], eax
jmp .L_00B0
.L_00B1:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+72], 0
.L_00B0:
mov eax, dword ptr [ebp+16]
and eax, 480
je .L_00B2
mov dword ptr [ebp-12], 24
jmp .L_00BA
.L_00B2:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.L_00BA:
cmp dword ptr [ebp-12], 20
jne .L_00B5
cmp dword ptr [ebp+28], 1
jne .L_00B7
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBISPARENTNAMESPACE
add esp, 12
test eax, eax
je .L_00B9
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 32
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
.L_00B5:
.L_00B4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBMAKEPARAMOPTIONAL
SYMBMAKEPARAMOPTIONAL:
push ebp
mov ebp, esp
push ebx
.L_00BB:
cmp dword ptr [ebp+16], 0
jne .L_00BE
jmp .L_00BC
.L_00BE:
.L_00BD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+70]
inc eax
mov ebx, dword ptr [ebp+8]
mov word ptr [ebx+70], ax
.L_00BC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISPROCOVERLOADOF
SYMBISPROCOVERLOADOF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00BF:
cmp dword ptr [ebp+12], 0
jne .L_00C2
mov dword ptr [ebp-4], 0
jmp .L_00C0
.L_00C2:
.L_00C1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .L_00C4
mov dword ptr [ebp-4], -1
jmp .L_00C0
.L_00C4:
.L_00C3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .L_00C6
mov dword ptr [ebp-4], 0
jmp .L_00C0
.L_00C6:
.L_00C5:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.L_00C7:
cmp dword ptr [ebp-8], 0
je .L_00C8
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .L_00CA
mov dword ptr [ebp-4], -1
jmp .L_00C0
.L_00CA:
.L_00C9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
jmp .L_00C7
.L_00C8:
mov dword ptr [ebp-4], 0
.L_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCRECALCREALTYPE
SYMBPROCRECALCREALTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00CB:
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
je .L_00CE
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
.L_00CE:
.L_00CD:
mov ebx, dword ptr [ebp-4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .L_00D2
.L_00D3:
cmp dword ptr [ebp-12], 7
jne .L_00D1
.L_00D2:
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
jmp .L_00CF
.L_00D1:
cmp dword ptr [ebp-12], 20
jne .L_00D4
.L_00D5:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call SYMBISPARENTNAMESPACE
add esp, 12
test eax, eax
je .L_00D7
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 64
jmp .L_00D6
.L_00D7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+124]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
and ebx, 31
cmp ebx, 20
je .L_00D9
mov dword ptr [ebp-8], 0
.L_00D9:
.L_00D8:
.L_00D6:
.L_00D4:
.L_00CF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+88], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+92], ebx
.L_00CC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROC
SYMBADDPROC:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_01A7:
mov eax, dword ptr [SYMB+98528]
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
call HSETUPPROC
add esp, 48
mov dword ptr [ebp-4], eax
.L_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDOPERATOR
SYMBADDOPERATOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01A9:
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
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
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_01AC
push dword ptr [ebp+8]
call SYMBPROCFREEEXT
add esp, 4
jmp .L_01AA
.L_01AC:
.L_01AB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_01AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDCTOR
SYMBADDCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_01AD:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
.L_01AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_01AF:
cmp dword ptr [PARSER+100], 0
sete al
shr eax, 1
sbb eax, eax
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01B2
lea ecx, [SYMB+98352]
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
jmp .L_01B1
.L_01B2:
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [SYMB+98536]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
lea ecx, [eax+68]
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+16]
or dword ptr [ecx], 128
.L_01B1:
push 0
push -1
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+24]
push dword ptr [ecx]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01B4
cmp dword ptr [ebp+12], 0
jne .L_01B6
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
jmp .L_01B0
.L_01B6:
.L_01B5:
.L_01B7:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
.L_01BA:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+76]
mov dword ptr [ebp-20], eax
.L_01BD:
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01BE
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+64]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+64]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .L_01C0
jmp .L_01BE
.L_01C0:
.L_01BF:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_01BD
.L_01BE:
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_01C2
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
jmp .L_01B0
.L_01C2:
.L_01C1:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+156]
mov dword ptr [ebp-12], eax
.L_01BC:
cmp dword ptr [ebp-12], 0
jne .L_01BA
.L_01BB:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-8], ecx
.L_01B9:
cmp dword ptr [ebp-8], 0
jne .L_01B7
.L_01B8:
.L_01B4:
.L_01B3:
mov dword ptr [ebp-4], 0
.L_01B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPTR
SYMBADDPROCPTR:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_01C9:
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
push offset Lt_01CB
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
push 22
lea eax, [ebp-32]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
push 0
push 2
push offset Lt_01CC
push -1
lea eax, [ebp-32]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+28]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrConcatAssign
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
call SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 28
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01CE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .L_01CA
.L_01CE:
.L_01CD:
push 133
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HSETUPPROC
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_01D0
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16384
.L_01D0:
.L_01CF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
.L_01CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPTRFROMFUNCTION
SYMBADDPROCPTRFROMFUNCTION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_01D1:
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+96]
mov dword ptr [ebx+96], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
.L_01D3:
cmp dword ptr [ebp-12], 0
je .L_01D4
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
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 2048
test ebx, ebx
je .L_01D6
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2048
.L_01D6:
.L_01D5:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBMAKEPARAMOPTIONAL
add esp, 12
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
jmp .L_01D3
.L_01D4:
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
call SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-4], eax
.L_01D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPREADDPROC
SYMBPREADDPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_01D7:
lea eax, [SYMB+4]
push eax
call LISTNEWNODE
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
mov ebx, dword ptr [ENV+276]
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
mov ebx, dword ptr [SYMB+98528]
lea eax, [ebx+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+160], eax
mov eax, dword ptr [SYMB+98528]
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
.L_01D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.L_01D9:
cmp dword ptr [ebp+8], 1
jne .L_01DC
.L_01DD:
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_01DF
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
.L_01DF:
.L_01DE:
jmp .L_01DB
.L_01DC:
cmp dword ptr [ebp+8], 2
jne .L_01E0
.L_01E1:
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
jmp .L_01DB
.L_01E0:
cmp dword ptr [ebp+8], 3
jne .L_01E2
.L_01E3:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 52
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.L_01E2:
.L_01DB:
.L_01DA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.L_01E4:
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
call _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
.L_01E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDVARFORPARAM
SYMBADDVARFORPARAM:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.L_01E6:
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
jmp .L_01EA
.L_01EC:
mov dword ptr [ebp-64], 32768
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-68]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .L_01EE
mov dword ptr [ebp-64], 65536
.L_01EE:
.L_01ED:
jmp .L_01E9
.L_01EF:
mov dword ptr [ebp-64], 65536
jmp .L_01E9
.L_01F0:
mov dword ptr [ebp-64], 16384
jmp .L_01E9
.L_01F1:
jmp .L_01E7
jmp .L_01E9
.L_01EA:
mov eax, dword ptr [ebp-76]
add eax, 4294967295
cmp eax, 2
ja .L_01F1
mov eax, dword ptr [ebp-76]
jmp dword ptr [.L_01F2+eax*4-4]
.L_01F2:
.int .L_01EC
.int .L_01EF
.int .L_01F0
.L_01E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .L_01F4
or dword ptr [ebp-64], 1048576
.L_01F4:
.L_01F3:
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
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .L_01F6
jmp .L_01E7
.L_01F6:
.L_01F5:
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
je .L_01F8
mov ebx, dword ptr [ebp-60]
or dword ptr [ebx+12], 2048
.L_01F8:
.L_01F7:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 524288
je .L_01FA
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 524288
.L_01FA:
.L_01F9:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
.L_01E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDVARFORPROCRESULTPARAM
SYMBADDVARFORPROCRESULTPARAM:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.L_01FB:
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
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
jne .L_01FF
mov dword ptr [ebp-4], 0
jmp .L_01FC
.L_01FF:
.L_01FE:
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
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
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
.L_01FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCRESULTVAR
SYMBADDPROCRESULTVAR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.L_0200:
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
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .L_0204
push dword ptr [ebp+8]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .L_0201
.L_0204:
.L_0203:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .L_0206
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
.L_0206:
.L_0205:
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
push offset Lt_0207
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
push -1
push dword ptr [ebp-60]
call ASTNEWDECL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.L_0201:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCINSTANCEPARAM
SYMBADDPROCINSTANCEPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0208:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 10
jne .L_020C
.L_020D:
mov dword ptr [ebp-4], 20
jmp .L_020A
.L_020C:
cmp dword ptr [ebp-8], 11
jne .L_020E
.L_020F:
.L_020E:
.L_020A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .L_0211
or dword ptr [ebp-4], 512
.L_0211:
.L_0210:
push 0
push 524288
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-4]
push offset Lt_0022
push dword ptr [ebp+12]
call SYMBADDPROCPARAM
add esp, 32
.L_0209:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDOVERLOADPROC
SYMBFINDOVERLOADPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0212:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .L_0215
mov dword ptr [ebp-4], 0
jmp .L_0213
.L_0215:
.L_0214:
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
je .L_0217
mov dword ptr [ebp-4], 0
jmp .L_0213
.L_0217:
.L_0216:
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .L_0219
dec dword ptr [ebp-32]
.L_0219:
.L_0218:
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
.L_021A:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_021E
dec dword ptr [ebp-28]
.L_021E:
.L_021D:
cmp dword ptr [ebp-40], 0
je .L_0220
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .L_0222
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .L_0224
mov dword ptr [ebp-28], -1
.L_0224:
.L_0223:
jmp .L_0221
.L_0222:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_0226
mov dword ptr [ebp-28], -1
.L_0226:
.L_0225:
.L_0221:
.L_0220:
.L_021F:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jne .L_0228
cmp dword ptr [ebp-32], 0
jne .L_022A
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_0213
.L_022A:
.L_0229:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-16], eax
.L_022B:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .L_022F
jmp .L_022C
.L_022F:
.L_022E:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+28]
cmp dword ptr [eax+28], ebx
je .L_0231
jmp .L_022C
.L_0231:
.L_0230:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+32], ecx
je .L_0233
jmp .L_022C
.L_0233:
.L_0232:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+168]
mov dword ptr [ebp-12], ecx
dec dword ptr [ebp-28]
.L_022D:
cmp dword ptr [ebp-28], 0
jg .L_022B
.L_022C:
cmp dword ptr [ebp-28], 0
jne .L_0235
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .L_0213
.L_0235:
.L_0234:
.L_0228:
.L_0227:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-8], ebx
.L_021C:
cmp dword ptr [ebp-8], 0
jne .L_021A
.L_021B:
mov dword ptr [ebp-4], 0
.L_0213:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDOPOVLPROC
SYMBFINDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_023B:
cmp dword ptr [ebp+8], 27
je .L_023E
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
jmp .L_023C
.L_023E:
.L_023D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_023F:
cmp dword ptr [ebp-8], 0
je .L_0240
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .L_0242
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .L_0244
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .L_023C
.L_0244:
.L_0243:
.L_0242:
.L_0241:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .L_023F
.L_0240:
mov dword ptr [ebp-4], 0
.L_023C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCTORPROC
SYMBFINDCTORPROC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0245:
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
je .L_0248
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .L_0246
jmp .L_0247
.L_0248:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
.L_0247:
.L_0246:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCLOSESTOVLPROC
SYMBFINDCLOSESTOVLPROC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_0330:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 0
jne .L_0333
mov dword ptr [ebp-4], 0
jmp .L_0331
.L_0333:
.L_0332:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.L_0334:
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
call HCHECKOVLPROC
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-32], 0
je .L_0338
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
je .L_033A
mov dword ptr [ebp-36], -1
mov ebx, dword ptr [ebp+24]
and ebx, 2
je .L_033C
mov ebx, dword ptr [ebp-24]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
.L_033C:
.L_033B:
cmp dword ptr [ebp-36], 0
je .L_033E
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-28], 1
.L_033E:
.L_033D:
jmp .L_0339
.L_033A:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jne .L_033F
inc dword ptr [ebp-28]
.L_033F:
.L_0339:
.L_0338:
.L_0337:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.L_0336:
cmp dword ptr [ebp-8], 0
jne .L_0334
.L_0335:
cmp dword ptr [ebp-28], 1
jle .L_0341
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
mov dword ptr [ebp-4], 0
jmp .L_0340
.L_0341:
cmp dword ptr [ebp-12], 0
je .L_0343
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
call HCHECKOVLPROC
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-32], 0
jne .L_0345
mov dword ptr [ebp-4], 0
jmp .L_0344
.L_0345:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0344:
jmp .L_0342
.L_0343:
mov dword ptr [ebp-4], 0
.L_0342:
.L_0340:
.L_0331:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDBOPOVLPROC
SYMBFINDBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0349:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
je .L_034E
.L_034F:
cmp dword ptr [ebp-36], 10
jne .L_034D
.L_034E:
jmp .L_034B
.L_034D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 20
je .L_0354
.L_0355:
cmp dword ptr [ebp-40], 10
jne .L_0353
.L_0354:
jmp .L_0351
.L_0353:
mov dword ptr [ebp-4], 0
jmp .L_034A
.L_0356:
.L_0351:
.L_0350:
.L_034B:
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
mov ebx, offset SYMB
add ebx, eax
push dword ptr [ebx+99120]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .L_0358
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_035A
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.L_035A:
.L_0359:
.L_0358:
.L_0357:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.L_034A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDSELFBOPOVLPROC
SYMBFINDSELFBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_035B:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_035F
.L_0360:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+136], 0
jne .L_0362
mov dword ptr [ebp-4], 0
jmp .L_035C
.L_0362:
.L_0361:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-24], ebx
jmp .L_035D
.L_035F:
mov dword ptr [ebp-4], 0
jmp .L_035C
.L_0363:
.L_035D:
cmp dword ptr [ebp-24], 0
jne .L_0365
mov dword ptr [ebp-4], 0
jmp .L_035C
.L_0365:
.L_0364:
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
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0367
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .L_0369
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.L_0369:
.L_0368:
jmp .L_0366
.L_0367:
push dword ptr [ebp-20]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_036B
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-20], 0
.L_036B:
.L_036A:
.L_0366:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_035C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDUOPOVLPROC
SYMBFINDUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_036C:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
je .L_0371
.L_0372:
cmp dword ptr [ebp-24], 10
jne .L_0370
.L_0371:
jmp .L_036E
.L_0370:
mov dword ptr [ebp-4], 0
jmp .L_036D
.L_0373:
.L_036E:
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
mov eax, offset SYMB
add eax, ebx
push dword ptr [eax+99120]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0375
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0377
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.L_0377:
.L_0376:
.L_0375:
.L_0374:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_036D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDSELFUOPOVLPROC
SYMBFINDSELFUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0378:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 20
jne .L_037C
.L_037D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+136], 0
jne .L_037F
mov dword ptr [ebp-4], 0
jmp .L_0379
.L_037F:
.L_037E:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-12], ebx
jmp .L_037A
.L_037C:
mov dword ptr [ebp-4], 0
jmp .L_0379
.L_0380:
.L_037A:
cmp dword ptr [ebp-12], 0
jne .L_0382
mov dword ptr [ebp-4], 0
jmp .L_0379
.L_0382:
.L_0381:
push 0
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp-12]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_0384
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .L_0386
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.L_0386:
.L_0385:
jmp .L_0383
.L_0384:
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_0388
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-8]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-8], 0
.L_0388:
.L_0387:
.L_0383:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0379:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCASTOVLPROC
SYMBFINDCASTOVLPROC:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.L_03A3:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 20
jne .L_03A7
.L_03A8:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .L_03AA
mov dword ptr [ebp-4], 0
jmp .L_03A4
.L_03AA:
.L_03A9:
mov eax, dword ptr [ebp-44]
cmp dword ptr [eax+136], 0
jne .L_03AC
mov dword ptr [ebp-4], 0
jmp .L_03A4
.L_03AC:
.L_03AB:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+140]
mov dword ptr [ebp-8], eax
jmp .L_03A5
.L_03A7:
mov dword ptr [ebp-4], 0
jmp .L_03A4
.L_03AD:
.L_03A5:
cmp dword ptr [ebp-8], 0
jne .L_03AF
mov dword ptr [ebp-4], 0
jmp .L_03A4
.L_03AF:
.L_03AE:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .L_03B0
mov dword ptr [ebp-36], 24
jmp .L_03CD
.L_03B0:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.L_03CD:
cmp dword ptr [ebp-36], 0
je .L_03B3
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
.L_03B4:
cmp dword ptr [ebp-16], 0
je .L_03B5
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call HCHECKCASTOVL
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_03B7
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 1
jmp .L_03B6
.L_03B7:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .L_03B8
cmp dword ptr [ebp-28], 0
jle .L_03BA
inc dword ptr [ebp-32]
.L_03BA:
.L_03B9:
.L_03B8:
.L_03B6:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-16], ebx
jmp .L_03B4
.L_03B5:
jmp .L_03B2
.L_03B3:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-16], ebx
.L_03BB:
cmp dword ptr [ebp-16], 0
je .L_03BC
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+32], 0
jne .L_03BE
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 16
jg .L_03C0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
cmp ebx, eax
jle .L_03C2
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp+8], ebx
.L_03C2:
.L_03C1:
.L_03C0:
.L_03BF:
.L_03BE:
.L_03BD:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-16], eax
jmp .L_03BB
.L_03BC:
.L_03B2:
cmp dword ptr [ebp-32], 1
jle .L_03C4
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_03C6
push 98
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORTPARAM
add esp, 16
.L_03C6:
.L_03C5:
mov dword ptr [ebp-20], 0
jmp .L_03C3
.L_03C4:
cmp dword ptr [ebp-20], 0
je .L_03C8
push dword ptr [ebp-20]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .L_03CA
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_03CC
push 0
push 1
push 0
push dword ptr [ebp-20]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
.L_03CC:
.L_03CB:
mov dword ptr [ebp-20], 0
.L_03CA:
.L_03C9:
.L_03C8:
.L_03C7:
.L_03C3:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_03A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCTOROVLPROC
SYMBFINDCTOROVLPROC:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_03CE:
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
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-4], eax
.L_03CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELPROTOTYPE
SYMBDELPROTOTYPE:
push ebp
mov ebp, esp
push ebx
.L_03D4:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jle .L_03D7
push dword ptr [ebp+8]
call HDELPARAMS
add esp, 4
.L_03D7:
.L_03D6:
push dword ptr [ebp+8]
call SYMBPROCFREEEXT
add esp, 4
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.L_03D5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDGLOBALCTOR
SYMBADDGLOBALCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_03DC:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 65538
push dword ptr [ebp+8]
lea eax, [SYMB+99040]
push eax
call HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.L_03DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDGLOBALDTOR
SYMBADDGLOBALDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_03DE:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 131074
push dword ptr [ebp+8]
lea eax, [SYMB+99080]
push eax
call HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.L_03DF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCPROCMATCH
SYMBCALCPROCMATCH:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_03EA:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .L_03EC
mov dword ptr [ebp-8], 2
jmp .L_0406
.L_03EC:
mov dword ptr [ebp-8], 1
.L_0406:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_03EF
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 225
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_03EF:
.L_03EE:
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
je .L_03F1
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 225
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_03F1:
.L_03F0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .L_03F3
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 226
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_03F3:
.L_03F2:
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
je .L_03F5
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2048
test ecx, ecx
je .L_03F7
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 229
jmp .L_03F6
.L_03F7:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 230
.L_03F6:
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_03F5:
.L_03F4:
mov ecx, dword ptr [ebp+8]
movsx ebx, word ptr [ecx+68]
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
cmp ebx, eax
je .L_03F9
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_03F9:
.L_03F8:
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
je .L_03FB
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_03FD
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
je .L_03FF
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-20], ecx
.L_03FF:
.L_03FE:
.L_03FD:
.L_03FC:
.L_03FB:
.L_03FA:
.L_0400:
cmp dword ptr [ebp-16], 0
je .L_0401
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBCALCPARAMMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0403
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .L_03EB
.L_0403:
.L_0402:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .L_0405
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.L_0405:
.L_0404:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .L_0400
.L_0401:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_03EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCHECKOVERRIDDEN
SYMBPROCCHECKOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0412:
push dword ptr [ebp+8]
call SYMBPROCGETOVERRIDDEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .L_0415
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .L_0417
mov eax, dword ptr [ebp-8]
cmp eax, 226
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+12]
je .L_0419
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .L_041B
mov dword ptr [ebp-8], 227
jmp .L_041A
.L_041B:
mov dword ptr [ebp-8], 228
.L_041A:
.L_0419:
.L_0418:
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 12
.L_0417:
.L_0416:
.L_0415:
.L_0414:
.L_0413:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCSETVTABLEINDEX
SYMBPROCSETVTABLEINDEX:
push ebp
mov ebp, esp
push ebx
.L_041D:
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
.L_041E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCGETVTABLEINDEX
SYMBPROCGETVTABLEINDEX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_041F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0422
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-4], eax
.L_0422:
.L_0421:
.L_0420:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCGETOVERRIDDEN
SYMBPROCGETOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0423:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_0426
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-4], eax
.L_0426:
.L_0425:
.L_0424:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETPROCRESULT
SYMBGETPROCRESULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0427:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_042A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_042A:
.L_0429:
.L_0428:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCHASFWDREFINSIGNATURE
SYMBPROCHASFWDREFINSIGNATURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_042B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .L_042E
mov dword ptr [ebp-4], -1
jmp .L_042C
.L_042E:
.L_042D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
.L_042F:
cmp dword ptr [ebp-8], 0
je .L_0430
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
call TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .L_0432
mov dword ptr [ebp-4], -1
jmp .L_042C
.L_0432:
.L_0431:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .L_042F
.L_0430:
mov dword ptr [ebp-4], 0
.L_042C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HDUMPDYNAMICARRAYDIMENSIONS
HDUMPDYNAMICARRAYDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0464:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0466
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .L_0468
.L_046B:
cmp dword ptr [ebp-28], 1
jle .L_046D
push 0
push 3
push offset Lt_046E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_046D:
.L_046C:
push 0
push 4
push offset Lt_046F
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.L_0469:
inc dword ptr [ebp-28]
.L_0468:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .L_046B
.L_046A:
push 0
push 3
push offset Lt_0470
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_0465:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCPTRTOSTR
SYMBPROCPTRTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_049C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HSUBORFUNCTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_049D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETFULLPROCNAME
SYMBGETFULLPROCNAME:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_049E:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_04B7
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_04A0:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .L_04A1
push 0
push -1
push -1
push offset Lt_04B7
push -1
push 2
push offset Lt_0007
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
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
push offset Lt_04B7
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_04A0
.L_04A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .L_04A5
push 0
push 12
push offset Lt_04A6
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
jmp .L_04A4
.L_04A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .L_04A7
push 0
push 11
push offset Lt_04A8
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
jmp .L_04A4
.L_04A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4096
test ebx, ebx
je .L_04A9
push 0
push 11
push offset Lt_04A8
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
jmp .L_04A4
.L_04A9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 16
test eax, eax
je .L_04AA
push 0
push 10
push offset Lt_04AB
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .L_04AD
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
sal eax, 4
push dword ptr [AST_OPTB+eax+8]
push -1
push offset Lt_04B7
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_04B7
call fb_StrAssign
add esp, 20
.L_04AD:
.L_04AC:
jmp .L_04A4
.L_04AA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .L_04AF
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_04B7
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_04B7
call fb_StrAssign
add esp, 20
push 0
push 11
push offset Lt_04B1
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_04B3
push 0
push 4
push offset Lt_04B4
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
jmp .L_04B2
.L_04B3:
push 0
push 4
push offset Lt_04B5
push -1
push offset Lt_04B7
call fb_StrConcatAssign
add esp, 20
.L_04B2:
jmp .L_04A4
.L_04AF:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_04B7
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_04B7
call fb_StrAssign
add esp, 20
.L_04A4:
mov eax, dword ptr [Lt_04B7]
mov dword ptr [ebp-4], eax
.L_049F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_04B7,12

.section .text
.balign 16

.globl SYMBMETHODTOSTR
SYMBMETHODTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_04B8:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.L_04B9:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETDEFAULTPARAMMODE
SYMBGETDEFAULTPARAMMODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_04BA:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-8], ebx
jmp .L_04BD
.L_04BF:
mov dword ptr [ebp-4], 2
jmp .L_04BB
jmp .L_04BC
.L_04C0:
mov dword ptr [ebp-4], 1
jmp .L_04BB
jmp .L_04BC
.L_04BD:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967292
cmp ebx, 19
ja .L_04C0
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.L_04C1+ebx*4-16]
.L_04C1:
.int .L_04BF
.int .L_04C0
.int .L_04C0
.int .L_04BF
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04C0
.int .L_04BF
.int .L_04BF
.int .L_04C0
.int .L_04BF
.int .L_04C0
.int .L_04C0
.int .L_04BF
.L_04BC:
.L_04BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBAREPROCMODESEQUAL
SYMBAREPROCMODESEQUAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_04C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 1
je .L_04C6
.L_04C7:
cmp dword ptr [ebp-8], 2
jne .L_04C5
.L_04C6:
cmp dword ptr [ebp-12], 1
je .L_04CA
.L_04CB:
cmp dword ptr [ebp-12], 2
jne .L_04C9
.L_04CA:
mov dword ptr [ebp-4], -1
jmp .L_04C3
.L_04C9:
.L_04C8:
.L_04C5:
.L_04C4:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_04C3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBALLOCOVLCALLARG
SYMBALLOCOVLCALLARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_04CD:
push dword ptr [ebp+8]
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .L_04D0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 0
jne .L_04D2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4], ebx
jmp .L_04D1
.L_04D2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_04D1:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
jmp .L_04CF
.L_04D0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+8], 0
jne .L_04D4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.L_04D4:
.L_04D3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
.L_04CF:
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_04CE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFREEOVLCALLARGS
SYMBFREEOVLCALLARGS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_04D5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_04D7:
cmp dword ptr [ebp-4], 0
je .L_04D8
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_04D7
.L_04D8:
.L_04D6:
pop ebx
mov esp, ebp
pop ebp
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
HALIGNTOPOW2:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_007F:
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
.L_0080:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCANOVERLOAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00DA:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .L_00DD
mov dword ptr [ebp-4], -1
jmp .L_00DB
.L_00DD:
.L_00DC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 4
jne .L_00DF
mov dword ptr [ebp-4], 0
jmp .L_00DB
.L_00DF:
.L_00DE:
.L_00E0:
cmp dword ptr [ebp-8], 0
je .L_00E1
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
jne .L_00E3
mov dword ptr [ebp-4], 0
jmp .L_00DB
.L_00E3:
.L_00E2:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-8], ebx
jmp .L_00E0
.L_00E1:
mov dword ptr [ebp-4], -1
.L_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCANOVERLOADBYDESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
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
je .L_00E7
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
je .L_00E9
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
je .L_00EB
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
cmp eax, dword ptr [ecx+68]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_00EB:
.L_00EA:
jmp .L_00E8
.L_00E9:
mov dword ptr [ebp-4], -1
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDOVLPROC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_00EC:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .L_00EF
jmp .L_00ED
.L_00EF:
.L_00EE:
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
je .L_00F1
jmp .L_00ED
.L_00F1:
.L_00F0:
mov ecx, dword ptr [ebp+8]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
je .L_00F3
dec dword ptr [ebp-24]
.L_00F3:
.L_00F2:
cmp dword ptr [ebp-24], 0
jle .L_00F5
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+56], 4
jne .L_00F7
jmp .L_00ED
.L_00F7:
.L_00F6:
.L_00F8:
cmp dword ptr [ebp-16], 0
je .L_00F9
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+28], 0
jne .L_00FB
jmp .L_00ED
.L_00FB:
.L_00FA:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+168]
mov dword ptr [ebp-16], eax
jmp .L_00F8
.L_00F9:
.L_00F5:
.L_00F4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_00FC:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_0100
dec dword ptr [ebp-20]
.L_0100:
.L_00FF:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
je .L_0102
cmp dword ptr [ebp+32], 0
je .L_0104
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .L_0106
mov dword ptr [ebp-20], -1
.L_0106:
.L_0105:
jmp .L_0103
.L_0104:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_0108
mov dword ptr [ebp-20], -1
.L_0108:
.L_0107:
.L_0103:
.L_0102:
.L_0101:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jne .L_010A
cmp dword ptr [ebp-24], 0
jne .L_010C
jmp .L_00ED
.L_010C:
.L_010B:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-12], eax
.L_010D:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .L_0111
jmp .L_010E
.L_0111:
.L_0110:
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
je .L_0113
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
je .L_0115
mov ebx, dword ptr [ebp-32]
and ebx, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
cmp ebx, ecx
je .L_0117
jmp .L_010E
.L_0117:
.L_0116:
.L_0115:
.L_0114:
mov ecx, dword ptr [ebp-32]
and ecx, 261632
and ecx, -513
mov ebx, dword ptr [ebp-36]
and ebx, 261632
and ebx, -513
cmp ecx, ebx
je .L_0119
jmp .L_010E
.L_0119:
.L_0118:
and dword ptr [ebp-32], 511
and dword ptr [ebp-36], 511
.L_0113:
.L_0112:
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .L_011B
jmp .L_010E
.L_011B:
.L_011A:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+32]
cmp dword ptr [ebx+32], eax
je .L_011D
jmp .L_010E
.L_011D:
.L_011C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-12], eax
dec dword ptr [ebp-20]
.L_010F:
cmp dword ptr [ebp-20], 0
jg .L_010D
.L_010E:
cmp dword ptr [ebp-20], 0
jne .L_011F
jmp .L_00ED
.L_011F:
.L_011E:
.L_010A:
.L_0109:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.L_00FE:
cmp dword ptr [ebp-8], 0
jne .L_00FC
.L_00FD:
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
je .L_0120
mov dword ptr [ebp-28], 1
jmp .L_04E0
.L_0120:
mov dword ptr [ebp-28], 0
.L_04E0:
push dword ptr [ebp-28]
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .L_0123
jmp .L_00ED
.L_0123:
.L_0122:
cmp dword ptr [ebp+24], 0
je .L_0125
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
je .L_0127
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+152], ebx
.L_0127:
.L_0126:
.L_0125:
.L_0124:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.L_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0128:
cmp dword ptr [ebp+24], 27
je .L_012B
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
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-4], eax
jmp .L_0129
.L_012B:
.L_012A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.L_012C:
cmp dword ptr [ebp-8], 0
je .L_012D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .L_012F
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .L_0131
mov dword ptr [ebp-4], 0
jmp .L_0129
.L_0131:
.L_0130:
.L_012F:
.L_012E:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .L_012C
.L_012D:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.L_0129:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSETUPPROCREGISTERPARAMETERS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_0132:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .L_0136
.L_0137:
mov dword ptr [ebp-8], 1
jmp .L_0134
.L_0136:
cmp dword ptr [ebp-12], 6
jne .L_0138
.L_0139:
mov dword ptr [ebp-8], 2
.L_0138:
.L_0134:
cmp dword ptr [ebp-8], 0
jle .L_013B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 524288
test ebx, ebx
je .L_013D
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+76], eax
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
.L_013D:
.L_013C:
.L_013E:
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
je .L_013F
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+56], 2
jne .L_0141
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+76], ebx
inc dword ptr [ebp-4]
jmp .L_0140
.L_0141:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .L_0143
mov dword ptr [ebp-16], 24
jmp .L_04E5
.L_0143:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_04E5:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .L_0142
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ENV+296]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebx+44], eax
jg .L_0146
jl .L_04E8
cmp dword ptr [ebx+40], ecx
ja .L_0146
.L_04E8:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx+76], eax
inc dword ptr [ebp-4]
.L_0146:
.L_0145:
.L_0142:
.L_0140:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-12], ecx
jmp .L_013E
.L_013F:
.L_013B:
.L_013A:
.L_0133:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSETUPPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.L_0147:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+32], -2147483648
jne .L_014A
push dword ptr [ebp+24]
call SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], 0
.L_014A:
.L_0149:
cmp dword ptr [ebp+28], 0
jne .L_014C
cmp dword ptr [PARSER+104], 0
je .L_014E
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp+28], eax
.L_014E:
.L_014D:
mov dword ptr [ebp-8], 0
jmp .L_014B
.L_014C:
mov dword ptr [ebp-8], 512
.L_014B:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+44]
and eax, 4108
test eax, eax
je .L_0150
or dword ptr [ebp+44], 1024
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_0152
push dword ptr [ebp+12]
call SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0151
.L_0152:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .L_0153
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-24], eax
jmp .L_0151
.L_0153:
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR0
add esp, 4
mov dword ptr [ebp-24], eax
.L_0151:
cmp dword ptr [ebp-24], 0
jne .L_0155
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_0157
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPCTORHEAD
add esp, 8
jmp .L_0156
.L_0157:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .L_0158
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPDTOR1
add esp, 8
jmp .L_0156
.L_0158:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPDTOR0
add esp, 8
.L_0156:
jmp .L_0154
.L_0155:
mov eax, dword ptr [ebp+44]
and eax, 4104
test eax, eax
je .L_015A
mov dword ptr [ebp-4], 0
jmp .L_0148
.L_015A:
.L_0159:
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
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_015C
jmp .L_0148
.L_015C:
.L_015B:
.L_0154:
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .L_015E
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBCHECKCOMPCTOR
add esp, 8
.L_015E:
.L_015D:
jmp .L_014F
.L_0150:
mov eax, dword ptr [ebp+44]
and eax, 16
test eax, eax
je .L_015F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .L_0161
jmp .L_0162
.L_0161:
.L_0160:
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [ebp+12]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_0164
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPOPOVLHEAD
add esp, 8
jmp .L_0163
.L_0164:
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
call HADDOPOVLPROC
add esp, 40
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0166
jmp .L_0148
.L_0166:
.L_0165:
cmp dword ptr [ebp-32], 0
jne .L_0168
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBCHECKCOMPLETOP
add esp, 8
.L_0168:
.L_0167:
.L_0163:
jmp .L_014F
.L_015F:
.L_0162:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_016A
push 0
push dword ptr [ebp-12]
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .L_016C
jmp .L_0148
.L_016C:
.L_016B:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .L_016E
mov ebx, dword ptr [ENV+1040]
and ebx, 1024
test ebx, ebx
jne .L_0170
jmp .L_0148
.L_0170:
.L_016F:
.L_016E:
.L_016D:
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
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .L_0172
jmp .L_0148
.L_0172:
.L_0171:
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
jmp .L_0169
.L_016A:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
jne .L_0174
mov eax, dword ptr [ebp+44]
and eax, 1
test eax, eax
je .L_0176
push dword ptr [ebp+8]
call HCANOVERLOAD
add esp, 4
test eax, eax
jne .L_0178
jmp .L_0148
.L_0178:
.L_0177:
jmp .L_0175
.L_0176:
mov eax, dword ptr [ENV+1040]
and eax, 1024
test eax, eax
je .L_0179
push dword ptr [ebp+8]
call HCANOVERLOAD
add esp, 4
test eax, eax
je .L_017B
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
.L_017B:
.L_017A:
.L_0179:
.L_0175:
.L_0174:
.L_0173:
.L_0169:
.L_014F:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
je .L_017D
or dword ptr [ebp-8], 32
.L_017D:
.L_017C:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+84], ebx
cmp dword ptr [PARSER+24], 306
jne .L_017F
mov ebx, dword ptr [PARSER+104]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+104]
cmp eax, 6
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0181
or dword ptr [ebp-8], 2048
.L_0181:
.L_0180:
.L_017F:
.L_017E:
push dword ptr [ebp-20]
call SYMBPROCRECALCREALTYPE
add esp, 4
mov eax, dword ptr [ebp+52]
and eax, 4
test eax, eax
je .L_0183
or dword ptr [ebp-8], 8
.L_0183:
.L_0182:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .L_0185
mov ebx, dword ptr [ebp-20]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_0187
dec dword ptr [ebp-32]
.L_0187:
.L_0186:
cmp dword ptr [ebp-24], 0
je .L_0189
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
jge .L_018B
mov cx, word ptr [ebp-32]
mov eax, dword ptr [ebp-24]
mov word ptr [eax+104], cx
.L_018B:
.L_018A:
mov ecx, dword ptr [ebp-24]
movsx eax, word ptr [ecx+106]
cmp dword ptr [ebp-32], eax
jle .L_018D
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-24]
mov word ptr [ecx+106], ax
.L_018D:
.L_018C:
jmp .L_0188
.L_0189:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+108], 0
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+104], ax
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+106], ax
.L_0188:
.L_0185:
.L_0184:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-8]
or dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .L_018F
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .L_0191
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
inc dword ptr [eax+156]
.L_0191:
.L_0190:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .L_0193
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
je .L_0195
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call SYMBGETCOMPDTOR1
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0194
.L_0195:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 4096
test ecx, ecx
je .L_0196
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call SYMBGETCOMPDTOR0
add esp, 4
mov dword ptr [ebp-28], eax
jmp .L_0194
.L_0196:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 16
test ecx, ecx
je .L_0197
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+112]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+40]
call SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
jmp .L_0194
.L_0197:
cmp dword ptr [ebp+24], 0
je .L_0198
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
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
je .L_019A
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .L_019C
mov dword ptr [ebp-16], 1
.L_019C:
.L_019B:
.L_019A:
.L_0199:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-28], eax
.L_0198:
.L_0194:
cmp dword ptr [ebp-28], 0
je .L_019E
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
jne .L_01A0
mov dword ptr [ebp-28], 0
.L_01A0:
.L_019F:
.L_019E:
.L_019D:
.L_0193:
.L_0192:
cmp dword ptr [ebp-28], 0
je .L_01A2
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+8]
and eax, 512
test eax, eax
je .L_01A4
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
dec dword ptr [ecx+156]
.L_01A4:
.L_01A3:
push dword ptr [ebp-28]
call SYMBPROCGETVTABLEINDEX
add esp, 4
push eax
push dword ptr [ebp-20]
call SYMBPROCSETVTABLEINDEX
add esp, 8
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-28]
mov dword ptr [ecx+72], eax
jmp .L_01A1
.L_01A2:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
je .L_01A6
push dword ptr [ebp+12]
call SYMBCOMPADDVIRTUAL
add esp, 4
push eax
push dword ptr [ebp-20]
call SYMBPROCSETVTABLEINDEX
add esp, 8
.L_01A6:
.L_01A5:
.L_01A1:
.L_018F:
.L_018E:
push dword ptr [ebp-20]
call HSETUPPROCREGISTERPARAMETERS
add esp, 4
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.L_0148:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALCTYPESDIFF:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.L_024B:
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
je .L_024D
mov dword ptr [ebp-28], 24
jmp .L_04ED
.L_024D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.L_04ED:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_024F
mov dword ptr [ebp-32], 24
jmp .L_04EE
.L_024F:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.L_04EE:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
jmp .L_0252
.L_0254:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .L_0256
.L_0258:
cmp dword ptr [ebp-20], 4
jne .L_025A
.L_025B:
cmp dword ptr [ebp-24], 4
jne .L_025D
.L_025E:
mov dword ptr [ebp-4], 1300
jmp .L_024C
jmp .L_025C
.L_025D:
cmp dword ptr [ebp-24], 7
jne .L_025F
.L_0260:
mov dword ptr [ebp-4], 777
jmp .L_024C
.L_025F:
.L_025C:
mov dword ptr [ebp-4], 0
jmp .L_024C
jmp .L_0259
.L_025A:
cmp dword ptr [ebp-20], 7
jne .L_0261
.L_0262:
cmp dword ptr [ebp-24], 4
jne .L_0264
.L_0265:
mov dword ptr [ebp-4], 777
jmp .L_024C
jmp .L_0263
.L_0264:
cmp dword ptr [ebp-24], 7
jne .L_0266
.L_0267:
mov dword ptr [ebp-4], 1300
jmp .L_024C
.L_0266:
.L_0263:
mov dword ptr [ebp-4], 0
jmp .L_024C
jmp .L_0259
.L_0261:
cmp dword ptr [ebp-20], 36
jne .L_0268
.L_0269:
cmp dword ptr [ebp-24], 4
jne .L_026B
.L_026C:
mov dword ptr [ebp-4], 1299
jmp .L_024C
jmp .L_026A
.L_026B:
cmp dword ptr [ebp-24], 7
jne .L_026D
.L_026E:
mov dword ptr [ebp-4], 776
jmp .L_024C
.L_026D:
.L_026A:
jmp .L_0259
.L_0268:
cmp dword ptr [ebp-20], 39
jne .L_026F
.L_0270:
cmp dword ptr [ebp-24], 4
jne .L_0272
.L_0273:
mov dword ptr [ebp-4], 776
jmp .L_024C
jmp .L_0271
.L_0272:
cmp dword ptr [ebp-24], 7
jne .L_0274
.L_0275:
mov dword ptr [ebp-4], 1299
jmp .L_024C
.L_0274:
.L_0271:
jmp .L_0259
.L_026F:
cmp dword ptr [ebp-24], 4
je .L_0279
.L_027A:
cmp dword ptr [ebp-24], 7
jne .L_0278
.L_0279:
cmp dword ptr [ebp+28], 0
jne .L_027C
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_027C:
.L_027B:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 20
je .L_027E
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_027E:
.L_027D:
.L_0278:
.L_0277:
.L_0276:
.L_0259:
cmp dword ptr [ebp-24], 10
jne .L_0280
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+16]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-24], eax
.L_0280:
.L_027F:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .L_0282
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
jne .L_0284
cmp dword ptr [ebp+28], 0
jne .L_0286
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_0286:
.L_0285:
push 0
push dword ptr [ebp+28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call ASTCHECKCONVNONPTRTOPTR
add esp, 16
test eax, eax
je .L_0288
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_0288:
.L_0287:
mov dword ptr [ebp-4], 1
jmp .L_024C
.L_0284:
.L_0283:
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
je .L_028A
mov dword ptr [ebp-4], 780
jmp .L_024C
.L_028A:
.L_0289:
push dword ptr [ebp+24]
push dword ptr [ebp-24]
push dword ptr [ebp+32]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-4], eax
jmp .L_024C
jmp .L_0281
.L_0282:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_028B
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_028B:
.L_0281:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_028C
mov dword ptr [ebp-44], 24
jmp .L_04EF
.L_028C:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.L_04EF:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_028E
mov dword ptr [ebp-48], 24
jmp .L_04F0
.L_028E:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.L_04F0:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ecx, dword ptr [SYMB_DTYPEMATCHTB+eax*4-68]
neg ecx
add ecx, 780
mov dword ptr [ebp-4], ecx
jmp .L_024C
jmp .L_0255
.L_0290:
mov ecx, dword ptr [ebp-20]
and ecx, 480
test ecx, ecx
je .L_0292
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_0292:
.L_0291:
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .L_0293
mov dword ptr [ebp-44], 24
jmp .L_04F2
.L_0293:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-44], ecx
.L_04F2:
mov ecx, dword ptr [ebp-44]
sal ecx, 4
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .L_0295
mov dword ptr [ebp-48], 24
jmp .L_04F3
.L_0295:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_04F3:
mov ecx, dword ptr [ebp-48]
add ecx, dword ptr [ebp-52]
mov eax, dword ptr [SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_024C
jmp .L_0255
.L_0297:
cmp dword ptr [ebp-20], 4
jne .L_0299
.L_029A:
mov dword ptr [ebp-4], 1299
jmp .L_024C
jmp .L_0298
.L_0299:
cmp dword ptr [ebp-20], 36
jne .L_029B
.L_029C:
mov dword ptr [ebp-4], 1298
jmp .L_024C
jmp .L_0298
.L_029B:
cmp dword ptr [ebp-20], 7
jne .L_029D
.L_029E:
mov dword ptr [ebp-4], 777
jmp .L_024C
jmp .L_0298
.L_029D:
cmp dword ptr [ebp-20], 39
jne .L_029F
.L_02A0:
mov dword ptr [ebp-4], 776
jmp .L_024C
.L_029F:
.L_0298:
jmp .L_0255
.L_0256:
cmp dword ptr [ebp-40], 2
ja .L_0255
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_02A1+eax*4]
.L_02A1:
.int .L_0258
.int .L_0290
.int .L_0297
.L_0255:
jmp .L_0251
.L_02A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .L_02A4
.L_02A6:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .L_02A8
mov dword ptr [ebp-4], 0
jmp .L_024C
.L_02A8:
.L_02A7:
cmp dword ptr [ebp-24], 10
jne .L_02AA
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov ebx, dword ptr [SYMB_DTYPETB+ecx+16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
.L_02AA:
.L_02A9:
mov eax, dword ptr [ebp-24]
and eax, 480
je .L_02AB
mov dword ptr [ebp-44], 24
jmp .L_04F5
.L_02AB:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.L_04F5:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .L_02AD
mov dword ptr [ebp-48], 24
jmp .L_04F6
.L_02AD:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.L_04F6:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ebx, dword ptr [SYMB_DTYPEMATCHTB+eax*4-68]
neg ebx
add ebx, 780
mov dword ptr [ebp-4], ebx
jmp .L_024C
jmp .L_02A3
.L_02AF:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .L_02B0
mov dword ptr [ebp-44], 24
jmp .L_04F8
.L_02B0:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_04F8:
mov ebx, dword ptr [ebp-44]
sal ebx, 4
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .L_02B2
mov dword ptr [ebp-48], 24
jmp .L_04F9
.L_02B2:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.L_04F9:
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-52]
mov eax, dword ptr [SYMB_DTYPEMATCHTB+ebx*4-68]
neg eax
add eax, 780
mov dword ptr [ebp-4], eax
jmp .L_024C
jmp .L_02A3
.L_02A4:
cmp dword ptr [ebp-40], 1
ja .L_02A3
mov eax, dword ptr [ebp-40]
jmp dword ptr [.L_02B4+eax*4]
.L_02B4:
.int .L_02A6
.int .L_02AF
.L_02A3:
jmp .L_0251
.L_02B5:
cmp dword ptr [ebp-8], 2
jne .L_02B7
.L_02B8:
mov dword ptr [ebp-4], 1300
jmp .L_02B6
.L_02B7:
cmp dword ptr [ebp-8], 0
jne .L_02B9
.L_02BA:
cmp dword ptr [ebp-24], 4
jne .L_02BC
.L_02BD:
mov dword ptr [ebp-4], 1298
jmp .L_02BB
.L_02BC:
cmp dword ptr [ebp-24], 7
jne .L_02BE
.L_02BF:
mov dword ptr [ebp-4], 778
.L_02BE:
.L_02BB:
.L_02B9:
.L_02B6:
jmp .L_0251
.L_0252:
cmp dword ptr [ebp-36], 2
ja .L_0251
mov eax, dword ptr [ebp-36]
jmp dword ptr [.L_02C0+eax*4]
.L_02C0:
.int .L_0254
.int .L_02A2
.int .L_02B5
.L_0251:
.L_024C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKOVLPARAM:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.L_02C1:
cmp dword ptr [ebp+16], 0
jne .L_02C4
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
je .L_02C6
mov dword ptr [ebp-4], 1300
jmp .L_02C2
jmp .L_02C5
.L_02C6:
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02C5:
.L_02C4:
.L_02C3:
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
jne .L_02C8
.L_02C9:
cmp dword ptr [ebp+20], 3
je .L_02CB
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02CB:
.L_02CA:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 1040
jge .L_02CD
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02CD:
.L_02CC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+68], 0
jle .L_02CF
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
je .L_02D1
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02D1:
.L_02D0:
.L_02CF:
.L_02CE:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .L_02C2
jmp .L_02C7
.L_02C8:
cmp dword ptr [ebp-36], 2
jne .L_02D2
.L_02D3:
mov eax, dword ptr [ebp+20]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_02D4
mov dword ptr [ebp-40], 24
jmp .L_04FD
.L_02D4:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-40], eax
.L_04FD:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
and ecx, dword ptr [ebp-44]
je .L_02D7
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .L_02D8
mov dword ptr [ebp-48], 24
jmp .L_04FF
.L_02D8:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-48], ecx
.L_04FF:
mov ecx, dword ptr [ebp-48]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .L_02DA
mov dword ptr [ebp-52], 24
jmp .L_0500
.L_02DA:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-52], eax
.L_0500:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov ecx, dword ptr [ENV+296]
cmp ecx, dword ptr [SYMB_DTYPETB+eax+4]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-56]
je .L_02DD
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02DD:
.L_02DC:
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
.L_02D7:
.L_02D6:
.L_02D2:
.L_02C7:
cmp dword ptr [ebp+20], 3
jne .L_02DF
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02DF:
.L_02DE:
mov ecx, dword ptr [ebp-8]
and ecx, 511
mov eax, dword ptr [ebp-12]
and eax, 511
cmp ecx, eax
jne .L_02E1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .L_02E3
mov dword ptr [ebp-44], 1300
jmp .L_02E2
.L_02E3:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
jne .L_02E6
.L_02E7:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call SYMBGETUDTBASELEVEL
add esp, 8
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .L_02E9
mov eax, dword ptr [ebp-52]
imul eax, 10
neg eax
add eax, 1300
mov dword ptr [ebp-44], eax
.L_02E9:
.L_02E8:
jmp .L_02E4
.L_02E6:
cmp dword ptr [ebp-48], 22
jne .L_02EA
.L_02EB:
mov dword ptr [ebp-52], 0
lea eax, [ebp-52]
push eax
push dword ptr [ebp-28]
push dword ptr [ebp-24]
call SYMBCALCPROCMATCH
add esp, 12
mov dword ptr [ebp-44], eax
.L_02EA:
.L_02E4:
.L_02E2:
cmp dword ptr [ebp-44], 0
jle .L_02EE
mov eax, dword ptr [ebp-8]
and eax, 261632
mov ecx, dword ptr [ebp-12]
and ecx, 261632
cmp eax, ecx
jne .L_02F0
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-4], ecx
jmp .L_02C2
.L_02F0:
.L_02EF:
lea ecx, [ebp-20]
push ecx
push dword ptr [ebp-36]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
je .L_02F2
cmp dword ptr [ebp-44], 1040
jle .L_02F4
add dword ptr [ebp-44], -260
.L_02F4:
.L_02F3:
mov eax, dword ptr [ebp-20]
imul eax, 10
add dword ptr [ebp-44], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .L_02C2
.L_02F2:
.L_02F1:
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_02EE:
.L_02ED:
.L_02E1:
.L_02E0:
cmp dword ptr [ebp-8], 20
jne .L_02F6
.L_02F7:
mov eax, dword ptr [ebp+28]
and eax, 16
test eax, eax
jne .L_02F9
push 16
lea eax, [ebp-40]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
call SYMBFINDCTOROVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_02FB
mov dword ptr [ebp-4], 580
jmp .L_02C2
.L_02FB:
.L_02FA:
.L_02F9:
.L_02F8:
mov eax, dword ptr [ebp+28]
and eax, 32
test eax, eax
jne .L_02FD
mov eax, dword ptr [ebp+28]
or eax, 32
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_02FF
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
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 1040
jl .L_0301
add dword ptr [ebp-48], -520
jmp .L_0300
.L_0301:
cmp dword ptr [ebp-48], 780
jl .L_0302
add dword ptr [ebp-48], -780
jmp .L_0300
.L_0302:
mov dword ptr [ebp-48], 60
.L_0300:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_02C2
.L_02FF:
.L_02FE:
.L_02FD:
.L_02FC:
mov dword ptr [ebp-4], 0
jmp .L_02C2
jmp .L_02F5
.L_02F6:
cmp dword ptr [ebp-8], 10
jne .L_0303
.L_0304:
mov dword ptr [ebp-4], 0
jmp .L_02C2
jmp .L_02F5
.L_0303:
cmp dword ptr [ebp-12], 20
jne .L_0307
.L_0308:
mov eax, dword ptr [ebp+28]
and eax, 32
test eax, eax
jne .L_030A
mov eax, dword ptr [ebp+28]
or eax, 32
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
je .L_030C
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
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 1040
jl .L_030E
add dword ptr [ebp-48], -520
jmp .L_030D
.L_030E:
cmp dword ptr [ebp-48], 780
jl .L_030F
add dword ptr [ebp-48], -780
jmp .L_030D
.L_030F:
mov dword ptr [ebp-48], 60
.L_030D:
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-4], eax
jmp .L_02C2
.L_030C:
.L_030B:
.L_030A:
.L_0309:
mov dword ptr [ebp-4], 0
jmp .L_02C2
.L_0307:
.L_0306:
.L_0305:
.L_02F5:
push dword ptr [ebp-36]
push dword ptr [ebp+16]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.L_02C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKOVLPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.L_0310:
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
je .L_0313
dec dword ptr [ebp-32]
.L_0313:
.L_0312:
cmp dword ptr [ebp-28], 0
je .L_0315
mov ebx, dword ptr [ebp+24]
and ebx, 1
test ebx, ebx
je .L_0317
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .L_0319
mov dword ptr [ebp-32], -1
.L_0319:
.L_0318:
jmp .L_0316
.L_0317:
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_031B
mov dword ptr [ebp-32], -1
.L_031B:
.L_031A:
.L_0316:
.L_0315:
.L_0314:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp+12], ebx
jg .L_031D
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .L_031F
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.L_031F:
.L_031E:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-40], eax
jmp .L_0321
.L_0324:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp-24]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
push dword ptr [ebp-8]
push dword ptr [ebp+28]
call HCHECKOVLPARAM
add esp, 24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .L_0326
mov dword ptr [ebp-16], 0
jmp .L_0323
.L_0326:
.L_0325:
cmp dword ptr [ebp-12], 1040
jl .L_0328
mov eax, dword ptr [ebp+32]
inc dword ptr [eax]
.L_0328:
.L_0327:
mov eax, dword ptr [ebp-12]
add dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
.L_0322:
inc dword ptr [ebp-36]
.L_0321:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .L_0324
.L_0323:
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
jmp .L_032A
.L_032D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .L_032F
mov eax, dword ptr [ebp+36]
mov dword ptr [eax], 0
jmp .L_032C
.L_032F:
.L_032E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
.L_032B:
inc dword ptr [ebp-36]
.L_032A:
mov ebx, dword ptr [ebp-40]
cmp dword ptr [ebp-36], ebx
jle .L_032D
.L_032C:
.L_031D:
.L_031C:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.L_0311:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKCASTOVL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.L_0389:
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
jne .L_038C
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jne .L_038E
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-8], ebx
jne .L_0390
mov dword ptr [ebp-4], 1300
jmp .L_038A
.L_0390:
.L_038F:
mov dword ptr [ebp-4], 1040
jmp .L_038A
.L_038E:
.L_038D:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0392
mov dword ptr [ebp-4], 0
jmp .L_038A
.L_0392:
.L_0391:
.L_038C:
.L_038B:
mov ebx, dword ptr [ebp+20]
and ebx, 4
test ebx, ebx
je .L_0394
mov dword ptr [ebp-4], 0
jmp .L_038A
.L_0394:
.L_0393:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .L_0395
mov dword ptr [ebp-16], 24
jmp .L_050B
.L_0395:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.L_050B:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .L_039A
.L_039B:
cmp dword ptr [ebp-20], 10
jne .L_0399
.L_039A:
mov dword ptr [ebp-4], 0
jmp .L_038A
jmp .L_0397
.L_0399:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .L_039D
mov dword ptr [ebp-24], 24
jmp .L_050C
.L_039D:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.L_050C:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .L_03A1
.L_03A2:
mov dword ptr [ebp-4], 0
jmp .L_038A
.L_03A1:
.L_039F:
.L_039C:
.L_0397:
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
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.L_038A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELPARAMS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_03D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.L_03D2:
cmp dword ptr [ebp-4], 0
je .L_03D3
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_03D2
.L_03D3:
.L_03D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDTOGLOBCTORLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03D8:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .L_03DB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
jmp .L_03DA
.L_03DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.L_03DA:
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
.L_03D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SYMBCALCPARAMMATCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_03E0:
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
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .L_03E3
mov dword ptr [ebp-4], 0
jmp .L_03E1
.L_03E3:
.L_03E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
cmp dword ptr [eax+56], ecx
je .L_03E5
mov dword ptr [ebp-4], 0
jmp .L_03E1
.L_03E5:
.L_03E4:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 3
jne .L_03E7
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ecx+68], ebx
je .L_03E9
mov dword ptr [ebp-4], 0
jmp .L_03E1
.L_03E9:
.L_03E8:
.L_03E7:
.L_03E6:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_03E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSUBORFUNCTOSTR:
push ebp
mov ebp, esp
push ebx
.L_0433:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .L_0436
push 0
push 4
push offset Lt_0437
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_0435
.L_0436:
push 0
push 9
push offset Lt_0438
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0435:
.L_0434:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCMODETOSTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0439:
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
je .L_043C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .L_0440
.L_0441:
cmp dword ptr [ebp-4], 2
jne .L_043F
.L_0440:
push 0
push 9
push offset Lt_0442
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_043D
.L_043F:
cmp dword ptr [ebp-4], 5
jne .L_0443
.L_0444:
push 0
push 10
push offset Lt_0445
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_043D
.L_0443:
cmp dword ptr [ebp-4], 6
jne .L_0446
.L_0447:
push 0
push 10
push offset Lt_0448
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_043D
.L_0446:
cmp dword ptr [ebp-4], 4
jne .L_0449
.L_044A:
push 0
push 8
push offset Lt_044B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0449:
.L_043D:
jmp .L_043B
.L_043C:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .L_044F
.L_0450:
cmp dword ptr [ebp-4], 2
jne .L_044E
.L_044F:
mov eax, dword ptr [ENV+276]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .L_0454
.L_0455:
cmp dword ptr [ebp-8], 2
jne .L_0453
.L_0454:
jmp .L_0451
.L_0453:
push 0
push 9
push offset Lt_0442
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0456:
.L_0451:
jmp .L_044C
.L_044E:
cmp dword ptr [ebp-4], 5
jne .L_0457
.L_0458:
push 0
push 10
push offset Lt_0445
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_044C
.L_0457:
cmp dword ptr [ebp-4], 6
jne .L_0459
.L_045A:
push 0
push 10
push offset Lt_0448
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_044C
.L_0459:
cmp dword ptr [ebp-4], 4
jne .L_045B
.L_045C:
cmp dword ptr [ENV+276], 4
je .L_045E
push 0
push 8
push offset Lt_044B
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_045E:
.L_045D:
jmp .L_044C
.L_045B:
cmp dword ptr [ebp-4], 3
jne .L_045F
.L_0460:
cmp dword ptr [ENV+276], 3
je .L_0462
push 0
push 7
push offset Lt_0463
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0462:
.L_0461:
.L_045F:
.L_044C:
.L_043B:
.L_043A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPARAMSTOSTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.L_0471:
push 0
push 2
push offset Lt_0466
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
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
je .L_0474
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-4], ebx
.L_0474:
.L_0473:
.L_0475:
cmp dword ptr [ebp-4], 0
je .L_0476
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 1
je .L_0479
.L_047A:
cmp dword ptr [ebp-8], 2
je .L_0479
.L_047B:
cmp dword ptr [ebp-8], 3
jne .L_0478
.L_0479:
cmp dword ptr [ebp-8], 1
je .L_047E
.L_047F:
cmp dword ptr [ebp-8], 2
jne .L_047D
.L_047E:
mov ecx, dword ptr [ENV+136]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+28]
mov ebx, ecx
call SYMBGETDEFAULTPARAMMODE
add esp, 8
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_0481
cmp dword ptr [ebp-8], 1
jne .L_0483
push 0
push 7
push offset Lt_0484
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
jmp .L_0482
.L_0483:
push 0
push 7
push offset Lt_0485
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0482:
.L_0481:
.L_0480:
jmp .L_047C
.L_047D:
cmp dword ptr [ebp-8], 3
jne .L_0486
.L_0487:
push 0
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call HDUMPDYNAMICARRAYDIMENSIONS
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_0486:
.L_047C:
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
call SYMBTYPETOSTR
add esp, 20
push eax
push 4
push offset Lt_0489
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_0477
.L_0478:
cmp dword ptr [ebp-8], 4
jne .L_048C
.L_048D:
push 0
push 4
push offset Lt_048E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_048C:
.L_0477:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .L_0490
push 0
push 3
push offset Lt_046E
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0490:
.L_048F:
jmp .L_0475
.L_0476:
push 0
push 2
push offset Lt_0491
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0472:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HRESULTTOSTR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0492:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .L_0495
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .L_0497
push 0
push 7
push offset Lt_0498
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
.L_0497:
.L_0496:
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
call SYMBTYPETOSTR
add esp, 20
push eax
push 5
push offset Lt_0499
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_0495:
.L_0494:
.L_0493:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4
Lt_0022:	.ascii	"THIS\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
Lt_01CB:	.ascii	"{fbfp}\0"
.balign 4
Lt_01CC:	.ascii	"$\0"
.balign 4
Lt_0207:	.ascii	"fb$result\0"
.balign 4
Lt_0437:	.ascii	"sub\0"
.balign 4
Lt_0438:	.ascii	"function\0"
.balign 4
Lt_0442:	.ascii	" stdcall\0"
.balign 4
Lt_0445:	.ascii	" thiscall\0"
.balign 4
Lt_0448:	.ascii	" fastcall\0"
.balign 4
Lt_044B:	.ascii	" pascal\0"
.balign 4
Lt_0463:	.ascii	" cdecl\0"
.balign 4
Lt_0466:	.ascii	"(\0"
.balign 4
Lt_046E:	.ascii	", \0"
.balign 4
Lt_046F:	.ascii	"any\0"
.balign 4
Lt_0470:	.ascii	") \0"
.balign 4
Lt_0484:	.ascii	"byval \0"
.balign 4
Lt_0485:	.ascii	"byref \0"
.balign 4
Lt_0489:	.ascii	"as \0"
.balign 4
Lt_048E:	.ascii	"...\0"
.balign 4
Lt_0491:	.ascii	")\0"
.balign 4
Lt_0498:	.ascii	" byref\0"
.balign 4
Lt_0499:	.ascii	" as \0"
.balign 4
Lt_04A6:	.ascii	"constructor\0"
.balign 4
Lt_04A8:	.ascii	"destructor\0"
.balign 4
Lt_04AB:	.ascii	"operator.\0"
.balign 4
Lt_04B1:	.ascii	".property.\0"
.balign 4
Lt_04B4:	.ascii	"get\0"
.balign 4
Lt_04B5:	.ascii	"set\0"
