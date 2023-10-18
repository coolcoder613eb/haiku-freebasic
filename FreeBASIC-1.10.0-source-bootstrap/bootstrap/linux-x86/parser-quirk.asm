	.intel_syntax noprefix

.section .text
.balign 16

.globl CQUIRKSTMT
CQUIRKSTMT:
.type CQUIRKSTMT, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.L_0066:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], -1
jne .L_0069
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
je .L_006D
.L_006E:
cmp dword ptr [ebp-12], 2
jne .L_006C
.L_006D:
cmp dword ptr [ENV+136], 3
jne .L_0070
mov eax, dword ptr [LEX+840072]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .L_0072
mov dword ptr [ebp-4], 0
jmp .L_0067
.L_0072:
.L_0071:
.L_0070:
.L_006F:
jmp .L_006A
.L_006C:
cmp dword ptr [ebp+8], 63
jne .L_0075
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0077
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0077:
.L_0076:
sub esp, 12
push dword ptr [ebp+8]
call CPRINTSTMT
add esp, 16
mov dword ptr [ebp-4], eax
.L_0075:
.L_0074:
jmp .L_0067
.L_0073:
.L_006A:
.L_0069:
.L_0068:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .L_0079
.L_007B:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_007D
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_007D:
.L_007C:
sub esp, 12
push dword ptr [ebp+8]
call CGOTOSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_007E:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0080
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0080:
.L_007F:
sub esp, 12
push dword ptr [ebp+8]
call CPRINTSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0081:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0083
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0083:
.L_0082:
sub esp, 12
push dword ptr [ebp+8]
call CDATASTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0084:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0086
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0086:
.L_0085:
call CERASESTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0087:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0089
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0089:
.L_0088:
call CSWAPSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_008A:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_008C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_008C:
.L_008B:
call CLINEINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_008D:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_008F
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_008F:
.L_008E:
call CINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0090:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0092
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0092:
.L_0091:
call CPOKESTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0093:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0095
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0095:
.L_0094:
sub esp, 12
push dword ptr [ebp+8]
call CFILESTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0096:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_0098
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_0098:
.L_0097:
call CONSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0099:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_009B
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_009B:
.L_009A:
call CWRITESTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_009C:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_009E
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_009E:
.L_009D:
call CERRORSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_009F:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00A1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00A1:
.L_00A0:
call CERRSETSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_00A2:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00A4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00A4:
.L_00A3:
sub esp, 12
push 0
call CVIEWSTMT
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0078
.L_00A5:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00A7
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00A7:
.L_00A6:
call CMIDSTMT
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_00A8:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00AA
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00AA:
.L_00A9:
sub esp, 12
push dword ptr [ebp+8]
call CLRSETSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_00AB:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00AD
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00AD:
.L_00AC:
sub esp, 12
push 0
call CWIDTHSTMT
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0078
.L_00AE:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00B0
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00B0:
.L_00AF:
sub esp, 12
push 0
call CCOLORSTMT
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .L_0078
.L_00B1:
cmp dword ptr [ENV+136], 3
jne .L_00B3
sub esp, 12
push 0
call CCOMMENT
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B3:
.L_00B2:
jmp .L_0078
.L_00B4:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .L_00B6
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .L_0067
.L_00B6:
.L_00B5:
sub esp, 12
push dword ptr [ebp+8]
call CVALISTSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_0078
.L_0079:
mov eax, dword ptr [ebp-12]
add eax, 4294967036
cmp eax, 258
ja .L_0078
mov eax, dword ptr [ebp-12]
jmp dword ptr [.L_00B7+eax*4-1040]
.L_00B7:
.int .L_00B1
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_007B
.int .L_007B
.int .L_007B
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_00A8
.int .L_00A8
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_00A5
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0081
.int .L_0081
.int .L_0081
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_007E
.int .L_007E
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0090
.int .L_0087
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0093
.int .L_0078
.int .L_0099
.int .L_0093
.int .L_008D
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0093
.int .L_0078
.int .L_0078
.int .L_008A
.int .L_00A2
.int .L_0093
.int .L_00AB
.int .L_00AE
.int .L_0078
.int .L_0084
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0096
.int .L_009C
.int .L_0078
.int .L_009F
.int .L_007B
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_0078
.int .L_00B4
.int .L_0078
.int .L_00B4
.int .L_00B4
.L_0078:
cmp dword ptr [ebp-8], 0
jne .L_00B9
sub esp, 12
push dword ptr [ebp+8]
call CGFXSTMT
add esp, 16
mov dword ptr [ebp-8], eax
.L_00B9:
.L_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CQUIRKSTMT, .-CQUIRKSTMT
.cfi_endproc
.balign 16

