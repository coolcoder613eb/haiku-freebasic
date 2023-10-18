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
typedef int32 $8LEXCHECK;
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
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileGetStr( int32, int32, void*, int32 );
int64 fb_FileTell( int32 );
int32 fb_FileSeek( int32, int32 );
int32 fb_FileEof( int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatByref( void*, int32, void*, int32, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int32 );
FBSTRING* fb_WstrToStr( uint32* );
FBSTRING* fb_StrMid( FBSTRING*, int32, int32 );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_LEFT( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__lex( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $10FBSYMCHAIN* SYMBLOOKUP( uint8*, $8FB_TOKEN*, $10FB_TKCLASS* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
int32 TYPETOUNSIGNED( int32 );
void DZSTRALLOCATE( struct $8DZSTRING*, int32 );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNC( struct $8DZSTRING*, uint32 );
void DWSTRALLOCATE( struct $8DWSTRING*, int32 );
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXPPONLYEMITTOKEN( void );
void LEXSKIPTOKEN( $8LEXCHECK );
void LEXREADLINE( uint32, uint8*, int32 );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint32 LEXCURRENTCHAR( void );
uint32 LEXGETLOOKAHEADCHAR( void );
uint32 LEXGETLOOKAHEADCHAR2( void );
void LEXEATCHAR( void );
void LEXCHECKTOKEN( $8LEXCHECK );
void PPINIT( void );
void PPEND( void );
void PPCHECK( void );
int32 PPDEFINELOAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void LEXREADUTF8( void );
void LEXREADUTF16LE( void );
void LEXREADUTF16BE( void );
void LEXREADUTF32LE( void );
void LEXREADUTF32BE( void );
static void HMULTILINECOMMENT( void );
static void HSKIPCHAR( void );
static void HCOLLECTCHARFORDEBUGOUTPUT( uint32 );
static uint32 HREADCHAR( void );
static void HREADIDENTIFIER( uint8*, int32*, int32*, int32*, $8LEXCHECK );
static uint64 HREADNONDECNUMBER( uint8**, int32*, int32*, $8LEXCHECK );
static void HREADFLOATNUMBER( uint8**, struct $7FBTOKEN*, int32, $8LEXCHECK );
static void READNUMBERCHARS( struct $7FBTOKEN*, $8LEXCHECK*, uint8**, int32*, uint64* );
static void HREADNUMBER( struct $7FBTOKEN*, $8LEXCHECK );
static void HREADSTRING( struct $7FBTOKEN*, uint8*, $8LEXCHECK );
static void HREADWSTR( struct $7FBTOKEN*, uint32*, $8LEXCHECK );
static void HCHECKPERIODS( struct $7FBTOKEN*, $8LEXCHECK, struct $10FBSYMCHAIN* );
static int32 READID( struct $7FBTOKEN*, $8LEXCHECK );
static void HMOVEKDOWN( void );
static FBSTRING* LEXGETSTRLITTEXT( int32 );
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
static FBSTRING PPONLY_LN$;
struct $7LEX_CTX LEX$;

void LEXPUSHCTX( void )
{
	label$10:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49416);
	label$11:;
}

void LEXPOPCTX( void )
{
	label$12:;
	if( *(int32*)((uint8*)&ENV$ + 900) != 0 ) goto label$15;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400), 0 );
	}
	label$15:;
	label$14:;
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$17;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), 0 );
	}
	goto label$16;
	label$17:;
	{
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), 0 );
	}
	label$16:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -49416);
	label$13:;
}

void LEXINIT( int32 ISINCLUDE$1, int32 IS_FB_EVAL$1 )
{
	label$18:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	struct $7FBTOKEN* N$1;
	__builtin_memset( &N$1, 0, 4 );
	if( (-(*(int32*)((uint8*)&ENV$ + 900) == 0) & -(IS_FB_EVAL$1 == 0)) == 0 ) goto label$21;
	{
		*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) = (struct $9LEX_TKCTX*)&LEX$;
	}
	label$21:;
	label$20:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) = 0;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = (struct $7FBTOKEN*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072);
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
	N$1 = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
	{
		I$1 = 0;
		label$25:;
		{
			*(struct $7FBTOKEN**)((uint8*)N$1 + 4132) = (struct $7FBTOKEN*)((uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + (I$1 * 4136)) + 4136);
			N$1 = *(struct $7FBTOKEN**)((uint8*)N$1 + 4132);
		}
		label$23:;
		I$1 = I$1 + 1;
		label$22:;
		if( I$1 <= 2 ) goto label$25;
		label$24:;
	}
	*(struct $7FBTOKEN**)((uint8*)N$1 + 4132) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
	{
		I$1 = 0;
		label$29:;
		{
			*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + (I$1 * 4136)) = -1;
		}
		label$27:;
		I$1 = I$1 + 1;
		label$26:;
		if( I$1 <= 3 ) goto label$29;
		label$28:;
	}
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = 4294967295u;
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) = 4294967295u;
	*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564) = 4294967295u;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16588) = IS_FB_EVAL$1;
	if( IS_FB_EVAL$1 == 0 ) goto label$31;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -32848);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -32840);
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16580) = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -32836);
	}
	goto label$30;
	label$31:;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = 1;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = 0;
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16580) = (struct $8FBSYMBOL*)0u;
	}
	label$30:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16572) = -1;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = 0;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = 0;
	if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$33;
	{
		uint8* TMP$92$2;
		if( IS_FB_EVAL$1 == 0 ) goto label$34;
		TMP$92$2 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
		goto label$41;
		label$34:;
		TMP$92$2 = (uint8*)0u;
		label$41:;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = TMP$92$2;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = (uint8*)0u;
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), 0 );
	}
	goto label$32;
	label$33:;
	{
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
		*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = (uint32*)0u;
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16600), 0 );
	}
	label$32:;
	if( IS_FB_EVAL$1 == 0 ) goto label$36;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -24);
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49396) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -20);
	}
	goto label$35;
	label$36:;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392) = 0;
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49396) = 0;
	}
	label$35:;
	if( (-(*(int32*)((uint8*)&ENV$ + 900) == 0) | -(IS_FB_EVAL$1 == -1)) == 0 ) goto label$38;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400), 0 );
		*(int32*)((uint8*)&LEX$ + 840076) = 0;
	}
	label$38:;
	label$37:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49412) = 0;
	if( (-(ISINCLUDE$1 == 0) & -(IS_FB_EVAL$1 == 0)) == 0 ) goto label$40;
	{
		PPINIT(  );
	}
	label$40:;
	label$39:;
	label$19:;
}

void LEXEND( void )
{
	label$42:;
	fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)"", 1, 0 );
	PPEND(  );
	label$43:;
}

void LEXEATCHAR( void )
{
	label$90:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) != 4294967295u ) goto label$93;
	{
		HSKIPCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = 4294967295u;
	}
	goto label$92;
	label$93:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564) != 4294967295u ) goto label$94;
	{
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560);
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) = 4294967295u;
	}
	goto label$92;
	label$94:;
	{
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560);
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564);
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564) = 4294967295u;
	}
	label$92:;
	label$91:;
}

int32 LEXEATWHITESPACE( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$95:;
	fb$result$1 = 0;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) != 4294967295u ) goto label$98;
	{
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = vr$2;
	}
	label$98:;
	label$97:;
	label$99:;
	if( (-(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) == 9u) | -(*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) == 32u)) == 0 ) goto label$100;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49412) = -1;
		LEXEATCHAR(  );
		uint32 vr$10 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = vr$10;
		fb$result$1 = -1;
	}
	goto label$99;
	label$100:;
	label$96:;
	return fb$result$1;
}

uint32 LEXCURRENTCHAR( void )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$112:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) != 4294967295u ) goto label$115;
	{
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) = vr$2;
	}
	label$115:;
	label$114:;
	fb$result$1 = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556);
	label$113:;
	return fb$result$1;
}

uint32 LEXGETLOOKAHEADCHAR( void )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$116:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) != 4294967295u ) goto label$119;
	{
		HSKIPCHAR(  );
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560) = vr$2;
	}
	label$119:;
	label$118:;
	fb$result$1 = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16560);
	label$117:;
	return fb$result$1;
}

uint32 LEXGETLOOKAHEADCHAR2( void )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$120:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564) != 4294967295u ) goto label$123;
	{
		HSKIPCHAR(  );
		uint32 vr$2 = HREADCHAR(  );
		*(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564) = vr$2;
	}
	label$123:;
	label$122:;
	fb$result$1 = *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16564);
	label$121:;
	return fb$result$1;
}

