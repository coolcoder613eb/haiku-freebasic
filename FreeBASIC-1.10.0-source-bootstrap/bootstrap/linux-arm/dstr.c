typedef   signed char       int8;
typedef unsigned char      uint8;
typedef   signed short      int16;
typedef unsigned short     uint16;
typedef   signed int        int32;
typedef unsigned int       uint32;
typedef   signed long long  int64;
typedef unsigned long long uint64;
typedef struct { char *data; int32 len; int32 size; } FBSTRING;
typedef int8 boolean;
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $7DSTRING {
	void* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $7DSTRING ) == 12 );
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
void* malloc( uint32 );
void* realloc( void*, uint32 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int32, void*, int32 );
FBSTRING* fb_WstrAssignToA( void*, int32, uint32*, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
static void fb_ctor__dstr( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XREALLOCATE( void*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
static void HREALLOC( struct $7DSTRING*, int32, int32, int32 );
typedef int32 $13AST_NODECLASS;
typedef int32 $11AST_OPFLAGS;
typedef int32 $6AST_OP;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 36 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
typedef int32 $12FB_DATACLASS;
typedef int32 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int32 SIZE;
	int32 SIGNED;
	int32 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int32 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 28 );
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 36 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
struct $8FBARRAY2IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 48 );
static struct $8FBARRAY2IlE tmp$81$;

void DZSTRZERO( struct $8DZSTRING* DST$1 )
{
	label$10:;
	*(uint8**)DST$1 = (uint8*)0u;
	*(int32*)((uint8*)DST$1 + 4) = 0;
	*(int32*)((uint8*)DST$1 + 8) = 0;
	label$11:;
}

void DZSTRALLOCATE( struct $8DZSTRING* DST$1, int32 CHARS$1 )
{
	label$12:;
	if( CHARS$1 != 0 ) goto label$15;
	{
		if( *(uint8**)DST$1 == (uint8*)0u ) goto label$17;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$17:;
		label$16:;
		goto label$13;
	}
	label$15:;
	label$14:;
	if( *(int32*)((uint8*)DST$1 + 4) == CHARS$1 ) goto label$19;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, CHARS$1, 1, 0 );
	}
	label$19:;
	label$18:;
	label$13:;
}

void DZSTRRESET( struct $8DZSTRING* DST$1 )
{
	label$20:;
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$23;
	{
		*(*(uint8**)DST$1) = (uint8)0u;
	}
	label$23:;
	label$22:;
	*(int32*)((uint8*)DST$1 + 4) = 0;
	label$21:;
}

void DZSTRASSIGN( struct $8DZSTRING* DST$1, uint8* SRC$1 )
{
	int32 TMP$82$1;
	label$24:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint8*)0u ) goto label$26;
	int32 vr$0 = fb_StrLen( (void*)SRC$1, 0 );
	TMP$82$1 = vr$0;
	goto label$35;
	label$26:;
	TMP$82$1 = 0;
	label$35:;
	SRC_LEN$1 = TMP$82$1;
	if( SRC_LEN$1 != 0 ) goto label$28;
	{
		if( *(uint8**)DST$1 == (uint8*)0u ) goto label$30;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$30:;
		label$29:;
		goto label$25;
	}
	label$28:;
	label$27:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$32;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1, 0 );
	}
	label$32:;
	label$31:;
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$34;
	{
		fb_StrAssign( *(void**)DST$1, 0, (void*)SRC$1, 0, 0 );
	}
	label$34:;
	label$33:;
	label$25:;
}

void DZSTRASSIGNW( struct $8DZSTRING* DST$1, uint32* SRC$1 )
{
	int32 TMP$83$1;
	label$36:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint32*)0u ) goto label$38;
	int32 vr$0 = fb_WstrLen( SRC$1 );
	TMP$83$1 = vr$0;
	goto label$47;
	label$38:;
	TMP$83$1 = 0;
	label$47:;
	SRC_LEN$1 = TMP$83$1;
	if( SRC_LEN$1 != 0 ) goto label$40;
	{
		if( *(uint8**)DST$1 == (uint8*)0u ) goto label$42;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$42:;
		label$41:;
		goto label$37;
	}
	label$40:;
	label$39:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$44;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1, 0 );
	}
	label$44:;
	label$43:;
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$46;
	{
		fb_WstrAssignToA( *(void**)DST$1, 0, SRC$1, 0 );
	}
	label$46:;
	label$45:;
	label$37:;
}

