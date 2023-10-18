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
struct $13FBGNUARCHINFO {
	uint8* GNUID;
	int32 CPUTYPE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $13FBGNUARCHINFO ) == 8 );
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
struct $10FBC_EXTOPT {
	FBSTRING GAS;
	FBSTRING LD;
	FBSTRING GCC;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_EXTOPT ) == 36 );
struct $9FBCIOFILE {
	FBSTRING SRCFILE;
	FBSTRING* OBJFILE;
	int32 IS_CUSTOM_OBJFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBCIOFILE ) == 20 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 8 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int32 NODES;
	int32 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 12 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
typedef int32 $7FB_LANG;
struct $10FBC_OBJINF {
	$7FB_LANG LANG;
	int32 MT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBC_OBJINF ) == 8 );
struct $6FBCCTX {
	int32 OPTID;
	struct $9FBCIOFILE* LASTMODULE;
	FBSTRING OBJFILE;
	int32 BACKEND;
	int32 CPUTYPE;
	int32 CPUTYPE_IS_NATIVE;
	int32 ASMSYNTAX;
	int32 EMITASMONLY;
	int32 KEEPASM;
	int32 EMITFINALASMONLY;
	int32 KEEPFINALASM;
	int32 KEEPOBJ;
	int32 VERBOSE;
	int32 SHOWVERSION;
	int32 SHOWHELP;
	int32 PRINT;
	struct $5TLIST MODULES;
	struct $5TLIST RCS;
	struct $9FBCIOFILE XPM;
	struct $7TSTRSET TEMPS;
	struct $5TLIST OBJLIST;
	struct $5TLIST LIBFILES;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	struct $7TSTRSET EXCLUDEDLIBS;
	struct $7TSTRSET FINALLIBS;
	struct $7TSTRSET FINALLIBPATHS;
	uint8 OUTNAME[261];
	uint8 MAINNAME[261];
	uint8 ENTRY[129];
	int32 MAINSET;
	uint8 MAPFILE[261];
	uint8 SUBSYSTEM[129];
	struct $10FBC_EXTOPT EXTOPT;
	uint8 TARGET[129];
	uint8 TARGETPREFIX[129];
	uint8 XBE_TITLE[129];
	int32 NODEFLIBS;
	int32 STATICLINK;
	int32 STRIPSYMBOLS;
	uint8 PREFIX[261];
	uint8 BINPATH[261];
	uint8 INCPATH[261];
	uint8 LIBPATH[261];
	uint8 BUILDPREFIX[261];
	struct $10FBC_OBJINF OBJINF;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBCCTX ) == 3284 );
typedef int32 $11FBCTOOLFLAG;
struct $11FBCTOOLINFO {
	uint8 NAME[16];
	$11FBCTOOLFLAG FLAGS;
	uint8 PATH[261];
};
__FB_STATIC_ASSERT( sizeof( struct $11FBCTOOLINFO ) == 284 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IcE {
	uint8* DATA;
	uint8* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IcE ) == 36 );
typedef int32 $7FBCTOOL;
struct $11FBGNUOSINFO {
	uint8* GNUID;
	int32 OS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBGNUOSINFO ) == 8 );
struct $12FBOSARCHINFO {
	uint8* TARGETID;
	int32 OS;
	int32 CPUTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBOSARCHINFO ) == 12 );
struct $7FBARRAYI8FBSTRINGE {
	FBSTRING* DATA;
	FBSTRING* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYI8FBSTRINGE ) == 120 );
struct $7FBARRAYIKvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIKvE ) == 120 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
struct $18FBC_CMDLINE_OPTION {
	boolean TAKES_ARGUMENT;
	boolean ALLOWED_IN_SOURCE;
	boolean PARSER_RESTART;
	int32 FBC_RESTART;
};
__FB_STATIC_ASSERT( sizeof( struct $18FBC_CMDLINE_OPTION ) == 8 );
void fb_ArrayStrErase( struct $7FBARRAYIvE* );
int32 fb_ArrayLBound( struct $7FBARRAYIKvE*, int32 );
int32 fb_ArrayUBound( struct $7FBARRAYIKvE*, int32 );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileOpen( FBSTRING*, uint32, uint32, uint32, int32, int32 );
int32 fb_FileOpenPipe( FBSTRING*, uint32, uint32, uint32, int32, int32, uint8* );
int32 fb_FileClose( int32 );
int32 fb_FilePut( int32, int32, void*, uint32 );
int32 fb_FileLineInput( int32, void*, int32, int32 );
int32 fb_FileInput( int32 );
int32 fb_InputString( void*, int32, int32 );
int32 rename( uint8*, uint8* );
int32 fb_FileFree( void );
int32 fb_FileEof( int32 );
int32 fb_FileKill( FBSTRING* );
void fb_PrintVoid( int32, int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_IntToStr( int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_RIGHT( FBSTRING*, int32 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
void fb_Init( int32, uint8**, int32 );
void fb_InitSignals( void );
void fb_End( int32 );
FBSTRING* fb_ExePath( void );
int32 fb_Shell( FBSTRING* );
int32 fb_Exec( FBSTRING*, FBSTRING* );
FBSTRING* fb_GetEnviron( FBSTRING* );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void STRLISTAPPEND( struct $5TLIST*, FBSTRING* );
void STRLISTINIT( struct $5TLIST*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void STRSETADD( struct $7TSTRSET*, FBSTRING*, int32 );
void STRSETDEL( struct $7TSTRSET*, FBSTRING* );
void STRSETCOPY( struct $7TSTRSET*, struct $7TSTRSET* );
void STRSETINIT( struct $7TSTRSET*, int32 );
void ERRPREINIT( void );
int32 ERRGETCOUNT( void );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void FBINIT( int32, uint8*, int32 );
void FBEND( void );
void FBCOMPILE( uint8*, uint8*, FBSTRING*, int32 );
int32 FBSHOULDRESTART( void );
typedef int32 $16FB_RESTART_FLAGS;
void FBRESTARTBEGINREQUEST( $16FB_RESTART_FLAGS );
void FBRESTARTENDREQUEST( $16FB_RESTART_FLAGS );
int32 FBRESTARTGETCOUNT( void );
void FBGLOBALINIT( void );
void FBADDINCLUDEPATH( FBSTRING* );
void FBADDPREDEFINE( FBSTRING* );
void FBADDPREINCLUDE( FBSTRING* );
void FBSETOPTION( int32, int32 );
int32 FBGETOPTION( int32 );
void FBSETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
void FBGETLIBS( struct $7TSTRSET*, struct $7TSTRSET* );
FBSTRING* FBGETTARGETID( void );
FBSTRING* FBGETHOSTID( void );
int32 FBIDENTIFYOS( FBSTRING* );
int32 FBCPUTYPEFROMCPUFAMILYID( FBSTRING* );
uint8* FBGETGCCARCH( void );
uint8* FBGETFBCARCH( void );
int32 FBGETBITS( void );
int32 FBGETHOSTBITS( void );
int32 FBGETCPUFAMILY( void );
int32 FBIDENTIFYFBCARCH( FBSTRING* );
int32 FBTARGETSUPPORTSELF( void );
int32 FBISCROSSCOMP( void );
typedef int32 $10FB_BACKEND;
FBSTRING* FBGETBACKENDNAME( $10FB_BACKEND );
$7FB_LANG FBGETLANGID( uint8* );
int32 HFILEEXISTS( uint8* );
FBSTRING* HSTRIPEXT( FBSTRING* );
FBSTRING* HSTRIPPATH( uint8* );
FBSTRING* HSTRIPFILENAME( uint8* );
FBSTRING* HGETFILEEXT( uint8* );
void HREPLACESLASH( uint8*, int32 );
FBSTRING* PATHSTRIPDIV( FBSTRING* );
FBSTRING* STRUNQUOTE( FBSTRING* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
void HSPLITSTR( FBSTRING*, FBSTRING*, struct $7FBARRAYI8FBSTRINGE* );
void OBJINFOREADOBJ( FBSTRING* );
void OBJINFOREADLIBFILE( FBSTRING* );
void OBJINFOREADLIB( FBSTRING*, struct $5TLIST* );
int32 OBJINFOREADNEXT( FBSTRING* );
uint8* OBJINFOGETFILENAME( void );
void OBJINFOREADEND( void );
int64 fb_FileLen( uint8* );
static void _ZN10FBC_EXTOPTC1Ev( struct $10FBC_EXTOPT* );
static void _ZN10FBC_EXTOPTaSERKS_( struct $10FBC_EXTOPT*, struct $10FBC_EXTOPT* );
static void _ZN10FBC_EXTOPTD1Ev( struct $10FBC_EXTOPT* );
static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* );
static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE*, struct $9FBCIOFILE* );
static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* );
static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* );
static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX*, struct $6FBCCTX* );
static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* );
static void FBCFINDBIN( int32, FBSTRING* );
static void HPRINTVERSION( int32 );
static void FBCINIT( void );
static void HSETOUTNAME( void );
static void FBCEND( int32 );
static void FBCADDTEMP( FBSTRING* );
static void FBCREMOVETEMP( FBSTRING* );
static FBSTRING* FBCADDOBJ( FBSTRING* );
static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* );
static FBSTRING* FBCQUERYGCC( FBSTRING* );
static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* );
static FBSTRING* FBCFINDLIBFILE( uint8* );
static void FBCADDDEFLIBPATH( FBSTRING* );
static void FBCADDLIBPATHFOR( uint8* );
static int32 FBCRUNBIN( uint8*, int32, FBSTRING* );
static int32 CLEARDEFLIST( FBSTRING* );
static int32 HGENERATEEMPTYDEFFILE( FBSTRING* );
static int32 MAKEIMPLIB( FBSTRING*, FBSTRING* );
static FBSTRING* HFINDLIB( uint8* );
static int32 FBCLINKERISGOLD( void );
static int32 FBCISUSINGGOLDLINKER( void );
static int32 HLINKFILES( void );
static void HREADOBJINFO( void );
static void HCOLLECTOBJINFO( void );
static void HFATALINVALIDOPTION( FBSTRING*, int32 );
static void HCHECKWAITINGOBJFILE( void );
static void HSETIOFILE( struct $9FBCIOFILE*, FBSTRING*, int32 );
static void HADDBAS( FBSTRING* );
static void HPARSEGNUTRIPLET( FBSTRING*, int32, int32*, int32* );
static void HPARSETARGETARG( FBSTRING*, int32*, int32*, int32* );
static void HANDLEOPT( int32, FBSTRING*, int32 );
static int32 PARSEOPTION( uint8* );
static void PARSEARGSFROMFILE( FBSTRING*, int32 );
static void HANDLEARG( FBSTRING*, int32, int32 );
void FBCPARSEARGSFROMSTRING( uint8*, int32, int32 );
static int32 HTARGETNEEDSPIC( void );
static void HPARSEARGS( int32, uint8** );
static void HCHECKARGS( void );
static void FBCDETERMINEPREFIX( void );
static void FBCSETUPCOMPILERPATHS( void );
static void FBCPRINTTARGETINFO( void );
static void FBCDETERMINEMAINNAME( void );
static FBSTRING* HGETASMNAME( struct $9FBCIOFILE*, int32 );
static void HCOMPILEBAS( struct $9FBCIOFILE*, int32, int32, int32 );
static void HCOMPILEMODULES( void );
static int32 HPARSEXPM( FBSTRING*, FBSTRING* );
static int32 HCOMPILEXPM( void );
static int32 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* );
static void HCOMPILESTAGE2MODULES( void );
static int32 HASSEMBLEMODULE( struct $9FBCIOFILE* );
static void HASSEMBLEMODULES( void );
static int32 HASSEMBLERC( struct $9FBCIOFILE* );
static void HASSEMBLERCS( void );
static void HASSEMBLEXPM( void );
static int32 HCOMPILEFBCTINF( void );
static int32 HARCHIVEFILES( void );
static void HSETDEFAULTLIBPATHS( void );
static void FBCADDDEFLIB( uint8* );
static FBSTRING* HGETFBLIBNAMESUFFIX( void );
static void HADDDEFAULTLIBS( void );
static void HEXCLUDELIBSFROMLINK( void );
static void HPRINTOPTIONS( int32 );
static void _GLOBAL__I( void ) __attribute__(( constructor ));
static void _GLOBAL__D( void ) __attribute__(( destructor ));
static struct $11FBCTOOLINFO FBCTOOLTB$[15] = { { "as", 3 }, { "ar", 3 }, { "ld", 3 }, { "gcc", 3 }, { "llc", 3 }, { "clang", 3 }, { "dlltool", 3 }, { "GoRC", 3 }, { "windres", 3 }, { "cxbe", 3 }, { "dxe3gen", 3 }, { "emcc", 3 }, { "emar", 3 }, { "emcc", 3 }, { "emcc", 3 } };
static struct $6FBCCTX FBC$;
static struct $11FBGNUOSINFO GNUOSMAP$[12] = { { (uint8*)"linux", 2 }, { (uint8*)"mingw", 0 }, { (uint8*)"djgpp", 3 }, { (uint8*)"msdosdjgpp", 3 }, { (uint8*)"cygwin", 1 }, { (uint8*)"darwin", 9 }, { (uint8*)"freebsd", 5 }, { (uint8*)"dragonfly", 6 }, { (uint8*)"solaris", 7 }, { (uint8*)"netbsd", 10 }, { (uint8*)"openbsd", 8 }, { (uint8*)"xbox", 4 } };
static struct $13FBGNUARCHINFO GNUARCHMAP$[17] = { { (uint8*)"i386", 0 }, { (uint8*)"i486", 1 }, { (uint8*)"i586", 2 }, { (uint8*)"i686", 3 }, { (uint8*)"x86", 3 }, { (uint8*)"x86_64", 13 }, { (uint8*)"amd64", 13 }, { (uint8*)"armv6", 14 }, { (uint8*)"armv7a", 15 }, { (uint8*)"arm", 15 }, { (uint8*)"aarch64", 16 }, { (uint8*)"ppc", 17 }, { (uint8*)"powerpc", 17 }, { (uint8*)"ppc64  ", 18 }, { (uint8*)"powerpc64", 18 }, { (uint8*)"ppc64le  ", 19 }, { (uint8*)"powerpc64le", 19 } };
static struct $12FBOSARCHINFO FBOSARCHMAP$[12] = { { (uint8*)"win32", 0, 3 }, { (uint8*)"win64", 0, 13 }, { (uint8*)"dragonfly", 6, 13 }, { (uint8*)"solaris", 7, 13 }, { (uint8*)"dos", 3, 3 }, { (uint8*)"xbox", 4, 3 }, { (uint8*)"cygwin", 1, 15 }, { (uint8*)"darwin", 9, 15 }, { (uint8*)"freebsd", 5, 15 }, { (uint8*)"linux", 2, 15 }, { (uint8*)"netbsd", 10, 15 }, { (uint8*)"openbsd", 8, 15 } };
static struct $18FBC_CMDLINE_OPTION CMDLINEOPTIONTB$[70] = { { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)0, -1 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, -1 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, -1 }, { (boolean)0, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)1, (boolean)1, (boolean)1, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)0, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, -1 }, { (boolean)0, (boolean)1, (boolean)0, -1 }, { (boolean)1, (boolean)1, (boolean)0, -1 }, { (boolean)1, (boolean)0, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)0, (boolean)1, (boolean)1, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, -1 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 }, { (boolean)0, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)0, 0 }, { (boolean)1, (boolean)1, (boolean)1, -1 } };

int32 FBCPUTYPEFROMGNUARCHINFO( FBSTRING* ARCH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$480:;
	{
		int32 I$2;
		I$2 = 0;
		label$485:;
		{
			int32 vr$2 = fb_StrCompare( (void*)ARCH$1, -1, *(void**)((int32)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$2 << (3 & 31))), 0 );
			if( vr$2 != 0 ) goto label$487;
			{
				fb$result$1 = *(int32*)(((int32)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$2 << (3 & 31))) + 4);
				goto label$481;
			}
			label$487:;
			label$486:;
		}
		label$483:;
		I$2 = I$2 + 1;
		label$482:;
		if( I$2 <= 16 ) goto label$485;
		label$484:;
	}
	fb$result$1 = -1;
	goto label$481;
	label$481:;
	return fb$result$1;
}

void FBCPARSEARGSFROMSTRING( uint8* ARGS_IN$1, int32 IS_SOURCE$1, int32 IS_FILE$1 )
{
	label$934:;
	FBSTRING ARGS$1;
	fb_StrInit( (void*)&ARGS$1, -1, (void*)ARGS_IN$1, 0, 0 );
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 12 );
	label$936:;
	{
		int32 LENGTH$2;
		int32 vr$3 = fb_StrLen( (void*)&ARGS$1, -1 );
		LENGTH$2 = vr$3;
		if( LENGTH$2 != 0 ) goto label$940;
		{
			goto label$937;
		}
		label$940:;
		label$939:;
		int32 I$2;
		I$2 = 0;
		int32 QUOTECH$2;
		QUOTECH$2 = 0;
		label$941:;
		if( I$2 >= LENGTH$2 ) goto label$942;
		{
			int32 CH$3;
			CH$3 = (int32)*(uint8*)((uint8*)*(uint8**)&ARGS$1 + I$2);
			{
				uint32 TMP$458$4;
				TMP$458$4 = (uint32)CH$3;
				goto label$944;
				label$945:;
				{
					if( QUOTECH$2 != 0 ) goto label$947;
					{
						goto label$942;
					}
					label$947:;
					label$946:;
				}
				goto label$943;
				label$948:;
				{
					if( QUOTECH$2 != CH$3 ) goto label$950;
					{
						QUOTECH$2 = 0;
					}
					goto label$949;
					label$950:;
					if( QUOTECH$2 != 0 ) goto label$951;
					{
						QUOTECH$2 = CH$3;
					}
					label$951:;
					label$949:;
				}
				goto label$943;
				label$944:;
				static const void* tmp$460[8] = {
					&&label$945,
					&&label$943,
					&&label$948,
					&&label$943,
					&&label$943,
					&&label$943,
					&&label$943,
					&&label$948,
				};
				if( (TMP$458$4 - 32u) > 7u ) goto label$943;
				goto *tmp$460[TMP$458$4 - 32u];
				label$943:;
			}
			I$2 = I$2 + 1;
		}
		goto label$941;
		label$942:;
		if( I$2 != 0 ) goto label$953;
		{
			I$2 = 1;
		}
		goto label$952;
		label$953:;
		{
			FBSTRING* vr$8 = fb_LEFT( (FBSTRING*)&ARGS$1, I$2 );
			fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$8, -1, 0 );
			FBSTRING* vr$11 = fb_TRIM( (FBSTRING*)&ARG$1 );
			fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$11, -1, 0 );
			FBSTRING* vr$14 = STRUNQUOTE( &ARG$1 );
			fb_StrAssign( (void*)&ARG$1, -1, (void*)vr$14, -1, 0 );
			HANDLEARG( &ARG$1, IS_SOURCE$1, IS_FILE$1 );
		}
		label$952:;
		FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)&ARGS$1, LENGTH$2 - I$2 );
		fb_StrAssign( (void*)&ARGS$1, -1, (void*)vr$19, -1, 0 );
	}
	label$938:;
	goto label$936;
	label$937:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$935:;
}

int32 main( int32 __FB_ARGC__$0, char** __FB_ARGV__$0 )
{
	int32 fb$result$0;
	__builtin_memset( &fb$result$0, 0, 4 );
	fb_Init( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0, 0 );
	fb_InitSignals(  );
	label$0:;
	FBCINIT(  );
	if( __FB_ARGC__$0 != 1 ) goto label$1392;
	{
		HPRINTOPTIONS( 0 );
		FBCEND( 1 );
	}
	label$1392:;
	label$1391:;
	HPARSEARGS( __FB_ARGC__$0, (uint8**)__FB_ARGV__$0 );
	HCHECKARGS(  );
	if( *(int32*)((uint8*)&FBC$ + 60) == 0 ) goto label$1394;
	{
		HPRINTVERSION( *(int32*)((uint8*)&FBC$ + 56) );
		FBCEND( 0 );
	}
	label$1394:;
	label$1393:;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1396;
	{
		*(int32*)((uint8*)&FBC$ + 60) = -1;
		HPRINTVERSION( 0 );
	}
	label$1396:;
	label$1395:;
	if( *(int32*)((uint8*)&FBC$ + 64) == 0 ) goto label$1398;
	{
		HPRINTOPTIONS( *(int32*)((uint8*)&FBC$ + 56) );
		FBCEND( 1 );
	}
	label$1398:;
	label$1397:;
	label$1399:;
	{
		FBSTRING TMP$783$1;
		FBCDETERMINEPREFIX(  );
		FBCSETUPCOMPILERPATHS(  );
		if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1403;
		{
			FBCPRINTTARGETINFO(  );
		}
		label$1403:;
		label$1402:;
		__builtin_memset( &TMP$783$1, 0, 12 );
		fb_StrAssign( (void*)&TMP$783$1, -1, (void*)((uint8*)&FBC$ + 2490), 261, 0 );
		FBADDINCLUDEPATH( &TMP$783$1 );
		fb_StrDelete( (FBSTRING*)&TMP$783$1 );
		int32 HAVE_INPUT_FILES$1;
		void* vr$7 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
		void* vr$10 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
		void* vr$14 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 264) );
		void* vr$18 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 232) );
		HAVE_INPUT_FILES$1 = ((-(vr$7 != (void*)0u) | -(vr$10 != (void*)0u)) | -(vr$14 != (void*)0u)) | -(vr$18 != (void*)0u);
		if( *(int32*)((uint8*)&FBC$ + 68) < 0 ) goto label$1405;
		{
			{
				int32 TMP$784$3;
				TMP$784$3 = *(int32*)((uint8*)&FBC$ + 68);
				if( TMP$784$3 != 0 ) goto label$1407;
				label$1408:;
				{
					FBSTRING* vr$21 = FBGETHOSTID(  );
					fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
				}
				goto label$1406;
				label$1407:;
				if( TMP$784$3 != 1 ) goto label$1409;
				label$1410:;
				{
					FBSTRING* vr$22 = FBGETTARGETID(  );
					fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
				}
				goto label$1406;
				label$1409:;
				if( TMP$784$3 != 2 ) goto label$1411;
				label$1412:;
				{
					if( HAVE_INPUT_FILES$1 == 0 ) goto label$1414;
					{
						FBCDETERMINEMAINNAME(  );
					}
					label$1414:;
					label$1413:;
					HSETOUTNAME(  );
					FBSTRING* vr$24 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 484) );
					fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
				}
				goto label$1406;
				label$1411:;
				if( TMP$784$3 != 3 ) goto label$1415;
				label$1416:;
				{
					FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 2751) );
					fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
				}
				goto label$1406;
				label$1415:;
				if( TMP$784$3 != 4 ) goto label$1417;
				label$1418:;
				{
					FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"", 0 );
					fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
				}
				label$1417:;
				label$1406:;
			}
			FBCEND( 0 );
		}
		label$1405:;
		label$1404:;
		FBCDETERMINEMAINNAME(  );
		if( HAVE_INPUT_FILES$1 != 0 ) goto label$1420;
		{
			HPRINTOPTIONS( *(int32*)((uint8*)&FBC$ + 56) );
			FBCEND( 1 );
		}
		label$1420:;
		label$1419:;
		HCOMPILEMODULES(  );
		int32 vr$28 = FBSHOULDRESTART(  );
		if( vr$28 != 0 ) goto label$1422;
		{
			goto label$1400;
		}
		label$1422:;
		label$1421:;
		FBRESTARTENDREQUEST( 8 );
		ERRPREINIT(  );
		HCHECKARGS(  );
		if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1424;
		{
			FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)"Restarting fbc ...", 18 );
			fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
		}
		label$1424:;
		label$1423:;
	}
	label$1401:;
	goto label$1399;
	label$1400:;
	int32 vr$30 = HCOMPILEXPM(  );
	if( vr$30 != 0 ) goto label$1426;
	{
		FBCEND( 1 );
	}
	label$1426:;
	label$1425:;
	if( *(int32*)((uint8*)&FBC$ + 36) == 0 ) goto label$1428;
	{
		FBCEND( 0 );
	}
	label$1428:;
	label$1427:;
	int32 vr$31 = FBGETOPTION( 2 );
	int32 vr$33 = FBGETOPTION( 2 );
	if( (-(vr$31 != 0) & -(vr$33 != 3)) == 0 ) goto label$1430;
	{
		HCOMPILESTAGE2MODULES(  );
	}
	label$1430:;
	label$1429:;
	if( *(int32*)((uint8*)&FBC$ + 44) == 0 ) goto label$1432;
	{
		FBCEND( 0 );
	}
	label$1432:;
	label$1431:;
	HASSEMBLEMODULES(  );
	HASSEMBLERCS(  );
	HASSEMBLEXPM(  );
	int32 vr$36 = FBGETOPTION( 0 );
	if( vr$36 != 3 ) goto label$1434;
	{
		FBCEND( 0 );
	}
	label$1434:;
	label$1433:;
	HSETDEFAULTLIBPATHS(  );
	int32 vr$37 = FBGETOPTION( 39 );
	int32 vr$38 = FBISCROSSCOMP(  );
	if( (vr$37 & ~vr$38) == 0 ) goto label$1436;
	{
		HCOLLECTOBJINFO(  );
	}
	label$1436:;
	label$1435:;
	int32 vr$41 = FBGETOPTION( 0 );
	if( vr$41 != 1 ) goto label$1438;
	{
		int32 vr$42 = HARCHIVEFILES(  );
		if( vr$42 != 0 ) goto label$1440;
		{
			FBCEND( 1 );
		}
		label$1440:;
		label$1439:;
		FBCEND( 0 );
	}
	label$1438:;
	label$1437:;
	if( *(int32*)((uint8*)&FBC$ + 1956) != 0 ) goto label$1442;
	{
		HADDDEFAULTLIBS(  );
	}
	label$1442:;
	label$1441:;
	HEXCLUDELIBSFROMLINK(  );
	int32 vr$43 = HLINKFILES(  );
	if( vr$43 != 0 ) goto label$1444;
	{
		FBCEND( 1 );
	}
	label$1444:;
	label$1443:;
	FBCEND( 0 );
	label$1:;
	fb_End( 0 );
	return fb$result$0;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void _ZN10FBC_EXTOPTC1Ev( struct $10FBC_EXTOPT* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 12), 0, 12 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 24), 0, 12 );
	label$10:;
	label$11:;
}

static void _ZN10FBC_EXTOPTaSERKS_( struct $10FBC_EXTOPT* THIS$1, struct $10FBC_EXTOPT* __FB_RHS__$1 )
{
	label$12:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 12), -1, (void*)((uint8*)__FB_RHS__$1 + 12), -1, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 24), -1, (void*)((uint8*)__FB_RHS__$1 + 24), -1, 0 );
	label$13:;
}

static void _ZN10FBC_EXTOPTD1Ev( struct $10FBC_EXTOPT* THIS$1 )
{
	label$16:;
	label$17:;
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 24) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 12) );
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN9FBCIOFILEC1Ev( struct $9FBCIOFILE* THIS$1 )
{
	__builtin_memset( (FBSTRING*)THIS$1, 0, 12 );
	__builtin_memset( (FBSTRING**)((uint8*)THIS$1 + 12), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 16), 0, 4 );
	label$18:;
	label$19:;
}

static void _ZN9FBCIOFILEaSERKS_( struct $9FBCIOFILE* THIS$1, struct $9FBCIOFILE* __FB_RHS__$1 )
{
	label$20:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(FBSTRING**)((uint8*)THIS$1 + 12) = *(FBSTRING**)((uint8*)__FB_RHS__$1 + 12);
	*(int32*)((uint8*)THIS$1 + 16) = *(int32*)((uint8*)__FB_RHS__$1 + 16);
	label$21:;
}

static void _ZN9FBCIOFILED1Ev( struct $9FBCIOFILE* THIS$1 )
{
	label$24:;
	label$25:;
	fb_StrDelete( (FBSTRING*)THIS$1 );
}

static void _ZN6FBCCTXC1Ev( struct $6FBCCTX* THIS$1 )
{
	__builtin_memset( (int32*)THIS$1, 0, 4 );
	__builtin_memset( (struct $9FBCIOFILE**)((uint8*)THIS$1 + 4), 0, 4 );
	__builtin_memset( (FBSTRING*)((uint8*)THIS$1 + 8), 0, 12 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 20), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 24), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 28), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 32), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 36), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 40), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 44), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 48), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 52), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 56), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 60), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 64), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 68), 0, 4 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 72), 0, 32 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 104), 0, 32 );
	_ZN9FBCIOFILEC1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136) );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 156), 0, 44 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 200), 0, 32 );
	__builtin_memset( (struct $5TLIST*)((uint8*)THIS$1 + 232), 0, 32 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 264), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 308), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 352), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 396), 0, 44 );
	__builtin_memset( (struct $7TSTRSET*)((uint8*)THIS$1 + 440), 0, 44 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 484), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 745), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1006), 0, 129 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 1136), 0, 4 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1140), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1401), 0, 129 );
	_ZN10FBC_EXTOPTC1Ev( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1532) );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1568), 0, 129 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1697), 0, 129 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1826), 0, 129 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 1956), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 1960), 0, 4 );
	__builtin_memset( (int32*)((uint8*)THIS$1 + 1964), 0, 4 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 1968), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2229), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2490), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 2751), 0, 261 );
	__builtin_memset( (uint8*)((uint8*)THIS$1 + 3012), 0, 261 );
	__builtin_memset( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3276), 0, 8 );
	label$26:;
	label$27:;
}

static void _ZN6FBCCTXaSERKS_( struct $6FBCCTX* THIS$1, struct $6FBCCTX* __FB_RHS__$1 )
{
	label$28:;
	*(int32*)THIS$1 = *(int32*)__FB_RHS__$1;
	*(struct $9FBCIOFILE**)((uint8*)THIS$1 + 4) = *(struct $9FBCIOFILE**)((uint8*)__FB_RHS__$1 + 4);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 8), -1, (void*)((uint8*)__FB_RHS__$1 + 8), -1, 0 );
	*(int32*)((uint8*)THIS$1 + 20) = *(int32*)((uint8*)__FB_RHS__$1 + 20);
	*(int32*)((uint8*)THIS$1 + 24) = *(int32*)((uint8*)__FB_RHS__$1 + 24);
	*(int32*)((uint8*)THIS$1 + 28) = *(int32*)((uint8*)__FB_RHS__$1 + 28);
	*(int32*)((uint8*)THIS$1 + 32) = *(int32*)((uint8*)__FB_RHS__$1 + 32);
	*(int32*)((uint8*)THIS$1 + 36) = *(int32*)((uint8*)__FB_RHS__$1 + 36);
	*(int32*)((uint8*)THIS$1 + 40) = *(int32*)((uint8*)__FB_RHS__$1 + 40);
	*(int32*)((uint8*)THIS$1 + 44) = *(int32*)((uint8*)__FB_RHS__$1 + 44);
	*(int32*)((uint8*)THIS$1 + 48) = *(int32*)((uint8*)__FB_RHS__$1 + 48);
	*(int32*)((uint8*)THIS$1 + 52) = *(int32*)((uint8*)__FB_RHS__$1 + 52);
	*(int32*)((uint8*)THIS$1 + 56) = *(int32*)((uint8*)__FB_RHS__$1 + 56);
	*(int32*)((uint8*)THIS$1 + 60) = *(int32*)((uint8*)__FB_RHS__$1 + 60);
	*(int32*)((uint8*)THIS$1 + 64) = *(int32*)((uint8*)__FB_RHS__$1 + 64);
	*(int32*)((uint8*)THIS$1 + 68) = *(int32*)((uint8*)__FB_RHS__$1 + 68);
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 72), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 72), 32 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 104), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 104), 32 );
	_ZN9FBCIOFILEaSERKS_( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136), (struct $9FBCIOFILE*)((uint8*)__FB_RHS__$1 + 136) );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 156), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 156), 44 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 200), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 200), 32 );
	__builtin_memcpy( (struct $5TLIST*)((uint8*)THIS$1 + 232), (struct $5TLIST*)((uint8*)__FB_RHS__$1 + 232), 32 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 264), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 264), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 308), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 308), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 352), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 352), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 396), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 396), 44 );
	__builtin_memcpy( (struct $7TSTRSET*)((uint8*)THIS$1 + 440), (struct $7TSTRSET*)((uint8*)__FB_RHS__$1 + 440), 44 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 484), 261, (void*)((uint8*)__FB_RHS__$1 + 484), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 745), 261, (void*)((uint8*)__FB_RHS__$1 + 745), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1006), 129, (void*)((uint8*)__FB_RHS__$1 + 1006), 129, 0 );
	*(int32*)((uint8*)THIS$1 + 1136) = *(int32*)((uint8*)__FB_RHS__$1 + 1136);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1140), 261, (void*)((uint8*)__FB_RHS__$1 + 1140), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1401), 129, (void*)((uint8*)__FB_RHS__$1 + 1401), 129, 0 );
	_ZN10FBC_EXTOPTaSERKS_( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1532), (struct $10FBC_EXTOPT*)((uint8*)__FB_RHS__$1 + 1532) );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1568), 129, (void*)((uint8*)__FB_RHS__$1 + 1568), 129, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1697), 129, (void*)((uint8*)__FB_RHS__$1 + 1697), 129, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1826), 129, (void*)((uint8*)__FB_RHS__$1 + 1826), 129, 0 );
	*(int32*)((uint8*)THIS$1 + 1956) = *(int32*)((uint8*)__FB_RHS__$1 + 1956);
	*(int32*)((uint8*)THIS$1 + 1960) = *(int32*)((uint8*)__FB_RHS__$1 + 1960);
	*(int32*)((uint8*)THIS$1 + 1964) = *(int32*)((uint8*)__FB_RHS__$1 + 1964);
	fb_StrAssign( (void*)((uint8*)THIS$1 + 1968), 261, (void*)((uint8*)__FB_RHS__$1 + 1968), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2229), 261, (void*)((uint8*)__FB_RHS__$1 + 2229), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2490), 261, (void*)((uint8*)__FB_RHS__$1 + 2490), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 2751), 261, (void*)((uint8*)__FB_RHS__$1 + 2751), 261, 0 );
	fb_StrAssign( (void*)((uint8*)THIS$1 + 3012), 261, (void*)((uint8*)__FB_RHS__$1 + 3012), 261, 0 );
	__builtin_memcpy( (struct $10FBC_OBJINF*)((uint8*)THIS$1 + 3276), (struct $10FBC_OBJINF*)((uint8*)__FB_RHS__$1 + 3276), 8 );
	label$29:;
}

