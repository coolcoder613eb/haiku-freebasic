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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
struct $9ENTRYINFO {
	uint8* TEXT;
	int32 HAS_PARAM;
};
__FB_STATIC_ASSERT( sizeof( struct $9ENTRYINFO ) == 8 );
struct $16OBJINFOPARSERCTX {
	int32 I;
	FBSTRING FILENAME;
	int32 IS_OLD;
	int32 OLD_SECTION;
};
__FB_STATIC_ASSERT( sizeof( struct $16OBJINFOPARSERCTX ) == 24 );
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
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $10DATABUFFER ) == 8 );
#define fb_D2I( value ) ((int32)__builtin_nearbyint( value ))
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileClose( int32 );
int32 fb_FileGetIOB( int32, int32, void*, uint32, uint32* );
int32 fb_FileFree( void );
int64 fb_FileSize( int32 );
void* malloc( uint32 );
void free( void* );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
double fb_VAL( FBSTRING* );
static void fb_ctor__objinfo( void ) __attribute__(( constructor ));
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void OBJINFOREADLIBFILE( FBSTRING* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBGETOPTION( int32 );
int32 FBGETCPUFAMILY( void );
int32 FBISHOSTBIGENDIAN( void );
int32 FBTARGETSUPPORTSELF( void );
int32 FBTARGETSUPPORTSCOFF( void );
int32 FBTARGETSUPPORTSMACHO( void );
int32 HFILEEXISTS( uint8* );
static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX*, struct $16OBJINFOPARSERCTX* );
static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* );
static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H*, int32 );
static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H*, int32, int32 );
static void HLOADFBCTINFFROMELF32_H( int32 );
static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H*, int32 );
static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H*, int32, int32 );
static void HLOADFBCTINFFROMELF64_H( int32 );
static void HLOADFBCTINFFROMCOFF( uint16 );
static int32 HPROCESSMACHOSEGMENT32( struct $14LOAD_COMMAND_H* );
static int32 HPROCESSMACHOSEGMENT64( struct $14LOAD_COMMAND_H* );
static void HLOADFBCTINFFROMMACHO( void );
static uint8* HLOADARSTRING( uint8*, int32 );
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
static struct $9ENTRYINFO ENTRIES$[5] = { { (uint8*)"-l", -1 }, { (uint8*)"-p", -1 }, { (uint8*)"-mt", 0 }, { (uint8*)"-gfx", 0 }, { (uint8*)"-lang", -1 } };

