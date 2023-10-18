typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int64 len; int64 size; } FBSTRING;
typedef int8 boolean;
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $7DSTRING {
	void* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $7DSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
void* malloc( uint64 );
void* realloc( void*, uint64 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
uint16* fb_WstrAssign( uint16*, int64, uint16* );
uint16* fb_WstrAssignFromA( uint16*, int64, void*, int64 );
FBSTRING* fb_WstrAssignToA( void*, int64, uint16*, int32 );
void fb_StrDelete( FBSTRING* );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint16* );
static void fb_ctor__dstr( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XREALLOCATE( void*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
static void HREALLOC( struct $7DSTRING*, int64, int64, int64 );
typedef int64 $13AST_NODECLASS;
typedef int64 $11AST_OPFLAGS;
typedef int64 $6AST_OP;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 72 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
typedef int64 $12FB_DATACLASS;
typedef int64 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int64 SIZE;
	int64 SIGNED;
	int64 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int64 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 56 );
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 72 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
struct $8FBARRAY2IlE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 96 );
static struct $8FBARRAY2IlE tmp$82$;

void DZSTRZERO( struct $8DZSTRING* DST$1 )
{
	label$10:;
	*(uint8**)DST$1 = (uint8*)0ull;
	*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
	*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
	label$11:;
}

void DZSTRALLOCATE( struct $8DZSTRING* DST$1, int64 CHARS$1 )
{
	label$12:;
	if( CHARS$1 != 0ll ) goto label$15;
	{
		if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$17;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$17:;
		label$16:;
		goto label$13;
	}
	label$15:;
	label$14:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == CHARS$1 ) goto label$19;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, CHARS$1, 1ll, 0ll );
	}
	label$19:;
	label$18:;
	label$13:;
}

void DZSTRRESET( struct $8DZSTRING* DST$1 )
{
	label$20:;
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$23;
	{
		*(*(uint8**)DST$1) = (uint8)0u;
	}
	label$23:;
	label$22:;
	*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
	label$21:;
}

void DZSTRASSIGN( struct $8DZSTRING* DST$1, uint8* SRC$1 )
{
	int64 TMP$83$1;
	label$24:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint8*)0ull ) goto label$26;
	int64 vr$0 = fb_StrLen( (void*)SRC$1, 0ll );
	TMP$83$1 = vr$0;
	goto label$35;
	label$26:;
	TMP$83$1 = 0ll;
	label$35:;
	SRC_LEN$1 = TMP$83$1;
	if( SRC_LEN$1 != 0ll ) goto label$28;
	{
		if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$30;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$30:;
		label$29:;
		goto label$25;
	}
	label$28:;
	label$27:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$32;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1ll, 0ll );
	}
	label$32:;
	label$31:;
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$34;
	{
		fb_StrAssign( *(void**)DST$1, 0ll, (void*)SRC$1, 0ll, 0 );
	}
	label$34:;
	label$33:;
	label$25:;
}

void DZSTRASSIGNW( struct $8DZSTRING* DST$1, uint16* SRC$1 )
{
	int64 TMP$84$1;
	label$36:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint16*)0ull ) goto label$38;
	int64 vr$0 = fb_WstrLen( SRC$1 );
	TMP$84$1 = vr$0;
	goto label$47;
	label$38:;
	TMP$84$1 = 0ll;
	label$47:;
	SRC_LEN$1 = TMP$84$1;
	if( SRC_LEN$1 != 0ll ) goto label$40;
	{
		if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$42;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$42:;
		label$41:;
		goto label$37;
	}
	label$40:;
	label$39:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$44;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1ll, 0ll );
	}
	label$44:;
	label$43:;
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$46;
	{
		fb_WstrAssignToA( *(void**)DST$1, 0ll, SRC$1, 0 );
	}
	label$46:;
	label$45:;
	label$37:;
}

