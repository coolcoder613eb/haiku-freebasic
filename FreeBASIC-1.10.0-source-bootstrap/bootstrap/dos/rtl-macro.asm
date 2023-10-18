	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMACROMODINIT
_RTLMACROMODINIT:
.L_00EE:
cmp dword ptr [_ENV+136], 3
jne .L_00F1
push offset _MACRODATAQB
call _HADDMACROS
add esp, 4
jmp .L_00F0
.L_00F1:
push offset _MACRODATA
call _HADDMACROS
add esp, 4
.L_00F0:
.L_00EF:
ret
.balign 16

.globl _RTLMACROMODEND
_RTLMACROMODEND:
.L_00F2:
.L_00F3:
ret
.balign 16
_fb_ctor__rtlzmacro:
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
_HADDMACRO:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_00C7:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
dec ebx
mov dword ptr [ebp-28], ebx
jmp .L_00CA
.L_00CD:
or dword ptr [ebp-8], 8
mov ebx, dword ptr [ebp-24]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+12]
push dword ptr [ebp-16]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
jne .L_00CF
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_00CF:
.L_00CE:
.L_00CB:
inc dword ptr [ebp-24]
.L_00CA:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00CD
.L_00CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00D1
cmp dword ptr [_ENV+152], 0
jne .L_00D3
mov dword ptr [ebp-4], 0
.L_00D3:
.L_00D2:
.L_00D1:
.L_00D0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8192
test eax, eax
je .L_00D5
cmp dword ptr [_ENV+104], 1
jne .L_00D7
mov dword ptr [ebp-4], 0
or dword ptr [ebp-8], 2
.L_00D7:
.L_00D6:
.L_00D5:
.L_00D4:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-4], 0
je .L_00D9
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+28]
mov dword ptr [ebp-28], ebx
.L_00DA:
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], -1
je .L_00DB
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-24]
call _SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-20], 0
jne .L_00DD
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
.L_00DD:
.L_00DC:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_00E1
.L_00E2:
cmp dword ptr [ebp-32], 1
jne .L_00E0
.L_00E1:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
jmp .L_00DE
.L_00E0:
cmp dword ptr [ebp-32], 2
jne .L_00E3
.L_00E4:
mov ecx, dword ptr [ebp-28]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp-24]
lea eax, [ecx+4]
push eax
call _ZSTRASSIGN
add esp, 8
.L_00E3:
.L_00DE:
add dword ptr [ebp-28], 8
jmp .L_00DA
.L_00DB:
.L_00D9:
.L_00D8:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBADDDEFINEMACRO
add esp, 20
.L_00C8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDMACROS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00E5:
.L_00E7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00E8
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
je .L_00EA
call _FBIS64BIT
not eax
and dword ptr [ebp-4], eax
jmp .L_00E9
.L_00EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
je .L_00EB
call _FBIS64BIT
and dword ptr [ebp-4], eax
.L_00EB:
.L_00E9:
cmp dword ptr [ebp-4], 0
je .L_00ED
push dword ptr [ebp+8]
call _HADDMACRO
add esp, 4
.L_00ED:
.L_00EC:
add dword ptr [ebp+8], 124
jmp .L_00E7
.L_00E8:
.L_00E6:
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
_MACRODATA:
.int _Lt_005E
.int 0
.int 3
.int _Lt_005F
.int _Lt_0060
.int _Lt_0061
.skip 4,0
.int 2
.int _Lt_0062
.int 0
.long 0
.int 2
.int _Lt_0063
.int 0
.long 1
.int 2
.int _Lt_0064
.int 0
.long 2
.int 2
.int _Lt_0065
.int -1
.skip 4,0
.skip 32,0
.int _Lt_0066
.int 0
.int 4
.int _Lt_005F
.int _Lt_0060
.int _Lt_0061
.int _Lt_0067
.int 2
.int _Lt_0062
.int 0
.long 0
.int 2
.int _Lt_0063
.int 0
.long 1
.int 2
.int _Lt_0064
.int 0
.long 2
.int 2
.int _Lt_0068
.int 0
.long 3
.int 2
.int _Lt_0069
.int -1
.skip 4,0
.skip 16,0
.int _Lt_006A
.int 8192
.int 2
.int _Lt_0067
.int _Lt_006B
.skip 8,0
.int 2
.int _Lt_006C
.int 0
.long 1
.int 2
.int _Lt_006D
.int 0
.long 0
.int 2
.int _Lt_006E
.int -1
.skip 4,0
.skip 48,0
.int _Lt_006F
.int 8192
.int 2
.int _Lt_0067
.int _Lt_006B
.skip 8,0
.int 2
.int _Lt_0070
.int 0
.long 1
.int 2
.int _Lt_0071
.int 0
.long 0
.int 2
.int _Lt_0072
.int 0
.long 1
.int 2
.int _Lt_0073
.int -1
.skip 4,0
.skip 32,0
.int _Lt_0074
.int 16
.int 1
.int _Lt_0075
.skip 12,0
.int 2
.int _Lt_0076
.int 0
.long 0
.int 2
.int _Lt_0077
.int 1
.long 0
.int 2
.int _Lt_0078
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0079
.int 16
.int 1
.int _Lt_0075
.skip 12,0
.int 2
.int _Lt_0076
.int 0
.long 0
.int 2
.int _Lt_007A
.int 1
.long 0
.int 2
.int _Lt_0078
.int -1
.skip 4,0
.skip 48,0
.int _Lt_007B
.int 0
.int 2
.int _Lt_006B
.int _Lt_007C
.skip 8,0
.int 2
.int _Lt_007D
.int 0
.long 0
.int 2
.int _Lt_007E
.int 0
.long 1
.int 2
.int _Lt_007F
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0080
.int 0
.int 3
.int _Lt_0081
.int _Lt_0082
.int _Lt_0083
.skip 4,0
.int 2
.int _Lt_0084
.int 0
.long 0
.int 2
.int _Lt_0085
.int 0
.long 0
.int 2
.int _Lt_0086
.int 0
.long 1
.int 2
.int _Lt_0087
.int 0
.long 1
.int 2
.int _Lt_0088
.int 0
.long 2
.int 2
.int _Lt_0089
.int -1
.skip 4,0
.int _Lt_008A
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_008C
.int 0
.long 0
.int 2
.int _Lt_008D
.int -1
.skip 4,0
.skip 64,0
.int _Lt_008E
.int 32768
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_008C
.int 0
.long 0
.int 2
.int _Lt_008F
.int -1
.skip 4,0
.skip 64,0
.int _Lt_008E
.int 65536
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_0090
.int 0
.long 0
.int 2
.int _Lt_0091
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0092
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_008C
.int 0
.long 0
.int 2
.int _Lt_0093
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0094
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_0090
.int 0
.long 0
.int 2
.int _Lt_0095
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0096
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_0098
.int 0
.long 0
.int 2
.int _Lt_0099
.int 0
.long 0
.int 2
.int _Lt_009A
.int 0
.long 1
.int 2
.int _Lt_009B
.int -1
.skip 4,0
.skip 32,0
.int _Lt_009C
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_009D
.int 0
.long 0
.int 2
.int _Lt_009E
.int 0
.long 0
.int 2
.int _Lt_009A
.int 0
.long 1
.int 2
.int _Lt_009F
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00A0
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_009D
.int 0
.long 0
.int 2
.int _Lt_00A1
.int 0
.long 0
.int 2
.int _Lt_009A
.int 0
.long 1
.int 2
.int _Lt_009F
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
_Lt_005E:	.ascii	"RGB\0"
.balign 4
_Lt_005F:	.ascii	"R\0"
.balign 4
_Lt_0060:	.ascii	"G\0"
.balign 4
_Lt_0061:	.ascii	"B\0"
.balign 4
_Lt_0062:	.ascii	"culng((culng(cubyte(\0"
.balign 4
_Lt_0063:	.ascii	")) shl 16) or (culng(cubyte(\0"
.balign 4
_Lt_0064:	.ascii	")) shl 8) or culng(cubyte(\0"
.balign 4
_Lt_0065:	.ascii	")) or (&hFF000000ul))\0"
.balign 4
_Lt_0066:	.ascii	"RGBA\0"
.balign 4
_Lt_0067:	.ascii	"A\0"
.balign 4
_Lt_0068:	.ascii	")) or (culng(cubyte(\0"
.balign 4
_Lt_0069:	.ascii	")) shl 24))\0"
.balign 4
_Lt_006A:	.ascii	"VA_ARG\0"
.balign 4
_Lt_006B:	.ascii	"T\0"
.balign 4
_Lt_006C:	.ascii	"peek(\0"
.balign 4
_Lt_006D:	.ascii	",\0"
.balign 4
_Lt_006E:	.ascii	")\0"
.balign 4
_Lt_006F:	.ascii	"VA_NEXT\0"
.balign 4
_Lt_0070:	.ascii	"(cptr(\0"
.balign 4
_Lt_0071:	.ascii	" ptr, cptr(byte ptr, \0"
.balign 4
_Lt_0072:	.ascii	") + (sizeof(\0"
.balign 4
_Lt_0073:	.ascii	") + sizeof(any ptr)-1 and -sizeof(any ptr)) ) )\0"
.balign 4
_Lt_0074:	.ascii	"ASSERT\0"
.balign 4
_Lt_0075:	.ascii	"E\0"
.balign 4
_Lt_0076:	.ascii	"if (\0"
.balign 4
_Lt_0077:	.ascii	") = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
_Lt_0078:	.ascii	") end if\0"
.balign 4
_Lt_0079:	.ascii	"ASSERTWARN\0"
.balign 4
_Lt_007A:	.ascii	") = 0 then fb_AssertWarn(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
_Lt_007B:	.ascii	"OFFSETOF\0"
.balign 4
_Lt_007C:	.ascii	"F\0"
.balign 4
_Lt_007D:	.ascii	"cint( @cast( \0"
.balign 4
_Lt_007E:	.ascii	" ptr, 0 )->\0"
.balign 4
_Lt_007F:	.ascii	" )\0"
.balign 4
_Lt_0080:	.ascii	"__FB_MIN_VERSION__\0"
.balign 4
_Lt_0081:	.ascii	"MAJOR\0"
.balign 4
_Lt_0082:	.ascii	"MINOR\0"
.balign 4
_Lt_0083:	.ascii	"PATCH_LEVEL\0"
.balign 4
_Lt_0084:	.ascii	"((__FB_VER_MAJOR__ > (\0"
.balign 4
_Lt_0085:	.ascii	")) or ((__FB_VER_MAJOR__ = (\0"
.balign 4
_Lt_0086:	.ascii	")) and ((__FB_VER_MINOR__ > (\0"
.balign 4
_Lt_0087:	.ascii	")) or (__FB_VER_MINOR__ = (\0"
.balign 4
_Lt_0088:	.ascii	") and __FB_VER_PATCH__ >= (\0"
.balign 4
_Lt_0089:	.ascii	")))))\0"
.balign 4
_Lt_008A:	.ascii	"LOWORD\0"
.balign 4
_Lt_008B:	.ascii	"X\0"
.balign 4
_Lt_008C:	.ascii	"(cuint(\0"
.balign 4
_Lt_008D:	.ascii	") and &h0000FFFF)\0"
.balign 4
_Lt_008E:	.ascii	"HIWORD\0"
.balign 4
_Lt_008F:	.ascii	") shr 16)\0"
.balign 4
_Lt_0090:	.ascii	"((cuint(\0"
.balign 4
_Lt_0091:	.ascii	") and &hFFFF0000u) shr 16)\0"
.balign 4
_Lt_0092:	.ascii	"LOBYTE\0"
.balign 4
_Lt_0093:	.ascii	") and &h000000FF)\0"
.balign 4
_Lt_0094:	.ascii	"HIBYTE\0"
.balign 4
_Lt_0095:	.ascii	") and &h0000FF00) shr 8)\0"
.balign 4
_Lt_0096:	.ascii	"BIT\0"
.balign 4
_Lt_0097:	.ascii	"Y\0"
.balign 4
_Lt_0098:	.ascii	"(((\0"
.balign 4
_Lt_0099:	.ascii	") and (cast(typeof(\0"
.balign 4
_Lt_009A:	.ascii	"), 1) shl (\0"
.balign 4
_Lt_009B:	.ascii	"))) <> 0)\0"
.balign 4
_Lt_009C:	.ascii	"BITSET\0"
.balign 4
_Lt_009D:	.ascii	"((\0"
.balign 4
_Lt_009E:	.ascii	") or (cast(typeof(\0"
.balign 4
_Lt_009F:	.ascii	")))\0"
.balign 4
_Lt_00A0:	.ascii	"BITRESET\0"
.balign 4
_Lt_00A1:	.ascii	") and not (cast(typeof(\0"
.balign 4
_MACRODATAQB:
.int _Lt_00A3
.int 0
.int 3
.int _Lt_005F
.int _Lt_0060
.int _Lt_0061
.skip 4,0
.int 2
.int _Lt_00A4
.int 0
.long 0
.int 2
.int _Lt_00A5
.int 0
.long 1
.int 2
.int _Lt_00A6
.int 0
.long 2
.int 2
.int _Lt_00A7
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00A8
.int 0
.int 4
.int _Lt_005F
.int _Lt_0060
.int _Lt_0061
.int _Lt_0067
.int 2
.int _Lt_00A4
.int 0
.long 0
.int 2
.int _Lt_00A5
.int 0
.long 1
.int 2
.int _Lt_00A6
.int 0
.long 2
.int 2
.int _Lt_00A9
.int 0
.long 3
.int 2
.int _Lt_00AA
.int -1
.skip 4,0
.skip 16,0
.int _Lt_00AB
.int 8192
.int 2
.int _Lt_0067
.int _Lt_006B
.skip 8,0
.int 2
.int _Lt_006C
.int 0
.long 1
.int 2
.int _Lt_006D
.int 0
.long 0
.int 2
.int _Lt_006E
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00AC
.int 8192
.int 2
.int _Lt_0067
.int _Lt_006B
.skip 8,0
.int 2
.int _Lt_00AD
.int 0
.long 1
.int 2
.int _Lt_00AE
.int 0
.long 0
.int 2
.int _Lt_00AF
.int 0
.long 1
.int 2
.int _Lt_00B0
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00B1
.int 16
.int 1
.int _Lt_0075
.skip 12,0
.int 2
.int _Lt_0076
.int 0
.long 0
.int 2
.int _Lt_0077
.int 1
.long 0
.int 2
.int _Lt_0078
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B2
.int 16
.int 1
.int _Lt_0075
.skip 12,0
.int 2
.int _Lt_0076
.int 0
.long 0
.int 2
.int _Lt_007A
.int 1
.long 0
.int 2
.int _Lt_0078
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B3
.int 32768
.int 2
.int _Lt_006B
.int _Lt_007C
.skip 8,0
.int 2
.int _Lt_00B4
.int 0
.long 0
.int 2
.int _Lt_00B5
.int 0
.long 1
.int 2
.int _Lt_007F
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B3
.int 65536
.int 2
.int _Lt_006B
.int _Lt_007C
.skip 8,0
.int 2
.int _Lt_00B6
.int 0
.long 0
.int 2
.int _Lt_00B5
.int 0
.long 1
.int 2
.int _Lt_007F
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0080
.int 0
.int 3
.int _Lt_0081
.int _Lt_0082
.int _Lt_0083
.skip 4,0
.int 2
.int _Lt_0084
.int 0
.long 0
.int 2
.int _Lt_0085
.int 0
.long 0
.int 2
.int _Lt_0086
.int 0
.long 1
.int 2
.int _Lt_0087
.int 0
.long 1
.int 2
.int _Lt_0088
.int 0
.long 2
.int 2
.int _Lt_0089
.int -1
.skip 4,0
.int _Lt_00B7
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_00B8
.int 0
.long 0
.int 2
.int _Lt_008D
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00B9
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_00B8
.int 0
.long 0
.int 2
.int _Lt_00BA
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BB
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_00B8
.int 0
.long 0
.int 2
.int _Lt_0093
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BC
.int 0
.int 1
.int _Lt_008B
.skip 12,0
.int 2
.int _Lt_00BD
.int 0
.long 0
.int 2
.int _Lt_00BE
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BF
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_0098
.int 0
.long 0
.int 2
.int _Lt_00C0
.int 0
.long 0
.int 2
.int _Lt_00C1
.int 0
.long 1
.int 2
.int _Lt_009B
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00C2
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_009D
.int 0
.long 0
.int 2
.int _Lt_00C3
.int 0
.long 0
.int 2
.int _Lt_00C1
.int 0
.long 1
.int 2
.int _Lt_009F
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00C4
.int 0
.int 2
.int _Lt_008B
.int _Lt_0097
.skip 8,0
.int 2
.int _Lt_009D
.int 0
.long 0
.int 2
.int _Lt_00C5
.int 0
.long 0
.int 2
.int _Lt_00C1
.int 0
.long 1
.int 2
.int _Lt_009F
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
_Lt_00A3:	.ascii	"__RGB\0"
.balign 4
_Lt_00A4:	.ascii	"__culng((__culng(__cubyte(\0"
.balign 4
_Lt_00A5:	.ascii	")) __shl 16) or (__culng(__cubyte(\0"
.balign 4
_Lt_00A6:	.ascii	")) __shl 8) or __culng(__cubyte(\0"
.balign 4
_Lt_00A7:	.ascii	")) or &hFF000000ul)\0"
.balign 4
_Lt_00A8:	.ascii	"__RGBA\0"
.balign 4
_Lt_00A9:	.ascii	")) or (__culng(__cubyte(\0"
.balign 4
_Lt_00AA:	.ascii	")) __shl 24))\0"
.balign 4
_Lt_00AB:	.ascii	"__VA_ARG\0"
.balign 4
_Lt_00AC:	.ascii	"__VA_NEXT\0"
.balign 4
_Lt_00AD:	.ascii	"(__cptr(\0"
.balign 4
_Lt_00AE:	.ascii	" __ptr, __cptr(__byte __ptr, \0"
.balign 4
_Lt_00AF:	.ascii	") + (__sizeof(\0"
.balign 4
_Lt_00B0:	.ascii	") + __sizeof(any __ptr)-1 and -__sizeof(any __ptr)) ) )\0"
.balign 4
_Lt_00B1:	.ascii	"__ASSERT\0"
.balign 4
_Lt_00B2:	.ascii	"__ASSERTWARN\0"
.balign 4
_Lt_00B3:	.ascii	"__OFFSETOF\0"
.balign 4
_Lt_00B4:	.ascii	"clng( @__cast( \0"
.balign 4
_Lt_00B5:	.ascii	" __ptr, 0 )->\0"
.balign 4
_Lt_00B6:	.ascii	"__clngint( @__cast( \0"
.balign 4
_Lt_00B7:	.ascii	"__LOWORD\0"
.balign 4
_Lt_00B8:	.ascii	"(__cuint(\0"
.balign 4
_Lt_00B9:	.ascii	"__HIWORD\0"
.balign 4
_Lt_00BA:	.ascii	") __shr 16)\0"
.balign 4
_Lt_00BB:	.ascii	"__LOBYTE\0"
.balign 4
_Lt_00BC:	.ascii	"__HIBYTE\0"
.balign 4
_Lt_00BD:	.ascii	"((__cuint(\0"
.balign 4
_Lt_00BE:	.ascii	") and &h0000FF00) __shr 8)\0"
.balign 4
_Lt_00BF:	.ascii	"__BIT\0"
.balign 4
_Lt_00C0:	.ascii	") and (__cast(__typeof(\0"
.balign 4
_Lt_00C1:	.ascii	"), 1) __shl (\0"
.balign 4
_Lt_00C2:	.ascii	"__BITSET\0"
.balign 4
_Lt_00C3:	.ascii	") or (__cast(__typeof(\0"
.balign 4
_Lt_00C4:	.ascii	"__BITRESET\0"
.balign 4
_Lt_00C5:	.ascii	") and not (__cast(__typeof(\0"

.section .ctors
.int _fb_ctor__rtlzmacro
