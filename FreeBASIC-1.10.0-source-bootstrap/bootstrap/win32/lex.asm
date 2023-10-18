	.intel_syntax noprefix

.section .text
.balign 16

.globl _LEXPUSHCTX@0
_LEXPUSHCTX@0:
.L_0067:
add dword ptr [_LEX+422280], 24840
.L_0068:
ret
.balign 16

.globl _LEXPOPCTX@0
_LEXPOPCTX@0:
push ebx
.L_0069:
cmp dword ptr [_ENV+900], 0
jne .L_006C
push 0
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRALLOCATE@8
.L_006C:
.L_006B:
cmp dword ptr [_ENV+576], 0
jne .L_006E
push 0
mov ebx, dword ptr [_LEX+422280]
lea eax, [ebx+8408]
push eax
call _DZSTRALLOCATE@8
jmp .L_006D
.L_006E:
push 0
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+8408]
push ebx
call _DWSTRALLOCATE@8
.L_006D:
add dword ptr [_LEX+422280], -24840
.L_006A:
pop ebx
ret
.balign 16

.globl _LEXINIT@8
_LEXINIT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_006F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+900]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_0072
lea ebx, [_LEX]
mov dword ptr [_LEX+422280], ebx
.L_0072:
.L_0071:
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8352], 0
mov ebx, dword ptr [_LEX+422280]
lea eax, [ebx]
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8356], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8356]
mov dword ptr [ebx+8360], ecx
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [ecx+8356]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0076:
mov ebx, dword ptr [ebp-4]
imul ebx, 2088
mov ecx, dword ptr [_LEX+422280]
add ecx, ebx
lea ebx, [ecx+2088]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+2084], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [ebp-8], ecx
.L_0074:
inc dword ptr [ebp-4]
.L_0073:
cmp dword ptr [ebp-4], 2
jle .L_0076
.L_0075:
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8356]
mov dword ptr [ebx+2084], eax
mov dword ptr [ebp-4], 0
.L_007A:
mov eax, dword ptr [ebp-4]
imul eax, 2088
mov ebx, dword ptr [_LEX+422280]
add ebx, eax
mov dword ptr [ebx], -1
.L_0078:
inc dword ptr [ebp-4]
.L_0077:
cmp dword ptr [ebp-4], 3
jle .L_007A
.L_0079:
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8364], 4294967295
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8368], 4294967295
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8372], 4294967295
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8396], eax
cmp dword ptr [ebp+12], 0
je .L_007C
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax-16464]
mov dword ptr [ebx+8376], ecx
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ecx-16456]
mov dword ptr [ebx+8384], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax-16452]
mov dword ptr [ebx+8388], ecx
jmp .L_007B
.L_007C:
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8376], 1
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8384], 0
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8388], 0
.L_007B:
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8380], -1
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8420], 0
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8400], 0
cmp dword ptr [_ENV+576], 0
jne .L_007E
cmp dword ptr [ebp+12], 0
je .L_007F
mov ecx, dword ptr [_LEX+422280]
lea ebx, [ecx+8428]
mov dword ptr [ebp-12], ebx
jmp .L_0087
.L_007F:
mov dword ptr [ebp-12], 0
.L_0087:
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+8424], ecx
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8404], 0
push 0
mov ecx, dword ptr [_LEX+422280]
lea ebx, [ecx+8408]
push ebx
call _DZSTRALLOCATE@8
jmp .L_007D
.L_007E:
mov ebx, dword ptr [_LEX+422280]
lea ecx, [ebx+8428]
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8424], ecx
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8404], 0
push 0
mov ecx, dword ptr [_LEX+422280]
lea ebx, [ecx+8408]
push ebx
call _DWSTRALLOCATE@8
.L_007D:
cmp dword ptr [ebp+12], 0
je .L_0082
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx-24]
mov dword ptr [ecx+24816], eax
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax-20]
mov dword ptr [ecx+24820], ebx
jmp .L_0081
.L_0082:
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+24816], 0
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+24820], 0
.L_0081:
mov ebx, dword ptr [_ENV+900]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_0084
push 0
mov ecx, dword ptr [_LEX+422280]
lea ebx, [ecx+24824]
push ebx
call _DZSTRALLOCATE@8
mov dword ptr [_LEX+422284], 0
.L_0084:
.L_0083:
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+24836], 0
mov ebx, dword ptr [ebp+8]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .L_0086
call _PPINIT@0
.L_0086:
.L_0085:
.L_0070:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXEND@0
_LEXEND@0:
.L_008E:
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
call _PPEND@0
.L_008F:
ret
.balign 16

.globl _LEXEATCHAR@0
_LEXEATCHAR@0:
push ebx
.L_00C5:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8368], 4294967295
jne .L_00C8
call _HSKIPCHAR@0
mov eax, dword ptr [_LEX+422280]
mov dword ptr [eax+8364], 4294967295
jmp .L_00C7
.L_00C8:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8372], 4294967295
jne .L_00C9
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8368]
mov dword ptr [ebx+8364], ecx
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8368], 4294967295
jmp .L_00C7
.L_00C9:
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ecx+8368]
mov dword ptr [ebx+8364], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8372]
mov dword ptr [ebx+8368], ecx
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8372], 4294967295
.L_00C7:
.L_00C6:
pop ebx
ret
.balign 16

