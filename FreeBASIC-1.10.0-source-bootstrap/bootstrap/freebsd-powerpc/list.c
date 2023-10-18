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
void* fb_ErrorThrowEx( int32, int32, uint8*, void*, void* );
void* malloc( uint32 );
void* calloc( uint32, uint32 );
void* realloc( void*, uint32 );
void free( void* );
void* memset( void*, int32, uint32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
static void fb_ctor__list( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XCALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void LISTALLOCTB( struct $5TLIST*, int32 );
static void FATALOUTOFMEMORY( void );

void* XALLOCATE( int32 SIZE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$6:;
	void* P$1;
	void* vr$1 = malloc( (uint32)SIZE$1 );
	P$1 = vr$1;
	if( P$1 != (void*)0u ) goto label$9;
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	void* P$1;
	void* vr$1 = calloc( (uint32)SIZE$1, 1u );
	P$1 = vr$1;
	if( P$1 != (void*)0u ) goto label$13;
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
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	void* P$1;
	void* vr$1 = realloc( (void*)OLD$1, (uint32)SIZE$1 );
	P$1 = vr$1;
	if( P$1 != (void*)0u ) goto label$17;
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

void LISTINIT( struct $5TLIST* LIST$1, int32 NODES$1, int32 NODELEN$1, $10LIST_FLAGS FLAGS$1 )
{
	label$18:;
	*(struct $7TLISTTB**)LIST$1 = (struct $7TLISTTB*)0u;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 4) = (struct $7TLISTTB*)0u;
	*(int32*)((uint8*)LIST$1 + 8) = 0;
	*(int32*)((uint8*)LIST$1 + 12) = NODELEN$1 + 8;
	*(void**)((uint8*)LIST$1 + 20) = (void*)0u;
	*(void**)((uint8*)LIST$1 + 24) = (void*)0u;
	*($10LIST_FLAGS*)((uint8*)LIST$1 + 28) = FLAGS$1;
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
	if( TB$1 == (struct $7TLISTTB*)0u ) goto label$23;
	{
		NXT$1 = *(struct $7TLISTTB**)TB$1;
		free( (void*)*(void**)((uint8*)TB$1 + 4) );
		free( (void*)TB$1 );
		TB$1 = NXT$1;
	}
	goto label$22;
	label$23:;
	*(struct $7TLISTTB**)LIST$1 = (struct $7TLISTTB*)0u;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 4) = (struct $7TLISTTB*)0u;
	*(int32*)((uint8*)LIST$1 + 8) = 0;
	label$21:;
}

void LISTALLOCTB( struct $5TLIST* LIST$1, int32 NODES$1 )
{
	label$24:;
	struct $9TLISTNODE* NODETB$1;
	struct $9TLISTNODE* NODE$1;
	struct $9TLISTNODE* PRV$1;
	struct $7TLISTTB* TB$1;
	int32 I$1;
	if( (*(int32*)((uint8*)LIST$1 + 28) & 1) == 0 ) goto label$27;
	{
		void* vr$4 = XCALLOCATE( NODES$1 * *(int32*)((uint8*)LIST$1 + 12) );
		NODETB$1 = (struct $9TLISTNODE*)vr$4;
	}
	goto label$26;
	label$27:;
	{
		void* vr$7 = XALLOCATE( NODES$1 * *(int32*)((uint8*)LIST$1 + 12) );
		NODETB$1 = (struct $9TLISTNODE*)vr$7;
	}
	label$26:;
	void* vr$8 = XALLOCATE( 12 );
	TB$1 = (struct $7TLISTTB*)vr$8;
	if( *(struct $7TLISTTB**)LIST$1 != (struct $7TLISTTB*)0u ) goto label$29;
	{
		*(struct $7TLISTTB**)LIST$1 = TB$1;
	}
	label$29:;
	label$28:;
	if( *(struct $7TLISTTB**)((uint8*)LIST$1 + 4) == (struct $7TLISTTB*)0u ) goto label$31;
	{
		*(struct $7TLISTTB**)*(struct $7TLISTTB**)((uint8*)LIST$1 + 4) = TB$1;
	}
	label$31:;
	label$30:;
	*(struct $7TLISTTB**)((uint8*)LIST$1 + 4) = TB$1;
	*(struct $7TLISTTB**)TB$1 = (struct $7TLISTTB*)0u;
	*(void**)((uint8*)TB$1 + 4) = (void*)NODETB$1;
	*(int32*)((uint8*)TB$1 + 8) = NODES$1;
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 16) = NODETB$1;
	*(int32*)((uint8*)LIST$1 + 8) = *(int32*)((uint8*)LIST$1 + 8) + NODES$1;
	if( (*(int32*)((uint8*)LIST$1 + 28) & 2) == 0 ) goto label$33;
	{
		PRV$1 = (struct $9TLISTNODE*)0u;
		NODE$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 16);
		{
			I$1 = 1;
			int32 TMP$3$3;
			TMP$3$3 = NODES$1 + -1;
			goto label$34;
			label$37:;
			{
				*(struct $9TLISTNODE**)NODE$1 = PRV$1;
				*(struct $9TLISTNODE**)((uint8*)NODE$1 + 4) = (struct $9TLISTNODE*)((uint8*)NODE$1 + *(int32*)((uint8*)LIST$1 + 12));
				PRV$1 = NODE$1;
				NODE$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 4);
			}
			label$35:;
			I$1 = I$1 + 1;
			label$34:;
			if( I$1 <= TMP$3$3 ) goto label$37;
			label$36:;
		}
		*(struct $9TLISTNODE**)NODE$1 = PRV$1;
		*(struct $9TLISTNODE**)((uint8*)NODE$1 + 4) = (struct $9TLISTNODE*)0u;
	}
	label$33:;
	label$32:;
	label$25:;
}

