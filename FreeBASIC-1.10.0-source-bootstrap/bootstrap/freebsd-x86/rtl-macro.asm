	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLMACROMODINIT
RTLMACROMODINIT:
.L_00ED:
cmp dword ptr [ENV+136], 3
jne .L_00F0
push offset MACRODATAQB
call HADDMACROS
add esp, 4
jmp .L_00EF
.L_00F0:
push offset MACRODATA
call HADDMACROS
add esp, 4
.L_00EF:
.L_00EE:
ret
.balign 16

.globl RTLMACROMODEND
RTLMACROMODEND:
.L_00F1:
.L_00F2:
ret
.balign 16
fb_ctor__rtlzmacro:
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
HADDMACRO:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.L_00C6:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
dec ebx
mov dword ptr [ebp-28], ebx
jmp .L_00C9
.L_00CC:
or dword ptr [ebp-8], 8
mov ebx, dword ptr [ebp-24]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+12]
push dword ptr [ebp-16]
call SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
jne .L_00CE
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.L_00CE:
.L_00CD:
.L_00CA:
inc dword ptr [ebp-24]
.L_00C9:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .L_00CC
.L_00CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .L_00D0
cmp dword ptr [ENV+152], 0
jne .L_00D2
mov dword ptr [ebp-4], 0
.L_00D2:
.L_00D1:
.L_00D0:
.L_00CF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8192
test eax, eax
je .L_00D4
cmp dword ptr [ENV+104], 1
jne .L_00D6
mov dword ptr [ebp-4], 0
or dword ptr [ebp-8], 2
.L_00D6:
.L_00D5:
.L_00D4:
.L_00D3:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-4], 0
je .L_00D8
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+28]
mov dword ptr [ebp-28], ebx
.L_00D9:
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], -1
je .L_00DA
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-24]
call SYMBADDDEFINETOK
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-20], 0
jne .L_00DC
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .L_00E0
.L_00E1:
cmp dword ptr [ebp-32], 1
jne .L_00DF
.L_00E0:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
jmp .L_00DD
.L_00DF:
cmp dword ptr [ebp-32], 2
jne .L_00E2
.L_00E3:
mov ecx, dword ptr [ebp-28]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp-24]
lea eax, [ecx+4]
push eax
call ZSTRASSIGN
add esp, 8
.L_00E2:
.L_00DD:
add dword ptr [ebp-28], 8
jmp .L_00D9
.L_00DA:
.L_00D8:
.L_00D7:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBADDDEFINEMACRO
add esp, 20
.L_00C7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDMACROS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.L_00E4:
.L_00E6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .L_00E7
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
je .L_00E9
call FBIS64BIT
not eax
and dword ptr [ebp-4], eax
jmp .L_00E8
.L_00E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
je .L_00EA
call FBIS64BIT
and dword ptr [ebp-4], eax
.L_00EA:
.L_00E8:
cmp dword ptr [ebp-4], 0
je .L_00EC
push dword ptr [ebp+8]
call HADDMACRO
add esp, 4
.L_00EC:
.L_00EB:
add dword ptr [ebp+8], 124
jmp .L_00E6
.L_00E7:
.L_00E5:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48

