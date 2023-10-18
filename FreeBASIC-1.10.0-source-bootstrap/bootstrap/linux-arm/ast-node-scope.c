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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
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
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef int32 $15IRVREGTYPE_ENUM;
typedef int32 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 12 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 36 );
struct $5IRTAC {
	int32 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int32 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 128 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 REG;
	$12IR_REGFAMILY REGFAMILY;
	int32 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int32 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 72 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
static void fb_ctor__astznodezscope( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ASTSCOPEDESTROYVARS( struct $8FBSYMBOL* );
void ASTSCOPEALLOCLOCALS( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTADDAFTER( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBRANCH( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDBG( int32, int32, uint8* );
struct $7ASTNODE* ASTNEWNODE( int32, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( struct $8FBSYMBOL*, int32 );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
void ASTDTORLISTDEL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDSCOPE( struct $7ASTNODE* );
void SYMBDELSCOPETB( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_REMONLY( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_UNLINKONLY( struct $8FBSYMBOL* );
int32 SYMBGETVARHASCTOR( struct $8FBSYMBOL* );
int32 SYMBGETVARHASDTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONESYMBOL( struct $8FBSYMBOL* );
static int32 HCHECKBRANCH( struct $7ASTNODE*, struct $7ASTNODE* );
static void HDELLOCALS( struct $7ASTNODE*, int32 );
static void HADDTOBREAKLIST( struct $13AST_BREAKLIST*, struct $7ASTNODE* );
static void HBRANCHERROR( int32, struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HBRANCHWARNING( int32, struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HCHECKCROSSING( struct $7ASTNODE*, struct $8FBSYMBOL*, int32, int32 );
static void HCHECKSCOPELOCALS( struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HDESTROYBLOCKLOCALS( struct $8FBSYMBOL*, int32, int32, struct $7ASTNODE* );
static void HDELBACKWARDLOCALS( struct $7ASTNODE* );
static int32 HISTARGETOUTSIDE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int32 (*tmp$38)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int32 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int32, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int32, struct $6IRVREG*, int32 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int32, int32 );
typedef void (*tmp$55)( int32, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int32, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int32, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int32, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int32, struct $8FBSYMBOL*, int32, uint8* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int32 );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$68)( int32, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int32, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int32, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int32, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int32, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int32, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int32, struct $8FBSYMBOL* );
typedef uint32 (*tmp$75)( struct $6IRVREG* );
struct $7IR_VTBL {
	tmp$37 INIT;
	tmp$37 END;
	tmp$38 EMITBEGIN;
	tmp$37 EMITEND;
	tmp$39 GETOPTIONVALUE;
	tmp$40 SUPPORTSOP;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$44 EMITCONVERT;
	tmp$41 EMITLABEL;
	tmp$41 EMITLABELNF;
	tmp$45 EMITRETURN;
	tmp$42 EMITPROCBEGIN;
	tmp$46 EMITPROCEND;
	tmp$47 EMITPUSHARG;
	tmp$48 EMITASMLINE;
	tmp$49 EMITCOMMENT;
	tmp$50 EMITBOP;
	tmp$51 EMITUOP;
	tmp$44 EMITSTORE;
	tmp$37 EMITSPILLREGS;
	tmp$52 EMITLOAD;
	tmp$44 EMITLOADRES;
	tmp$51 EMITSTACK;
	tmp$51 EMITADDR;
	tmp$53 EMITCALL;
	tmp$54 EMITCALLPTR;
	tmp$45 EMITSTACKALIGN;
	tmp$52 EMITJUMPPTR;
	tmp$55 EMITBRANCH;
	tmp$56 EMITJMPTB;
	tmp$57 EMITMEM;
	tmp$58 EMITMACRO;
	tmp$41 EMITSCOPEBEGIN;
	tmp$41 EMITSCOPEEND;
	tmp$41 EMITDECL;
	tmp$59 EMITDBG;
	tmp$41 EMITVARINIBEGIN;
	tmp$41 EMITVARINIEND;
	tmp$60 EMITVARINII;
	tmp$61 EMITVARINIF;
	tmp$62 EMITVARINIOFS;
	tmp$63 EMITVARINISTR;
	tmp$64 EMITVARINIWSTR;
	tmp$65 EMITVARINIPAD;
	tmp$66 EMITVARINISCOPEBEGIN;
	tmp$37 EMITVARINISCOPEEND;
	tmp$37 EMITFBCTINFBEGIN;
	tmp$67 EMITFBCTINFSTRING;
	tmp$37 EMITFBCTINFEND;
	tmp$68 ALLOCVREG;
	tmp$69 ALLOCVRIMM;
	tmp$70 ALLOCVRIMMF;
	tmp$71 ALLOCVRVAR;
	tmp$72 ALLOCVRIDX;
	tmp$73 ALLOCVRPTR;
	tmp$71 ALLOCVROFS;
	tmp$74 SETVREGDATATYPE;
	tmp$75 GETDISTANCE;
	tmp$51 LOADVR;
	tmp$44 STOREVR;
	tmp$45 XCHGTOS;
};
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 272 );
typedef int32 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 276 );
extern struct $5IRCTX IR$;
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 8 );
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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 12 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint32 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 8 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int32 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 348 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 40 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 4 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 8 );
struct $7SYMBCTX {
	int32 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int32 CHAINPOOLHEAD;
	struct $8FBSYMBOL GLOBNSPC;
	struct $8FBSYMBOL* NAMESPC;
	struct $8FBHASHTB* HASHTB;
	struct $10FBSYMBOLTB* SYMTB;
	struct $6TSTACK NESTSTK;
	struct $5THASH IMPHASHTB;
	struct $5TLIST IMPHASHLIST;
	struct $5TPOOL NAMEPOOL;
	struct $5TLIST FWDLIST;
	struct $5TLIST NSEXTLIST;
	int32 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int32 FBARRAY_DATA;
	int32 FBARRAY_PTR;
	int32 FBARRAY_SIZE;
	int32 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int32 FBARRAYDIM_LBOUND;
	int32 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 99648 );
extern struct $7SYMBCTX SYMB$;
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
typedef int32 $8FB_TOKEN;
typedef int32 $15FB_CMPSTMT_MASK;
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

struct $7ASTNODE* ASTSCOPEBEGIN( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $8FBSYMBOL* S$1;
	if( *(uint32*)((uint8*)&PARSER$ + 100) < 128u ) goto label$13;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$11;
	}
	label$13:;
	label$12:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 33, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$1;
	ASTADD( N$1 );
	struct $8FBSYMBOL* vr$2 = SYMBADDSCOPE( N$1 );
	S$1 = vr$2;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = S$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 24) = *(struct $7ASTNODE**)((uint8*)&AST$ + 132);
	*(int32*)((uint8*)N$1 + 28) = *(int32*)((uint8*)&PARSER$ + 28);
	*(int32*)((uint8*)&PARSER$ + 28) = *(int32*)((uint8*)&PARSER$ + 28) + 1;
	*(uint32*)((uint8*)&PARSER$ + 100) = *(uint32*)((uint8*)&PARSER$ + 100) + 1u;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) = S$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 132) = N$1;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = (struct $10FBSYMBOLTB*)((uint8*)S$1 + 60);
	(*(tmp$41*)((uint8*)&IR$ + 44))( S$1 );
	struct $7ASTNODE* vr$10 = ASTNEWDBG( 115, (int32)S$1, (uint8*)0u );
	ASTADD( vr$10 );
	fb$result$1 = N$1;
	label$11:;
	return fb$result$1;
}

void ASTSCOPEBREAK( struct $8FBSYMBOL* TARGET$1 )
{
	label$18:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$0 = ASTNEWNODE( 35, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$0;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = TARGET$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 24) = *(struct $7ASTNODE**)((uint8*)&AST$ + 132);
	*(int32*)((uint8*)N$1 + 28) = *(int32*)((uint8*)&PARSER$ + 100);
	*(int32*)((uint8*)N$1 + 32) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	*(int32*)((uint8*)N$1 + 36) = *(int32*)((uint8*)&PARSER$ + 28);
	struct $7ASTNODE* vr$7 = ASTNEWBRANCH( 98, TARGET$1, (struct $7ASTNODE*)0u );
	*(struct $7ASTNODE**)((uint8*)N$1 + 64) = vr$7;
	ASTADD( *(struct $7ASTNODE**)((uint8*)N$1 + 64) );
	HADDTOBREAKLIST( (struct $13AST_BREAKLIST*)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 40) + 44), N$1 );
	label$19:;
}

