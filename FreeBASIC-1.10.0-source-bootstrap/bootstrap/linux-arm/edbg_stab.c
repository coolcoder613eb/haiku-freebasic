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
typedef void (*tmp$109)( int32, int32 );
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
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_UIntToStr( uint32 );
FBSTRING* fb_LongintToStr( int64 );
static void fb_ctor__edbg_stab( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
FBSTRING* FBGETENTRYPOINT( void );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDLABEL( uint8*, $10FB_SYMBOPT );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
uint8* SYMBGETMANGLEDNAME( struct $8FBSYMBOL* );
uint8* SYMBGETDBGNAME( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMFIRSTELM( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETENUMNEXTELM( struct $8FBSYMBOL* );
int32 PATHISABSOLUTE( uint8* );
FBSTRING* HCURDIR( void );
uint8* HESCAPE( uint8* );
void EMITWRITESTR( uint8*, int32 );
void EDBGEMITLINE( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
void EDBGEMITPROCARG( struct $8FBSYMBOL* );
void EDBGEMITLOCALVAR( struct $8FBSYMBOL*, int32 );
void EDBGINCLUDE( uint8* );
static void HDECLUDT( struct $8FBSYMBOL*, int32 );
static void HDECLENUM( struct $8FBSYMBOL* );
static FBSTRING* HDECLPOINTER( int32* );
static FBSTRING* HGETDATATYPE( struct $8FBSYMBOL*, int32 );
static void HEMITSTABS( int32, uint8*, int32, int32, uint8* );
static uint8* HMAKESTABN( int32, int32, int32, uint8* );
static void HEMITSTABN( int32, int32, int32, uint8* );
static void HEMITSTABD( int32, int32, int32 );
static void HSTABLABEL( uint8* );
static void HDECLARGS( struct $8FBSYMBOL* );
static void HDECLLOCALVARS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
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
struct $8REGCLASS;
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
typedef int32 (*tmp$91)( struct $8REGCLASS*, struct $6IRVREG*, struct $6IRVREG*, uint32 );
typedef int32 (*tmp$92)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$93)( struct $8REGCLASS*, int32 );
typedef int32 (*tmp$94)( struct $8REGCLASS*, int32 );
typedef void (*tmp$95)( struct $8REGCLASS*, int32, struct $6IRVREG*, struct $6IRVREG* );
typedef int32 (*tmp$96)( struct $8REGCLASS* );
typedef struct $6IRVREG* (*tmp$97)( struct $8REGCLASS*, int32, struct $6IRVREG** );
typedef void (*tmp$98)( struct $8REGCLASS* );
struct $7REG_REG;
struct $7REG_REG {
	int32 NUM;
	struct $7REG_REG* PREV;
};
__FB_STATIC_ASSERT( sizeof( struct $7REG_REG ) == 8 );
typedef int32 $12REG_SIZEMASK;
struct $10REG_REGCTX {
	struct $7REG_REG* FREETAIL;
	struct $7REG_REG* USEDTAIL;
	int32 FREETB;
	struct $7REG_REG REGTB[8];
	$12REG_SIZEMASK SIZETB[8];
	uint32 NEXTTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_REGCTX ) == 140 );
struct $10REG_STKCTX {
	int32 REGTB[8];
	int32 FREGS;
};
__FB_STATIC_ASSERT( sizeof( struct $10REG_STKCTX ) == 36 );
struct $8REGCLASS {
	tmp$91 ENSURE;
	tmp$91 _ALLOCATE;
	tmp$92 ALLOCATEREG;
	tmp$93 FREE;
	tmp$94 ISFREE;
	tmp$95 SETOWNER;
	tmp$96 GETMAXREGS;
	tmp$96 GETFIRST;
	tmp$94 GETNEXT;
	tmp$97 GETVREG;
	tmp$94 GETREALREG;
	tmp$98 CLEAR;
	tmp$98 DUMP;
	int32 CLASS;
	int32 ISSTACK;
	int32 REGS;
	struct $6IRVREG* VREGTB[8];
	struct $6IRVREG* VAUXPARENT[8];
	struct $10REG_REGCTX REGCTX;
	struct $10REG_STKCTX STKCTX;
};
__FB_STATIC_ASSERT( sizeof( struct $8REGCLASS ) == 304 );
struct $10TFLISTITEM;
struct $10TFLISTITEM {
	struct $10TFLISTITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TFLISTITEM ) == 4 );
struct $6TFLIST {
	int32 TOTITEMS;
	int32 ITEMS;
	struct $10TFLISTITEM* ITEMTB;
	int32 INDEX;
	struct $10TFLISTITEM* LASTITEM;
	struct $5TLIST LIST;
	struct $7TLISTTB* LISTTB;
};
__FB_STATIC_ASSERT( sizeof( struct $6TFLIST ) == 56 );
typedef int32 $19EMIT_NODECLASS_ENUM;
struct $12EMIT_BOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BOPNODE ) == 12 );
struct $12EMIT_UOPNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_UOPNODE ) == 8 );
struct $12EMIT_RELNODE {
	int32 OP;
	struct $6IRVREG* RVREG;
	struct $8FBSYMBOL* LABEL;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_RELNODE ) == 20 );
struct $12EMIT_STKNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_STKNODE ) == 12 );
struct $12EMIT_BRCNODE {
	int32 OP;
	struct $6IRVREG* VREG;
	struct $8FBSYMBOL* SYM;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_BRCNODE ) == 16 );
struct $12EMIT_SOPNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_SOPNODE ) == 8 );
struct $12EMIT_LITNODE {
	int32 ISASM;
	uint8* TEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_LITNODE ) == 8 );
struct $12EMIT_JTBNODE {
	struct $8FBSYMBOL* TBSYM;
	uint64* VALUES;
	struct $8FBSYMBOL** LABELS;
	int32 LABELCOUNT;
	struct $8FBSYMBOL* DEFLABEL;
	uint64 BIAS;
	uint64 SPAN;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_JTBNODE ) == 40 );
struct $12EMIT_MEMNODE {
	int32 OP;
	struct $6IRVREG* DVREG;
	struct $6IRVREG* SVREG;
	int32 BYTES;
	int32 EXTRA;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_MEMNODE ) == 20 );
struct $12EMIT_DBGNODE {
	int32 OP;
	struct $8FBSYMBOL* SYM;
	int32 LNUM;
	uint8* FILENAME;
	int32 POS;
};
__FB_STATIC_ASSERT( sizeof( struct $12EMIT_DBGNODE ) == 20 );
struct $9EMIT_NODE {
	$19EMIT_NODECLASS_ENUM CLASS;
	union {
		struct $12EMIT_BOPNODE BOP;
		struct $12EMIT_UOPNODE UOP;
		struct $12EMIT_RELNODE REL;
		struct $12EMIT_STKNODE STK;
		struct $12EMIT_BRCNODE BRC;
		struct $12EMIT_SOPNODE SOP;
		struct $12EMIT_LITNODE LIT;
		struct $12EMIT_JTBNODE JTB;
		struct $12EMIT_MEMNODE MEM;
		struct $12EMIT_DBGNODE DBG;
	};
	int32 REGFREETB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_NODE ) == 56 );
