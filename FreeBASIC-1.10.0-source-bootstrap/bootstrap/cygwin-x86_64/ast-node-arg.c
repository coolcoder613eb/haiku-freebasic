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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astznodezarg( void ) __attribute__(( constructor ));
void* LISTNEWNODE( struct $5TLIST* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRPUSHPARAMLOCATION( struct $8FBSYMBOL*, int64, int64, uint8* );
void ERRPOPPARAMLOCATION( void );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTPTRCHECK( int64, struct $8FBSYMBOL*, int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTSKIPCONSTCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWCALLCTOR( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWDECL( struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTOPTIMIZETREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTUPDSTRCONCAT( struct $7ASTNODE* );
struct $7ASTNODE* _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( struct $8FBSYMBOL*, struct $7ASTNODE*, int64, int64 );
struct $7ASTNODE* ASTTYPEINICLONE( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINITRYREMOVE( struct $7ASTNODE* );
int64 ASTCANTAKEADDROF( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALL( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDIMPLICITCTORCALLEX( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, int64* );
struct $7ASTNODE* ASTBUILDARRAYDESCINITREE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDSTRPTR( struct $7ASTNODE* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDCALLRESULTVAR( struct $7ASTNODE* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCASTOVLPROC( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDCTOROVLPROC( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESC( struct $8FBSYMBOL* );
int64 SYMBPROCRETURNSONSTACK( struct $8FBSYMBOL* );
int64 SYMBHASCTOR( struct $8FBSYMBOL* );
int64 SYMBCOMPISTRIVIAL( struct $8FBSYMBOL* );
int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLSTRALLOCTMPDESC( struct $7ASTNODE* );
struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* );
static struct $8FBSYMBOL* HALLOCTMPARRAYDESC( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE** );
static struct $19AST_TMPSTRLIST_ITEM* HADDTOCOPYBACKLIST( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HALLOCTMPSTRING( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static struct $7ASTNODE* HALLOCTMPWSTRPTR( struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HCHECKARGFORSTRINGPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HSTRARGTOSTRPTRPARAM( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
void HBUILDBYREFARG( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HCHECKBYREFPARAM( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HCHECKBYDESCDIMENSIONS( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int64 HCHECKBYDESCPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HCHECKVARARGPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HCHECKVOIDPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HCHECKSTRPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HBYTEBYBYTE( struct $8FBSYMBOL*, struct $7ASTNODE* );
static void HUDTPASSBYVAL( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HIMPLICITCTOR( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HCHECKUDTPARAM( struct $8FBSYMBOL*, struct $7ASTNODE* );
static int64 HCHECKPARAM( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE* );
static struct $7ASTNODE* HCREATEOPTARG( struct $8FBSYMBOL* );
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
struct $8FBARRAY2IlE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2IlE ) == 96 );
static struct $8FBARRAY2IlE tmp$82$;
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

void HBUILDBYREFARG( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$62:;
	struct $7ASTNODE* vr$1 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	struct $7ASTNODE* vr$2 = ASTNEWADDROF( vr$1 );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$2;
	struct $7ASTNODE* vr$19 = ASTNEWCONV( (((*(int64*)((uint8*)PARAM$1 + 56ll) & 31ll) | ((*(int64*)((uint8*)PARAM$1 + 56ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)PARAM$1 + 56ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)PARAM$1 + 56ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 16ll, (int64*)0ull );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$19;
	*(int64*)((uint8*)N$1 + 40ll) = 1ll;
	label$63:;
}

struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* ARG$1, int64 DTYPE$1, int64 MODE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$306:;
	struct $7ASTNODE* N$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARAM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 24ll);
	if( *(int64*)((uint8*)PARENT$1 + 48ll) < (int64)*(int16*)((uint8*)SYM$1 + 120ll) ) goto label$309;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 144ll);
	}
	goto label$308;
	label$309:;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 56ll);
	}
	label$308:;
	if( ARG$1 != (struct $7ASTNODE*)0ull ) goto label$311;
	{
		struct $7ASTNODE* vr$7 = HCREATEOPTARG( PARAM$1 );
		ARG$1 = vr$7;
		if( ARG$1 != (struct $7ASTNODE*)0ull ) goto label$313;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$307;
		}
		label$313:;
		label$312:;
	}
	label$311:;
	label$310:;
	if( DTYPE$1 != 2147483648ll ) goto label$315;
	{
		DTYPE$1 = *(int64*)((uint8*)ARG$1 + 8ll);
	}
	label$315:;
	label$314:;
	if( ((int64)-((*(int64*)((uint8*)PARAM$1 + 8ll) & 524288ll) == 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 16ll) & 1024ll) == 0ll)) == 0ll ) goto label$317;
	{
		int64 TMP$109$2;
		TMP$109$2 = 0ll;
		int64 vr$21 = SYMBCHECKCONSTASSIGNTOPLEVEL( *($11FB_DATATYPE*)((uint8*)PARAM$1 + 56ll), DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $8FBSYMBOL**)((uint8*)ARG$1 + 16ll), *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll), &TMP$109$2 );
		if( vr$21 != 0ll ) goto label$319;
		{
			if( (*(int64*)((uint8*)PARAM$1 + 8ll) & 524288ll) == 0ll ) goto label$321;
			{
				ERRREPORTPARAM( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 24ll), 0ll, (uint8*)0ull, 276ll );
			}
			goto label$320;
			label$321:;
			{
				ERRREPORTPARAM( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 24ll), *(int64*)((uint8*)PARENT$1 + 48ll) + 1ll, (uint8*)0ull, 181ll );
			}
			label$320:;
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$307;
		}
		label$319:;
		label$318:;
	}
	label$317:;
	label$316:;
	struct $7ASTNODE* vr$28 = ASTNEWNODE( 22ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$28;
	fb$result$1 = N$1;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = PARAM$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = ARG$1;
	*(int64*)((uint8*)N$1 + 40ll) = MODE$1;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	if( *(int64*)((uint8*)SYM$1 + 152ll) != 4ll ) goto label$323;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll) != (struct $7ASTNODE*)0ull ) goto label$325;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll) = N$1;
		}
		goto label$324;
		label$325:;
		{
			*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)PARENT$1 + 64ll) + 120ll) = N$1;
		}
		label$324:;
		*(struct $7ASTNODE**)((uint8*)PARENT$1 + 64ll) = N$1;
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
	}
	goto label$322;
	label$323:;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll) != (struct $7ASTNODE*)0ull ) goto label$327;
		{
			*(struct $7ASTNODE**)((uint8*)PARENT$1 + 64ll) = N$1;
		}
		label$327:;
		label$326:;
		*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll);
		*(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll) = N$1;
	}
	label$322:;
	ERRPUSHPARAMLOCATION( *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 24ll), -1ll, *(int64*)((uint8*)PARENT$1 + 48ll) + 1ll, (uint8*)0ull );
	int64 vr$48 = HCHECKPARAM( PARENT$1, PARAM$1, N$1 );
	if( vr$48 != 0ll ) goto label$329;
	{
		ERRPOPPARAMLOCATION(  );
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$307;
	}
	label$329:;
	label$328:;
	ERRPOPPARAMLOCATION(  );
	*(int64*)((uint8*)PARENT$1 + 48ll) = *(int64*)((uint8*)PARENT$1 + 48ll) + 1ll;
	if( *(int64*)((uint8*)PARENT$1 + 48ll) >= (int64)*(int16*)((uint8*)SYM$1 + 120ll) ) goto label$331;
	{
		*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 56ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 56ll) + 312ll);
	}
	label$331:;
	label$330:;
	label$307:;
	return fb$result$1;
}