void LEXNEXTTOKEN( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	label$576:;
	uint32 CHAR$1;
	int32 ISLINECONT$1;
	int32 LGT$1;
	*(int32*)((uint8*)T$1 + 4128) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49412);
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49412) = 0;
	label$578:;
	*(uint8*)((uint8*)T$1 + 12) = (uint8)0u;
	*(int32*)((uint8*)T$1 + 4112) = 0;
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = (struct $10FBSYMCHAIN*)0u;
	ISLINECONT$1 = 0;
	label$579:;
	{
		uint32 vr$6 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$6;
		{
			uint32 TMP$120$3;
			TMP$120$3 = CHAR$1;
			goto label$583;
			label$584:;
			{
				*(int32*)T$1 = 256;
				*(int32*)((uint8*)T$1 + 4) = 6;
				*(int32*)((uint8*)T$1 + 8) = -2147483648u;
				*(int32*)((uint8*)T$1 + 4124) = 0;
				goto label$577;
			}
			goto label$582;
			label$585:;
			{
				if( ISLINECONT$1 == 0 ) goto label$587;
				{
					LEXEATCHAR(  );
					goto label$581;
				}
				label$587:;
				label$586:;
				if( (FLAGS$1 & 1) != 0 ) goto label$589;
				{
					{
						uint32 TMP$121$6;
						uint32 vr$12 = LEXGETLOOKAHEADCHAR(  );
						TMP$121$6 = vr$12;
						goto label$591;
						label$592:;
						{
							goto label$580;
						}
						goto label$590;
						label$593:;
						{
							uint32 vr$13 = LEXGETLOOKAHEADCHAR2(  );
							if( vr$13 != 35u ) goto label$595;
							{
								goto label$580;
							}
							label$595:;
							label$594:;
						}
						goto label$590;
						label$591:;
						static const void* tmp$130[88] = {
							&&label$593,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$590,
							&&label$592,
							&&label$590,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
							&&label$592,
						};
						if( (TMP$121$6 - 35u) > 87u ) goto label$590;
						goto *tmp$130[TMP$121$6 - 35u];
						label$590:;
					}
					LEXEATCHAR(  );
					ISLINECONT$1 = -1;
					goto label$581;
				}
				goto label$588;
				label$589:;
				{
					goto label$580;
				}
				label$588:;
			}
			goto label$582;
			label$596:;
			{
				LEXEATCHAR(  );
				if( CHAR$1 != 13u ) goto label$598;
				{
					uint32 vr$14 = LEXCURRENTCHAR(  );
					if( vr$14 != 10u ) goto label$600;
					{
						LEXEATCHAR(  );
					}
					label$600:;
					label$599:;
				}
				label$598:;
				label$597:;
				if( ISLINECONT$1 != 0 ) goto label$602;
				{
					*(int32*)T$1 = 257;
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)((uint8*)T$1 + 8) = -2147483648u;
					*(int32*)((uint8*)T$1 + 4124) = 0;
					*(int32*)((uint8*)T$1 + 4112) = 1;
					*(uint8*)((uint8*)T$1 + 12) = (uint8)10u;
					*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
					goto label$577;
				}
				goto label$601;
				label$602:;
				{
					*(int32*)((uint8*)T$1 + 4128) = -1;
					if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) != 0 ) goto label$604;
					{
						*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) + 1;
					}
					label$604:;
					label$603:;
					ISLINECONT$1 = 0;
					goto label$581;
				}
				label$601:;
			}
			goto label$582;
			label$605:;
			{
				*(int32*)((uint8*)T$1 + 4128) = -1;
				if( ISLINECONT$1 != 0 ) goto label$607;
				{
					if( (FLAGS$1 & 4) == 0 ) goto label$609;
					{
						goto label$580;
					}
					label$609:;
					label$608:;
				}
				label$607:;
				label$606:;
				LEXEATCHAR(  );
			}
			goto label$582;
			label$610:;
			{
				if( ISLINECONT$1 != 0 ) goto label$612;
				{
					goto label$580;
				}
				label$612:;
				label$611:;
				LEXEATCHAR(  );
			}
			goto label$582;
			label$583:;
			static const void* tmp$131[96] = {
				&&label$584,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$605,
				&&label$596,
				&&label$610,
				&&label$610,
				&&label$596,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$605,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$610,
				&&label$585,
			};
			if( TMP$120$3 > 95u ) goto label$610;
			goto *tmp$131[TMP$120$3 - 0u];
			label$582:;
		}
	}
	label$581:;
	goto label$579;
	label$580:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49396) = (*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392) + (*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) - (int32)(uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620))) + -1;
	{
		uint32 TMP$122$2;
		TMP$122$2 = CHAR$1;
		goto label$614;
		label$615:;
		{
			if( (FLAGS$1 & 9) != 0 ) goto label$617;
			{
				uint32 LACHAR$4;
				uint32 vr$38 = LEXGETLOOKAHEADCHAR(  );
				LACHAR$4 = vr$38;
				if( (-(LACHAR$4 >= 48u) & -(LACHAR$4 <= 57u)) == 0 ) goto label$619;
				{
					HREADNUMBER( T$1, FLAGS$1 );
					goto label$613;
				}
				label$619:;
				label$618:;
			}
			label$617:;
			label$616:;
			goto label$620;
		}
		goto label$613;
		label$621:;
		{
			{
				uint32 TMP$123$4;
				uint32 vr$42 = LEXGETLOOKAHEADCHAR(  );
				TMP$123$4 = vr$42;
				if( TMP$123$4 == 72u ) goto label$624;
				label$625:;
				if( TMP$123$4 == 104u ) goto label$624;
				label$626:;
				if( TMP$123$4 == 79u ) goto label$624;
				label$627:;
				if( TMP$123$4 == 111u ) goto label$624;
				label$628:;
				if( TMP$123$4 == 66u ) goto label$624;
				label$629:;
				if( TMP$123$4 == 98u ) goto label$624;
				label$630:;
				if( TMP$123$4 < 48u ) goto label$623;
				if( TMP$123$4 > 55u ) goto label$623;
				label$624:;
				{
					HREADNUMBER( T$1, FLAGS$1 );
				}
				goto label$622;
				label$623:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					*(int32*)T$1 = 38;
					*(int32*)((uint8*)T$1 + 8) = *(int32*)T$1;
					*(int32*)((uint8*)T$1 + 4112) = 1;
					*(uint8*)((uint8*)T$1 + 12) = (uint8)38u;
					*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
					LEXEATCHAR(  );
				}
				label$631:;
				label$622:;
			}
		}
		goto label$613;
		label$632:;
		{
			HREADNUMBER( T$1, FLAGS$1 );
		}
		goto label$613;
		label$633:;
		{
			int32 vr$50 = READID( T$1, FLAGS$1 );
			if( ~vr$50 == 0 ) goto label$635;
			{
				goto label$578;
			}
			label$635:;
			label$634:;
		}
		goto label$613;
		label$636:;
		{
			$8FB_TOKEN TMP$124$3;
			*(int32*)((uint8*)T$1 + 4) = 4;
			if( *(int32*)((uint8*)&ENV$ + 1092) == 0 ) goto label$637;
			TMP$124$3 = 263;
			goto label$693;
			label$637:;
			TMP$124$3 = 262;
			label$693:;
			*(int32*)T$1 = TMP$124$3;
			*(int32*)((uint8*)T$1 + 8) = -2147483648u;
			if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$639;
			{
				HREADSTRING( T$1, (uint8*)((uint8*)T$1 + 12), FLAGS$1 );
			}
			goto label$638;
			label$639:;
			{
				HREADWSTR( T$1, (uint32*)((uint8*)T$1 + 12), FLAGS$1 );
			}
			label$638:;
		}
		goto label$613;
		label$640:;
		{
			$8FB_TOKEN TMP$125$3;
			uint32 vr$59 = LEXGETLOOKAHEADCHAR(  );
			if( vr$59 == 34u ) goto label$642;
			{
				goto label$620;
			}
			label$642:;
			label$641:;
			LEXEATCHAR(  );
			*(int32*)((uint8*)T$1 + 4) = 4;
			if( CHAR$1 != 33u ) goto label$643;
			TMP$125$3 = 263;
			goto label$694;
			label$643:;
			TMP$125$3 = 264;
			label$694:;
			*(int32*)T$1 = TMP$125$3;
			*(int32*)((uint8*)T$1 + 8) = -2147483648u;
			if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$645;
			{
				uint8* PS$4;
				if( (FLAGS$1 & 16) != 0 ) goto label$647;
				{
					PS$4 = (uint8*)((uint8*)T$1 + 12);
				}
				goto label$646;
				label$647:;
				{
					*(uint8*)((uint8*)T$1 + 12) = (uint8)CHAR$1;
					PS$4 = (uint8*)((uint8*)T$1 + 13);
				}
				label$646:;
				HREADSTRING( T$1, PS$4, FLAGS$1 );
			}
			goto label$644;
			label$645:;
			{
				uint32* PS$4;
				if( (FLAGS$1 & 16) != 0 ) goto label$649;
				{
					PS$4 = (uint32*)((uint8*)T$1 + 12);
				}
				goto label$648;
				label$649:;
				{
					*(uint32*)((uint8*)T$1 + 12) = CHAR$1;
					PS$4 = (uint32*)((uint8*)T$1 + 16);
				}
				label$648:;
				HREADWSTR( T$1, PS$4, FLAGS$1 );
			}
			label$644:;
		}
		goto label$613;
		label$650:;
		{
			label$620:;
			*(int32*)T$1 = (int32)CHAR$1;
			*(int32*)((uint8*)T$1 + 8) = *(int32*)T$1;
			*(int32*)((uint8*)T$1 + 4124) = 0;
			*(int32*)((uint8*)T$1 + 4112) = 1;
			*(uint8*)((uint8*)T$1 + 12) = (uint8)CHAR$1;
			*(uint8*)((uint8*)T$1 + 13) = (uint8)0u;
			LEXEATCHAR(  );
			{
				uint32 TMP$126$4;
				TMP$126$4 = CHAR$1;
				goto label$652;
				label$653:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					{
						if( CHAR$1 != 60u ) goto label$655;
						label$656:;
						{
							{
								uint32 TMP$127$8;
								uint32 vr$85 = LEXCURRENTCHAR(  );
								TMP$127$8 = vr$85;
								if( TMP$127$8 != 61u ) goto label$658;
								label$659:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)61u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
									*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
									*(int32*)T$1 = 303;
									LEXEATCHAR(  );
								}
								goto label$657;
								label$658:;
								if( TMP$127$8 != 62u ) goto label$660;
								label$661:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
									*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
									*(int32*)T$1 = 302;
									LEXEATCHAR(  );
								}
								goto label$657;
								label$660:;
								{
									*(int32*)T$1 = 301;
								}
								label$662:;
								label$657:;
							}
						}
						goto label$654;
						label$655:;
						if( CHAR$1 != 62u ) goto label$663;
						label$664:;
						{
							int32 TMP$128$7;
							if( (*(int32*)((uint8*)&PARSER$ + 152) & 512) != 0 ) goto label$665;
							uint32 vr$112 = LEXCURRENTCHAR(  );
							TMP$128$7 = -(vr$112 == 61u);
							goto label$695;
							label$665:;
							TMP$128$7 = 0;
							label$695:;
							if( TMP$128$7 == 0 ) goto label$667;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)61u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
								*(int32*)T$1 = 304;
								LEXEATCHAR(  );
							}
							goto label$666;
							label$667:;
							{
								*(int32*)T$1 = 300;
							}
							label$666:;
						}
						goto label$654;
						label$663:;
						if( CHAR$1 != 61u ) goto label$668;
						label$669:;
						{
							uint32 vr$127 = LEXCURRENTCHAR(  );
							if( vr$127 != 62u ) goto label$671;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
								*(int32*)T$1 = 305;
								LEXEATCHAR(  );
							}
							goto label$670;
							label$671:;
							{
								*(int32*)T$1 = 299;
							}
							label$670:;
						}
						label$668:;
						label$654:;
					}
				}
				goto label$651;
				label$672:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
				}
				goto label$651;
				label$673:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					uint32 vr$143 = LEXCURRENTCHAR(  );
					if( vr$143 != 62u ) goto label$675;
					{
						*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)62u;
						*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) + 1) = (uint8)0u;
						*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
						*(int32*)T$1 = 400;
						LEXEATCHAR(  );
					}
					label$675:;
					label$674:;
				}
				goto label$651;
				label$676:;
				{
					*(int32*)((uint8*)T$1 + 4) = 5;
					if( (FLAGS$1 & 512) != 0 ) goto label$678;
					{
						uint32 vr$158 = LEXCURRENTCHAR(  );
						if( vr$158 != 39u ) goto label$680;
						{
							HMULTILINECOMMENT(  );
							*(int32*)((uint8*)T$1 + 4128) = -1;
							goto label$578;
						}
						label$680:;
						label$679:;
					}
					label$678:;
					label$677:;
				}
				goto label$651;
				label$681:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 259;
				}
				goto label$651;
				label$682:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 258;
				}
				goto label$651;
				label$683:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
				}
				goto label$651;
				label$684:;
				{
					*(int32*)((uint8*)T$1 + 4) = 6;
					*(int32*)T$1 = 32;
					label$685:;
					{
						{
							uint32 TMP$129$7;
							uint32 vr$167 = LEXCURRENTCHAR(  );
							TMP$129$7 = vr$167;
							goto label$689;
							label$690:;
							{
								LEXEATCHAR(  );
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)32u;
								*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
							}
							goto label$688;
							label$691:;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)) = (uint8)0u;
								goto label$686;
							}
							goto label$688;
							label$689:;
							static const void* tmp$132[24] = {
								&&label$690,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$691,
								&&label$690,
							};
							if( (TMP$129$7 - 9u) > 23u ) goto label$691;
							goto *tmp$132[TMP$129$7 - 9u];
							label$688:;
						}
					}
					label$687:;
					goto label$685;
					label$686:;
				}
				goto label$651;
				label$692:;
				{
					*(int32*)((uint8*)T$1 + 4) = 7;
				}
				goto label$651;
				label$652:;
				static const void* tmp$133[117] = {
					&&label$684,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$684,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$681,
					&&label$683,
					&&label$683,
					&&label$672,
					&&label$672,
					&&label$683,
					&&label$673,
					&&label$683,
					&&label$676,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$682,
					&&label$683,
					&&label$653,
					&&label$653,
					&&label$653,
					&&label$692,
					&&label$672,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$683,
					&&label$672,
					&&label$683,
					&&label$672,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$692,
					&&label$683,
					&&label$692,
					&&label$683,
				};
				if( (TMP$126$4 - 9u) > 116u ) goto label$692;
				goto *tmp$133[TMP$126$4 - 9u];
				label$651:;
			}
		}
		goto label$613;
		label$614:;
		static const void* tmp$134[90] = {
			&&label$640,
			&&label$636,
			&&label$650,
			&&label$640,
			&&label$650,
			&&label$621,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$615,
			&&label$650,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$632,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$650,
			&&label$633,
			&&label$650,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
			&&label$633,
		};
		if( (TMP$122$2 - 33u) > 89u ) goto label$650;
		goto *tmp$134[TMP$122$2 - 33u];
		label$613:;
	}
	label$577:;
}

int32 LEXGETTOKEN( $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$721:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) != -1 ) goto label$724;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548), FLAGS$1 );
		PPCHECK(  );
	}
	label$724:;
	label$723:;
	fb$result$1 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
	label$722:;
	return fb$result$1;
}

int32 LEXGETCLASS( $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$725:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) != -1 ) goto label$728;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548), FLAGS$1 );
		PPCHECK(  );
	}
	label$728:;
	label$727:;
	fb$result$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4);
	label$726:;
	return fb$result$1;
}

int32 LEXGETLOOKAHEAD( int32 K$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$729:;
	if( K$1 <= 3 ) goto label$732;
	{
		goto label$730;
	}
	label$732:;
	label$731:;
	if( K$1 <= *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) ) goto label$734;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) + 4132);
	}
	label$734:;
	label$733:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) != -1 ) goto label$736;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552), FLAGS$1 );
	}
	label$736:;
	label$735:;
	fb$result$1 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552);
	label$730:;
	return fb$result$1;
}

int32 LEXGETLOOKAHEADCLASS( int32 K$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$737:;
	if( K$1 <= 3 ) goto label$740;
	{
		goto label$738;
	}
	label$740:;
	label$739:;
	if( K$1 <= *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) ) goto label$742;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) + 4132);
	}
	label$742:;
	label$741:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) != -1 ) goto label$744;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552), FLAGS$1 );
	}
	label$744:;
	label$743:;
	fb$result$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16552) + 4);
	label$738:;
	return fb$result$1;
}

void LEXPPONLYEMITTOKEN( void )
{
	label$769:;
	{
		int32 TMP$143$2;
		int32 vr$0 = LEXGETTOKEN( 0 );
		TMP$143$2 = vr$0;
		if( TMP$143$2 == 259 ) goto label$773;
		label$774:;
		if( TMP$143$2 != 260 ) goto label$772;
		label$773:;
		{
			goto label$770;
		}
		goto label$771;
		label$772:;
		if( TMP$143$2 == 256 ) goto label$776;
		label$777:;
		if( TMP$143$2 != 257 ) goto label$775;
		label$776:;
		{
			int32 vr$1 = fb_StrLen( (void*)&PPONLY_LN$, -1 );
			if( vr$1 <= 0 ) goto label$779;
			{
				int32 TMP$144$4;
				TMP$144$4 = *(int32*)((uint8*)&ENV$ + 860);
				fb_PrintString( TMP$144$4, (FBSTRING*)&PPONLY_LN$, 1 );
				fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)"", 1, 0 );
			}
			goto label$778;
			label$779:;
			int32 vr$2 = LEXGETTOKEN( 0 );
			if( vr$2 != 257 ) goto label$780;
			{
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16572) != 257 ) goto label$782;
				{
					int32 TMP$145$5;
					TMP$145$5 = *(int32*)((uint8*)&ENV$ + 860);
					FBSTRING* vr$4 = fb_StrAllocTempDescZEx( (uint8*)"", 0 );
					fb_PrintString( TMP$145$5, (FBSTRING*)vr$4, 1 );
				}
				label$782:;
				label$781:;
			}
			label$780:;
			label$778:;
			goto label$770;
		}
		label$775:;
		label$771:;
	}
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4128) == 0 ) goto label$784;
	{
		fb_StrConcatAssign( (void*)&PPONLY_LN$, -1, (void*)" ", 2, 0 );
	}
	label$784:;
	label$783:;
	{
		int32 TMP$147$2;
		int32 vr$7 = LEXGETTOKEN( 0 );
		TMP$147$2 = vr$7;
		if( TMP$147$2 == 262 ) goto label$787;
		label$788:;
		if( TMP$147$2 == 263 ) goto label$787;
		label$789:;
		if( TMP$147$2 != 264 ) goto label$786;
		label$787:;
		{
			int32 vr$8 = LEXGETTOKEN( 0 );
			FBSTRING* vr$9 = LEXGETSTRLITTEXT( vr$8 );
			fb_StrConcatAssign( (void*)&PPONLY_LN$, -1, (void*)vr$9, -1, 0 );
		}
		goto label$785;
		label$786:;
		{
			FBSTRING TMP$148$3;
			uint8* vr$10 = LEXGETTEXT(  );
			__builtin_memset( &TMP$148$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$148$3, (void*)&PPONLY_LN$, -1, (void*)vr$10, 0 );
			fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)vr$13, -1, 0 );
		}
		label$790:;
		label$785:;
	}
	label$770:;
}