static void _ZN6FBCCTXD1Ev( struct $6FBCCTX* THIS$1 )
{
	label$32:;
	label$33:;
	_ZN10FBC_EXTOPTD1Ev( (struct $10FBC_EXTOPT*)((uint8*)THIS$1 + 1532) );
	_ZN9FBCIOFILED1Ev( (struct $9FBCIOFILE*)((uint8*)THIS$1 + 136) );
	fb_StrDelete( (FBSTRING*)((uint8*)THIS$1 + 8) );
}

static void FBCINIT( void )
{
	label$34:;
	*(int32*)((uint8*)&FBC$ + 20) = -1;
	*(int32*)((uint8*)&FBC$ + 24) = -1;
	*(int32*)((uint8*)&FBC$ + 32) = -1;
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 72), 64, 20, -1 );
	LISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 104), 16, 20, -1 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 156), 16 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 200), 64 );
	STRLISTINIT( (struct $5TLIST*)((uint8*)&FBC$ + 232), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 264), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 308), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 352), 16 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), 32 );
	STRSETINIT( (struct $7TSTRSET*)((uint8*)&FBC$ + 440), 32 );
	FBGLOBALINIT(  );
	int32 vr$10 = FBGETOPTION( 10 );
	*($7FB_LANG*)((uint8*)&FBC$ + 3276) = vr$10;
	*(int32*)((uint8*)&FBC$ + 68) = -1;
	label$35:;
}

static void HSETOUTNAME( void )
{
	label$36:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 484), 261 );
	if( vr$1 <= 0 ) goto label$39;
	{
		goto label$37;
	}
	label$39:;
	label$38:;
	int32 vr$2 = FBGETOPTION( 0 );
	if( vr$2 != 1 ) goto label$41;
	{
		FBSTRING TMP$39$2;
		FBSTRING TMP$40$2;
		FBSTRING TMP$41$2;
		FBSTRING* vr$4 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 745) );
		FBSTRING* vr$6 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 745) );
		__builtin_memset( &TMP$39$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$39$2, (void*)vr$6, -1, (void*)"lib", 4 );
		__builtin_memset( &TMP$40$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$40$2, (void*)vr$9, -1, (void*)vr$4, -1 );
		__builtin_memset( &TMP$41$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$41$2, (void*)vr$12, -1, (void*)".a", 3 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$15, -1, 0 );
		goto label$37;
	}
	label$41:;
	label$40:;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)((uint8*)&FBC$ + 745), 261, 0 );
	{
		int32 TMP$42$2;
		int32 vr$19 = FBGETOPTION( 0 );
		TMP$42$2 = vr$19;
		if( TMP$42$2 != 0 ) goto label$43;
		label$44:;
		{
			{
				int32 TMP$43$4;
				int32 vr$20 = FBGETOPTION( 3 );
				TMP$43$4 = vr$20;
				if( TMP$43$4 == 3 ) goto label$47;
				label$48:;
				if( TMP$43$4 == 1 ) goto label$47;
				label$49:;
				if( TMP$43$4 == 0 ) goto label$47;
				label$50:;
				if( TMP$43$4 != 4 ) goto label$46;
				label$47:;
				{
					FBSTRING TMP$45$5;
					__builtin_memset( &TMP$45$5, 0, 12 );
					FBSTRING* vr$24 = fb_StrConcat( &TMP$45$5, (void*)((uint8*)&FBC$ + 484), 261, (void*)".exe", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$24, -1, 0 );
				}
				goto label$45;
				label$46:;
				if( TMP$43$4 != 11 ) goto label$51;
				label$52:;
				{
					FBSTRING TMP$47$5;
					__builtin_memset( &TMP$47$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$47$5, (void*)((uint8*)&FBC$ + 484), 261, (void*)".html", 6 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$29, -1, 0 );
				}
				label$51:;
				label$45:;
			}
		}
		goto label$42;
		label$43:;
		if( TMP$42$2 != 2 ) goto label$53;
		label$54:;
		{
			{
				int32 TMP$48$4;
				int32 vr$31 = FBGETOPTION( 3 );
				TMP$48$4 = vr$31;
				if( TMP$48$4 == 1 ) goto label$57;
				label$58:;
				if( TMP$48$4 != 0 ) goto label$56;
				label$57:;
				{
					FBSTRING TMP$50$5;
					__builtin_memset( &TMP$50$5, 0, 12 );
					FBSTRING* vr$35 = fb_StrConcat( &TMP$50$5, (void*)((uint8*)&FBC$ + 484), 261, (void*)".dll", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$35, -1, 0 );
				}
				goto label$55;
				label$56:;
				if( TMP$48$4 == 2 ) goto label$60;
				label$61:;
				if( TMP$48$4 == 9 ) goto label$60;
				label$62:;
				if( TMP$48$4 == 5 ) goto label$60;
				label$63:;
				if( TMP$48$4 == 8 ) goto label$60;
				label$64:;
				if( TMP$48$4 == 10 ) goto label$60;
				label$65:;
				if( TMP$48$4 == 6 ) goto label$60;
				label$66:;
				if( TMP$48$4 != 7 ) goto label$59;
				label$60:;
				{
					FBSTRING TMP$52$5;
					FBSTRING TMP$53$5;
					FBSTRING TMP$54$5;
					FBSTRING* vr$38 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 484) );
					FBSTRING* vr$40 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 484) );
					__builtin_memset( &TMP$52$5, 0, 12 );
					FBSTRING* vr$43 = fb_StrConcat( &TMP$52$5, (void*)vr$40, -1, (void*)"lib", 4 );
					__builtin_memset( &TMP$53$5, 0, 12 );
					FBSTRING* vr$46 = fb_StrConcat( &TMP$53$5, (void*)vr$43, -1, (void*)vr$38, -1 );
					__builtin_memset( &TMP$54$5, 0, 12 );
					FBSTRING* vr$49 = fb_StrConcat( &TMP$54$5, (void*)vr$46, -1, (void*)".so", 4 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$49, -1, 0 );
				}
				goto label$55;
				label$59:;
				if( TMP$48$4 != 3 ) goto label$67;
				label$68:;
				{
					FBSTRING TMP$56$5;
					__builtin_memset( &TMP$56$5, 0, 12 );
					FBSTRING* vr$54 = fb_StrConcat( &TMP$56$5, (void*)((uint8*)&FBC$ + 484), 261, (void*)".dxe", 5 );
					fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)vr$54, -1, 0 );
				}
				label$67:;
				label$55:;
			}
		}
		label$53:;
		label$42:;
	}
	label$37:;
}

static void FBCEND( int32 ERRNUM$1 )
{
	label$69:;
	struct $11TSTRSETITEM* FILE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 156) );
	FILE$1 = (struct $11TSTRSETITEM*)vr$1;
	label$71:;
	if( FILE$1 == (struct $11TSTRSETITEM*)0u ) goto label$72;
	{
		int32 vr$4 = fb_FileKill( (FBSTRING*)FILE$1 );
		if( vr$4 == 0 ) goto label$74;
		{
		}
		label$74:;
		label$73:;
		void* vr$5 = LISTGETNEXT( (void*)FILE$1 );
		FILE$1 = (struct $11TSTRSETITEM*)vr$5;
	}
	goto label$71;
	label$72:;
	fb_End( ERRNUM$1 );
	label$70:;
}

static void FBCADDTEMP( FBSTRING* FILE$1 )
{
	label$75:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 156), FILE$1, 0 );
	label$76:;
}

static void FBCREMOVETEMP( FBSTRING* FILE$1 )
{
	label$77:;
	STRSETDEL( (struct $7TSTRSET*)((uint8*)&FBC$ + 156), (FBSTRING*)FILE$1 );
	label$78:;
}

static FBSTRING* FBCADDOBJ( FBSTRING* FILE$1 )
{
	FBSTRING* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$79:;
	FBSTRING* S$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
	S$1 = (FBSTRING*)vr$2;
	fb_StrAssign( (void*)S$1, -1, (void*)FILE$1, -1, 0 );
	fb$result$1 = S$1;
	label$80:;
	return fb$result$1;
}

static FBSTRING* HGET1STOUTPUTLINEFROMCOMMAND( FBSTRING* CMD$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$81:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpenPipe( (FBSTRING*)CMD$1, 2u, 0u, 0u, F$1, 0, (uint8*)0u );
	if( vr$2 == 0 ) goto label$84;
	{
		goto label$82;
	}
	label$84:;
	label$83:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_FileInput( F$1 );
	fb_InputString( (void*)&LN$1, -1, 0 );
	int32 vr$5 = fb_FileClose( F$1 );
	if( vr$5 == 0 ) goto label$85;
	void* vr$6 = fb_ErrorThrowAt( 303, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$6;
	label$85:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&LN$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	goto label$82;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$82:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static FBSTRING* FBCQUERYGCC( FBSTRING* OPTIONS$1 )
{
	FBSTRING TMP$61$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$86:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	FBCFINDBIN( 3, &PATH$1 );
	{
		int32 TMP$58$2;
		int32 vr$3 = FBGETCPUFAMILY(  );
		TMP$58$2 = vr$3;
		if( TMP$58$2 != 0 ) goto label$89;
		label$90:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$88;
		label$89:;
		if( TMP$58$2 != 1 ) goto label$91;
		label$92:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		goto label$88;
		label$91:;
		if( TMP$58$2 != 4 ) goto label$93;
		label$94:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$88;
		label$93:;
		if( TMP$58$2 == 5 ) goto label$96;
		label$97:;
		if( TMP$58$2 != 6 ) goto label$95;
		label$96:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		label$95:;
		label$88:;
	}
	__builtin_memset( &TMP$61$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$61$1, (void*)&PATH$1, -1, (void*)OPTIONS$1, -1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$11, -1, 0 );
	int32 FF$1;
	int32 vr$13 = fb_FileFree(  );
	FF$1 = vr$13;
	int32 vr$15 = fb_FileOpenPipe( (FBSTRING*)&PATH$1, 2u, 0u, 0u, FF$1, 0, (uint8*)0u );
	if( vr$15 == 0 ) goto label$99;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		goto label$87;
	}
	label$99:;
	label$98:;
	FBSTRING RET$1;
	__builtin_memset( &RET$1, 0, 12 );
	fb_FileInput( FF$1 );
	fb_InputString( (void*)&RET$1, -1, 0 );
	int32 vr$19 = fb_FileClose( FF$1 );
	if( vr$19 == 0 ) goto label$100;
	void* vr$20 = fb_ErrorThrowAt( 334, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$20;
	label$100:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&RET$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RET$1 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	goto label$87;
	fb_StrDelete( (FBSTRING*)&RET$1 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$87:;
	FBSTRING* vr$28 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$28;
}

static FBSTRING* FBCBUILDPATHTOLIBFILE( uint8* FILE$1 )
{
	FBSTRING TMP$62$1;
	FBSTRING TMP$63$1;
	FBSTRING TMP$66$1;
	FBSTRING TMP$67$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$101:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 12 );
	__builtin_memset( &TMP$62$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$62$1, (void*)((uint8*)&FBC$ + 2751), 261, (void*)"/", 2 );
	__builtin_memset( &TMP$63$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$63$1, (void*)vr$5, -1, (void*)FILE$1, 0 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$8, -1, 0 );
	int32 vr$10 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
	if( vr$10 == 0 ) goto label$104;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$104:;
	label$103:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	FBCFINDBIN( 3, &PATH$1 );
	{
		int32 TMP$64$2;
		int32 vr$16 = FBGETCPUFAMILY(  );
		TMP$64$2 = vr$16;
		if( TMP$64$2 != 0 ) goto label$106;
		label$107:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$105;
		label$106:;
		if( TMP$64$2 != 1 ) goto label$108;
		label$109:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		goto label$105;
		label$108:;
		if( TMP$64$2 != 4 ) goto label$110;
		label$111:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m32", 6, 0 );
		}
		goto label$105;
		label$110:;
		if( TMP$64$2 == 5 ) goto label$113;
		label$114:;
		if( TMP$64$2 != 6 ) goto label$112;
		label$113:;
		{
			fb_StrConcatAssign( (void*)&PATH$1, -1, (void*)" -m64", 6, 0 );
		}
		label$112:;
		label$105:;
	}
	__builtin_memset( &TMP$66$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$66$1, (void*)" -print-file-name=", 19, (void*)FILE$1, 0 );
	__builtin_memset( &TMP$67$1, 0, 12 );
	FBSTRING* vr$27 = fb_StrConcat( &TMP$67$1, (void*)&PATH$1, -1, (void*)vr$23, -1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$27, -1, 0 );
	FBSTRING* vr$30 = HGET1STOUTPUTLINEFROMCOMMAND( &PATH$1 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$30, -1, 0 );
	int32 vr$33 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$33 != 0 ) goto label$116;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$116:;
	label$115:;
	FBSTRING* vr$36 = HSTRIPPATH( (uint8*)*(uint8**)&FOUND$1 );
	int32 vr$38 = fb_StrCompare( (void*)&FOUND$1, -1, (void*)vr$36, -1 );
	if( vr$38 != 0 ) goto label$118;
	{
		fb_StrDelete( (FBSTRING*)&PATH$1 );
		fb_StrDelete( (FBSTRING*)&FOUND$1 );
		goto label$102;
	}
	label$118:;
	label$117:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$102:;
	FBSTRING* vr$46 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$46;
}

static FBSTRING* FBCFINDLIBFILE( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$119:;
	FBSTRING FOUND$1;
	__builtin_memset( &FOUND$1, 0, 12 );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrAssign( (void*)&FOUND$1, -1, (void*)vr$2, -1, 0 );
	int32 vr$5 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$5 <= 0 ) goto label$122;
	{
		int32 vr$6 = HFILEEXISTS( (uint8*)*(uint8**)&FOUND$1 );
		if( vr$6 != 0 ) goto label$124;
		{
			fb_StrAssign( (void*)&FOUND$1, -1, (void*)"", 1, 0 );
		}
		label$124:;
		label$123:;
	}
	label$122:;
	label$121:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$120:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

static void FBCADDDEFLIBPATH( FBSTRING* PATH$1 )
{
	label$125:;
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 440), PATH$1, -1 );
	label$126:;
}

static void FBCADDLIBPATHFOR( uint8* LIBNAME$1 )
{
	FBSTRING TMP$68$1;
	label$127:;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	__builtin_memset( &TMP$68$1, 0, 12 );
	FBSTRING* vr$2 = FBCBUILDPATHTOLIBFILE( LIBNAME$1 );
	fb_StrAssign( (void*)&TMP$68$1, -1, (void*)vr$2, -1, 0 );
	FBSTRING* vr$4 = HSTRIPFILENAME( (uint8*)*(uint8**)&TMP$68$1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$4, -1, 0 );
	fb_StrDelete( (FBSTRING*)&TMP$68$1 );
	FBSTRING* vr$8 = PATHSTRIPDIV( &PATH$1 );
	fb_StrAssign( (void*)&PATH$1, -1, (void*)vr$8, -1, 0 );
	int32 vr$11 = fb_StrLen( (void*)&PATH$1, -1 );
	if( vr$11 <= 0 ) goto label$130;
	{
		FBCADDDEFLIBPATH( &PATH$1 );
	}
	label$130:;
	label$129:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$128:;
}

static void FBCFINDBIN( int32 TOOL$1, FBSTRING* PATH$1 )
{
	label$131:;
	if( (*(int32*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) & 4) == 0 ) goto label$134;
	{
		fb_StrAssign( (void*)PATH$1, -1, (void*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 20), 261, 0 );
		goto label$132;
	}
	label$134:;
	label$133:;
	*($11FBCTOOLFLAG*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) = *(int32*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) & -9;
	if( (*(int32*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) & 2) == 0 ) goto label$136;
	{
		FBSTRING* vr$11 = fb_StrAllocTempDescZ( (uint8*)((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) );
		FBSTRING* vr$12 = fb_StrUcase2( (FBSTRING*)vr$11, 0 );
		FBSTRING* vr$13 = fb_GetEnviron( (FBSTRING*)vr$12 );
		fb_StrAssign( (void*)PATH$1, -1, (void*)vr$13, -1, 0 );
	}
	label$136:;
	label$135:;
	int32 vr$14 = fb_StrLen( (void*)PATH$1, -1 );
	if( vr$14 != 0 ) goto label$138;
	{
		FBSTRING TMP$69$2;
		FBSTRING TMP$70$2;
		__builtin_memset( &TMP$69$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$69$2, (void*)((uint8*)&FBC$ + 2229), 261, (void*)((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)), 16 );
		__builtin_memset( &TMP$70$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$70$2, (void*)vr$20, -1, (void*)"", 1 );
		fb_StrAssign( (void*)PATH$1, -1, (void*)vr$23, -1, 0 );
		int32 vr$25 = HFILEEXISTS( (uint8*)*(uint8**)PATH$1 );
		if( vr$25 != 0 ) goto label$140;
		{
			{
				int32 TMP$71$4;
				int32 vr$26 = FBGETOPTION( 2 );
				TMP$71$4 = vr$26;
				if( TMP$71$4 != 1 ) goto label$142;
				label$143:;
				{
					if( TOOL$1 != 0 ) goto label$145;
					{
						FBSTRING TMP$73$6;
						__builtin_memset( &TMP$73$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$73$6, -1, (void*)" -print-prog-name=as", 21, 0 );
						FBSTRING* vr$30 = FBCQUERYGCC( &TMP$73$6 );
						fb_StrAssign( (void*)PATH$1, -1, (void*)vr$30, -1, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$73$6 );
					}
					goto label$144;
					label$145:;
					if( TOOL$1 != 2 ) goto label$146;
					{
						FBSTRING TMP$75$6;
						__builtin_memset( &TMP$75$6, 0, 12 );
						fb_StrAssign( (void*)&TMP$75$6, -1, (void*)" -print-prog-name=ld", 21, 0 );
						FBSTRING* vr$35 = FBCQUERYGCC( &TMP$75$6 );
						fb_StrAssign( (void*)PATH$1, -1, (void*)vr$35, -1, 0 );
						fb_StrDelete( (FBSTRING*)&TMP$75$6 );
					}
					label$146:;
					label$144:;
				}
				goto label$141;
				label$142:;
				if( TMP$71$4 == 0 ) goto label$148;
				label$149:;
				if( TMP$71$4 != 3 ) goto label$147;
				label$148:;
				{
				}
				label$147:;
				label$141:;
			}
		}
		label$140:;
		label$139:;
		int32 vr$38 = HFILEEXISTS( (uint8*)*(uint8**)PATH$1 );
		if( vr$38 != 0 ) goto label$151;
		{
			int32 vr$39 = FBGETOPTION( 3 );
			if( vr$39 == 11 ) goto label$153;
			{
				int32 vr$41 = fb_StrLen( (void*)((uint8*)&FBC$ + 3012), 261 );
				if( vr$41 <= 0 ) goto label$155;
				{
					FBSTRING TMP$76$5;
					FBSTRING TMP$77$5;
					__builtin_memset( &TMP$76$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$76$5, (void*)((uint8*)&FBC$ + 3012), 261, (void*)((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)), 16 );
					__builtin_memset( &TMP$77$5, 0, 12 );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$77$5, (void*)vr$47, -1, (void*)"", 1 );
					fb_StrAssign( (void*)PATH$1, -1, (void*)vr$50, -1, 0 );
				}
				goto label$154;
				label$155:;
				{
					FBSTRING TMP$78$5;
					FBSTRING TMP$79$5;
					__builtin_memset( &TMP$78$5, 0, 12 );
					FBSTRING* vr$56 = fb_StrConcat( &TMP$78$5, (void*)((uint8*)&FBC$ + 1697), 129, (void*)((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)), 16 );
					__builtin_memset( &TMP$79$5, 0, 12 );
					FBSTRING* vr$59 = fb_StrConcat( &TMP$79$5, (void*)vr$56, -1, (void*)"", 1 );
					fb_StrAssign( (void*)PATH$1, -1, (void*)vr$59, -1, 0 );
				}
				label$154:;
			}
			goto label$152;
			label$153:;
			{
				fb_StrAssign( (void*)PATH$1, -1, (void*)((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)), 16, 0 );
			}
			label$152:;
			*($11FBCTOOLFLAG*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) = *(int32*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) | 8;
		}
		label$151:;
		label$150:;
	}
	label$138:;
	label$137:;
	fb_StrAssign( (void*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 20), 261, (void*)PATH$1, -1, 0 );
	*($11FBCTOOLFLAG*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) = *(int32*)(((int32)(struct $11FBCTOOLINFO*)FBCTOOLTB$ + (TOOL$1 * 284)) + 16) | 4;
	label$132:;
}

static int32 FBCRUNBIN( uint8* ACTION$1, int32 TOOL$1, FBSTRING* LN$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$156:;
	int32 RESULT$1;
	FBSTRING PATH$1;
	__builtin_memset( &PATH$1, 0, 12 );
	FBCFINDBIN( TOOL$1, &PATH$1 );
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$159;
	{
		FBSTRING TMP$81$2;
		FBSTRING TMP$83$2;
		FBSTRING TMP$84$2;
		__builtin_memset( &TMP$81$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$81$2, (void*)ACTION$1, 0, (void*)": ", 3 );
		fb_PrintString( 0, (FBSTRING*)vr$5, 2 );
		__builtin_memset( &TMP$83$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$83$2, (void*)&PATH$1, -1, (void*)" ", 2 );
		__builtin_memset( &TMP$84$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$84$2, (void*)vr$9, -1, (void*)LN$1, -1 );
		fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	}
	label$159:;
	label$158:;
	int32 vr$14 = fb_Exec( (FBSTRING*)&PATH$1, (FBSTRING*)LN$1 );
	RESULT$1 = vr$14;
	if( RESULT$1 != 0 ) goto label$161;
	{
		fb$result$1 = -1;
	}
	goto label$160;
	label$161:;
	if( RESULT$1 >= 0 ) goto label$162;
	{
		ERRREPORTEX( 91, (uint8*)*(uint8**)&PATH$1, -1, 6, (uint8*)0u );
	}
	goto label$160;
	label$162:;
	{
		if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$164;
		{
			FBSTRING TMP$87$3;
			FBSTRING TMP$88$3;
			FBSTRING TMP$89$3;
			FBSTRING TMP$90$3;
			FBSTRING* vr$15 = fb_IntToStr( RESULT$1 );
			__builtin_memset( &TMP$87$3, 0, 12 );
			FBSTRING* vr$19 = fb_StrConcat( &TMP$87$3, (void*)ACTION$1, 0, (void*)" failed: '", 11 );
			__builtin_memset( &TMP$88$3, 0, 12 );
			FBSTRING* vr$22 = fb_StrConcat( &TMP$88$3, (void*)vr$19, -1, (void*)&PATH$1, -1 );
			__builtin_memset( &TMP$89$3, 0, 12 );
			FBSTRING* vr$25 = fb_StrConcat( &TMP$89$3, (void*)vr$22, -1, (void*)"' terminated with exit code ", 29 );
			__builtin_memset( &TMP$90$3, 0, 12 );
			FBSTRING* vr$28 = fb_StrConcat( &TMP$90$3, (void*)vr$25, -1, (void*)vr$15, -1 );
			fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
		}
		label$164:;
		label$163:;
	}
	label$160:;
	fb_StrDelete( (FBSTRING*)&PATH$1 );
	label$157:;
	return fb$result$1;
}

static int32 CLEARDEFLIST( FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$92$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$165:;
	int32 FI$1;
	int32 vr$1 = fb_FileFree(  );
	FI$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 2u, 0u, 0u, FI$1, 0 );
	if( vr$2 == 0 ) goto label$168;
	{
		fb$result$1 = 0;
		goto label$166;
	}
	label$168:;
	label$167:;
	FBSTRING CLEANED$1;
	FBSTRING* vr$3 = HSTRIPEXT( DEFFILE$1 );
	__builtin_memset( &TMP$92$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$92$1, (void*)vr$3, -1, (void*)".clean.def", 11 );
	fb_StrInit( (void*)&CLEANED$1, -1, (void*)vr$6, -1, 0 );
	int32 FO$1;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = vr$8;
	int32 vr$10 = fb_FileOpen( (FBSTRING*)&CLEANED$1, 3u, 0u, 0u, FO$1, 0 );
	if( vr$10 == 0 ) goto label$170;
	{
		int32 vr$11 = fb_FileClose( FI$1 );
		if( vr$11 == 0 ) goto label$171;
		void* vr$12 = fb_ErrorThrowAt( 604, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
		goto *vr$12;
		label$171:;
		fb$result$1 = 0;
		fb_StrDelete( (FBSTRING*)&CLEANED$1 );
		goto label$166;
	}
	label$170:;
	label$169:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	label$172:;
	int32 vr$15 = fb_FileEof( FI$1 );
	if( vr$15 != 0 ) goto label$173;
	{
		int32 TMP$94$2;
		fb_FileLineInput( FI$1, (void*)&LN$1, -1, 0 );
		FBSTRING* vr$18 = fb_RIGHT( (FBSTRING*)&LN$1, 4 );
		int32 vr$19 = fb_StrCompare( (void*)vr$18, -1, (void*)"DATA", 5 );
		if( vr$19 != 0 ) goto label$175;
		{
			int32 vr$21 = fb_StrLen( (void*)&LN$1, -1 );
			FBSTRING* vr$24 = fb_LEFT( (FBSTRING*)&LN$1, vr$21 + -4 );
			fb_StrAssign( (void*)&LN$1, -1, (void*)vr$24, -1, 0 );
		}
		label$175:;
		label$174:;
		TMP$94$2 = FO$1;
		fb_PrintString( TMP$94$2, (FBSTRING*)&LN$1, 1 );
	}
	goto label$172;
	label$173:;
	int32 vr$27 = fb_FileClose( FO$1 );
	if( vr$27 == 0 ) goto label$176;
	void* vr$28 = fb_ErrorThrowAt( 619, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$28;
	label$176:;
	int32 vr$29 = fb_FileClose( FI$1 );
	if( vr$29 == 0 ) goto label$177;
	void* vr$30 = fb_ErrorThrowAt( 620, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$30;
	label$177:;
	fb_FileKill( (FBSTRING*)DEFFILE$1 );
	int32 vr$32 = rename( (uint8*)*(uint8**)&CLEANED$1, (uint8*)*(uint8**)DEFFILE$1 );
	fb$result$1 = -(vr$32 == 0);
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	goto label$166;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	fb_StrDelete( (FBSTRING*)&CLEANED$1 );
	label$166:;
	return fb$result$1;
}

static int32 HGENERATEEMPTYDEFFILE( FBSTRING* DEFFILE$1 )
{
	int32 TMP$95$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$178:;
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)DEFFILE$1, 3u, 0u, 0u, F$1, 0 );
	if( vr$2 == 0 ) goto label$181;
	{
		goto label$179;
	}
	label$181:;
	label$180:;
	TMP$95$1 = F$1;
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"EXPORTS", 7 );
	fb_PrintString( TMP$95$1, (FBSTRING*)vr$3, 1 );
	int32 vr$4 = fb_FileClose( F$1 );
	if( vr$4 == 0 ) goto label$182;
	void* vr$5 = fb_ErrorThrowAt( 634, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$5;
	label$182:;
	fb$result$1 = -1;
	label$179:;
	return fb$result$1;
}

static int32 MAKEIMPLIB( FBSTRING* DLLNAME$1, FBSTRING* DEFFILE$1 )
{
	FBSTRING TMP$99$1;
	FBSTRING TMP$100$1;
	FBSTRING TMP$101$1;
	FBSTRING TMP$105$1;
	FBSTRING TMP$106$1;
	FBSTRING TMP$107$1;
	FBSTRING TMP$108$1;
	FBSTRING TMP$109$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$183:;
	int32 vr$1 = CLEARDEFLIST( DEFFILE$1 );
	if( vr$1 != 0 ) goto label$186;
	{
		goto label$184;
	}
	label$186:;
	label$185:;
	int64 vr$3 = fb_FileLen( (uint8*)*(uint8**)DEFFILE$1 );
	if( vr$3 != 0ll ) goto label$188;
	{
		int32 vr$4 = HGENERATEEMPTYDEFFILE( DEFFILE$1 );
		if( vr$4 != 0 ) goto label$190;
		{
			goto label$184;
		}
		label$190:;
		label$189:;
	}
	label$188:;
	label$187:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	__builtin_memset( &TMP$99$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$99$1, (void*)"--def \x22", 8, (void*)DEFFILE$1, -1 );
	__builtin_memset( &TMP$100$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$100$1, (void*)vr$8, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$101$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$101$1, (void*)&LN$1, -1, (void*)vr$11, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$15, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" --dllname \x22", 13, 0 );
	FBSTRING* vr$19 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 484) );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$19, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$23 = HSTRIPFILENAME( (uint8*)((uint8*)&FBC$ + 484) );
	__builtin_memset( &TMP$105$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$105$1, (void*)" --output-lib \x22", 16, (void*)vr$23, -1 );
	__builtin_memset( &TMP$106$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$106$1, (void*)vr$26, -1, (void*)"lib", 4 );
	__builtin_memset( &TMP$107$1, 0, 12 );
	FBSTRING* vr$32 = fb_StrConcat( &TMP$107$1, (void*)vr$29, -1, (void*)DLLNAME$1, -1 );
	__builtin_memset( &TMP$108$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$108$1, (void*)vr$32, -1, (void*)".dll.a\x22", 8 );
	__builtin_memset( &TMP$109$1, 0, 12 );
	FBSTRING* vr$39 = fb_StrConcat( &TMP$109$1, (void*)&LN$1, -1, (void*)vr$35, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$39, -1, 0 );
	int32 vr$42 = FBCRUNBIN( (uint8*)"creating import library", 6, &LN$1 );
	if( vr$42 != 0 ) goto label$192;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$184;
	}
	label$192:;
	label$191:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$194;
	{
		FBCADDTEMP( DEFFILE$1 );
	}
	label$194:;
	label$193:;
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$184:;
	return fb$result$1;
}

static FBSTRING* HFINDLIB( uint8* FILE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$195:;
	FBSTRING FOUND$1;
	FBSTRING* vr$1 = FBCBUILDPATHTOLIBFILE( FILE$1 );
	fb_StrInit( (void*)&FOUND$1, -1, (void*)vr$1, -1, 0 );
	int32 vr$4 = fb_StrLen( (void*)&FOUND$1, -1 );
	if( vr$4 <= 0 ) goto label$198;
	{
		fb_StrAssign( (void*)&fb$result$1, -1, (void*)" \x22", 3, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)&FOUND$1, -1, 0 );
		fb_StrConcatAssign( (void*)&fb$result$1, -1, (void*)"\x22", 2, 0 );
	}
	goto label$197;
	label$198:;
	{
		ERRREPORTEX( 23, (uint8*)FILE$1, -1, 1, (uint8*)0u );
	}
	label$197:;
	fb_StrDelete( (FBSTRING*)&FOUND$1 );
	label$196:;
	FBSTRING* vr$11 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$11;
}

static int32 FBCLINKERISGOLD( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$199:;
	int32 vr$1 = FBGETOPTION( 3 );
	if( vr$1 != 7 ) goto label$202;
	{
		fb$result$1 = 0;
		goto label$200;
	}
	goto label$201;
	label$202:;
	{
		FBSTRING LDCMD$2;
		__builtin_memset( &LDCMD$2, 0, 12 );
		FBCFINDBIN( 2, &LDCMD$2 );
		fb_StrConcatAssign( (void*)&LDCMD$2, -1, (void*)" --version", 11, 0 );
		FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"GNU gold", 8 );
		FBSTRING* vr$7 = HGET1STOUTPUTLINEFROMCOMMAND( &LDCMD$2 );
		int32 vr$8 = fb_StrInstr( 1, (FBSTRING*)vr$7, (FBSTRING*)vr$5 );
		fb$result$1 = -(vr$8 > 0);
		fb_StrDelete( (FBSTRING*)&LDCMD$2 );
		goto label$200;
		fb_StrDelete( (FBSTRING*)&LDCMD$2 );
	}
	label$201:;
	label$200:;
	return fb$result$1;
}

static int32 FBCISUSINGGOLDLINKER( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$203:;
	int32 vr$1 = FBTARGETSUPPORTSELF(  );
	if( vr$1 == 0 ) goto label$206;
	{
		int32 vr$2 = FBCLINKERISGOLD(  );
		fb$result$1 = vr$2;
		goto label$204;
	}
	label$206:;
	label$205:;
	fb$result$1 = 0;
	goto label$204;
	label$204:;
	return fb$result$1;
}

