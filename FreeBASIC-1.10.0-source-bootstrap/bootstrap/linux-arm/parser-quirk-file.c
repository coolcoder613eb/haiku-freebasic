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
typedef int32 $8FB_TOKEN;
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
struct $7FBTOKEN;
struct $7FBTOKEN {
	int32 ID;
	int32 CLASS;
	int32 DTYPE;
	union {
		uint8 TEXT[1025];
		uint32 TEXTW[1025];
	};
	int32 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int32 PRDPOS;
		int32 HASESC;
	};
	int32 SUFFIXCHAR;
	int32 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4136 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int32 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint32 CURRCHAR;
	uint32 LAHDCHAR1;
	uint32 LAHDCHAR2;
	int32 LINENUM;
	int32 LASTTK_ID;
	int32 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int32 IS_FB_EVAL;
	int32 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint32* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int32 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int32 FILEPOS;
	int32 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int32 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49416 );
typedef int32 $8LEXCHECK;
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
typedef int32 $10FBOPENKIND;
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCHIDORKW( uint8*, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* HMATCHEXPR( int32 );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int32 );
int32 RTLPRINT( struct $7ASTNODE*, int32, int32, struct $7ASTNODE*, int32 );
int32 RTLPRINTSPCTAB( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLWRITE( struct $7ASTNODE*, int32, struct $7ASTNODE* );
int32 RTLPRINTUSINGINIT( struct $7ASTNODE*, int32 );
int32 RTLPRINTUSINGEND( struct $7ASTNODE*, int32 );
int32 RTLPRINTUSING( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32, int32 );
struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, $10FBOPENKIND );
struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE*, int32 );
int32 RTLFILESEEK( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* );
struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
int32 RTLFILELINEINPUT( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLFILELINEINPUTWSTR( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
int32 RTLFILEINPUT( int32, struct $7ASTNODE*, int32, int32 );
int32 RTLFILEINPUTGET( struct $7ASTNODE* );
int32 RTLFILELOCK( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HFILECLOSE( int32 );
static struct $7ASTNODE* HFILEPUT( int32 );
static struct $7ASTNODE* HFILEGET( int32 );
static struct $7ASTNODE* HFILEOPEN( int32 );
static struct $7ASTNODE* HFILERENAME( int32 );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;

int32 CPRINTSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* USINGEXPR$1;
	__builtin_memset( &USINGEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	int32 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 4 );
	int32 ISSEMICOLON$1;
	__builtin_memset( &ISSEMICOLON$1, 0, 4 );
	int32 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 4 );
	int32 ISTAB$1;
	__builtin_memset( &ISTAB$1, 0, 4 );
	int32 ISSPC$1;
	__builtin_memset( &ISSPC$1, 0, 4 );
	int32 ISLPRINT$1;
	__builtin_memset( &ISLPRINT$1, 0, 4 );
	fb$result$1 = 0;
	{
		if( TK$1 == 463 ) goto label$14;
		label$15:;
		if( TK$1 != 63 ) goto label$13;
		label$14:;
		{
			ISLPRINT$1 = 0;
		}
		goto label$12;
		label$13:;
		if( TK$1 != 464 ) goto label$16;
		label$17:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 33554432) != 0 ) goto label$19;
			{
				ERRREPORTNOTALLOWED( 33554432, 146, (uint8*)0u );
			}
			goto label$18;
			label$19:;
			{
				ISLPRINT$1 = -1;
			}
			label$18:;
		}
		goto label$12;
		label$16:;
		{
			goto label$11;
		}
		label$20:;
		label$12:;
	}
	LEXSKIPTOKEN( 2048 );
	if( ISLPRINT$1 == 0 ) goto label$22;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		FILEXPR$1 = vr$12;
	}
	goto label$21;
	label$22:;
	{
		int32 vr$13 = HMATCH( 35, 0 );
		if( vr$13 == 0 ) goto label$24;
		{
			struct $7ASTNODE* vr$14 = CEXPRESSION(  );
			FILEXPR$1 = vr$14;
			if( FILEXPR$1 != (struct $7ASTNODE*)0u ) goto label$26;
			{
				ERRREPORT( 327, 0, (uint8*)0u );
				goto label$28;
				{
					fb$result$1 = 0;
					goto label$11;
				}
				label$28:;
				label$27:;
				struct $7ASTNODE* vr$15 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
				FILEXPR$1 = vr$15;
			}
			label$26:;
			label$25:;
			int32 vr$16 = LEXGETTOKEN( 0 );
			if( vr$16 == 44 ) goto label$30;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$29;
			label$30:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$29:;
		}
		goto label$23;
		label$24:;
		{
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FILEXPR$1 = vr$17;
		}
		label$23:;
	}
	label$21:;
	if( *(int32*)FILEXPR$1 == 16 ) goto label$32;
	{
		struct $7ASTNODE* vr$20 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$20 );
	}
	label$32:;
	label$31:;
	USINGEXPR$1 = (struct $7ASTNODE*)0u;
	EXPRESSIONS$1 = 0;
	label$33:;
	{
		int32 vr$21 = HMATCH( 287, 2048 );
		if( vr$21 == 0 ) goto label$37;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0u ) goto label$39;
			{
				ERRREPORT( 3, 0, (uint8*)0u );
				struct $7ASTNODE* vr$22 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$22;
				int32 vr$23 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
				if( vr$23 != 0 ) goto label$41;
				{
					goto label$11;
				}
				label$41:;
				label$40:;
			}
			label$39:;
			label$38:;
			struct $7ASTNODE* vr$24 = HMATCHEXPR( 17 );
			USINGEXPR$1 = vr$24;
			if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$43;
			{
				goto label$11;
			}
			label$43:;
			label$42:;
			int32 vr$25 = HMATCH( 59, 0 );
			if( vr$25 != 0 ) goto label$45;
			{
				ERRREPORT( 47, 0, (uint8*)0u );
			}
			label$45:;
			label$44:;
			int32 vr$26 = RTLPRINTUSINGINIT( USINGEXPR$1, ISLPRINT$1 );
			if( vr$26 != 0 ) goto label$47;
			{
				goto label$11;
			}
			label$47:;
			label$46:;
		}
		label$37:;
		label$36:;
		ISSPC$1 = 0;
		ISTAB$1 = 0;
		int32 vr$27 = HMATCH( 486, 4096 );
		if( vr$27 == 0 ) goto label$49;
		{
			ISSPC$1 = -1;
			int32 vr$28 = LEXGETTOKEN( 0 );
			if( vr$28 == 40 ) goto label$51;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$50;
			label$51:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$50:;
			struct $7ASTNODE* vr$29 = HMATCHEXPR( 8 );
			EXPR$1 = vr$29;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$53;
			{
				goto label$11;
			}
			label$53:;
			label$52:;
			int32 vr$30 = LEXGETTOKEN( 0 );
			if( vr$30 == 41 ) goto label$55;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$54;
			label$55:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$54:;
		}
		goto label$48;
		label$49:;
		int32 vr$31 = HMATCH( 487, 4096 );
		if( vr$31 == 0 ) goto label$56;
		{
			ISTAB$1 = -1;
			int32 vr$32 = LEXGETTOKEN( 0 );
			if( vr$32 == 40 ) goto label$58;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$57;
			label$58:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$57:;
			struct $7ASTNODE* vr$33 = HMATCHEXPR( 8 );
			EXPR$1 = vr$33;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$60;
			{
				goto label$11;
			}
			label$60:;
			label$59:;
			int32 vr$34 = LEXGETTOKEN( 0 );
			if( vr$34 == 41 ) goto label$62;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$61;
			label$62:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$61:;
		}
		goto label$48;
		label$56:;
		{
			struct $7ASTNODE* vr$35 = CEXPRESSION(  );
			EXPR$1 = vr$35;
		}
		label$48:;
		ISCOMMA$1 = 0;
		ISSEMICOLON$1 = 0;
		int32 vr$36 = HMATCH( 44, 0 );
		if( vr$36 == 0 ) goto label$64;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0u ) goto label$66;
			{
				ERRREPORT( 47, 0, (uint8*)0u );
			}
			label$66:;
			label$65:;
			ISCOMMA$1 = -1;
		}
		goto label$63;
		label$64:;
		int32 vr$37 = HMATCH( 59, 0 );
		if( vr$37 == 0 ) goto label$67;
		{
			ISSEMICOLON$1 = -1;
		}
		label$67:;
		label$63:;
		if( ((ISSPC$1 | ISTAB$1) & -(ISSEMICOLON$1 == 0)) == 0 ) goto label$69;
		{
			ERRREPORT( 47, 0, (uint8*)0u );
		}
		label$69:;
		label$68:;
		if( ((-(ISCOMMA$1 == 0) & -(ISSEMICOLON$1 == 0)) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$71;
		{
			goto label$34;
		}
		label$71:;
		label$70:;
		if( (ISSPC$1 | ISTAB$1) == 0 ) goto label$73;
		{
			struct $7ASTNODE* vr$47 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$47;
			int32 vr$48 = RTLPRINTSPCTAB( FILEXPRCOPY$1, EXPR$1, ISTAB$1, ISLPRINT$1 );
			if( vr$48 != 0 ) goto label$75;
			{
				goto label$11;
			}
			label$75:;
			label$74:;
		}
		goto label$72;
		label$73:;
		{
			if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$77;
			{
				struct $7ASTNODE* vr$49 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$49;
				int32 vr$50 = RTLPRINT( FILEXPRCOPY$1, ISCOMMA$1, ISSEMICOLON$1, EXPR$1, ISLPRINT$1 );
				if( vr$50 != 0 ) goto label$79;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$79:;
				label$78:;
			}
			goto label$76;
			label$77:;
			{
				struct $7ASTNODE* vr$51 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$51;
				int32 vr$52 = RTLPRINTUSING( FILEXPRCOPY$1, EXPR$1, ISCOMMA$1, ISSEMICOLON$1, ISLPRINT$1 );
				if( vr$52 != 0 ) goto label$81;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$81:;
				label$80:;
			}
			label$76:;
		}
		label$72:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1;
	}
	label$35:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) != 0 ) goto label$33;
	label$34:;
	if( USINGEXPR$1 != (struct $7ASTNODE*)0u ) goto label$83;
	{
		if( EXPRESSIONS$1 != 0 ) goto label$85;
		{
			struct $7ASTNODE* vr$55 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$55;
			int32 vr$56 = RTLPRINT( FILEXPRCOPY$1, 0, 0, (struct $7ASTNODE*)0u, ISLPRINT$1 );
			if( vr$56 != 0 ) goto label$87;
			{
				goto label$11;
			}
			label$87:;
			label$86:;
		}
		label$85:;
		label$84:;
	}
	goto label$82;
	label$83:;
	{
		struct $7ASTNODE* vr$57 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$57;
		int32 vr$58 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
		if( vr$58 != 0 ) goto label$89;
		{
			goto label$11;
		}
		label$89:;
		label$88:;
	}
	label$82:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1;
	label$11:;
	return fb$result$1;
}