void DZSTRASSIGNC( struct $8DZSTRING* DST$1, uint32 SRC$1 )
{
	label$48:;
	int32 SRC_LEN$1;
	SRC_LEN$1 = 1;
	if( SRC_LEN$1 != 0 ) goto label$51;
	{
		if( *(uint8**)DST$1 == (uint8*)0u ) goto label$53;
		{
			free( *(void**)DST$1 );
			*(uint8**)DST$1 = (uint8*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$53:;
		label$52:;
		goto label$49;
	}
	label$51:;
	label$50:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$55;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 1, 0 );
	}
	label$55:;
	label$54:;
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$57;
	{
		*(*(uint8**)DST$1) = (uint8)SRC$1;
		*(uint8*)((uint8*)*(uint8**)DST$1 + 1) = (uint8)0u;
	}
	label$57:;
	label$56:;
	label$49:;
}

void DZSTRCONCATASSIGN( struct $8DZSTRING* DST$1, uint8* SRC$1 )
{
	int32 TMP$84$1;
	label$58:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint8*)0u ) goto label$60;
	int32 vr$0 = fb_StrLen( (void*)SRC$1, 0 );
	TMP$84$1 = vr$0;
	goto label$65;
	label$60:;
	TMP$84$1 = 0;
	label$65:;
	SRC_LEN$1 = TMP$84$1;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$62;
	{
		goto label$59;
	}
	label$62:;
	label$61:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 1, -1 );
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$64;
	{
		fb_StrAssign( (void*)((uint8*)*(uint8**)DST$1 + DST_LEN$1), 0, (void*)SRC$1, 0, 0 );
	}
	label$64:;
	label$63:;
	label$59:;
}

void DZSTRCONCATASSIGNW( struct $8DZSTRING* DST$1, uint32* SRC$1 )
{
	int32 TMP$85$1;
	label$66:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint32*)0u ) goto label$68;
	int32 vr$0 = fb_WstrLen( SRC$1 );
	TMP$85$1 = vr$0;
	goto label$73;
	label$68:;
	TMP$85$1 = 0;
	label$73:;
	SRC_LEN$1 = TMP$85$1;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$70;
	{
		goto label$67;
	}
	label$70:;
	label$69:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 1, -1 );
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$72;
	{
		fb_WstrAssignToA( (void*)((uint8*)*(uint8**)DST$1 + DST_LEN$1), 0, SRC$1, 0 );
	}
	label$72:;
	label$71:;
	label$67:;
}

void DZSTRCONCATASSIGNC( struct $8DZSTRING* DST$1, uint32 SRC$1 )
{
	label$74:;
	int32 SRC_LEN$1;
	SRC_LEN$1 = 1;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$77;
	{
		goto label$75;
	}
	label$77:;
	label$76:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 1, -1 );
	if( *(uint8**)DST$1 == (uint8*)0u ) goto label$79;
	{
		*(uint8*)((uint8*)*(uint8**)DST$1 + DST_LEN$1) = (uint8)SRC$1;
		*(uint8*)((uint8*)((uint8*)*(uint8**)DST$1 + DST_LEN$1) + 1) = (uint8)0u;
	}
	label$79:;
	label$78:;
	label$75:;
}

void DWSTRZERO( struct $8DWSTRING* DST$1 )
{
	label$80:;
	*(uint32**)DST$1 = (uint32*)0u;
	*(int32*)((uint8*)DST$1 + 4) = 0;
	*(int32*)((uint8*)DST$1 + 8) = 0;
	label$81:;
}

void DWSTRALLOCATE( struct $8DWSTRING* DST$1, int32 CHARS$1 )
{
	label$82:;
	if( CHARS$1 != 0 ) goto label$85;
	{
		if( *(uint32**)DST$1 == (uint32*)0u ) goto label$87;
		{
			free( *(void**)DST$1 );
			*(uint32**)DST$1 = (uint32*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$87:;
		label$86:;
		goto label$83;
	}
	label$85:;
	label$84:;
	if( *(int32*)((uint8*)DST$1 + 4) == CHARS$1 ) goto label$89;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, CHARS$1, 4, 0 );
	}
	label$89:;
	label$88:;
	label$83:;
}