void OBJINFOREADOBJ( FBSTRING* OBJFILE$1 )
{
	label$295:;
	OBJINFOINIT( OBJFILE$1 );
	HLOADFILE( OBJFILE$1, &OBJDATA$ );
	if( *(int32*)((uint8*)&OBJDATA$ + 4) != 0 ) goto label$298;
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
	if( *(int32*)((uint8*)&ARDATA$ + 4) != 0 ) goto label$302;
	{
		goto label$300;
	}
	label$302:;
	label$301:;
	HLOADOBJFROMAR(  );
	if( *(int32*)((uint8*)&OBJDATA$ + 4) != 0 ) goto label$304;
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
	FBSTRING TMP$54$1;
	FBSTRING TMP$55$1;
	label$305:;
	static FBSTRING LIBFILE$1;
	static FBSTRING FILENAME$1;
	struct $11TSTRSETITEM* PATH$1;
	__builtin_memset( &TMP$54$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$54$1, (void*)"lib", 4, (void*)LIBNAME$1, -1 );
	__builtin_memset( &TMP$55$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$55$1, (void*)vr$2, -1, (void*)".a", 3 );
	fb_StrAssign( (void*)&FILENAME$1, -1, (void*)vr$5, -1, 0 );
	void* vr$6 = LISTGETHEAD( LIBPATHS$1 );
	PATH$1 = (struct $11TSTRSETITEM*)vr$6;
	label$307:;
	if( PATH$1 == (struct $11TSTRSETITEM*)0u ) goto label$308;
	{
		FBSTRING TMP$56$2;
		FBSTRING TMP$57$2;
		__builtin_memset( &TMP$56$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$56$2, (void*)PATH$1, -1, (void*)"/", 2 );
		__builtin_memset( &TMP$57$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$57$2, (void*)vr$11, -1, (void*)&FILENAME$1, -1 );
		fb_StrAssign( (void*)&LIBFILE$1, -1, (void*)vr$14, -1, 0 );
		int32 vr$15 = HFILEEXISTS( (uint8*)*(uint8**)&LIBFILE$1 );
		if( vr$15 == 0 ) goto label$310;
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
	if( PATH$1 != (struct $11TSTRSETITEM*)0u ) goto label$312;
	{
		goto label$306;
	}
	label$312:;
	label$311:;
	OBJINFOREADLIBFILE( &LIBFILE$1 );
	label$306:;
}

int32 OBJINFOREADNEXT( FBSTRING* DAT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$319:;
	if( *(int32*)((uint8*)&FBCTINF$ + 4) > 0 ) goto label$322;
	{
		fb$result$1 = -1;
		goto label$320;
	}
	label$322:;
	label$321:;
	if( *(int32*)((uint8*)&PARSER$ + 16) == 0 ) goto label$324;
	{
		label$325:;
		if( *(int32*)&PARSER$ >= *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$326;
		{
			if( *(int32*)((uint8*)&PARSER$ + 20) >= 0 ) goto label$328;
			{
				*(int32*)((uint8*)&PARSER$ + 20) = (int32)*(uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$);
				*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
				if( (-(*(int32*)((uint8*)&PARSER$ + 20) <= 0) | -(*(int32*)((uint8*)&PARSER$ + 20) > 3)) == 0 ) goto label$330;
				{
					*(int32*)((uint8*)&PARSER$ + 20) = -1;
					*(int32*)&PARSER$ = *(int32*)((uint8*)&FBCTINF$ + 4);
					fb$result$1 = -1;
					goto label$320;
				}
				label$330:;
				label$329:;
			}
			label$328:;
			label$327:;
			if( *(int32*)&PARSER$ < *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$332;
			{
				fb$result$1 = -1;
				goto label$320;
			}
			label$332:;
			label$331:;
			*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
			if( (int32)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$) + -1) != 0 ) goto label$334;
			{
				*(int32*)((uint8*)&PARSER$ + 20) = -1;
				goto label$325;
			}
			label$334:;
			label$333:;
			uint8* vr$10 = HGETNEXTSTRING(  );
			fb_StrAssign( (void*)DAT$1, -1, (void*)vr$10, 0, 0 );
			{
				int32 TMP$58$4;
				TMP$58$4 = *(int32*)((uint8*)&PARSER$ + 20);
				if( TMP$58$4 != 1 ) goto label$336;
				label$337:;
				{
					fb$result$1 = 0;
					goto label$320;
				}
				goto label$335;
				label$336:;
				if( TMP$58$4 != 2 ) goto label$338;
				label$339:;
				{
					fb$result$1 = 1;
					goto label$320;
				}
				goto label$335;
				label$338:;
				if( TMP$58$4 != 3 ) goto label$340;
				label$341:;
				{
					{
						FBSTRING TMP$59$6;
						fb_StrInit( (void*)&TMP$59$6, -1, (void*)DAT$1, -1, 0 );
						int32 vr$13 = fb_StrCompare( (void*)&TMP$59$6, -1, (void*)"-lang", 6 );
						if( vr$13 != 0 ) goto label$343;
						label$344:;
						{
							uint8* vr$14 = HGETNEXTSTRING(  );
							fb_StrAssign( (void*)DAT$1, -1, (void*)vr$14, 0, 0 );
							int32 vr$15 = fb_StrLen( (void*)DAT$1, -1 );
							if( vr$15 <= 0 ) goto label$346;
							{
								fb$result$1 = 4;
								fb_StrDelete( (FBSTRING*)&TMP$59$6 );
								goto label$320;
							}
							label$346:;
							label$345:;
						}
						goto label$342;
						label$343:;
						int32 vr$18 = fb_StrCompare( (void*)&TMP$59$6, -1, (void*)"-mt", 4 );
						if( vr$18 != 0 ) goto label$347;
						label$348:;
						{
							fb$result$1 = 2;
							fb_StrDelete( (FBSTRING*)&TMP$59$6 );
							goto label$320;
						}
						label$347:;
						label$342:;
						fb_StrDelete( (FBSTRING*)&TMP$59$6 );
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
		uint8* vr$21 = HGETNEXTSTRING(  );
		fb_StrAssign( (void*)DAT$1, -1, (void*)vr$21, 0, 0 );
		{
			int32 I$3;
			I$3 = 0;
			label$352:;
			{
				int32 vr$23 = fb_StrCompare( (void*)DAT$1, -1, *(void**)((int32)(struct $9ENTRYINFO*)ENTRIES$ + (I$3 << (3 & 31))), 0 );
				if( vr$23 != 0 ) goto label$354;
				{
					if( *(int32*)(((int32)(struct $9ENTRYINFO*)ENTRIES$ + (I$3 << (3 & 31))) + 4) == 0 ) goto label$356;
					{
						uint8* vr$25 = HGETNEXTSTRING(  );
						fb_StrAssign( (void*)DAT$1, -1, (void*)vr$25, 0, 0 );
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
			I$3 = I$3 + 1;
			label$349:;
			if( I$3 <= 4 ) goto label$352;
			label$351:;
		}
	}
	label$323:;
	fb$result$1 = -1;
	label$320:;
	return fb$result$1;
}

uint8* OBJINFOGETFILENAME( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$357:;
	fb$result$1 = (uint8*)*(uint8**)((uint8*)&PARSER$ + 4);
	label$358:;
	return fb$result$1;
}

void OBJINFOREADEND( void )
{
	label$359:;
	if( *(uint8**)&ARDATA$ == (uint8*)0u ) goto label$362;
	{
		free( *(void**)&ARDATA$ );
	}
	goto label$361;
	label$362:;
	if( *(uint8**)&OBJDATA$ == (uint8*)0u ) goto label$363;
	{
		free( *(void**)&OBJDATA$ );
	}
	label$363:;
	label$361:;
	HRESETBUFFERS(  );
	label$360:;
}

uint8* OBJINFOENCODE( int32 ENTRY$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$364:;
	fb$result$1 = *(uint8**)((int32)(struct $9ENTRYINFO*)ENTRIES$ + (ENTRY$1 << (3 & 31)));
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
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void _ZN16OBJINFOPARSERCTXC1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 4), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 16), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 20), 0, 4 );
	label$10:;
	label$11:;
}

static void _ZN16OBJINFOPARSERCTXaSERKS_( struct $16OBJINFOPARSERCTX* THIS$1, struct $16OBJINFOPARSERCTX* __FB_RHS__$1 )
{
	label$12:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	fb_StrAssign( (void*)((uint8*)THIS$1 + 4), -1, (void*)((uint8*)__FB_RHS__$1 + 4), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 16) = *(int32*)((uint8*)__FB_RHS__$1 + 16);
	*(int32*)((uint8*)THIS$1 + 20) = *(int32*)((uint8*)__FB_RHS__$1 + 20);
	label$13:;
}

static void _ZN16OBJINFOPARSERCTXD1Ev( struct $16OBJINFOPARSERCTX* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 4) );
}

static struct $8ELF32_SH* HCHECKELF32_SH( struct $7ELF32_H* H$1, int32 INDEX$1 )
{
	struct $8ELF32_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	struct $8ELF32_SH* SH$1;
	int32 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int32)(*(uint32*)((uint8*)H$1 + 32) + (uint32)(INDEX$1 * 40));
	if( ((uint64)HEADEROFFSET$1 + 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$21;
	{
		goto label$19;
	}
	label$21:;
	label$20:;
	SH$1 = (struct $8ELF32_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( ((uint64)*(uint32*)((uint8*)SH$1 + 16) + (uint64)*(uint32*)((uint8*)SH$1 + 20)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$23;
	{
		goto label$19;
	}
	label$23:;
	label$22:;
	fb$result$1 = SH$1;
	label$19:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF32_SH( struct $7ELF32_H* H$1, int32 INDEX$1, int32 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF32_SH* SH$1;
	int32 I$1;
	int32 J$1;
	int32 CH$1;
	struct $8ELF32_SH* vr$1 = HCHECKELF32_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF32_SH*)0u ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	I$1 = (int32)((uint32)NAMETB$1 + *(uint32*)SH$1);
	J$1 = 0;
	label$28:;
	if( (-(I$1 < *(int32*)((uint8*)&OBJDATA$ + 4)) & -(J$1 < 32)) == 0 ) goto label$29;
	{
		CH$1 = (int32)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0 ) goto label$31;
		{
			goto label$29;
		}
		label$31:;
		label$30:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1;
		J$1 = J$1 + 1;
	}
	goto label$28;
	label$29:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$25:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF32_H( int32 ELF_MACHINE$1 )
{
	label$32:;
	struct $7ELF32_H* H$1;
	struct $8ELF32_SH* SH$1;
	struct $8ELF32_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 52 ) goto label$35;
	{
		goto label$33;
	}
	label$35:;
	label$34:;
	H$1 = *(struct $7ELF32_H**)&OBJDATA$;
	*(uint8*)((int32)(uint8*)ELFMAGIC$ + 4) = (uint8)1u;
	int32 vr$0 = FBISHOSTBIGENDIAN(  );
	if( vr$0 == 0 ) goto label$37;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 5) = (uint8)2u;
	}
	goto label$36;
	label$37:;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 5) = (uint8)1u;
	}
	label$36:;
	int32 vr$1 = FBGETOPTION( 3 );
	if( vr$1 != 5 ) goto label$39;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 7) = (uint8)9u;
	}
	goto label$38;
	label$39:;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 7) = (uint8)0u;
	}
	label$38:;
	{
		int32 I$2;
		I$2 = 0;
		label$43:;
		{
			if( (int32)*(uint8*)((uint8*)H$1 + I$2) == (int32)*(uint8*)((int32)(uint8*)ELFMAGIC$ + I$2) ) goto label$45;
			{
				goto label$33;
			}
			label$45:;
			label$44:;
		}
		label$41:;
		I$2 = I$2 + 1;
		label$40:;
		if( I$2 <= 15 ) goto label$43;
		label$42:;
	}
	if( (int32)*(uint16*)((uint8*)H$1 + 40) == 52 ) goto label$47;
	{
		goto label$33;
	}
	label$47:;
	label$46:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 1 ) goto label$49;
	{
		goto label$33;
	}
	label$49:;
	label$48:;
	if( (int32)*(uint16*)((uint8*)H$1 + 18) == ELF_MACHINE$1 ) goto label$51;
	{
		goto label$33;
	}
	label$51:;
	label$50:;
	if( (int32)*(uint16*)((uint8*)H$1 + 46) == 40 ) goto label$53;
	{
		goto label$33;
	}
	label$53:;
	label$52:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 48) * 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$55;
	{
		goto label$33;
	}
	label$55:;
	label$54:;
	if( (-((int32)*(uint16*)((uint8*)H$1 + 50) < 0) | -((int32)*(uint16*)((uint8*)H$1 + 50) >= (int32)*(uint16*)((uint8*)H$1 + 48))) == 0 ) goto label$57;
	{
		goto label$33;
	}
	label$57:;
	label$56:;
	if( ((uint64)*(uint32*)((uint8*)H$1 + 32) + (uint64)((int32)*(uint16*)((uint8*)H$1 + 48) * 40)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$59;
	{
		goto label$33;
	}
	label$59:;
	label$58:;
	struct $8ELF32_SH* vr$37 = HCHECKELF32_SH( H$1, (int32)*(uint16*)((uint8*)H$1 + 50) );
	NAMETB$1 = vr$37;
	if( NAMETB$1 != (struct $8ELF32_SH*)0u ) goto label$61;
	{
		goto label$33;
	}
	label$61:;
	label$60:;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$23$2;
		TMP$23$2 = (int32)*(uint16*)((uint8*)H$1 + 48) + -1;
		goto label$62;
		label$65:;
		{
			uint8* vr$42 = HGETSECTIONNAMEELF32_SH( H$1, I$2, *(int32*)((uint8*)NAMETB$1 + 16) );
			SECTIONNAME$1 = vr$42;
			if( SECTIONNAME$1 == (uint8*)0u ) goto label$67;
			{
				int32 vr$43 = fb_StrCompare( (void*)SECTIONNAME$1, 0, (void*)FBCTINFNAME$, 9 );
				if( vr$43 != 0 ) goto label$69;
				{
					struct $8ELF32_SH* vr$44 = HCHECKELF32_SH( H$1, I$2 );
					SH$1 = vr$44;
					if( SH$1 == (struct $8ELF32_SH*)0u ) goto label$71;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SH$1 + 16));
						*(int32*)((uint8*)&FBCTINF$ + 4) = *(int32*)((uint8*)SH$1 + 20);
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
		I$2 = I$2 + 1;
		label$62:;
		if( I$2 <= TMP$23$2 ) goto label$65;
		label$64:;
	}
	label$33:;
}

static struct $8ELF64_SH* HCHECKELF64_SH( struct $7ELF64_H* H$1, int32 INDEX$1 )
{
	struct $8ELF64_SH* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	struct $8ELF64_SH* SH$1;
	int32 HEADEROFFSET$1;
	HEADEROFFSET$1 = (int32)(*(uint64*)((uint8*)H$1 + 40) + (uint64)(INDEX$1 << (6 & 31)));
	if( ((uint64)HEADEROFFSET$1 + 64ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$75;
	{
		goto label$73;
	}
	label$75:;
	label$74:;
	SH$1 = (struct $8ELF64_SH*)((uint8*)*(void**)&OBJDATA$ + HEADEROFFSET$1);
	if( (*(uint64*)((uint8*)SH$1 + 24) + *(uint64*)((uint8*)SH$1 + 32)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$77;
	{
		goto label$73;
	}
	label$77:;
	label$76:;
	fb$result$1 = SH$1;
	label$73:;
	return fb$result$1;
}

static uint8* HGETSECTIONNAMEELF64_SH( struct $7ELF64_H* H$1, int32 INDEX$1, int32 NAMETB$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$78:;
	static uint8 SECTIONNAME$1[33];
	struct $8ELF64_SH* SH$1;
	int32 I$1;
	int32 J$1;
	int32 CH$1;
	struct $8ELF64_SH* vr$1 = HCHECKELF64_SH( H$1, INDEX$1 );
	SH$1 = vr$1;
	if( SH$1 != (struct $8ELF64_SH*)0u ) goto label$81;
	{
		goto label$79;
	}
	label$81:;
	label$80:;
	I$1 = (int32)((uint32)NAMETB$1 + *(uint32*)SH$1);
	J$1 = 0;
	label$82:;
	if( (-(I$1 < *(int32*)((uint8*)&OBJDATA$ + 4)) & -(J$1 < 32)) == 0 ) goto label$83;
	{
		CH$1 = (int32)*(uint8*)(*(uint8**)&OBJDATA$ + I$1);
		if( CH$1 != 0 ) goto label$85;
		{
			goto label$83;
		}
		label$85:;
		label$84:;
		*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)CH$1;
		I$1 = I$1 + 1;
		J$1 = J$1 + 1;
	}
	goto label$82;
	label$83:;
	*(uint8*)((uint8*)SECTIONNAME$1 + J$1) = (uint8)0u;
	fb$result$1 = (uint8*)SECTIONNAME$1;
	label$79:;
	return fb$result$1;
}

static void HLOADFBCTINFFROMELF64_H( int32 ELF_MACHINE$1 )
{
	label$86:;
	struct $7ELF64_H* H$1;
	struct $8ELF64_SH* SH$1;
	struct $8ELF64_SH* NAMETB$1;
	uint8* SECTIONNAME$1;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 64 ) goto label$89;
	{
		goto label$87;
	}
	label$89:;
	label$88:;
	H$1 = *(struct $7ELF64_H**)&OBJDATA$;
	*(uint8*)((int32)(uint8*)ELFMAGIC$ + 4) = (uint8)2u;
	int32 vr$0 = FBISHOSTBIGENDIAN(  );
	if( vr$0 == 0 ) goto label$91;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 5) = (uint8)2u;
	}
	goto label$90;
	label$91:;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 5) = (uint8)1u;
	}
	label$90:;
	int32 vr$1 = FBGETOPTION( 3 );
	if( vr$1 != 5 ) goto label$93;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 7) = (uint8)9u;
	}
	goto label$92;
	label$93:;
	{
		*(uint8*)((int32)(uint8*)ELFMAGIC$ + 7) = (uint8)0u;
	}
	label$92:;
	{
		int32 I$2;
		I$2 = 0;
		label$97:;
		{
			if( (int32)*(uint8*)((uint8*)H$1 + I$2) == (int32)*(uint8*)((int32)(uint8*)ELFMAGIC$ + I$2) ) goto label$99;
			{
				goto label$87;
			}
			label$99:;
			label$98:;
		}
		label$95:;
		I$2 = I$2 + 1;
		label$94:;
		if( I$2 <= 15 ) goto label$97;
		label$96:;
	}
	if( (int32)*(uint16*)((uint8*)H$1 + 52) == 64 ) goto label$101;
	{
		goto label$87;
	}
	label$101:;
	label$100:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 1 ) goto label$103;
	{
		goto label$87;
	}
	label$103:;
	label$102:;
	if( (int32)*(uint16*)((uint8*)H$1 + 18) == ELF_MACHINE$1 ) goto label$105;
	{
		goto label$87;
	}
	label$105:;
	label$104:;
	if( (int32)*(uint16*)((uint8*)H$1 + 58) == 64 ) goto label$107;
	{
		goto label$87;
	}
	label$107:;
	label$106:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 60) << (6ull & 63)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$109;
	{
		goto label$87;
	}
	label$109:;
	label$108:;
	if( (-((int32)*(uint16*)((uint8*)H$1 + 62) < 0) | -((int32)*(uint16*)((uint8*)H$1 + 62) >= (int32)*(uint16*)((uint8*)H$1 + 60))) == 0 ) goto label$111;
	{
		goto label$87;
	}
	label$111:;
	label$110:;
	if( (*(uint64*)((uint8*)H$1 + 40) + (uint64)((int32)*(uint16*)((uint8*)H$1 + 60) << (6 & 31))) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$113;
	{
		goto label$87;
	}
	label$113:;
	label$112:;
	struct $8ELF64_SH* vr$36 = HCHECKELF64_SH( H$1, (int32)*(uint16*)((uint8*)H$1 + 62) );
	NAMETB$1 = vr$36;
	if( NAMETB$1 != (struct $8ELF64_SH*)0u ) goto label$115;
	{
		goto label$87;
	}
	label$115:;
	label$114:;
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$24$2;
		TMP$24$2 = (int32)*(uint16*)((uint8*)H$1 + 60) + -1;
		goto label$116;
		label$119:;
		{
			uint8* vr$42 = HGETSECTIONNAMEELF64_SH( H$1, I$2, (int32)*(uint64*)((uint8*)NAMETB$1 + 24) );
			SECTIONNAME$1 = vr$42;
			if( SECTIONNAME$1 == (uint8*)0u ) goto label$121;
			{
				int32 vr$43 = fb_StrCompare( (void*)SECTIONNAME$1, 0, (void*)FBCTINFNAME$, 9 );
				if( vr$43 != 0 ) goto label$123;
				{
					struct $8ELF64_SH* vr$44 = HCHECKELF64_SH( H$1, I$2 );
					SH$1 = vr$44;
					if( SH$1 == (struct $8ELF64_SH*)0u ) goto label$125;
					{
						*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + (int32)*(uint64*)((uint8*)SH$1 + 24));
						*(int32*)((uint8*)&FBCTINF$ + 4) = (int32)*(uint64*)((uint8*)SH$1 + 32);
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
		I$2 = I$2 + 1;
		label$116:;
		if( I$2 <= TMP$24$2 ) goto label$119;
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
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 20 ) goto label$129;
	{
		goto label$127;
	}
	label$129:;
	label$128:;
	H$1 = *(struct $6COFF_H**)&OBJDATA$;
	if( (int32)*(uint16*)H$1 == (int32)MAGIC$1 ) goto label$131;
	{
		goto label$127;
	}
	label$131:;
	label$130:;
	if( (int32)*(uint16*)((uint8*)H$1 + 16) == 0 ) goto label$133;
	{
		goto label$127;
	}
	label$133:;
	label$132:;
	if( ((uint64)*(uint16*)((uint8*)H$1 + 2) * 40ull) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$135;
	{
		goto label$127;
	}
	label$135:;
	label$134:;
	SHBASE$1 = (struct $7COFF_SH*)((uint8*)H$1 + 20);
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$25$2;
		TMP$25$2 = (int32)*(uint16*)((uint8*)H$1 + 2) + -1;
		goto label$136;
		label$139:;
		{
			SH$1 = (struct $7COFF_SH*)((uint8*)SHBASE$1 + (I$2 * 40));
			{
				int32 J$4;
				J$4 = 0;
				label$143:;
				{
					if( (int32)*(uint8*)((uint8*)SH$1 + J$4) == (int32)*(uint8*)((uint8*)FBCTINFNAME$ + J$4) ) goto label$145;
					{
						goto label$137;
					}
					label$145:;
					label$144:;
				}
				label$141:;
				J$4 = J$4 + 1;
				label$140:;
				if( J$4 <= 7 ) goto label$143;
				label$142:;
			}
			if( ((uint64)*(uint32*)((uint8*)SH$1 + 20) + (uint64)*(uint32*)((uint8*)SH$1 + 16)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$147;
			{
				goto label$127;
			}
			label$147:;
			label$146:;
			*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SH$1 + 20));
			*(int32*)((uint8*)&FBCTINF$ + 4) = *(int32*)((uint8*)SH$1 + 16);
			goto label$138;
		}
		label$137:;
		I$2 = I$2 + 1;
		label$136:;
		if( I$2 <= TMP$25$2 ) goto label$139;
		label$138:;
	}
	label$127:;
}

static int32 HPROCESSMACHOSEGMENT32( struct $14LOAD_COMMAND_H* LOADCMD$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$148:;
	struct $18SEGMENT_COMMAND_32* SEGMENTP$1;
	__builtin_memset( &SEGMENTP$1, 0, 4 );
	struct $10SECTION_32* SECTIONP$1;
	__builtin_memset( &SECTIONP$1, 0, 4 );
	SEGMENTP$1 = (struct $18SEGMENT_COMMAND_32*)LOADCMD$1;
	if( (uint32)(struct $18SEGMENT_COMMAND_32*)((uint8*)SEGMENTP$1 + 56) <= (uint32)(uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)&OBJDATA$ + 4)) ) goto label$151;
	{
		fb$result$1 = 1;
		goto label$149;
	}
	label$151:;
	label$150:;
	SECTIONP$1 = (struct $10SECTION_32*)((uint8*)SEGMENTP$1 + 56);
	{
		int32 SECTIONIDX$2;
		SECTIONIDX$2 = 0;
		int32 TMP$26$2;
		TMP$26$2 = (int32)(*(uint32*)((uint8*)SEGMENTP$1 + 48) + 4294967295u);
		goto label$152;
		label$155:;
		{
			if( (uint32)(struct $10SECTION_32*)((uint8*)SECTIONP$1 + 68) <= (uint32)(uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)&OBJDATA$ + 4)) ) goto label$157;
			{
				fb$result$1 = 1;
				goto label$149;
			}
			label$157:;
			label$156:;
			int32 vr$12 = fb_StrCompare( (void*)SECTIONP$1, 16, (void*)"fbctinf", 8 );
			if( vr$12 != 0 ) goto label$159;
			{
				if( (*(uint32*)((uint8*)SECTIONP$1 + 40) + *(uint32*)((uint8*)SECTIONP$1 + 36)) <= *(uint32*)((uint8*)&OBJDATA$ + 4) ) goto label$161;
				{
					fb$result$1 = 1;
					goto label$149;
				}
				label$161:;
				label$160:;
				*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SECTIONP$1 + 40));
				*(int32*)((uint8*)&FBCTINF$ + 4) = *(int32*)((uint8*)SECTIONP$1 + 36);
				goto label$154;
			}
			label$159:;
			label$158:;
			SECTIONP$1 = (struct $10SECTION_32*)((uint8*)SECTIONP$1 + 68);
		}
		label$153:;
		SECTIONIDX$2 = SECTIONIDX$2 + 1;
		label$152:;
		if( SECTIONIDX$2 <= TMP$26$2 ) goto label$155;
		label$154:;
	}
	label$149:;
	return fb$result$1;
}