int32 CWRITESTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$90:;
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 4 );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	int32 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 4 );
	int32 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 4 );
	fb$result$1 = 0;
	LEXSKIPTOKEN( 2048 );
	int32 vr$6 = HMATCH( 35, 0 );
	if( vr$6 == 0 ) goto label$93;
	{
		struct $7ASTNODE* vr$7 = CEXPRESSION(  );
		FILEXPR$1 = vr$7;
		if( FILEXPR$1 != (struct $7ASTNODE*)0u ) goto label$95;
		{
			ERRREPORT( 327, 0, (uint8*)0u );
			goto label$97;
			{
				fb$result$1 = 0;
				goto label$91;
			}
			label$97:;
			label$96:;
			struct $7ASTNODE* vr$8 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
			FILEXPR$1 = vr$8;
		}
		label$95:;
		label$94:;
		int32 vr$9 = LEXGETTOKEN( 0 );
		if( vr$9 == 44 ) goto label$99;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$98;
		label$99:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$98:;
	}
	goto label$92;
	label$93:;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		FILEXPR$1 = vr$10;
	}
	label$92:;
	if( *(int32*)FILEXPR$1 == 16 ) goto label$101;
	{
		struct $7ASTNODE* vr$13 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$13 );
	}
	label$101:;
	label$100:;
	EXPRESSIONS$1 = 0;
	label$102:;
	{
		struct $7ASTNODE* vr$14 = CEXPRESSION(  );
		EXPR$1 = vr$14;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$106;
		{
			EXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$106:;
		label$105:;
		ISCOMMA$1 = 0;
		int32 vr$15 = HMATCH( 44, 0 );
		if( vr$15 == 0 ) goto label$108;
		{
			ISCOMMA$1 = -1;
		}
		label$108:;
		label$107:;
		struct $7ASTNODE* vr$16 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$16;
		if( (-(ISCOMMA$1 == 0) & -(EXPR$1 == (struct $7ASTNODE*)0u)) == 0 ) goto label$110;
		{
			if( EXPRESSIONS$1 != 0 ) goto label$112;
			{
				RTLWRITE( FILEXPRCOPY$1, 0, (struct $7ASTNODE*)0u );
			}
			label$112:;
			label$111:;
			goto label$103;
		}
		label$110:;
		label$109:;
		int32 vr$20 = RTLWRITE( FILEXPRCOPY$1, ISCOMMA$1, EXPR$1 );
		if( vr$20 != 0 ) goto label$114;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
		}
		label$114:;
		label$113:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1;
	}
	label$104:;
	if( ISCOMMA$1 != 0 ) goto label$102;
	label$103:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1;
	label$91:;
	return fb$result$1;
}