void LEXPPONLYEMITTEXT( FBSTRING* S$1 )
{
	FBSTRING TMP$149$1;
	label$791:;
	__builtin_memset( &TMP$149$1, 0, 12 );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$149$1, (void*)&PPONLY_LN$, -1, (void*)S$1, -1 );
	fb_StrAssign( (void*)&PPONLY_LN$, -1, (void*)vr$2, -1, 0 );
	label$792:;
}

void LEXSKIPTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$793:;
	LEXCHECKTOKEN( FLAGS$1 );
	FLAGS$1 = FLAGS$1 & -14337;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$796;
	{
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) != 0 ) goto label$798;
		{
			LEXPPONLYEMITTOKEN(  );
		}
		label$798:;
		label$797:;
	}
	label$796:;
	label$795:;
	{
		int32 TMP$150$2;
		TMP$150$2 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
		if( TMP$150$2 != 257 ) goto label$800;
		label$801:;
		{
			if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) != 0 ) goto label$803;
			{
				*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) + 1;
			}
			label$803:;
			label$802:;
		}
		label$800:;
		label$799:;
	}
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16572) = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) != 0 ) goto label$805;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548), FLAGS$1 );
	}
	goto label$804;
	label$805:;
	{
		HMOVEKDOWN(  );
	}
	label$804:;
	PPCHECK(  );
	label$794:;
}

void LEXEATTOKEN( uint8* TOKEN$1, $8LEXCHECK FLAGS$1 )
{
	label$806:;
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == 7 ) goto label$809;
	{
		fb_StrAssign( (void*)TOKEN$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12), 1025, 0 );
	}
	goto label$808;
	label$809:;
	{
		FBSTRING* vr$8 = fb_WstrToStr( (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12) );
		fb_StrAssign( (void*)TOKEN$1, 0, (void*)vr$8, -1, 0 );
	}
	label$808:;
	LEXSKIPTOKEN( FLAGS$1 );
	label$807:;
}

uint8* LEXGETTEXT( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$810:;
	static uint8 TMPSTR$1[1025];
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == 7 ) goto label$813;
	{
		fb$result$1 = (uint8*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12);
	}
	goto label$812;
	label$813:;
	{
		FBSTRING* vr$9 = fb_WstrToStr( (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12) );
		fb_StrAssign( (void*)TMPSTR$1, 1025, (void*)vr$9, -1, 0 );
		fb$result$1 = (uint8*)TMPSTR$1;
	}
	label$812:;
	label$811:;
	return fb$result$1;
}

void LEXREADLINE( uint32 ENDCHAR$1, uint8* DST$1, int32 SKIPLINE$1 )
{
	label$814:;
	static uint32 CHAR$1;
	if( SKIPLINE$1 != 0 ) goto label$817;
	{
		fb_StrAssign( (void*)DST$1, 0, (void*)"", 1, 0 );
	}
	label$817:;
	label$816:;
	label$818:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) <= 0 ) goto label$819;
	{
		{
			int32 TMP$151$3;
			TMP$151$3 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
			if( TMP$151$3 == 256 ) goto label$822;
			label$823:;
			if( TMP$151$3 == 257 ) goto label$822;
			label$824:;
			if( (uint32)TMP$151$3 != ENDCHAR$1 ) goto label$821;
			label$822:;
			{
				goto label$815;
			}
			goto label$820;
			label$821:;
			{
				if( SKIPLINE$1 != 0 ) goto label$827;
				{
					FBSTRING TMP$152$5;
					__builtin_memset( &TMP$152$5, 0, 12 );
					FBSTRING* vr$8 = fb_StrConcat( &TMP$152$5, (void*)DST$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12), 1025 );
					fb_StrAssign( (void*)DST$1, 0, (void*)vr$8, -1, 0 );
				}
				label$827:;
				label$826:;
			}
			label$825:;
			label$820:;
		}
		HMOVEKDOWN(  );
	}
	goto label$818;
	label$819:;
	{
		int32 TMP$153$2;
		TMP$153$2 = *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548);
		if( TMP$153$2 == 256 ) goto label$830;
		label$831:;
		if( TMP$153$2 == 257 ) goto label$830;
		label$832:;
		if( (uint32)TMP$153$2 != ENDCHAR$1 ) goto label$829;
		label$830:;
		{
			goto label$815;
		}
		goto label$828;
		label$829:;
		{
			if( SKIPLINE$1 != 0 ) goto label$835;
			{
				FBSTRING TMP$154$4;
				__builtin_memset( &TMP$154$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$154$4, (void*)DST$1, 0, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12), 1025 );
				fb_StrAssign( (void*)DST$1, 0, (void*)vr$16, -1, 0 );
			}
			label$835:;
			label$834:;
		}
		label$833:;
		label$828:;
	}
	label$836:;
	{
		uint32 vr$17 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$17;
		{
			uint32 TMP$155$3;
			TMP$155$3 = CHAR$1;
			goto label$840;
			label$841:;
			{
				*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = 256;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4) = 6;
				goto label$815;
			}
			goto label$839;
			label$842:;
			{
				LEXEATCHAR(  );
				if( CHAR$1 != 13u ) goto label$844;
				{
					uint32 vr$22 = LEXCURRENTCHAR(  );
					if( vr$22 != 10u ) goto label$846;
					{
						LEXEATCHAR(  );
					}
					label$846:;
					label$845:;
				}
				label$844:;
				label$843:;
				*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = 257;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4) = 6;
				goto label$815;
			}
			goto label$839;
			label$847:;
			{
				if( CHAR$1 != ENDCHAR$1 ) goto label$849;
				{
					*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = (int32)ENDCHAR$1;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4) = 6;
					goto label$815;
				}
				label$849:;
				label$848:;
			}
			goto label$839;
			label$840:;
			static const void* tmp$157[14] = {
				&&label$841,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$847,
				&&label$842,
				&&label$847,
				&&label$847,
				&&label$842,
			};
			if( TMP$155$3 > 13u ) goto label$847;
			goto *tmp$157[TMP$155$3 - 0u];
			label$839:;
		}
		LEXEATCHAR(  );
		if( SKIPLINE$1 != 0 ) goto label$851;
		{
			FBSTRING TMP$156$3;
			FBSTRING* vr$31 = fb_CHR( 1, (int32)CHAR$1 );
			__builtin_memset( &TMP$156$3, 0, 12 );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$156$3, (void*)DST$1, 0, (void*)vr$31, -1 );
			fb_StrAssign( (void*)DST$1, 0, (void*)vr$34, -1, 0 );
		}
		label$851:;
		label$850:;
	}
	label$838:;
	goto label$836;
	label$837:;
	label$815:;
}

void LEXSKIPLINE( void )
{
	label$852:;
	LEXREADLINE( 4294967295u, (uint8*)0u, -1 );
	label$853:;
}

FBSTRING* LEXPEEKCURRENTLINE( FBSTRING* TOKEN_POS$1, int32 DO_TRIM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$854:;
	static uint8 BUFFER$1[1025];
	FBSTRING RES$1;
	__builtin_memset( &RES$1, 0, 12 );
	int32 P$1;
	__builtin_memset( &P$1, 0, 4 );
	int32 OLD_P$1;
	__builtin_memset( &OLD_P$1, 0, 4 );
	int32 START$1;
	__builtin_memset( &START$1, 0, 4 );
	int32 TOKEN_LEN$1;
	__builtin_memset( &TOKEN_LEN$1, 0, 4 );
	uint8* C$1;
	__builtin_memset( &C$1, 0, 4 );
	uint32 CHAR$1;
	__builtin_memset( &CHAR$1, 0, 4 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)"", 1, 0 );
	if( *(int32*)((uint8*)&ENV$ + 576) == 0 ) goto label$857;
	{
		fb_StrDelete( (FBSTRING*)&RES$1 );
		goto label$855;
	}
	label$857:;
	label$856:;
	int64 vr$10 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 300) );
	OLD_P$1 = (int32)vr$10;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16588) == 0 ) goto label$859;
	{
		P$1 = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + -20) + -512;
	}
	goto label$858;
	label$859:;
	{
		P$1 = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49396) + -512;
	}
	label$858:;
	START$1 = 512;
	if( P$1 >= 0 ) goto label$861;
	{
		START$1 = START$1 + P$1;
		P$1 = 0;
	}
	label$861:;
	label$860:;
	int32 vr$19 = fb_FileGetStr( *(int32*)((uint8*)&ENV$ + 300), P$1 + 1, (void*)BUFFER$1, 1025 );
	if( vr$19 == 0 ) goto label$862;
	void* vr$20 = fb_ErrorThrowAt( 2450, (uint8*)"src/compiler/lex.bas", (void*)0u, (void*)0u );
	goto *vr$20;
	label$862:;
	int32 vr$21 = fb_FileSeek( *(int32*)((uint8*)&ENV$ + 300), OLD_P$1 );
	if( vr$21 == 0 ) goto label$863;
	void* vr$22 = fb_ErrorThrowAt( 2451, (uint8*)"src/compiler/lex.bas", (void*)0u, (void*)0u );
	goto *vr$22;
	label$863:;
	C$1 = (uint8*)((uint8*)BUFFER$1 + START$1);
	TOKEN_LEN$1 = 0;
	if( START$1 <= 0 ) goto label$865;
	{
		C$1 = (uint8*)(C$1 + -1);
		label$866:;
		{
			CHAR$1 = (uint32)*C$1;
			{
				if( CHAR$1 == 13u ) goto label$871;
				label$872:;
				if( CHAR$1 != 10u ) goto label$870;
				label$871:;
				{
					goto label$867;
				}
				label$870:;
				label$869:;
			}
			if( START$1 > 0 ) goto label$874;
			{
				goto label$867;
			}
			label$874:;
			label$873:;
			TOKEN_LEN$1 = TOKEN_LEN$1 + 1;
			C$1 = (uint8*)(C$1 + -1);
			START$1 = START$1 + -1;
		}
		label$868:;
		goto label$866;
		label$867:;
		C$1 = (uint8*)(C$1 + 1);
	}
	label$865:;
	label$864:;
	fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
	fb_StrAssign( (void*)TOKEN_POS$1, -1, (void*)"", 1, 0 );
	label$875:;
	{
		CHAR$1 = (uint32)*C$1;
		{
			if( CHAR$1 == 0u ) goto label$880;
			label$881:;
			if( CHAR$1 == 13u ) goto label$880;
			label$882:;
			if( CHAR$1 != 10u ) goto label$879;
			label$880:;
			{
				goto label$876;
			}
			label$879:;
			label$878:;
		}
		FBSTRING* vr$34 = fb_CHR( 1, (int32)CHAR$1 );
		fb_StrConcatAssign( (void*)&RES$1, -1, (void*)vr$34, -1, 0 );
		if( TOKEN_LEN$1 <= 0 ) goto label$884;
		{
			int32 TMP$159$3;
			if( CHAR$1 != 9u ) goto label$885;
			TMP$159$3 = 9;
			goto label$910;
			label$885:;
			TMP$159$3 = 32;
			label$910:;
			FBSTRING* vr$36 = fb_CHR( 1, TMP$159$3 );
			fb_StrConcatByref( (void*)TOKEN_POS$1, -1, (void*)vr$36, -1, 0 );
			TOKEN_LEN$1 = TOKEN_LEN$1 + -1;
		}
		label$884:;
		label$883:;
		C$1 = (uint8*)(C$1 + 1);
	}
	label$877:;
	goto label$875;
	label$876:;
	if( DO_TRIM$1 == 0 ) goto label$887;
	{
		int32 I$2;
		__builtin_memset( &I$2, 0, 4 );
		{
			I$2 = 0;
			int32 TMP$160$3;
			int32 vr$41 = fb_StrLen( (void*)&RES$1, -1 );
			TMP$160$3 = vr$41 + -1;
			goto label$888;
			label$891:;
			{
				{
					uint8 TMP$161$5;
					TMP$161$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int32)TMP$161$5 == 9 ) goto label$894;
					label$895:;
					if( (int32)TMP$161$5 != 32 ) goto label$893;
					label$894:;
					{
					}
					goto label$892;
					label$893:;
					{
						goto label$890;
					}
					label$896:;
					label$892:;
				}
			}
			label$889:;
			I$2 = I$2 + 1;
			label$888:;
			if( I$2 <= TMP$160$3 ) goto label$891;
			label$890:;
		}
		int32 vr$48 = fb_StrLen( (void*)&RES$1, -1 );
		if( I$2 >= vr$48 ) goto label$898;
		{
			FBSTRING* vr$51 = fb_StrMid( (FBSTRING*)&RES$1, I$2 + 1, -1 );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$51, -1, 0 );
		}
		goto label$897;
		label$898:;
		{
			fb_StrAssign( (void*)&RES$1, -1, (void*)"", 1, 0 );
		}
		label$897:;
		{
			int32 vr$55 = fb_StrLen( (void*)&RES$1, -1 );
			I$2 = vr$55 + -1;
			goto label$899;
			label$902:;
			{
				{
					uint8 TMP$162$5;
					TMP$162$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int32)TMP$162$5 == 9 ) goto label$905;
					label$906:;
					if( (int32)TMP$162$5 != 32 ) goto label$904;
					label$905:;
					{
					}
					goto label$903;
					label$904:;
					{
						goto label$901;
					}
					label$907:;
					label$903:;
				}
			}
			label$900:;
			I$2 = I$2 + -1;
			label$899:;
			if( I$2 >= 0 ) goto label$902;
			label$901:;
		}
		if( I$2 <= 0 ) goto label$909;
		{
			FBSTRING* vr$63 = fb_LEFT( (FBSTRING*)&RES$1, I$2 + 1 );
			fb_StrAssign( (void*)&RES$1, -1, (void*)vr$63, -1, 0 );
		}
		label$909:;
		label$908:;
	}
	label$887:;
	label$886:;
	fb_StrConcatByref( (void*)TOKEN_POS$1, -1, (void*)"^", 2, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&RES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$855:;
	FBSTRING* vr$69 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$69;
}

void LEXCHECKTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$911:;
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$914;
	{
		if( (FLAGS$1 & 14336) == 0 ) goto label$916;
		{
			if( (FLAGS$1 & 2048) == 0 ) goto label$918;
			{
				FBSTRING TMP$165$4;
				FBSTRING TMP$167$4;
				FBSTRING TMP$168$4;
				FBSTRING TMP$169$4;
				FBSTRING TMP$170$4;
				__builtin_memset( &TMP$170$4, 0, 12 );
				if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$919;
				FBSTRING* vr$9 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) );
				fb_StrInit( (void*)&TMP$165$4, -1, (void*)vr$9, -1, 0 );
				goto label$936;
				label$919:;
				fb_StrInit( (void*)&TMP$165$4, -1, (void*)"", 1, 0 );
				label$936:;
				uint8* vr$13 = LEXGETTEXT(  );
				__builtin_memset( &TMP$167$4, 0, 12 );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$167$4, (void*)"in '", 5, (void*)vr$13, 0 );
				__builtin_memset( &TMP$168$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$168$4, (void*)vr$16, -1, (void*)&TMP$165$4, -1 );
				__builtin_memset( &TMP$169$4, 0, 12 );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$169$4, (void*)vr$19, -1, (void*)"'", 2 );
				fb_StrAssign( (void*)&TMP$170$4, -1, (void*)vr$22, -1, 0 );
				ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$170$4, 0, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$170$4 );
				fb_StrDelete( (FBSTRING*)&TMP$165$4 );
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) = -2147483648u;
				*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) = 0;
			}
			goto label$917;
			label$918:;
			if( (FLAGS$1 & 4096) == 0 ) goto label$920;
			{
				if( (*(int32*)((uint8*)&ENV$ + 1040) & 8388608) != 0 ) goto label$922;
				{
					FBSTRING TMP$171$5;
					FBSTRING TMP$172$5;
					FBSTRING TMP$173$5;
					FBSTRING TMP$174$5;
					FBSTRING TMP$175$5;
					__builtin_memset( &TMP$175$5, 0, 12 );
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$923;
					FBSTRING* vr$37 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) );
					fb_StrInit( (void*)&TMP$171$5, -1, (void*)vr$37, -1, 0 );
					goto label$937;
					label$923:;
					fb_StrInit( (void*)&TMP$171$5, -1, (void*)"", 1, 0 );
					label$937:;
					uint8* vr$41 = LEXGETTEXT(  );
					__builtin_memset( &TMP$172$5, 0, 12 );
					FBSTRING* vr$44 = fb_StrConcat( &TMP$172$5, (void*)"in '", 5, (void*)vr$41, 0 );
					__builtin_memset( &TMP$173$5, 0, 12 );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$173$5, (void*)vr$44, -1, (void*)&TMP$171$5, -1 );
					__builtin_memset( &TMP$174$5, 0, 12 );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$174$5, (void*)vr$47, -1, (void*)"'", 2 );
					fb_StrAssign( (void*)&TMP$175$5, -1, (void*)vr$50, -1, 0 );
					ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$175$5, 0, (uint8*)0u );
					fb_StrDelete( (FBSTRING*)&TMP$175$5 );
					fb_StrDelete( (FBSTRING*)&TMP$171$5 );
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) = -2147483648u;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) = 0;
				}
				label$922:;
				label$921:;
			}
			goto label$917;
			label$920:;
			if( (FLAGS$1 & 8192) == 0 ) goto label$924;
			{
				if( (*(int32*)((uint8*)&ENV$ + 1040) & 8388608) == 0 ) goto label$926;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 36 ) goto label$928;
					{
						FBSTRING TMP$176$6;
						FBSTRING TMP$177$6;
						FBSTRING TMP$178$6;
						FBSTRING TMP$179$6;
						FBSTRING TMP$180$6;
						__builtin_memset( &TMP$180$6, 0, 12 );
						if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$929;
						FBSTRING* vr$67 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) );
						fb_StrInit( (void*)&TMP$176$6, -1, (void*)vr$67, -1, 0 );
						goto label$938;
						label$929:;
						fb_StrInit( (void*)&TMP$176$6, -1, (void*)"", 1, 0 );
						label$938:;
						uint8* vr$71 = LEXGETTEXT(  );
						__builtin_memset( &TMP$177$6, 0, 12 );
						FBSTRING* vr$74 = fb_StrConcat( &TMP$177$6, (void*)"in '", 5, (void*)vr$71, 0 );
						__builtin_memset( &TMP$178$6, 0, 12 );
						FBSTRING* vr$77 = fb_StrConcat( &TMP$178$6, (void*)vr$74, -1, (void*)&TMP$176$6, -1 );
						__builtin_memset( &TMP$179$6, 0, 12 );
						FBSTRING* vr$80 = fb_StrConcat( &TMP$179$6, (void*)vr$77, -1, (void*)"'", 2 );
						fb_StrAssign( (void*)&TMP$180$6, -1, (void*)vr$80, -1, 0 );
						ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$180$6, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$180$6 );
						fb_StrDelete( (FBSTRING*)&TMP$176$6 );
						*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) = -2147483648u;
						*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) = 0;
					}
					label$928:;
					label$927:;
				}
				goto label$925;
				label$926:;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) != 36 ) goto label$931;
					{
						if( (*(int32*)((uint8*)&ENV$ + 200) & 256) == 0 ) goto label$933;
						{
							FBSTRING TMP$181$7;
							FBSTRING TMP$182$7;
							FBSTRING TMP$183$7;
							FBSTRING TMP$184$7;
							FBSTRING TMP$185$7;
							__builtin_memset( &TMP$185$7, 0, 12 );
							if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$934;
							FBSTRING* vr$96 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) );
							fb_StrInit( (void*)&TMP$181$7, -1, (void*)vr$96, -1, 0 );
							goto label$939;
							label$934:;
							fb_StrInit( (void*)&TMP$181$7, -1, (void*)"", 1, 0 );
							label$939:;
							uint8* vr$100 = LEXGETTEXT(  );
							__builtin_memset( &TMP$182$7, 0, 12 );
							FBSTRING* vr$103 = fb_StrConcat( &TMP$182$7, (void*)"in '", 5, (void*)vr$100, 0 );
							__builtin_memset( &TMP$183$7, 0, 12 );
							FBSTRING* vr$106 = fb_StrConcat( &TMP$183$7, (void*)vr$103, -1, (void*)&TMP$181$7, -1 );
							__builtin_memset( &TMP$184$7, 0, 12 );
							FBSTRING* vr$109 = fb_StrConcat( &TMP$184$7, (void*)vr$106, -1, (void*)"'", 2 );
							fb_StrAssign( (void*)&TMP$185$7, -1, (void*)vr$109, -1, 0 );
							ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$185$7, 0, (uint8*)0u );
							fb_StrDelete( (FBSTRING*)&TMP$185$7 );
							fb_StrDelete( (FBSTRING*)&TMP$181$7 );
						}
						label$933:;
						label$932:;
					}
					goto label$930;
					label$931:;
					{
						FBSTRING TMP$186$6;
						FBSTRING TMP$187$6;
						FBSTRING TMP$188$6;
						FBSTRING TMP$189$6;
						FBSTRING TMP$190$6;
						__builtin_memset( &TMP$190$6, 0, 12 );
						if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) == 0 ) goto label$935;
						FBSTRING* vr$118 = fb_CHR( 1, *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) );
						fb_StrInit( (void*)&TMP$186$6, -1, (void*)vr$118, -1, 0 );
						goto label$940;
						label$935:;
						fb_StrInit( (void*)&TMP$186$6, -1, (void*)"", 1, 0 );
						label$940:;
						uint8* vr$122 = LEXGETTEXT(  );
						__builtin_memset( &TMP$187$6, 0, 12 );
						FBSTRING* vr$125 = fb_StrConcat( &TMP$187$6, (void*)"in '", 5, (void*)vr$122, 0 );
						__builtin_memset( &TMP$188$6, 0, 12 );
						FBSTRING* vr$128 = fb_StrConcat( &TMP$188$6, (void*)vr$125, -1, (void*)&TMP$186$6, -1 );
						__builtin_memset( &TMP$189$6, 0, 12 );
						FBSTRING* vr$131 = fb_StrConcat( &TMP$189$6, (void*)vr$128, -1, (void*)"'", 2 );
						fb_StrAssign( (void*)&TMP$190$6, -1, (void*)vr$131, -1, 0 );
						ERRREPORTWARN( 44, (uint8*)*(uint8**)&TMP$190$6, 0, (uint8*)0u );
						fb_StrDelete( (FBSTRING*)&TMP$190$6 );
						fb_StrDelete( (FBSTRING*)&TMP$186$6 );
					}
					label$930:;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) = -2147483648u;
					*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) = 0;
				}
				label$925:;
			}
			label$924:;
			label$917:;
		}
		label$916:;
		label$915:;
	}
	label$914:;
	label$913:;
	label$912:;
}

int32 HMATCHIDORKW( uint8* TXT$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$941:;
	{
		int32 TMP$191$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$191$2 = vr$1;
		if( TMP$191$2 == 0 ) goto label$945;
		label$946:;
		if( TMP$191$2 == 2 ) goto label$945;
		label$947:;
		if( TMP$191$2 != 1 ) goto label$944;
		label$945:;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)vr$2 );
			FBSTRING* vr$4 = fb_StrUcase2( (FBSTRING*)vr$3, 0 );
			int32 vr$5 = fb_StrCompare( (void*)vr$4, -1, (void*)TXT$1, 0 );
			if( vr$5 != 0 ) goto label$949;
			{
				LEXSKIPTOKEN( FLAGS$1 );
				fb$result$1 = -1;
				goto label$942;
			}
			label$949:;
			label$948:;
		}
		label$944:;
		label$943:;
	}
	fb$result$1 = 0;
	goto label$942;
	label$942:;
	return fb$result$1;
}

int32 HMATCH( int32 TOKEN$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$950:;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != TOKEN$1 ) goto label$953;
	{
		LEXSKIPTOKEN( FLAGS$1 );
		fb$result$1 = -1;
	}
	goto label$952;
	label$953:;
	{
		fb$result$1 = 0;
	}
	label$952:;
	label$951:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__lex( void )
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

static void HCOLLECTCHARFORDEBUGOUTPUT( uint32 CHAR$1 )
{
	label$44:;
	if( CHAR$1 >= 32u ) goto label$47;
	{
		{
			uint32 TMP$93$3;
			TMP$93$3 = CHAR$1;
			goto label$49;
			label$50:;
			{
				goto label$45;
			}
			goto label$48;
			label$51:;
			{
			}
			goto label$48;
			label$52:;
			{
				CHAR$1 = 63u;
			}
			goto label$48;
			label$49:;
			static const void* tmp$192[14] = {
				&&label$50,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$52,
				&&label$51,
				&&label$50,
				&&label$51,
				&&label$51,
				&&label$50,
			};
			if( TMP$93$3 > 13u ) goto label$52;
			goto *tmp$192[TMP$93$3 - 0u];
			label$48:;
		}
	}
	goto label$46;
	label$47:;
	if( CHAR$1 <= 255u ) goto label$53;
	{
		CHAR$1 = 63u;
	}
	label$53:;
	label$46:;
	DZSTRCONCATASSIGNC( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400), CHAR$1 );
	label$45:;
}

static uint32 HREADCHAR( void )
{
	uint32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	uint32 CHAR$1;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) <= 0 ) goto label$57;
	{
		if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$59;
		{
			CHAR$1 = (uint32)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596));
		}
		goto label$58;
		label$59:;
		{
			CHAR$1 = *(uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596);
		}
		label$58:;
		if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$61;
		{
			if( *(int32*)((uint8*)&ENV$ + 900) != 0 ) goto label$63;
			{
				if( *(int32*)((uint8*)&LEX$ + 840076) != 0 ) goto label$65;
				{
					*(int32*)((uint8*)&LEX$ + 840076) = -1;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400), (uint8*)" [Macro Expansion: " );
				}
				label$65:;
				label$64:;
				HCOLLECTCHARFORDEBUGOUTPUT( CHAR$1 );
			}
			label$63:;
			label$62:;
		}
		label$61:;
		label$60:;
	}
	goto label$56;
	label$57:;
	{
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) != 0 ) goto label$67;
		{
			int32 vr$10 = fb_FileEof( *(int32*)((uint8*)&ENV$ + 300) );
			if( vr$10 != 0 ) goto label$69;
			{
				int64 vr$11 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 300) );
				*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392) = (int32)vr$11;
				{
					uint32 TMP$96$5;
					TMP$96$5 = *(uint32*)((uint8*)&ENV$ + 576);
					goto label$71;
					label$72:;
					{
						int32 vr$16 = fb_FileGetStr( *(int32*)((uint8*)&ENV$ + 300), 0, (void*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620), 8193 );
						if( vr$16 != 0 ) goto label$74;
						{
							int64 vr$17 = fb_FileTell( *(int32*)((uint8*)&ENV$ + 300) );
							*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = (int32)(vr$17 - (int64)*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49392));
							*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16620);
						}
						label$74:;
						label$73:;
					}
					goto label$70;
					label$75:;
					{
						LEXREADUTF8(  );
					}
					goto label$70;
					label$76:;
					{
						LEXREADUTF16LE(  );
					}
					goto label$70;
					label$77:;
					{
						LEXREADUTF16BE(  );
					}
					goto label$70;
					label$78:;
					{
						LEXREADUTF32LE(  );
					}
					goto label$70;
					label$79:;
					{
						LEXREADUTF32BE(  );
					}
					goto label$70;
					label$71:;
					static const void* tmp$193[6] = {
						&&label$72,
						&&label$75,
						&&label$76,
						&&label$77,
						&&label$78,
						&&label$79,
					};
					if( TMP$96$5 > 5u ) goto label$70;
					goto *tmp$193[TMP$96$5 - 0u];
					label$70:;
				}
			}
			label$69:;
			label$68:;
		}
		label$67:;
		label$66:;
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) <= 0 ) goto label$81;
		{
			if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$83;
			{
				CHAR$1 = (uint32)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616));
			}
			goto label$82;
			label$83:;
			{
				CHAR$1 = *(uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616);
			}
			label$82:;
		}
		goto label$80;
		label$81:;
		{
			CHAR$1 = 0u;
		}
		label$80:;
		if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$85;
		{
			if( *(int32*)((uint8*)&ENV$ + 900) != 0 ) goto label$87;
			{
				if( *(int32*)((uint8*)&LEX$ + 840076) == 0 ) goto label$89;
				{
					*(int32*)((uint8*)&LEX$ + 840076) = 0;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400), (uint8*)" ] " );
				}
				label$89:;
				label$88:;
				HCOLLECTCHARFORDEBUGOUTPUT( CHAR$1 );
			}
			label$87:;
			label$86:;
		}
		label$85:;
		label$84:;
	}
	label$56:;
	fb$result$1 = CHAR$1;
	label$55:;
	return fb$result$1;
}

