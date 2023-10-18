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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
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
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezarg( void ) __attribute__(( constructor ));
void* LISTNEWNODE( struct $5TLIST* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRPUSHPARAMLOCATION( struct $8FBSYMBOL*, int32, int32, uint8* );
void ERRPOPPARAMLOCATION( void );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTPTRCHECK( int32, struct $8FBSYMBOL*, int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWCALLCTOR( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTTYPEINICLONE( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINITRYREMOVE( struct $7ASTNODE* );
int32 ASTCANTAKEADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDIMPLICITCTORCALLEX( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, int32* );
struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* );
int32 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLSTRALLOCTMPDESC( struct $7ASTNODE* );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
static struct $8FBSYMBOL* HALLOCTMPARRAYDESC( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE** );
static struct $19AST_TMPSTRLIST_ITEM* HADDTOCOPYBACKLIST( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HALLOCTMPSTRING( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static struct $7ASTNODE* HALLOCTMPWSTRPTR( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HCHECKARGFORSTRINGPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HSTRARGTOSTRPTRPARAM( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
void HBUILDBYREFARG( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HCHECKBYREFPARAM( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HCHECKBYDESCDIMENSIONS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int32 HCHECKBYDESCPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HCHECKVARARGPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HCHECKVOIDPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HCHECKSTRPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HBYTEBYBYTE( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HUDTPASSBYVAL( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HIMPLICITCTOR( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HCHECKUDTPARAM( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int32 HCHECKPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HCREATEOPTARG( struct $8FBSYMBOL* );
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 12 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 32 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int32 CTORCNT;
	int32 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 40 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 16 );
struct $23AST_DTORLIST_SCOPESTACK {
	int32* COOKIES;
	int32 COUNT;
	int32 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 12 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int32 DOEMIT;
	int32 TYPEINICOUNT;
	int32 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int32 DTORLISTCOOKIES;
	int32 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int32 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 236 );
extern struct $6ASTCTX AST$;
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

void HBUILDBYREFARG( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$62:;
	struct $7ASTNODE* vr$1 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	struct $7ASTNODE* vr$2 = ASTNEWADDROF( vr$1 );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$2;
	struct $7ASTNODE* vr$19 = ASTNEWCONV( (((*(int32*)((uint8*)PARAM$1 + 28) & 31) | ((*(int32*)((uint8*)PARAM$1 + 28) & 480) + 32)) | ((*(int32*)((uint8*)PARAM$1 + 28) & 261632) << (1 & 31))) | (*(int32*)((uint8*)PARAM$1 + 28) & 32505856), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), 16, (int32*)0u );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$19;
	*(int32*)((uint8*)N$1 + 24) = 1;
	label$63:;
}

struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* ARG$1, int32 DTYPE$1, int32 MODE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$306:;
	struct $7ASTNODE* N$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARAM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 12);
	if( *(int32*)((uint8*)PARENT$1 + 28) < (int32)*(int16*)((uint8*)SYM$1 + 68) ) goto label$309;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 80);
	}
	goto label$308;
	label$309:;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 32);
	}
	label$308:;
	if( ARG$1 != (struct $7ASTNODE*)0u ) goto label$311;
	{
		struct $7ASTNODE* vr$7 = HCREATEOPTARG( PARAM$1 );
		ARG$1 = vr$7;
		if( ARG$1 != (struct $7ASTNODE*)0u ) goto label$313;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$307;
		}
		label$313:;
		label$312:;
	}
	label$311:;
	label$310:;
	if( DTYPE$1 != -2147483648u ) goto label$315;
	{
		DTYPE$1 = *(int32*)((uint8*)ARG$1 + 4);
	}
	label$315:;
	label$314:;
	if( (-((*(int32*)((uint8*)PARAM$1 + 4) & 524288) == 0) | -((*(int32*)((uint8*)SYM$1 + 8) & 1024) == 0)) == 0 ) goto label$317;
	{
		int32 TMP$108$2;
		TMP$108$2 = 0;
		int32 vr$21 = SYMBCHECKCONSTASSIGNTOPLEVEL( *($11FB_DATATYPE*)((uint8*)PARAM$1 + 28), DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $8FBSYMBOL**)((uint8*)ARG$1 + 8), *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56), &TMP$108$2 );
		if( vr$21 != 0 ) goto label$319;
		{
			if( (*(int32*)((uint8*)PARAM$1 + 4) & 524288) == 0 ) goto label$321;
			{
				ERRREPORTPARAM( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 12), 0, (uint8*)0u, 276 );
			}
			goto label$320;
			label$321:;
			{
				ERRREPORTPARAM( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 12), *(int32*)((uint8*)PARENT$1 + 28) + 1, (uint8*)0u, 181 );
			}
			label$320:;
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$307;
		}
		label$319:;
		label$318:;
	}
	label$317:;
	label$316:;
	struct $7ASTNODE* vr$28 = ASTNEWNODE( 22, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$28;
	fb$result$1 = N$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = PARAM$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = ARG$1;
	*(int32*)((uint8*)N$1 + 24) = MODE$1;
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	if( *(int32*)((uint8*)SYM$1 + 84) != 4 ) goto label$323;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 68) != (struct $7ASTNODE*)0u ) goto label$325;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 68) = N$1;
		}
		goto label$324;
		label$325:;
		{
			*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)PARENT$1 + 36) + 68) = N$1;
		}
		label$324:;
		*(struct $7ASTNODE**)((uint8*)PARENT$1 + 36) = N$1;
		*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
	}
	goto label$322;
	label$323:;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 68) != (struct $7ASTNODE*)0u ) goto label$327;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 36) = N$1;
		}
		label$327:;
		label$326:;
		*(struct $7ASTNODE**)((uint8*)N$1 + 68) = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 68);
		*(struct $7ASTNODE**)((uint8*)PARENT$1 + 68) = N$1;
	}
	label$322:;
	ERRPUSHPARAMLOCATION( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 12), -1, *(int32*)((uint8*)PARENT$1 + 28) + 1, (uint8*)0u );
	int32 vr$48 = HCHECKPARAM( PARENT$1, PARAM$1, N$1 );
	if( vr$48 != 0 ) goto label$329;
	{
		ERRPOPPARAMLOCATION(  );
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$307;
	}
	label$329:;
	label$328:;
	ERRPOPPARAMLOCATION(  );
	*(int32*)((uint8*)PARENT$1 + 28) = *(int32*)((uint8*)PARENT$1 + 28) + 1;
	if( *(int32*)((uint8*)PARENT$1 + 28) >= (int32)*(int16*)((uint8*)SYM$1 + 68) ) goto label$331;
	{
		*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 32) + 176);
	}
	label$331:;
	label$330:;
	label$307:;
	return fb$result$1;
}

