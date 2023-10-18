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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 8 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int32 NODES;
	int32 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 12 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $7TLISTTB ) == 12 );
struct $9TLISTNODE;
struct $9TLISTNODE {
	struct $9TLISTNODE* PREV;
	struct $9TLISTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9TLISTNODE ) == 8 );
typedef int32 $10LIST_FLAGS;
struct $5TLIST {
	struct $7TLISTTB* TBHEAD;
	struct $7TLISTTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $9TLISTNODE* FHEAD;
	void* HEAD;
	void* TAIL;
	$10LIST_FLAGS FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $5TLIST ) == 32 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int32, void*, int32 );
int32 fb_StrLen( void*, int32 );
static void fb_ctor__hash( void ) __attribute__(( constructor ));
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int32 );
static struct $8HASHITEM* HASHNEWITEM( struct $8HASHLIST* );
static void HASHDELITEM( struct $8HASHLIST*, struct $8HASHITEM* );
static void LAZYINIT( void );
static void LAZYEND( void );
struct $12HASHITEMPOOL {
	int32 REFCOUNT;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12HASHITEMPOOL ) == 36 );
static struct $12HASHITEMPOOL ITEMPOOL$;

void HASHINIT( struct $5THASH* HASH$1, int32 NODES$1, int32 DELSTR$1 )
{
	label$18:;
	LAZYINIT(  );
	void* vr$1 = XCALLOCATE( NODES$1 << (3 & 31) );
	*(struct $8HASHLIST**)HASH$1 = (struct $8HASHLIST*)vr$1;
	*(int32*)((uint8*)HASH$1 + 4) = NODES$1;
	*(int32*)((uint8*)HASH$1 + 8) = DELSTR$1;
	label$19:;
}

void HASHEND( struct $5THASH* HASH$1 )
{
	label$20:;
	int32 I$1;
	struct $8HASHITEM* ITEM$1;
	struct $8HASHITEM* NXT$1;
	struct $8HASHLIST* LIST$1;
	LIST$1 = *(struct $8HASHLIST**)HASH$1;
	if( *(int32*)((uint8*)HASH$1 + 8) == 0 ) goto label$23;
	{
		{
			I$1 = 0;
			int32 TMP$2$3;
			TMP$2$3 = *(int32*)((uint8*)HASH$1 + 4) + -1;
			goto label$24;
			label$27:;
			{
				ITEM$1 = *(struct $8HASHITEM**)LIST$1;
				label$28:;
				if( ITEM$1 == (struct $8HASHITEM*)0u ) goto label$29;
				{
					NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 12);
					free( *(void**)ITEM$1 );
					*(uint8**)ITEM$1 = (uint8*)0u;
					HASHDELITEM( LIST$1, ITEM$1 );
					ITEM$1 = NXT$1;
				}
				goto label$28;
				label$29:;
				LIST$1 = (struct $8HASHLIST*)((uint8*)LIST$1 + 8);
			}
			label$25:;
			I$1 = I$1 + 1;
			label$24:;
			if( I$1 <= TMP$2$3 ) goto label$27;
			label$26:;
		}
	}
	goto label$22;
	label$23:;
	{
		{
			I$1 = 0;
			int32 TMP$3$3;
			TMP$3$3 = *(int32*)((uint8*)HASH$1 + 4) + -1;
			goto label$30;
			label$33:;
			{
				ITEM$1 = *(struct $8HASHITEM**)LIST$1;
				label$34:;
				if( ITEM$1 == (struct $8HASHITEM*)0u ) goto label$35;
				{
					NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 12);
					*(uint8**)ITEM$1 = (uint8*)0u;
					HASHDELITEM( LIST$1, ITEM$1 );
					ITEM$1 = NXT$1;
				}
				goto label$34;
				label$35:;
				LIST$1 = (struct $8HASHLIST*)((uint8*)LIST$1 + 8);
			}
			label$31:;
			I$1 = I$1 + 1;
			label$30:;
			if( I$1 <= TMP$3$3 ) goto label$33;
			label$32:;
		}
	}
	label$22:;
	free( *(void**)HASH$1 );
	*(struct $8HASHLIST**)HASH$1 = (struct $8HASHLIST*)0u;
	LAZYEND(  );
	label$21:;
}