typedef int32 (*tmp$38)( void );
typedef void (*tmp$37)( void );
typedef int32 $14IR_OPTIONVALUE;
typedef int32 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int32 (*tmp$40)( int32, int32 );
typedef void (*tmp$106)( int32, int32, int32, int32* );
typedef void (*tmp$107)( int32, int32, int32*, int32* );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$41)( struct $8FBSYMBOL* );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$108)( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef uint8* (*tmp$110)( int32 );
typedef uint8* (*tmp$111)( int32, int32 );
struct $9EMIT_VTBL {
	tmp$38 INIT;
	tmp$37 END;
	tmp$39 GETOPTIONVALUE;
	tmp$38 OPEN;
	tmp$37 CLOSE;
	tmp$40 ISREGPRESERVED;
	tmp$40 GETFREEPRESERVEDREG;
	tmp$106 GETARGREG;
	tmp$107 GETRESULTREG;
	tmp$43 PROCGETFRAMEREGNAME;
	tmp$41 PROCBEGIN;
	tmp$41 PROCEND;
	tmp$42 PROCHEADER;
	tmp$108 PROCFOOTER;
	tmp$42 PROCALLOCARG;
	tmp$42 PROCALLOCLOCAL;
	tmp$41 PROCALLOCSTATICVARS;
	tmp$41 SCOPEBEGIN;
	tmp$41 SCOPEEND;
	tmp$109 SETSECTION;
	tmp$110 GETTYPESTRING;
	tmp$111 GETSECTIONSTRING;
};
__FB_STATIC_ASSERT( sizeof( struct $9EMIT_VTBL ) == 88 );
struct $7EMITCTX {
	int32 INITED;
	int32 POS;
	struct $8REGCLASS* REGTB[2];
	struct $6TFLIST NODETB;
	struct $6TFLIST VREGTB;
	struct $9EMIT_NODE* CURNODE;
	int32 REGUSEDTB[2];
	int32 LASTSECTION;
	int32 LASTPRIORITY;
	struct $9EMIT_VTBL VTBL;
	void** OPFNTB;
};
__FB_STATIC_ASSERT( sizeof( struct $7EMITCTX ) == 240 );
extern struct $7EMITCTX EMIT$;
struct $8FBARRAY1IPvE {
	void** DATA;
	void** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IPvE ) == 36 );
static struct $8FBARRAY1IPvE tmp$112$;
struct $7EDBGCTX {
	uint32 TYPECNT;
	struct $8FBSYMBOL* LABEL;
	int32 LNUM;
	int32 POS;
	int32 ISNEWLINE;
	int32 FIRSTLINE;
	int32 LASTLINE;
	uint8 FILENAME[261];
	uint8* INCFILE;
};
__FB_STATIC_ASSERT( sizeof( struct $7EDBGCTX ) == 296 );
static struct $7EDBGCTX CTX$;
static int32 REMAPTB$[26] = { 7, 16, 2, 3, 4, 5, 6, 6, 1, 8, 1, 1, 8, 9, 10, 11, 12, 13, 14, 17 };
static uint8* STABSTB$[17] = { (uint8*)"integer:t1=-1", (uint8*)"void:t7=-11", (uint8*)"byte:t2=-6", (uint8*)"ubyte:t3=-5", (uint8*)"char:t4=-2", (uint8*)"short:t5=-3", (uint8*)"ushort:t6=-7", (uint8*)"uinteger:t8=-8", (uint8*)"longint:t9=-31", (uint8*)"ulongint:t10=-32", (uint8*)"single:t11=-12", (uint8*)"double:t12=-13", (uint8*)"string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;", (uint8*)"fixstr:t14=-2", (uint8*)"pchar:t15=*4;", (uint8*)"boolean:t16=@s8;-16", (uint8*)"va_list:t17=-11" };

void EDBGINIT( void )
{
	label$10:;
	*(int32*)((int32)(int32*)REMAPTB$ + 28) = *(int32*)((int32)(int32*)REMAPTB$ + (*(int32*)((uint8*)&ENV$ + 272) << (2 & 31)));
	label$11:;
}

void EDBGEMITHEADER( uint8* FILENAME$1 )
{
	FBSTRING TMP$145$1;
	FBSTRING TMP$146$1;
	FBSTRING TMP$147$1;
	label$22:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$25;
	{
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$23;
	}
	label$25:;
	label$24:;
	*(uint32*)&CTX$ = 1u;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) = (struct $8FBSYMBOL*)0u;
	*(uint8**)((uint8*)&CTX$ + 292) = (uint8*)0u;
	fb_StrAssign( (void*)((uint8*)&CTX$ + 28), 261, (void*)FILENAME$1, 0, 0 );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$3, 0, 0 );
	__builtin_memset( &TMP$147$1, 0, 12 );
	uint8* vr$6 = HESCAPE( (uint8*)FILENAME$1 );
	__builtin_memset( &TMP$145$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$145$1, (void*)".file \x22", 8, (void*)vr$6, 0 );
	__builtin_memset( &TMP$146$1, 0, 12 );
	FBSTRING* vr$12 = fb_StrConcat( &TMP$146$1, (void*)vr$9, -1, (void*)"\x22", 2 );
	fb_StrAssign( (void*)&TMP$147$1, -1, (void*)vr$12, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&TMP$147$1, -1 );
	fb_StrDelete( (FBSTRING*)&TMP$147$1 );
	int32 vr$15 = PATHISABSOLUTE( FILENAME$1 );
	if( vr$15 != 0 ) goto label$27;
	{
		FBSTRING TMP$148$2;
		FBSTRING TMP$149$2;
		__builtin_memset( &TMP$149$2, 0, 12 );
		FBSTRING* vr$17 = HCURDIR(  );
		__builtin_memset( &TMP$148$2, 0, 12 );
		FBSTRING* vr$20 = fb_StrConcat( &TMP$148$2, (void*)vr$17, -1, (void*)"/", 2 );
		fb_StrAssign( (void*)&TMP$149$2, -1, (void*)vr$20, -1, 0 );
		HEMITSTABS( 100, (uint8*)*(uint8**)&TMP$149$2, 0, 0, (uint8*)*(uint8**)&LNAME$1 );
		fb_StrDelete( (FBSTRING*)&TMP$149$2 );
	}
	label$27:;
	label$26:;
	HEMITSTABS( 100, (uint8*)FILENAME$1, 0, 0, (uint8*)*(uint8**)&LNAME$1 );
	(*(tmp$109*)((uint8*)&EMIT$ + 224))( 3, 0 );
	HSTABLABEL( (uint8*)*(uint8**)&LNAME$1 );
	{
		int32 I$2;
		I$2 = 0;
		label$31:;
		{
			HEMITSTABS( 128, *(uint8**)((int32)(uint8**)STABSTB$ + (I$2 << (2 & 31))), 0, 0, (uint8*)"0" );
			*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
		}
		label$29:;
		I$2 = I$2 + 1;
		label$28:;
		if( I$2 <= 16 ) goto label$31;
		label$30:;
	}
	EMITWRITESTR( (uint8*)"", 0 );
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$23:;
}

