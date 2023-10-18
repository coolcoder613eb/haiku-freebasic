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
typedef int64 $11FB_DATATYPE;
typedef int64 $11FB_FUNCMODE;
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 24 );
struct $8FBSYMBOL;
typedef int64 $13AST_NODECLASS;
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
	int64 MULT;
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
__FB_STATIC_ASSERT( sizeof( struct $19AST_TMPSTRLIST_ITEM ) == 24 );
struct $13AST_NODE_CALL {
	int64 ISRTL;
	int64 ARGS;
	struct $8FBSYMBOL* CURRARG;
	struct $7ASTNODE* ARGTAIL;
	struct $19AST_TMPSTRLIST_ITEM* STRTAIL;
	struct $8FBSYMBOL* TMPRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CALL ) == 48 );
struct $12AST_NODE_ARG {
	int64 MODE;
	int64 LGT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ARG ) == 16 );
struct $12AST_NODE_IIF {
	struct $8FBSYMBOL* FALSELABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_IIF ) == 8 );
typedef int64 $9AST_OPOPT;
struct $11AST_NODE_OP {
	int64 OP;
	$9AST_OPOPT OPTIONS;
	struct $8FBSYMBOL* EX;
};
__FB_STATIC_ASSERT( sizeof( struct $11AST_NODE_OP ) == 24 );
struct $13AST_NODE_LOAD {
	int64 ISRES;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LOAD ) == 8 );
struct $14AST_NODE_LABEL {
	int64 FLUSH;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_LABEL ) == 8 );
struct $13AST_NODE_OFFS {
	int64 OFS;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_OFFS ) == 8 );
struct $12AST_NODE_LIT {
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_LIT ) == 8 );
typedef int64 $14AST_ASMTOKTYPE;
struct $9ASTASMTOK;
struct $9ASTASMTOK {
	$14AST_ASMTOKTYPE TYPE;
	union {
		struct $8FBSYMBOL* SYM;
		uint8* TEXT;
	};
	struct $9ASTASMTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9ASTASMTOK ) == 24 );
struct $12AST_NODE_ASM {
	struct $9ASTASMTOK* TOKHEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_ASM ) == 8 );
struct $14AST_NODE_JMPTB {
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int64 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_JMPTB ) == 48 );
struct $12AST_NODE_DBG {
	int64 EX;
	uint8* FILENAME;
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_DBG ) == 24 );
struct $12AST_NODE_MEM {
	int64 BYTES;
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_NODE_MEM ) == 16 );
struct $14AST_NODE_STACK {
	int64 OP;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_STACK ) == 8 );
struct $16AST_NODE_TYPEINI {
	int64 OFS;
	union {
		int64 BYTES;
		int64 ELEMENTS;
	};
	struct $8FBSYMBOL* SCP;
	struct $8FBSYMBOL* LASTSCP;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_NODE_TYPEINI ) == 32 );
struct $21AST_NODE_TYPEINISCOPE {
	int64 IS_ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $21AST_NODE_TYPEINISCOPE ) == 8 );
struct $13AST_BREAKLIST {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_BREAKLIST ) == 16 );
struct $13AST_NODE_PROC {
	int64 ISMAIN;
	struct $7ASTNODE* DECL_LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_PROC ) == 16 );
struct $14AST_NODE_BLOCK {
	struct $7ASTNODE* PARENT;
	int64 INISTMT;
	int64 ENDSTMT;
	struct $8FBSYMBOL* INITLABEL;
	struct $8FBSYMBOL* EXITLABEL;
	struct $13AST_BREAKLIST BREAKLIST;
	struct $13AST_NODE_PROC PROC;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BLOCK ) == 72 );
struct $14AST_NODE_BREAK {
	struct $7ASTNODE* PARENT;
	int64 SCOPE;
	int64 LINENUM;
	int64 STMTNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $14AST_NODE_BREAK ) == 32 );
struct $17AST_NODE_DATASTMT {
	union {
		int64 ID;
		int64 ELMTS;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $17AST_NODE_DATASTMT ) == 8 );
struct $13AST_NODE_LINK {
	int64 RET;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_LINK ) == 8 );
struct $13AST_NODE_CAST {
	int64 DOCONV;
	int64 DO_CONVFD2FS;
	int64 CONVCONST;
};
__FB_STATIC_ASSERT( sizeof( struct $13AST_NODE_CAST ) == 24 );
struct $7ASTNODE {
	$13AST_NODECLASS CLASS;
	int64 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	struct $8FBSYMBOL* SYM;
	int64 VECTOR;
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
__FB_STATIC_ASSERT( sizeof( struct $7ASTNODE ) == 144 );
struct $10FBARRAYDIM {
	int64 LOWER;
	int64 UPPER;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBARRAYDIM ) == 16 );
