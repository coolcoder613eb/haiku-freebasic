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
typedef int32 $13AST_NODECLASS;
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
struct $7ASTNODE;
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
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astzvectorize( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
struct $7ASTNODE* ASTNEWUOP( int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
static int32 HNODESMATCH( struct $7ASTNODE*, struct $7ASTNODE* );
static int32 HALLOWEDINVECTORIZE( struct $7ASTNODE*, int32 );
static void HGETVARDISTANCE( struct $7ASTNODE*, int32*, struct $7ASTNODE*, int32* );
static struct $7ASTNODE* HSKIPNEWNODES( struct $7ASTNODE*, int32 );
static int32 HCHECKLOAD( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static void HINSERTSWIZZLE( struct $7ASTNODE* );
static struct $7ASTNODE* HVECTORIZENODE( struct $7ASTNODE*, int32 );
static int32 HCHECKDEREFVAR( struct $7ASTNODE*, int32* );
static int32 HCHECKARRAYVAR( struct $7ASTNODE*, int32* );
static int32 HCHECKMEMOFFSET( struct $7ASTNODE*, int32, $11FB_DATATYPE );
static $11FB_DATATYPE HGETASSIGNDATATYPE( struct $7ASTNODE* );
static int32 HMERGENODE( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
static int32 HISVECTORIZABLE( struct $7ASTNODE* );
static int32 ASTINTRATREEVECTORIZE( struct $7ASTNODE* );
static struct $7ASTNODE* HGETNEXTTREE( struct $7ASTNODE* );
static int32 HCHECKLINK( struct $7ASTNODE* );
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
static int32 VECTORWIDTH$;
static int32 MAXVECTORWIDTH$;

void ASTPROCVECTORIZE( struct $7ASTNODE* P$1 )
{
	label$284:;
	struct $7ASTNODE* TREEA$1;
	struct $7ASTNODE* TREEB$1;
	struct $7ASTNODE* NODEA$1;
	struct $7ASTNODE* NODEB$1;
	struct $7ASTNODE* PREV$1;
	struct $7ASTNODE* NXT$1;
	int32 INTRATREE$1;
	int32 PARALLELA$1;
	int32 PARALLELB$1;
	int32 DONEXT$1;
	struct $7ASTNODE* vr$0 = HGETNEXTTREE( P$1 );
	TREEA$1 = vr$0;
	label$286:;
	{
		if( TREEA$1 != (struct $7ASTNODE*)0u ) goto label$290;
		{
			goto label$287;
			label$290:;
		}
		NODEA$1 = (struct $7ASTNODE*)0u;
		PARALLELA$1 = 0;
		int32 vr$1 = HCHECKLINK( TREEA$1 );
		if( vr$1 != -1 ) goto label$292;
		{
			NODEA$1 = *(struct $7ASTNODE**)((uint8*)TREEA$1 + 68);
		}
		goto label$291;
		label$292:;
		int32 vr$3 = HISVECTORIZABLE( TREEA$1 );
		if( vr$3 != -1 ) goto label$293;
		{
			NODEA$1 = TREEA$1;
			PARALLELA$1 = -1;
		}
		label$293:;
		label$291:;
		MAXVECTORWIDTH$ = 4;
		VECTORWIDTH$ = 0;
		TREEB$1 = TREEA$1;
		label$294:;
		{
			struct $7ASTNODE* vr$5 = HGETNEXTTREE( *(struct $7ASTNODE**)((uint8*)TREEB$1 + 76) );
			TREEB$1 = vr$5;
			INTRATREE$1 = 0;
			PARALLELB$1 = 0;
			if( (-(TREEB$1 == (struct $7ASTNODE*)0u) | -(PARALLELA$1 == 0)) == 0 ) goto label$298;
			{
				INTRATREE$1 = -1;
			}
			goto label$297;
			label$298:;
			{
				int32 vr$9 = HISVECTORIZABLE( TREEB$1 );
				if( vr$9 != -1 ) goto label$300;
				{
					PARALLELB$1 = -1;
					NODEB$1 = TREEB$1;
				}
				goto label$299;
				label$300:;
				{
					INTRATREE$1 = -1;
				}
				label$299:;
			}
			label$297:;
			DONEXT$1 = -1;
			if( (PARALLELA$1 & PARALLELB$1) == 0 ) goto label$302;
			{
				int32 vr$11 = HMERGENODE( NODEA$1, NODEB$1, 0 );
				if( vr$11 == 0 ) goto label$304;
				{
					VECTORWIDTH$ = 0;
					HMERGENODE( NODEA$1, NODEB$1, -1 );
					PREV$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 72);
					NXT$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 76);
					ASTDELTREE( TREEB$1 );
					struct $7ASTNODE* vr$14 = ASTNEWNOP(  );
					TREEB$1 = vr$14;
					*(struct $7ASTNODE**)((uint8*)TREEB$1 + 72) = PREV$1;
					*(struct $7ASTNODE**)((uint8*)TREEB$1 + 76) = NXT$1;
					*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREEB$1 + 72) + 76) = TREEB$1;
					if( *(struct $7ASTNODE**)((uint8*)TREEB$1 + 76) == (struct $7ASTNODE*)0u ) goto label$306;
					{
						*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREEB$1 + 76) + 72) = TREEB$1;
					}
					label$306:;
					label$305:;
					DONEXT$1 = 0;
				}
				goto label$303;
				label$304:;
				{
					INTRATREE$1 = -1;
				}
				label$303:;
			}
			label$302:;
			label$301:;
			if( (-(INTRATREE$1 == -1) & -(*(int32*)((uint8*)&ENV$ + 124) >= 2)) == 0 ) goto label$308;
			{
				MAXVECTORWIDTH$ = 4;
				VECTORWIDTH$ = 0;
				label$309:;
				int32 vr$25 = ASTINTRATREEVECTORIZE( NODEA$1 );
				if( vr$25 == 0 ) goto label$310;
				{
				}
				goto label$309;
				label$310:;
			}
			label$308:;
			label$307:;
			if( TREEB$1 == (struct $7ASTNODE*)0u ) goto label$312;
			{
				if( DONEXT$1 == 0 ) goto label$314;
				{
					TREEA$1 = TREEB$1;
					goto label$295;
				}
				goto label$313;
				label$314:;
				{
					TREEB$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 76);
				}
				label$313:;
			}
			goto label$311;
			label$312:;
			{
				goto label$287;
			}
			label$311:;
		}
		label$296:;
		goto label$294;
		label$295:;
	}
	label$288:;
	goto label$286;
	label$287:;
	label$285:;
}