.globl _LEXEATWHITESPACE@0
_LEXEATWHITESPACE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00CA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8364], 4294967295
jne .L_00CD
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8364], eax
.L_00CD:
.L_00CC:
.L_00CE:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8364], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8364], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00CF
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+24836], -1
call _LEXEATCHAR@0
call _HREADCHAR@0
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+8364], eax
mov dword ptr [ebp-4], -1
jmp .L_00CE
.L_00CF:
.L_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXCURRENTCHAR@0
_LEXCURRENTCHAR@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DD:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8364], 4294967295
jne .L_00E0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8364], eax
.L_00E0:
.L_00DF:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8364]
mov dword ptr [ebp-4], ebx
.L_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXGETLOOKAHEADCHAR@0
_LEXGETLOOKAHEADCHAR@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E1:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8368], 4294967295
jne .L_00E4
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8368], eax
.L_00E4:
.L_00E3:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8368]
mov dword ptr [ebp-4], ebx
.L_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXGETLOOKAHEADCHAR2@0
_LEXGETLOOKAHEADCHAR2@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E5:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8372], 4294967295
jne .L_00E8
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422280]
mov dword ptr [ebx+8372], eax
.L_00E8:
.L_00E7:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ebp-4], ebx
.L_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXNEXTTOKEN@8
_LEXNEXTTOKEN@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_02CF:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24836]
mov dword ptr [ebx+2080], ecx
mov ecx, dword ptr [_LEX+422280]
mov dword ptr [ecx+24836], 0
.L_02D1:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2064], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], 0
mov dword ptr [ebp-8], 0
.L_02D2:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .L_02D6
.L_02D8:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
jmp .L_02D0
jmp .L_02D5
.L_02D9:
cmp dword ptr [ebp-8], 0
je .L_02DB
call _LEXEATCHAR@0
jmp .L_02D4
.L_02DB:
.L_02DA:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_02DD
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-20], eax
jmp .L_02DF
.L_02E1:
jmp .L_02D3
jmp .L_02DE
.L_02E2:
call _LEXGETLOOKAHEADCHAR2@0
cmp eax, 35
jne .L_02E4
jmp .L_02D3
.L_02E4:
.L_02E3:
jmp .L_02DE
.L_02DF:
mov eax, dword ptr [ebp-20]
add eax, 4294967261
cmp eax, 87
ja .L_02DE
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_02E5+eax*4-140]
_.L_02E5:
.int .L_02E2
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02DE
.int .L_02E1
.int .L_02DE
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.int .L_02E1
.L_02DE:
call _LEXEATCHAR@0
mov dword ptr [ebp-8], -1
jmp .L_02D4
jmp .L_02DC
.L_02DD:
jmp .L_02D3
.L_02DC:
jmp .L_02D5
.L_02E6:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 13
jne .L_02E8
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_02EA
call _LEXEATCHAR@0
.L_02EA:
.L_02E9:
.L_02E8:
.L_02E7:
cmp dword ptr [ebp-8], 0
jne .L_02EC
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .L_02D0
jmp .L_02EB
.L_02EC:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jne .L_02EE
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8376]
.L_02EE:
.L_02ED:
mov dword ptr [ebp-8], 0
jmp .L_02D4
.L_02EB:
jmp .L_02D5
.L_02EF:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
cmp dword ptr [ebp-8], 0
jne .L_02F1
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_02F3
jmp .L_02D3
.L_02F3:
.L_02F2:
.L_02F1:
.L_02F0:
call _LEXEATCHAR@0
jmp .L_02D5
.L_02F4:
cmp dword ptr [ebp-8], 0
jne .L_02F6
jmp .L_02D3
.L_02F6:
.L_02F5:
call _LEXEATCHAR@0
jmp .L_02D5
.L_02D6:
cmp dword ptr [ebp-16], 95
ja .L_02F4
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_02F7+eax*4]
_.L_02F7:
.int .L_02D8
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02EF
.int .L_02E6
.int .L_02F4
.int .L_02F4
.int .L_02E6
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02EF
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02F4
.int .L_02D9
.L_02D5:
.L_02D4:
jmp .L_02D2
.L_02D3:
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [_LEX+422280]
mov ebx, dword ptr [_LEX+422280]
lea esi, [ebx+8428]
mov ebx, dword ptr [ecx+8424]
sub ebx, esi
add ebx, dword ptr [eax+24816]
dec ebx
mov eax, dword ptr [_LEX+422280]
mov dword ptr [eax+24820], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .L_02F9
.L_02FB:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .L_02FD
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 48
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 57
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .L_02FF
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_02F8
.L_02FF:
.L_02FE:
.L_02FD:
.L_02FC:
jmp .L_0300
jmp .L_02F8
.L_0301:
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .L_0305
.L_0306:
cmp dword ptr [ebp-20], 104
je .L_0305
.L_0307:
cmp dword ptr [ebp-20], 79
je .L_0305
.L_0308:
cmp dword ptr [ebp-20], 111
je .L_0305
.L_0309:
cmp dword ptr [ebp-20], 66
je .L_0305
.L_030A:
cmp dword ptr [ebp-20], 98
je .L_0305
.L_030B:
cmp dword ptr [ebp-20], 48
jb .L_0304
cmp dword ptr [ebp-20], 55
ja .L_0304
.L_0305:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_0302
.L_0304:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+2064], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call _LEXEATCHAR@0
.L_030C:
.L_0302:
jmp .L_02F8
.L_030D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .L_02F8
.L_030E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _READID@8
not eax
test eax, eax
je .L_0310
jmp .L_02D1
.L_0310:
.L_030F:
jmp .L_02F8
.L_0311:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [_ENV+1092], 0
je .L_0312
mov dword ptr [ebp-20], 263
jmp .L_0353
.L_0312:
mov dword ptr [ebp-20], 262
.L_0353:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+576], 0
jne .L_0315
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .L_0314
.L_0315:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call _HREADWSTR@12
.L_0314:
jmp .L_02F8
.L_0316:
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 34
je .L_0318
jmp .L_0300
.L_0318:
.L_0317:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .L_0319
mov dword ptr [ebp-20], 263
jmp .L_0354
.L_0319:
mov dword ptr [ebp-20], 264
.L_0354:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+576], 0
jne .L_031C
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_031E
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_031D
.L_031E:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.L_031D:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .L_031B
.L_031C:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_0320
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_031F
.L_0320:
mov ax, word ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov word ptr [esi+12], ax
mov eax, dword ptr [ebp+8]
lea esi, [eax+14]
mov dword ptr [ebp-24], esi
.L_031F:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADWSTR@12
.L_031B:
jmp .L_02F8
.L_0321:
.L_0300:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [esi], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2076], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 1
mov bl, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .L_0323
.L_0325:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .L_0327
.L_0328:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .L_032B
.L_032C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call _LEXEATCHAR@0
jmp .L_0329
.L_032B:
cmp dword ptr [ebp-24], 62
jne .L_032D
.L_032E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call _LEXEATCHAR@0
jmp .L_0329
.L_032D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.L_032F:
.L_0329:
jmp .L_0326
.L_0327:
cmp dword ptr [ebp-4], 62
jne .L_0330
.L_0331:
mov eax, dword ptr [_PARSER+152]
and eax, 512
test eax, eax
jne .L_0332
call _LEXCURRENTCHAR@0
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0355
.L_0332:
mov dword ptr [ebp-24], 0
.L_0355:
cmp dword ptr [ebp-24], 0
je .L_0335
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call _LEXEATCHAR@0
jmp .L_0334
.L_0335:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.L_0334:
jmp .L_0326
.L_0330:
cmp dword ptr [ebp-4], 61
jne .L_0336
.L_0337:
call _LEXCURRENTCHAR@0
cmp eax, 62
jne .L_0339
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call _LEXEATCHAR@0
jmp .L_0338
.L_0339:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.L_0338:
.L_0336:
.L_0326:
jmp .L_0322
.L_033A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .L_0322
.L_033B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
call _LEXCURRENTCHAR@0
cmp eax, 62
jne .L_033D
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 400
call _LEXEATCHAR@0
.L_033D:
.L_033C:
jmp .L_0322
.L_033E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .L_0340
call _LEXCURRENTCHAR@0
cmp eax, 39
jne .L_0342
call _HMULTILINECOMMENT@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
jmp .L_02D1
.L_0342:
.L_0341:
.L_0340:
.L_033F:
jmp .L_0322
.L_0343:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .L_0322
.L_0344:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .L_0322
.L_0345:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .L_0322
.L_0346:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.L_0347:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-24], eax
jmp .L_034B
.L_034D:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
jmp .L_034A
.L_034E:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 0
jmp .L_0348
jmp .L_034A
.L_034B:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .L_034E
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_034F+eax*4-36]
_.L_034F:
.int .L_034D
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034E
.int .L_034D
.L_034A:
.L_0349:
jmp .L_0347
.L_0348:
jmp .L_0322
.L_0350:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .L_0322
.L_0323:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .L_0350
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_0351+eax*4-36]
_.L_0351:
.int .L_0346
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0346
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0343
.int .L_0345
.int .L_0345
.int .L_033A
.int .L_033A
.int .L_0345
.int .L_033B
.int .L_0345
.int .L_033E
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0344
.int .L_0345
.int .L_0325
.int .L_0325
.int .L_0325
.int .L_0350
.int .L_033A
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0345
.int .L_033A
.int .L_0345
.int .L_033A
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0350
.int .L_0345
.int .L_0350
.int .L_0345
.L_0322:
jmp .L_02F8
.L_02F9:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .L_0321
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_0352+eax*4-132]
_.L_0352:
.int .L_0316
.int .L_0311
.int .L_0321
.int .L_0316
.int .L_0321
.int .L_0301
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_02FB
.int .L_0321
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_0321
.int .L_030E
.int .L_0321
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.int .L_030E
.L_02F8:
.L_02D0:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTOKEN@4
_LEXGETTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0374:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .L_0377
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422280]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.L_0377:
.L_0376:
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_0375:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETCLASS@4
_LEXGETCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0378:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .L_037B
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422280]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.L_037B:
.L_037A:
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_0379:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETLOOKAHEAD@8
_LEXGETLOOKAHEAD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_037C:
cmp dword ptr [ebp+8], 3
jle .L_037F
jmp .L_037D
.L_037F:
.L_037E:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .L_0381
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.L_0381:
.L_0380:
mov ecx, dword ptr [_LEX+422280]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .L_0383
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.L_0383:
.L_0382:
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.L_037D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETLOOKAHEADCLASS@8
_LEXGETLOOKAHEADCLASS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0384:
cmp dword ptr [ebp+8], 3
jle .L_0387
jmp .L_0385
.L_0387:
.L_0386:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .L_0389
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.L_0389:
.L_0388:
mov ecx, dword ptr [_LEX+422280]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .L_038B
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.L_038B:
.L_038A:
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.L_0385:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXPPONLYEMITTOKEN@0
_LEXPPONLYEMITTOKEN@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03AB:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .L_03B0
.L_03B1:
cmp dword ptr [ebp-4], 260
jne .L_03AF
.L_03B0:
jmp .L_03AC
jmp .L_03AD
.L_03AF:
cmp dword ptr [ebp-4], 256
je .L_03B3
.L_03B4:
cmp dword ptr [ebp-4], 257
jne .L_03B2
.L_03B3:
push -1
push offset _PPONLY_LN
call _fb_StrLen@8
test eax, eax
jle .L_03B6
mov eax, dword ptr [_ENV+860]
mov dword ptr [ebp-8], eax
push 1
push offset _PPONLY_LN
push dword ptr [ebp-8]
call _fb_PrintString@12
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
jmp .L_03B5
.L_03B6:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .L_03B8
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8380], 257
jne .L_03BA
mov eax, dword ptr [_ENV+860]
mov dword ptr [ebp-8], eax
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-8]
call _fb_PrintString@12
.L_03BA:
.L_03B9:
.L_03B8:
.L_03B5:
jmp .L_03AC
.L_03B2:
.L_03AD:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2080], 0
je .L_03BD
push 0
push 2
push offset _Lt_03BE
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
.L_03BD:
.L_03BC:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .L_03C2
.L_03C3:
cmp dword ptr [ebp-4], 263
je .L_03C2
.L_03C4:
cmp dword ptr [ebp-4], 264
jne .L_03C1
.L_03C2:
push 0
push -1
push 0
call _LEXGETTOKEN@4
push eax
call _LEXGETSTRLITTEXT@4
push eax
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
jmp .L_03BF
.L_03C1:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.L_03C5:
.L_03BF:
.L_03AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXPPONLYEMITTEXT@4
_LEXPPONLYEMITTEXT@4:
push ebp
mov ebp, esp
sub esp, 12
.L_03C7:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.L_03C8:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXSKIPTOKEN@4
_LEXSKIPTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03CA:
push dword ptr [ebp+8]
call _LEXCHECKTOKEN@4
and dword ptr [ebp+8], -14337
cmp dword ptr [_ENV+860], 0
jle .L_03CD
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8384], 0
jne .L_03CF
call _LEXPPONLYEMITTOKEN@0
.L_03CF:
.L_03CE:
.L_03CD:
.L_03CC:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .L_03D2
.L_03D3:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jne .L_03D5
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8376]
.L_03D5:
.L_03D4:
.L_03D2:
.L_03D0:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [_LEX+422280]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+8380], ecx
mov ecx, dword ptr [_LEX+422280]
cmp dword ptr [ecx+8352], 0
jne .L_03D7
push dword ptr [ebp+8]
mov ecx, dword ptr [_LEX+422280]
push dword ptr [ecx+8356]
call _LEXNEXTTOKEN@8
jmp .L_03D6
.L_03D7:
call _HMOVEKDOWN@0
.L_03D6:
call _PPCHECK@0
.L_03CB:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXEATTOKEN@8
_LEXEATTOKEN@8:
push ebp
mov ebp, esp
push ebx
.L_03D8:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .L_03DB
push 0
push 1025
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .L_03DA
.L_03DB:
push 0
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_03DA:
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
.L_03D9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTEXT@0
_LEXGETTEXT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_03DC:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .L_03DF
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .L_03DE
.L_03DF:
push 0
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 1025
push offset _Lt_03E0
call _fb_StrAssign@20
mov eax, offset _Lt_03E0
mov dword ptr [ebp-4], eax
.L_03DE:
.L_03DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03E0,1025

