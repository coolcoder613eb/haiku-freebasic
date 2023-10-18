	.intel_syntax noprefix

.section .text
.balign 16

.globl _CQUIRKSTMT@4
_CQUIRKSTMT@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.L_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], -1
jne .L_006A
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp+8], eax
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
je .L_006E
.L_006F:
cmp dword ptr [ebp-12], 2
jne .L_006D
.L_006E:
cmp dword ptr [_ENV+136], 3
jne .L_0071
mov eax, dword ptr [_LEX+422280]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .L_0073
mov dword ptr [ebp-4], 0
jmp .L_0068
.L_0073:
.L_0072:
.L_0071:
.L_0070:
jmp .L_006B
.L_006D:
cmp dword ptr [ebp+8], 63
jne .L_0076
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0078
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0078:
.L_0077:
push dword ptr [ebp+8]
call _CPRINTSTMT@4
mov dword ptr [ebp-4], eax
.L_0076:
.L_0075:
jmp .L_0068
.L_0074:
.L_006B:
.L_006A:
.L_0069:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_007A
.L_007C:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_007E
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_007E:
.L_007D:
push dword ptr [ebp+8]
call _CGOTOSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_007F:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0081
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0081:
.L_0080:
push dword ptr [ebp+8]
call _CPRINTSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0082:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0084
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0084:
.L_0083:
push dword ptr [ebp+8]
call _CDATASTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0085:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0087
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0087:
.L_0086:
call _CERASESTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0088:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_008A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_008A:
.L_0089:
call _CSWAPSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_008B:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_008D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_008D:
.L_008C:
call _CLINEINPUTSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_008E:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0090
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0090:
.L_008F:
call _CINPUTSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0091:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0093
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0093:
.L_0092:
call _CPOKESTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0094:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0096
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0096:
.L_0095:
push dword ptr [ebp+8]
call _CFILESTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_0097:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_0099
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_0099:
.L_0098:
call _CONSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_009A:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_009C
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_009C:
.L_009B:
call _CWRITESTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_009D:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_009F
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_009F:
.L_009E:
call _CERRORSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_00A0:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00A2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00A2:
.L_00A1:
call _CERRSETSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_00A3:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00A5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00A5:
.L_00A4:
push 0
call _CVIEWSTMT@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0079
.L_00A6:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00A8
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00A8:
.L_00A7:
call _CMIDSTMT@0
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_00A9:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00AB
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00AB:
.L_00AA:
push dword ptr [ebp+8]
call _CLRSETSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_00AC:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00AE
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00AE:
.L_00AD:
push 0
call _CWIDTHSTMT@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0079
.L_00AF:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00B1
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00B1:
.L_00B0:
push 0
call _CCOLORSTMT@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0079
.L_00B2:
cmp dword ptr [_ENV+136], 3
jne .L_00B4
push 0
call _CCOMMENT@4
mov dword ptr [ebp-8], eax
.L_00B4:
.L_00B3:
jmp .L_0079
.L_00B5:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .L_00B7
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .L_0068
.L_00B7:
.L_00B6:
push dword ptr [ebp+8]
call _CVALISTSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_0079
.L_007A:
mov eax, dword ptr [ebp-12]
add eax, 4294967036
cmp eax, 258
ja .L_0079
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.L_00B8+eax*4-1040]
_.L_00B8:
.int .L_00B2
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_007C
.int .L_007C
.int .L_007C
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_00A9
.int .L_00A9
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_00A6
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0082
.int .L_0082
.int .L_0082
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_007F
.int .L_007F
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0091
.int .L_0088
.int .L_0094
.int .L_0094
.int .L_0094
.int .L_0094
.int .L_0094
.int .L_0079
.int .L_009A
.int .L_0094
.int .L_008E
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0094
.int .L_0079
.int .L_0079
.int .L_008B
.int .L_00A3
.int .L_0094
.int .L_00AC
.int .L_00AF
.int .L_0079
.int .L_0085
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0097
.int .L_009D
.int .L_0079
.int .L_00A0
.int .L_007C
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_0079
.int .L_00B5
.int .L_0079
.int .L_00B5
.int .L_00B5
.L_0079:
cmp dword ptr [ebp-8], 0
jne .L_00BA
push dword ptr [ebp+8]
call _CGFXSTMT@4
mov dword ptr [ebp-8], eax
.L_00BA:
.L_00B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CQUIRKFUNCTION@4
_CQUIRKFUNCTION@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00BE:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [_PARSER+152]
and ebx, 1024
test ebx, ebx
je .L_00C1
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 336
setne bl
shr ebx, 1
sbb ebx, ebx
push 0
push 1
mov esi, eax
call _LEXGETLOOKAHEAD@8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
and esi, ebx
je .L_00C3
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-8], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00BF
.L_00C3:
.L_00C2:
.L_00C1:
.L_00C0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_00C6
.L_00C8:
push dword ptr [ebp-12]
call _CMKXFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00C9:
push dword ptr [ebp-12]
call _CCVXFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CA:
push dword ptr [ebp-12]
call _CSTRINGFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CB:
push 0
push dword ptr [ebp-12]
call _CMATHFUNCT@8
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CC:
call _CPEEKFUNCT@0
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CD:
push dword ptr [ebp-12]
call _CARRAYFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CE:
push dword ptr [ebp-12]
call _CFILEFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00CF:
call _CERRORFUNCT@0
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D0:
call _CIIFFUNCT@0
push eax
call _CSTRIDXORMEMBERDEREF@4
mov dword ptr [ebp-4], eax
jmp .L_00BF
jmp .L_00C5
.L_00D1:
call _CVAFUNCT@0
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D2:
push dword ptr [ebp-12]
call _CVALISTFUNCT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D3:
push 0
push dword ptr [ebp-12]
call _CTYPECONVEXPR@8
mov dword ptr [ebp-4], eax
jmp .L_00BF
jmp .L_00C5
.L_00D4:
call _CANONTYPE@0
push eax
call _CSTRIDXORMEMBERDEREF@4
mov dword ptr [ebp-4], eax
jmp .L_00BF
jmp .L_00C5
.L_00D5:
push -1
call _CVIEWSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D6:
push -1
call _CWIDTHSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D7:
push -1
call _CCOLORSTMT@4
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D8:
call _CSCREENFUNCT@0
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00D9:
call _CTHREADCALLFUNC@0
mov dword ptr [ebp-8], eax
jmp .L_00C5
.L_00C6:
mov eax, dword ptr [ebp-16]
add eax, 4294966960
cmp eax, 183
ja .L_00C5
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.L_00DA+eax*4-1344]
_.L_00DA:
.int .L_00D4
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CA
.int .L_00C5
.int .L_00CA
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00D3
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00C8
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00CB
.int .L_00C5
.int .L_00C5
.int .L_00CB
.int .L_00CB
.int .L_00CC
.int .L_00C5
.int .L_00C5
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00CE
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CE
.int .L_00CE
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CE
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00D5
.int .L_00C5
.int .L_00D6
.int .L_00D7
.int .L_00C5
.int .L_00C5
.int .L_00CD
.int .L_00CD
.int .L_00D1
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00CF
.int .L_00C5
.int .L_00D0
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00D8
.int .L_00D8
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00C5
.int .L_00D2
.int .L_00C5
.int .L_00C5
.int .L_00D9
.L_00C5:
cmp dword ptr [ebp-8], 0
jne .L_00DC
push dword ptr [ebp-12]
call _CGFXFUNCT@4
mov dword ptr [ebp-8], eax
.L_00DC:
.L_00DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
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

.section .bss
.balign 4
	.lcomm	_Lt_005A,36
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,48
