	.intel_syntax noprefix

.section .text
.balign 16

.globl _REGNEWCLASS
_REGNEWCLASS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0073:
mov dword ptr [ebp-8], 0
push 304
call _XCALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
jne .L_0076
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _REGINITCLASS
add esp, 8
jmp .L_0075
.L_0076:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SREGINITCLASS
add esp, 8
.L_0075:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _REGDELCLASS
_REGDELCLASS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0077:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .L_007A
jmp .L_0078
.L_007A:
.L_0079:
push dword ptr [ebp+8]
call _free
add esp, 4
mov dword ptr [ebp-4], -1
.L_0078:
mov eax, dword ptr [ebp-4]
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
_REGPUSH:
push ebp
mov ebp, esp
push ebx
.L_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+132]
mov dword ptr [_Lt_0141], ebx
mov ebx, dword ptr [_Lt_0141]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+132], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0141]
mov ebx, dword ptr [ecx+128]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0141]
mov dword ptr [ebx+128], eax
mov eax, dword ptr [_Lt_0141]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.L_007C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0141,4

.section .text
.balign 16
_REGPOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [_Lt_0142], ebx
.L_007F:
cmp dword ptr [_Lt_0142], 0
je .L_0080
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebx]
sal ecx, 2
add eax, ecx
mov ecx, dword ptr [ebp+12]
and ecx, dword ptr [eax+76]
test ecx, ecx
je .L_0082
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0142]
cmp dword ptr [ecx+128], eax
jne .L_0084
mov eax, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+128], ebx
jmp .L_0083
.L_0084:
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [_Lt_0143]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.L_0083:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [_Lt_0142]
mov ebx, dword ptr [eax+132]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [_Lt_0142]
mov dword ptr [ebx+132], ecx
mov ecx, dword ptr [_Lt_0142]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .L_007E
.L_0082:
.L_0081:
mov ebx, dword ptr [_Lt_0142]
mov dword ptr [_Lt_0143], ebx
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebx+4]
mov dword ptr [_Lt_0142], ecx
jmp .L_007F
.L_0080:
mov dword ptr [ebp-4], -1
.L_007E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0142,4
.balign 4
	.lcomm	_Lt_0143,4

.section .text
.balign 16
_REGPOPREG:
push ebp
mov ebp, esp
push ebx
.L_0085:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [_Lt_0144], ebx
.L_0087:
cmp dword ptr [_Lt_0144], 0
je .L_0088
mov ebx, dword ptr [_Lt_0144]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .L_008A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0144]
cmp dword ptr [eax+128], ebx
jne .L_008C
mov ebx, dword ptr [_Lt_0144]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+128], ecx
jmp .L_008B
.L_008C:
mov ecx, dword ptr [_Lt_0144]
mov eax, dword ptr [_Lt_0145]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.L_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0144]
mov ecx, dword ptr [ebx+132]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0144]
mov dword ptr [ecx+132], eax
jmp .L_0086
.L_008A:
.L_0089:
mov eax, dword ptr [_Lt_0144]
mov dword ptr [_Lt_0145], eax
mov eax, dword ptr [_Lt_0144]
mov ecx, dword ptr [eax+4]
mov dword ptr [_Lt_0144], ecx
jmp .L_0087
.L_0088:
push 0
push 1
push 0
push offset _Lt_008D
push 21
call _ERRREPORTEX
add esp, 20
.L_0086:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0144,4
.balign 4
	.lcomm	_Lt_0145,4

.section .text
.balign 16
_REGCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_008E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+136], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 0
mov dword ptr [_Lt_0146], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_0091
.L_0094:
mov ebx, dword ptr [_Lt_0146]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+64], 0
mov eax, dword ptr [_Lt_0146]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [_Lt_0146]
sal ebx, 2
add eax, ebx
mov dword ptr [eax+108], 4294967295
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [_Lt_0146]
sal eax, 3
add ebx, eax
lea eax, [ebx+12]
mov dword ptr [_Lt_0147], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0147]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0147]
mov dword ptr [ecx+128], ebx
mov ebx, dword ptr [_Lt_0147]
mov ecx, dword ptr [_Lt_0146]
mov dword ptr [ebx], ecx
.L_0092:
inc dword ptr [_Lt_0146]
.L_0091:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0146], ecx
jle .L_0094
.L_0093:
.L_008F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0147,4
.balign 4
	.lcomm	_Lt_0146,4