int32 CLINEINPUTSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$115:;
	struct $7ASTNODE* FILESTREXPR$1;
	FILESTREXPR$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* DSTEXPR$1;
	DSTEXPR$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* MAXLENEXPR$1;
	MAXLENEXPR$1 = (struct $7ASTNODE*)0u;
	int32 ISFILE$1;
	ISFILE$1 = 0;
	int32 ADDNEWLINE$1;
	ADDNEWLINE$1 = 0;
	int32 ISSEP$1;
	ISSEP$1 = 0;
	int32 ADDQUESTION$1;
	ADDQUESTION$1 = 0;
	int32 DTYPE$1;
	fb$result$1 = 0;
	int32 vr$1 = LEXGETLOOKAHEAD( 1, 0 );
	if( vr$1 == 478 ) goto label$118;
	{
		goto label$116;
	}
	label$118:;
	label$117:;
	LEXSKIPTOKEN( 2048 );
	LEXSKIPTOKEN( 2048 );
	int32 vr$2 = HMATCH( 59, 0 );
	ADDNEWLINE$1 = -(vr$2 == 0);
	int32 vr$4 = HMATCH( 35, 0 );
	if( vr$4 == 0 ) goto label$120;
	{
		ISFILE$1 = -1;
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILESTREXPR$1 = vr$5;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0u ) goto label$122;
		{
			ERRREPORT( 327, 0, (uint8*)0u );
			goto label$124;
			{
				fb$result$1 = 0;
				goto label$116;
			}
			label$124:;
			label$123:;
			struct $7ASTNODE* vr$6 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
			FILESTREXPR$1 = vr$6;
		}
		label$122:;
		label$121:;
	}
	goto label$119;
	label$120:;
	{
		struct $7ASTNODE* vr$7 = CEXPRESSION(  );
		DSTEXPR$1 = vr$7;
	}
	label$119:;
	int32 vr$8 = HMATCH( 44, 0 );
	if( vr$8 != 0 ) goto label$126;
	{
		int32 vr$9 = HMATCH( 59, 0 );
		if( vr$9 != 0 ) goto label$128;
		{
			if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$130;
			{
				if( ISFILE$1 == 0 ) goto label$132;
				{
					ERRREPORT( 16, 0, (uint8*)0u );
				}
				goto label$131;
				label$132:;
				{
					ERRREPORT( 326, 0, (uint8*)0u );
				}
				label$131:;
			}
			label$130:;
			label$129:;
		}
		goto label$127;
		label$128:;
		{
			ADDQUESTION$1 = -1;
			ISSEP$1 = -1;
		}
		label$127:;
	}
	goto label$125;
	label$126:;
	{
		ISSEP$1 = -1;
	}
	label$125:;
	if( ISSEP$1 != -1 ) goto label$134;
	{
		if( DSTEXPR$1 == (struct $7ASTNODE*)0u ) goto label$136;
		{
			FILESTREXPR$1 = DSTEXPR$1;
			DSTEXPR$1 = (struct $7ASTNODE*)0u;
		}
		label$136:;
		label$135:;
	}
	label$134:;
	label$133:;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		struct $7ASTNODE* vr$10 = CVARORDEREF( 0 );
		DSTEXPR$1 = vr$10;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$140;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$116;
		}
		label$140:;
		label$139:;
	}
	label$138:;
	label$137:;
	if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$142;
	{
		ERRREPORT( 119, 0, (uint8*)0u );
	}
	goto label$141;
	label$142:;
	struct $8FBSYMBOL* vr$13 = ASTGETSTRLITSYMBOL( DSTEXPR$1 );
	if( vr$13 == (struct $8FBSYMBOL*)0u ) goto label$143;
	{
		ERRREPORT( 14, -1, (uint8*)0u );
	}
	label$143:;
	label$141:;
	int64 vr$16 = RTLCALCSTRLEN( DSTEXPR$1, *(int32*)((uint8*)DSTEXPR$1 + 4) & 511 );
	if( vr$16 != 0ll ) goto label$145;
	{
		int32 vr$17 = HMATCH( 44, 0 );
		if( vr$17 == 0 ) goto label$147;
		{
			struct $7ASTNODE* vr$18 = CEXPRESSION(  );
			MAXLENEXPR$1 = vr$18;
			if( MAXLENEXPR$1 != (struct $7ASTNODE*)0u ) goto label$149;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
			}
			label$149:;
			label$148:;
		}
		goto label$146;
		label$147:;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		label$146:;
	}
	label$145:;
	label$144:;
	{
		int32 TMP$93$2;
		TMP$93$2 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
		if( TMP$93$2 == 17 ) goto label$152;
		label$153:;
		if( TMP$93$2 == 18 ) goto label$152;
		label$154:;
		if( TMP$93$2 != 4 ) goto label$151;
		label$152:;
		{
			int32 vr$21 = RTLFILELINEINPUT( ISFILE$1, FILESTREXPR$1, DSTEXPR$1, MAXLENEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$21;
		}
		goto label$150;
		label$151:;
		if( TMP$93$2 != 7 ) goto label$155;
		label$156:;
		{
			int32 vr$22 = RTLFILELINEINPUTWSTR( ISFILE$1, FILESTREXPR$1, DSTEXPR$1, MAXLENEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$22;
		}
		goto label$150;
		label$155:;
		{
			ASTDELTREE( DSTEXPR$1 );
			ERRREPORT( 24, 0, (uint8*)0u );
			fb$result$1 = -1;
			goto label$116;
		}
		label$157:;
		label$150:;
	}
	label$116:;
	return fb$result$1;
}

int32 CINPUTSTMT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$158:;
	struct $7ASTNODE* FILESTREXPR$1;
	FILESTREXPR$1 = (struct $7ASTNODE*)0u;
	struct $7ASTNODE* DSTEXPR$1;
	DSTEXPR$1 = (struct $7ASTNODE*)0u;
	int32 ISLAST$1;
	ISLAST$1 = 0;
	int32 ISFILE$1;
	ISFILE$1 = 0;
	int32 ADDNEWLINE$1;
	ADDNEWLINE$1 = 0;
	int32 ADDQUESTION$1;
	ADDQUESTION$1 = 0;
	fb$result$1 = 0;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = HMATCH( 59, 0 );
	ADDNEWLINE$1 = -(vr$1 == 0);
	int32 vr$3 = HMATCH( 35, 0 );
	if( vr$3 == 0 ) goto label$161;
	{
		ISFILE$1 = -1;
		struct $7ASTNODE* vr$4 = CEXPRESSION(  );
		FILESTREXPR$1 = vr$4;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0u ) goto label$163;
		{
			ERRREPORT( 327, 0, (uint8*)0u );
			goto label$165;
			{
				fb$result$1 = 0;
				goto label$159;
			}
			label$165:;
			label$164:;
			struct $7ASTNODE* vr$5 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
			FILESTREXPR$1 = vr$5;
		}
		label$163:;
		label$162:;
	}
	goto label$160;
	label$161:;
	{
		int32 vr$6 = LEXGETCLASS( 0 );
		if( vr$6 != 4 ) goto label$167;
		{
			uint8* vr$9 = LEXGETTEXT(  );
			struct $8FBSYMBOL* vr$10 = SYMBALLOCSTRCONST( vr$9, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4112) );
			struct $7ASTNODE* vr$11 = ASTNEWVAR( vr$10, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
			FILESTREXPR$1 = vr$11;
			LEXSKIPTOKEN( 0 );
		}
		goto label$166;
		label$167:;
		{
			FILESTREXPR$1 = (struct $7ASTNODE*)0u;
			ADDQUESTION$1 = -1;
		}
		label$166:;
	}
	label$160:;
	if( (ISFILE$1 | -(FILESTREXPR$1 != (struct $7ASTNODE*)0u)) == 0 ) goto label$169;
	{
		int32 vr$14 = HMATCH( 44, 0 );
		if( vr$14 != 0 ) goto label$171;
		{
			int32 vr$15 = HMATCH( 59, 0 );
			if( vr$15 != 0 ) goto label$173;
			{
				if( ISFILE$1 == 0 ) goto label$175;
				{
					ERRREPORT( 16, 0, (uint8*)0u );
				}
				goto label$174;
				label$175:;
				{
					ERRREPORT( 326, 0, (uint8*)0u );
				}
				label$174:;
			}
			goto label$172;
			label$173:;
			{
				ADDQUESTION$1 = -1;
			}
			label$172:;
		}
		label$171:;
		label$170:;
	}
	label$169:;
	label$168:;
	int32 vr$16 = RTLFILEINPUT( ISFILE$1, FILESTREXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
	if( vr$16 != 0 ) goto label$177;
	{
		goto label$159;
	}
	label$177:;
	label$176:;
	label$178:;
	{
		struct $7ASTNODE* vr$17 = CVARORDEREF( 0 );
		DSTEXPR$1 = vr$17;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$182;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			DSTEXPR$1 = (struct $7ASTNODE*)0u;
			HSKIPUNTIL( 44, 0, 0, 0 );
		}
		label$182:;
		label$181:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0u ) goto label$184;
		{
			if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$186;
			{
				ERRREPORT( 119, 0, (uint8*)0u );
			}
			goto label$185;
			label$186:;
			struct $8FBSYMBOL* vr$20 = ASTGETSTRLITSYMBOL( DSTEXPR$1 );
			if( vr$20 == (struct $8FBSYMBOL*)0u ) goto label$187;
			{
				ERRREPORT( 14, -1, (uint8*)0u );
			}
			label$187:;
			label$185:;
		}
		label$184:;
		label$183:;
		int32 vr$21 = HMATCH( 44, 0 );
		if( vr$21 == 0 ) goto label$189;
		{
			ISLAST$1 = 0;
		}
		goto label$188;
		label$189:;
		{
			ISLAST$1 = -1;
		}
		label$188:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0u ) goto label$191;
		{
			int32 vr$22 = RTLFILEINPUTGET( DSTEXPR$1 );
			if( vr$22 != 0 ) goto label$193;
			{
				goto label$159;
			}
			label$193:;
			label$192:;
		}
		label$191:;
		label$190:;
	}
	label$180:;
	if( ISLAST$1 == 0 ) goto label$178;
	label$179:;
	fb$result$1 = -1;
	label$159:;
	return fb$result$1;
}

