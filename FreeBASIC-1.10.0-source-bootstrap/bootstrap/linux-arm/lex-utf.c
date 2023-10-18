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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1IhE {
	uint8* DATA;
	uint8* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IhE ) == 36 );
int32 fb_FileGet( int32, int32, void*, uint32 );
int32 fb_FileGetWstr( int32, int32, uint32*, int32 );
int64 fb_FileTell( int32 );
int32 fb_FileEof( int32 );
uint64 __udivdi3( uint64, uint64 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__lexzutf( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
static int32 HUTF8TOCHAR( void );
static int32 HUTF8TOUTF16LE( void );
static int32 HUTF8TOUTF32LE( void );
static int32 HUTF16LETOCHAR( void );
static int32 HUTF16LETOUTF16LE( void );
static int32 HUTF16LETOUTF32LE( void );
static int32 HUTF16BETOCHAR( void );
static int32 HUTF16BETOUTF16LE( void );
static int32 HUTF16BETOUTF32LE( void );
static int32 HUTF32LETOCHAR( void );
static int32 HUTF32LETOUTF16LE( void );
static int32 HUTF32LETOUTF32LE( void );
static int32 HUTF32BETOCHAR( void );
static int32 HUTF32BETOUTF16LE( void );
static int32 HUTF32BETOUTF32LE( void );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
static uint8 UTF8_TRAILINGTB$[256] = { (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)0u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)1u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)2u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)3u, (uint8)4u, (uint8)4u, (uint8)4u, (uint8)4u, (uint8)5u, (uint8)5u, (uint8)5u, (uint8)5u };
static uint32 UTF8_OFFSETSTB$[6] = { 0u, 12416u, 925824u, 63447168u, 4194836608u, 2181570688u };

void LEXREADUTF8( void )
{
	label$67:;
	int32 CHARS$1;
	__builtin_memset( &CHARS$1, 0, 4 );
	goto label$70;
	{
		int32 vr$1 = HUTF8TOCHAR(  );
		CHARS$1 = vr$1;
	}
	goto label$69;
	label$70:;
	goto label$71;
	{
		int32 vr$2 = HUTF8TOUTF16LE(  );
		CHARS$1 = vr$2;
	}
	goto label$69;
	label$71:;
	{
		int32 vr$3 = HUTF8TOUTF32LE(  );
		CHARS$1 = vr$3;
	}
	label$69:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = CHARS$1;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	label$68:;
}

void LEXREADUTF16LE( void )
{
	label$112:;
	static int32 CHARS$1;
	goto label$115;
	{
		int32 vr$0 = HUTF16LETOCHAR(  );
		CHARS$1 = vr$0;
	}
	goto label$114;
	label$115:;
	goto label$116;
	{
		int32 vr$1 = HUTF16LETOUTF16LE(  );
		CHARS$1 = vr$1;
	}
	goto label$114;
	label$116:;
	{
		int32 vr$2 = HUTF16LETOUTF32LE(  );
		CHARS$1 = vr$2;
	}
	label$114:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = CHARS$1;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	label$113:;
}

void LEXREADUTF16BE( void )
{
	label$155:;
	static int32 CHARS$1;
	goto label$158;
	{
		int32 vr$0 = HUTF16BETOCHAR(  );
		CHARS$1 = vr$0;
	}
	goto label$157;
	label$158:;
	goto label$159;
	{
		int32 vr$1 = HUTF16BETOUTF16LE(  );
		CHARS$1 = vr$1;
	}
	goto label$157;
	label$159:;
	{
		int32 vr$2 = HUTF16BETOUTF32LE(  );
		CHARS$1 = vr$2;
	}
	label$157:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = CHARS$1;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	label$156:;
}

void LEXREADUTF32LE( void )
{
	label$192:;
	int32 CHARS$1;
	__builtin_memset( &CHARS$1, 0, 4 );
	goto label$195;
	{
		int32 vr$1 = HUTF32LETOCHAR(  );
		CHARS$1 = vr$1;
	}
	goto label$194;
	label$195:;
	goto label$196;
	{
		int32 vr$2 = HUTF32LETOUTF16LE(  );
		CHARS$1 = vr$2;
	}
	goto label$194;
	label$196:;
	{
		int32 vr$3 = HUTF32LETOUTF32LE(  );
		CHARS$1 = vr$3;
	}
	label$194:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = CHARS$1;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	label$193:;
}