void ASTREPLACEINSTANCEARG( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* EXPR$1, int32 MODE$1 )
{
	label$332:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $7ASTNODE* N$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 12);
	if( *(int32*)((uint8*)SYM$1 + 84) != 4 ) goto label$335;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 68);
	}
	goto label$334;
	label$335:;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 36);
	}
	label$334:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 76);
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = EXPR$1;
	*(int32*)((uint8*)N$1 + 24) = MODE$1;
	*(int64*)((uint8*)N$1 + 32) = 0ll;
	HCHECKPARAM( PARENT$1, PARAM$1, N$1 );
	label$333:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static struct $8FBSYMBOL* HALLOCTMPARRAYDESC( struct $8FBSYMBOL* ARRAY$1, struct $7ASTNODE* ARRAY_EXPR$1, struct $7ASTNODE** TREE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $8FBSYMBOL* DESC$1;
	struct $7ASTNODE* INITREE$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDARRAYDESC( ARRAY$1 );
	DESC$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTBUILDARRAYDESCINITREE( DESC$1, ARRAY$1, ARRAY_EXPR$1 );
	INITREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWDECL( DESC$1, 0 );
	*TREE$1 = vr$3;
	struct $7ASTNODE* vr$5 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( DESC$1, INITREE$1, 0, 64 );
	struct $7ASTNODE* vr$7 = ASTNEWLINK( *TREE$1, vr$5, 0 );
	*TREE$1 = vr$7;
	fb$result$1 = DESC$1;
	label$11:;
	return fb$result$1;
}

static struct $19AST_TMPSTRLIST_ITEM* HADDTOCOPYBACKLIST( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* TEMP$1, struct $7ASTNODE* N$1 )
{
	struct $19AST_TMPSTRLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$12:;
	struct $19AST_TMPSTRLIST_ITEM* T$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 44) );
	T$1 = (struct $19AST_TMPSTRLIST_ITEM*)vr$2;
	*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)T$1 + 8) = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)PARENT$1 + 40);
	*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)PARENT$1 + 40) = T$1;
	*(struct $8FBSYMBOL**)T$1 = TEMP$1;
	struct $7ASTNODE* vr$7 = ASTCLONETREE( N$1 );
	struct $7ASTNODE* vr$8 = ASTOPTIMIZETREE( vr$7 );
	*(struct $7ASTNODE**)((uint8*)T$1 + 4) = vr$8;
	fb$result$1 = T$1;
	label$13:;
	return fb$result$1;
}