void* LISTNEWNODE( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$38:;
	struct $9TLISTNODE* NODE$1;
	struct $9TLISTNODE* TAIL$1;
	if( *(struct $9TLISTNODE**)((uint8*)LIST$1 + 16) != (struct $9TLISTNODE*)0u ) goto label$41;
	{
		LISTALLOCTB( LIST$1, (int32)(*(uint32*)((uint8*)LIST$1 + 8) >> (2u & 31)) );
	}
	label$41:;
	label$40:;
	NODE$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 16);
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 16) = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 4);
	if( (*(int32*)((uint8*)LIST$1 + 28) & 4) == 0 ) goto label$43;
	{
		TAIL$1 = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 24);
		*(void**)((uint8*)LIST$1 + 24) = (void*)NODE$1;
		if( TAIL$1 == (struct $9TLISTNODE*)0u ) goto label$45;
		{
			*(struct $9TLISTNODE**)((uint8*)TAIL$1 + 4) = NODE$1;
		}
		goto label$44;
		label$45:;
		{
			*(void**)((uint8*)LIST$1 + 20) = (void*)NODE$1;
		}
		label$44:;
		*(struct $9TLISTNODE**)NODE$1 = TAIL$1;
		*(struct $9TLISTNODE**)((uint8*)NODE$1 + 4) = (struct $9TLISTNODE*)0u;
		fb$result$1 = (void*)((uint8*)NODE$1 + 8);
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
	if( NODE_$1 != (void*)0u ) goto label$49;
	{
		goto label$47;
	}
	label$49:;
	label$48:;
	if( (*(int32*)((uint8*)LIST$1 + 28) & 4) == 0 ) goto label$51;
	{
		NODE$1 = (struct $9TLISTNODE*)((uint8*)NODE_$1 + -8);
		PRV$1 = *(struct $9TLISTNODE**)NODE$1;
		NXT$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + 4);
		if( PRV$1 == (struct $9TLISTNODE*)0u ) goto label$53;
		{
			*(struct $9TLISTNODE**)((uint8*)PRV$1 + 4) = NXT$1;
		}
		goto label$52;
		label$53:;
		{
			*(void**)((uint8*)LIST$1 + 20) = (void*)NXT$1;
		}
		label$52:;
		if( NXT$1 == (struct $9TLISTNODE*)0u ) goto label$55;
		{
			*(struct $9TLISTNODE**)NXT$1 = PRV$1;
		}
		goto label$54;
		label$55:;
		{
			*(void**)((uint8*)LIST$1 + 24) = (void*)PRV$1;
		}
		label$54:;
	}
	goto label$50;
	label$51:;
	{
		NODE$1 = (struct $9TLISTNODE*)NODE_$1;
	}
	label$50:;
	*(struct $9TLISTNODE**)((uint8*)NODE$1 + 4) = *(struct $9TLISTNODE**)((uint8*)LIST$1 + 16);
	*(struct $9TLISTNODE**)((uint8*)LIST$1 + 16) = NODE$1;
	if( (*(int32*)((uint8*)LIST$1 + 28) & 1) == 0 ) goto label$57;
	{
		memset( NODE_$1, 0, (uint32)(*(int32*)((uint8*)LIST$1 + 12) + -8) );
	}
	label$57:;
	label$56:;
	label$47:;
}

void* LISTGETHEAD( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	if( *(void**)((uint8*)LIST$1 + 20) != (void*)0u ) goto label$61;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$60;
	label$61:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)LIST$1 + 20) + 8);
	}
	label$60:;
	label$59:;
	return fb$result$1;
}

void* LISTGETTAIL( struct $5TLIST* LIST$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	if( *(void**)((uint8*)LIST$1 + 24) != (void*)0u ) goto label$65;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$64;
	label$65:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)LIST$1 + 24) + 8);
	}
	label$64:;
	label$63:;
	return fb$result$1;
}

void* LISTGETPREV( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	struct $9TLISTNODE* PREV$1;
	PREV$1 = *(struct $9TLISTNODE**)((uint8*)NODE$1 + -8);
	if( PREV$1 != (struct $9TLISTNODE*)0u ) goto label$69;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$68;
	label$69:;
	{
		fb$result$1 = (void*)((uint8*)PREV$1 + 8);
	}
	label$68:;
	label$67:;
	return fb$result$1;
}

void* LISTGETNEXT( void* NODE$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$70:;
	struct $9TLISTNODE* NXT$1;
	NXT$1 = *(struct $9TLISTNODE**)((uint8*)((uint8*)NODE$1 + -8) + 4);
	if( NXT$1 != (struct $9TLISTNODE*)0u ) goto label$73;
	{
		fb$result$1 = (void*)0u;
	}
	goto label$72;
	label$73:;
	{
		fb$result$1 = (void*)((uint8*)NXT$1 + 8);
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
	fb_StrAssign( (void*)P$1, -1, (void*)S$1, -1, 0 );
	label$75:;
}

void STRLISTINIT( struct $5TLIST* LIST$1, int32 NODES$1 )
{
	label$76:;
	LISTINIT( LIST$1, NODES$1, 12, -1 );
	label$77:;
}

static void FATALOUTOFMEMORY( void )
{
	label$2:;
	label$4:;
	void* vr$0 = fb_ErrorThrowEx( 4, 10, (uint8*)"src/compiler/list.bas", (void*)0u, (void*)0u );
	goto *vr$0;
	label$5:;
	label$3:;
}
