	.intel_syntax noprefix

.section .text
.balign 16

.globl LEXREADUTF8
LEXREADUTF8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00A5:
mov dword ptr [ebp-4], 0
jmp .L_00A8
call HUTF8TOCHAR
mov dword ptr [ebp-4], eax
jmp .L_00A7
.L_00A8:
jmp .L_00A9
call HUTF8TOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_00A7
.L_00A9:
call HUTF8TOUTF32LE
mov dword ptr [ebp-4], eax
.L_00A7:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16612], ebx
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], eax
.L_00A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXREADUTF16LE
LEXREADUTF16LE:
push ebx
.L_00D3:
jmp .L_00D6
call HUTF16LETOCHAR
mov dword ptr [Lt_00D8], eax
jmp .L_00D5
.L_00D6:
jmp .L_00D7
call HUTF16LETOUTF16LE
mov dword ptr [Lt_00D8], eax
jmp .L_00D5
.L_00D7:
call HUTF16LETOUTF32LE
mov dword ptr [Lt_00D8], eax
.L_00D5:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [Lt_00D8]
mov dword ptr [eax+16612], ebx
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], eax
.L_00D4:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	Lt_00D8,4

.section .text
.balign 16

.globl LEXREADUTF16BE
LEXREADUTF16BE:
push ebx
.L_0100:
jmp .L_0103
call HUTF16BETOCHAR
mov dword ptr [Lt_0105], eax
jmp .L_0102
.L_0103:
jmp .L_0104
call HUTF16BETOUTF16LE
mov dword ptr [Lt_0105], eax
jmp .L_0102
.L_0104:
call HUTF16BETOUTF32LE
mov dword ptr [Lt_0105], eax
.L_0102:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [Lt_0105]
mov dword ptr [eax+16612], ebx
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], eax
.L_0101:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	Lt_0105,4

.section .text
.balign 16

.globl LEXREADUTF32LE
LEXREADUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0127:
mov dword ptr [ebp-4], 0
jmp .L_012A
call HUTF32LETOCHAR
mov dword ptr [ebp-4], eax
jmp .L_0129
.L_012A:
jmp .L_012B
call HUTF32LETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_0129
.L_012B:
call HUTF32LETOUTF32LE
mov dword ptr [ebp-4], eax
.L_0129:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16612], ebx
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], eax
.L_0128:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXREADUTF32BE
LEXREADUTF32BE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_014B:
mov dword ptr [ebp-4], 0
jmp .L_014E
call HUTF32BETOCHAR
mov dword ptr [ebp-4], eax
jmp .L_014D
.L_014E:
jmp .L_014F
call HUTF32BETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .L_014D
.L_014F:
call HUTF32BETOUTF32LE
mov dword ptr [ebp-4], eax
.L_014D:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16612], ebx
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], eax
.L_014C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__lexzutf:
.L_0002:
.L_0003:
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
HUTF8TOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0150], ebx
mov dword ptr [Lt_0151], 0
.L_006A:
cmp dword ptr [Lt_0151], 8192
jge .L_006B
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_006D
jmp .L_006B
.L_006D:
.L_006C:
push 1
push offset Lt_0152
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_006F
jmp .L_006B
.L_006F:
.L_006E:
movzx eax, byte ptr [Lt_0152]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_0153], ebx
mov dword ptr [Lt_0154], 0
mov ebx, offset Lt_0152
mov dword ptr [Lt_0155], ebx
cmp dword ptr [Lt_0153], 0
jle .L_0071
push dword ptr [Lt_0153]
push offset Lt_0152 + 1
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0073
jmp .L_006B
.L_0073:
.L_0072:
mov eax, dword ptr [Lt_0153]
mov dword ptr [Lt_0156], eax
.L_0074:
mov eax, dword ptr [Lt_0155]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_0154], ebx
inc dword ptr [Lt_0155]
shl dword ptr [Lt_0154], 6
dec dword ptr [Lt_0156]
.L_0076:
cmp dword ptr [Lt_0156], 0
jg .L_0074
.L_0075:
.L_0071:
.L_0070:
mov ebx, dword ptr [Lt_0155]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_0154], eax
mov eax, dword ptr [Lt_0153]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_0154], ebx
cmp dword ptr [Lt_0154], 255
jbe .L_0078
mov dword ptr [Lt_0154], 63
.L_0078:
.L_0077:
mov bl, byte ptr [Lt_0154]
mov eax, dword ptr [Lt_0150]
mov byte ptr [eax], bl
inc dword ptr [Lt_0150]
inc dword ptr [Lt_0151]
jmp .L_006A
.L_006B:
mov ebx, dword ptr [Lt_0151]
mov dword ptr [ebp-4], ebx
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0152,7
.balign 4
	.lcomm	Lt_0155,4
