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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 16 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int64 NODES;
	int64 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 24 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 24 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 16 );
typedef int64 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 64 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 88 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int64, void*, int64 );
int64 fb_StrLen( void*, int64 );
static void fb_ctor__hash( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
uint64 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint64 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint64 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int64 );
static struct $8HASHITEM* HASHNEWITEM( struct $8HASHLIST* );
static void HASHDELITEM( struct $8HASHLIST*, struct $8HASHITEM* );
static void LAZYINIT( void );
static void LAZYEND( void );
struct $12HASHITEMPOOL {
	int64 REFCOUNT;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12HASHITEMPOOL ) == 72 );
static struct $12HASHITEMPOOL ITEMPOOL$;

void HASHINIT( struct $5THASH* HASH$1, int64 NODES$1, int64 DELSTR$1 )
{
	label$18:;
	LAZYINIT(  );
	void* vr$2 = XCALLOCATE( (int32)(NODES$1 << (4ll & 63ll)) );
	*(struct $8HASHLIST**)HASH$1 = (struct $8HASHLIST*)vr$2;
	*(int64*)((uint8*)HASH$1 + 8ll) = NODES$1;
	*(int64*)((uint8*)HASH$1 + 16ll) = DELSTR$1;
	label$19:;
}

void HASHEND( struct $5THASH* HASH$1 )
{
	label$20:;
	int64 I$1;
	struct $8HASHITEM* ITEM$1;
	struct $8HASHITEM* NXT$1;
	struct $8HASHLIST* LIST$1;
	LIST$1 = *(struct $8HASHLIST**)HASH$1;
	if( *(int64*)((uint8*)HASH$1 + 16ll) == 0ll ) goto label$23;
	{
		{
			I$1 = 0ll;
			int64 TMP$2$3;
			TMP$2$3 = *(int64*)((uint8*)HASH$1 + 8ll) + -1ll;
			goto label$24;
			label$27:;
			{
				ITEM$1 = *(struct $8HASHITEM**)LIST$1;
				label$28:;
				if( ITEM$1 == (struct $8HASHITEM*)0ull ) goto label$29;
				{
					NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 24ll);
					free( *(void**)ITEM$1 );
					*(uint8**)ITEM$1 = (uint8*)0ull;
					HASHDELITEM( LIST$1, ITEM$1 );
					ITEM$1 = NXT$1;
				}
				goto label$28;
				label$29:;
				LIST$1 = (struct $8HASHLIST*)((uint8*)LIST$1 + 16ll);
			}
			label$25:;
			I$1 = I$1 + 1ll;
			label$24:;
			if( I$1 <= TMP$2$3 ) goto label$27;
			label$26:;
		}
	}
	goto label$22;
	label$23:;
	{
		{
			I$1 = 0ll;
			int64 TMP$3$3;
			TMP$3$3 = *(int64*)((uint8*)HASH$1 + 8ll) + -1ll;
			goto label$30;
			label$33:;
			{
				ITEM$1 = *(struct $8HASHITEM**)LIST$1;
				label$34:;
				if( ITEM$1 == (struct $8HASHITEM*)0ull ) goto label$35;
				{
					NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 24ll);
					*(uint8**)ITEM$1 = (uint8*)0ull;
					HASHDELITEM( LIST$1, ITEM$1 );
					ITEM$1 = NXT$1;
				}
				goto label$34;
				label$35:;
				LIST$1 = (struct $8HASHLIST*)((uint8*)LIST$1 + 16ll);
			}
			label$31:;
			I$1 = I$1 + 1ll;
			label$30:;
			if( I$1 <= TMP$3$3 ) goto label$33;
			label$32:;
		}
	}
	label$22:;
	free( *(void**)HASH$1 );
	*(struct $8HASHLIST**)HASH$1 = (struct $8HASHLIST*)0ull;
	LAZYEND(  );
	label$21:;
}

uint64 HASHHASH( uint8* S$1 )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$36:;
	uint64 INDEX$1;
	INDEX$1 = 0ull;
	label$38:;
	if( (int64)*S$1 == 0ll ) goto label$39;
	{
		INDEX$1 = ((uint64)(int64)*S$1 + (INDEX$1 << (5ll & 63ll))) - INDEX$1;
		S$1 = (uint8*)((uint8*)S$1 + 1ll);
	}
	goto label$38;
	label$39:;
	fb$result$1 = INDEX$1;
	goto label$37;
	label$37:;
	return fb$result$1;
}