void ASTREPLACEINSTANCEARG( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* EXPR$1, int64 MODE$1 )
{
	label$332:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARAM$1;
	struct $7ASTNODE* N$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 24ll);
	if( *(int64*)((uint8*)SYM$1 + 152ll) != 4ll ) goto label$335;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 120ll);
	}
	goto label$334;
	label$335:;
	{
		N$1 = *(struct $7ASTNODE**)((uint8*)PARENT$1 + 64ll);
	}
	label$334:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 136ll);
	ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = EXPR$1;
	*(int64*)((uint8*)N$1 + 40ll) = MODE$1;
	*(int64*)((uint8*)N$1 + 48ll) = 0ll;
	HCHECKPARAM( PARENT$1, PARAM$1, N$1 );
	label$333:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $8FBSYMBOL* HALLOCTMPARRAYDESC( struct $8FBSYMBOL* ARRAY$1, struct $7ASTNODE* ARRAY_EXPR$1, struct $7ASTNODE** TREE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $8FBSYMBOL* DESC$1;
	struct $7ASTNODE* INITREE$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDARRAYDESC( ARRAY$1 );
	DESC$1 = vr$1;
	struct $7ASTNODE* vr$2 = ASTBUILDARRAYDESCINITREE( DESC$1, ARRAY$1, ARRAY_EXPR$1 );
	INITREE$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWDECL( DESC$1, 0ll );
	*TREE$1 = vr$3;
	struct $7ASTNODE* vr$5 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( DESC$1, INITREE$1, 0ll, 64ll );
	struct $7ASTNODE* vr$7 = ASTNEWLINK( *TREE$1, vr$5, 0ll );
	*TREE$1 = vr$7;
	fb$result$1 = DESC$1;
	label$11:;
	return fb$result$1;
}

static struct $19AST_TMPSTRLIST_ITEM* HADDTOCOPYBACKLIST( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* TEMP$1, struct $7ASTNODE* N$1 )
{
	struct $19AST_TMPSTRLIST_ITEM* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$12:;
	struct $19AST_TMPSTRLIST_ITEM* T$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&AST$ + 88ll) );
	T$1 = (struct $19AST_TMPSTRLIST_ITEM*)vr$2;
	*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)T$1 + 16ll) = *(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)PARENT$1 + 72ll);
	*(struct $19AST_TMPSTRLIST_ITEM**)((uint8*)PARENT$1 + 72ll) = T$1;
	*(struct $8FBSYMBOL**)T$1 = TEMP$1;
	struct $7ASTNODE* vr$7 = ASTCLONETREE( N$1 );
	struct $7ASTNODE* vr$8 = ASTOPTIMIZETREE( vr$7 );
	*(struct $7ASTNODE**)((uint8*)T$1 + 8ll) = vr$8;
	fb$result$1 = T$1;
	label$13:;
	return fb$result$1;
}