.balign 4
	.lcomm	Lt_0154,4
.balign 4
	.lcomm	Lt_0150,4
.balign 4
	.lcomm	Lt_0151,4
.balign 4
	.lcomm	Lt_0153,4
.balign 4
	.lcomm	Lt_0156,4

.section .text
.balign 16
HUTF8TOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0157], ebx
mov dword ptr [Lt_0158], 0
.L_007D:
cmp dword ptr [Lt_0158], 8192
jge .L_007E
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_0080
jmp .L_007E
.L_0080:
.L_007F:
push 1
push offset Lt_0159
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0082
jmp .L_007E
.L_0082:
.L_0081:
movzx eax, byte ptr [Lt_0159]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_015A], ebx
mov dword ptr [Lt_015B], 0
mov ebx, offset Lt_0159
mov dword ptr [Lt_015C], ebx
cmp dword ptr [Lt_015A], 0
jle .L_0084
push dword ptr [Lt_015A]
push offset Lt_0159 + 1
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0086
jmp .L_007E
.L_0086:
.L_0085:
mov eax, dword ptr [Lt_015A]
mov dword ptr [Lt_015D], eax
.L_0087:
mov eax, dword ptr [Lt_015C]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_015B], ebx
inc dword ptr [Lt_015C]
shl dword ptr [Lt_015B], 6
dec dword ptr [Lt_015D]
.L_0089:
cmp dword ptr [Lt_015D], 0
jg .L_0087
.L_0088:
.L_0084:
.L_0083:
mov ebx, dword ptr [Lt_015C]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_015B], eax
mov eax, dword ptr [Lt_015A]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_015B], ebx
cmp dword ptr [Lt_015B], 65535
jbe .L_008B
cmp dword ptr [Lt_0158], 8191
jge .L_008D
mov ebx, dword ptr [Lt_015B]
shr ebx, 10
add ebx, 55296
mov eax, dword ptr [Lt_0157]
mov word ptr [eax], bx
add dword ptr [Lt_0157], 2
inc dword ptr [Lt_0158]
.L_008D:
.L_008C:
mov ebx, dword ptr [Lt_015B]
and ebx, 1023
add ebx, 56320
mov dword ptr [Lt_015B], ebx
.L_008B:
.L_008A:
mov bx, word ptr [Lt_015B]
mov eax, dword ptr [Lt_0157]
mov word ptr [eax], bx
add dword ptr [Lt_0157], 2
inc dword ptr [Lt_0158]
jmp .L_007D
.L_007E:
mov ebx, dword ptr [Lt_0158]
mov dword ptr [ebp-4], ebx
.L_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0159,7
.balign 4
	.lcomm	Lt_015C,4
.balign 4
	.lcomm	Lt_015B,4
.balign 4
	.lcomm	Lt_0157,4
.balign 4
	.lcomm	Lt_0158,4
.balign 4
	.lcomm	Lt_015A,4
.balign 4
	.lcomm	Lt_015D,4