__attribute__(( constructor )) static void fb_ctor__astzvectorize( void )
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

static int32 HNODESMATCH( struct $7ASTNODE* VN$1, struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	if( *(int32*)VN$1 == *(int32*)N$1 ) goto label$13;
	{
		fb$result$1 = 0;
		goto label$11;
	}
	label$13:;
	label$12:;
	if( *(int32*)VN$1 != 17 ) goto label$15;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)VN$1 + 12) == *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) ) goto label$17;
		{
			fb$result$1 = 0;
			goto label$11;
		}
		label$17:;
		label$16:;
	}
	label$15:;
	label$14:;
	if( *(int32*)VN$1 != 16 ) goto label$19;
	{
		int32 TMP$82$2;
		if( (*(int32*)((uint8*)VN$1 + 4) & 511) == (*(int32*)((uint8*)N$1 + 4) & 511) ) goto label$21;
		{
			fb$result$1 = 0;
			goto label$11;
		}
		label$21:;
		label$20:;
		if( (*(int32*)((uint8*)VN$1 + 4) & 480) == 0 ) goto label$22;
		TMP$82$2 = 24;
		goto label$315;
		label$22:;
		TMP$82$2 = *(int32*)((uint8*)VN$1 + 4) & 31;
		label$315:;
		if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$82$2 * 28)) != 1 ) goto label$24;
		{
			if( *(double*)((uint8*)VN$1 + 24) == *(double*)((uint8*)N$1 + 24) ) goto label$26;
			{
				fb$result$1 = 0;
				goto label$11;
			}
			label$26:;
			label$25:;
		}
		goto label$23;
		label$24:;
		{
			if( *(int64*)((uint8*)VN$1 + 24) == *(int64*)((uint8*)N$1 + 24) ) goto label$28;
			{
				fb$result$1 = 0;
				goto label$11;
			}
			label$28:;
			label$27:;
		}
		label$23:;
	}
	label$19:;
	label$18:;
	fb$result$1 = -1;
	goto label$11;
	label$11:;
	return fb$result$1;
}

