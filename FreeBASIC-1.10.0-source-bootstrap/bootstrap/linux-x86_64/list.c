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
void* fb_ErrorThrowEx( int32, int32, uint8*, void*, void* );
void* malloc( uint64 );
void* calloc( uint64, uint64 );
void* realloc( void*, uint64 );
void free( void* );
void* memset( void*, int32, uint64 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
static void fb_ctor__list( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void LISTALLOCTB( struct $5TLIST*, int64 );
static void FATALOUTOFMEMORY( void );

void* XALLOCATE( int32 SIZE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$6:;
	void* P$1;
	void* vr$2 = malloc( (uint64)SIZE$1 );
	P$1 = vr$2;
	if( P$1 != (void*)0ull ) goto label$9;
	{
		FATALOUTOFMEMORY(  );
	}
	label$9:;
	label$8:;
	fb$result$1 = P$1;
	goto label$7;
	label$7:;
	return fb$result$1;
}

void* XCALLOCATE( int32 SIZE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	void* P$1;
	void* vr$2 = calloc( (uint64)SIZE$1, 1ull );
	P$1 = vr$2;
	if( P$1 != (void*)0ull ) goto label$13;
	{
		FATALOUTOFMEMORY(  );
	}
	label$13:;
	label$12:;
	fb$result$1 = P$1;
	goto label$11;
	label$11:;
	return fb$result$1;
}

void* XREALLOCATE( void* OLD$1, int32 SIZE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	void* P$1;
	void* vr$2 = realloc( (void*)OLD$1, (uint64)SIZE$1 );
	P$1 = vr$2;
	if( P$1 != (void*)0ull ) goto label$17;
	{
		FATALOUTOFMEMORY(  );
	}
	label$17:;
	label$16:;
	fb$result$1 = P$1;
	goto label$15;
	label$15:;
	return fb$result$1;
}

void LISTINIT( struct $5TLIST* LIST$1, int64 NODES$1, int64 NODELEN$1, $10LIST_FLAGS FLAGS$1 )
{
	label$18:;
	*(struct $7TLISTTB**)LIST$1 = (struct $7TLISTTB*)0ull;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 8ll) = (struct $7TLISTTB*)0ull;
	*(int64*)((uint8*)LIST$1 + 16ll) = 0ll;
	*(int64*)((uint8*)LIST$1 + 24ll) = NODELEN$1 + 16ll;
	*(void**)((uint8*)LIST$1 + 40ll) = (void*)0ull;
	*(void**)((uint8*)LIST$1 + 48ll) = (void*)0ull;
	*($10LIST_FLAGS*)((uint8*)LIST$1 + 56ll) = FLAGS$1;
	LISTALLOCTB( LIST$1, NODES$1 );
	label$19:;
}

void LISTEND( struct $5TLIST* LIST$1 )
{
	label$20:;
	struct $7TLISTTB* TB$1;
	struct $7TLISTTB* NXT$1;
	TB$1 = *(struct $7TLISTTB**)LIST$1;
	label$22:;
	if( TB$1 == (struct $7TLISTTB*)0ull ) goto label$23;
	{
		NXT$1 = *(struct $7TLISTTB**)TB$1;
		free( (void*)*(void**)((uint8*)TB$1 + 8ll) );
		free( (void*)TB$1 );
		TB$1 = NXT$1;
	}
	goto label$22;
	label$23:;
	*(struct $7TLISTTB**)LIST$1 = (struct $7TLISTTB*)0ull;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 8ll) = (struct $7TLISTTB*)0ull;
	*(int64*)((uint8*)LIST$1 + 16ll) = 0ll;
	label$21:;
}

