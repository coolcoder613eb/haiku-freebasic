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
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
typedef int32 $12FB_DATACLASS;
typedef int32 $11FB_DATATYPE;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int32 SIZE;
	int32 SIGNED;
	int32 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int32 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 28 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
struct $8FBARRAY1IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IlE ) == 36 );
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
int32 fb_ArrayRedimEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayRedimPresvEx( struct $7FBARRAYIvE*, uint32, int32, int32, uint32, ... );
int32 fb_ArrayErase( struct $7FBARRAYIvE* );
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
void free( void* );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
uint32* fb_WstrAssign( uint32*, int32, uint32* );
uint32* fb_WstrAssignFromA( uint32*, int32, void*, int32 );
FBSTRING* fb_WstrAssignToA( void*, int32, uint32*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
uint32* fb_WstrMid( uint32*, int32, int32 );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
int32 fb_StrInstr( int32, FBSTRING*, FBSTRING* );
int32 fb_WstrInstr( int32, uint32*, uint32* );
FBSTRING* fb_OCT_i( uint32 );
uint32* fb_WstrOct_i( uint32 );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
uint32* fb_WstrLeft( uint32*, int32 );
static void fb_ctor__hlpzstr( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void* XREALLOCATE( void*, int32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void DZSTRALLOCATE( struct $8DZSTRING*, int32 );
void DWSTRALLOCATE( struct $8DWSTRING*, int32 );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
static int32 HREMAPCHAR( int32 );
static uint32 HU16TOWCHAR( uint32* );
typedef int32 $13AST_NODECLASS;
typedef int32 $11AST_OPFLAGS;
typedef int32 $6AST_OP;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 36 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 36 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
struct $8FBARRAY2IlE {
	int32* DATA;
	int32* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 48 );
static struct $8FBARRAY2IlE tmp$81$;
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
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_BACKEND;
typedef int32 $13FB_COMPTARGET;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
typedef int32 $7FB_LANG;
typedef int32 $10FB_PDCHECK;
typedef int32 $11FB_MODEVIEW;
struct $12FBCMMLINEOPT {
	$10FB_OUTTYPE OUTTYPE;
	int32 PPONLY;
	$10FB_BACKEND BACKEND;
	$13FB_COMPTARGET TARGET;
	$10FB_CPUTYPE CPUTYPE;
	$10FB_FPUTYPE FPUTYPE;
	$9FB_FPMODE FPMODE;
	$17FB_VECTORIZELEVEL VECTORIZE;
	int32 OPTLEVEL;
	$12FB_ASMSYNTAX ASMSYNTAX;
	$7FB_LANG LANG;
	int32 FORCELANG;
	int32 DEBUG;
	int32 DEBUGINFO;
	int32 ASSERTIONS;
	int32 ERRORCHECK;
	int32 RESUMEERR;
	int32 EXTRAERRCHK;
	int32 ERRLOCATION;
	int32 ARRAYBOUNDCHK;
	int32 NULLPTRCHK;
	int32 UNWINDINFO;
	int32 PROFILE;
	int32 WARNINGLEVEL;
	int32 SHOWERROR;
	int32 MAXERRORS;
	$10FB_PDCHECK PDCHECKOPT;
	int32 GOSUBSETJMP;
	int32 VALISTASPTR;
	int32 NOTHISCALL;
	int32 NOFASTCALL;
	int32 FBRT;
	int32 EXPORT;
	int32 MSBITFIELDS;
	int32 MULTITHREADED;
	int32 GFX;
	int32 PIC;
	int32 STACKSIZE;
	int32 OBJINFO;
	int32 SHOWINCLUDES;
	$11FB_MODEVIEW MODEVIEW;
	int32 NOCMDLINE;
	int32 RETURNINFLTS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBCMMLINEOPT ) == 172 );
typedef int32 $11FB_FUNCMODE;
typedef int32 $12FB_TARGETOPT;
struct $8FBTARGET {
	uint8* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 20 );
typedef int32 $13FBFILE_FORMAT;
struct $6FBFILE {
	int32 NUM;
	uint8 NAME[261];
	uint8* INCFILE;
	int32 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 280 );
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
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 12 );
struct $8FBSYMBOL;
union $7FBVALUE {
	struct $8FBSYMBOL* S;
	int64 I;
	double F;
};
__FB_STATIC_ASSERT( sizeof( union $7FBVALUE ) == 8 );
struct $12AST_NODE_VAR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_VAR ) == 8 );
struct $12AST_NODE_IDX {
	int64 OFS;
	int32 MULT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IDX ) == 16 );
struct $12AST_NODE_PTR {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_PTR ) == 8 );
struct $7ASTNODE;
struct $19AST_TMPSTRLIST_ITEM;
struct $19AST_TMPSTRLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $7ASTNODE* SRCTREE;
	struct $19AST_TMPSTRLIST_ITEM* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $19AST_TMPSTRLIST_ITEM ) == 12 );
struct $13AST_NODE_CALL {
	int32 ISRTL;
	int32 ARGS;
	struct $8FBSYMBOL* CURRARG;
	struct $7ASTNODE* ARGTAIL;
	struct $19AST_TMPSTRLIST_ITEM* STRTAIL;
	struct $8FBSYMBOL* TMPRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CALL ) == 24 );
struct $12AST_NODE_ARG {
	int32 MODE;
	int64 LGT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ARG ) == 16 );
struct $12AST_NODE_IIF {
	struct $8FBSYMBOL* FALSELABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IIF ) == 4 );
typedef int32 $9AST_OPOPT;
struct $11AST_NODE_OP {
	int32 OP;
	$9AST_OPOPT OPTIONS;
	struct $8FBSYMBOL* EX;
};
__FB_STATIC_ASSERT( sizeof( struct $11AST_NODE_OP ) == 12 );
struct $13AST_NODE_LOAD {
	int32 ISRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LOAD ) == 4 );
struct $14AST_NODE_LABEL {
	int32 FLUSH;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_LABEL ) == 4 );
struct $13AST_NODE_OFFS {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_OFFS ) == 8 );
struct $12AST_NODE_LIT {
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_LIT ) == 4 );
typedef int32 $14AST_ASMTOKTYPE;
struct $9ASTASMTOK;
struct $9ASTASMTOK {
	$14AST_ASMTOKTYPE TYPE;
	union {
		struct $8FBSYMBOL* SYM;
		uint8* TEXT;
	};
	struct $9ASTASMTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9ASTASMTOK ) == 12 );
struct $12AST_NODE_ASM {
	struct $9ASTASMTOK* TOKHEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ASM ) == 4 );
struct $14AST_NODE_JMPTB {
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_JMPTB ) == 32 );
struct $12AST_NODE_DBG {
	int32 EX;
	uint8* FILENAME;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_DBG ) == 12 );
struct $12AST_NODE_MEM {
	int64 BYTES;
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_MEM ) == 16 );
struct $14AST_NODE_STACK {
	int32 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_STACK ) == 4 );
struct $16AST_NODE_TYPEINI {
	int64 OFS;
	union {
		int64 BYTES;
		int64 ELEMENTS;
	};
	struct $8FBSYMBOL* SCP;
	struct $8FBSYMBOL* LASTSCP;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_NODE_TYPEINI ) == 24 );
struct $21AST_NODE_TYPEINISCOPE {
	int32 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $21AST_NODE_TYPEINISCOPE ) == 4 );
struct $13AST_BREAKLIST {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_BREAKLIST ) == 8 );
struct $13AST_NODE_PROC {
	int32 ISMAIN;
	struct $7ASTNODE* DECL_LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_PROC ) == 8 );
struct $14AST_NODE_BLOCK {
	struct $7ASTNODE* PARENT;
	int32 INISTMT;
	int32 ENDSTMT;
	struct $8FBSYMBOL* INITLABEL;
	struct $8FBSYMBOL* EXITLABEL;
	struct $13AST_BREAKLIST BREAKLIST;
	struct $13AST_NODE_PROC PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BLOCK ) == 36 );
struct $14AST_NODE_BREAK {
	struct $7ASTNODE* PARENT;
	int32 SCOPE;
	int32 LINENUM;
	int32 STMTNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BREAK ) == 16 );
struct $17AST_NODE_DATASTMT {
	union {
		int32 ID;
		int32 ELMTS;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_NODE_DATASTMT ) == 4 );
struct $13AST_NODE_LINK {
	int32 RET;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LINK ) == 4 );
struct $13AST_NODE_CAST {
	int32 DOCONV;
	int32 DO_CONVFD2FS;
	int32 CONVCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CAST ) == 12 );
struct $7ASTNODE {
	$13AST_NODECLASS CLASS;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8FBSYMBOL* SYM;
	int32 VECTOR;
	union {
		union $7FBVALUE VAL;
		struct $12AST_NODE_VAR VAR_;
		struct $12AST_NODE_IDX IDX;
		struct $12AST_NODE_PTR PTR;
		struct $13AST_NODE_CALL CALL;
		struct $12AST_NODE_ARG ARG;
		struct $12AST_NODE_IIF IIF;
		struct $11AST_NODE_OP OP;
		struct $13AST_NODE_LOAD LOD;
		struct $14AST_NODE_LABEL LBL;
		struct $13AST_NODE_OFFS OFS;
		struct $12AST_NODE_LIT LIT;
		struct $12AST_NODE_ASM ASM;
		struct $14AST_NODE_JMPTB JMPTB;
		struct $12AST_NODE_DBG DBG;
		struct $12AST_NODE_MEM MEM;
		struct $14AST_NODE_STACK STACK;
		struct $16AST_NODE_TYPEINI TYPEINI;
		struct $21AST_NODE_TYPEINISCOPE TYPEINISCOPE;
		struct $14AST_NODE_BLOCK BLOCK;
		struct $14AST_NODE_BREAK BREAK;
		struct $17AST_NODE_DATASTMT DATA;
		struct $13AST_NODE_LINK LINK;
		struct $13AST_NODE_CAST CAST;
	};
	struct $7ASTNODE* L;
	struct $7ASTNODE* R;
	struct $7ASTNODE* PREV;
	struct $7ASTNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7ASTNODE ) == 80 );
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $9FBS_ARRAY {
	int32 DIMENSIONS;
	struct $10FBARRAYDIM* DIMTB;
	int64 DIFF;
	int64 ELEMENTS;
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* DESCTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_ARRAY ) == 32 );
struct $10FBVAR_DESC {
	struct $8FBSYMBOL* ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DESC ) == 4 );
struct $10FBVAR_DATA {
	struct $8FBSYMBOL* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DATA ) == 4 );
struct $7FBS_VAR {
	union {
		uint8* LITTEXT;
		uint32* LITTEXTW;
		struct $7ASTNODE* INITREE;
	};
	struct $9FBS_ARRAY ARRAY;
	struct $10FBVAR_DESC DESC;
	int32 STMTNUM;
	int32 ALIGN;
	struct $10FBVAR_DATA DATA;
	int32 BITPOS;
	int32 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBS_VAR ) == 64 );
struct $10FBSYMBOLTB {
	struct $8FBSYMBOL* OWNER;
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 12 );
struct $8FBHASHTB;
struct $8FBHASHTB {
	struct $8FBSYMBOL* OWNER;
	struct $5THASH TB;
	struct $8FBHASHTB* PREV;
	struct $8FBHASHTB* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBHASHTB ) == 24 );