void ASTSCOPEEND( struct $7ASTNODE* N$1 )
{
	label$20:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	*(int32*)((uint8*)&PARSER$ + 28) = *(int32*)((uint8*)&PARSER$ + 28) + 1;
	*(int32*)((uint8*)N$1 + 32) = *(int32*)((uint8*)&PARSER$ + 28);
	ASTSCOPEDESTROYVARS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 68) );
	SYMBDELSCOPETB( S$1 );
	(*(tmp$41*)((uint8*)&IR$ + 48))( S$1 );
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = *(struct $10FBSYMBOLTB**)((uint8*)S$1 + 164);
	*(struct $7ASTNODE**)((uint8*)&AST$ + 132) = *(struct $7ASTNODE**)((uint8*)N$1 + 24);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 132) + 12);
	*(uint32*)((uint8*)&PARSER$ + 100) = *(uint32*)((uint8*)&PARSER$ + 100) + 4294967295u;
	struct $7ASTNODE* vr$8 = ASTNEWDBG( 116, (int32)S$1, (uint8*)0u );
	ASTADD( vr$8 );
	struct $7ASTNODE* vr$9 = ASTNEWNODE( 34, -2147483648u, (struct $8FBSYMBOL*)0u );
	N$1 = vr$9;
	ASTADD( N$1 );
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) = S$1;
	label$21:;
}