static struct $7ASTNODE* HALLOCTMPSTRING( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1, int32 COPYBACK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $8FBSYMBOL* TEMP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
	TEMP$1 = vr$1;
	ASTDTORLISTADD( TEMP$1 );
	if( COPYBACK$1 == 0 ) goto label$17;
	{
		HADDTOCOPYBACKLIST( PARENT$1, TEMP$1, N$1 );
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TEMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$3 = ASTNEWVAR( TEMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$4 = RTLSTRASSIGN( vr$3, N$1, 0 );
	struct $7ASTNODE* vr$5 = ASTBUILDTEMPVARCLEAR( TEMP$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( vr$5, vr$4, 0 );
	struct $7ASTNODE* vr$7 = ASTNEWLINK( vr$6, vr$2, 2 );
	fb$result$1 = vr$7;
	label$15:;
	return fb$result$1;
}

static struct $7ASTNODE* HALLOCTMPWSTRPTR( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$18:;
	struct $8FBSYMBOL* TEMP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 39, (struct $8FBSYMBOL*)0u );
	TEMP$1 = vr$1;
	*($12FB_SYMBSTATS*)((uint8*)TEMP$1 + 12) = *(int32*)((uint8*)TEMP$1 + 12) | 16777216;
	ASTDTORLISTADD( TEMP$1 );
	ASTSETTYPE( N$1, 39, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$5 = ASTNEWVAR( TEMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWASSIGN( vr$5, N$1, 0 );
	fb$result$1 = vr$6;
	label$19:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKARGFORSTRINGPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* ARG$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	int32 ARGDTYPE$1;
	int32 COPYBACK$1;
	ARGDTYPE$1 = *(int32*)((uint8*)ARG$1 + 4) & 511;
	if( *(int32*)((uint8*)PARENT$1 + 24) == 0 ) goto label$23;
	{
		if( *(int32*)((uint8*)PARAM$1 + 56) != 2 ) goto label$25;
		{
			{
				if( ARGDTYPE$1 != 17 ) goto label$27;
				label$28:;
				{
					if( *(int32*)ARG$1 != 9 ) goto label$30;
					{
						fb$result$1 = ARG$1;
						goto label$21;
					}
					label$30:;
					label$29:;
				}
				goto label$26;
				label$27:;
				if( ARGDTYPE$1 == 4 ) goto label$32;
				label$33:;
				if( ARGDTYPE$1 != 18 ) goto label$31;
				label$32:;
				{
					struct $7ASTNODE* vr$6 = RTLSTRALLOCTMPDESC( ARG$1 );
					fb$result$1 = vr$6;
					goto label$21;
				}
				label$31:;
				label$26:;
			}
		}
		label$25:;
		label$24:;
	}
	label$23:;
	label$22:;
	COPYBACK$1 = 0;
	if( *(int32*)((uint8*)PARAM$1 + 56) != 2 ) goto label$35;
	{
		{
			if( ARGDTYPE$1 != 18 ) goto label$37;
			label$38:;
			{
				COPYBACK$1 = -1;
			}
			goto label$36;
			label$37:;
			if( ARGDTYPE$1 != 17 ) goto label$39;
			label$40:;
			{
				if( *(int32*)ARG$1 == 9 ) goto label$42;
				{
					fb$result$1 = ARG$1;
					goto label$21;
				}
				label$42:;
				label$41:;
			}
			label$39:;
			label$36:;
		}
	}
	label$35:;
	label$34:;
	struct $7ASTNODE* vr$9 = HALLOCTMPSTRING( PARENT$1, ARG$1, COPYBACK$1 );
	fb$result$1 = vr$9;
	label$21:;
	return fb$result$1;
}

static void HSTRARGTOSTRPTRPARAM( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1, int32 CHECKRTL$1 )
{
	label$43:;
	if( CHECKRTL$1 != 0 ) goto label$46;
	{
		if( *(int32*)((uint8*)PARENT$1 + 24) == 0 ) goto label$48;
		{
			goto label$44;
		}
		label$48:;
		label$47:;
	}
	label$46:;
	label$45:;
	{
		int32 TMP$83$2;
		TMP$83$2 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
		if( TMP$83$2 != 17 ) goto label$50;
		label$51:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 9 ) goto label$53;
			{
				struct $7ASTNODE* vr$7 = HALLOCTMPSTRING( PARENT$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0 );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$7;
			}
			label$53:;
			label$52:;
			struct $7ASTNODE* vr$10 = ASTBUILDSTRPTR( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$10;
		}
		goto label$49;
		label$50:;
		if( TMP$83$2 != 18 ) goto label$54;
		label$55:;
		{
			struct $7ASTNODE* vr$13 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			struct $7ASTNODE* vr$14 = ASTNEWCONV( 36, (struct $8FBSYMBOL*)0u, vr$13, 0, (int32*)0u );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$14;
		}
		goto label$49;
		label$54:;
		if( TMP$83$2 != 4 ) goto label$56;
		label$57:;
		{
			struct $7ASTNODE* vr$17 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$17;
		}
		goto label$49;
		label$56:;
		if( TMP$83$2 != 7 ) goto label$58;
		label$59:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 9 ) goto label$61;
			{
				struct $7ASTNODE* vr$22 = HALLOCTMPWSTRPTR( PARENT$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$22;
			}
			goto label$60;
			label$61:;
			{
				struct $7ASTNODE* vr$25 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$25;
			}
			label$60:;
		}
		label$58:;
		label$49:;
	}
	label$44:;
}

static void HCHECKBYREFPARAM( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$64:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$1 = ASTSKIPCONSTCASTS( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	T$1 = vr$1;
	if( *(int32*)T$1 != 9 ) goto label$67;
	{
		{
			uint32 TMP$84$3;
			TMP$84$3 = (uint32)(*(int32*)((uint8*)T$1 + 4) & 511);
			goto label$69;
			label$70:;
			{
				goto label$65;
			}
			goto label$68;
			label$69:;
			static const void* tmp$109[15] = {
				&&label$70,
				&&label$68,
				&&label$68,
				&&label$70,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$68,
				&&label$70,
				&&label$70,
			};
			if( (TMP$84$3 - 4u) > 14u ) goto label$68;
			goto *tmp$109[TMP$84$3 - 4u];
			label$68:;
		}
	}
	label$67:;
	label$66:;
	int32 vr$5 = ASTCANTAKEADDROF( T$1 );
	if( vr$5 != 0 ) goto label$72;
	{
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8) );
		struct $7ASTNODE* vr$12 = ASTNEWVAR( vr$11, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$13 = ASTNEWASSIGN( vr$12, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 80 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$13;
	}
	label$72:;
	label$71:;
	HBUILDBYREFARG( PARAM$1, N$1 );
	label$65:;
}

static int32 HCHECKBYDESCDIMENSIONS( struct $8FBSYMBOL* PARAM$1, struct $8FBSYMBOL* ARG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$73:;
	fb$result$1 = (-(*(int32*)((uint8*)ARG$1 + 64) == -1) | -(*(int32*)((uint8*)PARAM$1 + 68) == -1)) | -(*(int32*)((uint8*)PARAM$1 + 68) == *(int32*)((uint8*)ARG$1 + 64));
	goto label$74;
	label$74:;
	return fb$result$1;
}

static int32 HCHECKBYDESCPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$75:;
	struct $7ASTNODE* DESC_TREE$1;
	int32 ARG_DTYPE$1;
	int32 SYM_DTYPE$1;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* DESC$1;
	ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
	fb$result$1 = 0;
	if( *(int32*)((uint8*)N$1 + 24) != 1 ) goto label$78;
	{
		fb$result$1 = -1;
		goto label$76;
	}
	label$78:;
	label$77:;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12);
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$80;
	{
		goto label$76;
	}
	label$80:;
	label$79:;
	SYM_DTYPE$1 = *(int32*)((uint8*)PARAM$1 + 28) & 511;
	if( (-(*(int32*)((uint8*)PARENT$1 + 24) == 0) & -(SYM_DTYPE$1 != 0)) == 0 ) goto label$82;
	{
		int32 TMP$85$2;
		int32 TMP$86$2;
		int32 TMP$87$2;
		int32 TMP$88$2;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$83;
		TMP$85$2 = 24;
		goto label$336;
		label$83:;
		TMP$85$2 = ARG_DTYPE$1 & 31;
		label$336:;
		if( (SYM_DTYPE$1 & 480) == 0 ) goto label$84;
		TMP$86$2 = 24;
		goto label$337;
		label$84:;
		TMP$86$2 = SYM_DTYPE$1 & 31;
		label$337:;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$85;
		TMP$87$2 = 24;
		goto label$338;
		label$85:;
		TMP$87$2 = ARG_DTYPE$1 & 31;
		label$338:;
		if( (SYM_DTYPE$1 & 480) == 0 ) goto label$86;
		TMP$88$2 = 24;
		goto label$339;
		label$86:;
		TMP$88$2 = SYM_DTYPE$1 & 31;
		label$339:;
		if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$85$2 * 28)) != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$2 * 28))) | -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$87$2 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$2 * 28)) + 4))) == 0 ) goto label$88;
		{
			goto label$76;
		}
		label$88:;
		label$87:;
	}
	label$82:;
	label$81:;
	if( (-(SYM_DTYPE$1 == 20) & -(ARG_DTYPE$1 == 20)) == 0 ) goto label$90;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8) == *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) ) goto label$92;
		{
			ERRREPORT( 58, 0, (uint8*)0u );
			goto label$76;
		}
		label$92:;
		label$91:;
	}
	label$90:;
	label$89:;
	if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 17 ) goto label$94;
	{
		if( (*(int32*)((uint8*)S$1 + 4) & 16384) == 0 ) goto label$96;
		{
			int32 vr$38 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$38 != 0 ) goto label$98;
			{
				goto label$76;
			}
			label$98:;
			label$97:;
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 64), 52, *(struct $8FBSYMBOL**)((uint8*)S$1 + 92) );
			fb$result$1 = -1;
			goto label$76;
		}
		label$96:;
		label$95:;
		DESC$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 88);
		if( DESC$1 == (struct $8FBSYMBOL*)0u ) goto label$100;
		{
			int32 vr$42 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$42 != 0 ) goto label$102;
			{
				goto label$76;
			}
			label$102:;
			label$101:;
			ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			struct $7ASTNODE* vr$44 = ASTNEWVAR( DESC$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$45 = ASTNEWADDROF( vr$44 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$45;
			fb$result$1 = -1;
			goto label$76;
		}
		label$100:;
		label$99:;
	}
	goto label$93;
	label$94:;
	if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 19 ) goto label$103;
	{
		if( (*(int32*)((uint8*)S$1 + 4) & 4) == 0 ) goto label$105;
		{
			int32 vr$51 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$51 != 0 ) goto label$107;
			{
				goto label$76;
			}
			label$107:;
			label$106:;
			DESC$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 88);
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 64), *(int32*)((uint8*)DESC$1 + 28), *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 32) );
			struct $7ASTNODE* vr$57 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$57;
			fb$result$1 = -1;
			goto label$76;
		}
		goto label$104;
		label$105:;
		if( *(int32*)((uint8*)S$1 + 64) <= 0 ) goto label$108;
		{
			int32 vr$60 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$60 != 0 ) goto label$110;
			{
				goto label$76;
			}
			label$110:;
			label$109:;
			struct $8FBSYMBOL* vr$63 = HALLOCTMPARRAYDESC( S$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), &DESC_TREE$1 );
			DESC$1 = vr$63;
			struct $7ASTNODE* vr$64 = ASTNEWVAR( DESC$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$65 = ASTNEWADDROF( vr$64 );
			struct $7ASTNODE* vr$66 = ASTNEWLINK( vr$65, DESC_TREE$1, 1 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$66;
			fb$result$1 = -1;
			goto label$76;
		}
		label$108:;
		label$104:;
	}
	label$103:;
	label$93:;
	label$76:;
	return fb$result$1;
}