struct $9FBS_ARRAY {
	int64 DIMENSIONS;
	struct $10FBARRAYDIM* DIMTB;
	int64 DIFF;
	int64 ELEMENTS;
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* DESCTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_ARRAY ) == 48 );
struct $10FBVAR_DESC {
	struct $8FBSYMBOL* ARRAY;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DESC ) == 8 );
struct $10FBVAR_DATA {
	struct $8FBSYMBOL* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBVAR_DATA ) == 8 );
struct $7FBS_VAR {
	union {
		uint8* LITTEXT;
		uint16* LITTEXTW;
		struct $7ASTNODE* INITREE;
	};
	struct $9FBS_ARRAY ARRAY;
	struct $10FBVAR_DESC DESC;
	int64 STMTNUM;
	int64 ALIGN;
	struct $10FBVAR_DATA DATA;
	int64 BITPOS;
	int64 BITS;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBS_VAR ) == 104 );
struct $10FBSYMBOLTB {
	struct $8FBSYMBOL* OWNER;
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMBOLTB ) == 24 );
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHITEM ) == 32 );
struct $8HASHLIST {
	struct $8HASHITEM* HEAD;
	struct $8HASHITEM* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $8HASHLIST ) == 16 );
struct $5THASH {
	struct $8HASHLIST* LIST;
	int64 NODES;
	int64 DELSTR;
};
__FB_STATIC_ASSERT( sizeof( struct $5THASH ) == 24 );
struct $8FBHASHTB;
struct $8FBHASHTB {
	struct $8FBSYMBOL* OWNER;
	struct $5THASH TB;
	struct $8FBHASHTB* PREV;
	struct $8FBHASHTB* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBHASHTB ) == 48 );
struct $9FBSYMLIST {
	struct $8FBSYMBOL* HEAD;
	struct $8FBSYMBOL* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMLIST ) == 16 );
struct $10FBSYMCHAIN;
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int64 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 48 );
struct $13FBNAMESPC_EXT {
	struct $9FBSYMLIST IMPLIST;
	struct $9FBSYMLIST EXPLIST;
	int64 CNT;
	struct $10FBSYMCHAIN* IMPSYM_HEAD;
	struct $10FBSYMCHAIN* IMPSYM_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBNAMESPC_EXT ) == 56 );
struct $9FBNAMESPC {
	struct $10FBSYMBOLTB SYMTB;
	struct $8FBHASHTB HASHTB;
	struct $13FBNAMESPC_EXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBNAMESPC ) == 80 );
typedef int64 $15FB_STRUCT_INREG;
struct $13FB_STRUCT_DBG {
	int64 TYPENUM;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_STRUCT_DBG ) == 8 );
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
	int64 VTABLEELEMENTS;
	struct $8FBSYMBOL* VTABLE;
	struct $8FBSYMBOL* RTTI;
	int64 ABSTRACTCOUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_STRUCTEXT ) == 320 );
struct $10FBS_STRUCT {
	struct $9FBNAMESPC NS;
	struct $8FBSYMBOL* BASE;
	struct $8FBSYMBOL* ANONPARENT;
	int64 NATALIGN;
	int64 UNPADLGT;
	int32 OPTIONS;
	uint8 BITPOS;
	uint8 ALIGN;
	$11FB_DATATYPE RETDTYPE;
	$15FB_STRUCT_INREG RETIN2REGS;
	struct $13FB_STRUCT_DBG DBG;
	struct $12FB_STRUCTEXT* EXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_STRUCT ) == 152 );
struct $8FBS_ENUM {
	struct $9FBNAMESPC NS;
	int64 ELEMENTS;
	struct $13FB_STRUCT_DBG DBG;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBS_ENUM ) == 96 );
typedef int64 $21FB_PROC_RETURN_METHOD;
typedef int64 (*tmp$34)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$34 CALLBACK;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCRTL ) == 8 );
struct $10FB_PROCOVL {
	int16 MINPARAMS;
	int16 MAXPARAMS;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCOVL ) == 16 );
struct $10FB_PROCSTK {
	int64 ARGOFS;
	int64 LOCALOFS;
	int64 LOCALMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCSTK ) == 24 );
struct $10FB_PROCDBG {
	int64 INILINE;
	int64 ENDLINE;
	uint8* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCDBG ) == 24 );
struct $10FB_PROCERR {
	struct $8FBSYMBOL* LASTHND;
	struct $8FBSYMBOL* LASTMOD;
	struct $8FBSYMBOL* LASTFUN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCERR ) == 24 );