int32 ASTSCOPEUPDBREAKLIST( struct $7ASTNODE* PROC$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	struct $7ASTNODE* N$1;
	fb$result$1 = 0;
	N$1 = *(struct $7ASTNODE**)((uint8*)PROC$1 + 44);
	label$24:;
	if( N$1 == (struct $7ASTNODE*)0u ) goto label$25;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 12) != *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 40) ) goto label$27;
		{
			HDELLOCALS( N$1, 0 );
		}
		goto label$26;
		label$27:;
		{
			int32 vr$4 = HCHECKBRANCH( PROC$1, N$1 );
			if( vr$4 != 0 ) goto label$29;
			{
				goto label$23;
			}
			label$29:;
			label$28:;
		}
		label$26:;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 76);
	}
	goto label$24;
	label$25:;
	fb$result$1 = -1;
	label$23:;
	return fb$result$1;
}

void ASTSCOPEDESTROYVARS( struct $8FBSYMBOL* SYMTBTAIL$1 )
{
	label$152:;
	struct $8FBSYMBOL* S$1;
	S$1 = SYMTBTAIL$1;
	label$154:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$155;
	{
		if( *(int32*)S$1 != 1 ) goto label$157;
		{
			int32 vr$1 = SYMBGETVARHASDTOR( S$1 );
			if( vr$1 == 0 ) goto label$159;
			{
				struct $7ASTNODE* vr$2 = _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( S$1, -1 );
				ASTADD( vr$2 );
			}
			label$159:;
			label$158:;
		}
		label$157:;
		label$156:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 172);
	}
	goto label$154;
	label$155:;
	label$153:;
}

void ASTSCOPEALLOCLOCALS( struct $8FBSYMBOL* SYMTBHEAD$1 )
{
	label$160:;
	struct $8FBSYMBOL* S$1;
	S$1 = SYMTBHEAD$1;
	if( *(int32*)((uint8*)&ENV$ + 104) != 1 ) goto label$163;
	{
		label$164:;
		if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$165;
		{
			if( (-(*(int32*)S$1 == 1) & -((*(int32*)((uint8*)S$1 + 4) & 4096) != 0)) == 0 ) goto label$167;
			{
				(*(tmp$41*)((uint8*)&IR$ + 164))( S$1 );
			}
			label$167:;
			label$166:;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
		}
		goto label$164;
		label$165:;
	}
	goto label$162;
	label$163:;
	{
		label$168:;
		if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$169;
		{
			if( (-(*(int32*)S$1 == 1) & -((*(int32*)((uint8*)S$1 + 4) & 3) == 0)) == 0 ) goto label$171;
			{
				if( (*(int32*)((uint8*)S$1 + 4) & 114688) == 0 ) goto label$173;
				{
					(*(tmp$42*)((uint8*)&IR$ + 32))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), S$1 );
				}
				goto label$172;
				label$173:;
				{
					(*(tmp$42*)((uint8*)&IR$ + 36))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), S$1 );
				}
				label$172:;
			}
			label$171:;
			label$170:;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
		}
		goto label$168;
		label$169:;
	}
	label$162:;
	label$161:;
}