.section .text
.balign 16
HUTF8TOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_008E:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_015E], ebx
mov dword ptr [Lt_015F], 0
.L_0091:
cmp dword ptr [Lt_015F], 8192
jge .L_0092
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_0094
jmp .L_0092
.L_0094:
.L_0093:
push 1
push offset Lt_0160
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0096
jmp .L_0092
.L_0096:
.L_0095:
movzx eax, byte ptr [Lt_0160]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_0161], ebx
mov dword ptr [Lt_0162], 0
mov ebx, offset Lt_0160
mov dword ptr [Lt_0163], ebx
cmp dword ptr [Lt_0161], 0
jle .L_0098
push dword ptr [Lt_0161]
push offset Lt_0160 + 1
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_009A
jmp .L_0092
.L_009A:
.L_0099:
mov eax, dword ptr [Lt_0161]
mov dword ptr [Lt_0164], eax
.L_009B:
mov eax, dword ptr [Lt_0163]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_0162], ebx
inc dword ptr [Lt_0163]
shl dword ptr [Lt_0162], 6
dec dword ptr [Lt_0164]
.L_009D:
cmp dword ptr [Lt_0164], 0
jg .L_009B
.L_009C:
.L_0098:
.L_0097:
mov ebx, dword ptr [Lt_0163]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_0162], eax
mov eax, dword ptr [Lt_0161]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_0162], ebx
mov ebx, dword ptr [Lt_015E]
mov eax, dword ptr [Lt_0162]
mov dword ptr [ebx], eax
add dword ptr [Lt_015E], 4
inc dword ptr [Lt_015F]
jmp .L_0091
.L_0092:
mov eax, dword ptr [Lt_015F]
mov dword ptr [ebp-4], eax
.L_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0160,7
.balign 4
	.lcomm	Lt_0163,4
.balign 4
	.lcomm	Lt_0162,4
.balign 4
	.lcomm	Lt_015E,4
.balign 4
	.lcomm	Lt_015F,4
.balign 4
	.lcomm	Lt_0161,4
.balign 4
	.lcomm	Lt_0164,4

.section .text
.balign 16
HUTF16LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00AA:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0165], ebx
mov dword ptr [Lt_0166], 0
.L_00AC:
cmp dword ptr [Lt_0166], 8192
jge .L_00AD
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_00AF
jmp .L_00AD
.L_00AF:
.L_00AE:
push 2
push offset Lt_0167
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00B1
jmp .L_00AD
.L_00B1:
.L_00B0:
movzx eax, word ptr [Lt_0167]
cmp eax, 255
jle .L_00B3
movzx eax, word ptr [Lt_0167]
cmp eax, 55296
jl .L_00B5
movzx eax, word ptr [Lt_0167]
cmp eax, 56319
jg .L_00B7
push 2
push offset Lt_0167
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00B9
jmp .L_00AD
.L_00B9:
.L_00B8:
.L_00B7:
.L_00B6:
.L_00B5:
.L_00B4:
mov word ptr [Lt_0167], 63
.L_00B3:
.L_00B2:
mov al, byte ptr [Lt_0167]
mov ebx, dword ptr [Lt_0165]
mov byte ptr [ebx], al
inc dword ptr [Lt_0165]
inc dword ptr [Lt_0166]
jmp .L_00AC
.L_00AD:
mov eax, dword ptr [Lt_0166]
mov dword ptr [ebp-4], eax
.L_00AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0167,2
.balign 4
	.lcomm	Lt_0165,4
.balign 4
	.lcomm	Lt_0166,4

.section .text
.balign 16
HUTF16LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_00BA:
push 8193
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
push ebx
push 0
push dword ptr [ENV+300]
call fb_FileGetWstr
add esp, 16
test eax, eax
jne .L_00BD
push 0
push 2
push dword ptr [ENV+300]
call fb_FileTell
add esp, 4
mov ebx, dword ptr [LEX+840072]
mov esi, dword ptr [ebx+49392]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call __udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .L_00BC
.L_00BD:
mov dword ptr [ebp-4], 0
.L_00BC:
.L_00BB:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUTF16LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00BE:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0168], ebx
mov dword ptr [Lt_0169], 0
.L_00C0:
cmp dword ptr [Lt_0169], 8192
jge .L_00C1
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_00C3
jmp .L_00C1
.L_00C3:
.L_00C2:
push 2
push offset Lt_016A
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00C5
jmp .L_00C1
.L_00C5:
.L_00C4:
movzx eax, word ptr [Lt_016A]
mov dword ptr [Lt_016B], eax
cmp dword ptr [Lt_016B], 55296
jb .L_00C7
cmp dword ptr [Lt_016B], 56319
ja .L_00C9
push 2
push offset Lt_016A
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00CB
jmp .L_00C1
.L_00CB:
.L_00CA:
mov eax, dword ptr [Lt_016B]
add eax, 4294912000
shl eax, 10
movzx ebx, word ptr [Lt_016A]
add eax, ebx
add eax, 9216
mov dword ptr [Lt_016B], eax
.L_00C9:
.L_00C8:
.L_00C7:
.L_00C6:
mov eax, dword ptr [Lt_0168]
mov ebx, dword ptr [Lt_016B]
mov dword ptr [eax], ebx
add dword ptr [Lt_0168], 4
inc dword ptr [Lt_0169]
jmp .L_00C0
.L_00C1:
mov ebx, dword ptr [Lt_0169]
mov dword ptr [ebp-4], ebx
.L_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_016A,2
.balign 4
	.lcomm	Lt_016B,4
