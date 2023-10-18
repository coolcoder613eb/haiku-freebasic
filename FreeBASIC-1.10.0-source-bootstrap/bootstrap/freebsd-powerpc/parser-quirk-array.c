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
struct $8DZSTRING {
	uint8* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 12 );
struct $8DWSTRING {
	uint32* DATA;
	int32 LEN;
	int32 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 12 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 12 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int32 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 388 );
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int32* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int32* );
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
typedef int32 $8FB_TOKEN;
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
static void fb_ctor__parserzquirkzarray( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
struct $7ASTNODE* ASTSCOPEBEGIN( void );
void ASTSCOPEEND( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* ASTNEWSTACK( int32, struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* );
int32 ASTCHECKASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 ASTHASSIDEFX( struct $7ASTNODE* );
struct $7ASTNODE* ASTMAKEREF( struct $7ASTNODE** );
struct $7ASTNODE* ASTBUILDARRAYBOUND( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
struct $7ASTNODE* RTLARRAYCLEAR( struct $7ASTNODE* );
struct $7ASTNODE* RTLARRAYERASE( struct $7ASTNODE*, int32, int32 );
int32 RTLMEMSWAP( struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLSTRSWAP( struct $7ASTNODE*, struct $7ASTNODE* );
int32 RTLWSTRSWAP( struct $7ASTNODE*, struct $7ASTNODE* );
static int32 HSCOPEDSWAP( void );
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

int32 CERASESTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	LEXSKIPTOKEN( 2048 );
	label$12:;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$1 = CVARORDEREF( 1 );
		EXPR$2 = vr$1;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$16;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			HSKIPUNTIL( 44, 0, 0, 0 );
		}
		goto label$15;
		label$16:;
		{
			struct $7ASTNODE* vr$2 = ASTREMOVENIDXARRAY( EXPR$2 );
			EXPR$2 = vr$2;
			struct $8FBSYMBOL* S$3;
			S$3 = *(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 12);
			if( S$3 == (struct $8FBSYMBOL*)0u ) goto label$18;
			{
				int32 vr$4 = SYMBISARRAY( S$3 );
				if( vr$4 != 0 ) goto label$20;
				{
					S$3 = (struct $8FBSYMBOL*)0u;
				}
				label$20:;
				label$19:;
			}
			label$18:;
			label$17:;
			if( S$3 != (struct $8FBSYMBOL*)0u ) goto label$22;
			{
				ERRREPORT( 63, 0, (uint8*)0u );
				HSKIPUNTIL( 44, 0, 0, 0 );
			}
			goto label$21;
			label$22:;
			{
				if( (*(int32*)((uint8*)EXPR$2 + 4) & 512) == 0 ) goto label$24;
				{
					ERRREPORT( 119, 0, (uint8*)0u );
				}
				label$24:;
				label$23:;
				if( (*(int32*)((uint8*)S$3 + 4) & 16388) == 0 ) goto label$26;
				{
					struct $7ASTNODE* vr$9 = RTLARRAYERASE( EXPR$2, -1, -1 );
					ASTADD( vr$9 );
				}
				goto label$25;
				label$26:;
				{
					struct $7ASTNODE* vr$10 = RTLARRAYCLEAR( EXPR$2 );
					ASTADD( vr$10 );
				}
				label$25:;
			}
			label$21:;
		}
		label$15:;
	}
	label$14:;
	int32 vr$11 = HMATCH( 44, 0 );
	if( vr$11 != 0 ) goto label$12;
	label$13:;
	fb$result$1 = -1;
	label$11:;
	return fb$result$1;
}

int32 CSWAPSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$89:;
	struct $7ASTNODE* SCOPENODE$1;
	struct $7ASTNODE* vr$1 = ASTSCOPEBEGIN(  );
	SCOPENODE$1 = vr$1;
	int32 vr$2 = HSCOPEDSWAP(  );
	fb$result$1 = vr$2;
	ASTSCOPEEND( SCOPENODE$1 );
	label$90:;
	return fb$result$1;
}