struct $6IRVREG* ASTLOADSCOPEBEGIN( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$174:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	*(int32*)((uint8*)S$1 + 88) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 8);
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$177;
	{
		(*(tmp$41*)((uint8*)&IR$ + 156))( S$1 );
		ASTSCOPEALLOCLOCALS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 64) );
	}
	label$177:;
	label$176:;
	fb$result$1 = (struct $6IRVREG*)0u;
	label$175:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADSCOPEEND( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$178:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	if( *(int32*)((uint8*)&AST$ + 136) == 0 ) goto label$181;
	{
		(*(tmp$41*)((uint8*)&IR$ + 160))( S$1 );
	}
	label$181:;
	label$180:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 8) = *(int32*)((uint8*)S$1 + 88);
	fb$result$1 = (struct $6IRVREG*)0u;
	label$179:;
	return fb$result$1;
}

struct $8FBSYMBOL* ASTTEMPSCOPEBEGIN( struct $8FBSYMBOL** LASTSCP$1, struct $7ASTNODE* BACKNODE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$182:;
	struct $8FBSYMBOL* SCP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDSCOPE( BACKNODE$1 );
	SCP$1 = vr$1;
	*LASTSCP$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112);
	*(uint32*)((uint8*)&PARSER$ + 100) = *(uint32*)((uint8*)&PARSER$ + 100) + 1u;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) = SCP$1;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = (struct $10FBSYMBOLTB*)((uint8*)SCP$1 + 60);
	fb$result$1 = SCP$1;
	label$183:;
	return fb$result$1;
}

void ASTTEMPSCOPEEND( struct $8FBSYMBOL* SCP$1, struct $8FBSYMBOL* LASTSCP$1 )
{
	label$184:;
	struct $8FBSYMBOL* SYM$1;
	SYMBDELSCOPETB( SCP$1 );
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = *(struct $10FBSYMBOLTB**)((uint8*)SCP$1 + 164);
	SYMBFREESYMBOL_UNLINKONLY( SCP$1 );
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 112) = LASTSCP$1;
	*(uint32*)((uint8*)&PARSER$ + 100) = *(uint32*)((uint8*)&PARSER$ + 100) + 4294967295u;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 64);
	label$186:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$187;
	{
		if( *(int32*)SYM$1 != 1 ) goto label$189;
		{
			ASTDTORLISTDEL( SYM$1 );
		}
		label$189:;
		label$188:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$186;
	label$187:;
	label$185:;
}

void ASTTEMPSCOPECLONE( struct $8FBSYMBOL* SCP$1, struct $7ASTNODE* CLONETREE$1 )
{
	label$190:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* CLONESYM$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 64);
	label$192:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$193;
	{
		struct $8FBSYMBOL* vr$1 = SYMBCLONESYMBOL( SYM$1 );
		CLONESYM$1 = vr$1;
		ASTREPLACESYMBOLONTREE( CLONETREE$1, SYM$1, CLONESYM$1 );
		if( *(int32*)CLONESYM$1 != 1 ) goto label$195;
		{
			ASTDTORLISTADD( CLONESYM$1 );
		}
		label$195:;
		label$194:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$192;
	label$193:;
	label$191:;
}

void ASTTEMPSCOPEDELETE( struct $8FBSYMBOL* SCP$1 )
{
	label$196:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* NXT$1;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 64);
	label$198:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$199;
	{
		NXT$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
		SYMBFREESYMBOL_REMONLY( SYM$1 );
		SYM$1 = NXT$1;
	}
	goto label$198;
	label$199:;
	SYMBFREESYMBOL_REMONLY( SCP$1 );
	label$197:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HADDTOBREAKLIST( struct $13AST_BREAKLIST* LIST$1, struct $7ASTNODE* NODE$1 )
{
	label$14:;
	if( *(struct $7ASTNODE**)((uint8*)LIST$1 + 4) == (struct $7ASTNODE*)0u ) goto label$17;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)LIST$1 + 4) + 76) = NODE$1;
	}
	goto label$16;
	label$17:;
	{
		*(struct $7ASTNODE**)LIST$1 = NODE$1;
	}
	label$16:;
	*(struct $7ASTNODE**)((uint8*)NODE$1 + 72) = *(struct $7ASTNODE**)((uint8*)LIST$1 + 4);
	*(struct $7ASTNODE**)((uint8*)NODE$1 + 76) = (struct $7ASTNODE*)0u;
	*(struct $7ASTNODE**)((uint8*)LIST$1 + 4) = NODE$1;
	label$15:;
}