static int32 HLINKFILES( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$207:;
	FBSTRING LDCLINE$1;
	__builtin_memset( &LDCLINE$1, 0, 12 );
	FBSTRING DLLNAME$1;
	__builtin_memset( &DLLNAME$1, 0, 12 );
	FBSTRING DEFFILE$1;
	__builtin_memset( &DEFFILE$1, 0, 12 );
	fb$result$1 = 0;
	HSETOUTNAME(  );
	{
		int32 TMP$114$2;
		int32 vr$4 = FBGETOPTION( 3 );
		TMP$114$2 = vr$4;
		if( TMP$114$2 != 0 ) goto label$210;
		label$211:;
		{
			{
				int32 TMP$115$4;
				int32 vr$5 = FBGETCPUFAMILY(  );
				TMP$115$4 = vr$5;
				if( TMP$115$4 != 0 ) goto label$213;
				label$214:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m i386pe ", 11, 0 );
				}
				goto label$212;
				label$213:;
				if( TMP$115$4 != 1 ) goto label$215;
				label$216:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m i386pep ", 12, 0 );
				}
				label$215:;
				label$212:;
			}
		}
		goto label$209;
		label$210:;
		if( TMP$114$2 != 2 ) goto label$217;
		label$218:;
		{
			{
				int32 TMP$118$4;
				int32 vr$8 = FBGETCPUFAMILY(  );
				TMP$118$4 = vr$8;
				if( TMP$118$4 != 0 ) goto label$220;
				label$221:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m elf_i386 ", 13, 0 );
				}
				goto label$219;
				label$220:;
				if( TMP$118$4 != 1 ) goto label$222;
				label$223:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m elf_x86_64 ", 15, 0 );
				}
				goto label$219;
				label$222:;
				if( TMP$118$4 != 2 ) goto label$224;
				label$225:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-m armelf_linux_eabi ", 22, 0 );
				}
				label$224:;
				label$219:;
			}
		}
		goto label$209;
		label$217:;
		if( TMP$114$2 != 9 ) goto label$226;
		label$227:;
		{
			{
				int32 TMP$122$4;
				int32 vr$12 = FBGETCPUFAMILY(  );
				TMP$122$4 = vr$12;
				if( TMP$122$4 != 0 ) goto label$229;
				label$230:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-arch i386 ", 12, 0 );
				}
				goto label$228;
				label$229:;
				if( TMP$122$4 != 1 ) goto label$231;
				label$232:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-arch x86_64 ", 14, 0 );
				}
				goto label$228;
				label$231:;
				if( TMP$122$4 != 2 ) goto label$233;
				label$234:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-arch armv6 ", 13, 0 );
				}
				label$233:;
				label$228:;
			}
		}
		label$226:;
		label$209:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"-o \x22", 5, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
	int32 vr$20 = FBGETOPTION( 3 );
	int32 vr$22 = FBGETOPTION( 0 );
	if( (-(vr$20 == 3) & -(vr$22 == 2)) == 0 ) goto label$236;
	{
		FBSTRING TMP$130$2;
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -I \x22lib", 9, 0 );
		__builtin_memset( &TMP$130$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$130$2, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
		FBSTRING* vr$30 = HSTRIPEXT( &TMP$130$2 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$30, -1, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"_il.a\x22", 7, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$130$2 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -U", 4, 0 );
		{
			FBSTRING* OBJFILE$3;
			void* vr$36 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
			OBJFILE$3 = (FBSTRING*)vr$36;
			label$237:;
			if( OBJFILE$3 == (FBSTRING*)0u ) goto label$238;
			{
				FBSTRING TMP$133$4;
				FBSTRING TMP$134$4;
				FBSTRING TMP$135$4;
				__builtin_memset( &TMP$133$4, 0, 12 );
				FBSTRING* vr$39 = fb_StrConcat( &TMP$133$4, (void*)" \x22", 3, (void*)OBJFILE$3, -1 );
				__builtin_memset( &TMP$134$4, 0, 12 );
				FBSTRING* vr$42 = fb_StrConcat( &TMP$134$4, (void*)vr$39, -1, (void*)"\x22", 2 );
				__builtin_memset( &TMP$135$4, 0, 12 );
				FBSTRING* vr$46 = fb_StrConcat( &TMP$135$4, (void*)&LDCLINE$1, -1, (void*)vr$42, -1 );
				fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$46, -1, 0 );
				void* vr$48 = LISTGETNEXT( (void*)OBJFILE$3 );
				OBJFILE$3 = (FBSTRING*)vr$48;
			}
			goto label$237;
			label$238:;
		}
		{
			FBSTRING* LIBFILE$3;
			void* vr$50 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 232) );
			LIBFILE$3 = (FBSTRING*)vr$50;
			if( LIBFILE$3 == (FBSTRING*)0u ) goto label$240;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -lc", 5, 0 );
			}
			label$240:;
			label$239:;
			label$241:;
			if( LIBFILE$3 == (FBSTRING*)0u ) goto label$242;
			{
				FBSTRING TMP$137$4;
				FBSTRING TMP$138$4;
				FBSTRING TMP$139$4;
				__builtin_memset( &TMP$137$4, 0, 12 );
				FBSTRING* vr$54 = fb_StrConcat( &TMP$137$4, (void*)" \x22", 3, (void*)LIBFILE$3, -1 );
				__builtin_memset( &TMP$138$4, 0, 12 );
				FBSTRING* vr$57 = fb_StrConcat( &TMP$138$4, (void*)vr$54, -1, (void*)"\x22", 2 );
				__builtin_memset( &TMP$139$4, 0, 12 );
				FBSTRING* vr$61 = fb_StrConcat( &TMP$139$4, (void*)&LDCLINE$1, -1, (void*)vr$57, -1 );
				fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$61, -1, 0 );
				void* vr$63 = LISTGETNEXT( (void*)LIBFILE$3 );
				LIBFILE$3 = (FBSTRING*)vr$63;
			}
			goto label$241;
			label$242:;
		}
		int32 vr$65 = FBCRUNBIN( (uint8*)"making DXE", 10, &LDCLINE$1 );
		fb$result$1 = vr$65;
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$208;
	}
	label$236:;
	label$235:;
	{
		uint32 TMP$141$2;
		int32 vr$69 = FBGETOPTION( 3 );
		TMP$141$2 = (uint32)vr$69;
		goto label$244;
		label$245:;
		{
			int32 vr$71 = fb_StrLen( (void*)((uint8*)&FBC$ + 1401), 129 );
			if( vr$71 != 0 ) goto label$247;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1401), 129, (void*)"console", 8, 0 );
			}
			goto label$246;
			label$247:;
			{
				int32 vr$74 = fb_StrCompare( (void*)((uint8*)&FBC$ + 1401), 129, (void*)"gui", 4 );
				if( vr$74 != 0 ) goto label$249;
				{
					fb_StrAssign( (void*)((uint8*)&FBC$ + 1401), 129, (void*)"windows", 8, 0 );
				}
				label$249:;
				label$248:;
			}
			label$246:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -subsystem ", 13, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 1401), 129, 0 );
			int32 vr$79 = FBGETOPTION( 0 );
			if( vr$79 != 2 ) goto label$251;
			{
				FBSTRING TMP$146$4;
				FBSTRING TMP$147$4;
				__builtin_memset( &TMP$147$4, 0, 12 );
				__builtin_memset( &TMP$146$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$146$4, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
				FBSTRING* vr$85 = HSTRIPEXT( &TMP$146$4 );
				fb_StrAssign( (void*)&TMP$147$4, -1, (void*)vr$85, -1, 0 );
				FBSTRING* vr$87 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$147$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$87, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$147$4 );
				fb_StrDelete( (FBSTRING*)&TMP$146$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --dll --enable-stdcall-fixup", 30, 0 );
				int32 vr$92 = FBGETCPUFAMILY(  );
				if( vr$92 != 0 ) goto label$253;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e _DllMainCRTStartup@12", 26, 0 );
				}
				goto label$252;
				label$253:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e DllMainCRTStartup", 22, 0 );
				}
				label$252:;
			}
			label$251:;
			label$250:;
		}
		goto label$243;
		label$254:;
		{
			int32 vr$95 = FBGETOPTION( 0 );
			if( vr$95 != 2 ) goto label$256;
			{
				FBSTRING TMP$151$4;
				FBSTRING TMP$152$4;
				__builtin_memset( &TMP$152$4, 0, 12 );
				__builtin_memset( &TMP$151$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$151$4, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
				FBSTRING* vr$101 = HSTRIPEXT( &TMP$151$4 );
				fb_StrAssign( (void*)&TMP$152$4, -1, (void*)vr$101, -1, 0 );
				FBSTRING* vr$103 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$152$4 );
				fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$103, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$152$4 );
				fb_StrDelete( (FBSTRING*)&TMP$151$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -shared -h", 12, 0 );
				FBSTRING* vr$109 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 484) );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$109, -1, 0 );
				FBSTRING* vr$112 = fb_LEFT( (FBSTRING*)&DLLNAME$1, 3 );
				int32 vr$113 = fb_StrCompare( (void*)vr$112, -1, (void*)"lib", 4 );
				if( vr$113 != 0 ) goto label$258;
				{
					int32 vr$115 = fb_StrLen( (void*)&DLLNAME$1, -1 );
					FBSTRING* vr$118 = fb_RIGHT( (FBSTRING*)&DLLNAME$1, vr$115 + -3 );
					fb_StrAssign( (void*)&DLLNAME$1, -1, (void*)vr$118, -1, 0 );
				}
				label$258:;
				label$257:;
			}
			goto label$255;
			label$256:;
			{
				{
					uint32 TMP$154$5;
					int32 vr$120 = FBGETOPTION( 3 );
					TMP$154$5 = (uint32)vr$120;
					goto label$260;
					label$261:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /libexec/ld-elf.so.1", 38, 0 );
					}
					goto label$259;
					label$262:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /libexec/ld-elf.so.2", 38, 0 );
					}
					goto label$259;
					label$263:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --dynamic-linker /lib/64/ld.so.1", 34, 0 );
					}
					goto label$259;
					label$264:;
					{
						{
							int32 TMP$158$7;
							int32 vr$124 = FBGETCPUFAMILY(  );
							TMP$158$7 = vr$124;
							if( TMP$158$7 != 0 ) goto label$266;
							label$267:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux.so.2", 36, 0 );
							}
							goto label$265;
							label$266:;
							if( TMP$158$7 != 1 ) goto label$268;
							label$269:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib64/ld-linux-x86-64.so.2", 45, 0 );
							}
							goto label$265;
							label$268:;
							if( TMP$158$7 != 2 ) goto label$270;
							label$271:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux-armhf.so.3", 42, 0 );
							}
							goto label$265;
							label$270:;
							if( TMP$158$7 != 3 ) goto label$272;
							label$273:;
							{
								fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /lib/ld-linux-aarch64.so.1", 44, 0 );
							}
							label$272:;
							label$265:;
						}
					}
					goto label$259;
					label$274:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /usr/libexec/ld.elf_so", 40, 0 );
					}
					goto label$259;
					label$275:;
					{
						fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -dynamic-linker /usr/libexec/ld.so", 36, 0 );
					}
					goto label$259;
					label$260:;
					static const void* tmp$786[9] = {
						&&label$264,
						&&label$259,
						&&label$259,
						&&label$261,
						&&label$262,
						&&label$263,
						&&label$275,
						&&label$259,
						&&label$274,
					};
					if( (TMP$154$5 - 2u) > 8u ) goto label$259;
					goto *tmp$786[TMP$154$5 - 2u];
					label$259:;
				}
			}
			label$255:;
			int32 vr$131 = FBGETOPTION( 0 );
			int32 vr$133 = FBGETOPTION( 33 );
			int32 vr$135 = FBGETOPTION( 3 );
			if( ((-(vr$131 == 2) | vr$133) & -(vr$135 != 7)) == 0 ) goto label$277;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --export-dynamic", 18, 0 );
			}
			label$277:;
			label$276:;
		}
		goto label$243;
		label$278:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared", 66, 0 );
		}
		goto label$243;
		label$279:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -O", 4, 0 );
			int32 vr$141 = FBGETOPTION( 8 );
			FBSTRING* vr$142 = fb_IntToStr( vr$141 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$142, -1, 0 );
			static uint8 EMSCRIPTEN_OPTIONS$3[4][32] = { "CASE_INSENSITIVE_FS=1", "TOTAL_MEMORY=67108864", "ALLOW_MEMORY_GROWTH=1", "RETAIN_COMPILER_SETTINGS=1" };
			static struct $8FBARRAY1IcE tmp$172$3 = { (uint8*)EMSCRIPTEN_OPTIONS$3, (uint8*)EMSCRIPTEN_OPTIONS$3, 128, 32, 1, 49, { { 4, 0, 3 } } };
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Wno-warn-absolute-paths", 26, 0 );
			{
				int32 I$4;
				I$4 = 0;
				label$283:;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -s ", 5, 0 );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((int32)(uint8*)EMSCRIPTEN_OPTIONS$3 + (I$4 << (5 & 31))), 32, 0 );
				}
				label$281:;
				I$4 = I$4 + 1;
				label$280:;
				if( I$4 <= 3 ) goto label$283;
				label$282:;
			}
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --shell-file", 14, 0 );
			FBSTRING* vr$151 = HFINDLIB( (uint8*)"fb_shell.html" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$151, -1, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --post-js", 11, 0 );
			FBSTRING* vr$154 = HFINDLIB( (uint8*)"fb_rtlib.js" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$154, -1, 0 );
			int32 vr$157 = fb_StrLen( (void*)((uint8*)&FBC$ + 1401), 129 );
			if( vr$157 != 0 ) goto label$285;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --post-js", 11, 0 );
				FBSTRING* vr$159 = HFINDLIB( (uint8*)"termlib_min.js" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$159, -1, 0 );
			}
			label$285:;
			label$284:;
		}
		goto label$243;
		label$244:;
		static const void* tmp$787[12] = {
			&&label$245,
			&&label$245,
			&&label$254,
			&&label$243,
			&&label$278,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$254,
			&&label$279,
		};
		if( TMP$141$2 > 11u ) goto label$243;
		goto *tmp$787[TMP$141$2 - 0u];
		label$243:;
	}
	int32 vr$161 = FBGETOPTION( 3 );
	if( vr$161 != 3 ) goto label$287;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -T \x22", 6, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2751), 261, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/i386go32.x\x22", 13, 0 );
	}
	goto label$286;
	label$287:;
	{
		int32 vr$166 = FBGETOPTION( 39 );
		int32 vr$167 = FBGETOPTION( 3 );
		int32 vr$170 = FBGETOPTION( 3 );
		int32 vr$173 = FBGETOPTION( 3 );
		int32 vr$176 = FBCISUSINGGOLDLINKER(  );
		if( ((((vr$166 & -(vr$167 != 9)) & -(vr$170 != 7)) & -(vr$173 != 11)) & ~vr$176) == 0 ) goto label$289;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -T \x22", 6, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2751), 261, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/fbextra.x\x22", 12, 0 );
		}
		label$289:;
		label$288:;
	}
	label$286:;
	{
		uint32 TMP$185$2;
		int32 vr$183 = FBGETOPTION( 3 );
		TMP$185$2 = (uint32)vr$183;
		goto label$291;
		label$292:;
		{
			int32 STACKSIZE$3;
			int32 vr$184 = FBGETOPTION( 38 );
			STACKSIZE$3 = vr$184;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --stack ", 10, 0 );
			FBSTRING* vr$186 = fb_IntToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$186, -1, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)",", 2, 0 );
			FBSTRING* vr$189 = fb_IntToStr( STACKSIZE$3 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$189, -1, 0 );
			int32 vr$191 = FBGETOPTION( 0 );
			if( vr$191 != 2 ) goto label$294;
			{
				FBSTRING TMP$188$4;
				__builtin_memset( &TMP$188$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$188$4, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
				FBSTRING* vr$196 = HSTRIPEXT( &TMP$188$4 );
				fb_StrAssign( (void*)&DEFFILE$1, -1, (void*)vr$196, -1, 0 );
				fb_StrConcatAssign( (void*)&DEFFILE$1, -1, (void*)".def", 5, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$188$4 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --output-def \x22", 16, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)&DEFFILE$1, -1, 0 );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
			}
			label$294:;
			label$293:;
		}
		goto label$290;
		label$295:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -e _WinMainCRTStartup", 23, 0 );
		}
		goto label$290;
		label$291:;
		static const void* tmp$788[5] = {
			&&label$292,
			&&label$292,
			&&label$290,
			&&label$290,
			&&label$295,
		};
		if( TMP$185$2 > 4u ) goto label$290;
		goto *tmp$788[TMP$185$2 - 0u];
		label$290:;
	}
	if( *(int32*)((uint8*)&FBC$ + 1960) == 0 ) goto label$297;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Bstatic", 10, 0 );
	}
	label$297:;
	label$296:;
	int32 vr$207 = fb_StrLen( (void*)((uint8*)&FBC$ + 1140), 261 );
	if( vr$207 <= 0 ) goto label$299;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -Map ", 7, 0 );
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 1140), 261, 0 );
	}
	label$299:;
	label$298:;
	int32 vr$211 = FBGETOPTION( 14 );
	if( vr$211 != 0 ) goto label$301;
	{
		int32 vr$212 = FBGETOPTION( 23 );
		if( vr$212 != 0 ) goto label$303;
		{
			int32 vr$213 = FBGETOPTION( 3 );
			int32 vr$215 = FBGETOPTION( 3 );
			if( (-(vr$213 != 9) & -(vr$215 != 11)) == 0 ) goto label$305;
			{
				if( *(int32*)((uint8*)&FBC$ + 1964) == 0 ) goto label$307;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -s", 4, 0 );
				}
				label$307:;
				label$306:;
			}
			label$305:;
			label$304:;
		}
		label$303:;
		label$302:;
	}
	label$301:;
	label$300:;
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$220 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 440) );
		I$2 = (struct $11TSTRSETITEM*)vr$220;
		FBSTRING L$2;
		__builtin_memset( &L$2, 0, 12 );
		int32 vr$222 = FBGETOPTION( 3 );
		if( vr$222 == 11 ) goto label$309;
		{
			fb_StrAssign( (void*)&L$2, -1, (void*)" -L \x22", 6, 0 );
		}
		goto label$308;
		label$309:;
		{
			fb_StrAssign( (void*)&L$2, -1, (void*)" -L\x22", 5, 0 );
		}
		label$308:;
		label$310:;
		if( I$2 == (struct $11TSTRSETITEM*)0u ) goto label$311;
		{
			FBSTRING TMP$197$3;
			FBSTRING TMP$198$3;
			FBSTRING TMP$199$3;
			__builtin_memset( &TMP$197$3, 0, 12 );
			FBSTRING* vr$230 = fb_StrConcat( &TMP$197$3, (void*)&L$2, -1, (void*)I$2, -1 );
			__builtin_memset( &TMP$198$3, 0, 12 );
			FBSTRING* vr$233 = fb_StrConcat( &TMP$198$3, (void*)vr$230, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$199$3, 0, 12 );
			FBSTRING* vr$237 = fb_StrConcat( &TMP$199$3, (void*)&LDCLINE$1, -1, (void*)vr$233, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$237, -1, 0 );
			void* vr$239 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$239;
		}
		goto label$310;
		label$311:;
		fb_StrDelete( (FBSTRING*)&L$2 );
	}
	{
		uint32 TMP$200$2;
		int32 vr$241 = FBGETOPTION( 3 );
		TMP$200$2 = (uint32)vr$241;
		goto label$313;
		label$314:;
		{
			int32 vr$242 = FBGETOPTION( 0 );
			if( vr$242 != 2 ) goto label$316;
			{
				FBSTRING* vr$243 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$243, -1, 0 );
			}
			goto label$315;
			label$316:;
			{
				FBSTRING* vr$245 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$245, -1, 0 );
				int32 vr$247 = FBGETOPTION( 23 );
				if( vr$247 == 0 ) goto label$318;
				{
					FBSTRING* vr$248 = HFINDLIB( (uint8*)"gcrt0.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$248, -1, 0 );
				}
				label$318:;
				label$317:;
			}
			label$315:;
		}
		goto label$312;
		label$319:;
		{
			int32 vr$250 = FBGETOPTION( 0 );
			if( vr$250 != 2 ) goto label$321;
			{
				FBSTRING* vr$251 = HFINDLIB( (uint8*)"dllcrt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$251, -1, 0 );
			}
			goto label$320;
			label$321:;
			{
				FBSTRING* vr$253 = HFINDLIB( (uint8*)"crt2.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$253, -1, 0 );
				int32 vr$255 = FBGETOPTION( 23 );
				if( vr$255 == 0 ) goto label$323;
				{
					FBSTRING* vr$256 = HFINDLIB( (uint8*)"gcrt2.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$256, -1, 0 );
				}
				label$323:;
				label$322:;
			}
			label$320:;
			FBSTRING* vr$258 = HFINDLIB( (uint8*)"crtbegin.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$258, -1, 0 );
		}
		goto label$312;
		label$324:;
		{
			int32 vr$260 = FBGETOPTION( 23 );
			if( vr$260 == 0 ) goto label$326;
			{
				FBSTRING* vr$261 = HFINDLIB( (uint8*)"gcrt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$261, -1, 0 );
			}
			goto label$325;
			label$326:;
			{
				FBSTRING* vr$263 = HFINDLIB( (uint8*)"crt0.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$263, -1, 0 );
			}
			label$325:;
		}
		goto label$312;
		label$327:;
		{
			int32 vr$265 = FBGETOPTION( 0 );
			if( vr$265 != 0 ) goto label$329;
			{
				int32 vr$266 = FBGETOPTION( 23 );
				if( vr$266 == 0 ) goto label$331;
				{
					{
						uint32 TMP$207$6;
						int32 vr$267 = FBGETOPTION( 3 );
						TMP$207$6 = (uint32)vr$267;
						goto label$333;
						label$334:;
						{
							FBSTRING* vr$268 = HFINDLIB( (uint8*)"gcrt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$268, -1, 0 );
						}
						goto label$332;
						label$335:;
						{
							FBSTRING* vr$270 = HFINDLIB( (uint8*)"gcrt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$270, -1, 0 );
						}
						goto label$332;
						label$333:;
						static const void* tmp$789[3] = {
							&&label$334,
							&&label$335,
							&&label$334,
						};
						if( (TMP$207$6 - 8u) > 2u ) goto label$335;
						goto *tmp$789[TMP$207$6 - 8u];
						label$332:;
					}
				}
				goto label$330;
				label$331:;
				{
					{
						uint32 TMP$209$6;
						int32 vr$272 = FBGETOPTION( 3 );
						TMP$209$6 = (uint32)vr$272;
						goto label$337;
						label$338:;
						{
							FBSTRING* vr$273 = HFINDLIB( (uint8*)"crt0.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$273, -1, 0 );
						}
						goto label$336;
						label$339:;
						{
							FBSTRING* vr$275 = HFINDLIB( (uint8*)"crt1.o" );
							fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$275, -1, 0 );
						}
						goto label$336;
						label$337:;
						static const void* tmp$790[3] = {
							&&label$338,
							&&label$339,
							&&label$338,
						};
						if( (TMP$209$6 - 8u) > 2u ) goto label$339;
						goto *tmp$790[TMP$209$6 - 8u];
						label$336:;
					}
				}
				label$330:;
			}
			label$329:;
			label$328:;
			int32 vr$277 = FBGETOPTION( 3 );
			if( vr$277 == 9 ) goto label$341;
			{
				int32 vr$278 = FBGETOPTION( 3 );
				if( vr$278 == 8 ) goto label$343;
				{
					FBSTRING* vr$279 = HFINDLIB( (uint8*)"crti.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$279, -1, 0 );
				}
				label$343:;
				label$342:;
				int32 vr$281 = FBGETOPTION( 37 );
				if( vr$281 == 0 ) goto label$345;
				{
					FBSTRING* vr$282 = HFINDLIB( (uint8*)"crtbeginS.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$282, -1, 0 );
				}
				goto label$344;
				label$345:;
				{
					FBSTRING* vr$284 = HFINDLIB( (uint8*)"crtbegin.o" );
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$284, -1, 0 );
				}
				label$344:;
			}
			label$341:;
			label$340:;
		}
		goto label$312;
		label$346:;
		{
			FBSTRING* vr$286 = HFINDLIB( (uint8*)"crt0.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$286, -1, 0 );
		}
		goto label$312;
		label$313:;
		static const void* tmp$791[11] = {
			&&label$319,
			&&label$314,
			&&label$327,
			&&label$324,
			&&label$346,
			&&label$327,
			&&label$327,
			&&label$327,
			&&label$327,
			&&label$327,
			&&label$327,
		};
		if( TMP$200$2 > 10u ) goto label$312;
		goto *tmp$791[TMP$200$2 - 0u];
		label$312:;
	}
	if( *(int32*)((uint8*)&FBC$ + 1956) != 0 ) goto label$348;
	{
		int32 vr$288 = FBGETOPTION( 3 );
		if( vr$288 == 11 ) goto label$350;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22", 3, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 2751), 261, 0 );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"/", 2, 0 );
			int32 vr$293 = FBGETOPTION( 37 );
			if( vr$293 == 0 ) goto label$352;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"fbrt0pic.o", 11, 0 );
			}
			goto label$351;
			label$352:;
			{
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"fbrt0.o", 8, 0 );
			}
			label$351:;
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)"\x22", 2, 0 );
		}
		label$350:;
		label$349:;
	}
	label$348:;
	label$347:;
	{
		FBSTRING* OBJFILE$2;
		void* vr$298 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
		OBJFILE$2 = (FBSTRING*)vr$298;
		label$353:;
		if( OBJFILE$2 == (FBSTRING*)0u ) goto label$354;
		{
			FBSTRING TMP$215$3;
			FBSTRING TMP$216$3;
			FBSTRING TMP$217$3;
			__builtin_memset( &TMP$215$3, 0, 12 );
			FBSTRING* vr$301 = fb_StrConcat( &TMP$215$3, (void*)" \x22", 3, (void*)OBJFILE$2, -1 );
			__builtin_memset( &TMP$216$3, 0, 12 );
			FBSTRING* vr$304 = fb_StrConcat( &TMP$216$3, (void*)vr$301, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$217$3, 0, 12 );
			FBSTRING* vr$308 = fb_StrConcat( &TMP$217$3, (void*)&LDCLINE$1, -1, (void*)vr$304, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$308, -1, 0 );
			void* vr$310 = LISTGETNEXT( (void*)OBJFILE$2 );
			OBJFILE$2 = (FBSTRING*)vr$310;
		}
		goto label$353;
		label$354:;
	}
	int32 vr$311 = FBGETOPTION( 3 );
	if( vr$311 == 9 ) goto label$356;
	{
		int32 vr$312 = FBGETOPTION( 3 );
		if( vr$312 == 11 ) goto label$358;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22-(\x22", 6, 0 );
		}
		label$358:;
		label$357:;
	}
	label$356:;
	label$355:;
	{
		FBSTRING* LIBFILE$2;
		void* vr$315 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 232) );
		LIBFILE$2 = (FBSTRING*)vr$315;
		label$359:;
		if( LIBFILE$2 == (FBSTRING*)0u ) goto label$360;
		{
			FBSTRING TMP$219$3;
			FBSTRING TMP$220$3;
			FBSTRING TMP$221$3;
			__builtin_memset( &TMP$219$3, 0, 12 );
			FBSTRING* vr$318 = fb_StrConcat( &TMP$219$3, (void*)" \x22", 3, (void*)LIBFILE$2, -1 );
			__builtin_memset( &TMP$220$3, 0, 12 );
			FBSTRING* vr$321 = fb_StrConcat( &TMP$220$3, (void*)vr$318, -1, (void*)"\x22", 2 );
			__builtin_memset( &TMP$221$3, 0, 12 );
			FBSTRING* vr$325 = fb_StrConcat( &TMP$221$3, (void*)&LDCLINE$1, -1, (void*)vr$321, -1 );
			fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$325, -1, 0 );
			void* vr$327 = LISTGETNEXT( (void*)LIBFILE$2 );
			LIBFILE$2 = (FBSTRING*)vr$327;
		}
		goto label$359;
		label$360:;
	}
	{
		struct $11TSTRSETITEM* I$2;
		void* vr$329 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 396) );
		I$2 = (struct $11TSTRSETITEM*)vr$329;
		int32 CHECKDLLNAME$2;
		int32 vr$330 = FBGETOPTION( 0 );
		CHECKDLLNAME$2 = -(vr$330 == 2);
		label$361:;
		if( I$2 == (struct $11TSTRSETITEM*)0u ) goto label$362;
		{
			int32 TMP$222$3;
			if( CHECKDLLNAME$2 == 0 ) goto label$363;
			int32 vr$335 = fb_StrCompare( (void*)I$2, -1, (void*)&DLLNAME$1, -1 );
			TMP$222$3 = -(vr$335 != 0);
			goto label$1451;
			label$363:;
			TMP$222$3 = -1;
			label$1451:;
			if( TMP$222$3 == 0 ) goto label$365;
			{
				FBSTRING TMP$224$4;
				FBSTRING TMP$225$4;
				__builtin_memset( &TMP$224$4, 0, 12 );
				FBSTRING* vr$341 = fb_StrConcat( &TMP$224$4, (void*)" -l", 4, (void*)I$2, -1 );
				__builtin_memset( &TMP$225$4, 0, 12 );
				FBSTRING* vr$345 = fb_StrConcat( &TMP$225$4, (void*)&LDCLINE$1, -1, (void*)vr$341, -1 );
				fb_StrAssign( (void*)&LDCLINE$1, -1, (void*)vr$345, -1, 0 );
			}
			label$365:;
			label$364:;
			void* vr$347 = LISTGETNEXT( (void*)I$2 );
			I$2 = (struct $11TSTRSETITEM*)vr$347;
		}
		goto label$361;
		label$362:;
	}
	int32 vr$348 = FBGETOPTION( 3 );
	if( vr$348 == 9 ) goto label$367;
	{
		int32 vr$349 = FBGETOPTION( 3 );
		if( vr$349 == 11 ) goto label$369;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" \x22-)\x22", 6, 0 );
		}
		goto label$368;
		label$369:;
		{
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -lfb", 6, 0 );
		}
		label$368:;
	}
	label$367:;
	label$366:;
	{
		uint32 TMP$228$2;
		int32 vr$352 = FBGETOPTION( 3 );
		TMP$228$2 = (uint32)vr$352;
		goto label$371;
		label$372:;
		{
			int32 vr$353 = FBGETOPTION( 37 );
			if( vr$353 == 0 ) goto label$374;
			{
				FBSTRING* vr$354 = HFINDLIB( (uint8*)"crtendS.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$354, -1, 0 );
			}
			goto label$373;
			label$374:;
			{
				FBSTRING* vr$356 = HFINDLIB( (uint8*)"crtend.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$356, -1, 0 );
			}
			label$373:;
			int32 vr$358 = FBGETOPTION( 3 );
			if( vr$358 == 8 ) goto label$376;
			{
				FBSTRING* vr$359 = HFINDLIB( (uint8*)"crtn.o" );
				fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$359, -1, 0 );
			}
			label$376:;
			label$375:;
		}
		goto label$370;
		label$377:;
		{
			FBSTRING* vr$361 = HFINDLIB( (uint8*)"crtend.o" );
			fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)vr$361, -1, 0 );
		}
		goto label$370;
		label$371:;
		static const void* tmp$792[11] = {
			&&label$377,
			&&label$370,
			&&label$372,
			&&label$370,
			&&label$370,
			&&label$372,
			&&label$372,
			&&label$372,
			&&label$372,
			&&label$370,
			&&label$372,
		};
		if( TMP$228$2 > 10u ) goto label$370;
		goto *tmp$792[TMP$228$2 - 0u];
		label$370:;
	}
	int32 vr$363 = FBGETOPTION( 3 );
	if( vr$363 != 9 ) goto label$379;
	{
		fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" -macosx_version_min 10.4", 26, 0 );
	}
	label$379:;
	label$378:;
	{
		uint32 TMP$233$2;
		int32 vr$365 = FBGETOPTION( 3 );
		TMP$233$2 = (uint32)vr$365;
		goto label$381;
		label$382:;
		{
			int32 TMP$234$3;
			int32 OUTTYPE$3;
			int32 vr$366 = FBGETOPTION( 0 );
			OUTTYPE$3 = vr$366;
			if( OUTTYPE$3 == 0 ) goto label$383;
			TMP$234$3 = -(OUTTYPE$3 == 2);
			goto label$1452;
			label$383:;
			TMP$234$3 = -1;
			label$1452:;
			if( TMP$234$3 == 0 ) goto label$385;
			{
				int32 TMP$235$4;
				int32 TMP$236$4;
				int32 TMP$237$4;
				int32 CPUFAMILY$4;
				int32 vr$368 = FBGETCPUFAMILY(  );
				CPUFAMILY$4 = vr$368;
				if( CPUFAMILY$4 == 1 ) goto label$386;
				TMP$235$4 = -(CPUFAMILY$4 == 3);
				goto label$1453;
				label$386:;
				TMP$235$4 = -1;
				label$1453:;
				if( TMP$235$4 != 0 ) goto label$387;
				TMP$236$4 = -(CPUFAMILY$4 == 5);
				goto label$1454;
				label$387:;
				TMP$236$4 = -1;
				label$1454:;
				if( TMP$236$4 != 0 ) goto label$388;
				TMP$237$4 = -(CPUFAMILY$4 == 6);
				goto label$1455;
				label$388:;
				TMP$237$4 = -1;
				label$1455:;
				if( TMP$237$4 == 0 ) goto label$390;
				{
					fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" --eh-frame-hdr", 16, 0 );
				}
				label$390:;
				label$389:;
			}
			label$385:;
			label$384:;
		}
		goto label$380;
		label$381:;
		static const void* tmp$793[9] = {
			&&label$382,
			&&label$380,
			&&label$380,
			&&label$382,
			&&label$382,
			&&label$382,
			&&label$382,
			&&label$382,
			&&label$382,
		};
		if( (TMP$233$2 - 2u) > 8u ) goto label$380;
		goto *tmp$793[TMP$233$2 - 2u];
		label$380:;
	}
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)" ", 2, 0 );
	fb_StrConcatAssign( (void*)&LDCLINE$1, -1, (void*)((uint8*)&FBC$ + 1544), -1, 0 );
	$7FBCTOOL LD$1;
	LD$1 = 2;
	int32 vr$376 = FBGETOPTION( 3 );
	if( vr$376 != 11 ) goto label$392;
	{
		LD$1 = 13;
	}
	label$392:;
	label$391:;
	int32 vr$378 = FBCRUNBIN( (uint8*)"linking", LD$1, &LDCLINE$1 );
	if( vr$378 != 0 ) goto label$394;
	{
		fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
		fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
		fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
		goto label$208;
	}
	label$394:;
	label$393:;
	{
		uint32 TMP$240$2;
		int32 vr$382 = FBGETOPTION( 3 );
		TMP$240$2 = (uint32)vr$382;
		goto label$396;
		label$397:;
		{
			int32 TMP$241$3;
			int32 F$3;
			int32 vr$383 = fb_FileFree(  );
			F$3 = vr$383;
			FBSTRING* vr$385 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 484) );
			int32 vr$386 = fb_FileOpen( (FBSTRING*)vr$385, 0u, 3u, 0u, F$3, 0 );
			if( vr$386 == 0 ) goto label$399;
			{
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$208;
			}
			label$399:;
			label$398:;
			int32 vr$390 = FBGETOPTION( 38 );
			TMP$241$3 = vr$390;
			int32 vr$392 = fb_FilePut( F$3, 533, (void*)&TMP$241$3, 4u );
			if( vr$392 == 0 ) goto label$400;
			void* vr$393 = fb_ErrorThrowAt( 1262, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
			goto *vr$393;
			label$400:;
			int32 vr$394 = fb_FileClose( F$3 );
			if( vr$394 == 0 ) goto label$401;
			void* vr$395 = fb_ErrorThrowAt( 1264, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
			goto *vr$395;
			label$401:;
		}
		goto label$395;
		label$402:;
		{
			int32 vr$396 = FBGETOPTION( 0 );
			if( vr$396 != 2 ) goto label$404;
			{
				int32 vr$399 = MAKEIMPLIB( &DLLNAME$1, &DEFFILE$1 );
				if( vr$399 != 0 ) goto label$406;
				{
					fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
					fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
					fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
					goto label$208;
				}
				label$406:;
				label$405:;
			}
			label$404:;
			label$403:;
		}
		goto label$395;
		label$407:;
		{
			FBSTRING TMP$253$3;
			FBSTRING TMP$258$3;
			FBSTRING TMP$259$3;
			FBSTRING CXBEPATH$3;
			__builtin_memset( &CXBEPATH$3, 0, 12 );
			FBSTRING CXBECLINE$3;
			__builtin_memset( &CXBECLINE$3, 0, 12 );
			int32 RES$3;
			int32 vr$406 = fb_StrLen( (void*)((uint8*)&FBC$ + 1826), 129 );
			if( vr$406 != 0 ) goto label$409;
			{
				FBSTRING TMP$242$4;
				__builtin_memset( &TMP$242$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$242$4, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
				FBSTRING* vr$411 = HSTRIPEXT( &TMP$242$4 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1826), 129, (void*)vr$411, -1, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$242$4 );
			}
			label$409:;
			label$408:;
			fb_StrAssign( (void*)&CXBECLINE$3, -1, (void*)"-TITLE:\x22", 9, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)((uint8*)&FBC$ + 1826), 129, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22 ", 3, 0 );
			int32 vr$418 = FBGETOPTION( 14 );
			if( vr$418 == 0 ) goto label$411;
			{
				FBSTRING TMP$248$4;
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"-DUMPINFO:\x22", 12, 0 );
				__builtin_memset( &TMP$248$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$248$4, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
				FBSTRING* vr$424 = HSTRIPEXT( &TMP$248$4 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)vr$424, -1, 0 );
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)".cxbe\x22", 7, 0 );
				fb_StrDelete( (FBSTRING*)&TMP$248$4 );
			}
			label$411:;
			label$410:;
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" -OUT:\x22", 8, 0 );
			__builtin_memset( &TMP$253$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$253$3, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
			FBSTRING* vr$433 = HSTRIPEXT( &TMP$253$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)vr$433, -1, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)".xbe", 5, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22", 2, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$253$3 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" \x22", 3, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)((uint8*)&FBC$ + 484), 261, 0 );
			fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)"\x22", 2, 0 );
			if( *(int32*)((uint8*)&FBC$ + 56) != 0 ) goto label$413;
			{
				fb_StrConcatAssign( (void*)&CXBECLINE$3, -1, (void*)" >nul", 6, 0 );
			}
			label$413:;
			label$412:;
			if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$415;
			{
				FBSTRING* vr$443 = fb_StrAllocTempDescZEx( (uint8*)"cxbe: ", 6 );
				fb_PrintString( 0, (FBSTRING*)vr$443, 2 );
				fb_PrintString( 0, (FBSTRING*)&CXBECLINE$3, 1 );
			}
			label$415:;
			label$414:;
			FBCFINDBIN( 9, &CXBEPATH$3 );
			__builtin_memset( &TMP$258$3, 0, 12 );
			FBSTRING* vr$450 = fb_StrConcat( &TMP$258$3, (void*)&CXBEPATH$3, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$259$3, 0, 12 );
			FBSTRING* vr$453 = fb_StrConcat( &TMP$259$3, (void*)vr$450, -1, (void*)&CXBECLINE$3, -1 );
			int32 vr$454 = fb_Shell( (FBSTRING*)vr$453 );
			RES$3 = vr$454;
			if( RES$3 == 0 ) goto label$417;
			{
				if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$419;
				{
					FBSTRING TMP$261$5;
					FBSTRING* vr$455 = fb_IntToStr( RES$3 );
					__builtin_memset( &TMP$261$5, 0, 12 );
					FBSTRING* vr$458 = fb_StrConcat( &TMP$261$5, (void*)"cxbe failed: exit code ", 24, (void*)vr$455, -1 );
					fb_PrintString( 0, (FBSTRING*)vr$458, 1 );
				}
				label$419:;
				label$418:;
				fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
				fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
				fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
				fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
				fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
				goto label$208;
			}
			label$417:;
			label$416:;
			FBSTRING* vr$465 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 484) );
			fb_FileKill( (FBSTRING*)vr$465 );
			fb_StrDelete( (FBSTRING*)&CXBECLINE$3 );
			fb_StrDelete( (FBSTRING*)&CXBEPATH$3 );
		}
		goto label$395;
		label$396:;
		static const void* tmp$794[5] = {
			&&label$402,
			&&label$402,
			&&label$395,
			&&label$397,
			&&label$407,
		};
		if( TMP$240$2 > 4u ) goto label$395;
		goto *tmp$794[TMP$240$2 - 0u];
		label$395:;
	}
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&DEFFILE$1 );
	fb_StrDelete( (FBSTRING*)&DLLNAME$1 );
	fb_StrDelete( (FBSTRING*)&LDCLINE$1 );
	label$208:;
	return fb$result$1;
}