static int32 HCHECKVARARGPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$111:;
	int32 ARG_DTYPE$1;
	ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
	{
		int32 TMP$89$2;
		uint32 TMP$90$2;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$113;
		TMP$89$2 = 24;
		goto label$340;
		label$113:;
		TMP$89$2 = ARG_DTYPE$1 & 31;
		label$340:;
		TMP$90$2 = *(uint32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 28));
		goto label$115;
		label$116:;
		{
			HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0 );
		}
		goto label$114;
		label$117:;
		{
			{
				if( ARG_DTYPE$1 == 4 ) goto label$120;
				label$121:;
				if( ARG_DTYPE$1 != 7 ) goto label$119;
				label$120:;
				{
					HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0 );
				}
				goto label$118;
				label$119:;
				{
					int32 TMP$91$5;
					if( (ARG_DTYPE$1 & 480) == 0 ) goto label$123;
					TMP$91$5 = 24;
					goto label$341;
					label$123:;
					TMP$91$5 = ARG_DTYPE$1 & 31;
					label$341:;
					if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$5 * 28)) + 4) >= 4 ) goto label$125;
					{
						int32 TMP$92$6;
						$11FB_DATATYPE TMP$93$6;
						if( (ARG_DTYPE$1 & 480) == 0 ) goto label$126;
						TMP$92$6 = 24;
						goto label$342;
						label$126:;
						TMP$92$6 = ARG_DTYPE$1 & 31;
						label$342:;
						if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$6 * 28)) + 8) == 0 ) goto label$127;
						TMP$93$6 = 11;
						goto label$343;
						label$127:;
						TMP$93$6 = 12;
						label$343:;
						struct $7ASTNODE* vr$14 = ASTNEWCONV( TMP$93$6, (struct $8FBSYMBOL*)0u, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0, (int32*)0u );
						*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$14;
					}
					label$125:;
					label$124:;
				}
				label$122:;
				label$118:;
			}
		}
		goto label$114;
		label$128:;
		{
			if( ARG_DTYPE$1 != 15 ) goto label$130;
			{
				struct $7ASTNODE* vr$17 = ASTNEWCONV( 16, (struct $8FBSYMBOL*)0u, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0, (int32*)0u );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$17;
			}
			label$130:;
			label$129:;
		}
		goto label$114;
		label$131:;
		{
			ERRREPORT( 58, 0, (uint8*)0u );
			fb$result$1 = 0;
			goto label$112;
		}
		goto label$114;
		label$115:;
		static const void* tmp$110[3] = {
			&&label$117,
			&&label$128,
			&&label$116,
		};
		if( TMP$90$2 > 2u ) goto label$131;
		goto *tmp$110[TMP$90$2 - 0u];
		label$114:;
	}
	fb$result$1 = -1;
	label$112:;
	return fb$result$1;
}