void LEXREADUTF32BE( void )
{
	label$227:;
	int32 CHARS$1;
	__builtin_memset( &CHARS$1, 0, 4 );
	goto label$230;
	{
		int32 vr$1 = HUTF32BETOCHAR(  );
		CHARS$1 = vr$1;
	}
	goto label$229;
	label$230:;
	goto label$231;
	{
		int32 vr$2 = HUTF32BETOUTF16LE(  );
		CHARS$1 = vr$2;
	}
	goto label$229;
	label$231:;
	{
		int32 vr$3 = HUTF32BETOUTF32LE(  );
		CHARS$1 = vr$3;
	}
	label$229:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = CHARS$1;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	label$228:;
}

__attribute__(( constructor )) static void fb_ctor__lexzutf( void )
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

static int32 HUTF8TOCHAR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	static uint8 SRC$1[7];
	static struct $8FBARRAY1IhE tmp$93$1 = { (uint8*)SRC$1, (uint8*)SRC$1, 7, 1, 1, 49, { { 7, 0, 6 } } };
	static uint8* P$1;
	static uint32 C$1;
	static uint8* DST$1;
	static int32 CHARS$1;
	static int32 EXTBYTES$1;
	static int32 I$1;
	DST$1 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$12:;
	if( CHARS$1 >= 8192 ) goto label$13;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$15;
		{
			goto label$13;
		}
		label$15:;
		label$14:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)SRC$1, 1u );
		if( vr$4 == 0 ) goto label$17;
		{
			goto label$13;
		}
		label$17:;
		label$16:;
		EXTBYTES$1 = (int32)*(uint8*)((int32)(uint8*)UTF8_TRAILINGTB$ + (int32)*(uint8*)SRC$1);
		C$1 = 0u;
		P$1 = (uint8*)SRC$1;
		if( EXTBYTES$1 <= 0 ) goto label$19;
		{
			int32 vr$7 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)((uint8*)SRC$1 + 1), (uint32)EXTBYTES$1 );
			if( vr$7 == 0 ) goto label$21;
			{
				goto label$13;
			}
			label$21:;
			label$20:;
			I$1 = EXTBYTES$1;
			label$22:;
			{
				C$1 = C$1 + (uint32)(int32)*P$1;
				P$1 = (uint8*)(P$1 + 1);
				C$1 = C$1 << (6 & 31);
				I$1 = I$1 + -1;
			}
			label$24:;
			if( I$1 > 0 ) goto label$22;
			label$23:;
		}
		label$19:;
		label$18:;
		C$1 = C$1 + (uint32)(int32)*P$1;
		C$1 = C$1 - *(uint32*)((int32)(uint32*)UTF8_OFFSETSTB$ + (EXTBYTES$1 << (2 & 31)));
		if( C$1 <= 255u ) goto label$26;
		{
			C$1 = 63u;
		}
		label$26:;
		label$25:;
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)(DST$1 + 1);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$12;
	label$13:;
	fb$result$1 = CHARS$1;
	label$11:;
	return fb$result$1;
}