static void HREADOBJINFO( void )
{
	label$420:;
	FBSTRING DAT$1;
	__builtin_memset( &DAT$1, 0, 12 );
	int32 LANG$1;
	label$422:;
	{
		{
			uint32 TMP$262$3;
			int32 vr$2 = OBJINFOREADNEXT( &DAT$1 );
			TMP$262$3 = (uint32)vr$2;
			goto label$426;
			label$427:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), &DAT$1, 0 );
			}
			goto label$425;
			label$428:;
			{
				STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 440), &DAT$1, 0 );
			}
			goto label$425;
			label$429:;
			{
				if( *(int32*)((uint8*)&FBC$ + 3280) != 0 ) goto label$431;
				{
					uint8* vr$7 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 20, (uint8*)vr$7, -1, 1, (uint8*)0u );
					*(int32*)((uint8*)&FBC$ + 3280) = -1;
					FBSETOPTION( 35, -1 );
				}
				label$431:;
				label$430:;
			}
			goto label$425;
			label$432:;
			{
				FBSETOPTION( 36, -1 );
			}
			goto label$425;
			label$433:;
			{
				$7FB_LANG vr$8 = FBGETLANGID( (uint8*)*(uint8**)&DAT$1 );
				LANG$1 = vr$8;
				if( LANG$1 != -1 ) goto label$435;
				{
					LANG$1 = 0;
				}
				label$435:;
				label$434:;
				if( LANG$1 == *(int32*)((uint8*)&FBC$ + 3276) ) goto label$437;
				{
					uint8* vr$9 = OBJINFOGETFILENAME(  );
					ERRREPORTWARNEX( 21, (uint8*)vr$9, -1, 1, (uint8*)0u );
					*($7FB_LANG*)((uint8*)&FBC$ + 3276) = LANG$1;
					FBSETOPTION( 10, LANG$1 );
				}
				label$437:;
				label$436:;
			}
			goto label$425;
			label$438:;
			{
				goto label$423;
			}
			goto label$425;
			label$426:;
			static const void* tmp$795[5] = {
				&&label$427,
				&&label$428,
				&&label$429,
				&&label$432,
				&&label$433,
			};
			if( TMP$262$3 > 4u ) goto label$438;
			goto *tmp$795[TMP$262$3 - 0u];
			label$425:;
		}
	}
	label$424:;
	goto label$422;
	label$423:;
	OBJINFOREADEND(  );
	fb_StrDelete( (FBSTRING*)&DAT$1 );
	label$421:;
}

static void HCOLLECTOBJINFO( void )
{
	label$439:;
	FBSTRING* S$1;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
	S$1 = (FBSTRING*)vr$1;
	label$441:;
	if( S$1 == (FBSTRING*)0u ) goto label$442;
	{
		OBJINFOREADOBJ( S$1 );
		HREADOBJINFO(  );
		void* vr$2 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$2;
	}
	goto label$441;
	label$442:;
	void* vr$4 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 396) );
	I$1 = (struct $11TSTRSETITEM*)vr$4;
	label$443:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$444;
	{
		if( *(int32*)((uint8*)I$1 + 12) != 0 ) goto label$446;
		{
			OBJINFOREADLIB( (FBSTRING*)I$1, (struct $5TLIST*)((uint8*)&FBC$ + 440) );
			HREADOBJINFO(  );
		}
		label$446:;
		label$445:;
		void* vr$9 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$9;
	}
	goto label$443;
	label$444:;
	void* vr$11 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 232) );
	S$1 = (FBSTRING*)vr$11;
	label$447:;
	if( S$1 == (FBSTRING*)0u ) goto label$448;
	{
		OBJINFOREADLIBFILE( S$1 );
		HREADOBJINFO(  );
		void* vr$12 = LISTGETNEXT( (void*)S$1 );
		S$1 = (FBSTRING*)vr$12;
	}
	goto label$447;
	label$448:;
	label$440:;
}

static void HFATALINVALIDOPTION( FBSTRING* ARG$1, int32 IS_SOURCE$1 )
{
	FBSTRING TMP$263$1;
	FBSTRING TMP$264$1;
	FBSTRING TMP$265$1;
	int32 TMP$266$1;
	label$449:;
	if( IS_SOURCE$1 == 0 ) goto label$451;
	TMP$266$1 = 0;
	goto label$1456;
	label$451:;
	TMP$266$1 = -1;
	label$1456:;
	__builtin_memset( &TMP$265$1, 0, 12 );
	__builtin_memset( &TMP$263$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$263$1, (void*)"\x22", 2, (void*)ARG$1, -1 );
	__builtin_memset( &TMP$264$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$264$1, (void*)vr$3, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$265$1, -1, (void*)vr$6, -1, 0 );
	ERRREPORTEX( 81, (uint8*)*(uint8**)&TMP$265$1, TMP$266$1, 1, (uint8*)0u );
	fb_StrDelete( (FBSTRING*)&TMP$265$1 );
	FBCEND( 1 );
	label$450:;
}

static void HCHECKWAITINGOBJFILE( void )
{
	label$452:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 8), -1 );
	if( vr$1 <= 0 ) goto label$455;
	{
		FBSTRING TMP$267$2;
		FBSTRING TMP$268$2;
		__builtin_memset( &TMP$268$2, 0, 12 );
		__builtin_memset( &TMP$267$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$267$2, (void*)"-o ", 4, (void*)((uint8*)&FBC$ + 8), -1 );
		fb_StrAssign( (void*)&TMP$268$2, -1, (void*)vr$6, -1, 0 );
		ERRREPORTEX( 292, (uint8*)*(uint8**)&TMP$268$2, -1, 1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&TMP$268$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)"", 1, 0 );
	}
	label$455:;
	label$454:;
	label$453:;
}

static void HSETIOFILE( struct $9FBCIOFILE* MODULE$1, FBSTRING* SRCFILE$1, int32 IS_RC$1 )
{
	label$456:;
	fb_StrAssign( (void*)MODULE$1, -1, (void*)SRCFILE$1, -1, 0 );
	int32 vr$3 = fb_StrLen( (void*)((uint8*)&FBC$ + 8), -1 );
	if( vr$3 != 0 ) goto label$459;
	{
		*(int32*)((uint8*)MODULE$1 + 16) = 0;
		if( IS_RC$1 == 0 ) goto label$461;
		{
			FBSTRING TMP$270$3;
			__builtin_memset( &TMP$270$3, 0, 12 );
			FBSTRING* vr$7 = fb_StrConcat( &TMP$270$3, (void*)SRCFILE$1, -1, (void*)".o", 3 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)vr$7, -1, 0 );
		}
		goto label$460;
		label$461:;
		{
			FBSTRING TMP$271$3;
			FBSTRING* vr$9 = HSTRIPEXT( SRCFILE$1 );
			__builtin_memset( &TMP$271$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$271$3, (void*)vr$9, -1, (void*)".o", 3 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)vr$12, -1, 0 );
		}
		label$460:;
		*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) = MODULE$1;
	}
	goto label$458;
	label$459:;
	{
		*(int32*)((uint8*)MODULE$1 + 16) = -1;
	}
	label$458:;
	FBSTRING* vr$16 = FBCADDOBJ( (FBSTRING*)((uint8*)&FBC$ + 8) );
	*(FBSTRING**)((uint8*)MODULE$1 + 12) = vr$16;
	fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)"", 1, 0 );
	label$457:;
}

static void HADDBAS( FBSTRING* BASFILE$1 )
{
	label$462:;
	void* vr$1 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	HSETIOFILE( (struct $9FBCIOFILE*)vr$1, BASFILE$1, 0 );
	label$463:;
}

static void HPARSEGNUTRIPLET( FBSTRING* ARG$1, int32 SEPARATOR$1, int32* OS$1, int32* CPUTYPE$1 )
{
	label$464:;
	{
		int32 I$2;
		I$2 = 0;
		label$469:;
		{
			FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)((int32)(struct $11FBGNUOSINFO*)GNUOSMAP$ + (I$2 << (3 & 31))) );
			int32 vr$2 = fb_StrInstr( 1, (FBSTRING*)ARG$1, (FBSTRING*)vr$1 );
			if( vr$2 <= 0 ) goto label$471;
			{
				*OS$1 = *(int32*)(((int32)(struct $11FBGNUOSINFO*)GNUOSMAP$ + (I$2 << (3 & 31))) + 4);
				goto label$468;
			}
			label$471:;
			label$470:;
		}
		label$467:;
		I$2 = I$2 + 1;
		label$466:;
		if( I$2 <= 11 ) goto label$469;
		label$468:;
	}
	if( SEPARATOR$1 <= 0 ) goto label$473;
	{
		FBSTRING ARCH$2;
		FBSTRING* vr$7 = fb_LEFT( (FBSTRING*)ARG$1, SEPARATOR$1 + -1 );
		fb_StrInit( (void*)&ARCH$2, -1, (void*)vr$7, -1, 0 );
		{
			int32 I$3;
			I$3 = 0;
			label$477:;
			{
				int32 vr$11 = fb_StrCompare( (void*)&ARCH$2, -1, *(void**)((int32)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$3 << (3 & 31))), 0 );
				if( vr$11 != 0 ) goto label$479;
				{
					*CPUTYPE$1 = *(int32*)(((int32)(struct $13FBGNUARCHINFO*)GNUARCHMAP$ + (I$3 << (3 & 31))) + 4);
					goto label$476;
				}
				label$479:;
				label$478:;
			}
			label$475:;
			I$3 = I$3 + 1;
			label$474:;
			if( I$3 <= 16 ) goto label$477;
			label$476:;
		}
		fb_StrDelete( (FBSTRING*)&ARCH$2 );
	}
	label$473:;
	label$472:;
	label$465:;
}

static void HPARSETARGETARG( FBSTRING* ARG$1, int32* OS$1, int32* CPUTYPE$1, int32* IS_GNU_TRIPLET$1 )
{
	label$488:;
	*OS$1 = -1;
	*CPUTYPE$1 = -1;
	*IS_GNU_TRIPLET$1 = 0;
	FBSTRING LCASEARG$1;
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
	fb_StrInit( (void*)&LCASEARG$1, -1, (void*)vr$3, -1, 0 );
	{
		int32 I$2;
		I$2 = 0;
		label$493:;
		{
			int32 vr$7 = fb_StrCompare( (void*)&LCASEARG$1, -1, *(void**)((int32)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 12)), 0 );
			if( vr$7 != 0 ) goto label$495;
			{
				*OS$1 = *(int32*)(((int32)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 12)) + 4);
				*CPUTYPE$1 = *(int32*)(((int32)(struct $12FBOSARCHINFO*)FBOSARCHMAP$ + (I$2 * 12)) + 8);
				fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
				goto label$489;
			}
			label$495:;
			label$494:;
		}
		label$491:;
		I$2 = I$2 + 1;
		label$490:;
		if( I$2 <= 11 ) goto label$493;
		label$492:;
	}
	int32 SEPARATOR$1;
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"-", 1 );
	int32 vr$15 = fb_StrInstr( 1, (FBSTRING*)ARG$1, (FBSTRING*)vr$14 );
	SEPARATOR$1 = vr$15;
	if( SEPARATOR$1 <= 0 ) goto label$497;
	{
		FBSTRING TMP$308$2;
		FBSTRING TMP$309$2;
		__builtin_memset( &TMP$308$2, 0, 12 );
		FBSTRING* vr$19 = fb_LEFT( (FBSTRING*)&LCASEARG$1, SEPARATOR$1 + -1 );
		fb_StrAssign( (void*)&TMP$308$2, -1, (void*)vr$19, -1, 0 );
		int32 vr$22 = FBIDENTIFYOS( &TMP$308$2 );
		*OS$1 = vr$22;
		fb_StrDelete( (FBSTRING*)&TMP$308$2 );
		__builtin_memset( &TMP$309$2, 0, 12 );
		int32 vr$27 = fb_StrLen( (void*)&LCASEARG$1, -1 );
		FBSTRING* vr$30 = fb_RIGHT( (FBSTRING*)&LCASEARG$1, vr$27 - SEPARATOR$1 );
		fb_StrAssign( (void*)&TMP$309$2, -1, (void*)vr$30, -1, 0 );
		int32 vr$33 = FBCPUTYPEFROMCPUFAMILYID( &TMP$309$2 );
		*CPUTYPE$1 = vr$33;
		fb_StrDelete( (FBSTRING*)&TMP$309$2 );
	}
	label$497:;
	label$496:;
	if( (-(*OS$1 < 0) & -(*CPUTYPE$1 < 0)) == 0 ) goto label$499;
	{
		HPARSEGNUTRIPLET( ARG$1, SEPARATOR$1, OS$1, CPUTYPE$1 );
		*IS_GNU_TRIPLET$1 = -1;
	}
	label$499:;
	label$498:;
	fb_StrDelete( (FBSTRING*)&LCASEARG$1 );
	label$489:;
}

static void HANDLEOPT( int32 OPTID$1, FBSTRING* ARG$1, int32 IS_SOURCE$1 )
{
	label$500:;
	{
		uint32 TMP$312$2;
		TMP$312$2 = (uint32)OPTID$1;
		goto label$503;
		label$504:;
		{
			FBCADDOBJ( ARG$1 );
		}
		goto label$502;
		label$505:;
		{
			int32 vr$0 = fb_StrCompare( (void*)ARG$1, -1, (void*)"native", 7 );
			*(int32*)((uint8*)&FBC$ + 28) = -(vr$0 == 0);
			int32 vr$2 = FBIDENTIFYFBCARCH( ARG$1 );
			*(int32*)((uint8*)&FBC$ + 24) = vr$2;
			if( *(int32*)((uint8*)&FBC$ + 24) >= 0 ) goto label$507;
			{
				FBSTRING TMP$315$4;
				FBSTRING TMP$316$4;
				__builtin_memset( &TMP$316$4, 0, 12 );
				__builtin_memset( &TMP$315$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$315$4, (void*)"-arch ", 7, (void*)ARG$1, -1 );
				fb_StrAssign( (void*)&TMP$316$4, -1, (void*)vr$6, -1, 0 );
				HFATALINVALIDOPTION( &TMP$316$4, IS_SOURCE$1 );
				fb_StrDelete( (FBSTRING*)&TMP$316$4 );
			}
			label$507:;
			label$506:;
		}
		goto label$502;
		label$508:;
		{
			{
				FBSTRING TMP$317$4;
				fb_StrInit( (void*)&TMP$317$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$12 = fb_StrCompare( (void*)&TMP$317$4, -1, (void*)"att", 4 );
				if( vr$12 != 0 ) goto label$510;
				label$511:;
				{
					*(int32*)((uint8*)&FBC$ + 32) = 1;
				}
				goto label$509;
				label$510:;
				int32 vr$14 = fb_StrCompare( (void*)&TMP$317$4, -1, (void*)"intel", 6 );
				if( vr$14 != 0 ) goto label$512;
				label$513:;
				{
					*(int32*)((uint8*)&FBC$ + 32) = 0;
				}
				goto label$509;
				label$512:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$514:;
				label$509:;
				fb_StrDelete( (FBSTRING*)&TMP$317$4 );
			}
		}
		goto label$502;
		label$515:;
		{
			HADDBAS( ARG$1 );
		}
		goto label$502;
		label$516:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 3012), 261, (void*)ARG$1, -1, 0 );
		}
		goto label$502;
		label$517:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 52) = -1;
		}
		goto label$502;
		label$518:;
		{
			*(int32*)((uint8*)&FBC$ + 52) = -1;
		}
		goto label$502;
		label$519:;
		{
			FBADDPREDEFINE( ARG$1 );
		}
		goto label$502;
		label$520:;
		{
			FBSETOPTION( 0, 2 );
		}
		goto label$502;
		label$521:;
		{
			FBSETOPTION( 16, -1 );
			FBSETOPTION( 21, -1 );
		}
		goto label$502;
		label$522:;
		{
			FBSETOPTION( 22, -1 );
		}
		goto label$502;
		label$523:;
		{
			FBSETOPTION( 15, -1 );
		}
		goto label$502;
		label$524:;
		{
			FBSETOPTION( 13, -1 );
		}
		goto label$502;
		label$525:;
		{
			FBSETOPTION( 14, -1 );
		}
		goto label$502;
		label$526:;
		{
			FBSETOPTION( 19, -1 );
		}
		goto label$502;
		label$527:;
		{
			FBSETOPTION( 20, -1 );
		}
		goto label$502;
		label$528:;
		{
			FBSETOPTION( 21, -1 );
		}
		goto label$502;
		label$529:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1006), 129, (void*)ARG$1, -1, 0 );
		}
		goto label$502;
		label$530:;
		{
			FBSETOPTION( 16, -1 );
			FBSETOPTION( 17, -1 );
			FBSETOPTION( 21, -1 );
		}
		goto label$502;
		label$531:;
		{
			FBSETOPTION( 16, -1 );
			FBSETOPTION( 17, -1 );
			FBSETOPTION( 18, -1 );
			FBSETOPTION( 19, -1 );
			FBSETOPTION( 22, -1 );
			FBSETOPTION( 20, -1 );
			FBSETOPTION( 21, -1 );
		}
		goto label$502;
		label$532:;
		{
			FBSETOPTION( 33, -1 );
		}
		goto label$502;
		label$533:;
		{
			int32 VALUE$3;
			$7FB_LANG vr$19 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$19;
			if( VALUE$3 != -1 ) goto label$535;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$535:;
			label$534:;
			int32 vr$20 = FBGETOPTION( 11 );
			if( (IS_SOURCE$1 & vr$20) == 0 ) goto label$537;
			{
				ERRREPORTWARN( 30, (uint8*)0u, 1, (uint8*)0u );
			}
			goto label$536;
			label$537:;
			{
				FBSETOPTION( 10, VALUE$3 );
				FBSETOPTION( 11, -1 );
				*($7FB_LANG*)((uint8*)&FBC$ + 3276) = VALUE$3;
				if( IS_SOURCE$1 == 0 ) goto label$539;
				{
					FBSETOPTION( 12, VALUE$3 );
				}
				label$539:;
				label$538:;
			}
			label$536:;
		}
		goto label$502;
		label$540:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$320$4;
				FBSTRING* vr$22 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$320$4, -1, (void*)vr$22, -1, 0 );
				int32 vr$25 = fb_StrCompare( (void*)&TMP$320$4, -1, (void*)"PRECISE", 8 );
				if( vr$25 != 0 ) goto label$542;
				label$543:;
				{
					VALUE$3 = 0;
				}
				goto label$541;
				label$542:;
				int32 vr$27 = fb_StrCompare( (void*)&TMP$320$4, -1, (void*)"FAST", 5 );
				if( vr$27 != 0 ) goto label$544;
				label$545:;
				{
					VALUE$3 = 1;
				}
				goto label$541;
				label$544:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$546:;
				label$541:;
				fb_StrDelete( (FBSTRING*)&TMP$320$4 );
			}
			FBSETOPTION( 6, VALUE$3 );
		}
		goto label$502;
		label$547:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$323$4;
				FBSTRING* vr$29 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$323$4, -1, (void*)vr$29, -1, 0 );
				int32 vr$32 = fb_StrCompare( (void*)&TMP$323$4, -1, (void*)"X87", 4 );
				if( vr$32 == 0 ) goto label$550;
				label$551:;
				int32 vr$34 = fb_StrCompare( (void*)&TMP$323$4, -1, (void*)"FPU", 4 );
				if( vr$34 != 0 ) goto label$549;
				label$550:;
				{
					VALUE$3 = 0;
				}
				goto label$548;
				label$549:;
				int32 vr$36 = fb_StrCompare( (void*)&TMP$323$4, -1, (void*)"SSE", 4 );
				if( vr$36 != 0 ) goto label$552;
				label$553:;
				{
					VALUE$3 = 1;
				}
				goto label$548;
				label$552:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$554:;
				label$548:;
				fb_StrDelete( (FBSTRING*)&TMP$323$4 );
			}
			FBSETOPTION( 5, VALUE$3 );
		}
		goto label$502;
		label$555:;
		{
			FBSETOPTION( 13, -1 );
			FBSETOPTION( 14, -1 );
			FBSETOPTION( 15, -1 );
		}
		goto label$502;
		label$556:;
		{
			{
				FBSTRING TMP$327$4;
				FBSTRING* vr$38 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$327$4, -1, (void*)vr$38, -1, 0 );
				int32 vr$41 = fb_StrCompare( (void*)&TMP$327$4, -1, (void*)"gas", 4 );
				if( vr$41 != 0 ) goto label$558;
				label$559:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 0;
				}
				goto label$557;
				label$558:;
				int32 vr$43 = fb_StrCompare( (void*)&TMP$327$4, -1, (void*)"gcc", 4 );
				if( vr$43 != 0 ) goto label$560;
				label$561:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 1;
				}
				goto label$557;
				label$560:;
				int32 vr$45 = fb_StrCompare( (void*)&TMP$327$4, -1, (void*)"llvm", 5 );
				if( vr$45 != 0 ) goto label$562;
				label$563:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 2;
				}
				goto label$557;
				label$562:;
				int32 vr$47 = fb_StrCompare( (void*)&TMP$327$4, -1, (void*)"gas64", 6 );
				if( vr$47 != 0 ) goto label$564;
				label$565:;
				{
					*(int32*)((uint8*)&FBC$ + 20) = 3;
				}
				goto label$557;
				label$564:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$566:;
				label$557:;
				fb_StrDelete( (FBSTRING*)&TMP$327$4 );
			}
		}
		goto label$502;
		label$567:;
		{
			*(int32*)((uint8*)&FBC$ + 64) = -1;
		}
		goto label$502;
		label$568:;
		{
			FBSTRING TMP$331$3;
			__builtin_memset( &TMP$331$3, 0, 12 );
			FBSTRING* vr$50 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$331$3, -1, (void*)vr$50, -1, 0 );
			FBADDINCLUDEPATH( &TMP$331$3 );
			fb_StrDelete( (FBSTRING*)&TMP$331$3 );
		}
		goto label$502;
		label$569:;
		{
			FBADDPREINCLUDE( ARG$1 );
		}
		goto label$502;
		label$570:;
		{
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 264), ARG$1, 0 );
		}
		goto label$502;
		label$571:;
		{
			int32 VALUE$3;
			$7FB_LANG vr$56 = FBGETLANGID( (uint8*)*(uint8**)ARG$1 );
			VALUE$3 = vr$56;
			if( VALUE$3 != -1 ) goto label$573;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$573:;
			label$572:;
			int32 vr$57 = FBGETOPTION( 11 );
			if( vr$57 != 0 ) goto label$575;
			{
				FBSETOPTION( 10, VALUE$3 );
				*($7FB_LANG*)((uint8*)&FBC$ + 3276) = VALUE$3;
				if( IS_SOURCE$1 == 0 ) goto label$577;
				{
					FBSETOPTION( 12, VALUE$3 );
				}
				label$577:;
				label$576:;
			}
			label$575:;
			label$574:;
		}
		goto label$502;
		label$578:;
		{
			FBSETOPTION( 0, 1 );
		}
		goto label$502;
		label$579:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 745), 261, (void*)ARG$1, -1, 0 );
			*(int32*)((uint8*)&FBC$ + 1136) = -1;
		}
		goto label$502;
		label$580:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1140), 261, (void*)ARG$1, -1, 0 );
		}
		goto label$502;
		label$581:;
		{
			int32 VALUE$3;
			int32 vr$60 = fb_StrCompare( (void*)ARG$1, -1, (void*)"inf", 4 );
			if( vr$60 != 0 ) goto label$583;
			{
				VALUE$3 = 2147483647;
			}
			goto label$582;
			label$583:;
			{
				int32 vr$61 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = vr$61;
				if( VALUE$3 > 0 ) goto label$585;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$585:;
				label$584:;
			}
			label$582:;
			FBSETOPTION( 26, VALUE$3 );
		}
		goto label$502;
		label$586:;
		{
			FBSETOPTION( 35, -1 );
			*(int32*)((uint8*)&FBC$ + 3280) = -1;
		}
		goto label$502;
		label$587:;
		{
			*(int32*)((uint8*)&FBC$ + 1956) = -1;
		}
		goto label$502;
		label$588:;
		{
			FBSETOPTION( 25, 0 );
		}
		goto label$502;
		label$589:;
		{
			FBSTRING TMP$333$3;
			struct $7FBARRAYI8FBSTRINGE LIBS$3;
			*(FBSTRING**)&LIBS$3 = (FBSTRING*)0u;
			*(FBSTRING**)((uint8*)&LIBS$3 + 4) = (FBSTRING*)0u;
			*(int32*)((uint8*)&LIBS$3 + 8) = 0;
			*(int32*)((uint8*)&LIBS$3 + 12) = 12;
			*(int32*)((uint8*)&LIBS$3 + 16) = 0;
			*(int32*)((uint8*)&LIBS$3 + 20) = 8;
			__builtin_memset( (void*)((uint8*)&LIBS$3 + 24), 0, 96 );
			__builtin_memset( &TMP$333$3, 0, 12 );
			fb_StrAssign( (void*)&TMP$333$3, -1, (void*)",", 2, 0 );
			HSPLITSTR( ARG$1, &TMP$333$3, &LIBS$3 );
			fb_StrDelete( (FBSTRING*)&TMP$333$3 );
			{
				int32 I$4;
				int32 vr$69 = fb_ArrayLBound( (struct $7FBARRAYIKvE*)&LIBS$3, 1 );
				I$4 = vr$69;
				int32 TMP$334$4;
				int32 vr$71 = fb_ArrayUBound( (struct $7FBARRAYIKvE*)&LIBS$3, 1 );
				TMP$334$4 = vr$71;
				goto label$590;
				label$593:;
				{
					int32 vr$75 = fb_StrLen( (void*)((I$4 * 12) + *(int32*)&LIBS$3), -1 );
					if( vr$75 <= 0 ) goto label$595;
					{
						STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 352), (FBSTRING*)((I$4 * 12) + *(int32*)&LIBS$3), 0 );
					}
					label$595:;
					label$594:;
				}
				label$591:;
				I$4 = I$4 + 1;
				label$590:;
				if( I$4 <= TMP$334$4 ) goto label$593;
				label$592:;
			}
			fb_ArrayStrErase( (struct $7FBARRAYIvE*)&LIBS$3 );
		}
		goto label$502;
		label$596:;
		{
			FBSETOPTION( 39, 0 );
		}
		goto label$502;
		label$597:;
		{
			*(int32*)((uint8*)&FBC$ + 1964) = 0;
		}
		goto label$502;
		label$598:;
		{
			HCHECKWAITINGOBJFILE(  );
			if( *(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) == (struct $9FBCIOFILE*)0u ) goto label$600;
			{
				fb_StrAssign( *(void**)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) + 12), -1, (void*)ARG$1, -1, 0 );
				*(int32*)((uint8*)*(struct $9FBCIOFILE**)((uint8*)&FBC$ + 4) + 16) = -1;
			}
			goto label$599;
			label$600:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 8), -1, (void*)ARG$1, -1, 0 );
			}
			label$599:;
		}
		goto label$502;
		label$601:;
		{
			int32 VALUE$3;
			int32 vr$85 = fb_StrCompare( (void*)ARG$1, -1, (void*)"max", 4 );
			if( vr$85 != 0 ) goto label$603;
			{
				VALUE$3 = 3;
			}
			goto label$602;
			label$603:;
			{
				int32 vr$86 = fb_VALINT( (FBSTRING*)ARG$1 );
				VALUE$3 = vr$86;
				if( VALUE$3 >= 0 ) goto label$605;
				{
					VALUE$3 = 0;
				}
				goto label$604;
				label$605:;
				if( VALUE$3 <= 3 ) goto label$606;
				{
					VALUE$3 = 3;
				}
				label$606:;
				label$604:;
			}
			label$602:;
			FBSETOPTION( 8, VALUE$3 );
		}
		goto label$502;
		label$607:;
		{
			FBSTRING TMP$336$3;
			__builtin_memset( &TMP$336$3, 0, 12 );
			FBSTRING* vr$88 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)&TMP$336$3, -1, (void*)vr$88, -1, 0 );
			STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 308), &TMP$336$3, 0 );
			fb_StrDelete( (FBSTRING*)&TMP$336$3 );
		}
		goto label$502;
		label$608:;
		{
			FBSETOPTION( 37, -1 );
		}
		goto label$502;
		label$609:;
		{
			FBSETOPTION( 1, -1 );
			*(int32*)((uint8*)&FBC$ + 36) = -1;
		}
		goto label$502;
		label$610:;
		{
			FBSTRING* vr$93 = PATHSTRIPDIV( ARG$1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1968), 261, (void*)vr$93, -1, 0 );
			HREPLACESLASH( (uint8*)((uint8*)&FBC$ + 1968), 47 );
		}
		goto label$502;
		label$611:;
		{
			{
				FBSTRING TMP$337$4;
				fb_StrInit( (void*)&TMP$337$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$98 = fb_StrCompare( (void*)&TMP$337$4, -1, (void*)"host", 5 );
				if( vr$98 != 0 ) goto label$613;
				label$614:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 0;
				}
				goto label$612;
				label$613:;
				int32 vr$100 = fb_StrCompare( (void*)&TMP$337$4, -1, (void*)"target", 7 );
				if( vr$100 != 0 ) goto label$615;
				label$616:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 1;
				}
				goto label$612;
				label$615:;
				int32 vr$102 = fb_StrCompare( (void*)&TMP$337$4, -1, (void*)"x", 2 );
				if( vr$102 != 0 ) goto label$617;
				label$618:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 2;
				}
				goto label$612;
				label$617:;
				int32 vr$104 = fb_StrCompare( (void*)&TMP$337$4, -1, (void*)"fblibdir", 9 );
				if( vr$104 != 0 ) goto label$619;
				label$620:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 3;
				}
				goto label$612;
				label$619:;
				int32 vr$106 = fb_StrCompare( (void*)&TMP$337$4, -1, (void*)"sha-1", 6 );
				if( vr$106 != 0 ) goto label$621;
				label$622:;
				{
					*(int32*)((uint8*)&FBC$ + 68) = 4;
				}
				goto label$612;
				label$621:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$623:;
				label$612:;
				fb_StrDelete( (FBSTRING*)&TMP$337$4 );
			}
		}
		goto label$502;
		label$624:;
		{
			FBSETOPTION( 23, -1 );
		}
		goto label$502;
		label$625:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 36) = -1;
			*(int32*)((uint8*)&FBC$ + 40) = -1;
		}
		goto label$502;
		label$626:;
		{
			*(int32*)((uint8*)&FBC$ + 40) = -1;
		}
		goto label$502;
		label$627:;
		{
			FBSETOPTION( 0, 3 );
			*(int32*)((uint8*)&FBC$ + 44) = -1;
			*(int32*)((uint8*)&FBC$ + 48) = -1;
		}
		goto label$502;
		label$628:;
		{
			*(int32*)((uint8*)&FBC$ + 48) = -1;
		}
		goto label$502;
		label$629:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1401), 129, (void*)ARG$1, -1, 0 );
			{
				FBSTRING TMP$343$4;
				fb_StrInit( (void*)&TMP$343$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$111 = fb_StrCompare( (void*)&TMP$343$4, -1, (void*)"gui", 4 );
				if( vr$111 != 0 ) goto label$631;
				label$632:;
				{
					FBSETOPTION( 41, 1 );
				}
				label$631:;
				label$630:;
				fb_StrDelete( (FBSTRING*)&TMP$343$4 );
			}
		}
		goto label$502;
		label$633:;
		{
			FBSETOPTION( 40, -1 );
		}
		goto label$502;
		label$634:;
		{
			*(int32*)((uint8*)&FBC$ + 1960) = -1;
		}
		goto label$502;
		label$635:;
		{
			*(int32*)((uint8*)&FBC$ + 1964) = -1;
		}
		goto label$502;
		label$636:;
		{
			int32 vr$113 = fb_VALINT( (FBSTRING*)ARG$1 );
			FBSETOPTION( 38, vr$113 << (10 & 31) );
		}
		goto label$502;
		label$637:;
		{
			int32 OS$3;
			__builtin_memset( &OS$3, 0, 4 );
			int32 CPUTYPE$3;
			__builtin_memset( &CPUTYPE$3, 0, 4 );
			int32 IS_GNU_TRIPLET$3;
			__builtin_memset( &IS_GNU_TRIPLET$3, 0, 4 );
			HPARSETARGETARG( ARG$1, &OS$3, &CPUTYPE$3, &IS_GNU_TRIPLET$3 );
			if( (-(OS$3 < 0) | -(CPUTYPE$3 < 0)) == 0 ) goto label$639;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$639:;
			label$638:;
			FBSETOPTION( 3, OS$3 );
			FBSETOPTION( 4, CPUTYPE$3 );
			if( ((-(OS$3 != 2) | -(CPUTYPE$3 != 15)) | IS_GNU_TRIPLET$3) == 0 ) goto label$641;
			{
				FBSTRING TMP$344$4;
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1568), 129, (void*)ARG$1, -1, 0 );
				__builtin_memset( &TMP$344$4, 0, 12 );
				FBSTRING* vr$132 = fb_StrConcat( &TMP$344$4, (void*)((uint8*)&FBC$ + 1568), 129, (void*)"-", 2 );
				fb_StrAssign( (void*)((uint8*)&FBC$ + 1697), 129, (void*)vr$132, -1, 0 );
			}
			label$641:;
			label$640:;
		}
		goto label$502;
		label$642:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1826), 129, (void*)ARG$1, -1, 0 );
		}
		goto label$502;
		label$643:;
		{
			*(int32*)((uint8*)&FBC$ + 56) = -1;
		}
		goto label$502;
		label$644:;
		{
			int32 VALUE$3;
			{
				FBSTRING TMP$345$4;
				FBSTRING* vr$135 = fb_StrUcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$345$4, -1, (void*)vr$135, -1, 0 );
				int32 vr$138 = fb_StrCompare( (void*)&TMP$345$4, -1, (void*)"NONE", 5 );
				if( vr$138 == 0 ) goto label$647;
				label$648:;
				int32 vr$140 = fb_StrCompare( (void*)&TMP$345$4, -1, (void*)"0", 2 );
				if( vr$140 != 0 ) goto label$646;
				label$647:;
				{
					VALUE$3 = 0;
				}
				goto label$645;
				label$646:;
				int32 vr$142 = fb_StrCompare( (void*)&TMP$345$4, -1, (void*)"1", 2 );
				if( vr$142 != 0 ) goto label$649;
				label$650:;
				{
					VALUE$3 = 1;
				}
				goto label$645;
				label$649:;
				int32 vr$144 = fb_StrCompare( (void*)&TMP$345$4, -1, (void*)"2", 2 );
				if( vr$144 != 0 ) goto label$651;
				label$652:;
				{
					VALUE$3 = 2;
				}
				goto label$645;
				label$651:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$653:;
				label$645:;
				fb_StrDelete( (FBSTRING*)&TMP$345$4 );
			}
			FBSETOPTION( 7, VALUE$3 );
		}
		goto label$502;
		label$654:;
		{
			if( IS_SOURCE$1 == 0 ) goto label$656;
			{
				if( *(int32*)((uint8*)&FBC$ + 60) != 0 ) goto label$658;
				{
					HPRINTVERSION( *(int32*)((uint8*)&FBC$ + 56) );
				}
				label$658:;
				label$657:;
			}
			label$656:;
			label$655:;
			*(int32*)((uint8*)&FBC$ + 60) = -1;
		}
		goto label$502;
		label$659:;
		{
			int32 VALUE$3;
			VALUE$3 = -1;
			{
				FBSTRING TMP$348$4;
				fb_StrInit( (void*)&TMP$348$4, -1, (void*)ARG$1, -1, 0 );
				int32 vr$148 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"all", 4 );
				if( vr$148 != 0 ) goto label$661;
				label$662:;
				{
					VALUE$3 = 0;
				}
				goto label$660;
				label$661:;
				int32 vr$150 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"none", 5 );
				if( vr$150 != 0 ) goto label$663;
				label$664:;
				{
					VALUE$3 = 4;
				}
				goto label$660;
				label$663:;
				int32 vr$152 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"param", 6 );
				if( vr$152 != 0 ) goto label$665;
				label$666:;
				{
					int32 vr$153 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$153 | 2 );
				}
				goto label$660;
				label$665:;
				int32 vr$156 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"escape", 7 );
				if( vr$156 != 0 ) goto label$667;
				label$668:;
				{
					int32 vr$157 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$157 | 1 );
				}
				goto label$660;
				label$667:;
				int32 vr$160 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"next", 5 );
				if( vr$160 != 0 ) goto label$669;
				label$670:;
				{
					int32 vr$161 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$161 | 8 );
				}
				goto label$660;
				label$669:;
				int32 vr$164 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"signedness", 11 );
				if( vr$164 != 0 ) goto label$671;
				label$672:;
				{
					int32 vr$165 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$165 | 32 );
				}
				goto label$660;
				label$671:;
				int32 vr$168 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"constness", 10 );
				if( vr$168 != 0 ) goto label$673;
				label$674:;
				{
					int32 vr$169 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$169 | 128 );
					VALUE$3 = 0;
				}
				goto label$660;
				label$673:;
				int32 vr$172 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"funcptr", 8 );
				if( vr$172 != 0 ) goto label$675;
				label$676:;
				{
					int32 vr$173 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$173 | 64 );
					VALUE$3 = 0;
				}
				goto label$660;
				label$675:;
				int32 vr$176 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"suffix", 7 );
				if( vr$176 != 0 ) goto label$677;
				label$678:;
				{
					int32 vr$177 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$177 | 256 );
				}
				goto label$660;
				label$677:;
				int32 vr$180 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"pedantic", 9 );
				if( vr$180 != 0 ) goto label$679;
				label$680:;
				{
					FBSETOPTION( 27, -1769 );
					if( VALUE$3 <= 1 ) goto label$682;
					{
						VALUE$3 = 1;
					}
					label$682:;
					label$681:;
				}
				goto label$660;
				label$679:;
				int32 vr$182 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"error", 6 );
				if( vr$182 != 0 ) goto label$683;
				label$684:;
				{
					int32 vr$183 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$183 | 512 );
				}
				goto label$660;
				label$683:;
				int32 vr$186 = fb_StrCompare( (void*)&TMP$348$4, -1, (void*)"upcast", 7 );
				if( vr$186 != 0 ) goto label$685;
				label$686:;
				{
					int32 vr$187 = FBGETOPTION( 27 );
					FBSETOPTION( 27, vr$187 | 1024 );
				}
				goto label$660;
				label$685:;
				{
					int32 vr$189 = fb_VALINT( (FBSTRING*)ARG$1 );
					VALUE$3 = vr$189;
				}
				label$687:;
				label$660:;
				fb_StrDelete( (FBSTRING*)&TMP$348$4 );
			}
			if( VALUE$3 < 0 ) goto label$689;
			{
				FBSETOPTION( 24, VALUE$3 );
			}
			label$689:;
			label$688:;
		}
		goto label$502;
		label$690:;
		{
			FBSTRING TMP$361$3;
			FBSTRING TMP$362$3;
			FBSTRING TMP$363$3;
			FBSTRING* vr$192 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$361$3, 0, 12 );
			FBSTRING* vr$195 = fb_StrConcat( &TMP$361$3, (void*)" ", 2, (void*)vr$192, -1 );
			__builtin_memset( &TMP$362$3, 0, 12 );
			FBSTRING* vr$198 = fb_StrConcat( &TMP$362$3, (void*)vr$195, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$363$3, 0, 12 );
			FBSTRING* vr$202 = fb_StrConcat( &TMP$363$3, (void*)((uint8*)&FBC$ + 1532), -1, (void*)vr$198, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1532), -1, (void*)vr$202, -1, 0 );
		}
		goto label$502;
		label$691:;
		{
			FBSTRING TMP$364$3;
			FBSTRING TMP$365$3;
			FBSTRING TMP$366$3;
			FBSTRING* vr$205 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$364$3, 0, 12 );
			FBSTRING* vr$208 = fb_StrConcat( &TMP$364$3, (void*)" ", 2, (void*)vr$205, -1 );
			__builtin_memset( &TMP$365$3, 0, 12 );
			FBSTRING* vr$211 = fb_StrConcat( &TMP$365$3, (void*)vr$208, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$366$3, 0, 12 );
			FBSTRING* vr$215 = fb_StrConcat( &TMP$366$3, (void*)((uint8*)&FBC$ + 1556), -1, (void*)vr$211, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1556), -1, (void*)vr$215, -1, 0 );
		}
		goto label$502;
		label$692:;
		{
			FBSTRING TMP$367$3;
			FBSTRING TMP$368$3;
			FBSTRING TMP$369$3;
			FBSTRING* vr$218 = HREPLACE( (uint8*)*(uint8**)ARG$1, (uint8*)",", (uint8*)" " );
			__builtin_memset( &TMP$367$3, 0, 12 );
			FBSTRING* vr$221 = fb_StrConcat( &TMP$367$3, (void*)" ", 2, (void*)vr$218, -1 );
			__builtin_memset( &TMP$368$3, 0, 12 );
			FBSTRING* vr$224 = fb_StrConcat( &TMP$368$3, (void*)vr$221, -1, (void*)" ", 2 );
			__builtin_memset( &TMP$369$3, 0, 12 );
			FBSTRING* vr$228 = fb_StrConcat( &TMP$369$3, (void*)((uint8*)&FBC$ + 1544), -1, (void*)vr$224, -1 );
			fb_StrAssign( (void*)((uint8*)&FBC$ + 1544), -1, (void*)vr$228, -1, 0 );
		}
		goto label$502;
		label$693:;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 484), 261, (void*)ARG$1, -1, 0 );
		}
		goto label$502;
		label$694:;
		{
			{
				FBSTRING TMP$370$4;
				FBSTRING* vr$231 = fb_StrLcase2( (FBSTRING*)ARG$1, 0 );
				fb_StrInit( (void*)&TMP$370$4, -1, (void*)vr$231, -1, 0 );
				int32 vr$234 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"gosub-setjmp", 13 );
				if( vr$234 != 0 ) goto label$696;
				label$697:;
				{
					FBSETOPTION( 28, -1 );
				}
				goto label$695;
				label$696:;
				int32 vr$236 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"valist-as-ptr", 14 );
				if( vr$236 != 0 ) goto label$698;
				label$699:;
				{
					FBSETOPTION( 29, -1 );
				}
				goto label$695;
				label$698:;
				int32 vr$238 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"no-thiscall", 12 );
				if( vr$238 != 0 ) goto label$700;
				label$701:;
				{
					FBSETOPTION( 30, -1 );
				}
				goto label$695;
				label$700:;
				int32 vr$240 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"no-fastcall", 12 );
				if( vr$240 != 0 ) goto label$702;
				label$703:;
				{
					FBSETOPTION( 31, -1 );
				}
				goto label$695;
				label$702:;
				int32 vr$242 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"fbrt", 5 );
				if( vr$242 != 0 ) goto label$704;
				label$705:;
				{
					FBSETOPTION( 32, -1 );
				}
				goto label$695;
				label$704:;
				int32 vr$244 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"nocmdline", 10 );
				if( vr$244 != 0 ) goto label$706;
				label$707:;
				{
					FBSETOPTION( 42, -1 );
				}
				goto label$695;
				label$706:;
				int32 vr$246 = fb_StrCompare( (void*)&TMP$370$4, -1, (void*)"retinflts", 10 );
				if( vr$246 != 0 ) goto label$708;
				label$709:;
				{
					FBSETOPTION( 43, -1 );
				}
				goto label$695;
				label$708:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$710:;
				label$695:;
				fb_StrDelete( (FBSTRING*)&TMP$370$4 );
			}
		}
		goto label$502;
		label$503:;
		static const void* tmp$796[70] = {
			&&label$504,
			&&label$505,
			&&label$508,
			&&label$515,
			&&label$516,
			&&label$517,
			&&label$518,
			&&label$519,
			&&label$520,
			&&label$520,
			&&label$521,
			&&label$522,
			&&label$523,
			&&label$524,
			&&label$525,
			&&label$526,
			&&label$527,
			&&label$528,
			&&label$529,
			&&label$530,
			&&label$531,
			&&label$532,
			&&label$533,
			&&label$540,
			&&label$547,
			&&label$555,
			&&label$556,
			&&label$567,
			&&label$568,
			&&label$569,
			&&label$570,
			&&label$571,
			&&label$578,
			&&label$579,
			&&label$580,
			&&label$581,
			&&label$586,
			&&label$587,
			&&label$588,
			&&label$589,
			&&label$596,
			&&label$597,
			&&label$598,
			&&label$601,
			&&label$607,
			&&label$608,
			&&label$609,
			&&label$610,
			&&label$611,
			&&label$624,
			&&label$625,
			&&label$626,
			&&label$627,
			&&label$628,
			&&label$629,
			&&label$633,
			&&label$634,
			&&label$635,
			&&label$636,
			&&label$637,
			&&label$642,
			&&label$643,
			&&label$644,
			&&label$654,
			&&label$659,
			&&label$690,
			&&label$691,
			&&label$692,
			&&label$693,
			&&label$694,
		};
		if( TMP$312$2 > 69u ) goto label$502;
		goto *tmp$796[TMP$312$2 - 0u];
		label$502:;
	}
	label$501:;
}