static int32 HPROCESSMACHOSEGMENT64( struct $14LOAD_COMMAND_H* LOADCMD$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$162:;
	struct $18SEGMENT_COMMAND_64* SEGMENTP$1;
	__builtin_memset( &SEGMENTP$1, 0, 4 );
	struct $10SECTION_64* SECTIONP$1;
	__builtin_memset( &SECTIONP$1, 0, 4 );
	SEGMENTP$1 = (struct $18SEGMENT_COMMAND_64*)LOADCMD$1;
	if( (uint32)(struct $18SEGMENT_COMMAND_64*)((uint8*)SEGMENTP$1 + 72) <= (uint32)(uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)&OBJDATA$ + 4)) ) goto label$165;
	{
		fb$result$1 = 1;
		goto label$163;
	}
	label$165:;
	label$164:;
	SECTIONP$1 = (struct $10SECTION_64*)((uint8*)SEGMENTP$1 + 72);
	{
		int32 SECTIONIDX$2;
		SECTIONIDX$2 = 0;
		int32 TMP$27$2;
		TMP$27$2 = (int32)(*(uint32*)((uint8*)SEGMENTP$1 + 64) + 4294967295u);
		goto label$166;
		label$169:;
		{
			if( (uint32)(struct $10SECTION_64*)((uint8*)SECTIONP$1 + 80) <= (uint32)(uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)&OBJDATA$ + 4)) ) goto label$171;
			{
				fb$result$1 = 1;
				goto label$163;
			}
			label$171:;
			label$170:;
			int32 vr$12 = fb_StrCompare( (void*)SECTIONP$1, 16, (void*)"fbctinf", 8 );
			if( vr$12 != 0 ) goto label$173;
			{
				if( ((uint64)*(uint32*)((uint8*)SECTIONP$1 + 48) + *(uint64*)((uint8*)SECTIONP$1 + 40)) <= (uint64)*(int32*)((uint8*)&OBJDATA$ + 4) ) goto label$175;
				{
					fb$result$1 = 1;
					goto label$163;
				}
				label$175:;
				label$174:;
				*(uint8**)&FBCTINF$ = (uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)SECTIONP$1 + 48));
				*(int32*)((uint8*)&FBCTINF$ + 4) = (int32)*(uint64*)((uint8*)SECTIONP$1 + 40);
				goto label$168;
			}
			label$173:;
			label$172:;
			SECTIONP$1 = (struct $10SECTION_64*)((uint8*)SECTIONP$1 + 80);
		}
		label$167:;
		SECTIONIDX$2 = SECTIONIDX$2 + 1;
		label$166:;
		if( SECTIONIDX$2 <= TMP$27$2 ) goto label$169;
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
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	if( *(int32*)((uint8*)&OBJDATA$ + 4) >= 28 ) goto label$179;
	{
		goto label$177;
	}
	label$179:;
	label$178:;
	HEADER$1 = *(struct $6MACH_H**)&OBJDATA$;
	if( (-(*(uint32*)HEADER$1 != 4277009102u) & -(*(uint32*)HEADER$1 != 4277009103u)) == 0 ) goto label$181;
	{
		goto label$177;
	}
	label$181:;
	label$180:;
	{
		int32 TMP$28$2;
		int32 vr$5 = FBGETCPUFAMILY(  );
		TMP$28$2 = vr$5;
		if( TMP$28$2 != 0 ) goto label$183;
		label$184:;
		{
			if( *(uint32*)((uint8*)HEADER$1 + 4) == 7u ) goto label$186;
			{
				goto label$177;
			}
			label$186:;
			label$185:;
		}
		goto label$182;
		label$183:;
		if( TMP$28$2 != 1 ) goto label$187;
		label$188:;
		{
			if( *(uint32*)((uint8*)HEADER$1 + 4) == 16777223u ) goto label$190;
			{
				goto label$177;
			}
			label$190:;
			label$189:;
		}
		goto label$182;
		label$187:;
		if( TMP$28$2 != 2 ) goto label$191;
		label$192:;
		{
			if( *(uint32*)((uint8*)HEADER$1 + 4) == 12u ) goto label$194;
			{
				goto label$177;
			}
			label$194:;
			label$193:;
		}
		goto label$182;
		label$191:;
		if( TMP$28$2 != 3 ) goto label$195;
		label$196:;
		{
			if( *(uint32*)((uint8*)HEADER$1 + 4) == 16777228u ) goto label$198;
			{
				goto label$177;
			}
			label$198:;
			label$197:;
		}
		label$195:;
		label$182:;
	}
	if( *(uint32*)((uint8*)HEADER$1 + 12) == 1u ) goto label$200;
	{
		goto label$177;
	}
	label$200:;
	label$199:;
	DATAPTR$1 = (uint8*)(*(uint8**)&OBJDATA$ + 28);
	if( *(uint32*)HEADER$1 != 4277009103u ) goto label$202;
	{
		DATAPTR$1 = (uint8*)(DATAPTR$1 + 4);
	}
	label$202:;
	label$201:;
	{
		int32 CMDIDX$2;
		CMDIDX$2 = 0;
		int32 TMP$29$2;
		TMP$29$2 = (int32)(*(uint32*)((uint8*)HEADER$1 + 16) + 4294967295u);
		goto label$203;
		label$206:;
		{
			LOADCMD$1 = (struct $14LOAD_COMMAND_H*)DATAPTR$1;
			if( (uint32)(struct $14LOAD_COMMAND_H*)((uint8*)LOADCMD$1 + 8) <= (uint32)(uint8*)(*(uint8**)&OBJDATA$ + *(int32*)((uint8*)&OBJDATA$ + 4)) ) goto label$208;
			{
				goto label$177;
			}
			label$208:;
			label$207:;
			if( *(uint32*)LOADCMD$1 != 1u ) goto label$210;
			{
				int32 vr$19 = HPROCESSMACHOSEGMENT32( LOADCMD$1 );
				if( vr$19 == 0 ) goto label$212;
				{
					goto label$177;
				}
				label$212:;
				label$211:;
			}
			goto label$209;
			label$210:;
			if( *(uint32*)LOADCMD$1 != 25u ) goto label$213;
			{
				int32 vr$21 = HPROCESSMACHOSEGMENT64( LOADCMD$1 );
				if( vr$21 == 0 ) goto label$215;
				{
					goto label$177;
				}
				label$215:;
				label$214:;
			}
			label$213:;
			label$209:;
			DATAPTR$1 = (uint8*)(DATAPTR$1 + *(int32*)((uint8*)LOADCMD$1 + 4));
		}
		label$204:;
		CMDIDX$2 = CMDIDX$2 + 1;
		label$203:;
		if( CMDIDX$2 <= TMP$29$2 ) goto label$206;
		label$205:;
	}
	label$177:;
}