typedef int64 $6AST_OP;
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 8 );
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
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
typedef int64 $12FB_PROCSTATS;
struct $10FB_PROCGSB {
	struct $8FBSYMBOL* CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCGSB ) == 8 );
struct $10FB_PROCEXT {
	struct $8FBSYMBOL* RES;
	struct $10FB_PROCSTK STK;
	struct $10FB_PROCDBG DBG;
	struct $10FB_PROCERR ERR;
	struct $12FB_PROCOPOVL OPOVL;
	struct $5TLIST* STATDTOR;
	$12FB_PROCSTATS STATS;
	int64 STMTNUM;
	int64 PRIORITY;
	struct $10FB_PROCGSB GOSUB;
	struct $7ASTNODE* BASE_INITREE;
	int64 VTABLEINDEX;
	struct $8FBSYMBOL* OVERRIDDEN;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_PROCEXT ) == 152 );
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
__FB_STATIC_ASSERT( sizeof( struct $8FBS_PROC ) == 120 );
typedef int64 $12FB_PARAMMODE;
struct $9FBS_PARAM {
	$12FB_PARAMMODE MODE;
	struct $8FBSYMBOL* VAR;
	struct $7ASTNODE* OPTEXPR;
	int64 BYDESCDIMENSIONS;
	struct $8FBSYMBOL* BYDESCREALSUBTYPE;
	int64 REGNUM;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_PARAM ) == 48 );
struct $9FBS_LABEL {
	struct $8FBSYMBOL* PARENT;
	int64 DECLARED;
	int64 STMTNUM;
	boolean GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_LABEL ) == 32 );
struct $11FB_DEFPARAM;
struct $11FB_DEFPARAM {
	uint8* NAME;
	int64 NUM;
	struct $11FB_DEFPARAM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_DEFPARAM ) == 24 );
typedef int64 $14FB_DEFTOK_TYPE;
struct $9FB_DEFTOK;
struct $9FB_DEFTOK {
	$14FB_DEFTOK_TYPE TYPE;
	union {
		uint8* TEXT;
		uint16* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$28)( void );
typedef FBSTRING* (*tmp$29)( void*, int64* );
typedef uint16* (*tmp$30)( void*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint16* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$28 DPROCZ;
		tmp$29 MPROCZ;
	};
	union {
		tmp$30 MPROCW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_DEFINE ) == 56 );
typedef int64 $10FB_TKCLASS;
struct $11FBS_KEYWORD {
	int64 ID;
	$10FB_TKCLASS TKCLASS;
};
__FB_STATIC_ASSERT( sizeof( struct $11FBS_KEYWORD ) == 16 );
struct $8FBFWDREF;
struct $8FBFWDREF {
	struct $8FBSYMBOL* REF;
	struct $8FBFWDREF* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBFWDREF ) == 16 );
struct $10FBS_FWDREF {
	struct $8FBFWDREF* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBS_FWDREF ) == 8 );
struct $11FB_SCOPEDBG {
	int64 INILINE;
	int64 ENDLINE;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* ENDLABEL;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_SCOPEDBG ) == 32 );
struct $12FB_SCOPEEMIT {
	int64 BASEOFS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_SCOPEEMIT ) == 8 );
struct $9FBS_SCOPE {
	struct $7ASTNODE* BACKNODE;
	struct $10FBSYMBOLTB SYMTB;
	struct $11FB_SCOPEDBG DBG;
	struct $12FB_SCOPEEMIT EMIT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBS_SCOPE ) == 72 );
struct $13FBS_NAMESPACE {
	struct $9FBNAMESPC NS;
	int64 CNT;
	struct $8FBSYMBOL* LAST_TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBS_NAMESPACE ) == 96 );
struct $12FBS_NSIMPORT {
	struct $8FBSYMBOL* IMP_NS;
	struct $8FBSYMBOL* IMP_PREV;
	struct $8FBSYMBOL* IMP_NEXT;
	struct $8FBSYMBOL* EXP_NS;
	struct $8FBSYMBOL* EXP_PREV;
	struct $8FBSYMBOL* EXP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBS_NSIMPORT ) == 48 );
struct $9FBSYMHASH {
	struct $8FBHASHTB* TB;
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
	struct $8FBSYMBOL* PREV;
	struct $8FBSYMBOL* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FBSYMHASH ) == 40 );
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
__FB_STATIC_ASSERT( sizeof( struct $8FBSYMBOL ) == 320 );
typedef int64 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int64 ISOPT;
	int64 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 32 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$34 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int64 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 568 );