void EDBGEMITFOOTER( void )
{
	label$32:;
	static FBSTRING LNAME$1;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$35;
	{
		goto label$33;
	}
	label$35:;
	label$34:;
	(*(tmp$109*)((uint8*)&EMIT$ + 224))( 3, 0 );
	uint8* vr$0 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$0, 0, 0 );
	HEMITSTABS( 100, (uint8*)"", 0, 0, (uint8*)*(uint8**)&LNAME$1 );
	HSTABLABEL( (uint8*)*(uint8**)&LNAME$1 );
	label$33:;
}

void EDBGLINEBEGIN( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, int32 POS_$1, uint8* FILENAME$1 )
{
	label$36:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$39;
	{
		goto label$37;
	}
	label$39:;
	label$38:;
	if( *(int32*)((uint8*)&CTX$ + 8) <= 0 ) goto label$41;
	{
		*(int32*)((uint8*)&CTX$ + 12) = POS_$1 - *(int32*)((uint8*)&CTX$ + 12);
		if( *(int32*)((uint8*)&CTX$ + 12) <= 0 ) goto label$43;
		{
			EDBGEMITLINE( PROC$1, *(int32*)((uint8*)&CTX$ + 8), *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) );
			*(int32*)((uint8*)&CTX$ + 16) = -1;
		}
		label$43:;
		label$42:;
	}
	label$41:;
	label$40:;
	EDBGINCLUDE( FILENAME$1 );
	*(int32*)((uint8*)&CTX$ + 12) = POS_$1;
	*(int32*)((uint8*)&CTX$ + 8) = LNUM$1;
	if( *(int32*)((uint8*)&CTX$ + 16) == 0 ) goto label$45;
	{
		struct $8FBSYMBOL* vr$1 = SYMBADDLABEL( (uint8*)0u, 4 );
		*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) = vr$1;
		uint8* vr$2 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) );
		HSTABLABEL( vr$2 );
		*(int32*)((uint8*)&CTX$ + 16) = 0;
	}
	label$45:;
	label$44:;
	label$37:;
}

void EDBGLINEEND( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, int32 POS_$1 )
{
	label$46:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$49;
	{
		goto label$47;
	}
	label$49:;
	label$48:;
	if( *(int32*)((uint8*)&CTX$ + 8) <= 0 ) goto label$51;
	{
		*(int32*)((uint8*)&CTX$ + 12) = POS_$1 - *(int32*)((uint8*)&CTX$ + 12);
		if( *(int32*)((uint8*)&CTX$ + 12) <= 0 ) goto label$53;
		{
			EDBGEMITLINE( PROC$1, *(int32*)((uint8*)&CTX$ + 8), *(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) );
			*(int32*)((uint8*)&CTX$ + 16) = -1;
		}
		label$53:;
		label$52:;
		*(int32*)((uint8*)&CTX$ + 8) = 0;
	}
	label$51:;
	label$50:;
	label$47:;
}

void EDBGEMITLINE( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$151$1;
	FBSTRING TMP$152$1;
	FBSTRING TMP$153$1;
	label$54:;
	static uint8* S$1;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	if( *(int32*)((uint8*)&CTX$ + 20) != -1 ) goto label$59;
	{
		*(int32*)((uint8*)&CTX$ + 20) = LNUM$1;
	}
	label$59:;
	label$58:;
	*(int32*)((uint8*)&CTX$ + 24) = LNUM$1;
	__builtin_memset( &TMP$153$1, 0, 12 );
	uint8* vr$1 = SYMBGETMANGLEDNAME( PROC$1 );
	uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$151$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$151$1, (void*)vr$2, 0, (void*)"-", 2 );
	__builtin_memset( &TMP$152$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$152$1, (void*)vr$5, -1, (void*)vr$1, 0 );
	fb_StrAssign( (void*)&TMP$153$1, -1, (void*)vr$8, -1, 0 );
	uint8* vr$10 = HMAKESTABN( 68, 0, LNUM$1, (uint8*)*(uint8**)&TMP$153$1 );
	S$1 = vr$10;
	fb_StrDelete( (FBSTRING*)&TMP$153$1 );
	EMITWRITESTR( (uint8*)S$1, 0 );
	label$55:;
}

void EDBGEMITLINEFLUSH( struct $8FBSYMBOL* PROC$1, int32 LNUM$1, struct $8FBSYMBOL* LABEL$1 )
{
	FBSTRING TMP$154$1;
	FBSTRING TMP$155$1;
	FBSTRING TMP$156$1;
	label$60:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$63;
	{
		goto label$61;
	}
	label$63:;
	label$62:;
	__builtin_memset( &TMP$156$1, 0, 12 );
	uint8* vr$1 = SYMBGETMANGLEDNAME( PROC$1 );
	uint8* vr$2 = SYMBGETMANGLEDNAME( LABEL$1 );
	__builtin_memset( &TMP$154$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$154$1, (void*)vr$2, 0, (void*)"-", 2 );
	__builtin_memset( &TMP$155$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$155$1, (void*)vr$5, -1, (void*)vr$1, 0 );
	fb_StrAssign( (void*)&TMP$156$1, -1, (void*)vr$8, -1, 0 );
	HEMITSTABN( 68, 0, LNUM$1, (uint8*)*(uint8**)&TMP$156$1 );
	fb_StrDelete( (FBSTRING*)&TMP$156$1 );
	label$61:;
}

void EDBGSCOPEBEGIN( struct $8FBSYMBOL* S$1 )
{
	label$64:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$67;
	{
		goto label$65;
	}
	label$67:;
	label$66:;
	*(int32*)((uint8*)S$1 + 72) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0u, 4 );
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 80) = vr$2;
	label$65:;
}

void EDBGSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$68:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$71;
	{
		goto label$69;
	}
	label$71:;
	label$70:;
	*(int32*)((uint8*)S$1 + 76) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	struct $8FBSYMBOL* vr$2 = SYMBADDLABEL( (uint8*)0u, 4 );
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 84) = vr$2;
	label$69:;
}

void EDBGEMITSCOPEINI( struct $8FBSYMBOL* S$1 )
{
	label$72:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$75;
	{
		goto label$73;
	}
	label$75:;
	label$74:;
	uint8* vr$1 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)S$1 + 80) );
	HSTABLABEL( vr$1 );
	label$73:;
}