.section .text
.balign 16
_REGFINDFAREST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0095:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .L_0098
.L_009B:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-16], ebx
je .L_009D
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [ebp-16]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax+76]
je .L_009F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
cmp dword ptr [ebp-8], eax
ja .L_00A1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_00A1:
.L_00A0:
.L_009F:
.L_009E:
.L_009D:
.L_009C:
.L_0099:
inc dword ptr [ebp-16]
.L_0098:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .L_009B
.L_009A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.L_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGALLOCATE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00A2:
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _REGPOP
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_00A5
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+52], 0
je .L_00A6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
cmp dword ptr [ebx], 4
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_0148
.L_00A6:
mov dword ptr [ebp-16], 0
.L_0148:
cmp dword ptr [ebp-16], 0
je .L_00A9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.L_00A9:
.L_00A8:
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _REGFINDFAREST
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [_IR+264]
add esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _REGPOPREG
add esp, 8
.L_00A5:
.L_00A4:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp-8]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
push dword ptr [ebp+12]
call dword ptr [_IR+256]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGALLOCATEREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00AA:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
je .L_00AD
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGPOPREG
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
not eax
and dword ptr [ebx+136], eax
.L_00AD:
.L_00AC:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
push dword ptr [ebp+16]
call dword ptr [_IR+256]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGENSURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00AE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .L_00B1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [_IR+260]
add esp, 12
.L_00B1:
.L_00B0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGSETOWNER:
push ebp
mov ebp, esp
push ebx
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+96], ebx
push dword ptr [ebp+16]
call dword ptr [_IR+256]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
.L_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGFREE:
push ebp
mov ebp, esp
push ebx
.L_00B4:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
jne .L_00B7
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+136], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov dword ptr [ebx+108], 4294967295
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGPUSH
add esp, 8
.L_00B7:
.L_00B6:
.L_00B5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGISFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00B8:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_00B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGGETMAXREGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGGETFIRST:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00BC:
mov dword ptr [ebp-4], 0
.L_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_REGGETNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BE:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jl .L_00C1
inc dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+12], ebx
jge .L_00C3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.L_00C3:
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGGETVREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C4:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.L_00C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_REGGETREALREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00C6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.L_00C7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_REGDUMP:
push ebp
mov ebp, esp
.L_00C8:
.L_00C9:
mov esp, ebp
pop ebp
ret
.balign 16
_REGINITCLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00CA:
push dword ptr [ebp+8]
call _REGCLEAR
add esp, 4
mov dword ptr [_Lt_014C], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_00CD
.L_00D0:
mov ebx, dword ptr [_Lt_014C]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+128]
mov eax, dword ptr [_Lt_014C]
sal eax, 2
add ecx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ecx+76], eax
.L_00CE:
inc dword ptr [_Lt_014C]
.L_00CD:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_Lt_014C], eax
jle .L_00D0
.L_00CF:
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGENSURE
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGALLOCATE
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGALLOCATEREG
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGFREE
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGISFREE
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGSETOWNER
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETMAXREGS
mov dword ptr [eax+24], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGGETFIRST
mov dword ptr [ecx+28], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETNEXT
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGGETVREG
mov dword ptr [ecx+36], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETREALREG
mov dword ptr [eax+40], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGCLEAR
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGDUMP
mov dword ptr [eax+48], ecx
.L_00CB:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_014C,4

.section .text
.balign 16
_SREGFINDREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00D1:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
cmp dword ptr [eax+300], ecx
jne .L_00D4
jmp .L_00D2
.L_00D4:
.L_00D3:
mov dword ptr [_Lt_014D], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
dec eax
mov dword ptr [ebp-8], eax
jmp .L_00D6
.L_00D9:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+268]
mov eax, dword ptr [_Lt_014D]
sal eax, 2
add ecx, eax
cmp dword ptr [ecx], -1
je .L_00DB
mov ecx, dword ptr [_Lt_014D]
sal ecx, 2
mov eax, dword ptr [ebp+8]
add eax, ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [eax+64], ecx
jne .L_00DD
mov ecx, dword ptr [_Lt_014D]
mov dword ptr [ebp-4], ecx
jmp .L_00D2
.L_00DD:
.L_00DC:
.L_00DB:
.L_00DA:
.L_00D7:
inc dword ptr [_Lt_014D]
.L_00D6:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [_Lt_014D], ecx
jle .L_00D9
.L_00D8:
.L_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_014D,4

.section .text
.balign 16
_SREGXCHG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00DE:
push dword ptr [ebp+12]
call dword ptr [_IR+268]
add esp, 4
mov dword ptr [_Lt_014E], -1
mov dword ptr [_Lt_014F], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .L_00E1
.L_00E4:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_014F]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .L_00E6
mov eax, dword ptr [_Lt_014F]
mov dword ptr [_Lt_014E], eax
jmp .L_00E3
.L_00E6:
.L_00E5:
.L_00E2:
inc dword ptr [_Lt_014F]
.L_00E1:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_Lt_014F], eax
jle .L_00E4
.L_00E3:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_014E]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [_Lt_014E]
sal ebx, 2
add ecx, ebx
pop dword ptr [ecx]
.L_00DF:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_014F,4
.balign 4
	.lcomm	_Lt_014E,4

