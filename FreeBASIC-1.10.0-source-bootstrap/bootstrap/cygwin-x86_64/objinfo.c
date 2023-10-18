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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
struct $9ENTRYINFO {
	uint8* TEXT;
	int64 HAS_PARAM;
};
__FB_STATIC_ASSERT( sizeof( struct $9ENTRYINFO ) == 16 );
struct $16OBJINFOPARSERCTX {
	int64 I;
	FBSTRING FILENAME;
	int64 IS_OLD;
	int64 OLD_SECTION;
};
__FB_STATIC_ASSERT( sizeof( struct $16OBJINFOPARSERCTX ) == 48 );
struct $8ELF32_SH {
	uint32 SH_NAME __attribute__((packed, aligned(1)));
	uint32 SH_TYPE __attribute__((packed, aligned(1)));
	uint32 SH_FLAGS __attribute__((packed, aligned(1)));
	uint32 SH_ADDR __attribute__((packed, aligned(1)));
	uint32 SH_OFFSET __attribute__((packed, aligned(1)));
	uint32 SH_SIZE __attribute__((packed, aligned(1)));
	uint32 SH_LINK __attribute__((packed, aligned(1)));
	uint32 SH_INFO __attribute__((packed, aligned(1)));
	uint32 SH_ADDRALIGN __attribute__((packed, aligned(1)));
	uint32 SH_ENTSIZE __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $8ELF32_SH ) == 40 );
struct $7ELF32_H {
	uint8 E_IDENT[16];
	uint16 E_TYPE __attribute__((packed, aligned(1)));
	uint16 E_MACHINE __attribute__((packed, aligned(1)));
	uint32 E_VERSION __attribute__((packed, aligned(1)));
	uint32 E_ENTRY __attribute__((packed, aligned(1)));
	uint32 E_PHOFF __attribute__((packed, aligned(1)));
	uint32 E_SHOFF __attribute__((packed, aligned(1)));
	uint32 E_FLAGS __attribute__((packed, aligned(1)));
	uint16 E_EHSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_SHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHSTRNDX __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7ELF32_H ) == 52 );
struct $8ELF64_SH {
	uint32 SH_NAME __attribute__((packed, aligned(1)));
	uint32 SH_TYPE __attribute__((packed, aligned(1)));
	uint64 SH_FLAGS __attribute__((packed, aligned(1)));
	uint64 SH_ADDR __attribute__((packed, aligned(1)));
	uint64 SH_OFFSET __attribute__((packed, aligned(1)));
	uint64 SH_SIZE __attribute__((packed, aligned(1)));
	uint32 SH_LINK __attribute__((packed, aligned(1)));
	uint32 SH_INFO __attribute__((packed, aligned(1)));
	uint64 SH_ADDRALIGN __attribute__((packed, aligned(1)));
	uint64 SH_ENTSIZE __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $8ELF64_SH ) == 64 );
struct $7ELF64_H {
	uint8 E_IDENT[16];
	uint16 E_TYPE __attribute__((packed, aligned(1)));
	uint16 E_MACHINE __attribute__((packed, aligned(1)));
	uint32 E_VERSION __attribute__((packed, aligned(1)));
	uint64 E_ENTRY __attribute__((packed, aligned(1)));
	uint64 E_PHOFF __attribute__((packed, aligned(1)));
	uint64 E_SHOFF __attribute__((packed, aligned(1)));
	uint32 E_FLAGS __attribute__((packed, aligned(1)));
	uint16 E_EHSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_PHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHENTSIZE __attribute__((packed, aligned(1)));
	uint16 E_SHNUM __attribute__((packed, aligned(1)));
	uint16 E_SHSTRNDX __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7ELF64_H ) == 64 );
struct $6COFF_H {
	uint16 MAGIC __attribute__((packed, aligned(1)));
	uint16 SECCOUNT __attribute__((packed, aligned(1)));
	uint32 TIMESTAMP __attribute__((packed, aligned(1)));
	uint32 SYMTBOFFSET __attribute__((packed, aligned(1)));
	uint32 SYMCOUNT __attribute__((packed, aligned(1)));
	uint16 OPTHEADSIZE __attribute__((packed, aligned(1)));
	uint16 FLAGS __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $6COFF_H ) == 20 );
struct $7COFF_SH {
	uint8 NAME[8];
	uint32 PADDR __attribute__((packed, aligned(1)));
	uint32 VADDR __attribute__((packed, aligned(1)));
	uint32 SIZE __attribute__((packed, aligned(1)));
	uint32 DATAOFFSET __attribute__((packed, aligned(1)));
	uint32 RELOFFSET __attribute__((packed, aligned(1)));
	uint32 LNOFFSET __attribute__((packed, aligned(1)));
	uint16 RELCOUNT __attribute__((packed, aligned(1)));
	uint16 LNCOUNT __attribute__((packed, aligned(1)));
	uint32 FLAGS __attribute__((packed, aligned(1)));
};
__FB_STATIC_ASSERT( sizeof( struct $7COFF_SH ) == 40 );
struct $14LOAD_COMMAND_H {
	uint32 CMD;
	uint32 CMDSIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $14LOAD_COMMAND_H ) == 8 );
struct $18SEGMENT_COMMAND_32 {
	uint32 CMD;
	uint32 CMDSIZE;
	uint8 SEGNAME[16];
	uint32 VMADDR;
	uint32 VMSIZE;
	uint32 FILEOFF;
	uint32 FILESIZE;
	uint32 MAXPROT;
	uint32 INITPROT;
	uint32 NSECTS;
	uint32 FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $18SEGMENT_COMMAND_32 ) == 56 );
struct $10SECTION_32 {
	uint8 SECTNAME[16];
	uint8 SEGNAME[16];
	uint32 ADDR;
	uint32 SIZE;
	uint32 OFFSET;
	uint32 ALIGN;
	uint32 RELOFF;
	uint32 NRELOC;
	uint32 FLAGS;
	uint32 RESERVED1;
	uint32 RESERVED2;
};
__FB_STATIC_ASSERT( sizeof( struct $10SECTION_32 ) == 68 );
struct $18SEGMENT_COMMAND_64 {
	uint32 CMD;
	uint32 CMDSIZE;
	uint8 SEGNAME[16];
	uint64 VMADDR;
	uint64 VMSIZE;
	uint64 FILEOFF;
	uint64 FILESIZE;
	uint32 MAXPROT;
	uint32 INITPROT;
	uint32 NSECTS;
	uint32 FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $18SEGMENT_COMMAND_64 ) == 72 );
struct $10SECTION_64 {
	uint8 SECTNAME[16];
	uint8 SEGNAME[16];
	uint64 ADDR;
	uint64 SIZE;
	uint32 OFFSET;
	uint32 ALIGN;
	uint32 RELOFF;
	uint32 NRELOC;
	uint32 FLAGS;
	uint32 RESERVED1;
	uint32 RESERVED2;
	uint32 RESERVED3;
};
__FB_STATIC_ASSERT( sizeof( struct $10SECTION_64 ) == 80 );
struct $6MACH_H {
	uint32 MAGIC;
	uint32 CPUTYPE;
	uint32 CPUSUBTYPE;
	uint32 FILETYPE;
	uint32 NCMDS;
	uint32 SIZEOFCMDS;
	uint32 FLAGS;
};
__FB_STATIC_ASSERT( sizeof( struct $6MACH_H ) == 28 );
struct $4AR_H {
	uint8 NAME[16];
	uint8 MODIFYTIME[12];
	uint8 OWNERID[6];
	uint8 GROUPID[6];
	uint8 MODE[8];
	uint8 SIZE[10];
	uint8 MAGIC[2];
};
__FB_STATIC_ASSERT( sizeof( struct $4AR_H ) == 60 );
struct $10DATABUFFER {
	uint8* P;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $10DATABUFFER ) == 16 );