static int32 HUTF8TOUTF16LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$27:;
	static uint8 SRC$1[7];
	static struct $8FBARRAY1IhE tmp$95$1 = { (uint8*)SRC$1, (uint8*)SRC$1, 7, 1, 1, 49, { { 7, 0, 6 } } };
	static uint8* P$1;
	static uint32 C$1;
	static uint16* DST$1;
	static int32 CHARS$1;
	static int32 EXTBYTES$1;
	static int32 I$1;
	DST$1 = (uint16*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$29:;
	if( CHARS$1 >= 8192 ) goto label$30;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$32;
		{
			goto label$30;
		}
		label$32:;
		label$31:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)SRC$1, 1u );
		if( vr$4 == 0 ) goto label$34;
		{
			goto label$30;
		}
		label$34:;
		label$33:;
		EXTBYTES$1 = (int32)*(uint8*)((int32)(uint8*)UTF8_TRAILINGTB$ + (int32)*(uint8*)SRC$1);
		C$1 = 0u;
		P$1 = (uint8*)SRC$1;
		if( EXTBYTES$1 <= 0 ) goto label$36;
		{
			int32 vr$7 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)((uint8*)SRC$1 + 1), (uint32)EXTBYTES$1 );
			if( vr$7 == 0 ) goto label$38;
			{
				goto label$30;
			}
			label$38:;
			label$37:;
			I$1 = EXTBYTES$1;
			label$39:;
			{
				C$1 = C$1 + (uint32)(int32)*P$1;
				P$1 = (uint8*)(P$1 + 1);
				C$1 = C$1 << (6 & 31);
				I$1 = I$1 + -1;
			}
			label$41:;
			if( I$1 > 0 ) goto label$39;
			label$40:;
		}
		label$36:;
		label$35:;
		C$1 = C$1 + (uint32)(int32)*P$1;
		C$1 = C$1 - *(uint32*)((int32)(uint32*)UTF8_OFFSETSTB$ + (EXTBYTES$1 << (2 & 31)));
		if( C$1 <= 65535u ) goto label$43;
		{
			if( CHARS$1 >= 8191 ) goto label$45;
			{
				*DST$1 = (uint16)((C$1 >> (10 & 31)) + 55296u);
				DST$1 = (uint16*)((uint8*)DST$1 + 2);
				CHARS$1 = CHARS$1 + 1;
			}
			label$45:;
			label$44:;
			C$1 = (C$1 & 1023u) + 56320u;
		}
		label$43:;
		label$42:;
		*DST$1 = (uint16)C$1;
		DST$1 = (uint16*)((uint8*)DST$1 + 2);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$29;
	label$30:;
	fb$result$1 = CHARS$1;
	label$28:;
	return fb$result$1;
}

static int32 HUTF8TOUTF32LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$46:;
	static uint8 SRC$1[7];
	static struct $8FBARRAY1IhE tmp$96$1 = { (uint8*)SRC$1, (uint8*)SRC$1, 7, 1, 1, 49, { { 7, 0, 6 } } };
	static uint8* P$1;
	static uint32 C$1;
	static uint32* DST$1;
	static int32 CHARS$1;
	static int32 EXTBYTES$1;
	static int32 I$1;
	DST$1 = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$48:;
	if( CHARS$1 >= 8192 ) goto label$49;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$51;
		{
			goto label$49;
		}
		label$51:;
		label$50:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)SRC$1, 1u );
		if( vr$4 == 0 ) goto label$53;
		{
			goto label$49;
		}
		label$53:;
		label$52:;
		EXTBYTES$1 = (int32)*(uint8*)((int32)(uint8*)UTF8_TRAILINGTB$ + (int32)*(uint8*)SRC$1);
		C$1 = 0u;
		P$1 = (uint8*)SRC$1;
		if( EXTBYTES$1 <= 0 ) goto label$55;
		{
			int32 vr$7 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)((uint8*)SRC$1 + 1), (uint32)EXTBYTES$1 );
			if( vr$7 == 0 ) goto label$57;
			{
				goto label$49;
			}
			label$57:;
			label$56:;
			I$1 = EXTBYTES$1;
			label$58:;
			{
				C$1 = C$1 + (uint32)(int32)*P$1;
				P$1 = (uint8*)(P$1 + 1);
				C$1 = C$1 << (6 & 31);
				I$1 = I$1 + -1;
			}
			label$60:;
			if( I$1 > 0 ) goto label$58;
			label$59:;
		}
		label$55:;
		label$54:;
		C$1 = C$1 + (uint32)(int32)*P$1;
		C$1 = C$1 - *(uint32*)((int32)(uint32*)UTF8_OFFSETSTB$ + (EXTBYTES$1 << (2 & 31)));
		*DST$1 = C$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$48;
	label$49:;
	fb$result$1 = CHARS$1;
	label$47:;
	return fb$result$1;
}