.section .text
.balign 16
_SREGFINDFREEREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E7:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+300], 0
jne .L_00EA
jmp .L_00E8
.L_00EA:
.L_00E9:
mov dword ptr [_Lt_0150], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_00EC
.L_00EF:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_0150]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
jne .L_00F1
mov eax, dword ptr [_Lt_0150]
mov dword ptr [ebp-4], eax
jmp .L_00E8
.L_00F1:
.L_00F0:
.L_00ED:
inc dword ptr [_Lt_0150]
.L_00EC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0150], eax
jle .L_00EF
.L_00EE:
.L_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0150,4

.section .text
.balign 16
_SREGFINDTOSREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00FD:
mov dword ptr [_Lt_0151], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_0100
.L_0103:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_0151]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .L_0105
mov eax, dword ptr [_Lt_0151]
mov dword ptr [ebp-4], eax
jmp .L_00FE
.L_0105:
.L_0104:
.L_0101:
inc dword ptr [_Lt_0151]
.L_0100:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0151], eax
jle .L_0103
.L_0102:
mov dword ptr [ebp-4], -1
.L_00FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0151,4

.section .text
.balign 16
_SREGALLOCATE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
push dword ptr [ebp+8]
call _SREGFINDFREEREG
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0109
push dword ptr [ebp+8]
call _SREGFINDTOSREG
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [_IR+264]
add esp, 8
.L_0109:
.L_0108:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+300]
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-16], ebx
jmp .L_010B
.L_010E:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .L_0110
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-12]
sal eax, 2
add ebx, eax
inc dword ptr [ebx]
.L_0110:
.L_010F:
.L_010C:
inc dword ptr [ebp-12]
.L_010B:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jle .L_010E
.L_010D:
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGALLOCATEREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_0111:
push 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _SREGALLOCATE
add esp, 16
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SREGENSURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0113:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SREGFINDREG
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .L_0116
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SREGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [_IR+260]
add esp, 12
jmp .L_0115
.L_0116:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-8]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], 0
je .L_0118
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SREGXCHG
add esp, 8
.L_0118:
.L_0117:
.L_0115:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.L_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGFREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_0119:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], -1
jne .L_011C
jmp .L_011A
.L_011C:
.L_011B:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .L_011E
.L_0121:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .L_0123
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx], eax
jle .L_0125
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
dec dword ptr [ebx]
.L_0125:
.L_0124:
.L_0123:
.L_0122:
.L_011F:
inc dword ptr [ebp-4]
.L_011E:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-4], ebx
jle .L_0121
.L_0120:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+300]
.L_011A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGISFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0126:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.L_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGSETOWNER:
push ebp
mov ebp, esp
push ebx
.L_0128:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
.L_0129:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGGETREALREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.L_012B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGGETMAXREGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.L_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGGETFIRST:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_012E:
push dword ptr [ebp+8]
call _SREGFINDTOSREG
add esp, 4
mov dword ptr [ebp-4], eax
.L_012F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SREGGETNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0130:
mov eax, dword ptr [ebp+12]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebx+60]
setge cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0133
mov dword ptr [ebp-4], -1
jmp .L_0132
.L_0133:
push dword ptr [ebp+8]
call _SREGFINDTOSREG
add esp, 4
mov dword ptr [ebp-4], eax
.L_0132:
.L_0131:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGGETVREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0134:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.L_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGDUMP:
push ebp
mov ebp, esp
.L_0136:
.L_0137:
mov esp, ebp
pop ebp
ret
.balign 16
_SREGCLEAR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+300], ecx
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .L_013B
.L_013E:
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx], -1
mov ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+8]
add ebx, ecx
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [ebp+8]
add ecx, ebx
mov dword ptr [ecx+96], 0
.L_013C:
inc dword ptr [ebp-4]
.L_013B:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .L_013E
.L_013D:
.L_0139:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SREGINITCLASS:
push ebp
mov ebp, esp
push ebx
.L_013F:
push dword ptr [ebp+8]
call _SREGCLEAR
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGENSURE
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGALLOCATE
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGALLOCATEREG
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGFREE
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGISFREE
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGSETOWNER
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETMAXREGS
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGGETFIRST
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETNEXT
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGGETVREG
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETREALREG
mov dword ptr [eax+40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGCLEAR
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGDUMP
mov dword ptr [eax+48], ebx
.L_0140:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
.balign 4
	.lcomm	_Lt_0072,36

.section .data
.balign 4
_Lt_008D:	.ascii	"REGPOPREG\0"