void EDBGEMITSCOPEEND( struct $8FBSYMBOL* S$1 )
{
	label$76:;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$79;
	{
		goto label$77;
	}
	label$79:;
	label$78:;
	uint8* vr$1 = SYMBGETMANGLEDNAME( *(struct $8FBSYMBOL**)((uint8*)S$1 + 84) );
	HSTABLABEL( vr$1 );
	label$77:;
}

void EDBGPROCBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$80:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$81:;
}

void EDBGPROCEND( struct $8FBSYMBOL* PROC$1 )
{
	label$82:;
	*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
	label$83:;
}

void EDBGPROCEMITBEGIN( struct $8FBSYMBOL* PROC$1 )
{
	label$84:;
	*(int32*)((uint8*)&CTX$ + 20) = -1;
	*(int32*)((uint8*)&CTX$ + 24) = -1;
	label$85:;
}

void EDBGEMITPROCHEADER( struct $8FBSYMBOL* PROC$1 )
{
	label$94:;
	static FBSTRING DESC$1;
	static FBSTRING PROCNAME$1;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$97;
	{
		goto label$95;
	}
	label$97:;
	label$96:;
	EDBGINCLUDE( *(uint8**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 24) );
	if( (*(int32*)((uint8*)PROC$1 + 12) & 4096) == 0 ) goto label$99;
	{
		FBSTRING TMP$157$2;
		uint8* vr$4 = SYMBGETMANGLEDNAME( PROC$1 );
		__builtin_memset( &TMP$157$2, 0, 12 );
		FBSTRING* vr$6 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&TMP$157$2, -1, (void*)vr$6, -1, 0 );
		HEMITSTABS( 42, (uint8*)*(uint8**)&TMP$157$2, 0, 1, (uint8*)vr$4 );
		fb_StrDelete( (FBSTRING*)&TMP$157$2 );
		HEMITSTABD( 68, 0, 1 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16) = 1;
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 20) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568);
		FBSTRING* vr$14 = FBGETENTRYPOINT(  );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$14, -1, 0 );
	}
	goto label$98;
	label$99:;
	{
		uint8* vr$15 = SYMBGETDBGNAME( PROC$1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$15, 0, 0 );
	}
	label$98:;
	uint8* vr$16 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1, (void*)vr$16, 0, 0 );
	if( (*(int32*)((uint8*)PROC$1 + 4) & 32) == 0 ) goto label$101;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":F", 3, 0 );
	}
	goto label$100;
	label$101:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":f", 3, 0 );
	}
	label$100:;
	FBSTRING* vr$19 = HGETDATATYPE( PROC$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$19, -1, 0 );
	HEMITSTABS( 36, (uint8*)*(uint8**)&DESC$1, 0, *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 16), (uint8*)*(uint8**)&PROCNAME$1 );
	HDECLARGS( PROC$1 );
	*(int32*)((uint8*)&CTX$ + 16) = -1;
	*(int32*)((uint8*)&CTX$ + 8) = 0;
	*(int32*)((uint8*)&CTX$ + 12) = 0;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) = (struct $8FBSYMBOL*)0u;
	label$95:;
}

void EDBGEMITPROCFOOTER( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* INITLABEL$1, struct $8FBSYMBOL* EXITLABEL$1 )
{
	FBSTRING TMP$167$1;
	FBSTRING TMP$168$1;
	FBSTRING TMP$169$1;
	label$123:;
	static FBSTRING PROCNAME$1;
	static FBSTRING LNAME$1;
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$126;
	{
		goto label$124;
	}
	label$126:;
	label$125:;
	uint8* vr$0 = SYMBGETMANGLEDNAME( PROC$1 );
	fb_StrAssign( (void*)&PROCNAME$1, -1, (void*)vr$0, 0, 0 );
	HDECLLOCALVARS( PROC$1, PROC$1, INITLABEL$1, EXITLABEL$1 );
	uint8* vr$1 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$1, 0, 0 );
	HSTABLABEL( (uint8*)*(uint8**)&LNAME$1 );
	__builtin_memset( &TMP$169$1, 0, 12 );
	__builtin_memset( &TMP$167$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$167$1, (void*)&LNAME$1, -1, (void*)"-", 2 );
	__builtin_memset( &TMP$168$1, 0, 12 );
	FBSTRING* vr$8 = fb_StrConcat( &TMP$168$1, (void*)vr$5, -1, (void*)&PROCNAME$1, -1 );
	fb_StrAssign( (void*)&TMP$169$1, -1, (void*)vr$8, -1, 0 );
	HEMITSTABS( 36, (uint8*)"", 0, 0, (uint8*)*(uint8**)&TMP$169$1 );
	fb_StrDelete( (FBSTRING*)&TMP$169$1 );
	*(int32*)((uint8*)&CTX$ + 16) = -1;
	*(int32*)((uint8*)&CTX$ + 8) = 0;
	*(int32*)((uint8*)&CTX$ + 12) = 0;
	*(struct $8FBSYMBOL**)((uint8*)&CTX$ + 4) = (struct $8FBSYMBOL*)0u;
	label$124:;
}

void EDBGEMITGLOBALVAR( struct $8FBSYMBOL* SYM$1, int32 SECTION$1 )
{
	label$178:;
	int32 T$1;
	int32 ATTRIB$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$181;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$179;
	}
	label$181:;
	label$180:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$183;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$179;
	}
	label$183:;
	label$182:;
	{
		if( SECTION$1 != 0 ) goto label$185;
		label$186:;
		{
			T$1 = 36;
		}
		goto label$184;
		label$185:;
		if( SECTION$1 != 2 ) goto label$187;
		label$188:;
		{
			T$1 = 40;
		}
		goto label$184;
		label$187:;
		{
			T$1 = 38;
		}
		label$189:;
		label$184:;
	}
	uint8* vr$5 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$5, 0, 0 );
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 32) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0)) == 0 ) goto label$191;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":G", 3, 0 );
	}
	goto label$190;
	label$191:;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 2) == 0 ) goto label$192;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":S", 3, 0 );
	}
	goto label$190;
	label$192:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
	}
	label$190:;
	FBSTRING* vr$19 = HGETDATATYPE( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$19, -1, 0 );
	uint8* vr$21 = SYMBGETMANGLEDNAME( SYM$1 );
	HEMITSTABS( T$1, (uint8*)*(uint8**)&DESC$1, 0, 0, (uint8*)vr$21 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$179:;
}