int32 CFILESTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$516:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 4 );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 4 );
	int32 ISLOCK$1;
	__builtin_memset( &ISLOCK$1, 0, 4 );
	fb$result$1 = 0;
	{
		uint32 TMP$118$2;
		TMP$118$2 = (uint32)TK$1;
		goto label$519;
		label$520:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$5 = HFILEOPEN( 0 );
			fb$result$1 = -(vr$5 != (struct $7ASTNODE*)0u);
		}
		goto label$518;
		label$521:;
		{
			struct $7ASTNODE* vr$7 = HFILECLOSE( 0 );
			fb$result$1 = -(vr$7 != (struct $7ASTNODE*)0u);
		}
		goto label$518;
		label$522:;
		{
			LEXSKIPTOKEN( 2048 );
			HMATCH( 35, 0 );
			struct $7ASTNODE* vr$9 = CEXPRESSION(  );
			FILENUM$1 = vr$9;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$524;
			{
				ERRREPORT( 327, 0, (uint8*)0u );
				goto label$526;
				{
					fb$result$1 = 0;
					goto label$517;
				}
				label$526:;
				label$525:;
				struct $7ASTNODE* vr$10 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$10;
			}
			label$524:;
			label$523:;
			int32 vr$11 = LEXGETTOKEN( 0 );
			if( vr$11 == 44 ) goto label$528;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$527;
			label$528:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$527:;
			struct $7ASTNODE* vr$12 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$12;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$530;
			{
				goto label$517;
			}
			label$530:;
			label$529:;
			int32 vr$13 = RTLFILESEEK( FILENUM$1, EXPR1$1 );
			fb$result$1 = vr$13;
		}
		goto label$518;
		label$531:;
		{
			int32 vr$14 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$14 == 35 ) goto label$533;
			{
				goto label$517;
			}
			label$533:;
			label$532:;
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$15 = HFILEPUT( 0 );
			fb$result$1 = -(vr$15 != (struct $7ASTNODE*)0u);
		}
		goto label$518;
		label$534:;
		{
			int32 vr$17 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$17 == 35 ) goto label$536;
			{
				goto label$517;
			}
			label$536:;
			label$535:;
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$18 = HFILEGET( 0 );
			fb$result$1 = -(vr$18 != (struct $7ASTNODE*)0u);
		}
		goto label$518;
		label$537:;
		{
			if( TK$1 != 477 ) goto label$539;
			{
				ISLOCK$1 = -1;
			}
			goto label$538;
			label$539:;
			{
				ISLOCK$1 = 0;
			}
			label$538:;
			LEXSKIPTOKEN( 2048 );
			HMATCH( 35, 0 );
			struct $7ASTNODE* vr$20 = CEXPRESSION(  );
			FILENUM$1 = vr$20;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$541;
			{
				ERRREPORT( 327, 0, (uint8*)0u );
				goto label$543;
				{
					fb$result$1 = 0;
					goto label$517;
				}
				label$543:;
				label$542:;
				struct $7ASTNODE* vr$21 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$21;
			}
			label$541:;
			label$540:;
			int32 vr$22 = LEXGETTOKEN( 0 );
			if( vr$22 == 44 ) goto label$545;
			{
				ERRREPORT( 16, 0, (uint8*)0u );
			}
			goto label$544;
			label$545:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$544:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 8 );
			EXPR1$1 = vr$23;
			if( EXPR1$1 != (struct $7ASTNODE*)0u ) goto label$547;
			{
				goto label$517;
			}
			label$547:;
			label$546:;
			int32 vr$24 = HMATCH( 284, 2048 );
			if( vr$24 == 0 ) goto label$549;
			{
				struct $7ASTNODE* vr$25 = HMATCHEXPR( 8 );
				EXPR2$1 = vr$25;
				if( EXPR2$1 != (struct $7ASTNODE*)0u ) goto label$551;
				{
					goto label$517;
				}
				label$551:;
				label$550:;
			}
			goto label$548;
			label$549:;
			{
				struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR2$1 = vr$26;
			}
			label$548:;
			int32 vr$27 = RTLFILELOCK( ISLOCK$1, FILENUM$1, EXPR1$1, EXPR2$1 );
			fb$result$1 = vr$27;
		}
		goto label$518;
		label$552:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$28 = HFILERENAME( 0 );
			fb$result$1 = -(vr$28 != (struct $7ASTNODE*)0u);
		}
		goto label$518;
		label$519:;
		static const void* tmp$119[21] = {
			&&label$520,
			&&label$521,
			&&label$522,
			&&label$531,
			&&label$534,
			&&label$518,
			&&label$518,
			&&label$537,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$552,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$518,
			&&label$537,
		};
		if( (TMP$118$2 - 470u) > 20u ) goto label$518;
		goto *tmp$119[TMP$118$2 - 470u];
		label$518:;
	}
	label$517:;
	return fb$result$1;
}

struct $7ASTNODE* CFILEFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$553:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		uint32 TMP$120$2;
		TMP$120$2 = (uint32)TK$1;
		goto label$556;
		label$557:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$3 = LEXGETTOKEN( 0 );
			if( vr$3 == 40 ) goto label$559;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$558;
			label$559:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$558:;
			struct $7ASTNODE* vr$4 = HMATCHEXPR( 8 );
			FILENUM$1 = vr$4;
			if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$561;
			{
				goto label$554;
			}
			label$561:;
			label$560:;
			int32 vr$5 = LEXGETTOKEN( 0 );
			if( vr$5 == 41 ) goto label$563;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$562;
			label$563:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$562:;
			struct $7ASTNODE* vr$6 = RTLFILETELL( FILENUM$1 );
			fb$result$1 = vr$6;
		}
		goto label$555;
		label$564:;
		{
			$8LEXCHECK TMP$121$3;
			if( TK$1 != 478 ) goto label$565;
			TMP$121$3 = 8192;
			goto label$591;
			label$565:;
			TMP$121$3 = 2048;
			label$591:;
			LEXSKIPTOKEN( TMP$121$3 );
			int32 vr$7 = LEXGETTOKEN( 0 );
			if( vr$7 == 40 ) goto label$567;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$566;
			label$567:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$566:;
			struct $7ASTNODE* vr$8 = HMATCHEXPR( 8 );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$569;
			{
				goto label$554;
			}
			label$569:;
			label$568:;
			int32 vr$9 = HMATCH( 44, 0 );
			if( vr$9 == 0 ) goto label$571;
			{
				HMATCH( 35, 0 );
				struct $7ASTNODE* vr$10 = CEXPRESSION(  );
				FILENUM$1 = vr$10;
				if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$573;
				{
					ERRREPORT( 327, 0, (uint8*)0u );
					goto label$575;
					{
						fb$result$1 = (struct $7ASTNODE*)0u;
						goto label$554;
					}
					label$575:;
					label$574:;
					struct $7ASTNODE* vr$11 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
					FILENUM$1 = vr$11;
				}
				label$573:;
				label$572:;
			}
			goto label$570;
			label$571:;
			{
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$12;
			}
			label$570:;
			int32 vr$13 = LEXGETTOKEN( 0 );
			if( vr$13 == 41 ) goto label$577;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$576;
			label$577:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$576:;
			struct $7ASTNODE* vr$14 = RTLFILESTRINPUT( EXPR$1, FILENUM$1, TK$1 );
			fb$result$1 = vr$14;
		}
		goto label$555;
		label$578:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$15 = HFILEOPEN( -1 );
			fb$result$1 = vr$15;
		}
		goto label$555;
		label$579:;
		{
			struct $7ASTNODE* vr$16 = HFILECLOSE( -1 );
			fb$result$1 = vr$16;
		}
		goto label$555;
		label$580:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$17 = LEXGETTOKEN( 0 );
			if( vr$17 == 40 ) goto label$582;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$581;
			label$582:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$581:;
			struct $7ASTNODE* vr$18 = HFILEPUT( -1 );
			fb$result$1 = vr$18;
			int32 vr$19 = LEXGETTOKEN( 0 );
			if( vr$19 == 41 ) goto label$584;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$583;
			label$584:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$583:;
		}
		goto label$555;
		label$585:;
		{
			LEXSKIPTOKEN( 2048 );
			int32 vr$20 = LEXGETTOKEN( 0 );
			if( vr$20 == 40 ) goto label$587;
			{
				ERRREPORT( 6, 0, (uint8*)0u );
			}
			goto label$586;
			label$587:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$586:;
			struct $7ASTNODE* vr$21 = HFILEGET( -1 );
			fb$result$1 = vr$21;
			int32 vr$22 = LEXGETTOKEN( 0 );
			if( vr$22 == 41 ) goto label$589;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$588;
			label$589:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$588:;
		}
		goto label$555;
		label$590:;
		{
			LEXSKIPTOKEN( 2048 );
			struct $7ASTNODE* vr$23 = HFILERENAME( -1 );
			fb$result$1 = vr$23;
		}
		goto label$555;
		label$556:;
		static const void* tmp$122[16] = {
			&&label$578,
			&&label$579,
			&&label$557,
			&&label$580,
			&&label$585,
			&&label$555,
			&&label$555,
			&&label$555,
			&&label$564,
			&&label$564,
			&&label$555,
			&&label$555,
			&&label$555,
			&&label$555,
			&&label$555,
			&&label$590,
		};
		if( (TMP$120$2 - 470u) > 15u ) goto label$555;
		goto *tmp$122[TMP$120$2 - 470u];
		label$555:;
	}
	label$554:;
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