static int32 HALLOWEDINVECTORIZE( struct $7ASTNODE* N$1, int32 DEREF$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$29:;
	int32 DTYPE$1;
	if( DEREF$1 == 0 ) goto label$32;
	{
		fb$result$1 = -1;
		goto label$30;
		label$32:;
	}
	{
		uint32 TMP$83$2;
		TMP$83$2 = *(uint32*)N$1;
		goto label$34;
		label$35:;
		{
			if( *(int32*)((uint8*)N$1 + 24) != 28 ) goto label$37;
			{
				fb$result$1 = -1;
				goto label$30;
				label$37:;
			}
			if( *(int32*)((uint8*)N$1 + 24) != 29 ) goto label$39;
			{
				fb$result$1 = -1;
				goto label$30;
				label$39:;
			}
			if( *(int32*)((uint8*)N$1 + 24) != 30 ) goto label$41;
			{
				fb$result$1 = -1;
				goto label$30;
				label$41:;
			}
			if( *(int32*)((uint8*)N$1 + 24) != 31 ) goto label$43;
			{
				fb$result$1 = -1;
				goto label$30;
				label$43:;
			}
			if( *(int32*)((uint8*)N$1 + 24) != 0 ) goto label$45;
			{
				fb$result$1 = -1;
				goto label$30;
				label$45:;
			}
		}
		goto label$33;
		label$46:;
		{
			if( *(int32*)((uint8*)N$1 + 24) != 75 ) goto label$48;
			{
				fb$result$1 = -1;
				goto label$30;
				label$48:;
			}
		}
		goto label$33;
		label$49:;
		{
			fb$result$1 = -1;
			goto label$30;
		}
		goto label$33;
		label$50:;
		{
			DTYPE$1 = *(int32*)((uint8*)N$1 + 4) & 31;
			if( DTYPE$1 != 15 ) goto label$52;
			{
				fb$result$1 = -1;
				goto label$30;
				label$52:;
			}
			if( DTYPE$1 != 16 ) goto label$54;
			{
				MAXVECTORWIDTH$ = 2;
				fb$result$1 = -1;
				goto label$30;
			}
			label$54:;
			label$53:;
		}
		goto label$33;
		label$55:;
		{
			DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
			if( (-(DTYPE$1 == 15) | -(DTYPE$1 == 20)) == 0 ) goto label$57;
			{
				fb$result$1 = -1;
				goto label$30;
			}
			goto label$56;
			label$57:;
			if( DTYPE$1 != 16 ) goto label$58;
			{
				MAXVECTORWIDTH$ = 2;
				fb$result$1 = -1;
				goto label$30;
			}
			label$58:;
			label$56:;
			fb$result$1 = 0;
			goto label$30;
		}
		goto label$33;
		label$59:;
		{
			DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
			if( DTYPE$1 != 15 ) goto label$61;
			{
				fb$result$1 = -1;
				goto label$30;
				label$61:;
			}
			if( DTYPE$1 != 16 ) goto label$63;
			{
				MAXVECTORWIDTH$ = 2;
				fb$result$1 = -1;
				goto label$30;
			}
			label$63:;
			label$62:;
			fb$result$1 = 0;
			goto label$30;
		}
		goto label$33;
		label$64:;
		{
			fb$result$1 = -1;
			goto label$30;
		}
		goto label$33;
		label$65:;
		{
		}
		goto label$33;
		label$34:;
		static const void* tmp$93[20] = {
			&&label$49,
			&&label$49,
			&&label$35,
			&&label$46,
			&&label$50,
			&&label$64,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$65,
			&&label$50,
			&&label$55,
			&&label$64,
			&&label$59,
			&&label$64,
		};
		if( (TMP$83$2 - 1u) > 19u ) goto label$65;
		goto *tmp$93[TMP$83$2 - 1u];
		label$33:;
	}
	fb$result$1 = 0;
	goto label$30;
	label$30:;
	return fb$result$1;
}

static void HGETVARDISTANCE( struct $7ASTNODE* VN$1, int32* VN_OFS$1, struct $7ASTNODE* N$1, int32* N_OFS$1 )
{
	label$66:;
	if( (-(*(int32*)VN$1 == 20) | -(*(int32*)VN$1 == 18)) == 0 ) goto label$69;
	{
		*VN_OFS$1 = (int32)((int64)*VN_OFS$1 + *(int64*)((uint8*)VN$1 + 24));
		*N_OFS$1 = (int32)((int64)*N_OFS$1 + *(int64*)((uint8*)N$1 + 24));
	}
	label$69:;
	label$68:;
	if( *(int32*)VN$1 != 17 ) goto label$71;
	{
		*VN_OFS$1 = (int32)((int64)*VN_OFS$1 + *(int64*)((uint8*)VN$1 + 24));
		*N_OFS$1 = (int32)((int64)*N_OFS$1 + *(int64*)((uint8*)N$1 + 24));
	}
	label$71:;
	label$70:;
	if( *(struct $7ASTNODE**)((uint8*)VN$1 + 64) != (struct $7ASTNODE*)0u ) goto label$73;
	{
		goto label$67;
		label$73:;
	}
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 64) != (struct $7ASTNODE*)0u ) goto label$75;
	{
		goto label$67;
		label$75:;
	}
	HGETVARDISTANCE( *(struct $7ASTNODE**)((uint8*)VN$1 + 64), VN_OFS$1, *(struct $7ASTNODE**)((uint8*)N$1 + 64), N_OFS$1 );
	label$67:;
}