.balign 4
	.lcomm	Lt_0168,4
.balign 4
	.lcomm	Lt_0169,4

.section .text
.balign 16
HUTF16BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00D9:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_016C], ebx
mov dword ptr [Lt_016D], 0
.L_00DB:
cmp dword ptr [Lt_016D], 8192
jge .L_00DC
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_00DE
jmp .L_00DC
.L_00DE:
.L_00DD:
push 2
push offset Lt_016E
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00E0
jmp .L_00DC
.L_00E0:
.L_00DF:
movzx eax, word ptr [Lt_016E]
sar eax, 8
movzx ebx, word ptr [Lt_016E]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov word ptr [Lt_016E], ax
movzx eax, word ptr [Lt_016E]
cmp eax, 255
jle .L_00E2
movzx eax, word ptr [Lt_016E]
cmp eax, 55296
jl .L_00E4
movzx eax, word ptr [Lt_016E]
cmp eax, 56319
jg .L_00E6
push 2
push offset Lt_016E
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00E8
jmp .L_00DC
.L_00E8:
.L_00E7:
.L_00E6:
.L_00E5:
.L_00E4:
.L_00E3:
mov word ptr [Lt_016E], 63
.L_00E2:
.L_00E1:
mov al, byte ptr [Lt_016E]
mov ebx, dword ptr [Lt_016C]
mov byte ptr [ebx], al
inc dword ptr [Lt_016C]
inc dword ptr [Lt_016D]
jmp .L_00DB
.L_00DC:
mov eax, dword ptr [Lt_016D]
mov dword ptr [ebp-4], eax
.L_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_016E,2
.balign 4
	.lcomm	Lt_016C,4
.balign 4
	.lcomm	Lt_016D,4

.section .text
.balign 16
HUTF16BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00E9:
call HUTF16LETOUTF16LE
mov dword ptr [Lt_016F], eax
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0170], ebx
mov dword ptr [Lt_0171], 1
mov ebx, dword ptr [Lt_016F]
mov dword ptr [ebp-8], ebx
jmp .L_00EC
.L_00EF:
mov ebx, dword ptr [Lt_0170]
mov ax, word ptr [ebx]
mov word ptr [Lt_0172], ax
movzx eax, word ptr [Lt_0172]
sar eax, 8
movzx ebx, word ptr [Lt_0172]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0170]
mov word ptr [ebx], ax
add dword ptr [Lt_0170], 2
.L_00ED:
inc dword ptr [Lt_0171]
.L_00EC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0171], eax
jle .L_00EF
.L_00EE:
mov eax, dword ptr [Lt_016F]
mov dword ptr [ebp-4], eax
.L_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0170,4
.balign 4
	.lcomm	Lt_0172,2
.balign 4
	.lcomm	Lt_0171,4
.balign 4
	.lcomm	Lt_016F,4

