	.intel_syntax noprefix

.section .text
.balign 16

.globl _LEXREADUTF8
_LEXREADUTF8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00A6:
mov dword ptr [ebp-4], 0
call _HUTF8TOCHAR
mov dword ptr [ebp-4], eax
jmp .L_00A8
.L_00A9:
jmp .L_00AA
call _HUTF8TOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_00A8
.L_00AA:
call _HUTF8TOUTF32LE
mov dword ptr [ebp-4], eax
.L_00A8:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4324], ebx
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4332]
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4328], eax
.L_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXREADUTF16LE
_LEXREADUTF16LE:
push ebx
.L_00D4:
call _HUTF16LETOCHAR
mov dword ptr [_Lt_00D9], eax
jmp .L_00D6
.L_00D7:
jmp .L_00D8
call _HUTF16LETOUTF16LE
mov dword ptr [_Lt_00D9], eax
jmp .L_00D6
.L_00D8:
call _HUTF16LETOUTF32LE
mov dword ptr [_Lt_00D9], eax
.L_00D6:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [_Lt_00D9]
mov dword ptr [eax+4324], ebx
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4332]
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4328], eax
.L_00D5:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_00D9,4

.section .text
.balign 16

.globl _LEXREADUTF16BE
_LEXREADUTF16BE:
push ebx
.L_0101:
call _HUTF16BETOCHAR
mov dword ptr [_Lt_0106], eax
jmp .L_0103
.L_0104:
jmp .L_0105
call _HUTF16BETOUTF16LE
mov dword ptr [_Lt_0106], eax
jmp .L_0103
.L_0105:
call _HUTF16BETOUTF32LE
mov dword ptr [_Lt_0106], eax
.L_0103:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [_Lt_0106]
mov dword ptr [eax+4324], ebx
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4332]
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4328], eax
.L_0102:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_0106,4

.section .text
.balign 16

.globl _LEXREADUTF32LE
_LEXREADUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0128:
mov dword ptr [ebp-4], 0
call _HUTF32LETOCHAR
mov dword ptr [ebp-4], eax
jmp .L_012A
.L_012B:
jmp .L_012C
call _HUTF32LETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_012A
.L_012C:
call _HUTF32LETOUTF32LE
mov dword ptr [ebp-4], eax
.L_012A:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4324], ebx
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4332]
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4328], eax
.L_0129:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXREADUTF32BE
_LEXREADUTF32BE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_014C:
mov dword ptr [ebp-4], 0
call _HUTF32BETOCHAR
mov dword ptr [ebp-4], eax
jmp .L_014E
.L_014F:
jmp .L_0150
call _HUTF32BETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_014E
.L_0150:
call _HUTF32BETOUTF32LE
mov dword ptr [ebp-4], eax
.L_014E:
mov eax, dword ptr [_LEX+213384]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4324], ebx
mov ebx, dword ptr [_LEX+213384]
lea eax, [ebx+4332]
mov ebx, dword ptr [_LEX+213384]
mov dword ptr [ebx+4328], eax
.L_014D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__lexzutf:
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
_HUTF8TOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0068:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0151], ebx
mov dword ptr [_Lt_0152], 0
.L_006B:
cmp dword ptr [_Lt_0152], 8192
jge .L_006C
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_006E
jmp .L_006C
.L_006E:
.L_006D:
push 1
push offset _Lt_0153
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0070
jmp .L_006C
.L_0070:
.L_006F:
movzx eax, byte ptr [_Lt_0153]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_0154], ebx
mov dword ptr [_Lt_0155], 0
mov ebx, offset _Lt_0153
mov dword ptr [_Lt_0156], ebx
cmp dword ptr [_Lt_0154], 0
jle .L_0072
push dword ptr [_Lt_0154]
push offset _Lt_0153 + 1
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0074
jmp .L_006C
.L_0074:
.L_0073:
mov eax, dword ptr [_Lt_0154]
mov dword ptr [_Lt_0157], eax
.L_0075:
mov eax, dword ptr [_Lt_0156]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_0155], ebx
inc dword ptr [_Lt_0156]
shl dword ptr [_Lt_0155], 6
dec dword ptr [_Lt_0157]
.L_0077:
cmp dword ptr [_Lt_0157], 0
jg .L_0075
.L_0076:
.L_0072:
.L_0071:
mov ebx, dword ptr [_Lt_0156]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_0155], eax
mov eax, dword ptr [_Lt_0154]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_0155], ebx
cmp dword ptr [_Lt_0155], 255
jbe .L_0079
mov dword ptr [_Lt_0155], 63
.L_0079:
.L_0078:
mov bl, byte ptr [_Lt_0155]
mov eax, dword ptr [_Lt_0151]
mov byte ptr [eax], bl
inc dword ptr [_Lt_0151]
inc dword ptr [_Lt_0152]
jmp .L_006B
.L_006C:
mov ebx, dword ptr [_Lt_0152]
mov dword ptr [ebp-4], ebx
.L_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0153,7
.balign 4
	.lcomm	_Lt_0156,4