static struct $7ASTNODE* HALLOCTMPSTRING( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1, int64 COPYBACK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $8FBSYMBOL* TEMP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 17ll, (struct $8FBSYMBOL*)0ull );
	TEMP$1 = vr$1;
	ASTDTORLISTADD( TEMP$1 );
	if( COPYBACK$1 == 0ll ) goto label$17;
	{
		HADDTOCOPYBACKLIST( PARENT$1, TEMP$1, N$1 );
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$2 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$3 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$4 = RTLSTRASSIGN( vr$3, N$1, 0ll );
	struct $7ASTNODE* vr$5 = ASTBUILDTEMPVARCLEAR( TEMP$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( vr$5, vr$4, 0ll );
	struct $7ASTNODE* vr$7 = ASTNEWLINK( vr$6, vr$2, 2ll );
	fb$result$1 = vr$7;
	label$15:;
	return fb$result$1;
}

static struct $7ASTNODE* HALLOCTMPWSTRPTR( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$18:;
	struct $8FBSYMBOL* TEMP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDTEMPVAR( 39ll, (struct $8FBSYMBOL*)0ull );
	TEMP$1 = vr$1;
	*($12FB_SYMBSTATS*)((uint8*)TEMP$1 + 24ll) = *(int64*)((uint8*)TEMP$1 + 24ll) | 16777216ll;
	ASTDTORLISTADD( TEMP$1 );
	ASTSETTYPE( N$1, 39ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$5 = ASTNEWVAR( TEMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$6 = ASTNEWASSIGN( vr$5, N$1, 0ll );
	fb$result$1 = vr$6;
	label$19:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKARGFORSTRINGPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* ARG$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$20:;
	int64 ARGDTYPE$1;
	int64 COPYBACK$1;
	ARGDTYPE$1 = *(int64*)((uint8*)ARG$1 + 8ll) & 511ll;
	if( *(int64*)((uint8*)PARENT$1 + 40ll) == 0ll ) goto label$23;
	{
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 2ll ) goto label$25;
		{
			{
				if( ARGDTYPE$1 != 17ll ) goto label$27;
				label$28:;
				{
					if( *(int64*)ARG$1 != 9ll ) goto label$30;
					{
						fb$result$1 = ARG$1;
						goto label$21;
					}
					label$30:;
					label$29:;
				}
				goto label$26;
				label$27:;
				if( ARGDTYPE$1 == 4ll ) goto label$32;
				label$33:;
				if( ARGDTYPE$1 != 18ll ) goto label$31;
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
	COPYBACK$1 = 0ll;
	if( *(int64*)((uint8*)PARAM$1 + 96ll) != 2ll ) goto label$35;
	{
		{
			if( ARGDTYPE$1 != 18ll ) goto label$37;
			label$38:;
			{
				COPYBACK$1 = -1ll;
			}
			goto label$36;
			label$37:;
			if( ARGDTYPE$1 != 17ll ) goto label$39;
			label$40:;
			{
				if( *(int64*)ARG$1 == 9ll ) goto label$42;
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

static void HSTRARGTOSTRPTRPARAM( struct $7ASTNODE* PARENT$1, struct $7ASTNODE* N$1, int64 CHECKRTL$1 )
{
	label$43:;
	if( CHECKRTL$1 != 0ll ) goto label$46;
	{
		if( *(int64*)((uint8*)PARENT$1 + 40ll) == 0ll ) goto label$48;
		{
			goto label$44;
		}
		label$48:;
		label$47:;
	}
	label$46:;
	label$45:;
	{
		int64 TMP$84$2;
		TMP$84$2 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
		if( TMP$84$2 != 17ll ) goto label$50;
		label$51:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 9ll ) goto label$53;
			{
				struct $7ASTNODE* vr$7 = HALLOCTMPSTRING( PARENT$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$7;
			}
			label$53:;
			label$52:;
			struct $7ASTNODE* vr$10 = ASTBUILDSTRPTR( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$10;
		}
		goto label$49;
		label$50:;
		if( TMP$84$2 != 18ll ) goto label$54;
		label$55:;
		{
			struct $7ASTNODE* vr$13 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			struct $7ASTNODE* vr$14 = ASTNEWCONV( 36ll, (struct $8FBSYMBOL*)0ull, vr$13, 0ll, (int64*)0ull );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$14;
		}
		goto label$49;
		label$54:;
		if( TMP$84$2 != 4ll ) goto label$56;
		label$57:;
		{
			struct $7ASTNODE* vr$17 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$17;
		}
		goto label$49;
		label$56:;
		if( TMP$84$2 != 7ll ) goto label$58;
		label$59:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 9ll ) goto label$61;
			{
				struct $7ASTNODE* vr$22 = HALLOCTMPWSTRPTR( PARENT$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$22;
			}
			goto label$60;
			label$61:;
			{
				struct $7ASTNODE* vr$25 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$25;
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
	struct $7ASTNODE* vr$1 = ASTSKIPCONSTCASTS( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	T$1 = vr$1;
	if( *(int64*)T$1 != 9ll ) goto label$67;
	{
		{
			uint64 TMP$85$3;
			TMP$85$3 = (uint64)(*(int64*)((uint8*)T$1 + 8ll) & 511ll);
			goto label$69;
			label$70:;
			{
				goto label$65;
			}
			goto label$68;
			label$69:;
			static const void* tmp$110[15ll] = {
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
			if( (TMP$85$3 - 4ull) > 14ull ) goto label$68;
			goto *tmp$110[TMP$85$3 - 4ull];
			label$68:;
		}
	}
	label$67:;
	label$66:;
	int64 vr$5 = ASTCANTAKEADDROF( T$1 );
	if( vr$5 != 0ll ) goto label$72;
	{
		struct $8FBSYMBOL* vr$11 = SYMBADDTEMPVAR( *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll) );
		struct $7ASTNODE* vr$12 = ASTNEWVAR( vr$11, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$13 = ASTNEWASSIGN( vr$12, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 80ll );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$13;
	}
	label$72:;
	label$71:;
	HBUILDBYREFARG( PARAM$1, N$1 );
	label$65:;
}

static int64 HCHECKBYDESCDIMENSIONS( struct $8FBSYMBOL* PARAM$1, struct $8FBSYMBOL* ARG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$73:;
	fb$result$1 = ((int64)-(*(int64*)((uint8*)ARG$1 + 104ll) == -1ll) | (int64)-(*(int64*)((uint8*)PARAM$1 + 120ll) == -1ll)) | (int64)-(*(int64*)((uint8*)PARAM$1 + 120ll) == *(int64*)((uint8*)ARG$1 + 104ll));
	goto label$74;
	label$74:;
	return fb$result$1;
}

static int64 HCHECKBYDESCPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$75:;
	struct $7ASTNODE* DESC_TREE$1;
	int64 ARG_DTYPE$1;
	int64 SYM_DTYPE$1;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* DESC$1;
	ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)N$1 + 40ll) != 1ll ) goto label$78;
	{
		fb$result$1 = -1ll;
		goto label$76;
	}
	label$78:;
	label$77:;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll);
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$80;
	{
		goto label$76;
	}
	label$80:;
	label$79:;
	SYM_DTYPE$1 = *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll;
	if( ((int64)-(*(int64*)((uint8*)PARENT$1 + 40ll) == 0ll) & (int64)-(SYM_DTYPE$1 != 0ll)) == 0ll ) goto label$82;
	{
		int64 TMP$86$2;
		int64 TMP$87$2;
		int64 TMP$88$2;
		int64 TMP$89$2;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$83;
		TMP$86$2 = 24ll;
		goto label$336;
		label$83:;
		TMP$86$2 = ARG_DTYPE$1 & 31ll;
		label$336:;
		if( (SYM_DTYPE$1 & 480ll) == 0ll ) goto label$84;
		TMP$87$2 = 24ll;
		goto label$337;
		label$84:;
		TMP$87$2 = SYM_DTYPE$1 & 31ll;
		label$337:;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$85;
		TMP$88$2 = 24ll;
		goto label$338;
		label$85:;
		TMP$88$2 = ARG_DTYPE$1 & 31ll;
		label$338:;
		if( (SYM_DTYPE$1 & 480ll) == 0ll ) goto label$86;
		TMP$89$2 = 24ll;
		goto label$339;
		label$86:;
		TMP$89$2 = SYM_DTYPE$1 & 31ll;
		label$339:;
		if( ((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$86$2 * 56ll)) != *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$87$2 * 56ll))) | (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$2 * 56ll)) + 8ll) != *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 56ll)) + 8ll))) == 0ll ) goto label$88;
		{
			goto label$76;
		}
		label$88:;
		label$87:;
	}
	label$82:;
	label$81:;
	if( ((int64)-(SYM_DTYPE$1 == 20ll) & (int64)-(ARG_DTYPE$1 == 20ll)) == 0ll ) goto label$90;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll) == *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) ) goto label$92;
		{
			ERRREPORT( 58ll, 0ll, (uint8*)0ull );
			goto label$76;
		}
		label$92:;
		label$91:;
	}
	label$90:;
	label$89:;
	if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 17ll ) goto label$94;
	{
		if( (*(int64*)((uint8*)S$1 + 8ll) & 16384ll) == 0ll ) goto label$96;
		{
			int64 vr$38 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$38 != 0ll ) goto label$98;
			{
				goto label$76;
			}
			label$98:;
			label$97:;
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 52ll, *(struct $8FBSYMBOL**)((uint8*)S$1 + 144ll) );
			fb$result$1 = -1ll;
			goto label$76;
		}
		label$96:;
		label$95:;
		DESC$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 136ll);
		if( DESC$1 == (struct $8FBSYMBOL*)0ull ) goto label$100;
		{
			int64 vr$42 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$42 != 0ll ) goto label$102;
			{
				goto label$76;
			}
			label$102:;
			label$101:;
			ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			struct $7ASTNODE* vr$44 = ASTNEWVAR( DESC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$45 = ASTNEWADDROF( vr$44 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$45;
			fb$result$1 = -1ll;
			goto label$76;
		}
		label$100:;
		label$99:;
	}
	goto label$93;
	label$94:;
	if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 19ll ) goto label$103;
	{
		if( (*(int64*)((uint8*)S$1 + 8ll) & 4ll) == 0ll ) goto label$105;
		{
			int64 vr$51 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$51 != 0ll ) goto label$107;
			{
				goto label$76;
			}
			label$107:;
			label$106:;
			DESC$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 136ll);
			ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(int64*)((uint8*)DESC$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)DESC$1 + 64ll) );
			struct $7ASTNODE* vr$57 = ASTNEWADDROF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$57;
			fb$result$1 = -1ll;
			goto label$76;
		}
		goto label$104;
		label$105:;
		if( *(int64*)((uint8*)S$1 + 104ll) <= 0ll ) goto label$108;
		{
			int64 vr$60 = HCHECKBYDESCDIMENSIONS( PARAM$1, S$1 );
			if( vr$60 != 0ll ) goto label$110;
			{
				goto label$76;
			}
			label$110:;
			label$109:;
			struct $8FBSYMBOL* vr$63 = HALLOCTMPARRAYDESC( S$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), &DESC_TREE$1 );
			DESC$1 = vr$63;
			struct $7ASTNODE* vr$64 = ASTNEWVAR( DESC$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$65 = ASTNEWADDROF( vr$64 );
			struct $7ASTNODE* vr$66 = ASTNEWLINK( vr$65, DESC_TREE$1, 1ll );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$66;
			fb$result$1 = -1ll;
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

static int64 HCHECKVARARGPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$111:;
	int64 ARG_DTYPE$1;
	ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
	{
		int64 TMP$90$2;
		uint64 TMP$91$2;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$113;
		TMP$90$2 = 24ll;
		goto label$340;
		label$113:;
		TMP$90$2 = ARG_DTYPE$1 & 31ll;
		label$340:;
		TMP$91$2 = *(uint64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$90$2 * 56ll));
		goto label$115;
		label$116:;
		{
			HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0ll );
		}
		goto label$114;
		label$117:;
		{
			{
				if( ARG_DTYPE$1 == 4ll ) goto label$120;
				label$121:;
				if( ARG_DTYPE$1 != 7ll ) goto label$119;
				label$120:;
				{
					HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0ll );
				}
				goto label$118;
				label$119:;
				{
					int64 TMP$92$5;
					if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$123;
					TMP$92$5 = 24ll;
					goto label$341;
					label$123:;
					TMP$92$5 = ARG_DTYPE$1 & 31ll;
					label$341:;
					if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$5 * 56ll)) + 8ll) >= 4ll ) goto label$125;
					{
						int64 TMP$93$6;
						$11FB_DATATYPE TMP$94$6;
						if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$126;
						TMP$93$6 = 24ll;
						goto label$342;
						label$126:;
						TMP$93$6 = ARG_DTYPE$1 & 31ll;
						label$342:;
						if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$6 * 56ll)) + 16ll) == 0ll ) goto label$127;
						TMP$94$6 = 11ll;
						goto label$343;
						label$127:;
						TMP$94$6 = 12ll;
						label$343:;
						struct $7ASTNODE* vr$14 = ASTNEWCONV( TMP$94$6, (struct $8FBSYMBOL*)0ull, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll, (int64*)0ull );
						*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$14;
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
			if( ARG_DTYPE$1 != 15ll ) goto label$130;
			{
				struct $7ASTNODE* vr$17 = ASTNEWCONV( 16ll, (struct $8FBSYMBOL*)0ull, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll, (int64*)0ull );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$17;
			}
			label$130:;
			label$129:;
		}
		goto label$114;
		label$131:;
		{
			ERRREPORT( 58ll, 0ll, (uint8*)0ull );
			fb$result$1 = 0ll;
			goto label$112;
		}
		goto label$114;
		label$115:;
		static const void* tmp$111[3ll] = {
			&&label$117,
			&&label$128,
			&&label$116,
		};
		if( TMP$91$2 > 2ull ) goto label$131;
		goto *tmp$111[TMP$91$2 - 0ull];
		label$114:;
	}
	fb$result$1 = -1ll;
	label$112:;
	return fb$result$1;
}

