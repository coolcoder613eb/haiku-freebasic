	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLERRORMODINIT@0
_RTLERRORMODINIT@0:
.L_007C:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.L_007D:
ret
.balign 16

.globl _RTLERRORMODEND@0
_RTLERRORMODEND@0:
.L_007E:
.L_007F:
ret
.balign 16

.globl _RTLERRORCHECK@4
_RTLERRORCHECK@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.L_0086:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+160], 0
je .L_0089
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-12], eax
push 0
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL@8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .L_0088
.L_0089:
mov dword ptr [ebp-12], 0
.L_0088:
cmp dword ptr [_ENV+156], 0
je .L_008B
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+8]
push 45
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HERRORTHROW@8
push eax
push 0
push 104
call _ASTNEWBRANCH@12
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL@8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .L_008A
.L_008B:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.L_008A:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.L_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLERRORTHROW@12
_RTLERRORTHROW@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_008C:
push 0
push 293
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-16], eax
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_008F
jmp .L_008D
.L_008F:
.L_008E:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_0091
jmp .L_008D
.L_0091:
.L_0090:
push -1
push -2147483648
push dword ptr [ebp+16]
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_0093
jmp .L_008D
.L_0093:
.L_0092:
cmp dword ptr [_ENV+160], 0
je .L_0095
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
jmp .L_0094
.L_0095:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0094:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_0097
jmp .L_008D
.L_0097:
.L_0096:
cmp dword ptr [_ENV+160], 0
je .L_0099
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
jmp .L_0098
.L_0099:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.L_0098:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_009B
jmp .L_008D
.L_009B:
.L_009A:
push dword ptr [ebp-4]
push 0
push 104
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.L_008D:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLERRORSETHANDLER@8
_RTLERRORSETHANDLER@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_009C:
push 0
push 294
push offset _Lt_006A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_009F
jmp .L_009D
.L_009F:
.L_009E:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
je .L_00A1
mov eax, dword ptr [_ENV+1032]
cmp dword ptr [_PARSER+108], eax
je .L_00A3
mov eax, dword ptr [_PARSER+108]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 0
jne .L_00A6
push 0
push 32
call _SYMBADDTEMPVAR@8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
.L_00A6:
.L_00A5:
.L_00A3:
.L_00A2:
.L_00A1:
.L_00A0:
cmp dword ptr [ebp-8], 0
jne .L_00A8
push dword ptr [ebp-4]
call _ASTADD@4
.L_00A8:
.L_00A7:
.L_009D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLERRORGETNUM@0
_RTLERRORGETNUM@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.L_00A9:
push 0
push 295
push offset _Lt_006B
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
.L_00AA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORSETNUM@4
_RTLERRORSETNUM@4:
push ebp
mov ebp, esp
sub esp, 4
.L_00AB:
push 0
push 296
push offset _Lt_006C
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG@16
test eax, eax
jne .L_00AE
jmp .L_00AC
.L_00AE:
.L_00AD:
push dword ptr [ebp-4]
call _ASTADD@4
.L_00AC:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLERRORRESUME@4
_RTLERRORRESUME@4:
push ebp
mov ebp, esp
sub esp, 8
.L_00AF:
cmp dword ptr [ebp+8], 0
jne .L_00B2
push 297
push offset _Lt_006D
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
jmp .L_00B1
.L_00B2:
push 298
push offset _Lt_006E
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-8], eax
.L_00B1:
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
push 0
push 104
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
.L_00B0:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLERRORSETMODNAME@8
_RTLERRORSETMODNAME@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00B3:
push 0
push 299
push offset _Lt_0075
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00B6
mov dword ptr [ebp-4], 0
jmp .L_00B4
.L_00B6:
.L_00B5:
cmp dword ptr [ebp+8], 0
je .L_00B8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call _SYMBADDTEMPVAR@8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_00B7
.L_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00B7:
.L_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLERRORSETFUNCNAME@8
_RTLERRORSETFUNCNAME@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.L_00BA:
push 0
push 300
push offset _Lt_0076
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .L_00BD
mov dword ptr [ebp-4], 0
jmp .L_00BB
.L_00BD:
.L_00BC:
cmp dword ptr [ebp+8], 0
je .L_00BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call _SYMBADDTEMPVAR@8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
call _ASTNEWVAR@20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
jmp .L_00BE
.L_00BF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BE:
.L_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__rtlzerror:
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
_HERRORTHROW@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0080:
push 0
push 292
push offset _Lt_0068
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8376]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
push -1
push -2147483648
lea eax, [_ENV+304]
push eax
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
cmp dword ptr [ebp+8], 0
je .L_0083
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-12], eax
jmp .L_0082
.L_0083:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0082:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
cmp dword ptr [_ENV+160], 0
je .L_0085
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-12], eax
jmp .L_0084
.L_0085:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.L_0084:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0081:
mov eax, dword ptr [ebp-4]
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
_FUNCDATA:
.int _Lt_0068
.long 0
.int 32
.int 3
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0069
.long 0
.int 32
.int 3
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.int 1056
.int 1
.int 0
.skip 4,0
.skip 176,0
.int _Lt_006A
.long 0
.int 32
.int -1
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_006D
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_006E
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_006F
.int _Lt_0070
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 256,0
.int _Lt_0071
.int _Lt_0072
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int _Lt_0073
.int _Lt_0074
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 256,0
.int _Lt_0075
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0076
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 4,0
.skip 240,0
.int _Lt_0077
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 520
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0077
.int _Lt_0078
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1063
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0079
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.skip 192,0
.int _Lt_0079
.int _Lt_007A
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 4,0
.int 523
.int 1
.int 0
.skip 4,0
.int 1060
.int 1
.int 0
.skip 4,0
.int 1063
.int 1
.int 0
.skip 4,0
.skip 192,0
.long 0
.skip 280,0
.balign 4
_Lt_0068:	.ascii	"fb_ErrorThrowAt\0"
.balign 4
_Lt_0069:	.ascii	"fb_ErrorThrowEx\0"
.balign 4
_Lt_006A:	.ascii	"fb_ErrorSetHandler\0"
.balign 4
_Lt_006B:	.ascii	"fb_ErrorGetNum\0"
.balign 4
_Lt_006C:	.ascii	"fb_ErrorSetNum\0"
.balign 4
_Lt_006D:	.ascii	"fb_ErrorResume\0"
.balign 4
_Lt_006E:	.ascii	"fb_ErrorResumeNext\0"
.balign 4
_Lt_006F:	.ascii	"erl\0"
.balign 4
_Lt_0070:	.ascii	"fb_ErrorGetLineNum\0"
.balign 4
_Lt_0071:	.ascii	"erfn\0"
.balign 4
_Lt_0072:	.ascii	"fb_ErrorGetFuncName\0"
.balign 4
_Lt_0073:	.ascii	"ermn\0"
.balign 4
_Lt_0074:	.ascii	"fb_ErrorGetModName\0"
.balign 4
_Lt_0075:	.ascii	"fb_ErrorSetModName\0"
.balign 4
_Lt_0076:	.ascii	"fb_ErrorSetFuncName\0"
.balign 4
_Lt_0077:	.ascii	"fb_Assert\0"
.balign 4
_Lt_0078:	.ascii	"fb_AssertW\0"
.balign 4
_Lt_0079:	.ascii	"fb_AssertWarn\0"
.balign 4
_Lt_007A:	.ascii	"fb_AssertWarnW\0"

.section .ctors
.int _fb_ctor__rtlzerror