struct $9FBSYMLIST {
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMLIST ) == 8 );
struct $10FBSYMCHAIN;
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int32 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 24 );
struct $13FBNAMESPC_EXT {
	struct $9FBSYMLIST IMPLIST;
	struct $9FBSYMLIST EXPLIST;
	int32 CNT;
	struct $10FBSYMCHAIN* IMPSYM_HEAD;
	struct $10FBSYMCHAIN* IMPSYM_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBNAMESPC_EXT ) == 28 );
struct $9FBNAMESPC {
	struct $10FBSYMBOLTB SYMTB;
	struct $8FBHASHTB HASHTB;
	struct $13FBNAMESPC_EXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBNAMESPC ) == 40 );
typedef int32 $15FB_STRUCT_INREG;
struct $13FB_STRUCT_DBG {
	int32 TYPENUM;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_STRUCT_DBG ) == 4 );
struct $12FB_STRUCTEXT {
	struct $8FBSYMBOL* CTORHEAD;
	struct $8FBSYMBOL* DEFCTOR;
	struct $8FBSYMBOL* COPYCTOR;
	struct $8FBSYMBOL* COPYCTORCONST;
	struct $8FBSYMBOL* DTOR1;
	struct $8FBSYMBOL* DTOR0;
	struct $8FBSYMBOL* COPYLETOP;
	struct $8FBSYMBOL* COPYLETOPCONST;
	struct $8FBSYMBOL* OPOVLTB[28];
	int32 VTABLEELEMENTS;
	struct $8FBSYMBOL* VTABLE;
	struct $8FBSYMBOL* RTTI;
	int32 ABSTRACTCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_STRUCTEXT ) == 160 );
struct $10FBS_STRUCT {
	struct $9FBNAMESPC NS;
	struct $8FBSYMBOL* BASE;
	struct $8FBSYMBOL* ANONPARENT;
	int32 NATALIGN;
	int64 UNPADLGT;
	int32 OPTIONS;
	uint8 BITPOS;
	uint8 ALIGN;
	$11FB_DATATYPE RETDTYPE;
	$15FB_STRUCT_INREG RETIN2REGS;
	struct $13FB_STRUCT_DBG DBG;
	struct $12FB_STRUCTEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_STRUCT ) == 88 );
struct $8FBS_ENUM {
	struct $9FBNAMESPC NS;
	int32 ELEMENTS;
	struct $13FB_STRUCT_DBG DBG;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_ENUM ) == 48 );
typedef int32 $21FB_PROC_RETURN_METHOD;
typedef int32 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCRTL ) == 4 );
struct $10FB_PROCOVL {
	int16 MINPARAMS;
	int16 MAXPARAMS;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCOVL ) == 8 );
struct $10FB_PROCSTK {
	int32 ARGOFS;
	int32 LOCALOFS;
	int32 LOCALMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCSTK ) == 12 );
struct $10FB_PROCDBG {
	int32 INILINE;
	int32 ENDLINE;
	uint8* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCDBG ) == 12 );
struct $10FB_PROCERR {
	struct $8FBSYMBOL* LASTHND;
	struct $8FBSYMBOL* LASTMOD;
	struct $8FBSYMBOL* LASTFUN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCERR ) == 12 );
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
typedef int32 $12FB_PROCSTATS;
struct $10FB_PROCGSB {
	struct $8FBSYMBOL* CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCGSB ) == 4 );
struct $10FB_PROCEXT {
	struct $8FBSYMBOL* RES;
	struct $10FB_PROCSTK STK;
	struct $10FB_PROCDBG DBG;
	struct $10FB_PROCERR ERR;
	struct $12FB_PROCOPOVL OPOVL;
	struct $5TLIST* STATDTOR;
	$12FB_PROCSTATS STATS;
	int32 STMTNUM;
	int32 PRIORITY;
	struct $10FB_PROCGSB GOSUB;
	struct $7ASTNODE* BASE_INITREE;
	int32 VTABLEINDEX;
	struct $8FBSYMBOL* OVERRIDDEN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCEXT ) == 76 );
struct $8FBS_PROC {
	struct $10FBSYMBOLTB SYMTB;
	int16 PARAMS;
	int16 OPTPARAMS;
	struct $10FBSYMBOLTB PARAMTB;
	$11FB_FUNCMODE MODE;
	$11FB_DATATYPE REALDTYPE;
	struct $8FBSYMBOL* REALSUBTYPE;
	$21FB_PROC_RETURN_METHOD RETURNMETHOD;
	struct $10FB_PROCRTL RTL;
	struct $10FB_PROCOVL OVL;
	struct $10FB_PROCEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_PROC ) == 60 );
typedef int32 $12FB_PARAMMODE;
struct $9FBS_PARAM {
	$12FB_PARAMMODE MODE;
	struct $8FBSYMBOL* VAR;
	struct $7ASTNODE* OPTEXPR;
	int32 BYDESCDIMENSIONS;
	struct $8FBSYMBOL* BYDESCREALSUBTYPE;
	int32 REGNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_PARAM ) == 24 );
struct $9FBS_LABEL {
	struct $8FBSYMBOL* PARENT;
	int32 DECLARED;
	int32 STMTNUM;
	boolean GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_LABEL ) == 16 );
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
typedef int32 $14FB_DEFTOK_TYPE;
struct $9FB_DEFTOK;
struct $9FB_DEFTOK {
	$14FB_DEFTOK_TYPE TYPE;
	union {
		uint8* TEXT;
		uint32* TEXTW;
		int32 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 16 );
typedef int32 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
typedef FBSTRING* (*tmp$28)( void*, int32* );
typedef uint32* (*tmp$29)( void*, int32* );
struct $10FBS_DEFINE {
	int32 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int32 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_DEFINE ) == 28 );
typedef int32 $10FB_TKCLASS;
struct $11FBS_KEYWORD {
	int32 ID;
	$10FB_TKCLASS TKCLASS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBS_KEYWORD ) == 8 );
struct $8FBFWDREF;
struct $8FBFWDREF {
	struct $8FBSYMBOL* REF;
	struct $8FBFWDREF* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBFWDREF ) == 8 );
struct $10FBS_FWDREF {
	struct $8FBFWDREF* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_FWDREF ) == 4 );
struct $11FB_SCOPEDBG {
	int32 INILINE;
	int32 ENDLINE;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* ENDLABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SCOPEDBG ) == 16 );
struct $12FB_SCOPEEMIT {
	int32 BASEOFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_SCOPEEMIT ) == 4 );
struct $9FBS_SCOPE {
	struct $7ASTNODE* BACKNODE;
	struct $10FBSYMBOLTB SYMTB;
	struct $11FB_SCOPEDBG DBG;
	struct $12FB_SCOPEEMIT EMIT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_SCOPE ) == 36 );
struct $13FBS_NAMESPACE {
	struct $9FBNAMESPC NS;
	int32 CNT;
	struct $8FBSYMBOL* LAST_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBS_NAMESPACE ) == 48 );
struct $12FBS_NSIMPORT {
	struct $8FBSYMBOL* IMP_NS;
	struct $8FBSYMBOL* IMP_PREV;
	struct $8FBSYMBOL* IMP_NEXT;
	struct $8FBSYMBOL* EXP_NS;
	struct $8FBSYMBOL* EXP_PREV;
	struct $8FBSYMBOL* EXP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBS_NSIMPORT ) == 24 );
struct $9FBSYMHASH {
	struct $8FBHASHTB* TB;
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMHASH ) == 20 );
struct $8FBSYMBOL {
	$12FB_SYMBCLASS CLASS;
	$13FB_SYMBATTRIB ATTRIB;
	$13FB_PROCATTRIB PATTRIB;
	$12FB_SYMBSTATS STATS;
	struct $9FB_SYMBID ID;
	$11FB_DATATYPE TYP;
	struct $8FBSYMBOL* SUBTYPE;
	uint16 SCOPE;
	int16 MANGLING;
	int64 LGT;
	int64 OFS;
	union {
		struct $7FBS_VAR VAR_;
		union $7FBVALUE VAL;
		struct $10FBS_STRUCT UDT;
		struct $8FBS_ENUM ENUM_;
		struct $8FBS_PROC PROC;
		struct $9FBS_PARAM PARAM;
		struct $9FBS_LABEL LBL;
		struct $10FBS_DEFINE DEF;
		struct $11FBS_KEYWORD KEY;
		struct $10FBS_FWDREF FWD;
		struct $9FBS_SCOPE SCP;
		struct $13FBS_NAMESPACE NSPC;
		struct $12FBS_NSIMPORT NSIMP;
	};
	struct $9FBSYMHASH HASH;
	struct $10FBSYMBOLTB* SYMTB;
	struct $8FBSYMBOL* PARENT;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBSYMBOL ) == 184 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 8 );
typedef int32 $11FB_LANG_OPT;
struct $11FB_LANG_CTX {
	$11FB_LANG_OPT OPT;
	$11FB_DATATYPE INTEGERKEYWORDDTYPE;
	$11FB_DATATYPE INT15LITERALDTYPE;
	$11FB_DATATYPE INT16LITERALDTYPE;
	$11FB_DATATYPE INT31LITERALDTYPE;
	$11FB_DATATYPE INT32LITERALDTYPE;
	$11FB_DATATYPE INT63LITERALDTYPE;
	$11FB_DATATYPE INT64LITERALDTYPE;
	$11FB_DATATYPE FLOATLITERALDTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_LANG_CTX ) == 36 );
struct $8FBOPTION {
	int32 BASE;
	int32 PARAMMODE;
	int32 EXPLICIT;
	int32 PROCPUBLIC;
	int32 ESCAPESTR;
	int32 DYNAMIC;
	int32 GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBOPTION ) == 28 );
typedef int32 $16FB_RESTART_FLAGS;
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 44 );
struct $5FBENV {
	struct $5TLIST PREDEFINES;
	struct $5TLIST PREINCLUDES;
	struct $5TLIST INCLUDEPATHS;
	struct $12FBCMMLINEOPT CLOPT;
	struct $8FBTARGET TARGET;
	int32 WCHAR_DOCONV;
	int32 UNDERSCOREPREFIX;
	int32 POINTERSIZE;
	struct $6FBFILE INF;
	struct $6FBFILE OUTF;
	int32 PPFILE_NUM;
	struct $5THASH FILENAMEHASH;
	struct $5THASH INCFILEHASH;
	struct $5THASH INCONCEHASH;
	int32 INCLUDEREC;
	uint8 ENTRY[128];
	struct $6FBMAIN MAIN;
	struct $11FB_LANG_CTX LANG;
	struct $8FBOPTION OPT;
	int32 INITED;
	int32 MODULE_COUNT;
	$16FB_RESTART_FLAGS RESTART_REQUEST;
	$16FB_RESTART_FLAGS RESTART_ACTION;
	$16FB_RESTART_FLAGS RESTART_STATUS;
	int32 RESTART_COUNT;
	$7FB_LANG RESTART_LANG;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	int32 FBCTINF_STARTED;
};
__FB_STATIC_ASSERT( sizeof( struct $5FBENV ) == 1224 );
extern struct $5FBENV ENV$;

void ZSTRASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$10:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$13;
	{
		SRC_LEN$1 = 0;
	}
	goto label$12;
	label$13:;
	{
		int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
		SRC_LEN$1 = vr$2;
	}
	label$12:;
	if( SRC_LEN$1 != 0 ) goto label$15;
	{
		if( *DST$1 == (uint8*)0u ) goto label$17;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0u;
			goto label$11;
		}
		label$17:;
		label$16:;
	}
	label$15:;
	label$14:;
	if( *DST$1 != (uint8*)0u ) goto label$19;
	{
		DST_LEN$1 = 0;
	}
	goto label$18;
	label$19:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
	}
	label$18:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$21;
	{
		void* vr$10 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$10;
	}
	label$21:;
	label$20:;
	if( *DST$1 == (uint8*)0u ) goto label$23;
	{
		fb_StrAssign( *(void**)DST$1, 0, (void*)SRC$1, 0, 0 );
	}
	label$23:;
	label$22:;
	label$11:;
}

void ZSTRASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$24:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$27;
	{
		SRC_LEN$1 = 0;
	}
	goto label$26;
	label$27:;
	{
		int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$26:;
	if( SRC_LEN$1 != 0 ) goto label$29;
	{
		if( *DST$1 == (uint8*)0u ) goto label$31;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint8*)0u;
			goto label$25;
		}
		label$31:;
		label$30:;
	}
	label$29:;
	label$28:;
	if( *DST$1 != (uint8*)0u ) goto label$33;
	{
		DST_LEN$1 = 0;
	}
	goto label$32;
	label$33:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
	}
	label$32:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$35;
	{
		void* vr$10 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$10;
	}
	label$35:;
	label$34:;
	if( *DST$1 == (uint8*)0u ) goto label$37;
	{
		fb_WstrAssignToA( *(void**)DST$1, 0, (uint32*)SRC$1, 0 );
	}
	label$37:;
	label$36:;
	label$25:;
}

void ZSTRCONCATASSIGN( uint8** DST$1, uint8* SRC$1 )
{
	label$38:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$41;
	{
		goto label$39;
	}
	label$41:;
	label$40:;
	int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$43;
	{
		goto label$39;
	}
	label$43:;
	label$42:;
	if( *DST$1 != (uint8*)0u ) goto label$45;
	{
		DST_LEN$1 = 0;
		void* vr$5 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$5;
	}
	goto label$44;
	label$45:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
		void* vr$12 = XREALLOCATE( *(void**)DST$1, (DST_LEN$1 + SRC_LEN$1) + 1 );
		*DST$1 = (uint8*)vr$12;
	}
	label$44:;
	if( *DST$1 == (uint8*)0u ) goto label$47;
	{
		fb_StrAssign( (void*)((uint8*)*DST$1 + DST_LEN$1), 0, (void*)SRC$1, 0, 0 );
	}
	label$47:;
	label$46:;
	label$39:;
}

void ZSTRCONCATASSIGNW( uint8** DST$1, uint32* SRC$1 )
{
	label$48:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$51;
	{
		goto label$49;
	}
	label$51:;
	label$50:;
	int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$53;
	{
		goto label$49;
	}
	label$53:;
	label$52:;
	if( *DST$1 != (uint8*)0u ) goto label$55;
	{
		DST_LEN$1 = 0;
		void* vr$5 = XALLOCATE( SRC_LEN$1 + 1 );
		*DST$1 = (uint8*)vr$5;
	}
	goto label$54;
	label$55:;
	{
		int32 vr$8 = fb_StrLen( *(void**)DST$1, 0 );
		DST_LEN$1 = vr$8;
		void* vr$12 = XREALLOCATE( *(void**)DST$1, (DST_LEN$1 + SRC_LEN$1) + 1 );
		*DST$1 = (uint8*)vr$12;
	}
	label$54:;
	if( *DST$1 == (uint8*)0u ) goto label$57;
	{
		fb_WstrAssignToA( (void*)((uint8*)*DST$1 + DST_LEN$1), 0, (uint32*)SRC$1, 0 );
	}
	label$57:;
	label$56:;
	label$49:;
}

void WSTRASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$58:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$61;
	{
		SRC_LEN$1 = 0;
	}
	goto label$60;
	label$61:;
	{
		int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
		SRC_LEN$1 = vr$2;
	}
	label$60:;
	if( SRC_LEN$1 != 0 ) goto label$63;
	{
		if( *DST$1 == (uint32*)0u ) goto label$65;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0u;
			goto label$59;
		}
		label$65:;
		label$64:;
	}
	label$63:;
	label$62:;
	if( *DST$1 != (uint32*)0u ) goto label$67;
	{
		DST_LEN$1 = 0;
	}
	goto label$66;
	label$67:;
	{
		int32 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$66:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$69;
	{
		void* vr$11 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$11;
	}
	label$69:;
	label$68:;
	if( *DST$1 == (uint32*)0u ) goto label$71;
	{
		fb_WstrAssign( *DST$1, 0, (uint32*)SRC$1 );
	}
	label$71:;
	label$70:;
	label$59:;
}

void WSTRASSIGNA( uint32** DST$1, uint8* SRC$1 )
{
	label$72:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$75;
	{
		SRC_LEN$1 = 0;
	}
	goto label$74;
	label$75:;
	{
		int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
		SRC_LEN$1 = vr$2;
	}
	label$74:;
	if( SRC_LEN$1 != 0 ) goto label$77;
	{
		if( *DST$1 == (uint32*)0u ) goto label$79;
		{
			free( *(void**)DST$1 );
			*DST$1 = (uint32*)0u;
			goto label$73;
		}
		label$79:;
		label$78:;
	}
	label$77:;
	label$76:;
	if( *DST$1 != (uint32*)0u ) goto label$81;
	{
		DST_LEN$1 = 0;
	}
	goto label$80;
	label$81:;
	{
		int32 vr$8 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$8;
	}
	label$80:;
	if( DST_LEN$1 == SRC_LEN$1 ) goto label$83;
	{
		void* vr$11 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$11;
	}
	label$83:;
	label$82:;
	if( *DST$1 == (uint32*)0u ) goto label$85;
	{
		fb_WstrAssignFromA( *DST$1, 0, (void*)SRC$1, 0 );
	}
	label$85:;
	label$84:;
	label$73:;
}

void WSTRCONCATASSIGN( uint32** DST$1, uint32* SRC$1 )
{
	label$86:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint32*)0u ) goto label$89;
	{
		goto label$87;
	}
	label$89:;
	label$88:;
	int32 vr$2 = fb_WstrLen( (uint32*)SRC$1 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$91;
	{
		goto label$87;
	}
	label$91:;
	label$90:;
	if( *DST$1 != (uint32*)0u ) goto label$93;
	{
		DST_LEN$1 = 0;
		void* vr$6 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$6;
	}
	goto label$92;
	label$93:;
	{
		int32 vr$9 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, ((DST_LEN$1 + SRC_LEN$1) << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$14;
	}
	label$92:;
	if( *DST$1 == (uint32*)0u ) goto label$95;
	{
		fb_WstrAssign( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2 & 31))), 0, (uint32*)SRC$1 );
	}
	label$95:;
	label$94:;
	label$87:;
}

void WSTRCONCATASSIGNW( uint32** DST$1, uint8* SRC$1 )
{
	label$96:;
	int32 DST_LEN$1;
	__builtin_memset( &DST_LEN$1, 0, 4 );
	int32 SRC_LEN$1;
	__builtin_memset( &SRC_LEN$1, 0, 4 );
	if( SRC$1 != (uint8*)0u ) goto label$99;
	{
		goto label$97;
	}
	label$99:;
	label$98:;
	int32 vr$2 = fb_StrLen( (void*)SRC$1, 0 );
	SRC_LEN$1 = vr$2;
	if( SRC_LEN$1 != 0 ) goto label$101;
	{
		goto label$97;
	}
	label$101:;
	label$100:;
	if( *DST$1 != (uint32*)0u ) goto label$103;
	{
		DST_LEN$1 = 0;
		void* vr$6 = XALLOCATE( (SRC_LEN$1 << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$6;
	}
	goto label$102;
	label$103:;
	{
		int32 vr$9 = fb_WstrLen( (uint32*)*DST$1 );
		DST_LEN$1 = vr$9;
		void* vr$14 = XREALLOCATE( *(void**)DST$1, ((DST_LEN$1 + SRC_LEN$1) << (2 & 31)) + 4 );
		*DST$1 = (uint32*)vr$14;
	}
	label$102:;
	if( *DST$1 == (uint32*)0u ) goto label$105;
	{
		fb_WstrAssignFromA( (uint32*)((uint8*)*DST$1 + (DST_LEN$1 << (2 & 31))), 0, (void*)SRC$1, 0 );
	}
	label$105:;
	label$104:;
	label$97:;
}

uint8* ZSTRDUP( uint8* S$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$106:;
	uint8* DST$1;
	__builtin_memset( &DST$1, 0, 4 );
	int32 vr$2 = fb_StrLen( (void*)S$1, 0 );
	void* vr$4 = XALLOCATE( vr$2 + 1 );
	DST$1 = (uint8*)vr$4;
	fb_StrAssign( (void*)DST$1, 0, (void*)S$1, 0, 0 );
	fb$result$1 = DST$1;
	label$107:;
	return fb$result$1;
}

uint32* WSTRDUP( uint32* S$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$108:;
	uint32* DST$1;
	__builtin_memset( &DST$1, 0, 4 );
	int32 vr$2 = fb_WstrLen( (uint32*)S$1 );
	void* vr$5 = XALLOCATE( (vr$2 << (2 & 31)) + 4 );
	DST$1 = (uint32*)vr$5;
	fb_WstrAssign( DST$1, 0, (uint32*)S$1 );
	fb$result$1 = DST$1;
	label$109:;
	return fb$result$1;
}

FBSTRING* HREPLACE( uint8* ORGTEXT$1, uint8* OLDTEXT$1, uint8* NEWTEXT$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$110:;
	static int32 OLDLEN$1;
	static int32 NEWLEN$1;
	static int32 P$1;
	static FBSTRING TEXT$1;
	static FBSTRING REMTEXT$1;
	int32 vr$1 = fb_StrLen( (void*)OLDTEXT$1, 0 );
	OLDLEN$1 = vr$1;
	int32 vr$2 = fb_StrLen( (void*)NEWTEXT$1, 0 );
	NEWLEN$1 = vr$2;
	fb_StrAssign( (void*)&TEXT$1, -1, (void*)ORGTEXT$1, 0, 0 );
	P$1 = 0;
	label$112:;
	{
		FBSTRING TMP$82$2;
		FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)OLDTEXT$1 );
		int32 vr$5 = fb_StrInstr( P$1 + 1, (FBSTRING*)&TEXT$1, (FBSTRING*)vr$3 );
		P$1 = vr$5;
		if( P$1 != 0 ) goto label$116;
		{
			goto label$113;
		}
		label$116:;
		label$115:;
		FBSTRING* vr$7 = fb_StrMid( (FBSTRING*)&TEXT$1, P$1 + OLDLEN$1, -1 );
		fb_StrAssign( (void*)&REMTEXT$1, -1, (void*)vr$7, -1, 0 );
		FBSTRING* vr$9 = fb_LEFT( (FBSTRING*)&TEXT$1, P$1 + -1 );
		fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$9, -1, 0 );
		__builtin_memset( &TMP$82$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$82$2, (void*)&TEXT$1, -1, (void*)NEWTEXT$1, 0 );
		fb_StrAssign( (void*)&TEXT$1, -1, (void*)vr$12, -1, 0 );
		fb_StrConcatAssign( (void*)&TEXT$1, -1, (void*)&REMTEXT$1, -1, 0 );
		P$1 = (P$1 + NEWLEN$1) + -1;
	}
	label$114:;
	goto label$112;
	label$113:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&TEXT$1, -1, 0 );
	label$111:;
	FBSTRING* vr$17 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$17;
}