static void HCHECKVOIDPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$132:;
	if( *(int64*)((uint8*)N$1 + 40ll) != 1ll ) goto label$135;
	{
		HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, 0ll );
		goto label$133;
	}
	label$135:;
	label$134:;
	if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$137;
	{
		if( ((int64)-(*(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == 16ll) | (int64)-(*(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == 23ll)) == 0ll ) goto label$139;
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

static int64 HCHECKSTRPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$140:;
	int64 ARGDTYPE$1;
	ARGDTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
	{
		uint64 TMP$95$2;
		TMP$95$2 = (uint64)ARGDTYPE$1;
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
			ERRREPORT( 58ll, 0ll, (uint8*)0ull );
			fb$result$1 = 0ll;
			goto label$141;
		}
		goto label$142;
		label$143:;
		static const void* tmp$112[15ll] = {
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
		if( (TMP$95$2 - 4ull) > 14ull ) goto label$146;
		goto *tmp$112[TMP$95$2 - 4ull];
		label$142:;
	}
	struct $7ASTNODE* vr$5 = HCHECKARGFORSTRINGPARAM( PARENT$1, PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$5;
	{
		$12FB_PARAMMODE TMP$96$2;
		TMP$96$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
		if( TMP$96$2 != 2ll ) goto label$148;
		label$149:;
		{
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == 9ll ) goto label$151;
			{
				HBUILDBYREFARG( PARAM$1, N$1 );
			}
			label$151:;
			label$150:;
		}
		goto label$147;
		label$148:;
		if( TMP$96$2 != 1ll ) goto label$152;
		label$153:;
		{
			HBUILDBYREFARG( PARAM$1, N$1 );
		}
		label$152:;
		label$147:;
	}
	fb$result$1 = -1ll;
	label$141:;
	return fb$result$1;
}

static void HBYTEBYBYTE( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$154:;
	*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) + 80ll);
	label$155:;
}