.globl CQUIRKFUNCTION
CQUIRKFUNCTION:
.type CQUIRKFUNCTION, @function
.cfi_startproc
push ebp
.cfi_def_cfa_offset 8
.cfi_offset 5, -8
mov ebp, esp
.cfi_def_cfa_register 5
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.L_00BD:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [PARSER+152]
and ebx, 1024
test ebx, ebx
je .L_00C0
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 336
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 8
push 0
push 1
mov esi, eax
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
and esi, ebx
je .L_00C2
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .L_00BE
.L_00C2:
.L_00C1:
.L_00C0:
.L_00BF:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .L_00C5
.L_00C7:
sub esp, 12
push dword ptr [ebp-12]
call CMKXFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00C8:
sub esp, 12
push dword ptr [ebp-12]
call CCVXFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00C9:
sub esp, 12
push dword ptr [ebp-12]
call CSTRINGFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CA:
sub esp, 8
push 0
push dword ptr [ebp-12]
call CMATHFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CB:
call CPEEKFUNCT
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CC:
sub esp, 12
push dword ptr [ebp-12]
call CARRAYFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CD:
sub esp, 12
push dword ptr [ebp-12]
call CFILEFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CE:
call CERRORFUNCT
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00CF:
sub esp, 12
sub esp, 4
call CIIFFUNCT
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BE
jmp .L_00C4
.L_00D0:
call CVAFUNCT
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D1:
sub esp, 12
push dword ptr [ebp-12]
call CVALISTFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D2:
sub esp, 8
push 0
push dword ptr [ebp-12]
call CTYPECONVEXPR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BE
jmp .L_00C4
.L_00D3:
sub esp, 12
sub esp, 4
call CANONTYPE
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .L_00BE
jmp .L_00C4
.L_00D4:
sub esp, 12
push -1
call CVIEWSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D5:
sub esp, 12
push -1
call CWIDTHSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D6:
sub esp, 12
push -1
call CCOLORSTMT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D7:
call CSCREENFUNCT
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00D8:
call CTHREADCALLFUNC
mov dword ptr [ebp-8], eax
jmp .L_00C4
.L_00C5:
mov eax, dword ptr [ebp-16]
add eax, 4294966960
cmp eax, 183
ja .L_00C4
mov eax, dword ptr [ebp-16]
jmp dword ptr [.L_00D9+eax*4-1344]
.L_00D9:
.int .L_00D3
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C9
.int .L_00C4
.int .L_00C9
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00D2
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
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
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C7
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C9
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00CA
.int .L_00C4
.int .L_00C4
.int .L_00CA
.int .L_00CA
.int .L_00CB
.int .L_00C4
.int .L_00C4
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00CD
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00CD
.int .L_00CD
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00CD
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00D4
.int .L_00C4
.int .L_00D5
.int .L_00D6
.int .L_00C4
.int .L_00C4
.int .L_00CC
.int .L_00CC
.int .L_00D0
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00CE
.int .L_00C4
.int .L_00CF
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00D7
.int .L_00D7
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00C4
.int .L_00D1
.int .L_00C4
.int .L_00C4
.int .L_00D8
.L_00C4:
cmp dword ptr [ebp-8], 0
jne .L_00DB
sub esp, 12
push dword ptr [ebp-12]
call CGFXFUNCT
add esp, 16
mov dword ptr [ebp-8], eax
.L_00DB:
.L_00DA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.L_00BE:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
.cfi_restore 5
.cfi_def_cfa 4, 4
ret
.size CQUIRKFUNCTION, .-CQUIRKFUNCTION
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

.section .bss
.balign 4
	.lcomm	Lt_0059,36
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,48