uint32* HREPLACEW( uint32* ORGTEXT$1, uint32* OLDTEXT$1, uint32* NEWTEXT$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	static int32 OLDLEN$1;
	static int32 NEWLEN$1;
	static int32 P$1;
	static struct $8DWSTRING TEXT$1;
	static struct $8DWSTRING REMTEXT$1;
	int32 vr$1 = fb_WstrLen( (uint32*)OLDTEXT$1 );
	OLDLEN$1 = vr$1;
	int32 vr$2 = fb_WstrLen( (uint32*)NEWTEXT$1 );
	NEWLEN$1 = vr$2;
	DWSTRASSIGN( &TEXT$1, (uint32*)ORGTEXT$1 );
	P$1 = 0;
	label$119:;
	{
		uint32* TMP$83$2;
		uint32* TMP$84$2;
		int32 vr$4 = fb_WstrInstr( P$1 + 1, (uint32*)*(uint32**)&TEXT$1, (uint32*)OLDTEXT$1 );
		P$1 = vr$4;
		if( P$1 != 0 ) goto label$123;
		{
			goto label$120;
		}
		label$123:;
		label$122:;
		uint32* vr$6 = fb_WstrMid( (uint32*)*(uint32**)&TEXT$1, P$1 + OLDLEN$1, -1 );
		TMP$83$2 = vr$6;
		DWSTRASSIGN( &REMTEXT$1, (uint32*)TMP$83$2 );
		fb_WstrDelete( (uint32*)TMP$83$2 );
		uint32* vr$8 = fb_WstrLeft( *(uint32**)&TEXT$1, P$1 + -1 );
		TMP$84$2 = vr$8;
		DWSTRASSIGN( &TEXT$1, (uint32*)TMP$84$2 );
		fb_WstrDelete( (uint32*)TMP$84$2 );
		DWSTRCONCATASSIGN( &TEXT$1, (uint32*)NEWTEXT$1 );
		DWSTRCONCATASSIGN( &TEXT$1, (uint32*)*(uint32**)&REMTEXT$1 );
		P$1 = (P$1 + NEWLEN$1) + -1;
	}
	label$121:;
	goto label$119;
	label$120:;
	fb$result$1 = *(uint32**)&TEXT$1;
	label$118:;
	return fb$result$1;
}

uint8* HREPLACECHAR( uint8* ORGTEXT$1, int32 OLDCHAR$1, int32 NEWCHAR$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$124:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$85$2;
		int32 vr$1 = fb_StrLen( (void*)ORGTEXT$1, 0 );
		TMP$85$2 = vr$1 + -1;
		goto label$126;
		label$129:;
		{
			if( (int32)*(uint8*)((uint8*)ORGTEXT$1 + I$2) != OLDCHAR$1 ) goto label$131;
			{
				*(uint8*)((uint8*)ORGTEXT$1 + I$2) = (uint8)NEWCHAR$1;
			}
			label$131:;
			label$130:;
		}
		label$127:;
		I$2 = I$2 + 1;
		label$126:;
		if( I$2 <= TMP$85$2 ) goto label$129;
		label$128:;
	}
	fb$result$1 = ORGTEXT$1;
	label$125:;
	return fb$result$1;
}

uint8* HREESCAPE( uint8* TEXT$1, int32* TEXTLEN$1, int32* ISUNICODE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$132:;
	static struct $8DZSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 VALUE$1;
	static int32 ISNUMBER$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	*ISUNICODE$1 = 0;
	*TEXTLEN$1 = 0;
	int32 vr$3 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$3;
	if( LGT$1 != 0 ) goto label$135;
	{
		fb$result$1 = TEXT$1;
		goto label$133;
	}
	label$135:;
	label$134:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (1 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$136:;
	if( SRC$1 >= SRC_END$1 ) goto label$137;
	{
		CHAR$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		if( CHAR$1 != 92 ) goto label$139;
		{
			if( SRC$1 < SRC_END$1 ) goto label$141;
			{
				goto label$137;
				label$141:;
			}
			*DST$1 = (uint8)27u;
			DST$1 = (uint8*)((uint8*)DST$1 + 1);
			ISNUMBER$1 = 0;
			CHAR$1 = (int32)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
			{
				if( CHAR$1 < 48 ) goto label$143;
				if( CHAR$1 > 57 ) goto label$143;
				label$144:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = CHAR$1 + -48;
					{
						I$1 = 2;
						label$148:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$150;
							{
								goto label$147;
								label$150:;
							}
							CHAR$1 = (int32)*SRC$1;
							if( (-(CHAR$1 < 48) | -(CHAR$1 > 57)) == 0 ) goto label$152;
							{
								goto label$147;
							}
							label$152:;
							label$151:;
							VALUE$1 = ((VALUE$1 * 10) + CHAR$1) + -48;
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$146:;
						I$1 = I$1 + 1;
						label$145:;
						if( I$1 <= 3 ) goto label$148;
						label$147:;
					}
				}
				goto label$142;
				label$143:;
				if( CHAR$1 == 38 ) goto label$154;
				label$155:;
				if( CHAR$1 == 88 ) goto label$154;
				label$156:;
				if( CHAR$1 != 120 ) goto label$153;
				label$154:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$158;
					{
						goto label$137;
						label$158:;
					}
					VALUE$1 = 0;
					if( CHAR$1 != 38 ) goto label$160;
					{
						CHAR$1 = (int32)*SRC$1;
						SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
					}
					goto label$159;
					label$160:;
					{
						CHAR$1 = 72;
					}
					label$159:;
					{
						uint32 TMP$86$6;
						TMP$86$6 = (uint32)CHAR$1;
						goto label$162;
						label$163:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$167:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$169;
									{
										goto label$166;
										label$169:;
									}
									CHAR$1 = (int32)*SRC$1;
									{
										if( CHAR$1 < 97 ) goto label$173;
										if( CHAR$1 <= 102 ) goto label$172;
										label$173:;
										if( CHAR$1 < 65 ) goto label$174;
										if( CHAR$1 <= 70 ) goto label$172;
										label$174:;
										if( CHAR$1 < 48 ) goto label$171;
										if( CHAR$1 > 57 ) goto label$171;
										label$172:;
										{
											CHAR$1 = CHAR$1 + -48;
											if( CHAR$1 <= 9 ) goto label$176;
											{
												CHAR$1 = CHAR$1 + -7;
											}
											label$176:;
											label$175:;
											if( CHAR$1 <= 16 ) goto label$178;
											{
												CHAR$1 = CHAR$1 + -32;
											}
											label$178:;
											label$177:;
											VALUE$1 = (VALUE$1 << (4 & 31)) + CHAR$1;
										}
										goto label$170;
										label$171:;
										{
											goto label$166;
										}
										label$179:;
										label$170:;
									}
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$165:;
								I$1 = I$1 + 1;
								label$164:;
								if( I$1 <= 2 ) goto label$167;
								label$166:;
							}
						}
						goto label$161;
						label$180:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$184:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$186;
									{
										goto label$183;
										label$186:;
									}
									CHAR$1 = (int32)*SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 55)) == 0 ) goto label$188;
									{
										goto label$183;
									}
									label$188:;
									label$187:;
									VALUE$1 = ((VALUE$1 << (3 & 31)) + CHAR$1) + -48;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$182:;
								I$1 = I$1 + 1;
								label$181:;
								if( I$1 <= 3 ) goto label$184;
								label$183:;
							}
						}
						goto label$161;
						label$189:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$193:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$195;
									{
										goto label$192;
										label$195:;
									}
									CHAR$1 = (int32)*SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 49)) == 0 ) goto label$197;
									{
										goto label$192;
									}
									label$197:;
									label$196:;
									VALUE$1 = ((VALUE$1 << (1 & 31)) + CHAR$1) + -48;
									SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
								}
								label$191:;
								I$1 = I$1 + 1;
								label$190:;
								if( I$1 <= 8 ) goto label$193;
								label$192:;
							}
						}
						goto label$161;
						label$162:;
						static const void* tmp$87[46] = {
							&&label$189,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$163,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$180,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$189,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$163,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$161,
							&&label$180,
						};
						if( (TMP$86$6 - 66u) > 45u ) goto label$161;
						goto *tmp$87[TMP$86$6 - 66u];
						label$161:;
					}
				}
				goto label$142;
				label$153:;
				if( CHAR$1 != 97 ) goto label$198;
				label$199:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = 7;
				}
				goto label$142;
				label$198:;
				if( CHAR$1 != 117 ) goto label$200;
				label$201:;
				{
					*ISUNICODE$1 = -1;
					*DST$1 = (uint8)CHAR$1;
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
					{
						I$1 = 1;
						label$205:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$203:;
						I$1 = I$1 + 1;
						label$202:;
						if( I$1 <= 4 ) goto label$205;
						label$204:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2;
					goto label$136;
				}
				goto label$142;
				label$200:;
				if( CHAR$1 != 85 ) goto label$206;
				label$207:;
				{
					*ISUNICODE$1 = -1;
					*DST$1 = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
					{
						I$1 = 1;
						label$211:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$209:;
						I$1 = I$1 + 1;
						label$208:;
						if( I$1 <= 4 ) goto label$211;
						label$210:;
					}
					*DST$1 = (uint8)27u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)85u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					{
						I$1 = 1;
						label$215:;
						{
							fb_StrAssign( (void*)DST$1, 0, (void*)SRC$1, 0, 0 );
							DST$1 = (uint8*)((uint8*)DST$1 + 1);
							SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
						}
						label$213:;
						I$1 = I$1 + 1;
						label$212:;
						if( I$1 <= 4 ) goto label$215;
						label$214:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4;
					goto label$136;
				}
				label$206:;
				label$142:;
			}
			if( ISNUMBER$1 == 0 ) goto label$217;
			{
				if( (uint32)VALUE$1 <= 255u ) goto label$219;
				{
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
					VALUE$1 = 255;
				}
				label$219:;
				label$218:;
				if( VALUE$1 >= 8 ) goto label$221;
				{
					LGT$1 = 1;
				}
				goto label$220;
				label$221:;
				if( VALUE$1 >= 64 ) goto label$222;
				{
					LGT$1 = 2;
				}
				goto label$220;
				label$222:;
				{
					LGT$1 = 3;
				}
				label$220:;
				*DST$1 = (uint8)LGT$1;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				FBSTRING* vr$85 = fb_OCT_i( (uint32)VALUE$1 );
				fb_StrAssign( (void*)DST$1, 0, (void*)vr$85, -1, 0 );
				DST$1 = (uint8*)((uint8*)DST$1 + LGT$1);
				*TEXTLEN$1 = *TEXTLEN$1 + 1;
				goto label$136;
			}
			label$217:;
			label$216:;
		}
		label$139:;
		label$138:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
		*TEXTLEN$1 = *TEXTLEN$1 + 1;
	}
	goto label$136;
	label$137:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$133:;
	return fb$result$1;
}