static void HUDTPASSBYVAL( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	label$156:;
	struct $8FBSYMBOL* TMP$1;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* CALLEXPR$1;
	int64 IS_CTORCALL$1;
	struct $7ASTNODE* vr$1 = ASTSKIPNOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	T$1 = vr$1;
	int64 vr$3 = SYMBCOMPISTRIVIAL( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
	if( vr$3 == 0ll ) goto label$159;
	{
		if( *(int64*)T$1 != 9ll ) goto label$161;
		{
			struct $7ASTNODE* vr$6 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$6;
			int64 vr$10 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll) );
			if( vr$10 == 0ll ) goto label$163;
			{
				struct $7ASTNODE* vr$12 = ASTBUILDCALLRESULTVAR( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$12;
				HBYTEBYBYTE( PARAM$1, N$1 );
			}
			goto label$162;
			label$163:;
			{
				ASTSETTYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll) + 160ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll) + 168ll) );
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
	struct $8FBSYMBOL* vr$23 = SYMBADDTEMPVAR( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
	TMP$1 = vr$23;
	ASTDTORLISTADD( TMP$1 );
	if( *(int64*)T$1 != 36ll ) goto label$165;
	{
		struct $7ASTNODE* vr$26 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$26;
		struct $7ASTNODE* vr$28 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$30 = _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll( TMP$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), -1ll, 64ll );
		struct $7ASTNODE* vr$31 = ASTNEWLINK( vr$30, vr$28, 2ll );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$31;
	}
	goto label$164;
	label$165:;
	{
		struct $7ASTNODE* vr$36 = ASTBUILDIMPLICITCTORCALLEX( PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *($12FB_PARAMMODE*)((uint8*)N$1 + 40ll), &IS_CTORCALL$1 );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$36;
		if( IS_CTORCALL$1 == 0ll ) goto label$167;
		{
			struct $7ASTNODE* vr$38 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$39 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$41 = ASTPATCHCTORCALL( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), vr$39 );
			struct $7ASTNODE* vr$42 = ASTNEWCALLCTOR( vr$41, vr$38 );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$42;
		}
		goto label$166;
		label$167:;
		{
			struct $7ASTNODE* vr$44 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$46 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$47 = ASTNEWASSIGN( vr$46, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 64ll );
			struct $7ASTNODE* vr$48 = ASTNEWLINK( vr$47, vr$44, 2ll );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$48;
		}
		label$166:;
	}
	label$164:;
	HBUILDBYREFARG( PARAM$1, N$1 );
	label$157:;
}