static void HCHECKVOIDPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$132:;
	if( *(int32*)((uint8*)N$1 + 24) != 1 ) goto label$135;
	{
		HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0 );
		goto label$133;
	}
	label$135:;
	label$134:;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$137;
	{
		if( (-(*(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) == 16) | -(*(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) == 23)) == 0 ) goto label$139;
		{
			goto label$133;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	HCHECKBYREFPARAM( PARAM$1, N$1 );
	label$133:;
}

static int32 HCHECKSTRPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$140:;
	int32 ARGDTYPE$1;
	ARGDTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
	{
		uint32 TMP$94$2;
		TMP$94$2 = (uint32)ARGDTYPE$1;
		goto label$143;
		label$144:;
		{
		}
		goto label$142;
		label$145:;
		{
		}
		goto label$142;
		label$146:;
		{
			ERRREPORT( 58, 0, (uint8*)0u );
			fb$result$1 = 0;
			goto label$141;
		}
		goto label$142;
		label$143:;
		static const void* tmp$111[15] = {
			&&label$145,
			&&label$146,
			&&label$146,
			&&label$145,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$146,
			&&label$144,
			&&label$144,
		};
		if( (TMP$94$2 - 4u) > 14u ) goto label$146;
		goto *tmp$111[TMP$94$2 - 4u];
		label$142:;
	}
	struct $7ASTNODE* vr$5 = HCHECKARGFORSTRINGPARAM( PARENT$1, PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$5;
	{
		$12FB_PARAMMODE TMP$95$2;
		TMP$95$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
		if( TMP$95$2 != 2 ) goto label$148;
		label$149:;
		{
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) == 9 ) goto label$151;
			{
				HBUILDBYREFARG( PARAM$1, N$1 );
			}
			label$151:;
			label$150:;
		}
		goto label$147;
		label$148:;
		if( TMP$95$2 != 1 ) goto label$152;
		label$153:;
		{
			HBUILDBYREFARG( PARAM$1, N$1 );
		}
		label$152:;
		label$147:;
	}
	fb$result$1 = -1;
	label$141:;
	return fb$result$1;
}

static void HBYTEBYBYTE( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$154:;
	*(int64*)((uint8*)N$1 + 32) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) + 40);
	label$155:;
}