static void HBRANCHERROR( int32 ERRNUM$1, struct $7ASTNODE* N$1, struct $8FBSYMBOL* S$1 )
{
	label$30:;
	static int32 SHOWERROR$1;
	static FBSTRING MSG$1;
	SHOWERROR$1 = *(int32*)((uint8*)&ENV$ + 192);
	*(int32*)((uint8*)&ENV$ + 192) = 0;
	if( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16) == (uint8*)0u ) goto label$33;
	{
		FBSTRING TMP$93$2;
		__builtin_memset( &TMP$93$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$93$2, (void*)"to label: ", 11, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16), 0 );
		fb_StrAssign( (void*)&MSG$1, -1, (void*)vr$6, -1, 0 );
		if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$35;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)", ", 3, 0 );
		}
		label$35:;
		label$34:;
	}
	label$33:;
	label$32:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$37;
	{
		FBSTRING TMP$99$2;
		fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)"local ", 7, 0 );
		if( (*(int32*)((uint8*)S$1 + 28) & 511) != 17 ) goto label$39;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)"string: ", 9, 0 );
		}
		goto label$38;
		label$39:;
		if( *(int32*)((uint8*)S$1 + 64) == 0 ) goto label$40;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)"array: ", 8, 0 );
		}
		goto label$38;
		label$40:;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)"object: ", 9, 0 );
		}
		label$38:;
		__builtin_memset( &TMP$99$2, 0, 12 );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$99$2, (void*)&MSG$1, -1, *(void**)((uint8*)S$1 + 16), 0 );
		fb_StrAssign( (void*)&MSG$1, -1, (void*)vr$13, -1, 0 );
	}
	label$37:;
	label$36:;
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&MSG$1, *(int32*)((uint8*)N$1 + 32), 1, (uint8*)0u );
	*(int32*)((uint8*)&ENV$ + 192) = SHOWERROR$1;
	label$31:;
}

static void HBRANCHWARNING( int32 ERRNUM$1, struct $7ASTNODE* N$1, struct $8FBSYMBOL* S$1 )
{
	label$41:;
	static int32 SHOWERROR$1;
	static FBSTRING MSG$1;
	SHOWERROR$1 = *(int32*)((uint8*)&ENV$ + 192);
	*(int32*)((uint8*)&ENV$ + 192) = 0;
	if( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16) == (uint8*)0u ) goto label$44;
	{
		FBSTRING TMP$100$2;
		__builtin_memset( &TMP$100$2, 0, 12 );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$100$2, (void*)"to label: ", 11, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 16), 0 );
		fb_StrAssign( (void*)&MSG$1, -1, (void*)vr$6, -1, 0 );
		if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$46;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)", ", 3, 0 );
		}
		label$46:;
		label$45:;
	}
	label$44:;
	label$43:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$48;
	{
		FBSTRING TMP$102$2;
		fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)"variable: ", 11, 0 );
		__builtin_memset( &TMP$102$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$102$2, (void*)&MSG$1, -1, *(void**)((uint8*)S$1 + 16), 0 );
		fb_StrAssign( (void*)&MSG$1, -1, (void*)vr$10, -1, 0 );
	}
	label$48:;
	label$47:;
	ERRREPORTWARNEX( ERRNUM$1, (uint8*)*(uint8**)&MSG$1, *(int32*)((uint8*)N$1 + 32), 1, (uint8*)0u );
	*(int32*)((uint8*)&ENV$ + 192) = SHOWERROR$1;
	label$42:;
}