typedef int64 $13FB_COMPTARGET;
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
static void fb_ctor__rtlzsystem( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $16FB_RESTART_FLAGS;
void FBRESTARTBEGINREQUEST( $16FB_RESTART_FLAGS );
int64 FBRESTARTGETCOUNT( void );
int64 FBGETCPUFAMILY( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTNEWLABEL( struct $8FBSYMBOL*, int64 );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
int64 RTLPRINT( struct $7ASTNODE*, int64, int64, struct $7ASTNODE*, int64 );
void RTLPROFILECALL_MONSTARTUP( void );
static int64 HMULTITHREAD_CB( struct $8FBSYMBOL* );
static int64 HTHREADCALL_CB( struct $8FBSYMBOL* );
static int64 RTLX86CPUCHECK( void );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I10AST_OPINFOE {
	struct $10AST_OPINFO* DATA;
	struct $10AST_OPINFO* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I10AST_OPINFOE ) == 72 );
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
typedef int64 $12FB_DATACLASS;
struct $13SYMB_DATATYPE {
	$12FB_DATACLASS CLASS;
	int64 SIZE;
	int64 SIGNED;
	int64 INTRANK;
	$11FB_DATATYPE REMAPTYPE;
	int64 SIZETYPE;
	uint8* NAME;
};
__FB_STATIC_ASSERT( sizeof( struct $13SYMB_DATATYPE ) == 56 );
struct $8FBARRAY1I13SYMB_DATATYPEE {
	struct $13SYMB_DATATYPE* DATA;
	struct $13SYMB_DATATYPE* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I13SYMB_DATATYPEE ) == 72 );
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
typedef int64 $10FB_OUTTYPE;
typedef int64 $10FB_BACKEND;
typedef int64 $10FB_CPUTYPE;
typedef int64 $10FB_FPUTYPE;
typedef int64 $9FB_FPMODE;
typedef int64 $17FB_VECTORIZELEVEL;
typedef int64 $12FB_ASMSYNTAX;
typedef int64 $7FB_LANG;
typedef int64 $10FB_PDCHECK;
typedef int64 $11FB_MODEVIEW;
struct $12FBCMMLINEOPT {
	$10FB_OUTTYPE OUTTYPE;
	int64 PPONLY;
	$10FB_BACKEND BACKEND;
	$13FB_COMPTARGET TARGET;
	$10FB_CPUTYPE CPUTYPE;
	$10FB_FPUTYPE FPUTYPE;
	$9FB_FPMODE FPMODE;
	$17FB_VECTORIZELEVEL VECTORIZE;
	int64 OPTLEVEL;
	$12FB_ASMSYNTAX ASMSYNTAX;
	$7FB_LANG LANG;
	int64 FORCELANG;
	int64 DEBUG;
	int64 DEBUGINFO;
	int64 ASSERTIONS;
	int64 ERRORCHECK;
	int64 RESUMEERR;
	int64 EXTRAERRCHK;
	int64 ERRLOCATION;
	int64 ARRAYBOUNDCHK;
	int64 NULLPTRCHK;
	int64 UNWINDINFO;
	int64 PROFILE;
	int64 WARNINGLEVEL;
	int64 SHOWERROR;
	int64 MAXERRORS;
	$10FB_PDCHECK PDCHECKOPT;
	int64 GOSUBSETJMP;
	int64 VALISTASPTR;
	int64 NOTHISCALL;
	int64 NOFASTCALL;
	int64 FBRT;
	int64 EXPORT;
	int64 MSBITFIELDS;
	int64 MULTITHREADED;
	int64 GFX;
	int64 PIC;
	int64 STACKSIZE;
	int64 OBJINFO;
	int64 SHOWINCLUDES;
	$11FB_MODEVIEW MODEVIEW;
	int64 NOCMDLINE;
	int64 RETURNINFLTS;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBCMMLINEOPT ) == 344 );
typedef int64 $12FB_TARGETOPT;
struct $8FBTARGET {
	uint8* ID;
	$11FB_DATATYPE WCHAR;
	$11FB_FUNCMODE FBCALL;
	$11FB_FUNCMODE STDCALL;
	$12FB_TARGETOPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBTARGET ) == 40 );
typedef int64 $13FBFILE_FORMAT;
struct $6FBFILE {
	int64 NUM;
	uint8 NAME[261];
	uint8* INCFILE;
	int64 ISMAIN;
	$13FBFILE_FORMAT FORMAT;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBFILE ) == 296 );