static void HUDTPASSBYVAL( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$156:;
	struct $8FBSYMBOL* TMP$1;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* CALLEXPR$1;
	int32 IS_CTORCALL$1;
	struct $7ASTNODE* vr$1 = ASTSKIPNOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	T$1 = vr$1;
	int32 vr$3 = SYMBCOMPISTRIVIAL( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
	if( vr$3 == 0 ) goto label$159;
	{
		if( *(int32*)T$1 != 9 ) goto label$161;
		{
			struct $7ASTNODE* vr$6 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$6;
			int32 vr$10 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12) );
			if( vr$10 == 0 ) goto label$163;
			{
				struct $7ASTNODE* vr$12 = ASTBUILDCALLRESULTVAR( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$12;
				HBYTEBYBYTE( PARAM$1, N$1 );
			}
			goto label$162;
			label$163:;
			{
				ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 64), *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12) + 88), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12) + 92) );
			}
			label$162:;
		}
		goto label$160;
		label$161:;
		{
			HBYTEBYBYTE( PARAM$1, N$1 );
		}
		label$160:;
		goto label$157;
	}
	label$159:;
	label$158:;
	struct $8FBSYMBOL* vr$23 = SYMBADDTEMPVAR( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
	TMP$1 = vr$23;
	ASTDTORLISTADD( TMP$1 );
	if( *(int32*)T$1 != 36 ) goto label$165;
	{
		struct $7ASTNODE* vr$26 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$26;
		struct $7ASTNODE* vr$28 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$30 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( TMP$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), -1, 64 );
		struct $7ASTNODE* vr$31 = ASTNEWLINK( vr$30, vr$28, 2 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$31;
	}
	goto label$164;
	label$165:;
	{
		struct $7ASTNODE* vr$36 = ASTBUILDIMPLICITCTORCALLEX( PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), *($12FB_PARAMMODE*)((uint8*)N$1 + 24), &IS_CTORCALL$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$36;
		if( IS_CTORCALL$1 == 0 ) goto label$167;
		{
			struct $7ASTNODE* vr$38 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$39 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$41 = ASTPATCHCTORCALL( *(struct $7ASTNODE**)((uint8*)N$1 + 64), vr$39 );
			struct $7ASTNODE* vr$42 = ASTNEWCALLCTOR( vr$41, vr$38 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$42;
		}
		goto label$166;
		label$167:;
		{
			struct $7ASTNODE* vr$44 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$46 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$47 = ASTNEWASSIGN( vr$46, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 64 );
			struct $7ASTNODE* vr$48 = ASTNEWLINK( vr$47, vr$44, 2 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$48;
		}
		label$166:;
	}
	label$164:;
	HBUILDBYREFARG( PARAM$1, N$1 );
	label$157:;
}

static int32 HIMPLICITCTOR( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$168:;
	static int32 REC_CNT$1 = 0;
	struct $7ASTNODE* ARG$1;
	struct $8FBSYMBOL* TMP$1;
	int32 IS_CTORCALL$1;
	int32 vr$1 = SYMBHASCTOR( PARAM$1 );
	if( vr$1 != 0 ) goto label$171;
	{
		goto label$169;
	}
	label$171:;
	label$170:;
	if( REC_CNT$1 == 0 ) goto label$173;
	{
		goto label$169;
	}
	label$173:;
	label$172:;
	REC_CNT$1 = REC_CNT$1 + 1;
	struct $7ASTNODE* vr$6 = ASTBUILDIMPLICITCTORCALLEX( PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), *($12FB_PARAMMODE*)((uint8*)N$1 + 24), &IS_CTORCALL$1 );
	ARG$1 = vr$6;
	REC_CNT$1 = REC_CNT$1 + -1;
	if( IS_CTORCALL$1 != 0 ) goto label$175;
	{
		goto label$169;
	}
	label$175:;
	label$174:;
	struct $8FBSYMBOL* vr$10 = SYMBADDTEMPVAR( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
	TMP$1 = vr$10;
	ASTDTORLISTADD( TMP$1 );
	struct $7ASTNODE* vr$11 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$13 = ASTPATCHCTORCALL( ARG$1, vr$12 );
	struct $7ASTNODE* vr$14 = ASTNEWCALLCTOR( vr$13, vr$11 );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$14;
	if( *(int32*)((uint8*)PARAM$1 + 56) != 1 ) goto label$177;
	{
		HUDTPASSBYVAL( PARAM$1, N$1 );
	}
	goto label$176;
	label$177:;
	{
		HBUILDBYREFARG( PARAM$1, N$1 );
	}
	label$176:;
	fb$result$1 = -1;
	label$169:;
	return fb$result$1;
}

static int32 HCHECKUDTPARAM( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$178:;
	struct $8FBSYMBOL* TMP$1;
	if( (*(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511) == 20 ) goto label$181;
	{
		int32 vr$4 = HIMPLICITCTOR( PARAM$1, N$1 );
		if( vr$4 != 0 ) goto label$183;
		{
			ERRREPORT( 58, 0, (uint8*)0u );
			fb$result$1 = 0;
			goto label$179;
		}
		label$183:;
		label$182:;
		fb$result$1 = -1;
		goto label$179;
	}
	label$181:;
	label$180:;
	if( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8) == *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) ) goto label$185;
	{
		int32 vr$11 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) );
		if( vr$11 != 0 ) goto label$187;
		{
			int32 vr$12 = HIMPLICITCTOR( PARAM$1, N$1 );
			if( vr$12 != 0 ) goto label$189;
			{
				struct $7ASTNODE* vr$17 = ASTNEWCONV( *(int32*)((uint8*)PARAM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0, (int32*)0u );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$17;
				if( *(struct $7ASTNODE**)((uint8*)N$1 + 64) != (struct $7ASTNODE*)0u ) goto label$191;
				{
					ERRREPORT( 58, 0, (uint8*)0u );
					fb$result$1 = 0;
					goto label$179;
				}
				label$191:;
				label$190:;
			}
			goto label$188;
			label$189:;
			{
				fb$result$1 = -1;
				goto label$179;
			}
			label$188:;
		}
		goto label$186;
		label$187:;
		{
			struct $7ASTNODE* vr$24 = ASTNEWCONV( *(int32*)((uint8*)PARAM$1 + 28) & 511, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0, (int32*)0u );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$24;
		}
		label$186:;
	}
	label$185:;
	label$184:;
	{
		$12FB_PARAMMODE TMP$96$2;
		TMP$96$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
		if( TMP$96$2 != 2 ) goto label$193;
		label$194:;
		{
			struct $7ASTNODE* vr$28 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$28;
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 9 ) goto label$196;
			{
				int32 vr$34 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12) );
				if( vr$34 != 0 ) goto label$198;
				{
					struct $8FBSYMBOL* vr$40 = SYMBADDTEMPVAR( *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511, *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8) );
					TMP$1 = vr$40;
					struct $7ASTNODE* vr$41 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0u, 0ll );
					struct $7ASTNODE* vr$42 = ASTNEWADDROF( vr$41 );
					struct $7ASTNODE* vr$44 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0u, 0ll );
					struct $7ASTNODE* vr$45 = ASTNEWASSIGN( vr$44, *(struct $7ASTNODE**)((uint8*)N$1 + 64), 96 );
					struct $7ASTNODE* vr$46 = ASTNEWLINK( vr$45, vr$42, 2 );
					*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$46;
					*(int32*)((uint8*)N$1 + 24) = 1;
					fb$result$1 = -1;
					goto label$179;
				}
				label$198:;
				label$197:;
			}
			label$196:;
			label$195:;
			HBUILDBYREFARG( PARAM$1, N$1 );
		}
		goto label$192;
		label$193:;
		if( TMP$96$2 != 1 ) goto label$199;
		label$200:;
		{
			HUDTPASSBYVAL( PARAM$1, N$1 );
		}
		label$199:;
		label$192:;
	}
	fb$result$1 = -1;
	label$179:;
	return fb$result$1;
}

