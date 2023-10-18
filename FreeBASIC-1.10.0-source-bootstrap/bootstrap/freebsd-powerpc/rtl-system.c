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
typedef int32 $11FB_DATATYPE;
typedef int32 $11FB_FUNCMODE;
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 12 );
struct $8FBSYMBOL;
typedef int32 $13AST_NODECLASS;
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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 16 );
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
typedef int32 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
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
typedef int32 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int32 ISOPT;
	int32 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 16 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int32 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 284 );
typedef int32 $13FB_COMPTARGET;
typedef int32 $7FB_LANG;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
static void fb_ctor__rtlzsystem( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $16FB_RESTART_FLAGS;
void FBRESTARTBEGINREQUEST( $16FB_RESTART_FLAGS );
int32 FBRESTARTGETCOUNT( void );
int32 FBGETCPUFAMILY( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int32 );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
int32 RTLPRINT( struct $7ASTNODE*, int32, int32, struct $7ASTNODE*, int32 );
void RTLPROFILECALL_MONSTARTUP( void );
static int32 HMULTITHREAD_CB( struct $8FBSYMBOL* );
static int32 HTHREADCALL_CB( struct $8FBSYMBOL* );
static int32 RTLX86CPUCHECK( void );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
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
typedef int32 $12FB_DATACLASS;
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
typedef int32 $10FB_OUTTYPE;
typedef int32 $10FB_BACKEND;
typedef int32 $10FB_CPUTYPE;
typedef int32 $10FB_FPUTYPE;
typedef int32 $9FB_FPMODE;
typedef int32 $17FB_VECTORIZELEVEL;
typedef int32 $12FB_ASMSYNTAX;
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[54] = { { (uint8*)"fb_CpuDetect", (uint8*)0u, 12, 3, (tmp$33)0u, 16384, 0 }, { (uint8*)"fb_Init", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 11, 1, 0 }, { 68, 1, 0 }, { 11, 1, 0 } } }, { (uint8*)"fb_InitSignals", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"fb___main", (uint8*)"__main", 0, 3, (tmp$33)0u, 0, 0 }, { (uint8*)"fb_End", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_atexit", (uint8*)"atexit", 11, 3, (tmp$33)0u, 0, 1, { { 32, 1, 0 } } }, { (uint8*)"command", (uint8*)"fb_Command", 17, -1, (tmp$33)0u, 64, 1, { { 523, 1, -1, -1 } } }, { (uint8*)"curdir", (uint8*)"fb_CurDir", 17, -1, (tmp$33)0u, 128, 0 }, { (uint8*)"exepath", (uint8*)"fb_ExePath", 17, -1, (tmp$33)0u, 128, 0 }, { (uint8*)"timer", (uint8*)"fb_Timer", 16, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"time", (uint8*)"fb_Time", 17, -1, (tmp$33)0u, 64, 0 }, { (uint8*)"date", (uint8*)"fb_Date", 17, -1, (tmp$33)0u, 64, 0 }, { (uint8*)"shell", (uint8*)"fb_Shell", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, -1, 0 } } }, { (uint8*)"system", (uint8*)"fb_End", 0, -1, (tmp$33)0u, 0, 1, { { 523, 1, -1, 0 } } }, { (uint8*)"stop", (uint8*)"fb_End", 0, -1, (tmp$33)0u, 0, 1, { { 523, 1, -1, 0 } } }, { (uint8*)"run", (uint8*)"fb_Run", 11, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, -1, 0 } } }, { (uint8*)"chain", (uint8*)"fb_Chain", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"exec", (uint8*)"fb_Exec", 11, -1, (tmp$33)0u, 128, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"environ", (uint8*)"fb_GetEnviron", 17, -1, (tmp$33)0u, 64, 1, { { 529, 2, 0 } } }, { (uint8*)"setenviron", (uint8*)"fb_SetEnviron", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"sleep", (uint8*)"fb_Sleep", 0, -1, (tmp$33)0u, 129, 1, { { 523, 1, -1, -1 } } }, { (uint8*)"sleep", (uint8*)"fb_SleepQB", 0, -1, (tmp$33)0u, 257, 1, { { 523, 1, -1, -1 } } }, { (uint8*)"sleep", (uint8*)"fb_SleepEx", 11, -1, (tmp$33)0u, 3, 2, { { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"dir", (uint8*)"fb_DirNext", 17, -1, (tmp$33)0u, 129, 1, { { 43, 1, -1, 0 } } }, { (uint8*)"dir", (uint8*)"fb_DirNext64", 17, -1, (tmp$33)0u, 129, 1, { { 45, 1, 0 } } }, { (uint8*)"dir", (uint8*)"fb_DirNext", 17, -1, (tmp$33)0u, 129, 1, { { 11, 2, 0 } } }, { (uint8*)"dir", (uint8*)"fb_DirNext64", 17, -1, (tmp$33)0u, 129, 1, { { 13, 2, 0 } } }, { (uint8*)"dir", (uint8*)"fb_Dir", 17, -1, (tmp$33)0u, 129, 3, { { 529, 2, 0 }, { 523, 1, -1, 33 }, { 43, 1, -1, 0 } } }, { (uint8*)"dir", (uint8*)"fb_Dir64", 17, -1, (tmp$33)0u, 129, 3, { { 529, 2, 0 }, { 523, 1, -1, 33 }, { 45, 1, 0 } } }, { (uint8*)"dir", (uint8*)"fb_Dir", 17, -1, (tmp$33)0u, 129, 3, { { 529, 2, 0 }, { 523, 1, -1, 33 }, { 11, 2, 0 } } }, { (uint8*)"dir", (uint8*)"fb_Dir64", 17, -1, (tmp$33)0u, 129, 3, { { 529, 2, 0 }, { 523, 1, -1, 33 }, { 13, 2, 0 } } }, { (uint8*)"settime", (uint8*)"fb_SetTime", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"setdate", (uint8*)"fb_SetDate", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"threadcreate", (uint8*)"fb_ThreadCreate", 32, -1, (tmp$33)&HMULTITHREAD_CB, 132, 5, { { 54, 1, -1, 1 }, { 32, 1, 0 }, { 0, 0, 0 }, { 32, 1, -1, 0 }, { 520, 1, -1, 0 } } }, { (uint8*)"threadwait", (uint8*)"fb_ThreadWait", 0, -1, (tmp$33)&HMULTITHREAD_CB, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"fb_ThreadCall", (uint8*)0u, 32, 3, (tmp$33)&HTHREADCALL_CB, 132, 5, { { 32, 1, 0 }, { 523, 1, 0 }, { 520, 1, 0 }, { 523, 1, 0 }, { -2147483648u, 4, 0 } } }, { (uint8*)"mutexcreate", (uint8*)"fb_MutexCreate", 32, -1, (tmp$33)0u, 132, 0 }, { (uint8*)"mutexdestroy", (uint8*)"fb_MutexDestroy", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"mutexlock", (uint8*)"fb_MutexLock", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"mutexunlock", (uint8*)"fb_MutexUnlock", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"condcreate", (uint8*)"fb_CondCreate", 32, -1, (tmp$33)0u, 132, 0 }, { (uint8*)"conddestroy", (uint8*)"fb_CondDestroy", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"condsignal", (uint8*)"fb_CondSignal", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"condbroadcast", (uint8*)"fb_CondBroadcast", 0, -1, (tmp$33)0u, 132, 1, { { 32, 1, 0 } } }, { (uint8*)"condwait", (uint8*)"fb_CondWait", 0, -1, (tmp$33)0u, 132, 2, { { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"dylibload", (uint8*)"fb_DylibLoad", 32, -1, (tmp$33)0u, 128, 1, { { 529, 2, 0 } } }, { (uint8*)"dylibsymbol", (uint8*)"fb_DylibSymbol", 32, -1, (tmp$33)0u, 129, 2, { { 32, 1, 0 }, { 529, 2, 0 } } }, { (uint8*)"dylibsymbol", (uint8*)"fb_DylibSymbolByOrd", 32, -1, (tmp$33)0u, 129, 2, { { 32, 1, 0 }, { 517, 1, 0 } } }, { (uint8*)"dylibfree", (uint8*)"fb_DylibFree", 0, -1, (tmp$33)0u, 128, 1, { { 32, 1, 0 } } }, { (uint8*)"beep", (uint8*)"fb_Beep", 0, -1, (tmp$33)0u, 0, 0 }, { (uint8*)"mkdir", (uint8*)"fb_MkDir", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"rmdir", (uint8*)"fb_RmDir", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"chdir", (uint8*)"fb_ChDir", 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)0u } };

void RTLSYSTEMMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLSYSTEMMODEND( void )
{
	label$12:;
	label$13:;
}

struct $7ASTNODE* RTLINITAPP( struct $7ASTNODE* ARGC$1, struct $7ASTNODE* ARGV$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$32:;
	struct $7ASTNODE* PROC$1;
	int32 IS_EXE$1;
	IS_EXE$1 = -(*(int32*)((uint8*)&ENV$ + 96) != 2);
	if( *(int32*)((uint8*)&ENV$ + 104) != 0 ) goto label$35;
	{
		{
			$13FB_COMPTARGET TMP$179$3;
			TMP$179$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
			if( TMP$179$3 == 0 ) goto label$38;
			label$39:;
			if( TMP$179$3 != 1 ) goto label$37;
			label$38:;
			{
				if( *(int32*)((uint8*)&ENV$ + 184) == 0 ) goto label$41;
				{
					RTLPROFILECALL_MONSTARTUP(  );
				}
				label$41:;
				label$40:;
			}
			label$37:;
			label$36:;
		}
		if( *(int32*)((uint8*)&ENV$ + 108) != 0 ) goto label$43;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb___main", 142 );
			struct $7ASTNODE* vr$3 = ASTNEWCALL( vr$2, (struct $7ASTNODE*)0u );
			ASTADD( vr$3 );
		}
		label$43:;
		label$42:;
	}
	label$35:;
	label$34:;
	struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_Init", 140 );
	struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
	PROC$1 = vr$5;
	ASTNEWARG( PROC$1, ARGC$1, -2147483648u, -1 );
	ASTNEWARG( PROC$1, ARGV$1, -2147483648u, -1 );
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( (int64)*($7FB_LANG*)((uint8*)&ENV$ + 136), 8, (struct $8FBSYMBOL*)0u );
	ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	ASTADD( PROC$1 );
	if( (*(int32*)((uint8*)&ENV$ + 156) & IS_EXE$1) == 0 ) goto label$45;
	{
		struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_InitSignals", 141 );
		struct $7ASTNODE* vr$10 = ASTNEWCALL( vr$9, (struct $7ASTNODE*)0u );
		ASTADD( vr$10 );
		int32 vr$11 = FBGETCPUFAMILY(  );
		if( vr$11 != 0 ) goto label$47;
		{
			RTLX86CPUCHECK(  );
		}
		label$47:;
		label$46:;
	}
	label$45:;
	label$44:;
	fb$result$1 = PROC$1;
	label$33:;
	return fb$result$1;
}