static uint8* HLOADARSTRING( uint8* P$1, int32 LENGTH$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$216:;
	static uint8 S$1[17];
	int32 LAST$1;
	int32 I$1;
	LAST$1 = LENGTH$1 + -1;
	label$218:;
	if( LAST$1 < 0 ) goto label$219;
	{
		if( (uint32)(int32)*(uint8*)(P$1 + LAST$1) == 32u ) goto label$221;
		{
			goto label$219;
		}
		label$221:;
		label$220:;
		LAST$1 = LAST$1 + -1;
	}
	goto label$218;
	label$219:;
	I$1 = 0;
	label$222:;
	if( I$1 > LAST$1 ) goto label$223;
	{
		*(uint8*)((uint8*)S$1 + I$1) = *(uint8*)(P$1 + I$1);
		I$1 = I$1 + 1;
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
	__builtin_memset( &FILENAME$1, 0, 12 );
	int32 I$1;
	int32 FILESIZE$1;
	*(uint8**)&OBJDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&OBJDATA$ + 4) = 0;
	if( *(int32*)((uint8*)&ARDATA$ + 4) >= 8 ) goto label$227;
	{
		fb_StrDelete( (FBSTRING*)&FILENAME$1 );
		goto label$225;
	}
	label$227:;
	label$226:;
	{
		I$1 = 0;
		label$231:;
		{
			if( (int32)*(uint8*)(*(uint8**)&ARDATA$ + I$1) == (int32)*(uint8*)((int32)(uint8*)ARMAGIC$ + I$1) ) goto label$233;
			{
				fb_StrDelete( (FBSTRING*)&FILENAME$1 );
				goto label$225;
			}
			label$233:;
			label$232:;
		}
		label$229:;
		I$1 = I$1 + 1;
		label$228:;
		if( I$1 <= 7 ) goto label$231;
		label$230:;
	}
	I$1 = 8;
	label$234:;
	{
		if( (I$1 + 60) <= *(int32*)((uint8*)&ARDATA$ + 4) ) goto label$238;
		{
			fb_StrDelete( (FBSTRING*)&FILENAME$1 );
			goto label$225;
		}
		label$238:;
		label$237:;
		H$1 = (struct $4AR_H*)((uint8*)*(void**)&ARDATA$ + I$1);
		uint8* vr$12 = HLOADARSTRING( (uint8*)H$1, 16 );
		fb_StrAssign( (void*)&FILENAME$1, -1, (void*)vr$12, 0, 0 );
		uint8* vr$16 = HLOADARSTRING( (uint8*)((uint8*)H$1 + 48), 10 );
		FBSTRING* vr$17 = fb_StrAllocTempDescZ( (uint8*)vr$16 );
		double vr$18 = fb_VAL( (FBSTRING*)vr$17 );
		FILESIZE$1 = fb_D2I( vr$18 );
		if( FILESIZE$1 >= 0 ) goto label$240;
		{
			FILESIZE$1 = 0;
		}
		goto label$239;
		label$240:;
		if( (-(FILESIZE$1 > *(int32*)((uint8*)&ARDATA$ + 4)) | -(FILESIZE$1 > (*(int32*)((uint8*)&ARDATA$ + 4) - I$1))) == 0 ) goto label$241;
		{
			FILESIZE$1 = *(int32*)((uint8*)&ARDATA$ + 4) - I$1;
		}
		label$241:;
		label$239:;
		I$1 = I$1 + 60;
		{
			int32 vr$27 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__fb_ct.inf", 12 );
			if( vr$27 == 0 ) goto label$244;
			label$245:;
			int32 vr$29 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__fb_ct.inf/", 13 );
			if( vr$29 != 0 ) goto label$243;
			label$244:;
			{
				if( FILESIZE$1 <= 0 ) goto label$247;
				{
					*(uint8**)&OBJDATA$ = (uint8*)((uint8*)*(void**)&ARDATA$ + I$1);
					*(int32*)((uint8*)&OBJDATA$ + 4) = FILESIZE$1;
				}
				label$247:;
				label$246:;
				goto label$235;
			}
			goto label$242;
			label$243:;
			int32 vr$32 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"/", 2 );
			if( vr$32 == 0 ) goto label$249;
			label$250:;
			int32 vr$34 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"//", 3 );
			if( vr$34 == 0 ) goto label$249;
			label$251:;
			int32 vr$36 = fb_StrCompare( (void*)&FILENAME$1, -1, (void*)"__.SYMDEF", 10 );
			if( vr$36 != 0 ) goto label$248;
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
		I$1 = I$1 + (I$1 & 1);
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
	int32 F$1;
	int32 SIZE$1;
	uint8* P$1;
	*(uint8**)BUF$1 = (uint8*)0u;
	*(int32*)((uint8*)BUF$1 + 4) = 0;
	int32 vr$2 = fb_FileFree(  );
	F$1 = vr$2;
	int32 vr$3 = fb_FileOpen( (FBSTRING*)FILENAME$1, 0u, 1u, 0u, F$1, 0 );
	if( vr$3 == 0 ) goto label$256;
	{
		goto label$254;
	}
	label$256:;
	label$255:;
	int64 vr$4 = fb_FileSize( F$1 );
	SIZE$1 = (int32)vr$4;
	if( SIZE$1 <= 0 ) goto label$258;
	{
		void* vr$6 = malloc( (uint32)SIZE$1 );
		P$1 = (uint8*)vr$6;
		int32 vr$8 = fb_FileGetIOB( F$1, 0, (void*)P$1, (uint32)SIZE$1, (uint32*)&SIZE$1 );
		if( vr$8 == 0 ) goto label$260;
		{
			goto label$254;
		}
		label$260:;
		label$259:;
		*(uint8**)BUF$1 = P$1;
		*(int32*)((uint8*)BUF$1 + 4) = SIZE$1;
	}
	label$258:;
	label$257:;
	int32 vr$11 = fb_FileClose( F$1 );
	if( vr$11 == 0 ) goto label$261;
	void* vr$12 = fb_ErrorThrowAt( 860, (uint8*)"src/compiler/objinfo.bas", (void*)0u, (void*)0u );
	goto *vr$12;
	label$261:;
	label$254:;
}