void* HASHLOOKUPEX( struct $5THASH* HASH$1, uint8* SYMBOL$1, uint64 INDEX$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$40:;
	struct $8HASHITEM* ITEM$1;
	struct $8HASHLIST* LIST$1;
	fb$result$1 = (void*)0ull;
	INDEX$1 = INDEX$1 % *(uint64*)((uint8*)HASH$1 + 8ll);
	LIST$1 = (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int64)INDEX$1 << (4ll & 63ll)));
	ITEM$1 = *(struct $8HASHITEM**)LIST$1;
	if( ITEM$1 != (struct $8HASHITEM*)0ull ) goto label$43;
	{
		goto label$41;
	}
	label$43:;
	label$42:;
	label$44:;
	if( ITEM$1 == (struct $8HASHITEM*)0ull ) goto label$45;
	{
		int32 vr$8 = fb_StrCompare( *(void**)ITEM$1, 0ll, (void*)SYMBOL$1, 0ll );
		if( (int64)vr$8 != 0ll ) goto label$47;
		{
			fb$result$1 = *(void**)((uint8*)ITEM$1 + 8ll);
			goto label$41;
		}
		label$47:;
		label$46:;
		ITEM$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 24ll);
	}
	goto label$44;
	label$45:;
	label$41:;
	return fb$result$1;
}

void* HASHLOOKUP( struct $5THASH* HASH$1, uint8* SYMBOL$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$48:;
	uint64 vr$1 = HASHHASH( SYMBOL$1 );
	void* vr$2 = HASHLOOKUPEX( HASH$1, SYMBOL$1, vr$1 );
	fb$result$1 = vr$2;
	label$49:;
	return fb$result$1;
}

struct $8HASHITEM* HASHADD( struct $5THASH* HASH$1, uint8* SYMBOL$1, void* USERDATA$1, uint64 INDEX$1 )
{
	struct $8HASHITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	struct $8HASHITEM* ITEM$1;
	if( INDEX$1 != 18446744073709551615ull ) goto label$65;
	{
		uint64 vr$1 = HASHHASH( SYMBOL$1 );
		INDEX$1 = vr$1;
	}
	label$65:;
	label$64:;
	INDEX$1 = INDEX$1 % *(uint64*)((uint8*)HASH$1 + 8ll);
	struct $8HASHITEM* vr$7 = HASHNEWITEM( (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int64)INDEX$1 << (4ll & 63ll))) );
	ITEM$1 = vr$7;
	fb$result$1 = ITEM$1;
	if( ITEM$1 != (struct $8HASHITEM*)0ull ) goto label$67;
	{
		goto label$63;
	}
	label$67:;
	label$66:;
	*(uint8**)ITEM$1 = SYMBOL$1;
	*(void**)((uint8*)ITEM$1 + 8ll) = USERDATA$1;
	label$63:;
	return fb$result$1;
}

void HASHDEL( struct $5THASH* HASH$1, struct $8HASHITEM* ITEM$1, uint64 INDEX$1 )
{
	label$68:;
	struct $8HASHLIST* LIST$1;
	if( ITEM$1 != (struct $8HASHITEM*)0ull ) goto label$71;
	{
		goto label$69;
	}
	label$71:;
	label$70:;
	INDEX$1 = INDEX$1 % *(uint64*)((uint8*)HASH$1 + 8ll);
	LIST$1 = (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int64)INDEX$1 << (4ll & 63ll)));
	if( *(int64*)((uint8*)HASH$1 + 16ll) == 0ll ) goto label$73;
	{
		free( *(void**)ITEM$1 );
	}
	label$73:;
	label$72:;
	*(uint8**)ITEM$1 = (uint8*)0ull;
	*(void**)((uint8*)ITEM$1 + 8ll) = (void*)0ull;
	HASHDELITEM( LIST$1, ITEM$1 );
	label$69:;
}

