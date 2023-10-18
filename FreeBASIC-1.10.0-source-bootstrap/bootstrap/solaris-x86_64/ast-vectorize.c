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
		uint32* LITTEXTW;
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
typedef int64 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
typedef FBSTRING* (*tmp$28)( void*, int64* );
typedef uint32* (*tmp$29)( void*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
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
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__astzvectorize( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ASTDELNODE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
struct $7ASTNODE* ASTNEWUOP( int64, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
static int64 HNODESMATCH( struct $7ASTNODE*, struct $7ASTNODE* );
static int64 HALLOWEDINVECTORIZE( struct $7ASTNODE*, int64 );
static void HGETVARDISTANCE( struct $7ASTNODE*, int64*, struct $7ASTNODE*, int64* );
static struct $7ASTNODE* HSKIPNEWNODES( struct $7ASTNODE*, int64 );
static int64 HCHECKLOAD( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static void HINSERTSWIZZLE( struct $7ASTNODE* );
static struct $7ASTNODE* HVECTORIZENODE( struct $7ASTNODE*, int64 );
static int64 HCHECKDEREFVAR( struct $7ASTNODE*, int64* );
static int64 HCHECKARRAYVAR( struct $7ASTNODE*, int64* );
static int64 HCHECKMEMOFFSET( struct $7ASTNODE*, int64, $11FB_DATATYPE );
static $11FB_DATATYPE HGETASSIGNDATATYPE( struct $7ASTNODE* );
static int64 HMERGENODE( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
static int64 HISVECTORIZABLE( struct $7ASTNODE* );
static int64 ASTINTRATREEVECTORIZE( struct $7ASTNODE* );
static struct $7ASTNODE* HGETNEXTTREE( struct $7ASTNODE* );
static int64 HCHECKLINK( struct $7ASTNODE* );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
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
static struct $8FBARRAY2IlE tmp$81$;
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
static int64 VECTORWIDTH$;
static int64 MAXVECTORWIDTH$;

void ASTPROCVECTORIZE( struct $7ASTNODE* P$1 )
{
	label$284:;
	struct $7ASTNODE* TREEA$1;
	struct $7ASTNODE* TREEB$1;
	struct $7ASTNODE* NODEA$1;
	struct $7ASTNODE* NODEB$1;
	struct $7ASTNODE* PREV$1;
	struct $7ASTNODE* NXT$1;
	int64 INTRATREE$1;
	int64 PARALLELA$1;
	int64 PARALLELB$1;
	int64 DONEXT$1;
	struct $7ASTNODE* vr$0 = HGETNEXTTREE( P$1 );
	TREEA$1 = vr$0;
	label$286:;
	{
		if( TREEA$1 != (struct $7ASTNODE*)0ull ) goto label$290;
		{
			goto label$287;
			label$290:;
		}
		NODEA$1 = (struct $7ASTNODE*)0ull;
		PARALLELA$1 = 0ll;
		int64 vr$1 = HCHECKLINK( TREEA$1 );
		if( vr$1 != -1ll ) goto label$292;
		{
			NODEA$1 = *(struct $7ASTNODE**)((uint8*)TREEA$1 + 120ll);
		}
		goto label$291;
		label$292:;
		int64 vr$3 = HISVECTORIZABLE( TREEA$1 );
		if( vr$3 != -1ll ) goto label$293;
		{
			NODEA$1 = TREEA$1;
			PARALLELA$1 = -1ll;
		}
		label$293:;
		label$291:;
		MAXVECTORWIDTH$ = 4ll;
		VECTORWIDTH$ = 0ll;
		TREEB$1 = TREEA$1;
		label$294:;
		{
			struct $7ASTNODE* vr$5 = HGETNEXTTREE( *(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll) );
			TREEB$1 = vr$5;
			INTRATREE$1 = 0ll;
			PARALLELB$1 = 0ll;
			if( ((int64)-(TREEB$1 == (struct $7ASTNODE*)0ull) | (int64)-(PARALLELA$1 == 0ll)) == 0ll ) goto label$298;
			{
				INTRATREE$1 = -1ll;
			}
			goto label$297;
			label$298:;
			{
				int64 vr$9 = HISVECTORIZABLE( TREEB$1 );
				if( vr$9 != -1ll ) goto label$300;
				{
					PARALLELB$1 = -1ll;
					NODEB$1 = TREEB$1;
				}
				goto label$299;
				label$300:;
				{
					INTRATREE$1 = -1ll;
				}
				label$299:;
			}
			label$297:;
			DONEXT$1 = -1ll;
			if( (PARALLELA$1 & PARALLELB$1) == 0ll ) goto label$302;
			{
				int64 vr$11 = HMERGENODE( NODEA$1, NODEB$1, 0ll );
				if( vr$11 == 0ll ) goto label$304;
				{
					VECTORWIDTH$ = 0ll;
					HMERGENODE( NODEA$1, NODEB$1, -1ll );
					PREV$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 128ll);
					NXT$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll);
					ASTDELTREE( TREEB$1 );
					struct $7ASTNODE* vr$14 = ASTNEWNOP(  );
					TREEB$1 = vr$14;
					*(struct $7ASTNODE**)((uint8*)TREEB$1 + 128ll) = PREV$1;
					*(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll) = NXT$1;
					*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREEB$1 + 128ll) + 136ll) = TREEB$1;
					if( *(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll) == (struct $7ASTNODE*)0ull ) goto label$306;
					{
						*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll) + 128ll) = TREEB$1;
					}
					label$306:;
					label$305:;
					DONEXT$1 = 0ll;
				}
				goto label$303;
				label$304:;
				{
					INTRATREE$1 = -1ll;
				}
				label$303:;
			}
			label$302:;
			label$301:;
			if( ((int64)-(INTRATREE$1 == -1ll) & (int64)-(*(int64*)((uint8*)&ENV$ + 248ll) >= 2ll)) == 0ll ) goto label$308;
			{
				MAXVECTORWIDTH$ = 4ll;
				VECTORWIDTH$ = 0ll;
				label$309:;
				int64 vr$25 = ASTINTRATREEVECTORIZE( NODEA$1 );
				if( vr$25 == 0ll ) goto label$310;
				{
				}
				goto label$309;
				label$310:;
			}
			label$308:;
			label$307:;
			if( TREEB$1 == (struct $7ASTNODE*)0ull ) goto label$312;
			{
				if( DONEXT$1 == 0ll ) goto label$314;
				{
					TREEA$1 = TREEB$1;
					goto label$295;
				}
				goto label$313;
				label$314:;
				{
					TREEB$1 = *(struct $7ASTNODE**)((uint8*)TREEB$1 + 136ll);
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static int64 HNODESMATCH( struct $7ASTNODE* VN$1, struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( *(int64*)VN$1 == *(int64*)N$1 ) goto label$13;
	{
		fb$result$1 = 0ll;
		goto label$11;
	}
	label$13:;
	label$12:;
	if( *(int64*)VN$1 != 17ll ) goto label$15;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)VN$1 + 24ll) == *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) ) goto label$17;
		{
			fb$result$1 = 0ll;
			goto label$11;
		}
		label$17:;
		label$16:;
	}
	label$15:;
	label$14:;
	if( *(int64*)VN$1 != 16ll ) goto label$19;
	{
		int64 TMP$82$2;
		if( (*(int64*)((uint8*)VN$1 + 8ll) & 511ll) == (*(int64*)((uint8*)N$1 + 8ll) & 511ll) ) goto label$21;
		{
			fb$result$1 = 0ll;
			goto label$11;
		}
		label$21:;
		label$20:;
		if( (*(int64*)((uint8*)VN$1 + 8ll) & 480ll) == 0ll ) goto label$22;
		TMP$82$2 = 24ll;
		goto label$315;
		label$22:;
		TMP$82$2 = *(int64*)((uint8*)VN$1 + 8ll) & 31ll;
		label$315:;
		if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$82$2 * 56ll)) != 1ll ) goto label$24;
		{
			if( *(double*)((uint8*)VN$1 + 40ll) == *(double*)((uint8*)N$1 + 40ll) ) goto label$26;
			{
				fb$result$1 = 0ll;
				goto label$11;
			}
			label$26:;
			label$25:;
		}
		goto label$23;
		label$24:;
		{
			if( *(int64*)((uint8*)VN$1 + 40ll) == *(int64*)((uint8*)N$1 + 40ll) ) goto label$28;
			{
				fb$result$1 = 0ll;
				goto label$11;
			}
			label$28:;
			label$27:;
		}
		label$23:;
	}
	label$19:;
	label$18:;
	fb$result$1 = -1ll;
	goto label$11;
	label$11:;
	return fb$result$1;
}

