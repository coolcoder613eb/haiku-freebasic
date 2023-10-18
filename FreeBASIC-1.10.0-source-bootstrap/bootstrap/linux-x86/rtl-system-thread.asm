	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLTHREADCALL
RTLTHREADCALL:
.type RTLTHREADCALL, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 164
push ebx
mov dword ptr [ebp-4], 0
.L_00B2:
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
jne .L_00B4
mov dword ptr [ebp-48], 1
jmp .L_00E8
.L_00B4:
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-48], ebx
.L_00E8:
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
sub esp, 4
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea ebx, [ebp-84]
push ebx
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .L_00B6
push 0
push 0
push offset Lt_00B7
push 191
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B6:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 4
mov dword ptr [ebp-104], 1
mov dword ptr [ebp-100], 17
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
sub esp, 4
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea eax, [ebp-120]
push eax
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .L_00B8
push 0
push 0
push offset Lt_00B7
push 192
call fb_ErrorThrowAt
add esp, 16
jmp eax
.L_00B8:
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .L_00BA
.L_00BD:
cmp dword ptr [ebp-40], 0
jne .L_00BF
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00BF:
.L_00BE:
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
.L_00BB:
inc dword ptr [ebp-140]
.L_00BA:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .L_00BD
.L_00BC:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 366
push offset Lt_00C0
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-124], eax
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-8]
call ASTBUILDPROCADDROF
add esp, 8
push eax
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C2
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00C2:
.L_00C1:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], -1
jne .L_00C4
mov ebx, dword ptr [ENV+276]
mov dword ptr [ebp-132], ebx
.L_00C4:
cmp dword ptr [ebp-132], 3
jne .L_00C6
mov dword ptr [ebp-128], 1
jmp .L_00C5
.L_00C6:
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
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .L_00C7
mov dword ptr [ebp-128], 0
jmp .L_00C5
.L_00C7:
sub esp, 4
push 0
push 0
push 288
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00C5:
push 0
push 8
mov ebx, dword ptr [ebp-128]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00C9
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00C9:
.L_00C8:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
push -1
push -2147483648
push dword ptr [ebp-24]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CB
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00CB:
.L_00CA:
push 0
push 8
mov ebx, dword ptr [ebp-36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
push -1
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00CD
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00CD:
.L_00CC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .L_00CE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-136], ebx
jmp .L_00E9
.L_00CE:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-136], eax
.L_00E9:
mov eax, dword ptr [ebp-136]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .L_00D1
.L_00D4:
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-152], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-148], ebx
sub esp, 8
push 0
push dword ptr [ebp-12]
call HTHREADCALLMAPTYPE
add esp, 16
mov dword ptr [ebp-152], eax
cmp dword ptr [ebp-148], 1
jne .L_00D6
.L_00D7:
jmp .L_00D5
.L_00D6:
cmp dword ptr [ebp-148], 2
je .L_00D9
.L_00DA:
cmp dword ptr [ebp-148], 3
jne .L_00D8
.L_00D9:
cmp dword ptr [ebp-152], -1
je .L_00DC
mov dword ptr [ebp-152], 13
.L_00DC:
.L_00DB:
jmp .L_00D5
.L_00D8:
mov dword ptr [ebp-152], -1
.L_00DD:
.L_00D5:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-156], ebx
sub esp, 4
push dword ptr [ebp-156]
push dword ptr [ebp-152]
push dword ptr [ebp-124]
call HTHREADCALLPUSHTYPE
add esp, 16
test eax, eax
jne .L_00DF
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00DF:
.L_00DE:
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
sub esp, 4
push 2
sub esp, 4
lea ebx, [ebp-32]
push ebx
call HGETEXPRREF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
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
je .L_00E1
sub esp, 4
push 2
sub esp, 4
lea ecx, [ebp-32]
push ecx
call HGETEXPRREF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-20], eax
.L_00E1:
.L_00E0:
cmp dword ptr [ebp-32], 0
jne .L_00E3
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00E3:
.L_00E2:
push -1
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00E5
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .L_00B3
.L_00E5:
.L_00E4:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .L_00E6
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-164], ecx
jmp .L_00EA
.L_00E6:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-164], eax
.L_00EA:
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-12], eax
.L_00D2:
inc dword ptr [ebp-140]
.L_00D1:
mov eax, dword ptr [ebp-144]
cmp dword ptr [ebp-140], eax
jle .L_00D4
.L_00D3:
sub esp, 4
push 2
push dword ptr [ebp-124]
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
.L_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size RTLTHREADCALL, .-RTLTHREADCALL
.cfi_endproc
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 4
push ebx
.L_0012:
sub esp, 12
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
add esp, 32
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
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.cfi_endproc
.balign 16
HTHREADCALLMAPTYPE:
.type HTHREADCALLMAPTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.L_005D:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBISARRAY
add esp, 16
test eax, eax
je .L_0060
cmp dword ptr [ebp+12], 0
je .L_0061
mov dword ptr [ebp-20], -1
jmp .L_00F1
.L_0061:
mov dword ptr [ebp-20], 13
.L_00F1:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .L_005E
.L_0060:
.L_005F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .L_0063
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .L_00F2
.L_0063:
mov dword ptr [ebp-16], 0
.L_00F2:
cmp dword ptr [ebp-16], 0
je .L_0066
jmp .L_005E
.L_0066:
.L_0065:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .L_0068
mov dword ptr [ebp-4], 13
jmp .L_005E
.L_0068:
.L_0067:
cmp dword ptr [ebp-8], 17
jne .L_006A
.L_006B:
cmp dword ptr [ebp+12], 0
je .L_006C
mov dword ptr [ebp-20], -1
jmp .L_00F3
.L_006C:
mov dword ptr [ebp-20], 13
.L_00F3:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .L_0069
.L_006A:
cmp dword ptr [ebp-8], 20
jne .L_006E
.L_006F:
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
je .L_0071
jmp .L_005E
.L_0071:
.L_0070:
mov ecx, dword ptr [ebp-12]
movzx eax, byte ptr [ecx+121]
test eax, eax
je .L_0073
jmp .L_005E
.L_0073:
.L_0072:
sub esp, 12
push dword ptr [ebp-12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
jne .L_0075
sub esp, 8
push -1
push dword ptr [ebp-20]
call HTHREADCALLMAPTYPE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_0074
.L_0075:
mov dword ptr [ebp-4], 12
.L_0074:
jmp .L_0069
.L_006E:
cmp dword ptr [ebp-8], 2
je .L_0077
.L_0078:
cmp dword ptr [ebp-8], 4
je .L_0077
.L_0079:
cmp dword ptr [ebp-8], 3
je .L_0077
.L_007A:
cmp dword ptr [ebp-8], 5
je .L_0077
.L_007B:
cmp dword ptr [ebp-8], 7
je .L_0077
.L_007C:
cmp dword ptr [ebp-8], 6
je .L_0077
.L_007D:
cmp dword ptr [ebp-8], 8
je .L_0077
.L_007E:
cmp dword ptr [ebp-8], 10
je .L_0077
.L_007F:
cmp dword ptr [ebp-8], 9
je .L_0077
.L_0080:
cmp dword ptr [ebp-8], 11
je .L_0077
.L_0081:
cmp dword ptr [ebp-8], 12
je .L_0077
.L_0082:
cmp dword ptr [ebp-8], 13
je .L_0077
.L_0083:
cmp dword ptr [ebp-8], 14
je .L_0077
.L_0084:
cmp dword ptr [ebp-8], 15
je .L_0077
.L_0085:
cmp dword ptr [ebp-8], 16
jne .L_0076
.L_0077:
mov eax, dword ptr [ebp-8]
and eax, 480
je .L_0086
mov dword ptr [ebp-20], 24
jmp .L_00F4
.L_0086:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.L_00F4:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-24], ecx
jmp .L_0089
.L_008B:
mov dword ptr [ebp-4], 2
jmp .L_0088
.L_008C:
mov dword ptr [ebp-4], 3
jmp .L_0088
.L_008D:
mov dword ptr [ebp-4], 4
jmp .L_0088
.L_008E:
mov dword ptr [ebp-4], 5
jmp .L_0088
.L_008F:
mov dword ptr [ebp-4], 6
jmp .L_0088
.L_0090:
mov dword ptr [ebp-4], 7
jmp .L_0088
.L_0091:
mov dword ptr [ebp-4], 8
jmp .L_0088
.L_0092:
mov dword ptr [ebp-4], 9
jmp .L_0088
.L_0093:
mov dword ptr [ebp-4], 10
jmp .L_0088
.L_0094:
mov dword ptr [ebp-4], 11
jmp .L_0088
.L_0095:
jmp .L_0088
.L_0089:
mov ecx, dword ptr [ebp-24]
add ecx, 4294967295
cmp ecx, 9
ja .L_0095
mov ecx, dword ptr [ebp-24]
jmp dword ptr [.L_0096+ecx*4-4]
.L_0096:
.int .L_008B
.int .L_008C
.int .L_008D
.int .L_008E
.int .L_008F
.int .L_0090
.int .L_0091
.int .L_0092
.int .L_0093
.int .L_0094
.L_0088:
jmp .L_0069
.L_0076:
.L_0097:
.L_0069:
.L_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTHREADCALLMAPTYPE, .-HTHREADCALLMAPTYPE
.cfi_endproc
.balign 16
HTHREADCALLPUSHSTRUCT:
.type HTHREADCALLPUSHSTRUCT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0098:
mov dword ptr [ebp-12], 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.L_009A:
inc dword ptr [ebp-12]
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.L_009C:
cmp dword ptr [ebp-8], 0
jne .L_009A
.L_009B:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_009E
jmp .L_0099
.L_009E:
.L_009D:
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.L_009F:
sub esp, 4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push -1
push dword ptr [ebp-8]
call HTHREADCALLMAPTYPE
add esp, 8
push eax
push dword ptr [ebp+8]
call HTHREADCALLPUSHTYPE
add esp, 16
test eax, eax
jne .L_00A3
jmp .L_0099
.L_00A3:
.L_00A2:
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.L_00A1:
cmp dword ptr [ebp-8], 0
jne .L_009F
.L_00A0:
mov dword ptr [ebp-4], -1
.L_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTHREADCALLPUSHSTRUCT, .-HTHREADCALLPUSHSTRUCT
.cfi_endproc
.balign 16
HTHREADCALLPUSHTYPE:
.type HTHREADCALLPUSHTYPE, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00A4:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], -1
jne .L_00A7
sub esp, 4
push 0
push 0
push 288
call ERRREPORT
add esp, 16
jmp .L_00A5
.L_00A7:
.L_00A6:
mov dword ptr [ebp-8], 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .L_00A9
jmp .L_00A5
.L_00A9:
.L_00A8:
cmp dword ptr [ebp+12], 12
jne .L_00AB
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HTHREADCALLPUSHSTRUCT
add esp, 16
test eax, eax
jne .L_00AD
jmp .L_00A5
.L_00AD:
.L_00AC:
.L_00AB:
.L_00AA:
mov dword ptr [ebp-4], -1
.L_00A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HTHREADCALLPUSHTYPE, .-HTHREADCALLPUSHTYPE
.cfi_endproc
.balign 16
HGETEXPRREF:
.type HGETEXPRREF, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 17
jne .L_00B1
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call ASTNEWADDROF
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .L_00B0
.L_00B1:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.L_00B0:
.L_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size HGETEXPRREF, .-HGETEXPRREF
.cfi_endproc

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .rodata
.balign 4
Lt_00B7:	.ascii	"src/compiler/rtl-system-thread.bas\0"
.balign 4
Lt_00C0:	.ascii	"fb_ThreadCall\0"