static int32 PARSEOPTION( uint8* OPT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$711:;
	{
		uint32 TMP$378$2;
		TMP$378$2 = (uint32)*(uint8*)OPT$1;
		goto label$714;
		label$715:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$717;
			{
				fb$result$1 = 0;
				goto label$712;
			}
			label$717:;
			label$716:;
			int32 vr$5 = fb_StrCompare( (void*)OPT$1, 0, (void*)"arch", 5 );
			if( vr$5 != 0 ) goto label$719;
			{
				fb$result$1 = 1;
				goto label$712;
			}
			label$719:;
			label$718:;
			int32 vr$6 = fb_StrCompare( (void*)OPT$1, 0, (void*)"asm", 4 );
			if( vr$6 != 0 ) goto label$721;
			{
				fb$result$1 = 2;
				goto label$712;
			}
			label$721:;
			label$720:;
		}
		goto label$713;
		label$722:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$724;
			{
				fb$result$1 = 3;
				goto label$712;
			}
			label$724:;
			label$723:;
			int32 vr$9 = fb_StrCompare( (void*)OPT$1, 0, (void*)"buildprefix", 12 );
			if( vr$9 != 0 ) goto label$726;
			{
				fb$result$1 = 4;
				goto label$712;
			}
			label$726:;
			label$725:;
		}
		goto label$713;
		label$727:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$729;
			{
				fb$result$1 = 5;
				goto label$712;
			}
			label$729:;
			label$728:;
		}
		goto label$713;
		label$730:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$732;
			{
				fb$result$1 = 6;
				goto label$712;
			}
			label$732:;
			label$731:;
		}
		goto label$713;
		label$733:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$735;
			{
				fb$result$1 = 7;
				goto label$712;
			}
			label$735:;
			label$734:;
			int32 vr$16 = fb_StrCompare( (void*)OPT$1, 0, (void*)"dll", 4 );
			if( vr$16 != 0 ) goto label$737;
			{
				fb$result$1 = 8;
				goto label$712;
			}
			label$737:;
			label$736:;
			int32 vr$17 = fb_StrCompare( (void*)OPT$1, 0, (void*)"dylib", 6 );
			if( vr$17 != 0 ) goto label$739;
			{
				fb$result$1 = 9;
				goto label$712;
			}
			label$739:;
			label$738:;
		}
		goto label$713;
		label$740:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$742;
			{
				fb$result$1 = 10;
				goto label$712;
			}
			label$742:;
			label$741:;
			int32 vr$20 = fb_StrCompare( (void*)OPT$1, 0, (void*)"ex", 3 );
			if( vr$20 != 0 ) goto label$744;
			{
				fb$result$1 = 19;
				goto label$712;
			}
			label$744:;
			label$743:;
			int32 vr$21 = fb_StrCompare( (void*)OPT$1, 0, (void*)"earray", 7 );
			if( vr$21 != 0 ) goto label$746;
			{
				fb$result$1 = 11;
				goto label$712;
			}
			label$746:;
			label$745:;
			int32 vr$22 = fb_StrCompare( (void*)OPT$1, 0, (void*)"eassert", 8 );
			if( vr$22 != 0 ) goto label$748;
			{
				fb$result$1 = 12;
				goto label$712;
			}
			label$748:;
			label$747:;
			int32 vr$23 = fb_StrCompare( (void*)OPT$1, 0, (void*)"edebug", 7 );
			if( vr$23 != 0 ) goto label$750;
			{
				fb$result$1 = 13;
				goto label$712;
			}
			label$750:;
			label$749:;
			int32 vr$24 = fb_StrCompare( (void*)OPT$1, 0, (void*)"edebuginfo", 11 );
			if( vr$24 != 0 ) goto label$752;
			{
				fb$result$1 = 14;
				goto label$712;
			}
			label$752:;
			label$751:;
			int32 vr$25 = fb_StrCompare( (void*)OPT$1, 0, (void*)"elocation", 10 );
			if( vr$25 != 0 ) goto label$754;
			{
				fb$result$1 = 15;
				goto label$712;
			}
			label$754:;
			label$753:;
			int32 vr$26 = fb_StrCompare( (void*)OPT$1, 0, (void*)"enullptr", 9 );
			if( vr$26 != 0 ) goto label$756;
			{
				fb$result$1 = 16;
				goto label$712;
			}
			label$756:;
			label$755:;
			int32 vr$27 = fb_StrCompare( (void*)OPT$1, 0, (void*)"eunwind", 8 );
			if( vr$27 != 0 ) goto label$758;
			{
				fb$result$1 = 17;
				goto label$712;
			}
			label$758:;
			label$757:;
			int32 vr$28 = fb_StrCompare( (void*)OPT$1, 0, (void*)"entry", 6 );
			if( vr$28 != 0 ) goto label$760;
			{
				fb$result$1 = 18;
				goto label$712;
			}
			label$760:;
			label$759:;
			int32 vr$29 = fb_StrCompare( (void*)OPT$1, 0, (void*)"exx", 4 );
			if( vr$29 != 0 ) goto label$762;
			{
				fb$result$1 = 20;
				goto label$712;
			}
			label$762:;
			label$761:;
			int32 vr$30 = fb_StrCompare( (void*)OPT$1, 0, (void*)"export", 7 );
			if( vr$30 != 0 ) goto label$764;
			{
				fb$result$1 = 21;
				goto label$712;
			}
			label$764:;
			label$763:;
		}
		goto label$713;
		label$765:;
		{
			int32 vr$31 = fb_StrCompare( (void*)OPT$1, 0, (void*)"forcelang", 10 );
			if( vr$31 != 0 ) goto label$767;
			{
				fb$result$1 = 22;
				goto label$712;
			}
			label$767:;
			label$766:;
			int32 vr$32 = fb_StrCompare( (void*)OPT$1, 0, (void*)"fpmode", 7 );
			if( vr$32 != 0 ) goto label$769;
			{
				fb$result$1 = 23;
				goto label$712;
			}
			label$769:;
			label$768:;
			int32 vr$33 = fb_StrCompare( (void*)OPT$1, 0, (void*)"fpu", 4 );
			if( vr$33 != 0 ) goto label$771;
			{
				fb$result$1 = 24;
				goto label$712;
			}
			label$771:;
			label$770:;
		}
		goto label$713;
		label$772:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$774;
			{
				fb$result$1 = 25;
				goto label$712;
			}
			label$774:;
			label$773:;
			int32 vr$36 = fb_StrCompare( (void*)OPT$1, 0, (void*)"gen", 4 );
			if( vr$36 != 0 ) goto label$776;
			{
				fb$result$1 = 26;
				goto label$712;
			}
			label$776:;
			label$775:;
		}
		goto label$713;
		label$777:;
		{
			int32 vr$37 = fb_StrCompare( (void*)OPT$1, 0, (void*)"help", 5 );
			if( vr$37 != 0 ) goto label$779;
			{
				fb$result$1 = 27;
				goto label$712;
			}
			label$779:;
			label$778:;
		}
		goto label$713;
		label$780:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$782;
			{
				fb$result$1 = 28;
				goto label$712;
			}
			label$782:;
			label$781:;
			int32 vr$40 = fb_StrCompare( (void*)OPT$1, 0, (void*)"include", 8 );
			if( vr$40 != 0 ) goto label$784;
			{
				fb$result$1 = 29;
				goto label$712;
			}
			label$784:;
			label$783:;
		}
		goto label$713;
		label$785:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$787;
			{
				fb$result$1 = 30;
				goto label$712;
			}
			label$787:;
			label$786:;
			int32 vr$43 = fb_StrCompare( (void*)OPT$1, 0, (void*)"lang", 5 );
			if( vr$43 != 0 ) goto label$789;
			{
				fb$result$1 = 31;
				goto label$712;
			}
			label$789:;
			label$788:;
			int32 vr$44 = fb_StrCompare( (void*)OPT$1, 0, (void*)"lib", 4 );
			if( vr$44 != 0 ) goto label$791;
			{
				fb$result$1 = 32;
				goto label$712;
			}
			label$791:;
			label$790:;
		}
		goto label$713;
		label$792:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$794;
			{
				fb$result$1 = 33;
				goto label$712;
			}
			label$794:;
			label$793:;
			int32 vr$47 = fb_StrCompare( (void*)OPT$1, 0, (void*)"map", 4 );
			if( vr$47 != 0 ) goto label$796;
			{
				fb$result$1 = 34;
				goto label$712;
			}
			label$796:;
			label$795:;
			int32 vr$48 = fb_StrCompare( (void*)OPT$1, 0, (void*)"maxerr", 7 );
			if( vr$48 != 0 ) goto label$798;
			{
				fb$result$1 = 35;
				goto label$712;
			}
			label$798:;
			label$797:;
			int32 vr$49 = fb_StrCompare( (void*)OPT$1, 0, (void*)"mt", 3 );
			if( vr$49 != 0 ) goto label$800;
			{
				fb$result$1 = 36;
				goto label$712;
			}
			label$800:;
			label$799:;
		}
		goto label$713;
		label$801:;
		{
			int32 vr$50 = fb_StrCompare( (void*)OPT$1, 0, (void*)"noerrline", 10 );
			if( vr$50 != 0 ) goto label$803;
			{
				fb$result$1 = 38;
				goto label$712;
			}
			label$803:;
			label$802:;
			int32 vr$51 = fb_StrCompare( (void*)OPT$1, 0, (void*)"nodeflibs", 10 );
			if( vr$51 != 0 ) goto label$805;
			{
				fb$result$1 = 37;
				goto label$712;
			}
			label$805:;
			label$804:;
			int32 vr$52 = fb_StrCompare( (void*)OPT$1, 0, (void*)"nolib", 6 );
			if( vr$52 != 0 ) goto label$807;
			{
				fb$result$1 = 39;
				goto label$712;
			}
			label$807:;
			label$806:;
			int32 vr$53 = fb_StrCompare( (void*)OPT$1, 0, (void*)"noobjinfo", 10 );
			if( vr$53 != 0 ) goto label$809;
			{
				fb$result$1 = 40;
				goto label$712;
			}
			label$809:;
			label$808:;
			int32 vr$54 = fb_StrCompare( (void*)OPT$1, 0, (void*)"nostrip", 8 );
			if( vr$54 != 0 ) goto label$811;
			{
				fb$result$1 = 41;
				goto label$712;
			}
			label$811:;
			label$810:;
		}
		goto label$713;
		label$812:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$814;
			{
				fb$result$1 = 42;
				goto label$712;
			}
			label$814:;
			label$813:;
		}
		goto label$713;
		label$815:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$817;
			{
				fb$result$1 = 43;
				goto label$712;
			}
			label$817:;
			label$816:;
		}
		goto label$713;
		label$818:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$820;
			{
				fb$result$1 = 44;
				goto label$712;
			}
			label$820:;
			label$819:;
			int32 vr$61 = fb_StrCompare( (void*)OPT$1, 0, (void*)"pic", 4 );
			if( vr$61 != 0 ) goto label$822;
			{
				fb$result$1 = 45;
				goto label$712;
			}
			label$822:;
			label$821:;
			int32 vr$62 = fb_StrCompare( (void*)OPT$1, 0, (void*)"pp", 3 );
			if( vr$62 != 0 ) goto label$824;
			{
				fb$result$1 = 46;
				goto label$712;
			}
			label$824:;
			label$823:;
			int32 vr$63 = fb_StrCompare( (void*)OPT$1, 0, (void*)"prefix", 7 );
			if( vr$63 != 0 ) goto label$826;
			{
				fb$result$1 = 47;
				goto label$712;
			}
			label$826:;
			label$825:;
			int32 vr$64 = fb_StrCompare( (void*)OPT$1, 0, (void*)"print", 6 );
			if( vr$64 != 0 ) goto label$828;
			{
				fb$result$1 = 48;
				goto label$712;
			}
			label$828:;
			label$827:;
			int32 vr$65 = fb_StrCompare( (void*)OPT$1, 0, (void*)"profile", 8 );
			if( vr$65 != 0 ) goto label$830;
			{
				fb$result$1 = 49;
				goto label$712;
			}
			label$830:;
			label$829:;
		}
		goto label$713;
		label$831:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$833;
			{
				fb$result$1 = 50;
				goto label$712;
			}
			label$833:;
			label$832:;
			int32 vr$68 = fb_StrCompare( (void*)OPT$1, 0, (void*)"rr", 3 );
			if( vr$68 != 0 ) goto label$835;
			{
				fb$result$1 = 52;
				goto label$712;
			}
			label$835:;
			label$834:;
		}
		goto label$713;
		label$836:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$838;
			{
				fb$result$1 = 51;
				goto label$712;
			}
			label$838:;
			label$837:;
			int32 vr$71 = fb_StrCompare( (void*)OPT$1, 0, (void*)"RR", 3 );
			if( vr$71 != 0 ) goto label$840;
			{
				fb$result$1 = 53;
				goto label$712;
			}
			label$840:;
			label$839:;
		}
		goto label$713;
		label$841:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$843;
			{
				fb$result$1 = 54;
				goto label$712;
			}
			label$843:;
			label$842:;
			int32 vr$74 = fb_StrCompare( (void*)OPT$1, 0, (void*)"showincludes", 13 );
			if( vr$74 != 0 ) goto label$845;
			{
				fb$result$1 = 55;
				goto label$712;
			}
			label$845:;
			label$844:;
			int32 vr$75 = fb_StrCompare( (void*)OPT$1, 0, (void*)"static", 7 );
			if( vr$75 != 0 ) goto label$847;
			{
				fb$result$1 = 56;
				goto label$712;
			}
			label$847:;
			label$846:;
			int32 vr$76 = fb_StrCompare( (void*)OPT$1, 0, (void*)"strip", 6 );
			if( vr$76 != 0 ) goto label$849;
			{
				fb$result$1 = 57;
				goto label$712;
			}
			label$849:;
			label$848:;
		}
		goto label$713;
		label$850:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$852;
			{
				fb$result$1 = 58;
				goto label$712;
			}
			label$852:;
			label$851:;
			int32 vr$79 = fb_StrCompare( (void*)OPT$1, 0, (void*)"target", 7 );
			if( vr$79 != 0 ) goto label$854;
			{
				fb$result$1 = 59;
				goto label$712;
			}
			label$854:;
			label$853:;
			int32 vr$80 = fb_StrCompare( (void*)OPT$1, 0, (void*)"title", 6 );
			if( vr$80 != 0 ) goto label$856;
			{
				fb$result$1 = 60;
				goto label$712;
			}
			label$856:;
			label$855:;
		}
		goto label$713;
		label$857:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$859;
			{
				fb$result$1 = 61;
				goto label$712;
			}
			label$859:;
			label$858:;
			int32 vr$83 = fb_StrCompare( (void*)OPT$1, 0, (void*)"vec", 4 );
			if( vr$83 != 0 ) goto label$861;
			{
				fb$result$1 = 62;
				goto label$712;
			}
			label$861:;
			label$860:;
			int32 vr$84 = fb_StrCompare( (void*)OPT$1, 0, (void*)"version", 8 );
			if( vr$84 != 0 ) goto label$863;
			{
				fb$result$1 = 63;
				goto label$712;
			}
			label$863:;
			label$862:;
		}
		goto label$713;
		label$864:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$866;
			{
				fb$result$1 = 64;
				goto label$712;
			}
			label$866:;
			label$865:;
		}
		goto label$713;
		label$867:;
		{
			int32 vr$87 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wa", 3 );
			if( vr$87 != 0 ) goto label$869;
			{
				fb$result$1 = 65;
				goto label$712;
			}
			label$869:;
			label$868:;
			int32 vr$88 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wl", 3 );
			if( vr$88 != 0 ) goto label$871;
			{
				fb$result$1 = 67;
				goto label$712;
			}
			label$871:;
			label$870:;
			int32 vr$89 = fb_StrCompare( (void*)OPT$1, 0, (void*)"Wc", 3 );
			if( vr$89 != 0 ) goto label$873;
			{
				fb$result$1 = 66;
				goto label$712;
			}
			label$873:;
			label$872:;
		}
		goto label$713;
		label$874:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$876;
			{
				fb$result$1 = 68;
				goto label$712;
			}
			label$876:;
			label$875:;
		}
		goto label$713;
		label$877:;
		{
			if( (int32)*(uint8*)((uint8*)OPT$1 + 1) != 0 ) goto label$879;
			{
				fb$result$1 = 69;
				goto label$712;
			}
			label$879:;
			label$878:;
		}
		goto label$713;
		label$880:;
		{
			int32 vr$94 = fb_StrCompare( (void*)OPT$1, 0, (void*)"-version", 9 );
			if( vr$94 != 0 ) goto label$882;
			{
				fb$result$1 = 63;
				goto label$712;
			}
			label$882:;
			label$881:;
			int32 vr$95 = fb_StrCompare( (void*)OPT$1, 0, (void*)"-help", 6 );
			if( vr$95 != 0 ) goto label$884;
			{
				fb$result$1 = 27;
				goto label$712;
			}
			label$884:;
			label$883:;
		}
		goto label$713;
		label$714:;
		static const void* tmp$797[78] = {
			&&label$880,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$730,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$815,
			&&label$713,
			&&label$713,
			&&label$836,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$867,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$713,
			&&label$715,
			&&label$722,
			&&label$727,
			&&label$733,
			&&label$740,
			&&label$765,
			&&label$772,
			&&label$777,
			&&label$780,
			&&label$713,
			&&label$713,
			&&label$785,
			&&label$792,
			&&label$801,
			&&label$812,
			&&label$818,
			&&label$713,
			&&label$831,
			&&label$841,
			&&label$850,
			&&label$713,
			&&label$857,
			&&label$864,
			&&label$874,
			&&label$713,
			&&label$877,
		};
		if( (TMP$378$2 - 45u) > 77u ) goto label$713;
		goto *tmp$797[TMP$378$2 - 45u];
		label$713:;
	}
	fb$result$1 = -1;
	goto label$712;
	label$712:;
	return fb$result$1;
}