#define fb_D2L( value ) ((int64)__builtin_nearbyint( value ))
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FileGetLargeIOB( int32, int64, void*, uint64, uint64* );
int32 fb_FileFree( void );
int64 fb_FileSize( int32 );
void* malloc( uint64 );
void free( void* );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int64 fb_StrLen( void*, int64 );
double fb_VAL( FBSTRING* );
static void fb_ctor__objinfo( void ) __attribute__(( constructor ));
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void OBJINFOREADLIBFILE( FBSTRING* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int64 FBGETOPTION( int64 );
int64 FBGETCPUFAMILY( void );
int64 FBISHOSTBIGENDIAN( void );
int64 FBTARGETSUPPORTSELF( void );
int64 FBTARGETSUPPORTSCOFF( void );
int64 FBTARGETSUPPORTSMACHO( void );
int64 HFILEEXISTS( uint8* );
static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX*, struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* );
static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H*, int64 );
static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H*, int64, int64 );
static void HLOADFBCTINFFROMELF32_H( int64 );
static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H*, int64 );
static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H*, int64, int64 );
static void HLOADFBCTINFFROMELF64_H( int64 );
static void HLOADFBCTINFFROMCOFF( uint16 );
static int64 HPROCESSMACHOSEGMENT32( struct $14LOAD_COMMAND_H* );
static int64 HPROCESSMACHOSEGMENT64( struct $14LOAD_COMMAND_H* );
static void HLOADFBCTINFFROMMACHO( void );
static uint8* HLOADARSTRING( uint8*, int64 );
static void HLOADOBJFROMAR( void );
static void HLOADFILE( FBSTRING*, struct $10DATABUFFER* );
static void HLOADFBCTINFFROMOBJ( void );
static void HRESETBUFFERS( void );
static void OBJINFOINIT( FBSTRING* );
static uint8* HGETNEXTSTRING( void );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static struct $10DATABUFFER ARDATA$;
static struct $10DATABUFFER OBJDATA$;
static struct $10DATABUFFER FBCTINF$;
static struct $16OBJINFOPARSERCTX PARSER$;
static uint8 FBCTINFNAME$[9] = ".fbctinf";
static uint8 ELFMAGIC$[16] = { (uint8)127u, (uint8)69u, (uint8)76u, (uint8)70u, (uint8)0u, (uint8)1u, (uint8)1u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u };
static uint8 ARMAGIC$[8] = { (uint8)33u, (uint8)60u, (uint8)97u, (uint8)114u, (uint8)99u, (uint8)104u, (uint8)62u, (uint8)10u };
static struct $9ENTRYINFO ENTRIES$[5] = { { (uint8*)"-l", -1ll }, { (uint8*)"-p", -1ll }, { (uint8*)"-mt", 0ll }, { (uint8*)"-gfx", 0ll }, { (uint8*)"-lang", -1ll } };

void OBJINFOREADOBJ( FBSTRING* OBJFILE$1 )
{
	label$295:;
	OBJINFOINIT( OBJFILE$1 );
	HLOADFILE( OBJFILE$1, &OBJDATA$ );
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) != 0ll ) goto label$298;
	{
		goto label$296;
	}
	label$298:;
	label$297:;
	HLOADFBCTINFFROMOBJ(  );
	label$296:;
}

void OBJINFOREADLIBFILE( FBSTRING* LIBFILE$1 )
{
	label$299:;
	OBJINFOINIT( LIBFILE$1 );
	HLOADFILE( LIBFILE$1, &ARDATA$ );
	if( *(int64*)((uint8*)&ARDATA$ + 8ll) != 0ll ) goto label$302;
	{
		goto label$300;
	}
	label$302:;
	label$301:;
	HLOADOBJFROMAR(  );
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) != 0ll ) goto label$304;
	{
		goto label$300;
	}
	label$304:;
	label$303:;
	HLOADFBCTINFFROMOBJ(  );
	label$300:;
}

void OBJINFOREADLIB( FBSTRING* LIBNAME$1, struct $5TLIST* LIBPATHS$1 )
{
	FBSTRING TMP$55$1;
	FBSTRING TMP$56$1;
	label$305:;
	static FBSTRING LIBFILE$1;
	static FBSTRING FILENAME$1;
	struct $11TSTRSETITEM* PATH$1;
	__builtin_memset( &TMP$55$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$55$1, (void*)"lib", 4ll, (void*)LIBNAME$1, -1ll );
	__builtin_memset( &TMP$56$1, 0, 24ll );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$56$1, (void*)vr$2, -1ll, (void*)".a", 3ll );
	fb_StrAssign( (void*)&FILENAME$1, -1ll, (void*)vr$5, -1ll, 0 );
	void* vr$6 = LISTGETHEAD( LIBPATHS$1 );
	PATH$1 = (struct $11TSTRSETITEM*)vr$6;
	label$307:;
	if( PATH$1 == (struct $11TSTRSETITEM*)0ull ) goto label$308;
	{
		FBSTRING TMP$57$2;
		FBSTRING TMP$58$2;
		__builtin_memset( &TMP$57$2, 0, 24ll );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$57$2, (void*)PATH$1, -1ll, (void*)"/", 2ll );
		__builtin_memset( &TMP$58$2, 0, 24ll );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$58$2, (void*)vr$11, -1ll, (void*)&FILENAME$1, -1ll );
		fb_StrAssign( (void*)&LIBFILE$1, -1ll, (void*)vr$14, -1ll, 0 );
		int64 vr$15 = HFILEEXISTS( (uint8*)*(uint8**)&LIBFILE$1 );
		if( vr$15 == 0ll ) goto label$310;
		{
			goto label$308;
		}
		label$310:;
		label$309:;
		void* vr$16 = LISTGETNEXT( (void*)PATH$1 );
		PATH$1 = (struct $11TSTRSETITEM*)vr$16;
	}
	goto label$307;
	label$308:;
	if( PATH$1 != (struct $11TSTRSETITEM*)0ull ) goto label$312;
	{
		goto label$306;
	}
	label$312:;
	label$311:;
	OBJINFOREADLIBFILE( &LIBFILE$1 );
	label$306:;
}