void EDBGEMITLOCALVAR( struct $8FBSYMBOL* SYM$1, int32 ISSTATIC$1 )
{
	label$193:;
	int32 T$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	FBSTRING VALUE$1;
	__builtin_memset( &VALUE$1, 0, 12 );
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$196;
	{
		fb_StrDelete( (FBSTRING*)&VALUE$1 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$194;
	}
	label$196:;
	label$195:;
	fb_StrAssign( (void*)&DESC$1, -1, *(void**)((uint8*)SYM$1 + 16), 0, 0 );
	if( ISSTATIC$1 == 0 ) goto label$198;
	{
		if( (*(int32*)((uint8*)SYM$1 + 12) & 2) != 0 ) goto label$200;
		{
			fb_StrDelete( (FBSTRING*)&VALUE$1 );
			fb_StrDelete( (FBSTRING*)&DESC$1 );
			goto label$194;
		}
		label$200:;
		label$199:;
		if( *(struct $7ASTNODE**)((uint8*)SYM$1 + 56) == (struct $7ASTNODE*)0u ) goto label$202;
		{
			T$1 = 38;
		}
		goto label$201;
		label$202:;
		{
			T$1 = 40;
		}
		label$201:;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":V", 3, 0 );
		uint8* vr$12 = SYMBGETMANGLEDNAME( SYM$1 );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$12, 0, 0 );
	}
	goto label$197;
	label$198:;
	{
		T$1 = 128;
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)":", 2, 0 );
		FBSTRING* vr$16 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
		fb_StrAssign( (void*)&VALUE$1, -1, (void*)vr$16, -1, 0 );
	}
	label$197:;
	FBSTRING* vr$18 = HGETDATATYPE( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
	HEMITSTABS( T$1, (uint8*)*(uint8**)&DESC$1, 0, 0, (uint8*)*(uint8**)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&VALUE$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$194:;
}

void EDBGEMITPROCARG( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$211$1;
	FBSTRING TMP$214$1;
	label$203:;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( *(int32*)((uint8*)&ENV$ + 148) != 0 ) goto label$206;
	{
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$204;
	}
	label$206:;
	label$205:;
	__builtin_memset( &TMP$211$1, 0, 12 );
	FBSTRING* vr$5 = fb_StrConcat( &TMP$211$1, *(void**)((uint8*)SYM$1 + 16), 0, (void*)":", 2 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$5, -1, 0 );
	if( (*(int32*)((uint8*)SYM$1 + 4) & 32768) == 0 ) goto label$208;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"p", 2, 0 );
	}
	goto label$207;
	label$208:;
	{
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"v", 2, 0 );
	}
	label$207:;
	FBSTRING* vr$11 = HGETDATATYPE( SYM$1, 0 );
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$11, -1, 0 );
	__builtin_memset( &TMP$214$1, 0, 12 );
	FBSTRING* vr$15 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 48) );
	fb_StrAssign( (void*)&TMP$214$1, -1, (void*)vr$15, -1, 0 );
	HEMITSTABS( 160, (uint8*)*(uint8**)&DESC$1, 0, 0, (uint8*)*(uint8**)&TMP$214$1 );
	fb_StrDelete( (FBSTRING*)&TMP$214$1 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$204:;
}

void EDBGINCLUDE( uint8* INCFILE$1 )
{
	label$209:;
	FBSTRING LNAME$1;
	__builtin_memset( &LNAME$1, 0, 12 );
	if( INCFILE$1 != (uint8*)0u ) goto label$212;
	{
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$210;
	}
	label$212:;
	label$211:;
	if( INCFILE$1 != *(uint8**)((uint8*)&CTX$ + 292) ) goto label$214;
	{
		fb_StrDelete( (FBSTRING*)&LNAME$1 );
		goto label$210;
	}
	label$214:;
	label$213:;
	(*(tmp$109*)((uint8*)&EMIT$ + 224))( 3, 0 );
	uint8* vr$3 = SYMBUNIQUELABEL(  );
	fb_StrAssign( (void*)&LNAME$1, -1, (void*)vr$3, 0, 0 );
	HEMITSTABS( 132, (uint8*)INCFILE$1, 0, 0, (uint8*)*(uint8**)&LNAME$1 );
	HSTABLABEL( (uint8*)*(uint8**)&LNAME$1 );
	*(uint8**)((uint8*)&CTX$ + 292) = INCFILE$1;
	fb_StrDelete( (FBSTRING*)&LNAME$1 );
	label$210:;
}

__attribute__(( constructor )) static void fb_ctor__edbg_stab( void )
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

static void HEMITSTABS( int32 _TYPE$1, uint8* _STRING$1, int32 _OTHER$1, int32 _DESC$1, uint8* _VALUE$1 )
{
	FBSTRING TMP$135$1;
	FBSTRING TMP$138$1;
	label$12:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".stabs \x22", 9, 0 );
	uint8* vr$0 = HESCAPE( _STRING$1 );
	__builtin_memset( &TMP$135$1, 0, 12 );
	FBSTRING* vr$3 = fb_StrConcat( &TMP$135$1, (void*)&OSTR$1, -1, (void*)vr$0, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)"\x22,", 3, 0 );
	FBSTRING* vr$4 = fb_IntToStr( _TYPE$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$4, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$5 = fb_IntToStr( _OTHER$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$5, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$6 = fb_IntToStr( _DESC$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$6, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	__builtin_memset( &TMP$138$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$138$1, (void*)&OSTR$1, -1, (void*)_VALUE$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$9, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, -1 );
	label$13:;
}

static uint8* HMAKESTABN( int32 _TYPE$1, int32 _OTHER$1, int32 _DESC$1, uint8* _VALUE$1 )
{
	FBSTRING TMP$140$1;
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".stabn ", 8, 0 );
	FBSTRING* vr$1 = fb_IntToStr( _TYPE$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$2 = fb_IntToStr( _OTHER$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$3 = fb_IntToStr( _DESC$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$3, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	__builtin_memset( &TMP$140$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$140$1, (void*)&OSTR$1, -1, (void*)_VALUE$1, 0 );
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)vr$6, -1, 0 );
	fb$result$1 = (uint8*)*(uint8**)&OSTR$1;
	label$15:;
	return fb$result$1;
}

static void HEMITSTABN( int32 _TYPE$1, int32 _OTHER$1, int32 _DESC$1, uint8* _VALUE$1 )
{
	label$16:;
	uint8* vr$0 = HMAKESTABN( _TYPE$1, _OTHER$1, _DESC$1, _VALUE$1 );
	EMITWRITESTR( (uint8*)vr$0, -1 );
	label$17:;
}

static void HEMITSTABD( int32 _TYPE$1, int32 _OTHER$1, int32 _DESC$1 )
{
	label$18:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)".stabd ", 8, 0 );
	FBSTRING* vr$0 = fb_IntToStr( _TYPE$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$0, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$1 = fb_IntToStr( _OTHER$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$1, -1, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)",", 2, 0 );
	FBSTRING* vr$2 = fb_IntToStr( _DESC$1 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)vr$2, -1, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, -1 );
	label$19:;
}

static void HSTABLABEL( uint8* LABEL$1 )
{
	label$20:;
	static FBSTRING OSTR$1;
	fb_StrAssign( (void*)&OSTR$1, -1, (void*)LABEL$1, 0, 0 );
	fb_StrConcatAssign( (void*)&OSTR$1, -1, (void*)":", 2, 0 );
	EMITWRITESTR( (uint8*)*(uint8**)&OSTR$1, 0 );
	label$21:;
}