static void HANDLEARG( FBSTRING* ARG$1, int32 IS_SOURCE$1, int32 IS_FILE$1 )
{
	label$885:;
	if( *(int32*)&FBC$ < 0 ) goto label$888;
	{
		int32 vr$0 = fb_StrLen( (void*)ARG$1, -1 );
		if( vr$0 != 0 ) goto label$890;
		{
			HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
		}
		label$890:;
		label$889:;
		HANDLEOPT( *(int32*)&FBC$, ARG$1, IS_SOURCE$1 );
		*(int32*)&FBC$ = -1;
		goto label$886;
	}
	label$888:;
	label$887:;
	int32 vr$1 = fb_StrLen( (void*)ARG$1, -1 );
	if( vr$1 != 0 ) goto label$892;
	{
		goto label$886;
	}
	label$892:;
	label$891:;
	{
		uint8 TMP$452$2;
		TMP$452$2 = *(uint8*)*(uint8**)ARG$1;
		if( (uint32)(int32)TMP$452$2 != 45u ) goto label$894;
		label$895:;
		{
			uint8* OPT$3;
			OPT$3 = (uint8*)((uint8*)*(uint8**)ARG$1 + 1);
			if( (int32)*(uint8*)OPT$3 != 0 ) goto label$897;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$897:;
			label$896:;
			int32 OPTID$3;
			int32 vr$9 = PARSEOPTION( OPT$3 );
			OPTID$3 = vr$9;
			if( OPTID$3 >= 0 ) goto label$899;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$899:;
			label$898:;
			if( IS_SOURCE$1 == 0 ) goto label$901;
			{
				if( (boolean)(*(boolean*)(((int32)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (3 & 31))) + 1) == 0) == (boolean)0 ) goto label$903;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$903:;
				label$902:;
			}
			label$901:;
			label$900:;
			if( *(boolean*)((int32)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (3 & 31))) == (boolean)0 ) goto label$905;
			{
				*(int32*)&FBC$ = OPTID$3;
			}
			goto label$904;
			label$905:;
			{
				HANDLEOPT( OPTID$3, ARG$1, IS_SOURCE$1 );
			}
			label$904:;
			if( IS_SOURCE$1 == 0 ) goto label$907;
			{
				if( *(boolean*)(((int32)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (3 & 31))) + 2) == (boolean)0 ) goto label$909;
				{
					FBRESTARTBEGINREQUEST( 2 );
				}
				label$909:;
				label$908:;
				if( *(int32*)(((int32)(struct $18FBC_CMDLINE_OPTION*)CMDLINEOPTIONTB$ + (OPTID$3 << (3 & 31))) + 4) == 0 ) goto label$911;
				{
					FBRESTARTBEGINREQUEST( 8 );
				}
				label$911:;
				label$910:;
			}
			label$907:;
			label$906:;
		}
		goto label$893;
		label$894:;
		if( (uint32)(int32)TMP$452$2 != 64u ) goto label$912;
		label$913:;
		{
			static int32 RECLEVEL$3 = 0;
			if( RECLEVEL$3 <= 128 ) goto label$915;
			{
				ERRREPORTEX( 27, (uint8*)*(uint8**)ARG$1, -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$915:;
			label$914:;
			int32 vr$17 = fb_StrLen( (void*)ARG$1, -1 );
			FBSTRING* vr$19 = fb_RIGHT( (FBSTRING*)ARG$1, vr$17 + -1 );
			fb_StrAssign( (void*)ARG$1, -1, (void*)vr$19, -1, 0 );
			int32 vr$20 = fb_StrLen( (void*)ARG$1, -1 );
			if( vr$20 != 0 ) goto label$917;
			{
				HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
			}
			label$917:;
			label$916:;
			RECLEVEL$3 = RECLEVEL$3 + 1;
			PARSEARGSFROMFILE( ARG$1, IS_SOURCE$1 );
			RECLEVEL$3 = RECLEVEL$3 + -1;
		}
		goto label$893;
		label$912:;
		{
			FBSTRING EXT$3;
			FBSTRING* vr$24 = HGETFILEEXT( (uint8*)*(uint8**)ARG$1 );
			fb_StrInit( (void*)&EXT$3, -1, (void*)vr$24, -1, 0 );
			{
				int32 vr$27 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"bas", 4 );
				if( vr$27 != 0 ) goto label$920;
				label$921:;
				{
					HADDBAS( ARG$1 );
				}
				goto label$919;
				label$920:;
				int32 vr$29 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"o", 2 );
				if( vr$29 != 0 ) goto label$922;
				label$923:;
				{
					FBCADDOBJ( ARG$1 );
				}
				goto label$919;
				label$922:;
				int32 vr$31 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"a", 2 );
				if( vr$31 != 0 ) goto label$924;
				label$925:;
				{
					STRLISTAPPEND( (struct $5TLIST*)((uint8*)&FBC$ + 232), ARG$1 );
				}
				goto label$919;
				label$924:;
				int32 vr$34 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"rc", 3 );
				if( vr$34 == 0 ) goto label$927;
				label$928:;
				int32 vr$36 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"res", 4 );
				if( vr$36 != 0 ) goto label$926;
				label$927:;
				{
					void* vr$38 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
					HSETIOFILE( (struct $9FBCIOFILE*)vr$38, ARG$1, -1 );
				}
				goto label$919;
				label$926:;
				int32 vr$40 = fb_StrCompare( (void*)&EXT$3, -1, (void*)"xpm", 4 );
				if( vr$40 != 0 ) goto label$929;
				label$930:;
				{
					int32 vr$42 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
					if( vr$42 <= 0 ) goto label$932;
					{
						HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
					}
					label$932:;
					label$931:;
					HSETIOFILE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136), ARG$1, -1 );
				}
				goto label$919;
				label$929:;
				{
					HFATALINVALIDOPTION( ARG$1, IS_SOURCE$1 );
				}
				label$933:;
				label$919:;
			}
			fb_StrDelete( (FBSTRING*)&EXT$3 );
		}
		label$918:;
		label$893:;
	}
	label$886:;
}

static void PARSEARGSFROMFILE( FBSTRING* FILENAME$1, int32 IS_SOURCE$1 )
{
	label$954:;
	int32 F$1;
	int32 vr$0 = fb_FileFree(  );
	F$1 = vr$0;
	int32 vr$1 = fb_FileOpen( (FBSTRING*)FILENAME$1, 2u, 0u, 0u, F$1, 0 );
	if( vr$1 == 0 ) goto label$957;
	{
		ERRREPORTEX( 26, (uint8*)*(uint8**)FILENAME$1, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$957:;
	label$956:;
	FBSTRING ARGS$1;
	__builtin_memset( &ARGS$1, 0, 12 );
	label$958:;
	int32 vr$4 = fb_FileEof( F$1 );
	if( vr$4 != 0 ) goto label$959;
	{
		fb_FileLineInput( F$1, (void*)&ARGS$1, -1, 0 );
		FBSTRING* vr$7 = fb_TRIM( (FBSTRING*)&ARGS$1 );
		fb_StrAssign( (void*)&ARGS$1, -1, (void*)vr$7, -1, 0 );
		FBCPARSEARGSFROMSTRING( (uint8*)*(uint8**)&ARGS$1, IS_SOURCE$1, -1 );
	}
	goto label$958;
	label$959:;
	int32 vr$9 = fb_FileClose( F$1 );
	if( vr$9 == 0 ) goto label$960;
	void* vr$10 = fb_ErrorThrowAt( 2700, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$10;
	label$960:;
	fb_StrDelete( (FBSTRING*)&ARGS$1 );
	label$955:;
}

static int32 HTARGETNEEDSPIC( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$961:;
	fb$result$1 = 0;
	int32 vr$1 = FBGETCPUFAMILY(  );
	if( vr$1 == 0 ) goto label$964;
	{
		{
			uint32 TMP$461$3;
			int32 vr$2 = FBGETOPTION( 3 );
			TMP$461$3 = (uint32)vr$2;
			goto label$966;
			label$967:;
			{
				fb$result$1 = -1;
			}
			goto label$965;
			label$966:;
			static const void* tmp$798[9] = {
				&&label$967,
				&&label$965,
				&&label$965,
				&&label$967,
				&&label$967,
				&&label$967,
				&&label$967,
				&&label$965,
				&&label$967,
			};
			if( (TMP$461$3 - 2u) > 8u ) goto label$965;
			goto *tmp$798[TMP$461$3 - 2u];
			label$965:;
		}
	}
	label$964:;
	label$963:;
	label$962:;
	return fb$result$1;
}

static void HPARSEARGS( int32 ARGC$1, uint8** ARGV$1 )
{
	label$968:;
	*(int32*)&FBC$ = -1;
	FBSTRING ARG$1;
	__builtin_memset( &ARG$1, 0, 12 );
	{
		int32 I$2;
		I$2 = 1;
		int32 TMP$462$2;
		TMP$462$2 = ARGC$1 + -1;
		goto label$970;
		label$973:;
		{
			fb_StrAssign( (void*)&ARG$1, -1, *(void**)((uint8*)ARGV$1 + (I$2 << (2 & 31))), 0, 0 );
			HANDLEARG( &ARG$1, 0, 0 );
		}
		label$971:;
		I$2 = I$2 + 1;
		label$970:;
		if( I$2 <= TMP$462$2 ) goto label$973;
		label$972:;
	}
	if( *(int32*)&FBC$ < 0 ) goto label$975;
	{
		FBSTRING TMP$463$2;
		__builtin_memset( &TMP$463$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$463$2, -1, *(void**)((uint8*)((uint8*)ARGV$1 + (ARGC$1 << (2 & 31))) + -4), 0, 0 );
		HFATALINVALIDOPTION( &TMP$463$2, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$463$2 );
	}
	label$975:;
	label$974:;
	fb_StrDelete( (FBSTRING*)&ARG$1 );
	label$969:;
}

static void HCHECKARGS( void )
{
	label$976:;
	HCHECKWAITINGOBJFILE(  );
	int32 vr$0 = FBGETOPTION( 5 );
	if( vr$0 != 0 ) goto label$979;
	{
		int32 vr$1 = FBGETOPTION( 7 );
		int32 vr$3 = FBGETOPTION( 6 );
		if( (-(vr$1 >= 1) | -(vr$3 == 1)) == 0 ) goto label$981;
		{
			ERRREPORTEX( 284, (uint8*)"", -1, 1, (uint8*)0u );
			FBCEND( 1 );
		}
		label$981:;
		label$980:;
	}
	label$979:;
	label$978:;
	if( *(int32*)((uint8*)&FBC$ + 24) < 0 ) goto label$983;
	{
		FBSETOPTION( 4, *(int32*)((uint8*)&FBC$ + 24) );
	}
	label$983:;
	label$982:;
	int32 vr$6 = FBGETOPTION( 3 );
	int32 vr$8 = FBGETCPUFAMILY(  );
	if( (-(vr$6 == 3) & -(vr$8 != 0)) == 0 ) goto label$985;
	{
		uint8* vr$11 = FBGETFBCARCH(  );
		ERRREPORTEX( 82, (uint8*)vr$11, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$985:;
	label$984:;
	int32 vr$12 = FBGETCPUFAMILY(  );
	int32 vr$14 = FBGETOPTION( 3 );
	if( (-(vr$12 == 0) & -(vr$14 != 9)) == 0 ) goto label$987;
	{
		FBSETOPTION( 2, 0 );
	}
	goto label$986;
	label$987:;
	{
		FBSETOPTION( 2, 1 );
	}
	label$986:;
	if( *(int32*)((uint8*)&FBC$ + 20) < 0 ) goto label$989;
	{
		FBSETOPTION( 2, *(int32*)((uint8*)&FBC$ + 20) );
	}
	label$989:;
	label$988:;
	int32 vr$17 = FBGETOPTION( 2 );
	int32 vr$19 = FBGETCPUFAMILY(  );
	int32 vr$22 = FBGETOPTION( 2 );
	int32 vr$24 = FBGETCPUFAMILY(  );
	if( ((-(vr$17 == 0) & -(vr$19 != 0)) | (-(vr$22 == 3) & -(vr$24 != 1))) == 0 ) goto label$991;
	{
		uint8* vr$28 = FBGETFBCARCH(  );
		ERRREPORTEX( 83, (uint8*)vr$28, -1, 1, (uint8*)0u );
		FBCEND( 1 );
	}
	label$991:;
	label$990:;
	{
		uint32 TMP$464$2;
		int32 vr$29 = FBGETOPTION( 3 );
		TMP$464$2 = (uint32)vr$29;
		goto label$993;
		label$994:;
		{
		}
		goto label$992;
		label$995:;
		{
			struct $9FBCIOFILE* RC$3;
			void* vr$31 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
			RC$3 = (struct $9FBCIOFILE*)vr$31;
			if( RC$3 == (struct $9FBCIOFILE*)0u ) goto label$997;
			{
				ERRREPORTEX( 291, (uint8*)*(uint8**)RC$3, -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$997:;
			label$996:;
		}
		goto label$992;
		label$993:;
		static const void* tmp$799[5] = {
			&&label$994,
			&&label$994,
			&&label$995,
			&&label$995,
			&&label$994,
		};
		if( TMP$464$2 > 4u ) goto label$995;
		goto *tmp$799[TMP$464$2 - 0u];
		label$992:;
	}
	{
		uint32 TMP$465$2;
		int32 vr$33 = FBGETOPTION( 3 );
		TMP$465$2 = (uint32)vr$33;
		goto label$999;
		label$1000:;
		{
		}
		goto label$998;
		label$1001:;
		{
			int32 vr$35 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
			if( vr$35 <= 0 ) goto label$1003;
			{
				ERRREPORTEX( 291, (uint8*)*(uint8**)((uint8*)&FBC$ + 136), -1, 1, (uint8*)0u );
				FBCEND( 1 );
			}
			label$1003:;
			label$1002:;
		}
		goto label$998;
		label$999:;
		static const void* tmp$800[9] = {
			&&label$1000,
			&&label$1001,
			&&label$1001,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
			&&label$1000,
		};
		if( (TMP$465$2 - 2u) > 8u ) goto label$1001;
		goto *tmp$800[TMP$465$2 - 2u];
		label$998:;
	}
	int32 vr$36 = FBGETOPTION( 3 );
	int32 vr$38 = FBGETOPTION( 2 );
	if( (-(vr$36 == 9) & -(vr$38 != 0)) == 0 ) goto label$1005;
	{
		FBSETOPTION( 9, 1 );
	}
	label$1005:;
	label$1004:;
	if( *(int32*)((uint8*)&FBC$ + 32) < 0 ) goto label$1007;
	{
		{
			int32 TMP$466$3;
			int32 vr$41 = FBGETCPUFAMILY(  );
			TMP$466$3 = vr$41;
			if( TMP$466$3 == 0 ) goto label$1010;
			label$1011:;
			if( TMP$466$3 != 1 ) goto label$1009;
			label$1010:;
			{
			}
			goto label$1008;
			label$1009:;
			{
				FBSTRING TMP$467$4;
				__builtin_memset( &TMP$467$4, 0, 12 );
				FBSTRING* vr$43 = FBGETTARGETID(  );
				fb_StrAssign( (void*)&TMP$467$4, -1, (void*)vr$43, -1, 0 );
				ERRREPORTEX( 319, (uint8*)*(uint8**)&TMP$467$4, -1, 1, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$467$4 );
			}
			label$1012:;
			label$1008:;
		}
		int32 vr$46 = FBGETOPTION( 2 );
		int32 vr$48 = FBGETOPTION( 2 );
		if( ((-(vr$46 == 0) | -(vr$48 == 3)) & -(*(int32*)((uint8*)&FBC$ + 32) != 0)) == 0 ) goto label$1014;
		{
			ERRREPORTEX( 84, (uint8*)"", -1, 1, (uint8*)0u );
		}
		label$1014:;
		label$1013:;
		FBSETOPTION( 9, *(int32*)((uint8*)&FBC$ + 32) );
	}
	label$1007:;
	label$1006:;
	int32 vr$53 = FBGETOPTION( 0 );
	if( vr$53 != 2 ) goto label$1016;
	{
		int32 vr$54 = HTARGETNEEDSPIC(  );
		if( vr$54 == 0 ) goto label$1018;
		{
			FBSETOPTION( 37, -1 );
		}
		label$1018:;
		label$1017:;
	}
	label$1016:;
	label$1015:;
	int32 vr$55 = FBGETOPTION( 37 );
	if( vr$55 == 0 ) goto label$1020;
	{
		int32 vr$56 = FBGETOPTION( 0 );
		if( vr$56 != 0 ) goto label$1022;
		{
			ERRREPORTEX( 85, (uint8*)"", -1, 1, (uint8*)0u );
		}
		goto label$1021;
		label$1022:;
		int32 vr$57 = HTARGETNEEDSPIC(  );
		if( vr$57 != 0 ) goto label$1023;
		{
			ERRREPORTEX( 86, (uint8*)"", -1, 1, (uint8*)0u );
		}
		label$1023:;
		label$1021:;
	}
	label$1020:;
	label$1019:;
	FBSETOPTION( 38, -1 );
	label$977:;
}

static void FBCDETERMINEPREFIX( void )
{
	label$1024:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 1968), 261 );
	if( vr$1 != 0 ) goto label$1027;
	{
		FBSTRING TMP$468$2;
		FBSTRING TMP$469$2;
		FBSTRING TMP$472$2;
		__builtin_memset( &TMP$468$2, 0, 12 );
		FBSTRING* vr$3 = fb_ExePath(  );
		fb_StrAssign( (void*)&TMP$468$2, -1, (void*)vr$3, -1, 0 );
		FBSTRING* vr$6 = PATHSTRIPDIV( &TMP$468$2 );
		__builtin_memset( &TMP$469$2, 0, 12 );
		FBSTRING* vr$9 = fb_StrConcat( &TMP$469$2, (void*)vr$6, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 1968), 261, (void*)vr$9, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$468$2 );
		__builtin_memset( &TMP$472$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$472$2, (void*)((uint8*)&FBC$ + 1968), 261, (void*)"../", 4 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 1968), 261, (void*)vr$15, -1, 0 );
	}
	goto label$1026;
	label$1027:;
	{
		FBSTRING TMP$473$2;
		FBSTRING TMP$474$2;
		__builtin_memset( &TMP$473$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$473$2, -1, (void*)((uint8*)&FBC$ + 1968), 261, 0 );
		FBSTRING* vr$21 = PATHSTRIPDIV( &TMP$473$2 );
		__builtin_memset( &TMP$474$2, 0, 12 );
		FBSTRING* vr$24 = fb_StrConcat( &TMP$474$2, (void*)vr$21, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 1968), 261, (void*)vr$24, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$473$2 );
	}
	label$1026:;
	label$1025:;
}

static void FBCSETUPCOMPILERPATHS( void )
{
	FBSTRING TMP$483$1;
	FBSTRING TMP$484$1;
	FBSTRING TMP$485$1;
	FBSTRING TMP$486$1;
	FBSTRING TMP$487$1;
	FBSTRING TMP$488$1;
	FBSTRING TMP$489$1;
	FBSTRING TMP$490$1;
	label$1028:;
	FBSTRING TARGETID$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&TARGETID$1, -1, (void*)vr$0, -1, 0 );
	FBSTRING FBNAME$1;
	__builtin_memset( &FBNAME$1, 0, 12 );
	fb_StrAssign( (void*)&FBNAME$1, -1, (void*)"freebasic", 10, 0 );
	FBSTRING LIBDIRNAME$1;
	fb_StrInit( (void*)&LIBDIRNAME$1, -1, (void*)"lib", 4, 0 );
	int32 vr$6 = fb_StrLen( (void*)((uint8*)&FBC$ + 3012), 261 );
	if( vr$6 <= 0 ) goto label$1031;
	{
		FBSTRING TMP$477$2;
		FBSTRING TMP$478$2;
		FBSTRING TMP$479$2;
		__builtin_memset( &TMP$477$2, 0, 12 );
		FBSTRING* vr$11 = fb_StrConcat( &TMP$477$2, (void*)((uint8*)&FBC$ + 1968), 261, (void*)"bin", 4 );
		__builtin_memset( &TMP$478$2, 0, 12 );
		FBSTRING* vr$14 = fb_StrConcat( &TMP$478$2, (void*)vr$11, -1, (void*)"/", 2 );
		__builtin_memset( &TMP$479$2, 0, 12 );
		FBSTRING* vr$17 = fb_StrConcat( &TMP$479$2, (void*)vr$14, -1, (void*)((uint8*)&FBC$ + 3012), 261 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2229), 261, (void*)vr$17, -1, 0 );
	}
	goto label$1030;
	label$1031:;
	{
		FBSTRING TMP$480$2;
		FBSTRING TMP$481$2;
		FBSTRING TMP$482$2;
		__builtin_memset( &TMP$480$2, 0, 12 );
		FBSTRING* vr$23 = fb_StrConcat( &TMP$480$2, (void*)((uint8*)&FBC$ + 1968), 261, (void*)"bin", 4 );
		__builtin_memset( &TMP$481$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$481$2, (void*)vr$23, -1, (void*)"/", 2 );
		__builtin_memset( &TMP$482$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$482$2, (void*)vr$26, -1, (void*)((uint8*)&FBC$ + 1697), 129 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 2229), 261, (void*)vr$29, -1, 0 );
	}
	label$1030:;
	__builtin_memset( &TMP$483$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$483$1, (void*)((uint8*)&FBC$ + 1968), 261, (void*)"include", 8 );
	__builtin_memset( &TMP$484$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$484$1, (void*)vr$35, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$485$1, 0, 12 );
	FBSTRING* vr$41 = fb_StrConcat( &TMP$485$1, (void*)vr$38, -1, (void*)&FBNAME$1, -1 );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2490), 261, (void*)vr$41, -1, 0 );
	__builtin_memset( &TMP$486$1, 0, 12 );
	FBSTRING* vr$49 = fb_StrConcat( &TMP$486$1, (void*)((uint8*)&FBC$ + 1968), 261, (void*)&LIBDIRNAME$1, -1 );
	__builtin_memset( &TMP$487$1, 0, 12 );
	FBSTRING* vr$52 = fb_StrConcat( &TMP$487$1, (void*)vr$49, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$488$1, 0, 12 );
	FBSTRING* vr$55 = fb_StrConcat( &TMP$488$1, (void*)vr$52, -1, (void*)&FBNAME$1, -1 );
	__builtin_memset( &TMP$489$1, 0, 12 );
	FBSTRING* vr$58 = fb_StrConcat( &TMP$489$1, (void*)vr$55, -1, (void*)"/", 2 );
	__builtin_memset( &TMP$490$1, 0, 12 );
	FBSTRING* vr$61 = fb_StrConcat( &TMP$490$1, (void*)vr$58, -1, (void*)&TARGETID$1, -1 );
	fb_StrAssign( (void*)((uint8*)&FBC$ + 2751), 261, (void*)vr$61, -1, 0 );
	fb_StrDelete( (FBSTRING*)&LIBDIRNAME$1 );
	fb_StrDelete( (FBSTRING*)&FBNAME$1 );
	fb_StrDelete( (FBSTRING*)&TARGETID$1 );
	label$1029:;
}

static void FBCPRINTTARGETINFO( void )
{
	FBSTRING TMP$492$1;
	FBSTRING TMP$493$1;
	label$1032:;
	FBSTRING S$1;
	FBSTRING* vr$0 = FBGETTARGETID(  );
	fb_StrInit( (void*)&S$1, -1, (void*)vr$0, -1, 0 );
	uint8* vr$2 = FBGETFBCARCH(  );
	__builtin_memset( &TMP$492$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$492$1, (void*)", ", 3, (void*)vr$2, 0 );
	__builtin_memset( &TMP$493$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$493$1, (void*)&S$1, -1, (void*)vr$5, -1 );
	fb_StrAssign( (void*)&S$1, -1, (void*)vr$9, -1, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)", ", 3, 0 );
	int32 vr$12 = FBGETBITS(  );
	FBSTRING* vr$13 = fb_IntToStr( vr$12 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$13, -1, 0 );
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"bit", 4, 0 );
	int32 vr$17 = fb_StrLen( (void*)((uint8*)&FBC$ + 1568), 129 );
	if( vr$17 <= 0 ) goto label$1035;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)" (", 3, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)((uint8*)&FBC$ + 1568), 129, 0 );
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)")", 2, 0 );
	}
	label$1035:;
	label$1034:;
	FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"target:", 7 );
	fb_PrintString( 0, (FBSTRING*)vr$22, 2 );
	fb_PrintString( 0, (FBSTRING*)&S$1, 1 );
	FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"backend:", 8 );
	fb_PrintString( 0, (FBSTRING*)vr$24, 2 );
	int32 vr$25 = FBGETOPTION( 2 );
	FBSTRING* vr$26 = FBGETBACKENDNAME( vr$25 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1033:;
}

static void FBCDETERMINEMAINNAME( void )
{
	label$1036:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 745), 261 );
	if( vr$1 != 0 ) goto label$1039;
	{
		FBSTRING TMP$500$2;
		struct $9FBCIOFILE* M$2;
		void* vr$3 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
		M$2 = (struct $9FBCIOFILE*)vr$3;
		if( M$2 == (struct $9FBCIOFILE*)0u ) goto label$1041;
		{
			fb_StrAssign( (void*)((uint8*)&FBC$ + 745), 261, (void*)M$2, -1, 0 );
		}
		goto label$1040;
		label$1041:;
		{
			FBSTRING* OBJF$3;
			void* vr$8 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
			OBJF$3 = (FBSTRING*)vr$8;
			if( OBJF$3 == (FBSTRING*)0u ) goto label$1043;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 745), 261, (void*)OBJF$3, -1, 0 );
			}
			goto label$1042;
			label$1043:;
			{
				fb_StrAssign( (void*)((uint8*)&FBC$ + 745), 261, (void*)"unnamed", 8, 0 );
			}
			label$1042:;
		}
		label$1040:;
		__builtin_memset( &TMP$500$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$500$2, -1, (void*)((uint8*)&FBC$ + 745), 261, 0 );
		FBSTRING* vr$15 = HSTRIPEXT( &TMP$500$2 );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 745), 261, (void*)vr$15, -1, 0 );
		fb_StrDelete( (FBSTRING*)&TMP$500$2 );
	}
	label$1039:;
	label$1038:;
	label$1037:;
}

static FBSTRING* HGETASMNAME( struct $9FBCIOFILE* MODULE$1, int32 STAGE$1 )
{
	FBSTRING TMP$505$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$1044:;
	uint8* EXT$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING* vr$3 = HSTRIPEXT( *(FBSTRING**)((uint8*)MODULE$1 + 12) );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$5 = FBGETOPTION( 3 );
	if( vr$5 == 11 ) goto label$1047;
	{
		EXT$1 = (uint8*)".asm";
	}
	goto label$1046;
	label$1047:;
	{
		EXT$1 = (uint8*)".o";
	}
	label$1046:;
	if( STAGE$1 != 1 ) goto label$1049;
	{
		{
			int32 TMP$502$3;
			int32 vr$6 = FBGETOPTION( 2 );
			TMP$502$3 = vr$6;
			if( TMP$502$3 != 1 ) goto label$1051;
			label$1052:;
			{
				EXT$1 = (uint8*)".c";
			}
			goto label$1050;
			label$1051:;
			if( TMP$502$3 != 2 ) goto label$1053;
			label$1054:;
			{
				EXT$1 = (uint8*)".ll";
			}
			label$1053:;
			label$1050:;
		}
	}
	label$1049:;
	label$1048:;
	__builtin_memset( &TMP$505$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$505$1, (void*)&ASMFILE$1, -1, (void*)EXT$1, 0 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$10, -1, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&ASMFILE$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$1045:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

static void HCOMPILEBAS( struct $9FBCIOFILE* MODULE$1, int32 IS_MAIN$1, int32 IS_FBCTINF$1, int32 MODULE_COUNT$1 )
{
	label$1055:;
	int32 PREVLANG$1;
	int32 PREVOUTTYPE$1;
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING PPONLYFILE$1;
	__builtin_memset( &PPONLYFILE$1, 0, 12 );
	FBSTRING* vr$2 = HGETASMNAME( MODULE$1, 1 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$2, -1, 0 );
	int32 vr$4 = FBGETOPTION( 1 );
	if( vr$4 == 0 ) goto label$1058;
	{
		fb_StrAssign( (void*)&PPONLYFILE$1, -1, *(void**)((uint8*)MODULE$1 + 12), -1, 0 );
		if( *(int32*)((uint8*)MODULE$1 + 16) != 0 ) goto label$1060;
		{
			FBSTRING TMP$507$3;
			FBSTRING* vr$9 = HSTRIPEXT( &PPONLYFILE$1 );
			__builtin_memset( &TMP$507$3, 0, 12 );
			FBSTRING* vr$12 = fb_StrConcat( &TMP$507$3, (void*)vr$9, -1, (void*)".pp.bas", 8 );
			fb_StrAssign( (void*)&PPONLYFILE$1, -1, (void*)vr$12, -1, 0 );
		}
		label$1060:;
		label$1059:;
	}
	label$1058:;
	label$1057:;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1062;
	{
		FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"compiling: ", 11 );
		fb_PrintString( 0, (FBSTRING*)vr$14, 2 );
		fb_PrintString( 0, (FBSTRING*)MODULE$1, 0 );
		FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)" -o ", 4 );
		fb_PrintString( 0, (FBSTRING*)vr$17, 0 );
		fb_PrintString( 0, (FBSTRING*)&ASMFILE$1, 0 );
		int32 vr$19 = FBGETOPTION( 1 );
		if( vr$19 == 0 ) goto label$1064;
		{
			FBSTRING TMP$511$3;
			__builtin_memset( &TMP$511$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$511$3, (void*)" -pp ", 6, (void*)&PPONLYFILE$1, -1 );
			fb_PrintString( 0, (FBSTRING*)vr$23, 0 );
		}
		label$1064:;
		label$1063:;
		if( IS_MAIN$1 == 0 ) goto label$1066;
		{
			FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)" (main module)", 14 );
			fb_PrintString( 0, (FBSTRING*)vr$24, 0 );
		}
		goto label$1065;
		label$1066:;
		if( IS_FBCTINF$1 == 0 ) goto label$1067;
		{
			FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (uint8*)" (FB compile-time info)", 23 );
			fb_PrintString( 0, (FBSTRING*)vr$25, 0 );
		}
		label$1067:;
		label$1065:;
		fb_PrintVoid( 0, 1 );
	}
	label$1062:;
	label$1061:;
	int32 vr$26 = FBGETOPTION( 12 );
	if( vr$26 == -1 ) goto label$1069;
	{
		int32 vr$27 = FBGETOPTION( 12 );
		FBSETOPTION( 10, vr$27 );
	}
	label$1069:;
	label$1068:;
	int32 vr$28 = FBGETOPTION( 10 );
	PREVLANG$1 = vr$28;
	int32 vr$29 = FBGETOPTION( 0 );
	PREVOUTTYPE$1 = vr$29;
	if( IS_FBCTINF$1 == 0 ) goto label$1071;
	{
		FBSETOPTION( 0, 3 );
	}
	label$1071:;
	label$1070:;
	label$1072:;
	{
		int32 vr$31 = FBGETOPTION( 2 );
		int32 vr$33 = FBGETOPTION( 2 );
		if( (~(*(int32*)((uint8*)&FBC$ + 40)) & ((-(vr$31 != 0) & -(vr$33 != 3)) | ~(*(int32*)((uint8*)&FBC$ + 48)))) == 0 ) goto label$1076;
		{
			FBCADDTEMP( &ASMFILE$1 );
		}
		goto label$1075;
		label$1076:;
		if( MODULE_COUNT$1 != 1 ) goto label$1077;
		{
			int32 vr$40 = FBRESTARTGETCOUNT(  );
			if( vr$40 <= 0 ) goto label$1079;
			{
				FBCREMOVETEMP( &ASMFILE$1 );
			}
			label$1079:;
			label$1078:;
		}
		label$1077:;
		label$1075:;
		FBINIT( IS_MAIN$1, (uint8*)((uint8*)&FBC$ + 1006), MODULE_COUNT$1 );
		if( IS_FBCTINF$1 == 0 ) goto label$1081;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), (struct $7TSTRSET*)((uint8*)&FBC$ + 440) );
		}
		goto label$1080;
		label$1081:;
		{
			FBSETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 264), (struct $7TSTRSET*)((uint8*)&FBC$ + 308) );
		}
		label$1080:;
		FBCOMPILE( (uint8*)*(uint8**)MODULE$1, (uint8*)*(uint8**)&ASMFILE$1, &PPONLYFILE$1, IS_MAIN$1 );
		int32 vr$49 = ERRGETCOUNT(  );
		if( vr$49 <= 0 ) goto label$1083;
		{
			FBCEND( 1 );
		}
		label$1083:;
		label$1082:;
		int32 vr$50 = FBSHOULDRESTART(  );
		if( vr$50 != 0 ) goto label$1085;
		{
			goto label$1073;
		}
		label$1085:;
		label$1084:;
		FBRESTARTENDREQUEST( 7 );
		FBEND(  );
		int32 vr$51 = FBSHOULDRESTART(  );
		if( vr$51 == 0 ) goto label$1087;
		{
			int32 vr$52 = FBGETOPTION( 12 );
			if( vr$52 != -1 ) goto label$1089;
			{
				FBSETOPTION( 10, PREVLANG$1 );
			}
			label$1089:;
			label$1088:;
			fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
			fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
			goto label$1056;
		}
		label$1087:;
		label$1086:;
	}
	label$1074:;
	goto label$1072;
	label$1073:;
	if( IS_FBCTINF$1 != 0 ) goto label$1091;
	{
		FBGETLIBS( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), (struct $7TSTRSET*)((uint8*)&FBC$ + 440) );
	}
	label$1091:;
	label$1090:;
	FBEND(  );
	if( IS_FBCTINF$1 == 0 ) goto label$1093;
	{
		FBSETOPTION( 0, PREVOUTTYPE$1 );
	}
	label$1093:;
	label$1092:;
	FBSETOPTION( 10, PREVLANG$1 );
	fb_StrDelete( (FBSTRING*)&PPONLYFILE$1 );
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	label$1056:;
}

static void HCOMPILEMODULES( void )
{
	label$1094:;
	int32 ISMAIN$1;
	int32 CHECKMAIN$1;
	FBSTRING MAINFILE$1;
	__builtin_memset( &MAINFILE$1, 0, 12 );
	struct $9FBCIOFILE* MODULE$1;
	ISMAIN$1 = 0;
	{
		int32 TMP$514$2;
		int32 vr$1 = FBGETOPTION( 0 );
		TMP$514$2 = vr$1;
		if( TMP$514$2 == 0 ) goto label$1098;
		label$1099:;
		if( TMP$514$2 != 2 ) goto label$1097;
		label$1098:;
		{
			CHECKMAIN$1 = -1;
		}
		goto label$1096;
		label$1097:;
		{
			CHECKMAIN$1 = *(int32*)((uint8*)&FBC$ + 1136);
		}
		label$1100:;
		label$1096:;
	}
	if( CHECKMAIN$1 == 0 ) goto label$1102;
	{
		FBSTRING* vr$3 = HSTRIPPATH( (uint8*)((uint8*)&FBC$ + 745) );
		fb_StrAssign( (void*)&MAINFILE$1, -1, (void*)vr$3, -1, 0 );
	}
	label$1102:;
	label$1101:;
	void* vr$6 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$6;
	if( MODULE$1 != (struct $9FBCIOFILE*)0u ) goto label$1104;
	{
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), (struct $7TSTRSET*)((uint8*)&FBC$ + 264) );
		STRSETCOPY( (struct $7TSTRSET*)((uint8*)&FBC$ + 440), (struct $7TSTRSET*)((uint8*)&FBC$ + 308) );
		fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
		goto label$1095;
	}
	label$1104:;
	label$1103:;
	int32 MODULE_COUNT$1;
	MODULE_COUNT$1 = 0;
	label$1105:;
	{
		if( CHECKMAIN$1 == 0 ) goto label$1109;
		{
			FBSTRING TMP$515$3;
			__builtin_memset( &TMP$515$3, 0, 12 );
			FBSTRING* vr$15 = HSTRIPEXT( (FBSTRING*)MODULE$1 );
			fb_StrAssign( (void*)&TMP$515$3, -1, (void*)vr$15, -1, 0 );
			FBSTRING* vr$17 = HSTRIPPATH( (uint8*)*(uint8**)&TMP$515$3 );
			int32 vr$19 = fb_StrCompare( (void*)&MAINFILE$1, -1, (void*)vr$17, -1 );
			ISMAIN$1 = -(vr$19 == 0);
			fb_StrDelete( (FBSTRING*)&TMP$515$3 );
		}
		label$1109:;
		label$1108:;
		MODULE_COUNT$1 = MODULE_COUNT$1 + 1;
		HCOMPILEBAS( MODULE$1, ISMAIN$1, 0, MODULE_COUNT$1 );
		int32 vr$23 = FBSHOULDRESTART(  );
		if( vr$23 == 0 ) goto label$1111;
		{
			fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
			goto label$1095;
		}
		label$1111:;
		label$1110:;
		void* vr$25 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$25;
	}
	label$1107:;
	if( MODULE$1 != (struct $9FBCIOFILE*)0u ) goto label$1105;
	label$1106:;
	fb_StrDelete( (FBSTRING*)&MAINFILE$1 );
	label$1095:;
}