static void HSKIPCHAR( void )
{
	label$101:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) <= 0 ) goto label$104;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) + -1;
		if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$106;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) + 1);
		}
		goto label$105;
		label$106:;
		{
			*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) = (uint32*)((uint8*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16596) + 4);
		}
		label$105:;
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) != 0 ) goto label$108;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16580) = (struct $8FBSYMBOL*)0u;
		}
		label$108:;
		label$107:;
	}
	goto label$103;
	label$104:;
	if( *(uint32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16556) == 0u ) goto label$109;
	{
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16612) + -1;
		if( *(int32*)((uint8*)&ENV$ + 576) != 0 ) goto label$111;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) + 1);
		}
		goto label$110;
		label$111:;
		{
			*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) = (uint32*)((uint8*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16616) + 4);
		}
		label$110:;
	}
	label$109:;
	label$103:;
	label$102:;
}

static void HREADIDENTIFIER( uint8* PID$1, int32* TLEN$1, int32* DTYPE$1, int32* SUFFIXCHAR$1, $8LEXCHECK FLAGS$1 )
{
	label$124:;
	int32 SKIPCHAR$1;
	uint32 vr$0 = LEXCURRENTCHAR(  );
	*PID$1 = (uint8)vr$0;
	PID$1 = (uint8*)((uint8*)PID$1 + 1);
	*TLEN$1 = *TLEN$1 + 1;
	*SUFFIXCHAR$1 = 0;
	LEXEATCHAR(  );
	SKIPCHAR$1 = 0;
	label$126:;
	{
		uint32 C$2;
		uint32 vr$8 = LEXCURRENTCHAR(  );
		C$2 = vr$8;
		{
			uint32 TMP$98$3;
			TMP$98$3 = C$2;
			goto label$130;
			label$131:;
			{
			}
			goto label$129;
			label$132:;
			{
				if( (FLAGS$1 & 128) != 0 ) goto label$134;
				{
					goto label$127;
				}
				label$134:;
				label$133:;
			}
			goto label$129;
			label$135:;
			{
				goto label$127;
			}
			goto label$129;
			label$130:;
			static const void* tmp$194[77] = {
				&&label$132,
				&&label$135,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$135,
				&&label$131,
				&&label$135,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
				&&label$131,
			};
			if( (TMP$98$3 - 46u) > 76u ) goto label$135;
			goto *tmp$194[TMP$98$3 - 46u];
			label$129:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$137;
		{
			if( *TLEN$1 != 128 ) goto label$139;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$141;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 7, (uint8*)0u, 1, (uint8*)0u );
				}
				label$141:;
				label$140:;
				SKIPCHAR$1 = -1;
			}
			goto label$138;
			label$139:;
			{
				*PID$1 = (uint8)C$2;
				PID$1 = (uint8*)((uint8*)PID$1 + 1);
				*TLEN$1 = *TLEN$1 + 1;
			}
			label$138:;
		}
		label$137:;
		label$136:;
	}
	label$128:;
	goto label$126;
	label$127:;
	*PID$1 = (uint8)0u;
	*DTYPE$1 = -2147483648u;
	if( (FLAGS$1 & 8) != 0 ) goto label$143;
	{
		{
			uint32 TMP$99$3;
			uint32 vr$22 = LEXCURRENTCHAR(  );
			TMP$99$3 = vr$22;
			goto label$145;
			label$146:;
			{
				*DTYPE$1 = *(int32*)((uint8*)&ENV$ + 1044);
				*SUFFIXCHAR$1 = 37;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$147:;
			{
				*DTYPE$1 = 11;
				*SUFFIXCHAR$1 = 38;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$148:;
			{
				*DTYPE$1 = 15;
				*SUFFIXCHAR$1 = 33;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$149:;
			{
				uint32 vr$29 = LEXGETLOOKAHEADCHAR(  );
				if( vr$29 == 35u ) goto label$151;
				{
					*DTYPE$1 = 16;
					*SUFFIXCHAR$1 = 35;
					LEXEATCHAR(  );
				}
				label$151:;
				label$150:;
			}
			goto label$144;
			label$152:;
			{
				*DTYPE$1 = 17;
				*SUFFIXCHAR$1 = 36;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$145:;
			static const void* tmp$195[6] = {
				&&label$148,
				&&label$144,
				&&label$149,
				&&label$152,
				&&label$146,
				&&label$147,
			};
			if( (TMP$99$3 - 33u) > 5u ) goto label$144;
			goto *tmp$195[TMP$99$3 - 33u];
			label$144:;
		}
	}
	label$143:;
	label$142:;
	label$125:;
}

static uint64 HREADNONDECNUMBER( uint8** PNUM$1, int32* TLEN$1, int32* DTYPE$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$104$1;
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$153:;
	uint32 VALUE$1;
	uint32 C$1;
	uint32 FIRST_C$1;
	uint64 VALUE64$1;
	int32 LGT$1;
	int32 HAVEDIGITS$1;
	int32 SKIPCHAR$1;
	VALUE$1 = 0u;
	LGT$1 = 0;
	SKIPCHAR$1 = 0;
	HAVEDIGITS$1 = 0;
	uint32 vr$1 = LEXGETLOOKAHEADCHAR(  );
	C$1 = vr$1;
	{
		uint32 TMP$100$2;
		TMP$100$2 = C$1;
		goto label$156;
		label$157:;
		{
			C$1 = 79u;
		}
		goto label$155;
		label$158:;
		{
			LEXEATCHAR(  );
		}
		goto label$155;
		label$156:;
		static const void* tmp$196[8] = {
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
		};
		if( (TMP$100$2 - 48u) > 7u ) goto label$158;
		goto *tmp$196[TMP$100$2 - 48u];
		label$155:;
	}
	{
		uint32 TMP$101$2;
		TMP$101$2 = C$1;
		goto label$160;
		label$161:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$163;
			{
				label$164:;
				uint32 vr$14 = LEXCURRENTCHAR(  );
				if( vr$14 != 48u ) goto label$165;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1;
				}
				goto label$164;
				label$165:;
			}
			label$163:;
			label$162:;
			label$166:;
			{
				uint32 vr$23 = LEXCURRENTCHAR(  );
				C$1 = vr$23;
				{
					if( C$1 < 97u ) goto label$172;
					if( C$1 <= 102u ) goto label$171;
					label$172:;
					if( C$1 < 65u ) goto label$173;
					if( C$1 <= 70u ) goto label$171;
					label$173:;
					if( C$1 < 48u ) goto label$170;
					if( C$1 > 57u ) goto label$170;
					label$171:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1;
						if( SKIPCHAR$1 != 0 ) goto label$175;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							if( C$1 <= 9u ) goto label$177;
							{
								C$1 = C$1 + 4294967289u;
							}
							label$177:;
							label$176:;
							if( C$1 <= 16u ) goto label$179;
							{
								C$1 = C$1 + 4294967264u;
							}
							label$179:;
							label$178:;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 8 ) goto label$181;
							{
								if( LGT$1 != 9 ) goto label$183;
								{
									*DTYPE$1 = 13;
									VALUE64$1 = ((uint64)VALUE$1 << (4ull & 63)) + (uint64)C$1;
								}
								goto label$182;
								label$183:;
								if( LGT$1 != 17 ) goto label$184;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$186;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$186:;
									label$185:;
									SKIPCHAR$1 = -1;
								}
								goto label$182;
								label$184:;
								{
									VALUE64$1 = (VALUE64$1 << (4ull & 63)) + (uint64)C$1;
								}
								label$182:;
							}
							goto label$180;
							label$181:;
							{
								if( LGT$1 != 5 ) goto label$188;
								{
									*DTYPE$1 = 11;
								}
								label$188:;
								label$187:;
								VALUE$1 = (VALUE$1 << (4u & 31)) + C$1;
							}
							label$180:;
						}
						label$175:;
						label$174:;
					}
					goto label$169;
					label$170:;
					{
						goto label$167;
					}
					label$189:;
					label$169:;
				}
			}
			label$168:;
			goto label$166;
			label$167:;
		}
		goto label$159;
		label$190:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$192;
			{
				label$193:;
				uint32 vr$61 = LEXCURRENTCHAR(  );
				if( vr$61 != 48u ) goto label$194;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1;
				}
				goto label$193;
				label$194:;
			}
			label$192:;
			label$191:;
			uint32 vr$70 = LEXCURRENTCHAR(  );
			FIRST_C$1 = vr$70;
			label$195:;
			{
				uint32 vr$71 = LEXCURRENTCHAR(  );
				C$1 = vr$71;
				{
					if( C$1 < 48u ) goto label$199;
					if( C$1 > 55u ) goto label$199;
					label$200:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1;
						if( SKIPCHAR$1 != 0 ) goto label$202;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 10 ) goto label$204;
							{
								{
									uint32 TMP$102$9;
									TMP$102$9 = (uint32)LGT$1;
									goto label$206;
									label$207:;
									{
										if( FIRST_C$1 <= 51u ) goto label$209;
										{
											*DTYPE$1 = 13;
											VALUE64$1 = ((uint64)VALUE$1 << (3ull & 63)) + (uint64)C$1;
										}
										goto label$208;
										label$209:;
										{
											VALUE$1 = (VALUE$1 << (3u & 31)) + C$1;
										}
										label$208:;
									}
									goto label$205;
									label$210:;
									{
										int32 TMP$103$10;
										if( (*DTYPE$1 & 480) == 0 ) goto label$211;
										TMP$103$10 = 24;
										goto label$954;
										label$211:;
										TMP$103$10 = *DTYPE$1 & 31;
										label$954:;
										if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$103$10 * 28)) + 4) >= 8 ) goto label$213;
										{
											*DTYPE$1 = 13;
											VALUE64$1 = (uint64)VALUE$1;
										}
										label$213:;
										label$212:;
										VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
									}
									goto label$205;
									label$214:;
									{
										if( FIRST_C$1 <= 49u ) goto label$216;
										{
											if( (FLAGS$1 & 1) != 0 ) goto label$218;
											{
												ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
											}
											label$218:;
											label$217:;
											SKIPCHAR$1 = -1;
										}
										goto label$215;
										label$216:;
										{
											VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
										}
										label$215:;
									}
									goto label$205;
									label$219:;
									{
										if( (FLAGS$1 & 1) != 0 ) goto label$221;
										{
											ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
										}
										label$221:;
										label$220:;
										SKIPCHAR$1 = -1;
									}
									goto label$205;
									label$222:;
									{
										VALUE64$1 = (VALUE64$1 << (3ull & 63)) + (uint64)C$1;
									}
									goto label$205;
									label$206:;
									static const void* tmp$197[13] = {
										&&label$207,
										&&label$210,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$222,
										&&label$214,
										&&label$219,
									};
									if( (TMP$102$9 - 11u) > 12u ) goto label$222;
									goto *tmp$197[TMP$102$9 - 11u];
									label$205:;
								}
							}
							goto label$203;
							label$204:;
							{
								if( LGT$1 != 6 ) goto label$224;
								{
									if( FIRST_C$1 <= 49u ) goto label$226;
									{
										*DTYPE$1 = 11;
									}
									label$226:;
									label$225:;
								}
								goto label$223;
								label$224:;
								if( LGT$1 != 7 ) goto label$227;
								{
									*DTYPE$1 = 11;
								}
								label$227:;
								label$223:;
								VALUE$1 = (VALUE$1 << (3u & 31)) + C$1;
							}
							label$203:;
						}
						label$202:;
						label$201:;
					}
					goto label$198;
					label$199:;
					{
						goto label$196;
					}
					label$228:;
					label$198:;
				}
			}
			label$197:;
			goto label$195;
			label$196:;
		}
		goto label$159;
		label$229:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2);
			*TLEN$1 = *TLEN$1 + 2;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9) != 0 ) goto label$231;
			{
				label$232:;
				uint32 vr$124 = LEXCURRENTCHAR(  );
				if( vr$124 != 48u ) goto label$233;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*TLEN$1 = *TLEN$1 + 1;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1;
				}
				goto label$232;
				label$233:;
			}
			label$231:;
			label$230:;
			label$234:;
			{
				uint32 vr$133 = LEXCURRENTCHAR(  );
				C$1 = vr$133;
				{
					if( C$1 == 48u ) goto label$239;
					label$240:;
					if( C$1 != 49u ) goto label$238;
					label$239:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1;
						if( SKIPCHAR$1 != 0 ) goto label$242;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*TLEN$1 = *TLEN$1 + 1;
							C$1 = C$1 + 4294967248u;
							LGT$1 = LGT$1 + 1;
							if( LGT$1 <= 32 ) goto label$244;
							{
								if( LGT$1 != 33 ) goto label$246;
								{
									*DTYPE$1 = 13;
									VALUE64$1 = ((uint64)VALUE$1 << (1ull & 63)) + (uint64)C$1;
								}
								goto label$245;
								label$246:;
								if( LGT$1 != 65 ) goto label$247;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$249;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$249:;
									label$248:;
									SKIPCHAR$1 = -1;
								}
								goto label$245;
								label$247:;
								{
									VALUE64$1 = (VALUE64$1 << (1ull & 63)) + (uint64)C$1;
								}
								label$245:;
							}
							goto label$243;
							label$244:;
							{
								if( LGT$1 != 17 ) goto label$251;
								{
									*DTYPE$1 = 11;
								}
								label$251:;
								label$250:;
								VALUE$1 = (VALUE$1 << (1u & 31)) + C$1;
							}
							label$243:;
						}
						label$242:;
						label$241:;
					}
					goto label$237;
					label$238:;
					{
						goto label$235;
					}
					label$252:;
					label$237:;
				}
			}
			label$236:;
			goto label$234;
			label$235:;
		}
		goto label$159;
		label$253:;
		{
			goto label$154;
		}
		goto label$159;
		label$160:;
		static const void* tmp$198[46] = {
			&&label$229,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$161,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$190,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$229,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$161,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$253,
			&&label$190,
		};
		if( (TMP$101$2 - 66u) > 45u ) goto label$253;
		goto *tmp$198[TMP$101$2 - 66u];
		label$159:;
	}
	if( LGT$1 != 0 ) goto label$255;
	{
		if( HAVEDIGITS$1 != 0 ) goto label$257;
		{
			if( (FLAGS$1 & 9) != 0 ) goto label$259;
			{
				ERRREPORTWARN( 48, (uint8*)0u, 1, (uint8*)0u );
			}
			label$259:;
			label$258:;
		}
		label$257:;
		label$256:;
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
		*TLEN$1 = *TLEN$1 + 1;
	}
	label$255:;
	label$254:;
	if( (*DTYPE$1 & 480) == 0 ) goto label$260;
	TMP$104$1 = 24;
	goto label$955;
	label$260:;
	TMP$104$1 = *DTYPE$1 & 31;
	label$955:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$1 * 28)) + 4) >= 8 ) goto label$262;
	{
		fb$result$1 = (uint64)VALUE$1;
	}
	goto label$261;
	label$262:;
	{
		fb$result$1 = VALUE64$1;
	}
	label$261:;
	label$154:;
	return fb$result$1;
}

