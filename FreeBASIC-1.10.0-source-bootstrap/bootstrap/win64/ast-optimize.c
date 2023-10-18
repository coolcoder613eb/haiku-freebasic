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
typedef int64 $13AST_NODECLASS;
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
typedef int64 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
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
union $7FBVALUE {
	struct $8FBSYMBOL* S;
	int64 I;
	double F;
};
__FB_STATIC_ASSERT( sizeof( union $7FBVALUE ) == 8 );
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
typedef int64 $11FB_FUNCMODE;
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
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astzoptimize( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTISTREEEQUAL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWUOP( int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int64 );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
int64 ASTINCOFFSET( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTOPTASSIGNMENT( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
int64 ASTHASSIDEFX( struct $7ASTNODE* );
int64 ASTISSYMBOLONTREE( struct $8FBSYMBOL*, struct $7ASTNODE* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
int64 ASTGETOFFSETCHILDOFS( struct $7ASTNODE* );
int64 TYPETOUNSIGNED( int64 );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRCONCATASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRCONCATASSIGN( struct $7ASTNODE*, struct $7ASTNODE* );
static void HOPTCONSTREMNEG( struct $7ASTNODE* );
static struct $7ASTNODE* HCONSTACCUMADDSUB( struct $7ASTNODE*, struct $7ASTNODE**, int64 );
static struct $7ASTNODE* HCONSTACCUMMUL( struct $7ASTNODE*, struct $7ASTNODE** );
static struct $7ASTNODE* HOPTCONSTACCUM1( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTCONSTACCUM2( struct $7ASTNODE* );
static struct $7ASTNODE* HCONSTDISTMUL( struct $7ASTNODE*, struct $7ASTNODE** );
static struct $7ASTNODE* HOPTCONSTDISTMUL( struct $7ASTNODE* );
static void HOPTCONSTIDXMULT( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTDEREFADDR( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTCONSTIDX( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTASSOCADD( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTASSOCMUL( struct $7ASTNODE* );
static void HDIVTOSHIFT_SIGNED( struct $7ASTNODE*, int64 );
static int64 HTOPOW2( uint64 );
static void HOPTTOSHIFT( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTCONSTCONV( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTNULLOP( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTLOGIC( struct $7ASTNODE* );
static struct $7ASTNODE* HDOOPTREMCONV( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTSTRMULTCONCAT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static int64 HISMULTSTRCONCAT( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HOPTSTRASSIGNMENT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* HOPTSELFASSIGN( struct $7ASTNODE* );
struct $7ASTNODE* HOPTSELFCOMPARE( struct $7ASTNODE* );
static struct $7ASTNODE* HOPTRECIPROCAL( struct $7ASTNODE* );
typedef void (*tmp$38)( void );
typedef int64 (*tmp$39)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$40)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$41)( int64, int64 );
typedef void (*tmp$42)( struct $8FBSYMBOL* );
typedef void (*tmp$43)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$44)( void );
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 24 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 72 );
struct $5IRTAC {
	int64 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int64 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 256 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int64 REG;
	$12IR_REGFAMILY REGFAMILY;
	int64 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int64 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 120 );
typedef void (*tmp$45)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$46)( int64 );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$48)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$49)( struct $9ASTASMTOK* );
typedef void (*tmp$50)( uint8* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$52)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$53)( struct $6IRVREG* );
typedef void (*tmp$54)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$55)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$56)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$57)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$59)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$60)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$61)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$62)( struct $8FBSYMBOL*, double );
typedef void (*tmp$63)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$64)( int64, uint8*, int64 );
typedef void (*tmp$65)( int64, uint16*, int64 );
typedef void (*tmp$66)( int64 );
typedef void (*tmp$67)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$68)( uint8* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$74)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$75)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$76)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$38 INIT;
	tmp$38 END;
	tmp$39 EMITBEGIN;
	tmp$38 EMITEND;
	tmp$40 GETOPTIONVALUE;
	tmp$41 SUPPORTSOP;
	tmp$42 PROCBEGIN;
	tmp$42 PROCEND;
	tmp$43 PROCALLOCARG;
	tmp$43 PROCALLOCLOCAL;
	tmp$44 PROCGETFRAMEREGNAME;
	tmp$42 SCOPEBEGIN;
	tmp$42 SCOPEEND;
	tmp$42 PROCALLOCSTATICVARS;
	tmp$45 EMITCONVERT;
	tmp$42 EMITLABEL;
	tmp$42 EMITLABELNF;
	tmp$46 EMITRETURN;
	tmp$43 EMITPROCBEGIN;
	tmp$47 EMITPROCEND;
	tmp$48 EMITPUSHARG;
	tmp$49 EMITASMLINE;
	tmp$50 EMITCOMMENT;
	tmp$51 EMITBOP;
	tmp$52 EMITUOP;
	tmp$45 EMITSTORE;
	tmp$38 EMITSPILLREGS;
	tmp$53 EMITLOAD;
	tmp$45 EMITLOADRES;
	tmp$52 EMITSTACK;
	tmp$52 EMITADDR;
	tmp$54 EMITCALL;
	tmp$55 EMITCALLPTR;
	tmp$46 EMITSTACKALIGN;
	tmp$53 EMITJUMPPTR;
	tmp$56 EMITBRANCH;
	tmp$57 EMITJMPTB;
	tmp$58 EMITMEM;
	tmp$59 EMITMACRO;
	tmp$42 EMITSCOPEBEGIN;
	tmp$42 EMITSCOPEEND;
	tmp$42 EMITDECL;
	tmp$60 EMITDBG;
	tmp$42 EMITVARINIBEGIN;
	tmp$42 EMITVARINIEND;
	tmp$61 EMITVARINII;
	tmp$62 EMITVARINIF;
	tmp$63 EMITVARINIOFS;
	tmp$64 EMITVARINISTR;
	tmp$65 EMITVARINIWSTR;
	tmp$66 EMITVARINIPAD;
	tmp$67 EMITVARINISCOPEBEGIN;
	tmp$38 EMITVARINISCOPEEND;
	tmp$38 EMITFBCTINFBEGIN;
	tmp$68 EMITFBCTINFSTRING;
	tmp$38 EMITFBCTINFEND;
	tmp$69 ALLOCVREG;
	tmp$70 ALLOCVRIMM;
	tmp$71 ALLOCVRIMMF;
	tmp$72 ALLOCVRVAR;
	tmp$73 ALLOCVRIDX;
	tmp$74 ALLOCVRPTR;
	tmp$72 ALLOCVROFS;
	tmp$75 SETVREGDATATYPE;
	tmp$76 GETDISTANCE;
	tmp$52 LOADVR;
	tmp$45 STOREVR;
	tmp$46 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
typedef int64 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 552 );
extern struct $5IRCTX IR$;
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
extern struct $10AST_OPINFO AST_OPTB$[121];
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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
typedef int64 $13FB_COMPTARGET;
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
typedef int64 $16FB_RESTART_FLAGS;
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

int64 ASTINCOFFSET( struct $7ASTNODE* N$1, int64 OFS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$152:;
	{
		uint64 TMP$94$2;
		TMP$94$2 = *(uint64*)N$1;
		goto label$155;
		label$156:;
		{
			*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + OFS$1;
			fb$result$1 = -1ll;
		}
		goto label$154;
		label$157:;
		{
			*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + OFS$1;
			fb$result$1 = -1ll;
		}
		goto label$154;
		label$158:;
		{
			*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + OFS$1;
			fb$result$1 = -1ll;
		}
		goto label$154;
		label$159:;
		{
			{
				int64 TMP$95$4;
				TMP$95$4 = *(int64*)((uint8*)N$1 + 40ll);
				if( TMP$95$4 != 1ll ) goto label$161;
				label$162:;
				{
					int64 vr$13 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), OFS$1 );
					fb$result$1 = vr$13;
				}
				goto label$160;
				label$161:;
				if( TMP$95$4 != 2ll ) goto label$163;
				label$164:;
				{
					int64 vr$15 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), OFS$1 );
					fb$result$1 = vr$15;
				}
				label$163:;
				label$160:;
			}
		}
		goto label$154;
		label$165:;
		{
			int64 vr$17 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), OFS$1 );
			fb$result$1 = vr$17;
		}
		goto label$154;
		label$166:;
		{
			if( *(int64*)((uint8*)N$1 + 40ll) != 0ll ) goto label$168;
			{
				int64 vr$20 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), OFS$1 );
				fb$result$1 = vr$20;
			}
			goto label$167;
			label$168:;
			{
				fb$result$1 = 0ll;
			}
			label$167:;
		}
		goto label$154;
		label$169:;
		{
			fb$result$1 = 0ll;
		}
		goto label$154;
		label$155:;
		static const void* tmp$96[22ll] = {
			&&label$166,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$159,
			&&label$169,
			&&label$156,
			&&label$157,
			&&label$165,
			&&label$158,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$169,
			&&label$165,
		};
		if( (TMP$94$2 - 5ull) > 21ull ) goto label$169;
		goto *tmp$96[TMP$94$2 - 5ull];
		label$154:;
	}
	label$153:;
	return fb$result$1;
}