void STRSETADD( struct $7TSTRSET* SET$1, FBSTRING* S$1, int64 USERDATA$1 )
{
	label$74:;
	struct $11TSTRSETITEM* I$1;
	int64 vr$0 = fb_StrLen( (void*)S$1, -1ll );
	if( vr$0 != 0ll ) goto label$77;
	{
		goto label$75;
	}
	label$77:;
	label$76:;
	void* vr$4 = HASHLOOKUP( (struct $5THASH*)((uint8*)SET$1 + 64ll), (uint8*)*(uint8**)S$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$79;
	{
		goto label$75;
	}
	label$79:;
	label$78:;
	void* vr$7 = LISTNEWNODE( (struct $5TLIST*)SET$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$7;
	fb_StrAssign( (void*)I$1, -1ll, (void*)S$1, -1ll, 0 );
	*(int64*)((uint8*)I$1 + 24ll) = USERDATA$1;
	*(struct $8HASHITEM**)((uint8*)I$1 + 32ll) = (struct $8HASHITEM*)0ull;
	int64 vr$14 = fb_StrLen( (void*)I$1, -1ll );
	if( vr$14 != 0ll ) goto label$81;
	{
		goto label$75;
	}
	label$81:;
	label$80:;
	uint64 vr$16 = HASHHASH( (uint8*)*(uint8**)I$1 );
	struct $8HASHITEM* vr$20 = HASHADD( (struct $5THASH*)((uint8*)SET$1 + 64ll), (uint8*)*(uint8**)I$1, (void*)I$1, vr$16 );
	*(struct $8HASHITEM**)((uint8*)I$1 + 32ll) = vr$20;
	label$75:;
}

void STRSETDEL( struct $7TSTRSET* SET$1, FBSTRING* S$1 )
{
	label$82:;
	int64 vr$0 = fb_StrLen( (void*)S$1, -1ll );
	if( vr$0 != 0ll ) goto label$85;
	{
		goto label$83;
	}
	label$85:;
	label$84:;
	uint64 INDEX$1;
	uint64 vr$2 = HASHHASH( (uint8*)*(uint8**)S$1 );
	INDEX$1 = vr$2;
	struct $11TSTRSETITEM* SETITEM$1;
	void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)SET$1 + 64ll), (uint8*)*(uint8**)S$1, INDEX$1 );
	SETITEM$1 = (struct $11TSTRSETITEM*)vr$6;
	if( SETITEM$1 == (struct $11TSTRSETITEM*)0ull ) goto label$87;
	{
		HASHDEL( (struct $5THASH*)((uint8*)SET$1 + 64ll), *(struct $8HASHITEM**)((uint8*)SETITEM$1 + 32ll), INDEX$1 );
		*(struct $8HASHITEM**)((uint8*)SETITEM$1 + 32ll) = (struct $8HASHITEM*)0ull;
		struct $11TSTRSETITEM* I$2;
		void* vr$13 = LISTGETHEAD( (struct $5TLIST*)SET$1 );
		I$2 = (struct $11TSTRSETITEM*)vr$13;
		label$88:;
		if( I$2 == (struct $11TSTRSETITEM*)0ull ) goto label$89;
		{
			if( I$2 != SETITEM$1 ) goto label$91;
			{
				fb_StrAssign( (void*)I$2, -1ll, (void*)"", 1ll, 0 );
				LISTDELNODE( (struct $5TLIST*)SET$1, (void*)I$2 );
				goto label$89;
			}
			label$91:;
			label$90:;
			void* vr$18 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$18;
		}
		goto label$88;
		label$89:;
	}
	label$87:;
	label$86:;
	struct $11TSTRSETITEM* I$1;
	void* vr$21 = LISTGETHEAD( (struct $5TLIST*)SET$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$21;
	label$92:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$93;
	{
		int32 vr$24 = fb_StrCompare( (void*)I$1, -1ll, (void*)S$1, -1ll );
		if( (int64)vr$24 != 0ll ) goto label$95;
		{
			fb_StrAssign( (void*)I$1, -1ll, (void*)"", 1ll, 0 );
			LISTDELNODE( (struct $5TLIST*)SET$1, (void*)I$1 );
			goto label$93;
		}
		label$95:;
		label$94:;
		void* vr$30 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$30;
	}
	goto label$92;
	label$93:;
	label$83:;
}