.section .text
.balign 16
HUTF16BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00F0:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0173], ebx
mov dword ptr [Lt_0174], 0
.L_00F2:
cmp dword ptr [Lt_0174], 8192
jge .L_00F3
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_00F5
jmp .L_00F3
.L_00F5:
.L_00F4:
push 2
push offset Lt_0175
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00F7
jmp .L_00F3
.L_00F7:
.L_00F6:
movzx eax, word ptr [Lt_0175]
sar eax, 8
movzx ebx, word ptr [Lt_0175]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ecx, eax
mov dword ptr [Lt_0176], ecx
cmp dword ptr [Lt_0176], 55296
jb .L_00F9
cmp dword ptr [Lt_0176], 56319
ja .L_00FB
push 2
push offset Lt_0175
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_00FD
jmp .L_00F3
.L_00FD:
.L_00FC:
mov eax, dword ptr [Lt_0176]
add eax, 4294912000
shl eax, 10
movzx ecx, word ptr [Lt_0175]
sar ecx, 8
movzx ebx, word ptr [Lt_0175]
sal ebx, 8
and ebx, 65280
or ecx, ebx
mov esi, ecx
add eax, esi
add eax, 9216
mov dword ptr [Lt_0176], eax
.L_00FB:
.L_00FA:
.L_00F9:
.L_00F8:
mov eax, dword ptr [Lt_0173]
mov esi, dword ptr [Lt_0176]
mov dword ptr [eax], esi
add dword ptr [Lt_0173], 4
inc dword ptr [Lt_0174]
jmp .L_00F2
.L_00F3:
mov esi, dword ptr [Lt_0174]
mov dword ptr [ebp-4], esi
.L_00F1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0175,2
.balign 4
	.lcomm	Lt_0176,4
.balign 4
	.lcomm	Lt_0173,4
.balign 4
	.lcomm	Lt_0174,4

.section .text
.balign 16
HUTF32LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0106:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0177], ebx
mov dword ptr [Lt_0178], 0
.L_0108:
cmp dword ptr [Lt_0178], 8192
jge .L_0109
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_010B
jmp .L_0109
.L_010B:
.L_010A:
push 4
push offset Lt_0179
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_010D
jmp .L_0109
.L_010D:
.L_010C:
cmp dword ptr [Lt_0179], 255
jbe .L_010F
mov dword ptr [Lt_0179], 63
.L_010F:
.L_010E:
mov al, byte ptr [Lt_0179]
mov ebx, dword ptr [Lt_0177]
mov byte ptr [ebx], al
inc dword ptr [Lt_0177]
inc dword ptr [Lt_0178]
jmp .L_0108
.L_0109:
mov eax, dword ptr [Lt_0178]
mov dword ptr [ebp-4], eax
.L_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0179,4
.balign 4
	.lcomm	Lt_0177,4
.balign 4
	.lcomm	Lt_0178,4

.section .text
.balign 16
HUTF32LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0110:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_017A], ebx
mov dword ptr [Lt_017B], 0
.L_0112:
cmp dword ptr [Lt_017B], 8192
jge .L_0113
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_0115
jmp .L_0113
.L_0115:
.L_0114:
push 4
push offset Lt_017C
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0117
jmp .L_0113
.L_0117:
.L_0116:
cmp dword ptr [Lt_017C], 65535
jbe .L_0119
cmp dword ptr [Lt_017B], 8191
jge .L_011B
mov eax, dword ptr [Lt_017C]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [Lt_017A]
mov word ptr [ebx], ax
add dword ptr [Lt_017A], 2
inc dword ptr [Lt_017B]
.L_011B:
.L_011A:
mov eax, dword ptr [Lt_017C]
and eax, 1023
add eax, 56320
mov dword ptr [Lt_017C], eax
.L_0119:
.L_0118:
mov ax, word ptr [Lt_017C]
mov ebx, dword ptr [Lt_017A]
mov word ptr [ebx], ax
add dword ptr [Lt_017A], 2
inc dword ptr [Lt_017B]
jmp .L_0112
.L_0113:
mov eax, dword ptr [Lt_017B]
mov dword ptr [ebp-4], eax
.L_0111:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_017C,4
.balign 4
	.lcomm	Lt_017A,4
.balign 4
	.lcomm	Lt_017B,4