int64 OBJINFOREADNEXT( FBSTRING* DAT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$319:;
	if( *(int64*)((uint8*)&FBCTINF$ + 8ll) > 0ll ) goto label$322;
	{
		fb$result$1 = -1ll;
		goto label$320;
	}
	label$322:;
	label$321:;
	if( *(int64*)((uint8*)&PARSER$ + 32ll) == 0ll ) goto label$324;
	{
		label$325:;
		if( *(int64*)&PARSER$ >= *(int64*)((uint8*)&FBCTINF$ + 8ll) ) goto label$326;
		{
			if( *(int64*)((uint8*)&PARSER$ + 40ll) >= 0ll ) goto label$328;
			{
				*(int64*)((uint8*)&PARSER$ + 40ll) = (int64)*(uint8*)(*(uint8**)&FBCTINF$ + *(int64*)&PARSER$);
				*(int64*)&PARSER$ = *(int64*)&PARSER$ + 1ll;
				if( ((int64)-(*(int64*)((uint8*)&PARSER$ + 40ll) <= 0ll) | (int64)-(*(int64*)((uint8*)&PARSER$ + 40ll) > 3ll)) == 0ll ) goto label$330;
				{
					*(int64*)((uint8*)&PARSER$ + 40ll) = -1ll;
					*(int64*)&PARSER$ = *(int64*)((uint8*)&FBCTINF$ + 8ll);
					fb$result$1 = -1ll;
					goto label$320;
				}
				label$330:;
				label$329:;
			}
			label$328:;
			label$327:;
			if( *(int64*)&PARSER$ < *(int64*)((uint8*)&FBCTINF$ + 8ll) ) goto label$332;
			{
				fb$result$1 = -1ll;
				goto label$320;
			}
			label$332:;
			label$331:;
			*(int64*)&PARSER$ = *(int64*)&PARSER$ + 1ll;
			if( (int64)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int64*)&PARSER$) + -1ll) != 0ll ) goto label$334;
			{
				*(int64*)((uint8*)&PARSER$ + 40ll) = -1ll;
				goto label$325;
			}
			label$334:;
			label$333:;
			uint8* vr$10 = HGETNEXTSTRING(  );
			fb_StrAssign( (void*)DAT$1, -1ll, (void*)vr$10, 0ll, 0 );
			{
				int64 TMP$59$4;
				TMP$59$4 = *(int64*)((uint8*)&PARSER$ + 40ll);
				if( TMP$59$4 != 1ll ) goto label$336;
				label$337:;
				{
					fb$result$1 = 0ll;
					goto label$320;
				}
				goto label$335;
				label$336:;
				if( TMP$59$4 != 2ll ) goto label$338;
				label$339:;
				{
					fb$result$1 = 1ll;
					goto label$320;
				}
				goto label$335;
				label$338:;
				if( TMP$59$4 != 3ll ) goto label$340;
				label$341:;
				{
					{
						FBSTRING TMP$60$6;
						fb_StrInit( (void*)&TMP$60$6, -1ll, (void*)DAT$1, -1ll, 0 );
						int32 vr$13 = fb_StrCompare( (void*)&TMP$60$6, -1ll, (void*)"-lang", 6ll );
						if( (int64)vr$13 != 0ll ) goto label$343;
						label$344:;
						{
							uint8* vr$15 = HGETNEXTSTRING(  );
							fb_StrAssign( (void*)DAT$1, -1ll, (void*)vr$15, 0ll, 0 );
							int64 vr$16 = fb_StrLen( (void*)DAT$1, -1ll );
							if( vr$16 <= 0ll ) goto label$346;
							{
								fb$result$1 = 4ll;
								fb_StrDelete( (FBSTRING*)&TMP$60$6 );
								goto label$320;
							}
							label$346:;
							label$345:;
						}
						goto label$342;
						label$343:;
						int32 vr$19 = fb_StrCompare( (void*)&TMP$60$6, -1ll, (void*)"-mt", 4ll );
						if( (int64)vr$19 != 0ll ) goto label$347;
						label$348:;
						{
							fb$result$1 = 2ll;
							fb_StrDelete( (FBSTRING*)&TMP$60$6 );
							goto label$320;
						}
						label$347:;
						label$342:;
						fb_StrDelete( (FBSTRING*)&TMP$60$6 );
					}
				}
				label$340:;
				label$335:;
			}
		}
		goto label$325;
		label$326:;
	}
	goto label$323;
	label$324:;
	{
		uint8* vr$23 = HGETNEXTSTRING(  );
		fb_StrAssign( (void*)DAT$1, -1ll, (void*)vr$23, 0ll, 0 );
		{
			int64 I$3;
			I$3 = 0ll;
			label$352:;
			{
				int32 vr$25 = fb_StrCompare( (void*)DAT$1, -1ll, *(void**)((int64)(struct $9ENTRYINFO*)ENTRIES$ + (I$3 << (4ll & 63ll))), 0ll );
				if( (int64)vr$25 != 0ll ) goto label$354;
				{
					if( *(int64*)(((int64)(struct $9ENTRYINFO*)ENTRIES$ + (I$3 << (4ll & 63ll))) + 8ll) == 0ll ) goto label$356;
					{
						uint8* vr$28 = HGETNEXTSTRING(  );
						fb_StrAssign( (void*)DAT$1, -1ll, (void*)vr$28, 0ll, 0 );
					}
					goto label$355;
					label$356:;
					{
					}
					label$355:;
					fb$result$1 = I$3;
					goto label$320;
				}
				label$354:;
				label$353:;
			}
			label$350:;
			I$3 = I$3 + 1ll;
			label$349:;
			if( I$3 <= 4ll ) goto label$352;
			label$351:;
		}
	}
	label$323:;
	fb$result$1 = -1ll;
	label$320:;
	return fb$result$1;
}

uint8* OBJINFOGETFILENAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$357:;
	fb$result$1 = (uint8*)*(uint8**)((uint8*)&PARSER$ + 8ll);
	label$358:;
	return fb$result$1;
}

void OBJINFOREADEND( void )
{
	label$359:;
	if( *(uint8**)&ARDATA$ == (uint8*)0ull ) goto label$362;
	{
		free( *(void**)&ARDATA$ );
	}
	goto label$361;
	label$362:;
	if( *(uint8**)&OBJDATA$ == (uint8*)0ull ) goto label$363;
	{
		free( *(void**)&OBJDATA$ );
	}
	label$363:;
	label$361:;
	HRESETBUFFERS(  );
	label$360:;
}

uint8* OBJINFOENCODE( int64 ENTRY$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$364:;
	fb$result$1 = *(uint8**)((int64)(struct $9ENTRYINFO*)ENTRIES$ + (ENTRY$1 << (4ll & 63ll)));
	label$365:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__objinfo( void )
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

static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	__builtin_memset( (int64*)THIS$1, 0, 8ll );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8ll), 0, 24ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 32ll), 0, 8ll );
	__builtin_memset( (int64*)((uint8*)THIS$1 + 40ll), 0, 8ll );
	label$10:;
	label$11:;
}

static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX* THIS$1, struct $16OBJINFOPARSERCTX* __FB_RHS__$1 )
{
	label$12:;
	*(int64*)THIS$1 = *(int64*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8ll), -1ll, (void*)((uint8*)__FB_RHS__$1 + 8ll), -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 32ll) = *(int64*)((uint8*)__FB_RHS__$1 + 32ll);
	*(int64*)((uint8*)THIS$1 + 40ll) = *(int64*)((uint8*)__FB_RHS__$1 + 40ll);
	label$13:;
}

static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8ll) );
}