static int64 HALLOWEDINVECTORIZE( struct $7ASTNODE* N$1, int64 DEREF$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$29:;
	int64 DTYPE$1;
	if( DEREF$1 == 0ll ) goto label$32;
	{
		fb$result$1 = -1ll;
		goto label$30;
		label$32:;
	}
	{
		uint64 TMP$83$2;
		TMP$83$2 = *(uint64*)N$1;
		goto label$34;
		label$35:;
		{
			if( *(int64*)((uint8*)N$1 + 40ll) != 28ll ) goto label$37;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$37:;
			}
			if( *(int64*)((uint8*)N$1 + 40ll) != 29ll ) goto label$39;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$39:;
			}
			if( *(int64*)((uint8*)N$1 + 40ll) != 30ll ) goto label$41;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$41:;
			}
			if( *(int64*)((uint8*)N$1 + 40ll) != 31ll ) goto label$43;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$43:;
			}
			if( *(int64*)((uint8*)N$1 + 40ll) != 0ll ) goto label$45;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$45:;
			}
		}
		goto label$33;
		label$46:;
		{
			if( *(int64*)((uint8*)N$1 + 40ll) != 75ll ) goto label$48;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$48:;
			}
		}
		goto label$33;
		label$49:;
		{
			fb$result$1 = -1ll;
			goto label$30;
		}
		goto label$33;
		label$50:;
		{
			DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
			if( DTYPE$1 != 15ll ) goto label$52;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$52:;
			}
			if( DTYPE$1 != 16ll ) goto label$54;
			{
				MAXVECTORWIDTH$ = 2ll;
				fb$result$1 = -1ll;
				goto label$30;
			}
			label$54:;
			label$53:;
		}
		goto label$33;
		label$55:;
		{
			DTYPE$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
			if( ((int64)-(DTYPE$1 == 15ll) | (int64)-(DTYPE$1 == 20ll)) == 0ll ) goto label$57;
			{
				fb$result$1 = -1ll;
				goto label$30;
			}
			goto label$56;
			label$57:;
			if( DTYPE$1 != 16ll ) goto label$58;
			{
				MAXVECTORWIDTH$ = 2ll;
				fb$result$1 = -1ll;
				goto label$30;
			}
			label$58:;
			label$56:;
			fb$result$1 = 0ll;
			goto label$30;
		}
		goto label$33;
		label$59:;
		{
			DTYPE$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
			if( DTYPE$1 != 15ll ) goto label$61;
			{
				fb$result$1 = -1ll;
				goto label$30;
				label$61:;
			}
			if( DTYPE$1 != 16ll ) goto label$63;
			{
				MAXVECTORWIDTH$ = 2ll;
				fb$result$1 = -1ll;
				goto label$30;
			}
			label$63:;
			label$62:;
			fb$result$1 = 0ll;
			goto label$30;
		}
		goto label$33;
		label$64:;
		{
			fb$result$1 = -1ll;
			goto label$30;
		}
		goto label$33;
		label$65:;
		{
		}
		goto label$33;
		label$34:;
		static const void* tmp$93[20ll] = {
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
		if( (TMP$83$2 - 1ull) > 19ull ) goto label$65;
		goto *tmp$93[TMP$83$2 - 1ull];
		label$33:;
	}
	fb$result$1 = 0ll;
	goto label$30;
	label$30:;
	return fb$result$1;
}