struct $7ASTNODE* ASTOPTASSIGNMENT( struct $7ASTNODE* N$1 )
{
	int64 TMP$140$1;
	int64 TMP$142$1;
	int64 TMP$145$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$563:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	int64 DCLASS$1;
	fb$result$1 = N$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$566;
	{
		goto label$564;
	}
	label$566:;
	label$565:;
	{
		$13AST_NODECLASS TMP$137$2;
		TMP$137$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$137$2 != 2ll ) goto label$568;
		label$569:;
		{
		}
		goto label$567;
		label$568:;
		if( TMP$137$2 == 15ll ) goto label$571;
		label$572:;
		if( TMP$137$2 != 13ll ) goto label$570;
		label$571:;
		{
			struct $7ASTNODE* vr$3 = ASTOPTASSIGNMENT( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$3;
			struct $7ASTNODE* vr$6 = ASTOPTASSIGNMENT( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$6;
			goto label$564;
		}
		goto label$567;
		label$570:;
		{
			goto label$564;
		}
		label$573:;
		label$567:;
	}
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll);
	{
		int64 TMP$138$2;
		int64 TMP$139$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$574;
		TMP$138$2 = 24ll;
		goto label$619;
		label$574:;
		TMP$138$2 = DTYPE$1 & 31ll;
		label$619:;
		TMP$139$2 = TMP$138$2;
		if( TMP$139$2 == 17ll ) goto label$577;
		label$578:;
		if( TMP$139$2 == 18ll ) goto label$577;
		label$579:;
		if( TMP$139$2 != 7ll ) goto label$576;
		label$577:;
		{
			struct $7ASTNODE* vr$13 = HOPTSTRASSIGNMENT( N$1, L$1, R$1 );
			fb$result$1 = vr$13;
			goto label$564;
		}
		label$576:;
		label$575:;
	}
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$580;
	TMP$140$1 = 24ll;
	goto label$620;
	label$580:;
	TMP$140$1 = DTYPE$1 & 31ll;
	label$620:;
	DCLASS$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$140$1 * 56ll));
	if( DCLASS$1 != 0ll ) goto label$582;
	{
		if( (*(int64*)((uint8*)&IR$ + 544ll) & 512ll) != 0ll ) goto label$584;
		{
			goto label$564;
		}
		label$584:;
		label$583:;
	}
	goto label$581;
	label$582:;
	{
		if( (*(int64*)((uint8*)&IR$ + 544ll) & 8ll) != 0ll ) goto label$586;
		{
			if( *(int64*)R$1 != 16ll ) goto label$588;
			{
				if( DCLASS$1 != 1ll ) goto label$590;
				{
					int64 TMP$141$5;
					if( ((*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$591;
					TMP$141$5 = 24ll;
					goto label$621;
					label$591:;
					TMP$141$5 = (*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 31ll;
					label$621:;
					if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$5 * 56ll)) == 1ll ) goto label$593;
					{
						struct $7ASTNODE* vr$27 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0ull, R$1, 0ll, (int64*)0ull );
						*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$27;
					}
					label$593:;
					label$592:;
				}
				label$590:;
				label$589:;
			}
			label$588:;
			label$587:;
			goto label$564;
		}
		label$586:;
		label$585:;
	}
	label$581:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$594;
	TMP$142$1 = 24ll;
	goto label$622;
	label$594:;
	TMP$142$1 = DTYPE$1 & 31ll;
	label$622:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$142$1 * 56ll)) + 8ll) != 1ll ) goto label$596;
	{
		goto label$564;
	}
	label$596:;
	label$595:;
	struct $7ASTNODE* LNOCAST$1;
	struct $7ASTNODE* vr$32 = ASTSKIPNOCONVCAST( L$1 );
	LNOCAST$1 = vr$32;
	struct $7ASTNODE* RNOCAST$1;
	struct $7ASTNODE* vr$33 = ASTSKIPNOCONVCAST( R$1 );
	RNOCAST$1 = vr$33;
	{
		uint64 TMP$143$2;
		TMP$143$2 = *(uint64*)LNOCAST$1;
		goto label$598;
		label$599:;
		{
		}
		goto label$597;
		label$600:;
		{
			if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LNOCAST$1 + 24ll) + 192ll) <= 0ll ) goto label$602;
			{
				goto label$564;
			}
			label$602:;
			label$601:;
		}
		goto label$597;
		label$603:;
		{
			goto label$564;
		}
		goto label$597;
		label$598:;
		static const void* tmp$146[10ll] = {
			&&label$599,
			&&label$599,
			&&label$600,
			&&label$599,
			&&label$603,
			&&label$603,
			&&label$603,
			&&label$603,
			&&label$603,
			&&label$599,
		};
		if( (TMP$143$2 - 17ull) > 9ull ) goto label$603;
		goto *tmp$146[TMP$143$2 - 17ull];
		label$597:;
	}
	{
		$13AST_NODECLASS TMP$144$2;
		TMP$144$2 = *($13AST_NODECLASS*)RNOCAST$1;
		if( TMP$144$2 != 4ll ) goto label$605;
		label$606:;
		{
		}
		goto label$604;
		label$605:;
		if( TMP$144$2 != 3ll ) goto label$607;
		label$608:;
		{
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (*(int64*)((uint8*)RNOCAST$1 + 40ll) << (5ll & 63ll))) + 8ll) & 8ll) == 0ll ) goto label$610;
			{
				goto label$564;
			}
			label$610:;
			label$609:;
		}
		goto label$604;
		label$607:;
		{
			goto label$564;
		}
		label$611:;
		label$604:;
	}
	if( ((*(int64*)((uint8*)RNOCAST$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$612;
	TMP$145$1 = 24ll;
	goto label$623;
	label$612:;
	TMP$145$1 = (*(int64*)((uint8*)RNOCAST$1 + 8ll) & 511ll) & 31ll;
	label$623:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$145$1 * 56ll)) == 0ll ) goto label$614;
	{
		goto label$564;
	}
	label$614:;
	label$613:;
	struct $7ASTNODE* vr$49 = ASTSKIPNOCONVCAST( *(struct $7ASTNODE**)((uint8*)RNOCAST$1 + 112ll) );
	int64 vr$50 = ASTISTREEEQUAL( LNOCAST$1, vr$49 );
	if( vr$50 != 0ll ) goto label$616;
	{
		goto label$564;
	}
	label$616:;
	label$615:;
	*($9AST_OPOPT*)((uint8*)RNOCAST$1 + 48ll) = *(int64*)((uint8*)RNOCAST$1 + 48ll) & -2ll;
	ASTDELNODE( N$1 );
	ASTDELTREE( L$1 );
	if( R$1 == RNOCAST$1 ) goto label$618;
	{
		ASTDELNODE( R$1 );
		R$1 = RNOCAST$1;
	}
	label$618:;
	label$617:;
	fb$result$1 = R$1;
	label$564:;
	return fb$result$1;
}

struct $7ASTNODE* HOPTSELFASSIGN( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$624:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	int64 DCLASS$1;
	fb$result$1 = N$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$627;
	{
		goto label$625;
	}
	label$627:;
	label$626:;
	if( *(int64*)N$1 == 2ll ) goto label$629;
	{
		goto label$625;
	}
	label$629:;
	label$628:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	int64 vr$4 = ASTISTREEEQUAL( L$1, R$1 );
	if( vr$4 != 0ll ) goto label$631;
	{
		goto label$625;
	}
	label$631:;
	label$630:;
	ASTDELNODE( N$1 );
	ASTDELTREE( L$1 );
	ASTDELTREE( R$1 );
	struct $7ASTNODE* vr$5 = ASTNEWNOP(  );
	fb$result$1 = vr$5;
	label$625:;
	return fb$result$1;
}

struct $7ASTNODE* HOPTSELFCOMPARE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$632:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	int64 DCLASS$1;
	fb$result$1 = N$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$635;
	{
		goto label$633;
	}
	label$635:;
	label$634:;
	if( *(int64*)N$1 == 3ll ) goto label$637;
	{
		goto label$633;
	}
	label$637:;
	label$636:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	int64 vr$4 = ASTISTREEEQUAL( L$1, R$1 );
	if( vr$4 != 0ll ) goto label$639;
	{
		goto label$633;
	}
	label$639:;
	label$638:;
	int64 C$1;
	__builtin_memset( &C$1, 0, 8ll );
	{
		uint64 TMP$147$2;
		TMP$147$2 = *(uint64*)((uint8*)N$1 + 40ll);
		goto label$641;
		label$642:;
		{
			C$1 = -1ll;
		}
		goto label$640;
		label$643:;
		{
			C$1 = 0ll;
		}
		goto label$640;
		label$644:;
		{
			goto label$633;
		}
		goto label$640;
		label$641:;
		static const void* tmp$148[6ll] = {
			&&label$642,
			&&label$643,
			&&label$643,
			&&label$643,
			&&label$642,
			&&label$642,
		};
		if( (TMP$147$2 - 45ull) > 5ull ) goto label$644;
		goto *tmp$148[TMP$147$2 - 45ull];
		label$640:;
	}
	ASTDELNODE( N$1 );
	ASTDELTREE( L$1 );
	ASTDELTREE( R$1 );
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( C$1, 8ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = vr$7;
	label$633:;
	return fb$result$1;
}

struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$669:;
	*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + 1ll;
	struct $7ASTNODE* vr$2 = HOPTASSOCADD( N$1 );
	N$1 = vr$2;
	struct $7ASTNODE* vr$3 = HOPTASSOCMUL( N$1 );
	N$1 = vr$3;
	struct $7ASTNODE* vr$4 = HOPTCONSTDISTMUL( N$1 );
	N$1 = vr$4;
	struct $7ASTNODE* vr$5 = HOPTCONSTACCUM1( N$1 );
	N$1 = vr$5;
	struct $7ASTNODE* vr$6 = HOPTCONSTACCUM2( N$1 );
	N$1 = vr$6;
	HOPTCONSTREMNEG( N$1 );
	struct $7ASTNODE* vr$7 = HOPTCONSTIDX( N$1 );
	N$1 = vr$7;
	HOPTTOSHIFT( N$1 );
	struct $7ASTNODE* vr$8 = HOPTLOGIC( N$1 );
	N$1 = vr$8;
	struct $7ASTNODE* vr$9 = HOPTNULLOP( N$1 );
	N$1 = vr$9;
	struct $7ASTNODE* vr$10 = HOPTSELFASSIGN( N$1 );
	N$1 = vr$10;
	struct $7ASTNODE* vr$11 = HOPTSELFCOMPARE( N$1 );
	N$1 = vr$11;
	if( ((int64)-((*(int64*)((uint8*)&IR$ + 544ll) & 1ll) == 0ll) & (int64)-(*(int64*)((uint8*)&ENV$ + 208ll) == 0ll)) == 0ll ) goto label$672;
	{
		struct $7ASTNODE* vr$16 = HDOOPTREMCONV( N$1 );
		N$1 = vr$16;
	}
	label$672:;
	label$671:;
	if( (*(int64*)((uint8*)&IR$ + 544ll) & 131072ll) != 0ll ) goto label$674;
	{
		if( *(int64*)((uint8*)&ENV$ + 240ll) != 1ll ) goto label$676;
		{
			struct $7ASTNODE* vr$18 = HOPTRECIPROCAL( N$1 );
			N$1 = vr$18;
		}
		label$676:;
		label$675:;
	}
	label$674:;
	label$673:;
	*(int64*)((uint8*)&AST$ + 464ll) = *(int64*)((uint8*)&AST$ + 464ll) + -1ll;
	fb$result$1 = N$1;
	label$670:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HOPTCONSTREMNEG( struct $7ASTNODE* N$1 )
{
	int64 TMP$84$1;
	label$10:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* LL$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$13;
	{
		HOPTCONSTREMNEG( L$1 );
	}
	label$13:;
	label$12:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$15;
	{
		HOPTCONSTREMNEG( R$1 );
	}
	label$15:;
	label$14:;
	if( *(int64*)N$1 != 3ll ) goto label$16;
	TMP$84$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 28ll);
	goto label$677;
	label$16:;
	TMP$84$1 = 0ll;
	label$677:;
	if( TMP$84$1 == 0ll ) goto label$18;
	{
		int64 TMP$85$2;
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		if( *(int64*)L$1 != 4ll ) goto label$19;
		TMP$85$2 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 54ll);
		goto label$678;
		label$19:;
		TMP$85$2 = 0ll;
		label$678:;
		if( (TMP$85$2 & (int64)-(*(int64*)R$1 == 16ll)) == 0ll ) goto label$21;
		{
			LL$1 = *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 112ll);
			if( *(int64*)LL$1 != 17ll ) goto label$23;
			{
				*(int64*)((uint8*)N$1 + 40ll) = 29ll;
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = R$1;
				*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = LL$1;
				ASTDELNODE( L$1 );
			}
			label$23:;
			label$22:;
		}
		label$21:;
		label$20:;
	}
	label$18:;
	label$17:;
	label$11:;
}