static struct $7ASTNODE* HSKIPNEWNODES( struct $7ASTNODE* N$1, int32 DOMERGE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	struct $7ASTNODE* OLDNODE$1;
	label$78:;
	{
		OLDNODE$1 = N$1;
		if( *(int32*)N$1 != 4 ) goto label$82;
		{
			if( (-(*(int32*)((uint8*)N$1 + 24) == 75) | -(*(int32*)((uint8*)N$1 + 24) == 55)) == 0 ) goto label$84;
			{
				if( DOMERGE$1 == 0 ) goto label$86;
				{
					int32 TMP$84$5;
					if( *(int32*)((uint8*)N$1 + 16) != 0 ) goto label$87;
					TMP$84$5 = 2;
					goto label$316;
					label$87:;
					TMP$84$5 = *(int32*)((uint8*)N$1 + 16) + 1;
					label$316:;
					*(int32*)((uint8*)N$1 + 16) = TMP$84$5;
				}
				label$86:;
				label$85:;
				N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
			}
			label$84:;
			label$83:;
		}
		label$82:;
		label$81:;
		if( OLDNODE$1 != N$1 ) goto label$89;
		{
			goto label$79;
		}
		label$89:;
		label$88:;
	}
	label$80:;
	goto label$78;
	label$79:;
	fb$result$1 = N$1;
	goto label$77;
	label$77:;
	return fb$result$1;
}