uint32 HASHHASH( uint8* S$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$36:;
	uint32 INDEX$1;
	INDEX$1 = 0u;
	label$38:;
	if( (int32)*S$1 == 0 ) goto label$39;
	{
		INDEX$1 = ((uint32)(int32)*S$1 + (INDEX$1 << (5 & 31))) - INDEX$1;
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	goto label$38;
	label$39:;
	fb$result$1 = INDEX$1;
	goto label$37;
	label$37:;
	return fb$result$1;
}

void* HASHLOOKUPEX( struct $5THASH* HASH$1, uint8* SYMBOL$1, uint32 INDEX$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$40:;
	struct $8HASHITEM* ITEM$1;
	struct $8HASHLIST* LIST$1;
	fb$result$1 = (void*)0u;
	INDEX$1 = INDEX$1 % *(uint32*)((uint8*)HASH$1 + 4);
	LIST$1 = (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int32)INDEX$1 << (3 & 31)));
	ITEM$1 = *(struct $8HASHITEM**)LIST$1;
	if( ITEM$1 != (struct $8HASHITEM*)0u ) goto label$43;
	{
		goto label$41;
	}
	label$43:;
	label$42:;
	label$44:;
	if( ITEM$1 == (struct $8HASHITEM*)0u ) goto label$45;
	{
		int32 vr$8 = fb_StrCompare( *(void**)ITEM$1, 0, (void*)SYMBOL$1, 0 );
		if( vr$8 != 0 ) goto label$47;
		{
			fb$result$1 = *(void**)((uint8*)ITEM$1 + 4);
			goto label$41;
		}
		label$47:;
		label$46:;
		ITEM$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 12);
	}
	goto label$44;
	label$45:;
	label$41:;
	return fb$result$1;
}

void* HASHLOOKUP( struct $5THASH* HASH$1, uint8* SYMBOL$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$48:;
	uint32 vr$1 = HASHHASH( SYMBOL$1 );
	void* vr$2 = HASHLOOKUPEX( HASH$1, SYMBOL$1, vr$1 );
	fb$result$1 = vr$2;
	label$49:;
	return fb$result$1;
}

struct $8HASHITEM* HASHADD( struct $5THASH* HASH$1, uint8* SYMBOL$1, void* USERDATA$1, uint32 INDEX$1 )
{
	struct $8HASHITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	struct $8HASHITEM* ITEM$1;
	if( INDEX$1 != 4294967295u ) goto label$65;
	{
		uint32 vr$1 = HASHHASH( SYMBOL$1 );
		INDEX$1 = vr$1;
	}
	label$65:;
	label$64:;
	INDEX$1 = INDEX$1 % *(uint32*)((uint8*)HASH$1 + 4);
	struct $8HASHITEM* vr$7 = HASHNEWITEM( (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int32)INDEX$1 << (3 & 31))) );
	ITEM$1 = vr$7;
	fb$result$1 = ITEM$1;
	if( ITEM$1 != (struct $8HASHITEM*)0u ) goto label$67;
	{
		goto label$63;
	}
	label$67:;
	label$66:;
	*(uint8**)ITEM$1 = SYMBOL$1;
	*(void**)((uint8*)ITEM$1 + 4) = USERDATA$1;
	label$63:;
	return fb$result$1;
}

void HASHDEL( struct $5THASH* HASH$1, struct $8HASHITEM* ITEM$1, uint32 INDEX$1 )
{
	label$68:;
	struct $8HASHLIST* LIST$1;
	if( ITEM$1 != (struct $8HASHITEM*)0u ) goto label$71;
	{
		goto label$69;
	}
	label$71:;
	label$70:;
	INDEX$1 = INDEX$1 % *(uint32*)((uint8*)HASH$1 + 4);
	LIST$1 = (struct $8HASHLIST*)((uint8*)*(struct $8HASHLIST**)HASH$1 + ((int32)INDEX$1 << (3 & 31)));
	if( *(int32*)((uint8*)HASH$1 + 8) == 0 ) goto label$73;
	{
		free( *(void**)ITEM$1 );
	}
	label$73:;
	label$72:;
	*(uint8**)ITEM$1 = (uint8*)0u;
	*(void**)((uint8*)ITEM$1 + 4) = (void*)0u;
	HASHDELITEM( LIST$1, ITEM$1 );
	label$69:;
}

