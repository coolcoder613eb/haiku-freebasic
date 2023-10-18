	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLTHREADCALL
_RTLTHREADCALL:
push ebp
mov ebp, esp
sub esp, 164
push ebx
mov dword ptr [ebp-4], 0
.L_00B3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-36], 0
jne .L_00B5
mov dword ptr [ebp-48], 1
jmp .L_00E9
.L_00B5:
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-48], ebx
.L_00E9:
mov ebx, dword ptr [ebp-48]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 4
mov dword ptr [ebp-68], 1
mov dword ptr [ebp-64], 17
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea ebx, [ebp-84]
push ebx
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_00B7
push 0
push 0
push offset _Lt_00B8
push 191
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B7:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 4
mov dword ptr [ebp-104], 1
mov dword ptr [ebp-100], 17
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea eax, [ebp-120]
push eax
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .L_00B9
push 0
push 0
push offset _Lt_00B8
push 192
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B9:
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .L_00BB
.L_00BE:
cmp dword ptr [ebp-40], 0
jne .L_00C0
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-84]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-40]
mov dword ptr [ecx+56], 0
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-120]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-40], ebx
.L_00BC:
inc dword ptr [ebp-140]
.L_00BB:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_00BE
.L_00BD:
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
push 0
push 366
push offset _Lt_00C1
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-124], eax
push -1
push -2147483648
push dword ptr [ebp-8]
call _ASTBUILDPROCADDROF
add esp, 4
push eax
push dword ptr [ebp-124]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C3
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00C3:
.L_00C2:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], -1
jne .L_00C5
mov ebx, dword ptr [_ENV+276]
mov dword ptr [ebp-132], ebx
.L_00C5:
cmp dword ptr [ebp-132], 3
jne .L_00C7
mov dword ptr [ebp-128], 1
jmp .L_00C6
.L_00C7:
mov ebx, dword ptr [ebp-132]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-132]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00C8
mov dword ptr [ebp-128], 0
jmp .L_00C6
.L_00C8:
push 0
push 0
push 288
call _ERRREPORT
add esp, 12
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00C6:
push 0
push 8
mov ebx, dword ptr [ebp-128]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-124]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CA
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00CA:
.L_00C9:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
push -1
push -2147483648
push dword ptr [ebp-24]
push dword ptr [ebp-124]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CC
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00CC:
.L_00CB:
push 0
push 8
mov ebx, dword ptr [ebp-36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
push -1
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp-124]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CE
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00CE:
.L_00CD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .L_00CF
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-136], ebx
jmp .L_00EA
.L_00CF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-136], eax
.L_00EA:
mov eax, dword ptr [ebp-136]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .L_00D2
.L_00D5:
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-152], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-148], ebx
push 0
push dword ptr [ebp-12]
call _HTHREADCALLMAPTYPE
add esp, 8
mov dword ptr [ebp-152], eax
cmp dword ptr [ebp-148], 1
jne .L_00D7
.L_00D8:
jmp .L_00D6
.L_00D7:
cmp dword ptr [ebp-148], 2
je .L_00DA
.L_00DB:
cmp dword ptr [ebp-148], 3
jne .L_00D9
.L_00DA:
cmp dword ptr [ebp-152], -1
je .L_00DD
mov dword ptr [ebp-152], 13
.L_00DD:
.L_00DC:
jmp .L_00D6
.L_00D9:
mov dword ptr [ebp-152], -1
.L_00DE:
.L_00D6:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-156], ebx
push dword ptr [ebp-156]
push dword ptr [ebp-152]
push dword ptr [ebp-124]
call _HTHREADCALLPUSHTYPE
add esp, 12
test eax, eax
jne .L_00E0
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00E0:
.L_00DF:
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
push 2
lea ebx, [ebp-32]
push ebx
call _HGETEXPRREF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-160], 0
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-160], eax
mov eax, dword ptr [ebp-148]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-120]
mov ecx, dword ptr [ebx]
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov ecx, dword ptr [ebp-160]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .L_00E2
push 2
lea ecx, [ebp-32]
push ecx
call _HGETEXPRREF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-20], eax
.L_00E2:
.L_00E1:
cmp dword ptr [ebp-32], 0
jne .L_00E4
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00E4:
.L_00E3:
push -1
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-124]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E6
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
jmp .L_00B4
.L_00E6:
.L_00E5:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .L_00E7
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-164], ecx
jmp .L_00EB
.L_00E7:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-164], eax
.L_00EB:
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-12], eax
.L_00D3:
inc dword ptr [ebp-140]
.L_00D2:
mov eax, dword ptr [ebp-144]
cmp dword ptr [ebp-140], eax
jle .L_00D5
.L_00D4:
push 2
push dword ptr [ebp-124]
push dword ptr [ebp-20]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-120]
push eax
call _fb_ArrayErase
add esp, 4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase
add esp, 4
.L_00B4:
mov eax, dword ptr [ebp-4]
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
_HTHREADCALLMAPTYPE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.L_005E:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call _SYMBISARRAY
add esp, 4
test eax, eax
je .L_0061
cmp dword ptr [ebp+12], 0
je .L_0062
mov dword ptr [ebp-20], -1
jmp .L_00F2
.L_0062:
mov dword ptr [ebp-20], 13
.L_00F2:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .L_005F
.L_0061:
.L_0060:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_0064
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_00F3
.L_0064:
mov dword ptr [ebp-16], 0
.L_00F3:
cmp dword ptr [ebp-16], 0
je .L_0067
jmp .L_005F
.L_0067:
.L_0066:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0069
mov dword ptr [ebp-4], 13
jmp .L_005F
.L_0069:
.L_0068:
cmp dword ptr [ebp-8], 17
jne .L_006B
.L_006C:
cmp dword ptr [ebp+12], 0
je .L_006D
mov dword ptr [ebp-20], -1
jmp .L_00F4
.L_006D:
mov dword ptr [ebp-20], 13
.L_00F4:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_006A
.L_006B:
cmp dword ptr [ebp-8], 20
jne .L_006F
.L_0070:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+116]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .L_0072
jmp .L_005F
.L_0072:
.L_0071:
mov ecx, dword ptr [ebp-12]
movzx eax, byte ptr [ecx+121]
test eax, eax
je .L_0074
jmp .L_005F
.L_0074:
.L_0073:
push dword ptr [ebp-12]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _SYMBUDTGETNEXTFIELD
add esp, 4
test eax, eax
jne .L_0076
push -1
push dword ptr [ebp-20]
call _HTHREADCALLMAPTYPE
add esp, 8
mov dword ptr [ebp-4], eax
jmp .L_0075
.L_0076:
mov dword ptr [ebp-4], 12
.L_0075:
jmp .L_006A
.L_006F:
cmp dword ptr [ebp-8], 2
je .L_0078
.L_0079:
cmp dword ptr [ebp-8], 4
je .L_0078
.L_007A:
cmp dword ptr [ebp-8], 3
je .L_0078
.L_007B:
cmp dword ptr [ebp-8], 5
je .L_0078
.L_007C:
cmp dword ptr [ebp-8], 7
je .L_0078
.L_007D:
cmp dword ptr [ebp-8], 6
je .L_0078
.L_007E:
cmp dword ptr [ebp-8], 8
je .L_0078
.L_007F:
cmp dword ptr [ebp-8], 10
je .L_0078
.L_0080:
cmp dword ptr [ebp-8], 9
je .L_0078
.L_0081:
cmp dword ptr [ebp-8], 11
je .L_0078
.L_0082:
cmp dword ptr [ebp-8], 12
je .L_0078
.L_0083:
cmp dword ptr [ebp-8], 13
je .L_0078
.L_0084:
cmp dword ptr [ebp-8], 14
je .L_0078
.L_0085:
cmp dword ptr [ebp-8], 15
je .L_0078
.L_0086:
cmp dword ptr [ebp-8], 16
jne .L_0077
.L_0078:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0087
mov dword ptr [ebp-20], 24
jmp .L_00F5
.L_0087:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00F5:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-24], ecx
jmp .L_008A
.L_008C:
mov dword ptr [ebp-4], 2
jmp .L_0089
.L_008D:
mov dword ptr [ebp-4], 3
jmp .L_0089
.L_008E:
mov dword ptr [ebp-4], 4
jmp .L_0089
.L_008F:
mov dword ptr [ebp-4], 5
jmp .L_0089
.L_0090:
mov dword ptr [ebp-4], 6
jmp .L_0089
.L_0091:
mov dword ptr [ebp-4], 7
jmp .L_0089
.L_0092:
mov dword ptr [ebp-4], 8
jmp .L_0089
.L_0093:
mov dword ptr [ebp-4], 9
jmp .L_0089
.L_0094:
mov dword ptr [ebp-4], 10
jmp .L_0089
.L_0095:
mov dword ptr [ebp-4], 11
jmp .L_0089
.L_0096:
jmp .L_0089
.L_008A:
mov ecx, dword ptr [ebp-24]
add ecx, 4294967295
cmp ecx, 9
ja .L_0096
mov ecx, dword ptr [ebp-24]
jmp dword ptr [_.L_0097+ecx*4-4]
_.L_0097:
.int .L_008C
.int .L_008D
.int .L_008E
.int .L_008F
.int .L_0090
.int .L_0091
.int .L_0092
.int .L_0093
.int .L_0094
.int .L_0095
.L_0089:
jmp .L_006A
.L_0077:
.L_0098:
.L_006A:
.L_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTHREADCALLPUSHSTRUCT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0099:
mov dword ptr [ebp-12], 0
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_009B:
inc dword ptr [ebp-12]
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_009D:
cmp dword ptr [ebp-8], 0
jne .L_009B
.L_009C:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_009F
jmp .L_009A
.L_009F:
.L_009E:
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_00A0:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push -1
push dword ptr [ebp-8]
call _HTHREADCALLMAPTYPE
add esp, 8
push eax
push dword ptr [ebp+8]
call _HTHREADCALLPUSHTYPE
add esp, 12
test eax, eax
jne .L_00A4
jmp .L_009A
.L_00A4:
.L_00A3:
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
.L_00A2:
cmp dword ptr [ebp-8], 0
jne .L_00A0
.L_00A1:
mov dword ptr [ebp-4], -1
.L_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTHREADCALLPUSHTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00A5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], -1
jne .L_00A8
push 0
push 0
push 288
call _ERRREPORT
add esp, 12
jmp .L_00A6
.L_00A8:
.L_00A7:
mov dword ptr [ebp-8], 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .L_00AA
jmp .L_00A6
.L_00AA:
.L_00A9:
cmp dword ptr [ebp+12], 12
jne .L_00AC
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HTHREADCALLPUSHSTRUCT
add esp, 8
test eax, eax
jne .L_00AE
jmp .L_00A6
.L_00AE:
.L_00AD:
.L_00AC:
.L_00AB:
mov dword ptr [ebp-4], -1
.L_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETEXPRREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.L_00AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 17
jne .L_00B2
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00B1
.L_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B1:
.L_00B0:
mov eax, dword ptr [ebp-4]
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

.section .data
.balign 4
_Lt_00B8:	.ascii	"src/compiler/rtl-system-thread.bas\0"
.balign 4
_Lt_00C1:	.ascii	"fb_ThreadCall\0"