void STRSETCOPY( struct $7TSTRSET* TARGET$1, struct $7TSTRSET* SOURCE$1 )
{
	label$96:;
	struct $11TSTRSETITEM* I$1;
	void* vr$2 = LISTGETHEAD( (struct $5TLIST*)SOURCE$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$2;
	label$98:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$99;
	{
		STRSETADD( TARGET$1, (FBSTRING*)I$1, *(int64*)((uint8*)I$1 + 24ll) );
		void* vr$6 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$6;
	}
	goto label$98;
	label$99:;
	label$97:;
}

void STRSETINIT( struct $7TSTRSET* SET$1, int64 NODES$1 )
{
	label$100:;
	LISTINIT( (struct $5TLIST*)SET$1, NODES$1, 40ll, 4294967295ll );
	HASHINIT( (struct $5THASH*)((uint8*)SET$1 + 64ll), NODES$1, 0ll );
	label$101:;
}

void STRSETEND( struct $7TSTRSET* SET$1 )
{
	label$102:;
	HASHEND( (struct $5THASH*)((uint8*)SET$1 + 64ll) );
	struct $11TSTRSETITEM* I$1;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)SET$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$104:;
	if( I$1 == (struct $11TSTRSETITEM*)0ull ) goto label$105;
	{
		fb_StrAssign( (void*)I$1, -1ll, (void*)"", 1ll, 0 );
		void* vr$7 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$7;
	}
	goto label$104;
	label$105:;
	LISTEND( (struct $5TLIST*)SET$1 );
	label$103:;
}

__attribute__(( constructor )) static void fb_ctor__hash( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void LAZYINIT( void )
{
	label$10:;
	*(int64*)&ITEMPOOL$ = *(int64*)&ITEMPOOL$ + 1ll;
	if( *(int64*)&ITEMPOOL$ <= 1ll ) goto label$13;
	{
		goto label$11;
	}
	label$13:;
	label$12:;
	LISTINIT( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 8ll), 8096ll, 32ll, 6ll );
	label$11:;
}

static void LAZYEND( void )
{
	label$14:;
	*(int64*)&ITEMPOOL$ = *(int64*)&ITEMPOOL$ + -1ll;
	if( *(int64*)&ITEMPOOL$ <= 0ll ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	LISTEND( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 8ll) );
	label$15:;
}

static struct $8HASHITEM* HASHNEWITEM( struct $8HASHLIST* LIST$1 )
{
	struct $8HASHITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$50:;
	struct $8HASHITEM* ITEM$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 8ll) );
	ITEM$1 = (struct $8HASHITEM*)vr$2;
	if( *(struct $8HASHITEM**)((uint8*)LIST$1 + 8ll) == (struct $8HASHITEM*)0ull ) goto label$53;
	{
		*(struct $8HASHITEM**)((uint8*)*(struct $8HASHITEM**)((uint8*)LIST$1 + 8ll) + 24ll) = ITEM$1;
	}
	goto label$52;
	label$53:;
	{
		*(struct $8HASHITEM**)LIST$1 = ITEM$1;
	}
	label$52:;
	*(struct $8HASHITEM**)((uint8*)ITEM$1 + 16ll) = *(struct $8HASHITEM**)((uint8*)LIST$1 + 8ll);
	*(struct $8HASHITEM**)((uint8*)ITEM$1 + 24ll) = (struct $8HASHITEM*)0ull;
	*(struct $8HASHITEM**)((uint8*)LIST$1 + 8ll) = ITEM$1;
	fb$result$1 = ITEM$1;
	label$51:;
	return fb$result$1;
}

static void HASHDELITEM( struct $8HASHLIST* LIST$1, struct $8HASHITEM* ITEM$1 )
{
	label$54:;
	struct $8HASHITEM* PRV$1;
	struct $8HASHITEM* NXT$1;
	if( ITEM$1 != (struct $8HASHITEM*)0ull ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	PRV$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 16ll);
	NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 24ll);
	if( PRV$1 == (struct $8HASHITEM*)0ull ) goto label$59;
	{
		*(struct $8HASHITEM**)((uint8*)PRV$1 + 24ll) = NXT$1;
	}
	goto label$58;
	label$59:;
	{
		*(struct $8HASHITEM**)LIST$1 = NXT$1;
	}
	label$58:;
	if( NXT$1 == (struct $8HASHITEM*)0ull ) goto label$61;
	{
		*(struct $8HASHITEM**)((uint8*)NXT$1 + 16ll) = PRV$1;
	}
	goto label$60;
	label$61:;
	{
		*(struct $8HASHITEM**)((uint8*)LIST$1 + 8ll) = PRV$1;
	}
	label$60:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 8ll), (void*)ITEM$1 );
	label$55:;
}