.balign 4
	.lcomm	_Lt_0155,4
.balign 4
	.lcomm	_Lt_0151,4
.balign 4
	.lcomm	_Lt_0152,4
.balign 4
	.lcomm	_Lt_0154,4
.balign 4
	.lcomm	_Lt_0157,4

.section .text
.balign 16
_HUTF8TOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007B:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0158], ebx
mov dword ptr [_Lt_0159], 0
.L_007E:
cmp dword ptr [_Lt_0159], 8192
jge .L_007F
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_0081
jmp .L_007F
.L_0081:
.L_0080:
push 1
push offset _Lt_015A
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0083
jmp .L_007F
.L_0083:
.L_0082:
movzx eax, byte ptr [_Lt_015A]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_015B], ebx
mov dword ptr [_Lt_015C], 0
mov ebx, offset _Lt_015A
mov dword ptr [_Lt_015D], ebx
cmp dword ptr [_Lt_015B], 0
jle .L_0085
push dword ptr [_Lt_015B]
push offset _Lt_015A + 1
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0087
jmp .L_007F
.L_0087:
.L_0086:
mov eax, dword ptr [_Lt_015B]
mov dword ptr [_Lt_015E], eax
.L_0088:
mov eax, dword ptr [_Lt_015D]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_015C], ebx
inc dword ptr [_Lt_015D]
shl dword ptr [_Lt_015C], 6
dec dword ptr [_Lt_015E]
.L_008A:
cmp dword ptr [_Lt_015E], 0
jg .L_0088
.L_0089:
.L_0085:
.L_0084:
mov ebx, dword ptr [_Lt_015D]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_015C], eax
mov eax, dword ptr [_Lt_015B]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_015C], ebx
cmp dword ptr [_Lt_015C], 65535
jbe .L_008C
cmp dword ptr [_Lt_0159], 8191
jge .L_008E
mov ebx, dword ptr [_Lt_015C]
shr ebx, 10
add ebx, 55296
mov eax, dword ptr [_Lt_0158]
mov word ptr [eax], bx
add dword ptr [_Lt_0158], 2
inc dword ptr [_Lt_0159]
.L_008E:
.L_008D:
mov ebx, dword ptr [_Lt_015C]
and ebx, 1023
add ebx, 56320
mov dword ptr [_Lt_015C], ebx
.L_008C:
.L_008B:
mov bx, word ptr [_Lt_015C]
mov eax, dword ptr [_Lt_0158]
mov word ptr [eax], bx
add dword ptr [_Lt_0158], 2
inc dword ptr [_Lt_0159]
jmp .L_007E
.L_007F:
mov ebx, dword ptr [_Lt_0159]
mov dword ptr [ebp-4], ebx
.L_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_015A,7
.balign 4
	.lcomm	_Lt_015D,4
.balign 4
	.lcomm	_Lt_015C,4
.balign 4
	.lcomm	_Lt_0158,4
.balign 4
	.lcomm	_Lt_0159,4
.balign 4
	.lcomm	_Lt_015B,4
.balign 4
	.lcomm	_Lt_015E,4