static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $7ASTNODE* BRANCH_PARENT$1, struct $8FBSYMBOL* LABEL_PARENT_SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$49:;
	struct $7ASTNODE* LABEL_PARENT$1;
	LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT_SYM$1 + 56);
	int32 BRANCH_SCOPE$1;
	BRANCH_SCOPE$1 = (int32)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 12) + 36);
	int32 LABEL_SCOPE$1;
	LABEL_SCOPE$1 = (int32)*(uint16*)((uint8*)LABEL_PARENT_SYM$1 + 36);
	if( BRANCH_SCOPE$1 <= LABEL_SCOPE$1 ) goto label$52;
	{
		label$53:;
		{
			BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)BRANCH_PARENT$1 + 24);
			BRANCH_SCOPE$1 = (int32)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 12) + 36);
		}
		label$55:;
		if( BRANCH_SCOPE$1 != LABEL_SCOPE$1 ) goto label$53;
		label$54:;
	}
	goto label$51;
	label$52:;
	if( BRANCH_SCOPE$1 >= LABEL_SCOPE$1 ) goto label$56;
	{
		label$57:;
		{
			LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 24);
			LABEL_SCOPE$1 = (int32)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LABEL_PARENT$1 + 12) + 36);
		}
		label$59:;
		if( LABEL_SCOPE$1 != BRANCH_SCOPE$1 ) goto label$57;
		label$58:;
	}
	label$56:;
	label$51:;
	label$60:;
	if( BRANCH_PARENT$1 == LABEL_PARENT$1 ) goto label$61;
	{
		BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)BRANCH_PARENT$1 + 24);
		LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 24);
	}
	goto label$60;
	label$61:;
	fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 12);
	label$50:;
	return fb$result$1;
}

static void HCHECKCROSSING( struct $7ASTNODE* N$1, struct $8FBSYMBOL* BLK$1, int32 TOP_STMT$1, int32 BOT_STMT$1 )
{
	label$62:;
	struct $8FBSYMBOL* S$1;
	int32 STMT$1;
	if( *(int32*)BLK$1 != 15 ) goto label$65;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 64);
	}
	goto label$64;
	label$65:;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 60);
	}
	label$64:;
	label$66:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$67;
	{
		if( *(int32*)S$1 != 1 ) goto label$69;
		{
			STMT$1 = *(int32*)((uint8*)S$1 + 100);
			if( STMT$1 <= TOP_STMT$1 ) goto label$71;
			{
				if( STMT$1 >= BOT_STMT$1 ) goto label$73;
				{
					int32 vr$5 = SYMBGETVARHASCTOR( S$1 );
					if( vr$5 == 0 ) goto label$75;
					{
						HBRANCHERROR( 105, N$1, S$1 );
					}
					goto label$74;
					label$75:;
					{
						if( (*(int32*)((uint8*)S$1 + 4) & 4099) != 0 ) goto label$77;
						{
							if( (*(int32*)((uint8*)S$1 + 12) & 2048) != 0 ) goto label$79;
							{
								HBRANCHWARNING( 14, N$1, S$1 );
							}
							label$79:;
							label$78:;
						}
						label$77:;
						label$76:;
					}
					label$74:;
				}
				label$73:;
				label$72:;
			}
			label$71:;
			label$70:;
		}
		label$69:;
		label$68:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	}
	goto label$66;
	label$67:;
	label$63:;
}

static void HCHECKSCOPELOCALS( struct $7ASTNODE* N$1, struct $8FBSYMBOL* TOP_PARENT$1 )
{
	label$80:;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* BLK$1;
	int32 LABEL_STMT$1;
	int32 BRANCH_STMT$1;
	if( TOP_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$83;
	{
		TOP_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 24) + 12);
	}
	label$83:;
	label$82:;
	BRANCH_STMT$1 = *(int32*)((uint8*)N$1 + 36);
	LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	LABEL_STMT$1 = *(int32*)((uint8*)LABEL$1 + 64);
	BLK$1 = *(struct $8FBSYMBOL**)((uint8*)LABEL$1 + 56);
	label$84:;
	{
		HCHECKCROSSING( N$1, BLK$1, 0, LABEL_STMT$1 );
		if( *(struct $10FBSYMBOLTB**)((uint8*)BLK$1 + 164) != (struct $10FBSYMBOLTB*)0u ) goto label$88;
		{
			goto label$85;
		}
		label$88:;
		label$87:;
		BLK$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)BLK$1 + 164);
		if( BLK$1 != TOP_PARENT$1 ) goto label$90;
		{
			if( LABEL_STMT$1 <= BRANCH_STMT$1 ) goto label$92;
			{
				HCHECKCROSSING( N$1, BLK$1, BRANCH_STMT$1, LABEL_STMT$1 );
			}
			label$92:;
			label$91:;
			goto label$85;
		}
		label$90:;
		label$89:;
	}
	label$86:;
	goto label$84;
	label$85:;
	label$81:;
}

