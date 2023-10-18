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
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 16 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 24 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $10TSTACKNODE* TOS;
	int64 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 48 );
void free( void* );
void* memset( void*, int32, uint64 );
static void fb_ctor__stack( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XCALLOCATE( int32 );
static int64 HALLOCTB( struct $6TSTACK*, int64 );

int64 STACKNEW( struct $6TSTACK* STK$1, int64 NODES$1, int64 NODELEN$1, int64 DOCLEAR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$2:;
	*(struct $8TSTACKTB**)STK$1 = (struct $8TSTACKTB*)0ull;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 8ll) = (struct $8TSTACKTB*)0ull;
	*(int64*)((uint8*)STK$1 + 16ll) = 0ll;
	*(int64*)((uint8*)STK$1 + 24ll) = NODELEN$1 + 16ll;
	*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) = (struct $10TSTACKNODE*)0ull;
	*(int64*)((uint8*)STK$1 + 40ll) = DOCLEAR$1;
	int64 vr$8 = HALLOCTB( STK$1, NODES$1 );
	fb$result$1 = vr$8;
	label$3:;
	return fb$result$1;
}

int64 STACKFREE( struct $6TSTACK* STK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$4:;
	struct $8TSTACKTB* TB$1;
	__builtin_memset( &TB$1, 0, 8ll );
	struct $8TSTACKTB* NXT$1;
	__builtin_memset( &NXT$1, 0, 8ll );
	TB$1 = *(struct $8TSTACKTB**)STK$1;
	label$6:;
	if( TB$1 == (struct $8TSTACKTB*)0ull ) goto label$7;
	{
		NXT$1 = *(struct $8TSTACKTB**)TB$1;
		free( *(void**)((uint8*)TB$1 + 8ll) );
		free( (void*)TB$1 );
		TB$1 = NXT$1;
	}
	goto label$6;
	label$7:;
	*(struct $8TSTACKTB**)STK$1 = (struct $8TSTACKTB*)0ull;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 8ll) = (struct $8TSTACKTB*)0ull;
	*(int64*)((uint8*)STK$1 + 16ll) = 0ll;
	fb$result$1 = -1ll;
	label$5:;
	return fb$result$1;
}

void* STACKPUSH( struct $6TSTACK* STK$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	if( *(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) != (struct $10TSTACKNODE*)0ull ) goto label$27;
	{
		*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) = *(struct $10TSTACKNODE**)((uint8*)*(struct $8TSTACKTB**)STK$1 + 8ll);
	}
	goto label$26;
	label$27:;
	{
		if( *(struct $10TSTACKNODE**)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) + 8ll) != (struct $10TSTACKNODE*)0ull ) goto label$29;
		{
			HALLOCTB( STK$1, (int64)(*(uint64*)((uint8*)STK$1 + 16ll) >> (2ull & 63ll)) );
		}
		label$29:;
		label$28:;
		*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) = *(struct $10TSTACKNODE**)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) + 8ll);
	}
	label$26:;
	fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)STK$1 + 32ll) + 16ll);
	label$25:;
	return fb$result$1;
}

void STACKPOP( struct $6TSTACK* STK$1 )
{
	label$30:;
	if( *(int64*)((uint8*)STK$1 + 40ll) == 0ll ) goto label$33;
	{
		memset( (void*)((uint8*)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) + 16ll), 0, (uint64)(*(int64*)((uint8*)STK$1 + 24ll) + -16ll) );
	}
	label$33:;
	label$32:;
	*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) = *(struct $10TSTACKNODE**)*(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll);
	label$31:;
}

void* STACKGETTOS( struct $6TSTACK* STK$1 )
{
	void* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$34:;
	if( *(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll) != (struct $10TSTACKNODE*)0ull ) goto label$37;
	{
		fb$result$1 = (void*)0ull;
		goto label$35;
	}
	goto label$36;
	label$37:;
	{
		fb$result$1 = (void*)((uint8*)*(int8**)((uint8*)STK$1 + 32ll) + 16ll);
		goto label$35;
	}
	label$36:;
	label$35:;
	return fb$result$1;
}