.section .text
.balign 16
_HUTF8TOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_008F:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_015F], ebx
mov dword ptr [_Lt_0160], 0
.L_0092:
cmp dword ptr [_Lt_0160], 8192
jge .L_0093
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_0095
jmp .L_0093
.L_0095:
.L_0094:
push 1
push offset _Lt_0161
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0097
jmp .L_0093
.L_0097:
.L_0096:
movzx eax, byte ptr [_Lt_0161]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_0162], ebx
mov dword ptr [_Lt_0163], 0
mov ebx, offset _Lt_0161
mov dword ptr [_Lt_0164], ebx
cmp dword ptr [_Lt_0162], 0
jle .L_0099
push dword ptr [_Lt_0162]
push offset _Lt_0161 + 1
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_009B
jmp .L_0093
.L_009B:
.L_009A:
mov eax, dword ptr [_Lt_0162]
mov dword ptr [_Lt_0165], eax
.L_009C:
mov eax, dword ptr [_Lt_0164]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_0163], ebx
inc dword ptr [_Lt_0164]
shl dword ptr [_Lt_0163], 6
dec dword ptr [_Lt_0165]
.L_009E:
cmp dword ptr [_Lt_0165], 0
jg .L_009C
.L_009D:
.L_0099:
.L_0098:
mov ebx, dword ptr [_Lt_0164]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_0163], eax
mov eax, dword ptr [_Lt_0162]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_0163], ebx
mov ebx, dword ptr [_Lt_015F]
mov eax, dword ptr [_Lt_0163]
mov dword ptr [ebx], eax
add dword ptr [_Lt_015F], 4
inc dword ptr [_Lt_0160]
jmp .L_0092
.L_0093:
mov eax, dword ptr [_Lt_0160]
mov dword ptr [ebp-4], eax
.L_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0161,7
.balign 4
	.lcomm	_Lt_0164,4
.balign 4
	.lcomm	_Lt_0163,4
.balign 4
	.lcomm	_Lt_015F,4
.balign 4
	.lcomm	_Lt_0160,4
.balign 4
	.lcomm	_Lt_0162,4
.balign 4
	.lcomm	_Lt_0165,4

.section .text
.balign 16
_HUTF16LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00AB:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0166], ebx
mov dword ptr [_Lt_0167], 0
.L_00AD:
cmp dword ptr [_Lt_0167], 8192
jge .L_00AE
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_00B0
jmp .L_00AE
.L_00B0:
.L_00AF:
push 2
push offset _Lt_0168
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00B2
jmp .L_00AE
.L_00B2:
.L_00B1:
movzx eax, word ptr [_Lt_0168]
cmp eax, 255
jle .L_00B4
movzx eax, word ptr [_Lt_0168]
cmp eax, 55296
jl .L_00B6
movzx eax, word ptr [_Lt_0168]
cmp eax, 56319
jg .L_00B8
push 2
push offset _Lt_0168
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00BA
jmp .L_00AE
.L_00BA:
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
.L_00B5:
mov word ptr [_Lt_0168], 63
.L_00B4:
.L_00B3:
mov al, byte ptr [_Lt_0168]
mov ebx, dword ptr [_Lt_0166]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0166]
inc dword ptr [_Lt_0167]
jmp .L_00AD
.L_00AE:
mov eax, dword ptr [_Lt_0167]
mov dword ptr [ebp-4], eax
.L_00AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0168,2
.balign 4
	.lcomm	_Lt_0166,4
.balign 4
	.lcomm	_Lt_0167,4

.section .text
.balign 16
_HUTF16LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00BB:
push 8193
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
push ebx
push 0
push dword ptr [_ENV+300]
call _fb_FileGetWstr
add esp, 16
test eax, eax
jne .L_00BE
push 0
push 2
push dword ptr [_ENV+300]
call _fb_FileTell
add esp, 4
mov ebx, dword ptr [_LEX+213384]
mov esi, dword ptr [ebx+12528]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call ___udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .L_00BD
.L_00BE:
mov dword ptr [ebp-4], 0
.L_00BD:
.L_00BC:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUTF16LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BF:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0169], ebx
mov dword ptr [_Lt_016A], 0
.L_00C1:
cmp dword ptr [_Lt_016A], 8192
jge .L_00C2
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_00C4
jmp .L_00C2
.L_00C4:
.L_00C3:
push 2
push offset _Lt_016B
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00C6
jmp .L_00C2
.L_00C6:
.L_00C5:
movzx eax, word ptr [_Lt_016B]
mov dword ptr [_Lt_016C], eax
cmp dword ptr [_Lt_016C], 55296
jb .L_00C8
cmp dword ptr [_Lt_016C], 56319
ja .L_00CA
push 2
push offset _Lt_016B
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00CC
jmp .L_00C2
.L_00CC:
.L_00CB:
mov eax, dword ptr [_Lt_016C]
add eax, 4294912000
shl eax, 10
movzx ebx, word ptr [_Lt_016B]
add eax, ebx
add eax, 9216
mov dword ptr [_Lt_016C], eax
.L_00CA:
.L_00C9:
.L_00C8:
.L_00C7:
mov eax, dword ptr [_Lt_0169]
mov ebx, dword ptr [_Lt_016C]
mov dword ptr [eax], ebx
add dword ptr [_Lt_0169], 4
inc dword ptr [_Lt_016A]
jmp .L_00C1
.L_00C2:
mov ebx, dword ptr [_Lt_016A]
mov dword ptr [ebp-4], ebx
.L_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_016B,2
.balign 4
	.lcomm	_Lt_016C,4
