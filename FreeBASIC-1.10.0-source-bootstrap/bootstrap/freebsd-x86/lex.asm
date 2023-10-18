	.intel_syntax noprefix

.section .text
.balign 16

.globl LEXPUSHCTX
LEXPUSHCTX:
.L_0066:
add dword ptr [LEX+840072], 49416
.L_0067:
ret
.balign 16

.globl LEXPOPCTX
LEXPOPCTX:
push ebx
.L_0068:
cmp dword ptr [ENV+900], 0
jne .L_006B
push 0
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRALLOCATE
add esp, 8
.L_006B:
.L_006A:
cmp dword ptr [ENV+576], 0
jne .L_006D
push 0
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16600]
push eax
call DZSTRALLOCATE
add esp, 8
jmp .L_006C
.L_006D:
push 0
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+16600]
push ebx
call DWSTRALLOCATE
add esp, 8
.L_006C:
add dword ptr [LEX+840072], -49416
.L_0069:
pop ebx
ret
.balign 16

.globl LEXINIT
LEXINIT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_006E:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+900]
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
je .L_0071
lea ebx, [LEX]
mov dword ptr [LEX+840072], ebx
.L_0071:
.L_0070:
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16544], 0
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16548], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16548]
mov dword ptr [ebx+16552], ecx
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [ecx+16548]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.L_0075:
mov ebx, dword ptr [ebp-4]
imul ebx, 4136
mov ecx, dword ptr [LEX+840072]
add ecx, ebx
lea ebx, [ecx+4136]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4132], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [ebp-8], ecx
.L_0073:
inc dword ptr [ebp-4]
.L_0072:
cmp dword ptr [ebp-4], 2
jle .L_0075
.L_0074:
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+16548]
mov dword ptr [ebx+4132], eax
mov dword ptr [ebp-4], 0
.L_0079:
mov eax, dword ptr [ebp-4]
imul eax, 4136
mov ebx, dword ptr [LEX+840072]
add ebx, eax
mov dword ptr [ebx], -1
.L_0077:
inc dword ptr [ebp-4]
.L_0076:
cmp dword ptr [ebp-4], 3
jle .L_0079
.L_0078:
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16556], 4294967295
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16560], 4294967295
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16564], 4294967295
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+16588], eax
cmp dword ptr [ebp+12], 0
je .L_007B
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax-32848]
mov dword ptr [ebx+16568], ecx
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx-32840]
mov dword ptr [ebx+16576], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax-32836]
mov dword ptr [ebx+16580], ecx
jmp .L_007A
.L_007B:
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16568], 1
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16576], 0
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16580], 0
.L_007A:
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16572], -1
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16612], 0
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16592], 0
cmp dword ptr [ENV+576], 0
jne .L_007D
cmp dword ptr [ebp+12], 0
je .L_007E
mov ecx, dword ptr [LEX+840072]
lea ebx, [ecx+16620]
mov dword ptr [ebp-12], ebx
jmp .L_0086
.L_007E:
mov dword ptr [ebp-12], 0
.L_0086:
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16616], ecx
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16596], 0
push 0
mov ecx, dword ptr [LEX+840072]
lea ebx, [ecx+16600]
push ebx
call DZSTRALLOCATE
add esp, 8
jmp .L_007C
.L_007D:
mov ebx, dword ptr [LEX+840072]
lea ecx, [ebx+16620]
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16616], ecx
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16596], 0
push 0
mov ecx, dword ptr [LEX+840072]
lea ebx, [ecx+16600]
push ebx
call DWSTRALLOCATE
add esp, 8
.L_007C:
cmp dword ptr [ebp+12], 0
je .L_0081
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx-24]
mov dword ptr [ecx+49392], eax
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [eax-20]
mov dword ptr [ecx+49396], ebx
jmp .L_0080
.L_0081:
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+49392], 0
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+49396], 0
.L_0080:
mov ebx, dword ptr [ENV+900]
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
je .L_0083
push 0
mov ecx, dword ptr [LEX+840072]
lea ebx, [ecx+49400]
push ebx
call DZSTRALLOCATE
add esp, 8
mov dword ptr [LEX+840076], 0
.L_0083:
.L_0082:
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+49412], 0
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
je .L_0085
call PPINIT
.L_0085:
.L_0084:
.L_006F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXEND
LEXEND:
.L_008D:
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 20
call PPEND
.L_008E:
ret
.balign 16

.globl LEXEATCHAR
LEXEATCHAR:
push ebx
.L_00C4:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16560], 4294967295
jne .L_00C7
call HSKIPCHAR
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+16556], 4294967295
jmp .L_00C6
.L_00C7:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16564], 4294967295
jne .L_00C8
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16560]
mov dword ptr [ebx+16556], ecx
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16560], 4294967295
jmp .L_00C6
.L_00C8:
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx+16560]
mov dword ptr [ebx+16556], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16564]
mov dword ptr [ebx+16560], ecx
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16564], 4294967295
.L_00C6:
.L_00C5:
pop ebx
ret
.balign 16