static struct $7ASTNODE* HCONSTACCUMADDSUB( struct $7ASTNODE* N$1, struct $7ASTNODE** ACCUMVAL$1, int64 SIGN$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	int64 O$1;
	int64 RSIGN$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$27;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$25;
	}
	label$27:;
	label$26:;
	if( *(int64*)N$1 == 3ll ) goto label$29;
	{
		fb$result$1 = N$1;
		goto label$25;
	}
	label$29:;
	label$28:;
	O$1 = *(int64*)((uint8*)N$1 + 40ll);
	{
		if( O$1 == 28ll ) goto label$32;
		label$33:;
		if( O$1 != 29ll ) goto label$31;
		label$32:;
		{
			L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
			R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
			if( O$1 != 29ll ) goto label$35;
			{
				RSIGN$1 = -SIGN$1;
			}
			goto label$34;
			label$35:;
			{
				RSIGN$1 = SIGN$1;
			}
			label$34:;
			if( *(int64*)R$1 != 16ll ) goto label$37;
			{
				if( *ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$39;
				{
					if( RSIGN$1 >= 0ll ) goto label$41;
					{
						if( O$1 != 28ll ) goto label$43;
						{
							O$1 = 29ll;
						}
						goto label$42;
						label$43:;
						{
							O$1 = 28ll;
						}
						label$42:;
					}
					label$41:;
					label$40:;
					struct $7ASTNODE* vr$9 = ASTNEWBOP( O$1, *ACCUMVAL$1, R$1, (struct $8FBSYMBOL*)0ull, 1ll );
					*ACCUMVAL$1 = vr$9;
				}
				goto label$38;
				label$39:;
				{
					*ACCUMVAL$1 = R$1;
					if( RSIGN$1 >= 0ll ) goto label$45;
					{
						struct $7ASTNODE* vr$13 = ASTNEWUOP( 54ll, *ACCUMVAL$1 );
						*ACCUMVAL$1 = vr$13;
					}
					label$45:;
					label$44:;
				}
				label$38:;
				ASTDELNODE( N$1 );
				struct $7ASTNODE* vr$15 = HCONSTACCUMADDSUB( L$1, ACCUMVAL$1, SIGN$1 );
				N$1 = vr$15;
			}
			goto label$36;
			label$37:;
			{
				struct $7ASTNODE* vr$16 = HCONSTACCUMADDSUB( L$1, ACCUMVAL$1, SIGN$1 );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$16;
				struct $7ASTNODE* vr$18 = HCONSTACCUMADDSUB( R$1, ACCUMVAL$1, RSIGN$1 );
				*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$18;
			}
			label$36:;
		}
		label$31:;
		label$30:;
	}
	fb$result$1 = N$1;
	label$25:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONSTACCUMMUL( struct $7ASTNODE* N$1, struct $7ASTNODE** ACCUMVAL$1 )
{
	int64 TMP$86$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$46:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$49;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$47;
	}
	label$49:;
	label$48:;
	if( *(int64*)N$1 != 3ll ) goto label$50;
	TMP$86$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 30ll);
	goto label$679;
	label$50:;
	TMP$86$1 = 0ll;
	label$679:;
	if( TMP$86$1 == 0ll ) goto label$52;
	{
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		if( *(int64*)R$1 != 16ll ) goto label$54;
		{
			if( *ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$56;
			{
				struct $7ASTNODE* vr$9 = ASTNEWBOP( 30ll, *ACCUMVAL$1, R$1, (struct $8FBSYMBOL*)0ull, 1ll );
				*ACCUMVAL$1 = vr$9;
			}
			goto label$55;
			label$56:;
			{
				*ACCUMVAL$1 = R$1;
			}
			label$55:;
			ASTDELNODE( N$1 );
			struct $7ASTNODE* vr$12 = HCONSTACCUMMUL( L$1, ACCUMVAL$1 );
			N$1 = vr$12;
		}
		goto label$53;
		label$54:;
		{
			struct $7ASTNODE* vr$13 = HCONSTACCUMMUL( L$1, ACCUMVAL$1 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$13;
			struct $7ASTNODE* vr$15 = HCONSTACCUMMUL( R$1, ACCUMVAL$1 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$15;
		}
		label$53:;
	}
	label$52:;
	label$51:;
	fb$result$1 = N$1;
	label$47:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTCONSTACCUM1( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$57:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* ACCUMVAL$1;
	int64 O$1;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$60;
	{
		struct $7ASTNODE* vr$3 = HOPTCONSTACCUM1( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$3;
	}
	label$60:;
	label$59:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$62;
	{
		struct $7ASTNODE* vr$7 = HOPTCONSTACCUM1( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$7;
	}
	label$62:;
	label$61:;
	if( *(int64*)N$1 != 3ll ) goto label$64;
	{
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		if( *(int64*)R$1 != 16ll ) goto label$66;
		{
			ACCUMVAL$1 = (struct $7ASTNODE*)0ull;
			O$1 = *(int64*)((uint8*)N$1 + 40ll);
			{
				if( O$1 == 28ll ) goto label$69;
				label$70:;
				if( O$1 != 29ll ) goto label$68;
				label$69:;
				{
					struct $7ASTNODE* vr$14 = HCONSTACCUMADDSUB( N$1, &ACCUMVAL$1, 1ll );
					N$1 = vr$14;
					if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$72;
					{
						struct $7ASTNODE* vr$15 = ASTNEWBOP( O$1, N$1, ACCUMVAL$1, (struct $8FBSYMBOL*)0ull, 1ll );
						N$1 = vr$15;
					}
					label$72:;
					label$71:;
				}
				goto label$67;
				label$68:;
				if( O$1 != 30ll ) goto label$73;
				label$74:;
				{
					struct $7ASTNODE* vr$17 = HCONSTACCUMMUL( N$1, &ACCUMVAL$1 );
					N$1 = vr$17;
					if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$76;
					{
						struct $7ASTNODE* vr$18 = ASTNEWBOP( 30ll, N$1, ACCUMVAL$1, (struct $8FBSYMBOL*)0ull, 1ll );
						N$1 = vr$18;
					}
					label$76:;
					label$75:;
				}
				label$73:;
				label$67:;
			}
		}
		label$66:;
		label$65:;
	}
	label$64:;
	label$63:;
	fb$result$1 = N$1;
	label$58:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTCONSTACCUM2( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$77:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* ACCUMVAL$1;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$80;
	{
		struct $7ASTNODE* vr$3 = HOPTCONSTACCUM2( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$3;
	}
	label$80:;
	label$79:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$82;
	{
		struct $7ASTNODE* vr$7 = HOPTCONSTACCUM2( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$7;
	}
	label$82:;
	label$81:;
	if( *(int64*)N$1 != 3ll ) goto label$84;
	{
		ACCUMVAL$1 = (struct $7ASTNODE*)0ull;
		{
			int64 TMP$87$3;
			TMP$87$3 = *(int64*)((uint8*)N$1 + 40ll);
			if( TMP$87$3 != 28ll ) goto label$86;
			label$87:;
			{
				{
					uint64 TMP$88$5;
					TMP$88$5 = (uint64)(*(int64*)((uint8*)N$1 + 8ll) & 511ll);
					goto label$89;
					label$90:;
					{
					}
					goto label$88;
					label$91:;
					{
						struct $7ASTNODE* vr$14 = HCONSTACCUMADDSUB( N$1, &ACCUMVAL$1, 1ll );
						N$1 = vr$14;
						if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$93;
						{
							struct $7ASTNODE* vr$15 = ASTNEWBOP( 28ll, N$1, ACCUMVAL$1, (struct $8FBSYMBOL*)0ull, 1ll );
							N$1 = vr$15;
						}
						label$93:;
						label$92:;
					}
					goto label$88;
					label$89:;
					static const void* tmp$154[12ll] = {
						&&label$90,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$91,
						&&label$90,
						&&label$90,
					};
					if( (TMP$88$5 - 7ull) > 11ull ) goto label$91;
					goto *tmp$154[TMP$88$5 - 7ull];
					label$88:;
				}
			}
			goto label$85;
			label$86:;
			if( TMP$87$3 != 30ll ) goto label$94;
			label$95:;
			{
				struct $7ASTNODE* vr$17 = HCONSTACCUMMUL( N$1, &ACCUMVAL$1 );
				N$1 = vr$17;
				if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$97;
				{
					struct $7ASTNODE* vr$18 = ASTNEWBOP( 30ll, N$1, ACCUMVAL$1, (struct $8FBSYMBOL*)0ull, 1ll );
					N$1 = vr$18;
				}
				label$97:;
				label$96:;
			}
			label$94:;
			label$85:;
		}
	}
	label$84:;
	label$83:;
	fb$result$1 = N$1;
	label$78:;
	return fb$result$1;
}

static struct $7ASTNODE* HCONSTDISTMUL( struct $7ASTNODE* N$1, struct $7ASTNODE** ACCUMVAL$1 )
{
	int64 TMP$89$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$98:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DTYPE$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$101;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$99;
	}
	label$101:;
	label$100:;
	if( *(int64*)N$1 != 3ll ) goto label$102;
	TMP$89$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 28ll);
	goto label$680;
	label$102:;
	TMP$89$1 = 0ll;
	label$680:;
	if( TMP$89$1 == 0ll ) goto label$104;
	{
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		if( *(int64*)R$1 != 16ll ) goto label$106;
		{
			if( *ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$108;
			{
				struct $7ASTNODE* vr$9 = ASTNEWBOP( 28ll, *ACCUMVAL$1, R$1, (struct $8FBSYMBOL*)0ull, 1ll );
				*ACCUMVAL$1 = vr$9;
			}
			goto label$107;
			label$108:;
			{
				*ACCUMVAL$1 = R$1;
			}
			label$107:;
			ASTDELNODE( N$1 );
			struct $7ASTNODE* vr$12 = HCONSTDISTMUL( L$1, ACCUMVAL$1 );
			N$1 = vr$12;
		}
		goto label$105;
		label$106:;
		{
			struct $7ASTNODE* vr$13 = HCONSTDISTMUL( L$1, ACCUMVAL$1 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$13;
			struct $7ASTNODE* vr$15 = HCONSTDISTMUL( R$1, ACCUMVAL$1 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$15;
		}
		label$105:;
	}
	label$104:;
	label$103:;
	fb$result$1 = N$1;
	label$99:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTCONSTDISTMUL( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$109:;
	struct $7ASTNODE* ACCUMVAL$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$112;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$110;
	}
	label$112:;
	label$111:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$114;
	{
		struct $7ASTNODE* vr$3 = HOPTCONSTDISTMUL( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$3;
	}
	label$114:;
	label$113:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$116;
	{
		struct $7ASTNODE* vr$7 = HOPTCONSTDISTMUL( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$7;
	}
	label$116:;
	label$115:;
	if( *(int64*)N$1 != 3ll ) goto label$118;
	{
		if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) != 16ll ) goto label$120;
		{
			if( *(int64*)((uint8*)N$1 + 40ll) != 30ll ) goto label$122;
			{
				ACCUMVAL$1 = (struct $7ASTNODE*)0ull;
				struct $7ASTNODE* vr$15 = HCONSTDISTMUL( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), &ACCUMVAL$1 );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$15;
				if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$124;
				{
					struct $7ASTNODE* vr$18 = ASTCLONETREE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
					struct $7ASTNODE* vr$19 = ASTNEWBOP( 30ll, ACCUMVAL$1, vr$18, (struct $8FBSYMBOL*)0ull, 1ll );
					ACCUMVAL$1 = vr$19;
					struct $7ASTNODE* vr$20 = ASTNEWBOP( 28ll, N$1, ACCUMVAL$1, (struct $8FBSYMBOL*)0ull, 1ll );
					N$1 = vr$20;
				}
				label$124:;
				label$123:;
			}
			label$122:;
			label$121:;
		}
		label$120:;
		label$119:;
	}
	label$118:;
	label$117:;
	fb$result$1 = N$1;
	label$110:;
	return fb$result$1;
}

static void HOPTCONSTIDXMULT( struct $7ASTNODE* N$1 )
{
	int64 TMP$90$1;
	int64 TMP$92$1;
	int64 TMP$93$1;
	label$125:;
	int64 OPTIMIZE$1;
	int64 C$1;
	struct $7ASTNODE* L$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( *(int64*)L$1 != 3ll ) goto label$127;
	TMP$90$1 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 30ll);
	goto label$681;
	label$127:;
	TMP$90$1 = 0ll;
	label$681:;
	if( TMP$90$1 == 0ll ) goto label$129;
	{
		struct $7ASTNODE* LR$2;
		LR$2 = *(struct $7ASTNODE**)((uint8*)L$1 + 120ll);
		if( *(int64*)LR$2 != 16ll ) goto label$131;
		{
			if( (*(int64*)((uint8*)&IR$ + 544ll) & 65536ll) == 0ll ) goto label$133;
			{
				C$1 = *(int64*)((uint8*)LR$2 + 40ll);
				if( ((int64)-(C$1 >= 1ll) & (int64)-(C$1 <= 9ll)) == 0ll ) goto label$135;
				{
					{
						uint64 TMP$91$6;
						TMP$91$6 = (uint64)C$1;
						goto label$137;
						label$138:;
						{
							OPTIMIZE$1 = -1ll;
						}
						goto label$136;
						label$139:;
						{
							OPTIMIZE$1 = -1ll;
							struct $8FBSYMBOL* S$7;
							S$7 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) + 24ll);
							if( (*(int64*)((uint8*)S$7 + 8ll) & 114688ll) == 0ll ) goto label$141;
							{
								OPTIMIZE$1 = 0ll;
							}
							goto label$140;
							label$141:;
							if( (*(int64*)((uint8*)S$7 + 8ll) & 128ll) == 0ll ) goto label$142;
							{
								if( (*(int64*)((uint8*)S$7 + 8ll) & 2ll) != 0ll ) goto label$144;
								{
									OPTIMIZE$1 = 0ll;
								}
								label$144:;
								label$143:;
							}
							label$142:;
							label$140:;
						}
						goto label$136;
						label$145:;
						{
							OPTIMIZE$1 = 0ll;
						}
						goto label$136;
						label$137:;
						static const void* tmp$155[9ll] = {
							&&label$138,
							&&label$138,
							&&label$139,
							&&label$138,
							&&label$139,
							&&label$145,
							&&label$145,
							&&label$138,
							&&label$139,
						};
						if( (TMP$91$6 - 1ull) > 8ull ) goto label$145;
						goto *tmp$155[TMP$91$6 - 1ull];
						label$136:;
					}
					if( OPTIMIZE$1 == 0ll ) goto label$147;
					{
						*(int64*)((uint8*)N$1 + 48ll) = C$1;
						*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
						ASTDELNODE( LR$2 );
						ASTDELNODE( L$1 );
						L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
					}
					label$147:;
					label$146:;
				}
				label$135:;
				label$134:;
			}
			label$133:;
			label$132:;
		}
		label$131:;
		label$130:;
	}
	label$129:;
	label$128:;
	if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$148;
	TMP$92$1 = 24ll;
	goto label$682;
	label$148:;
	TMP$92$1 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
	label$682:;
	if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$149;
	TMP$93$1 = 24ll;
	goto label$683;
	label$149:;
	TMP$93$1 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
	label$683:;
	if( ((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$1 * 56ll)) != 0ll) | (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll))) == 0ll ) goto label$151;
	{
		struct $7ASTNODE* vr$40 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, L$1, 0ll, (int64*)0ull );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$40;
	}
	label$151:;
	label$150:;
	label$126:;
}

static struct $7ASTNODE* HOPTDEREFADDR( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$170:;
	struct $7ASTNODE* L$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	int64 OFS$1;
	OFS$1 = 0ll;
	{
		$13AST_NODECLASS TMP$97$2;
		TMP$97$2 = *($13AST_NODECLASS*)L$1;
		if( TMP$97$2 != 23ll ) goto label$173;
		label$174:;
		{
			int64 vr$5 = ASTGETOFFSETCHILDOFS( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll) );
			OFS$1 = *(int64*)((uint8*)L$1 + 40ll) - vr$5;
		}
		goto label$172;
		label$173:;
		if( TMP$97$2 != 6ll ) goto label$175;
		label$176:;
		{
		}
		goto label$172;
		label$175:;
		{
			fb$result$1 = N$1;
			goto label$171;
		}
		label$177:;
		label$172:;
	}
	OFS$1 = OFS$1 + *(int64*)((uint8*)N$1 + 40ll);
	int64 vr$10 = ASTINCOFFSET( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), OFS$1 );
	if( vr$10 != 0ll ) goto label$179;
	{
		fb$result$1 = N$1;
		goto label$171;
	}
	label$179:;
	label$178:;
	int64 DTYPE$1;
	DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll);
	struct $8FBSYMBOL* SUBTYPE$1;
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll);
	ASTDELNODE( N$1 );
	N$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
	ASTDELNODE( L$1 );
	ASTSETTYPE( N$1, DTYPE$1, SUBTYPE$1 );
	fb$result$1 = N$1;
	label$171:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTCONSTIDX( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$180:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* ACCUMVAL$1;
	int64 C$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$183;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$181;
	}
	label$183:;
	label$182:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$185;
	{
		struct $7ASTNODE* vr$2 = HOPTCONSTIDX( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$2;
	}
	label$185:;
	label$184:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$187;
	{
		struct $7ASTNODE* vr$5 = HOPTCONSTIDX( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$5;
	}
	label$187:;
	label$186:;
	{
		$13AST_NODECLASS TMP$98$2;
		TMP$98$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$98$2 == 18ll ) goto label$190;
		label$191:;
		if( TMP$98$2 != 20ll ) goto label$189;
		label$190:;
		{
			if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$193;
			{
				ACCUMVAL$1 = (struct $7ASTNODE*)0ull;
				struct $7ASTNODE* vr$11 = HCONSTACCUMADDSUB( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), &ACCUMVAL$1, 1ll );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$11;
				if( ACCUMVAL$1 == (struct $7ASTNODE*)0ull ) goto label$195;
				{
					int64 vr$13 = ASTCONSTFLUSHTOINT( ACCUMVAL$1, 8ll );
					C$1 = vr$13;
					if( *(int64*)N$1 != 18ll ) goto label$197;
					{
						*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + (C$1 * *(int64*)((uint8*)N$1 + 48ll));
					}
					goto label$196;
					label$197:;
					{
						*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + C$1;
					}
					label$196:;
				}
				label$195:;
				label$194:;
				if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 16ll ) goto label$199;
				{
					int64 vr$26 = ASTCONSTFLUSHTOINT( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 8ll );
					C$1 = vr$26;
					*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
					if( *(int64*)N$1 != 18ll ) goto label$201;
					{
						*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + (C$1 * *(int64*)((uint8*)N$1 + 48ll));
					}
					goto label$200;
					label$201:;
					{
						*(int64*)((uint8*)N$1 + 40ll) = *(int64*)((uint8*)N$1 + 40ll) + C$1;
					}
					label$200:;
				}
				goto label$198;
				label$199:;
				{
					if( *(int64*)N$1 != 18ll ) goto label$203;
					{
						HOPTCONSTIDXMULT( N$1 );
					}
					goto label$202;
					label$203:;
					{
						struct $7ASTNODE* vr$38 = HOPTDEREFADDR( N$1 );
						N$1 = vr$38;
					}
					label$202:;
				}
				label$198:;
			}
			label$193:;
			label$192:;
		}
		label$189:;
		label$188:;
	}
	fb$result$1 = N$1;
	label$181:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTASSOCADD( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$204:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* N_OLD$1;
	int64 OP$1;
	int64 ROP$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$207;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$205;
	}
	label$207:;
	label$206:;
	if( *(int64*)N$1 != 3ll ) goto label$209;
	{
		OP$1 = *(int64*)((uint8*)N$1 + 40ll);
		{
			if( OP$1 == 28ll ) goto label$212;
			label$213:;
			if( OP$1 != 29ll ) goto label$211;
			label$212:;
			{
				{
					int64 TMP$99$5;
					TMP$99$5 = *(int64*)((uint8*)N$1 + 8ll) & 511ll;
					if( TMP$99$5 == 17ll ) goto label$216;
					label$217:;
					if( TMP$99$5 == 18ll ) goto label$216;
					label$218:;
					if( TMP$99$5 != 7ll ) goto label$215;
					label$216:;
					{
					}
					goto label$214;
					label$215:;
					{
						R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
						if( *(int64*)R$1 != 3ll ) goto label$221;
						{
							ROP$1 = *(int64*)((uint8*)R$1 + 40ll);
							{
								if( ROP$1 == 28ll ) goto label$224;
								label$225:;
								if( ROP$1 != 29ll ) goto label$223;
								label$224:;
								{
									if( OP$1 != 29ll ) goto label$227;
									{
										if( ROP$1 != 29ll ) goto label$229;
										{
											OP$1 = 28ll;
										}
										goto label$228;
										label$229:;
										{
											ROP$1 = 29ll;
										}
										label$228:;
									}
									goto label$226;
									label$227:;
									{
										if( ROP$1 != 29ll ) goto label$231;
										{
											OP$1 = 29ll;
											ROP$1 = 28ll;
										}
										label$231:;
										label$230:;
									}
									label$226:;
									N_OLD$1 = N$1;
									struct $7ASTNODE* vr$11 = ASTNEWBOP( ROP$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(struct $7ASTNODE**)((uint8*)R$1 + 112ll), (struct $8FBSYMBOL*)0ull, 1ll );
									struct $7ASTNODE* vr$12 = ASTNEWBOP( OP$1, vr$11, *(struct $7ASTNODE**)((uint8*)R$1 + 120ll), (struct $8FBSYMBOL*)0ull, 1ll );
									N$1 = vr$12;
									ASTDELNODE( R$1 );
									ASTDELNODE( N_OLD$1 );
								}
								label$223:;
								label$222:;
							}
						}
						label$221:;
						label$220:;
					}
					label$219:;
					label$214:;
				}
			}
			label$211:;
			label$210:;
		}
	}
	label$209:;
	label$208:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$233;
	{
		struct $7ASTNODE* vr$14 = HOPTASSOCADD( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$14;
	}
	label$233:;
	label$232:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$235;
	{
		struct $7ASTNODE* vr$17 = HOPTASSOCADD( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$17;
	}
	label$235:;
	label$234:;
	fb$result$1 = N$1;
	label$205:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTASSOCMUL( struct $7ASTNODE* N$1 )
{
	int64 TMP$100$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$236:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* N_OLD$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$239;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$237;
	}
	label$239:;
	label$238:;
	if( *(int64*)N$1 != 3ll ) goto label$240;
	TMP$100$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 30ll);
	goto label$684;
	label$240:;
	TMP$100$1 = 0ll;
	label$684:;
	if( TMP$100$1 == 0ll ) goto label$242;
	{
		int64 TMP$101$2;
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		if( *(int64*)R$1 != 3ll ) goto label$243;
		TMP$101$2 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) == 30ll);
		goto label$685;
		label$243:;
		TMP$101$2 = 0ll;
		label$685:;
		if( TMP$101$2 == 0ll ) goto label$245;
		{
			N_OLD$1 = N$1;
			struct $7ASTNODE* vr$11 = ASTNEWBOP( 30ll, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(struct $7ASTNODE**)((uint8*)R$1 + 112ll), (struct $8FBSYMBOL*)0ull, 1ll );
			struct $7ASTNODE* vr$12 = ASTNEWBOP( 30ll, vr$11, *(struct $7ASTNODE**)((uint8*)R$1 + 120ll), (struct $8FBSYMBOL*)0ull, 1ll );
			N$1 = vr$12;
			ASTDELNODE( R$1 );
			ASTDELNODE( N_OLD$1 );
		}
		label$245:;
		label$244:;
	}
	label$242:;
	label$241:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$247;
	{
		struct $7ASTNODE* vr$14 = HOPTASSOCMUL( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$14;
	}
	label$247:;
	label$246:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$249;
	{
		struct $7ASTNODE* vr$17 = HOPTASSOCMUL( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$17;
	}
	label$249:;
	label$248:;
	fb$result$1 = N$1;
	label$237:;
	return fb$result$1;
}

static void HDIVTOSHIFT_SIGNED( struct $7ASTNODE* N$1, int64 CONST_VAL$1 )
{
	int64 TMP$102$1;
	label$250:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* L_CPY$1;
	int64 DTYPE$1;
	int64 BITS$1;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( *(int64*)L$1 == 17ll ) goto label$253;
	{
		goto label$251;
	}
	label$253:;
	label$252:;
	DTYPE$1 = *(int64*)((uint8*)L$1 + 8ll);
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$254;
	TMP$102$1 = 24ll;
	goto label$686;
	label$254:;
	TMP$102$1 = DTYPE$1 & 31ll;
	label$686:;
	BITS$1 = (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$1 * 56ll)) + 8ll) << (3ll & 63ll)) + -1ll;
	if( BITS$1 != 7ll ) goto label$256;
	{
		BITS$1 = (*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 456ll) << (3ll & 63ll)) + -1ll;
	}
	label$256:;
	label$255:;
	struct $7ASTNODE* vr$10 = ASTCLONETREE( L$1 );
	L_CPY$1 = vr$10;
	if( CONST_VAL$1 != 1ll ) goto label$258;
	{
		struct $7ASTNODE* vr$11 = ASTNEWCONSTI( BITS$1, 8ll, (struct $8FBSYMBOL*)0ull );
		int64 vr$12 = TYPETOUNSIGNED( DTYPE$1 );
		struct $7ASTNODE* vr$13 = ASTNEWCONV( vr$12, (struct $8FBSYMBOL*)0ull, L$1, 1ll, (int64*)0ull );
		struct $7ASTNODE* vr$14 = ASTNEWBOP( 42ll, vr$13, vr$11, (struct $8FBSYMBOL*)0ull, 1ll );
		struct $7ASTNODE* vr$15 = ASTNEWBOP( 28ll, L_CPY$1, vr$14, (struct $8FBSYMBOL*)0ull, 1ll );
		struct $7ASTNODE* vr$16 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0ull, vr$15, 1ll, (int64*)0ull );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$16;
	}
	goto label$257;
	label$258:;
	{
		struct $7ASTNODE* vr$20 = ASTNEWCONSTI( (1ll << (CONST_VAL$1 & 63ll)) + -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$21 = ASTNEWCONSTI( BITS$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$22 = ASTNEWBOP( 42ll, L$1, vr$21, (struct $8FBSYMBOL*)0ull, 1ll );
		struct $7ASTNODE* vr$23 = ASTNEWBOP( 34ll, vr$22, vr$20, (struct $8FBSYMBOL*)0ull, 1ll );
		struct $7ASTNODE* vr$24 = ASTNEWBOP( 28ll, L_CPY$1, vr$23, (struct $8FBSYMBOL*)0ull, 1ll );
		struct $7ASTNODE* vr$25 = ASTNEWCONV( DTYPE$1, (struct $8FBSYMBOL*)0ull, vr$24, 1ll, (int64*)0ull );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$25;
	}
	label$257:;
	*(int64*)((uint8*)N$1 + 40ll) = 42ll;
	*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) + 40ll) = CONST_VAL$1;
	label$251:;
}