void LISTALLOCTB( struct $5TLIST* LIST$1, int64 NODES$1 )
{
	label$24:;
	struct $9TLISTNODE* NODETB$1;
	struct $9TLISTNODE* NODE$1;
	struct $9TLISTNODE* PRV$1;
	struct $7TLISTTB* TB$1;
	int64 I$1;
	if( (*(int64*)((uint8*)LIST$1 + 56ll) & 1ll) == 0ll ) goto label$27;
	{
		void* vr$5 = XCALLOCATE( (int32)(NODES$1 * *(int64*)((uint8*)LIST$1 + 24ll)) );
		NODETB$1 = (struct $9TLISTNODE*)vr$5;
	}
	goto label$26;
	label$27:;
	{
		void* vr$9 = XALLOCATE( (int32)(NODES$1 * *(int64*)((uint8*)LIST$1 + 24ll)) );
		NODETB$1 = (struct $9TLISTNODE*)vr$9;
	}
	label$26:;
	void* vr$10 = XALLOCATE( 24 );
	TB$1 = (struct $7TLISTTB*)vr$10;
	if( *(struct $7TLISTTB**)LIST$1 != (struct $7TLISTTB*)0ull ) goto label$29;
	{
		*(struct $7TLISTTB**)LIST$1 = TB$1;
	}
	label$29:;
	label$28:;
	if( *(struct $7TLISTTB**)((uint8*)LIST$1 + 8ll) == (struct $7TLISTTB*)0ull ) goto label$31;
	{
		*(struct $7TLISTTB**)*(struct $7TLISTTB**)((uint8*)LIST$1 + 8ll) = TB$1;
	}
	label$31:;
	label$30:;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 8ll) = TB$1;
	*(struct $7TLISTTB**)TB$1 = (struct $7TLISTTB*)0ull;
	*(void**)((uint8*)TB$1 + 8ll) = (void*)NODETB$1;
	*(int64*)((uint8*)TB$1 + 16ll) = NODES$1;
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll) = NODETB$1;
	*(int64*)((uint8*)LIST$1 + 16ll) = *(int64*)((uint8*)LIST$1 + 16ll) + NODES$1;
	if( (*(int64*)((uint8*)LIST$1 + 56ll) & 2ll) == 0ll ) goto label$33;
	{
		PRV$1 = (struct $9TLISTNODE*)0ull;
		NODE$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll);
		{
			I$1 = 1ll;
			int64 TMP$3$3;
			TMP$3$3 = NODES$1 + -1ll;
			goto label$34;
			label$37:;
			{
				*(struct $9TLISTNODE**)NODE$1 = PRV$1;
				*(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll) = (struct $9TLISTNODE*)((uint8*)NODE$1 + *(int64*)((uint8*)LIST$1 + 24ll));
				PRV$1 = NODE$1;
				NODE$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll);
			}
			label$35:;
			I$1 = I$1 + 1ll;
			label$34:;
			if( I$1 <= TMP$3$3 ) goto label$37;
			label$36:;
		}
		*(struct $9TLISTNODE**)NODE$1 = PRV$1;
		*(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll) = (struct $9TLISTNODE*)0ull;
	}
	label$33:;
	label$32:;
	label$25:;
}

void* LISTNEWNODE( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$38:;
	struct $9TLISTNODE* NODE$1;
	struct $9TLISTNODE* TAIL$1;
	if( *(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll) != (struct $9TLISTNODE*)0ull ) goto label$41;
	{
		LISTALLOCTB( LIST$1, (int64)(*(uint64*)((uint8*)LIST$1 + 16ll) >> (2ull & 63ll)) );
	}
	label$41:;
	label$40:;
	NODE$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll);
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll) = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll);
	if( (*(int64*)((uint8*)LIST$1 + 56ll) & 4ll) == 0ll ) goto label$43;
	{
		TAIL$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 48ll);
		*(void**)((uint8*)LIST$1 + 48ll) = (void*)NODE$1;
		if( TAIL$1 == (struct $9TLISTNODE*)0ull ) goto label$45;
		{
			*(struct $9TLISTNODE**)((uint8*)TAIL$1 + 8ll) = NODE$1;
		}
		goto label$44;
		label$45:;
		{
			*(void**)((uint8*)LIST$1 + 40ll) = (void*)NODE$1;
		}
		label$44:;
		*(struct $9TLISTNODE**)NODE$1 = TAIL$1;
		*(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll) = (struct $9TLISTNODE*)0ull;
		fb$result$1 = (void*)((uint8*)NODE$1 + 16ll);
	}
	goto label$42;
	label$43:;
	{
		fb$result$1 = (void*)NODE$1;
	}
	label$42:;
	label$39:;
	return fb$result$1;
}