static void HDESTROYBLOCKLOCALS( struct $8FBSYMBOL* BLK$1, int32 TOP_STMT$1, int32 BOT_STMT$1, struct $7ASTNODE* BASE_EXPR$1 )
{
	label$93:;
	struct $8FBSYMBOL* S$1;
	struct $7ASTNODE* EXPR$1;
	int32 STMT$1;
	if( *(int32*)BLK$1 != 15 ) goto label$96;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 68);
	}
	goto label$95;
	label$96:;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 64);
	}
	label$95:;
	label$97:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$98;
	{
		if( *(int32*)S$1 != 1 ) goto label$100;
		{
			STMT$1 = *(int32*)((uint8*)S$1 + 100);
			if( STMT$1 <= TOP_STMT$1 ) goto label$102;
			{
				if( STMT$1 >= BOT_STMT$1 ) goto label$104;
				{
					int32 vr$5 = SYMBGETVARHASDTOR( S$1 );
					if( vr$5 == 0 ) goto label$106;
					{
						struct $7ASTNODE* vr$6 = _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( S$1, -1 );
						EXPR$1 = vr$6;
						if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$108;
						{
							struct $7ASTNODE* vr$7 = ASTADDAFTER( EXPR$1, BASE_EXPR$1 );
							BASE_EXPR$1 = vr$7;
						}
						label$108:;
						label$107:;
					}
					label$106:;
					label$105:;
				}
				label$104:;
				label$103:;
			}
			label$102:;
			label$101:;
		}
		label$100:;
		label$99:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 172);
	}
	goto label$97;
	label$98:;
	label$94:;
}

static void HDELBACKWARDLOCALS( struct $7ASTNODE* N$1 )
{
	label$109:;
	HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 24) + 12), *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 64), *(int32*)((uint8*)N$1 + 36), *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 72) );
	label$110:;
}

static void HDELLOCALS( struct $7ASTNODE* N$1, int32 CHECK_BACKWARD$1 )
{
	label$111:;
	struct $8FBSYMBOL* S$1;
	int32 LABEL_STMT$1;
	int32 BRANCH_STMT$1;
	struct $7ASTNODE* BLK$1;
	LABEL_STMT$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 12) + 64);
	BRANCH_STMT$1 = *(int32*)((uint8*)N$1 + 36);
	BLK$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 24);
	label$113:;
	{
		int32 TMP$103$2;
		HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 12), 0, BRANCH_STMT$1, *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 72) );
		BLK$1 = *(struct $7ASTNODE**)((uint8*)BLK$1 + 24);
		if( BLK$1 != (struct $7ASTNODE*)0u ) goto label$117;
		{
			goto label$114;
		}
		label$117:;
		label$116:;
		if( LABEL_STMT$1 < *(int32*)((uint8*)BLK$1 + 28) ) goto label$118;
		TMP$103$2 = -(LABEL_STMT$1 < *(int32*)((uint8*)BLK$1 + 32));
		goto label$200;
		label$118:;
		TMP$103$2 = 0;
		label$200:;
		if( TMP$103$2 == 0 ) goto label$120;
		{
			if( CHECK_BACKWARD$1 == 0 ) goto label$122;
			{
				if( LABEL_STMT$1 > BRANCH_STMT$1 ) goto label$124;
				{
					HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 12), LABEL_STMT$1, BRANCH_STMT$1, *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 64) + 72) );
				}
				label$124:;
				label$123:;
			}
			label$122:;
			label$121:;
			goto label$114;
		}
		label$120:;
		label$119:;
	}
	label$115:;
	goto label$113;
	label$114:;
	label$112:;
}

static int32 HISTARGETOUTSIDE( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* LABEL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$125:;
	if( (*(int32*)((uint8*)PROC$1 + 12) & 12288) == 0 ) goto label$128;
	{
		fb$result$1 = -(*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)LABEL$1 + 164) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352));
	}
	goto label$127;
	label$128:;
	{
		fb$result$1 = -(*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)LABEL$1 + 164) != PROC$1);
	}
	label$127:;
	label$126:;
	return fb$result$1;
}