void DZSTRASSIGNC( struct $8DZSTRING* DST$1, uint64 SRC$1 )
{
	label$48:;
	int64 SRC_LEN$1;
	SRC_LEN$1 = 1ll;
	if( SRC_LEN$1 != 0ll ) goto label$51;
	{
		if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$53;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$53:;
		label$52:;
		goto label$49;
	}
	label$51:;
	label$50:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$55;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1ll, 0ll );
	}
	label$55:;
	label$54:;
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$57;
	{
		*(*(uint8**)DST$1) = (uint8)SRC$1;
		*(uint8*)((uint8*)*(uint8**)DST$1 + 1ll) = (uint8)0u;
	}
	label$57:;
	label$56:;
	label$49:;
}

void DZSTRCONCATASSIGN( struct $8DZSTRING* DST$1, uint8* SRC$1 )
{
	int64 TMP$85$1;
	label$58:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint8*)0ull ) goto label$60;
	int64 vr$0 = fb_StrLen( (void*)SRC$1, 0ll );
	TMP$85$1 = vr$0;
	goto label$65;
	label$60:;
	TMP$85$1 = 0ll;
	label$65:;
	SRC_LEN$1 = TMP$85$1;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$62;
	{
		goto label$59;
	}
	label$62:;
	label$61:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 1ll, -1ll );
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$64;
	{
		fb_StrAssign( (void*)((uint8*)*(uint8**)DST$1 + DST_LEN$1), 0ll, (void*)SRC$1, 0ll, 0 );
	}
	label$64:;
	label$63:;
	label$59:;
}

void DZSTRCONCATASSIGNW( struct $8DZSTRING* DST$1, uint16* SRC$1 )
{
	int64 TMP$86$1;
	label$66:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint16*)0ull ) goto label$68;
	int64 vr$0 = fb_WstrLen( SRC$1 );
	TMP$86$1 = vr$0;
	goto label$73;
	label$68:;
	TMP$86$1 = 0ll;
	label$73:;
	SRC_LEN$1 = TMP$86$1;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$70;
	{
		goto label$67;
	}
	label$70:;
	label$69:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 1ll, -1ll );
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$72;
	{
		fb_WstrAssignToA( (void*)((uint8*)*(uint8**)DST$1 + DST_LEN$1), 0ll, SRC$1, 0 );
	}
	label$72:;
	label$71:;
	label$67:;
}

void DZSTRCONCATASSIGNC( struct $8DZSTRING* DST$1, uint64 SRC$1 )
{
	label$74:;
	int64 SRC_LEN$1;
	SRC_LEN$1 = 1ll;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$77;
	{
		goto label$75;
	}
	label$77:;
	label$76:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 1ll, -1ll );
	if( *(uint8**)DST$1 == (uint8*)0ull ) goto label$79;
	{
		*(uint8*)((uint8*)*(uint8**)DST$1 + DST_LEN$1) = (uint8)SRC$1;
		*(uint8*)((uint8*)((uint8*)*(uint8**)DST$1 + DST_LEN$1) + 1ll) = (uint8)0u;
	}
	label$79:;
	label$78:;
	label$75:;
}

void DWSTRZERO( struct $8DWSTRING* DST$1 )
{
	label$80:;
	*(uint16**)DST$1 = (uint16*)0ull;
	*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
	*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
	label$81:;
}

void DWSTRALLOCATE( struct $8DWSTRING* DST$1, int64 CHARS$1 )
{
	label$82:;
	if( CHARS$1 != 0ll ) goto label$85;
	{
		if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$87;
		{
			free( *(void**)DST$1 );
			*(uint16**)DST$1 = (uint16*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$87:;
		label$86:;
		goto label$83;
	}
	label$85:;
	label$84:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == CHARS$1 ) goto label$89;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, CHARS$1, 2ll, 0ll );
	}
	label$89:;
	label$88:;
	label$83:;
}

void DWSTRRESET( struct $8DWSTRING* DST$1 )
{
	label$90:;
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$93;
	{
		*(*(uint16**)DST$1) = (uint16)(uint16)0u;
	}
	label$93:;
	label$92:;
	*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
	label$91:;
}