.balign 4
	.lcomm	_Lt_0169,4
.balign 4
	.lcomm	_Lt_016A,4

.section .text
.balign 16
_HUTF16BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DA:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_016D], ebx
mov dword ptr [_Lt_016E], 0
.L_00DC:
cmp dword ptr [_Lt_016E], 8192
jge .L_00DD
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_00DF
jmp .L_00DD
.L_00DF:
.L_00DE:
push 2
push offset _Lt_016F
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00E1
jmp .L_00DD
.L_00E1:
.L_00E0:
movzx eax, word ptr [_Lt_016F]
sar eax, 8
movzx ebx, word ptr [_Lt_016F]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov word ptr [_Lt_016F], ax
movzx eax, word ptr [_Lt_016F]
cmp eax, 255
jle .L_00E3
movzx eax, word ptr [_Lt_016F]
cmp eax, 55296
jl .L_00E5
movzx eax, word ptr [_Lt_016F]
cmp eax, 56319
jg .L_00E7
push 2
push offset _Lt_016F
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00E9
jmp .L_00DD
.L_00E9:
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E4:
mov word ptr [_Lt_016F], 63
.L_00E3:
.L_00E2:
mov al, byte ptr [_Lt_016F]
mov ebx, dword ptr [_Lt_016D]
mov byte ptr [ebx], al
inc dword ptr [_Lt_016D]
inc dword ptr [_Lt_016E]
jmp .L_00DC
.L_00DD:
mov eax, dword ptr [_Lt_016E]
mov dword ptr [ebp-4], eax
.L_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_016F,2
.balign 4
	.lcomm	_Lt_016D,4
.balign 4
	.lcomm	_Lt_016E,4

.section .text
.balign 16
_HUTF16BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00EA:
call _HUTF16LETOUTF16LE
mov dword ptr [_Lt_0170], eax
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0171], ebx
mov dword ptr [_Lt_0172], 1
mov ebx, dword ptr [_Lt_0170]
mov dword ptr [ebp-8], ebx
jmp .L_00ED
.L_00F0:
mov ebx, dword ptr [_Lt_0171]
mov ax, word ptr [ebx]
mov word ptr [_Lt_0173], ax
movzx eax, word ptr [_Lt_0173]
sar eax, 8
movzx ebx, word ptr [_Lt_0173]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0171]
mov word ptr [ebx], ax
add dword ptr [_Lt_0171], 2
.L_00EE:
inc dword ptr [_Lt_0172]
.L_00ED:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0172], eax
jle .L_00F0
.L_00EF:
mov eax, dword ptr [_Lt_0170]
mov dword ptr [ebp-4], eax
.L_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0171,4
.balign 4
	.lcomm	_Lt_0173,2
.balign 4
	.lcomm	_Lt_0172,4
.balign 4
	.lcomm	_Lt_0170,4

.section .text
.balign 16
_HUTF16BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00F1:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0174], ebx
mov dword ptr [_Lt_0175], 0
.L_00F3:
cmp dword ptr [_Lt_0175], 8192
jge .L_00F4
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_00F6
jmp .L_00F4
.L_00F6:
.L_00F5:
push 2
push offset _Lt_0176
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00F8
jmp .L_00F4
.L_00F8:
.L_00F7:
movzx eax, word ptr [_Lt_0176]
sar eax, 8
movzx ebx, word ptr [_Lt_0176]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ecx, eax
mov dword ptr [_Lt_0177], ecx
cmp dword ptr [_Lt_0177], 55296
jb .L_00FA
cmp dword ptr [_Lt_0177], 56319
ja .L_00FC
push 2
push offset _Lt_0176
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_00FE
jmp .L_00F4
.L_00FE:
.L_00FD:
mov eax, dword ptr [_Lt_0177]
add eax, 4294912000
shl eax, 10
movzx ecx, word ptr [_Lt_0176]
sar ecx, 8
movzx ebx, word ptr [_Lt_0176]
sal ebx, 8
and ebx, 65280
or ecx, ebx
mov esi, ecx
add eax, esi
add eax, 9216
mov dword ptr [_Lt_0177], eax
.L_00FC:
.L_00FB:
.L_00FA:
.L_00F9:
mov eax, dword ptr [_Lt_0174]
mov esi, dword ptr [_Lt_0177]
mov dword ptr [eax], esi
add dword ptr [_Lt_0174], 4
inc dword ptr [_Lt_0175]
jmp .L_00F3
.L_00F4:
mov esi, dword ptr [_Lt_0175]
mov dword ptr [ebp-4], esi
.L_00F2:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0176,2
.balign 4
	.lcomm	_Lt_0177,4
