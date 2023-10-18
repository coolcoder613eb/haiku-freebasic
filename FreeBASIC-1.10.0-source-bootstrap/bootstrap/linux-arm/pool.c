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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $9TPOOLITEM {
	int32 IDX;
};
__FB_STATIC_ASSERT( sizeof( struct $9TPOOLITEM ) == 4 );
void free( void* );
static void fb_ctor__pool( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );

void POOLINIT( struct $5TPOOL* POOL$1, int32 ITEMS$1, int32 MINLEN$1, int32 MAXLEN$1 )
{
	label$2:;
	MINLEN$1 = (MINLEN$1 + 3) & -4;
	MAXLEN$1 = (MAXLEN$1 + 3) & -4;
	*(int32*)POOL$1 = ((MAXLEN$1 + MINLEN$1) + -1) / MINLEN$1;
	*(int32*)((uint8*)POOL$1 + 4) = MINLEN$1;
	void* vr$11 = XALLOCATE( *(int32*)POOL$1 << (5 & 31) );
	*(struct $5TLIST**)((uint8*)POOL$1 + 8) = (struct $5TLIST*)vr$11;
	int32 LEN_$1;
	LEN_$1 = MINLEN$1;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$2$2;
		TMP$2$2 = *(int32*)POOL$1 + -1;
		goto label$4;
		label$7:;
		{
			LISTINIT( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 8) + (I$2 << (5 & 31))), ITEMS$1, LEN_$1, 2 );
			LEN_$1 = LEN_$1 + *(int32*)((uint8*)POOL$1 + 4);
		}
		label$5:;
		I$2 = I$2 + 1;
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
		int32 I$2;
		I$2 = 0;
		int32 TMP$3$2;
		TMP$3$2 = *(int32*)POOL$1 + -1;
		goto label$10;
		label$13:;
		{
			LISTEND( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 8) + (I$2 << (5 & 31))) );
		}
		label$11:;
		I$2 = I$2 + 1;
		label$10:;
		if( I$2 <= TMP$3$2 ) goto label$13;
		label$12:;
	}
	free( *(void**)((uint8*)POOL$1 + 8) );
	label$9:;
}

void* POOLNEWITEM( struct $5TPOOL* POOL$1, int32 LEN_$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	static struct $9TPOOLITEM* ITEM$1;
	static int32 IDX$1;
	if( LEN_$1 > 0 ) goto label$17;
	{
		fb$result$1 = (void*)0u;
		goto label$15;
	}
	label$17:;
	label$16:;
	IDX$1 = (LEN_$1 + -1) / *(int32*)((uint8*)POOL$1 + 4);
	if( IDX$1 < *(int32*)POOL$1 ) goto label$19;
	{
		void* vr$6 = XALLOCATE( LEN_$1 + 4 );
		ITEM$1 = (struct $9TPOOLITEM*)vr$6;
	}
	goto label$18;
	label$19:;
	{
		void* vr$10 = LISTNEWNODE( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 8) + (IDX$1 << (5 & 31))) );
		ITEM$1 = (struct $9TPOOLITEM*)vr$10;
	}
	label$18:;
	*(int32*)ITEM$1 = IDX$1;
	fb$result$1 = (void*)((uint8*)ITEM$1 + 4);
	label$15:;
	return fb$result$1;
}

void POOLDELITEM( struct $5TPOOL* POOL$1, void* NODE$1 )
{
	label$20:;
	static struct $9TPOOLITEM* ITEM$1;
	if( NODE$1 != (void*)0u ) goto label$23;
	{
		goto label$21;
	}
	label$23:;
	label$22:;
	ITEM$1 = (struct $9TPOOLITEM*)((uint8*)NODE$1 + -4);
	if( *(int32*)ITEM$1 < *(int32*)POOL$1 ) goto label$25;
	{
		free( (void*)ITEM$1 );
	}
	goto label$24;
	label$25:;
	{
		LISTDELNODE( (struct $5TLIST*)((uint8*)*(struct $5TLIST**)((uint8*)POOL$1 + 8) + (*(int32*)ITEM$1 << (5 & 31))), (void*)ITEM$1 );
	}
	label$24:;
	label$21:;
}