static int32 HPARSEXPM( FBSTRING* XPMFILE$1, FBSTRING* CODE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1112:;
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"\x0A" "dim shared as zstring ptr ", 28, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"fb_program_icon_data", 21, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"(0 to ...) = _\x0A{ _\x0A", 20, 0 );
	int32 F$1;
	int32 vr$1 = fb_FileFree(  );
	F$1 = vr$1;
	int32 vr$2 = fb_FileOpen( (FBSTRING*)XPMFILE$1, 2u, 0u, 0u, F$1, 0 );
	if( vr$2 == 0 ) goto label$1115;
	{
		goto label$1113;
	}
	label$1115:;
	label$1114:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	fb_FileLineInput( F$1, (void*)&LN$1, -1, 0 );
	FBSTRING* vr$6 = fb_StrUcase2( (FBSTRING*)&LN$1, 0 );
	int32 vr$7 = fb_StrCompare( (void*)vr$6, -1, (void*)"/* XPM */", 10 );
	if( vr$7 == 0 ) goto label$1117;
	{
		int32 vr$8 = fb_FileClose( F$1 );
		if( vr$8 == 0 ) goto label$1118;
		void* vr$9 = fb_ErrorThrowAt( 3280, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
		goto *vr$9;
		label$1118:;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1113;
	}
	label$1117:;
	label$1116:;
	int32 SAW_ROWS$1;
	SAW_ROWS$1 = 0;
	label$1119:;
	int32 vr$11 = fb_FileEof( F$1 );
	if( vr$11 != 0 ) goto label$1120;
	{
		fb_FileLineInput( F$1, (void*)&LN$1, -1, 0 );
		int32 vr$14 = fb_StrLen( (void*)&LN$1, -1 );
		FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
		int32 vr$17 = fb_StrInstr( 1, (FBSTRING*)&LN$1, (FBSTRING*)vr$15 );
		FBSTRING* vr$21 = fb_RIGHT( (FBSTRING*)&LN$1, (vr$14 - vr$17) + 1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$21, -1, 0 );
		FBSTRING* vr$23 = fb_StrAllocTempDescZEx( (uint8*)"\x22", 1 );
		int32 vr$25 = fb_StrInstr( 2, (FBSTRING*)&LN$1, (FBSTRING*)vr$23 );
		FBSTRING* vr$27 = fb_LEFT( (FBSTRING*)&LN$1, vr$25 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$27, -1, 0 );
		int32 vr$30 = fb_StrLen( (void*)&LN$1, -1 );
		if( vr$30 <= 0 ) goto label$1122;
		{
			FBSTRING TMP$522$3;
			if( SAW_ROWS$1 == 0 ) goto label$1124;
			{
				fb_StrConcatByref( (void*)CODE$1, -1, (void*)", _\x0A", 5, 0 );
			}
			label$1124:;
			label$1123:;
			__builtin_memset( &TMP$522$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$522$3, (void*)"\x09@", 3, (void*)&LN$1, -1 );
			fb_StrConcatByref( (void*)CODE$1, -1, (void*)vr$34, -1, 0 );
			SAW_ROWS$1 = -1;
		}
		label$1122:;
		label$1121:;
	}
	goto label$1119;
	label$1120:;
	int32 vr$35 = fb_FileClose( F$1 );
	if( vr$35 == 0 ) goto label$1125;
	void* vr$36 = fb_ErrorThrowAt( 3310, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$36;
	label$1125:;
	if( SAW_ROWS$1 != 0 ) goto label$1127;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1113;
	}
	label$1127:;
	label$1126:;
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)" _ \x0A", 5, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"}\x0A\x0A", 4, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"extern as zstring ptr ptr fb_program_icon alias \x22" "fb_program_icon\x22\x0A", 67, 0 );
	fb_StrConcatByref( (void*)CODE$1, -1, (void*)"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\x0A", 74, 0 );
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1113:;
	return fb$result$1;
}

static int32 HCOMPILEXPM( void )
{
	int32 TMP$533$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1128:;
	FBSTRING XPMFILE$1;
	__builtin_memset( &XPMFILE$1, 0, 12 );
	FBSTRING CODE$1;
	__builtin_memset( &CODE$1, 0, 12 );
	int32 FO$1;
	int32 vr$4 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
	if( vr$4 != 0 ) goto label$1131;
	{
		fb$result$1 = -1;
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1129;
	}
	label$1131:;
	label$1130:;
	fb_StrAssign( (void*)&XPMFILE$1, -1, (void*)((uint8*)&FBC$ + 136), -1, 0 );
	int32 vr$9 = fb_StrLen( *(void**)((uint8*)&FBC$ + 148), -1 );
	if( vr$9 <= 0 ) goto label$1133;
	{
		FBSTRING* vr$10 = HSTRIPEXT( *(FBSTRING**)((uint8*)&FBC$ + 148) );
		fb_StrAssign( (void*)((uint8*)&FBC$ + 136), -1, (void*)vr$10, -1, 0 );
	}
	label$1133:;
	label$1132:;
	fb_StrConcatByref( (void*)((uint8*)&FBC$ + 136), -1, (void*)".bas", 5, 0 );
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1135;
	{
		FBSTRING TMP$531$2;
		FBSTRING TMP$532$2;
		FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"parsing xpm: ", 13 );
		fb_PrintString( 0, (FBSTRING*)vr$13, 2 );
		__builtin_memset( &TMP$531$2, 0, 12 );
		FBSTRING* vr$18 = fb_StrConcat( &TMP$531$2, (void*)&XPMFILE$1, -1, (void*)" -o ", 5 );
		__builtin_memset( &TMP$532$2, 0, 12 );
		FBSTRING* vr$21 = fb_StrConcat( &TMP$532$2, (void*)vr$18, -1, (void*)((uint8*)&FBC$ + 136), -1 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
	}
	label$1135:;
	label$1134:;
	int32 vr$24 = HPARSEXPM( &XPMFILE$1, &CODE$1 );
	if( vr$24 != 0 ) goto label$1137;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1129;
	}
	label$1137:;
	label$1136:;
	int32 vr$27 = fb_FileFree(  );
	FO$1 = vr$27;
	int32 vr$29 = fb_FileOpen( (FBSTRING*)((uint8*)&FBC$ + 136), 3u, 0u, 0u, FO$1, 0 );
	if( vr$29 == 0 ) goto label$1139;
	{
		fb_StrDelete( (FBSTRING*)&CODE$1 );
		fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
		goto label$1129;
	}
	label$1139:;
	label$1138:;
	TMP$533$1 = FO$1;
	fb_PrintString( TMP$533$1, (FBSTRING*)&CODE$1, 0 );
	int32 vr$33 = fb_FileClose( FO$1 );
	if( vr$33 == 0 ) goto label$1140;
	void* vr$34 = fb_ErrorThrowAt( 3366, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$34;
	label$1140:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$1142;
	{
		FBCADDTEMP( (FBSTRING*)((uint8*)&FBC$ + 136) );
	}
	label$1142:;
	label$1141:;
	HCOMPILEBAS( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136), 0, 0, -1 );
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&CODE$1 );
	fb_StrDelete( (FBSTRING*)&XPMFILE$1 );
	label$1129:;
	return fb$result$1;
}

static int32 HCOMPILESTAGE2MODULE( struct $9FBCIOFILE* MODULE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1143:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	FBSTRING ASMFILE$1;
	__builtin_memset( &ASMFILE$1, 0, 12 );
	FBSTRING* vr$3 = HGETASMNAME( MODULE$1, 2 );
	fb_StrAssign( (void*)&ASMFILE$1, -1, (void*)vr$3, -1, 0 );
	int32 vr$6 = FBGETOPTION( 3 );
	if( (~(*(int32*)((uint8*)&FBC$ + 48)) & (-(vr$6 != 11) | ~(*(int32*)((uint8*)&FBC$ + 52)))) == 0 ) goto label$1146;
	{
		FBCADDTEMP( &ASMFILE$1 );
	}
	label$1146:;
	label$1145:;
	{
		int32 TMP$534$2;
		int32 vr$12 = FBGETOPTION( 2 );
		TMP$534$2 = vr$12;
		if( TMP$534$2 != 1 ) goto label$1148;
		label$1149:;
		{
			boolean ISM64TARGET$3;
			ISM64TARGET$3 = (boolean)0;
			{
				int32 TMP$535$4;
				int32 vr$13 = FBGETCPUFAMILY(  );
				TMP$535$4 = vr$13;
				if( TMP$535$4 != 0 ) goto label$1151;
				label$1152:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m32 ", 6, 0 );
				}
				goto label$1150;
				label$1151:;
				if( TMP$535$4 != 1 ) goto label$1153;
				label$1154:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m64 ", 6, 0 );
					ISM64TARGET$3 = (boolean)1;
				}
				goto label$1150;
				label$1153:;
				if( TMP$535$4 != 4 ) goto label$1155;
				label$1156:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m32 ", 6, 0 );
				}
				goto label$1150;
				label$1155:;
				if( TMP$535$4 == 5 ) goto label$1158;
				label$1159:;
				if( TMP$535$4 != 6 ) goto label$1157;
				label$1158:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-m64 ", 6, 0 );
					ISM64TARGET$3 = (boolean)1;
				}
				label$1157:;
				label$1150:;
			}
			int32 vr$18 = FBGETOPTION( 3 );
			if( vr$18 == 11 ) goto label$1161;
			{
				int32 TMP$538$4;
				int32 TMP$539$4;
				int32 vr$19 = FBGETCPUFAMILY(  );
				if( vr$19 == 4 ) goto label$1162;
				int32 vr$20 = FBGETCPUFAMILY(  );
				TMP$538$4 = -(vr$20 == 5);
				goto label$1457;
				label$1162:;
				TMP$538$4 = -1;
				label$1457:;
				if( TMP$538$4 != 0 ) goto label$1163;
				int32 vr$22 = FBGETCPUFAMILY(  );
				TMP$539$4 = -(vr$22 == 6);
				goto label$1458;
				label$1163:;
				TMP$539$4 = -1;
				label$1458:;
				if( TMP$539$4 == 0 ) goto label$1165;
				{
					if( *(int32*)((uint8*)&FBC$ + 28) == 0 ) goto label$1167;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mcpu=native ", 14, 0 );
					}
					goto label$1166;
					label$1167:;
					{
						FBSTRING TMP$542$6;
						FBSTRING TMP$543$6;
						FBSTRING TMP$544$6;
						uint8* vr$25 = FBGETGCCARCH(  );
						__builtin_memset( &TMP$542$6, 0, 12 );
						FBSTRING* vr$28 = fb_StrConcat( &TMP$542$6, (void*)"-mcpu=", 7, (void*)vr$25, 0 );
						__builtin_memset( &TMP$543$6, 0, 12 );
						FBSTRING* vr$31 = fb_StrConcat( &TMP$543$6, (void*)vr$28, -1, (void*)" ", 2 );
						__builtin_memset( &TMP$544$6, 0, 12 );
						FBSTRING* vr$35 = fb_StrConcat( &TMP$544$6, (void*)&LN$1, -1, (void*)vr$31, -1 );
						fb_StrAssign( (void*)&LN$1, -1, (void*)vr$35, -1, 0 );
					}
					label$1166:;
				}
				goto label$1164;
				label$1165:;
				{
					if( *(int32*)((uint8*)&FBC$ + 28) == 0 ) goto label$1169;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=native ", 15, 0 );
					}
					goto label$1168;
					label$1169:;
					{
						FBSTRING TMP$547$6;
						FBSTRING TMP$548$6;
						FBSTRING TMP$549$6;
						uint8* vr$38 = FBGETGCCARCH(  );
						__builtin_memset( &TMP$547$6, 0, 12 );
						FBSTRING* vr$41 = fb_StrConcat( &TMP$547$6, (void*)"-march=", 8, (void*)vr$38, 0 );
						__builtin_memset( &TMP$548$6, 0, 12 );
						FBSTRING* vr$44 = fb_StrConcat( &TMP$548$6, (void*)vr$41, -1, (void*)" ", 2 );
						__builtin_memset( &TMP$549$6, 0, 12 );
						FBSTRING* vr$48 = fb_StrConcat( &TMP$549$6, (void*)&LN$1, -1, (void*)vr$44, -1 );
						fb_StrAssign( (void*)&LN$1, -1, (void*)vr$48, -1, 0 );
					}
					label$1168:;
				}
				label$1164:;
			}
			label$1161:;
			label$1160:;
			int32 vr$50 = FBGETOPTION( 37 );
			if( vr$50 == 0 ) goto label$1171;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fPIC ", 7, 0 );
			}
			label$1171:;
			label$1170:;
			int32 vr$52 = FBGETOPTION( 3 );
			if( vr$52 == 11 ) goto label$1173;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-S -nostdlib -nostdinc -Wall ", 30, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-unused ", 13, 0 );
			}
			goto label$1172;
			label$1173:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable ", 90, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 ", 70, 0 );
			}
			label$1172:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-main ", 11, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Werror-implicit-function-declaration ", 39, 0 );
			int32 vr$59 = FBGETOPTION( 3 );
			if( vr$59 == 11 ) goto label$1175;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-O", 3, 0 );
				int32 vr$61 = FBGETOPTION( 8 );
				FBSTRING* vr$62 = fb_IntToStr( vr$61 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$62, -1, 0 );
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			}
			label$1175:;
			label$1174:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-strict-aliasing ", 22, 0 );
			int32 vr$66 = FBGETOPTION( 3 );
			if( vr$66 == 11 ) goto label$1177;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-frounding-math ", 17, 0 );
			}
			label$1177:;
			label$1176:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-math-errno ", 17, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fwrapv ", 9, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-exceptions -fno-asynchronous-unwind-tables ", 49, 0 );
			int32 vr$73 = FBGETOPTION( 21 );
			if( (-(-ISM64TARGET$3 == -1) | -(vr$73 == -1)) == 0 ) goto label$1179;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-funwind-tables ", 17, 0 );
			}
			goto label$1178;
			label$1179:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-fno-unwind-tables ", 20, 0 );
			}
			label$1178:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-Wno-format ", 13, 0 );
			int32 vr$79 = FBGETOPTION( 14 );
			if( vr$79 == 0 ) goto label$1181;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-g ", 4, 0 );
			}
			label$1181:;
			label$1180:;
			int32 vr$81 = FBGETOPTION( 5 );
			if( vr$81 != 1 ) goto label$1183;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mfpmath=sse -msse2 ", 21, 0 );
			}
			label$1183:;
			label$1182:;
			{
				int32 TMP$570$4;
				int32 vr$83 = FBGETCPUFAMILY(  );
				TMP$570$4 = vr$83;
				if( TMP$570$4 == 0 ) goto label$1186;
				label$1187:;
				if( TMP$570$4 != 1 ) goto label$1185;
				label$1186:;
				{
					int32 vr$84 = FBGETOPTION( 9 );
					if( vr$84 != 0 ) goto label$1189;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-masm=intel ", 13, 0 );
					}
					label$1189:;
					label$1188:;
				}
				label$1185:;
				label$1184:;
			}
		}
		goto label$1147;
		label$1148:;
		if( TMP$534$2 != 2 ) goto label$1190;
		label$1191:;
		{
			{
				int32 TMP$572$4;
				int32 vr$86 = FBGETCPUFAMILY(  );
				TMP$572$4 = vr$86;
				if( TMP$572$4 != 0 ) goto label$1193;
				label$1194:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=x86 ", 12, 0 );
				}
				goto label$1192;
				label$1193:;
				if( TMP$572$4 != 1 ) goto label$1195;
				label$1196:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=x86-64 ", 15, 0 );
				}
				goto label$1192;
				label$1195:;
				if( TMP$572$4 != 2 ) goto label$1197;
				label$1198:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=arm ", 12, 0 );
				}
				goto label$1192;
				label$1197:;
				if( TMP$572$4 != 3 ) goto label$1199;
				label$1200:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-march=armv8-a ", 16, 0 );
				}
				goto label$1192;
				label$1199:;
				if( TMP$572$4 != 4 ) goto label$1201;
				label$1202:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mcpu=powerpc ", 15, 0 );
				}
				goto label$1192;
				label$1201:;
				if( TMP$572$4 != 5 ) goto label$1203;
				label$1204:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mcpu=powerpc64 ", 17, 0 );
				}
				goto label$1192;
				label$1203:;
				if( TMP$572$4 != 6 ) goto label$1205;
				label$1206:;
				{
					fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-mcpu=powerpc64le ", 19, 0 );
				}
				label$1205:;
				label$1192:;
			}
			int32 vr$94 = FBGETOPTION( 37 );
			if( vr$94 == 0 ) goto label$1208;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-relocation-model=pic ", 23, 0 );
			}
			label$1208:;
			label$1207:;
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-O", 3, 0 );
			int32 vr$97 = FBGETOPTION( 8 );
			FBSTRING* vr$98 = fb_IntToStr( vr$97 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$98, -1, 0 );
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)" ", 2, 0 );
			{
				int32 TMP$581$4;
				int32 vr$101 = FBGETCPUFAMILY(  );
				TMP$581$4 = vr$101;
				if( TMP$581$4 == 0 ) goto label$1211;
				label$1212:;
				if( TMP$581$4 != 1 ) goto label$1210;
				label$1211:;
				{
					int32 vr$102 = FBGETOPTION( 9 );
					if( vr$102 != 0 ) goto label$1214;
					{
						fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--x86-asm-syntax=intel ", 24, 0 );
					}
					label$1214:;
					label$1213:;
				}
				label$1210:;
				label$1209:;
			}
		}
		label$1190:;
		label$1147:;
	}
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$105 = HGETASMNAME( MODULE$1, 1 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$105, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22 ", 3, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-o \x22", 5, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)&ASMFILE$1, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&FBC$ + 1556), -1, 0 );
	{
		int32 TMP$585$2;
		int32 vr$114 = FBGETOPTION( 2 );
		TMP$585$2 = vr$114;
		if( TMP$585$2 != 1 ) goto label$1216;
		label$1217:;
		{
			$7FBCTOOL GCC$3;
			GCC$3 = 3;
			int32 vr$115 = FBGETOPTION( 3 );
			if( vr$115 != 11 ) goto label$1219;
			{
				GCC$3 = 14;
			}
			label$1219:;
			label$1218:;
			int32 vr$117 = FBCRUNBIN( (uint8*)"compiling C", GCC$3, &LN$1 );
			fb$result$1 = vr$117;
		}
		goto label$1215;
		label$1216:;
		if( TMP$585$2 != 2 ) goto label$1220;
		label$1221:;
		{
			int32 vr$119 = FBCRUNBIN( (uint8*)"compiling LLVM IR", 4, &LN$1 );
			fb$result$1 = vr$119;
		}
		label$1220:;
		label$1215:;
	}
	fb_StrDelete( (FBSTRING*)&ASMFILE$1 );
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1144:;
	return fb$result$1;
}

static void HCOMPILESTAGE2MODULES( void )
{
	label$1222:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1224:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0u ) goto label$1225;
	{
		int32 vr$2 = HCOMPILESTAGE2MODULE( MODULE$1 );
		if( vr$2 != 0 ) goto label$1227;
		{
			FBCEND( 1 );
		}
		label$1227:;
		label$1226:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1224;
	label$1225:;
	label$1223:;
}

static int32 HASSEMBLEMODULE( struct $9FBCIOFILE* MODULE$1 )
{
	FBSTRING TMP$592$1;
	FBSTRING TMP$593$1;
	FBSTRING TMP$594$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1228:;
	FBSTRING LN$1;
	__builtin_memset( &LN$1, 0, 12 );
	{
		int32 TMP$588$2;
		int32 vr$2 = FBGETCPUFAMILY(  );
		TMP$588$2 = vr$2;
		if( TMP$588$2 != 0 ) goto label$1231;
		label$1232:;
		{
			int32 vr$3 = FBGETOPTION( 3 );
			if( vr$3 != 9 ) goto label$1234;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-arch i386 ", 12, 0 );
			}
			goto label$1233;
			label$1234:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--32 ", 6, 0 );
			}
			label$1233:;
		}
		goto label$1230;
		label$1231:;
		if( TMP$588$2 != 1 ) goto label$1235;
		label$1236:;
		{
			int32 vr$6 = FBGETOPTION( 3 );
			if( vr$6 != 9 ) goto label$1238;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"-arch x86_64 ", 14, 0 );
			}
			goto label$1237;
			label$1238:;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--64 ", 6, 0 );
			}
			label$1237:;
		}
		label$1235:;
		label$1230:;
	}
	int32 vr$9 = FBGETOPTION( 14 );
	if( vr$9 != 0 ) goto label$1240;
	{
		int32 vr$10 = FBGETOPTION( 3 );
		if( vr$10 == 9 ) goto label$1242;
		{
			int32 vr$11 = FBGETOPTION( 3 );
			if( vr$11 == 11 ) goto label$1244;
			{
				fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"--strip-local-absolute ", 24, 0 );
			}
			label$1244:;
			label$1243:;
		}
		label$1242:;
		label$1241:;
	}
	label$1240:;
	label$1239:;
	int32 vr$13 = FBGETOPTION( 3 );
	if( vr$13 != 11 ) goto label$1246;
	{
		fb$result$1 = -1;
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1229;
	}
	label$1246:;
	label$1245:;
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22", 2, 0 );
	FBSTRING* vr$16 = HGETASMNAME( MODULE$1, 2 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)vr$16, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22 ", 3, 0 );
	__builtin_memset( &TMP$592$1, 0, 12 );
	FBSTRING* vr$22 = fb_StrConcat( &TMP$592$1, (void*)"-o \x22", 5, *(void**)((uint8*)MODULE$1 + 12), -1 );
	__builtin_memset( &TMP$593$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$593$1, (void*)vr$22, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$594$1, 0, 12 );
	FBSTRING* vr$29 = fb_StrConcat( &TMP$594$1, (void*)&LN$1, -1, (void*)vr$25, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$29, -1, 0 );
	fb_StrConcatAssign( (void*)&LN$1, -1, (void*)((uint8*)&FBC$ + 1532), -1, 0 );
	$7FBCTOOL GAS$1;
	GAS$1 = 0;
	int32 vr$33 = FBGETOPTION( 3 );
	if( vr$33 != 11 ) goto label$1248;
	{
		GAS$1 = 11;
	}
	label$1248:;
	label$1247:;
	int32 vr$35 = FBCRUNBIN( (uint8*)"assembling", GAS$1, &LN$1 );
	if( vr$35 != 0 ) goto label$1250;
	{
		fb_StrDelete( (FBSTRING*)&LN$1 );
		goto label$1229;
	}
	label$1250:;
	label$1249:;
	if( *(int32*)((uint8*)&FBC$ + 52) != 0 ) goto label$1252;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)MODULE$1 + 12) );
	}
	label$1252:;
	label$1251:;
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1229:;
	return fb$result$1;
}

static void HASSEMBLEMODULES( void )
{
	label$1253:;
	struct $9FBCIOFILE* MODULE$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 72) );
	MODULE$1 = (struct $9FBCIOFILE*)vr$1;
	label$1255:;
	if( MODULE$1 == (struct $9FBCIOFILE*)0u ) goto label$1256;
	{
		int32 vr$2 = HASSEMBLEMODULE( MODULE$1 );
		if( vr$2 != 0 ) goto label$1258;
		{
			FBCEND( 1 );
		}
		label$1258:;
		label$1257:;
		void* vr$3 = LISTGETNEXT( (void*)MODULE$1 );
		MODULE$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1255;
	label$1256:;
	label$1254:;
}

static int32 HASSEMBLERC( struct $9FBCIOFILE* RC$1 )
{
	FBSTRING TMP$597$1;
	FBSTRING TMP$598$1;
	FBSTRING TMP$599$1;
	FBSTRING TMP$600$1;
	FBSTRING TMP$601$1;
	FBSTRING TMP$602$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1259:;
	FBSTRING LN$1;
	fb_StrInit( (void*)&LN$1, -1, (void*)"--output-format=coff --include-dir=.", 37, 0 );
	__builtin_memset( &TMP$597$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$597$1, (void*)" \x22", 3, (void*)RC$1, -1 );
	__builtin_memset( &TMP$598$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$598$1, (void*)vr$6, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$599$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$599$1, (void*)&LN$1, -1, (void*)vr$9, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$13, -1, 0 );
	__builtin_memset( &TMP$600$1, 0, 12 );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$600$1, (void*)" \x22", 3, *(void**)((uint8*)RC$1 + 12), -1 );
	__builtin_memset( &TMP$601$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$601$1, (void*)vr$18, -1, (void*)"\x22", 2 );
	__builtin_memset( &TMP$602$1, 0, 12 );
	FBSTRING* vr$25 = fb_StrConcat( &TMP$602$1, (void*)&LN$1, -1, (void*)vr$21, -1 );
	fb_StrAssign( (void*)&LN$1, -1, (void*)vr$25, -1, 0 );
	int32 vr$28 = FBCRUNBIN( (uint8*)"compiling rc", 8, &LN$1 );
	fb$result$1 = vr$28;
	if( *(int32*)((uint8*)&FBC$ + 52) != 0 ) goto label$1262;
	{
		FBCADDTEMP( *(FBSTRING**)((uint8*)RC$1 + 12) );
	}
	label$1262:;
	label$1261:;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1260:;
	return fb$result$1;
}

static void HASSEMBLERCS( void )
{
	label$1263:;
	struct $9FBCIOFILE* RC$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 104) );
	RC$1 = (struct $9FBCIOFILE*)vr$1;
	label$1265:;
	if( RC$1 == (struct $9FBCIOFILE*)0u ) goto label$1266;
	{
		int32 vr$2 = HASSEMBLERC( RC$1 );
		if( vr$2 != 0 ) goto label$1268;
		{
			FBCEND( 1 );
		}
		label$1268:;
		label$1267:;
		void* vr$3 = LISTGETNEXT( (void*)RC$1 );
		RC$1 = (struct $9FBCIOFILE*)vr$3;
	}
	goto label$1265;
	label$1266:;
	label$1264:;
}

static void HASSEMBLEXPM( void )
{
	label$1269:;
	int32 vr$1 = fb_StrLen( (void*)((uint8*)&FBC$ + 136), -1 );
	if( vr$1 <= 0 ) goto label$1272;
	{
		int32 vr$2 = FBGETOPTION( 2 );
		if( vr$2 == 0 ) goto label$1274;
		{
			HCOMPILESTAGE2MODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136) );
		}
		label$1274:;
		label$1273:;
		int32 vr$5 = HASSEMBLEMODULE( (struct $9FBCIOFILE*)((uint8*)&FBC$ + 136) );
		if( vr$5 != 0 ) goto label$1276;
		{
			FBCEND( 1 );
		}
		label$1276:;
		label$1275:;
	}
	label$1272:;
	label$1271:;
	label$1270:;
}

static int32 HCOMPILEFBCTINF( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1277:;
	struct $9FBCIOFILE FBCTINF$1;
	_ZN9FBCIOFILEC1Ev( &FBCTINF$1 );
	FBSTRING OBJFILE$1;
	__builtin_memset( &OBJFILE$1, 0, 12 );
	int32 FO$1;
	fb_StrAssign( (void*)&FBCTINF$1, -1, (void*)"__fb_ct.inf.bas", 16, 0 );
	fb_StrAssign( (void*)&OBJFILE$1, -1, (void*)"__fb_ct.inf", 12, 0 );
	*(FBSTRING**)((uint8*)&FBCTINF$1 + 12) = &OBJFILE$1;
	if( *(int32*)((uint8*)&FBC$ + 56) == 0 ) goto label$1280;
	{
		FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"creating: ", 10 );
		fb_PrintString( 0, (FBSTRING*)vr$6, 2 );
		fb_PrintString( 0, (FBSTRING*)&FBCTINF$1, 1 );
	}
	label$1280:;
	label$1279:;
	int32 vr$8 = fb_FileFree(  );
	FO$1 = vr$8;
	int32 vr$10 = fb_FileOpen( (FBSTRING*)&FBCTINF$1, 3u, 0u, 0u, FO$1, 0 );
	if( vr$10 == 0 ) goto label$1282;
	{
		fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
		_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
		goto label$1278;
	}
	label$1282:;
	label$1281:;
	int32 vr$13 = fb_FileClose( FO$1 );
	if( vr$13 == 0 ) goto label$1283;
	void* vr$14 = fb_ErrorThrowAt( 3770, (uint8*)"src/compiler/fbc.bas", (void*)0u, (void*)0u );
	goto *vr$14;
	label$1283:;
	if( *(int32*)((uint8*)&FBC$ + 40) != 0 ) goto label$1285;
	{
		FBCADDTEMP( (FBSTRING*)&FBCTINF$1 );
	}
	label$1285:;
	label$1284:;
	HCOMPILEBAS( &FBCTINF$1, 0, -1, -1 );
	int32 vr$17 = FBGETOPTION( 2 );
	if( vr$17 == 0 ) goto label$1287;
	{
		HCOMPILESTAGE2MODULE( &FBCTINF$1 );
	}
	label$1287:;
	label$1286:;
	int32 vr$20 = HASSEMBLEMODULE( &FBCTINF$1 );
	fb$result$1 = vr$20;
	fb_StrDelete( (FBSTRING*)&OBJFILE$1 );
	_ZN9FBCIOFILED1Ev( &FBCTINF$1 );
	label$1278:;
	return fb$result$1;
}

static int32 HARCHIVEFILES( void )
{
	FBSTRING TMP$607$1;
	FBSTRING TMP$608$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$1288:;
	HSETOUTNAME(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)((uint8*)&FBC$ + 484) );
	int32 vr$3 = fb_FileKill( (FBSTRING*)vr$2 );
	if( vr$3 == 0 ) goto label$1291;
	{
	}
	label$1291:;
	label$1290:;
	FBSTRING LN$1;
	__builtin_memset( &TMP$607$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$607$1, (void*)"-rsc \x22", 7, (void*)((uint8*)&FBC$ + 484), 261 );
	__builtin_memset( &TMP$608$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$608$1, (void*)vr$7, -1, (void*)"\x22 ", 3 );
	fb_StrInit( (void*)&LN$1, -1, (void*)vr$10, -1, 0 );
	int32 vr$12 = FBGETOPTION( 39 );
	int32 vr$13 = FBISCROSSCOMP(  );
	if( (vr$12 & ~vr$13) == 0 ) goto label$1293;
	{
		FBSTRING TMP$612$2;
		int32 vr$16 = HCOMPILEFBCTINF(  );
		if( vr$16 == 0 ) goto label$1295;
		{
			fb_StrConcatAssign( (void*)&LN$1, -1, (void*)"\x22__fb_ct.inf\x22 ", 15, 0 );
		}
		label$1295:;
		label$1294:;
		__builtin_memset( &TMP$612$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$612$2, -1, (void*)"__fb_ct.inf", 12, 0 );
		FBCADDTEMP( &TMP$612$2 );
		fb_StrDelete( (FBSTRING*)&TMP$612$2 );
	}
	label$1293:;
	label$1292:;
	FBSTRING* OBJFILE$1;
	void* vr$23 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 200) );
	OBJFILE$1 = (FBSTRING*)vr$23;
	label$1296:;
	if( OBJFILE$1 == (FBSTRING*)0u ) goto label$1297;
	{
		FBSTRING TMP$613$2;
		FBSTRING TMP$614$2;
		FBSTRING TMP$615$2;
		__builtin_memset( &TMP$613$2, 0, 12 );
		FBSTRING* vr$26 = fb_StrConcat( &TMP$613$2, (void*)"\x22", 2, (void*)OBJFILE$1, -1 );
		__builtin_memset( &TMP$614$2, 0, 12 );
		FBSTRING* vr$29 = fb_StrConcat( &TMP$614$2, (void*)vr$26, -1, (void*)"\x22 ", 3 );
		__builtin_memset( &TMP$615$2, 0, 12 );
		FBSTRING* vr$33 = fb_StrConcat( &TMP$615$2, (void*)&LN$1, -1, (void*)vr$29, -1 );
		fb_StrAssign( (void*)&LN$1, -1, (void*)vr$33, -1, 0 );
		void* vr$35 = LISTGETNEXT( (void*)OBJFILE$1 );
		OBJFILE$1 = (FBSTRING*)vr$35;
	}
	goto label$1296;
	label$1297:;
	int32 vr$37 = FBCRUNBIN( (uint8*)"archiving", 1, &LN$1 );
	fb$result$1 = vr$37;
	fb_StrDelete( (FBSTRING*)&LN$1 );
	label$1289:;
	return fb$result$1;
}

static void HSETDEFAULTLIBPATHS( void )
{
	FBSTRING TMP$617$1;
	FBSTRING TMP$618$1;
	label$1298:;
	__builtin_memset( &TMP$617$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$617$1, -1, (void*)((uint8*)&FBC$ + 2751), 261, 0 );
	FBCADDDEFLIBPATH( &TMP$617$1 );
	fb_StrDelete( (FBSTRING*)&TMP$617$1 );
	__builtin_memset( &TMP$618$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$618$1, -1, (void*)".", 2, 0 );
	FBCADDDEFLIBPATH( &TMP$618$1 );
	fb_StrDelete( (FBSTRING*)&TMP$618$1 );
	int32 vr$9 = FBGETOPTION( 3 );
	if( vr$9 == 11 ) goto label$1301;
	{
		FBCADDLIBPATHFOR( (uint8*)"libgcc.a" );
		{
			int32 TMP$620$3;
			int32 vr$10 = FBGETOPTION( 3 );
			TMP$620$3 = vr$10;
			if( TMP$620$3 != 5 ) goto label$1303;
			label$1304:;
			{
				FBCADDLIBPATHFOR( (uint8*)"libc++.so" );
			}
			goto label$1302;
			label$1303:;
			if( TMP$620$3 != 3 ) goto label$1305;
			label$1306:;
			{
				FBCADDLIBPATHFOR( (uint8*)"libstdcx.a" );
			}
			goto label$1302;
			label$1305:;
			{
				FBCADDLIBPATHFOR( (uint8*)"libstdc++.so" );
			}
			label$1307:;
			label$1302:;
		}
	}
	label$1301:;
	label$1300:;
	{
		int32 TMP$624$2;
		int32 vr$11 = FBGETOPTION( 3 );
		TMP$624$2 = vr$11;
		if( TMP$624$2 != 3 ) goto label$1309;
		label$1310:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libm.a" );
		}
		goto label$1308;
		label$1309:;
		if( TMP$624$2 != 0 ) goto label$1311;
		label$1312:;
		{
			FBCADDLIBPATHFOR( (uint8*)"libmingw32.a" );
		}
		label$1311:;
		label$1308:;
	}
	label$1299:;
}