.balign 4
	.lcomm	_Lt_0174,4
.balign 4
	.lcomm	_Lt_0175,4

.section .text
.balign 16
_HUTF32LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0107:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0178], ebx
mov dword ptr [_Lt_0179], 0
.L_0109:
cmp dword ptr [_Lt_0179], 8192
jge .L_010A
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_010C
jmp .L_010A
.L_010C:
.L_010B:
push 4
push offset _Lt_017A
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_010E
jmp .L_010A
.L_010E:
.L_010D:
cmp dword ptr [_Lt_017A], 255
jbe .L_0110
mov dword ptr [_Lt_017A], 63
.L_0110:
.L_010F:
mov al, byte ptr [_Lt_017A]
mov ebx, dword ptr [_Lt_0178]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0178]
inc dword ptr [_Lt_0179]
jmp .L_0109
.L_010A:
mov eax, dword ptr [_Lt_0179]
mov dword ptr [ebp-4], eax
.L_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017A,4
.balign 4
	.lcomm	_Lt_0178,4
.balign 4
	.lcomm	_Lt_0179,4

.section .text
.balign 16
_HUTF32LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0111:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_017B], ebx
mov dword ptr [_Lt_017C], 0
.L_0113:
cmp dword ptr [_Lt_017C], 8192
jge .L_0114
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_0116
jmp .L_0114
.L_0116:
.L_0115:
push 4
push offset _Lt_017D
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0118
jmp .L_0114
.L_0118:
.L_0117:
cmp dword ptr [_Lt_017D], 65535
jbe .L_011A
cmp dword ptr [_Lt_017C], 8191
jge .L_011C
mov eax, dword ptr [_Lt_017D]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [_Lt_017B]
mov word ptr [ebx], ax
add dword ptr [_Lt_017B], 2
inc dword ptr [_Lt_017C]
.L_011C:
.L_011B:
mov eax, dword ptr [_Lt_017D]
and eax, 1023
add eax, 56320
mov dword ptr [_Lt_017D], eax
.L_011A:
.L_0119:
mov ax, word ptr [_Lt_017D]
mov ebx, dword ptr [_Lt_017B]
mov word ptr [ebx], ax
add dword ptr [_Lt_017B], 2
inc dword ptr [_Lt_017C]
jmp .L_0113
.L_0114:
mov eax, dword ptr [_Lt_017C]
mov dword ptr [ebp-4], eax
.L_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017D,4
.balign 4
	.lcomm	_Lt_017B,4
.balign 4
	.lcomm	_Lt_017C,4

.section .text
.balign 16
_HUTF32LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_011D:
push 8193
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
push ebx
push 0
push dword ptr [_ENV+300]
call _fb_FileGetWstr
add esp, 16
test eax, eax
jne .L_0120
push 0
push 4
push dword ptr [_ENV+300]
call _fb_FileTell
add esp, 4
mov ebx, dword ptr [_LEX+213384]
mov esi, dword ptr [ebx+12528]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call ___udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .L_011F
.L_0120:
mov dword ptr [ebp-4], 0
.L_011F:
.L_011E:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUTF32BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012D:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_017E], ebx
mov dword ptr [_Lt_017F], 0
.L_012F:
cmp dword ptr [_Lt_017F], 8192
jge .L_0130
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_0132
jmp .L_0130
.L_0132:
.L_0131:
push 4
push offset _Lt_0180
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_0134
jmp .L_0130
.L_0134:
.L_0133:
mov eax, dword ptr [_Lt_0180]
shr eax, 24
mov ebx, dword ptr [_Lt_0180]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0180]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0180]
shl ebx, 24
or eax, ebx
mov dword ptr [_Lt_0180], eax
cmp dword ptr [_Lt_0180], 255
jbe .L_0136
mov dword ptr [_Lt_0180], 63
.L_0136:
.L_0135:
mov al, byte ptr [_Lt_0180]
mov ebx, dword ptr [_Lt_017E]
mov byte ptr [ebx], al
inc dword ptr [_Lt_017E]
inc dword ptr [_Lt_017F]
jmp .L_012F
.L_0130:
mov eax, dword ptr [_Lt_017F]
mov dword ptr [ebp-4], eax
.L_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0180,4
.balign 4
	.lcomm	_Lt_017E,4