static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H* H$1, int64 INDEX$1 )
{
	struct $8ELF32_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$18:;
	struct $8ELF32_SH* SH$1;
	int64 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int64)*(uint32*)((uint8*)H$1 + 32ll) + (INDEX$1 * 40ll);
	if( ((uint64)HEADEROFFSET$1 + 40ull) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$21;
	{
		goto label$19;
	}
	label$21:;
	label$20:;
	SH$1 = (struct $8ELF32_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( ((uint64)*(uint32*)((uint8*)SH$1 + 16ll) + (uint64)(int64)*(uint32*)((uint8*)SH$1 + 20ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$23;
	{
		goto label$19;
	}
	label$23:;
	label$22:;
	fb$result$1 = SH$1;
	label$19:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H* H$1, int64 INDEX$1, int64 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF32_SH* SH$1;
	int64 I$1;
	int64 J$1;
	int64 CH$1;
	struct $8ELF32_SH* vr$1 = HCHECKELF32_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF32_SH*)0ull ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	I$1 = NAMETB$1 + (int64)*(uint32*)SH$1;
	J$1 = 0ll;
	label$28:;
	if( ((int64)-(I$1 < *(int64*)((uint8*)&OBJDATA$ + 8ll)) & (int64)-(J$1 < 32ll)) == 0ll ) goto label$29;
	{
		CH$1 = (int64)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0ll ) goto label$31;
		{
			goto label$29;
		}
		label$31:;
		label$30:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1ll;
		J$1 = J$1 + 1ll;
	}
	goto label$28;
	label$29:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$25:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF32_H( int64 ELF_MACHINE$1 )
{
	label$32:;
	struct $7ELF32_H* H$1;
	struct $8ELF32_SH* SH$1;
	struct $8ELF32_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0ull;
	*(int64*)((uint8*)&FBCTINF$ + 8ll) = 0ll;
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) >= 52ll ) goto label$35;
	{
		goto label$33;
	}
	label$35:;
	label$34:;
	H$1 = *(struct $7ELF32_H**)&OBJDATA$;
	*(uint8*)((int64)(uint8*)ELFMAGIC$ + 4ll) = (uint8)1u;
	int64 vr$0 = FBISHOSTBIGENDIAN(  );
	if( vr$0 == 0ll ) goto label$37;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 5ll) = (uint8)2u;
	}
	goto label$36;
	label$37:;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 5ll) = (uint8)1u;
	}
	label$36:;
	int64 vr$1 = FBGETOPTION( 3ll );
	if( vr$1 != 5ll ) goto label$39;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 7ll) = (uint8)9u;
	}
	goto label$38;
	label$39:;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 7ll) = (uint8)0u;
	}
	label$38:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$43:;
		{
			if( (int64)*(uint8*)((uint8*)H$1 + I$2) == (int64)*(uint8*)((int64)(uint8*)ELFMAGIC$ + I$2) ) goto label$45;
			{
				goto label$33;
			}
			label$45:;
			label$44:;
		}
		label$41:;
		I$2 = I$2 + 1ll;
		label$40:;
		if( I$2 <= 15ll ) goto label$43;
		label$42:;
	}
	if( (int64)*(uint16*)((uint8*)H$1 + 40ll) == 52ll ) goto label$47;
	{
		goto label$33;
	}
	label$47:;
	label$46:;
	if( (int64)*(uint16*)((uint8*)H$1 + 16ll) == 1ll ) goto label$49;
	{
		goto label$33;
	}
	label$49:;
	label$48:;
	if( (int64)*(uint16*)((uint8*)H$1 + 18ll) == ELF_MACHINE$1 ) goto label$51;
	{
		goto label$33;
	}
	label$51:;
	label$50:;
	if( (int64)*(uint16*)((uint8*)H$1 + 46ll) == 40ll ) goto label$53;
	{
		goto label$33;
	}
	label$53:;
	label$52:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 48ll) * 40ull) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$55;
	{
		goto label$33;
	}
	label$55:;
	label$54:;
	if( ((int64)-((int64)*(uint16*)((uint8*)H$1 + 50ll) < 0ll) | (int64)-((int64)*(uint16*)((uint8*)H$1 + 50ll) >= (int64)*(uint16*)((uint8*)H$1 + 48ll))) == 0ll ) goto label$57;
	{
		goto label$33;
	}
	label$57:;
	label$56:;
	if( ((uint64)*(uint32*)((uint8*)H$1 + 32ll) + (uint64)((int64)*(uint16*)((uint8*)H$1 + 48ll) * 40ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$59;
	{
		goto label$33;
	}
	label$59:;
	label$58:;
	struct $8ELF32_SH* vr$34 = HCHECKELF32_SH( H$1, (int64)*(uint16*)((uint8*)H$1 + 50ll) );
	NAMETB$1 = vr$34;
	if( NAMETB$1 != (struct $8ELF32_SH*)0ull ) goto label$61;
	{
		goto label$33;
	}
	label$61:;
	label$60:;
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$24$2;
		TMP$24$2 = (int64)*(uint16*)((uint8*)H$1 + 48ll) + -1ll;
		goto label$62;
		label$65:;
		{
			uint8* vr$40 = HGETSECTIONNAMEELF32_SH( H$1, I$2, (int64)*(uint32*)((uint8*)NAMETB$1 + 16ll) );
			SECTIONNAME$1 = vr$40;
			if( SECTIONNAME$1 == (uint8*)0ull ) goto label$67;
			{
				int32 vr$41 = fb_StrCompare( (void*)SECTIONNAME$1, 0ll, (void*)FBCTINFNAME$, 9ll );
				if( (int64)vr$41 != 0ll ) goto label$69;
				{
					struct $8ELF32_SH* vr$43 = HCHECKELF32_SH( H$1, I$2 );
					SH$1 = vr$43;
					if( SH$1 == (struct $8ELF32_SH*)0ull ) goto label$71;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int64)*(uint32*)((uint8*)SH$1 + 16ll));
						*(int64*)((uint8*)&FBCTINF$ + 8ll) = (int64)*(uint32*)((uint8*)SH$1 + 20ll);
						goto label$64;
					}
					label$71:;
					label$70:;
				}
				label$69:;
				label$68:;
			}
			label$67:;
			label$66:;
		}
		label$63:;
		I$2 = I$2 + 1ll;
		label$62:;
		if( I$2 <= TMP$24$2 ) goto label$65;
		label$64:;
	}
	label$33:;
}