static void HREADFLOATNUMBER( uint8** PNUM$1, struct $7FBTOKEN* T$1, int32 HASDOT$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$105$1;
	label$263:;
	uint32 C$1;
	int32 LLEN$1;
	int32 SKIPCHAR$1;
	*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1072);
	LLEN$1 = *(int32*)((uint8*)T$1 + 4112);
	SKIPCHAR$1 = 0;
	label$265:;
	{
		uint32 vr$2 = LEXCURRENTCHAR(  );
		C$1 = vr$2;
		{
			if( C$1 < 48u ) goto label$269;
			if( C$1 > 57u ) goto label$269;
			label$270:;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$272;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
				}
				label$272:;
				label$271:;
			}
			goto label$268;
			label$269:;
			{
				goto label$266;
			}
			label$273:;
			label$268:;
		}
		if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$275;
		{
			if( SKIPCHAR$1 != 0 ) goto label$277;
			{
				SKIPCHAR$1 = -1;
			}
			goto label$276;
			label$277:;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$279;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
				}
				label$279:;
				label$278:;
			}
			label$276:;
		}
		label$275:;
		label$274:;
	}
	label$267:;
	goto label$265;
	label$266:;
	if( HASDOT$1 == 0 ) goto label$280;
	TMP$105$1 = 1;
	goto label$956;
	label$280:;
	TMP$105$1 = 0;
	label$956:;
	if( *(int32*)((uint8*)T$1 + 4112) <= (TMP$105$1 + 7) ) goto label$282;
	{
		*(int32*)((uint8*)T$1 + 8) = 16;
	}
	label$282:;
	label$281:;
	uint32 vr$18 = LEXCURRENTCHAR(  );
	C$1 = vr$18;
	{
		uint32 TMP$106$2;
		TMP$106$2 = C$1;
		goto label$284;
		label$285:;
		{
			if( (-(C$1 == 100u) | -(C$1 == 68u)) == 0 ) goto label$287;
			{
				*(int32*)((uint8*)T$1 + 8) = 16;
			}
			label$287:;
			label$286:;
			if( SKIPCHAR$1 != 0 ) goto label$289;
			{
				if( FLAGS$1 != 0 ) goto label$291;
				{
					C$1 = 101u;
				}
				label$291:;
				label$290:;
				*(*PNUM$1) = (uint8)C$1;
				*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
				*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
			}
			label$289:;
			label$288:;
			LEXEATCHAR(  );
			uint32 vr$32 = LEXCURRENTCHAR(  );
			C$1 = vr$32;
			if( (-(C$1 == 43u) | -(C$1 == 45u)) == 0 ) goto label$293;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$295;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
			label$296:;
			{
				uint32 vr$45 = LEXCURRENTCHAR(  );
				C$1 = vr$45;
				{
					uint32 TMP$107$5;
					TMP$107$5 = C$1;
					goto label$300;
					label$301:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0 ) goto label$303;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
							*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
						}
						label$303:;
						label$302:;
					}
					goto label$299;
					label$304:;
					{
						goto label$297;
					}
					goto label$299;
					label$300:;
					static const void* tmp$199[10] = {
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
						&&label$301,
					};
					if( (TMP$107$5 - 48u) > 9u ) goto label$304;
					goto *tmp$199[TMP$107$5 - 48u];
					label$299:;
				}
				if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$306;
				{
					if( SKIPCHAR$1 != 0 ) goto label$308;
					{
						SKIPCHAR$1 = -1;
					}
					goto label$307;
					label$308:;
					{
						if( (FLAGS$1 & 1) != 0 ) goto label$310;
						{
							FLAGS$1 = FLAGS$1 | 1;
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
						}
						label$310:;
						label$309:;
					}
					label$307:;
				}
				label$306:;
				label$305:;
			}
			label$298:;
			goto label$296;
			label$297:;
		}
		goto label$283;
		label$284:;
		static const void* tmp$200[34] = {
			&&label$285,
			&&label$285,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$283,
			&&label$285,
			&&label$285,
		};
		if( (TMP$106$2 - 68u) > 33u ) goto label$283;
		goto *tmp$200[TMP$106$2 - 68u];
		label$283:;
	}
	{
		uint32 TMP$108$2;
		uint32 vr$58 = LEXCURRENTCHAR(  );
		TMP$108$2 = vr$58;
		goto label$312;
		label$313:;
		{
			*(int32*)((uint8*)T$1 + 8) = 15;
			if( (FLAGS$1 & 1032) != 0 ) goto label$315;
			{
				LEXEATCHAR(  );
			}
			label$315:;
			label$314:;
		}
		goto label$311;
		label$316:;
		{
			*(int32*)((uint8*)T$1 + 8) = 15;
			if( (FLAGS$1 & 8) != 0 ) goto label$318;
			{
				LEXEATCHAR(  );
			}
			label$318:;
			label$317:;
		}
		goto label$311;
		label$319:;
		{
			*(int32*)((uint8*)T$1 + 8) = 16;
			if( (FLAGS$1 & 8) != 0 ) goto label$321;
			{
				LEXEATCHAR(  );
			}
			label$321:;
			label$320:;
		}
		goto label$311;
		label$312:;
		static const void* tmp$201[70] = {
			&&label$316,
			&&label$311,
			&&label$319,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$313,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$311,
			&&label$313,
		};
		if( (TMP$108$2 - 33u) > 69u ) goto label$311;
		goto *tmp$201[TMP$108$2 - 33u];
		label$311:;
	}
	if( FLAGS$1 != 0 ) goto label$323;
	{
		if( (*(int32*)((uint8*)T$1 + 4112) - LLEN$1) != 0 ) goto label$325;
		{
			*(*PNUM$1) = (uint8)48u;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
			*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
		}
		label$325:;
		label$324:;
	}
	label$323:;
	label$322:;
	label$264:;
}

static void READNUMBERCHARS( struct $7FBTOKEN* T$1, $8LEXCHECK* FLAGS$1, uint8** PNUM$1, int32* SKIPCHAR$1, uint64* VALUE$1 )
{
	label$326:;
	int32 SAVE_FIRST_LEADING_ZERO$1;
	SAVE_FIRST_LEADING_ZERO$1 = -((*(int32*)FLAGS$1 & 9) != 0);
	uint64 VALUE_PREV$1;
	__builtin_memset( &VALUE_PREV$1, 0, 8 );
	label$328:;
	{
		uint32 C$2;
		uint32 vr$4 = LEXCURRENTCHAR(  );
		C$2 = vr$4;
		{
			uint32 TMP$109$3;
			TMP$109$3 = C$2;
			goto label$332;
			label$333:;
			{
				LEXEATCHAR(  );
				if( (((-(C$2 != 48u) | -(*(int32*)((uint8*)T$1 + 4112) > 0)) | SAVE_FIRST_LEADING_ZERO$1) & ~(*SKIPCHAR$1)) == 0 ) goto label$335;
				{
					*(*PNUM$1) = (uint8)C$2;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
					*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
					*VALUE$1 = ((*VALUE$1 << (3 & 63)) + (*VALUE$1 << (1 & 63))) + (uint64)(C$2 + 4294967248u);
				}
				label$335:;
				label$334:;
			}
			goto label$331;
			label$336:;
			{
				int32 HASDOT$4;
				HASDOT$4 = 0;
				if( C$2 != 46u ) goto label$338;
				{
					LEXEATCHAR(  );
					if( *SKIPCHAR$1 != 0 ) goto label$340;
					{
						*(*PNUM$1) = (uint8)46u;
						*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
						*(int32*)((uint8*)T$1 + 4112) = *(int32*)((uint8*)T$1 + 4112) + 1;
					}
					label$340:;
					label$339:;
					HASDOT$4 = -1;
				}
				label$338:;
				label$337:;
				HREADFLOATNUMBER( PNUM$1, T$1, HASDOT$4, *FLAGS$1 );
				goto label$329;
			}
			goto label$331;
			label$341:;
			{
				goto label$329;
			}
			goto label$331;
			label$332:;
			static const void* tmp$202[56] = {
				&&label$336,
				&&label$341,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$333,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$336,
				&&label$336,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$341,
				&&label$336,
				&&label$336,
			};
			if( (TMP$109$3 - 46u) > 55u ) goto label$341;
			goto *tmp$202[TMP$109$3 - 46u];
			label$331:;
		}
		if( (*(int32*)FLAGS$1 & 8) != 0 ) goto label$343;
		{
			if( *SKIPCHAR$1 != 0 ) goto label$345;
			{
				{
					uint32 TMP$110$5;
					TMP$110$5 = *(uint32*)((uint8*)T$1 + 4112);
					goto label$347;
					label$348:;
					{
						if( *VALUE$1 <= 32767ull ) goto label$350;
						{
							*(int32*)((uint8*)T$1 + 8) = 11;
						}
						label$350:;
						label$349:;
					}
					goto label$346;
					label$351:;
					{
						*(int32*)((uint8*)T$1 + 8) = 11;
					}
					goto label$346;
					label$352:;
					{
						if( *VALUE$1 <= 2147483647ull ) goto label$354;
						{
							if( *VALUE$1 <= 4294967295ull ) goto label$356;
							{
								*(int32*)((uint8*)T$1 + 8) = 13;
							}
							goto label$355;
							label$356:;
							{
								*(int32*)((uint8*)T$1 + 8) = 12;
							}
							label$355:;
						}
						label$354:;
						label$353:;
					}
					goto label$346;
					label$357:;
					{
						*(int32*)((uint8*)T$1 + 8) = 13;
					}
					goto label$346;
					label$358:;
					{
						if( *VALUE$1 <= 9223372036854775807ull ) goto label$360;
						{
							*(int32*)((uint8*)T$1 + 8) = 14;
						}
						label$360:;
						label$359:;
						VALUE_PREV$1 = *VALUE$1;
					}
					goto label$346;
					label$361:;
					{
						*(int32*)((uint8*)T$1 + 8) = 14;
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$363;
						{
							if( (-(VALUE_PREV$1 > 1844674407370955161ull) | -((*VALUE$1 & 9223372036854775808ull) == 0ull)) == 0 ) goto label$365;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
								*SKIPCHAR$1 = -1;
							}
							label$365:;
							label$364:;
						}
						label$363:;
						label$362:;
					}
					goto label$346;
					label$366:;
					{
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$368;
						{
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							*SKIPCHAR$1 = -1;
						}
						label$368:;
						label$367:;
					}
					goto label$346;
					label$347:;
					static const void* tmp$203[17] = {
						&&label$348,
						&&label$351,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$352,
						&&label$357,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$346,
						&&label$358,
						&&label$361,
						&&label$366,
					};
					if( (TMP$110$5 - 5u) > 16u ) goto label$346;
					goto *tmp$203[TMP$110$5 - 5u];
					label$346:;
				}
				if( *(int32*)((uint8*)T$1 + 4112) != 64 ) goto label$370;
				{
					if( *SKIPCHAR$1 != 0 ) goto label$372;
					{
						*SKIPCHAR$1 = -1;
					}
					goto label$371;
					label$372:;
					{
						if( (*(int32*)FLAGS$1 & 1) != 0 ) goto label$374;
						{
							*FLAGS$1 = *(int32*)FLAGS$1 | 1;
							ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
						}
						label$374:;
						label$373:;
					}
					label$371:;
				}
				label$370:;
				label$369:;
			}
			label$345:;
			label$344:;
		}
		label$343:;
		label$342:;
	}
	label$330:;
	goto label$328;
	label$329:;
	if( *(int32*)((uint8*)T$1 + 4112) != 0 ) goto label$376;
	{
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1);
		*(int32*)((uint8*)T$1 + 4112) = 1;
	}
	label$376:;
	label$375:;
	label$327:;
}