static int64 HTOPOW2( uint64 V$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$259:;
	{
		int64 I$2;
		I$2 = 1ll;
		label$264:;
		{
			if( V$1 != (1ull << (I$2 & 63ll)) ) goto label$266;
			{
				fb$result$1 = I$2;
				goto label$260;
			}
			label$266:;
			label$265:;
		}
		label$262:;
		I$2 = I$2 + 1ll;
		label$261:;
		if( I$2 <= 63ll ) goto label$264;
		label$263:;
	}
	fb$result$1 = 0ll;
	label$260:;
	return fb$result$1;
}

static void HOPTTOSHIFT( struct $7ASTNODE* N$1 )
{
	label$267:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OP$1;
	int64 EXPONENT$1;
	int64 VALUE$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$270;
	{
		goto label$268;
	}
	label$270:;
	label$269:;
	if( *(int64*)N$1 != 3ll ) goto label$272;
	{
		OP$1 = *(int64*)((uint8*)N$1 + 40ll);
		{
			if( OP$1 == 30ll ) goto label$275;
			label$276:;
			if( OP$1 == 32ll ) goto label$275;
			label$277:;
			if( OP$1 != 33ll ) goto label$274;
			label$275:;
			{
				int64 TMP$103$4;
				int64 TMP$104$4;
				R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				if( (*(int64*)((uint8*)N$1 + 8ll) & 480ll) == 0ll ) goto label$278;
				TMP$103$4 = 24ll;
				goto label$687;
				label$278:;
				TMP$103$4 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
				label$687:;
				if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$4 * 56ll)) == 0ll ) goto label$280;
				{
					goto label$273;
				}
				label$280:;
				label$279:;
				if( *(int64*)R$1 == 16ll ) goto label$282;
				{
					goto label$273;
				}
				label$282:;
				label$281:;
				VALUE$1 = *(int64*)((uint8*)R$1 + 40ll);
				if( (*(int64*)((uint8*)R$1 + 8ll) & 480ll) == 0ll ) goto label$283;
				TMP$104$4 = 24ll;
				goto label$688;
				label$283:;
				TMP$104$4 = *(int64*)((uint8*)R$1 + 8ll) & 31ll;
				label$688:;
				if( ((int64)-(VALUE$1 == 0ll) | ((int64)-(VALUE$1 < 0ll) & *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$4 * 56ll)) + 16ll))) == 0ll ) goto label$285;
				{
					goto label$273;
				}
				label$285:;
				label$284:;
				int64 vr$19 = HTOPOW2( (uint64)VALUE$1 );
				EXPONENT$1 = vr$19;
				if( EXPONENT$1 > 0ll ) goto label$287;
				{
					goto label$273;
				}
				label$287:;
				label$286:;
				{
					if( OP$1 != 30ll ) goto label$289;
					label$290:;
					{
						int64 TMP$105$6;
						if( (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 480ll) == 0ll ) goto label$291;
						TMP$105$6 = 24ll;
						goto label$689;
						label$291:;
						TMP$105$6 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 31ll;
						label$689:;
						if( EXPONENT$1 <= (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$6 * 56ll)) + 8ll) << (3ll & 63ll)) ) goto label$293;
						{
							goto label$273;
						}
						label$293:;
						label$292:;
						*(int64*)((uint8*)N$1 + 40ll) = 41ll;
						*(int64*)((uint8*)R$1 + 40ll) = EXPONENT$1;
					}
					goto label$288;
					label$289:;
					if( OP$1 != 32ll ) goto label$294;
					label$295:;
					{
						int64 TMP$106$6;
						int64 TMP$107$6;
						if( (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 480ll) == 0ll ) goto label$296;
						TMP$106$6 = 24ll;
						goto label$690;
						label$296:;
						TMP$106$6 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 31ll;
						label$690:;
						if( EXPONENT$1 <= (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$106$6 * 56ll)) + 8ll) << (3ll & 63ll)) ) goto label$298;
						{
							goto label$273;
						}
						label$298:;
						label$297:;
						if( (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 480ll) == 0ll ) goto label$299;
						TMP$107$6 = 24ll;
						goto label$691;
						label$299:;
						TMP$107$6 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 31ll;
						label$691:;
						if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$107$6 * 56ll)) + 16ll) != 0ll ) goto label$301;
						{
							*(int64*)((uint8*)N$1 + 40ll) = 42ll;
							*(int64*)((uint8*)R$1 + 40ll) = EXPONENT$1;
						}
						goto label$300;
						label$301:;
						{
							HDIVTOSHIFT_SIGNED( N$1, EXPONENT$1 );
						}
						label$300:;
					}
					goto label$288;
					label$294:;
					if( OP$1 != 33ll ) goto label$302;
					label$303:;
					{
						int64 TMP$108$6;
						if( ((*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll) & 480ll) == 0ll ) goto label$304;
						TMP$108$6 = 24ll;
						goto label$692;
						label$304:;
						TMP$108$6 = (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll) & 31ll;
						label$692:;
						if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$108$6 * 56ll)) + 16ll) == 0ll ) goto label$306;
						{
							goto label$273;
						}
						label$306:;
						label$305:;
						*(int64*)((uint8*)N$1 + 40ll) = 34ll;
						*(int64*)((uint8*)R$1 + 40ll) = *(int64*)((uint8*)R$1 + 40ll) + -1ll;
					}
					label$302:;
					label$288:;
				}
			}
			label$274:;
			label$273:;
		}
	}
	label$272:;
	label$271:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$308;
	{
		HOPTTOSHIFT( L$1 );
	}
	label$308:;
	label$307:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$310;
	{
		HOPTTOSHIFT( R$1 );
	}
	label$310:;
	label$309:;
	label$268:;
}