static void HDECLARGS( struct $8FBSYMBOL* PROC$1 )
{
	label$86:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 60);
	label$88:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$89;
	{
		if( *(int32*)S$1 != 1 ) goto label$91;
		{
			if( (*(int32*)((uint8*)S$1 + 4) & 114688) == 0 ) goto label$93;
			{
				EDBGEMITPROCARG( S$1 );
			}
			label$93:;
			label$92:;
		}
		label$91:;
		label$90:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	}
	goto label$88;
	label$89:;
	label$87:;
}

static void HDECLLOCALVARS( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* BLK$1, struct $8FBSYMBOL* INILABEL$1, struct $8FBSYMBOL* ENDLABEL$1 )
{
	FBSTRING TMP$161$1;
	FBSTRING TMP$162$1;
	FBSTRING TMP$163$1;
	FBSTRING TMP$164$1;
	FBSTRING TMP$165$1;
	FBSTRING TMP$166$1;
	label$102:;
	struct $8FBSYMBOL* SHEAD$1;
	__builtin_memset( &SHEAD$1, 0, 4 );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	static int32 SCOPECNT$1;
	if( *(int32*)BLK$1 != 3 ) goto label$105;
	{
		SHEAD$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 60);
	}
	goto label$104;
	label$105:;
	{
		SHEAD$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 64);
	}
	label$104:;
	SCOPECNT$1 = 0;
	S$1 = SHEAD$1;
	label$106:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$107;
	{
		{
			$12FB_SYMBCLASS TMP$160$3;
			TMP$160$3 = *($12FB_SYMBCLASS*)S$1;
			if( TMP$160$3 != 1 ) goto label$109;
			label$110:;
			{
				if( (*(int32*)((uint8*)S$1 + 4) & 249860) != 0 ) goto label$112;
				{
					if( (*(int32*)((uint8*)S$1 + 12) & 16) != 0 ) goto label$114;
					{
						EDBGEMITLOCALVAR( S$1, -((*(int32*)((uint8*)S$1 + 4) & 2) != 0) );
					}
					label$114:;
					label$113:;
				}
				label$112:;
				label$111:;
			}
			goto label$108;
			label$109:;
			if( TMP$160$3 != 15 ) goto label$115;
			label$116:;
			{
				SCOPECNT$1 = SCOPECNT$1 + 1;
			}
			label$115:;
			label$108:;
		}
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	}
	goto label$106;
	label$107:;
	__builtin_memset( &TMP$163$1, 0, 12 );
	uint8* vr$16 = SYMBGETMANGLEDNAME( PROC$1 );
	uint8* vr$17 = SYMBGETMANGLEDNAME( INILABEL$1 );
	__builtin_memset( &TMP$161$1, 0, 12 );
	FBSTRING* vr$20 = fb_StrConcat( &TMP$161$1, (void*)vr$17, 0, (void*)"-", 2 );
	__builtin_memset( &TMP$162$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$162$1, (void*)vr$20, -1, (void*)vr$16, 0 );
	fb_StrAssign( (void*)&TMP$163$1, -1, (void*)vr$23, -1, 0 );
	HEMITSTABN( 192, 0, 0, (uint8*)*(uint8**)&TMP$163$1 );
	fb_StrDelete( (FBSTRING*)&TMP$163$1 );
	if( SCOPECNT$1 <= 0 ) goto label$118;
	{
		S$1 = SHEAD$1;
		label$119:;
		if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$120;
		{
			if( *(int32*)S$1 != 15 ) goto label$122;
			{
				HDECLLOCALVARS( PROC$1, S$1, *(struct $8FBSYMBOL**)((uint8*)S$1 + 80), *(struct $8FBSYMBOL**)((uint8*)S$1 + 84) );
			}
			label$122:;
			label$121:;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
		}
		goto label$119;
		label$120:;
	}
	label$118:;
	label$117:;
	__builtin_memset( &TMP$166$1, 0, 12 );
	uint8* vr$31 = SYMBGETMANGLEDNAME( PROC$1 );
	uint8* vr$32 = SYMBGETMANGLEDNAME( ENDLABEL$1 );
	__builtin_memset( &TMP$164$1, 0, 12 );
	FBSTRING* vr$35 = fb_StrConcat( &TMP$164$1, (void*)vr$32, 0, (void*)"-", 2 );
	__builtin_memset( &TMP$165$1, 0, 12 );
	FBSTRING* vr$38 = fb_StrConcat( &TMP$165$1, (void*)vr$35, -1, (void*)vr$31, 0 );
	fb_StrAssign( (void*)&TMP$166$1, -1, (void*)vr$38, -1, 0 );
	HEMITSTABN( 224, 0, 0, (uint8*)*(uint8**)&TMP$166$1 );
	fb_StrDelete( (FBSTRING*)&TMP$166$1 );
	label$103:;
}