static int32 HUTF16LETOCHAR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	static uint16 C$1;
	static uint8* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$74:;
	if( CHARS$1 >= 8192 ) goto label$75;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$77;
		{
			goto label$75;
		}
		label$77:;
		label$76:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
		if( vr$4 == 0 ) goto label$79;
		{
			goto label$75;
		}
		label$79:;
		label$78:;
		if( (int32)C$1 <= 255 ) goto label$81;
		{
			if( (int32)C$1 < 55296 ) goto label$83;
			{
				if( (int32)C$1 > 56319 ) goto label$85;
				{
					int32 vr$8 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
					if( vr$8 == 0 ) goto label$87;
					{
						goto label$75;
					}
					label$87:;
					label$86:;
				}
				label$85:;
				label$84:;
			}
			label$83:;
			label$82:;
			C$1 = (uint16)63u;
		}
		label$81:;
		label$80:;
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)(DST$1 + 1);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$74;
	label$75:;
	fb$result$1 = CHARS$1;
	label$73:;
	return fb$result$1;
}

static int32 HUTF16LETOUTF16LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$88:;
	int32 vr$3 = fb_FileGetWstr( *(int32*)((uint8*)&ENV$ + 300), 0, (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620), 8193 );
	if( vr$3 != 0 ) goto label$91;
	{
		int64 vr$4 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 300) );
		uint64 vr$8 = __udivdi3( (uint64)(vr$4 - (int64)*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392)), 2ull );
		fb$result$1 = (int32)vr$8;
	}
	goto label$90;
	label$91:;
	{
		fb$result$1 = 0;
	}
	label$90:;
	label$89:;
	return fb$result$1;
}

static int32 HUTF16LETOUTF32LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$92:;
	static uint16 C$1;
	static uint32 WC$1;
	static uint32* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$94:;
	if( CHARS$1 >= 8192 ) goto label$95;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$97;
		{
			goto label$95;
		}
		label$97:;
		label$96:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
		if( vr$4 == 0 ) goto label$99;
		{
			goto label$95;
		}
		label$99:;
		label$98:;
		WC$1 = (uint32)C$1;
		if( WC$1 < 55296u ) goto label$101;
		{
			if( WC$1 > 56319u ) goto label$103;
			{
				int32 vr$6 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
				if( vr$6 == 0 ) goto label$105;
				{
					goto label$95;
				}
				label$105:;
				label$104:;
				WC$1 = (((WC$1 + 4294912000u) << (10 & 31)) + (uint32)C$1) + 9216u;
			}
			label$103:;
			label$102:;
		}
		label$101:;
		label$100:;
		*DST$1 = WC$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$94;
	label$95:;
	fb$result$1 = CHARS$1;
	label$93:;
	return fb$result$1;
}

static int32 HUTF16BETOCHAR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	static uint16 C$1;
	static uint8* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$119:;
	if( CHARS$1 >= 8192 ) goto label$120;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$122;
		{
			goto label$120;
		}
		label$122:;
		label$121:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
		if( vr$4 == 0 ) goto label$124;
		{
			goto label$120;
		}
		label$124:;
		label$123:;
		C$1 = (uint16)(((int32)C$1 >> (8 & 31)) | (((int32)C$1 << (8 & 31)) & 65280));
		if( (int32)C$1 <= 255 ) goto label$126;
		{
			if( (int32)C$1 < 55296 ) goto label$128;
			{
				if( (int32)C$1 > 56319 ) goto label$130;
				{
					int32 vr$15 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
					if( vr$15 == 0 ) goto label$132;
					{
						goto label$120;
					}
					label$132:;
					label$131:;
				}
				label$130:;
				label$129:;
			}
			label$128:;
			label$127:;
			C$1 = (uint16)63u;
		}
		label$126:;
		label$125:;
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)(DST$1 + 1);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$119;
	label$120:;
	fb$result$1 = CHARS$1;
	label$118:;
	return fb$result$1;
}