.section .text
.balign 16

.globl _LEXREADLINE@12
_LEXREADLINE@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03E1:
cmp dword ptr [ebp+16], 0
jne .L_03E4
push 0
push 1
push offset _Lt_0000
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03E4:
.L_03E3:
.L_03E5:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8352], 0
jle .L_03E6
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03EA
.L_03EB:
cmp dword ptr [ebp-4], 257
je .L_03EA
.L_03EC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03E9
.L_03EA:
jmp .L_03E2
jmp .L_03E7
.L_03E9:
cmp dword ptr [ebp+16], 0
jne .L_03EF
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03EF:
.L_03EE:
.L_03ED:
.L_03E7:
call _HMOVEKDOWN@0
jmp .L_03E5
.L_03E6:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03F4
.L_03F5:
cmp dword ptr [ebp-4], 257
je .L_03F4
.L_03F6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03F3
.L_03F4:
jmp .L_03E2
jmp .L_03F1
.L_03F3:
cmp dword ptr [ebp+16], 0
jne .L_03F9
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_03F9:
.L_03F8:
.L_03F7:
.L_03F1:
.L_03FB:
call _LEXCURRENTCHAR@0
mov dword ptr [_Lt_040E], eax
mov eax, dword ptr [_Lt_040E]
mov dword ptr [ebp-4], eax
jmp .L_03FF
.L_0401:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 256
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .L_03E2
jmp .L_03FE
.L_0402:
call _LEXEATCHAR@0
cmp dword ptr [_Lt_040E], 13
jne .L_0404
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_0406
call _LEXEATCHAR@0
.L_0406:
.L_0405:
.L_0404:
.L_0403:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 257
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .L_03E2
jmp .L_03FE
.L_0407:
mov eax, dword ptr [ebp+8]
cmp dword ptr [_Lt_040E], eax
jne .L_0409
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+4], 6
jmp .L_03E2
.L_0409:
.L_0408:
jmp .L_03FE
.L_03FF:
cmp dword ptr [ebp-4], 13
ja .L_0407
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.L_040A+ebx*4]
_.L_040A:
.int .L_0401
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0407
.int .L_0402
.int .L_0407
.int .L_0407
.int .L_0402
.L_03FE:
call _LEXEATCHAR@0
cmp dword ptr [ebp+16], 0
jne .L_040C
push 0
push -1
push -1
push dword ptr [_Lt_040E]
push 1
call _fb_CHR
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.L_040C:
.L_040B:
.L_03FD:
jmp .L_03FB
.L_03FC:
.L_03E2:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_040E,4

.section .text
.balign 16

.globl _LEXSKIPLINE@0
_LEXSKIPLINE@0:
.L_040F:
push -1
push 0
push 4294967295
call _LEXREADLINE@12
.L_0410:
ret
.balign 16

.globl _LEXPEEKCURRENTLINE@8
_LEXPEEKCURRENTLINE@8:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0411:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
cmp dword ptr [_ENV+576], 0
je .L_0414
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .L_0412
.L_0414:
.L_0413:
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [_LEX+422280]
cmp dword ptr [ebx+8396], 0
je .L_0416
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx-20]
add eax, -512
mov dword ptr [ebp-28], eax
jmp .L_0415
.L_0416:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+24820]
add ebx, -512
mov dword ptr [ebp-28], ebx
.L_0415:
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .L_0418
mov ebx, dword ptr [ebp-28]
add dword ptr [ebp-36], ebx
mov dword ptr [ebp-28], 0
.L_0418:
.L_0417:
push 1025
push offset _Lt_0450
mov ebx, dword ptr [ebp-28]
inc ebx
push ebx
push dword ptr [_ENV+300]
call _fb_FileGetStr@16
test eax, eax
je .L_0419
push 0
push 0
push offset _Lt_041A
push 2450
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0419:
push dword ptr [ebp-32]
push dword ptr [_ENV+300]
call _fb_FileSeek@8
test eax, eax
je .L_041B
push 0
push 0
push offset _Lt_041A
push 2451
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_041B:
mov eax, offset _Lt_0450
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .L_041D
dec dword ptr [ebp-44]
.L_041E:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .L_0423
.L_0424:
cmp dword ptr [ebp-48], 10
jne .L_0422
.L_0423:
jmp .L_041F
.L_0422:
.L_0421:
cmp dword ptr [ebp-36], 0
jg .L_0426
jmp .L_041F
.L_0426:
.L_0425:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.L_0420:
jmp .L_041E
.L_041F:
inc dword ptr [ebp-44]
.L_041D:
.L_041C:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.L_0427:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_042C
.L_042D:
cmp dword ptr [ebp-48], 13
je .L_042C
.L_042E:
cmp dword ptr [ebp-48], 10
jne .L_042B
.L_042C:
jmp .L_0428
.L_042B:
.L_042A:
push 0
push -1
push dword ptr [ebp-48]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-40], 0
jle .L_0430
push 0
push -1
cmp dword ptr [ebp-48], 9
jne .L_0431
mov dword ptr [ebp-52], 9
jmp .L_044F
.L_0431:
mov dword ptr [ebp-52], 32
.L_044F:
push dword ptr [ebp-52]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
dec dword ptr [ebp-40]
.L_0430:
.L_042F:
inc dword ptr [ebp-44]
.L_0429:
jmp .L_0427
.L_0428:
cmp dword ptr [ebp+12], 0
je .L_0434
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-52], 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-56], eax
jmp .L_0436
.L_0439:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-60], bl
movzx ebx, byte ptr [ebp-60]
cmp ebx, 9
je .L_043D
.L_043E:
movzx ebx, byte ptr [ebp-60]
cmp ebx, 32
jne .L_043C
.L_043D:
jmp .L_043A
.L_043C:
jmp .L_0438
.L_043F:
.L_043A:
.L_0437:
inc dword ptr [ebp-52]
.L_0436:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-52], ebx
jle .L_0439
.L_0438:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen@8
cmp dword ptr [ebp-52], eax
jge .L_0441
push 0
push -1
push -1
mov eax, dword ptr [ebp-52]
inc eax
push eax
lea eax, [ebp-24]
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .L_0440
.L_0441:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_0440:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-52], eax
jmp .L_0442
.L_0445:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-56], bl
movzx ebx, byte ptr [ebp-56]
cmp ebx, 9
je .L_0449
.L_044A:
movzx ebx, byte ptr [ebp-56]
cmp ebx, 32
jne .L_0448
.L_0449:
jmp .L_0446
.L_0448:
jmp .L_0444
.L_044B:
.L_0446:
.L_0443:
dec dword ptr [ebp-52]
.L_0442:
cmp dword ptr [ebp-52], 0
jge .L_0445
.L_0444:
cmp dword ptr [ebp-52], 0
jle .L_044D
push 0
push -1
mov ebx, dword ptr [ebp-52]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_044D:
.L_044C:
.L_0434:
.L_0433:
push 0
push 2
push offset _Lt_044E
push -1
push dword ptr [ebp+8]
call _fb_StrConcatByref@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_0412:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0450,1025

