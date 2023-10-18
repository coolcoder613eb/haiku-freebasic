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
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int32 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 24 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirk( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 CCOMMENT( $8LEXCHECK );
typedef int32 $15FB_CMPSTMT_MASK;
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
struct $7ASTNODE* CTYPECONVEXPR( $8FB_TOKEN, int32 );
struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* );
int32 CGFXSTMT( $8FB_TOKEN );
struct $7ASTNODE* CGFXFUNCT( $8FB_TOKEN );
int32 CGOTOSTMT( $8FB_TOKEN );
int32 CPRINTSTMT( $8FB_TOKEN );
int32 CDATASTMT( $8FB_TOKEN );
int32 CERASESTMT( void );
int32 CSWAPSTMT( void );
int32 CLINEINPUTSTMT( void );
int32 CINPUTSTMT( void );
int32 CPOKESTMT( void );
int32 CFILESTMT( $8FB_TOKEN );
int32 CONSTMT( void );
int32 CWRITESTMT( void );
int32 CERRORSTMT( void );
int32 CERRSETSTMT( void );
struct $7ASTNODE* CVIEWSTMT( int32 );
int32 CMIDSTMT( void );
int32 CLRSETSTMT( $8FB_TOKEN );
struct $7ASTNODE* CWIDTHSTMT( int32 );
struct $7ASTNODE* CCOLORSTMT( int32 );
struct $7ASTNODE* CSTRINGFUNCT( $8FB_TOKEN );
struct $7ASTNODE* CCVXFUNCT( $8FB_TOKEN );
struct $7ASTNODE* CMKXFUNCT( $8FB_TOKEN );
struct $7ASTNODE* CMATHFUNCT( $8FB_TOKEN, int32 );
struct $7ASTNODE* CPEEKFUNCT( void );
struct $7ASTNODE* CARRAYFUNCT( $8FB_TOKEN );
struct $7ASTNODE* CFILEFUNCT( $8FB_TOKEN );
struct $7ASTNODE* CERRORFUNCT( void );
struct $7ASTNODE* CIIFFUNCT( void );
struct $7ASTNODE* CVAFUNCT( void );
struct $7ASTNODE* CVALISTFUNCT( $8FB_TOKEN );
int32 CVALISTSTMT( $8FB_TOKEN );
struct $7ASTNODE* CSCREENFUNCT( void );
struct $7ASTNODE* CANONTYPE( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
struct $7ASTNODE* CTHREADCALLFUNC( void );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 8 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int32 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 12 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int32 NODES;
	int32 NODELEN;
	struct $10TSTACKNODE* TOS;
	int32 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 24 );
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int32 DTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_FORELM ) == 24 );
struct $13FB_CMPSTMTSTK;
struct $14FB_CMPSTMT_FOR {
	struct $7ASTNODE* OUTERSCOPENODE;
	struct $17FB_CMPSTMT_FORELM CNT;
	struct $17FB_CMPSTMT_FORELM END;
	struct $17FB_CMPSTMT_FORELM STP;
	struct $17FB_CMPSTMT_FORELM ISPOS;
	struct $8FBSYMBOL* TESTLABEL;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	int32 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 128 );
struct $13FB_CMPSTMT_DO {
	int32 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 20 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 12 );
struct $13FB_CMPSTMT_IF {
	int32 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int32 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 16 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int32 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 16 );
struct $19FB_CMPSTMT_SELCONST {
	int32 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int32 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 24 );
struct $17FB_CMPSTMT_SELECT {
	int32 ISCONST;
	struct $8FBSYMBOL* SYM;
	int32 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 56 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int32 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 12 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int32 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 8 );
typedef int32 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 4 );
struct $16FB_CMPSTMT_SCOPE {
	int32 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 4 );