void DWSTRASSIGN( struct $8DWSTRING* DST$1, uint16* SRC$1 )
{
	int64 TMP$87$1;
	label$94:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint16*)0ull ) goto label$96;
	int64 vr$0 = fb_WstrLen( SRC$1 );
	TMP$87$1 = vr$0;
	goto label$105;
	label$96:;
	TMP$87$1 = 0ll;
	label$105:;
	SRC_LEN$1 = TMP$87$1;
	if( SRC_LEN$1 != 0ll ) goto label$98;
	{
		if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$100;
		{
			free( *(void**)DST$1 );
			*(uint16**)DST$1 = (uint16*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$100:;
		label$99:;
		goto label$95;
	}
	label$98:;
	label$97:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$102;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 2ll, 0ll );
	}
	label$102:;
	label$101:;
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$104;
	{
		fb_WstrAssign( *(uint16**)DST$1, 0ll, SRC$1 );
	}
	label$104:;
	label$103:;
	label$95:;
}

void DWSTRASSIGNA( struct $8DWSTRING* DST$1, uint8* SRC$1 )
{
	int64 TMP$88$1;
	label$106:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint8*)0ull ) goto label$108;
	int64 vr$0 = fb_StrLen( (void*)SRC$1, 0ll );
	TMP$88$1 = vr$0;
	goto label$117;
	label$108:;
	TMP$88$1 = 0ll;
	label$117:;
	SRC_LEN$1 = TMP$88$1;
	if( SRC_LEN$1 != 0ll ) goto label$110;
	{
		if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$112;
		{
			free( *(void**)DST$1 );
			*(uint16**)DST$1 = (uint16*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$112:;
		label$111:;
		goto label$107;
	}
	label$110:;
	label$109:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$114;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 2ll, 0ll );
	}
	label$114:;
	label$113:;
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$116;
	{
		fb_WstrAssignFromA( *(uint16**)DST$1, 0ll, (void*)SRC$1, 0ll );
	}
	label$116:;
	label$115:;
	label$107:;
}

void DWSTRASSIGNC( struct $8DWSTRING* DST$1, uint64 SRC$1 )
{
	label$118:;
	int64 SRC_LEN$1;
	SRC_LEN$1 = 2ll;
	if( SRC_LEN$1 != 0ll ) goto label$121;
	{
		if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$123;
		{
			free( *(void**)DST$1 );
			*(uint16**)DST$1 = (uint16*)0ull;
			*(int64*)((uint8*)DST$1 + 8ll) = 0ll;
			*(int64*)((uint8*)DST$1 + 16ll) = 0ll;
		}
		label$123:;
		label$122:;
		goto label$119;
	}
	label$121:;
	label$120:;
	if( *(int64*)((uint8*)DST$1 + 8ll) == SRC_LEN$1 ) goto label$125;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 2ll, 0ll );
	}
	label$125:;
	label$124:;
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$127;
	{
		*(*(uint16**)DST$1) = (uint16)(uint16)SRC$1;
		*(uint16*)((uint8*)*(uint16**)DST$1 + 2ll) = (uint16)(uint16)0u;
	}
	label$127:;
	label$126:;
	label$119:;
}

void DWSTRCONCATASSIGN( struct $8DWSTRING* DST$1, uint16* SRC$1 )
{
	int64 TMP$89$1;
	label$128:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint16*)0ull ) goto label$130;
	int64 vr$0 = fb_WstrLen( SRC$1 );
	TMP$89$1 = vr$0;
	goto label$135;
	label$130:;
	TMP$89$1 = 0ll;
	label$135:;
	SRC_LEN$1 = TMP$89$1;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$132;
	{
		goto label$129;
	}
	label$132:;
	label$131:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 2ll, -1ll );
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$134;
	{
		fb_WstrAssign( (uint16*)((uint8*)*(uint16**)DST$1 + (DST_LEN$1 << (1ll & 63ll))), 0ll, SRC$1 );
	}
	label$134:;
	label$133:;
	label$129:;
}