static struct $7ASTNODE* HOPTCONSTCONV( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$311:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* N_OLD$1;
	int64 V$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$314;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$312;
	}
	label$314:;
	label$313:;
	if( *(int64*)N$1 != 5ll ) goto label$316;
	{
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		if( *(int64*)L$1 != 16ll ) goto label$318;
		{
			int64 TMP$109$3;
			if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$319;
			TMP$109$3 = 24ll;
			goto label$693;
			label$319:;
			TMP$109$3 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
			label$693:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$109$3 * 56ll)) != 0ll ) goto label$321;
			{
				int64 TMP$110$4;
				if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$322;
				TMP$110$4 = 24ll;
				goto label$694;
				label$322:;
				TMP$110$4 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
				label$694:;
				if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$110$4 * 56ll)) != 0ll ) goto label$324;
				{
					if( *(int64*)L$1 != 16ll ) goto label$326;
					{
						V$1 = *(int64*)((uint8*)L$1 + 40ll);
						if( V$1 != 0ll ) goto label$328;
						{
							N_OLD$1 = N$1;
							struct $7ASTNODE* vr$22 = ASTNEWCONSTI( V$1, *(int64*)((uint8*)N$1 + 8ll), *(struct $8FBSYMBOL**)((uint8*)N$1 + 16ll) );
							N$1 = vr$22;
							ASTDELNODE( L$1 );
							ASTDELNODE( N_OLD$1 );
						}
						label$328:;
						label$327:;
					}
					label$326:;
					label$325:;
				}
				label$324:;
				label$323:;
			}
			label$321:;
			label$320:;
		}
		label$318:;
		label$317:;
	}
	label$316:;
	label$315:;
	fb$result$1 = N$1;
	label$312:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTNULLOP( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$329:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OP$1;
	int64 V$1;
	int64 KEEP_L$1;
	int64 KEEP_R$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$332;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$330;
	}
	label$332:;
	label$331:;
	struct $7ASTNODE* vr$2 = HOPTNULLOP( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$2;
	struct $7ASTNODE* vr$5 = HOPTNULLOP( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$5;
	if( *(int64*)N$1 != 3ll ) goto label$334;
	{
		int64 TMP$111$2;
		OP$1 = *(int64*)((uint8*)N$1 + 40ll);
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		int64 vr$11 = ASTHASSIDEFX( L$1 );
		KEEP_L$1 = vr$11;
		int64 vr$12 = ASTHASSIDEFX( R$1 );
		KEEP_R$1 = vr$12;
		if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$335;
		TMP$111$2 = 24ll;
		goto label$695;
		label$335:;
		TMP$111$2 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
		label$695:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$111$2 * 56ll)) != 0ll ) goto label$337;
		{
			if( *(int64*)R$1 != 16ll ) goto label$339;
			{
				V$1 = *(int64*)((uint8*)R$1 + 40ll);
				{
					uint64 TMP$112$5;
					TMP$112$5 = (uint64)OP$1;
					goto label$341;
					label$342:;
					{
						if( V$1 != 0ll ) goto label$344;
						{
							if( KEEP_L$1 != 0ll ) goto label$346;
							{
								ASTDELTREE( L$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = R$1;
								goto label$330;
							}
							goto label$345;
							label$346:;
							{
								*(int64*)((uint8*)N$1 + 40ll) = 34ll;
							}
							label$345:;
						}
						goto label$343;
						label$344:;
						if( V$1 != 1ll ) goto label$347;
						{
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							fb$result$1 = L$1;
							goto label$330;
						}
						label$347:;
						label$343:;
					}
					goto label$340;
					label$348:;
					{
						int64 TMP$113$6;
						if( ((*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$349;
						TMP$113$6 = 24ll;
						goto label$696;
						label$349:;
						TMP$113$6 = (*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 31ll;
						label$696:;
						if( ((int64)-(V$1 == 1ll) | ((int64)-(V$1 == -1ll) & (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$6 * 56ll)) + 16ll) != 0ll))) == 0ll ) goto label$351;
						{
							if( KEEP_L$1 != 0ll ) goto label$353;
							{
								*(int64*)((uint8*)R$1 + 40ll) = 0ll;
								ASTDELTREE( L$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = R$1;
								goto label$330;
							}
							label$353:;
							label$352:;
						}
						label$351:;
						label$350:;
					}
					goto label$340;
					label$354:;
					{
						if( V$1 != 1ll ) goto label$356;
						{
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							fb$result$1 = L$1;
							goto label$330;
						}
						label$356:;
						label$355:;
					}
					goto label$340;
					label$357:;
					{
						if( V$1 != 0ll ) goto label$359;
						{
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							fb$result$1 = L$1;
							goto label$330;
						}
						label$359:;
						label$358:;
					}
					goto label$340;
					label$360:;
					{
						if( V$1 != -1ll ) goto label$362;
						{
							if( KEEP_L$1 != 0ll ) goto label$364;
							{
								ASTDELTREE( L$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = R$1;
								goto label$330;
							}
							label$364:;
							label$363:;
						}
						label$362:;
						label$361:;
					}
					goto label$340;
					label$365:;
					{
						if( V$1 != 0ll ) goto label$367;
						{
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							fb$result$1 = L$1;
							goto label$330;
						}
						goto label$366;
						label$367:;
						if( V$1 != -1ll ) goto label$368;
						{
							if( KEEP_L$1 != 0ll ) goto label$370;
							{
								ASTDELTREE( L$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = R$1;
								goto label$330;
							}
							label$370:;
							label$369:;
						}
						label$368:;
						label$366:;
					}
					goto label$340;
					label$371:;
					{
						if( V$1 != -1ll ) goto label$373;
						{
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							fb$result$1 = L$1;
							goto label$330;
						}
						goto label$372;
						label$373:;
						if( V$1 != 0ll ) goto label$374;
						{
							if( KEEP_L$1 != 0ll ) goto label$376;
							{
								ASTDELTREE( L$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = R$1;
								goto label$330;
							}
							label$376:;
							label$375:;
						}
						label$374:;
						label$372:;
					}
					goto label$340;
					label$341:;
					static const void* tmp$156[15ll] = {
						&&label$357,
						&&label$357,
						&&label$342,
						&&label$340,
						&&label$354,
						&&label$348,
						&&label$371,
						&&label$365,
						&&label$340,
						&&label$340,
						&&label$357,
						&&label$340,
						&&label$360,
						&&label$357,
						&&label$357,
					};
					if( (TMP$112$5 - 28ull) > 14ull ) goto label$340;
					goto *tmp$156[TMP$112$5 - 28ull];
					label$340:;
				}
			}
			goto label$338;
			label$339:;
			if( *(int64*)L$1 != 16ll ) goto label$377;
			{
				V$1 = *(int64*)((uint8*)L$1 + 40ll);
				{
					uint64 TMP$114$5;
					TMP$114$5 = (uint64)OP$1;
					goto label$379;
					label$380:;
					{
						if( V$1 != 0ll ) goto label$382;
						{
							if( KEEP_R$1 != 0ll ) goto label$384;
							{
								ASTDELTREE( R$1 );
								ASTDELNODE( N$1 );
								fb$result$1 = L$1;
								goto label$330;
							}
							label$384:;
							label$383:;
						}
						label$382:;
						label$381:;
					}
					goto label$378;
					label$379:;
					static const void* tmp$157[13ll] = {
						&&label$380,
						&&label$378,
						&&label$380,
						&&label$380,
						&&label$378,
						&&label$378,
						&&label$378,
						&&label$378,
						&&label$378,
						&&label$378,
						&&label$378,
						&&label$380,
						&&label$380,
					};
					if( (TMP$114$5 - 30ull) > 12ull ) goto label$378;
					goto *tmp$157[TMP$114$5 - 30ull];
					label$378:;
				}
			}
			label$377:;
			label$338:;
		}
		label$337:;
		label$336:;
	}
	label$334:;
	label$333:;
	struct $7ASTNODE* vr$38 = HOPTCONSTCONV( N$1 );
	fb$result$1 = vr$38;
	label$330:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTLOGIC( struct $7ASTNODE* N$1 )
{
	int64 TMP$115$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$385:;
	struct $7ASTNODE* M$1;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 OP$1;
	int64 V$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$388;
	{
		fb$result$1 = N$1;
		goto label$386;
	}
	label$388:;
	label$387:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$390;
	{
		struct $7ASTNODE* vr$2 = HOPTLOGIC( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$2;
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	}
	label$390:;
	label$389:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$392;
	{
		struct $7ASTNODE* vr$6 = HOPTLOGIC( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$6;
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	}
	label$392:;
	label$391:;
	if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$393;
	TMP$115$1 = 24ll;
	goto label$697;
	label$393:;
	TMP$115$1 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
	label$697:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$115$1 * 56ll)) != 0ll ) goto label$395;
	{
		int64 TMP$116$2;
		if( *(int64*)N$1 != 4ll ) goto label$396;
		TMP$116$2 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 52ll);
		goto label$698;
		label$396:;
		TMP$116$2 = 0ll;
		label$698:;
		if( TMP$116$2 == 0ll ) goto label$398;
		{
			int64 TMP$117$3;
			int64 TMP$118$3;
			if( *(int64*)L$1 != 4ll ) goto label$399;
			TMP$117$3 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 52ll);
			goto label$699;
			label$399:;
			TMP$117$3 = 0ll;
			label$699:;
			if( TMP$117$3 == 0ll ) goto label$401;
			{
				M$1 = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
				ASTDELNODE( L$1 );
				ASTDELNODE( N$1 );
				struct $7ASTNODE* vr$23 = HOPTLOGIC( M$1 );
				N$1 = vr$23;
			}
			goto label$400;
			label$401:;
			if( *(int64*)L$1 != 3ll ) goto label$403;
			TMP$118$3 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 38ll);
			goto label$700;
			label$403:;
			TMP$118$3 = 0ll;
			label$700:;
			if( TMP$118$3 == 0ll ) goto label$402;
			{
				int64 TMP$119$4;
				if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$404;
				TMP$119$4 = 24ll;
				goto label$701;
				label$404:;
				TMP$119$4 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
				label$701:;
				if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$119$4 * 56ll)) != 0ll ) goto label$406;
				{
					if( *(int64*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) != 16ll ) goto label$408;
					{
						*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 40ll) = ~(*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 40ll));
						ASTDELNODE( N$1 );
						struct $7ASTNODE* vr$41 = HOPTLOGIC( L$1 );
						N$1 = vr$41;
					}
					goto label$407;
					label$408:;
					if( *(int64*)*(struct $7ASTNODE**)((uint8*)L$1 + 120ll) != 16ll ) goto label$409;
					{
						*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 120ll) + 40ll) = ~(*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 120ll) + 40ll));
						ASTDELNODE( N$1 );
						struct $7ASTNODE* vr$49 = HOPTLOGIC( L$1 );
						N$1 = vr$49;
					}
					label$409:;
					label$407:;
				}
				label$406:;
				label$405:;
			}
			label$402:;
			label$400:;
		}
		goto label$397;
		label$398:;
		if( *(int64*)N$1 != 3ll ) goto label$410;
		{
			int64 TMP$120$3;
			if( ((*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$411;
			TMP$120$3 = 24ll;
			goto label$702;
			label$411:;
			TMP$120$3 = (*(int64*)((uint8*)N$1 + 8ll) & 511ll) & 31ll;
			label$702:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$120$3 * 56ll)) != 0ll ) goto label$413;
			{
				OP$1 = *(int64*)((uint8*)N$1 + 40ll);
				{
					if( OP$1 == 35ll ) goto label$416;
					label$417:;
					if( OP$1 == 34ll ) goto label$416;
					label$418:;
					if( OP$1 != 38ll ) goto label$415;
					label$416:;
					{
						int64 TMP$121$6;
						int64 TMP$122$6;
						int64 TMP$123$6;
						int64 TMP$124$6;
						int64 TMP$125$6;
						int64 TMP$126$6;
						if( OP$1 != 34ll ) goto label$420;
						{
							OP$1 = 35ll;
						}
						goto label$419;
						label$420:;
						if( OP$1 != 35ll ) goto label$421;
						{
							OP$1 = 34ll;
						}
						label$421:;
						label$419:;
						if( *(int64*)L$1 != 4ll ) goto label$422;
						TMP$121$6 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 52ll);
						goto label$703;
						label$422:;
						TMP$121$6 = 0ll;
						label$703:;
						if( *(int64*)R$1 != 4ll ) goto label$423;
						TMP$122$6 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) == 52ll);
						goto label$704;
						label$423:;
						TMP$122$6 = 0ll;
						label$704:;
						if( (TMP$121$6 & TMP$122$6) == 0ll ) goto label$425;
						{
							struct $7ASTNODE* vr$67 = HOPTLOGIC( *(struct $7ASTNODE**)((uint8*)L$1 + 112ll) );
							L$1 = vr$67;
							struct $7ASTNODE* vr$69 = HOPTLOGIC( *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
							R$1 = vr$69;
							struct $7ASTNODE* vr$70 = ASTNEWBOP( OP$1, L$1, R$1, (struct $8FBSYMBOL*)0ull, 1ll );
							M$1 = vr$70;
							if( OP$1 == 38ll ) goto label$427;
							{
								struct $7ASTNODE* vr$71 = ASTNEWUOP( 52ll, M$1 );
								M$1 = vr$71;
							}
							label$427:;
							label$426:;
							ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
							ASTDELNODE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
							ASTDELNODE( N$1 );
							N$1 = M$1;
						}
						goto label$424;
						label$425:;
						if( *(int64*)R$1 != 4ll ) goto label$429;
						TMP$123$6 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) == 52ll);
						goto label$705;
						label$429:;
						TMP$123$6 = 0ll;
						label$705:;
						if( ((int64)-(*(int64*)L$1 == 16ll) & TMP$123$6) == 0ll ) goto label$428;
						{
							V$1 = *(int64*)((uint8*)L$1 + 40ll);
							struct $7ASTNODE* vr$82 = ASTNEWBOP( OP$1, L$1, *(struct $7ASTNODE**)((uint8*)R$1 + 112ll), (struct $8FBSYMBOL*)0ull, 1ll );
							M$1 = vr$82;
							*(int64*)((uint8*)L$1 + 40ll) = ~V$1;
							if( OP$1 == 38ll ) goto label$431;
							{
								struct $7ASTNODE* vr$85 = ASTNEWUOP( 52ll, M$1 );
								M$1 = vr$85;
							}
							label$431:;
							label$430:;
							ASTDELNODE( R$1 );
							ASTDELNODE( N$1 );
							N$1 = M$1;
						}
						goto label$424;
						label$428:;
						if( *(int64*)L$1 != 4ll ) goto label$433;
						TMP$124$6 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 52ll);
						goto label$706;
						label$433:;
						TMP$124$6 = 0ll;
						label$706:;
						if( ((int64)-(*(int64*)R$1 == 16ll) & TMP$124$6) == 0ll ) goto label$432;
						{
							V$1 = *(int64*)((uint8*)R$1 + 40ll);
							struct $7ASTNODE* vr$94 = ASTNEWBOP( OP$1, *(struct $7ASTNODE**)((uint8*)L$1 + 112ll), R$1, (struct $8FBSYMBOL*)0ull, 1ll );
							M$1 = vr$94;
							*(int64*)((uint8*)R$1 + 40ll) = ~V$1;
							if( OP$1 == 38ll ) goto label$435;
							{
								struct $7ASTNODE* vr$97 = ASTNEWUOP( 52ll, M$1 );
								M$1 = vr$97;
							}
							label$435:;
							label$434:;
							ASTDELNODE( L$1 );
							ASTDELNODE( N$1 );
							N$1 = M$1;
						}
						goto label$424;
						label$432:;
						if( *(int64*)L$1 != 4ll ) goto label$437;
						TMP$125$6 = (int64)-(*(int64*)((uint8*)L$1 + 40ll) == 52ll);
						goto label$707;
						label$437:;
						TMP$125$6 = 0ll;
						label$707:;
						if( ((int64)-(OP$1 == 38ll) & TMP$125$6) == 0ll ) goto label$436;
						{
							struct $7ASTNODE* vr$103 = ASTNEWUOP( 52ll, N$1 );
							M$1 = vr$103;
							*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = *(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
							ASTDELNODE( L$1 );
							N$1 = M$1;
						}
						goto label$424;
						label$436:;
						if( *(int64*)R$1 != 4ll ) goto label$439;
						TMP$126$6 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) == 52ll);
						goto label$708;
						label$439:;
						TMP$126$6 = 0ll;
						label$708:;
						if( ((int64)-(OP$1 == 38ll) & TMP$126$6) == 0ll ) goto label$438;
						{
							struct $7ASTNODE* vr$111 = ASTNEWUOP( 52ll, N$1 );
							M$1 = vr$111;
							*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = *(struct $7ASTNODE**)((uint8*)R$1 + 112ll);
							ASTDELNODE( R$1 );
							N$1 = M$1;
						}
						label$438:;
						label$424:;
					}
					label$415:;
					label$414:;
				}
			}
			label$413:;
			label$412:;
		}
		label$410:;
		label$397:;
	}
	label$395:;
	label$394:;
	fb$result$1 = N$1;
	label$386:;
	return fb$result$1;
}