void DWSTRRESET( struct $8DWSTRING* DST$1 )
{
	label$90:;
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$93;
	{
		*(*(uint32**)DST$1) = (uint32)0u;
	}
	label$93:;
	label$92:;
	*(int32*)((uint8*)DST$1 + 4) = 0;
	label$91:;
}

void DWSTRASSIGN( struct $8DWSTRING* DST$1, uint32* SRC$1 )
{
	int32 TMP$86$1;
	label$94:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint32*)0u ) goto label$96;
	int32 vr$0 = fb_WstrLen( SRC$1 );
	TMP$86$1 = vr$0;
	goto label$105;
	label$96:;
	TMP$86$1 = 0;
	label$105:;
	SRC_LEN$1 = TMP$86$1;
	if( SRC_LEN$1 != 0 ) goto label$98;
	{
		if( *(uint32**)DST$1 == (uint32*)0u ) goto label$100;
		{
			free( *(void**)DST$1 );
			*(uint32**)DST$1 = (uint32*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$100:;
		label$99:;
		goto label$95;
	}
	label$98:;
	label$97:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$102;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 4, 0 );
	}
	label$102:;
	label$101:;
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$104;
	{
		fb_WstrAssign( *(uint32**)DST$1, 0, SRC$1 );
	}
	label$104:;
	label$103:;
	label$95:;
}

void DWSTRASSIGNA( struct $8DWSTRING* DST$1, uint8* SRC$1 )
{
	int32 TMP$87$1;
	label$106:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint8*)0u ) goto label$108;
	int32 vr$0 = fb_StrLen( (void*)SRC$1, 0 );
	TMP$87$1 = vr$0;
	goto label$117;
	label$108:;
	TMP$87$1 = 0;
	label$117:;
	SRC_LEN$1 = TMP$87$1;
	if( SRC_LEN$1 != 0 ) goto label$110;
	{
		if( *(uint32**)DST$1 == (uint32*)0u ) goto label$112;
		{
			free( *(void**)DST$1 );
			*(uint32**)DST$1 = (uint32*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$112:;
		label$111:;
		goto label$107;
	}
	label$110:;
	label$109:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$114;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 4, 0 );
	}
	label$114:;
	label$113:;
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$116;
	{
		fb_WstrAssignFromA( *(uint32**)DST$1, 0, (void*)SRC$1, 0 );
	}
	label$116:;
	label$115:;
	label$107:;
}

void DWSTRASSIGNC( struct $8DWSTRING* DST$1, uint32 SRC$1 )
{
	label$118:;
	int32 SRC_LEN$1;
	SRC_LEN$1 = 4;
	if( SRC_LEN$1 != 0 ) goto label$121;
	{
		if( *(uint32**)DST$1 == (uint32*)0u ) goto label$123;
		{
			free( *(void**)DST$1 );
			*(uint32**)DST$1 = (uint32*)0u;
			*(int32*)((uint8*)DST$1 + 4) = 0;
			*(int32*)((uint8*)DST$1 + 8) = 0;
		}
		label$123:;
		label$122:;
		goto label$119;
	}
	label$121:;
	label$120:;
	if( *(int32*)((uint8*)DST$1 + 4) == SRC_LEN$1 ) goto label$125;
	{
		HREALLOC( (struct $7DSTRING*)DST$1, SRC_LEN$1, 4, 0 );
	}
	label$125:;
	label$124:;
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$127;
	{
		*(*(uint32**)DST$1) = (uint32)SRC$1;
		*(uint32*)((uint8*)*(uint32**)DST$1 + 4) = (uint32)0u;
	}
	label$127:;
	label$126:;
	label$119:;
}

void DWSTRCONCATASSIGN( struct $8DWSTRING* DST$1, uint32* SRC$1 )
{
	int32 TMP$88$1;
	label$128:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint32*)0u ) goto label$130;
	int32 vr$0 = fb_WstrLen( SRC$1 );
	TMP$88$1 = vr$0;
	goto label$135;
	label$130:;
	TMP$88$1 = 0;
	label$135:;
	SRC_LEN$1 = TMP$88$1;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$132;
	{
		goto label$129;
	}
	label$132:;
	label$131:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 4, -1 );
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$134;
	{
		fb_WstrAssign( (uint32*)((uint8*)*(uint32**)DST$1 + (DST_LEN$1 << (2 & 31))), 0, SRC$1 );
	}
	label$134:;
	label$133:;
	label$129:;
}