void LISTDELNODE( struct $5TLIST* LIST$1, void* NODE_$1 )
{
	label$46:;
	struct $9TLISTNODE* NODE$1;
	struct $9TLISTNODE* PRV$1;
	struct $9TLISTNODE* NXT$1;
	if( NODE_$1 != (void*)0ull ) goto label$49;
	{
		goto label$47;
	}
	label$49:;
	label$48:;
	if( (*(int64*)((uint8*)LIST$1 + 56ll) & 4ll) == 0ll ) goto label$51;
	{
		NODE$1 = (struct $9TLISTNODE*)((uint8*)NODE_$1 + -16ll);
		PRV$1 = *(struct $9TLISTNODE**)NODE$1;
		NXT$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll);
		if( PRV$1 == (struct $9TLISTNODE*)0ull ) goto label$53;
		{
			*(struct $9TLISTNODE**)((uint8*)PRV$1 + 8ll) = NXT$1;
		}
		goto label$52;
		label$53:;
		{
			*(void**)((uint8*)LIST$1 + 40ll) = (void*)NXT$1;
		}
		label$52:;
		if( NXT$1 == (struct $9TLISTNODE*)0ull ) goto label$55;
		{
			*(struct $9TLISTNODE**)NXT$1 = PRV$1;
		}
		goto label$54;
		label$55:;
		{
			*(void**)((uint8*)LIST$1 + 48ll) = (void*)PRV$1;
		}
		label$54:;
	}
	goto label$50;
	label$51:;
	{
		NODE$1 = (struct $9TLISTNODE*)NODE_$1;
	}
	label$50:;
	*(struct $9TLISTNODE**)((uint8*)NODE$1 + 8ll) = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll);
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 32ll) = NODE$1;
	if( (*(int64*)((uint8*)LIST$1 + 56ll) & 1ll) == 0ll ) goto label$57;
	{
		memset( NODE_$1, 0, (uint64)(*(int64*)((uint8*)LIST$1 + 24ll) + -16ll) );
	}
	label$57:;
	label$56:;
	label$47:;
}

void* LISTGETHEAD( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	if( *(void**)((uint8*)LIST$1 + 40ll) != (void*)0ull ) goto label$61;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$60;
	label$61:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)LIST$1 + 40ll) + 16ll);
	}
	label$60:;
	label$59:;
	return fb$result$1;
}

void* LISTGETTAIL( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$62:;
	if( *(void**)((uint8*)LIST$1 + 48ll) != (void*)0ull ) goto label$65;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$64;
	label$65:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)LIST$1 + 48ll) + 16ll);
	}
	label$64:;
	label$63:;
	return fb$result$1;
}

void* LISTGETPREV( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	struct $9TLISTNODE* PREV$1;
	PREV$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + -16ll);
	if( PREV$1 != (struct $9TLISTNODE*)0ull ) goto label$69;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$68;
	label$69:;
	{
		fb$result$1 = (void*)((uint8*)PREV$1 + 16ll);
	}
	label$68:;
	label$67:;
	return fb$result$1;
}

void* LISTGETNEXT( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$70:;
	struct $9TLISTNODE* NXT$1;
	NXT$1 = *(struct $9TLISTNODE**)((uint8*)((uint8*)NODE$1 + -16ll) + 8ll);
	if( NXT$1 != (struct $9TLISTNODE*)0ull ) goto label$73;
	{
		fb$result$1 = (void*)0ull;
	}
	goto label$72;
	label$73:;
	{
		fb$result$1 = (void*)((uint8*)NXT$1 + 16ll);
	}
	label$72:;
	label$71:;
	return fb$result$1;
}

void STRLISTAPPEND( struct $5TLIST* LIST$1, FBSTRING* S$1 )
{
	label$74:;
	FBSTRING* P$1;
	void* vr$0 = LISTNEWNODE( LIST$1 );
	P$1 = (FBSTRING*)vr$0;
	fb_StrAssign( (void*)P$1, -1ll, (void*)S$1, -1ll, 0 );
	label$75:;
}

void STRLISTINIT( struct $5TLIST* LIST$1, int64 NODES$1 )
{
	label$76:;
	LISTINIT( LIST$1, NODES$1, 24ll, 4294967295ll );
	label$77:;
}

static void FATALOUTOFMEMORY( void )
{
	label$2:;
	label$4:;
	void* vr$0 = fb_ErrorThrowEx( 4, 10, (uint8*)"src/compiler/list.bas", (void*)0ull, (void*)0ull );
	goto *vr$0;
	label$5:;
	label$3:;
}
