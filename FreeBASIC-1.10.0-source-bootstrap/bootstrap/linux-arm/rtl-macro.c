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
typedef int32 $10FB_RTL_OPT;
typedef int32 $14FB_DEFTOK_TYPE;
struct $17FB_RTL_MACROTOKEN {
	$14FB_DEFTOK_TYPE TYPE;
	void* DATA;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $17FB_RTL_MACROTOKEN ) == 8 );
struct $15FB_RTL_MACRODEF {
	uint8* NAME;
	$10FB_RTL_OPT OPTIONS;
	int32 PARAMS;
	uint8* PARAMTB[4];
	struct $17FB_RTL_MACROTOKEN TOKENTB[12];
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_MACRODEF ) == 124 );
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
typedef int32 $15FB_DEFINE_FLAGS;
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int32 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 12 );
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
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzmacro( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBIS64BIT( void );
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
typedef int32 $11FB_DATATYPE;
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
typedef int32 $11FB_FUNCMODE;
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
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int32, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK*, $14FB_DEFTOK_TYPE );
void ZSTRASSIGN( uint8**, uint8* );
static void HADDMACRO( struct $15FB_RTL_MACRODEF* );
static void HADDMACROS( struct $15FB_RTL_MACRODEF* );
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
static struct $15FB_RTL_MACRODEF MACRODATA$[17] = { { (uint8*)"RGB", 0, 3, { (uint8*)"R", (uint8*)"G", (uint8*)"B" }, { { 2, (void*)"culng((culng(cubyte(" }, { 0, (void*)0u }, { 2, (void*)")) shl 16) or (culng(cubyte(" }, { 0, (void*)1u }, { 2, (void*)")) shl 8) or culng(cubyte(" }, { 0, (void*)2u }, { 2, (void*)")) or (&hFF000000ul))" }, { -1 } } }, { (uint8*)"RGBA", 0, 4, { (uint8*)"R", (uint8*)"G", (uint8*)"B", (uint8*)"A" }, { { 2, (void*)"culng((culng(cubyte(" }, { 0, (void*)0u }, { 2, (void*)")) shl 16) or (culng(cubyte(" }, { 0, (void*)1u }, { 2, (void*)")) shl 8) or culng(cubyte(" }, { 0, (void*)2u }, { 2, (void*)")) or (culng(cubyte(" }, { 0, (void*)3u }, { 2, (void*)")) shl 24))" }, { -1 } } }, { (uint8*)"VA_ARG", 8192, 2, { (uint8*)"A", (uint8*)"T" }, { { 2, (void*)"peek(" }, { 0, (void*)1u }, { 2, (void*)"," }, { 0, (void*)0u }, { 2, (void*)")" }, { -1 } } }, { (uint8*)"VA_NEXT", 8192, 2, { (uint8*)"A", (uint8*)"T" }, { { 2, (void*)"(cptr(" }, { 0, (void*)1u }, { 2, (void*)" ptr, cptr(byte ptr, " }, { 0, (void*)0u }, { 2, (void*)") + (sizeof(" }, { 0, (void*)1u }, { 2, (void*)") + sizeof(any ptr)-1 and -sizeof(any ptr)) ) )" }, { -1 } } }, { (uint8*)"ASSERT", 16, 1, { (uint8*)"E" }, { { 2, (void*)"if (" }, { 0, (void*)0u }, { 2, (void*)") = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, " }, { 1, (void*)0u }, { 2, (void*)") end if" }, { -1 } } }, { (uint8*)"ASSERTWARN", 16, 1, { (uint8*)"E" }, { { 2, (void*)"if (" }, { 0, (void*)0u }, { 2, (void*)") = 0 then fb_AssertWarn(__FILE__, __LINE__, __FUNCTION__, " }, { 1, (void*)0u }, { 2, (void*)") end if" }, { -1 } } }, { (uint8*)"OFFSETOF", 0, 2, { (uint8*)"T", (uint8*)"F" }, { { 2, (void*)"cint( @cast( " }, { 0, (void*)0u }, { 2, (void*)" ptr, 0 )->" }, { 0, (void*)1u }, { 2, (void*)" )" }, { -1 } } }, { (uint8*)"__FB_MIN_VERSION__", 0, 3, { (uint8*)"MAJOR", (uint8*)"MINOR", (uint8*)"PATCH_LEVEL" }, { { 2, (void*)"((__FB_VER_MAJOR__ > (" }, { 0, (void*)0u }, { 2, (void*)")) or ((__FB_VER_MAJOR__ = (" }, { 0, (void*)0u }, { 2, (void*)")) and ((__FB_VER_MINOR__ > (" }, { 0, (void*)1u }, { 2, (void*)")) or (__FB_VER_MINOR__ = (" }, { 0, (void*)1u }, { 2, (void*)") and __FB_VER_PATCH__ >= (" }, { 0, (void*)2u }, { 2, (void*)")))))" }, { -1 } } }, { (uint8*)"LOWORD", 0, 1, { (uint8*)"X" }, { { 2, (void*)"(cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h0000FFFF)" }, { -1 } } }, { (uint8*)"HIWORD", 32768, 1, { (uint8*)"X" }, { { 2, (void*)"(cuint(" }, { 0, (void*)0u }, { 2, (void*)") shr 16)" }, { -1 } } }, { (uint8*)"HIWORD", 65536, 1, { (uint8*)"X" }, { { 2, (void*)"((cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &hFFFF0000u) shr 16)" }, { -1 } } }, { (uint8*)"LOBYTE", 0, 1, { (uint8*)"X" }, { { 2, (void*)"(cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h000000FF)" }, { -1 } } }, { (uint8*)"HIBYTE", 0, 1, { (uint8*)"X" }, { { 2, (void*)"((cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h0000FF00) shr 8)" }, { -1 } } }, { (uint8*)"BIT", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"(((" }, { 0, (void*)0u }, { 2, (void*)") and (cast(typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) shl (" }, { 0, (void*)1u }, { 2, (void*)"))) <> 0)" }, { -1 } } }, { (uint8*)"BITSET", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"((" }, { 0, (void*)0u }, { 2, (void*)") or (cast(typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) shl (" }, { 0, (void*)1u }, { 2, (void*)")))" }, { -1 } } }, { (uint8*)"BITRESET", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"((" }, { 0, (void*)0u }, { 2, (void*)") and not (cast(typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) shl (" }, { 0, (void*)1u }, { 2, (void*)")))" }, { -1 } } }, { (uint8*)0u } };
static struct $15FB_RTL_MACRODEF MACRODATAQB$[17] = { { (uint8*)"__RGB", 0, 3, { (uint8*)"R", (uint8*)"G", (uint8*)"B" }, { { 2, (void*)"__culng((__culng(__cubyte(" }, { 0, (void*)0u }, { 2, (void*)")) __shl 16) or (__culng(__cubyte(" }, { 0, (void*)1u }, { 2, (void*)")) __shl 8) or __culng(__cubyte(" }, { 0, (void*)2u }, { 2, (void*)")) or &hFF000000ul)" }, { -1 } } }, { (uint8*)"__RGBA", 0, 4, { (uint8*)"R", (uint8*)"G", (uint8*)"B", (uint8*)"A" }, { { 2, (void*)"__culng((__culng(__cubyte(" }, { 0, (void*)0u }, { 2, (void*)")) __shl 16) or (__culng(__cubyte(" }, { 0, (void*)1u }, { 2, (void*)")) __shl 8) or __culng(__cubyte(" }, { 0, (void*)2u }, { 2, (void*)")) or (__culng(__cubyte(" }, { 0, (void*)3u }, { 2, (void*)")) __shl 24))" }, { -1 } } }, { (uint8*)"__VA_ARG", 8192, 2, { (uint8*)"A", (uint8*)"T" }, { { 2, (void*)"peek(" }, { 0, (void*)1u }, { 2, (void*)"," }, { 0, (void*)0u }, { 2, (void*)")" }, { -1 } } }, { (uint8*)"__VA_NEXT", 8192, 2, { (uint8*)"A", (uint8*)"T" }, { { 2, (void*)"(__cptr(" }, { 0, (void*)1u }, { 2, (void*)" __ptr, __cptr(__byte __ptr, " }, { 0, (void*)0u }, { 2, (void*)") + (__sizeof(" }, { 0, (void*)1u }, { 2, (void*)") + __sizeof(any __ptr)-1 and -__sizeof(any __ptr)) ) )" }, { -1 } } }, { (uint8*)"__ASSERT", 16, 1, { (uint8*)"E" }, { { 2, (void*)"if (" }, { 0, (void*)0u }, { 2, (void*)") = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, " }, { 1, (void*)0u }, { 2, (void*)") end if" }, { -1 } } }, { (uint8*)"__ASSERTWARN", 16, 1, { (uint8*)"E" }, { { 2, (void*)"if (" }, { 0, (void*)0u }, { 2, (void*)") = 0 then fb_AssertWarn(__FILE__, __LINE__, __FUNCTION__, " }, { 1, (void*)0u }, { 2, (void*)") end if" }, { -1 } } }, { (uint8*)"__OFFSETOF", 32768, 2, { (uint8*)"T", (uint8*)"F" }, { { 2, (void*)"clng( @__cast( " }, { 0, (void*)0u }, { 2, (void*)" __ptr, 0 )->" }, { 0, (void*)1u }, { 2, (void*)" )" }, { -1 } } }, { (uint8*)"__OFFSETOF", 65536, 2, { (uint8*)"T", (uint8*)"F" }, { { 2, (void*)"__clngint( @__cast( " }, { 0, (void*)0u }, { 2, (void*)" __ptr, 0 )->" }, { 0, (void*)1u }, { 2, (void*)" )" }, { -1 } } }, { (uint8*)"__FB_MIN_VERSION__", 0, 3, { (uint8*)"MAJOR", (uint8*)"MINOR", (uint8*)"PATCH_LEVEL" }, { { 2, (void*)"((__FB_VER_MAJOR__ > (" }, { 0, (void*)0u }, { 2, (void*)")) or ((__FB_VER_MAJOR__ = (" }, { 0, (void*)0u }, { 2, (void*)")) and ((__FB_VER_MINOR__ > (" }, { 0, (void*)1u }, { 2, (void*)")) or (__FB_VER_MINOR__ = (" }, { 0, (void*)1u }, { 2, (void*)") and __FB_VER_PATCH__ >= (" }, { 0, (void*)2u }, { 2, (void*)")))))" }, { -1 } } }, { (uint8*)"__LOWORD", 0, 1, { (uint8*)"X" }, { { 2, (void*)"(__cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h0000FFFF)" }, { -1 } } }, { (uint8*)"__HIWORD", 0, 1, { (uint8*)"X" }, { { 2, (void*)"(__cuint(" }, { 0, (void*)0u }, { 2, (void*)") __shr 16)" }, { -1 } } }, { (uint8*)"__LOBYTE", 0, 1, { (uint8*)"X" }, { { 2, (void*)"(__cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h000000FF)" }, { -1 } } }, { (uint8*)"__HIBYTE", 0, 1, { (uint8*)"X" }, { { 2, (void*)"((__cuint(" }, { 0, (void*)0u }, { 2, (void*)") and &h0000FF00) __shr 8)" }, { -1 } } }, { (uint8*)"__BIT", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"(((" }, { 0, (void*)0u }, { 2, (void*)") and (__cast(__typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) __shl (" }, { 0, (void*)1u }, { 2, (void*)"))) <> 0)" }, { -1 } } }, { (uint8*)"__BITSET", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"((" }, { 0, (void*)0u }, { 2, (void*)") or (__cast(__typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) __shl (" }, { 0, (void*)1u }, { 2, (void*)")))" }, { -1 } } }, { (uint8*)"__BITRESET", 0, 2, { (uint8*)"X", (uint8*)"Y" }, { { 2, (void*)"((" }, { 0, (void*)0u }, { 2, (void*)") and not (__cast(__typeof(" }, { 0, (void*)0u }, { 2, (void*)"), 1) __shl (" }, { 0, (void*)1u }, { 2, (void*)")))" }, { -1 } } }, { (uint8*)0u } };