.globl LEXEATWHITESPACE
LEXEATWHITESPACE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00C9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16556], 4294967295
jne .L_00CC
call HREADCHAR
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16556], eax
.L_00CC:
.L_00CB:
.L_00CD:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16556], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16556], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .L_00CE
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+49412], -1
call LEXEATCHAR
call HREADCHAR
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+16556], eax
mov dword ptr [ebp-4], -1
jmp .L_00CD
.L_00CE:
.L_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXCURRENTCHAR
LEXCURRENTCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00DC:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16556], 4294967295
jne .L_00DF
call HREADCHAR
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16556], eax
.L_00DF:
.L_00DE:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16556]
mov dword ptr [ebp-4], ebx
.L_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETLOOKAHEADCHAR
LEXGETLOOKAHEADCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E0:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16560], 4294967295
jne .L_00E3
call HSKIPCHAR
call HREADCHAR
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16560], eax
.L_00E3:
.L_00E2:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16560]
mov dword ptr [ebp-4], ebx
.L_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETLOOKAHEADCHAR2
LEXGETLOOKAHEADCHAR2:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_00E4:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16564], 4294967295
jne .L_00E7
call HSKIPCHAR
call HREADCHAR
mov ebx, dword ptr [LEX+840072]
mov dword ptr [ebx+16564], eax
.L_00E7:
.L_00E6:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ebp-4], ebx
.L_00E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXNEXTTOKEN
LEXNEXTTOKEN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.L_02CE:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+49412]
mov dword ptr [ebx+4128], ecx
mov ecx, dword ptr [LEX+840072]
mov dword ptr [ecx+49412], 0
.L_02D0:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4112], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], 0
mov dword ptr [ebp-8], 0
.L_02D1:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .L_02D5
.L_02D7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
jmp .L_02CF
jmp .L_02D4
.L_02D8:
cmp dword ptr [ebp-8], 0
je .L_02DA
call LEXEATCHAR
jmp .L_02D3
.L_02DA:
.L_02D9:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_02DC
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-20], eax
jmp .L_02DE
.L_02E0:
jmp .L_02D2
jmp .L_02DD
.L_02E1:
call LEXGETLOOKAHEADCHAR2
cmp eax, 35
jne .L_02E3
jmp .L_02D2
.L_02E3:
.L_02E2:
jmp .L_02DD
.L_02DE:
mov eax, dword ptr [ebp-20]
add eax, 4294967261
cmp eax, 87
ja .L_02DD
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_02E4+eax*4-140]
.L_02E4:
.int .L_02E1
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02DD
.int .L_02E0
.int .L_02DD
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.int .L_02E0
.L_02DD:
call LEXEATCHAR
mov dword ptr [ebp-8], -1
jmp .L_02D3
jmp .L_02DB
.L_02DC:
jmp .L_02D2
.L_02DB:
jmp .L_02D4
.L_02E5:
call LEXEATCHAR
cmp dword ptr [ebp-4], 13
jne .L_02E7
call LEXCURRENTCHAR
cmp eax, 10
jne .L_02E9
call LEXEATCHAR
.L_02E9:
.L_02E8:
.L_02E7:
.L_02E6:
cmp dword ptr [ebp-8], 0
jne .L_02EB
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .L_02CF
jmp .L_02EA
.L_02EB:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_02ED
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16568]
.L_02ED:
.L_02EC:
mov dword ptr [ebp-8], 0
jmp .L_02D3
.L_02EA:
jmp .L_02D4
.L_02EE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
cmp dword ptr [ebp-8], 0
jne .L_02F0
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .L_02F2
jmp .L_02D2
.L_02F2:
.L_02F1:
.L_02F0:
.L_02EF:
call LEXEATCHAR
jmp .L_02D4
.L_02F3:
cmp dword ptr [ebp-8], 0
jne .L_02F5
jmp .L_02D2
.L_02F5:
.L_02F4:
call LEXEATCHAR
jmp .L_02D4
.L_02D5:
cmp dword ptr [ebp-16], 95
ja .L_02F3
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_02F6+eax*4]
.L_02F6:
.int .L_02D7
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02EE
.int .L_02E5
.int .L_02F3
.int .L_02F3
.int .L_02E5
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02EE
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02F3
.int .L_02D8
.L_02D4:
.L_02D3:
jmp .L_02D1
.L_02D2:
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [LEX+840072]
mov ebx, dword ptr [LEX+840072]
lea esi, [ebx+16620]
mov ebx, dword ptr [ecx+16616]
sub ebx, esi
add ebx, dword ptr [eax+49392]
dec ebx
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+49396], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .L_02F8
.L_02FA:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .L_02FC
call LEXGETLOOKAHEADCHAR
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
je .L_02FE
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 8
jmp .L_02F7
.L_02FE:
.L_02FD:
.L_02FC:
.L_02FB:
jmp .L_02FF
jmp .L_02F7
.L_0300:
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .L_0304
.L_0305:
cmp dword ptr [ebp-20], 104
je .L_0304
.L_0306:
cmp dword ptr [ebp-20], 79
je .L_0304
.L_0307:
cmp dword ptr [ebp-20], 111
je .L_0304
.L_0308:
cmp dword ptr [ebp-20], 66
je .L_0304
.L_0309:
cmp dword ptr [ebp-20], 98
je .L_0304
.L_030A:
cmp dword ptr [ebp-20], 48
jb .L_0303
cmp dword ptr [ebp-20], 55
ja .L_0303
.L_0304:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 8
jmp .L_0301
.L_0303:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+4112], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call LEXEATCHAR
.L_030B:
.L_0301:
jmp .L_02F7
.L_030C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 8
jmp .L_02F7
.L_030D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call READID
add esp, 8
not eax
test eax, eax
je .L_030F
jmp .L_02D0
.L_030F:
.L_030E:
jmp .L_02F7
.L_0310:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ENV+1092], 0
je .L_0311
mov dword ptr [ebp-20], 263
jmp .L_0352
.L_0311:
mov dword ptr [ebp-20], 262
.L_0352:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+576], 0
jne .L_0314
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call HREADSTRING
add esp, 12
jmp .L_0313
.L_0314:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call HREADWSTR
add esp, 12
.L_0313:
jmp .L_02F7
.L_0315:
call LEXGETLOOKAHEADCHAR
cmp eax, 34
je .L_0317
jmp .L_02FF
.L_0317:
.L_0316:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .L_0318
mov dword ptr [ebp-20], 263
jmp .L_0353
.L_0318:
mov dword ptr [ebp-20], 264
.L_0353:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+576], 0
jne .L_031B
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_031D
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_031C
.L_031D:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.L_031C:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADSTRING
add esp, 12
jmp .L_031A
.L_031B:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .L_031F
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .L_031E
.L_031F:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp+8]
lea eax, [esi+16]
mov dword ptr [ebp-24], eax
.L_031E:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADWSTR
add esp, 12
.L_031A:
jmp .L_02F7
.L_0320:
.L_02FF:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [esi]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4124], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 1
mov bl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call LEXEATCHAR
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .L_0322
.L_0324:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .L_0326
.L_0327:
call LEXCURRENTCHAR
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .L_032A
.L_032B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call LEXEATCHAR
jmp .L_0328
.L_032A:
cmp dword ptr [ebp-24], 62
jne .L_032C
.L_032D:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call LEXEATCHAR
jmp .L_0328
.L_032C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.L_032E:
.L_0328:
jmp .L_0325
.L_0326:
cmp dword ptr [ebp-4], 62
jne .L_032F
.L_0330:
mov eax, dword ptr [PARSER+152]
and eax, 512
test eax, eax
jne .L_0331
call LEXCURRENTCHAR
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .L_0354
.L_0331:
mov dword ptr [ebp-24], 0
.L_0354:
cmp dword ptr [ebp-24], 0
je .L_0334
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call LEXEATCHAR
jmp .L_0333
.L_0334:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.L_0333:
jmp .L_0325
.L_032F:
cmp dword ptr [ebp-4], 61
jne .L_0335
.L_0336:
call LEXCURRENTCHAR
cmp eax, 62
jne .L_0338
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call LEXEATCHAR
jmp .L_0337
.L_0338:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.L_0337:
.L_0335:
.L_0325:
jmp .L_0321
.L_0339:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .L_0321
.L_033A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
call LEXCURRENTCHAR
cmp eax, 62
jne .L_033C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 400
call LEXEATCHAR
.L_033C:
.L_033B:
jmp .L_0321
.L_033D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .L_033F
call LEXCURRENTCHAR
cmp eax, 39
jne .L_0341
call HMULTILINECOMMENT
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
jmp .L_02D0
.L_0341:
.L_0340:
.L_033F:
.L_033E:
jmp .L_0321
.L_0342:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .L_0321
.L_0343:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .L_0321
.L_0344:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .L_0321
.L_0345:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.L_0346:
call LEXCURRENTCHAR
mov dword ptr [ebp-24], eax
jmp .L_034A
.L_034C:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
jmp .L_0349
.L_034D:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 0
jmp .L_0347
jmp .L_0349
.L_034A:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .L_034D
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_034E+eax*4-36]
.L_034E:
.int .L_034C
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034D
.int .L_034C
.L_0349:
.L_0348:
jmp .L_0346
.L_0347:
jmp .L_0321
.L_034F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .L_0321
.L_0322:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .L_034F
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_0350+eax*4-36]
.L_0350:
.int .L_0345
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_0345
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_0342
.int .L_0344
.int .L_0344
.int .L_0339
.int .L_0339
.int .L_0344
.int .L_033A
.int .L_0344
.int .L_033D
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_0343
.int .L_0344
.int .L_0324
.int .L_0324
.int .L_0324
.int .L_034F
.int .L_0339
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_0344
.int .L_0339
.int .L_0344
.int .L_0339
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_034F
.int .L_0344
.int .L_034F
.int .L_0344
.L_0321:
jmp .L_02F7
.L_02F8:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .L_0320
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_0351+eax*4-132]
.L_0351:
.int .L_0315
.int .L_0310
.int .L_0320
.int .L_0315
.int .L_0320
.int .L_0300
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_02FA
.int .L_0320
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_030C
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
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
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_0320
.int .L_030D
.int .L_0320
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
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.int .L_030D
.L_02F7:
.L_02CF:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETTOKEN
LEXGETTOKEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0373:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .L_0376
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+840072]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 8
call PPCHECK
.L_0376:
.L_0375:
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.L_0374:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETCLASS
LEXGETCLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0377:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .L_037A
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+840072]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 8
call PPCHECK
.L_037A:
.L_0379:
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.L_0378:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETLOOKAHEAD
LEXGETLOOKAHEAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_037B:
cmp dword ptr [ebp+8], 3
jle .L_037E
jmp .L_037C
.L_037E:
.L_037D:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .L_0380
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.L_0380:
.L_037F:
mov ecx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .L_0382
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 8
.L_0382:
.L_0381:
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.L_037C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETLOOKAHEADCLASS
LEXGETLOOKAHEADCLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0383:
cmp dword ptr [ebp+8], 3
jle .L_0386
jmp .L_0384
.L_0386:
.L_0385:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .L_0388
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.L_0388:
.L_0387:
mov ecx, dword ptr [LEX+840072]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .L_038A
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 8
.L_038A:
.L_0389:
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.L_0384:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXPPONLYEMITTOKEN
LEXPPONLYEMITTOKEN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03AA:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .L_03AF
.L_03B0:
cmp dword ptr [ebp-4], 260
jne .L_03AE
.L_03AF:
jmp .L_03AB
jmp .L_03AC
.L_03AE:
cmp dword ptr [ebp-4], 256
je .L_03B2
.L_03B3:
cmp dword ptr [ebp-4], 257
jne .L_03B1
.L_03B2:
push -1
push offset PPONLY_LN
call fb_StrLen
add esp, 8
test eax, eax
jle .L_03B5
mov eax, dword ptr [ENV+860]
mov dword ptr [ebp-8], eax
push 1
push offset PPONLY_LN
push dword ptr [ebp-8]
call fb_PrintString
add esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 20
jmp .L_03B4
.L_03B5:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .L_03B7
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16572], 257
jne .L_03B9
mov eax, dword ptr [ENV+860]
mov dword ptr [ebp-8], eax
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-8]
call fb_PrintString
add esp, 12
.L_03B9:
.L_03B8:
.L_03B7:
.L_03B4:
jmp .L_03AB
.L_03B1:
.L_03AC:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4128], 0
je .L_03BC
push 0
push 2
push offset Lt_03BD
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 20
.L_03BC:
.L_03BB:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .L_03C1
.L_03C2:
cmp dword ptr [ebp-4], 263
je .L_03C1
.L_03C3:
cmp dword ptr [ebp-4], 264
jne .L_03C0
.L_03C1:
push 0
push -1
push 0
call LEXGETTOKEN
add esp, 4
push eax
call LEXGETSTRLITTEXT
add esp, 4
push eax
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 20
jmp .L_03BE
.L_03C0:
push 0
push -1
push 0
call LEXGETTEXT
push eax
push -1
push offset PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 20
.L_03C4:
.L_03BE:
.L_03AB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXPPONLYEMITTEXT
LEXPPONLYEMITTEXT:
push ebp
mov ebp, esp
sub esp, 12
.L_03C6:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push offset PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 20
.L_03C7:
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXSKIPTOKEN
LEXSKIPTOKEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_03C9:
push dword ptr [ebp+8]
call LEXCHECKTOKEN
add esp, 4
and dword ptr [ebp+8], -14337
cmp dword ptr [ENV+860], 0
jle .L_03CC
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16576], 0
jne .L_03CE
call LEXPPONLYEMITTOKEN
.L_03CE:
.L_03CD:
.L_03CC:
.L_03CB:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .L_03D1
.L_03D2:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_03D4
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16568]
.L_03D4:
.L_03D3:
.L_03D1:
.L_03CF:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [LEX+840072]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+16572], ecx
mov ecx, dword ptr [LEX+840072]
cmp dword ptr [ecx+16544], 0
jne .L_03D6
push dword ptr [ebp+8]
mov ecx, dword ptr [LEX+840072]
push dword ptr [ecx+16548]
call LEXNEXTTOKEN
add esp, 8
jmp .L_03D5
.L_03D6:
call HMOVEKDOWN
.L_03D5:
call PPCHECK
.L_03CA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXEATTOKEN
LEXEATTOKEN:
push ebp
mov ebp, esp
push ebx
.L_03D7:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_03DA
push 0
push 1025
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .L_03D9
.L_03DA:
push 0
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 4
push eax
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_03D9:
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 4
.L_03D8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl LEXGETTEXT
LEXGETTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_03DB:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .L_03DE
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .L_03DD
.L_03DE:
push 0
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 4
push eax
push 1025
push offset Lt_03DF
call fb_StrAssign
add esp, 20
mov eax, offset Lt_03DF
mov dword ptr [ebp-4], eax
.L_03DD:
.L_03DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_03DF,1025