static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H* H$1, int64 INDEX$1 )
{
	struct $8ELF64_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$72:;
	struct $8ELF64_SH* SH$1;
	int64 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int64)(*(uint64*)((uint8*)H$1 + 40ll) + (uint64)(INDEX$1 << (6ll & 63ll)));
	if( ((uint64)HEADEROFFSET$1 + 64ull) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$75;
	{
		goto label$73;
	}
	label$75:;
	label$74:;
	SH$1 = (struct $8ELF64_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( (*(uint64*)((uint8*)SH$1 + 24ll) + *(uint64*)((uint8*)SH$1 + 32ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$77;
	{
		goto label$73;
	}
	label$77:;
	label$76:;
	fb$result$1 = SH$1;
	label$73:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H* H$1, int64 INDEX$1, int64 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$78:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF64_SH* SH$1;
	int64 I$1;
	int64 J$1;
	int64 CH$1;
	struct $8ELF64_SH* vr$1 = HCHECKELF64_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF64_SH*)0ull ) goto label$81;
	{
		goto label$79;
	}
	label$81:;
	label$80:;
	I$1 = NAMETB$1 + (int64)*(uint32*)SH$1;
	J$1 = 0ll;
	label$82:;
	if( ((int64)-(I$1 < *(int64*)((uint8*)&OBJDATA$ + 8ll)) & (int64)-(J$1 < 32ll)) == 0ll ) goto label$83;
	{
		CH$1 = (int64)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0ll ) goto label$85;
		{
			goto label$83;
		}
		label$85:;
		label$84:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1ll;
		J$1 = J$1 + 1ll;
	}
	goto label$82;
	label$83:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$79:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF64_H( int64 ELF_MACHINE$1 )
{
	label$86:;
	struct $7ELF64_H* H$1;
	struct $8ELF64_SH* SH$1;
	struct $8ELF64_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0ull;
	*(int64*)((uint8*)&FBCTINF$ + 8ll) = 0ll;
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) >= 64ll ) goto label$89;
	{
		goto label$87;
	}
	label$89:;
	label$88:;
	H$1 = *(struct $7ELF64_H**)&OBJDATA$;
	*(uint8*)((int64)(uint8*)ELFMAGIC$ + 4ll) = (uint8)2u;
	int64 vr$0 = FBISHOSTBIGENDIAN(  );
	if( vr$0 == 0ll ) goto label$91;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 5ll) = (uint8)2u;
	}
	goto label$90;
	label$91:;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 5ll) = (uint8)1u;
	}
	label$90:;
	int64 vr$1 = FBGETOPTION( 3ll );
	if( vr$1 != 5ll ) goto label$93;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 7ll) = (uint8)9u;
	}
	goto label$92;
	label$93:;
	{
		*(uint8*)((int64)(uint8*)ELFMAGIC$ + 7ll) = (uint8)0u;
	}
	label$92:;
	{
		int64 I$2;
		I$2 = 0ll;
		label$97:;
		{
			if( (int64)*(uint8*)((uint8*)H$1 + I$2) == (int64)*(uint8*)((int64)(uint8*)ELFMAGIC$ + I$2) ) goto label$99;
			{
				goto label$87;
			}
			label$99:;
			label$98:;
		}
		label$95:;
		I$2 = I$2 + 1ll;
		label$94:;
		if( I$2 <= 15ll ) goto label$97;
		label$96:;
	}
	if( (int64)*(uint16*)((uint8*)H$1 + 52ll) == 64ll ) goto label$101;
	{
		goto label$87;
	}
	label$101:;
	label$100:;
	if( (int64)*(uint16*)((uint8*)H$1 + 16ll) == 1ll ) goto label$103;
	{
		goto label$87;
	}
	label$103:;
	label$102:;
	if( (int64)*(uint16*)((uint8*)H$1 + 18ll) == ELF_MACHINE$1 ) goto label$105;
	{
		goto label$87;
	}
	label$105:;
	label$104:;
	if( (int64)*(uint16*)((uint8*)H$1 + 58ll) == 64ll ) goto label$107;
	{
		goto label$87;
	}
	label$107:;
	label$106:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 60ll) << (6ull & 63ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$109;
	{
		goto label$87;
	}
	label$109:;
	label$108:;
	if( ((int64)-((int64)*(uint16*)((uint8*)H$1 + 62ll) < 0ll) | (int64)-((int64)*(uint16*)((uint8*)H$1 + 62ll) >= (int64)*(uint16*)((uint8*)H$1 + 60ll))) == 0ll ) goto label$111;
	{
		goto label$87;
	}
	label$111:;
	label$110:;
	if( (*(uint64*)((uint8*)H$1 + 40ll) + (uint64)((int64)*(uint16*)((uint8*)H$1 + 60ll) << (6ll & 63ll))) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$113;
	{
		goto label$87;
	}
	label$113:;
	label$112:;
	struct $8ELF64_SH* vr$33 = HCHECKELF64_SH( H$1, (int64)*(uint16*)((uint8*)H$1 + 62ll) );
	NAMETB$1 = vr$33;
	if( NAMETB$1 != (struct $8ELF64_SH*)0ull ) goto label$115;
	{
		goto label$87;
	}
	label$115:;
	label$114:;
	{
		int64 I$2;
		I$2 = 1ll;
		int64 TMP$25$2;
		TMP$25$2 = (int64)*(uint16*)((uint8*)H$1 + 60ll) + -1ll;
		goto label$116;
		label$119:;
		{
			uint8* vr$38 = HGETSECTIONNAMEELF64_SH( H$1, I$2, *(int64*)((uint8*)NAMETB$1 + 24ll) );
			SECTIONNAME$1 = vr$38;
			if( SECTIONNAME$1 == (uint8*)0ull ) goto label$121;
			{
				int32 vr$39 = fb_StrCompare( (void*)SECTIONNAME$1, 0ll, (void*)FBCTINFNAME$, 9ll );
				if( (int64)vr$39 != 0ll ) goto label$123;
				{
					struct $8ELF64_SH* vr$41 = HCHECKELF64_SH( H$1, I$2 );
					SH$1 = vr$41;
					if( SH$1 == (struct $8ELF64_SH*)0ull ) goto label$125;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)SH$1 + 24ll));
						*(int64*)((uint8*)&FBCTINF$ + 8ll) = *(int64*)((uint8*)SH$1 + 32ll);
						goto label$118;
					}
					label$125:;
					label$124:;
				}
				label$123:;
				label$122:;
			}
			label$121:;
			label$120:;
		}
		label$117:;
		I$2 = I$2 + 1ll;
		label$116:;
		if( I$2 <= TMP$25$2 ) goto label$119;
		label$118:;
	}
	label$87:;
}

static void HLOADFBCTINFFROMCOFF( uint16 MAGIC$1 )
{
	label$126:;
	struct $6COFF_H* H$1;
	struct $7COFF_SH* SH$1;
	struct $7COFF_SH* SHBASE$1;
	*(uint8**)&FBCTINF$ = (uint8*)0ull;
	*(int64*)((uint8*)&FBCTINF$ + 8ll) = 0ll;
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) >= 20ll ) goto label$129;
	{
		goto label$127;
	}
	label$129:;
	label$128:;
	H$1 = *(struct $6COFF_H**)&OBJDATA$;
	if( (int64)*(uint16*)H$1 == (int64)MAGIC$1 ) goto label$131;
	{
		goto label$127;
	}
	label$131:;
	label$130:;
	if( (int64)*(uint16*)((uint8*)H$1 + 16ll) == 0ll ) goto label$133;
	{
		goto label$127;
	}
	label$133:;
	label$132:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 2ll) * 40ull) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$135;
	{
		goto label$127;
	}
	label$135:;
	label$134:;
	SHBASE$1 = (struct $7COFF_SH*)((uint8*)H$1 + 20ll);
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$26$2;
		TMP$26$2 = (int64)*(uint16*)((uint8*)H$1 + 2ll) + -1ll;
		goto label$136;
		label$139:;
		{
			SH$1 = (struct $7COFF_SH*)((uint8*)SHBASE$1 + (I$2 * 40ll));
			{
				int64 J$4;
				J$4 = 0ll;
				label$143:;
				{
					if( (int64)*(uint8*)((uint8*)SH$1 + J$4) == (int64)*(uint8*)((uint8*)FBCTINFNAME$ + J$4) ) goto label$145;
					{
						goto label$137;
					}
					label$145:;
					label$144:;
				}
				label$141:;
				J$4 = J$4 + 1ll;
				label$140:;
				if( J$4 <= 7ll ) goto label$143;
				label$142:;
			}
			if( ((uint64)*(uint32*)((uint8*)SH$1 + 20ll) + (uint64)(int64)*(uint32*)((uint8*)SH$1 + 16ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$147;
			{
				goto label$127;
			}
			label$147:;
			label$146:;
			*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int64)*(uint32*)((uint8*)SH$1 + 20ll));
			*(int64*)((uint8*)&FBCTINF$ + 8ll) = (int64)*(uint32*)((uint8*)SH$1 + 16ll);
			goto label$138;
		}
		label$137:;
		I$2 = I$2 + 1ll;
		label$136:;
		if( I$2 <= TMP$26$2 ) goto label$139;
		label$138:;
	}
	label$127:;
}