static int32 HCHECKPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$201:;
	int32 PARAM_DTYPE$1;
	int32 ARG_DTYPE$1;
	fb$result$1 = 0;
	struct $7ASTNODE* vr$2 = ASTUPDSTRCONCAT( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$2;
	PARAM_DTYPE$1 = *(int32*)((uint8*)PARAM$1 + 28) & 511;
	ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
	{
		$12FB_PARAMMODE TMP$97$2;
		TMP$97$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56);
		if( TMP$97$2 != 3 ) goto label$204;
		label$205:;
		{
			int32 vr$10 = HCHECKBYDESCPARAM( PARENT$1, PARAM$1, N$1 );
			if( vr$10 != 0 ) goto label$207;
			{
				ERRREPORT( 58, 0, (uint8*)0u );
				goto label$202;
			}
			label$207:;
			label$206:;
			fb$result$1 = -1;
			goto label$202;
		}
		goto label$203;
		label$204:;
		if( TMP$97$2 != 4 ) goto label$208;
		label$209:;
		{
			int32 vr$11 = HCHECKVARARGPARAM( PARENT$1, PARAM$1, N$1 );
			fb$result$1 = vr$11;
			goto label$202;
		}
		goto label$203;
		label$208:;
		if( TMP$97$2 != 2 ) goto label$210;
		label$211:;
		{
			int32 TMP$100$3;
			if( PARAM_DTYPE$1 != 0 ) goto label$213;
			{
				HCHECKVOIDPARAM( PARENT$1, PARAM$1, N$1 );
				fb$result$1 = -1;
				goto label$202;
			}
			label$213:;
			label$212:;
			if( *(int32*)((uint8*)N$1 + 24) != 1 ) goto label$215;
			{
				int32 TMP$98$4;
				int32 TMP$99$4;
				if( (ARG_DTYPE$1 & 480) == 0 ) goto label$216;
				TMP$98$4 = 24;
				goto label$344;
				label$216:;
				TMP$98$4 = ARG_DTYPE$1 & 31;
				label$344:;
				if( (ARG_DTYPE$1 & 480) == 0 ) goto label$217;
				TMP$99$4 = 24;
				goto label$345;
				label$217:;
				TMP$99$4 = ARG_DTYPE$1 & 31;
				label$345:;
				if( (-(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$4 * 28)) != 0) | -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$4 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 296))) == 0 ) goto label$219;
				{
					ERRREPORT( 58, 0, (uint8*)0u );
					goto label$202;
				}
				label$219:;
				label$218:;
				fb$result$1 = -1;
				goto label$202;
			}
			label$215:;
			label$214:;
			if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) != 19 ) goto label$220;
			TMP$100$3 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 12) + 116) > 0);
			goto label$346;
			label$220:;
			TMP$100$3 = 0;
			label$346:;
			if( TMP$100$3 == 0 ) goto label$222;
			{
				ERRREPORT( 58, 0, (uint8*)0u );
				goto label$202;
			}
			label$222:;
			label$221:;
		}
		label$210:;
		label$203:;
	}
	{
		if( ARG_DTYPE$1 != 20 ) goto label$224;
		label$225:;
		{
			int32 ERR_NUM$3;
			struct $8FBSYMBOL* PROC$3;
			if( *(int32*)((uint8*)PARAM$1 + 56) != 1 ) goto label$227;
			{
				struct $8FBSYMBOL* vr$33 = SYMBFINDCTOROVLPROC( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 56), ($9FB_ERRMSG*)&ERR_NUM$3, 32 );
				PROC$3 = vr$33;
				if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$229;
				{
					int32 vr$34 = HCHECKUDTPARAM( PARAM$1, N$1 );
					fb$result$1 = vr$34;
					goto label$202;
				}
				label$229:;
				label$228:;
			}
			label$227:;
			label$226:;
			struct $8FBSYMBOL* vr$39 = SYMBFINDCASTOVLPROC( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), ($9FB_ERRMSG*)&ERR_NUM$3, 0 );
			PROC$3 = vr$39;
			if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$231;
			{
				static int32 REC_CNT$4 = 0;
				if( REC_CNT$4 != 0 ) goto label$233;
				{
					REC_CNT$4 = REC_CNT$4 + 1;
					struct $7ASTNODE* vr$42 = ASTBUILDCALL( PROC$3, *(struct $7ASTNODE**)((uint8*)N$1 + 64), (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u );
					*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$42;
					REC_CNT$4 = REC_CNT$4 + -1;
					ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
				}
				label$233:;
				label$232:;
			}
			label$231:;
			label$230:;
		}
		label$224:;
		label$223:;
	}
	{
		if( PARAM_DTYPE$1 != 17 ) goto label$235;
		label$236:;
		{
			int32 vr$48 = HCHECKSTRPARAM( PARENT$1, PARAM$1, N$1 );
			fb$result$1 = vr$48;
			goto label$202;
		}
		goto label$234;
		label$235:;
		if( PARAM_DTYPE$1 == 4 ) goto label$238;
		label$239:;
		if( PARAM_DTYPE$1 != 7 ) goto label$237;
		label$238:;
		{
			{
				if( ARG_DTYPE$1 == 17 ) goto label$242;
				label$243:;
				if( ARG_DTYPE$1 == 18 ) goto label$242;
				label$244:;
				if( ARG_DTYPE$1 == 4 ) goto label$242;
				label$245:;
				if( ARG_DTYPE$1 != 7 ) goto label$241;
				label$242:;
				{
				}
				goto label$240;
				label$241:;
				{
					ERRREPORT( 58, 0, (uint8*)0u );
					goto label$202;
				}
				label$246:;
				label$240:;
			}
		}
		goto label$234;
		label$237:;
		if( PARAM_DTYPE$1 != 20 ) goto label$247;
		label$248:;
		{
			int32 vr$49 = HCHECKUDTPARAM( PARAM$1, N$1 );
			fb$result$1 = vr$49;
			goto label$202;
		}
		label$247:;
		label$234:;
	}
	{
		uint32 TMP$101$2;
		TMP$101$2 = (uint32)ARG_DTYPE$1;
		goto label$250;
		label$251:;
		{
			{
				if( PARAM_DTYPE$1 == 36 ) goto label$254;
				label$255:;
				if( PARAM_DTYPE$1 != 4 ) goto label$253;
				label$254:;
				{
					if( ARG_DTYPE$1 != 7 ) goto label$257;
					{
						struct $7ASTNODE* vr$51 = RTLTOSTR( *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0 );
						*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$51;
					}
					label$257:;
					label$256:;
				}
				goto label$252;
				label$253:;
				if( PARAM_DTYPE$1 == 39 ) goto label$259;
				label$260:;
				if( PARAM_DTYPE$1 != 7 ) goto label$258;
				label$259:;
				{
					if( ARG_DTYPE$1 == 7 ) goto label$262;
					{
						struct $7ASTNODE* vr$54 = RTLTOWSTR( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
						*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$54;
					}
					label$262:;
					label$261:;
				}
				goto label$252;
				label$258:;
				{
					ERRREPORT( 58, 0, (uint8*)0u );
					goto label$202;
				}
				label$263:;
				label$252:;
			}
			HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, -1 );
			if( (PARAM_DTYPE$1 & 480) != 0 ) goto label$265;
			{
				struct $7ASTNODE* vr$58 = ASTNEWDEREF( *(struct $7ASTNODE**)((uint8*)N$1 + 64), -2147483648u, (struct $8FBSYMBOL*)0u, 0ll );
				*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$58;
			}
			label$265:;
			label$264:;
			ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
		}
		goto label$249;
		label$266:;
		{
			ERRREPORT( 58, 0, (uint8*)0u );
			goto label$202;
		}
		goto label$249;
		label$250:;
		static const void* tmp$112[17] = {
			&&label$251,
			&&label$249,
			&&label$249,
			&&label$251,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$249,
			&&label$251,
			&&label$251,
			&&label$249,
			&&label$266,
		};
		if( (TMP$101$2 - 4u) > 16u ) goto label$249;
		goto *tmp$112[TMP$101$2 - 4u];
		label$249:;
	}
	if( (-(PARAM_DTYPE$1 == 10) | -(ARG_DTYPE$1 == 10)) == 0 ) goto label$268;
	{
		int32 TMP$102$2;
		int32 TMP$103$2;
		if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$269;
		TMP$102$2 = 24;
		goto label$347;
		label$269:;
		TMP$102$2 = PARAM_DTYPE$1 & 31;
		label$347:;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$270;
		TMP$103$2 = 24;
		goto label$348;
		label$270:;
		TMP$103$2 = ARG_DTYPE$1 & 31;
		label$348:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$2 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$2 * 28)) ) goto label$272;
		{
			ERRREPORTWARN( 5, (uint8*)0u, 1, (uint8*)0u );
		}
		label$272:;
		label$271:;
	}
	label$268:;
	label$267:;
	if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$274;
	{
		int32 vr$77 = ASTPTRCHECK( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(int32*)((uint8*)PARAM$1 + 56), *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
		if( vr$77 != 0 ) goto label$276;
		{
			if( (ARG_DTYPE$1 & 480) != 0 ) goto label$278;
			{
				ERRREPORTWARN( 1, (uint8*)0u, 1, (uint8*)0u );
			}
			goto label$277;
			label$278:;
			{
				if( (-((PARAM_DTYPE$1 & 31) == 20) & -((ARG_DTYPE$1 & 31) == 20)) == 0 ) goto label$280;
				{
					int32 vr$87 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8) );
					if( vr$87 <= 0 ) goto label$282;
					{
						ERRREPORT( 24, 0, (uint8*)0u );
						goto label$202;
					}
					goto label$281;
					label$282:;
					{
						ERRREPORTWARN( 3, (uint8*)0u, 1, (uint8*)0u );
					}
					label$281:;
				}
				goto label$279;
				label$280:;
				{
					ERRREPORTWARN( 3, (uint8*)0u, 1, (uint8*)0u );
				}
				label$279:;
			}
			label$277:;
		}
		label$276:;
		label$275:;
	}
	goto label$273;
	label$274:;
	if( (ARG_DTYPE$1 & 480) == 0 ) goto label$283;
	{
		ERRREPORTWARN( 2, (uint8*)0u, 1, (uint8*)0u );
	}
	label$283:;
	label$273:;
	if( (-(PARAM_DTYPE$1 != ARG_DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) != *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 8))) == 0 ) goto label$285;
	{
		int32 TMP$104$2;
		int32 TMP$105$2;
		int32 TMP$106$2;
		int32 TMP$107$2;
		if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$286;
		TMP$104$2 = 24;
		goto label$349;
		label$286:;
		TMP$104$2 = PARAM_DTYPE$1 & 31;
		label$349:;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$287;
		TMP$105$2 = 24;
		goto label$350;
		label$287:;
		TMP$105$2 = ARG_DTYPE$1 & 31;
		label$350:;
		if( (PARAM_DTYPE$1 & 480) == 0 ) goto label$288;
		TMP$106$2 = 24;
		goto label$351;
		label$288:;
		TMP$106$2 = PARAM_DTYPE$1 & 31;
		label$351:;
		if( (ARG_DTYPE$1 & 480) == 0 ) goto label$289;
		TMP$107$2 = 24;
		goto label$352;
		label$289:;
		TMP$107$2 = ARG_DTYPE$1 & 31;
		label$352:;
		if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$2 * 28)) + 4) != *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$2 * 28)) + 4)) | -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$106$2 * 28)) != *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$107$2 * 28)))) == 0 ) goto label$291;
		{
			if( *(int32*)((uint8*)PARAM$1 + 56) != 2 ) goto label$293;
			{
				struct $7ASTNODE* vr$112 = ASTSKIPNOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
				int32 vr$113 = ASTCANTAKEADDROF( vr$112 );
				if( vr$113 == 0 ) goto label$295;
				{
					ERRREPORT( 58, 0, (uint8*)0u );
					goto label$202;
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
		}
		label$291:;
		label$290:;
		struct $7ASTNODE* vr$117 = ASTNEWCONV( *(int32*)((uint8*)PARAM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32), *(struct $7ASTNODE**)((uint8*)N$1 + 64), 0, (int32*)0u );
		*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$117;
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 64) != (struct $7ASTNODE*)0u ) goto label$297;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			goto label$202;
		}
		label$297:;
		label$296:;
		ARG_DTYPE$1 = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 4) & 511;
	}
	label$285:;
	label$284:;
	if( *(int32*)((uint8*)PARAM$1 + 56) != 2 ) goto label$299;
	{
		HCHECKBYREFPARAM( PARAM$1, N$1 );
	}
	label$299:;
	label$298:;
	fb$result$1 = -1;
	label$202:;
	return fb$result$1;
}

static struct $7ASTNODE* HCREATEOPTARG( struct $8FBSYMBOL* PARAM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$300:;
	struct $7ASTNODE* TREE$1;
	TREE$1 = *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64);
	if( TREE$1 != (struct $7ASTNODE*)0u ) goto label$303;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$301;
	}
	label$303:;
	label$302:;
	if( *(int32*)TREE$1 != 36 ) goto label$305;
	{
		struct $7ASTNODE* vr$3 = ASTTYPEINICLONE( TREE$1 );
		TREE$1 = vr$3;
		struct $7ASTNODE* vr$4 = ASTTYPEINITRYREMOVE( TREE$1 );
		TREE$1 = vr$4;
	}
	goto label$304;
	label$305:;
	{
		struct $7ASTNODE* vr$5 = ASTCLONETREE( TREE$1 );
		TREE$1 = vr$5;
	}
	label$304:;
	fb$result$1 = TREE$1;
	label$301:;
	return fb$result$1;
}