struct $7ASTNODE* CARRAYFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$91:;
	struct $7ASTNODE* ARRAYEXPR$1;
	struct $7ASTNODE* DIMEXPR$1;
	struct $8FBSYMBOL* S$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		if( TK$1 == 495 ) goto label$95;
		label$96:;
		if( TK$1 != 496 ) goto label$94;
		label$95:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$1 = LEXGETTOKEN( 0 );
			if( vr$1 == 40 ) goto label$98;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$97;
			label$98:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$97:;
			struct $7ASTNODE* vr$2 = CVARORDEREF( 1 );
			ARRAYEXPR$1 = vr$2;
			if( ARRAYEXPR$1 != (struct $7ASTNODE*)0u ) goto label$100;
			{
				ERRREPORT( 14, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$3;
				goto label$92;
			}
			label$100:;
			label$99:;
			struct $7ASTNODE* vr$4 = ASTREMOVENIDXARRAY( ARRAYEXPR$1 );
			ARRAYEXPR$1 = vr$4;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)ARRAYEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$102;
			{
				int32 vr$6 = SYMBISARRAY( S$1 );
				if( vr$6 != 0 ) goto label$104;
				{
					S$1 = (struct $8FBSYMBOL*)0u;
				}
				label$104:;
				label$103:;
			}
			label$102:;
			label$101:;
			if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$106;
			{
				ERRREPORT( 63, -1, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$7;
				goto label$92;
			}
			label$106:;
			label$105:;
			int32 vr$8 = HMATCH( 44, 0 );
			if( vr$8 == 0 ) goto label$108;
			{
				struct $7ASTNODE* vr$9 = HMATCHEXPR( 8 );
				DIMEXPR$1 = vr$9;
				if( DIMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$110;
				{
					goto label$92;
				}
				label$110:;
				label$109:;
			}
			goto label$107;
			label$108:;
			{
				struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
				DIMEXPR$1 = vr$10;
			}
			label$107:;
			int32 vr$11 = LEXGETTOKEN( 0 );
			if( vr$11 == 41 ) goto label$112;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$111;
			label$112:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$111:;
			struct $7ASTNODE* vr$12 = ASTBUILDARRAYBOUND( ARRAYEXPR$1, DIMEXPR$1, TK$1 );
			fb$result$1 = vr$12;
		}
		label$94:;
		label$93:;
	}
	label$92:;
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

