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
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
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
struct $6TFLIST {
	int32 TOTITEMS;
	int32 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int32 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 56 );
static void fb_ctor__flist( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void LISTALLOCTB( struct $5TLIST*, int32 );

void FLISTINIT( struct $6TFLIST* FLIST$1, int32 ITEMS$1, int32 ITEMLEN$1 )
{
	label$2:;
	*(int32*)FLIST$1 = ITEMS$1;
	*(int32*)((uint8*)FLIST$1 + 4) = ITEMS$1;
	LISTINIT( (struct $5TLIST*)((uint8*)FLIST$1 + 20), ITEMS$1, ITEMLEN$1 + 4, 0 );
	*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 24);
	*(int32*)((uint8*)FLIST$1 + 12) = 0;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 8) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) + 4);
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) = (struct $10TFLISTITEM*)0u;
	label$3:;
}

void FLISTEND( struct $6TFLIST* FLIST$1 )
{
	label$4:;
	*(int32*)FLIST$1 = 0;
	*(int32*)((uint8*)FLIST$1 + 4) = 0;
	*(int32*)((uint8*)FLIST$1 + 12) = 0;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) = (struct $10TFLISTITEM*)0u;
	LISTEND( (struct $5TLIST*)((uint8*)FLIST$1 + 20) );
	label$5:;
}

void* FLISTNEWITEM( struct $6TFLIST* FLIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$6:;
	static struct $10TFLISTITEM* ITEM$1;
	if( *(int32*)((uint8*)FLIST$1 + 4) > 0 ) goto label$9;
	{
		*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) = *(struct $7TLISTTB**)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52);
		if( *(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) != (struct $7TLISTTB*)0u ) goto label$11;
		{
			*(int32*)((uint8*)FLIST$1 + 4) = (int32)(*(uint32*)FLIST$1 >> (1u & 31));
			*(int32*)FLIST$1 = *(int32*)FLIST$1 + *(int32*)((uint8*)FLIST$1 + 4);
			LISTALLOCTB( (struct $5TLIST*)((uint8*)FLIST$1 + 20), *(int32*)((uint8*)FLIST$1 + 4) );
			*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 24);
		}
		goto label$10;
		label$11:;
		{
			*(int32*)((uint8*)FLIST$1 + 4) = *(int32*)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) + 8);
		}
		label$10:;
		*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 8) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) + 4);
		*(int32*)((uint8*)FLIST$1 + 12) = 0;
	}
	label$9:;
	label$8:;
	ITEM$1 = (struct $10TFLISTITEM*)((uint8*)*(int8**)((uint8*)FLIST$1 + 8) + (*(int32*)((uint8*)FLIST$1 + 12) * *(int32*)((uint8*)FLIST$1 + 32)));
	*(int32*)((uint8*)FLIST$1 + 12) = *(int32*)((uint8*)FLIST$1 + 12) + 1;
	*(int32*)((uint8*)FLIST$1 + 4) = *(int32*)((uint8*)FLIST$1 + 4) + -1;
	if( *(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) == (struct $10TFLISTITEM*)0u ) goto label$13;
	{
		*(struct $10TFLISTITEM**)*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) = ITEM$1;
	}
	label$13:;
	label$12:;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) = ITEM$1;
	*(struct $10TFLISTITEM**)ITEM$1 = (struct $10TFLISTITEM*)0u;
	fb$result$1 = (void*)((uint8*)ITEM$1 + 4);
	label$7:;
	return fb$result$1;
}

void FLISTRESET( struct $6TFLIST* FLIST$1 )
{
	label$14:;
	*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) = *(struct $7TLISTTB**)((uint8*)FLIST$1 + 20);
	*(int32*)((uint8*)FLIST$1 + 4) = *(int32*)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) + 8);
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 8) = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 52) + 4);
	*(int32*)((uint8*)FLIST$1 + 12) = 0;
	*(struct $10TFLISTITEM**)((uint8*)FLIST$1 + 16) = (struct $10TFLISTITEM*)0u;
	label$15:;
}

void* FLISTGETHEAD( struct $6TFLIST* FLIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	static struct $10TFLISTITEM* ITEM$1;
	ITEM$1 = *(struct $10TFLISTITEM**)((uint8*)*(struct $7TLISTTB**)((uint8*)FLIST$1 + 20) + 4);
	if( ITEM$1 != (struct $10TFLISTITEM*)0u ) goto label$19;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$18;
	label$19:;
	{
		fb$result$1 = (void*)((uint8*)ITEM$1 + 4);
	}
	label$18:;
	label$17:;
	return fb$result$1;
}

void* FLISTGETNEXT( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	static struct $10TFLISTITEM* NXT$1;
	NXT$1 = *(struct $10TFLISTITEM**)((uint8*)NODE$1 + -4);
	if( NXT$1 != (struct $10TFLISTITEM*)0u ) goto label$23;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$22;
	label$23:;
	{
		fb$result$1 = (void*)((uint8*)NXT$1 + 4);
	}
	label$22:;
	label$21:;
	return fb$result$1;
}