.section .text
.balign 16

.globl LEXREADLINE
LEXREADLINE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.L_03E0:
cmp dword ptr [ebp+16], 0
jne .L_03E3
push 0
push 1
push offset Lt_0000
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_03E3:
.L_03E2:
.L_03E4:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16544], 0
jle .L_03E5
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03E9
.L_03EA:
cmp dword ptr [ebp-4], 257
je .L_03E9
.L_03EB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03E8
.L_03E9:
jmp .L_03E1
jmp .L_03E6
.L_03E8:
cmp dword ptr [ebp+16], 0
jne .L_03EE
push 0
push -1
push 1025
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_03EE:
.L_03ED:
.L_03EC:
.L_03E6:
call HMOVEKDOWN
jmp .L_03E4
.L_03E5:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .L_03F3
.L_03F4:
cmp dword ptr [ebp-4], 257
je .L_03F3
.L_03F5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .L_03F2
.L_03F3:
jmp .L_03E1
jmp .L_03F0
.L_03F2:
cmp dword ptr [ebp+16], 0
jne .L_03F8
push 0
push -1
push 1025
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_03F8:
.L_03F7:
.L_03F6:
.L_03F0:
.L_03FA:
call LEXCURRENTCHAR
mov dword ptr [Lt_040D], eax
mov eax, dword ptr [Lt_040D]
mov dword ptr [ebp-4], eax
jmp .L_03FE
.L_0400:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 256
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .L_03E1
jmp .L_03FD
.L_0401:
call LEXEATCHAR
cmp dword ptr [Lt_040D], 13
jne .L_0403
call LEXCURRENTCHAR
cmp eax, 10
jne .L_0405
call LEXEATCHAR
.L_0405:
.L_0404:
.L_0403:
.L_0402:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 257
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .L_03E1
jmp .L_03FD
.L_0406:
mov eax, dword ptr [ebp+8]
cmp dword ptr [Lt_040D], eax
jne .L_0408
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+4], 6
jmp .L_03E1
.L_0408:
.L_0407:
jmp .L_03FD
.L_03FE:
cmp dword ptr [ebp-4], 13
ja .L_0406
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.L_0409+ebx*4]
.L_0409:
.int .L_0400
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0406
.int .L_0401
.int .L_0406
.int .L_0406
.int .L_0401
.L_03FD:
call LEXEATCHAR
cmp dword ptr [ebp+16], 0
jne .L_040B
push 0
push -1
push -1
push dword ptr [Lt_040D]
push 1
call fb_CHR
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
.L_040B:
.L_040A:
.L_03FC:
jmp .L_03FA
.L_03FB:
.L_03E1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_040D,4

.section .text
.balign 16

.globl LEXSKIPLINE
LEXSKIPLINE:
.L_040E:
push -1
push 0
push 4294967295
call LEXREADLINE
add esp, 12
.L_040F:
ret
.balign 16

.globl LEXPEEKCURRENTLINE
LEXPEEKCURRENTLINE:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0410:
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
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ENV+576], 0
je .L_0413
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
jmp .L_0411
.L_0413:
.L_0412:
push dword ptr [ENV+300]
call fb_FileTell
add esp, 4
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16588], 0
je .L_0415
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx-20]
add eax, -512
mov dword ptr [ebp-28], eax
jmp .L_0414
.L_0415:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+49396]
add ebx, -512
mov dword ptr [ebp-28], ebx
.L_0414:
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .L_0417
mov ebx, dword ptr [ebp-28]
add dword ptr [ebp-36], ebx
mov dword ptr [ebp-28], 0
.L_0417:
.L_0416:
push 1025
push offset Lt_044F
mov ebx, dword ptr [ebp-28]
inc ebx
push ebx
push dword ptr [ENV+300]
call fb_FileGetStr
add esp, 16
test eax, eax
je .L_0418
push 0
push 0
push offset Lt_0419
push 2450
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_0418:
push dword ptr [ebp-32]
push dword ptr [ENV+300]
call fb_FileSeek
add esp, 8
test eax, eax
je .L_041A
push 0
push 0
push offset Lt_0419
push 2451
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_041A:
mov eax, offset Lt_044F
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .L_041C
dec dword ptr [ebp-44]
.L_041D:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .L_0422
.L_0423:
cmp dword ptr [ebp-48], 10
jne .L_0421
.L_0422:
jmp .L_041E
.L_0421:
.L_0420:
cmp dword ptr [ebp-36], 0
jg .L_0425
jmp .L_041E
.L_0425:
.L_0424:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.L_041F:
jmp .L_041D
.L_041E:
inc dword ptr [ebp-44]
.L_041C:
.L_041B:
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
push 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.L_0426:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .L_042B
.L_042C:
cmp dword ptr [ebp-48], 13
je .L_042B
.L_042D:
cmp dword ptr [ebp-48], 10
jne .L_042A
.L_042B:
jmp .L_0427
.L_042A:
.L_0429:
push 0
push -1
push dword ptr [ebp-48]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-40], 0
jle .L_042F
push 0
push -1
cmp dword ptr [ebp-48], 9
jne .L_0430
mov dword ptr [ebp-52], 9
jmp .L_044E
.L_0430:
mov dword ptr [ebp-52], 32
.L_044E:
push dword ptr [ebp-52]
push 1
call fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
add esp, 20
dec dword ptr [ebp-40]
.L_042F:
.L_042E:
inc dword ptr [ebp-44]
.L_0428:
jmp .L_0426
.L_0427:
cmp dword ptr [ebp+12], 0
je .L_0433
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-52], 0
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-56], eax
jmp .L_0435
.L_0438:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-60], bl
movzx ebx, byte ptr [ebp-60]
cmp ebx, 9
je .L_043C
.L_043D:
movzx ebx, byte ptr [ebp-60]
cmp ebx, 32
jne .L_043B
.L_043C:
jmp .L_0439
.L_043B:
jmp .L_0437
.L_043E:
.L_0439:
.L_0436:
inc dword ptr [ebp-52]
.L_0435:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-52], ebx
jle .L_0438
.L_0437:
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 8
cmp dword ptr [ebp-52], eax
jge .L_0440
push 0
push -1
push -1
mov eax, dword ptr [ebp-52]
inc eax
push eax
lea eax, [ebp-24]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
jmp .L_043F
.L_0440:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_043F:
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-52], eax
jmp .L_0441
.L_0444:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-52]
mov bl, byte ptr [eax]
mov byte ptr [ebp-56], bl
movzx ebx, byte ptr [ebp-56]
cmp ebx, 9
je .L_0448
.L_0449:
movzx ebx, byte ptr [ebp-56]
cmp ebx, 32
jne .L_0447
.L_0448:
jmp .L_0445
.L_0447:
jmp .L_0443
.L_044A:
.L_0445:
.L_0442:
dec dword ptr [ebp-52]
.L_0441:
cmp dword ptr [ebp-52], 0
jge .L_0444
.L_0443:
cmp dword ptr [ebp-52], 0
jle .L_044C
push 0
push -1
mov ebx, dword ptr [ebp-52]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_044C:
.L_044B:
.L_0433:
.L_0432:
push 0
push 2
push offset Lt_044D
push -1
push dword ptr [ebp+8]
call fb_StrConcatByref
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
.L_0411:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_044F,1025