static int64 HPROCESSMACHOSEGMENT32( struct $14LOAD_COMMAND_H* LOADCMD$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$148:;
	struct $18SEGMENT_COMMAND_32* SEGMENTP$1;
	__builtin_memset( &SEGMENTP$1, 0, 8ll );
	struct $10SECTION_32* SECTIONP$1;
	__builtin_memset( &SECTIONP$1, 0, 8ll );
	SEGMENTP$1 = (struct $18SEGMENT_COMMAND_32*)LOADCMD$1;
	if( (uint64)(struct $18SEGMENT_COMMAND_32*)((uint8*)SEGMENTP$1 + 56ll) <= (uint64)(uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)&OBJDATA$ + 8ll)) ) goto label$151;
	{
		fb$result$1 = 1ll;
		goto label$149;
	}
	label$151:;
	label$150:;
	SECTIONP$1 = (struct $10SECTION_32*)((uint8*)SEGMENTP$1 + 56ll);
	{
		int64 SECTIONIDX$2;
		SECTIONIDX$2 = 0ll;
		int64 TMP$27$2;
		TMP$27$2 = (int64)*(uint32*)((uint8*)SEGMENTP$1 + 48ll) + -1ll;
		goto label$152;
		label$155:;
		{
			if( (uint64)(struct $10SECTION_32*)((uint8*)SECTIONP$1 + 68ll) <= (uint64)(uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)&OBJDATA$ + 8ll)) ) goto label$157;
			{
				fb$result$1 = 1ll;
				goto label$149;
			}
			label$157:;
			label$156:;
			int32 vr$13 = fb_StrCompare( (void*)SECTIONP$1, 16ll, (void*)"fbctinf", 8ll );
			if( (int64)vr$13 != 0ll ) goto label$159;
			{
				if( ((int64)*(uint32*)((uint8*)SECTIONP$1 + 40ll) + (int64)*(uint32*)((uint8*)SECTIONP$1 + 36ll)) <= *(int64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$161;
				{
					fb$result$1 = 1ll;
					goto label$149;
				}
				label$161:;
				label$160:;
				*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int64)*(uint32*)((uint8*)SECTIONP$1 + 40ll));
				*(int64*)((uint8*)&FBCTINF$ + 8ll) = (int64)*(uint32*)((uint8*)SECTIONP$1 + 36ll);
				goto label$154;
			}
			label$159:;
			label$158:;
			SECTIONP$1 = (struct $10SECTION_32*)((uint8*)SECTIONP$1 + 68ll);
		}
		label$153:;
		SECTIONIDX$2 = SECTIONIDX$2 + 1ll;
		label$152:;
		if( SECTIONIDX$2 <= TMP$27$2 ) goto label$155;
		label$154:;
	}
	label$149:;
	return fb$result$1;
}

static int64 HPROCESSMACHOSEGMENT64( struct $14LOAD_COMMAND_H* LOADCMD$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$162:;
	struct $18SEGMENT_COMMAND_64* SEGMENTP$1;
	__builtin_memset( &SEGMENTP$1, 0, 8ll );
	struct $10SECTION_64* SECTIONP$1;
	__builtin_memset( &SECTIONP$1, 0, 8ll );
	SEGMENTP$1 = (struct $18SEGMENT_COMMAND_64*)LOADCMD$1;
	if( (uint64)(struct $18SEGMENT_COMMAND_64*)((uint8*)SEGMENTP$1 + 72ll) <= (uint64)(uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)&OBJDATA$ + 8ll)) ) goto label$165;
	{
		fb$result$1 = 1ll;
		goto label$163;
	}
	label$165:;
	label$164:;
	SECTIONP$1 = (struct $10SECTION_64*)((uint8*)SEGMENTP$1 + 72ll);
	{
		int64 SECTIONIDX$2;
		SECTIONIDX$2 = 0ll;
		int64 TMP$28$2;
		TMP$28$2 = (int64)*(uint32*)((uint8*)SEGMENTP$1 + 64ll) + -1ll;
		goto label$166;
		label$169:;
		{
			if( (uint64)(struct $10SECTION_64*)((uint8*)SECTIONP$1 + 80ll) <= (uint64)(uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)&OBJDATA$ + 8ll)) ) goto label$171;
			{
				fb$result$1 = 1ll;
				goto label$163;
			}
			label$171:;
			label$170:;
			int32 vr$13 = fb_StrCompare( (void*)SECTIONP$1, 16ll, (void*)"fbctinf", 8ll );
			if( (int64)vr$13 != 0ll ) goto label$173;
			{
				if( ((uint64)(int64)*(uint32*)((uint8*)SECTIONP$1 + 48ll) + *(uint64*)((uint8*)SECTIONP$1 + 40ll)) <= *(uint64*)((uint8*)&OBJDATA$ + 8ll) ) goto label$175;
				{
					fb$result$1 = 1ll;
					goto label$163;
				}
				label$175:;
				label$174:;
				*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int64)*(uint32*)((uint8*)SECTIONP$1 + 48ll));
				*(int64*)((uint8*)&FBCTINF$ + 8ll) = *(int64*)((uint8*)SECTIONP$1 + 40ll);
				goto label$168;
			}
			label$173:;
			label$172:;
			SECTIONP$1 = (struct $10SECTION_64*)((uint8*)SECTIONP$1 + 80ll);
		}
		label$167:;
		SECTIONIDX$2 = SECTIONIDX$2 + 1ll;
		label$166:;
		if( SECTIONIDX$2 <= TMP$28$2 ) goto label$169;
		label$168:;
	}
	label$163:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMMACHO( void )
{
	label$176:;
	struct $6MACH_H* HEADER$1;
	struct $14LOAD_COMMAND_H* LOADCMD$1;
	uint8* DATAPTR$1;
	*(uint8**)&FBCTINF$ = (uint8*)0ull;
	*(int64*)((uint8*)&FBCTINF$ + 8ll) = 0ll;
	if( *(int64*)((uint8*)&OBJDATA$ + 8ll) >= 28ll ) goto label$179;
	{
		goto label$177;
	}
	label$179:;
	label$178:;
	HEADER$1 = *(struct $6MACH_H**)&OBJDATA$;
	if( ((int64)-((int64)*(uint32*)HEADER$1 != 4277009102ll) & (int64)-((int64)*(uint32*)HEADER$1 != 4277009103ll)) == 0ll ) goto label$181;
	{
		goto label$177;
	}
	label$181:;
	label$180:;
	{
		int64 TMP$29$2;
		int64 vr$7 = FBGETCPUFAMILY(  );
		TMP$29$2 = vr$7;
		if( TMP$29$2 != 0ll ) goto label$183;
		label$184:;
		{
			if( (int64)*(uint32*)((uint8*)HEADER$1 + 4ll) == 7ll ) goto label$186;
			{
				goto label$177;
			}
			label$186:;
			label$185:;
		}
		goto label$182;
		label$183:;
		if( TMP$29$2 != 1ll ) goto label$187;
		label$188:;
		{
			if( (int64)*(uint32*)((uint8*)HEADER$1 + 4ll) == 16777223ll ) goto label$190;
			{
				goto label$177;
			}
			label$190:;
			label$189:;
		}
		goto label$182;
		label$187:;
		if( TMP$29$2 != 2ll ) goto label$191;
		label$192:;
		{
			if( (int64)*(uint32*)((uint8*)HEADER$1 + 4ll) == 12ll ) goto label$194;
			{
				goto label$177;
			}
			label$194:;
			label$193:;
		}
		goto label$182;
		label$191:;
		if( TMP$29$2 != 3ll ) goto label$195;
		label$196:;
		{
			if( (int64)*(uint32*)((uint8*)HEADER$1 + 4ll) == 16777228ll ) goto label$198;
			{
				goto label$177;
			}
			label$198:;
			label$197:;
		}
		label$195:;
		label$182:;
	}
	if( (int64)*(uint32*)((uint8*)HEADER$1 + 12ll) == 1ll ) goto label$200;
	{
		goto label$177;
	}
	label$200:;
	label$199:;
	DATAPTR$1 = (uint8*)(*(uint8**)&OBJDATA$ + 28ll);
	if( (int64)*(uint32*)HEADER$1 != 4277009103ll ) goto label$202;
	{
		DATAPTR$1 = (uint8*)(DATAPTR$1 + 4ll);
	}
	label$202:;
	label$201:;
	{
		int64 CMDIDX$2;
		CMDIDX$2 = 0ll;
		int64 TMP$30$2;
		TMP$30$2 = (int64)*(uint32*)((uint8*)HEADER$1 + 16ll) + -1ll;
		goto label$203;
		label$206:;
		{
			LOADCMD$1 = (struct $14LOAD_COMMAND_H*)DATAPTR$1;
			if( (uint64)(struct $14LOAD_COMMAND_H*)((uint8*)LOADCMD$1 + 8ll) <= (uint64)(uint8*)(*(uint8**)&OBJDATA$ + *(int64*)((uint8*)&OBJDATA$ + 8ll)) ) goto label$208;
			{
				goto label$177;
			}
			label$208:;
			label$207:;
			if( (int64)*(uint32*)LOADCMD$1 != 1ll ) goto label$210;
			{
				int64 vr$29 = HPROCESSMACHOSEGMENT32( LOADCMD$1 );
				if( vr$29 == 0ll ) goto label$212;
				{
					goto label$177;
				}
				label$212:;
				label$211:;
			}
			goto label$209;
			label$210:;
			if( (int64)*(uint32*)LOADCMD$1 != 25ll ) goto label$213;
			{
				int64 vr$32 = HPROCESSMACHOSEGMENT64( LOADCMD$1 );
				if( vr$32 == 0ll ) goto label$215;
				{
					goto label$177;
				}
				label$215:;
				label$214:;
			}
			label$213:;
			label$209:;
			DATAPTR$1 = (uint8*)(DATAPTR$1 + (int64)*(uint32*)((uint8*)LOADCMD$1 + 4ll));
		}
		label$204:;
		CMDIDX$2 = CMDIDX$2 + 1ll;
		label$203:;
		if( CMDIDX$2 <= TMP$30$2 ) goto label$206;
		label$205:;
	}
	label$177:;
}