static void HREADNUMBER( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int32 TMP$113$1;
	label$377:;
	*(int32*)((uint8*)T$1 + 8) = 5;
	int32 HAVE_U_SUFFIX$1;
	HAVE_U_SUFFIX$1 = 0;
	int32 SKIPCHAR$1;
	SKIPCHAR$1 = 0;
	uint64 VALUE$1;
	__builtin_memset( &VALUE$1, 0, 8 );
	uint8* PNUM$1;
	PNUM$1 = (uint8*)((uint8*)T$1 + 12);
	*PNUM$1 = (uint8)0u;
	*(int32*)((uint8*)T$1 + 4112) = 0;
	{
		uint32 TMP$111$2;
		uint32 vr$6 = LEXCURRENTCHAR(  );
		TMP$111$2 = vr$6;
		goto label$380;
		label$381:;
		{
			READNUMBERCHARS( T$1, &FLAGS$1, (uint8**)&PNUM$1, &SKIPCHAR$1, &VALUE$1 );
		}
		goto label$379;
		label$382:;
		{
			LEXEATCHAR(  );
			*PNUM$1 = (uint8)46u;
			PNUM$1 = (uint8*)(PNUM$1 + 1);
			*(int32*)((uint8*)T$1 + 4112) = 1;
			HREADFLOATNUMBER( (uint8**)&PNUM$1, T$1, -1, FLAGS$1 );
		}
		goto label$379;
		label$383:;
		{
			*(int32*)((uint8*)T$1 + 4112) = 0;
			uint64 vr$21 = HREADNONDECNUMBER( (uint8**)&PNUM$1, (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), FLAGS$1 );
			VALUE$1 = vr$21;
		}
		goto label$379;
		label$380:;
		static const void* tmp$204[20] = {
			&&label$383,
			&&label$379,
			&&label$379,
			&&label$379,
			&&label$379,
			&&label$379,
			&&label$379,
			&&label$379,
			&&label$382,
			&&label$379,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
			&&label$381,
		};
		if( (TMP$111$2 - 38u) > 19u ) goto label$379;
		goto *tmp$204[TMP$111$2 - 38u];
		label$379:;
	}
	*PNUM$1 = (uint8)0u;
	{
		int32 TMP$112$2;
		TMP$112$2 = *(int32*)((uint8*)T$1 + 8);
		if( TMP$112$2 != 5 ) goto label$385;
		label$386:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1048);
		}
		goto label$384;
		label$385:;
		if( TMP$112$2 != 6 ) goto label$387;
		label$388:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1052);
		}
		goto label$384;
		label$387:;
		if( TMP$112$2 != 11 ) goto label$389;
		label$390:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1056);
		}
		goto label$384;
		label$389:;
		if( TMP$112$2 != 12 ) goto label$391;
		label$392:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1060);
		}
		goto label$384;
		label$391:;
		if( TMP$112$2 != 13 ) goto label$393;
		label$394:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1064);
		}
		goto label$384;
		label$393:;
		if( TMP$112$2 != 14 ) goto label$395;
		label$396:;
		{
			*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1068);
		}
		label$395:;
		label$384:;
	}
	if( (*(int32*)((uint8*)T$1 + 8) & 480) == 0 ) goto label$397;
	TMP$113$1 = 24;
	goto label$957;
	label$397:;
	TMP$113$1 = *(int32*)((uint8*)T$1 + 8) & 31;
	label$957:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$113$1 * 28)) == 1 ) goto label$399;
	{
		if( (FLAGS$1 & 8) != 0 ) goto label$401;
		{
			if( (FLAGS$1 & 1024) != 0 ) goto label$403;
			{
				{
					uint32 TMP$114$5;
					uint32 vr$37 = LEXCURRENTCHAR(  );
					TMP$114$5 = vr$37;
					if( TMP$114$5 == 85u ) goto label$406;
					label$407:;
					if( TMP$114$5 != 117u ) goto label$405;
					label$406:;
					{
						LEXEATCHAR(  );
						int32 vr$39 = TYPETOUNSIGNED( *(int32*)((uint8*)T$1 + 8) );
						*(int32*)((uint8*)T$1 + 8) = vr$39;
						HAVE_U_SUFFIX$1 = -1;
					}
					label$405:;
					label$404:;
				}
			}
			label$403:;
			label$402:;
			{
				uint32 TMP$115$4;
				uint32 vr$41 = LEXCURRENTCHAR(  );
				TMP$115$4 = vr$41;
				goto label$409;
				label$410:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$412;
					{
						LEXEATCHAR(  );
						uint32 C$6;
						uint32 vr$43 = LEXCURRENTCHAR(  );
						C$6 = vr$43;
						if( (-(C$6 == 76u) | -(C$6 == 108u)) == 0 ) goto label$414;
						{
							$11FB_DATATYPE TMP$116$7;
							LEXEATCHAR(  );
							if( HAVE_U_SUFFIX$1 == 0 ) goto label$415;
							TMP$116$7 = 14;
							goto label$958;
							label$415:;
							TMP$116$7 = 13;
							label$958:;
							*(int32*)((uint8*)T$1 + 8) = TMP$116$7;
						}
						goto label$413;
						label$414:;
						{
							$11FB_DATATYPE TMP$117$7;
							if( VALUE$1 <= 4294967295ull ) goto label$417;
							{
								if( SKIPCHAR$1 != 0 ) goto label$419;
								{
									if( (FLAGS$1 & 1) != 0 ) goto label$421;
									{
										ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
									}
									label$421:;
									label$420:;
								}
								label$419:;
								label$418:;
							}
							label$417:;
							label$416:;
							if( HAVE_U_SUFFIX$1 == 0 ) goto label$422;
							TMP$117$7 = 12;
							goto label$959;
							label$422:;
							TMP$117$7 = 11;
							label$959:;
							*(int32*)((uint8*)T$1 + 8) = TMP$117$7;
						}
						label$413:;
					}
					label$412:;
					label$411:;
				}
				goto label$408;
				label$423:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$425;
					{
						if( HAVE_U_SUFFIX$1 != 0 ) goto label$427;
						{
							*(int32*)((uint8*)T$1 + 8) = 15;
							LEXEATCHAR(  );
						}
						label$427:;
						label$426:;
					}
					label$425:;
					label$424:;
				}
				goto label$408;
				label$428:;
				{
					if( (FLAGS$1 & 1024) != 0 ) goto label$430;
					{
						if( HAVE_U_SUFFIX$1 != 0 ) goto label$432;
						{
							*(int32*)((uint8*)T$1 + 8) = 16;
							LEXEATCHAR(  );
						}
						label$432:;
						label$431:;
					}
					label$430:;
					label$429:;
				}
				goto label$408;
				label$433:;
				{
					int32 WARN$5;
					WARN$5 = 0;
					{
						int32 TMP$118$6;
						int32 TMP$119$6;
						if( (*(int32*)((uint8*)&ENV$ + 1044) & 480) == 0 ) goto label$434;
						TMP$118$6 = 24;
						goto label$960;
						label$434:;
						TMP$118$6 = *(int32*)((uint8*)&ENV$ + 1044) & 31;
						label$960:;
						TMP$119$6 = *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$118$6 * 28)) + 4);
						if( TMP$119$6 != 2 ) goto label$436;
						label$437:;
						{
							WARN$5 = -(VALUE$1 > 65535ull);
						}
						goto label$435;
						label$436:;
						if( TMP$119$6 != 4 ) goto label$438;
						label$439:;
						{
							WARN$5 = -(VALUE$1 > 4294967295ull);
						}
						label$438:;
						label$435:;
					}
					if( WARN$5 == 0 ) goto label$441;
					{
						if( SKIPCHAR$1 != 0 ) goto label$443;
						{
							if( (FLAGS$1 & 1) != 0 ) goto label$445;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							}
							label$445:;
							label$444:;
						}
						label$443:;
						label$442:;
					}
					label$441:;
					label$440:;
					*(int32*)((uint8*)T$1 + 8) = *(int32*)((uint8*)&ENV$ + 1044);
					LEXEATCHAR(  );
				}
				goto label$408;
				label$446:;
				{
					if( VALUE$1 <= 4294967295ull ) goto label$448;
					{
						if( SKIPCHAR$1 != 0 ) goto label$450;
						{
							if( (FLAGS$1 & 1) != 0 ) goto label$452;
							{
								ERRREPORTWARN( 8, (uint8*)0u, 1, (uint8*)0u );
							}
							label$452:;
							label$451:;
						}
						label$450:;
						label$449:;
					}
					label$448:;
					label$447:;
					*(int32*)((uint8*)T$1 + 8) = 11;
					LEXEATCHAR(  );
				}
				goto label$408;
				label$453:;
				{
					if( HAVE_U_SUFFIX$1 != 0 ) goto label$455;
					{
						*(int32*)((uint8*)T$1 + 8) = 15;
						LEXEATCHAR(  );
					}
					label$455:;
					label$454:;
				}
				goto label$408;
				label$456:;
				{
					if( HAVE_U_SUFFIX$1 != 0 ) goto label$458;
					{
						uint32 vr$64 = LEXGETLOOKAHEADCHAR(  );
						if( vr$64 == 35u ) goto label$460;
						{
							*(int32*)((uint8*)T$1 + 8) = 16;
							LEXEATCHAR(  );
						}
						label$460:;
						label$459:;
					}
					label$458:;
					label$457:;
				}
				goto label$408;
				label$409:;
				static const void* tmp$205[76] = {
					&&label$453,
					&&label$408,
					&&label$456,
					&&label$408,
					&&label$433,
					&&label$446,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$428,
					&&label$408,
					&&label$423,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$410,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$428,
					&&label$408,
					&&label$423,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$408,
					&&label$410,
				};
				if( (TMP$115$4 - 33u) > 75u ) goto label$408;
				goto *tmp$205[TMP$115$4 - 33u];
				label$408:;
			}
		}
		label$401:;
		label$400:;
	}
	label$399:;
	label$398:;
	*(int32*)((uint8*)T$1 + 4) = 3;
	*(int32*)T$1 = *(int32*)((uint8*)T$1 + 8);
	label$378:;
}

static void HREADSTRING( struct $7FBTOKEN* TK$1, uint8* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$461:;
	int32 LGT$1;
	int32 HASESC$1;
	int32 ESCAPED$1;
	int32 SKIPCHAR$1;
	uint32 CHAR$1;
	*PS$1 = (uint8)0u;
	LGT$1 = 0;
	HASESC$1 = 0;
	ESCAPED$1 = -(*(int32*)TK$1 == 263);
	SKIPCHAR$1 = 0;
	if( (FLAGS$1 & 16) == 0 ) goto label$464;
	{
		uint32 vr$4 = LEXCURRENTCHAR(  );
		*PS$1 = (uint8)vr$4;
		PS$1 = (uint8*)((uint8*)PS$1 + 1);
		LGT$1 = LGT$1 + 1;
	}
	label$464:;
	label$463:;
	LEXEATCHAR(  );
	label$465:;
	{
		uint32 vr$9 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$9;
		if( CHAR$1 != 34u ) goto label$469;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16) == 0 ) goto label$471;
			{
				if( SKIPCHAR$1 != 0 ) goto label$473;
				{
					*PS$1 = (uint8)34u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$473:;
				label$472:;
			}
			label$471:;
			label$470:;
			uint32 vr$14 = LEXCURRENTCHAR(  );
			CHAR$1 = vr$14;
			if( CHAR$1 == 34u ) goto label$475;
			{
				goto label$466;
				label$475:;
			}
		}
		goto label$468;
		label$469:;
		if( CHAR$1 != 27u ) goto label$476;
		{
			if( (FLAGS$1 & 16) != 0 ) goto label$478;
			{
				if( SKIPCHAR$1 != 0 ) goto label$480;
				{
					*PS$1 = (uint8)27u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$480:;
				label$479:;
			}
			label$478:;
			label$477:;
		}
		goto label$468;
		label$476:;
		if( CHAR$1 != 92u ) goto label$481;
		{
			HASESC$1 = -1;
			if( ESCAPED$1 == 0 ) goto label$483;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$485;
				{
					*PS$1 = (uint8)92u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1);
					LGT$1 = LGT$1 + 1;
				}
				label$485:;
				label$484:;
				uint32 vr$22 = LEXCURRENTCHAR(  );
				CHAR$1 = vr$22;
			}
			label$483:;
			label$482:;
		}
		label$481:;
		label$468:;
		{
			if( CHAR$1 == 0u ) goto label$488;
			label$489:;
			if( CHAR$1 == 13u ) goto label$488;
			label$490:;
			if( CHAR$1 != 10u ) goto label$487;
			label$488:;
			{
				if( (FLAGS$1 & 9) != 0 ) goto label$492;
				{
					ERRREPORTWARN( 12, (uint8*)0u, 1, (uint8*)0u );
				}
				label$492:;
				label$491:;
				goto label$466;
			}
			label$487:;
			label$486:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$494;
		{
			if( LGT$1 != 1024 ) goto label$496;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$498;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
				}
				label$498:;
				label$497:;
				SKIPCHAR$1 = -1;
			}
			goto label$495;
			label$496:;
			{
				*PS$1 = (uint8)CHAR$1;
				PS$1 = (uint8*)((uint8*)PS$1 + 1);
				LGT$1 = LGT$1 + 1;
			}
			label$495:;
		}
		label$494:;
		label$493:;
	}
	label$467:;
	goto label$465;
	label$466:;
	*PS$1 = (uint8)0u;
	*(int32*)((uint8*)TK$1 + 8) = 4;
	*(int32*)((uint8*)TK$1 + 4112) = LGT$1;
	*(int32*)((uint8*)TK$1 + 4120) = HASESC$1;
	label$462:;
}

