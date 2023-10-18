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
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 8 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 12 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $10TSTACKNODE* TOS;
	int32 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 24 );
void free( void* );
void* memset( void*, int32, uint32 );
static void fb_ctor__stack( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XCALLOCATE( int32 );
static int32 HALLOCTB( struct $6TSTACK*, int32 );

int32 STACKNEW( struct $6TSTACK* STK$1, int32 NODES$1, int32 NODELEN$1, int32 DOCLEAR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$2:;
	*(struct $8TSTACKTB**)STK$1 = (struct $8TSTACKTB*)0u;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 4) = (struct $8TSTACKTB*)0u;
	*(int32*)((uint8*)STK$1 + 8) = 0;
	*(int32*)((uint8*)STK$1 + 12) = NODELEN$1 + 8;
	*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) = (struct $10TSTACKNODE*)0u;
	*(int32*)((uint8*)STK$1 + 20) = DOCLEAR$1;
	int32 vr$8 = HALLOCTB( STK$1, NODES$1 );
	fb$result$1 = vr$8;
	label$3:;
	return fb$result$1;
}

int32 STACKFREE( struct $6TSTACK* STK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$4:;
	struct $8TSTACKTB* TB$1;
	__builtin_memset( &TB$1, 0, 4 );
	struct $8TSTACKTB* NXT$1;
	__builtin_memset( &NXT$1, 0, 4 );
	TB$1 = *(struct $8TSTACKTB**)STK$1;
	label$6:;
	if( TB$1 == (struct $8TSTACKTB*)0u ) goto label$7;
	{
		NXT$1 = *(struct $8TSTACKTB**)TB$1;
		free( *(void**)((uint8*)TB$1 + 4) );
		free( (void*)TB$1 );
		TB$1 = NXT$1;
	}
	goto label$6;
	label$7:;
	*(struct $8TSTACKTB**)STK$1 = (struct $8TSTACKTB*)0u;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 4) = (struct $8TSTACKTB*)0u;
	*(int32*)((uint8*)STK$1 + 8) = 0;
	fb$result$1 = -1;
	label$5:;
	return fb$result$1;
}

void* STACKPUSH( struct $6TSTACK* STK$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	if( *(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) != (struct $10TSTACKNODE*)0u ) goto label$27;
	{
		*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) = *(struct $10TSTACKNODE**)((uint8*)*(struct $8TSTACKTB**)STK$1 + 4);
	}
	goto label$26;
	label$27:;
	{
		if( *(struct $10TSTACKNODE**)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) + 4) != (struct $10TSTACKNODE*)0u ) goto label$29;
		{
			HALLOCTB( STK$1, (int32)(*(uint32*)((uint8*)STK$1 + 8) >> (2u & 31)) );
		}
		label$29:;
		label$28:;
		*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) = *(struct $10TSTACKNODE**)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) + 4);
	}
	label$26:;
	fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)STK$1 + 16) + 8);
	label$25:;
	return fb$result$1;
}

void STACKPOP( struct $6TSTACK* STK$1 )
{
	label$30:;
	if( *(int32*)((uint8*)STK$1 + 20) == 0 ) goto label$33;
	{
		memset( (void*)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) + 8), 0, (uint32)(*(int32*)((uint8*)STK$1 + 12) + -8) );
	}
	label$33:;
	label$32:;
	*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) = *(struct $10TSTACKNODE**)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 16);
	label$31:;
}

void* STACKGETTOS( struct $6TSTACK* STK$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$34:;
	if( *(struct $10TSTACKNODE**)((uint8*)STK$1 + 16) != (struct $10TSTACKNODE*)0u ) goto label$37;
	{
		fb$result$1 = (void*)0u;
		goto label$35;
	}
	goto label$36;
	label$37:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)STK$1 + 16) + 8);
		goto label$35;
	}
	label$36:;
	label$35:;
	return fb$result$1;
}

static int32 HALLOCTB( struct $6TSTACK* STK$1, int32 NODES$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$8:;
	static struct $10TSTACKNODE* NODETB$1;
	static struct $10TSTACKNODE* NODE$1;
	static struct $10TSTACKNODE* PREV$1;
	static struct $8TSTACKTB* TB$1;
	static int32 I$1;
	fb$result$1 = 0;
	if( NODES$1 > 1 ) goto label$11;
	{
		goto label$9;
	}
	label$11:;
	label$10:;
	if( *(int32*)((uint8*)STK$1 + 20) == 0 ) goto label$13;
	{
		void* vr$4 = XCALLOCATE( NODES$1 * *(int32*)((uint8*)STK$1 + 12) );
		NODETB$1 = (struct $10TSTACKNODE*)vr$4;
	}
	goto label$12;
	label$13:;
	{
		void* vr$7 = XALLOCATE( NODES$1 * *(int32*)((uint8*)STK$1 + 12) );
		NODETB$1 = (struct $10TSTACKNODE*)vr$7;
	}
	label$12:;
	void* vr$8 = XALLOCATE( 12 );
	TB$1 = (struct $8TSTACKTB*)vr$8;
	if( *(struct $8TSTACKTB**)STK$1 != (struct $8TSTACKTB*)0u ) goto label$15;
	{
		*(struct $8TSTACKTB**)STK$1 = TB$1;
	}
	label$15:;
	label$14:;
	if( *(struct $8TSTACKTB**)((uint8*)STK$1 + 4) == (struct $8TSTACKTB*)0u ) goto label$17;
	{
		*(struct $8TSTACKTB**)*(struct $8TSTACKTB**)((uint8*)STK$1 + 4) = TB$1;
	}
	label$17:;
	label$16:;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 4) = TB$1;
	*(struct $8TSTACKTB**)TB$1 = (struct $8TSTACKTB*)0u;
	*(struct $10TSTACKNODE**)((uint8*)TB$1 + 4) = NODETB$1;
	*(int32*)((uint8*)TB$1 + 8) = NODES$1;
	*(int32*)((uint8*)STK$1 + 8) = *(int32*)((uint8*)STK$1 + 8) + NODES$1;
	PREV$1 = *(struct $10TSTACKNODE**)((uint8*)STK$1 + 16);
	NODE$1 = NODETB$1;
	if( PREV$1 == (struct $10TSTACKNODE*)0u ) goto label$19;
	{
		*(struct $10TSTACKNODE**)((uint8*)PREV$1 + 4) = NODE$1;
	}
	label$19:;
	label$18:;
	{
		I$1 = 1;
		int32 TMP$2$2;
		TMP$2$2 = NODES$1 + -1;
		goto label$20;
		label$23:;
		{
			*(struct $10TSTACKNODE**)NODE$1 = PREV$1;
			*(struct $10TSTACKNODE**)((uint8*)NODE$1 + 4) = (struct $10TSTACKNODE*)((uint8*)NODE$1 + *(int32*)((uint8*)STK$1 + 12));
			PREV$1 = NODE$1;
			NODE$1 = *(struct $10TSTACKNODE**)((uint8*)NODE$1 + 4);
		}
		label$21:;
		I$1 = I$1 + 1;
		label$20:;
		if( I$1 <= TMP$2$2 ) goto label$23;
		label$22:;
	}
	*(struct $10TSTACKNODE**)NODE$1 = PREV$1;
	*(struct $10TSTACKNODE**)((uint8*)NODE$1 + 4) = (struct $10TSTACKNODE*)0u;
	fb$result$1 = -1;
	label$9:;
	return fb$result$1;
}