static FBSTRING* HDECLPOINTER( int32* DTYPE$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$127:;
	static FBSTRING DESC$1;
	fb_StrAssign( (void*)&DESC$1, -1, (void*)"", 1, 0 );
	label$129:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$130;
	{
		*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + -32)) | (((*DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (*DTYPE$1 & 32505856);
		FBSTRING* vr$18 = fb_UIntToStr( *(uint32*)&CTX$ );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$18, -1, 0 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=*", 3, 0 );
		*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
	}
	goto label$129;
	label$130:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	label$128:;
	FBSTRING* vr$22 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$22;
}

static FBSTRING* HGETDATATYPE( struct $8FBSYMBOL* SYM$1, int32 REQUESTEDDIMTBELEMENTS$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$131:;
	int32 DTYPE$1;
	int32 DIMTBELEMENTS$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$134;
	{
		FBSTRING* vr$2 = fb_IntToStr( *(int32*)REMAPTB$ );
		fb_StrInit( (void*)&fb$result$1, -1, (void*)vr$2, -1, 0 );
		fb_StrDelete( (FBSTRING*)&DESC$1 );
		goto label$132;
	}
	label$134:;
	label$133:;
	DIMTBELEMENTS$1 = 0;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 16384) == 0 ) goto label$136;
	{
		DTYPE$1 = 20;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 92);
		DIMTBELEMENTS$1 = *(int32*)((uint8*)SYM$1 + 64);
	}
	goto label$135;
	label$136:;
	{
		DTYPE$1 = *(int32*)((uint8*)SYM$1 + 28) & 511;
		SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
		if( (-(*(int32*)SYM$1 == 1) | -(*(int32*)SYM$1 == 12)) == 0 ) goto label$138;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 262144) == 0 ) goto label$140;
			{
				DTYPE$1 = (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + 32)) | ((DTYPE$1 & 261632) << (1 & 31))) | (DTYPE$1 & 32505856);
			}
			label$140:;
			label$139:;
			if( *(int32*)((uint8*)SYM$1 + 64) <= 0 ) goto label$142;
			{
				FBSTRING* vr$29 = fb_UIntToStr( *(uint32*)&CTX$ );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$29, -1, 0 );
				fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=", 2, 0 );
				*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
				if( REQUESTEDDIMTBELEMENTS$1 <= 0 ) goto label$144;
				{
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"0;", 3, 0 );
					FBSTRING* vr$36 = fb_IntToStr( REQUESTEDDIMTBELEMENTS$1 + -1 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$36, -1, 0 );
					fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
				}
				goto label$143;
				label$144:;
				{
					{
						int32 I$6;
						I$6 = 0;
						int32 TMP$175$6;
						TMP$175$6 = *(int32*)((uint8*)SYM$1 + 64) + -1;
						goto label$145;
						label$148:;
						{
							FBSTRING TMP$176$7;
							FBSTRING TMP$177$7;
							FBSTRING TMP$178$7;
							FBSTRING TMP$179$7;
							fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"ar1;", 5, 0 );
							FBSTRING* vr$45 = fb_LongintToStr( *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) );
							__builtin_memset( &TMP$176$7, 0, 12 );
							FBSTRING* vr$48 = fb_StrConcat( &TMP$176$7, (void*)vr$45, -1, (void*)";", 2 );
							__builtin_memset( &TMP$177$7, 0, 12 );
							FBSTRING* vr$52 = fb_StrConcat( &TMP$177$7, (void*)&DESC$1, -1, (void*)vr$48, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
							FBSTRING* vr$57 = fb_LongintToStr( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)SYM$1 + 68) + (I$6 << (4 & 31))) + 8) );
							__builtin_memset( &TMP$178$7, 0, 12 );
							FBSTRING* vr$60 = fb_StrConcat( &TMP$178$7, (void*)vr$57, -1, (void*)";", 2 );
							__builtin_memset( &TMP$179$7, 0, 12 );
							FBSTRING* vr$64 = fb_StrConcat( &TMP$179$7, (void*)&DESC$1, -1, (void*)vr$60, -1 );
							fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$64, -1, 0 );
						}
						label$146:;
						I$6 = I$6 + 1;
						label$145:;
						if( I$6 <= TMP$175$6 ) goto label$148;
						label$147:;
					}
				}
				label$143:;
			}
			label$142:;
			label$141:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 8192) == 0 ) goto label$150;
			{
				DIMTBELEMENTS$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 96) + 64);
			}
			label$150:;
			label$149:;
		}
		label$138:;
		label$137:;
	}
	label$135:;
	if( DIMTBELEMENTS$1 >= 0 ) goto label$152;
	{
		DIMTBELEMENTS$1 = 1;
	}
	label$152:;
	label$151:;
	if( (DTYPE$1 & 480) == 0 ) goto label$154;
	{
		FBSTRING* vr$73 = HDECLPOINTER( &DTYPE$1 );
		fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$73, -1, 0 );
	}
	label$154:;
	label$153:;
	DTYPE$1 = DTYPE$1 & -513;
	{
		uint32 TMP$180$2;
		TMP$180$2 = (uint32)DTYPE$1;
		goto label$156;
		label$157:;
		{
			FBSTRING TMP$181$3;
			if( *(int32*)((uint8*)SUBTYPE$1 + 136) != -1 ) goto label$159;
			{
				HDECLUDT( SUBTYPE$1, DIMTBELEMENTS$1 );
			}
			label$159:;
			label$158:;
			FBSTRING* vr$78 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 136) );
			__builtin_memset( &TMP$181$3, 0, 12 );
			FBSTRING* vr$82 = fb_StrConcat( &TMP$181$3, (void*)&DESC$1, -1, (void*)vr$78, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$82, -1, 0 );
		}
		goto label$155;
		label$160:;
		{
			FBSTRING TMP$182$3;
			if( *(int32*)((uint8*)SUBTYPE$1 + 100) != -1 ) goto label$162;
			{
				HDECLENUM( SUBTYPE$1 );
			}
			label$162:;
			label$161:;
			FBSTRING* vr$86 = fb_IntToStr( *(int32*)((uint8*)SUBTYPE$1 + 100) );
			__builtin_memset( &TMP$182$3, 0, 12 );
			FBSTRING* vr$90 = fb_StrConcat( &TMP$182$3, (void*)&DESC$1, -1, (void*)vr$86, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$90, -1, 0 );
		}
		goto label$155;
		label$163:;
		{
			FBSTRING* vr$92 = fb_UIntToStr( *(uint32*)&CTX$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$92, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)"=f", 3, 0 );
			*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
			FBSTRING* vr$96 = HGETDATATYPE( SUBTYPE$1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$96, -1, 0 );
		}
		goto label$155;
		label$164:;
		{
			FBSTRING* vr$98 = fb_IntToStr( *(int32*)REMAPTB$ );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$98, -1, 0 );
		}
		goto label$155;
		label$165:;
		{
			FBSTRING* vr$101 = fb_IntToStr( *(int32*)((int32)(int32*)REMAPTB$ + (DTYPE$1 << (2 & 31))) );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)vr$101, -1, 0 );
		}
		goto label$155;
		label$156:;
		static const void* tmp$215[14] = {
			&&label$160,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$165,
			&&label$157,
			&&label$165,
			&&label$163,
			&&label$164,
		};
		if( (TMP$180$2 - 10u) > 13u ) goto label$165;
		goto *tmp$215[TMP$180$2 - 10u];
		label$155:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&DESC$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$132:;
	FBSTRING* vr$107 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$107;
}

