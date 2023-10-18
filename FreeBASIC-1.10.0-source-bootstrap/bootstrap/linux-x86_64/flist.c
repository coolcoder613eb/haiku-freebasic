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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 8 );
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
struct $6TFLIST {
	int64 TOTITEMS;
	int64 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int64 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 112 );
static void fb_ctor__flist( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void LISTALLOCTB( struct $5TLIST*, int64 );

void FLISTINIT( struct $6TFLIST* FLIST$1, int64 ITEMS$1, int64 ITEMLEN$1 )
{
	label$2:;
	*(int64*)FLIST$1 = ITEMS$1;
	*(int64*)((uint8*)FLIST$1 + 8ll) = ITEMS$1;
	LISTINIT( (struct $5TLIST*)((uint8*)FLIST$1 + 40ll), ITEMS$1, ITEMLEN$1 + 8ll, 0ll );
	*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 48ll);
	*(int64*)((uint8*)FLIST$1 + 24ll) = 0ll;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16ll) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) + 8ll);
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) = (struct $10TFLISTITEM*)0ull;
	label$3:;
}

void FLISTEND( struct $6TFLIST* FLIST$1 )
{
	label$4:;
	*(int64*)FLIST$1 = 0ll;
	*(int64*)((uint8*)FLIST$1 + 8ll) = 0ll;
	*(int64*)((uint8*)FLIST$1 + 24ll) = 0ll;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) = (struct $10TFLISTITEM*)0ull;
	LISTEND( (struct $5TLIST*)((uint8*)FLIST$1 + 40ll) );
	label$5:;
}

void* FLISTNEWITEM( struct $6TFLIST* FLIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$6:;
	static struct $10TFLISTITEM* ITEM$1;
	if( *(int64*)((uint8*)FLIST$1 + 8ll) > 0ll ) goto label$9;
	{
		*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) = *(struct $7TLISTTB**)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll);
		if( *(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) != (struct $7TLISTTB*)0ull ) goto label$11;
		{
			*(int64*)((uint8*)FLIST$1 + 8ll) = (int64)(*(uint64*)FLIST$1 >> (1ull & 63ll));
			*(int64*)FLIST$1 = *(int64*)FLIST$1 + *(int64*)((uint8*)FLIST$1 + 8ll);
			LISTALLOCTB( (struct $5TLIST*)((uint8*)FLIST$1 + 40ll), *(int64*)((uint8*)FLIST$1 + 8ll) );
			*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 48ll);
		}
		goto label$10;
		label$11:;
		{
			*(int64*)((uint8*)FLIST$1 + 8ll) = *(int64*)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) + 16ll);
		}
		label$10:;
		*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16ll) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) + 8ll);
		*(int64*)((uint8*)FLIST$1 + 24ll) = 0ll;
	}
	label$9:;
	label$8:;
	ITEM$1 = (struct $10TFLISTITEM*)((uint8*)*(int8**)((uint8*)FLIST$1 + 16ll) + (*(int64*)((uint8*)FLIST$1 + 24ll) * *(int64*)((uint8*)FLIST$1 + 64ll)));
	*(int64*)((uint8*)FLIST$1 + 24ll) = *(int64*)((uint8*)FLIST$1 + 24ll) + 1ll;
	*(int64*)((uint8*)FLIST$1 + 8ll) = *(int64*)((uint8*)FLIST$1 + 8ll) + -1ll;
	if( *(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) == (struct $10TFLISTITEM*)0ull ) goto label$13;
	{
		*(struct $10TFLISTITEM**)*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) = ITEM$1;
	}
	label$13:;
	label$12:;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) = ITEM$1;
	*(struct $10TFLISTITEM**)ITEM$1 = (struct $10TFLISTITEM*)0ull;
	fb$result$1 = (void*)((uint8*)ITEM$1 + 8ll);
	label$7:;
	return fb$result$1;
}

void FLISTRESET( struct $6TFLIST* FLIST$1 )
{
	label$14:;
	*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 40ll);
	*(int64*)((uint8*)FLIST$1 + 8ll) = *(int64*)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) + 16ll);
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16ll) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 104ll) + 8ll);
	*(int64*)((uint8*)FLIST$1 + 24ll) = 0ll;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 32ll) = (struct $10TFLISTITEM*)0ull;
	label$15:;
}

void* FLISTGETHEAD( struct $6TFLIST* FLIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	static struct $10TFLISTITEM* ITEM$1;
	ITEM$1 = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 40ll) + 8ll);
	if( ITEM$1 != (struct $10TFLISTITEM*)0ull ) goto label$19;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$18;
	label$19:;
	{
		fb$result$1 = (void*)((uint8*)ITEM$1 + 8ll);
	}
	label$18:;
	label$17:;
	return fb$result$1;
}

void* FLISTGETNEXT( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$20:;
	static struct $10TFLISTITEM* NXT$1;
	NXT$1 = *(struct $10TFLISTITEM**)((uint8*)NODE$1 + -8ll);
	if( NXT$1 != (struct $10TFLISTITEM*)0ull ) goto label$23;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$22;
	label$23:;
	{
		fb$result$1 = (void*)((uint8*)NXT$1 + 8ll);
	}
	label$22:;
	label$21:;
	return fb$result$1;
}