static struct $7ASTNODE* HDOOPTREMCONV( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$440:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	int64 DOREM$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$443;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$441;
	}
	label$443:;
	label$442:;
	if( *(int64*)N$1 != 3ll ) goto label$445;
	{
		{
			int64 TMP$127$3;
			TMP$127$3 = *(int64*)((uint8*)N$1 + 8ll) & 511ll;
			if( TMP$127$3 == 15ll ) goto label$448;
			label$449:;
			if( TMP$127$3 != 16ll ) goto label$447;
			label$448:;
			{
				R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				if( *(int64*)R$1 != 5ll ) goto label$451;
				{
					if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == 5ll ) goto label$453;
					{
						{
							int64 TMP$128$7;
							TMP$128$7 = *(int64*)((uint8*)R$1 + 8ll) & 511ll;
							if( TMP$128$7 == 15ll ) goto label$456;
							label$457:;
							if( TMP$128$7 != 16ll ) goto label$455;
							label$456:;
							{
								L$1 = *(struct $7ASTNODE**)((uint8*)R$1 + 112ll);
								{
									int64 TMP$129$9;
									int64 TMP$130$9;
									if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$458;
									TMP$129$9 = 24ll;
									goto label$709;
									label$458:;
									TMP$129$9 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
									label$709:;
									TMP$130$9 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$129$9 * 56ll)) + 8ll);
									if( TMP$130$9 == 2ll ) goto label$461;
									label$462:;
									if( TMP$130$9 != 4ll ) goto label$460;
									label$461:;
									{
										DOREM$1 = 0ll;
										{
											$13AST_NODECLASS TMP$131$11;
											TMP$131$11 = *($13AST_NODECLASS*)L$1;
											if( TMP$131$11 == 17ll ) goto label$465;
											label$466:;
											if( TMP$131$11 == 18ll ) goto label$465;
											label$467:;
											if( TMP$131$11 == 19ll ) goto label$465;
											label$468:;
											if( TMP$131$11 != 20ll ) goto label$464;
											label$465:;
											{
												int64 TMP$132$12;
												if( ((*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$469;
												TMP$132$12 = 24ll;
												goto label$710;
												label$469:;
												TMP$132$12 = (*(int64*)((uint8*)L$1 + 8ll) & 511ll) & 31ll;
												label$710:;
												if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$132$12 * 56ll)) + 16ll) == 0ll ) goto label$471;
												{
													DOREM$1 = -1ll;
												}
												label$471:;
												label$470:;
											}
											label$464:;
											label$463:;
										}
										if( DOREM$1 == 0ll ) goto label$473;
										{
											ASTDELNODE( R$1 );
											*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = L$1;
										}
										label$473:;
										label$472:;
									}
									label$460:;
									label$459:;
								}
							}
							label$455:;
							label$454:;
						}
					}
					label$453:;
					label$452:;
				}
				label$451:;
				label$450:;
			}
			label$447:;
			label$446:;
		}
	}
	label$445:;
	label$444:;
	struct $7ASTNODE* vr$28 = HDOOPTREMCONV( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$28;
	struct $7ASTNODE* vr$31 = HDOOPTREMCONV( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$31;
	fb$result$1 = N$1;
	label$441:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTSTRMULTCONCAT( struct $7ASTNODE* LNK$1, struct $7ASTNODE* DST$1, struct $7ASTNODE* N$1, int64 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$474:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$477;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$475;
	}
	label$477:;
	label$476:;
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$479;
	{
		if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 3ll ) goto label$481;
		{
			struct $7ASTNODE* vr$5 = HOPTSTRMULTCONCAT( LNK$1, DST$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), IS_WSTR$1 );
			LNK$1 = vr$5;
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = (struct $7ASTNODE*)0ull;
		}
		label$481:;
		label$480:;
	}
	label$479:;
	label$478:;
	if( *(int64*)N$1 != 3ll ) goto label$483;
	{
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$485;
		{
			if( LNK$1 != (struct $7ASTNODE*)0ull ) goto label$487;
			{
				if( IS_WSTR$1 != 0ll ) goto label$489;
				{
					struct $7ASTNODE* vr$10 = ASTCLONETREE( DST$1 );
					struct $7ASTNODE* vr$11 = RTLSTRASSIGN( vr$10, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll );
					LNK$1 = vr$11;
				}
				goto label$488;
				label$489:;
				{
					struct $7ASTNODE* vr$13 = ASTCLONETREE( DST$1 );
					struct $7ASTNODE* vr$14 = RTLWSTRASSIGN( vr$13, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll );
					LNK$1 = vr$14;
				}
				label$488:;
			}
			goto label$486;
			label$487:;
			{
				if( IS_WSTR$1 != 0ll ) goto label$491;
				{
					struct $7ASTNODE* vr$16 = ASTCLONETREE( DST$1 );
					struct $7ASTNODE* vr$17 = RTLSTRCONCATASSIGN( vr$16, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll );
					struct $7ASTNODE* vr$18 = ASTNEWLINK( LNK$1, vr$17, 0ll );
					LNK$1 = vr$18;
				}
				goto label$490;
				label$491:;
				{
					struct $7ASTNODE* vr$20 = ASTCLONETREE( DST$1 );
					struct $7ASTNODE* vr$21 = RTLWSTRCONCATASSIGN( vr$20, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
					struct $7ASTNODE* vr$22 = ASTNEWLINK( LNK$1, vr$21, 0ll );
					LNK$1 = vr$22;
				}
				label$490:;
			}
			label$486:;
		}
		label$485:;
		label$484:;
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) == (struct $7ASTNODE*)0ull ) goto label$493;
		{
			if( IS_WSTR$1 != 0ll ) goto label$495;
			{
				struct $7ASTNODE* vr$25 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$26 = RTLSTRCONCATASSIGN( vr$25, *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), 0ll );
				struct $7ASTNODE* vr$27 = ASTNEWLINK( LNK$1, vr$26, 0ll );
				LNK$1 = vr$27;
			}
			goto label$494;
			label$495:;
			{
				struct $7ASTNODE* vr$29 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$30 = RTLWSTRCONCATASSIGN( vr$29, *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
				struct $7ASTNODE* vr$31 = ASTNEWLINK( LNK$1, vr$30, 0ll );
				LNK$1 = vr$31;
			}
			label$494:;
		}
		label$493:;
		label$492:;
		ASTDELNODE( N$1 );
	}
	goto label$482;
	label$483:;
	{
		if( LNK$1 != (struct $7ASTNODE*)0ull ) goto label$497;
		{
			if( IS_WSTR$1 != 0ll ) goto label$499;
			{
				struct $7ASTNODE* vr$32 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$33 = RTLSTRASSIGN( vr$32, N$1, 0ll );
				LNK$1 = vr$33;
			}
			goto label$498;
			label$499:;
			{
				struct $7ASTNODE* vr$34 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$35 = RTLWSTRASSIGN( vr$34, N$1, 0ll );
				LNK$1 = vr$35;
			}
			label$498:;
		}
		goto label$496;
		label$497:;
		{
			if( IS_WSTR$1 != 0ll ) goto label$501;
			{
				struct $7ASTNODE* vr$36 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$37 = RTLSTRCONCATASSIGN( vr$36, N$1, 0ll );
				struct $7ASTNODE* vr$38 = ASTNEWLINK( LNK$1, vr$37, 0ll );
				LNK$1 = vr$38;
			}
			goto label$500;
			label$501:;
			{
				struct $7ASTNODE* vr$39 = ASTCLONETREE( DST$1 );
				struct $7ASTNODE* vr$40 = RTLWSTRCONCATASSIGN( vr$39, N$1 );
				struct $7ASTNODE* vr$41 = ASTNEWLINK( LNK$1, vr$40, 0ll );
				LNK$1 = vr$41;
			}
			label$500:;
		}
		label$496:;
	}
	label$482:;
	fb$result$1 = LNK$1;
	label$475:;
	return fb$result$1;
}