static int32 HCHECKLOAD( struct $7ASTNODE* VN$1, struct $7ASTNODE* N$1, int32 DEREF$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$90:;
	if( (-(VN$1 == (struct $7ASTNODE*)0u) & -(N$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$93;
	{
		fb$result$1 = -1;
		goto label$91;
		label$93:;
	}
	if( (-(VN$1 == (struct $7ASTNODE*)0u) | -(N$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$95;
	{
		fb$result$1 = 0;
		goto label$91;
		label$95:;
	}
	struct $7ASTNODE* vr$7 = HSKIPNEWNODES( VN$1, 0 );
	VN$1 = vr$7;
	if( (-(*(int32*)VN$1 == 20) | -(*(int32*)VN$1 == 18)) == 0 ) goto label$97;
	{
		DEREF$1 = -1;
	}
	label$97:;
	label$96:;
	int32 vr$13 = HALLOWEDINVECTORIZE( VN$1, DEREF$1 );
	if( vr$13 != 0 ) goto label$99;
	{
		fb$result$1 = 0;
		goto label$91;
	}
	label$99:;
	label$98:;
	int32 vr$14 = HNODESMATCH( VN$1, N$1 );
	if( vr$14 != 0 ) goto label$101;
	{
		fb$result$1 = 0;
		goto label$91;
	}
	label$101:;
	label$100:;
	int32 vr$17 = HCHECKLOAD( *(struct $7ASTNODE**)((uint8*)VN$1 + 64), *(struct $7ASTNODE**)((uint8*)N$1 + 64), DEREF$1 );
	if( vr$17 != 0 ) goto label$103;
	{
		fb$result$1 = 0;
		goto label$91;
		label$103:;
	}
	int32 vr$20 = HCHECKLOAD( *(struct $7ASTNODE**)((uint8*)VN$1 + 68), *(struct $7ASTNODE**)((uint8*)N$1 + 68), DEREF$1 );
	if( vr$20 != 0 ) goto label$105;
	{
		fb$result$1 = 0;
		goto label$91;
		label$105:;
	}
	fb$result$1 = -1;
	goto label$91;
	label$91:;
	return fb$result$1;
}

static void HINSERTSWIZZLE( struct $7ASTNODE* N$1 )
{
	label$106:;
	struct $7ASTNODE* SWZNODE$1;
	SWZNODE$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* VARNODE$1;
	VARNODE$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* vr$0 = ASTNEWNODE( 0, 0, (struct $8FBSYMBOL*)0u );
	VARNODE$1 = vr$0;
	__builtin_memcpy( VARNODE$1, N$1, 80 );
	struct $7ASTNODE* vr$1 = ASTNEWUOP( 75, VARNODE$1 );
	SWZNODE$1 = vr$1;
	__builtin_memcpy( N$1, SWZNODE$1, 80 );
	*(int32*)((uint8*)N$1 + 16) = 2;
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = VARNODE$1;
	*(int32*)((uint8*)VARNODE$1 + 16) = 0;
	ASTDELNODE( SWZNODE$1 );
	label$107:;
}

static struct $7ASTNODE* HVECTORIZENODE( struct $7ASTNODE* N$1, int32 DIST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$108:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$111;
	{
		fb$result$1 = N$1;
		goto label$109;
		label$111:;
	}
	if( (-(*(int32*)N$1 == 4) | -(*(int32*)N$1 == 3)) == 0 ) goto label$113;
	{
		int32 TMP$85$2;
		if( *(int32*)((uint8*)N$1 + 16) != 0 ) goto label$114;
		TMP$85$2 = 2;
		goto label$317;
		label$114:;
		TMP$85$2 = *(int32*)((uint8*)N$1 + 16) + 1;
		label$317:;
		*(int32*)((uint8*)N$1 + 16) = TMP$85$2;
	}
	goto label$112;
	label$113:;
	{
		if( DIST$1 != 0 ) goto label$116;
		{
			*(int32*)((uint8*)N$1 + 16) = 0;
		}
		goto label$115;
		label$116:;
		{
			int32 TMP$86$3;
			if( *(int32*)((uint8*)N$1 + 16) != 0 ) goto label$117;
			TMP$86$3 = 2;
			goto label$318;
			label$117:;
			TMP$86$3 = *(int32*)((uint8*)N$1 + 16) + 1;
			label$318:;
			*(int32*)((uint8*)N$1 + 16) = TMP$86$3;
		}
		label$115:;
	}
	label$112:;
	fb$result$1 = N$1;
	goto label$109;
	label$109:;
	return fb$result$1;
}

static int32 HCHECKDEREFVAR( struct $7ASTNODE* N$1, int32* DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$118:;
	int32 RESULT$1;
	RESULT$1 = 0;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$121;
	{
		fb$result$1 = RESULT$1;
		goto label$119;
		label$121:;
	}
	label$122:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$123;
	{
		{
			$13AST_NODECLASS TMP$87$3;
			TMP$87$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$87$3 != 5 ) goto label$125;
			label$126:;
			{
				*DTYPE$1 = *(int32*)((uint8*)N$1 + 4) & 31;
				if( (-(*DTYPE$1 == 15) | -(*DTYPE$1 == 16)) == 0 ) goto label$128;
				{
					RESULT$1 = -1;
				}
				label$128:;
				label$127:;
				goto label$123;
			}
			goto label$124;
			label$125:;
			if( TMP$87$3 == 17 ) goto label$130;
			label$131:;
			if( TMP$87$3 != 19 ) goto label$129;
			label$130:;
			{
				*DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
				if( (-(*DTYPE$1 == 15) | -(*DTYPE$1 == 16)) == 0 ) goto label$133;
				{
					RESULT$1 = -1;
				}
				label$133:;
				label$132:;
				goto label$123;
			}
			goto label$124;
			label$129:;
			{
			}
			label$134:;
			label$124:;
		}
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
	}
	goto label$122;
	label$123:;
	fb$result$1 = RESULT$1;
	goto label$119;
	label$119:;
	return fb$result$1;
}

static int32 HCHECKARRAYVAR( struct $7ASTNODE* N$1, int32* DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$135:;
	fb$result$1 = 0;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		goto label$136;
		label$138:;
	}
	if( *(int32*)N$1 != 17 ) goto label$140;
	{
		*DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
		if( (-(*DTYPE$1 == 15) | -(*DTYPE$1 == 16)) == 0 ) goto label$142;
		{
			fb$result$1 = -1;
		}
		label$142:;
		label$141:;
	}
	label$140:;
	label$139:;
	label$136:;
	return fb$result$1;
}

static int32 HCHECKMEMOFFSET( struct $7ASTNODE* VECTORNODE$1, int32 OFFSET$1, $11FB_DATATYPE DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	int32 NEEDOFFSET$1;
	NEEDOFFSET$1 = 0;
	if( *(int32*)((uint8*)VECTORNODE$1 + 16) == 0 ) goto label$146;
	{
		int32 TMP$88$2;
		if( *(int32*)((uint8*)VECTORNODE$1 + 16) <= VECTORWIDTH$ ) goto label$148;
		{
			VECTORWIDTH$ = *(int32*)((uint8*)VECTORNODE$1 + 16);
			label$148:;
		}
		if( (DTYPE$1 & 480) == 0 ) goto label$149;
		TMP$88$2 = 24;
		goto label$319;
		label$149:;
		TMP$88$2 = DTYPE$1 & 31;
		label$319:;
		NEEDOFFSET$1 = VECTORWIDTH$ * *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$2 * 28)) + 4);
	}
	goto label$145;
	label$146:;
	{
		int32 TMP$89$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$150;
		TMP$89$2 = 24;
		goto label$320;
		label$150:;
		TMP$89$2 = DTYPE$1 & 31;
		label$320:;
		NEEDOFFSET$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 28)) + 4);
	}
	label$145:;
	fb$result$1 = -1;
	if( (-(DTYPE$1 == 15) | -(DTYPE$1 == 16)) == 0 ) goto label$152;
	{
		if( (*(int32*)((uint8*)VECTORNODE$1 + 16) & -(OFFSET$1 == 0)) == 0 ) goto label$154;
		{
			fb$result$1 = 0;
			goto label$144;
		}
		label$154:;
		label$153:;
		if( (-(OFFSET$1 != NEEDOFFSET$1) & -(OFFSET$1 != 0)) == 0 ) goto label$156;
		{
			fb$result$1 = 0;
		}
		label$156:;
		label$155:;
	}
	label$152:;
	label$151:;
	label$144:;
	return fb$result$1;
}