uint32* HREESCAPEW( uint32* TEXT$1, int32* TEXTLEN$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$223:;
	static struct $8DWSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 ISNUMBER$1;
	static uint32 VALUE$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	*TEXTLEN$1 = 0;
	int32 vr$2 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$2;
	if( LGT$1 != 0 ) goto label$226;
	{
		fb$result$1 = TEXT$1;
		goto label$224;
	}
	label$226:;
	label$225:;
	DWSTRALLOCATE( &RES$1, LGT$1 << (1 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$227:;
	if( SRC$1 >= SRC_END$1 ) goto label$228;
	{
		CHAR$1 = *(int32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 92 ) goto label$230;
		{
			if( SRC$1 < SRC_END$1 ) goto label$232;
			{
				goto label$228;
				label$232:;
			}
			*DST$1 = (uint32)27u;
			DST$1 = (uint32*)((uint8*)DST$1 + 4);
			ISNUMBER$1 = 0;
			CHAR$1 = *(int32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			{
				if( CHAR$1 < 48 ) goto label$234;
				if( CHAR$1 > 57 ) goto label$234;
				label$235:;
				{
					ISNUMBER$1 = -1;
					VALUE$1 = (uint32)(CHAR$1 + -48);
					{
						I$1 = 2;
						label$239:;
						{
							if( SRC$1 < SRC_END$1 ) goto label$241;
							{
								goto label$238;
								label$241:;
							}
							CHAR$1 = *(int32*)SRC$1;
							if( (-(CHAR$1 < 48) | -(CHAR$1 > 57)) == 0 ) goto label$243;
							{
								goto label$238;
							}
							label$243:;
							label$242:;
							VALUE$1 = (VALUE$1 * 10u) + (uint32)(CHAR$1 + -48);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$237:;
						I$1 = I$1 + 1;
						label$236:;
						if( I$1 <= 5 ) goto label$239;
						label$238:;
					}
				}
				goto label$233;
				label$234:;
				if( CHAR$1 == 38 ) goto label$245;
				label$246:;
				if( CHAR$1 == 88 ) goto label$245;
				label$247:;
				if( CHAR$1 != 120 ) goto label$244;
				label$245:;
				{
					if( SRC$1 < SRC_END$1 ) goto label$249;
					{
						goto label$228;
						label$249:;
					}
					VALUE$1 = 0u;
					if( CHAR$1 != 38 ) goto label$251;
					{
						CHAR$1 = *(int32*)SRC$1;
						SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					}
					goto label$250;
					label$251:;
					{
						CHAR$1 = 72;
					}
					label$250:;
					{
						uint32 TMP$88$6;
						TMP$88$6 = (uint32)CHAR$1;
						goto label$253;
						label$254:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$258:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$260;
									{
										goto label$257;
										label$260:;
									}
									CHAR$1 = *(int32*)SRC$1;
									{
										if( CHAR$1 < 97 ) goto label$264;
										if( CHAR$1 <= 102 ) goto label$263;
										label$264:;
										if( CHAR$1 < 65 ) goto label$265;
										if( CHAR$1 <= 70 ) goto label$263;
										label$265:;
										if( CHAR$1 < 48 ) goto label$262;
										if( CHAR$1 > 57 ) goto label$262;
										label$263:;
										{
											CHAR$1 = CHAR$1 + -48;
											if( CHAR$1 <= 9 ) goto label$267;
											{
												CHAR$1 = CHAR$1 + -7;
											}
											label$267:;
											label$266:;
											if( CHAR$1 <= 16 ) goto label$269;
											{
												CHAR$1 = CHAR$1 + -32;
											}
											label$269:;
											label$268:;
											VALUE$1 = (VALUE$1 << (4u & 31)) + (uint32)CHAR$1;
										}
										goto label$261;
										label$262:;
										{
											goto label$257;
										}
										label$270:;
										label$261:;
									}
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$256:;
								I$1 = I$1 + 1;
								label$255:;
								if( I$1 <= 4 ) goto label$258;
								label$257:;
							}
						}
						goto label$252;
						label$271:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$275:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$277;
									{
										goto label$274;
										label$277:;
									}
									CHAR$1 = *(int32*)SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 55)) == 0 ) goto label$279;
									{
										goto label$274;
									}
									label$279:;
									label$278:;
									VALUE$1 = (VALUE$1 << (3u & 31)) + (uint32)(CHAR$1 + -48);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$273:;
								I$1 = I$1 + 1;
								label$272:;
								if( I$1 <= 6 ) goto label$275;
								label$274:;
							}
						}
						goto label$252;
						label$280:;
						{
							ISNUMBER$1 = -1;
							{
								I$1 = 1;
								label$284:;
								{
									if( SRC$1 < SRC_END$1 ) goto label$286;
									{
										goto label$283;
										label$286:;
									}
									CHAR$1 = *(int32*)SRC$1;
									if( (-(CHAR$1 < 48) | -(CHAR$1 > 49)) == 0 ) goto label$288;
									{
										goto label$283;
									}
									label$288:;
									label$287:;
									VALUE$1 = (VALUE$1 << (1u & 31)) + (uint32)(CHAR$1 + -48);
									SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
								}
								label$282:;
								I$1 = I$1 + 1;
								label$281:;
								if( I$1 <= 16 ) goto label$284;
								label$283:;
							}
						}
						goto label$252;
						label$253:;
						static const void* tmp$90[46] = {
							&&label$280,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$254,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$271,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$280,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$254,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$252,
							&&label$271,
						};
						if( (TMP$88$6 - 66u) > 45u ) goto label$252;
						goto *tmp$90[TMP$88$6 - 66u];
						label$252:;
					}
				}
				goto label$233;
				label$244:;
				if( CHAR$1 != 117 ) goto label$289;
				label$290:;
				{
					*DST$1 = (uint32)(uint32)CHAR$1;
					DST$1 = (uint32*)((uint8*)DST$1 + 4);
					{
						I$1 = 1;
						label$294:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$292:;
						I$1 = I$1 + 1;
						label$291:;
						if( I$1 <= 4 ) goto label$294;
						label$293:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 2;
					goto label$227;
				}
				goto label$233;
				label$289:;
				if( CHAR$1 != 85 ) goto label$295;
				label$296:;
				{
					*DST$1 = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 4);
					{
						I$1 = 1;
						label$300:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$298:;
						I$1 = I$1 + 1;
						label$297:;
						if( I$1 <= 4 ) goto label$300;
						label$299:;
					}
					*DST$1 = (uint32)27u;
					*(uint32*)((uint8*)DST$1 + 4) = (uint32)85u;
					DST$1 = (uint32*)((uint8*)DST$1 + 8);
					{
						I$1 = 1;
						label$304:;
						{
							fb_WstrAssign( DST$1, 0, (uint32*)SRC$1 );
							DST$1 = (uint32*)((uint8*)DST$1 + 4);
							SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
						}
						label$302:;
						I$1 = I$1 + 1;
						label$301:;
						if( I$1 <= 4 ) goto label$304;
						label$303:;
					}
					*TEXTLEN$1 = *TEXTLEN$1 + 4;
					goto label$227;
				}
				label$295:;
				label$233:;
			}
			if( ISNUMBER$1 == 0 ) goto label$306;
			{
				uint32* TMP$89$4;
				if( VALUE$1 <= 65535u ) goto label$308;
				{
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
					VALUE$1 = 65535u;
				}
				label$308:;
				label$307:;
				LGT$1 = 1;
				static uint32 UIVALUE$4;
				UIVALUE$4 = VALUE$1;
				label$309:;
				if( UIVALUE$4 <= 7u ) goto label$310;
				{
					UIVALUE$4 = UIVALUE$4 >> (3 & 31);
					LGT$1 = LGT$1 + 1;
				}
				goto label$309;
				label$310:;
				*DST$1 = (uint32)(uint32)LGT$1;
				DST$1 = (uint32*)((uint8*)DST$1 + 4);
				uint32* vr$76 = fb_WstrOct_i( VALUE$1 );
				TMP$89$4 = vr$76;
				fb_WstrAssign( DST$1, 0, (uint32*)TMP$89$4 );
				fb_WstrDelete( (uint32*)TMP$89$4 );
				DST$1 = (uint32*)((uint8*)DST$1 + (LGT$1 << (2 & 31)));
				*TEXTLEN$1 = *TEXTLEN$1 + 1;
				goto label$227;
			}
			label$306:;
			label$305:;
		}
		label$230:;
		label$229:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
		*TEXTLEN$1 = *TEXTLEN$1 + 1;
	}
	goto label$227;
	label$228:;
	*DST$1 = (uint32)0u;
	fb$result$1 = *(uint32**)&RES$1;
	label$224:;
	return fb$result$1;
}

uint8* HESCAPE( uint8* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$311:;
	static struct $8DZSTRING RES$1;
	static int32 C$1;
	static int32 OCTLEN$1;
	static int32 LGT$1;
	static uint8* SRC$1;
	static uint8* SRC_END$1;
	static uint8* DST$1;
	OCTLEN$1 = 0;
	int32 vr$1 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$314;
	{
		fb$result$1 = TEXT$1;
		goto label$312;
	}
	label$314:;
	label$313:;
	DZSTRALLOCATE( &RES$1, LGT$1 << (2 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$315:;
	if( SRC$1 >= SRC_END$1 ) goto label$316;
	{
		C$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		{
			if( C$1 == 92 ) goto label$319;
			label$320:;
			if( C$1 != 34 ) goto label$318;
			label$319:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
			}
			goto label$317;
			label$318:;
			if( C$1 != 27 ) goto label$321;
			label$322:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				if( SRC$1 < SRC_END$1 ) goto label$324;
				{
					goto label$316;
					label$324:;
				}
				C$1 = (int32)*SRC$1;
				SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
				if( (-(C$1 >= 1) & -(C$1 <= 3)) == 0 ) goto label$326;
				{
					OCTLEN$1 = C$1;
					if( SRC$1 < SRC_END$1 ) goto label$328;
					{
						goto label$316;
						label$328:;
					}
					C$1 = (int32)*SRC$1;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
				}
				label$326:;
				label$325:;
			}
			goto label$317;
			label$321:;
			if( C$1 < 0 ) goto label$331;
			if( C$1 <= 31 ) goto label$330;
			label$331:;
			if( C$1 < 128 ) goto label$329;
			if( C$1 > 255 ) goto label$329;
			label$330:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				if( C$1 >= 8 ) goto label$333;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)48u;
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = C$1 + 48;
				}
				goto label$332;
				label$333:;
				if( C$1 >= 64 ) goto label$334;
				{
					*DST$1 = (uint8)48u;
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)((C$1 >> (3 & 31)) + 48);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = (C$1 & 7) + 48;
				}
				goto label$332;
				label$334:;
				{
					*DST$1 = (uint8)((C$1 >> (6 & 31)) + 48);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)(((C$1 & 56) >> (3 & 31)) + 48);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
					C$1 = (C$1 & 7) + 48;
				}
				label$332:;
			}
			label$329:;
			label$317:;
		}
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
		if( OCTLEN$1 <= 0 ) goto label$336;
		{
			OCTLEN$1 = OCTLEN$1 + -1;
			if( OCTLEN$1 != 0 ) goto label$338;
			{
				*DST$1 = (uint8)34u;
				*(uint8*)((uint8*)DST$1 + 1) = (uint8)34u;
				DST$1 = (uint8*)((uint8*)DST$1 + 2);
			}
			label$338:;
			label$337:;
		}
		label$336:;
		label$335:;
	}
	goto label$315;
	label$316:;
	*DST$1 = (uint8)0u;
	fb$result$1 = (uint8*)*(uint8**)&RES$1;
	label$312:;
	return fb$result$1;
}