.section .text
.balign 16

.globl _LEXCHECKTOKEN@4
_LEXCHECKTOKEN@4:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_0451:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0454
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .L_0456
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .L_0458
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_045C
push -1
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_045A
push 0
push -1
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0485
.L_045A:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_0485:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_0459
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
jmp .L_0457
.L_0458:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .L_0461
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
jne .L_0463
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_045C
push -1
push -1
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_0464
push 0
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0486
.L_0464:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_0486:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_0459
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_0463:
.L_0462:
jmp .L_0457
.L_0461:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .L_046A
mov eax, dword ptr [_ENV+1040]
and eax, 8388608
test eax, eax
je .L_046C
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
je .L_046E
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_045C
push -1
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_046F
push 0
push -1
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0487
.L_046F:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_0487:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_0459
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_046E:
.L_046D:
jmp .L_046B
.L_046C:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
jne .L_0476
mov ebx, dword ptr [_ENV+200]
and ebx, 256
test ebx, ebx
je .L_0478
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_045C
push -1
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .L_0479
push 0
push -1
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0488
.L_0479:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_0488:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_0459
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0478:
.L_0477:
jmp .L_0475
.L_0476:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_045C
push -1
push -1
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .L_047F
push 0
push -1
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .L_0489
.L_047F:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.L_0489:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_0459
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.L_0475:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.L_046B:
.L_046A:
.L_0457:
.L_0456:
.L_0455:
.L_0454:
.L_0453:
.L_0452:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HMATCHIDORKW@8
_HMATCHIDORKW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_048A:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_048F
.L_0490:
cmp dword ptr [ebp-8], 2
je .L_048F
.L_0491:
cmp dword ptr [ebp-8], 1
jne .L_048E
.L_048F:
push 0
push dword ptr [ebp+8]
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .L_0493
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .L_048B
.L_0493:
.L_0492:
.L_048E:
.L_048C:
mov dword ptr [ebp-4], 0
.L_048B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HMATCH@8
_HMATCH@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0494:
push 0
call _LEXGETTOKEN@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_0497
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .L_0496
.L_0497:
mov dword ptr [ebp-4], 0
.L_0496:
.L_0495:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__lex:
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
_HCOLLECTCHARFORDEBUGOUTPUT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_0090:
cmp dword ptr [ebp+8], 32
jae .L_0093
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0095
.L_0097:
jmp .L_0091
jmp .L_0094
.L_0098:
jmp .L_0094
.L_0099:
mov dword ptr [ebp+8], 63
jmp .L_0094
.L_0095:
cmp dword ptr [ebp-4], 13
ja .L_0099
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_009B+eax*4]
_.L_009B:
.int .L_0097
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0099
.int .L_0098
.int .L_0097
.int .L_0098
.int .L_0098
.int .L_0097
.L_0094:
jmp .L_0092
.L_0093:
cmp dword ptr [ebp+8], 255
jbe .L_009C
mov dword ptr [ebp+8], 63
.L_009C:
.L_0092:
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRCONCATASSIGNC@8
.L_0091:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREADCHAR@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_009D:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jle .L_00A0
cmp dword ptr [_ENV+576], 0
jne .L_00A2
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8404]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A1
.L_00A2:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8404]
movzx eax, word ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A1:
cmp dword ptr [_ENV+148], 0
je .L_00A4
cmp dword ptr [_ENV+900], 0
jne .L_00A6
cmp dword ptr [_LEX+422284], 0
jne .L_00A8
mov dword ptr [_LEX+422284], -1
push offset _Lt_00A9
mov eax, dword ptr [_LEX+422280]
lea ebx, [eax+24824]
push ebx
call _DZSTRCONCATASSIGN@8
.L_00A8:
.L_00A7:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.L_00A6:
.L_00A5:
.L_00A4:
.L_00A3:
jmp .L_009F
.L_00A0:
mov ebx, dword ptr [_LEX+422280]
cmp dword ptr [ebx+8420], 0
jne .L_00AB
push dword ptr [_ENV+300]
call _fb_FileEof@4
test eax, eax
jne .L_00AD
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, eax
mov eax, dword ptr [_LEX+422280]
mov dword ptr [eax+24816], ebx
mov ebx, dword ptr [_ENV+576]
mov dword ptr [ebp-12], ebx
jmp .L_00AF
.L_00B1:
push 8193
mov ebx, dword ptr [_LEX+422280]
lea eax, [ebx+8428]
push eax
push 0
push dword ptr [_ENV+300]
call _fb_FileGetStr@16
test eax, eax
jne .L_00B3
push dword ptr [_ENV+300]
call _fb_FileTell@4
mov ebx, dword ptr [_LEX+422280]
mov esi, dword ptr [ebx+24816]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov esi, eax
mov eax, dword ptr [_LEX+422280]
mov dword ptr [eax+8420], esi
mov esi, dword ptr [_LEX+422280]
lea eax, [esi+8428]
mov esi, dword ptr [_LEX+422280]
mov dword ptr [esi+8424], eax
.L_00B3:
.L_00B2:
jmp .L_00AE
.L_00B4:
call _LEXREADUTF8@0
jmp .L_00AE
.L_00B5:
call _LEXREADUTF16LE@0
jmp .L_00AE
.L_00B6:
call _LEXREADUTF16BE@0
jmp .L_00AE
.L_00B7:
call _LEXREADUTF32LE@0
jmp .L_00AE
.L_00B8:
call _LEXREADUTF32BE@0
jmp .L_00AE
.L_00AF:
cmp dword ptr [ebp-12], 5
ja .L_00AE
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00B9+eax*4]
_.L_00B9:
.int .L_00B1
.int .L_00B4
.int .L_00B5
.int .L_00B6
.int .L_00B7
.int .L_00B8
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8420], 0
jle .L_00BB
cmp dword ptr [_ENV+576], 0
jne .L_00BD
mov eax, dword ptr [_LEX+422280]
mov esi, dword ptr [eax+8424]
movzx eax, byte ptr [esi]
mov dword ptr [ebp-8], eax
jmp .L_00BC
.L_00BD:
mov eax, dword ptr [_LEX+422280]
mov esi, dword ptr [eax+8424]
movzx eax, word ptr [esi]
mov dword ptr [ebp-8], eax
.L_00BC:
jmp .L_00BA
.L_00BB:
mov dword ptr [ebp-8], 0
.L_00BA:
cmp dword ptr [_ENV+148], 0
je .L_00BF
cmp dword ptr [_ENV+900], 0
jne .L_00C1
cmp dword ptr [_LEX+422284], 0
je .L_00C3
mov dword ptr [_LEX+422284], 0
push offset _Lt_00C4
mov eax, dword ptr [_LEX+422280]
lea esi, [eax+24824]
push esi
call _DZSTRCONCATASSIGN@8
.L_00C3:
.L_00C2:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.L_00C1:
.L_00C0:
.L_00BF:
.L_00BE:
.L_009F:
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.L_009E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSKIPCHAR@0:
.L_00D2:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jle .L_00D5
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8400]
cmp dword ptr [_ENV+576], 0
jne .L_00D7
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8404]
jmp .L_00D6
.L_00D7:
mov eax, dword ptr [_LEX+422280]
add dword ptr [eax+8404], 2
.L_00D6:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jne .L_00D9
mov eax, dword ptr [_LEX+422280]
mov dword ptr [eax+8388], 0
.L_00D9:
.L_00D8:
jmp .L_00D4
.L_00D5:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8364], 0
je .L_00DA
mov eax, dword ptr [_LEX+422280]
dec dword ptr [eax+8420]
cmp dword ptr [_ENV+576], 0
jne .L_00DC
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8424]
jmp .L_00DB
.L_00DC:
mov eax, dword ptr [_LEX+422280]
add dword ptr [eax+8424], 2
.L_00DB:
.L_00DA:
.L_00D4:
.L_00D3:
ret
.balign 16
_HREADIDENTIFIER@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00E9:
call _LEXCURRENTCHAR@0
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call _LEXEATCHAR@0
mov dword ptr [ebp-4], 0
.L_00EB:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00EF
.L_00F1:
jmp .L_00EE
.L_00F2:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .L_00F4
jmp .L_00EC
.L_00F4:
.L_00F3:
jmp .L_00EE
.L_00F5:
jmp .L_00EC
jmp .L_00EE
.L_00EF:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .L_00F5
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00F6+eax*4-184]
_.L_00F6:
.int .L_00F2
.int .L_00F5
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F5
.int .L_00F1
.int .L_00F5
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.int .L_00F1
.L_00EE:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
jne .L_00F8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .L_00FA
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_00FC
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call _ERRREPORTWARN@16
.L_00FC:
.L_00FB:
mov dword ptr [ebp-4], -1
jmp .L_00F9
.L_00FA:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.L_00F9:
.L_00F8:
.L_00F7:
.L_00ED:
jmp .L_00EB
.L_00EC:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_00FE
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-8], eax
jmp .L_0100
.L_0102:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_ENV+1044]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call _LEXEATCHAR@0
jmp .L_00FF
.L_0103:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call _LEXEATCHAR@0
jmp .L_00FF
.L_0104:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call _LEXEATCHAR@0
jmp .L_00FF
.L_0105:
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 35
je .L_0107
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call _LEXEATCHAR@0
.L_0107:
.L_0106:
jmp .L_00FF
.L_0108:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call _LEXEATCHAR@0
jmp .L_00FF
.L_0100:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .L_00FF
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.L_0109+eax*4-132]
_.L_0109:
.int .L_0104
.int .L_00FF
.int .L_0105
.int .L_0108
.int .L_0102
.int .L_0103
.L_00FF:
.L_00FE:
.L_00FD:
.L_00EA:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNONDECNUMBER@16:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_010A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
call _LEXGETLOOKAHEADCHAR@0
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_010D
.L_010F:
mov dword ptr [ebp-16], 79
jmp .L_010C
.L_0110:
call _LEXEATCHAR@0
jmp .L_010C
.L_010D:
mov eax, dword ptr [ebp-48]
add eax, 4294967248
cmp eax, 7
ja .L_0110
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_0111+eax*4-192]
_.L_0111:
.int .L_010F
.int .L_010F
.int .L_010F
.int .L_010F
.int .L_010F
.int .L_010F
.int .L_010F
.int .L_010F
.L_010C:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0113
.L_0115:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 38
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx+1], bl
mov ebx, dword ptr [ebp+8]
add dword ptr [ebx], 2
mov ebx, dword ptr [ebp+12]
add dword ptr [ebx], 2
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .L_0117
.L_0118:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_0119
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_0118
.L_0119:
.L_0117:
.L_0116:
.L_011A:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .L_0120
cmp dword ptr [ebp-16], 102
jbe .L_011F
.L_0120:
cmp dword ptr [ebp-16], 65
jb .L_0121
cmp dword ptr [ebp-16], 70
jbe .L_011F
.L_0121:
cmp dword ptr [ebp-16], 48
jb .L_011E
cmp dword ptr [ebp-16], 57
ja .L_011E
.L_011F:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0123
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
cmp dword ptr [ebp-16], 9
jbe .L_0125
add dword ptr [ebp-16], 4294967289
.L_0125:
.L_0124:
cmp dword ptr [ebp-16], 16
jbe .L_0127
add dword ptr [ebp-16], 4294967264
.L_0127:
.L_0126:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .L_0129
cmp dword ptr [ebp-32], 9
jne .L_012B
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ecx, dword ptr [ebp-12]
mov eax, 0
shld eax, ecx, 4
shl ecx, 4
mov esi, dword ptr [ebp-16]
mov ebx, 0
add ecx, esi
adc eax, ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], eax
jmp .L_012A
.L_012B:
cmp dword ptr [ebp-32], 17
jne .L_012C
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .L_012E
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_012E:
.L_012D:
mov dword ptr [ebp-40], -1
jmp .L_012A
.L_012C:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-24]
shld ecx, eax, 4
shl eax, 4
mov ebx, dword ptr [ebp-16]
mov esi, 0
add eax, ebx
adc ecx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ecx
.L_012A:
jmp .L_0128
.L_0129:
cmp dword ptr [ebp-32], 5
jne .L_0130
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0130:
.L_012F:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_0128:
.L_0123:
.L_0122:
jmp .L_011D
.L_011E:
jmp .L_011B
.L_0131:
.L_011D:
.L_011C:
jmp .L_011A
.L_011B:
jmp .L_0112
.L_0132:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 38
mov cl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx+1], cl
mov ecx, dword ptr [ebp+8]
add dword ptr [ecx], 2
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 2
call _LEXEATCHAR@0
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .L_0134
.L_0135:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_0136
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_0135
.L_0136:
.L_0134:
.L_0133:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_0137:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .L_013B
cmp dword ptr [ebp-16], 55
ja .L_013B
.L_013C:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_013E
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 10
jle .L_0140
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_0142
.L_0144:
cmp dword ptr [ebp-20], 51
jbe .L_0146
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 3
shl ebx, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0145
.L_0146:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_0145:
jmp .L_0141
.L_0147:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0148
mov dword ptr [ebp-56], 24
jmp .L_0498
.L_0148:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_0498:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .L_014B
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_014B:
.L_014A:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0141
.L_014C:
cmp dword ptr [ebp-20], 49
jbe .L_014E
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0150
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0150:
.L_014F:
mov dword ptr [ebp-40], -1
jmp .L_014D
.L_014E:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 3
shl eax, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add eax, esi
adc ebx, ecx
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_014D:
jmp .L_0141
.L_0151:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0153
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0153:
.L_0152:
mov dword ptr [ebp-40], -1
jmp .L_0141
.L_0154:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_0141
.L_0142:
mov ebx, dword ptr [ebp-52]
add ebx, 4294967285
cmp ebx, 12
ja .L_0154
mov ebx, dword ptr [ebp-52]
jmp dword ptr [_.L_0155+ebx*4-44]
_.L_0155:
.int .L_0144
.int .L_0147
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_0154
.int .L_014C
.int .L_0151
.L_0141:
jmp .L_013F
.L_0140:
cmp dword ptr [ebp-32], 6
jne .L_0157
cmp dword ptr [ebp-20], 49
jbe .L_0159
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_0159:
.L_0158:
jmp .L_0156
.L_0157:
cmp dword ptr [ebp-32], 7
jne .L_015A
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_015A:
.L_0156:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_013F:
.L_013E:
.L_013D:
jmp .L_013A
.L_013B:
jmp .L_0138
.L_015B:
.L_013A:
.L_0139:
jmp .L_0137
.L_0138:
jmp .L_0112
.L_015C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 38
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], al
mov eax, dword ptr [ebp+8]
add dword ptr [eax], 2
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_015E
.L_015F:
call _LEXCURRENTCHAR@0
cmp eax, 48
jne .L_0160
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
jmp .L_015F
.L_0160:
.L_015E:
.L_015D:
.L_0161:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .L_0166
.L_0167:
cmp dword ptr [ebp-16], 49
jne .L_0165
.L_0166:
call _LEXEATCHAR@0
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0169
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 32
jle .L_016B
cmp dword ptr [ebp-32], 33
jne .L_016D
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 1
shl ebx, 1
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .L_016C
.L_016D:
cmp dword ptr [ebp-32], 65
jne .L_016E
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_0170
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0170:
.L_016F:
mov dword ptr [ebp-40], -1
jmp .L_016C
.L_016E:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 1
shl eax, 1
mov ecx, dword ptr [ebp-16]
mov esi, 0
add eax, ecx
adc ebx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_016C:
jmp .L_016A
.L_016B:
cmp dword ptr [ebp-32], 17
jne .L_0172
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0172:
.L_0171:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_016A:
.L_0169:
.L_0168:
jmp .L_0164
.L_0165:
jmp .L_0162
.L_0173:
.L_0164:
.L_0163:
jmp .L_0161
.L_0162:
jmp .L_0112
.L_0174:
jmp .L_010B
jmp .L_0112
.L_0113:
mov eax, dword ptr [ebp-48]
add eax, 4294967230
cmp eax, 45
ja .L_0174
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.L_0175+eax*4-264]
_.L_0175:
.int .L_015C
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0115
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0132
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_015C
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0115
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0174
.int .L_0132
.L_0112:
cmp dword ptr [ebp-32], 0
jne .L_0177
cmp dword ptr [ebp-36], 0
jne .L_0179
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_017B
push 0
push 1
push 0
push 48
call _ERRREPORTWARN@16
.L_017B:
.L_017A:
.L_0179:
.L_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_0177:
.L_0176:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_017C
mov dword ptr [ebp-44], 24
jmp .L_0499
.L_017C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0499:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .L_017F
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_017E
.L_017F:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_017E:
.L_010B:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HREADFLOATNUMBER@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_0180:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_ENV+1072]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+2064]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_0182:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .L_0186
cmp dword ptr [ebp-4], 57
ja .L_0186
.L_0187:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_0189
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_0189:
.L_0188:
jmp .L_0185
.L_0186:
jmp .L_0183
.L_018A:
.L_0185:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .L_018C
cmp dword ptr [ebp-12], 0
jne .L_018E
mov dword ptr [ebp-12], -1
jmp .L_018D
.L_018E:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0190
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0190:
.L_018F:
.L_018D:
.L_018C:
.L_018B:
.L_0184:
jmp .L_0182
.L_0183:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .L_0191
mov dword ptr [ebp-16], 1
jmp .L_049A
.L_0191:
mov dword ptr [ebp-16], 0
.L_049A:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+2064], eax
jle .L_0194
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.L_0194:
.L_0193:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_0196
.L_0198:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_019A
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.L_019A:
.L_0199:
cmp dword ptr [ebp-12], 0
jne .L_019C
cmp dword ptr [ebp+20], 0
jne .L_019E
mov dword ptr [ebp-4], 101
.L_019E:
.L_019D:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.L_019C:
.L_019B:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 43
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 45
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_01A0
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_01A2
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.L_01A2:
.L_01A1:
.L_01A0:
.L_019F:
.L_01A3:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .L_01A7
.L_01A9:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .L_01AB
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_01AB:
.L_01AA:
jmp .L_01A6
.L_01AC:
jmp .L_01A4
jmp .L_01A6
.L_01A7:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .L_01AC
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.L_01AD+eax*4-192]
_.L_01AD:
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.int .L_01A9
.L_01A6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .L_01AF
cmp dword ptr [ebp-12], 0
jne .L_01B1
mov dword ptr [ebp-12], -1
jmp .L_01B0
.L_01B1:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_01B3
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_01B3:
.L_01B2:
.L_01B0:
.L_01AF:
.L_01AE:
.L_01A5:
jmp .L_01A3
.L_01A4:
jmp .L_0195
.L_0196:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .L_0195
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01B4+eax*4-272]
_.L_01B4:
.int .L_0198
.int .L_0198
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0195
.int .L_0198
.int .L_0198
.L_0195:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
jmp .L_01B6
.L_01B8:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .L_01BA
call _LEXEATCHAR@0
.L_01BA:
.L_01B9:
jmp .L_01B5
.L_01BB:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01BD
call _LEXEATCHAR@0
.L_01BD:
.L_01BC:
jmp .L_01B5
.L_01BE:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01C0
call _LEXEATCHAR@0
.L_01C0:
.L_01BF:
jmp .L_01B5
.L_01B6:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .L_01B5
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01C1+eax*4-132]
_.L_01C1:
.int .L_01BB
.int .L_01B5
.int .L_01BE
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B8
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B5
.int .L_01B8
.L_01B5:
cmp dword ptr [ebp+20], 0
jne .L_01C3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+2064]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .L_01C5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.L_01C5:
.L_01C4:
.L_01C3:
.L_01C2:
.L_0181:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_READNUMBERCHARS@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.L_01C6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 9
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.L_01C8:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_01CC
.L_01CE:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
not ebx
and eax, ebx
je .L_01D0
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
shld ecx, eax, 3
shl eax, 3
mov ebx, dword ptr [ebp+24]
mov edi, dword ptr [ebx]
mov esi, dword ptr [ebx+4]
shld esi, edi, 1
shl edi, 1
add eax, edi
adc ecx, esi
mov edi, dword ptr [ebp-16]
add edi, 4294967248
mov ebx, edi
mov esi, 0
add eax, ebx
adc ecx, esi
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], ecx
.L_01D0:
.L_01CF:
jmp .L_01CB
.L_01D1:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .L_01D3
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01D5
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+2064]
.L_01D5:
.L_01D4:
mov dword ptr [ebp-24], -1
.L_01D3:
.L_01D2:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _HREADFLOATNUMBER@16
jmp .L_01C9
jmp .L_01CB
.L_01D6:
jmp .L_01C9
jmp .L_01CB
.L_01CC:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .L_01D6
mov ecx, dword ptr [ebp-20]
jmp dword ptr [_.L_01D7+ecx*4-184]
_.L_01D7:
.int .L_01D1
.int .L_01D6
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01CE
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D1
.int .L_01D1
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D6
.int .L_01D1
.int .L_01D1
.L_01CB:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .L_01D9
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01DB
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+2064]
mov dword ptr [ebp-20], ecx
jmp .L_01DD
.L_01DF:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E1
ja .L_04A3
cmp dword ptr [ecx], 32767
jbe .L_01E1
.L_04A3:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.L_01E1:
.L_01E0:
jmp .L_01DC
.L_01E2:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .L_01DC
.L_01E3:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E5
ja .L_04A4
cmp dword ptr [ecx], 2147483647
jbe .L_01E5
.L_04A4:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E7
ja .L_04A5
cmp dword ptr [ecx], 4294967295
jbe .L_01E7
.L_04A5:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01E6
.L_01E7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.L_01E6:
.L_01E5:
.L_01E4:
jmp .L_01DC
.L_01E8:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01DC
.L_01E9:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .L_01EB
ja .L_04A6
cmp dword ptr [ecx], 4294967295
jbe .L_01EB
.L_04A6:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.L_01EB:
.L_01EA:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .L_01DC
.L_01EC:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01EE
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .L_04A7
jb .L_04A8
cmp dword ptr [ebp-12], 2576980377
ja .L_04A7
.L_04A8:
xor eax, eax
.L_04A7:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .L_04AA
cmp esi, 0
je .L_04A9
.L_04AA:
xor ebx, ebx
.L_04A9:
or eax, ebx
je .L_01F0
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.L_01F0:
.L_01EF:
.L_01EE:
.L_01ED:
jmp .L_01DC
.L_01F1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F3
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_01F3:
.L_01F2:
jmp .L_01DC
.L_01DD:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .L_01DC
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.L_01F4+eax*4-20]
_.L_01F4:
.int .L_01DF
.int .L_01E2
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01E3
.int .L_01E8
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01DC
.int .L_01E9
.int .L_01EC
.int .L_01F1
.L_01DC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2064], 64
jne .L_01F6
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01F8
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .L_01F7
.L_01F8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .L_01FA
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_01FA:
.L_01F9:
.L_01F7:
.L_01F6:
.L_01F5:
.L_01DB:
.L_01DA:
.L_01D9:
.L_01D8:
.L_01CA:
jmp .L_01C8
.L_01C9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+2064], 0
jne .L_01FC
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
.L_01FC:
.L_01FB:
.L_01C7:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNUMBER@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_01FD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 5
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 0
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
jmp .L_0200
.L_0202:
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call _READNUMBERCHARS@20
jmp .L_01FF
.L_0203:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _HREADFLOATNUMBER@16
jmp .L_01FF
.L_0204:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
lea eax, [ebp-20]
push eax
call _HREADNONDECNUMBER@16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .L_01FF
.L_0200:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .L_01FF
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_0205+eax*4-152]
_.L_0205:
.int .L_0204
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_01FF
.int .L_0203
.int .L_01FF
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.int .L_0202
.L_01FF:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .L_0208
.L_0209:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1048]
mov dword ptr [edx+8], eax
jmp .L_0206
.L_0208:
cmp dword ptr [ebp-28], 6
jne .L_020A
.L_020B:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1052]
mov dword ptr [eax+8], edx
jmp .L_0206
.L_020A:
cmp dword ptr [ebp-28], 11
jne .L_020C
.L_020D:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1056]
mov dword ptr [edx+8], eax
jmp .L_0206
.L_020C:
cmp dword ptr [ebp-28], 12
jne .L_020E
.L_020F:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1060]
mov dword ptr [eax+8], edx
jmp .L_0206
.L_020E:
cmp dword ptr [ebp-28], 13
jne .L_0210
.L_0211:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+1064]
mov dword ptr [edx+8], eax
jmp .L_0206
.L_0210:
cmp dword ptr [ebp-28], 14
jne .L_0212
.L_0213:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1068]
mov dword ptr [eax+8], edx
.L_0212:
.L_0206:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .L_0214
mov dword ptr [ebp-24], 24
jmp .L_04AB
.L_0214:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.L_04AB:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [_SYMB_DTYPETB+edx], 1
je .L_0217
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .L_0219
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_021B
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .L_021F
.L_0220:
cmp dword ptr [ebp-28], 117
jne .L_021E
.L_021F:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _TYPETOUNSIGNED@4
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.L_021E:
.L_021C:
.L_021B:
.L_021A:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-28], eax
jmp .L_0222
.L_0224:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .L_0226
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 76
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 108
sete dl
shr edx, 1
sbb edx, edx
or eax, edx
je .L_0228
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
je .L_0229
mov dword ptr [ebp-36], 14
jmp .L_04AC
.L_0229:
mov dword ptr [ebp-36], 13
.L_04AC:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .L_0227
.L_0228:
cmp dword ptr [ebp-12], 0
jb .L_022C
ja .L_04B1
cmp dword ptr [ebp-16], 4294967295
jbe .L_022C
.L_04B1:
cmp dword ptr [ebp-8], 0
jne .L_022E
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_0230
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0230:
.L_022F:
.L_022E:
.L_022D:
.L_022C:
.L_022B:
cmp dword ptr [ebp-4], 0
je .L_0231
mov dword ptr [ebp-36], 12
jmp .L_04AD
.L_0231:
mov dword ptr [ebp-36], 11
.L_04AD:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.L_0227:
.L_0226:
.L_0225:
jmp .L_0221
.L_0233:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0235
cmp dword ptr [ebp-4], 0
jne .L_0237
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.L_0237:
.L_0236:
.L_0235:
.L_0234:
jmp .L_0221
.L_0238:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_023A
cmp dword ptr [ebp-4], 0
jne .L_023C
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call _LEXEATCHAR@0
.L_023C:
.L_023B:
.L_023A:
.L_0239:
jmp .L_0221
.L_023D:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [_ENV+1044]
and edx, 480
je .L_023E
mov dword ptr [ebp-36], 24
jmp .L_04AE
.L_023E:
mov edx, dword ptr [_ENV+1044]
and edx, 31
mov dword ptr [ebp-36], edx
.L_04AE:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [_SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .L_0242
.L_0243:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B2
jb .L_04B3
cmp dword ptr [ebp-16], 65535
ja .L_04B2
.L_04B3:
xor eax, eax
.L_04B2:
mov dword ptr [ebp-32], eax
jmp .L_0240
.L_0242:
cmp dword ptr [ebp-40], 4
jne .L_0244
.L_0245:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B4
jb .L_04B5
cmp dword ptr [ebp-16], 4294967295
ja .L_04B4
.L_04B5:
xor eax, eax
.L_04B4:
mov dword ptr [ebp-32], eax
.L_0244:
.L_0240:
cmp dword ptr [ebp-32], 0
je .L_0247
cmp dword ptr [ebp-8], 0
jne .L_0249
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_024B
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_024B:
.L_024A:
.L_0249:
.L_0248:
.L_0247:
.L_0246:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+1044]
mov dword ptr [eax+8], edx
call _LEXEATCHAR@0
jmp .L_0221
.L_024C:
cmp dword ptr [ebp-12], 0
jb .L_024E
ja .L_04B6
cmp dword ptr [ebp-16], 4294967295
jbe .L_024E
.L_04B6:
cmp dword ptr [ebp-8], 0
jne .L_0250
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .L_0252
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.L_0252:
.L_0251:
.L_0250:
.L_024F:
.L_024E:
.L_024D:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call _LEXEATCHAR@0
jmp .L_0221
.L_0253:
cmp dword ptr [ebp-4], 0
jne .L_0255
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.L_0255:
.L_0254:
jmp .L_0221
.L_0256:
cmp dword ptr [ebp-4], 0
jne .L_0258
call _LEXGETLOOKAHEADCHAR@0
cmp eax, 35
je .L_025A
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call _LEXEATCHAR@0
.L_025A:
.L_0259:
.L_0258:
.L_0257:
jmp .L_0221
.L_0222:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .L_0221
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.L_025B+eax*4-132]
_.L_025B:
.int .L_0253
.int .L_0221
.int .L_0256
.int .L_0221
.int .L_023D
.int .L_024C
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0238
.int .L_0221
.int .L_0233
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0224
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0238
.int .L_0221
.int .L_0233
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0221
.int .L_0224
.L_0221:
.L_0219:
.L_0218:
.L_0217:
.L_0216:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.L_01FE:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HREADSTRING@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_025C:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_025F
call _LEXCURRENTCHAR@0
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_025F:
.L_025E:
call _LEXEATCHAR@0
.L_0260:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_0264
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_0266
cmp dword ptr [ebp-16], 0
jne .L_0268
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0268:
.L_0267:
.L_0266:
.L_0265:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_026A
jmp .L_0261
.L_026A:
jmp .L_0263
.L_0264:
cmp dword ptr [ebp-20], 27
jne .L_026B
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_026D
cmp dword ptr [ebp-16], 0
jne .L_026F
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_026F:
.L_026E:
.L_026D:
.L_026C:
jmp .L_0263
.L_026B:
cmp dword ptr [ebp-20], 92
jne .L_0270
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0272
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_0274
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0274:
.L_0273:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_0272:
.L_0271:
.L_0270:
.L_0263:
cmp dword ptr [ebp-20], 0
je .L_0277
.L_0278:
cmp dword ptr [ebp-20], 13
je .L_0277
.L_0279:
cmp dword ptr [ebp-20], 10
jne .L_0276
.L_0277:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_027B
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.L_027B:
.L_027A:
jmp .L_0261
.L_0276:
.L_0275:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_027D
cmp dword ptr [ebp-4], 1024
jne .L_027F
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_0281
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.L_0281:
.L_0280:
mov dword ptr [ebp-16], -1
jmp .L_027E
.L_027F:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_027E:
.L_027D:
.L_027C:
.L_0262:
jmp .L_0260
.L_0261:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.L_025D:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HREADWSTR@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0282:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .L_0285
call _LEXCURRENTCHAR@0
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_0285:
.L_0284:
call _LEXEATCHAR@0
.L_0286:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_028A
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_028C
cmp dword ptr [ebp-16], 0
jne .L_028E
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 34
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_028E:
.L_028D:
.L_028C:
.L_028B:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0290
jmp .L_0287
.L_0290:
jmp .L_0289
.L_028A:
cmp dword ptr [ebp-20], 27
jne .L_0291
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0293
cmp dword ptr [ebp-16], 0
jne .L_0295
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 27
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_0295:
.L_0294:
.L_0293:
.L_0292:
jmp .L_0289
.L_0291:
cmp dword ptr [ebp-20], 92
jne .L_0296
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0298
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_029A
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 92
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_029A:
.L_0299:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-20], eax
.L_0298:
.L_0297:
.L_0296:
.L_0289:
cmp dword ptr [ebp-20], 0
je .L_029D
.L_029E:
cmp dword ptr [ebp-20], 13
je .L_029D
.L_029F:
cmp dword ptr [ebp-20], 10
jne .L_029C
.L_029D:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_02A1
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.L_02A1:
.L_02A0:
jmp .L_0287
.L_029C:
.L_029B:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .L_02A3
cmp dword ptr [ebp-4], 1024
jne .L_02A5
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_02A7
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.L_02A7:
.L_02A6:
mov dword ptr [ebp-16], -1
jmp .L_02A4
.L_02A5:
mov ax, word ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.L_02A4:
.L_02A3:
.L_02A2:
.L_0288:
jmp .L_0286
.L_0287:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.L_0283:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKPERIODS@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02A8:
cmp dword ptr [ebp+16], 0
je .L_02AB
mov dword ptr [ebp-4], 0
call _LEXCURRENTCHAR@0
cmp eax, 46
jne .L_02AD
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .L_02AF
mov dword ptr [ebp-4], -1
.L_02B0:
cmp dword ptr [ebp+16], 0
je .L_02B1
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_02B2:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_02B6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_02B8
jmp .L_02A9
.L_02B8:
.L_02B7:
.L_02B6:
.L_02B5:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+160]
mov dword ptr [ebp-8], eax
.L_02B4:
cmp dword ptr [ebp-8], 0
jne .L_02B2
.L_02B3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .L_02B0
.L_02B1:
.L_02AF:
.L_02AE:
.L_02AD:
.L_02AC:
jmp .L_02AA
.L_02AB:
call _LEXCURRENTCHAR@0
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_02AA:
cmp dword ptr [ebp-4], 0
je .L_02BA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
mov dword ptr [eax+2072], ecx
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+2064]
push ecx
call _HREADIDENTIFIER@20
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call _SYMBLOOKUP@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], eax
.L_02BA:
.L_02B9:
.L_02A9:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_READID@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02BB:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8388]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2072], 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _HREADIDENTIFIER@20
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .L_02BE
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [_LEX+422280]
push dword ptr [eax+8392]
call _SYMBLOOKUPAT@16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
jne .L_02C0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .L_02BF
.L_02C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+2068]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.L_02BF:
mov dword ptr [ebp-4], -1
jmp .L_02BC
.L_02BE:
.L_02BD:
mov eax, dword ptr [ebp+12]
and eax, 32
je .L_02C2
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .L_02BC
.L_02C2:
.L_02C1:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _SYMBLOOKUP@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_02C4
mov dword ptr [ebp-4], -1
jmp .L_02BC
.L_02C4:
.L_02C3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
je .L_02C6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .L_02C8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
push dword ptr [ebx]
call _PPDEFINELOAD@8
test eax, eax
je .L_02CA
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov dword ptr [ebp-4], 0
jmp .L_02BC
.L_02CA:
.L_02C9:
.L_02C8:
.L_02C7:
.L_02C6:
.L_02C5:
mov eax, dword ptr [_ENV+1040]
and eax, 524288
test eax, eax
je .L_02CC
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_02CE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+2068]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPERIODS@12
.L_02CE:
.L_02CD:
.L_02CC:
.L_02CB:
mov dword ptr [ebp-4], -1
.L_02BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMULTILINECOMMENT@0:
push ebp
mov ebp, esp
sub esp, 4
.L_0359:
call _LEXEATCHAR@0
mov dword ptr [_Lt_04BA], 0
.L_035B:
call _LEXCURRENTCHAR@0
mov dword ptr [ebp-4], eax
jmp .L_035F
.L_0361:
push 0
push 1
push 0
push 0
push 132
call _ERRREPORTEX@20
jmp .L_035A
jmp .L_035E
.L_0362:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 10
jne .L_0364
call _LEXEATCHAR@0
.L_0364:
.L_0363:
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jne .L_0366
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8376]
.L_0366:
.L_0365:
jmp .L_035E
.L_0367:
call _LEXEATCHAR@0
mov eax, dword ptr [_LEX+422280]
cmp dword ptr [eax+8400], 0
jne .L_0369
mov eax, dword ptr [_LEX+422280]
inc dword ptr [eax+8376]
.L_0369:
.L_0368:
jmp .L_035E
.L_036A:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 39
jne .L_036C
call _LEXEATCHAR@0
inc dword ptr [_Lt_04BA]
.L_036C:
.L_036B:
jmp .L_035E
.L_036D:
call _LEXEATCHAR@0
call _LEXCURRENTCHAR@0
cmp eax, 47
jne .L_036F
call _LEXEATCHAR@0
cmp dword ptr [_Lt_04BA], 0
jne .L_0371
jmp .L_035C
.L_0371:
.L_0370:
dec dword ptr [_Lt_04BA]
.L_036F:
.L_036E:
jmp .L_035E
.L_0372:
call _LEXEATCHAR@0
jmp .L_035E
.L_035F:
cmp dword ptr [ebp-4], 47
ja .L_0372
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.L_0373+eax*4]
_.L_0373:
.int .L_0361
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0367
.int .L_0372
.int .L_0372
.int .L_0362
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_036D
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_0372
.int .L_036A
.L_035E:
.L_035D:
jmp .L_035B
.L_035C:
.L_035A:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04BA,4