static $11FB_DATATYPE HGETASSIGNDATATYPE( struct $7ASTNODE* N$1 )
{
	$11FB_DATATYPE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$160;
	{
		fb$result$1 = 0;
		goto label$158;
		label$160:;
	}
	{
		$13AST_NODECLASS TMP$90$2;
		TMP$90$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$90$2 != 5 ) goto label$162;
		label$163:;
		{
			fb$result$1 = *(int32*)((uint8*)N$1 + 4) & 31;
			goto label$158;
		}
		goto label$161;
		label$162:;
		if( TMP$90$2 == 17 ) goto label$165;
		label$166:;
		if( TMP$90$2 != 19 ) goto label$164;
		label$165:;
		{
			fb$result$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 28) & 31;
			goto label$158;
		}
		goto label$161;
		label$164:;
		{
			$11FB_DATATYPE vr$8 = HGETASSIGNDATATYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
			fb$result$1 = vr$8;
			goto label$158;
		}
		label$167:;
		label$161:;
	}
	label$158:;
	return fb$result$1;
}

static int32 HMERGENODE( struct $7ASTNODE* VECTORNODE$1, struct $7ASTNODE* N$1, int32 DOMERGE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$168:;
	int32 OFFSET$1;
	int32 NEEDOFFSET$1;
	NEEDOFFSET$1 = 0;
	int32 VN_OFS$1;
	int32 N_OFS$1;
	int32 DTYPE$1;
	fb$result$1 = -1;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$171;
	{
		fb$result$1 = -1;
		goto label$169;
		label$171:;
	}
	if( VECTORNODE$1 != (struct $7ASTNODE*)0u ) goto label$173;
	{
		fb$result$1 = -1;
		goto label$169;
		label$173:;
	}
	struct $7ASTNODE* vr$1 = HSKIPNEWNODES( VECTORNODE$1, DOMERGE$1 );
	VECTORNODE$1 = vr$1;
	if( DOMERGE$1 != 0 ) goto label$175;
	{
		int32 vr$2 = HNODESMATCH( VECTORNODE$1, N$1 );
		if( vr$2 != 0 ) goto label$177;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$177:;
		label$176:;
		int32 vr$3 = HALLOWEDINVECTORIZE( VECTORNODE$1, 0 );
		if( vr$3 != 0 ) goto label$179;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$179:;
		label$178:;
	}
	label$175:;
	label$174:;
	if( *(int32*)VECTORNODE$1 != 2 ) goto label$181;
	{
		$11FB_DATATYPE vr$5 = HGETASSIGNDATATYPE( VECTORNODE$1 );
		DTYPE$1 = vr$5;
		N_OFS$1 = 0;
		VN_OFS$1 = 0;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		if( *(int32*)((uint8*)VECTORNODE$1 + 16) == 0 ) goto label$183;
		{
			int32 TMP$91$3;
			if( *(int32*)((uint8*)VECTORNODE$1 + 16) <= VECTORWIDTH$ ) goto label$185;
			{
				VECTORWIDTH$ = *(int32*)((uint8*)VECTORNODE$1 + 16);
				label$185:;
			}
			if( (DTYPE$1 & 480) == 0 ) goto label$186;
			TMP$91$3 = 24;
			goto label$321;
			label$186:;
			TMP$91$3 = DTYPE$1 & 31;
			label$321:;
			NEEDOFFSET$1 = VECTORWIDTH$ * *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$3 * 28)) + 4);
		}
		goto label$182;
		label$183:;
		{
			int32 TMP$92$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$187;
			TMP$92$3 = 24;
			goto label$322;
			label$187:;
			TMP$92$3 = DTYPE$1 & 31;
			label$322:;
			NEEDOFFSET$1 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$3 * 28)) + 4);
		}
		label$182:;
		if( OFFSET$1 == NEEDOFFSET$1 ) goto label$189;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$189:;
		label$188:;
	}
	label$181:;
	label$180:;
	if( *(int32*)((uint8*)VECTORNODE$1 + 16) != MAXVECTORWIDTH$ ) goto label$191;
	{
		fb$result$1 = 0;
		goto label$169;
	}
	label$191:;
	label$190:;
	if( *(int32*)VECTORNODE$1 != 19 ) goto label$193;
	{
		if( DOMERGE$1 != 0 ) goto label$195;
		{
			int32 vr$21 = HCHECKLOAD( VECTORNODE$1, N$1, 0 );
			if( vr$21 != 0 ) goto label$197;
			{
				fb$result$1 = 0;
				goto label$169;
			}
			label$197:;
			label$196:;
		}
		label$195:;
		label$194:;
		N_OFS$1 = 0;
		VN_OFS$1 = 0;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		DTYPE$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VECTORNODE$1 + 12) + 28) & 31;
		int32 vr$28 = HCHECKMEMOFFSET( VECTORNODE$1, OFFSET$1, DTYPE$1 );
		if( vr$28 != 0 ) goto label$199;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$199:;
		label$198:;
		if( DOMERGE$1 == 0 ) goto label$201;
		{
			if( (-(OFFSET$1 == 0) & -(VECTORWIDTH$ == 0)) == 0 ) goto label$203;
			{
				HINSERTSWIZZLE( VECTORNODE$1 );
			}
			goto label$202;
			label$203:;
			{
				HVECTORIZENODE( VECTORNODE$1, OFFSET$1 );
			}
			label$202:;
		}
		label$201:;
		label$200:;
		fb$result$1 = -1;
		goto label$169;
	}
	label$193:;
	label$192:;
	if( (-(*(int32*)VECTORNODE$1 == 20) | -(*(int32*)VECTORNODE$1 == 18)) == 0 ) goto label$205;
	{
		if( DOMERGE$1 != 0 ) goto label$207;
		{
			int32 vr$37 = HCHECKLOAD( VECTORNODE$1, N$1, -1 );
			if( vr$37 != 0 ) goto label$209;
			{
				fb$result$1 = 0;
				goto label$169;
			}
			label$209:;
			label$208:;
		}
		label$207:;
		label$206:;
		if( *(int32*)VECTORNODE$1 != 20 ) goto label$211;
		{
			int32 vr$41 = HCHECKDEREFVAR( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 64), &DTYPE$1 );
			if( vr$41 != 0 ) goto label$213;
			{
				fb$result$1 = 0;
				goto label$169;
			}
			label$213:;
			label$212:;
		}
		goto label$210;
		label$211:;
		{
			int32 vr$44 = HCHECKARRAYVAR( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 68), &DTYPE$1 );
			if( vr$44 != 0 ) goto label$215;
			{
				fb$result$1 = 0;
				goto label$169;
			}
			label$215:;
			label$214:;
		}
		label$210:;
		N_OFS$1 = 0;
		VN_OFS$1 = 0;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		int32 vr$48 = HCHECKMEMOFFSET( VECTORNODE$1, OFFSET$1, DTYPE$1 );
		if( vr$48 != 0 ) goto label$217;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$217:;
		label$216:;
		if( DOMERGE$1 == 0 ) goto label$219;
		{
			if( (-(OFFSET$1 == 0) & -(VECTORWIDTH$ == 0)) == 0 ) goto label$221;
			{
				HINSERTSWIZZLE( VECTORNODE$1 );
			}
			goto label$220;
			label$221:;
			{
				HVECTORIZENODE( VECTORNODE$1, OFFSET$1 );
			}
			label$220:;
		}
		label$219:;
		label$218:;
		fb$result$1 = -1;
		goto label$169;
	}
	label$205:;
	label$204:;
	if( *(int32*)VECTORNODE$1 != 17 ) goto label$223;
	{
		if( DOMERGE$1 != 0 ) goto label$225;
		{
			int32 vr$53 = HCHECKLOAD( VECTORNODE$1, N$1, 0 );
			if( vr$53 != 0 ) goto label$227;
			{
				fb$result$1 = 0;
				goto label$169;
			}
			label$227:;
			label$226:;
		}
		label$225:;
		label$224:;
		if( DOMERGE$1 == 0 ) goto label$229;
		{
			if( VECTORWIDTH$ != 0 ) goto label$231;
			{
				HINSERTSWIZZLE( VECTORNODE$1 );
			}
			label$231:;
			label$230:;
		}
		label$229:;
		label$228:;
		fb$result$1 = -1;
		goto label$169;
	}
	label$223:;
	label$222:;
	if( *(int32*)VECTORNODE$1 != 16 ) goto label$233;
	{
		DTYPE$1 = *(int32*)((uint8*)N$1 + 4) & 31;
		if( (-(DTYPE$1 == 15) | -(DTYPE$1 == 16)) == 0 ) goto label$235;
		{
			if( DOMERGE$1 == 0 ) goto label$237;
			{
				if( VECTORWIDTH$ != 0 ) goto label$239;
				{
					HINSERTSWIZZLE( VECTORNODE$1 );
				}
				label$239:;
				label$238:;
			}
			label$237:;
			label$236:;
		}
		goto label$234;
		label$235:;
		{
			fb$result$1 = 0;
			goto label$169;
		}
		label$234:;
		fb$result$1 = -1;
		goto label$169;
	}
	label$233:;
	label$232:;
	if( DOMERGE$1 == 0 ) goto label$241;
	{
		HVECTORIZENODE( VECTORNODE$1, OFFSET$1 );
	}
	label$241:;
	label$240:;
	int32 vr$62 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 64), *(struct $7ASTNODE**)((uint8*)N$1 + 64), DOMERGE$1 );
	if( vr$62 != 0 ) goto label$243;
	{
		fb$result$1 = 0;
		goto label$169;
		label$243:;
	}
	int32 vr$65 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 68), *(struct $7ASTNODE**)((uint8*)N$1 + 68), DOMERGE$1 );
	if( vr$65 != 0 ) goto label$245;
	{
		fb$result$1 = 0;
		goto label$169;
		label$245:;
	}
	label$169:;
	return fb$result$1;
}