.section .data
.balign 4
MACRODATA:
.int Lt_005D
.int 0
.int 3
.int Lt_005E
.int Lt_005F
.int Lt_0060
.skip 4,0
.int 2
.int Lt_0061
.int 0
.long 0
.int 2
.int Lt_0062
.int 0
.long 1
.int 2
.int Lt_0063
.int 0
.long 2
.int 2
.int Lt_0064
.int -1
.skip 4,0
.skip 32,0
.int Lt_0065
.int 0
.int 4
.int Lt_005E
.int Lt_005F
.int Lt_0060
.int Lt_0066
.int 2
.int Lt_0061
.int 0
.long 0
.int 2
.int Lt_0062
.int 0
.long 1
.int 2
.int Lt_0063
.int 0
.long 2
.int 2
.int Lt_0067
.int 0
.long 3
.int 2
.int Lt_0068
.int -1
.skip 4,0
.skip 16,0
.int Lt_0069
.int 8192
.int 2
.int Lt_0066
.int Lt_006A
.skip 8,0
.int 2
.int Lt_006B
.int 0
.long 1
.int 2
.int Lt_006C
.int 0
.long 0
.int 2
.int Lt_006D
.int -1
.skip 4,0
.skip 48,0
.int Lt_006E
.int 8192
.int 2
.int Lt_0066
.int Lt_006A
.skip 8,0
.int 2
.int Lt_006F
.int 0
.long 1
.int 2
.int Lt_0070
.int 0
.long 0
.int 2
.int Lt_0071
.int 0
.long 1
.int 2
.int Lt_0072
.int -1
.skip 4,0
.skip 32,0
.int Lt_0073
.int 16
.int 1
.int Lt_0074
.skip 12,0
.int 2
.int Lt_0075
.int 0
.long 0
.int 2
.int Lt_0076
.int 1
.long 0
.int 2
.int Lt_0077
.int -1
.skip 4,0
.skip 48,0
.int Lt_0078
.int 16
.int 1
.int Lt_0074
.skip 12,0
.int 2
.int Lt_0075
.int 0
.long 0
.int 2
.int Lt_0079
.int 1
.long 0
.int 2
.int Lt_0077
.int -1
.skip 4,0
.skip 48,0
.int Lt_007A
.int 0
.int 2
.int Lt_006A
.int Lt_007B
.skip 8,0
.int 2
.int Lt_007C
.int 0
.long 0
.int 2
.int Lt_007D
.int 0
.long 1
.int 2
.int Lt_007E
.int -1
.skip 4,0
.skip 48,0
.int Lt_007F
.int 0
.int 3
.int Lt_0080
.int Lt_0081
.int Lt_0082
.skip 4,0
.int 2
.int Lt_0083
.int 0
.long 0
.int 2
.int Lt_0084
.int 0
.long 0
.int 2
.int Lt_0085
.int 0
.long 1
.int 2
.int Lt_0086
.int 0
.long 1
.int 2
.int Lt_0087
.int 0
.long 2
.int 2
.int Lt_0088
.int -1
.skip 4,0
.int Lt_0089
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_008B
.int 0
.long 0
.int 2
.int Lt_008C
.int -1
.skip 4,0
.skip 64,0
.int Lt_008D
.int 32768
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_008B
.int 0
.long 0
.int 2
.int Lt_008E
.int -1
.skip 4,0
.skip 64,0
.int Lt_008D
.int 65536
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_008F
.int 0
.long 0
.int 2
.int Lt_0090
.int -1
.skip 4,0
.skip 64,0
.int Lt_0091
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_008B
.int 0
.long 0
.int 2
.int Lt_0092
.int -1
.skip 4,0
.skip 64,0
.int Lt_0093
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_008F
.int 0
.long 0
.int 2
.int Lt_0094
.int -1
.skip 4,0
.skip 64,0
.int Lt_0095
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_0097
.int 0
.long 0
.int 2
.int Lt_0098
.int 0
.long 0
.int 2
.int Lt_0099
.int 0
.long 1
.int 2
.int Lt_009A
.int -1
.skip 4,0
.skip 32,0
.int Lt_009B
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_009C
.int 0
.long 0
.int 2
.int Lt_009D
.int 0
.long 0
.int 2
.int Lt_0099
.int 0
.long 1
.int 2
.int Lt_009E
.int -1
.skip 4,0
.skip 32,0
.int Lt_009F
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_009C
.int 0
.long 0
.int 2
.int Lt_00A0
.int 0
.long 0
.int 2
.int Lt_0099
.int 0
.long 1
.int 2
.int Lt_009E
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
Lt_005D:	.ascii	"RGB\0"
.balign 4
Lt_005E:	.ascii	"R\0"
.balign 4
Lt_005F:	.ascii	"G\0"
.balign 4
Lt_0060:	.ascii	"B\0"
.balign 4
Lt_0061:	.ascii	"culng((culng(cubyte(\0"
.balign 4
Lt_0062:	.ascii	")) shl 16) or (culng(cubyte(\0"
.balign 4
Lt_0063:	.ascii	")) shl 8) or culng(cubyte(\0"
.balign 4
Lt_0064:	.ascii	")) or (&hFF000000ul))\0"
.balign 4
Lt_0065:	.ascii	"RGBA\0"
.balign 4
Lt_0066:	.ascii	"A\0"
.balign 4
Lt_0067:	.ascii	")) or (culng(cubyte(\0"
.balign 4
Lt_0068:	.ascii	")) shl 24))\0"
.balign 4
Lt_0069:	.ascii	"VA_ARG\0"
.balign 4
Lt_006A:	.ascii	"T\0"
.balign 4
Lt_006B:	.ascii	"peek(\0"
.balign 4
Lt_006C:	.ascii	",\0"
.balign 4
Lt_006D:	.ascii	")\0"
.balign 4
Lt_006E:	.ascii	"VA_NEXT\0"
.balign 4
Lt_006F:	.ascii	"(cptr(\0"
.balign 4
Lt_0070:	.ascii	" ptr, cptr(byte ptr, \0"
.balign 4
Lt_0071:	.ascii	") + (sizeof(\0"
.balign 4
Lt_0072:	.ascii	") + sizeof(any ptr)-1 and -sizeof(any ptr)) ) )\0"
.balign 4
Lt_0073:	.ascii	"ASSERT\0"
.balign 4
Lt_0074:	.ascii	"E\0"
.balign 4
Lt_0075:	.ascii	"if (\0"
.balign 4
Lt_0076:	.ascii	") = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
Lt_0077:	.ascii	") end if\0"
.balign 4
Lt_0078:	.ascii	"ASSERTWARN\0"
.balign 4
Lt_0079:	.ascii	") = 0 then fb_AssertWarn(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
Lt_007A:	.ascii	"OFFSETOF\0"
.balign 4
Lt_007B:	.ascii	"F\0"
.balign 4
Lt_007C:	.ascii	"cint( @cast( \0"
.balign 4
Lt_007D:	.ascii	" ptr, 0 )->\0"
.balign 4
Lt_007E:	.ascii	" )\0"
.balign 4
Lt_007F:	.ascii	"__FB_MIN_VERSION__\0"
.balign 4
Lt_0080:	.ascii	"MAJOR\0"
.balign 4
Lt_0081:	.ascii	"MINOR\0"
.balign 4
Lt_0082:	.ascii	"PATCH_LEVEL\0"
.balign 4
Lt_0083:	.ascii	"((__FB_VER_MAJOR__ > (\0"
.balign 4
Lt_0084:	.ascii	")) or ((__FB_VER_MAJOR__ = (\0"
.balign 4
Lt_0085:	.ascii	")) and ((__FB_VER_MINOR__ > (\0"
.balign 4
Lt_0086:	.ascii	")) or (__FB_VER_MINOR__ = (\0"
.balign 4
Lt_0087:	.ascii	") and __FB_VER_PATCH__ >= (\0"
.balign 4
Lt_0088:	.ascii	")))))\0"
.balign 4
Lt_0089:	.ascii	"LOWORD\0"
.balign 4
Lt_008A:	.ascii	"X\0"
.balign 4
Lt_008B:	.ascii	"(cuint(\0"
.balign 4
Lt_008C:	.ascii	") and &h0000FFFF)\0"
.balign 4
Lt_008D:	.ascii	"HIWORD\0"
.balign 4
Lt_008E:	.ascii	") shr 16)\0"
.balign 4
Lt_008F:	.ascii	"((cuint(\0"
.balign 4
Lt_0090:	.ascii	") and &hFFFF0000u) shr 16)\0"
.balign 4
Lt_0091:	.ascii	"LOBYTE\0"
.balign 4
Lt_0092:	.ascii	") and &h000000FF)\0"
.balign 4
Lt_0093:	.ascii	"HIBYTE\0"
.balign 4
Lt_0094:	.ascii	") and &h0000FF00) shr 8)\0"
.balign 4
Lt_0095:	.ascii	"BIT\0"
.balign 4
Lt_0096:	.ascii	"Y\0"
.balign 4
Lt_0097:	.ascii	"(((\0"
.balign 4
Lt_0098:	.ascii	") and (cast(typeof(\0"
.balign 4
Lt_0099:	.ascii	"), 1) shl (\0"
.balign 4
Lt_009A:	.ascii	"))) <> 0)\0"
.balign 4
Lt_009B:	.ascii	"BITSET\0"
.balign 4
Lt_009C:	.ascii	"((\0"
.balign 4
Lt_009D:	.ascii	") or (cast(typeof(\0"
.balign 4
Lt_009E:	.ascii	")))\0"
.balign 4
Lt_009F:	.ascii	"BITRESET\0"
.balign 4
Lt_00A0:	.ascii	") and not (cast(typeof(\0"
.balign 4
MACRODATAQB:
.int Lt_00A2
.int 0
.int 3
.int Lt_005E
.int Lt_005F
.int Lt_0060
.skip 4,0
.int 2
.int Lt_00A3
.int 0
.long 0
.int 2
.int Lt_00A4
.int 0
.long 1
.int 2
.int Lt_00A5
.int 0
.long 2
.int 2
.int Lt_00A6
.int -1
.skip 4,0
.skip 32,0
.int Lt_00A7
.int 0
.int 4
.int Lt_005E
.int Lt_005F
.int Lt_0060
.int Lt_0066
.int 2
.int Lt_00A3
.int 0
.long 0
.int 2
.int Lt_00A4
.int 0
.long 1
.int 2
.int Lt_00A5
.int 0
.long 2
.int 2
.int Lt_00A8
.int 0
.long 3
.int 2
.int Lt_00A9
.int -1
.skip 4,0
.skip 16,0
.int Lt_00AA
.int 8192
.int 2
.int Lt_0066
.int Lt_006A
.skip 8,0
.int 2
.int Lt_006B
.int 0
.long 1
.int 2
.int Lt_006C
.int 0
.long 0
.int 2
.int Lt_006D
.int -1
.skip 4,0
.skip 48,0
.int Lt_00AB
.int 8192
.int 2
.int Lt_0066
.int Lt_006A
.skip 8,0
.int 2
.int Lt_00AC
.int 0
.long 1
.int 2
.int Lt_00AD
.int 0
.long 0
.int 2
.int Lt_00AE
.int 0
.long 1
.int 2
.int Lt_00AF
.int -1
.skip 4,0
.skip 32,0
.int Lt_00B0
.int 16
.int 1
.int Lt_0074
.skip 12,0
.int 2
.int Lt_0075
.int 0
.long 0
.int 2
.int Lt_0076
.int 1
.long 0
.int 2
.int Lt_0077
.int -1
.skip 4,0
.skip 48,0
.int Lt_00B1
.int 16
.int 1
.int Lt_0074
.skip 12,0
.int 2
.int Lt_0075
.int 0
.long 0
.int 2
.int Lt_0079
.int 1
.long 0
.int 2
.int Lt_0077
.int -1
.skip 4,0
.skip 48,0
.int Lt_00B2
.int 32768
.int 2
.int Lt_006A
.int Lt_007B
.skip 8,0
.int 2
.int Lt_00B3
.int 0
.long 0
.int 2
.int Lt_00B4
.int 0
.long 1
.int 2
.int Lt_007E
.int -1
.skip 4,0
.skip 48,0
.int Lt_00B2
.int 65536
.int 2
.int Lt_006A
.int Lt_007B
.skip 8,0
.int 2
.int Lt_00B5
.int 0
.long 0
.int 2
.int Lt_00B4
.int 0
.long 1
.int 2
.int Lt_007E
.int -1
.skip 4,0
.skip 48,0
.int Lt_007F
.int 0
.int 3
.int Lt_0080
.int Lt_0081
.int Lt_0082
.skip 4,0
.int 2
.int Lt_0083
.int 0
.long 0
.int 2
.int Lt_0084
.int 0
.long 0
.int 2
.int Lt_0085
.int 0
.long 1
.int 2
.int Lt_0086
.int 0
.long 1
.int 2
.int Lt_0087
.int 0
.long 2
.int 2
.int Lt_0088
.int -1
.skip 4,0
.int Lt_00B6
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_00B7
.int 0
.long 0
.int 2
.int Lt_008C
.int -1
.skip 4,0
.skip 64,0
.int Lt_00B8
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_00B7
.int 0
.long 0
.int 2
.int Lt_00B9
.int -1
.skip 4,0
.skip 64,0
.int Lt_00BA
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_00B7
.int 0
.long 0
.int 2
.int Lt_0092
.int -1
.skip 4,0
.skip 64,0
.int Lt_00BB
.int 0
.int 1
.int Lt_008A
.skip 12,0
.int 2
.int Lt_00BC
.int 0
.long 0
.int 2
.int Lt_00BD
.int -1
.skip 4,0
.skip 64,0
.int Lt_00BE
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_0097
.int 0
.long 0
.int 2
.int Lt_00BF
.int 0
.long 0
.int 2
.int Lt_00C0
.int 0
.long 1
.int 2
.int Lt_009A
.int -1
.skip 4,0
.skip 32,0
.int Lt_00C1
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_009C
.int 0
.long 0
.int 2
.int Lt_00C2
.int 0
.long 0
.int 2
.int Lt_00C0
.int 0
.long 1
.int 2
.int Lt_009E
.int -1
.skip 4,0
.skip 32,0
.int Lt_00C3
.int 0
.int 2
.int Lt_008A
.int Lt_0096
.skip 8,0
.int 2
.int Lt_009C
.int 0
.long 0
.int 2
.int Lt_00C4
.int 0
.long 0
.int 2
.int Lt_00C0
.int 0
.long 1
.int 2
.int Lt_009E
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
Lt_00A2:	.ascii	"__RGB\0"
.balign 4
Lt_00A3:	.ascii	"__culng((__culng(__cubyte(\0"
.balign 4
Lt_00A4:	.ascii	")) __shl 16) or (__culng(__cubyte(\0"
.balign 4
Lt_00A5:	.ascii	")) __shl 8) or __culng(__cubyte(\0"
.balign 4
Lt_00A6:	.ascii	")) or &hFF000000ul)\0"
.balign 4
Lt_00A7:	.ascii	"__RGBA\0"
.balign 4
Lt_00A8:	.ascii	")) or (__culng(__cubyte(\0"
.balign 4
Lt_00A9:	.ascii	")) __shl 24))\0"
.balign 4
Lt_00AA:	.ascii	"__VA_ARG\0"
.balign 4
Lt_00AB:	.ascii	"__VA_NEXT\0"
.balign 4
Lt_00AC:	.ascii	"(__cptr(\0"
.balign 4
Lt_00AD:	.ascii	" __ptr, __cptr(__byte __ptr, \0"
.balign 4
Lt_00AE:	.ascii	") + (__sizeof(\0"
.balign 4
Lt_00AF:	.ascii	") + __sizeof(any __ptr)-1 and -__sizeof(any __ptr)) ) )\0"
.balign 4
Lt_00B0:	.ascii	"__ASSERT\0"
.balign 4
Lt_00B1:	.ascii	"__ASSERTWARN\0"
.balign 4
Lt_00B2:	.ascii	"__OFFSETOF\0"
.balign 4
Lt_00B3:	.ascii	"clng( @__cast( \0"
.balign 4
Lt_00B4:	.ascii	" __ptr, 0 )->\0"
.balign 4
Lt_00B5:	.ascii	"__clngint( @__cast( \0"
.balign 4
Lt_00B6:	.ascii	"__LOWORD\0"
.balign 4
Lt_00B7:	.ascii	"(__cuint(\0"
.balign 4
Lt_00B8:	.ascii	"__HIWORD\0"
.balign 4
Lt_00B9:	.ascii	") __shr 16)\0"
.balign 4
Lt_00BA:	.ascii	"__LOBYTE\0"
.balign 4
Lt_00BB:	.ascii	"__HIBYTE\0"
.balign 4
Lt_00BC:	.ascii	"((__cuint(\0"
.balign 4
Lt_00BD:	.ascii	") and &h0000FF00) __shr 8)\0"
.balign 4
Lt_00BE:	.ascii	"__BIT\0"
.balign 4
Lt_00BF:	.ascii	") and (__cast(__typeof(\0"
.balign 4
Lt_00C0:	.ascii	"), 1) __shl (\0"
.balign 4
Lt_00C1:	.ascii	"__BITSET\0"
.balign 4
Lt_00C2:	.ascii	") or (__cast(__typeof(\0"
.balign 4
Lt_00C3:	.ascii	"__BITRESET\0"
.balign 4
Lt_00C4:	.ascii	") and not (__cast(__typeof(\0"

.section .ctors
.int fb_ctor__rtlzmacro