static void HLOADFBCTINFFROMOBJ( void )
{
	label$262:;
	int32 vr$0 = FBTARGETSUPPORTSCOFF(  );
	if( vr$0 == 0 ) goto label$265;
	{
		{
			int32 TMP$44$3;
			int32 vr$1 = FBGETCPUFAMILY(  );
			TMP$44$3 = vr$1;
			if( TMP$44$3 != 1 ) goto label$267;
			label$268:;
			{
				HLOADFBCTINFFROMCOFF( (uint16)34404u );
			}
			goto label$266;
			label$267:;
			if( TMP$44$3 != 0 ) goto label$269;
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
	int32 vr$2 = FBTARGETSUPPORTSELF(  );
	if( vr$2 == 0 ) goto label$271;
	{
		{
			int32 TMP$45$3;
			int32 vr$3 = FBGETCPUFAMILY(  );
			TMP$45$3 = vr$3;
			if( TMP$45$3 != 1 ) goto label$273;
			label$274:;
			{
				HLOADFBCTINFFROMELF64_H( 62 );
			}
			goto label$272;
			label$273:;
			if( TMP$45$3 != 0 ) goto label$275;
			label$276:;
			{
				HLOADFBCTINFFROMELF32_H( 3 );
			}
			goto label$272;
			label$275:;
			if( TMP$45$3 != 3 ) goto label$277;
			label$278:;
			{
				HLOADFBCTINFFROMELF64_H( 183 );
			}
			goto label$272;
			label$277:;
			if( TMP$45$3 != 2 ) goto label$279;
			label$280:;
			{
				HLOADFBCTINFFROMELF32_H( 40 );
			}
			goto label$272;
			label$279:;
			if( TMP$45$3 == 5 ) goto label$282;
			label$283:;
			if( TMP$45$3 != 6 ) goto label$281;
			label$282:;
			{
				HLOADFBCTINFFROMELF64_H( 21 );
			}
			goto label$272;
			label$281:;
			if( TMP$45$3 != 4 ) goto label$284;
			label$285:;
			{
				HLOADFBCTINFFROMELF32_H( 20 );
			}
			label$284:;
			label$272:;
		}
	}
	goto label$264;
	label$271:;
	int32 vr$4 = FBTARGETSUPPORTSMACHO(  );
	if( vr$4 == 0 ) goto label$286;
	{
		HLOADFBCTINFFROMMACHO(  );
	}
	label$286:;
	label$264:;
	if( *(int32*)((uint8*)&FBCTINF$ + 4) != 0 ) goto label$288;
	{
		goto label$263;
	}
	label$288:;
	label$287:;
	if( (int32)*(*(uint8**)&FBCTINF$) != 16 ) goto label$290;
	{
		*(int32*)((uint8*)&PARSER$ + 16) = -1;
		*(int32*)&PARSER$ = 1;
	}
	goto label$289;
	label$290:;
	{
		*(int32*)((uint8*)&PARSER$ + 16) = 0;
	}
	label$289:;
	label$263:;
}

static void HRESETBUFFERS( void )
{
	label$291:;
	*(uint8**)&ARDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&ARDATA$ + 4) = 0;
	*(uint8**)&OBJDATA$ = (uint8*)0u;
	*(int32*)((uint8*)&OBJDATA$ + 4) = 0;
	*(uint8**)&FBCTINF$ = (uint8*)0u;
	*(int32*)((uint8*)&FBCTINF$ + 4) = 0;
	label$292:;
}

static void OBJINFOINIT( FBSTRING* FILENAME$1 )
{
	label$293:;
	HRESETBUFFERS(  );
	*(int32*)&PARSER$ = 0;
	fb_StrAssign( (void*)((uint8*)&PARSER$ + 4), -1, (void*)FILENAME$1, -1, 0 );
	*(int32*)((uint8*)&PARSER$ + 16) = 0;
	*(int32*)((uint8*)&PARSER$ + 20) = -1;
	label$294:;
}

static uint8* HGETNEXTSTRING( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$313:;
	int32 BEGIN$1;
	fb$result$1 = (uint8*)"";
	BEGIN$1 = *(int32*)&PARSER$;
	label$315:;
	if( *(int32*)&PARSER$ >= *(int32*)((uint8*)&FBCTINF$ + 4) ) goto label$316;
	{
		*(int32*)&PARSER$ = *(int32*)&PARSER$ + 1;
		if( (int32)*(uint8*)((uint8*)(*(uint8**)&FBCTINF$ + *(int32*)&PARSER$) + -1) != 0 ) goto label$318;
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