static struct $7ASTNODE* HFILECLOSE( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$194:;
	int32 CNT$1;
	__builtin_memset( &CNT$1, 0, 4 );
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* PROC$1;
	__builtin_memset( &PROC$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	LEXSKIPTOKEN( 2048 );
	if( ISFUNC$1 == 0 ) goto label$197;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( vr$4 == 40 ) goto label$199;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$198;
		label$199:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$198:;
	}
	label$197:;
	label$196:;
	CNT$1 = 0;
	label$200:;
	{
		HMATCH( 35, 0 );
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILENUM$1 = vr$5;
		if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$204;
		{
			if( CNT$1 != 0 ) goto label$206;
			{
			}
			goto label$205;
			label$206:;
			{
				ERRREPORT( 327, 0, (uint8*)0u );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				FILENUM$1 = vr$6;
			}
			label$205:;
		}
		label$204:;
		label$203:;
		struct $7ASTNODE* vr$7 = RTLFILECLOSE( FILENUM$1, ISFUNC$1 );
		PROC$1 = vr$7;
		if( PROC$1 != (struct $7ASTNODE*)0u ) goto label$208;
		{
			goto label$195;
		}
		label$208:;
		label$207:;
		if( ISFUNC$1 == 0 ) goto label$210;
		{
			goto label$201;
		}
		label$210:;
		label$209:;
		CNT$1 = CNT$1 + 1;
	}
	label$202:;
	int32 vr$9 = HMATCH( 44, 0 );
	if( vr$9 != 0 ) goto label$200;
	label$201:;
	if( ISFUNC$1 == 0 ) goto label$212;
	{
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 41 ) goto label$214;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$213;
		label$214:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$213:;
	}
	label$212:;
	label$211:;
	fb$result$1 = PROC$1;
	label$195:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEPUT( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$215:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 4 );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 4 );
	struct $7ASTNODE* SRCEXPR$1;
	__builtin_memset( &SRCEXPR$1, 0, 4 );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 4 );
	int32 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 4 );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	int32 vr$7 = LEXGETTOKEN( 0 );
	if( vr$7 != 35 ) goto label$218;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$218:;
	label$217:;
	struct $7ASTNODE* vr$8 = CEXPRESSION(  );
	FILEEXPR$1 = vr$8;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0u ) goto label$220;
	{
		ERRREPORT( 327, 0, (uint8*)0u );
		goto label$222;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$216;
		}
		label$222:;
		label$221:;
		struct $7ASTNODE* vr$9 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
		FILEEXPR$1 = vr$9;
	}
	label$220:;
	label$219:;
	int32 vr$10 = LEXGETTOKEN( 0 );
	if( vr$10 == 44 ) goto label$224;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$223;
	label$224:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$223:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	POSEXPR$1 = vr$11;
	if( POSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$226;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$226:;
	label$225:;
	int32 vr$12 = LEXGETTOKEN( 0 );
	if( vr$12 == 44 ) goto label$228;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$227;
	label$228:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$227:;
	struct $7ASTNODE* vr$13 = HMATCHEXPR( 8 );
	SRCEXPR$1 = vr$13;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$230;
	{
		goto label$216;
	}
	label$230:;
	label$229:;
	if( (-(*(int32*)SRCEXPR$1 == 16) | -(*(int32*)SRCEXPR$1 == 23)) == 0 ) goto label$232;
	{
		ASTDELTREE( SRCEXPR$1 );
		ERRREPORT( 14, -1, (uint8*)0u );
		if( ISFUNC$1 == 0 ) goto label$234;
		{
			HSKIPUNTIL( 41, 0, 0, 0 );
		}
		goto label$233;
		label$234:;
		{
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$233:;
		struct $7ASTNODE* vr$19 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$19;
		goto label$216;
	}
	label$232:;
	label$231:;
	ISARRAY$1 = 0;
	int32 vr$20 = LEXGETTOKEN( 0 );
	if( vr$20 != 40 ) goto label$236;
	{
		int32 vr$21 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$21 != 41 ) goto label$238;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$240;
			{
				int32 vr$23 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$23;
				if( ISARRAY$1 == 0 ) goto label$242;
				{
					if( (*(int32*)((uint8*)S$1 + 28) & 511) != 17 ) goto label$244;
					{
						ASTDELTREE( SRCEXPR$1 );
						ERRREPORT( 24, -1, (uint8*)0u );
						if( ISFUNC$1 == 0 ) goto label$246;
						{
							HSKIPUNTIL( 41, 0, 0, 0 );
						}
						goto label$245;
						label$246:;
						{
							HSKIPUNTIL( -1, 0, 0, 0 );
						}
						label$245:;
						struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
						fb$result$1 = vr$26;
						goto label$216;
					}
					label$244:;
					label$243:;
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
				}
				label$242:;
				label$241:;
			}
			label$240:;
			label$239:;
		}
		label$238:;
		label$237:;
	}
	label$236:;
	label$235:;
	int32 vr$27 = HMATCH( 44, 0 );
	if( vr$27 == 0 ) goto label$248;
	{
		if( ISARRAY$1 == 0 ) goto label$250;
		{
			ERRREPORT( 277, 0, (uint8*)0u );
			struct $7ASTNODE* vr$28 = CEXPRESSION(  );
			ELMEXPR$1 = vr$28;
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$252;
			{
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$252:;
			label$251:;
		}
		goto label$249;
		label$250:;
		{
			{
				int32 TMP$94$4;
				TMP$94$4 = *(int32*)((uint8*)SRCEXPR$1 + 4) & 511;
				if( TMP$94$4 == 17 ) goto label$255;
				label$256:;
				if( TMP$94$4 != 18 ) goto label$254;
				label$255:;
				{
					ERRREPORT( 277, 0, (uint8*)0u );
					struct $7ASTNODE* vr$31 = CEXPRESSION(  );
					ELMEXPR$1 = vr$31;
					if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$258;
					{
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0u;
					}
					label$258:;
					label$257:;
				}
				goto label$253;
				label$254:;
				{
					struct $7ASTNODE* vr$32 = CEXPRESSION(  );
					ELMEXPR$1 = vr$32;
					if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$261;
					{
						ERRREPORT( 9, 0, (uint8*)0u );
					}
					label$261:;
					label$260:;
				}
				label$259:;
				label$253:;
			}
		}
		label$249:;
		if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$263;
		{
			if( ((*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) & 480) == 0 ) goto label$265;
			{
				ERRREPORTWARN( 2, (uint8*)0u, 1, (uint8*)0u );
			}
			label$265:;
			label$264:;
			if( (*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) == 8 ) goto label$267;
			{
				struct $7ASTNODE* vr$38 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, ELMEXPR$1, 0, (int32*)0u );
				ELMEXPR$1 = vr$38;
				if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$269;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
				}
				label$269:;
				label$268:;
			}
			label$267:;
			label$266:;
		}
		label$263:;
		label$262:;
	}
	goto label$247;
	label$248:;
	{
		ELMEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$247:;
	if( ISARRAY$1 != 0 ) goto label$271;
	{
		struct $7ASTNODE* vr$39 = RTLFILEPUT( FILEEXPR$1, POSEXPR$1, SRCEXPR$1, ELMEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$39;
	}
	goto label$270;
	label$271:;
	{
		struct $7ASTNODE* vr$40 = RTLFILEPUTARRAY( FILEEXPR$1, POSEXPR$1, SRCEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$40;
	}
	label$270:;
	label$216:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEGET( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$272:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 4 );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 4 );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 4 );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 4 );
	struct $7ASTNODE* IOBEXPR$1;
	__builtin_memset( &IOBEXPR$1, 0, 4 );
	int32 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 4 );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	int32 vr$8 = LEXGETTOKEN( 0 );
	if( vr$8 != 35 ) goto label$275;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$275:;
	label$274:;
	struct $7ASTNODE* vr$9 = CEXPRESSION(  );
	FILEEXPR$1 = vr$9;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0u ) goto label$277;
	{
		ERRREPORT( 327, 0, (uint8*)0u );
		goto label$279;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$273;
		}
		label$279:;
		label$278:;
		struct $7ASTNODE* vr$10 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
		FILEEXPR$1 = vr$10;
	}
	label$277:;
	label$276:;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 == 44 ) goto label$281;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$280;
	label$281:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$280:;
	struct $7ASTNODE* vr$12 = CEXPRESSION(  );
	POSEXPR$1 = vr$12;
	int32 vr$13 = LEXGETTOKEN( 0 );
	if( vr$13 == 44 ) goto label$283;
	{
		ERRREPORT( 16, 0, (uint8*)0u );
	}
	goto label$282;
	label$283:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$282:;
	struct $7ASTNODE* vr$14 = CVARORDEREF( 0 );
	DSTEXPR$1 = vr$14;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0u ) goto label$285;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		if( ISFUNC$1 == 0 ) goto label$287;
		{
			HSKIPUNTIL( 41, 0, 0, 0 );
		}
		goto label$286;
		label$287:;
		{
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$286:;
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$15;
		goto label$273;
	}
	label$285:;
	label$284:;
	ISARRAY$1 = 0;
	int32 vr$16 = LEXGETTOKEN( 0 );
	if( vr$16 != 40 ) goto label$289;
	{
		int32 vr$17 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$17 != 41 ) goto label$291;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$293;
			{
				int32 vr$19 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$19;
				if( ISARRAY$1 == 0 ) goto label$295;
				{
					if( (*(int32*)((uint8*)S$1 + 28) & 511) != 17 ) goto label$297;
					{
						ERRREPORT( 24, -1, (uint8*)0u );
						if( ISFUNC$1 == 0 ) goto label$299;
						{
							HSKIPUNTIL( 41, 0, 0, 0 );
						}
						goto label$298;
						label$299:;
						{
							HSKIPUNTIL( -1, 0, 0, 0 );
						}
						label$298:;
						struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
						fb$result$1 = vr$22;
						goto label$273;
					}
					label$297:;
					label$296:;
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
		}
		label$291:;
		label$290:;
	}
	label$289:;
	label$288:;
	int32 vr$23 = HMATCH( 44, 0 );
	if( vr$23 == 0 ) goto label$301;
	{
		struct $7ASTNODE* vr$24 = CEXPRESSION(  );
		ELMEXPR$1 = vr$24;
		if( ISARRAY$1 == 0 ) goto label$303;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$305;
			{
				ERRREPORT( 277, 0, (uint8*)0u );
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$305:;
			label$304:;
		}
		goto label$302;
		label$303:;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0u ) goto label$307;
			{
				{
					int32 TMP$95$5;
					TMP$95$5 = *(int32*)((uint8*)DSTEXPR$1 + 4) & 511;
					if( TMP$95$5 == 17 ) goto label$310;
					label$311:;
					if( TMP$95$5 != 18 ) goto label$309;
					label$310:;
					{
						ERRREPORT( 277, 0, (uint8*)0u );
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0u;
					}
					goto label$308;
					label$309:;
					{
						if( ((*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) & 480) == 0 ) goto label$314;
						{
							ERRREPORTWARN( 2, (uint8*)0u, 1, (uint8*)0u );
						}
						label$314:;
						label$313:;
						if( (*(int32*)((uint8*)ELMEXPR$1 + 4) & 511) == 8 ) goto label$316;
						{
							struct $7ASTNODE* vr$32 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, ELMEXPR$1, 0, (int32*)0u );
							ELMEXPR$1 = vr$32;
							if( ELMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$318;
							{
								ERRREPORT( 17, -1, (uint8*)0u );
							}
							label$318:;
							label$317:;
						}
						label$316:;
						label$315:;
					}
					label$312:;
					label$308:;
				}
			}
			label$307:;
			label$306:;
		}
		label$302:;
	}
	goto label$300;
	label$301:;
	{
		ELMEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$300:;
	int32 vr$33 = HMATCH( 44, 0 );
	if( vr$33 == 0 ) goto label$320;
	{
		struct $7ASTNODE* vr$34 = CVARORDEREF( 0 );
		IOBEXPR$1 = vr$34;
		if( IOBEXPR$1 == (struct $7ASTNODE*)0u ) goto label$322;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)IOBEXPR$1 + 12);
			if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$324;
			{
				int32 TMP$96$4;
				int32 TMP$97$4;
				int32 DTYPE$4;
				DTYPE$4 = *(int32*)((uint8*)S$1 + 28) & 511;
				if( (DTYPE$4 & 480) == 0 ) goto label$325;
				TMP$96$4 = 24;
				goto label$592;
				label$325:;
				TMP$96$4 = DTYPE$4 & 31;
				label$592:;
				if( (DTYPE$4 & 480) == 0 ) goto label$326;
				TMP$97$4 = 24;
				goto label$593;
				label$326:;
				TMP$97$4 = DTYPE$4 & 31;
				label$593:;
				if( ((-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$4 * 28)) + 4) != *(int32*)((uint8*)&ENV$ + 296)) | -(*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$4 * 28)) != 0)) | -((DTYPE$4 & 480) != 0)) == 0 ) goto label$328;
				{
					ERRREPORT( 24, 0, (uint8*)0u );
				}
				label$328:;
				label$327:;
			}
			label$324:;
			label$323:;
		}
		goto label$321;
		label$322:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
		}
		label$321:;
	}
	goto label$319;
	label$320:;
	{
		IOBEXPR$1 = (struct $7ASTNODE*)0u;
	}
	label$319:;
	if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 512) == 0 ) goto label$330;
	{
		ERRREPORT( 119, 0, (uint8*)0u );
	}
	label$330:;
	label$329:;
	if( IOBEXPR$1 == (struct $7ASTNODE*)0u ) goto label$332;
	{
		if( (*(int32*)((uint8*)IOBEXPR$1 + 4) & 512) == 0 ) goto label$334;
		{
			ERRREPORT( 119, 0, (uint8*)0u );
		}
		label$334:;
		label$333:;
	}
	label$332:;
	label$331:;
	if( ISARRAY$1 != 0 ) goto label$336;
	{
		struct $7ASTNODE* vr$54 = RTLFILEGET( FILEEXPR$1, POSEXPR$1, DSTEXPR$1, ELMEXPR$1, IOBEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$54;
	}
	goto label$335;
	label$336:;
	{
		struct $7ASTNODE* vr$55 = RTLFILEGETARRAY( FILEEXPR$1, POSEXPR$1, DSTEXPR$1, IOBEXPR$1, ISFUNC$1 );
		fb$result$1 = vr$55;
	}
	label$335:;
	label$273:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEOPEN( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$337:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 4 );
	struct $7ASTNODE* FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 4 );
	struct $7ASTNODE* FMODE$1;
	__builtin_memset( &FMODE$1, 0, 4 );
	struct $7ASTNODE* FACCESS$1;
	__builtin_memset( &FACCESS$1, 0, 4 );
	struct $7ASTNODE* FLOCK$1;
	__builtin_memset( &FLOCK$1, 0, 4 );
	struct $7ASTNODE* FLEN$1;
	__builtin_memset( &FLEN$1, 0, 4 );
	struct $7ASTNODE* FENCODING$1;
	__builtin_memset( &FENCODING$1, 0, 4 );
	int32 SHORT_FORM$1;
	__builtin_memset( &SHORT_FORM$1, 0, 4 );
	int32 FILE_MODE$1;
	__builtin_memset( &FILE_MODE$1, 0, 4 );
	int32 ACCESS_MODE$1;
	__builtin_memset( &ACCESS_MODE$1, 0, 4 );
	int32 LOCK_MODE$1;
	__builtin_memset( &LOCK_MODE$1, 0, 4 );
	int32 RECORD_LEN$1;
	__builtin_memset( &RECORD_LEN$1, 0, 4 );
	$10FBOPENKIND OPEN_KIND$1;
	__builtin_memset( &OPEN_KIND$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	OPEN_KIND$1 = 0;
	SHORT_FORM$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$340;
	{
		{
			FBSTRING TMP$98$3;
			uint8* vr$14 = LEXGETTEXT(  );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			FBSTRING* vr$16 = fb_StrUcase2( (FBSTRING*)vr$15, 0 );
			fb_StrInit( (void*)&TMP$98$3, -1, (void*)vr$16, -1, 0 );
			int32 vr$19 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"CONS", 5 );
			if( vr$19 != 0 ) goto label$342;
			label$343:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$345;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 1;
				}
				label$345:;
				label$344:;
			}
			goto label$341;
			label$342:;
			int32 vr$23 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"ERR", 4 );
			if( vr$23 != 0 ) goto label$346;
			label$347:;
			{
				LEXSKIPTOKEN( 2048 );
				OPEN_KIND$1 = 2;
			}
			goto label$341;
			label$346:;
			int32 vr$25 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"PIPE", 5 );
			if( vr$25 != 0 ) goto label$348;
			label$349:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$351;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 3;
				}
				label$351:;
				label$350:;
			}
			goto label$341;
			label$348:;
			int32 vr$29 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"SCRN", 5 );
			if( vr$29 != 0 ) goto label$352;
			label$353:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$355;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 4;
				}
				label$355:;
				label$354:;
			}
			goto label$341;
			label$352:;
			int32 vr$33 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"LPT", 4 );
			if( vr$33 != 0 ) goto label$356;
			label$357:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$359;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 5;
				}
				label$359:;
				label$358:;
			}
			goto label$341;
			label$356:;
			int32 vr$37 = fb_StrCompare( (void*)&TMP$98$3, -1, (void*)"COM", 4 );
			if( vr$37 != 0 ) goto label$360;
			label$361:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$363;
				{
					LEXSKIPTOKEN( 2048 );
					OPEN_KIND$1 = 6;
				}
				label$363:;
				label$362:;
			}
			label$360:;
			label$341:;
			fb_StrDelete( (FBSTRING*)&TMP$98$3 );
		}
	}
	label$340:;
	label$339:;
	if( ISFUNC$1 == 0 ) goto label$365;
	{
		int32 vr$41 = LEXGETTOKEN( 0 );
		if( vr$41 == 40 ) goto label$367;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$366;
		label$367:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$366:;
	}
	label$365:;
	label$364:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$369;
	{
		OPEN_KIND$1 = 7;
	}
	label$369:;
	label$368:;
	{
		uint32 TMP$105$2;
		TMP$105$2 = (uint32)OPEN_KIND$1;
		goto label$371;
		label$372:;
		{
			struct $7ASTNODE* vr$42 = HMATCHEXPR( 17 );
			FILENAME$1 = vr$42;
			if( FILENAME$1 != (struct $7ASTNODE*)0u ) goto label$374;
			{
				goto label$338;
			}
			label$374:;
			label$373:;
			if( ISFUNC$1 == 0 ) goto label$376;
			{
				HMATCH( 44, 0 );
			}
			label$376:;
			label$375:;
			{
				if( OPEN_KIND$1 == 0 ) goto label$379;
				label$380:;
				if( OPEN_KIND$1 != 7 ) goto label$378;
				label$379:;
				{
					if( ISFUNC$1 == 0 ) goto label$382;
					{
						{
							int32 TMP$106$7;
							int32 vr$43 = LEXGETTOKEN( 0 );
							TMP$106$7 = vr$43;
							if( TMP$106$7 == 281 ) goto label$385;
							label$386:;
							if( TMP$106$7 == 475 ) goto label$385;
							label$387:;
							if( TMP$106$7 != 376 ) goto label$384;
							label$385:;
							{
							}
							goto label$383;
							label$384:;
							{
								SHORT_FORM$1 = -1;
							}
							label$388:;
							label$383:;
						}
					}
					goto label$381;
					label$382:;
					{
						int32 vr$44 = HMATCH( 44, 0 );
						if( vr$44 == 0 ) goto label$390;
						{
							SHORT_FORM$1 = -1;
						}
						label$390:;
						label$389:;
					}
					label$381:;
				}
				label$378:;
				label$377:;
			}
		}
		goto label$370;
		label$391:;
		{
			struct $7ASTNODE* vr$45 = ASTNEWCONSTSTR( (uint8*)"" );
			FILENAME$1 = vr$45;
		}
		goto label$370;
		label$371:;
		static const void* tmp$123[8] = {
			&&label$372,
			&&label$391,
			&&label$391,
			&&label$372,
			&&label$391,
			&&label$372,
			&&label$372,
			&&label$372,
		};
		if( TMP$105$2 > 7u ) goto label$391;
		goto *tmp$123[TMP$105$2 - 0u];
		label$370:;
	}
	if( SHORT_FORM$1 == 0 ) goto label$393;
	{
		FMODE$1 = FILENAME$1;
		FILENAME$1 = (struct $7ASTNODE*)0u;
		HMATCH( 35, 0 );
		struct $7ASTNODE* vr$46 = CEXPRESSION(  );
		FILENUM$1 = vr$46;
		if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$395;
		{
			ERRREPORT( 327, 0, (uint8*)0u );
			goto label$397;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$338;
			}
			label$397:;
			label$396:;
			struct $7ASTNODE* vr$47 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
			FILENUM$1 = vr$47;
		}
		label$395:;
		label$394:;
		int32 vr$48 = LEXGETTOKEN( 0 );
		if( vr$48 == 44 ) goto label$399;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$398;
		label$399:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$398:;
		struct $7ASTNODE* vr$49 = HMATCHEXPR( 17 );
		FILENAME$1 = vr$49;
		if( FILENAME$1 != (struct $7ASTNODE*)0u ) goto label$401;
		{
			goto label$338;
		}
		label$401:;
		label$400:;
		int32 vr$50 = HMATCH( 44, 0 );
		if( vr$50 == 0 ) goto label$403;
		{
			int32 vr$51 = LEXGETTOKEN( 0 );
			if( vr$51 == 44 ) goto label$405;
			{
				struct $7ASTNODE* vr$52 = HMATCHEXPR( 8 );
				FLEN$1 = vr$52;
				if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$407;
				{
					goto label$338;
				}
				label$407:;
				label$406:;
			}
			label$405:;
			label$404:;
			int32 vr$53 = HMATCH( 44, 0 );
			if( vr$53 == 0 ) goto label$409;
			{
				int32 vr$54 = LEXGETTOKEN( 0 );
				if( vr$54 == 44 ) goto label$411;
				{
					struct $7ASTNODE* vr$55 = HMATCHEXPR( 17 );
					FACCESS$1 = vr$55;
					if( FACCESS$1 != (struct $7ASTNODE*)0u ) goto label$413;
					{
						goto label$338;
					}
					label$413:;
					label$412:;
				}
				label$411:;
				label$410:;
				int32 vr$56 = HMATCH( 44, 0 );
				if( vr$56 == 0 ) goto label$415;
				{
					struct $7ASTNODE* vr$57 = HMATCHEXPR( 17 );
					FLOCK$1 = vr$57;
					if( FLOCK$1 != (struct $7ASTNODE*)0u ) goto label$417;
					{
						goto label$338;
					}
					label$417:;
					label$416:;
				}
				label$415:;
				label$414:;
			}
			label$409:;
			label$408:;
		}
		label$403:;
		label$402:;
		if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$419;
		{
			struct $7ASTNODE* vr$58 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FLEN$1 = vr$58;
		}
		label$419:;
		label$418:;
		if( FACCESS$1 != (struct $7ASTNODE*)0u ) goto label$421;
		{
			struct $7ASTNODE* vr$59 = ASTNEWCONSTSTR( (uint8*)"" );
			FACCESS$1 = vr$59;
		}
		label$421:;
		label$420:;
		if( FLOCK$1 != (struct $7ASTNODE*)0u ) goto label$423;
		{
			struct $7ASTNODE* vr$60 = ASTNEWCONSTSTR( (uint8*)"" );
			FLOCK$1 = vr$60;
		}
		label$423:;
		label$422:;
		if( ISFUNC$1 == 0 ) goto label$425;
		{
			int32 vr$61 = LEXGETTOKEN( 0 );
			if( vr$61 == 41 ) goto label$427;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$426;
			label$427:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$426:;
		}
		label$425:;
		label$424:;
		struct $7ASTNODE* vr$62 = RTLFILEOPENSHORT( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, ISFUNC$1 );
		fb$result$1 = vr$62;
		goto label$338;
	}
	label$393:;
	label$392:;
	int32 vr$63 = HMATCH( 281, 2048 );
	if( vr$63 == 0 ) goto label$429;
	{
		{
			FBSTRING TMP$107$3;
			uint8* vr$64 = LEXGETTEXT(  );
			FBSTRING* vr$65 = fb_StrAllocTempDescZ( (uint8*)vr$64 );
			FBSTRING* vr$66 = fb_StrUcase2( (FBSTRING*)vr$65, 0 );
			fb_StrInit( (void*)&TMP$107$3, -1, (void*)vr$66, -1, 0 );
			int32 vr$69 = fb_StrCompare( (void*)&TMP$107$3, -1, (void*)"INPUT", 6 );
			if( vr$69 != 0 ) goto label$431;
			label$432:;
			{
				FILE_MODE$1 = 2;
			}
			goto label$430;
			label$431:;
			int32 vr$71 = fb_StrCompare( (void*)&TMP$107$3, -1, (void*)"OUTPUT", 7 );
			if( vr$71 != 0 ) goto label$433;
			label$434:;
			{
				FILE_MODE$1 = 3;
			}
			goto label$430;
			label$433:;
			int32 vr$73 = fb_StrCompare( (void*)&TMP$107$3, -1, (void*)"BINARY", 7 );
			if( vr$73 != 0 ) goto label$435;
			label$436:;
			{
				FILE_MODE$1 = 0;
			}
			goto label$430;
			label$435:;
			int32 vr$75 = fb_StrCompare( (void*)&TMP$107$3, -1, (void*)"RANDOM", 7 );
			if( vr$75 != 0 ) goto label$437;
			label$438:;
			{
				FILE_MODE$1 = 1;
			}
			goto label$430;
			label$437:;
			int32 vr$77 = fb_StrCompare( (void*)&TMP$107$3, -1, (void*)"APPEND", 7 );
			if( vr$77 != 0 ) goto label$439;
			label$440:;
			{
				FILE_MODE$1 = 4;
			}
			goto label$430;
			label$439:;
			{
				fb_StrDelete( (FBSTRING*)&TMP$107$3 );
				goto label$338;
			}
			label$441:;
			label$430:;
			fb_StrDelete( (FBSTRING*)&TMP$107$3 );
		}
		LEXSKIPTOKEN( 2048 );
	}
	goto label$428;
	label$429:;
	{
		FILE_MODE$1 = 1;
	}
	label$428:;
	struct $7ASTNODE* vr$81 = ASTNEWCONSTI( (int64)FILE_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FMODE$1 = vr$81;
	if( ISFUNC$1 == 0 ) goto label$443;
	{
		HMATCH( 44, 0 );
	}
	label$443:;
	label$442:;
	FENCODING$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$445;
	{
		{
			if( FILE_MODE$1 == 2 ) goto label$448;
			label$449:;
			if( FILE_MODE$1 == 3 ) goto label$448;
			label$450:;
			if( FILE_MODE$1 != 4 ) goto label$447;
			label$448:;
			{
				int32 vr$82 = HMATCH( 484, 2048 );
				if( vr$82 == 0 ) goto label$452;
				{
					struct $7ASTNODE* vr$83 = HMATCHEXPR( 17 );
					FENCODING$1 = vr$83;
					if( FENCODING$1 != (struct $7ASTNODE*)0u ) goto label$454;
					{
						goto label$338;
					}
					label$454:;
					label$453:;
					if( ISFUNC$1 == 0 ) goto label$456;
					{
						HMATCH( 44, 0 );
					}
					label$456:;
					label$455:;
				}
				label$452:;
				label$451:;
			}
			label$447:;
			label$446:;
		}
	}
	label$445:;
	label$444:;
	int32 vr$84 = HMATCHIDORKW( (uint8*)"ACCESS", 2048 );
	if( vr$84 == 0 ) goto label$458;
	{
		int32 vr$85 = HMATCHIDORKW( (uint8*)"WRITE", 2048 );
		if( vr$85 == 0 ) goto label$460;
		{
			ACCESS_MODE$1 = 2;
		}
		goto label$459;
		label$460:;
		int32 vr$86 = HMATCHIDORKW( (uint8*)"READ", 2048 );
		if( vr$86 == 0 ) goto label$461;
		{
			int32 vr$87 = HMATCH( 476, 0 );
			if( vr$87 == 0 ) goto label$463;
			{
				ACCESS_MODE$1 = 3;
			}
			goto label$462;
			label$463:;
			{
				ACCESS_MODE$1 = 1;
			}
			label$462:;
		}
		label$461:;
		label$459:;
	}
	goto label$457;
	label$458:;
	{
		ACCESS_MODE$1 = 0;
	}
	label$457:;
	struct $7ASTNODE* vr$89 = ASTNEWCONSTI( (int64)ACCESS_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FACCESS$1 = vr$89;
	if( ISFUNC$1 == 0 ) goto label$465;
	{
		HMATCH( 44, 0 );
	}
	label$465:;
	label$464:;
	int32 vr$90 = HMATCH( 312, 2048 );
	if( vr$90 == 0 ) goto label$467;
	{
		LOCK_MODE$1 = 0;
	}
	goto label$466;
	label$467:;
	int32 vr$91 = HMATCHIDORKW( (uint8*)"LOCK", 2048 );
	if( vr$91 == 0 ) goto label$468;
	{
		int32 vr$92 = HMATCHIDORKW( (uint8*)"WRITE", 2048 );
		if( vr$92 == 0 ) goto label$470;
		{
			LOCK_MODE$1 = 2;
		}
		goto label$469;
		label$470:;
		int32 vr$93 = HMATCHIDORKW( (uint8*)"READ", 2048 );
		if( vr$93 == 0 ) goto label$471;
		{
			int32 vr$94 = HMATCH( 476, 2048 );
			if( vr$94 == 0 ) goto label$473;
			{
				LOCK_MODE$1 = 3;
			}
			goto label$472;
			label$473:;
			{
				LOCK_MODE$1 = 1;
			}
			label$472:;
		}
		label$471:;
		label$469:;
	}
	goto label$466;
	label$468:;
	{
		LOCK_MODE$1 = 0;
	}
	label$466:;
	struct $7ASTNODE* vr$96 = ASTNEWCONSTI( (int64)LOCK_MODE$1, 8, (struct $8FBSYMBOL*)0u );
	FLOCK$1 = vr$96;
	if( ISFUNC$1 == 0 ) goto label$475;
	{
		HMATCH( 44, 0 );
	}
	label$475:;
	label$474:;
	int32 vr$97 = HMATCH( 376, 2048 );
	if( vr$97 != 0 ) goto label$477;
	{
		ERRREPORT( 5, 0, (uint8*)0u );
	}
	label$477:;
	label$476:;
	HMATCH( 35, 0 );
	struct $7ASTNODE* vr$98 = CEXPRESSION(  );
	FILENUM$1 = vr$98;
	if( FILENUM$1 != (struct $7ASTNODE*)0u ) goto label$479;
	{
		ERRREPORT( 327, 0, (uint8*)0u );
		goto label$481;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$338;
		}
		label$481:;
		label$480:;
		struct $7ASTNODE* vr$99 = ASTNEWCONSTZ( 8, (struct $8FBSYMBOL*)0u );
		FILENUM$1 = vr$99;
	}
	label$479:;
	label$478:;
	if( ISFUNC$1 == 0 ) goto label$483;
	{
		HMATCH( 44, 0 );
	}
	label$483:;
	label$482:;
	int32 vr$100 = HMATCHIDORKW( (uint8*)"LEN", 2048 );
	if( vr$100 == 0 ) goto label$485;
	{
		int32 vr$101 = CASSIGNTOKEN(  );
		if( vr$101 != 0 ) goto label$487;
		{
			ERRREPORT( 10, 0, (uint8*)0u );
			struct $7ASTNODE* vr$102 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			FLEN$1 = vr$102;
		}
		goto label$486;
		label$487:;
		{
			struct $7ASTNODE* vr$103 = HMATCHEXPR( 8 );
			FLEN$1 = vr$103;
			if( FLEN$1 != (struct $7ASTNODE*)0u ) goto label$489;
			{
				goto label$338;
			}
			label$489:;
			label$488:;
		}
		label$486:;
	}
	goto label$484;
	label$485:;
	{
		struct $7ASTNODE* vr$104 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		FLEN$1 = vr$104;
	}
	label$484:;
	if( ISFUNC$1 == 0 ) goto label$491;
	{
		int32 vr$105 = LEXGETTOKEN( 0 );
		if( vr$105 == 41 ) goto label$493;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$492;
		label$493:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$492:;
	}
	label$491:;
	label$490:;
	struct $7ASTNODE* vr$106 = RTLFILEOPEN( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, FENCODING$1, ISFUNC$1, OPEN_KIND$1 );
	fb$result$1 = vr$106;
	label$338:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILERENAME( int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$494:;
	struct $7ASTNODE* FILENAME_OLD$1;
	__builtin_memset( &FILENAME_OLD$1, 0, 4 );
	struct $7ASTNODE* FILENAME_NEW$1;
	__builtin_memset( &FILENAME_NEW$1, 0, 4 );
	int32 MATCHPRNT$1;
	__builtin_memset( &MATCHPRNT$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( ISFUNC$1 == 0 ) goto label$497;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( vr$4 == 40 ) goto label$499;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$498;
		label$499:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$498:;
	}
	goto label$496;
	label$497:;
	{
		int32 vr$5 = HMATCH( 40, 0 );
		MATCHPRNT$1 = vr$5;
	}
	label$496:;
	struct $7ASTNODE* vr$6 = HMATCHEXPR( 17 );
	FILENAME_OLD$1 = vr$6;
	if( FILENAME_OLD$1 != (struct $7ASTNODE*)0u ) goto label$501;
	{
		goto label$495;
	}
	label$501:;
	label$500:;
	if( ISFUNC$1 == 0 ) goto label$503;
	{
		int32 vr$7 = LEXGETTOKEN( 0 );
		if( vr$7 == 44 ) goto label$505;
		{
			ERRREPORT( 16, 0, (uint8*)0u );
		}
		goto label$504;
		label$505:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$504:;
	}
	goto label$502;
	label$503:;
	{
		int32 vr$8 = HMATCH( 376, 2048 );
		if( vr$8 != 0 ) goto label$507;
		{
			int32 vr$9 = HMATCH( 44, 0 );
			if( vr$9 != 0 ) goto label$509;
			{
				ERRREPORT( 5, 0, (uint8*)0u );
			}
			label$509:;
			label$508:;
		}
		label$507:;
		label$506:;
	}
	label$502:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( 17 );
	FILENAME_NEW$1 = vr$10;
	if( FILENAME_NEW$1 != (struct $7ASTNODE*)0u ) goto label$511;
	{
		goto label$495;
	}
	label$511:;
	label$510:;
	if( (ISFUNC$1 | MATCHPRNT$1) == 0 ) goto label$513;
	{
		int32 vr$12 = LEXGETTOKEN( 0 );
		if( vr$12 == 41 ) goto label$515;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$514;
		label$515:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$514:;
	}
	label$513:;
	label$512:;
	struct $7ASTNODE* vr$13 = RTLFILERENAME( FILENAME_NEW$1, FILENAME_OLD$1, ISFUNC$1 );
	fb$result$1 = vr$13;
	label$495:;
	return fb$result$1;
}