.section .text
.balign 16
HUTF32LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.L_011C:
push 8193
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
push ebx
push 0
push dword ptr [ENV+300]
call fb_FileGetWstr
add esp, 16
test eax, eax
jne .L_011F
push 0
push 4
push dword ptr [ENV+300]
call fb_FileTell
add esp, 4
mov ebx, dword ptr [LEX+840072]
mov esi, dword ptr [ebx+49392]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call __udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .L_011E
.L_011F:
mov dword ptr [ebp-4], 0
.L_011E:
.L_011D:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUTF32BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_012C:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_017D], ebx
mov dword ptr [Lt_017E], 0
.L_012E:
cmp dword ptr [Lt_017E], 8192
jge .L_012F
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_0131
jmp .L_012F
.L_0131:
.L_0130:
push 4
push offset Lt_017F
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_0133
jmp .L_012F
.L_0133:
.L_0132:
mov eax, dword ptr [Lt_017F]
shr eax, 24
mov ebx, dword ptr [Lt_017F]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_017F]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_017F]
shl ebx, 24
or eax, ebx
mov dword ptr [Lt_017F], eax
cmp dword ptr [Lt_017F], 255
jbe .L_0135
mov dword ptr [Lt_017F], 63
.L_0135:
.L_0134:
mov al, byte ptr [Lt_017F]
mov ebx, dword ptr [Lt_017D]
mov byte ptr [ebx], al
inc dword ptr [Lt_017D]
inc dword ptr [Lt_017E]
jmp .L_012E
.L_012F:
mov eax, dword ptr [Lt_017E]
mov dword ptr [ebp-4], eax
.L_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_017F,4
.balign 4
	.lcomm	Lt_017D,4
.balign 4
	.lcomm	Lt_017E,4

.section .text
.balign 16
HUTF32BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0136:
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0180], ebx
mov dword ptr [Lt_0181], 0
.L_0138:
cmp dword ptr [Lt_0181], 8192
jge .L_0139
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
je .L_013B
jmp .L_0139
.L_013B:
.L_013A:
push 4
push offset Lt_0182
push 0
push dword ptr [ENV+300]
call fb_FileGet
add esp, 16
test eax, eax
je .L_013D
jmp .L_0139
.L_013D:
.L_013C:
mov eax, dword ptr [Lt_0182]
shr eax, 24
mov ebx, dword ptr [Lt_0182]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_0182]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0182]
shl ebx, 24
or eax, ebx
mov dword ptr [Lt_0182], eax
cmp dword ptr [Lt_0182], 65535
jbe .L_013F
cmp dword ptr [Lt_0181], 8191
jge .L_0141
mov eax, dword ptr [Lt_0182]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [Lt_0180]
mov word ptr [ebx], ax
add dword ptr [Lt_0180], 2
inc dword ptr [Lt_0181]
.L_0141:
.L_0140:
mov eax, dword ptr [Lt_0182]
and eax, 1023
add eax, 56320
mov dword ptr [Lt_0182], eax
.L_013F:
.L_013E:
mov ax, word ptr [Lt_0182]
mov ebx, dword ptr [Lt_0180]
mov word ptr [ebx], ax
add dword ptr [Lt_0180], 2
inc dword ptr [Lt_0181]
jmp .L_0138
.L_0139:
mov eax, dword ptr [Lt_0181]
mov dword ptr [ebp-4], eax
.L_0137:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0182,4
.balign 4
	.lcomm	Lt_0180,4
.balign 4
	.lcomm	Lt_0181,4

.section .text
.balign 16
HUTF32BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_0142:
call HUTF32LETOUTF32LE
mov dword ptr [Lt_0183], eax
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16620]
mov dword ptr [Lt_0184], ebx
mov dword ptr [Lt_0185], 1
mov ebx, dword ptr [Lt_0183]
mov dword ptr [ebp-8], ebx
jmp .L_0145
.L_0148:
mov ebx, dword ptr [Lt_0184]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_0186], eax
mov eax, dword ptr [Lt_0186]
shr eax, 24
mov ebx, dword ptr [Lt_0186]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_0186]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0186]
shl ebx, 24
or eax, ebx
mov ebx, dword ptr [Lt_0184]
mov dword ptr [ebx], eax
add dword ptr [Lt_0184], 4
.L_0146:
inc dword ptr [Lt_0185]
.L_0145:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0185], eax
jle .L_0148
.L_0147:
mov eax, dword ptr [Lt_0183]
mov dword ptr [ebp-4], eax
.L_0143:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0184,4
.balign 4
	.lcomm	Lt_0186,4
.balign 4
	.lcomm	Lt_0185,4
.balign 4
	.lcomm	Lt_0183,4
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
UTF8_TRAILINGTB:
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
UTF8_OFFSETSTB:
.int 0
.int 12416
.int 925824
.int 63447168
.int 4194836608
.int 2181570688

.section .ctors
.int fb_ctor__lexzutf