static void FBCADDDEFLIB( uint8* LIBNAME$1 )
{
	FBSTRING TMP$627$1;
	label$1313:;
	__builtin_memset( &TMP$627$1, 0, 12 );
	fb_StrAssign( (void*)&TMP$627$1, -1, (void*)LIBNAME$1, 0, 0 );
	STRSETADD( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), &TMP$627$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$627$1 );
	label$1314:;
}

static FBSTRING* HGETFBLIBNAMESUFFIX( void )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$1315:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 vr$2 = FBGETOPTION( 35 );
	if( vr$2 == 0 ) goto label$1318;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"mt", 3, 0 );
	}
	label$1318:;
	label$1317:;
	int32 vr$4 = FBGETOPTION( 37 );
	if( vr$4 == 0 ) goto label$1320;
	{
		fb_StrConcatAssign( (void*)&S$1, -1, (void*)"pic", 4, 0 );
	}
	label$1320:;
	label$1319:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$1316:;
	FBSTRING* vr$10 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$10;
}

static void HADDDEFAULTLIBS( void )
{
	label$1321:;
	int32 vr$0 = FBGETOPTION( 32 );
	if( vr$0 == 0 ) goto label$1324;
	{
		FBSTRING TMP$628$2;
		FBSTRING TMP$629$2;
		__builtin_memset( &TMP$629$2, 0, 12 );
		FBSTRING* vr$2 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$628$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$628$2, (void*)"fbrt", 5, (void*)vr$2, -1 );
		fb_StrAssign( (void*)&TMP$629$2, -1, (void*)vr$5, -1, 0 );
		FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$629$2 );
		fb_StrDelete( (FBSTRING*)&TMP$629$2 );
	}
	goto label$1323;
	label$1324:;
	{
		FBSTRING TMP$630$2;
		FBSTRING TMP$631$2;
		__builtin_memset( &TMP$631$2, 0, 12 );
		FBSTRING* vr$9 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$630$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$630$2, (void*)"fb", 3, (void*)vr$9, -1 );
		fb_StrAssign( (void*)&TMP$631$2, -1, (void*)vr$12, -1, 0 );
		FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$631$2 );
		fb_StrDelete( (FBSTRING*)&TMP$631$2 );
	}
	label$1323:;
	int32 vr$15 = FBGETOPTION( 36 );
	if( vr$15 == 0 ) goto label$1326;
	{
		FBSTRING TMP$633$2;
		FBSTRING TMP$634$2;
		__builtin_memset( &TMP$634$2, 0, 12 );
		FBSTRING* vr$17 = HGETFBLIBNAMESUFFIX(  );
		__builtin_memset( &TMP$633$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$633$2, (void*)"fbgfx", 6, (void*)vr$17, -1 );
		fb_StrAssign( (void*)&TMP$634$2, -1, (void*)vr$20, -1, 0 );
		FBCADDDEFLIB( (uint8*)*(uint8**)&TMP$634$2 );
		fb_StrDelete( (FBSTRING*)&TMP$634$2 );
		{
			uint32 TMP$635$3;
			int32 vr$23 = FBGETOPTION( 3 );
			TMP$635$3 = (uint32)vr$23;
			goto label$1328;
			label$1329:;
			{
				FBCADDDEFLIB( (uint8*)"gdi32" );
				FBCADDDEFLIB( (uint8*)"winmm" );
			}
			goto label$1327;
			label$1330:;
			{
				FBSTRING TMP$639$4;
				__builtin_memset( &TMP$639$4, 0, 12 );
				fb_StrAssign( (void*)&TMP$639$4, -1, (void*)"/usr/X11R6/lib", 15, 0 );
				FBCADDDEFLIBPATH( &TMP$639$4 );
				fb_StrDelete( (FBSTRING*)&TMP$639$4 );
				FBCADDDEFLIB( (uint8*)"X11" );
				FBCADDDEFLIB( (uint8*)"Xext" );
				FBCADDDEFLIB( (uint8*)"Xpm" );
				FBCADDDEFLIB( (uint8*)"Xrandr" );
				FBCADDDEFLIB( (uint8*)"Xrender" );
			}
			goto label$1327;
			label$1328:;
			static const void* tmp$801[11] = {
				&&label$1329,
				&&label$1329,
				&&label$1330,
				&&label$1327,
				&&label$1327,
				&&label$1330,
				&&label$1330,
				&&label$1330,
				&&label$1330,
				&&label$1330,
				&&label$1330,
			};
			if( TMP$635$3 > 10u ) goto label$1327;
			goto *tmp$801[TMP$635$3 - 0u];
			label$1327:;
		}
	}
	label$1326:;
	label$1325:;
	{
		uint32 TMP$645$2;
		int32 vr$28 = FBGETOPTION( 3 );
		TMP$645$2 = (uint32)vr$28;
		goto label$1332;
		label$1333:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"cygwin" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			int32 vr$29 = FBGETOPTION( 23 );
			if( vr$29 == 0 ) goto label$1335;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1335:;
			label$1334:;
		}
		goto label$1331;
		label$1336:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"System" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1331;
		label$1337:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			int32 vr$30 = FBGETOPTION( 35 );
			if( vr$30 == 0 ) goto label$1339;
			{
				FBCADDDEFLIB( (uint8*)"pthread" );
				FBCADDDEFLIB( (uint8*)"socket" );
			}
			label$1339:;
			label$1338:;
		}
		goto label$1331;
		label$1340:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1331;
		label$1341:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1331;
		label$1342:;
		{
			FBSTRING* vr$31 = FBCFINDLIBFILE( (uint8*)"libtinfo.a" );
			int32 vr$32 = fb_StrLen( (void*)vr$31, -1 );
			FBSTRING* vr$34 = FBCFINDLIBFILE( (uint8*)"libtinfo.so" );
			int32 vr$35 = fb_StrLen( (void*)vr$34, -1 );
			if( (-(vr$32 > 0) | -(vr$35 > 0)) == 0 ) goto label$1344;
			{
				FBCADDDEFLIB( (uint8*)"tinfo" );
			}
			goto label$1343;
			label$1344:;
			{
				FBCADDDEFLIB( (uint8*)"ncurses" );
			}
			label$1343:;
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"dl" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBSTRING* vr$38 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int32 vr$39 = fb_StrLen( (void*)vr$38, -1 );
			FBSTRING* vr$41 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.so" );
			int32 vr$42 = fb_StrLen( (void*)vr$41, -1 );
			if( (-(vr$39 > 0) | -(vr$42 > 0)) == 0 ) goto label$1346;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1346:;
			label$1345:;
			FBCADDDEFLIB( (uint8*)"c" );
		}
		goto label$1331;
		label$1347:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1331;
		label$1348:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"pthread" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"m" );
			FBCADDDEFLIB( (uint8*)"ncurses" );
		}
		goto label$1331;
		label$1349:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"msvcrt" );
			FBCADDDEFLIB( (uint8*)"kernel32" );
			FBCADDDEFLIB( (uint8*)"user32" );
			FBCADDDEFLIB( (uint8*)"mingw32" );
			FBCADDDEFLIB( (uint8*)"mingwex" );
			FBCADDDEFLIB( (uint8*)"moldname" );
			FBSTRING* vr$45 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.a" );
			int32 vr$46 = fb_StrLen( (void*)vr$45, -1 );
			FBSTRING* vr$48 = FBCFINDLIBFILE( (uint8*)"libgcc_eh.dll.a" );
			int32 vr$49 = fb_StrLen( (void*)vr$48, -1 );
			if( (-(vr$46 > 0) | -(vr$49 > 0)) == 0 ) goto label$1351;
			{
				FBCADDDEFLIB( (uint8*)"gcc_eh" );
			}
			label$1351:;
			label$1350:;
			int32 vr$52 = FBGETOPTION( 23 );
			if( vr$52 == 0 ) goto label$1353;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1353:;
			label$1352:;
		}
		goto label$1331;
		label$1354:;
		{
			FBCADDDEFLIB( (uint8*)"gcc" );
			FBCADDDEFLIB( (uint8*)"fbgfx" );
			FBCADDDEFLIB( (uint8*)"openxdk" );
			FBCADDDEFLIB( (uint8*)"hal" );
			FBCADDDEFLIB( (uint8*)"c" );
			FBCADDDEFLIB( (uint8*)"usb" );
			FBCADDDEFLIB( (uint8*)"xboxkrnl" );
			FBCADDDEFLIB( (uint8*)"m" );
			int32 vr$53 = FBGETOPTION( 23 );
			if( vr$53 == 0 ) goto label$1356;
			{
				FBCADDDEFLIB( (uint8*)"gmon" );
			}
			label$1356:;
			label$1355:;
		}
		goto label$1331;
		label$1332:;
		static const void* tmp$802[11] = {
			&&label$1349,
			&&label$1333,
			&&label$1342,
			&&label$1337,
			&&label$1354,
			&&label$1340,
			&&label$1341,
			&&label$1341,
			&&label$1348,
			&&label$1336,
			&&label$1347,
		};
		if( TMP$645$2 > 10u ) goto label$1331;
		goto *tmp$802[TMP$645$2 - 0u];
		label$1331:;
	}
	label$1322:;
}

static void HEXCLUDELIBSFROMLINK( void )
{
	label$1357:;
	struct $11TSTRSETITEM* I$1;
	void* vr$1 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&FBC$ + 352) );
	I$1 = (struct $11TSTRSETITEM*)vr$1;
	label$1359:;
	if( I$1 == (struct $11TSTRSETITEM*)0u ) goto label$1360;
	{
		STRSETDEL( (struct $7TSTRSET*)((uint8*)&FBC$ + 396), (FBSTRING*)I$1 );
		void* vr$5 = LISTGETNEXT( (void*)I$1 );
		I$1 = (struct $11TSTRSETITEM*)vr$5;
	}
	goto label$1359;
	label$1360:;
	label$1358:;
}

static void HPRINTOPTIONS( int32 VERBOSE$1 )
{
	label$1361:;
	FBSTRING* vr$0 = fb_StrAllocTempDescZEx( (uint8*)"usage: fbc [options] <input files>", 34 );
	fb_PrintString( 0, (FBSTRING*)vr$0, 1 );
	FBSTRING* vr$1 = fb_StrAllocTempDescZEx( (uint8*)"input files:", 12 );
	fb_PrintString( 0, (FBSTRING*)vr$1, 1 );
	FBSTRING* vr$2 = fb_StrAllocTempDescZEx( (uint8*)"  *.a = static library, *.o = object file, *.bas = source", 57 );
	fb_PrintString( 0, (FBSTRING*)vr$2, 1 );
	FBSTRING* vr$3 = fb_StrAllocTempDescZEx( (uint8*)"  *.rc = resource script, *.res = compiled resource (win32)", 59 );
	fb_PrintString( 0, (FBSTRING*)vr$3, 1 );
	FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"  *.xpm = icon resource (*nix/*bsd)", 35 );
	fb_PrintString( 0, (FBSTRING*)vr$4, 1 );
	FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"options:", 8 );
	fb_PrintString( 0, (FBSTRING*)vr$5, 1 );
	FBSTRING* vr$6 = fb_StrAllocTempDescZEx( (uint8*)"  @<file>          Read more command line arguments from a file", 63 );
	fb_PrintString( 0, (FBSTRING*)vr$6, 1 );
	FBSTRING* vr$7 = fb_StrAllocTempDescZEx( (uint8*)"  -a <file>        Treat file as .o/.a input file", 49 );
	fb_PrintString( 0, (FBSTRING*)vr$7, 1 );
	FBSTRING* vr$8 = fb_StrAllocTempDescZEx( (uint8*)"  -arch <type>     Set target architecture (default: 686)", 57 );
	fb_PrintString( 0, (FBSTRING*)vr$8, 1 );
	FBSTRING* vr$9 = fb_StrAllocTempDescZEx( (uint8*)"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$9, 1 );
	FBSTRING* vr$10 = fb_StrAllocTempDescZEx( (uint8*)"  -b <file>        Treat file as .bas input file", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$10, 1 );
	if( VERBOSE$1 == 0 ) goto label$1364;
	{
		FBSTRING* vr$11 = fb_StrAllocTempDescZEx( (uint8*)"  -buildprefix <name>  specify prefix on tool names (as, ar, ld)", 64 );
		fb_PrintString( 0, (FBSTRING*)vr$11, 1 );
	}
	label$1364:;
	label$1363:;
	FBSTRING* vr$12 = fb_StrAllocTempDescZEx( (uint8*)"  -c               Compile only, do not link", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$12, 1 );
	FBSTRING* vr$13 = fb_StrAllocTempDescZEx( (uint8*)"  -C               Preserve temporary .o files", 46 );
	fb_PrintString( 0, (FBSTRING*)vr$13, 1 );
	FBSTRING* vr$14 = fb_StrAllocTempDescZEx( (uint8*)"  -d <name>[=<val>]  Add a global #define", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$14, 1 );
	FBSTRING* vr$15 = fb_StrAllocTempDescZEx( (uint8*)"  -dll             Same as -dylib", 33 );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	FBSTRING* vr$17 = fb_StrAllocTempDescZEx( (uint8*)"  -e               Enable runtime error checking", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$17, 1 );
	if( VERBOSE$1 == 0 ) goto label$1366;
	{
		FBSTRING* vr$18 = fb_StrAllocTempDescZEx( (uint8*)"  -earray          Enable array bounds checking", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$18, 1 );
		FBSTRING* vr$19 = fb_StrAllocTempDescZEx( (uint8*)"  -eassert         Enable assert() and assertwarn() checking", 60 );
		fb_PrintString( 0, (FBSTRING*)vr$19, 1 );
		FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"  -edebug          Enable __FB_DEBUG__", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		FBSTRING* vr$21 = fb_StrAllocTempDescZEx( (uint8*)"  -edebuginfo      Add debug info", 33 );
		fb_PrintString( 0, (FBSTRING*)vr$21, 1 );
		FBSTRING* vr$22 = fb_StrAllocTempDescZEx( (uint8*)"  -elocation       Enable error location reporting", 50 );
		fb_PrintString( 0, (FBSTRING*)vr$22, 1 );
		FBSTRING* vr$23 = fb_StrAllocTempDescZEx( (uint8*)"  -enullptr        Enable null-pointer checking", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$23, 1 );
		FBSTRING* vr$24 = fb_StrAllocTempDescZEx( (uint8*)"  -eunwind         Enable call stack unwind information", 55 );
		fb_PrintString( 0, (FBSTRING*)vr$24, 1 );
		FBSTRING* vr$25 = fb_StrAllocTempDescZEx( (uint8*)"  -entry           Change the entry point of the program from main()", 68 );
		fb_PrintString( 0, (FBSTRING*)vr$25, 1 );
	}
	label$1366:;
	label$1365:;
	FBSTRING* vr$26 = fb_StrAllocTempDescZEx( (uint8*)"  -ex              -e plus RESUME support", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$26, 1 );
	FBSTRING* vr$27 = fb_StrAllocTempDescZEx( (uint8*)"  -exx             -ex plus array bounds/null-pointer checking", 62 );
	fb_PrintString( 0, (FBSTRING*)vr$27, 1 );
	FBSTRING* vr$28 = fb_StrAllocTempDescZEx( (uint8*)"  -export          Export symbols for dynamic linkage", 53 );
	fb_PrintString( 0, (FBSTRING*)vr$28, 1 );
	FBSTRING* vr$29 = fb_StrAllocTempDescZEx( (uint8*)"  -forcelang <name>  Override #lang statements in source code", 61 );
	fb_PrintString( 0, (FBSTRING*)vr$29, 1 );
	if( VERBOSE$1 == 0 ) goto label$1368;
	{
		FBSTRING* vr$30 = fb_StrAllocTempDescZEx( (uint8*)"  -fpmode fast|precise  Select floating-point math accuracy/speed", 65 );
		fb_PrintString( 0, (FBSTRING*)vr$30, 1 );
		FBSTRING* vr$31 = fb_StrAllocTempDescZEx( (uint8*)"  -fpu x87|sse     Set target FPU", 33 );
		fb_PrintString( 0, (FBSTRING*)vr$31, 1 );
	}
	label$1368:;
	label$1367:;
	FBSTRING* vr$32 = fb_StrAllocTempDescZEx( (uint8*)"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()", 75 );
	fb_PrintString( 0, (FBSTRING*)vr$32, 1 );
	if( VERBOSE$1 == 0 ) goto label$1370;
	{
		FBSTRING* vr$33 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas         Select GNU gas 32-bit assembler backend", 58 );
		fb_PrintString( 0, (FBSTRING*)vr$33, 1 );
		FBSTRING* vr$34 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas64       Select GNU gas 64-bit assembler backend", 58 );
		fb_PrintString( 0, (FBSTRING*)vr$34, 1 );
		FBSTRING* vr$35 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gcc         Select GNU gcc C backend", 43 );
		fb_PrintString( 0, (FBSTRING*)vr$35, 1 );
		FBSTRING* vr$36 = fb_StrAllocTempDescZEx( (uint8*)"  -gen llvm        Select LLVM backend", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$36, 1 );
	}
	goto label$1369;
	label$1370:;
	{
		FBSTRING* vr$37 = fb_StrAllocTempDescZEx( (uint8*)"  -gen gas|gas64|gcc|llvm  Select code generation backend", 57 );
		fb_PrintString( 0, (FBSTRING*)vr$37, 1 );
	}
	label$1369:;
	FBSTRING* vr$38 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-help         Show this help output; use '-help -v' to show verbose help", 77 );
	fb_PrintString( 0, (FBSTRING*)vr$38, 1 );
	FBSTRING* vr$39 = fb_StrAllocTempDescZEx( (uint8*)"  -i <path>        Add an include file search path", 50 );
	fb_PrintString( 0, (FBSTRING*)vr$39, 1 );
	FBSTRING* vr$40 = fb_StrAllocTempDescZEx( (uint8*)"  -include <file>  Pre-#include a file for each input .bas", 58 );
	fb_PrintString( 0, (FBSTRING*)vr$40, 1 );
	FBSTRING* vr$41 = fb_StrAllocTempDescZEx( (uint8*)"  -l <name>        Link in a library", 36 );
	fb_PrintString( 0, (FBSTRING*)vr$41, 1 );
	FBSTRING* vr$42 = fb_StrAllocTempDescZEx( (uint8*)"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb", 64 );
	fb_PrintString( 0, (FBSTRING*)vr$42, 1 );
	FBSTRING* vr$43 = fb_StrAllocTempDescZEx( (uint8*)"  -lib             Create a static library", 42 );
	fb_PrintString( 0, (FBSTRING*)vr$43, 1 );
	FBSTRING* vr$44 = fb_StrAllocTempDescZEx( (uint8*)"  -m <name>        Specify main module (default if not -c: first input .bas)", 76 );
	fb_PrintString( 0, (FBSTRING*)vr$44, 1 );
	FBSTRING* vr$45 = fb_StrAllocTempDescZEx( (uint8*)"  -map <file>      Save linking map to file", 43 );
	fb_PrintString( 0, (FBSTRING*)vr$45, 1 );
	FBSTRING* vr$46 = fb_StrAllocTempDescZEx( (uint8*)"  -maxerr <n>      Only show <n> errors", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$46, 1 );
	FBSTRING* vr$47 = fb_StrAllocTempDescZEx( (uint8*)"  -mt              Use thread-safe FB runtime", 45 );
	fb_PrintString( 0, (FBSTRING*)vr$47, 1 );
	FBSTRING* vr$48 = fb_StrAllocTempDescZEx( (uint8*)"  -nodeflibs       Do not include the default libraries when linking", 68 );
	fb_PrintString( 0, (FBSTRING*)vr$48, 1 );
	FBSTRING* vr$49 = fb_StrAllocTempDescZEx( (uint8*)"  -noerrline       Do not show source context in error messages", 63 );
	fb_PrintString( 0, (FBSTRING*)vr$49, 1 );
	FBSTRING* vr$50 = fb_StrAllocTempDescZEx( (uint8*)"  -nolib <a,b,c>   Do not include the specified libraries when linking", 70 );
	fb_PrintString( 0, (FBSTRING*)vr$50, 1 );
	FBSTRING* vr$51 = fb_StrAllocTempDescZEx( (uint8*)"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files", 78 );
	fb_PrintString( 0, (FBSTRING*)vr$51, 1 );
	FBSTRING* vr$52 = fb_StrAllocTempDescZEx( (uint8*)"  -nostrip         Do not strip symbol information from the output file", 71 );
	fb_PrintString( 0, (FBSTRING*)vr$52, 1 );
	FBSTRING* vr$53 = fb_StrAllocTempDescZEx( (uint8*)"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file", 74 );
	fb_PrintString( 0, (FBSTRING*)vr$53, 1 );
	FBSTRING* vr$54 = fb_StrAllocTempDescZEx( (uint8*)"  -O <value>       Optimization level (default: 0)", 50 );
	fb_PrintString( 0, (FBSTRING*)vr$54, 1 );
	FBSTRING* vr$55 = fb_StrAllocTempDescZEx( (uint8*)"  -p <path>        Add a library search path", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$55, 1 );
	FBSTRING* vr$56 = fb_StrAllocTempDescZEx( (uint8*)"  -pic             Generate position-independent code (non-x86 Unix shared libs)", 80 );
	fb_PrintString( 0, (FBSTRING*)vr$56, 1 );
	FBSTRING* vr$57 = fb_StrAllocTempDescZEx( (uint8*)"  -pp              Write out preprocessed input file (.pp.bas) only", 67 );
	fb_PrintString( 0, (FBSTRING*)vr$57, 1 );
	FBSTRING* vr$58 = fb_StrAllocTempDescZEx( (uint8*)"  -prefix <path>   Set the compiler prefix path", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$58, 1 );
	FBSTRING* vr$59 = fb_StrAllocTempDescZEx( (uint8*)"  -print host|target  Display host/target system name", 53 );
	fb_PrintString( 0, (FBSTRING*)vr$59, 1 );
	FBSTRING* vr$60 = fb_StrAllocTempDescZEx( (uint8*)"  -print fblibdir  Display the compiler's lib/ path", 51 );
	fb_PrintString( 0, (FBSTRING*)vr$60, 1 );
	FBSTRING* vr$61 = fb_StrAllocTempDescZEx( (uint8*)"  -print x         Display output binary/library file name (if known)", 69 );
	fb_PrintString( 0, (FBSTRING*)vr$61, 1 );
	if( VERBOSE$1 == 0 ) goto label$1372;
	{
		FBSTRING* vr$62 = fb_StrAllocTempDescZEx( (uint8*)"  -print sha-1     Display compiler's source code commit sha-1 (if known)", 73 );
		fb_PrintString( 0, (FBSTRING*)vr$62, 1 );
	}
	label$1372:;
	label$1371:;
	FBSTRING* vr$63 = fb_StrAllocTempDescZEx( (uint8*)"  -profile         Enable function profiling", 44 );
	fb_PrintString( 0, (FBSTRING*)vr$63, 1 );
	FBSTRING* vr$64 = fb_StrAllocTempDescZEx( (uint8*)"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only", 65 );
	fb_PrintString( 0, (FBSTRING*)vr$64, 1 );
	FBSTRING* vr$65 = fb_StrAllocTempDescZEx( (uint8*)"  -rr              Write out the final .asm only", 48 );
	fb_PrintString( 0, (FBSTRING*)vr$65, 1 );
	FBSTRING* vr$66 = fb_StrAllocTempDescZEx( (uint8*)"  -R               Preserve temporary .asm/.c/.ll/.def files", 60 );
	fb_PrintString( 0, (FBSTRING*)vr$66, 1 );
	FBSTRING* vr$67 = fb_StrAllocTempDescZEx( (uint8*)"  -RR              Preserve the final .asm file", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$67, 1 );
	FBSTRING* vr$68 = fb_StrAllocTempDescZEx( (uint8*)"  -s console|gui   Select win32 subsystem", 41 );
	fb_PrintString( 0, (FBSTRING*)vr$68, 1 );
	FBSTRING* vr$69 = fb_StrAllocTempDescZEx( (uint8*)"  -showincludes    Display a tree of file names of #included files", 66 );
	fb_PrintString( 0, (FBSTRING*)vr$69, 1 );
	FBSTRING* vr$70 = fb_StrAllocTempDescZEx( (uint8*)"  -static          Prefer static libraries over dynamic ones when linking", 73 );
	fb_PrintString( 0, (FBSTRING*)vr$70, 1 );
	FBSTRING* vr$71 = fb_StrAllocTempDescZEx( (uint8*)"  -strip           Omit all symbol information from the output file", 67 );
	fb_PrintString( 0, (FBSTRING*)vr$71, 1 );
	FBSTRING* vr$72 = fb_StrAllocTempDescZEx( (uint8*)"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)", 75 );
	fb_PrintString( 0, (FBSTRING*)vr$72, 1 );
	if( VERBOSE$1 == 0 ) goto label$1374;
	{
		FBSTRING* vr$73 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$73, 1 );
	}
	goto label$1373;
	label$1374:;
	{
		FBSTRING* vr$74 = fb_StrAllocTempDescZEx( (uint8*)"  -target <name>   Set cross-compilation target", 47 );
		fb_PrintString( 0, (FBSTRING*)vr$74, 1 );
	}
	label$1373:;
	FBSTRING* vr$75 = fb_StrAllocTempDescZEx( (uint8*)"  -title <name>    Set XBE display title (xbox)", 47 );
	fb_PrintString( 0, (FBSTRING*)vr$75, 1 );
	FBSTRING* vr$76 = fb_StrAllocTempDescZEx( (uint8*)"  -v               Be verbose", 29 );
	fb_PrintString( 0, (FBSTRING*)vr$76, 1 );
	FBSTRING* vr$77 = fb_StrAllocTempDescZEx( (uint8*)"  -vec <n>         Automatic vectorization level (default: 0)", 61 );
	fb_PrintString( 0, (FBSTRING*)vr$77, 1 );
	FBSTRING* vr$78 = fb_StrAllocTempDescZEx( (uint8*)"  [-]-version      Show compiler version", 40 );
	fb_PrintString( 0, (FBSTRING*)vr$78, 1 );
	FBSTRING* vr$79 = fb_StrAllocTempDescZEx( (uint8*)"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value", 70 );
	fb_PrintString( 0, (FBSTRING*)vr$79, 1 );
	if( VERBOSE$1 == 0 ) goto label$1376;
	{
		FBSTRING* vr$80 = fb_StrAllocTempDescZEx( (uint8*)"  -w all           Enable all warnings", 38 );
		fb_PrintString( 0, (FBSTRING*)vr$80, 1 );
		FBSTRING* vr$81 = fb_StrAllocTempDescZEx( (uint8*)"  -w none          Disable all warnings", 39 );
		fb_PrintString( 0, (FBSTRING*)vr$81, 1 );
		FBSTRING* vr$82 = fb_StrAllocTempDescZEx( (uint8*)"  -w param         Enable parameter warnings", 44 );
		fb_PrintString( 0, (FBSTRING*)vr$82, 1 );
		FBSTRING* vr$83 = fb_StrAllocTempDescZEx( (uint8*)"  -w escape        Enable string escape sequence warnings", 57 );
		fb_PrintString( 0, (FBSTRING*)vr$83, 1 );
		FBSTRING* vr$84 = fb_StrAllocTempDescZEx( (uint8*)"  -w next          Enable next statement warnings", 49 );
		fb_PrintString( 0, (FBSTRING*)vr$84, 1 );
		FBSTRING* vr$85 = fb_StrAllocTempDescZEx( (uint8*)"  -w signedness    Enable type signedness warnings", 50 );
		fb_PrintString( 0, (FBSTRING*)vr$85, 1 );
		FBSTRING* vr$86 = fb_StrAllocTempDescZEx( (uint8*)"  -w constness     Enable const type warnings", 45 );
		fb_PrintString( 0, (FBSTRING*)vr$86, 1 );
		FBSTRING* vr$87 = fb_StrAllocTempDescZEx( (uint8*)"  -w suffix        Enable invalid suffix warnings", 49 );
		fb_PrintString( 0, (FBSTRING*)vr$87, 1 );
		FBSTRING* vr$88 = fb_StrAllocTempDescZEx( (uint8*)"  -w error         Report warnings as errors", 44 );
		fb_PrintString( 0, (FBSTRING*)vr$88, 1 );
		FBSTRING* vr$89 = fb_StrAllocTempDescZEx( (uint8*)"  -w upcast        Enable warning when up-casting discards initializers", 71 );
		fb_PrintString( 0, (FBSTRING*)vr$89, 1 );
	}
	label$1376:;
	label$1375:;
	FBSTRING* vr$90 = fb_StrAllocTempDescZEx( (uint8*)"  -Wa <a,b,c>      Pass options to 'as'", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$90, 1 );
	FBSTRING* vr$91 = fb_StrAllocTempDescZEx( (uint8*)"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)", 72 );
	fb_PrintString( 0, (FBSTRING*)vr$91, 1 );
	FBSTRING* vr$92 = fb_StrAllocTempDescZEx( (uint8*)"  -Wl <a,b,c>      Pass options to 'ld'", 39 );
	fb_PrintString( 0, (FBSTRING*)vr$92, 1 );
	FBSTRING* vr$93 = fb_StrAllocTempDescZEx( (uint8*)"  -x <file>        Set output executable/library file name", 58 );
	fb_PrintString( 0, (FBSTRING*)vr$93, 1 );
	if( VERBOSE$1 == 0 ) goto label$1378;
	{
		FBSTRING* vr$94 = fb_StrAllocTempDescZEx( (uint8*)"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB", 56 );
		fb_PrintString( 0, (FBSTRING*)vr$94, 1 );
		FBSTRING* vr$95 = fb_StrAllocTempDescZEx( (uint8*)"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros", 70 );
		fb_PrintString( 0, (FBSTRING*)vr$95, 1 );
		FBSTRING* vr$96 = fb_StrAllocTempDescZEx( (uint8*)"  -z no-thiscall   Don't use '__thiscall' calling convention", 60 );
		fb_PrintString( 0, (FBSTRING*)vr$96, 1 );
		FBSTRING* vr$97 = fb_StrAllocTempDescZEx( (uint8*)"  -z no-fastcall   Don't use '__fastcall' calling convention", 60 );
		fb_PrintString( 0, (FBSTRING*)vr$97, 1 );
		FBSTRING* vr$98 = fb_StrAllocTempDescZEx( (uint8*)"  -z fbrt          Link with 'fbrt' instead of 'fb' runtime library", 67 );
		fb_PrintString( 0, (FBSTRING*)vr$98, 1 );
		FBSTRING* vr$99 = fb_StrAllocTempDescZEx( (uint8*)"  -z nocmdline     Disable #cmdline source directives", 53 );
		fb_PrintString( 0, (FBSTRING*)vr$99, 1 );
		FBSTRING* vr$100 = fb_StrAllocTempDescZEx( (uint8*)"  -z retinflts     Enable returning some types in floating point registers", 74 );
		fb_PrintString( 0, (FBSTRING*)vr$100, 1 );
	}
	label$1378:;
	label$1377:;
	label$1362:;
}

static void HPRINTVERSION( int32 VERBOSE$1 )
{
	FBSTRING TMP$777$1;
	FBSTRING TMP$778$1;
	FBSTRING TMP$779$1;
	FBSTRING TMP$780$1;
	label$1383:;
	FBSTRING CONFIG$1;
	__builtin_memset( &CONFIG$1, 0, 12 );
	int32 vr$1 = FBGETHOSTBITS(  );
	FBSTRING* vr$2 = fb_IntToStr( vr$1 );
	FBSTRING* vr$3 = FBGETHOSTID(  );
	__builtin_memset( &TMP$777$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$777$1, (void*)"FreeBASIC Compiler - Version 1.10.0 (2023-10-18), built for ", 61, (void*)vr$3, -1 );
	__builtin_memset( &TMP$778$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$778$1, (void*)vr$6, -1, (void*)" (", 3 );
	__builtin_memset( &TMP$779$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$779$1, (void*)vr$9, -1, (void*)vr$2, -1 );
	__builtin_memset( &TMP$780$1, 0, 12 );
	FBSTRING* vr$15 = fb_StrConcat( &TMP$780$1, (void*)vr$12, -1, (void*)"bit)", 5 );
	fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
	FBSTRING* vr$16 = fb_StrAllocTempDescZEx( (uint8*)"Copyright (C) 2004-2023 The FreeBASIC development team.", 55 );
	fb_PrintString( 0, (FBSTRING*)vr$16, 1 );
	int32 vr$18 = fb_StrLen( (void*)&CONFIG$1, -1 );
	if( vr$18 <= 0 ) goto label$1386;
	{
		fb_PrintString( 0, (FBSTRING*)&CONFIG$1, 1 );
	}
	label$1386:;
	label$1385:;
	if( VERBOSE$1 == 0 ) goto label$1388;
	{
		FBCPRINTTARGETINFO(  );
		goto label$1390;
		{
			FBSTRING* vr$20 = fb_StrAllocTempDescZEx( (uint8*)"source sha-1: ", 14 );
			fb_PrintString( 0, (FBSTRING*)vr$20, 1 );
		}
		label$1390:;
		label$1389:;
	}
	label$1388:;
	label$1387:;
	fb_StrDelete( (FBSTRING*)&CONFIG$1 );
	label$1384:;
}

__attribute__(( constructor )) static void _GLOBAL__I( void )
{
	label$1446:;
	_ZN6FBCCTXC1Ev( &FBC$ );
	label$1447:;
}

__attribute__(( destructor )) static void _GLOBAL__D( void )
{
	label$1449:;
	_ZN6FBCCTXD1Ev( &FBC$ );
	label$1450:;
}