int32 RTLEXITAPP( struct $7ASTNODE* ERRLEVEL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$48:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_End", 143 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	if( ERRLEVEL$1 != (struct $7ASTNODE*)0u ) goto label$51;
	{
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		ERRLEVEL$1 = vr$3;
	}
	label$51:;
	label$50:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ERRLEVEL$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$53;
	{
		goto label$49;
	}
	label$53:;
	label$52:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$49:;
	return fb$result$1;
}

struct $7ASTNODE* RTLATEXIT( struct $7ASTNODE* PROCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$66:;
	static struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_atexit", 144 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, PROCEXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$69;
	{
		goto label$67;
	}
	label$69:;
	label$68:;
	fb$result$1 = PROC$1;
	label$67:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzsystem( void )
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

static int32 RTLX86CPUCHECK( void )
{
	FBSTRING TMP$175$1;
	FBSTRING TMP$176$1;
	FBSTRING TMP$177$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* CPU$1;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LABEL$1;
	int32 FAMILY$1;
	FBSTRING FAMILYSTR$1;
	__builtin_memset( &FAMILYSTR$1, 0, 12 );
	fb$result$1 = 0;
	FAMILY$1 = *(int32*)((uint8*)&ENV$ + 112);
	if( FAMILY$1 <= 3 ) goto label$17;
	{
		FAMILY$1 = 3;
	}
	label$17:;
	label$16:;
	{
		if( FAMILY$1 != 0 ) goto label$19;
		label$20:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1, (void*)"386", 4, 0 );
			FAMILY$1 = 3;
		}
		goto label$18;
		label$19:;
		if( FAMILY$1 != 1 ) goto label$21;
		label$22:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1, (void*)"486", 4, 0 );
			FAMILY$1 = 4;
		}
		goto label$18;
		label$21:;
		if( FAMILY$1 != 2 ) goto label$23;
		label$24:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1, (void*)"586", 4, 0 );
			FAMILY$1 = 5;
		}
		goto label$18;
		label$23:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1, (void*)"686", 4, 0 );
			FAMILY$1 = 6;
		}
		label$25:;
		label$18:;
	}
	struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_CpuDetect", 139 );
	struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0u );
	PROC$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 28ll, 9, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$9 = ASTNEWBOP( 42, PROC$1, vr$8, (struct $8FBSYMBOL*)0u, 1 );
	CPU$1 = vr$9;
	struct $8FBSYMBOL* vr$10 = SYMBADDLABEL( (uint8*)0u, 4 );
	LABEL$1 = vr$10;
	struct $7ASTNODE* vr$12 = ASTNEWCONSTI( (int64)FAMILY$1, 9, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$13 = ASTNEWBOP( 49, CPU$1, vr$12, LABEL$1, 0 );
	ASTADD( vr$13 );
	__builtin_memset( &TMP$177$1, 0, 12 );
	__builtin_memset( &TMP$175$1, 0, 12 );
	FBSTRING* vr$18 = fb_StrConcat( &TMP$175$1, (void*)"This program requires at least a ", 34, (void*)&FAMILYSTR$1, -1 );
	__builtin_memset( &TMP$176$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$176$1, (void*)vr$18, -1, (void*)" to run.", 9 );
	fb_StrAssign( (void*)&TMP$177$1, -1, (void*)vr$21, -1, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$177$1, -1 );
	S$1 = vr$23;
	fb_StrDelete( (FBSTRING*)&TMP$177$1 );
	struct $7ASTNODE* vr$25 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	RTLPRINT( vr$26, 0, 0, vr$25, 0 );
	struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_End", 143 );
	struct $7ASTNODE* vr$28 = ASTNEWCALL( vr$27, (struct $7ASTNODE*)0u );
	PROC$1 = vr$28;
	struct $7ASTNODE* vr$29 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$30 = ASTNEWARG( PROC$1, vr$29, -2147483648u, -1 );
	if( vr$30 != (struct $7ASTNODE*)0u ) goto label$27;
	{
		fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
		goto label$15;
	}
	label$27:;
	label$26:;
	ASTADD( PROC$1 );
	struct $7ASTNODE* vr$32 = ASTNEWLABEL( LABEL$1, -1 );
	ASTADD( vr$32 );
	if( *(int32*)((uint8*)&ENV$ + 116) != 1 ) goto label$29;
	{
		struct $8FBSYMBOL* vr$33 = RTLPROCLOOKUP( (uint8*)"fb_CpuDetect", 139 );
		struct $7ASTNODE* vr$34 = ASTNEWCALL( vr$33, (struct $7ASTNODE*)0u );
		PROC$1 = vr$34;
		struct $7ASTNODE* vr$35 = ASTNEWCONSTI( 100663296ll, 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$36 = ASTNEWBOP( 34, PROC$1, vr$35, (struct $8FBSYMBOL*)0u, 1 );
		CPU$1 = vr$36;
		struct $8FBSYMBOL* vr$37 = SYMBADDLABEL( (uint8*)0u, 4 );
		LABEL$1 = vr$37;
		struct $7ASTNODE* vr$38 = ASTNEWCONSTI( 100663296ll, 9, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$39 = ASTNEWBOP( 45, CPU$1, vr$38, LABEL$1, 0 );
		ASTADD( vr$39 );
		struct $8FBSYMBOL* vr$40 = SYMBALLOCSTRCONST( (uint8*)"This program requires SSE and SSE2 instructions to run.", -1 );
		S$1 = vr$40;
		struct $7ASTNODE* vr$41 = ASTNEWVAR( S$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$42 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		RTLPRINT( vr$42, 0, 0, vr$41, 0 );
		struct $8FBSYMBOL* vr$43 = RTLPROCLOOKUP( (uint8*)"fb_End", 143 );
		struct $7ASTNODE* vr$44 = ASTNEWCALL( vr$43, (struct $7ASTNODE*)0u );
		PROC$1 = vr$44;
		struct $7ASTNODE* vr$45 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$46 = ASTNEWARG( PROC$1, vr$45, -2147483648u, -1 );
		if( vr$46 != (struct $7ASTNODE*)0u ) goto label$31;
		{
			fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
			goto label$15;
		}
		label$31:;
		label$30:;
		ASTADD( PROC$1 );
		struct $7ASTNODE* vr$48 = ASTNEWLABEL( LABEL$1, -1 );
		ASTADD( vr$48 );
	}
	label$29:;
	label$28:;
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
	label$15:;
	return fb$result$1;
}

static int32 HMULTITHREAD_CB( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	if( *(int32*)((uint8*)&ENV$ + 232) != 0 ) goto label$57;
	{
		if( (*(int32*)((uint8*)&ENV$ + 1120) & 4) != 0 ) goto label$59;
		{
			FBRESTARTBEGINREQUEST( 4 );
		}
		label$59:;
		label$58:;
	}
	label$57:;
	label$56:;
	*(int32*)((uint8*)&ENV$ + 232) = -1;
	fb$result$1 = -1;
	goto label$55;
	label$55:;
	return fb$result$1;
}

static int32 HTHREADCALL_CB( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$60:;
	static int32 RESTART_COUNT$1;
	static int32 LIBSADDED$1 = 0;
	int32 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$63;
	{
		int32 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0;
	}
	label$63:;
	label$62:;
	if( LIBSADDED$1 != 0 ) goto label$65;
	{
		LIBSADDED$1 = -1;
		FBADDLIB( (uint8*)"ffi" );
	}
	label$65:;
	label$64:;
	int32 vr$3 = HMULTITHREAD_CB( SYM$1 );
	fb$result$1 = vr$3;
	goto label$61;
	label$61:;
	return fb$result$1;
}