static int32 HUTF16BETOUTF16LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$133:;
	static uint16* DST$1;
	static uint16 C$1;
	static int32 I$1;
	static int32 CHARS$1;
	int32 vr$1 = HUTF16LETOUTF16LE(  );
	CHARS$1 = vr$1;
	DST$1 = (uint16*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	{
		I$1 = 1;
		int32 TMP$99$2;
		TMP$99$2 = CHARS$1;
		goto label$135;
		label$138:;
		{
			C$1 = *DST$1;
			*DST$1 = (uint16)(((int32)C$1 >> (8 & 31)) | (((int32)C$1 << (8 & 31)) & 65280));
			DST$1 = (uint16*)((uint8*)DST$1 + 2);
		}
		label$136:;
		I$1 = I$1 + 1;
		label$135:;
		if( I$1 <= TMP$99$2 ) goto label$138;
		label$137:;
	}
	fb$result$1 = CHARS$1;
	label$134:;
	return fb$result$1;
}

static int32 HUTF16BETOUTF32LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	static uint16 C$1;
	static uint32 WC$1;
	static uint32* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$141:;
	if( CHARS$1 >= 8192 ) goto label$142;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$144;
		{
			goto label$142;
		}
		label$144:;
		label$143:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
		if( vr$4 == 0 ) goto label$146;
		{
			goto label$142;
		}
		label$146:;
		label$145:;
		WC$1 = (uint32)(((int32)C$1 >> (8 & 31)) | (((int32)C$1 << (8 & 31)) & 65280));
		if( WC$1 < 55296u ) goto label$148;
		{
			if( WC$1 > 56319u ) goto label$150;
			{
				int32 vr$11 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 2u );
				if( vr$11 == 0 ) goto label$152;
				{
					goto label$142;
				}
				label$152:;
				label$151:;
				WC$1 = (((WC$1 + 4294912000u) << (10 & 31)) + (uint32)(((int32)C$1 >> (8 & 31)) | (((int32)C$1 << (8 & 31)) & 65280))) + 9216u;
			}
			label$150:;
			label$149:;
		}
		label$148:;
		label$147:;
		*DST$1 = WC$1;
		DST$1 = (uint32*)((uint8*)DST$1 + 4);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$141;
	label$142:;
	fb$result$1 = CHARS$1;
	label$140:;
	return fb$result$1;
}

static int32 HUTF32LETOCHAR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$160:;
	static uint32 C$1;
	static uint8* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$162:;
	if( CHARS$1 >= 8192 ) goto label$163;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$165;
		{
			goto label$163;
		}
		label$165:;
		label$164:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 4u );
		if( vr$4 == 0 ) goto label$167;
		{
			goto label$163;
		}
		label$167:;
		label$166:;
		if( C$1 <= 255u ) goto label$169;
		{
			C$1 = 63u;
		}
		label$169:;
		label$168:;
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)(DST$1 + 1);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$162;
	label$163:;
	fb$result$1 = CHARS$1;
	label$161:;
	return fb$result$1;
}

static int32 HUTF32LETOUTF16LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$170:;
	static uint32 C$1;
	static uint16* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint16*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$172:;
	if( CHARS$1 >= 8192 ) goto label$173;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$175;
		{
			goto label$173;
		}
		label$175:;
		label$174:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 4u );
		if( vr$4 == 0 ) goto label$177;
		{
			goto label$173;
		}
		label$177:;
		label$176:;
		if( C$1 <= 65535u ) goto label$179;
		{
			if( CHARS$1 >= 8191 ) goto label$181;
			{
				*DST$1 = (uint16)((C$1 >> (10 & 31)) + 55296u);
				DST$1 = (uint16*)((uint8*)DST$1 + 2);
				CHARS$1 = CHARS$1 + 1;
			}
			label$181:;
			label$180:;
			C$1 = (C$1 & 1023u) + 56320u;
		}
		label$179:;
		label$178:;
		*DST$1 = (uint16)C$1;
		DST$1 = (uint16*)((uint8*)DST$1 + 2);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$172;
	label$173:;
	fb$result$1 = CHARS$1;
	label$171:;
	return fb$result$1;
}