static int64 HALLOCTB( struct $6TSTACK* STK$1, int64 NODES$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$8:;
	static struct $10TSTACKNODE* NODETB$1;
	static struct $10TSTACKNODE* NODE$1;
	static struct $10TSTACKNODE* PREV$1;
	static struct $8TSTACKTB* TB$1;
	static int64 I$1;
	fb$result$1 = 0ll;
	if( NODES$1 > 1ll ) goto label$11;
	{
		goto label$9;
	}
	label$11:;
	label$10:;
	if( *(int64*)((uint8*)STK$1 + 40ll) == 0ll ) goto label$13;
	{
		void* vr$5 = XCALLOCATE( (int32)(NODES$1 * *(int64*)((uint8*)STK$1 + 24ll)) );
		NODETB$1 = (struct $10TSTACKNODE*)vr$5;
	}
	goto label$12;
	label$13:;
	{
		void* vr$9 = XALLOCATE( (int32)(NODES$1 * *(int64*)((uint8*)STK$1 + 24ll)) );
		NODETB$1 = (struct $10TSTACKNODE*)vr$9;
	}
	label$12:;
	void* vr$10 = XALLOCATE( 24 );
	TB$1 = (struct $8TSTACKTB*)vr$10;
	if( *(struct $8TSTACKTB**)STK$1 != (struct $8TSTACKTB*)0ull ) goto label$15;
	{
		*(struct $8TSTACKTB**)STK$1 = TB$1;
	}
	label$15:;
	label$14:;
	if( *(struct $8TSTACKTB**)((uint8*)STK$1 + 8ll) == (struct $8TSTACKTB*)0ull ) goto label$17;
	{
		*(struct $8TSTACKTB**)*(struct $8TSTACKTB**)((uint8*)STK$1 + 8ll) = TB$1;
	}
	label$17:;
	label$16:;
	*(struct $8TSTACKTB**)((uint8*)STK$1 + 8ll) = TB$1;
	*(struct $8TSTACKTB**)TB$1 = (struct $8TSTACKTB*)0ull;
	*(struct $10TSTACKNODE**)((uint8*)TB$1 + 8ll) = NODETB$1;
	*(int64*)((uint8*)TB$1 + 16ll) = NODES$1;
	*(int64*)((uint8*)STK$1 + 16ll) = *(int64*)((uint8*)STK$1 + 16ll) + NODES$1;
	PREV$1 = *(struct $10TSTACKNODE**)((uint8*)STK$1 + 32ll);
	NODE$1 = NODETB$1;
	if( PREV$1 == (struct $10TSTACKNODE*)0ull ) goto label$19;
	{
		*(struct $10TSTACKNODE**)((uint8*)PREV$1 + 8ll) = NODE$1;
	}
	label$19:;
	label$18:;
	{
		I$1 = 1ll;
		int64 TMP$2$2;
		TMP$2$2 = NODES$1 + -1ll;
		goto label$20;
		label$23:;
		{
			*(struct $10TSTACKNODE**)NODE$1 = PREV$1;
			*(struct $10TSTACKNODE**)((uint8*)NODE$1 + 8ll) = (struct $10TSTACKNODE*)((uint8*)NODE$1 + *(int64*)((uint8*)STK$1 + 24ll));
			PREV$1 = NODE$1;
			NODE$1 = *(struct $10TSTACKNODE**)((uint8*)NODE$1 + 8ll);
		}
		label$21:;
		I$1 = I$1 + 1ll;
		label$20:;
		if( I$1 <= TMP$2$2 ) goto label$23;
		label$22:;
	}
	*(struct $10TSTACKNODE**)NODE$1 = PREV$1;
	*(struct $10TSTACKNODE**)((uint8*)NODE$1 + 8ll) = (struct $10TSTACKNODE*)0ull;
	fb$result$1 = -1ll;
	label$9:;
	return fb$result$1;
}