.balign 4
	.lcomm	_Lt_017F,4

.section .text
.balign 16
_HUTF32BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0137:
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0181], ebx
mov dword ptr [_Lt_0182], 0
.L_0139:
cmp dword ptr [_Lt_0182], 8192
jge .L_013A
push dword ptr [_ENV+300]
call _fb_FileEof
add esp, 4
test eax, eax
je .L_013C
jmp .L_013A
.L_013C:
.L_013B:
push 4
push offset _Lt_0183
push 0
push dword ptr [_ENV+300]
call _fb_FileGet
add esp, 16
test eax, eax
je .L_013E
jmp .L_013A
.L_013E:
.L_013D:
mov eax, dword ptr [_Lt_0183]
shr eax, 24
mov ebx, dword ptr [_Lt_0183]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0183]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0183]
shl ebx, 24
or eax, ebx
mov dword ptr [_Lt_0183], eax
cmp dword ptr [_Lt_0183], 65535
jbe .L_0140
cmp dword ptr [_Lt_0182], 8191
jge .L_0142
mov eax, dword ptr [_Lt_0183]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [_Lt_0181]
mov word ptr [ebx], ax
add dword ptr [_Lt_0181], 2
inc dword ptr [_Lt_0182]
.L_0142:
.L_0141:
mov eax, dword ptr [_Lt_0183]
and eax, 1023
add eax, 56320
mov dword ptr [_Lt_0183], eax
.L_0140:
.L_013F:
mov ax, word ptr [_Lt_0183]
mov ebx, dword ptr [_Lt_0181]
mov word ptr [ebx], ax
add dword ptr [_Lt_0181], 2
inc dword ptr [_Lt_0182]
jmp .L_0139
.L_013A:
mov eax, dword ptr [_Lt_0182]
mov dword ptr [ebp-4], eax
.L_0138:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0183,4
.balign 4
	.lcomm	_Lt_0181,4
.balign 4
	.lcomm	_Lt_0182,4

.section .text
.balign 16
_HUTF32BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0143:
call _HUTF32LETOUTF32LE
mov dword ptr [_Lt_0184], eax
mov eax, dword ptr [_LEX+213384]
lea ebx, [eax+4332]
mov dword ptr [_Lt_0185], ebx
mov dword ptr [_Lt_0186], 1
mov ebx, dword ptr [_Lt_0184]
mov dword ptr [ebp-8], ebx
jmp .L_0146
.L_0149:
mov ebx, dword ptr [_Lt_0185]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_0187], eax
mov eax, dword ptr [_Lt_0187]
shr eax, 24
mov ebx, dword ptr [_Lt_0187]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0187]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0187]
shl ebx, 24
or eax, ebx
mov ebx, dword ptr [_Lt_0185]
mov dword ptr [ebx], eax
add dword ptr [_Lt_0185], 4
.L_0147:
inc dword ptr [_Lt_0186]
.L_0146:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0186], eax
jle .L_0149
.L_0148:
mov eax, dword ptr [_Lt_0184]
mov dword ptr [ebp-4], eax
.L_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0185,4
.balign 4
	.lcomm	_Lt_0187,4
.balign 4
	.lcomm	_Lt_0186,4
.balign 4
	.lcomm	_Lt_0184,4
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.section .data
.balign 4
_UTF8_TRAILINGTB:
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 4
.byte 4
.byte 4
.byte 4
.byte 5
.byte 5
.byte 5
.byte 5
.balign 4
_UTF8_OFFSETSTB:
.int 0
.int 12416
.int 925824
.int 63447168
.int 4194836608
.int 2181570688

.section .ctors
.int _fb_ctor__lexzutf