static int64 HISMULTSTRCONCAT( struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$502:;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = 0ll;
	if( *(int64*)R$1 != 3ll ) goto label$505;
	{
		{
			$13AST_NODECLASS TMP$133$3;
			TMP$133$3 = *($13AST_NODECLASS*)L$1;
			if( TMP$133$3 == 17ll ) goto label$508;
			label$509:;
			if( TMP$133$3 != 18ll ) goto label$507;
			label$508:;
			{
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
				if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$511;
				{
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 81920ll) != 0ll ) goto label$513;
					{
						int64 vr$6 = ASTISSYMBOLONTREE( SYM$1, R$1 );
						fb$result$1 = (int64)-(vr$6 == 0ll);
					}
					label$513:;
					label$512:;
				}
				label$511:;
				label$510:;
			}
			goto label$506;
			label$507:;
			if( TMP$133$3 == 19ll ) goto label$515;
			label$516:;
			if( TMP$133$3 != 26ll ) goto label$514;
			label$515:;
			{
				{
					$13AST_NODECLASS TMP$134$5;
					TMP$134$5 = *($13AST_NODECLASS*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
					if( TMP$134$5 == 17ll ) goto label$519;
					label$520:;
					if( TMP$134$5 != 18ll ) goto label$518;
					label$519:;
					{
						SYM$1 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
						if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$522;
						{
							int64 vr$11 = ASTISSYMBOLONTREE( SYM$1, R$1 );
							fb$result$1 = (int64)-(vr$11 == 0ll);
						}
						label$522:;
						label$521:;
					}
					label$518:;
					label$517:;
				}
			}
			label$514:;
			label$506:;
		}
	}
	label$505:;
	label$504:;
	label$503:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTSTRASSIGNMENT( struct $7ASTNODE* N$1, struct $7ASTNODE* L$1, struct $7ASTNODE* R$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$523:;
	int64 OPTIMIZE$1;
	int64 IS_BYREF$1;
	int64 IS_WSTR$1;
	OPTIMIZE$1 = 0ll;
	IS_BYREF$1 = 0ll;
	if( *(int64*)R$1 != 3ll ) goto label$526;
	{
		struct $8FBSYMBOL* SYM$2;
		__builtin_memset( &SYM$2, 0, 8ll );
		{
			uint64 TMP$135$3;
			TMP$135$3 = *(uint64*)L$1;
			goto label$528;
			label$529:;
			{
				int64 vr$5 = ASTISTREEEQUAL( L$1, *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
				if( vr$5 == 0ll ) goto label$531;
				{
					SYM$2 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
					if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$533;
					{
						if( (*(int64*)((uint8*)SYM$2 + 8ll) & 81920ll) != 0ll ) goto label$535;
						{
							int64 vr$10 = ASTISSYMBOLONTREE( SYM$2, *(struct $7ASTNODE**)((uint8*)R$1 + 120ll) );
							OPTIMIZE$1 = (int64)-(vr$10 == 0ll);
						}
						label$535:;
						label$534:;
					}
					label$533:;
					label$532:;
				}
				label$531:;
				label$530:;
			}
			goto label$527;
			label$536:;
			{
				int64 vr$13 = ASTISTREEEQUAL( L$1, *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
				if( vr$13 == 0ll ) goto label$538;
				{
					SYM$2 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll) + 24ll);
					if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$540;
					{
						if( (*(int64*)((uint8*)L$1 + 8ll) & 511ll) != 17ll ) goto label$542;
						{
							int64 vr$19 = ASTISSYMBOLONTREE( SYM$2, *(struct $7ASTNODE**)((uint8*)R$1 + 120ll) );
							OPTIMIZE$1 = (int64)-(vr$19 == 0ll);
							IS_BYREF$1 = -1ll;
						}
						label$542:;
						label$541:;
					}
					label$540:;
					label$539:;
				}
				label$538:;
				label$537:;
			}
			goto label$527;
			label$543:;
			{
				{
					uint64 TMP$136$5;
					TMP$136$5 = *(uint64*)*(struct $7ASTNODE**)((uint8*)L$1 + 112ll);
					goto label$545;
					label$546:;
					{
						int64 vr$24 = ASTISTREEEQUAL( L$1, *(struct $7ASTNODE**)((uint8*)R$1 + 112ll) );
						if( vr$24 == 0ll ) goto label$548;
						{
							SYM$2 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 24ll);
							if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$550;
							{
								if( (*(int64*)((uint8*)L$1 + 8ll) & 511ll) != 17ll ) goto label$552;
								{
									IS_BYREF$1 = -1ll;
								}
								label$552:;
								label$551:;
								int64 vr$29 = ASTISSYMBOLONTREE( SYM$2, *(struct $7ASTNODE**)((uint8*)R$1 + 120ll) );
								OPTIMIZE$1 = (int64)-(vr$29 == 0ll);
							}
							label$550:;
							label$549:;
						}
						label$548:;
						label$547:;
					}
					goto label$544;
					label$545:;
					static const void* tmp$158[2ll] = {
						&&label$546,
						&&label$546,
					};
					if( (TMP$136$5 - 17ull) > 1ull ) goto label$544;
					goto *tmp$158[TMP$136$5 - 17ull];
					label$544:;
				}
			}
			goto label$527;
			label$528:;
			static const void* tmp$159[10ll] = {
				&&label$529,
				&&label$529,
				&&label$543,
				&&label$536,
				&&label$527,
				&&label$527,
				&&label$527,
				&&label$527,
				&&label$527,
				&&label$543,
			};
			if( (TMP$135$3 - 17ull) > 9ull ) goto label$527;
			goto *tmp$159[TMP$135$3 - 17ull];
			label$527:;
		}
	}
	label$526:;
	label$525:;
	IS_WSTR$1 = (int64)-((*(int64*)((uint8*)N$1 + 8ll) & 511ll) == 7ll);
	if( OPTIMIZE$1 == 0ll ) goto label$554;
	{
		ASTDELNODE( N$1 );
		N$1 = R$1;
		ASTDELTREE( L$1 );
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
		int64 vr$36 = HISMULTSTRCONCAT( L$1, R$1 );
		if( vr$36 == 0ll ) goto label$556;
		{
			struct $7ASTNODE* vr$37 = HOPTSTRMULTCONCAT( L$1, L$1, R$1, IS_WSTR$1 );
			fb$result$1 = vr$37;
		}
		goto label$555;
		label$556:;
		{
			if( IS_WSTR$1 != 0ll ) goto label$558;
			{
				struct $7ASTNODE* vr$38 = ASTUPDSTRCONCAT( R$1 );
				struct $7ASTNODE* vr$39 = RTLSTRCONCATASSIGN( L$1, vr$38, IS_BYREF$1 );
				fb$result$1 = vr$39;
			}
			goto label$557;
			label$558:;
			{
				struct $7ASTNODE* vr$40 = ASTUPDSTRCONCAT( R$1 );
				struct $7ASTNODE* vr$41 = RTLWSTRCONCATASSIGN( L$1, vr$40 );
				fb$result$1 = vr$41;
			}
			label$557:;
		}
		label$555:;
	}
	goto label$553;
	label$554:;
	{
		int64 vr$42 = HISMULTSTRCONCAT( L$1, R$1 );
		if( vr$42 == 0ll ) goto label$560;
		{
			struct $7ASTNODE* vr$43 = HOPTSTRMULTCONCAT( (struct $7ASTNODE*)0ull, L$1, R$1, IS_WSTR$1 );
			fb$result$1 = vr$43;
		}
		goto label$559;
		label$560:;
		{
			if( IS_WSTR$1 != 0ll ) goto label$562;
			{
				struct $7ASTNODE* vr$44 = ASTUPDSTRCONCAT( R$1 );
				struct $7ASTNODE* vr$45 = RTLSTRASSIGN( L$1, vr$44, 0ll );
				fb$result$1 = vr$45;
			}
			goto label$561;
			label$562:;
			{
				struct $7ASTNODE* vr$46 = ASTUPDSTRCONCAT( R$1 );
				struct $7ASTNODE* vr$47 = RTLWSTRASSIGN( L$1, vr$46, 0ll );
				fb$result$1 = vr$47;
			}
			label$561:;
		}
		label$559:;
	}
	label$553:;
	ASTDELNODE( N$1 );
	label$524:;
	return fb$result$1;
}