void STRSETADD( struct $7TSTRSET* SET$1, FBSTRING* S$1, int32 USERDATA$1 )
{
	label$74:;
	struct $11TSTRSETITEM* I$1;
	int32 vr$0 = fb_StrLen( (void*)S$1, -1 );
	if( vr$0 != 0 ) goto label$77;
	{
		goto label$75;
	}
	label$77:;
	label$76:;
	void* vr$4 = HASHLOOKUP( (struct $5THASH*)((uint8*)SET$1 + 32), (uint8*)*(uint8**)S$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$79;
	{
		goto label$75;
	}
	label$79:;
	label$78:;
	void* vr$7 = LISTNEWNODE( (struct $5TLIST*)SET$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$7;
	fb_StrAssign( (void*)I$1, -1, (void*)S$1, -1, 0 );
	*(int32*)((uint8*)I$1 + 12) = USERDATA$1;
	*(struct $8HASHITEM**)((uint8*)I$1 + 16) = (struct $8HASHITEM*)0u;
	int32 vr$14 = fb_StrLen( (void*)I$1, -1 );
	if( vr$14 != 0 ) goto label$81;
	{
		goto label$75;
	}
	label$81:;
	label$80:;
	uint32 vr$16 = HASHHASH( (uint8*)*(uint8**)I$1 );
	struct $8HASHITEM* vr$20 = HASHADD( (struct $5THASH*)((uint8*)SET$1 + 32), (uint8*)*(uint8**)I$1, (void*)I$1, vr$16 );
	*(struct $8HASHITEM**)((uint8*)I$1 + 16) = vr$20;
	label$75:;
}

void STRSETDEL( struct $7TSTRSET* SET$1, FBSTRING* S$1 )
{
	label$82:;
	int32 vr$0 = fb_StrLen( (void*)S$1, -1 );
	if( vr$0 != 0 ) goto label$85;
	{
		goto label$83;
	}
	label$85:;
	label$84:;
	uint32 INDEX$1;
	uint32 vr$2 = HASHHASH( (uint8*)*(uint8**)S$1 );
	INDEX$1 = vr$2;
	struct $11TSTRSETITEM* SETITEM$1;
	void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)SET$1 + 32), (uint8*)*(uint8**)S$1, INDEX$1 );
	SETITEM$1 = (struct $11TSTRSETITEM*)vr$6;
	if( SETITEM$1 == (struct $11TSTRSETITEM*)0u ) goto label$87;
	{
		HASHDEL( (struct $5THASH*)((uint8*)SET$1 + 32), *(struct $8HASHITEM**)((uint8*)SETITEM$1 + 16), INDEX$1 );
		*(struct $8HASHITEM**)((uint8*)SETITEM$1 + 16) = (struct $8HASHITEM*)0u;
		struct $11TSTRSETITEM* I$2;
		void* vr$13 = LISTGETHEAD( (struct $5TLIST*)SET$1 );
		I$2 = (struct $11TSTRSETITEM*)vr$13;
		label$88:;
		if( I$2 == (struct $11TSTRSETITEM*)0u ) goto label$89;
		{
			if( I$2 != SETITEM$1 ) goto label$91;
			{
				fb_StrAssign( (void*)I$2, -1, (void*)"", 1, 0 );
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
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$93;
	{
		int32 vr$24 = fb_StrCompare( (void*)I$1, -1, (void*)S$1, -1 );
		if( vr$24 != 0 ) goto label$95;
		{
			fb_StrAssign( (void*)I$1, -1, (void*)"", 1, 0 );
			LISTDELNODE( (struct $5TLIST*)SET$1, (void*)I$1 );
			goto label$93;
		}
		label$95:;
		label$94:;
		void* vr$29 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$29;
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
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$99;
	{
		STRSETADD( TARGET$1, (FBSTRING*)I$1, *(int32*)((uint8*)I$1 + 12) );
		void* vr$6 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$6;
	}
	goto label$98;
	label$99:;
	label$97:;
}

void STRSETINIT( struct $7TSTRSET* SET$1, int32 NODES$1 )
{
	label$100:;
	LISTINIT( (struct $5TLIST*)SET$1, NODES$1, 20, -1 );
	HASHINIT( (struct $5THASH*)((uint8*)SET$1 + 32), NODES$1, 0 );
	label$101:;
}

void STRSETEND( struct $7TSTRSET* SET$1 )
{
	label$102:;
	HASHEND( (struct $5THASH*)((uint8*)SET$1 + 32) );
	struct $11TSTRSETITEM* I$1;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)SET$1 );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$104:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$105;
	{
		fb_StrAssign( (void*)I$1, -1, (void*)"", 1, 0 );
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
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void LAZYINIT( void )
{
	label$10:;
	*(int32*)&ITEMPOOL$ = *(int32*)&ITEMPOOL$ + 1;
	if( *(int32*)&ITEMPOOL$ <= 1 ) goto label$13;
	{
		goto label$11;
	}
	label$13:;
	label$12:;
	LISTINIT( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 4), 8096, 16, 6 );
	label$11:;
}

static void LAZYEND( void )
{
	label$14:;
	*(int32*)&ITEMPOOL$ = *(int32*)&ITEMPOOL$ + -1;
	if( *(int32*)&ITEMPOOL$ <= 0 ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	LISTEND( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 4) );
	label$15:;
}

static struct $8HASHITEM* HASHNEWITEM( struct $8HASHLIST* LIST$1 )
{
	struct $8HASHITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$50:;
	struct $8HASHITEM* ITEM$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 4) );
	ITEM$1 = (struct $8HASHITEM*)vr$2;
	if( *(struct $8HASHITEM**)((uint8*)LIST$1 + 4) == (struct $8HASHITEM*)0u ) goto label$53;
	{
		*(struct $8HASHITEM**)((uint8*)*(struct $8HASHITEM**)((uint8*)LIST$1 + 4) + 12) = ITEM$1;
	}
	goto label$52;
	label$53:;
	{
		*(struct $8HASHITEM**)LIST$1 = ITEM$1;
	}
	label$52:;
	*(struct $8HASHITEM**)((uint8*)ITEM$1 + 8) = *(struct $8HASHITEM**)((uint8*)LIST$1 + 4);
	*(struct $8HASHITEM**)((uint8*)ITEM$1 + 12) = (struct $8HASHITEM*)0u;
	*(struct $8HASHITEM**)((uint8*)LIST$1 + 4) = ITEM$1;
	fb$result$1 = ITEM$1;
	label$51:;
	return fb$result$1;
}

static void HASHDELITEM( struct $8HASHLIST* LIST$1, struct $8HASHITEM* ITEM$1 )
{
	label$54:;
	struct $8HASHITEM* PRV$1;
	struct $8HASHITEM* NXT$1;
	if( ITEM$1 != (struct $8HASHITEM*)0u ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	PRV$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 8);
	NXT$1 = *(struct $8HASHITEM**)((uint8*)ITEM$1 + 12);
	if( PRV$1 == (struct $8HASHITEM*)0u ) goto label$59;
	{
		*(struct $8HASHITEM**)((uint8*)PRV$1 + 12) = NXT$1;
	}
	goto label$58;
	label$59:;
	{
		*(struct $8HASHITEM**)LIST$1 = NXT$1;
	}
	label$58:;
	if( NXT$1 == (struct $8HASHITEM*)0u ) goto label$61;
	{
		*(struct $8HASHITEM**)((uint8*)NXT$1 + 8) = PRV$1;
	}
	goto label$60;
	label$61:;
	{
		*(struct $8HASHITEM**)((uint8*)LIST$1 + 4) = PRV$1;
	}
	label$60:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&ITEMPOOL$ + 4), (void*)ITEM$1 );
	label$55:;
}