static int32 HISVECTORIZABLE( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$246:;
	if( *(int32*)N$1 != 2 ) goto label$249;
	{
		fb$result$1 = -1;
		goto label$247;
		label$249:;
	}
	fb$result$1 = 0;
	goto label$247;
	label$247:;
	return fb$result$1;
}

static int32 ASTINTRATREEVECTORIZE( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$250:;
	struct $7ASTNODE* L$1;
	int32 CHANGED$1;
	CHANGED$1 = 0;
	if( N$1 != (struct $7ASTNODE*)0u ) goto label$253;
	{
		fb$result$1 = 0;
		goto label$251;
		label$253:;
	}
	if( *(int32*)N$1 != 3 ) goto label$255;
	{
		if( *(int32*)((uint8*)N$1 + 24) != 28 ) goto label$257;
		{
			MAXVECTORWIDTH$ = 4;
			VECTORWIDTH$ = 0;
			int32 vr$5 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64), *(struct $7ASTNODE**)((uint8*)N$1 + 68), 0 );
			if( vr$5 == 0 ) goto label$259;
			{
				MAXVECTORWIDTH$ = 4;
				VECTORWIDTH$ = 0;
				HMERGENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 64), *(struct $7ASTNODE**)((uint8*)N$1 + 68), -1 );
				L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 64);
				if( *(int32*)L$1 != 4 ) goto label$261;
				{
					if( *(int32*)((uint8*)L$1 + 24) != 55 ) goto label$263;
					{
						__builtin_memcpy( N$1, L$1, 80 );
						*(int32*)((uint8*)N$1 + 16) = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 16);
						ASTDELNODE( L$1 );
						fb$result$1 = -1;
						goto label$251;
					}
					label$263:;
					label$262:;
				}
				label$261:;
				label$260:;
				ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 68) = (struct $7ASTNODE*)0u;
				*($13AST_NODECLASS*)N$1 = 4;
				*(int32*)((uint8*)N$1 + 24) = 55;
				*(int32*)((uint8*)N$1 + 16) = *(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 16);
				fb$result$1 = -1;
				goto label$251;
			}
			label$259:;
			label$258:;
		}
		label$257:;
		label$256:;
	}
	label$255:;
	label$254:;
	int32 vr$22 = ASTINTRATREEVECTORIZE( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	if( vr$22 != -1 ) goto label$265;
	{
		CHANGED$1 = -1;
	}
	label$265:;
	label$264:;
	int32 vr$24 = ASTINTRATREEVECTORIZE( *(struct $7ASTNODE**)((uint8*)N$1 + 68) );
	if( vr$24 != -1 ) goto label$267;
	{
		CHANGED$1 = -1;
	}
	label$267:;
	label$266:;
	fb$result$1 = CHANGED$1;
	label$251:;
	return fb$result$1;
}

