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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
struct $9TPOOLITEM {
	int64 IDX;
};
__FB_STATIC_ASSERT( sizeof( struct $9TPOOLITEM ) == 8 );
void free( void* );
static void fb_ctor__pool( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );

void POOLINIT( struct $5TPOOL* POOL$1, int64 ITEMS$1, int64 MINLEN$1, int64 MAXLEN$1 )
{
	label$2:;
	MINLEN$1 = (MINLEN$1 + 3ll) & -4ll;
	MAXLEN$1 = (MAXLEN$1 + 3ll) & -4ll;
	*(int64*)POOL$1 = ((MAXLEN$1 + MINLEN$1) + -1ll) / MINLEN$1;
	*(int64*)((uint8*)POOL$1 + 8ll) = MINLEN$1;
	void* vr$12 = XALLOCATE( (int32)(*(int64*)POOL$1 << (6ll & 63ll)) );
	*(struct $5TLIST**)((uint8*)POOL$1 + 16ll) = (struct $5TLIST*)vr$12;
	int64 LEN_$1;
	LEN_$1 = MINLEN$1;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$2$2;
		TMP$2$2 = *(int64*)POOL$1 + -1ll;
		goto label$4;
		label$7:;
		{
			LISTINIT( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 16ll) + (I$2 << (6ll & 63ll))), ITEMS$1, LEN_$1, 2ll );
			LEN_$1 = LEN_$1 + *(int64*)((uint8*)POOL$1 + 8ll);
		}
		label$5:;
		I$2 = I$2 + 1ll;
		label$4:;
		if( I$2 <= TMP$2$2 ) goto label$7;
		label$6:;
	}
	label$3:;
}

void POOLEND( struct $5TPOOL* POOL$1 )
{
	label$8:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$3$2;
		TMP$3$2 = *(int64*)POOL$1 + -1ll;
		goto label$10;
		label$13:;
		{
			LISTEND( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 16ll) + (I$2 << (6ll & 63ll))) );
		}
		label$11:;
		I$2 = I$2 + 1ll;
		label$10:;
		if( I$2 <= TMP$3$2 ) goto label$13;
		label$12:;
	}
	free( *(void**)((uint8*)POOL$1 + 16ll) );
	label$9:;
}

void* POOLNEWITEM( struct $5TPOOL* POOL$1, int64 LEN_$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	static struct $9TPOOLITEM* ITEM$1;
	static int64 IDX$1;
	if( LEN_$1 > 0ll ) goto label$17;
	{
		fb$result$1 = (void*)0ull;
		goto label$15;
	}
	label$17:;
	label$16:;
	IDX$1 = (LEN_$1 + -1ll) / *(int64*)((uint8*)POOL$1 + 8ll);
	if( IDX$1 < *(int64*)POOL$1 ) goto label$19;
	{
		void* vr$7 = XALLOCATE( (int32)(LEN_$1 + 8ll) );
		ITEM$1 = (struct $9TPOOLITEM*)vr$7;
	}
	goto label$18;
	label$19:;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 16ll) + (IDX$1 << (6ll & 63ll))) );
		ITEM$1 = (struct $9TPOOLITEM*)vr$11;
	}
	label$18:;
	*(int64*)ITEM$1 = IDX$1;
	fb$result$1 = (void*)((uint8*)ITEM$1 + 8ll);
	label$15:;
	return fb$result$1;
}

void POOLDELITEM( struct $5TPOOL* POOL$1, void* NODE$1 )
{
	label$20:;
	static struct $9TPOOLITEM* ITEM$1;
	if( NODE$1 != (void*)0ull ) goto label$23;
	{
		goto label$21;
	}
	label$23:;
	label$22:;
	ITEM$1 = (struct $9TPOOLITEM*)((uint8*)NODE$1 + -8ll);
	if( *(int64*)ITEM$1 < *(int64*)POOL$1 ) goto label$25;
	{
		free( (void*)ITEM$1 );
	}
	goto label$24;
	label$25:;
	{
		LISTDELNODE( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 16ll) + (*(int64*)ITEM$1 << (6ll & 63ll))), (void*)ITEM$1 );
	}
	label$24:;
	label$21:;
}