void DWSTRCONCATASSIGNA( struct $8DWSTRING* DST$1, uint8* SRC$1 )
{
	int32 TMP$89$1;
	label$136:;
	int32 SRC_LEN$1;
	if( SRC$1 == (uint8*)0u ) goto label$138;
	int32 vr$0 = fb_StrLen( (void*)SRC$1, 0 );
	TMP$89$1 = vr$0;
	goto label$143;
	label$138:;
	TMP$89$1 = 0;
	label$143:;
	SRC_LEN$1 = TMP$89$1;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$140;
	{
		goto label$137;
	}
	label$140:;
	label$139:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 4, -1 );
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$142;
	{
		fb_WstrAssignFromA( (uint32*)((uint8*)*(uint32**)DST$1 + (DST_LEN$1 << (2 & 31))), 0, (void*)SRC$1, 0 );
	}
	label$142:;
	label$141:;
	label$137:;
}

void DWSTRCONCATASSIGNC( struct $8DWSTRING* DST$1, uint32 SRC$1 )
{
	label$144:;
	int32 SRC_LEN$1;
	SRC_LEN$1 = 4;
	int32 DST_LEN$1;
	DST_LEN$1 = *(int32*)((uint8*)DST$1 + 4);
	if( SRC_LEN$1 != 0 ) goto label$147;
	{
		goto label$145;
	}
	label$147:;
	label$146:;
	HREALLOC( (struct $7DSTRING*)DST$1, *(int32*)((uint8*)DST$1 + 4) + SRC_LEN$1, 4, -1 );
	if( *(uint32**)DST$1 == (uint32*)0u ) goto label$149;
	{
		*(uint32*)((uint8*)*(uint32**)DST$1 + (DST_LEN$1 << (2 & 31))) = (uint32)SRC$1;
		*(uint32*)((uint8*)((uint8*)*(uint32**)DST$1 + (DST_LEN$1 << (2 & 31))) + 4) = (uint32)0u;
	}
	label$149:;
	label$148:;
	label$145:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HREALLOC( struct $7DSTRING* S$1, int32 CHARS$1, int32 CHARSIZE$1, int32 DOPRESERVE$1 )
{
	label$150:;
	static int32 NEWSIZE$1;
	static void* P$1;
	NEWSIZE$1 = (CHARS$1 + 15) & -16;
	if( ((-(*(void**)S$1 == (void*)0u) | -(CHARS$1 > *(int32*)((uint8*)S$1 + 8))) | -(NEWSIZE$1 < (*(int32*)((uint8*)S$1 + 8) - (*(int32*)((uint8*)S$1 + 8) >> (3 & 31))))) == 0 ) goto label$153;
	{
		if( DOPRESERVE$1 != 0 ) goto label$155;
		{
			if( *(void**)S$1 == (void*)0u ) goto label$157;
			{
				free( (void*)*(void**)S$1 );
			}
			label$157:;
			label$156:;
			void* vr$17 = malloc( (uint32)((NEWSIZE$1 + 1) * CHARSIZE$1) );
			*(void**)S$1 = vr$17;
			if( *(void**)S$1 != (void*)0u ) goto label$159;
			{
				void* vr$22 = XALLOCATE( (CHARS$1 + 1) * CHARSIZE$1 );
				*(void**)S$1 = vr$22;
				NEWSIZE$1 = CHARS$1;
			}
			label$159:;
			label$158:;
		}
		goto label$154;
		label$155:;
		{
			P$1 = *(void**)S$1;
			void* vr$27 = realloc( (void*)P$1, (uint32)((NEWSIZE$1 + 1) * CHARSIZE$1) );
			*(void**)S$1 = vr$27;
			if( *(void**)S$1 != (void*)0u ) goto label$161;
			{
				void* vr$32 = XREALLOCATE( P$1, (CHARS$1 + 1) * CHARSIZE$1 );
				*(void**)S$1 = vr$32;
				NEWSIZE$1 = CHARS$1;
			}
			label$161:;
			label$160:;
		}
		label$154:;
		*(int32*)((uint8*)S$1 + 8) = NEWSIZE$1;
	}
	label$153:;
	label$152:;
	*(int32*)((uint8*)S$1 + 4) = CHARS$1;
	label$151:;
}