static int32 HSCOPEDSWAP( void )
{
	int32 TMP$93$1;
	int32 TMP$94$1;
	int32 TMP$95$1;
	int32 TMP$96$1;
	int32 TMP$97$1;
	int32 TMP$98$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$27:;
	LEXSKIPTOKEN( 2048 );
	struct $7ASTNODE* L$1;
	struct $7ASTNODE* vr$1 = CVARORDEREF( 16 );
	L$1 = vr$1;
	if( L$1 != (struct $7ASTNODE*)0u ) goto label$30;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$28;
	}
	label$30:;
	label$29:;
	int32 vr$2 = ASTISCONSTANT( L$1 );
	if( vr$2 == 0 ) goto label$32;
	{
		ERRREPORT( 119, -1, (uint8*)0u );
	}
	label$32:;
	label$31:;
	int32 vr$3 = LEXGETTOKEN( 0 );
	if( vr$3 == 44 ) goto label$34;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$33;
	label$34:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$33:;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* vr$4 = CVARORDEREF( 16 );
	R$1 = vr$4;
	if( R$1 != (struct $7ASTNODE*)0u ) goto label$36;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		ASTDELTREE( L$1 );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$28;
	}
	label$36:;
	label$35:;
	int32 vr$5 = ASTISCONSTANT( R$1 );
	if( vr$5 == 0 ) goto label$38;
	{
		ERRREPORT( 119, -1, (uint8*)0u );
	}
	label$38:;
	label$37:;
	int32 LDTYPE$1;
	LDTYPE$1 = *(int32*)((uint8*)L$1 + 4) & 511;
	int32 RDTYPE$1;
	RDTYPE$1 = *(int32*)((uint8*)R$1 + 4) & 511;
	if( LDTYPE$1 == RDTYPE$1 ) goto label$40;
	{
		if( LDTYPE$1 != 20 ) goto label$42;
		{
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
			if( (*(int32*)((uint8*)SYM$3 + 120) & 131072) == 0 ) goto label$44;
			{
				if( RDTYPE$1 != 4 ) goto label$46;
				{
					ASTTRYOVLSTRINGCONV( &L$1 );
					LDTYPE$1 = *(int32*)((uint8*)L$1 + 4) & 511;
				}
				label$46:;
				label$45:;
			}
			goto label$43;
			label$44:;
			if( (*(int32*)((uint8*)SYM$3 + 120) & 65536) == 0 ) goto label$47;
			{
				if( RDTYPE$1 != 7 ) goto label$49;
				{
					ASTTRYOVLSTRINGCONV( &L$1 );
					LDTYPE$1 = *(int32*)((uint8*)L$1 + 4) & 511;
				}
				label$49:;
				label$48:;
			}
			label$47:;
			label$43:;
		}
		goto label$41;
		label$42:;
		if( RDTYPE$1 != 20 ) goto label$50;
		{
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = *(struct $8FBSYMBOL**)((uint8*)R$1 + 8);
			if( (*(int32*)((uint8*)SYM$3 + 120) & 131072) == 0 ) goto label$52;
			{
				if( LDTYPE$1 != 4 ) goto label$54;
				{
					ASTTRYOVLSTRINGCONV( &R$1 );
					RDTYPE$1 = *(int32*)((uint8*)R$1 + 4) & 511;
				}
				label$54:;
				label$53:;
			}
			goto label$51;
			label$52:;
			if( (*(int32*)((uint8*)SYM$3 + 120) & 65536) == 0 ) goto label$55;
			{
				if( LDTYPE$1 != 7 ) goto label$57;
				{
					ASTTRYOVLSTRINGCONV( &R$1 );
					RDTYPE$1 = *(int32*)((uint8*)R$1 + 4) & 511;
				}
				label$57:;
				label$56:;
			}
			label$55:;
			label$51:;
		}
		label$50:;
		label$41:;
	}
	label$40:;
	label$39:;
	{
		if( LDTYPE$1 == 17 ) goto label$60;
		label$61:;
		if( LDTYPE$1 == 18 ) goto label$60;
		label$62:;
		if( LDTYPE$1 != 4 ) goto label$59;
		label$60:;
		{
			{
				if( RDTYPE$1 == 17 ) goto label$65;
				label$66:;
				if( RDTYPE$1 == 18 ) goto label$65;
				label$67:;
				if( RDTYPE$1 != 4 ) goto label$64;
				label$65:;
				{
					int32 vr$32 = RTLSTRSWAP( L$1, R$1 );
					fb$result$1 = vr$32;
				}
				goto label$63;
				label$64:;
				{
					ERRREPORT( 20, 0, (uint8*)0u );
				}
				label$68:;
				label$63:;
			}
			goto label$28;
		}
		goto label$58;
		label$59:;
		if( LDTYPE$1 != 7 ) goto label$69;
		label$70:;
		{
			if( RDTYPE$1 != 7 ) goto label$72;
			{
				int32 vr$33 = RTLWSTRSWAP( L$1, R$1 );
				fb$result$1 = vr$33;
			}
			goto label$71;
			label$72:;
			{
				ERRREPORT( 20, 0, (uint8*)0u );
			}
			label$71:;
			goto label$28;
		}
		label$69:;
		label$58:;
	}
	int32 vr$34 = ASTCHECKASSIGN( L$1, R$1, -1 );
	int32 vr$36 = ASTCHECKASSIGN( R$1, L$1, -1 );
	if( (-(vr$34 == 0) | -(vr$36 == 0)) == 0 ) goto label$74;
	{
		ERRREPORT( 20, 0, (uint8*)0u );
		goto label$28;
	}
	label$74:;
	label$73:;
	if( (-(LDTYPE$1 == 20) | -(RDTYPE$1 == 20)) == 0 ) goto label$76;
	{
		int32 vr$42 = RTLMEMSWAP( L$1, R$1 );
		fb$result$1 = vr$42;
		goto label$28;
	}
	label$76:;
	label$75:;
	int32 USE_PUSHPOP$1;
	USE_PUSHPOP$1 = -1;
	USE_PUSHPOP$1 = USE_PUSHPOP$1 & -(*(int32*)((uint8*)&ENV$ + 104) == 0);
	if( (LDTYPE$1 & 480) == 0 ) goto label$77;
	TMP$93$1 = 24;
	goto label$113;
	label$77:;
	TMP$93$1 = LDTYPE$1 & 31;
	label$113:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$78;
	TMP$94$1 = 24;
	goto label$114;
	label$78:;
	TMP$94$1 = RDTYPE$1 & 31;
	label$114:;
	USE_PUSHPOP$1 = USE_PUSHPOP$1 & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$93$1 * 28)) + 4) == *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$1 * 28)) + 4));
	if( (LDTYPE$1 & 480) == 0 ) goto label$79;
	TMP$95$1 = 24;
	goto label$115;
	label$79:;
	TMP$95$1 = LDTYPE$1 & 31;
	label$115:;
	if( (RDTYPE$1 & 480) == 0 ) goto label$80;
	TMP$96$1 = 24;
	goto label$116;
	label$80:;
	TMP$96$1 = RDTYPE$1 & 31;
	label$116:;
	USE_PUSHPOP$1 = USE_PUSHPOP$1 & -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$1 * 28)) == *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$1 * 28)));
	if( *(int32*)L$1 != 19 ) goto label$81;
	TMP$97$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)L$1 + 12) + 116) > 0);
	goto label$117;
	label$81:;
	TMP$97$1 = 0;
	label$117:;
	USE_PUSHPOP$1 = USE_PUSHPOP$1 & -(TMP$97$1 == 0);
	if( *(int32*)R$1 != 19 ) goto label$82;
	TMP$98$1 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)R$1 + 12) + 116) > 0);
	goto label$118;
	label$82:;
	TMP$98$1 = 0;
	label$118:;
	USE_PUSHPOP$1 = USE_PUSHPOP$1 & -(TMP$98$1 == 0);
	struct $7ASTNODE* T$1;
	T$1 = (struct $7ASTNODE*)0u;
	int32 vr$73 = ASTHASSIDEFX( L$1 );
	if( vr$73 == 0 ) goto label$84;
	{
		struct $7ASTNODE* vr$75 = ASTMAKEREF( &L$1 );
		struct $7ASTNODE* vr$76 = ASTNEWLINK( T$1, vr$75, 0 );
		T$1 = vr$76;
	}
	label$84:;
	label$83:;
	int32 vr$77 = ASTHASSIDEFX( R$1 );
	if( vr$77 == 0 ) goto label$86;
	{
		struct $7ASTNODE* vr$79 = ASTMAKEREF( &R$1 );
		struct $7ASTNODE* vr$80 = ASTNEWLINK( T$1, vr$79, 0 );
		T$1 = vr$80;
	}
	label$86:;
	label$85:;
	if( USE_PUSHPOP$1 == 0 ) goto label$88;
	{
		struct $7ASTNODE* vr$81 = ASTCLONETREE( L$1 );
		struct $7ASTNODE* vr$82 = ASTNEWSTACK( 88, vr$81 );
		struct $7ASTNODE* vr$83 = ASTNEWLINK( T$1, vr$82, 0 );
		T$1 = vr$83;
		struct $7ASTNODE* vr$84 = ASTCLONETREE( R$1 );
		struct $7ASTNODE* vr$85 = ASTNEWASSIGN( L$1, vr$84, 0 );
		struct $7ASTNODE* vr$86 = ASTNEWLINK( T$1, vr$85, 0 );
		T$1 = vr$86;
		struct $7ASTNODE* vr$87 = ASTNEWSTACK( 89, R$1 );
		struct $7ASTNODE* vr$88 = ASTNEWLINK( T$1, vr$87, 0 );
		T$1 = vr$88;
	}
	goto label$87;
	label$88:;
	{
		struct $8FBSYMBOL* TEMP$2;
		struct $8FBSYMBOL* vr$91 = SYMBADDTEMPVAR( *(int32*)((uint8*)L$1 + 4), *(struct $8FBSYMBOL**)((uint8*)L$1 + 8) );
		TEMP$2 = vr$91;
		struct $7ASTNODE* vr$92 = ASTCLONETREE( L$1 );
		struct $7ASTNODE* vr$93 = ASTNEWVAR( TEMP$2, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$94 = ASTNEWASSIGN( vr$93, vr$92, 0 );
		struct $7ASTNODE* vr$95 = ASTNEWLINK( T$1, vr$94, 0 );
		T$1 = vr$95;
		struct $7ASTNODE* vr$96 = ASTCLONETREE( R$1 );
		struct $7ASTNODE* vr$97 = ASTNEWASSIGN( L$1, vr$96, 0 );
		struct $7ASTNODE* vr$98 = ASTNEWLINK( T$1, vr$97, 0 );
		T$1 = vr$98;
		struct $7ASTNODE* vr$99 = ASTNEWVAR( TEMP$2, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$100 = ASTNEWASSIGN( R$1, vr$99, 0 );
		struct $7ASTNODE* vr$101 = ASTNEWLINK( T$1, vr$100, 0 );
		T$1 = vr$101;
	}
	label$87:;
	ASTADD( T$1 );
	fb$result$1 = -1;
	label$28:;
	return fb$result$1;
}