static int64 HIMPLICITCTOR( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$168:;
	static int64 REC_CNT$1 = 0ll;
	struct $7ASTNODE* ARG$1;
	struct $8FBSYMBOL* TMP$1;
	int64 IS_CTORCALL$1;
	int64 vr$1 = SYMBHASCTOR( PARAM$1 );
	if( vr$1 != 0ll ) goto label$171;
	{
		goto label$169;
	}
	label$171:;
	label$170:;
	if( REC_CNT$1 == 0ll ) goto label$173;
	{
		goto label$169;
	}
	label$173:;
	label$172:;
	REC_CNT$1 = REC_CNT$1 + 1ll;
	struct $7ASTNODE* vr$6 = ASTBUILDIMPLICITCTORCALLEX( PARAM$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *($12FB_PARAMMODE*)((uint8*)N$1 + 40ll), &IS_CTORCALL$1 );
	ARG$1 = vr$6;
	REC_CNT$1 = REC_CNT$1 + -1ll;
	if( IS_CTORCALL$1 != 0ll ) goto label$175;
	{
		goto label$169;
	}
	label$175:;
	label$174:;
	struct $8FBSYMBOL* vr$10 = SYMBADDTEMPVAR( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
	TMP$1 = vr$10;
	ASTDTORLISTADD( TMP$1 );
	struct $7ASTNODE* vr$11 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$13 = ASTPATCHCTORCALL( ARG$1, vr$12 );
	struct $7ASTNODE* vr$14 = ASTNEWCALLCTOR( vr$13, vr$11 );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$14;
	if( *(int64*)((uint8*)PARAM$1 + 96ll) != 1ll ) goto label$177;
	{
		HUDTPASSBYVAL( PARAM$1, N$1 );
	}
	goto label$176;
	label$177:;
	{
		HBUILDBYREFARG( PARAM$1, N$1 );
	}
	label$176:;
	fb$result$1 = -1ll;
	label$169:;
	return fb$result$1;
}

static int64 HCHECKUDTPARAM( struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	struct $8FBSYMBOL* TMP$1;
	if( (*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll) == 20ll ) goto label$181;
	{
		int64 vr$4 = HIMPLICITCTOR( PARAM$1, N$1 );
		if( vr$4 != 0ll ) goto label$183;
		{
			ERRREPORT( 58ll, 0ll, (uint8*)0ull );
			fb$result$1 = 0ll;
			goto label$179;
		}
		label$183:;
		label$182:;
		fb$result$1 = -1ll;
		goto label$179;
	}
	label$181:;
	label$180:;
	if( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll) == *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) ) goto label$185;
	{
		int64 vr$11 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) );
		if( vr$11 != 0ll ) goto label$187;
		{
			int64 vr$12 = HIMPLICITCTOR( PARAM$1, N$1 );
			if( vr$12 != 0ll ) goto label$189;
			{
				struct $7ASTNODE* vr$17 = ASTNEWCONV( *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll, (int64*)0ull );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$17;
				if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$191;
				{
					ERRREPORT( 58ll, 0ll, (uint8*)0ull );
					fb$result$1 = 0ll;
					goto label$179;
				}
				label$191:;
				label$190:;
			}
			goto label$188;
			label$189:;
			{
				fb$result$1 = -1ll;
				goto label$179;
			}
			label$188:;
		}
		goto label$186;
		label$187:;
		{
			struct $7ASTNODE* vr$24 = ASTNEWCONV( *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll, (int64*)0ull );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$24;
		}
		label$186:;
	}
	label$185:;
	label$184:;
	{
		$12FB_PARAMMODE TMP$97$2;
		TMP$97$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
		if( TMP$97$2 != 2ll ) goto label$193;
		label$194:;
		{
			struct $7ASTNODE* vr$28 = ASTREMOVENOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$28;
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 9ll ) goto label$196;
			{
				int64 vr$34 = SYMBPROCRETURNSONSTACK( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll) );
				if( vr$34 != 0ll ) goto label$198;
				{
					struct $8FBSYMBOL* vr$40 = SYMBADDTEMPVAR( *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll, *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll) );
					TMP$1 = vr$40;
					struct $7ASTNODE* vr$41 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0ull, 0ll );
					struct $7ASTNODE* vr$42 = ASTNEWADDROF( vr$41 );
					struct $7ASTNODE* vr$44 = ASTBUILDVARFIELD( TMP$1, (struct $8FBSYMBOL*)0ull, 0ll );
					struct $7ASTNODE* vr$45 = ASTNEWASSIGN( vr$44, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 96ll );
					struct $7ASTNODE* vr$46 = ASTNEWLINK( vr$45, vr$42, 2ll );
					*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$46;
					*(int64*)((uint8*)N$1 + 40ll) = 1ll;
					fb$result$1 = -1ll;
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
		if( TMP$97$2 != 1ll ) goto label$199;
		label$200:;
		{
			HUDTPASSBYVAL( PARAM$1, N$1 );
		}
		label$199:;
		label$192:;
	}
	fb$result$1 = -1ll;
	label$179:;
	return fb$result$1;
}