.section .text
.balign 16
_HMOVEKDOWN@0:
push ebx
.L_038C:
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], -1
mov ebx, dword ptr [_LEX+422280]
dec dword ptr [ebx+8352]
mov ebx, dword ptr [_LEX+422280]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [_LEX+422280]
mov ecx, dword ptr [eax+2084]
mov dword ptr [ebx+8356], ecx
.L_038D:
pop ebx
ret
.balign 16
_LEXGETSTRLITTEXT@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_038E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .L_0391
.L_0392:
mov dword ptr [ebp-28], 0
jmp .L_0390
.L_0391:
cmp dword ptr [ebp+8], 263
jne .L_0393
.L_0394:
push 0
push 2
push offset _Lt_0395
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], -1
jmp .L_0390
.L_0393:
cmp dword ptr [ebp+8], 264
jne .L_0396
.L_0397:
push 0
push 2
push offset _Lt_0398
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 0
.L_0396:
.L_0390:
push 0
push 2
push offset _Lt_0399
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-32], 0
call _LEXGETTEXT@0
mov dword ptr [ebp-36], eax
.L_039A:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .L_039F
.L_03A0:
jmp .L_039B
jmp .L_039D
.L_039F:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .L_03A1
.L_03A2:
cmp dword ptr [ebp-32], 0
je .L_03A4
push 0
push 2
push offset _Lt_0399
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_03A3
.L_03A4:
push 0
push 3
push offset _Lt_03A5
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.L_03A3:
mov dword ptr [ebp-32], 0
jmp .L_039D
.L_03A1:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .L_03A6
.L_03A8:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
push 0
push 2
push offset _Lt_03A7
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .L_039D
.L_03A6:
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.L_03A9:
.L_039D:
inc dword ptr [ebp-36]
.L_039C:
jmp .L_039A
.L_039B:
push 0
push 2
push offset _Lt_0399
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.L_038F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48

.globl _LEX
.balign 4
	.lcomm	_LEX,422288
.balign 4
	.lcomm	_PPONLY_LN,12

.section .data
.balign 4
_Lt_00A9:	.ascii	" [Macro Expansion: \0"
.balign 4
_Lt_00C4:	.ascii	" ] \0"
.balign 4
_Lt_0395:	.ascii	"!\0"
.balign 4
_Lt_0398:	.ascii	"$\0"
.balign 4
_Lt_0399:	.ascii	"\"\0"
.balign 4
_Lt_03A5:	.ascii	"\"\"\0"
.balign 4
_Lt_03A7:	.ascii	"\\\0"
.balign 4
_Lt_03BE:	.ascii	" \0"
.balign 4
_Lt_041A:	.ascii	"src/compiler/lex.bas\0"
.balign 4
_Lt_044E:	.ascii	"^\0"
.balign 4
_Lt_0459:	.ascii	"in '\0"
.balign 4
_Lt_045C:	.ascii	"'\0"

.section .ctors
.int _fb_ctor__lex