static uint8* HLOADARSTRING( uint8* P$1, int64 LENGTH$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$216:;
	static uint8 S$1[17];
	int64 LAST$1;
	int64 I$1;
	LAST$1 = LENGTH$1 + -1ll;
	label$218:;
	if( LAST$1 < 0ll ) goto label$219;
	{
		if( (uint64)(int64)*(uint8*)(P$1 + LAST$1) == 32ull ) goto label$221;
		{
			goto label$219;
		}
		label$221:;
		label$220:;
		LAST$1 = LAST$1 + -1ll;
	}
	goto label$218;
	label$219:;
	I$1 = 0ll;
	label$222:;
	if( I$1 > LAST$1 ) goto label$223;
	{
		*(uint8*)((uint8*)S$1 + I$1) = *(uint8*)(P$1 + I$1);
		I$1 = I$1 + 1ll;
	}
	goto label$222;
	label$223:;
	*(uint8*)((uint8*)S$1 + I$1) = (uint8)0u;
	fb$result$1 = (uint8*)S$1;
	label$217:;
	return fb$result$1;
}

static void HLOADOBJFROMAR( void )
{
	label$224:;
	struct $4AR_H* H$1;
	FBSTRING FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 24ll );
	int64 I$1;
	int64 FILESIZE$1;
	*(uint8**)&OBJDATA$ = (uint8*)0ull;
	*(int64*)((uint8*)&OBJDATA$ + 8ll) = 0ll;
	if( *(int64*)((uint8*)&ARDATA$ + 8ll) >= 8ll ) goto label$227;
	{
		fb_StrDelete( (FBSTRING*)&FILENAME$1 );
		goto label$225;
	}
	label$227:;
	label$226:;
	{
		I$1 = 0ll;
		label$231:;
		{
			if( (int64)*(uint8*)(*(uint8**)&ARDATA$ + I$1) == (int64)*(uint8*)((int64)(uint8*)ARMAGIC$ + I$1) ) goto label$233;
			{
				fb_StrDelete( (FBSTRING*)&FILENAME$1 );
				goto label$225;
			}
			label$233:;
			label$232:;
		}
		label$229:;
		I$1 = I$1 + 1ll;
		label$228:;
		if( I$1 <= 7ll ) goto label$231;
		label$230:;
	}
	I$1 = 8ll;
	label$234:;
	{
		if( (I$1 + 60ll) <= *(int64*)((uint8*)&ARDATA$ + 8ll) ) goto label$238;
		{
			fb_StrDelete( (FBSTRING*)&FILENAME$1 );
			goto label$225;
		}
		label$238:;
		label$237:;
		H$1 = (struct $4AR_H*)((uint8*)*(void**)&ARDATA$ + I$1);
		uint8* vr$12 = HLOADARSTRING( (uint8*)H$1, 16ll );
		fb_StrAssign( (void*)&FILENAME$1, -1ll, (void*)vr$12, 0ll, 0 );
		uint8* vr$16 = HLOADARSTRING( (uint8*)((uint8*)H$1 + 48ll), 10ll );
		FBSTRING* vr$17 = fb_StrAllocTempDescZ( (uint8*)vr$16 );
		double vr$18 = fb_VAL( (FBSTRING*)vr$17 );
		FILESIZE$1 = fb_D2L( vr$18 );
		if( FILESIZE$1 >= 0ll ) goto label$240;
		{
			FILESIZE$1 = 0ll;
		}
		goto label$239;
		label$240:;
		if( ((int64)-(FILESIZE$1 > *(int64*)((uint8*)&ARDATA$ + 8ll)) | (int64)-(FILESIZE$1 > (*(int64*)((uint8*)&ARDATA$ + 8ll) - I$1))) == 0ll ) goto label$241;
		{
			FILESIZE$1 = *(int64*)((uint8*)&ARDATA$ + 8ll) - I$1;
		}
		label$241:;
		label$239:;
		I$1 = I$1 + 60ll;
		{
			int32 vr$27 = fb_StrCompare( (void*)&FILENAME$1, -1ll, (void*)"__fb_ct.inf", 12ll );
			if( (int64)vr$27 == 0ll ) goto label$244;
			label$245:;
			int32 vr$30 = fb_StrCompare( (void*)&FILENAME$1, -1ll, (void*)"__fb_ct.inf/", 13ll );
			if( (int64)vr$30 != 0ll ) goto label$243;
			label$244:;
			{
				if( FILESIZE$1 <= 0ll ) goto label$247;
				{
					*(uint8**)&OBJDATA$ = (uint8*)((uint8*)*(void**)&ARDATA$ + I$1);
					*(int64*)((uint8*)&OBJDATA$ + 8ll) = FILESIZE$1;
				}
				label$247:;
				label$246:;
				goto label$235;
			}
			goto label$242;
			label$243:;
			int32 vr$34 = fb_StrCompare( (void*)&FILENAME$1, -1ll, (void*)"/", 2ll );
			if( (int64)vr$34 == 0ll ) goto label$249;
			label$250:;
			int32 vr$37 = fb_StrCompare( (void*)&FILENAME$1, -1ll, (void*)"//", 3ll );
			if( (int64)vr$37 == 0ll ) goto label$249;
			label$251:;
			int32 vr$40 = fb_StrCompare( (void*)&FILENAME$1, -1ll, (void*)"__.SYMDEF", 10ll );
			if( (int64)vr$40 != 0ll ) goto label$248;
			label$249:;
			{
			}
			goto label$242;
			label$248:;
			{
				goto label$235;
			}
			label$252:;
			label$242:;
		}
		I$1 = I$1 + FILESIZE$1;
		I$1 = I$1 + (I$1 & 1ll);
	}
	label$236:;
	goto label$234;
	label$235:;
	fb_StrDelete( (FBSTRING*)&FILENAME$1 );
	label$225:;
}