static int64 HCHECKPARAM( struct $7ASTNODE* PARENT$1, struct $8FBSYMBOL* PARAM$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$201:;
	int64 PARAM_DTYPE$1;
	int64 ARG_DTYPE$1;
	fb$result$1 = 0ll;
	struct $7ASTNODE* vr$2 = ASTUPDSTRCONCAT( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$2;
	PARAM_DTYPE$1 = *(int64*)((uint8*)PARAM$1 + 56ll) & 511ll;
	ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
	{
		$12FB_PARAMMODE TMP$98$2;
		TMP$98$2 = *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll);
		if( TMP$98$2 != 3ll ) goto label$204;
		label$205:;
		{
			int64 vr$10 = HCHECKBYDESCPARAM( PARENT$1, PARAM$1, N$1 );
			if( vr$10 != 0ll ) goto label$207;
			{
				ERRREPORT( 58ll, 0ll, (uint8*)0ull );
				goto label$202;
			}
			label$207:;
			label$206:;
			fb$result$1 = -1ll;
			goto label$202;
		}
		goto label$203;
		label$204:;
		if( TMP$98$2 != 4ll ) goto label$208;
		label$209:;
		{
			int64 vr$11 = HCHECKVARARGPARAM( PARENT$1, PARAM$1, N$1 );
			fb$result$1 = vr$11;
			goto label$202;
		}
		goto label$203;
		label$208:;
		if( TMP$98$2 != 2ll ) goto label$210;
		label$211:;
		{
			int64 TMP$101$3;
			if( PARAM_DTYPE$1 != 0ll ) goto label$213;
			{
				HCHECKVOIDPARAM( PARENT$1, PARAM$1, N$1 );
				fb$result$1 = -1ll;
				goto label$202;
			}
			label$213:;
			label$212:;
			if( *(int64*)((uint8*)N$1 + 40ll) != 1ll ) goto label$215;
			{
				int64 TMP$99$4;
				int64 TMP$100$4;
				if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$216;
				TMP$99$4 = 24ll;
				goto label$344;
				label$216:;
				TMP$99$4 = ARG_DTYPE$1 & 31ll;
				label$344:;
				if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$217;
				TMP$100$4 = 24ll;
				goto label$345;
				label$217:;
				TMP$100$4 = ARG_DTYPE$1 & 31ll;
				label$345:;
				if( ((int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$4 * 56ll)) != 0ll) | (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$4 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll))) == 0ll ) goto label$219;
				{
					ERRREPORT( 58ll, 0ll, (uint8*)0ull );
					goto label$202;
				}
				label$219:;
				label$218:;
				fb$result$1 = -1ll;
				goto label$202;
			}
			label$215:;
			label$214:;
			if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != 19ll ) goto label$220;
			TMP$101$3 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 24ll) + 192ll) > 0ll);
			goto label$346;
			label$220:;
			TMP$101$3 = 0ll;
			label$346:;
			if( TMP$101$3 == 0ll ) goto label$222;
			{
				ERRREPORT( 58ll, 0ll, (uint8*)0ull );
				goto label$202;
			}
			label$222:;
			label$221:;
		}
		label$210:;
		label$203:;
	}
	{
		if( ARG_DTYPE$1 != 20ll ) goto label$224;
		label$225:;
		{
			int64 ERR_NUM$3;
			struct $8FBSYMBOL* PROC$3;
			if( *(int64*)((uint8*)PARAM$1 + 96ll) != 1ll ) goto label$227;
			{
				struct $8FBSYMBOL* vr$33 = SYMBFINDCTOROVLPROC( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *($12FB_PARAMMODE*)((uint8*)PARAM$1 + 96ll), ($9FB_ERRMSG*)&ERR_NUM$3, 32ll );
				PROC$3 = vr$33;
				if( PROC$3 == (struct $8FBSYMBOL*)0ull ) goto label$229;
				{
					int64 vr$34 = HCHECKUDTPARAM( PARAM$1, N$1 );
					fb$result$1 = vr$34;
					goto label$202;
				}
				label$229:;
				label$228:;
			}
			label$227:;
			label$226:;
			struct $8FBSYMBOL* vr$39 = SYMBFINDCASTOVLPROC( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), ($9FB_ERRMSG*)&ERR_NUM$3, 0ll );
			PROC$3 = vr$39;
			if( PROC$3 == (struct $8FBSYMBOL*)0ull ) goto label$231;
			{
				static int64 REC_CNT$4 = 0ll;
				if( REC_CNT$4 != 0ll ) goto label$233;
				{
					REC_CNT$4 = REC_CNT$4 + 1ll;
					struct $7ASTNODE* vr$42 = ASTBUILDCALL( PROC$3, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), (struct $7ASTNODE*)0ull, (struct $7ASTNODE*)0ull );
					*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$42;
					REC_CNT$4 = REC_CNT$4 + -1ll;
					ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
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
		if( PARAM_DTYPE$1 != 17ll ) goto label$235;
		label$236:;
		{
			int64 vr$48 = HCHECKSTRPARAM( PARENT$1, PARAM$1, N$1 );
			fb$result$1 = vr$48;
			goto label$202;
		}
		goto label$234;
		label$235:;
		if( PARAM_DTYPE$1 == 4ll ) goto label$238;
		label$239:;
		if( PARAM_DTYPE$1 != 7ll ) goto label$237;
		label$238:;
		{
			{
				if( ARG_DTYPE$1 == 17ll ) goto label$242;
				label$243:;
				if( ARG_DTYPE$1 == 18ll ) goto label$242;
				label$244:;
				if( ARG_DTYPE$1 == 4ll ) goto label$242;
				label$245:;
				if( ARG_DTYPE$1 != 7ll ) goto label$241;
				label$242:;
				{
				}
				goto label$240;
				label$241:;
				{
					ERRREPORT( 58ll, 0ll, (uint8*)0ull );
					goto label$202;
				}
				label$246:;
				label$240:;
			}
		}
		goto label$234;
		label$237:;
		if( PARAM_DTYPE$1 != 20ll ) goto label$247;
		label$248:;
		{
			int64 vr$49 = HCHECKUDTPARAM( PARAM$1, N$1 );
			fb$result$1 = vr$49;
			goto label$202;
		}
		label$247:;
		label$234:;
	}
	{
		uint64 TMP$102$2;
		TMP$102$2 = (uint64)ARG_DTYPE$1;
		goto label$250;
		label$251:;
		{
			{
				if( PARAM_DTYPE$1 == 36ll ) goto label$254;
				label$255:;
				if( PARAM_DTYPE$1 != 4ll ) goto label$253;
				label$254:;
				{
					if( ARG_DTYPE$1 != 7ll ) goto label$257;
					{
						struct $7ASTNODE* vr$51 = RTLTOSTR( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll );
						*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$51;
					}
					label$257:;
					label$256:;
				}
				goto label$252;
				label$253:;
				if( PARAM_DTYPE$1 == 39ll ) goto label$259;
				label$260:;
				if( PARAM_DTYPE$1 != 7ll ) goto label$258;
				label$259:;
				{
					if( ARG_DTYPE$1 == 7ll ) goto label$262;
					{
						struct $7ASTNODE* vr$54 = RTLTOWSTR( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
						*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$54;
					}
					label$262:;
					label$261:;
				}
				goto label$252;
				label$258:;
				{
					ERRREPORT( 58ll, 0ll, (uint8*)0ull );
					goto label$202;
				}
				label$263:;
				label$252:;
			}
			HSTRARGTOSTRPTRPARAM( PARENT$1, N$1, -1ll );
			if( (PARAM_DTYPE$1 & 480ll) != 0ll ) goto label$265;
			{
				struct $7ASTNODE* vr$58 = ASTNEWDEREF( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 2147483648ll, (struct $8FBSYMBOL*)0ull, 0ll );
				*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$58;
			}
			label$265:;
			label$264:;
			ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
		}
		goto label$249;
		label$266:;
		{
			ERRREPORT( 58ll, 0ll, (uint8*)0ull );
			goto label$202;
		}
		goto label$249;
		label$250:;
		static const void* tmp$113[17ll] = {
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
		if( (TMP$102$2 - 4ull) > 16ull ) goto label$249;
		goto *tmp$113[TMP$102$2 - 4ull];
		label$249:;
	}
	if( ((int64)-(PARAM_DTYPE$1 == 10ll) | (int64)-(ARG_DTYPE$1 == 10ll)) == 0ll ) goto label$268;
	{
		int64 TMP$103$2;
		int64 TMP$104$2;
		if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$269;
		TMP$103$2 = 24ll;
		goto label$347;
		label$269:;
		TMP$103$2 = PARAM_DTYPE$1 & 31ll;
		label$347:;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$270;
		TMP$104$2 = 24ll;
		goto label$348;
		label$270:;
		TMP$104$2 = ARG_DTYPE$1 & 31ll;
		label$348:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$2 * 56ll)) == *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$2 * 56ll)) ) goto label$272;
		{
			ERRREPORTWARN( 5ll, (uint8*)0ull, 1ll, (uint8*)0ull );
		}
		label$272:;
		label$271:;
	}
	label$268:;
	label$267:;
	if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$274;
	{
		int64 vr$77 = ASTPTRCHECK( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(int64*)((uint8*)PARAM$1 + 96ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
		if( vr$77 != 0ll ) goto label$276;
		{
			if( (ARG_DTYPE$1 & 480ll) != 0ll ) goto label$278;
			{
				ERRREPORTWARN( 1ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			goto label$277;
			label$278:;
			{
				if( ((int64)-((PARAM_DTYPE$1 & 31ll) == 20ll) & (int64)-((ARG_DTYPE$1 & 31ll) == 20ll)) == 0ll ) goto label$280;
				{
					int64 vr$87 = SYMBGETUDTBASELEVEL( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll) );
					if( vr$87 <= 0ll ) goto label$282;
					{
						ERRREPORT( 24ll, 0ll, (uint8*)0ull );
						goto label$202;
					}
					goto label$281;
					label$282:;
					{
						ERRREPORTWARN( 3ll, (uint8*)0ull, 1ll, (uint8*)0ull );
					}
					label$281:;
				}
				goto label$279;
				label$280:;
				{
					ERRREPORTWARN( 3ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
	if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$283;
	{
		ERRREPORTWARN( 2ll, (uint8*)0ull, 1ll, (uint8*)0ull );
	}
	label$283:;
	label$273:;
	if( ((int64)-(PARAM_DTYPE$1 != ARG_DTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) != *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 16ll))) == 0ll ) goto label$285;
	{
		int64 TMP$105$2;
		int64 TMP$106$2;
		int64 TMP$107$2;
		int64 TMP$108$2;
		if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$286;
		TMP$105$2 = 24ll;
		goto label$349;
		label$286:;
		TMP$105$2 = PARAM_DTYPE$1 & 31ll;
		label$349:;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$287;
		TMP$106$2 = 24ll;
		goto label$350;
		label$287:;
		TMP$106$2 = ARG_DTYPE$1 & 31ll;
		label$350:;
		if( (PARAM_DTYPE$1 & 480ll) == 0ll ) goto label$288;
		TMP$107$2 = 24ll;
		goto label$351;
		label$288:;
		TMP$107$2 = PARAM_DTYPE$1 & 31ll;
		label$351:;
		if( (ARG_DTYPE$1 & 480ll) == 0ll ) goto label$289;
		TMP$108$2 = 24ll;
		goto label$352;
		label$289:;
		TMP$108$2 = ARG_DTYPE$1 & 31ll;
		label$352:;
		if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$2 * 56ll)) + 8ll) != *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$106$2 * 56ll)) + 8ll)) | (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$107$2 * 56ll)) != *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$108$2 * 56ll)))) == 0ll ) goto label$291;
		{
			if( *(int64*)((uint8*)PARAM$1 + 96ll) != 2ll ) goto label$293;
			{
				struct $7ASTNODE* vr$112 = ASTSKIPNOCONVCAST( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
				int64 vr$113 = ASTCANTAKEADDROF( vr$112 );
				if( vr$113 == 0ll ) goto label$295;
				{
					ERRREPORT( 58ll, 0ll, (uint8*)0ull );
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
		struct $7ASTNODE* vr$117 = ASTNEWCONV( *(int64*)((uint8*)PARAM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), 0ll, (int64*)0ull );
		*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$117;
		if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$297;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			goto label$202;
		}
		label$297:;
		label$296:;
		ARG_DTYPE$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 8ll) & 511ll;
	}
	label$285:;
	label$284:;
	if( *(int64*)((uint8*)PARAM$1 + 96ll) != 2ll ) goto label$299;
	{
		HCHECKBYREFPARAM( PARAM$1, N$1 );
	}
	label$299:;
	label$298:;
	fb$result$1 = -1ll;
	label$202:;
	return fb$result$1;
}

static struct $7ASTNODE* HCREATEOPTARG( struct $8FBSYMBOL* PARAM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$300:;
	struct $7ASTNODE* TREE$1;
	TREE$1 = *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll);
	if( TREE$1 != (struct $7ASTNODE*)0ull ) goto label$303;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$301;
	}
	label$303:;
	label$302:;
	if( *(int64*)TREE$1 != 36ll ) goto label$305;
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