.section .text
.balign 16

.globl LEXCHECKTOKEN
LEXCHECKTOKEN:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.L_0450:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0453
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .L_0455
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .L_0457
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_045B
push -1
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_0459
push 0
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_0484
.L_0459:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_0484:
lea eax, [ebp-12]
push eax
push -1
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_0458
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
jmp .L_0456
.L_0457:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .L_0460
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
jne .L_0462
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_045B
push -1
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_0463
push 0
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_0485
.L_0463:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_0485:
lea eax, [ebp-12]
push eax
push -1
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_0458
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_0462:
.L_0461:
jmp .L_0456
.L_0460:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .L_0469
mov eax, dword ptr [ENV+1040]
and eax, 8388608
test eax, eax
je .L_046B
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
je .L_046D
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_045B
push -1
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_046E
push 0
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_0486
.L_046E:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_0486:
lea eax, [ebp-12]
push eax
push -1
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_0458
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_046D:
.L_046C:
jmp .L_046A
.L_046B:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
jne .L_0475
mov ebx, dword ptr [ENV+200]
and ebx, 256
test ebx, ebx
je .L_0477
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_045B
push -1
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .L_0478
push 0
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_0487
.L_0478:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_0487:
lea eax, [ebp-12]
push eax
push -1
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_0458
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0477:
.L_0476:
jmp .L_0474
.L_0475:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset Lt_045B
push -1
push -1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .L_047E
push 0
push -1
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .L_0488
.L_047E:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.L_0488:
lea eax, [ebp-12]
push eax
push -1
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_0458
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.L_0474:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.L_046A:
.L_0469:
.L_0456:
.L_0455:
.L_0454:
.L_0453:
.L_0452:
.L_0451:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HMATCHIDORKW
HMATCHIDORKW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.L_0489:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .L_048E
.L_048F:
cmp dword ptr [ebp-8], 2
je .L_048E
.L_0490:
cmp dword ptr [ebp-8], 1
jne .L_048D
.L_048E:
push 0
push dword ptr [ebp+8]
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .L_0492
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_048A
.L_0492:
.L_0491:
.L_048D:
.L_048B:
mov dword ptr [ebp-4], 0
.L_048A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HMATCH
HMATCH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.L_0493:
push 0
call LEXGETTOKEN
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .L_0496
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], -1
jmp .L_0495
.L_0496:
mov dword ptr [ebp-4], 0
.L_0495:
.L_0494:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__lex:
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
HCOLLECTCHARFORDEBUGOUTPUT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_008F:
cmp dword ptr [ebp+8], 32
jae .L_0092
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .L_0094
.L_0096:
jmp .L_0090
jmp .L_0093
.L_0097:
jmp .L_0093
.L_0098:
mov dword ptr [ebp+8], 63
jmp .L_0093
.L_0094:
cmp dword ptr [ebp-4], 13
ja .L_0098
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_009A+eax*4]
.L_009A:
.int .L_0096
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0098
.int .L_0097
.int .L_0096
.int .L_0097
.int .L_0097
.int .L_0096
.L_0093:
jmp .L_0091
.L_0092:
cmp dword ptr [ebp+8], 255
jbe .L_009B
mov dword ptr [ebp+8], 63
.L_009B:
.L_0091:
push dword ptr [ebp+8]
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRCONCATASSIGNC
add esp, 8
.L_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADCHAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_009C:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jle .L_009F
cmp dword ptr [ENV+576], 0
jne .L_00A1
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16596]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .L_00A0
.L_00A1:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16596]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_00A0:
cmp dword ptr [ENV+148], 0
je .L_00A3
cmp dword ptr [ENV+900], 0
jne .L_00A5
cmp dword ptr [LEX+840076], 0
jne .L_00A7
mov dword ptr [LEX+840076], -1
push offset Lt_00A8
mov eax, dword ptr [LEX+840072]
lea ebx, [eax+49400]
push ebx
call DZSTRCONCATASSIGN
add esp, 8
.L_00A7:
.L_00A6:
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 4
.L_00A5:
.L_00A4:
.L_00A3:
.L_00A2:
jmp .L_009E
.L_009F:
mov ebx, dword ptr [LEX+840072]
cmp dword ptr [ebx+16612], 0
jne .L_00AA
push dword ptr [ENV+300]
call fb_FileEof
add esp, 4
test eax, eax
jne .L_00AC
push dword ptr [ENV+300]
call fb_FileTell
add esp, 4
mov ebx, eax
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+49392], ebx
mov ebx, dword ptr [ENV+576]
mov dword ptr [ebp-12], ebx
jmp .L_00AE
.L_00B0:
push 8193
mov ebx, dword ptr [LEX+840072]
lea eax, [ebx+16620]
push eax
push 0
push dword ptr [ENV+300]
call fb_FileGetStr
add esp, 16
test eax, eax
jne .L_00B2
push dword ptr [ENV+300]
call fb_FileTell
add esp, 4
mov ebx, dword ptr [LEX+840072]
mov esi, dword ptr [ebx+49392]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov esi, eax
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+16612], esi
mov esi, dword ptr [LEX+840072]
lea eax, [esi+16620]
mov esi, dword ptr [LEX+840072]
mov dword ptr [esi+16616], eax
.L_00B2:
.L_00B1:
jmp .L_00AD
.L_00B3:
call LEXREADUTF8
jmp .L_00AD
.L_00B4:
call LEXREADUTF16LE
jmp .L_00AD
.L_00B5:
call LEXREADUTF16BE
jmp .L_00AD
.L_00B6:
call LEXREADUTF32LE
jmp .L_00AD
.L_00B7:
call LEXREADUTF32BE
jmp .L_00AD
.L_00AE:
cmp dword ptr [ebp-12], 5
ja .L_00AD
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00B8+eax*4]
.L_00B8:
.int .L_00B0
.int .L_00B3
.int .L_00B4
.int .L_00B5
.int .L_00B6
.int .L_00B7
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
.L_00A9:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16612], 0
jle .L_00BA
cmp dword ptr [ENV+576], 0
jne .L_00BC
mov eax, dword ptr [LEX+840072]
mov esi, dword ptr [eax+16616]
movzx eax, byte ptr [esi]
mov dword ptr [ebp-8], eax
jmp .L_00BB
.L_00BC:
mov eax, dword ptr [LEX+840072]
mov esi, dword ptr [eax+16616]
mov eax, dword ptr [esi]
mov dword ptr [ebp-8], eax
.L_00BB:
jmp .L_00B9
.L_00BA:
mov dword ptr [ebp-8], 0
.L_00B9:
cmp dword ptr [ENV+148], 0
je .L_00BE
cmp dword ptr [ENV+900], 0
jne .L_00C0
cmp dword ptr [LEX+840076], 0
je .L_00C2
mov dword ptr [LEX+840076], 0
push offset Lt_00C3
mov eax, dword ptr [LEX+840072]
lea esi, [eax+49400]
push esi
call DZSTRCONCATASSIGN
add esp, 8
.L_00C2:
.L_00C1:
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 4
.L_00C0:
.L_00BF:
.L_00BE:
.L_00BD:
.L_009E:
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.L_009D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSKIPCHAR:
.L_00D1:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jle .L_00D4
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16592]
cmp dword ptr [ENV+576], 0
jne .L_00D6
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16596]
jmp .L_00D5
.L_00D6:
mov eax, dword ptr [LEX+840072]
add dword ptr [eax+16596], 4
.L_00D5:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_00D8
mov eax, dword ptr [LEX+840072]
mov dword ptr [eax+16580], 0
.L_00D8:
.L_00D7:
jmp .L_00D3
.L_00D4:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16556], 0
je .L_00D9
mov eax, dword ptr [LEX+840072]
dec dword ptr [eax+16612]
cmp dword ptr [ENV+576], 0
jne .L_00DB
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16616]
jmp .L_00DA
.L_00DB:
mov eax, dword ptr [LEX+840072]
add dword ptr [eax+16616], 4
.L_00DA:
.L_00D9:
.L_00D3:
.L_00D2:
ret
.balign 16
HREADIDENTIFIER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.L_00E8:
call LEXCURRENTCHAR
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call LEXEATCHAR
mov dword ptr [ebp-4], 0
.L_00EA:
call LEXCURRENTCHAR
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .L_00EE
.L_00F0:
jmp .L_00ED
.L_00F1:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .L_00F3
jmp .L_00EB
.L_00F3:
.L_00F2:
jmp .L_00ED
.L_00F4:
jmp .L_00EB
jmp .L_00ED
.L_00EE:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .L_00F4
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00F5+eax*4-184]
.L_00F5:
.int .L_00F1
.int .L_00F4
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F4
.int .L_00F0
.int .L_00F4
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.int .L_00F0
.L_00ED:
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
jne .L_00F7
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .L_00F9
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .L_00FB
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call ERRREPORTWARN
add esp, 16
.L_00FB:
.L_00FA:
mov dword ptr [ebp-4], -1
jmp .L_00F8
.L_00F9:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.L_00F8:
.L_00F7:
.L_00F6:
.L_00EC:
jmp .L_00EA
.L_00EB:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .L_00FD
call LEXCURRENTCHAR
mov dword ptr [ebp-8], eax
jmp .L_00FF
.L_0101:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ENV+1044]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call LEXEATCHAR
jmp .L_00FE
.L_0102:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call LEXEATCHAR
jmp .L_00FE
.L_0103:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call LEXEATCHAR
jmp .L_00FE
.L_0104:
call LEXGETLOOKAHEADCHAR
cmp eax, 35
je .L_0106
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call LEXEATCHAR
.L_0106:
.L_0105:
jmp .L_00FE
.L_0107:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call LEXEATCHAR
jmp .L_00FE
.L_00FF:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .L_00FE
mov eax, dword ptr [ebp-8]
jmp dword ptr [.L_0108+eax*4-132]
.L_0108:
.int .L_0103
.int .L_00FE
.int .L_0104
.int .L_0107
.int .L_0101
.int .L_0102
.L_00FE:
.L_00FD:
.L_00FC:
.L_00E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADNONDECNUMBER:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_0109:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
call LEXGETLOOKAHEADCHAR
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_010C
.L_010E:
mov dword ptr [ebp-16], 79
jmp .L_010B
.L_010F:
call LEXEATCHAR
jmp .L_010B
.L_010C:
mov eax, dword ptr [ebp-48]
add eax, 4294967248
cmp eax, 7
ja .L_010F
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0110+eax*4-192]
.L_0110:
.int .L_010E
.int .L_010E
.int .L_010E
.int .L_010E
.int .L_010E
.int .L_010E
.int .L_010E
.int .L_010E
.L_010B:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-48], eax
jmp .L_0112
.L_0114:
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
call LEXEATCHAR
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .L_0116
.L_0117:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_0117
.L_0118:
.L_0116:
.L_0115:
.L_0119:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .L_011F
cmp dword ptr [ebp-16], 102
jbe .L_011E
.L_011F:
cmp dword ptr [ebp-16], 65
jb .L_0120
cmp dword ptr [ebp-16], 70
jbe .L_011E
.L_0120:
cmp dword ptr [ebp-16], 48
jb .L_011D
cmp dword ptr [ebp-16], 57
ja .L_011D
.L_011E:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0122
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
jbe .L_0124
add dword ptr [ebp-16], 4294967289
.L_0124:
.L_0123:
cmp dword ptr [ebp-16], 16
jbe .L_0126
add dword ptr [ebp-16], 4294967264
.L_0126:
.L_0125:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .L_0128
cmp dword ptr [ebp-32], 9
jne .L_012A
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
jmp .L_0129
.L_012A:
cmp dword ptr [ebp-32], 17
jne .L_012B
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .L_012D
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_012D:
.L_012C:
mov dword ptr [ebp-40], -1
jmp .L_0129
.L_012B:
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
.L_0129:
jmp .L_0127
.L_0128:
cmp dword ptr [ebp-32], 5
jne .L_012F
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_012F:
.L_012E:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_0127:
.L_0122:
.L_0121:
jmp .L_011C
.L_011D:
jmp .L_011A
.L_0130:
.L_011C:
.L_011B:
jmp .L_0119
.L_011A:
jmp .L_0111
.L_0131:
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
call LEXEATCHAR
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .L_0133
.L_0134:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_0135
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_0134
.L_0135:
.L_0133:
.L_0132:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_0136:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .L_013A
cmp dword ptr [ebp-16], 55
ja .L_013A
.L_013B:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_013D
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
jle .L_013F
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-52], eax
jmp .L_0141
.L_0143:
cmp dword ptr [ebp-20], 51
jbe .L_0145
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
jmp .L_0144
.L_0145:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_0144:
jmp .L_0140
.L_0146:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_0147
mov dword ptr [ebp-56], 24
jmp .L_0497
.L_0147:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-56], ebx
.L_0497:
mov ebx, dword ptr [ebp-56]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .L_014A
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.L_014A:
.L_0149:
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
jmp .L_0140
.L_014B:
cmp dword ptr [ebp-20], 49
jbe .L_014D
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_014F
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_014F:
.L_014E:
mov dword ptr [ebp-40], -1
jmp .L_014C
.L_014D:
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
.L_014C:
jmp .L_0140
.L_0150:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_0152
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0152:
.L_0151:
mov dword ptr [ebp-40], -1
jmp .L_0140
.L_0153:
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
jmp .L_0140
.L_0141:
mov ebx, dword ptr [ebp-52]
add ebx, 4294967285
cmp ebx, 12
ja .L_0153
mov ebx, dword ptr [ebp-52]
jmp dword ptr [.L_0154+ebx*4-44]
.L_0154:
.int .L_0143
.int .L_0146
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_0153
.int .L_014B
.int .L_0150
.L_0140:
jmp .L_013E
.L_013F:
cmp dword ptr [ebp-32], 6
jne .L_0156
cmp dword ptr [ebp-20], 49
jbe .L_0158
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_0158:
.L_0157:
jmp .L_0155
.L_0156:
cmp dword ptr [ebp-32], 7
jne .L_0159
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.L_0159:
.L_0155:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.L_013E:
.L_013D:
.L_013C:
jmp .L_0139
.L_013A:
jmp .L_0137
.L_015A:
.L_0139:
.L_0138:
jmp .L_0136
.L_0137:
jmp .L_0111
.L_015B:
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
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_015D
.L_015E:
call LEXCURRENTCHAR
cmp eax, 48
jne .L_015F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
mov dword ptr [ebp-36], -1
jmp .L_015E
.L_015F:
.L_015D:
.L_015C:
.L_0160:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .L_0165
.L_0166:
cmp dword ptr [ebp-16], 49
jne .L_0164
.L_0165:
call LEXEATCHAR
mov dword ptr [ebp-36], -1
cmp dword ptr [ebp-40], 0
jne .L_0168
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
jle .L_016A
cmp dword ptr [ebp-32], 33
jne .L_016C
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
jmp .L_016B
.L_016C:
cmp dword ptr [ebp-32], 65
jne .L_016D
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .L_016F
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_016F:
.L_016E:
mov dword ptr [ebp-40], -1
jmp .L_016B
.L_016D:
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
.L_016B:
jmp .L_0169
.L_016A:
cmp dword ptr [ebp-32], 17
jne .L_0171
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.L_0171:
.L_0170:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_0169:
.L_0168:
.L_0167:
jmp .L_0163
.L_0164:
jmp .L_0161
.L_0172:
.L_0163:
.L_0162:
jmp .L_0160
.L_0161:
jmp .L_0111
.L_0173:
jmp .L_010A
jmp .L_0111
.L_0112:
mov eax, dword ptr [ebp-48]
add eax, 4294967230
cmp eax, 45
ja .L_0173
mov eax, dword ptr [ebp-48]
jmp dword ptr [.L_0174+eax*4-264]
.L_0174:
.int .L_015B
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0114
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0131
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_015B
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0114
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0173
.int .L_0131
.L_0111:
cmp dword ptr [ebp-32], 0
jne .L_0176
cmp dword ptr [ebp-36], 0
jne .L_0178
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .L_017A
push 0
push 1
push 0
push 48
call ERRREPORTWARN
add esp, 16
.L_017A:
.L_0179:
.L_0178:
.L_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.L_0176:
.L_0175:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .L_017B
mov dword ptr [ebp-44], 24
jmp .L_0498
.L_017B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-44], ebx
.L_0498:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .L_017E
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .L_017D
.L_017E:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.L_017D:
.L_010A:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADFLOATNUMBER:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.L_017F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ENV+1072]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4112]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.L_0181:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .L_0185
cmp dword ptr [ebp-4], 57
ja .L_0185
.L_0186:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_0188
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_0188:
.L_0187:
jmp .L_0184
.L_0185:
jmp .L_0182
.L_0189:
.L_0184:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .L_018B
cmp dword ptr [ebp-12], 0
jne .L_018D
mov dword ptr [ebp-12], -1
jmp .L_018C
.L_018D:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_018F
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_018F:
.L_018E:
.L_018C:
.L_018B:
.L_018A:
.L_0183:
jmp .L_0181
.L_0182:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .L_0190
mov dword ptr [ebp-16], 1
jmp .L_0499
.L_0190:
mov dword ptr [ebp-16], 0
.L_0499:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+4112], eax
jle .L_0193
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.L_0193:
.L_0192:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .L_0195
.L_0197:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0199
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.L_0199:
.L_0198:
cmp dword ptr [ebp-12], 0
jne .L_019B
cmp dword ptr [ebp+20], 0
jne .L_019D
mov dword ptr [ebp-4], 101
.L_019D:
.L_019C:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.L_019B:
.L_019A:
call LEXEATCHAR
call LEXCURRENTCHAR
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
je .L_019F
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_01A1
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.L_01A1:
.L_01A0:
.L_019F:
.L_019E:
.L_01A2:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .L_01A6
.L_01A8:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .L_01AA
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_01AA:
.L_01A9:
jmp .L_01A5
.L_01AB:
jmp .L_01A3
jmp .L_01A5
.L_01A6:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .L_01AB
mov eax, dword ptr [ebp-24]
jmp dword ptr [.L_01AC+eax*4-192]
.L_01AC:
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.int .L_01A8
.L_01A5:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .L_01AE
cmp dword ptr [ebp-12], 0
jne .L_01B0
mov dword ptr [ebp-12], -1
jmp .L_01AF
.L_01B0:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .L_01B2
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_01B2:
.L_01B1:
.L_01AF:
.L_01AE:
.L_01AD:
.L_01A4:
jmp .L_01A2
.L_01A3:
jmp .L_0194
.L_0195:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .L_0194
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01B3+eax*4-272]
.L_01B3:
.int .L_0197
.int .L_0197
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0194
.int .L_0197
.int .L_0197
.L_0194:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
jmp .L_01B5
.L_01B7:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .L_01B9
call LEXEATCHAR
.L_01B9:
.L_01B8:
jmp .L_01B4
.L_01BA:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01BC
call LEXEATCHAR
.L_01BC:
.L_01BB:
jmp .L_01B4
.L_01BD:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .L_01BF
call LEXEATCHAR
.L_01BF:
.L_01BE:
jmp .L_01B4
.L_01B5:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .L_01B4
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01C0+eax*4-132]
.L_01C0:
.int .L_01BA
.int .L_01B4
.int .L_01BD
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B7
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B4
.int .L_01B7
.L_01B4:
cmp dword ptr [ebp+20], 0
jne .L_01C2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4112]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .L_01C4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.L_01C4:
.L_01C3:
.L_01C2:
.L_01C1:
.L_0180:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
READNUMBERCHARS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.L_01C5:
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
.L_01C7:
call LEXCURRENTCHAR
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .L_01CB
.L_01CD:
call LEXEATCHAR
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
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
je .L_01CF
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
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
.L_01CF:
.L_01CE:
jmp .L_01CA
.L_01D0:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .L_01D2
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01D4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+4112]
.L_01D4:
.L_01D3:
mov dword ptr [ebp-24], -1
.L_01D2:
.L_01D1:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call HREADFLOATNUMBER
add esp, 16
jmp .L_01C8
jmp .L_01CA
.L_01D5:
jmp .L_01C8
jmp .L_01CA
.L_01CB:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .L_01D5
mov ecx, dword ptr [ebp-20]
jmp dword ptr [.L_01D6+ecx*4-184]
.L_01D6:
.int .L_01D0
.int .L_01D5
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01CD
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D0
.int .L_01D0
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D5
.int .L_01D0
.int .L_01D0
.L_01CA:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .L_01D8
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01DA
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4112]
mov dword ptr [ebp-20], ecx
jmp .L_01DC
.L_01DE:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E0
ja .L_04A2
cmp dword ptr [ecx], 32767
jbe .L_01E0
.L_04A2:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.L_01E0:
.L_01DF:
jmp .L_01DB
.L_01E1:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .L_01DB
.L_01E2:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E4
ja .L_04A3
cmp dword ptr [ecx], 2147483647
jbe .L_01E4
.L_04A3:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .L_01E6
ja .L_04A4
cmp dword ptr [ecx], 4294967295
jbe .L_01E6
.L_04A4:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01E5
.L_01E6:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.L_01E5:
.L_01E4:
.L_01E3:
jmp .L_01DB
.L_01E7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .L_01DB
.L_01E8:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .L_01EA
ja .L_04A5
cmp dword ptr [ecx], 4294967295
jbe .L_01EA
.L_04A5:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.L_01EA:
.L_01E9:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .L_01DB
.L_01EB:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01ED
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .L_04A6
jb .L_04A7
cmp dword ptr [ebp-12], 2576980377
ja .L_04A6
.L_04A7:
xor eax, eax
.L_04A6:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .L_04A9
cmp esi, 0
je .L_04A8
.L_04A9:
xor ebx, ebx
.L_04A8:
or eax, ebx
je .L_01EF
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.L_01EF:
.L_01EE:
.L_01ED:
.L_01EC:
jmp .L_01DB
.L_01F0:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .L_01F2
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.L_01F2:
.L_01F1:
jmp .L_01DB
.L_01DC:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .L_01DB
mov eax, dword ptr [ebp-20]
jmp dword ptr [.L_01F3+eax*4-20]
.L_01F3:
.int .L_01DE
.int .L_01E1
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01E2
.int .L_01E7
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01DB
.int .L_01E8
.int .L_01EB
.int .L_01F0
.L_01DB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4112], 64
jne .L_01F5
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .L_01F7
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .L_01F6
.L_01F7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .L_01F9
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_01F9:
.L_01F8:
.L_01F6:
.L_01F5:
.L_01F4:
.L_01DA:
.L_01D9:
.L_01D8:
.L_01D7:
.L_01C9:
jmp .L_01C7
.L_01C8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4112], 0
jne .L_01FB
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
.L_01FB:
.L_01FA:
.L_01C6:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADNUMBER:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.L_01FC:
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
mov dword ptr [ebx+4112], 0
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
jmp .L_01FF
.L_0201:
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call READNUMBERCHARS
add esp, 20
jmp .L_01FE
.L_0202:
call LEXEATCHAR
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call HREADFLOATNUMBER
add esp, 16
jmp .L_01FE
.L_0203:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
lea eax, [ebp-20]
push eax
call HREADNONDECNUMBER
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .L_01FE
.L_01FF:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .L_01FE
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_0204+eax*4-152]
.L_0204:
.int .L_0203
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_01FE
.int .L_0202
.int .L_01FE
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.int .L_0201
.L_01FE:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .L_0207
.L_0208:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1048]
mov dword ptr [edx+8], eax
jmp .L_0205
.L_0207:
cmp dword ptr [ebp-28], 6
jne .L_0209
.L_020A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1052]
mov dword ptr [eax+8], edx
jmp .L_0205
.L_0209:
cmp dword ptr [ebp-28], 11
jne .L_020B
.L_020C:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1056]
mov dword ptr [edx+8], eax
jmp .L_0205
.L_020B:
cmp dword ptr [ebp-28], 12
jne .L_020D
.L_020E:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1060]
mov dword ptr [eax+8], edx
jmp .L_0205
.L_020D:
cmp dword ptr [ebp-28], 13
jne .L_020F
.L_0210:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+1064]
mov dword ptr [edx+8], eax
jmp .L_0205
.L_020F:
cmp dword ptr [ebp-28], 14
jne .L_0211
.L_0212:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1068]
mov dword ptr [eax+8], edx
.L_0211:
.L_0205:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .L_0213
mov dword ptr [ebp-24], 24
jmp .L_04AA
.L_0213:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.L_04AA:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [SYMB_DTYPETB+edx], 1
je .L_0216
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .L_0218
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_021A
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .L_021E
.L_021F:
cmp dword ptr [ebp-28], 117
jne .L_021D
.L_021E:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call TYPETOUNSIGNED
add esp, 4
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.L_021D:
.L_021B:
.L_021A:
.L_0219:
call LEXCURRENTCHAR
mov dword ptr [ebp-28], eax
jmp .L_0221
.L_0223:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .L_0225
call LEXEATCHAR
call LEXCURRENTCHAR
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
je .L_0227
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
je .L_0228
mov dword ptr [ebp-36], 14
jmp .L_04AB
.L_0228:
mov dword ptr [ebp-36], 13
.L_04AB:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .L_0226
.L_0227:
cmp dword ptr [ebp-12], 0
jb .L_022B
ja .L_04B0
cmp dword ptr [ebp-16], 4294967295
jbe .L_022B
.L_04B0:
cmp dword ptr [ebp-8], 0
jne .L_022D
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_022F
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_022F:
.L_022E:
.L_022D:
.L_022C:
.L_022B:
.L_022A:
cmp dword ptr [ebp-4], 0
je .L_0230
mov dword ptr [ebp-36], 12
jmp .L_04AC
.L_0230:
mov dword ptr [ebp-36], 11
.L_04AC:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.L_0226:
.L_0225:
.L_0224:
jmp .L_0220
.L_0232:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0234
cmp dword ptr [ebp-4], 0
jne .L_0236
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.L_0236:
.L_0235:
.L_0234:
.L_0233:
jmp .L_0220
.L_0237:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .L_0239
cmp dword ptr [ebp-4], 0
jne .L_023B
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call LEXEATCHAR
.L_023B:
.L_023A:
.L_0239:
.L_0238:
jmp .L_0220
.L_023C:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [ENV+1044]
and edx, 480
je .L_023D
mov dword ptr [ebp-36], 24
jmp .L_04AD
.L_023D:
mov edx, dword ptr [ENV+1044]
and edx, 31
mov dword ptr [ebp-36], edx
.L_04AD:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .L_0241
.L_0242:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B1
jb .L_04B2
cmp dword ptr [ebp-16], 65535
ja .L_04B1
.L_04B2:
xor eax, eax
.L_04B1:
mov dword ptr [ebp-32], eax
jmp .L_023F
.L_0241:
cmp dword ptr [ebp-40], 4
jne .L_0243
.L_0244:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .L_04B3
jb .L_04B4
cmp dword ptr [ebp-16], 4294967295
ja .L_04B3
.L_04B4:
xor eax, eax
.L_04B3:
mov dword ptr [ebp-32], eax
.L_0243:
.L_023F:
cmp dword ptr [ebp-32], 0
je .L_0246
cmp dword ptr [ebp-8], 0
jne .L_0248
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .L_024A
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_024A:
.L_0249:
.L_0248:
.L_0247:
.L_0246:
.L_0245:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+1044]
mov dword ptr [eax+8], edx
call LEXEATCHAR
jmp .L_0220
.L_024B:
cmp dword ptr [ebp-12], 0
jb .L_024D
ja .L_04B5
cmp dword ptr [ebp-16], 4294967295
jbe .L_024D
.L_04B5:
cmp dword ptr [ebp-8], 0
jne .L_024F
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .L_0251
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.L_0251:
.L_0250:
.L_024F:
.L_024E:
.L_024D:
.L_024C:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call LEXEATCHAR
jmp .L_0220
.L_0252:
cmp dword ptr [ebp-4], 0
jne .L_0254
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.L_0254:
.L_0253:
jmp .L_0220
.L_0255:
cmp dword ptr [ebp-4], 0
jne .L_0257
call LEXGETLOOKAHEADCHAR
cmp eax, 35
je .L_0259
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call LEXEATCHAR
.L_0259:
.L_0258:
.L_0257:
.L_0256:
jmp .L_0220
.L_0221:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .L_0220
mov eax, dword ptr [ebp-28]
jmp dword ptr [.L_025A+eax*4-132]
.L_025A:
.int .L_0252
.int .L_0220
.int .L_0255
.int .L_0220
.int .L_023C
.int .L_024B
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0237
.int .L_0220
.int .L_0232
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0223
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0237
.int .L_0220
.int .L_0232
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0220
.int .L_0223
.L_0220:
.L_0218:
.L_0217:
.L_0216:
.L_0215:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.L_01FD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADSTRING:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_025B:
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
je .L_025E
call LEXCURRENTCHAR
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_025E:
.L_025D:
call LEXEATCHAR
.L_025F:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_0263
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_0265
cmp dword ptr [ebp-16], 0
jne .L_0267
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0267:
.L_0266:
.L_0265:
.L_0264:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_0269
jmp .L_0260
.L_0269:
jmp .L_0262
.L_0263:
cmp dword ptr [ebp-20], 27
jne .L_026A
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_026C
cmp dword ptr [ebp-16], 0
jne .L_026E
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_026E:
.L_026D:
.L_026C:
.L_026B:
jmp .L_0262
.L_026A:
cmp dword ptr [ebp-20], 92
jne .L_026F
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0271
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_0273
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_0273:
.L_0272:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_0271:
.L_0270:
.L_026F:
.L_0262:
cmp dword ptr [ebp-20], 0
je .L_0276
.L_0277:
cmp dword ptr [ebp-20], 13
je .L_0276
.L_0278:
cmp dword ptr [ebp-20], 10
jne .L_0275
.L_0276:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_027A
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.L_027A:
.L_0279:
jmp .L_0260
.L_0275:
.L_0274:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_027C
cmp dword ptr [ebp-4], 1024
jne .L_027E
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_0280
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.L_0280:
.L_027F:
mov dword ptr [ebp-16], -1
jmp .L_027D
.L_027E:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.L_027D:
.L_027C:
.L_027B:
.L_0261:
jmp .L_025F
.L_0260:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4112], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4120], eax
.L_025C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREADWSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.L_0281:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
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
je .L_0284
call LEXCURRENTCHAR
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_0284:
.L_0283:
call LEXEATCHAR
.L_0285:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .L_0289
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .L_028B
cmp dword ptr [ebp-16], 0
jne .L_028D
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 34
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_028D:
.L_028C:
.L_028B:
.L_028A:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .L_028F
jmp .L_0286
.L_028F:
jmp .L_0288
.L_0289:
cmp dword ptr [ebp-20], 27
jne .L_0290
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .L_0292
cmp dword ptr [ebp-16], 0
jne .L_0294
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_0294:
.L_0293:
.L_0292:
.L_0291:
jmp .L_0288
.L_0290:
cmp dword ptr [ebp-20], 92
jne .L_0295
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .L_0297
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_0299
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 92
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_0299:
.L_0298:
call LEXCURRENTCHAR
mov dword ptr [ebp-20], eax
.L_0297:
.L_0296:
.L_0295:
.L_0288:
cmp dword ptr [ebp-20], 0
je .L_029C
.L_029D:
cmp dword ptr [ebp-20], 13
je .L_029C
.L_029E:
cmp dword ptr [ebp-20], 10
jne .L_029B
.L_029C:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .L_02A0
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.L_02A0:
.L_029F:
jmp .L_0286
.L_029B:
.L_029A:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .L_02A2
cmp dword ptr [ebp-4], 1024
jne .L_02A4
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .L_02A6
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.L_02A6:
.L_02A5:
mov dword ptr [ebp-16], -1
jmp .L_02A3
.L_02A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.L_02A3:
.L_02A2:
.L_02A1:
.L_0287:
jmp .L_0285
.L_0286:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4112], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4120], ebx
.L_0282:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPERIODS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.L_02A7:
cmp dword ptr [ebp+16], 0
je .L_02AA
mov dword ptr [ebp-4], 0
call LEXCURRENTCHAR
cmp eax, 46
jne .L_02AC
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .L_02AE
mov dword ptr [ebp-4], -1
.L_02AF:
cmp dword ptr [ebp+16], 0
je .L_02B0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.L_02B1:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .L_02B5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .L_02B7
jmp .L_02A8
.L_02B7:
.L_02B6:
.L_02B5:
.L_02B4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.L_02B3:
cmp dword ptr [ebp-8], 0
jne .L_02B1
.L_02B2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .L_02AF
.L_02B0:
.L_02AE:
.L_02AD:
.L_02AC:
.L_02AB:
jmp .L_02A9
.L_02AA:
call LEXCURRENTCHAR
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.L_02A9:
cmp dword ptr [ebp-4], 0
je .L_02B9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
mov dword ptr [eax+4120], ecx
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+4112]
push ecx
call HREADIDENTIFIER
add esp, 20
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call SYMBLOOKUP
add esp, 12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], eax
.L_02B9:
.L_02B8:
.L_02A8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
READID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_02BA:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16580]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4120], 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call HREADIDENTIFIER
add esp, 20
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .L_02BD
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [LEX+840072]
push dword ptr [eax+16584]
call SYMBLOOKUPAT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
jne .L_02BF
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .L_02BE
.L_02BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4116]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.L_02BE:
mov dword ptr [ebp-4], -1
jmp .L_02BB
.L_02BD:
.L_02BC:
mov eax, dword ptr [ebp+12]
and eax, 32
je .L_02C1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .L_02BB
.L_02C1:
.L_02C0:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call SYMBLOOKUP
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .L_02C3
mov dword ptr [ebp-4], -1
jmp .L_02BB
.L_02C3:
.L_02C2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
je .L_02C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .L_02C7
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
push dword ptr [ebx]
call PPDEFINELOAD
add esp, 8
test eax, eax
je .L_02C9
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov dword ptr [ebp-4], 0
jmp .L_02BB
.L_02C9:
.L_02C8:
.L_02C7:
.L_02C6:
.L_02C5:
.L_02C4:
mov eax, dword ptr [ENV+1040]
and eax, 524288
test eax, eax
je .L_02CB
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .L_02CD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4116]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPERIODS
add esp, 12
.L_02CD:
.L_02CC:
.L_02CB:
.L_02CA:
mov dword ptr [ebp-4], -1
.L_02BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMULTILINECOMMENT:
push ebp
mov ebp, esp
sub esp, 4
.L_0358:
call LEXEATCHAR
mov dword ptr [Lt_04B9], 0
.L_035A:
call LEXCURRENTCHAR
mov dword ptr [ebp-4], eax
jmp .L_035E
.L_0360:
push 0
push 1
push 0
push 0
push 132
call ERRREPORTEX
add esp, 20
jmp .L_0359
jmp .L_035D
.L_0361:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 10
jne .L_0363
call LEXEATCHAR
.L_0363:
.L_0362:
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_0365
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16568]
.L_0365:
.L_0364:
jmp .L_035D
.L_0366:
call LEXEATCHAR
mov eax, dword ptr [LEX+840072]
cmp dword ptr [eax+16592], 0
jne .L_0368
mov eax, dword ptr [LEX+840072]
inc dword ptr [eax+16568]
.L_0368:
.L_0367:
jmp .L_035D
.L_0369:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 39
jne .L_036B
call LEXEATCHAR
inc dword ptr [Lt_04B9]
.L_036B:
.L_036A:
jmp .L_035D
.L_036C:
call LEXEATCHAR
call LEXCURRENTCHAR
cmp eax, 47
jne .L_036E
call LEXEATCHAR
cmp dword ptr [Lt_04B9], 0
jne .L_0370
jmp .L_035B
.L_0370:
.L_036F:
dec dword ptr [Lt_04B9]
.L_036E:
.L_036D:
jmp .L_035D
.L_0371:
call LEXEATCHAR
jmp .L_035D
.L_035E:
cmp dword ptr [ebp-4], 47
ja .L_0371
mov eax, dword ptr [ebp-4]
jmp dword ptr [.L_0372+eax*4]
.L_0372:
.int .L_0360
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0366
.int .L_0371
.int .L_0371
.int .L_0361
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_036C
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0371
.int .L_0369
.L_035D:
.L_035C:
jmp .L_035A
.L_035B:
.L_0359:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_04B9,4