int32 HHASESCAPE( uint8* TEXT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$351:;
	static uint32 CHAR$1;
	static int32 LGT$1;
	int32 vr$1 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$1;
	label$353:;
	if( LGT$1 <= 0 ) goto label$354;
	{
		if( (int32)*TEXT$1 != 92 ) goto label$356;
		{
			TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1);
			CHAR$1 = (uint32)*TEXT$1;
			{
				uint32 TMP$100$4;
				TMP$100$4 = CHAR$1;
				goto label$358;
				label$359:;
				{
					fb$result$1 = -1;
					goto label$352;
				}
				goto label$357;
				label$358:;
				static const void* tmp$101[85] = {
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$357,
					&&label$357,
					&&label$359,
					&&label$357,
					&&label$359,
					&&label$359,
					&&label$359,
				};
				if( (TMP$100$4 - 34u) > 84u ) goto label$357;
				goto *tmp$101[TMP$100$4 - 34u];
				label$357:;
			}
		}
		label$356:;
		label$355:;
		TEXT$1 = (uint8*)((uint8*)TEXT$1 + 1);
		LGT$1 = LGT$1 + -1;
	}
	goto label$353;
	label$354:;
	fb$result$1 = 0;
	label$352:;
	return fb$result$1;
}

int32 HHASESCAPEW( uint32* TEXT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$360:;
	static uint32 CHAR$1;
	static int32 LGT$1;
	int32 vr$1 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$1;
	label$362:;
	if( LGT$1 <= 0 ) goto label$363;
	{
		if( *(uint32*)TEXT$1 != 92u ) goto label$365;
		{
			TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4);
			CHAR$1 = *(uint32*)TEXT$1;
			{
				uint32 TMP$102$4;
				TMP$102$4 = CHAR$1;
				goto label$367;
				label$368:;
				{
					fb$result$1 = -1;
					goto label$361;
				}
				goto label$366;
				label$367:;
				static const void* tmp$103[85] = {
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$366,
					&&label$366,
					&&label$368,
					&&label$366,
					&&label$368,
					&&label$368,
					&&label$368,
				};
				if( (TMP$102$4 - 34u) > 84u ) goto label$366;
				goto *tmp$103[TMP$102$4 - 34u];
				label$366:;
			}
		}
		label$365:;
		label$364:;
		TEXT$1 = (uint32*)((uint8*)TEXT$1 + 4);
		LGT$1 = LGT$1 + -1;
	}
	goto label$362;
	label$363:;
	fb$result$1 = 0;
	label$361:;
	return fb$result$1;
}