static void HREADWSTR( struct $7FBTOKEN* TK$1, uint32* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$499:;
	int32 LGT$1;
	int32 HASESC$1;
	int32 ESCAPED$1;
	int32 SKIPCHAR$1;
	uint32 CHAR$1;
	*PS$1 = (uint32)0u;
	LGT$1 = 0;
	HASESC$1 = 0;
	ESCAPED$1 = -(*(int32*)TK$1 == 263);
	SKIPCHAR$1 = 0;
	if( (FLAGS$1 & 16) == 0 ) goto label$502;
	{
		uint32 vr$4 = LEXCURRENTCHAR(  );
		*PS$1 = (uint32)vr$4;
		PS$1 = (uint32*)((uint8*)PS$1 + 4);
		LGT$1 = LGT$1 + 1;
	}
	label$502:;
	label$501:;
	LEXEATCHAR(  );
	label$503:;
	{
		uint32 vr$8 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$8;
		if( CHAR$1 != 34u ) goto label$507;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16) == 0 ) goto label$509;
			{
				if( SKIPCHAR$1 != 0 ) goto label$511;
				{
					*PS$1 = (uint32)34u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$511:;
				label$510:;
			}
			label$509:;
			label$508:;
			uint32 vr$13 = LEXCURRENTCHAR(  );
			CHAR$1 = vr$13;
			if( CHAR$1 == 34u ) goto label$513;
			{
				goto label$504;
				label$513:;
			}
		}
		goto label$506;
		label$507:;
		if( CHAR$1 != 27u ) goto label$514;
		{
			if( (FLAGS$1 & 16) != 0 ) goto label$516;
			{
				if( SKIPCHAR$1 != 0 ) goto label$518;
				{
					*PS$1 = (uint32)27u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$518:;
				label$517:;
			}
			label$516:;
			label$515:;
		}
		goto label$506;
		label$514:;
		if( CHAR$1 != 92u ) goto label$519;
		{
			HASESC$1 = -1;
			if( ESCAPED$1 == 0 ) goto label$521;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0 ) goto label$523;
				{
					*PS$1 = (uint32)92u;
					PS$1 = (uint32*)((uint8*)PS$1 + 4);
					LGT$1 = LGT$1 + 1;
				}
				label$523:;
				label$522:;
				uint32 vr$21 = LEXCURRENTCHAR(  );
				CHAR$1 = vr$21;
			}
			label$521:;
			label$520:;
		}
		label$519:;
		label$506:;
		{
			if( CHAR$1 == 0u ) goto label$526;
			label$527:;
			if( CHAR$1 == 13u ) goto label$526;
			label$528:;
			if( CHAR$1 != 10u ) goto label$525;
			label$526:;
			{
				if( (FLAGS$1 & 9) != 0 ) goto label$530;
				{
					ERRREPORTWARN( 12, (uint8*)0u, 1, (uint8*)0u );
				}
				label$530:;
				label$529:;
				goto label$504;
			}
			label$525:;
			label$524:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0 ) goto label$532;
		{
			if( LGT$1 != 1024 ) goto label$534;
			{
				if( (FLAGS$1 & 1) != 0 ) goto label$536;
				{
					FLAGS$1 = FLAGS$1 | 1;
					ERRREPORTWARN( 9, (uint8*)0u, 1, (uint8*)0u );
				}
				label$536:;
				label$535:;
				SKIPCHAR$1 = -1;
			}
			goto label$533;
			label$534:;
			{
				*PS$1 = (uint32)CHAR$1;
				PS$1 = (uint32*)((uint8*)PS$1 + 4);
				LGT$1 = LGT$1 + 1;
			}
			label$533:;
		}
		label$532:;
		label$531:;
	}
	label$505:;
	goto label$503;
	label$504:;
	*PS$1 = (uint32)0u;
	*(int32*)((uint8*)TK$1 + 8) = 7;
	*(int32*)((uint8*)TK$1 + 4112) = LGT$1;
	*(int32*)((uint8*)TK$1 + 4120) = HASESC$1;
	label$500:;
}

static void HCHECKPERIODS( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	label$537:;
	int32 READFULLID$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$540;
	{
		READFULLID$1 = 0;
		uint32 vr$0 = LEXCURRENTCHAR(  );
		if( vr$0 != 46u ) goto label$542;
		{
			if( *(int32*)*(struct $8FBSYMBOL**)CHAIN_$1 == 8 ) goto label$544;
			{
				READFULLID$1 = -1;
				label$545:;
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$546;
				{
					struct $8FBSYMBOL* SYM$5;
					SYM$5 = *(struct $8FBSYMBOL**)CHAIN_$1;
					label$547:;
					{
						if( *(int32*)SYM$5 != 1 ) goto label$551;
						{
							if( (*(int32*)((uint8*)SYM$5 + 28) & 511) != 20 ) goto label$553;
							{
								goto label$538;
							}
							label$553:;
							label$552:;
						}
						label$551:;
						label$550:;
						SYM$5 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 160);
					}
					label$549:;
					if( SYM$5 != (struct $8FBSYMBOL*)0u ) goto label$547;
					label$548:;
					CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
				}
				goto label$545;
				label$546:;
			}
			label$544:;
			label$543:;
		}
		label$542:;
		label$541:;
	}
	goto label$539;
	label$540:;
	{
		uint32 vr$9 = LEXCURRENTCHAR(  );
		READFULLID$1 = -(vr$9 == 46u);
	}
	label$539:;
	if( READFULLID$1 == 0 ) goto label$555;
	{
		*(int32*)((uint8*)T$1 + 4120) = *(int32*)((uint8*)T$1 + 4112);
		HREADIDENTIFIER( (uint8*)((uint8*)((uint8*)T$1 + 12) + *(int32*)((uint8*)T$1 + 4112)), (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), (int32*)((uint8*)T$1 + 4124), FLAGS$1 | 128 );
		struct $10FBSYMCHAIN* vr$30 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 12), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 4) );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$30;
	}
	label$555:;
	label$554:;
	label$538:;
}

static int32 READID( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$556:;
	struct $8FBSYMBOL* CURRMACRO$1;
	CURRMACRO$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16580);
	*(int32*)((uint8*)T$1 + 4112) = 0;
	*(int32*)((uint8*)T$1 + 4120) = 0;
	HREADIDENTIFIER( (uint8*)((uint8*)T$1 + 12), (int32*)((uint8*)T$1 + 4112), (int32*)((uint8*)T$1 + 8), (int32*)((uint8*)T$1 + 4124), FLAGS$1 );
	if( (FLAGS$1 & 256) == 0 ) goto label$559;
	{
		struct $10FBSYMCHAIN* vr$16 = SYMBLOOKUPAT( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16584), (uint8*)((uint8*)T$1 + 12), 0, 0 );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$16;
		if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$561;
		{
			*(int32*)T$1 = 265;
			*(int32*)((uint8*)T$1 + 4) = 0;
		}
		goto label$560;
		label$561:;
		{
			*(int32*)T$1 = *(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) + 56);
			*(int32*)((uint8*)T$1 + 4) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) + 60);
		}
		label$560:;
		fb$result$1 = -1;
		goto label$557;
	}
	label$559:;
	label$558:;
	if( (FLAGS$1 & 32) == 0 ) goto label$563;
	{
		*(int32*)T$1 = 265;
		*(int32*)((uint8*)T$1 + 4) = 0;
		fb$result$1 = -1;
		goto label$557;
	}
	label$563:;
	label$562:;
	struct $10FBSYMCHAIN* vr$38 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 12), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 4) );
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) = vr$38;
	if( (FLAGS$1 & 2) == 0 ) goto label$565;
	{
		fb$result$1 = -1;
		goto label$557;
	}
	label$565:;
	label$564:;
	if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) == (struct $10FBSYMCHAIN*)0u ) goto label$567;
	{
		if( *(int32*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) != 5 ) goto label$569;
		{
			int32 vr$47 = PPDEFINELOAD( *(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116), CURRMACRO$1 );
			if( vr$47 == 0 ) goto label$571;
			{
				*(int32*)((uint8*)T$1 + 4128) = -1;
				fb$result$1 = 0;
				goto label$557;
			}
			label$571:;
			label$570:;
		}
		label$569:;
		label$568:;
	}
	label$567:;
	label$566:;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 524288) == 0 ) goto label$573;
	{
		if( (FLAGS$1 & 64) != 0 ) goto label$575;
		{
			HCHECKPERIODS( T$1, FLAGS$1, *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 4116) );
		}
		label$575:;
		label$574:;
	}
	label$573:;
	label$572:;
	fb$result$1 = -1;
	goto label$557;
	label$557:;
	return fb$result$1;
}

static void HMULTILINECOMMENT( void )
{
	label$696:;
	static int32 CNT$1;
	LEXEATCHAR(  );
	CNT$1 = 0;
	label$698:;
	{
		{
			uint32 TMP$135$3;
			uint32 vr$0 = LEXCURRENTCHAR(  );
			TMP$135$3 = vr$0;
			goto label$702;
			label$703:;
			{
				ERRREPORTEX( 132, (uint8*)0u, 0, 1, (uint8*)0u );
				goto label$697;
			}
			goto label$701;
			label$704:;
			{
				LEXEATCHAR(  );
				uint32 vr$1 = LEXCURRENTCHAR(  );
				if( vr$1 != 10u ) goto label$706;
				{
					LEXEATCHAR(  );
				}
				label$706:;
				label$705:;
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) != 0 ) goto label$708;
				{
					*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) + 1;
				}
				label$708:;
				label$707:;
			}
			goto label$701;
			label$709:;
			{
				LEXEATCHAR(  );
				if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16592) != 0 ) goto label$711;
				{
					*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) + 1;
				}
				label$711:;
				label$710:;
			}
			goto label$701;
			label$712:;
			{
				LEXEATCHAR(  );
				uint32 vr$10 = LEXCURRENTCHAR(  );
				if( vr$10 != 39u ) goto label$714;
				{
					LEXEATCHAR(  );
					CNT$1 = CNT$1 + 1;
				}
				label$714:;
				label$713:;
			}
			goto label$701;
			label$715:;
			{
				LEXEATCHAR(  );
				uint32 vr$12 = LEXCURRENTCHAR(  );
				if( vr$12 != 47u ) goto label$717;
				{
					LEXEATCHAR(  );
					if( CNT$1 != 0 ) goto label$719;
					{
						goto label$699;
					}
					label$719:;
					label$718:;
					CNT$1 = CNT$1 + -1;
				}
				label$717:;
				label$716:;
			}
			goto label$701;
			label$720:;
			{
				LEXEATCHAR(  );
			}
			goto label$701;
			label$702:;
			static const void* tmp$206[48] = {
				&&label$703,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$709,
				&&label$720,
				&&label$720,
				&&label$704,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$715,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$720,
				&&label$712,
			};
			if( TMP$135$3 > 47u ) goto label$720;
			goto *tmp$206[TMP$135$3 - 0u];
			label$701:;
		}
	}
	label$700:;
	goto label$698;
	label$699:;
	label$697:;
}

static void HMOVEKDOWN( void )
{
	label$745:;
	*(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = -1;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16544) + -1;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4132);
	label$746:;
}

static FBSTRING* LEXGETSTRLITTEXT( int32 TK$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$747:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	int32 IS_ESCAPED$1;
	int32 SAW_BACKSLASH$1;
	uint8* P$1;
	{
		if( TK$1 != 262 ) goto label$750;
		label$751:;
		{
			IS_ESCAPED$1 = 0;
		}
		goto label$749;
		label$750:;
		if( TK$1 != 263 ) goto label$752;
		label$753:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"!", 2, 0 );
			IS_ESCAPED$1 = -1;
		}
		goto label$749;
		label$752:;
		if( TK$1 != 264 ) goto label$754;
		label$755:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)"$", 2, 0 );
			IS_ESCAPED$1 = 0;
		}
		label$754:;
		label$749:;
	}
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
	SAW_BACKSLASH$1 = 0;
	uint8* vr$5 = LEXGETTEXT(  );
	P$1 = (uint8*)vr$5;
	label$756:;
	{
		{
			uint8 TMP$139$3;
			TMP$139$3 = *P$1;
			if( (int32)TMP$139$3 != 0 ) goto label$760;
			label$761:;
			{
				goto label$757;
			}
			goto label$759;
			label$760:;
			if( (uint32)(int32)TMP$139$3 != 34u ) goto label$762;
			label$763:;
			{
				if( SAW_BACKSLASH$1 == 0 ) goto label$765;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
				}
				goto label$764;
				label$765:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22\x22", 3, 0 );
				}
				label$764:;
				SAW_BACKSLASH$1 = 0;
			}
			goto label$759;
			label$762:;
			if( (uint32)(int32)TMP$139$3 != 92u ) goto label$766;
			label$767:;
			{
				SAW_BACKSLASH$1 = IS_ESCAPED$1;
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x5C", 2, 0 );
			}
			goto label$759;
			label$766:;
			{
				FBSTRING TMP$142$4;
				SAW_BACKSLASH$1 = 0;
				FBSTRING* vr$15 = fb_CHR( 1, (int32)*P$1 );
				__builtin_memset( &TMP$142$4, 0, 12 );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$142$4, (void*)&S$1, -1, (void*)vr$15, -1 );
				fb_StrAssign( (void*)&S$1, -1, (void*)vr$19, -1, 0 );
			}
			label$768:;
			label$759:;
		}
		P$1 = (uint8*)(P$1 + 1);
	}
	label$758:;
	goto label$756;
	label$757:;
	fb_StrConcatAssign( (void*)&S$1, -1, (void*)"\x22", 2, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$748:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}