static void HDECLUDT( struct $8FBSYMBOL* SYM$1, int32 DIMTBELEMENTS$1 )
{
	FBSTRING TMP$186$1;
	FBSTRING TMP$187$1;
	FBSTRING TMP$188$1;
	FBSTRING TMP$189$1;
	label$166:;
	struct $8FBSYMBOL* FLD$1;
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 136) = *(int32*)&CTX$;
	*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
	uint8* vr$3 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$3, 0, 0 );
	FBSTRING* vr$6 = fb_LongintToStr( *(int64*)((uint8*)SYM$1 + 40) );
	FBSTRING* vr$8 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 136) );
	__builtin_memset( &TMP$186$1, 0, 12 );
	FBSTRING* vr$11 = fb_StrConcat( &TMP$186$1, (void*)":Tt", 4, (void*)vr$8, -1 );
	__builtin_memset( &TMP$187$1, 0, 12 );
	FBSTRING* vr$14 = fb_StrConcat( &TMP$187$1, (void*)vr$11, -1, (void*)"=s", 3 );
	__builtin_memset( &TMP$188$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$188$1, (void*)vr$14, -1, (void*)vr$6, -1 );
	__builtin_memset( &TMP$189$1, 0, 12 );
	FBSTRING* vr$21 = fb_StrConcat( &TMP$189$1, (void*)&DESC$1, -1, (void*)vr$17, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$21, -1, 0 );
	struct $8FBSYMBOL* vr$23 = SYMBUDTGETFIRSTFIELD( SYM$1 );
	FLD$1 = vr$23;
	label$168:;
	if( FLD$1 == (struct $8FBSYMBOL*)0u ) goto label$169;
	{
		if( (*(int32*)((uint8*)FLD$1 + 4) & 4) != 0 ) goto label$171;
		{
			FBSTRING TMP$190$3;
			FBSTRING TMP$191$3;
			FBSTRING TMP$192$3;
			int32 TMP$193$3;
			FBSTRING TMP$194$3;
			FBSTRING TMP$195$3;
			int64 TMP$196$3;
			FBSTRING TMP$197$3;
			FBSTRING TMP$198$3;
			FBSTRING* vr$26 = HGETDATATYPE( FLD$1, DIMTBELEMENTS$1 );
			__builtin_memset( &TMP$190$3, 0, 12 );
			FBSTRING* vr$30 = fb_StrConcat( &TMP$190$3, *(void**)((uint8*)FLD$1 + 16), 0, (void*)":", 2 );
			__builtin_memset( &TMP$191$3, 0, 12 );
			FBSTRING* vr$33 = fb_StrConcat( &TMP$191$3, (void*)vr$30, -1, (void*)vr$26, -1 );
			__builtin_memset( &TMP$192$3, 0, 12 );
			FBSTRING* vr$37 = fb_StrConcat( &TMP$192$3, (void*)&DESC$1, -1, (void*)vr$33, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$37, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$172;
			TMP$193$3 = *(int32*)((uint8*)FLD$1 + 112);
			goto label$215;
			label$172:;
			TMP$193$3 = 0;
			label$215:;
			FBSTRING* vr$45 = fb_LongintToStr( (*(int64*)((uint8*)FLD$1 + 48) << (3ll & 63)) + (int64)TMP$193$3 );
			__builtin_memset( &TMP$194$3, 0, 12 );
			FBSTRING* vr$48 = fb_StrConcat( &TMP$194$3, (void*)",", 2, (void*)vr$45, -1 );
			__builtin_memset( &TMP$195$3, 0, 12 );
			FBSTRING* vr$52 = fb_StrConcat( &TMP$195$3, (void*)&DESC$1, -1, (void*)vr$48, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$52, -1, 0 );
			if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$173;
			TMP$196$3 = (int64)*(int32*)((uint8*)FLD$1 + 116);
			goto label$216;
			label$173:;
			int64 vr$57 = SYMBGETREALSIZE( FLD$1 );
			TMP$196$3 = vr$57 << (3ll & 63);
			label$216:;
			FBSTRING* vr$59 = fb_LongintToStr( TMP$196$3 );
			__builtin_memset( &TMP$197$3, 0, 12 );
			FBSTRING* vr$62 = fb_StrConcat( &TMP$197$3, (void*)",", 2, (void*)vr$59, -1 );
			__builtin_memset( &TMP$198$3, 0, 12 );
			FBSTRING* vr$66 = fb_StrConcat( &TMP$198$3, (void*)&DESC$1, -1, (void*)vr$62, -1 );
			fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$66, -1, 0 );
			fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
		}
		label$171:;
		label$170:;
		struct $8FBSYMBOL* vr$69 = SYMBUDTGETNEXTFIELD( FLD$1 );
		FLD$1 = vr$69;
	}
	goto label$168;
	label$169:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	HEMITSTABS( 128, (uint8*)*(uint8**)&DESC$1, 0, 0, (uint8*)"0" );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$167:;
}

static void HDECLENUM( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$201$1;
	FBSTRING TMP$202$1;
	FBSTRING TMP$203$1;
	label$174:;
	struct $8FBSYMBOL* E$1;
	__builtin_memset( &E$1, 0, 4 );
	FBSTRING DESC$1;
	__builtin_memset( &DESC$1, 0, 12 );
	*(int32*)((uint8*)SYM$1 + 100) = *(int32*)&CTX$;
	*(uint32*)&CTX$ = *(uint32*)&CTX$ + 1u;
	uint8* vr$4 = SYMBGETDBGNAME( SYM$1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$4, 0, 0 );
	FBSTRING* vr$7 = fb_IntToStr( *(int32*)((uint8*)SYM$1 + 100) );
	__builtin_memset( &TMP$201$1, 0, 12 );
	FBSTRING* vr$10 = fb_StrConcat( &TMP$201$1, (void*)":T", 3, (void*)vr$7, -1 );
	__builtin_memset( &TMP$202$1, 0, 12 );
	FBSTRING* vr$13 = fb_StrConcat( &TMP$202$1, (void*)vr$10, -1, (void*)"=e", 3 );
	__builtin_memset( &TMP$203$1, 0, 12 );
	FBSTRING* vr$17 = fb_StrConcat( &TMP$203$1, (void*)&DESC$1, -1, (void*)vr$13, -1 );
	fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$17, -1, 0 );
	struct $8FBSYMBOL* vr$19 = SYMBGETENUMFIRSTELM( SYM$1 );
	E$1 = vr$19;
	label$176:;
	if( E$1 == (struct $8FBSYMBOL*)0u ) goto label$177;
	{
		FBSTRING TMP$204$2;
		FBSTRING TMP$205$2;
		FBSTRING TMP$206$2;
		FBSTRING TMP$207$2;
		FBSTRING* vr$21 = fb_LongintToStr( *(int64*)((uint8*)E$1 + 56) );
		__builtin_memset( &TMP$204$2, 0, 12 );
		FBSTRING* vr$25 = fb_StrConcat( &TMP$204$2, *(void**)((uint8*)E$1 + 16), 0, (void*)":", 2 );
		__builtin_memset( &TMP$205$2, 0, 12 );
		FBSTRING* vr$28 = fb_StrConcat( &TMP$205$2, (void*)vr$25, -1, (void*)vr$21, -1 );
		__builtin_memset( &TMP$206$2, 0, 12 );
		FBSTRING* vr$31 = fb_StrConcat( &TMP$206$2, (void*)vr$28, -1, (void*)",", 2 );
		__builtin_memset( &TMP$207$2, 0, 12 );
		FBSTRING* vr$35 = fb_StrConcat( &TMP$207$2, (void*)&DESC$1, -1, (void*)vr$31, -1 );
		fb_StrAssign( (void*)&DESC$1, -1, (void*)vr$35, -1, 0 );
		struct $8FBSYMBOL* vr$37 = SYMBGETENUMNEXTELM( E$1 );
		E$1 = vr$37;
	}
	goto label$176;
	label$177:;
	fb_StrConcatAssign( (void*)&DESC$1, -1, (void*)";", 2, 0 );
	HEMITSTABS( 128, (uint8*)*(uint8**)&DESC$1, 0, 0, (uint8*)"0" );
	fb_StrDelete( (FBSTRING*)&DESC$1 );
	label$175:;
}