static int32 HCHECKBRANCH( struct $7ASTNODE* PROC$1, struct $7ASTNODE* N$1 )
{
	int32 TMP$104$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$129:;
	struct $7ASTNODE* BRANCH_PARENT$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* LABEL_PARENT$1;
	int32 BRANCH_SCOPE$1;
	int32 LABEL_SCOPE$1;
	int32 BRANCH_STMT$1;
	int32 LABEL_STMT$1;
	int32 ISPARENT$1;
	fb$result$1 = 0;
	LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 12);
	if( *(int32*)((uint8*)LABEL$1 + 60) != 0 ) goto label$132;
	{
		HBRANCHERROR( 104, N$1, (struct $8FBSYMBOL*)0u );
		goto label$130;
	}
	label$132:;
	label$131:;
	int32 vr$4 = HISTARGETOUTSIDE( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 12), LABEL$1 );
	if( vr$4 == 0 ) goto label$134;
	{
		HBRANCHERROR( 104, N$1, (struct $8FBSYMBOL*)0u );
		goto label$130;
	}
	label$134:;
	label$133:;
	LABEL_SCOPE$1 = (int32)*(uint16*)((uint8*)LABEL$1 + 36);
	LABEL_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)LABEL$1 + 56);
	LABEL_STMT$1 = *(int32*)((uint8*)LABEL$1 + 64);
	BRANCH_SCOPE$1 = *(int32*)((uint8*)N$1 + 28);
	BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 24);
	BRANCH_STMT$1 = *(int32*)((uint8*)N$1 + 36);
	if( LABEL_STMT$1 < *(int32*)((uint8*)BRANCH_PARENT$1 + 28) ) goto label$135;
	TMP$104$1 = -(LABEL_STMT$1 < *(int32*)((uint8*)BRANCH_PARENT$1 + 32));
	goto label$201;
	label$135:;
	TMP$104$1 = 0;
	label$201:;
	if( TMP$104$1 == 0 ) goto label$137;
	{
		if( LABEL_SCOPE$1 <= BRANCH_SCOPE$1 ) goto label$139;
		{
			HCHECKSCOPELOCALS( N$1, (struct $8FBSYMBOL*)0u );
			if( LABEL_STMT$1 > BRANCH_STMT$1 ) goto label$141;
			{
				HDELBACKWARDLOCALS( N$1 );
			}
			label$141:;
			label$140:;
		}
		goto label$138;
		label$139:;
		{
			if( LABEL_STMT$1 > BRANCH_STMT$1 ) goto label$143;
			{
				HDELBACKWARDLOCALS( N$1 );
			}
			goto label$142;
			label$143:;
			{
				HCHECKCROSSING( N$1, LABEL_PARENT$1, BRANCH_STMT$1, LABEL_STMT$1 );
			}
			label$142:;
		}
		label$138:;
		fb$result$1 = -1;
		goto label$130;
	}
	label$137:;
	label$136:;
	if( *(int32*)LABEL_PARENT$1 != 15 ) goto label$145;
	{
		ISPARENT$1 = -(*(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 56) + 28) <= *(int32*)((uint8*)BRANCH_PARENT$1 + 28)) & -(*(int32*)((uint8*)*(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 56) + 32) >= *(int32*)((uint8*)BRANCH_PARENT$1 + 32));
		if( ISPARENT$1 != 0 ) goto label$147;
		{
			struct $8FBSYMBOL* vr$25 = HFINDCOMMONPARENT( BRANCH_PARENT$1, LABEL_PARENT$1 );
			HCHECKSCOPELOCALS( N$1, vr$25 );
		}
		label$147:;
		label$146:;
	}
	goto label$144;
	label$145:;
	{
		ISPARENT$1 = -1;
	}
	label$144:;
	if( ISPARENT$1 == 0 ) goto label$149;
	{
		if( LABEL_STMT$1 <= BRANCH_STMT$1 ) goto label$151;
		{
			HCHECKCROSSING( N$1, LABEL_PARENT$1, BRANCH_STMT$1, LABEL_STMT$1 );
		}
		label$151:;
		label$150:;
	}
	label$149:;
	label$148:;
	HDELLOCALS( N$1, -1 );
	fb$result$1 = -1;
	label$130:;
	return fb$result$1;
}