static void HGETVARDISTANCE( struct $7ASTNODE* VN$1, int64* VN_OFS$1, struct $7ASTNODE* N$1, int64* N_OFS$1 )
{
	label$66:;
	if( ((int64)-(*(int64*)VN$1 == 20ll) | (int64)-(*(int64*)VN$1 == 18ll)) == 0ll ) goto label$69;
	{
		*VN_OFS$1 = *VN_OFS$1 + *(int64*)((uint8*)VN$1 + 40ll);
		*N_OFS$1 = *N_OFS$1 + *(int64*)((uint8*)N$1 + 40ll);
	}
	label$69:;
	label$68:;
	if( *(int64*)VN$1 != 17ll ) goto label$71;
	{
		*VN_OFS$1 = *VN_OFS$1 + *(int64*)((uint8*)VN$1 + 40ll);
		*N_OFS$1 = *N_OFS$1 + *(int64*)((uint8*)N$1 + 40ll);
	}
	label$71:;
	label$70:;
	if( *(struct $7ASTNODE**)((uint8*)VN$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$73;
	{
		goto label$67;
		label$73:;
	}
	if( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$75;
	{
		goto label$67;
		label$75:;
	}
	HGETVARDISTANCE( *(struct $7ASTNODE**)((uint8*)VN$1 + 112ll), VN_OFS$1, *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), N_OFS$1 );
	label$67:;
}

static struct $7ASTNODE* HSKIPNEWNODES( struct $7ASTNODE* N$1, int64 DOMERGE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$76:;
	struct $7ASTNODE* OLDNODE$1;
	label$78:;
	{
		OLDNODE$1 = N$1;
		if( *(int64*)N$1 != 4ll ) goto label$82;
		{
			if( ((int64)-(*(int64*)((uint8*)N$1 + 40ll) == 75ll) | (int64)-(*(int64*)((uint8*)N$1 + 40ll) == 55ll)) == 0ll ) goto label$84;
			{
				if( DOMERGE$1 == 0ll ) goto label$86;
				{
					int64 TMP$84$5;
					if( *(int64*)((uint8*)N$1 + 32ll) != 0ll ) goto label$87;
					TMP$84$5 = 2ll;
					goto label$316;
					label$87:;
					TMP$84$5 = *(int64*)((uint8*)N$1 + 32ll) + 1ll;
					label$316:;
					*(int64*)((uint8*)N$1 + 32ll) = TMP$84$5;
				}
				label$86:;
				label$85:;
				N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
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

static int64 HCHECKLOAD( struct $7ASTNODE* VN$1, struct $7ASTNODE* N$1, int64 DEREF$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$90:;
	if( ((int64)-(VN$1 == (struct $7ASTNODE*)0ull) & (int64)-(N$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$93;
	{
		fb$result$1 = -1ll;
		goto label$91;
		label$93:;
	}
	if( ((int64)-(VN$1 == (struct $7ASTNODE*)0ull) | (int64)-(N$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$95;
	{
		fb$result$1 = 0ll;
		goto label$91;
		label$95:;
	}
	struct $7ASTNODE* vr$7 = HSKIPNEWNODES( VN$1, 0ll );
	VN$1 = vr$7;
	if( ((int64)-(*(int64*)VN$1 == 20ll) | (int64)-(*(int64*)VN$1 == 18ll)) == 0ll ) goto label$97;
	{
		DEREF$1 = -1ll;
	}
	label$97:;
	label$96:;
	int64 vr$13 = HALLOWEDINVECTORIZE( VN$1, DEREF$1 );
	if( vr$13 != 0ll ) goto label$99;
	{
		fb$result$1 = 0ll;
		goto label$91;
	}
	label$99:;
	label$98:;
	int64 vr$14 = HNODESMATCH( VN$1, N$1 );
	if( vr$14 != 0ll ) goto label$101;
	{
		fb$result$1 = 0ll;
		goto label$91;
	}
	label$101:;
	label$100:;
	int64 vr$17 = HCHECKLOAD( *(struct $7ASTNODE**)((uint8*)VN$1 + 112ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), DEREF$1 );
	if( vr$17 != 0ll ) goto label$103;
	{
		fb$result$1 = 0ll;
		goto label$91;
		label$103:;
	}
	int64 vr$20 = HCHECKLOAD( *(struct $7ASTNODE**)((uint8*)VN$1 + 120ll), *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), DEREF$1 );
	if( vr$20 != 0ll ) goto label$105;
	{
		fb$result$1 = 0ll;
		goto label$91;
		label$105:;
	}
	fb$result$1 = -1ll;
	goto label$91;
	label$91:;
	return fb$result$1;
}

static void HINSERTSWIZZLE( struct $7ASTNODE* N$1 )
{
	label$106:;
	struct $7ASTNODE* SWZNODE$1;
	SWZNODE$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* VARNODE$1;
	VARNODE$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* vr$0 = ASTNEWNODE( 0ll, 0ll, (struct $8FBSYMBOL*)0ull );
	VARNODE$1 = vr$0;
	__builtin_memcpy( VARNODE$1, N$1, 144 );
	struct $7ASTNODE* vr$1 = ASTNEWUOP( 75ll, VARNODE$1 );
	SWZNODE$1 = vr$1;
	__builtin_memcpy( N$1, SWZNODE$1, 144 );
	*(int64*)((uint8*)N$1 + 32ll) = 2ll;
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = VARNODE$1;
	*(int64*)((uint8*)VARNODE$1 + 32ll) = 0ll;
	ASTDELNODE( SWZNODE$1 );
	label$107:;
}

static struct $7ASTNODE* HVECTORIZENODE( struct $7ASTNODE* N$1, int64 DIST$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$108:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$111;
	{
		fb$result$1 = N$1;
		goto label$109;
		label$111:;
	}
	if( ((int64)-(*(int64*)N$1 == 4ll) | (int64)-(*(int64*)N$1 == 3ll)) == 0ll ) goto label$113;
	{
		int64 TMP$85$2;
		if( *(int64*)((uint8*)N$1 + 32ll) != 0ll ) goto label$114;
		TMP$85$2 = 2ll;
		goto label$317;
		label$114:;
		TMP$85$2 = *(int64*)((uint8*)N$1 + 32ll) + 1ll;
		label$317:;
		*(int64*)((uint8*)N$1 + 32ll) = TMP$85$2;
	}
	goto label$112;
	label$113:;
	{
		if( DIST$1 != 0ll ) goto label$116;
		{
			*(int64*)((uint8*)N$1 + 32ll) = 0ll;
		}
		goto label$115;
		label$116:;
		{
			int64 TMP$86$3;
			if( *(int64*)((uint8*)N$1 + 32ll) != 0ll ) goto label$117;
			TMP$86$3 = 2ll;
			goto label$318;
			label$117:;
			TMP$86$3 = *(int64*)((uint8*)N$1 + 32ll) + 1ll;
			label$318:;
			*(int64*)((uint8*)N$1 + 32ll) = TMP$86$3;
		}
		label$115:;
	}
	label$112:;
	fb$result$1 = N$1;
	goto label$109;
	label$109:;
	return fb$result$1;
}

static int64 HCHECKDEREFVAR( struct $7ASTNODE* N$1, int64* DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$118:;
	int64 RESULT$1;
	RESULT$1 = 0ll;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$121;
	{
		fb$result$1 = RESULT$1;
		goto label$119;
		label$121:;
	}
	label$122:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$123;
	{
		{
			$13AST_NODECLASS TMP$87$3;
			TMP$87$3 = *($13AST_NODECLASS*)N$1;
			if( TMP$87$3 != 5ll ) goto label$125;
			label$126:;
			{
				*DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
				if( ((int64)-(*DTYPE$1 == 15ll) | (int64)-(*DTYPE$1 == 16ll)) == 0ll ) goto label$128;
				{
					RESULT$1 = -1ll;
				}
				label$128:;
				label$127:;
				goto label$123;
			}
			goto label$124;
			label$125:;
			if( TMP$87$3 == 17ll ) goto label$130;
			label$131:;
			if( TMP$87$3 != 19ll ) goto label$129;
			label$130:;
			{
				*DTYPE$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
				if( ((int64)-(*DTYPE$1 == 15ll) | (int64)-(*DTYPE$1 == 16ll)) == 0ll ) goto label$133;
				{
					RESULT$1 = -1ll;
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
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
	}
	goto label$122;
	label$123:;
	fb$result$1 = RESULT$1;
	goto label$119;
	label$119:;
	return fb$result$1;
}

static int64 HCHECKARRAYVAR( struct $7ASTNODE* N$1, int64* DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$135:;
	fb$result$1 = 0ll;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		goto label$136;
		label$138:;
	}
	if( *(int64*)N$1 != 17ll ) goto label$140;
	{
		*DTYPE$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
		if( ((int64)-(*DTYPE$1 == 15ll) | (int64)-(*DTYPE$1 == 16ll)) == 0ll ) goto label$142;
		{
			fb$result$1 = -1ll;
		}
		label$142:;
		label$141:;
	}
	label$140:;
	label$139:;
	label$136:;
	return fb$result$1;
}

static int64 HCHECKMEMOFFSET( struct $7ASTNODE* VECTORNODE$1, int64 OFFSET$1, $11FB_DATATYPE DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$143:;
	int64 NEEDOFFSET$1;
	NEEDOFFSET$1 = 0ll;
	if( *(int64*)((uint8*)VECTORNODE$1 + 32ll) == 0ll ) goto label$146;
	{
		int64 TMP$88$2;
		if( *(int64*)((uint8*)VECTORNODE$1 + 32ll) <= VECTORWIDTH$ ) goto label$148;
		{
			VECTORWIDTH$ = *(int64*)((uint8*)VECTORNODE$1 + 32ll);
			label$148:;
		}
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$149;
		TMP$88$2 = 24ll;
		goto label$319;
		label$149:;
		TMP$88$2 = DTYPE$1 & 31ll;
		label$319:;
		NEEDOFFSET$1 = VECTORWIDTH$ * *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$88$2 * 56ll)) + 8ll);
	}
	goto label$145;
	label$146:;
	{
		int64 TMP$89$2;
		if( (DTYPE$1 & 480ll) == 0ll ) goto label$150;
		TMP$89$2 = 24ll;
		goto label$320;
		label$150:;
		TMP$89$2 = DTYPE$1 & 31ll;
		label$320:;
		NEEDOFFSET$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$89$2 * 56ll)) + 8ll);
	}
	label$145:;
	fb$result$1 = -1ll;
	if( ((int64)-(DTYPE$1 == 15ll) | (int64)-(DTYPE$1 == 16ll)) == 0ll ) goto label$152;
	{
		if( (*(int64*)((uint8*)VECTORNODE$1 + 32ll) & (int64)-(OFFSET$1 == 0ll)) == 0ll ) goto label$154;
		{
			fb$result$1 = 0ll;
			goto label$144;
		}
		label$154:;
		label$153:;
		if( ((int64)-(OFFSET$1 != NEEDOFFSET$1) & (int64)-(OFFSET$1 != 0ll)) == 0ll ) goto label$156;
		{
			fb$result$1 = 0ll;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$157:;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$160;
	{
		fb$result$1 = 0ll;
		goto label$158;
		label$160:;
	}
	{
		$13AST_NODECLASS TMP$90$2;
		TMP$90$2 = *($13AST_NODECLASS*)N$1;
		if( TMP$90$2 != 5ll ) goto label$162;
		label$163:;
		{
			fb$result$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
			goto label$158;
		}
		goto label$161;
		label$162:;
		if( TMP$90$2 == 17ll ) goto label$165;
		label$166:;
		if( TMP$90$2 != 19ll ) goto label$164;
		label$165:;
		{
			fb$result$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 56ll) & 31ll;
			goto label$158;
		}
		goto label$161;
		label$164:;
		{
			$11FB_DATATYPE vr$8 = HGETASSIGNDATATYPE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
			fb$result$1 = vr$8;
			goto label$158;
		}
		label$167:;
		label$161:;
	}
	label$158:;
	return fb$result$1;
}

static int64 HMERGENODE( struct $7ASTNODE* VECTORNODE$1, struct $7ASTNODE* N$1, int64 DOMERGE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$168:;
	int64 OFFSET$1;
	int64 NEEDOFFSET$1;
	NEEDOFFSET$1 = 0ll;
	int64 VN_OFS$1;
	int64 N_OFS$1;
	int64 DTYPE$1;
	fb$result$1 = -1ll;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$171;
	{
		fb$result$1 = -1ll;
		goto label$169;
		label$171:;
	}
	if( VECTORNODE$1 != (struct $7ASTNODE*)0ull ) goto label$173;
	{
		fb$result$1 = -1ll;
		goto label$169;
		label$173:;
	}
	struct $7ASTNODE* vr$1 = HSKIPNEWNODES( VECTORNODE$1, DOMERGE$1 );
	VECTORNODE$1 = vr$1;
	if( DOMERGE$1 != 0ll ) goto label$175;
	{
		int64 vr$2 = HNODESMATCH( VECTORNODE$1, N$1 );
		if( vr$2 != 0ll ) goto label$177;
		{
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$177:;
		label$176:;
		int64 vr$3 = HALLOWEDINVECTORIZE( VECTORNODE$1, 0ll );
		if( vr$3 != 0ll ) goto label$179;
		{
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$179:;
		label$178:;
	}
	label$175:;
	label$174:;
	if( *(int64*)VECTORNODE$1 != 2ll ) goto label$181;
	{
		$11FB_DATATYPE vr$5 = HGETASSIGNDATATYPE( VECTORNODE$1 );
		DTYPE$1 = vr$5;
		N_OFS$1 = 0ll;
		VN_OFS$1 = 0ll;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		if( *(int64*)((uint8*)VECTORNODE$1 + 32ll) == 0ll ) goto label$183;
		{
			int64 TMP$91$3;
			if( *(int64*)((uint8*)VECTORNODE$1 + 32ll) <= VECTORWIDTH$ ) goto label$185;
			{
				VECTORWIDTH$ = *(int64*)((uint8*)VECTORNODE$1 + 32ll);
				label$185:;
			}
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$186;
			TMP$91$3 = 24ll;
			goto label$321;
			label$186:;
			TMP$91$3 = DTYPE$1 & 31ll;
			label$321:;
			NEEDOFFSET$1 = VECTORWIDTH$ * *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$91$3 * 56ll)) + 8ll);
		}
		goto label$182;
		label$183:;
		{
			int64 TMP$92$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$187;
			TMP$92$3 = 24ll;
			goto label$322;
			label$187:;
			TMP$92$3 = DTYPE$1 & 31ll;
			label$322:;
			NEEDOFFSET$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$92$3 * 56ll)) + 8ll);
		}
		label$182:;
		if( OFFSET$1 == NEEDOFFSET$1 ) goto label$189;
		{
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$189:;
		label$188:;
	}
	label$181:;
	label$180:;
	if( *(int64*)((uint8*)VECTORNODE$1 + 32ll) != MAXVECTORWIDTH$ ) goto label$191;
	{
		fb$result$1 = 0ll;
		goto label$169;
	}
	label$191:;
	label$190:;
	if( *(int64*)VECTORNODE$1 != 19ll ) goto label$193;
	{
		if( DOMERGE$1 != 0ll ) goto label$195;
		{
			int64 vr$21 = HCHECKLOAD( VECTORNODE$1, N$1, 0ll );
			if( vr$21 != 0ll ) goto label$197;
			{
				fb$result$1 = 0ll;
				goto label$169;
			}
			label$197:;
			label$196:;
		}
		label$195:;
		label$194:;
		N_OFS$1 = 0ll;
		VN_OFS$1 = 0ll;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		DTYPE$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)VECTORNODE$1 + 24ll) + 56ll) & 31ll;
		int64 vr$28 = HCHECKMEMOFFSET( VECTORNODE$1, OFFSET$1, DTYPE$1 );
		if( vr$28 != 0ll ) goto label$199;
		{
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$199:;
		label$198:;
		if( DOMERGE$1 == 0ll ) goto label$201;
		{
			if( ((int64)-(OFFSET$1 == 0ll) & (int64)-(VECTORWIDTH$ == 0ll)) == 0ll ) goto label$203;
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
		fb$result$1 = -1ll;
		goto label$169;
	}
	label$193:;
	label$192:;
	if( ((int64)-(*(int64*)VECTORNODE$1 == 20ll) | (int64)-(*(int64*)VECTORNODE$1 == 18ll)) == 0ll ) goto label$205;
	{
		if( DOMERGE$1 != 0ll ) goto label$207;
		{
			int64 vr$37 = HCHECKLOAD( VECTORNODE$1, N$1, -1ll );
			if( vr$37 != 0ll ) goto label$209;
			{
				fb$result$1 = 0ll;
				goto label$169;
			}
			label$209:;
			label$208:;
		}
		label$207:;
		label$206:;
		if( *(int64*)VECTORNODE$1 != 20ll ) goto label$211;
		{
			int64 vr$41 = HCHECKDEREFVAR( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 112ll), &DTYPE$1 );
			if( vr$41 != 0ll ) goto label$213;
			{
				fb$result$1 = 0ll;
				goto label$169;
			}
			label$213:;
			label$212:;
		}
		goto label$210;
		label$211:;
		{
			int64 vr$44 = HCHECKARRAYVAR( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 120ll), &DTYPE$1 );
			if( vr$44 != 0ll ) goto label$215;
			{
				fb$result$1 = 0ll;
				goto label$169;
			}
			label$215:;
			label$214:;
		}
		label$210:;
		N_OFS$1 = 0ll;
		VN_OFS$1 = 0ll;
		HGETVARDISTANCE( VECTORNODE$1, &VN_OFS$1, N$1, &N_OFS$1 );
		OFFSET$1 = N_OFS$1 - VN_OFS$1;
		int64 vr$48 = HCHECKMEMOFFSET( VECTORNODE$1, OFFSET$1, DTYPE$1 );
		if( vr$48 != 0ll ) goto label$217;
		{
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$217:;
		label$216:;
		if( DOMERGE$1 == 0ll ) goto label$219;
		{
			if( ((int64)-(OFFSET$1 == 0ll) & (int64)-(VECTORWIDTH$ == 0ll)) == 0ll ) goto label$221;
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
		fb$result$1 = -1ll;
		goto label$169;
	}
	label$205:;
	label$204:;
	if( *(int64*)VECTORNODE$1 != 17ll ) goto label$223;
	{
		if( DOMERGE$1 != 0ll ) goto label$225;
		{
			int64 vr$53 = HCHECKLOAD( VECTORNODE$1, N$1, 0ll );
			if( vr$53 != 0ll ) goto label$227;
			{
				fb$result$1 = 0ll;
				goto label$169;
			}
			label$227:;
			label$226:;
		}
		label$225:;
		label$224:;
		if( DOMERGE$1 == 0ll ) goto label$229;
		{
			if( VECTORWIDTH$ != 0ll ) goto label$231;
			{
				HINSERTSWIZZLE( VECTORNODE$1 );
			}
			label$231:;
			label$230:;
		}
		label$229:;
		label$228:;
		fb$result$1 = -1ll;
		goto label$169;
	}
	label$223:;
	label$222:;
	if( *(int64*)VECTORNODE$1 != 16ll ) goto label$233;
	{
		DTYPE$1 = *(int64*)((uint8*)N$1 + 8ll) & 31ll;
		if( ((int64)-(DTYPE$1 == 15ll) | (int64)-(DTYPE$1 == 16ll)) == 0ll ) goto label$235;
		{
			if( DOMERGE$1 == 0ll ) goto label$237;
			{
				if( VECTORWIDTH$ != 0ll ) goto label$239;
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
			fb$result$1 = 0ll;
			goto label$169;
		}
		label$234:;
		fb$result$1 = -1ll;
		goto label$169;
	}
	label$233:;
	label$232:;
	if( DOMERGE$1 == 0ll ) goto label$241;
	{
		HVECTORIZENODE( VECTORNODE$1, OFFSET$1 );
	}
	label$241:;
	label$240:;
	int64 vr$62 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 112ll), *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), DOMERGE$1 );
	if( vr$62 != 0ll ) goto label$243;
	{
		fb$result$1 = 0ll;
		goto label$169;
		label$243:;
	}
	int64 vr$65 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)VECTORNODE$1 + 120ll), *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), DOMERGE$1 );
	if( vr$65 != 0ll ) goto label$245;
	{
		fb$result$1 = 0ll;
		goto label$169;
		label$245:;
	}
	label$169:;
	return fb$result$1;
}