static struct $7ASTNODE* HOPTRECIPROCAL( struct $7ASTNODE* N$1 )
{
	int64 TMP$149$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$645:;
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* R$1;
	float V$1;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$648;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$646;
	}
	label$648:;
	label$647:;
	if( *(int64*)N$1 != 3ll ) goto label$649;
	TMP$149$1 = (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 31ll);
	goto label$711;
	label$649:;
	TMP$149$1 = 0ll;
	label$711:;
	if( TMP$149$1 == 0ll ) goto label$651;
	{
		L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
		if( *(int64*)L$1 != 16ll ) goto label$653;
		{
			int64 TMP$150$3;
			if( (*(int64*)((uint8*)L$1 + 8ll) & 511ll) != 15ll ) goto label$654;
			TMP$150$3 = (int64)-(*(double*)((uint8*)L$1 + 40ll) == 0x1.p+0);
			goto label$712;
			label$654:;
			TMP$150$3 = 0ll;
			label$712:;
			if( TMP$150$3 == 0ll ) goto label$656;
			{
				R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
				{
					int64 TMP$151$5;
					uint64 TMP$152$5;
					if( ((*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$657;
					TMP$151$5 = 24ll;
					goto label$713;
					label$657:;
					TMP$151$5 = (*(int64*)((uint8*)R$1 + 8ll) & 511ll) & 31ll;
					label$713:;
					TMP$152$5 = *(uint64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$151$5 * 56ll));
					goto label$659;
					label$660:;
					{
						int64 TMP$153$6;
						if( *(int64*)R$1 != 4ll ) goto label$661;
						TMP$153$6 = (int64)-(*(int64*)((uint8*)R$1 + 40ll) == 65ll);
						goto label$714;
						label$661:;
						TMP$153$6 = 0ll;
						label$714:;
						if( TMP$153$6 == 0ll ) goto label$663;
						{
							__builtin_memcpy( N$1, R$1, 144 );
							*($13AST_NODECLASS*)N$1 = 4ll;
							*(int64*)((uint8*)N$1 + 40ll) = 66ll;
							ASTDELNODE( R$1 );
							ASTDELNODE( L$1 );
						}
						goto label$662;
						label$663:;
						if( (*(int64*)((uint8*)R$1 + 8ll) & 511ll) != 15ll ) goto label$664;
						{
							ASTDELNODE( N$1 );
							struct $7ASTNODE* vr$25 = ASTNEWUOP( 67ll, R$1 );
							N$1 = vr$25;
							ASTDELNODE( L$1 );
						}
						label$664:;
						label$662:;
					}
					goto label$658;
					label$659:;
					static const void* tmp$160[2ll] = {
						&&label$660,
						&&label$660,
					};
					if( TMP$152$5 > 1ull ) goto label$658;
					goto *tmp$160[TMP$152$5 - 0ull];
					label$658:;
				}
			}
			label$656:;
			label$655:;
		}
		label$653:;
		label$652:;
	}
	label$651:;
	label$650:;
	L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	if( L$1 == (struct $7ASTNODE*)0ull ) goto label$666;
	{
		struct $7ASTNODE* vr$27 = HOPTRECIPROCAL( L$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$27;
	}
	label$666:;
	label$665:;
	R$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 120ll);
	if( R$1 == (struct $7ASTNODE*)0ull ) goto label$668;
	{
		struct $7ASTNODE* vr$30 = HOPTRECIPROCAL( R$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = vr$30;
	}
	label$668:;
	label$667:;
	fb$result$1 = N$1;
	label$646:;
	return fb$result$1;
}