.section .text
.balign 16
HMOVEKDOWN:
push ebx
.L_038B:
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], -1
mov ebx, dword ptr [LEX+840072]
dec dword ptr [ebx+16544]
mov ebx, dword ptr [LEX+840072]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [LEX+840072]
mov ecx, dword ptr [eax+4132]
mov dword ptr [ebx+16548], ecx
.L_038C:
pop ebx
ret
.balign 16
LEXGETSTRLITTEXT:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.L_038D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .L_0390
.L_0391:
mov dword ptr [ebp-28], 0
jmp .L_038F
.L_0390:
cmp dword ptr [ebp+8], 263
jne .L_0392
.L_0393:
push 0
push 2
push offset Lt_0394
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], -1
jmp .L_038F
.L_0392:
cmp dword ptr [ebp+8], 264
jne .L_0395
.L_0396:
push 0
push 2
push offset Lt_0397
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 0
.L_0395:
.L_038F:
push 0
push 2
push offset Lt_0398
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-32], 0
call LEXGETTEXT
mov dword ptr [ebp-36], eax
.L_0399:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .L_039E
.L_039F:
jmp .L_039A
jmp .L_039C
.L_039E:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .L_03A0
.L_03A1:
cmp dword ptr [ebp-32], 0
je .L_03A3
push 0
push 2
push offset Lt_0398
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_03A2
.L_03A3:
push 0
push 3
push offset Lt_03A4
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
.L_03A2:
mov dword ptr [ebp-32], 0
jmp .L_039C
.L_03A0:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .L_03A5
.L_03A7:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
push 0
push 2
push offset Lt_03A6
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 20
jmp .L_039C
.L_03A5:
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call fb_CHR
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
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
.L_03A8:
.L_039C:
inc dword ptr [ebp-36]
.L_039B:
jmp .L_0399
.L_039A:
push 0
push 2
push offset Lt_0398
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
.L_038E:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.globl LEX
.balign 4
	.lcomm	LEX,840080
.balign 4
	.lcomm	PPONLY_LN,12

.section .data
.balign 4
Lt_00A8:	.ascii	" [Macro Expansion: \0"
.balign 4
Lt_00C3:	.ascii	" ] \0"
.balign 4
Lt_0394:	.ascii	"!\0"
.balign 4
Lt_0397:	.ascii	"$\0"
.balign 4
Lt_0398:	.ascii	"\"\0"
.balign 4
Lt_03A4:	.ascii	"\"\"\0"
.balign 4
Lt_03A6:	.ascii	"\\\0"
.balign 4
Lt_03BD:	.ascii	" \0"
.balign 4
Lt_0419:	.ascii	"src/compiler/lex.bas\0"
.balign 4
Lt_044D:	.ascii	"^\0"
.balign 4
Lt_0458:	.ascii	"in '\0"
.balign 4
Lt_045B:	.ascii	"'\0"

.section .ctors
.int fb_ctor__lex