static struct $7ASTNODE* HGETNEXTTREE( struct $7ASTNODE* N$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$268:;
	struct $7ASTNODE* NEXTNODE$1;
	NEXTNODE$1 = (struct $7ASTNODE*)0u;
	label$270:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$271;
	{
		if( ((((((-(*(int32*)N$1 != 30) & -(*(int32*)N$1 != 27)) & -(*(int32*)N$1 != 21)) & -(*(int32*)N$1 != 24)) & -(*(int32*)N$1 != 0)) & -(*(int32*)N$1 != 33)) & -(*(int32*)N$1 != 34)) == 0 ) goto label$273;
		{
			NEXTNODE$1 = N$1;
		}
		label$273:;
		label$272:;
		if( NEXTNODE$1 == (struct $7ASTNODE*)0u ) goto label$275;
		{
			goto label$271;
			label$275:;
		}
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 76);
	}
	goto label$270;
	label$271:;
	fb$result$1 = NEXTNODE$1;
	label$269:;
	return fb$result$1;
}

static int32 HCHECKLINK( struct $7ASTNODE* N$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$276:;
	fb$result$1 = 0;
	if( *(int32*)N$1 == 15 ) goto label$279;
	{
		goto label$277;
		label$279:;
	}
	if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) == 24 ) goto label$281;
	{
		goto label$277;
		label$281:;
	}
	if( *(int32*)*(struct $7ASTNODE**)((uint8*)N$1 + 68) != 2 ) goto label$283;
	{
		fb$result$1 = -1;
	}
	label$283:;
	label$282:;
	label$277:;
	return fb$result$1;
}