static int32 HUTF32LETOUTF32LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$182:;
	int32 vr$3 = fb_FileGetWstr( *(int32*)((uint8*)&ENV$ + 300), 0, (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620), 8193 );
	if( vr$3 != 0 ) goto label$185;
	{
		int64 vr$4 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 300) );
		uint64 vr$8 = __udivdi3( (uint64)(vr$4 - (int64)*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392)), 4ull );
		fb$result$1 = (int32)vr$8;
	}
	goto label$184;
	label$185:;
	{
		fb$result$1 = 0;
	}
	label$184:;
	label$183:;
	return fb$result$1;
}

static int32 HUTF32BETOCHAR( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$197:;
	static uint32 C$1;
	static uint8* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$199:;
	if( CHARS$1 >= 8192 ) goto label$200;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$202;
		{
			goto label$200;
		}
		label$202:;
		label$201:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 4u );
		if( vr$4 == 0 ) goto label$204;
		{
			goto label$200;
		}
		label$204:;
		label$203:;
		C$1 = (((C$1 >> (24 & 31)) | ((C$1 << (8 & 31)) & 16711680u)) | ((C$1 >> (8 & 31)) & 65280u)) | (C$1 << (24 & 31));
		if( C$1 <= 255u ) goto label$206;
		{
			C$1 = 63u;
		}
		label$206:;
		label$205:;
		*DST$1 = (uint8)C$1;
		DST$1 = (uint8*)(DST$1 + 1);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$199;
	label$200:;
	fb$result$1 = CHARS$1;
	label$198:;
	return fb$result$1;
}

static int32 HUTF32BETOUTF16LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$207:;
	static uint32 C$1;
	static uint16* DST$1;
	static int32 CHARS$1;
	DST$1 = (uint16*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	CHARS$1 = 0;
	label$209:;
	if( CHARS$1 >= 8192 ) goto label$210;
	{
		int32 vr$3 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
		if( vr$3 == 0 ) goto label$212;
		{
			goto label$210;
		}
		label$212:;
		label$211:;
		int32 vr$4 = fb_FileGet( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)&C$1, 4u );
		if( vr$4 == 0 ) goto label$214;
		{
			goto label$210;
		}
		label$214:;
		label$213:;
		C$1 = (((C$1 >> (24 & 31)) | ((C$1 << (8 & 31)) & 16711680u)) | ((C$1 >> (8 & 31)) & 65280u)) | (C$1 << (24 & 31));
		if( C$1 <= 65535u ) goto label$216;
		{
			if( CHARS$1 >= 8191 ) goto label$218;
			{
				*DST$1 = (uint16)((C$1 >> (10 & 31)) + 55296u);
				DST$1 = (uint16*)((uint8*)DST$1 + 2);
				CHARS$1 = CHARS$1 + 1;
			}
			label$218:;
			label$217:;
			C$1 = (C$1 & 1023u) + 56320u;
		}
		label$216:;
		label$215:;
		*DST$1 = (uint16)C$1;
		DST$1 = (uint16*)((uint8*)DST$1 + 2);
		CHARS$1 = CHARS$1 + 1;
	}
	goto label$209;
	label$210:;
	fb$result$1 = CHARS$1;
	label$208:;
	return fb$result$1;
}

static int32 HUTF32BETOUTF32LE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$219:;
	static uint32* DST$1;
	static uint32 C$1;
	static int32 I$1;
	static int32 CHARS$1;
	int32 vr$1 = HUTF32LETOUTF32LE(  );
	CHARS$1 = vr$1;
	DST$1 = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
	{
		I$1 = 1;
		int32 TMP$101$2;
		TMP$101$2 = CHARS$1;
		goto label$221;
		label$224:;
		{
			C$1 = *(uint32*)DST$1;
			*DST$1 = (((C$1 >> (24 & 31)) | ((C$1 << (8 & 31)) & 16711680u)) | ((C$1 >> (8 & 31)) & 65280u)) | (C$1 << (24 & 31));
			DST$1 = (uint32*)((uint8*)DST$1 + 4);
		}
		label$222:;
		I$1 = I$1 + 1;
		label$221:;
		if( I$1 <= TMP$101$2 ) goto label$224;
		label$223:;
	}
	fb$result$1 = CHARS$1;
	label$220:;
	return fb$result$1;
}