static void HLOADFILE( FBSTRING* FILENAME$1, struct $10DATABUFFER* BUF$1 )
{
	label$253:;
	int64 F$1;
	int64 SIZE$1;
	uint8* P$1;
	*(uint8**)BUF$1 = (uint8*)0ull;
	*(int64*)((uint8*)BUF$1 + 8ll) = 0ll;
	int32 vr$2 = fb_FileFree(  );
	F$1 = (int64)vr$2;
	int32 vr$5 = fb_FileOpen( (FBSTRING*)FILENAME$1, 0u, 1u, 0u, (int32)F$1, 0 );
	if( (int64)vr$5 == 0ll ) goto label$256;
	{
		goto label$254;
	}
	label$256:;
	label$255:;
	int64 vr$8 = fb_FileSize( (int32)F$1 );
	SIZE$1 = vr$8;
	if( SIZE$1 <= 0ll ) goto label$258;
	{
		void* vr$9 = malloc( (uint64)SIZE$1 );
		P$1 = (uint8*)vr$9;
		int32 vr$12 = fb_FileGetLargeIOB( (int32)F$1, 0ll, (void*)P$1, (uint64)SIZE$1, (uint64*)&SIZE$1 );
		if( (int64)vr$12 == 0ll ) goto label$260;
		{
			goto label$254;
		}
		label$260:;
		label$259:;
		*(uint8**)BUF$1 = P$1;
		*(int64*)((uint8*)BUF$1 + 8ll) = SIZE$1;
	}
	label$258:;
	label$257:;
	int32 vr$17 = fb_FileClose( (int32)F$1 );
	if( (int64)vr$17 == 0ll ) goto label$261;
	void* vr$19 = fb_ErrorThrowAt( 860, (uint8*)"src/compiler/objinfo.bas", (void*)0ull, (void*)0ull );
	goto *vr$19;
	label$261:;
	label$254:;
}

static void HLOADFBCTINFFROMOBJ( void )
{
	label$262:;
	int64 vr$0 = FBTARGETSUPPORTSCOFF(  );
	if( vr$0 == 0ll ) goto label$265;
	{
		{
			int64 TMP$45$3;
			int64 vr$1 = FBGETCPUFAMILY(  );
			TMP$45$3 = vr$1;
			if( TMP$45$3 != 1ll ) goto label$267;
			label$268:;
			{
				HLOADFBCTINFFROMCOFF( (uint16)34404u );
			}
			goto label$266;
			label$267:;
			if( TMP$45$3 != 0ll ) goto label$269;
			label$270:;
			{
				HLOADFBCTINFFROMCOFF( (uint16)332u );
			}
			label$269:;
			label$266:;
		}
	}
	goto label$264;
	label$265:;
	int64 vr$2 = FBTARGETSUPPORTSELF(  );
	if( vr$2 == 0ll ) goto label$271;
	{
		{
			int64 TMP$46$3;
			int64 vr$3 = FBGETCPUFAMILY(  );
			TMP$46$3 = vr$3;
			if( TMP$46$3 != 1ll ) goto label$273;
			label$274:;
			{
				HLOADFBCTINFFROMELF64_H( 62ll );
			}
			goto label$272;
			label$273:;
			if( TMP$46$3 != 0ll ) goto label$275;
			label$276:;
			{
				HLOADFBCTINFFROMELF32_H( 3ll );
			}
			goto label$272;
			label$275:;
			if( TMP$46$3 != 3ll ) goto label$277;
			label$278:;
			{
				HLOADFBCTINFFROMELF64_H( 183ll );
			}
			goto label$272;
			label$277:;
			if( TMP$46$3 != 2ll ) goto label$279;
			label$280:;
			{
				HLOADFBCTINFFROMELF32_H( 40ll );
			}
			goto label$272;
			label$279:;
			if( TMP$46$3 == 5ll ) goto label$282;
			label$283:;
			if( TMP$46$3 != 6ll ) goto label$281;
			label$282:;
			{
				HLOADFBCTINFFROMELF64_H( 21ll );
			}
			goto label$272;
			label$281:;
			if( TMP$46$3 != 4ll ) goto label$284;
			label$285:;
			{
				HLOADFBCTINFFROMELF32_H( 20ll );
			}
			label$284:;
			label$272:;
		}
	}
	goto label$264;
	label$271:;
	int64 vr$4 = FBTARGETSUPPORTSMACHO(  );
	if( vr$4 == 0ll ) goto label$286;
	{
		HLOADFBCTINFFROMMACHO(  );
	}
	label$286:;
	label$264:;
	if( *(int64*)((uint8*)&FBCTINF$ + 8ll) != 0ll ) goto label$288;
	{
		goto label$263;
	}
	label$288:;
	label$287:;
	if( (int64)*(*(uint8**)&FBCTINF$) != 16ll ) goto label$290;
	{
		*(int64*)((uint8*)&PARSER$ + 32ll) = -1ll;
		*(int64*)&PARSER$ = 1ll;
	}
	goto label$289;
	label$290:;
	{
		*(int64*)((uint8*)&PARSER$ + 32ll) = 0ll;
	}
	label$289:;
	label$263:;
}

static void HRESETBUFFERS( void )
{
	label$291:;
	*(uint8**)&ARDATA$ = (uint8*)0ull;
	*(int64*)((uint8*)&ARDATA$ + 8ll) = 0ll;
	*(uint8**)&OBJDATA$ = (uint8*)0ull;
	*(int64*)((uint8*)&OBJDATA$ + 8ll) = 0ll;
	*(uint8**)&FBCTINF$ = (uint8*)0ull;
	*(int64*)((uint8*)&FBCTINF$ + 8ll) = 0ll;
	label$292:;
}

static void OBJINFOINIT( FBSTRING* FILENAME$1 )
{
	label$293:;
	HRESETBUFFERS(  );
	*(int64*)&PARSER$ = 0ll;
	fb_StrAssign( (void*)((uint8*)&PARSER$ + 8ll), -1ll, (void*)FILENAME$1, -1ll, 0 );
	*(int64*)((uint8*)&PARSER$ + 32ll) = 0ll;
	*(int64*)((uint8*)&PARSER$ + 40ll) = -1ll;
	label$294:;
}

static uint8* HGETNEXTSTRING( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$313:;
	int64 BEGIN$1;
	fb$result$1 = (uint8*)"";
	BEGIN$1 = *(int64*)&PARSER$;
	label$315:;
	if( *(int64*)&PARSER$ >= *(int64*)((uint8*)&FBCTINF$ + 8ll) ) goto label$316;
	{
		*(int64*)&PARSER$ = *(int64*)&PARSER$ + 1ll;
		if( (int64)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int64*)&PARSER$) + -1ll) != 0ll ) goto label$318;
		{
			fb$result$1 = (uint8*)(*(uint8**)&FBCTINF$ + BEGIN$1);
			goto label$314;
		}
		label$318:;
		label$317:;
	}
	goto label$315;
	label$316:;
	label$314:;
	return fb$result$1;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$367:;
	_ZN16OBJINFOPARSERCTXC1Ev( &PARSER$ );
	label$368:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$370:;
	_ZN16OBJINFOPARSERCTXD1Ev( &PARSER$ );
	label$371:;
}