void DWSTRCONCATASSIGNA( struct $8DWSTRING* DST$1, uint8* SRC$1 )
{
	int64 TMP$90$1;
	label$136:;
	int64 SRC_LEN$1;
	if( SRC$1 == (uint8*)0ull ) goto label$138;
	int64 vr$0 = fb_StrLen( (void*)SRC$1, 0ll );
	TMP$90$1 = vr$0;
	goto label$143;
	label$138:;
	TMP$90$1 = 0ll;
	label$143:;
	SRC_LEN$1 = TMP$90$1;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$140;
	{
		goto label$137;
	}
	label$140:;
	label$139:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 2ll, -1ll );
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$142;
	{
		fb_WstrAssignFromA( (uint16*)((uint8*)*(uint16**)DST$1 + (DST_LEN$1 << (1ll & 63ll))), 0ll, (void*)SRC$1, 0ll );
	}
	label$142:;
	label$141:;
	label$137:;
}

void DWSTRCONCATASSIGNC( struct $8DWSTRING* DST$1, uint64 SRC$1 )
{
	label$144:;
	int64 SRC_LEN$1;
	SRC_LEN$1 = 2ll;
	int64 DST_LEN$1;
	DST_LEN$1 = *(int64*)((uint8*)DST$1 + 8ll);
	if( SRC_LEN$1 != 0ll ) goto label$147;
	{
		goto label$145;
	}
	label$147:;
	label$146:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int64*)((uint8*)DST$1 + 8ll) + SRC_LEN$1, 2ll, -1ll );
	if( *(uint16**)DST$1 == (uint16*)0ull ) goto label$149;
	{
		*(uint16*)((uint8*)*(uint16**)DST$1 + (DST_LEN$1 << (1ll & 63ll))) = (uint16)(uint16)SRC$1;
		*(uint16*)((uint8*)((uint8*)*(uint16**)DST$1 + (DST_LEN$1 << (1ll & 63ll))) + 2ll) = (uint16)(uint16)0u;
	}
	label$149:;
	label$148:;
	label$145:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HREALLOC( struct $7DSTRING* S$1, int64 CHARS$1, int64 CHARSIZE$1, int64 DOPRESERVE$1 )
{
	label$150:;
	static int64 NEWSIZE$1;
	static void* P$1;
	NEWSIZE$1 = (CHARS$1 + 15ll) & -16ll;
	if( (((int64)-(*(void**)S$1 == (void*)0ull) | (int64)-(CHARS$1 > *(int64*)((uint8*)S$1 + 16ll))) | (int64)-(NEWSIZE$1 < (*(int64*)((uint8*)S$1 + 16ll) - (*(int64*)((uint8*)S$1 + 16ll) >> (3ll & 63ll))))) == 0ll ) goto label$153;
	{
		if( DOPRESERVE$1 != 0ll ) goto label$155;
		{
			if( *(void**)S$1 == (void*)0ull ) goto label$157;
			{
				free( (void*)*(void**)S$1 );
			}
			label$157:;
			label$156:;
			void* vr$17 = malloc( (uint64)((NEWSIZE$1 + 1ll) * CHARSIZE$1) );
			*(void**)S$1 = vr$17;
			if( *(void**)S$1 != (void*)0ull ) goto label$159;
			{
				void* vr$23 = XALLOCATE( (int32)((CHARS$1 + 1ll) * CHARSIZE$1) );
				*(void**)S$1 = vr$23;
				NEWSIZE$1 = CHARS$1;
			}
			label$159:;
			label$158:;
		}
		goto label$154;
		label$155:;
		{
			P$1 = *(void**)S$1;
			void* vr$28 = realloc( (void*)P$1, (uint64)((NEWSIZE$1 + 1ll) * CHARSIZE$1) );
			*(void**)S$1 = vr$28;
			if( *(void**)S$1 != (void*)0ull ) goto label$161;
			{
				void* vr$34 = XREALLOCATE( P$1, (int32)((CHARS$1 + 1ll) * CHARSIZE$1) );
				*(void**)S$1 = vr$34;
				NEWSIZE$1 = CHARS$1;
			}
			label$161:;
			label$160:;
		}
		label$154:;
		*(int64*)((uint8*)S$1 + 16ll) = NEWSIZE$1;
	}
	label$153:;
	label$152:;
	*(int64*)((uint8*)S$1 + 8ll) = CHARS$1;
	label$151:;
}