struct $6FBMAIN {
	struct $8FBSYMBOL* PROC;
	struct $7ASTNODE* INITNODE;
};
__FB_STATIC_ASSERT( sizeof( struct $6FBMAIN ) == 16 );
typedef int64 $11FB_LANG_OPT;
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
__FB_STATIC_ASSERT( sizeof( struct $11FB_LANG_CTX ) == 72 );
struct $8FBOPTION {
	int64 BASE;
	int64 PARAMMODE;
	int64 EXPLICIT;
	int64 PROCPUBLIC;
	int64 ESCAPESTR;
	int64 DYNAMIC;
	int64 GOSUB;
};
__FB_STATIC_ASSERT( sizeof( struct $8FBOPTION ) == 56 );
struct $7TSTRSET {
	struct $5TLIST LIST;
	struct $5THASH HASH;
};
__FB_STATIC_ASSERT( sizeof( struct $7TSTRSET ) == 88 );
struct $5FBENV {
	struct $5TLIST PREDEFINES;
	struct $5TLIST PREINCLUDES;
	struct $5TLIST INCLUDEPATHS;
	struct $12FBCMMLINEOPT CLOPT;
	struct $8FBTARGET TARGET;
	int64 WCHAR_DOCONV;
	int64 UNDERSCOREPREFIX;
	int64 POINTERSIZE;
	struct $6FBFILE INF;
	struct $6FBFILE OUTF;
	int64 PPFILE_NUM;
	struct $5THASH FILENAMEHASH;
	struct $5THASH INCFILEHASH;
	struct $5THASH INCONCEHASH;
	int64 INCLUDEREC;
	uint8 ENTRY[128];
	struct $6FBMAIN MAIN;
	struct $11FB_LANG_CTX LANG;
	struct $8FBOPTION OPT;
	int64 INITED;
	int64 MODULE_COUNT;
	$16FB_RESTART_FLAGS RESTART_REQUEST;
	$16FB_RESTART_FLAGS RESTART_ACTION;
	$16FB_RESTART_FLAGS RESTART_STATUS;
	int64 RESTART_COUNT;
	$7FB_LANG RESTART_LANG;
	struct $7TSTRSET LIBS;
	struct $7TSTRSET LIBPATHS;
	int64 FBCTINF_STARTED;
};
__FB_STATIC_ASSERT( sizeof( struct $5FBENV ) == 1792 );
extern struct $5FBENV ENV$;
static struct $14FB_RTL_PROCDEF FUNCDATA$[54] = { { (uint8*)"fb_CpuDetect", (uint8*)0ull, 12ll, 3ll, (tmp$34)0ull, 16384ll, 0ll }, { (uint8*)"fb_Init", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 3ll, { { 11ll, 1ll, 0ll }, { 68ll, 1ll, 0ll }, { 11ll, 1ll, 0ll } } }, { (uint8*)"fb_InitSignals", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 0ll }, { (uint8*)"fb___main", (uint8*)"__main", 0ll, 3ll, (tmp$34)0ull, 0ll, 0ll }, { (uint8*)"fb_End", (uint8*)0ull, 0ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_atexit", (uint8*)"atexit", 11ll, 3ll, (tmp$34)0ull, 0ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"command", (uint8*)"fb_Command", 17ll, -1ll, (tmp$34)0ull, 64ll, 1ll, { { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"curdir", (uint8*)"fb_CurDir", 17ll, -1ll, (tmp$34)0ull, 128ll, 0ll }, { (uint8*)"exepath", (uint8*)"fb_ExePath", 17ll, -1ll, (tmp$34)0ull, 128ll, 0ll }, { (uint8*)"timer", (uint8*)"fb_Timer", 16ll, -1ll, (tmp$34)0ull, 0ll, 0ll }, { (uint8*)"time", (uint8*)"fb_Time", 17ll, -1ll, (tmp$34)0ull, 64ll, 0ll }, { (uint8*)"date", (uint8*)"fb_Date", 17ll, -1ll, (tmp$34)0ull, 64ll, 0ll }, { (uint8*)"shell", (uint8*)"fb_Shell", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, -1ll, 0ll } } }, { (uint8*)"system", (uint8*)"fb_End", 0ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"stop", (uint8*)"fb_End", 0ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"run", (uint8*)"fb_Run", 11ll, -1ll, (tmp$34)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, -1ll, 0ll } } }, { (uint8*)"chain", (uint8*)"fb_Chain", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"exec", (uint8*)"fb_Exec", 11ll, -1ll, (tmp$34)0ull, 128ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"environ", (uint8*)"fb_GetEnviron", 17ll, -1ll, (tmp$34)0ull, 64ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"setenviron", (uint8*)"fb_SetEnviron", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"sleep", (uint8*)"fb_Sleep", 0ll, -1ll, (tmp$34)0ull, 129ll, 1ll, { { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"sleep", (uint8*)"fb_SleepQB", 0ll, -1ll, (tmp$34)0ull, 257ll, 1ll, { { 523ll, 1ll, -1ll, -1ll } } }, { (uint8*)"sleep", (uint8*)"fb_SleepEx", 11ll, -1ll, (tmp$34)0ull, 3ll, 2ll, { { 523ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_DirNext", 17ll, -1ll, (tmp$34)0ull, 129ll, 1ll, { { 43ll, 1ll, -1ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_DirNext64", 17ll, -1ll, (tmp$34)0ull, 129ll, 1ll, { { 45ll, 1ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_DirNext", 17ll, -1ll, (tmp$34)0ull, 129ll, 1ll, { { 11ll, 2ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_DirNext64", 17ll, -1ll, (tmp$34)0ull, 129ll, 1ll, { { 13ll, 2ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_Dir", 17ll, -1ll, (tmp$34)0ull, 129ll, 3ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 33ll }, { 43ll, 1ll, -1ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_Dir64", 17ll, -1ll, (tmp$34)0ull, 129ll, 3ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 33ll }, { 45ll, 1ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_Dir", 17ll, -1ll, (tmp$34)0ull, 129ll, 3ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 33ll }, { 11ll, 2ll, 0ll } } }, { (uint8*)"dir", (uint8*)"fb_Dir64", 17ll, -1ll, (tmp$34)0ull, 129ll, 3ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 33ll }, { 13ll, 2ll, 0ll } } }, { (uint8*)"settime", (uint8*)"fb_SetTime", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"setdate", (uint8*)"fb_SetDate", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"threadcreate", (uint8*)"fb_ThreadCreate", 32ll, -1ll, (tmp$34)&HMULTITHREAD_CB, 132ll, 5ll, { { 54ll, 1ll, -1ll, 1ll }, { 32ll, 1ll, 0ll }, { 0ll, 0ll, 0ll }, { 32ll, 1ll, -1ll, 0ll }, { 520ll, 1ll, -1ll, 0ll } } }, { (uint8*)"threadwait", (uint8*)"fb_ThreadWait", 0ll, -1ll, (tmp$34)&HMULTITHREAD_CB, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"fb_ThreadCall", (uint8*)0ull, 32ll, 3ll, (tmp$34)&HTHREADCALL_CB, 132ll, 5ll, { { 32ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 2147483648ll, 4ll, 0ll } } }, { (uint8*)"mutexcreate", (uint8*)"fb_MutexCreate", 32ll, -1ll, (tmp$34)0ull, 132ll, 0ll }, { (uint8*)"mutexdestroy", (uint8*)"fb_MutexDestroy", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"mutexlock", (uint8*)"fb_MutexLock", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"mutexunlock", (uint8*)"fb_MutexUnlock", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"condcreate", (uint8*)"fb_CondCreate", 32ll, -1ll, (tmp$34)0ull, 132ll, 0ll }, { (uint8*)"conddestroy", (uint8*)"fb_CondDestroy", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"condsignal", (uint8*)"fb_CondSignal", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"condbroadcast", (uint8*)"fb_CondBroadcast", 0ll, -1ll, (tmp$34)0ull, 132ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"condwait", (uint8*)"fb_CondWait", 0ll, -1ll, (tmp$34)0ull, 132ll, 2ll, { { 32ll, 1ll, 0ll }, { 32ll, 1ll, 0ll } } }, { (uint8*)"dylibload", (uint8*)"fb_DylibLoad", 32ll, -1ll, (tmp$34)0ull, 128ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"dylibsymbol", (uint8*)"fb_DylibSymbol", 32ll, -1ll, (tmp$34)0ull, 129ll, 2ll, { { 32ll, 1ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"dylibsymbol", (uint8*)"fb_DylibSymbolByOrd", 32ll, -1ll, (tmp$34)0ull, 129ll, 2ll, { { 32ll, 1ll, 0ll }, { 517ll, 1ll, 0ll } } }, { (uint8*)"dylibfree", (uint8*)"fb_DylibFree", 0ll, -1ll, (tmp$34)0ull, 128ll, 1ll, { { 32ll, 1ll, 0ll } } }, { (uint8*)"beep", (uint8*)"fb_Beep", 0ll, -1ll, (tmp$34)0ull, 0ll, 0ll }, { (uint8*)"mkdir", (uint8*)"fb_MkDir", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"rmdir", (uint8*)"fb_RmDir", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"chdir", (uint8*)"fb_ChDir", 11ll, -1ll, (tmp$34)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)0ull } };

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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$32:;
	struct $7ASTNODE* PROC$1;
	int64 IS_EXE$1;
	IS_EXE$1 = (int64)-(*(int64*)((uint8*)&ENV$ + 192ll) != 2ll);
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 0ll ) goto label$35;
	{
		{
			$13FB_COMPTARGET TMP$180$3;
			TMP$180$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 216ll);
			if( TMP$180$3 == 0ll ) goto label$38;
			label$39:;
			if( TMP$180$3 != 1ll ) goto label$37;
			label$38:;
			{
				if( *(int64*)((uint8*)&ENV$ + 368ll) == 0ll ) goto label$41;
				{
					RTLPROFILECALL_MONSTARTUP(  );
				}
				label$41:;
				label$40:;
			}
			label$37:;
			label$36:;
		}
		if( *(int64*)((uint8*)&ENV$ + 216ll) != 0ll ) goto label$43;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb___main", 142ll );
			struct $7ASTNODE* vr$3 = ASTNEWCALL( vr$2, (struct $7ASTNODE*)0ull );
			ASTADD( vr$3 );
		}
		label$43:;
		label$42:;
	}
	label$35:;
	label$34:;
	struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_Init", 140ll );
	struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$5;
	ASTNEWARG( PROC$1, ARGC$1, 2147483648ll, -1ll );
	ASTNEWARG( PROC$1, ARGV$1, 2147483648ll, -1ll );
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( *(int64*)((uint8*)&ENV$ + 272ll), 8ll, (struct $8FBSYMBOL*)0ull );
	ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	ASTADD( PROC$1 );
	if( (*(int64*)((uint8*)&ENV$ + 312ll) & IS_EXE$1) == 0ll ) goto label$45;
	{
		struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_InitSignals", 141ll );
		struct $7ASTNODE* vr$9 = ASTNEWCALL( vr$8, (struct $7ASTNODE*)0ull );
		ASTADD( vr$9 );
		int64 vr$10 = FBGETCPUFAMILY(  );
		if( vr$10 != 0ll ) goto label$47;
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

int64 RTLEXITAPP( struct $7ASTNODE* ERRLEVEL$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$48:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_End", 143ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	if( ERRLEVEL$1 != (struct $7ASTNODE*)0ull ) goto label$51;
	{
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		ERRLEVEL$1 = vr$3;
	}
	label$51:;
	label$50:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ERRLEVEL$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$53;
	{
		goto label$49;
	}
	label$53:;
	label$52:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$49:;
	return fb$result$1;
}

struct $7ASTNODE* RTLATEXIT( struct $7ASTNODE* PROCEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$66:;
	static struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_atexit", 144ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, PROCEXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$69;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static int64 RTLX86CPUCHECK( void )
{
	FBSTRING TMP$176$1;
	FBSTRING TMP$177$1;
	FBSTRING TMP$178$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* CPU$1;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* LABEL$1;
	int64 FAMILY$1;
	FBSTRING FAMILYSTR$1;
	__builtin_memset( &FAMILYSTR$1, 0, 24ll );
	fb$result$1 = 0ll;
	FAMILY$1 = *(int64*)((uint8*)&ENV$ + 224ll);
	if( FAMILY$1 <= 3ll ) goto label$17;
	{
		FAMILY$1 = 3ll;
	}
	label$17:;
	label$16:;
	{
		if( FAMILY$1 != 0ll ) goto label$19;
		label$20:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1ll, (void*)"386", 4ll, 0 );
			FAMILY$1 = 3ll;
		}
		goto label$18;
		label$19:;
		if( FAMILY$1 != 1ll ) goto label$21;
		label$22:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1ll, (void*)"486", 4ll, 0 );
			FAMILY$1 = 4ll;
		}
		goto label$18;
		label$21:;
		if( FAMILY$1 != 2ll ) goto label$23;
		label$24:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1ll, (void*)"586", 4ll, 0 );
			FAMILY$1 = 5ll;
		}
		goto label$18;
		label$23:;
		{
			fb_StrAssign( (void*)&FAMILYSTR$1, -1ll, (void*)"686", 4ll, 0 );
			FAMILY$1 = 6ll;
		}
		label$25:;
		label$18:;
	}
	struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_CpuDetect", 139ll );
	struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( 28ll, 9ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$9 = ASTNEWBOP( 42ll, PROC$1, vr$8, (struct $8FBSYMBOL*)0ull, 1ll );
	CPU$1 = vr$9;
	struct $8FBSYMBOL* vr$10 = SYMBADDLABEL( (uint8*)0ull, 4ll );
	LABEL$1 = vr$10;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( FAMILY$1, 9ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWBOP( 49ll, CPU$1, vr$11, LABEL$1, 0ll );
	ASTADD( vr$12 );
	__builtin_memset( &TMP$178$1, 0, 24ll );
	__builtin_memset( &TMP$176$1, 0, 24ll );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$176$1, (void*)"This program requires at least a ", 34ll, (void*)&FAMILYSTR$1, -1ll );
	__builtin_memset( &TMP$177$1, 0, 24ll );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$177$1, (void*)vr$17, -1ll, (void*)" to run.", 9ll );
	fb_StrAssign( (void*)&TMP$178$1, -1ll, (void*)vr$20, -1ll, 0 );
	struct $8FBSYMBOL* vr$22 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$178$1, -1ll );
	S$1 = vr$22;
	fb_StrDelete( (FBSTRING*)&TMP$178$1 );
	struct $7ASTNODE* vr$24 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
	RTLPRINT( vr$25, 0ll, 0ll, vr$24, 0ll );
	struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_End", 143ll );
	struct $7ASTNODE* vr$27 = ASTNEWCALL( vr$26, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$27;
	struct $7ASTNODE* vr$28 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$29 = ASTNEWARG( PROC$1, vr$28, 2147483648ll, -1ll );
	if( vr$29 != (struct $7ASTNODE*)0ull ) goto label$27;
	{
		fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
		goto label$15;
	}
	label$27:;
	label$26:;
	ASTADD( PROC$1 );
	struct $7ASTNODE* vr$31 = ASTNEWLABEL( LABEL$1, -1ll );
	ASTADD( vr$31 );
	if( *(int64*)((uint8*)&ENV$ + 232ll) != 1ll ) goto label$29;
	{
		struct $8FBSYMBOL* vr$32 = RTLPROCLOOKUP( (uint8*)"fb_CpuDetect", 139ll );
		struct $7ASTNODE* vr$33 = ASTNEWCALL( vr$32, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$33;
		struct $7ASTNODE* vr$34 = ASTNEWCONSTI( 100663296ll, 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$35 = ASTNEWBOP( 34ll, PROC$1, vr$34, (struct $8FBSYMBOL*)0ull, 1ll );
		CPU$1 = vr$35;
		struct $8FBSYMBOL* vr$36 = SYMBADDLABEL( (uint8*)0ull, 4ll );
		LABEL$1 = vr$36;
		struct $7ASTNODE* vr$37 = ASTNEWCONSTI( 100663296ll, 9ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$38 = ASTNEWBOP( 45ll, CPU$1, vr$37, LABEL$1, 0ll );
		ASTADD( vr$38 );
		struct $8FBSYMBOL* vr$39 = SYMBALLOCSTRCONST( (uint8*)"This program requires SSE and SSE2 instructions to run.", -1ll );
		S$1 = vr$39;
		struct $7ASTNODE* vr$40 = ASTNEWVAR( S$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$41 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		RTLPRINT( vr$41, 0ll, 0ll, vr$40, 0ll );
		struct $8FBSYMBOL* vr$42 = RTLPROCLOOKUP( (uint8*)"fb_End", 143ll );
		struct $7ASTNODE* vr$43 = ASTNEWCALL( vr$42, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$43;
		struct $7ASTNODE* vr$44 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$45 = ASTNEWARG( PROC$1, vr$44, 2147483648ll, -1ll );
		if( vr$45 != (struct $7ASTNODE*)0ull ) goto label$31;
		{
			fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
			goto label$15;
		}
		label$31:;
		label$30:;
		ASTADD( PROC$1 );
		struct $7ASTNODE* vr$47 = ASTNEWLABEL( LABEL$1, -1ll );
		ASTADD( vr$47 );
	}
	label$29:;
	label$28:;
	fb$result$1 = -1ll;
	fb_StrDelete( (FBSTRING*)&FAMILYSTR$1 );
	label$15:;
	return fb$result$1;
}

static int64 HMULTITHREAD_CB( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	if( *(int64*)((uint8*)&ENV$ + 464ll) != 0ll ) goto label$57;
	{
		if( (*(int64*)((uint8*)&ENV$ + 1584ll) & 4ll) != 0ll ) goto label$59;
		{
			FBRESTARTBEGINREQUEST( 4ll );
		}
		label$59:;
		label$58:;
	}
	label$57:;
	label$56:;
	*(int64*)((uint8*)&ENV$ + 464ll) = -1ll;
	fb$result$1 = -1ll;
	goto label$55;
	label$55:;
	return fb$result$1;
}

static int64 HTHREADCALL_CB( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$60:;
	static int64 RESTART_COUNT$1;
	static int64 LIBSADDED$1 = 0ll;
	int64 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$63;
	{
		int64 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0ll;
	}
	label$63:;
	label$62:;
	if( LIBSADDED$1 != 0ll ) goto label$65;
	{
		LIBSADDED$1 = -1ll;
		FBADDLIB( (uint8*)"ffi" );
	}
	label$65:;
	label$64:;
	int64 vr$3 = HMULTITHREAD_CB( SYM$1 );
	fb$result$1 = vr$3;
	goto label$61;
	label$61:;
	return fb$result$1;
}