struct $13FB_CMPSTMTSTK {
	int32 ID;
	$15FB_CMPSTMT_MASK ALLOWMASK;
	struct $7ASTNODE* SCOPENODE;
	union {
		struct $14FB_CMPSTMT_FOR FOR;
		struct $13FB_CMPSTMT_DO DO;
		struct $16FB_CMPSTMT_WHILE WHILE;
		struct $13FB_CMPSTMT_IF IF;
		struct $15FB_CMPSTMT_PROC PROC;
		struct $17FB_CMPSTMT_SELECT SELECT;
		struct $15FB_CMPSTMT_WITH WITH;
		struct $20FB_CMPSTMT_NAMESPACE NSPC;
		struct $17FB_CMPSTMT_EXTERN EXT;
		struct $16FB_CMPSTMT_SCOPE SCP;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 144 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 32 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int32 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 88 );
typedef int32 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int32 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint32 STAGE;
	uint32 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int32 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int32 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int32 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 168 );
extern struct $9PARSERCTX PARSER$;

int32 CQUIRKSTMT( $8FB_TOKEN TK$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	fb$result$1 = 0;
	if( TK$1 != -1 ) goto label$13;
	{
		int32 vr$1 = LEXGETTOKEN( 0 );
		TK$1 = vr$1;
		{
			int32 TMP$92$3;
			int32 vr$2 = LEXGETCLASS( 0 );
			TMP$92$3 = vr$2;
			if( TMP$92$3 == 1 ) goto label$16;
			label$17:;
			if( TMP$92$3 != 2 ) goto label$15;
			label$16:;
			{
				if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$19;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == -2147483648u ) goto label$21;
					{
						fb$result$1 = 0;
						goto label$11;
					}
					label$21:;
					label$20:;
				}
				label$19:;
				label$18:;
			}
			goto label$14;
			label$15:;
			{
				if( TK$1 != 63 ) goto label$24;
				{
					int32 vr$5 = CCOMPSTMTISALLOWED( 1 );
					if( vr$5 != 0 ) goto label$26;
					{
						HSKIPUNTIL( -1, 0, 0, 0 );
						goto label$11;
					}
					label$26:;
					label$25:;
					int32 vr$6 = CPRINTSTMT( TK$1 );
					fb$result$1 = vr$6;
				}
				label$24:;
				label$23:;
				goto label$11;
			}
			label$22:;
			label$14:;
		}
	}
	label$13:;
	label$12:;
	int32 RES$1;
	RES$1 = 0;
	{
		uint32 TMP$93$2;
		TMP$93$2 = (uint32)TK$1;
		goto label$28;
		label$29:;
		{
			int32 vr$7 = CCOMPSTMTISALLOWED( 1 );
			if( vr$7 != 0 ) goto label$31;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$31:;
			label$30:;
			int32 vr$8 = CGOTOSTMT( TK$1 );
			RES$1 = vr$8;
		}
		goto label$27;
		label$32:;
		{
			int32 vr$9 = CCOMPSTMTISALLOWED( 1 );
			if( vr$9 != 0 ) goto label$34;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$34:;
			label$33:;
			int32 vr$10 = CPRINTSTMT( TK$1 );
			RES$1 = vr$10;
		}
		goto label$27;
		label$35:;
		{
			int32 vr$11 = CCOMPSTMTISALLOWED( 1 );
			if( vr$11 != 0 ) goto label$37;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$37:;
			label$36:;
			int32 vr$12 = CDATASTMT( TK$1 );
			RES$1 = vr$12;
		}
		goto label$27;
		label$38:;
		{
			int32 vr$13 = CCOMPSTMTISALLOWED( 1 );
			if( vr$13 != 0 ) goto label$40;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$40:;
			label$39:;
			int32 vr$14 = CERASESTMT(  );
			RES$1 = vr$14;
		}
		goto label$27;
		label$41:;
		{
			int32 vr$15 = CCOMPSTMTISALLOWED( 1 );
			if( vr$15 != 0 ) goto label$43;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$43:;
			label$42:;
			int32 vr$16 = CSWAPSTMT(  );
			RES$1 = vr$16;
		}
		goto label$27;
		label$44:;
		{
			int32 vr$17 = CCOMPSTMTISALLOWED( 1 );
			if( vr$17 != 0 ) goto label$46;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$46:;
			label$45:;
			int32 vr$18 = CLINEINPUTSTMT(  );
			RES$1 = vr$18;
		}
		goto label$27;
		label$47:;
		{
			int32 vr$19 = CCOMPSTMTISALLOWED( 1 );
			if( vr$19 != 0 ) goto label$49;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$49:;
			label$48:;
			int32 vr$20 = CINPUTSTMT(  );
			RES$1 = vr$20;
		}
		goto label$27;
		label$50:;
		{
			int32 vr$21 = CCOMPSTMTISALLOWED( 1 );
			if( vr$21 != 0 ) goto label$52;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$52:;
			label$51:;
			int32 vr$22 = CPOKESTMT(  );
			RES$1 = vr$22;
		}
		goto label$27;
		label$53:;
		{
			int32 vr$23 = CCOMPSTMTISALLOWED( 1 );
			if( vr$23 != 0 ) goto label$55;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$55:;
			label$54:;
			int32 vr$24 = CFILESTMT( TK$1 );
			RES$1 = vr$24;
		}
		goto label$27;
		label$56:;
		{
			int32 vr$25 = CCOMPSTMTISALLOWED( 1 );
			if( vr$25 != 0 ) goto label$58;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$58:;
			label$57:;
			int32 vr$26 = CONSTMT(  );
			RES$1 = vr$26;
		}
		goto label$27;
		label$59:;
		{
			int32 vr$27 = CCOMPSTMTISALLOWED( 1 );
			if( vr$27 != 0 ) goto label$61;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$61:;
			label$60:;
			int32 vr$28 = CWRITESTMT(  );
			RES$1 = vr$28;
		}
		goto label$27;
		label$62:;
		{
			int32 vr$29 = CCOMPSTMTISALLOWED( 1 );
			if( vr$29 != 0 ) goto label$64;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$64:;
			label$63:;
			int32 vr$30 = CERRORSTMT(  );
			RES$1 = vr$30;
		}
		goto label$27;
		label$65:;
		{
			int32 vr$31 = CCOMPSTMTISALLOWED( 1 );
			if( vr$31 != 0 ) goto label$67;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$67:;
			label$66:;
			int32 vr$32 = CERRSETSTMT(  );
			RES$1 = vr$32;
		}
		goto label$27;
		label$68:;
		{
			int32 vr$33 = CCOMPSTMTISALLOWED( 1 );
			if( vr$33 != 0 ) goto label$70;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$70:;
			label$69:;
			struct $7ASTNODE* vr$34 = CVIEWSTMT( 0 );
			RES$1 = -(vr$34 != (struct $7ASTNODE*)0u);
		}
		goto label$27;
		label$71:;
		{
			int32 vr$36 = CCOMPSTMTISALLOWED( 1 );
			if( vr$36 != 0 ) goto label$73;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$73:;
			label$72:;
			int32 vr$37 = CMIDSTMT(  );
			RES$1 = vr$37;
		}
		goto label$27;
		label$74:;
		{
			int32 vr$38 = CCOMPSTMTISALLOWED( 1 );
			if( vr$38 != 0 ) goto label$76;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$76:;
			label$75:;
			int32 vr$39 = CLRSETSTMT( TK$1 );
			RES$1 = vr$39;
		}
		goto label$27;
		label$77:;
		{
			int32 vr$40 = CCOMPSTMTISALLOWED( 1 );
			if( vr$40 != 0 ) goto label$79;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$79:;
			label$78:;
			struct $7ASTNODE* vr$41 = CWIDTHSTMT( 0 );
			RES$1 = -(vr$41 != (struct $7ASTNODE*)0u);
		}
		goto label$27;
		label$80:;
		{
			int32 vr$43 = CCOMPSTMTISALLOWED( 1 );
			if( vr$43 != 0 ) goto label$82;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$82:;
			label$81:;
			struct $7ASTNODE* vr$44 = CCOLORSTMT( 0 );
			RES$1 = -(vr$44 != (struct $7ASTNODE*)0u);
		}
		goto label$27;
		label$83:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$85;
			{
				int32 vr$46 = CCOMMENT( 0 );
				RES$1 = vr$46;
			}
			label$85:;
			label$84:;
		}
		goto label$27;
		label$86:;
		{
			int32 vr$47 = CCOMPSTMTISALLOWED( 1 );
			if( vr$47 != 0 ) goto label$88;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$11;
			}
			label$88:;
			label$87:;
			int32 vr$48 = CVALISTSTMT( TK$1 );
			RES$1 = vr$48;
		}
		goto label$27;
		label$28:;
		static const void* tmp$94[259] = {
			&&label$83,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$29,
			&&label$29,
			&&label$29,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$74,
			&&label$74,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$71,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$35,
			&&label$35,
			&&label$35,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$32,
			&&label$32,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$50,
			&&label$41,
			&&label$53,
			&&label$53,
			&&label$53,
			&&label$53,
			&&label$53,
			&&label$27,
			&&label$59,
			&&label$53,
			&&label$47,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$53,
			&&label$27,
			&&label$27,
			&&label$44,
			&&label$68,
			&&label$53,
			&&label$77,
			&&label$80,
			&&label$27,
			&&label$38,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$56,
			&&label$62,
			&&label$27,
			&&label$65,
			&&label$29,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$27,
			&&label$86,
			&&label$27,
			&&label$86,
			&&label$86,
		};
		if( (TMP$93$2 - 260u) > 258u ) goto label$27;
		goto *tmp$94[TMP$93$2 - 260u];
		label$27:;
	}
	if( RES$1 != 0 ) goto label$90;
	{
		int32 vr$49 = CGFXSTMT( TK$1 );
		RES$1 = vr$49;
	}
	label$90:;
	label$89:;
	fb$result$1 = RES$1;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* CQUIRKFUNCTION( struct $8FBSYMBOL* SYM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$91:;
	struct $7ASTNODE* FUNCEXPR$1;
	FUNCEXPR$1 = (struct $7ASTNODE*)0u;
	$8FB_TOKEN TK$1;
	TK$1 = *($8FB_TOKEN*)((uint8*)SYM$1 + 56);
	if( (*(int32*)((uint8*)&PARSER$ + 152) & 1024) == 0 ) goto label$94;
	{
		int32 vr$3 = LEXGETLOOKAHEAD( 1, 0 );
		int32 vr$6 = LEXGETLOOKAHEAD( 1, 0 );
		if( (-(vr$3 != 40) & (-(TK$1 != 336) | -(vr$6 != 301))) == 0 ) goto label$96;
		{
			FBSTRING TMP$95$3;
			__builtin_memset( &TMP$95$3, 0, 12 );
			uint8* vr$11 = LEXGETTEXT(  );
			FBSTRING* vr$12 = fb_StrAllocTempDescZ( (uint8*)vr$11 );
			FBSTRING* vr$13 = fb_StrUcase2( (FBSTRING*)vr$12, 0 );
			fb_StrAssign( (void*)&TMP$95$3, -1, (void*)vr$13, -1, 0 );
			struct $7ASTNODE* vr$15 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&TMP$95$3 );
			FUNCEXPR$1 = vr$15;
			fb_StrDelete( (FBSTRING*)&TMP$95$3 );
			LEXSKIPTOKEN( 0 );
			fb$result$1 = FUNCEXPR$1;
			goto label$92;
		}
		label$96:;
		label$95:;
	}
	label$94:;
	label$93:;
	{
		uint32 TMP$96$2;
		TMP$96$2 = (uint32)TK$1;
		goto label$98;
		label$99:;
		{
			struct $7ASTNODE* vr$17 = CMKXFUNCT( TK$1 );
			FUNCEXPR$1 = vr$17;
		}
		goto label$97;
		label$100:;
		{
			struct $7ASTNODE* vr$18 = CCVXFUNCT( TK$1 );
			FUNCEXPR$1 = vr$18;
		}
		goto label$97;
		label$101:;
		{
			struct $7ASTNODE* vr$19 = CSTRINGFUNCT( TK$1 );
			FUNCEXPR$1 = vr$19;
		}
		goto label$97;
		label$102:;
		{
			struct $7ASTNODE* vr$20 = CMATHFUNCT( TK$1, 0 );
			FUNCEXPR$1 = vr$20;
		}
		goto label$97;
		label$103:;
		{
			struct $7ASTNODE* vr$21 = CPEEKFUNCT(  );
			FUNCEXPR$1 = vr$21;
		}
		goto label$97;
		label$104:;
		{
			struct $7ASTNODE* vr$22 = CARRAYFUNCT( TK$1 );
			FUNCEXPR$1 = vr$22;
		}
		goto label$97;
		label$105:;
		{
			struct $7ASTNODE* vr$23 = CFILEFUNCT( TK$1 );
			FUNCEXPR$1 = vr$23;
		}
		goto label$97;
		label$106:;
		{
			struct $7ASTNODE* vr$24 = CERRORFUNCT(  );
			FUNCEXPR$1 = vr$24;
		}
		goto label$97;
		label$107:;
		{
			struct $7ASTNODE* vr$25 = CIIFFUNCT(  );
			struct $7ASTNODE* vr$26 = CSTRIDXORMEMBERDEREF( vr$25 );
			fb$result$1 = vr$26;
			goto label$92;
		}
		goto label$97;
		label$108:;
		{
			struct $7ASTNODE* vr$27 = CVAFUNCT(  );
			FUNCEXPR$1 = vr$27;
		}
		goto label$97;
		label$109:;
		{
			struct $7ASTNODE* vr$28 = CVALISTFUNCT( TK$1 );
			FUNCEXPR$1 = vr$28;
		}
		goto label$97;
		label$110:;
		{
			struct $7ASTNODE* vr$29 = CTYPECONVEXPR( TK$1, 0 );
			fb$result$1 = vr$29;
			goto label$92;
		}
		goto label$97;
		label$111:;
		{
			struct $7ASTNODE* vr$30 = CANONTYPE(  );
			struct $7ASTNODE* vr$31 = CSTRIDXORMEMBERDEREF( vr$30 );
			fb$result$1 = vr$31;
			goto label$92;
		}
		goto label$97;
		label$112:;
		{
			struct $7ASTNODE* vr$32 = CVIEWSTMT( -1 );
			FUNCEXPR$1 = vr$32;
		}
		goto label$97;
		label$113:;
		{
			struct $7ASTNODE* vr$33 = CWIDTHSTMT( -1 );
			FUNCEXPR$1 = vr$33;
		}
		goto label$97;
		label$114:;
		{
			struct $7ASTNODE* vr$34 = CCOLORSTMT( -1 );
			FUNCEXPR$1 = vr$34;
		}
		goto label$97;
		label$115:;
		{
			struct $7ASTNODE* vr$35 = CSCREENFUNCT(  );
			FUNCEXPR$1 = vr$35;
		}
		goto label$97;
		label$116:;
		{
			struct $7ASTNODE* vr$36 = CTHREADCALLFUNC(  );
			FUNCEXPR$1 = vr$36;
		}
		goto label$97;
		label$98:;
		static const void* tmp$97[184] = {
			&&label$111,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$101,
			&&label$97,
			&&label$101,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$110,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$100,
			&&label$99,
			&&label$99,
			&&label$99,
			&&label$99,
			&&label$99,
			&&label$99,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$101,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$102,
			&&label$97,
			&&label$97,
			&&label$102,
			&&label$102,
			&&label$103,
			&&label$97,
			&&label$97,
			&&label$105,
			&&label$105,
			&&label$105,
			&&label$105,
			&&label$105,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$105,
			&&label$105,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$105,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$112,
			&&label$97,
			&&label$113,
			&&label$114,
			&&label$97,
			&&label$97,
			&&label$104,
			&&label$104,
			&&label$108,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$106,
			&&label$97,
			&&label$107,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$115,
			&&label$115,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$97,
			&&label$109,
			&&label$97,
			&&label$97,
			&&label$116,
		};
		if( (TMP$96$2 - 336u) > 183u ) goto label$97;
		goto *tmp$97[TMP$96$2 - 336u];
		label$97:;
	}
	if( FUNCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$118;
	{
		struct $7ASTNODE* vr$37 = CGFXFUNCT( TK$1 );
		FUNCEXPR$1 = vr$37;
	}
	label$118:;
	label$117:;
	fb$result$1 = FUNCEXPR$1;
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