void RTLMACROMODINIT( void )
{
	label$47:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$50;
	{
		HADDMACROS( (struct $15FB_RTL_MACRODEF*)MACRODATAQB$ );
	}
	goto label$49;
	label$50:;
	{
		HADDMACROS( (struct $15FB_RTL_MACRODEF*)MACRODATA$ );
	}
	label$49:;
	label$48:;
}

void RTLMACROMODEND( void )
{
	label$51:;
	label$52:;
}

__attribute__(( constructor )) static void fb_ctor__rtlzmacro( void )
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

static void HADDMACRO( struct $15FB_RTL_MACRODEF* MACDEF$1 )
{
	label$10:;
	int32 ADDBODY$1;
	ADDBODY$1 = -1;
	$15FB_DEFINE_FLAGS FLAGS$1;
	FLAGS$1 = 0;
	struct $11FB_DEFPARAM* PARAMHEAD$1;
	__builtin_memset( &PARAMHEAD$1, 0, 4 );
	struct $11FB_DEFPARAM* LASTPARAM$1;
	__builtin_memset( &LASTPARAM$1, 0, 4 );
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$188$2;
		TMP$188$2 = *(int32*)((uint8*)MACDEF$1 + 8) + -1;
		goto label$12;
		label$15:;
		{
			FLAGS$1 = FLAGS$1 | 8;
			struct $11FB_DEFPARAM* vr$7 = SYMBADDDEFINEPARAM( LASTPARAM$1, *(uint8**)((uint8*)((uint8*)MACDEF$1 + (I$2 << (2 & 31))) + 12) );
			LASTPARAM$1 = vr$7;
			if( PARAMHEAD$1 != (struct $11FB_DEFPARAM*)0u ) goto label$17;
			{
				PARAMHEAD$1 = LASTPARAM$1;
			}
			label$17:;
			label$16:;
		}
		label$13:;
		I$2 = I$2 + 1;
		label$12:;
		if( I$2 <= TMP$188$2 ) goto label$15;
		label$14:;
	}
	if( (*(int32*)((uint8*)MACDEF$1 + 4) & 16) == 0 ) goto label$19;
	{
		if( *(int32*)((uint8*)&ENV$ + 152) != 0 ) goto label$21;
		{
			ADDBODY$1 = 0;
		}
		label$21:;
		label$20:;
	}
	label$19:;
	label$18:;
	if( (*(int32*)((uint8*)MACDEF$1 + 4) & 8192) == 0 ) goto label$23;
	{
		if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$25;
		{
			ADDBODY$1 = 0;
			FLAGS$1 = FLAGS$1 | 2;
		}
		label$25:;
		label$24:;
	}
	label$23:;
	label$22:;
	struct $9FB_DEFTOK* TOKHEAD$1;
	__builtin_memset( &TOKHEAD$1, 0, 4 );
	if( ADDBODY$1 == 0 ) goto label$27;
	{
		struct $9FB_DEFTOK* TOK$2;
		__builtin_memset( &TOK$2, 0, 4 );
		struct $17FB_RTL_MACROTOKEN* PTK$2;
		PTK$2 = (struct $17FB_RTL_MACROTOKEN*)((uint8*)MACDEF$1 + 28);
		label$28:;
		if( *(int32*)PTK$2 == -1 ) goto label$29;
		{
			struct $9FB_DEFTOK* vr$20 = SYMBADDDEFINETOK( TOK$2, *($14FB_DEFTOK_TYPE*)PTK$2 );
			TOK$2 = vr$20;
			if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0u ) goto label$31;
			{
				TOKHEAD$1 = TOK$2;
			}
			label$31:;
			label$30:;
			{
				$14FB_DEFTOK_TYPE TMP$189$4;
				TMP$189$4 = *($14FB_DEFTOK_TYPE*)PTK$2;
				if( TMP$189$4 == 0 ) goto label$34;
				label$35:;
				if( TMP$189$4 != 1 ) goto label$33;
				label$34:;
				{
					*(int32*)((uint8*)TOK$2 + 4) = *(int32*)((uint8*)PTK$2 + 4);
				}
				goto label$32;
				label$33:;
				if( TMP$189$4 != 2 ) goto label$36;
				label$37:;
				{
					ZSTRASSIGN( (uint8**)((uint8*)TOK$2 + 4), *(uint8**)((uint8*)PTK$2 + 4) );
				}
				label$36:;
				label$32:;
			}
			PTK$2 = (struct $17FB_RTL_MACROTOKEN*)((uint8*)PTK$2 + 8);
		}
		goto label$28;
		label$29:;
	}
	label$27:;
	label$26:;
	SYMBADDDEFINEMACRO( *(uint8**)MACDEF$1, TOKHEAD$1, *(int32*)((uint8*)MACDEF$1 + 8), PARAMHEAD$1, FLAGS$1 );
	label$11:;
}

static void HADDMACROS( struct $15FB_RTL_MACRODEF* MACDEF$1 )
{
	label$38:;
	label$40:;
	if( *(uint8**)MACDEF$1 == (uint8*)0u ) goto label$41;
	{
		int32 ADD_MACRO$2;
		ADD_MACRO$2 = -1;
		if( (*(int32*)((uint8*)MACDEF$1 + 4) & 32768) == 0 ) goto label$43;
		{
			int32 vr$3 = FBIS64BIT(  );
			ADD_MACRO$2 = ADD_MACRO$2 & ~vr$3;
		}
		goto label$42;
		label$43:;
		if( (*(int32*)((uint8*)MACDEF$1 + 4) & 65536) == 0 ) goto label$44;
		{
			int32 vr$8 = FBIS64BIT(  );
			ADD_MACRO$2 = ADD_MACRO$2 & vr$8;
		}
		label$44:;
		label$42:;
		if( ADD_MACRO$2 == 0 ) goto label$46;
		{
			HADDMACRO( MACDEF$1 );
		}
		label$46:;
		label$45:;
		MACDEF$1 = (struct $15FB_RTL_MACRODEF*)((uint8*)MACDEF$1 + 124);
	}
	goto label$40;
	label$41:;
	label$39:;
}