uint8* HESCAPEW( uint32* TEXT$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$379:;
	static struct $8DZSTRING RES$1;
	static uint32 CHAR$1;
	static uint32 C$1;
	static int32 LGT$1;
	static int32 I$1;
	static int32 WCHARLEN$1;
	static uint32* SRC$1;
	static uint32* SRC_END$1;
	static uint8* DST$1;
	WCHARLEN$1 = *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
	int32 vr$1 = fb_WstrLen( TEXT$1 );
	LGT$1 = vr$1;
	if( LGT$1 != 0 ) goto label$382;
	{
		fb$result$1 = (uint8*)0u;
		goto label$380;
	}
	label$382:;
	label$381:;
	DZSTRALLOCATE( &RES$1, (LGT$1 * WCHARLEN$1) << (2 & 31) );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$383:;
	if( SRC$1 >= SRC_END$1 ) goto label$384;
	{
		CHAR$1 = *(uint32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 27u ) goto label$386;
		{
			if( SRC$1 < SRC_END$1 ) goto label$388;
			{
				goto label$384;
				label$388:;
			}
			CHAR$1 = *(uint32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( (-(CHAR$1 >= 1u) & -(CHAR$1 <= 11u)) == 0 ) goto label$390;
			{
				I$1 = (int32)CHAR$1;
				CHAR$1 = 0u;
				if( (uint32*)((uint8*)SRC$1 + (I$1 << (2 & 31))) <= SRC_END$1 ) goto label$392;
				{
					goto label$384;
					label$392:;
				}
				label$393:;
				if( I$1 <= 0 ) goto label$394;
				{
					CHAR$1 = ((CHAR$1 << (3u & 31)) + *(uint32*)SRC$1) + 4294967248u;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					I$1 = I$1 + -1;
				}
				goto label$393;
				label$394:;
			}
			goto label$389;
			label$390:;
			{
				if( CHAR$1 != 117u ) goto label$396;
				{
					if( (uint32*)((uint8*)SRC$1 + 16) <= SRC_END$1 ) goto label$398;
					{
						goto label$384;
						label$398:;
					}
					uint32 vr$22 = HU16TOWCHAR( SRC$1 );
					CHAR$1 = vr$22;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16);
				}
				goto label$395;
				label$396:;
				{
					int32 vr$24 = HREMAPCHAR( (int32)CHAR$1 );
					CHAR$1 = (uint32)vr$24;
				}
				label$395:;
			}
			label$389:;
		}
		label$386:;
		label$385:;
		{
			I$1 = 1;
			int32 TMP$105$3;
			TMP$105$3 = WCHARLEN$1;
			goto label$399;
			label$402:;
			{
				*DST$1 = (uint8)92u;
				DST$1 = (uint8*)((uint8*)DST$1 + 1);
				C$1 = CHAR$1 & 255u;
				if( C$1 >= 8u ) goto label$404;
				{
					*DST$1 = (uint8)(C$1 + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 1);
				}
				goto label$403;
				label$404:;
				if( C$1 >= 64u ) goto label$405;
				{
					*DST$1 = (uint8)((C$1 >> (3 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)((C$1 & 7u) + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 2);
				}
				goto label$403;
				label$405:;
				{
					*DST$1 = (uint8)((C$1 >> (6 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 1) = (uint8)(((C$1 & 56u) >> (3 & 31)) + 48u);
					*(uint8*)((uint8*)DST$1 + 2) = (uint8)((C$1 & 7u) + 48u);
					DST$1 = (uint8*)((uint8*)DST$1 + 3);
				}
				label$403:;
				CHAR$1 = CHAR$1 >> (8 & 31);
			}
			label$400:;
			I$1 = I$1 + 1;
			label$399:;
			if( I$1 <= TMP$105$3 ) goto label$402;
			label$401:;
		}
	}
	goto label$383;
	label$384:;
	*DST$1 = (uint8)0u;
	fb$result$1 = *(uint8**)&RES$1;
	label$380:;
	return fb$result$1;
}

uint8* HUNESCAPE( uint8* TEXT$1, int32* TEXTLEN$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$406:;
	static struct $8DZSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static uint8* SRC$1;
	static uint8* DST$1;
	static uint8* SRC_END$1;
	*TEXTLEN$1 = 0;
	int32 vr$2 = fb_StrLen( (void*)TEXT$1, 0 );
	LGT$1 = vr$2;
	if( LGT$1 != 0 ) goto label$409;
	{
		fb$result$1 = TEXT$1;
		goto label$407;
	}
	label$409:;
	label$408:;
	DZSTRALLOCATE( &RES$1, LGT$1 );
	SRC$1 = TEXT$1;
	DST$1 = *(uint8**)&RES$1;
	SRC_END$1 = (uint8*)((uint8*)SRC$1 + LGT$1);
	label$410:;
	if( SRC$1 >= SRC_END$1 ) goto label$411;
	{
		CHAR$1 = (int32)*SRC$1;
		SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
		if( CHAR$1 != 27 ) goto label$413;
		{
			if( SRC$1 < SRC_END$1 ) goto label$415;
			{
				goto label$411;
				label$415:;
			}
			CHAR$1 = (int32)*SRC$1;
			SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
			if( (-(CHAR$1 >= 1) & -(CHAR$1 <= 3)) == 0 ) goto label$417;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0;
				label$418:;
				if( I$1 <= 0 ) goto label$419;
				{
					CHAR$1 = ((CHAR$1 << (3 & 31)) + (int32)*SRC$1) + -48;
					SRC$1 = (uint8*)((uint8*)SRC$1 + 1);
					I$1 = I$1 + -1;
				}
				goto label$418;
				label$419:;
			}
			goto label$416;
			label$417:;
			{
				int32 vr$20 = HREMAPCHAR( CHAR$1 );
				CHAR$1 = vr$20;
			}
			label$416:;
		}
		label$413:;
		label$412:;
		*DST$1 = (uint8)CHAR$1;
		DST$1 = (uint8*)((uint8*)DST$1 + 1);
	}
	goto label$410;
	label$411:;
	*DST$1 = (uint8)0u;
	*TEXTLEN$1 = (int32)DST$1 - *(int32*)&RES$1;
	fb$result$1 = *(uint8**)&RES$1;
	label$407:;
	return fb$result$1;
}

uint32* HUNESCAPEW( uint32* TEXT$1, int32* TEXTLEN$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$420:;
	static struct $8DWSTRING RES$1;
	static int32 CHAR$1;
	static int32 LGT$1;
	static int32 I$1;
	static uint32* SRC$1;
	static uint32* DST$1;
	static uint32* SRC_END$1;
	*TEXTLEN$1 = 0;
	int32 vr$2 = fb_WstrLen( (uint32*)TEXT$1 );
	LGT$1 = vr$2;
	if( LGT$1 != 0 ) goto label$423;
	{
		fb$result$1 = TEXT$1;
		goto label$421;
	}
	label$423:;
	label$422:;
	DWSTRALLOCATE( &RES$1, LGT$1 );
	SRC$1 = TEXT$1;
	DST$1 = *(uint32**)&RES$1;
	SRC_END$1 = (uint32*)((uint8*)SRC$1 + (LGT$1 << (2 & 31)));
	label$424:;
	if( SRC$1 >= SRC_END$1 ) goto label$425;
	{
		CHAR$1 = *(int32*)SRC$1;
		SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
		if( CHAR$1 != 27 ) goto label$427;
		{
			if( SRC$1 < SRC_END$1 ) goto label$429;
			{
				goto label$425;
				label$429:;
			}
			CHAR$1 = *(int32*)SRC$1;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( (-(CHAR$1 >= 1) & -(CHAR$1 <= 11)) == 0 ) goto label$431;
			{
				I$1 = CHAR$1;
				CHAR$1 = 0;
				label$432:;
				if( I$1 <= 0 ) goto label$433;
				{
					CHAR$1 = (int32)(((uint32)(CHAR$1 << (3 & 31)) + *(uint32*)SRC$1) + 4294967248u);
					SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
					I$1 = I$1 + -1;
				}
				goto label$432;
				label$433:;
			}
			goto label$430;
			label$431:;
			{
				if( (uint32)CHAR$1 != 117u ) goto label$435;
				{
					if( (uint32*)((uint8*)SRC$1 + 16) <= SRC_END$1 ) goto label$437;
					{
						goto label$425;
						label$437:;
					}
					uint32 vr$19 = HU16TOWCHAR( (uint32*)SRC$1 );
					CHAR$1 = (int32)vr$19;
					SRC$1 = (uint32*)((uint8*)SRC$1 + 16);
				}
				goto label$434;
				label$435:;
				{
					int32 vr$21 = HREMAPCHAR( CHAR$1 );
					CHAR$1 = vr$21;
				}
				label$434:;
			}
			label$430:;
		}
		label$427:;
		label$426:;
		*DST$1 = (uint32)(uint32)CHAR$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
	}
	goto label$424;
	label$425:;
	*DST$1 = (uint32)0u;
	*TEXTLEN$1 = ((int32)DST$1 - *(int32*)&RES$1) / 4;
	fb$result$1 = *(uint32**)&RES$1;
	label$421:;
	return fb$result$1;
}

int32 HCHARNEEDSESCAPING( int32 CH$1, int32 QUOTECHAR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$438:;
	fb$result$1 = ((-(CH$1 < 32) | -(CH$1 >= 127)) | -((uint32)CH$1 == 92u)) | -(CH$1 == QUOTECHAR$1);
	label$439:;
	return fb$result$1;
}

int32 HISVALIDHEXDIGIT( int32 CH$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$440:;
	fb$result$1 = ((-((uint32)CH$1 >= 48u) & -((uint32)CH$1 <= 57u)) | (-((uint32)CH$1 >= 97u) & -((uint32)CH$1 <= 102u))) | (-((uint32)CH$1 >= 65u) & -((uint32)CH$1 <= 70u));
	label$441:;
	return fb$result$1;
}

int32 HSTR2LONG( FBSTRING* TXT$1, int32* VALUE$1 )
{
	int32 TMP$110$1;
	int32 TMP$111$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$442:;
	int32 NVALUE$1;
	NVALUE$1 = 0;
	int32 NSIGN$1;
	NSIGN$1 = 1;
	int32 vr$1 = fb_StrLen( (void*)TXT$1, -1 );
	if( vr$1 != 0 ) goto label$445;
	{
		fb$result$1 = 0;
		goto label$443;
	}
	label$445:;
	label$444:;
	uint8* S$1;
	S$1 = (uint8*)*(uint8**)TXT$1;
	if( S$1 == (uint8*)0u ) goto label$446;
	TMP$110$1 = -((int32)*S$1 == 0);
	goto label$456;
	label$446:;
	TMP$110$1 = -1;
	label$456:;
	if( TMP$110$1 == 0 ) goto label$448;
	{
		fb$result$1 = 0;
		goto label$443;
	}
	label$448:;
	label$447:;
	if( (int32)*S$1 != 45 ) goto label$450;
	{
		NSIGN$1 = -1;
		S$1 = (uint8*)(S$1 + 1);
	}
	label$450:;
	label$449:;
	if( (int32)*S$1 != 0 ) goto label$452;
	{
		fb$result$1 = 0;
		goto label$443;
	}
	label$452:;
	label$451:;
	label$453:;
	if( (uint32)(int32)*S$1 > 57u ) goto label$455;
	TMP$111$1 = -((uint32)(int32)*S$1 >= 48u);
	goto label$457;
	label$455:;
	TMP$111$1 = 0;
	label$457:;
	if( TMP$111$1 == 0 ) goto label$454;
	{
		NVALUE$1 = NVALUE$1 * 10;
		NVALUE$1 = (int32)(((uint32)NVALUE$1 + (uint32)(int32)*S$1) + 4294967248u);
		S$1 = (uint8*)(S$1 + 1);
	}
	goto label$453;
	label$454:;
	*VALUE$1 = NVALUE$1 * NSIGN$1;
	fb$result$1 = -((int32)*S$1 == 0);
	goto label$443;
	label$443:;
	return fb$result$1;
}

void HSPLITSTR( FBSTRING* TXT$1, FBSTRING* DEL$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	label$458:;
	int32 ITEMS$1;
	ITEMS$1 = 10;
	struct $8FBARRAY1IlE DPOS$1;
	*(int32**)&DPOS$1 = (int32*)0u;
	*(int32**)((uint8*)&DPOS$1 + 4) = (int32*)0u;
	*(int32*)((uint8*)&DPOS$1 + 8) = 0;
	*(int32*)((uint8*)&DPOS$1 + 12) = 4;
	*(int32*)((uint8*)&DPOS$1 + 16) = 1;
	*(int32*)((uint8*)&DPOS$1 + 20) = 17;
	__builtin_memset( (void*)((uint8*)&DPOS$1 + 24), 0, 12 );
	int32 vr$3 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)&DPOS$1, 4u, -1, 0, 1u, 0, ITEMS$1 + -1 );
	if( vr$3 == 0 ) goto label$460;
	void* vr$4 = fb_ErrorThrowAt( 1318, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$4;
	label$460:;
	int32 DELLEN$1;
	int32 vr$5 = fb_StrLen( (void*)DEL$1, -1 );
	DELLEN$1 = vr$5;
	int32 CNT$1;
	CNT$1 = 0;
	int32 P$1;
	P$1 = 1;
	label$461:;
	{
		int32 vr$6 = fb_StrInstr( P$1, (FBSTRING*)TXT$1, (FBSTRING*)DEL$1 );
		P$1 = vr$6;
		if( P$1 <= 0 ) goto label$465;
		{
			if( CNT$1 < ITEMS$1 ) goto label$467;
			{
				ITEMS$1 = ITEMS$1 + 10;
				int32 vr$10 = fb_ArrayRedimPresvEx( (struct $7FBARRAYIvE*)&DPOS$1, 4u, -1, 0, 1u, 0, ITEMS$1 + -1 );
				if( vr$10 == 0 ) goto label$468;
				void* vr$11 = fb_ErrorThrowAt( 1329, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
				goto *vr$11;
				label$468:;
			}
			label$467:;
			label$466:;
			*(int32*)((CNT$1 << (2 & 31)) + *(int32*)&DPOS$1) = P$1;
			P$1 = P$1 + DELLEN$1;
		}
		label$465:;
		label$464:;
		CNT$1 = CNT$1 + 1;
	}
	label$463:;
	if( P$1 != 0 ) goto label$461;
	label$462:;
	CNT$1 = CNT$1 + -1;
	if( CNT$1 != 0 ) goto label$470;
	{
		int32 vr$17 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, 0 );
		if( vr$17 == 0 ) goto label$471;
		void* vr$18 = fb_ErrorThrowAt( 1339, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
		goto *vr$18;
		label$471:;
		fb_StrAssign( (void*)*(int32*)RES$1, -1, (void*)TXT$1, -1, 0 );
		fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
		goto label$459;
	}
	label$470:;
	label$469:;
	int32 vr$22 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, CNT$1 );
	if( vr$22 == 0 ) goto label$472;
	void* vr$23 = fb_ErrorThrowAt( 1344, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$23;
	label$472:;
	FBSTRING* vr$25 = fb_LEFT( (FBSTRING*)TXT$1, *(int32*)*(int32*)&DPOS$1 + -1 );
	fb_StrAssign( (void*)*(int32*)RES$1, -1, (void*)vr$25, -1, 0 );
	P$1 = 1;
	label$473:;
	if( P$1 == CNT$1 ) goto label$474;
	{
		FBSTRING* vr$37 = fb_StrMid( (FBSTRING*)TXT$1, *(int32*)((uint8*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4) + DELLEN$1, (*(int32*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) - *(int32*)((uint8*)((P$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4)) - DELLEN$1 );
		fb_StrAssign( (void*)((P$1 * 12) + *(int32*)RES$1), -1, (void*)vr$37, -1, 0 );
		P$1 = P$1 + 1;
	}
	goto label$473;
	label$474:;
	FBSTRING* vr$46 = fb_StrMid( (FBSTRING*)TXT$1, *(int32*)((uint8*)((CNT$1 << (2 & 31)) + *(int32*)&DPOS$1) + -4) + DELLEN$1, -1 );
	fb_StrAssign( (void*)((CNT$1 * 12) + *(int32*)RES$1), -1, (void*)vr$46, -1, 0 );
	fb_ArrayErase( (struct $7FBARRAYIvE*)&DPOS$1 );
	label$459:;
}

int32 HSTR2TOK( uint8* TXT$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	int32 TMP$114$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$475:;
	int32 T$1;
	T$1 = 0;
	uint32 LC$1;
	LC$1 = 32u;
	uint8* S$1;
	S$1 = (uint8*)TXT$1;
	label$477:;
	if( (int32)*S$1 == 0 ) goto label$478;
	{
		uint32 C$2;
		C$2 = (uint32)*S$1;
		if( C$2 != 7u ) goto label$480;
		{
			C$2 = 32u;
		}
		label$480:;
		label$479:;
		if( C$2 != 32u ) goto label$482;
		{
			if( LC$1 == 32u ) goto label$484;
			{
				T$1 = T$1 + 1;
			}
			label$484:;
			label$483:;
		}
		label$482:;
		label$481:;
		LC$1 = C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	goto label$477;
	label$478:;
	if( LC$1 == 32u ) goto label$486;
	{
		T$1 = T$1 + 1;
	}
	label$486:;
	label$485:;
	if( T$1 != 0 ) goto label$488;
	{
		fb$result$1 = 0;
		goto label$476;
	}
	label$488:;
	label$487:;
	int32 vr$9 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, T$1 + -1 );
	if( vr$9 == 0 ) goto label$489;
	void* vr$10 = fb_ErrorThrowAt( 1386, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$10;
	label$489:;
	T$1 = 0;
	LC$1 = 32u;
	S$1 = (uint8*)TXT$1;
	label$490:;
	if( (int32)*S$1 == 0 ) goto label$491;
	{
		uint32 C$2;
		C$2 = (uint32)*S$1;
		if( C$2 != 7u ) goto label$493;
		{
			C$2 = 32u;
		}
		label$493:;
		label$492:;
		if( C$2 != 32u ) goto label$495;
		{
			if( LC$1 == 32u ) goto label$497;
			{
				T$1 = T$1 + 1;
			}
			label$497:;
			label$496:;
		}
		goto label$494;
		label$495:;
		{
			FBSTRING TMP$113$3;
			FBSTRING* vr$16 = fb_CHR( 1, (int32)C$2 );
			__builtin_memset( &TMP$113$3, 0, 12 );
			FBSTRING* vr$23 = fb_StrConcat( &TMP$113$3, (void*)((T$1 * 12) + *(int32*)RES$1), -1, (void*)vr$16, -1 );
			fb_StrAssign( (void*)((T$1 * 12) + *(int32*)RES$1), -1, (void*)vr$23, -1, 0 );
		}
		label$494:;
		LC$1 = C$2;
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	goto label$490;
	label$491:;
	if( LC$1 == 32u ) goto label$498;
	TMP$114$1 = T$1 + 1;
	goto label$499;
	label$498:;
	TMP$114$1 = T$1;
	label$499:;
	fb$result$1 = TMP$114$1;
	label$476:;
	return fb$result$1;
}

int32 HSTR2ARGS( uint8* TXT$1, struct $7FBARRAYI8FBSTRINGE* RES$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$500:;
	int32 T$1;
	T$1 = 0;
	uint8* S$1;
	S$1 = (uint8*)TXT$1;
	int32 PRNTCNT$1;
	PRNTCNT$1 = 0;
	uint32 C$1;
	C$1 = 0u;
	int32 MAX_T$1;
	MAX_T$1 = 10;
	if( TXT$1 != (uint8*)0u ) goto label$503;
	{
		fb$result$1 = 0;
		goto label$501;
	}
	label$503:;
	label$502:;
	int32 vr$2 = fb_ArrayRedimEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, MAX_T$1 + -1 );
	if( vr$2 == 0 ) goto label$504;
	void* vr$3 = fb_ErrorThrowAt( 1433, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
	goto *vr$3;
	label$504:;
	label$505:;
	{
		C$1 = (uint32)*S$1;
		if( (-(C$1 == 9u) | -(C$1 == 32u)) == 0 ) goto label$509;
		{
			S$1 = (uint8*)((uint8*)S$1 + 1);
		}
		goto label$508;
		label$509:;
		{
			goto label$506;
		}
		label$508:;
	}
	label$507:;
	goto label$505;
	label$506:;
	if( C$1 != 0u ) goto label$511;
	{
		fb$result$1 = 0;
		goto label$501;
	}
	label$511:;
	label$510:;
	T$1 = T$1 + 1;
	label$512:;
	{
		FBSTRING TMP$125$2;
		C$1 = (uint32)*S$1;
		{
			if( C$1 != 0u ) goto label$516;
			label$517:;
			{
				goto label$513;
			}
			goto label$515;
			label$516:;
			if( C$1 != 40u ) goto label$518;
			label$519:;
			{
				PRNTCNT$1 = PRNTCNT$1 + 1;
			}
			goto label$515;
			label$518:;
			if( C$1 != 41u ) goto label$520;
			label$521:;
			{
				if( PRNTCNT$1 <= 0 ) goto label$523;
				{
					PRNTCNT$1 = PRNTCNT$1 + -1;
				}
				label$523:;
				label$522:;
			}
			goto label$515;
			label$520:;
			if( C$1 != 44u ) goto label$524;
			label$525:;
			{
				if( PRNTCNT$1 != 0 ) goto label$527;
				{
					T$1 = T$1 + 1;
					if( T$1 <= MAX_T$1 ) goto label$529;
					{
						MAX_T$1 = MAX_T$1 + 10;
						int32 vr$18 = fb_ArrayRedimPresvEx( (struct $7FBARRAYIvE*)RES$1, 12u, -1, -1, 1u, 0, MAX_T$1 + -1 );
						if( vr$18 == 0 ) goto label$530;
						void* vr$19 = fb_ErrorThrowAt( 1472, (uint8*)"src/compiler/hlp-str.bas", (void*)0u, (void*)0u );
						goto *vr$19;
						label$530:;
					}
					label$529:;
					label$528:;
					S$1 = (uint8*)((uint8*)S$1 + 1);
					goto label$514;
				}
				label$527:;
				label$526:;
			}
			goto label$515;
			label$524:;
			if( C$1 == 34u ) goto label$532;
			label$533:;
			if( C$1 == 33u ) goto label$532;
			label$534:;
			if( C$1 != 36u ) goto label$531;
			label$532:;
			{
				FBSTRING TMP$116$4;
				int32 ESCAPED$4;
				ESCAPED$4 = *(int32*)((uint8*)&ENV$ + 1092);
				if( C$1 == 34u ) goto label$536;
				{
					FBSTRING TMP$115$5;
					ESCAPED$4 = -(C$1 == 33u);
					FBSTRING* vr$22 = fb_CHR( 1, (int32)C$1 );
					__builtin_memset( &TMP$115$5, 0, 12 );
					FBSTRING* vr$29 = fb_StrConcat( &TMP$115$5, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$22, -1 );
					fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$29, -1, 0 );
					S$1 = (uint8*)((uint8*)S$1 + 1);
					C$1 = (uint32)*S$1;
					if( C$1 == 34u ) goto label$538;
					{
						goto label$514;
					}
					label$538:;
					label$537:;
				}
				label$536:;
				label$535:;
				FBSTRING* vr$37 = fb_CHR( 1, (int32)C$1 );
				__builtin_memset( &TMP$116$4, 0, 12 );
				FBSTRING* vr$44 = fb_StrConcat( &TMP$116$4, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$37, -1 );
				fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$44, -1, 0 );
				S$1 = (uint8*)((uint8*)S$1 + 1);
				label$539:;
				{
					FBSTRING TMP$117$5;
					C$1 = (uint32)*S$1;
					if( C$1 != 0u ) goto label$543;
					{
						goto label$540;
					}
					label$543:;
					label$542:;
					FBSTRING* vr$52 = fb_CHR( 1, (int32)C$1 );
					__builtin_memset( &TMP$117$5, 0, 12 );
					FBSTRING* vr$59 = fb_StrConcat( &TMP$117$5, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$52, -1 );
					fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$59, -1, 0 );
					S$1 = (uint8*)((uint8*)S$1 + 1);
					if( C$1 != 34u ) goto label$545;
					{
						FBSTRING TMP$118$6;
						C$1 = (uint32)*S$1;
						if( C$1 == 34u ) goto label$547;
						{
							goto label$540;
						}
						label$547:;
						label$546:;
						FBSTRING* vr$67 = fb_CHR( 1, (int32)C$1 );
						__builtin_memset( &TMP$118$6, 0, 12 );
						FBSTRING* vr$74 = fb_StrConcat( &TMP$118$6, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$67, -1 );
						fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$74, -1, 0 );
						S$1 = (uint8*)((uint8*)S$1 + 1);
					}
					goto label$544;
					label$545:;
					if( C$1 != 92u ) goto label$548;
					{
						C$1 = (uint32)*S$1;
						{
							if( C$1 == 34u ) goto label$551;
							label$552:;
							if( C$1 != 92u ) goto label$550;
							label$551:;
							{
								FBSTRING TMP$119$8;
								FBSTRING* vr$82 = fb_CHR( 1, (int32)C$1 );
								__builtin_memset( &TMP$119$8, 0, 12 );
								FBSTRING* vr$89 = fb_StrConcat( &TMP$119$8, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$82, -1 );
								fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$89, -1, 0 );
								S$1 = (uint8*)((uint8*)S$1 + 1);
							}
							label$550:;
							label$549:;
						}
					}
					label$548:;
					label$544:;
				}
				label$541:;
				goto label$539;
				label$540:;
				goto label$514;
			}
			goto label$515;
			label$531:;
			if( C$1 != 47u ) goto label$553;
			label$554:;
			{
				FBSTRING TMP$120$4;
				FBSTRING TMP$121$4;
				FBSTRING* vr$95 = fb_CHR( 1, (int32)C$1 );
				__builtin_memset( &TMP$120$4, 0, 12 );
				FBSTRING* vr$102 = fb_StrConcat( &TMP$120$4, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$95, -1 );
				fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$102, -1, 0 );
				S$1 = (uint8*)((uint8*)S$1 + 1);
				C$1 = (uint32)*S$1;
				if( C$1 == 39u ) goto label$556;
				{
					goto label$514;
				}
				label$556:;
				label$555:;
				FBSTRING* vr$110 = fb_CHR( 1, (int32)C$1 );
				__builtin_memset( &TMP$121$4, 0, 12 );
				FBSTRING* vr$117 = fb_StrConcat( &TMP$121$4, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$110, -1 );
				fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$117, -1, 0 );
				S$1 = (uint8*)((uint8*)S$1 + 1);
				label$557:;
				{
					FBSTRING TMP$122$5;
					C$1 = (uint32)*S$1;
					if( C$1 != 0u ) goto label$561;
					{
						goto label$558;
					}
					label$561:;
					label$560:;
					FBSTRING* vr$125 = fb_CHR( 1, (int32)C$1 );
					__builtin_memset( &TMP$122$5, 0, 12 );
					FBSTRING* vr$132 = fb_StrConcat( &TMP$122$5, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$125, -1 );
					fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$132, -1, 0 );
					S$1 = (uint8*)((uint8*)S$1 + 1);
					if( C$1 != 39u ) goto label$563;
					{
						C$1 = (uint32)*S$1;
						if( C$1 != 47u ) goto label$565;
						{
							FBSTRING TMP$123$7;
							FBSTRING* vr$140 = fb_CHR( 1, (int32)C$1 );
							__builtin_memset( &TMP$123$7, 0, 12 );
							FBSTRING* vr$147 = fb_StrConcat( &TMP$123$7, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$140, -1 );
							fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$147, -1, 0 );
							S$1 = (uint8*)((uint8*)S$1 + 1);
							goto label$558;
						}
						label$565:;
						label$564:;
					}
					label$563:;
					label$562:;
				}
				label$559:;
				goto label$557;
				label$558:;
				goto label$514;
			}
			goto label$515;
			label$553:;
			if( C$1 != 39u ) goto label$566;
			label$567:;
			{
				label$568:;
				if( C$1 == 0u ) goto label$569;
				{
					FBSTRING TMP$124$5;
					FBSTRING* vr$153 = fb_CHR( 1, (int32)C$1 );
					__builtin_memset( &TMP$124$5, 0, 12 );
					FBSTRING* vr$160 = fb_StrConcat( &TMP$124$5, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$153, -1 );
					fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$160, -1, 0 );
					S$1 = (uint8*)((uint8*)S$1 + 1);
					C$1 = (uint32)*S$1;
				}
				goto label$568;
				label$569:;
				goto label$513;
			}
			label$566:;
			label$515:;
		}
		FBSTRING* vr$168 = fb_CHR( 1, (int32)C$1 );
		__builtin_memset( &TMP$125$2, 0, 12 );
		FBSTRING* vr$175 = fb_StrConcat( &TMP$125$2, (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$168, -1 );
		fb_StrAssign( (void*)((uint8*)((T$1 * 12) + *(int32*)RES$1) + -12), -1, (void*)vr$175, -1, 0 );
		S$1 = (uint8*)((uint8*)S$1 + 1);
	}
	label$514:;
	goto label$512;
	label$513:;
	fb$result$1 = T$1;
	label$501:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static int32 HREMAPCHAR( int32 CHAR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$339:;
	{
		uint32 TMP$91$2;
		TMP$91$2 = (uint32)CHAR$1;
		goto label$342;
		label$343:;
		{
			fb$result$1 = 13;
		}
		goto label$341;
		label$344:;
		{
			fb$result$1 = 10;
		}
		goto label$341;
		label$345:;
		{
			fb$result$1 = 9;
		}
		goto label$341;
		label$346:;
		{
			fb$result$1 = 8;
		}
		goto label$341;
		label$347:;
		{
			fb$result$1 = 7;
		}
		goto label$341;
		label$348:;
		{
			fb$result$1 = 12;
		}
		goto label$341;
		label$349:;
		{
			fb$result$1 = 11;
		}
		goto label$341;
		label$350:;
		{
			fb$result$1 = CHAR$1;
		}
		goto label$341;
		label$342:;
		static const void* tmp$126[22] = {
			&&label$347,
			&&label$346,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$348,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$344,
			&&label$350,
			&&label$344,
			&&label$350,
			&&label$350,
			&&label$350,
			&&label$343,
			&&label$350,
			&&label$345,
			&&label$350,
			&&label$349,
		};
		if( (TMP$91$2 - 97u) > 21u ) goto label$350;
		goto *tmp$126[TMP$91$2 - 97u];
		label$341:;
	}
	label$340:;
	return fb$result$1;
}

static uint32 HU16TOWCHAR( uint32* SRC$1 )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$369:;
	static uint32 CHAR$1;
	static uint32 C$1;
	static int32 I$1;
	CHAR$1 = 0u;
	{
		I$1 = 1;
		label$374:;
		{
			C$1 = *(uint32*)SRC$1 + 4294967248u;
			SRC$1 = (uint32*)((uint8*)SRC$1 + 4);
			if( C$1 <= 9u ) goto label$376;
			{
				C$1 = C$1 + 4294967289u;
			}
			label$376:;
			label$375:;
			if( C$1 <= 16u ) goto label$378;
			{
				C$1 = C$1 + 4294967264u;
			}
			label$378:;
			label$377:;
			CHAR$1 = (CHAR$1 << (4u & 31)) | C$1;
		}
		label$372:;
		I$1 = I$1 + 1;
		label$371:;
		if( I$1 <= 4 ) goto label$374;
		label$373:;
	}
	fb$result$1 = CHAR$1;
	label$370:;
	return fb$result$1;
}