static int64 HISVECTORIZABLE( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$246:;
	if( *(int64*)N$1 != 2ll ) goto label$249;
	{
		fb$result$1 = -1ll;
		goto label$247;
		label$249:;
	}
	fb$result$1 = 0ll;
	goto label$247;
	label$247:;
	return fb$result$1;
}

static int64 ASTINTRATREEVECTORIZE( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$250:;
	struct $7ASTNODE* L$1;
	int64 CHANGED$1;
	CHANGED$1 = 0ll;
	if( N$1 != (struct $7ASTNODE*)0ull ) goto label$253;
	{
		fb$result$1 = 0ll;
		goto label$251;
		label$253:;
	}
	if( *(int64*)N$1 != 3ll ) goto label$255;
	{
		if( *(int64*)((uint8*)N$1 + 40ll) != 28ll ) goto label$257;
		{
			MAXVECTORWIDTH$ = 4ll;
			VECTORWIDTH$ = 0ll;
			int64 vr$5 = HMERGENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), 0ll );
			if( vr$5 == 0ll ) goto label$259;
			{
				MAXVECTORWIDTH$ = 4ll;
				VECTORWIDTH$ = 0ll;
				HMERGENODE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll), *(struct $7ASTNODE**)((uint8*)N$1 + 120ll), -1ll );
				L$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 112ll);
				if( *(int64*)L$1 != 4ll ) goto label$261;
				{
					if( *(int64*)((uint8*)L$1 + 40ll) != 55ll ) goto label$263;
					{
						__builtin_memcpy( N$1, L$1, 144 );
						*(int64*)((uint8*)N$1 + 32ll) = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 32ll);
						ASTDELNODE( L$1 );
						fb$result$1 = -1ll;
						goto label$251;
					}
					label$263:;
					label$262:;
				}
				label$261:;
				label$260:;
				ASTDELTREE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
				*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) = (struct $7ASTNODE*)0ull;
				*($13AST_NODECLASS*)N$1 = 4ll;
				*(int64*)((uint8*)N$1 + 40ll) = 55ll;
				*(int64*)((uint8*)N$1 + 32ll) = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 32ll);
				fb$result$1 = -1ll;
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
	int64 vr$22 = ASTINTRATREEVECTORIZE( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	if( vr$22 != -1ll ) goto label$265;
	{
		CHANGED$1 = -1ll;
	}
	label$265:;
	label$264:;
	int64 vr$24 = ASTINTRATREEVECTORIZE( *(struct $7ASTNODE**)((uint8*)N$1 + 120ll) );
	if( vr$24 != -1ll ) goto label$267;
	{
		CHANGED$1 = -1ll;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$268:;
	struct $7ASTNODE* NEXTNODE$1;
	NEXTNODE$1 = (struct $7ASTNODE*)0ull;
	label$270:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$271;
	{
		if( (((((((int64)-(*(int64*)N$1 != 30ll) & (int64)-(*(int64*)N$1 != 27ll)) & (int64)-(*(int64*)N$1 != 21ll)) & (int64)-(*(int64*)N$1 != 24ll)) & (int64)-(*(int64*)N$1 != 0ll)) & (int64)-(*(int64*)N$1 != 33ll)) & (int64)-(*(int64*)N$1 != 34ll)) == 0ll ) goto label$273;
		{
			NEXTNODE$1 = N$1;
		}
		label$273:;
		label$272:;
		if( NEXTNODE$1 == (struct $7ASTNODE*)0ull ) goto label$275;
		{
			goto label$271;
			label$275:;
		}
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	}
	goto label$270;
	label$271:;
	fb$result$1 = NEXTNODE$1;
	label$269:;
	return fb$result$1;
}

static int64 HCHECKLINK( struct $7ASTNODE* N$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$276:;
	fb$result$1 = 0ll;
	if( *(int64*)N$1 == 15ll ) goto label$279;
	{
		goto label$277;
		label$279:;
	}
	if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) == 24ll ) goto label$281;
	{
		goto label$277;
		label$281:;
	}
	if( *(int64*)*(struct $7ASTNODE**)((uint8*)N$1 + 120ll) != 2ll ) goto label$283;
	{
		fb$result$1 = -1ll;
	}
	label$283:;
	label$282:;
	label$277:;
	return fb$result$1;
}
