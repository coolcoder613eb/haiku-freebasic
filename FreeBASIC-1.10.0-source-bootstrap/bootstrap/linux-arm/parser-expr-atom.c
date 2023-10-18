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
typedef int32 $12FB_PARSEROPT;
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
typedef int32 $8FB_TOKEN;
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
static void fb_ctor__parserzexprzatom( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
int32 SYMBVARCHECKACCESS( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLl( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINl( struct $10FBSYMCHAIN*, int32 );
struct $7ASTNODE* CWITHVARIABLE( int32 );
struct $7ASTNODE* CIMPLICITDATAMEMBER( struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, int32, $12FB_PARSEROPT );
struct $7ASTNODE* CFUNCTIONEX( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARSEROPT );
struct $7ASTNODE* CQUIRKFUNCTION( struct $8FBSYMBOL* );
struct $7ASTNODE* CCONSTANT( struct $8FBSYMBOL* );
struct $7ASTNODE* CSTRLITERAL( int32 );
struct $7ASTNODE* CNUMLITERAL( int32 );
struct $7ASTNODE* CCTORCALL( struct $8FBSYMBOL* );
struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
static struct $7ASTNODE* HBASEMEMBERACCESS( void );
static struct $7ASTNODE* HFINDID_QB( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
static struct $7ASTNODE* HFINDID( struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, $12FB_PARSEROPT );
static struct $7ASTNODE* HCHECKID( struct $8FBSYMBOL*, struct $10FBSYMCHAIN* );
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

struct $7ASTNODE* CEQINPARENSONLYEXPR( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	struct $7ASTNODE* EXPR$1;
	int32 EQINPARENSONLY$1;
	EQINPARENSONLY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 256) != 0);
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 256;
	}
	goto label$12;
	label$13:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -257;
	}
	label$12:;
	struct $7ASTNODE* vr$5 = CEXPRESSION(  );
	EXPR$1 = vr$5;
	if( EQINPARENSONLY$1 == 0 ) goto label$15;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 256;
	}
	goto label$14;
	label$15:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -257;
	}
	label$14:;
	fb$result$1 = EXPR$1;
	goto label$11;
	label$11:;
	return fb$result$1;
}

struct $7ASTNODE* CGTINPARENSONLYEXPR( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	struct $7ASTNODE* EXPR$1;
	int32 GTINPARENSONLY$1;
	GTINPARENSONLY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 512) != 0);
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 512;
	}
	goto label$18;
	label$19:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -513;
	}
	label$18:;
	struct $7ASTNODE* vr$5 = CEXPRESSION(  );
	EXPR$1 = vr$5;
	if( GTINPARENSONLY$1 == 0 ) goto label$21;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 512;
	}
	goto label$20;
	label$21:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -513;
	}
	label$20:;
	fb$result$1 = EXPR$1;
	goto label$17;
	label$17:;
	return fb$result$1;
}

struct $7ASTNODE* CPARENTEXPRESSION( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	struct $7ASTNODE* PAREXPR$1;
	int32 EQINPARENSONLY$1;
	int32 GTINPARENSONLY$1;
	int32 IDXINPARENSONLY$1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$25;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$23;
	}
	label$25:;
	label$24:;
	LEXSKIPTOKEN( 0 );
	*(int32*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) + 1;
	int32 IS_OPT$1;
	IS_OPT$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 1) != 0);
	goto label$27;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
	}
	goto label$26;
	label$27:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
	}
	label$26:;
	EQINPARENSONLY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 256) != 0);
	GTINPARENSONLY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 512) != 0);
	IDXINPARENSONLY$1 = -((*(int32*)((uint8*)&PARSER$ + 152) & 4096) != 0);
	goto label$29;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 256;
	}
	goto label$28;
	label$29:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -257;
	}
	label$28:;
	goto label$31;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 512;
	}
	goto label$30;
	label$31:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -513;
	}
	label$30:;
	goto label$33;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 4096;
	}
	goto label$32;
	label$33:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -4097;
	}
	label$32:;
	struct $7ASTNODE* vr$19 = CEXPRESSION(  );
	PAREXPR$1 = vr$19;
	if( EQINPARENSONLY$1 == 0 ) goto label$35;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 256;
	}
	goto label$34;
	label$35:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -257;
	}
	label$34:;
	if( GTINPARENSONLY$1 == 0 ) goto label$37;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 512;
	}
	goto label$36;
	label$37:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -513;
	}
	label$36:;
	if( IDXINPARENSONLY$1 == 0 ) goto label$39;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 4096;
	}
	goto label$38;
	label$39:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -4097;
	}
	label$38:;
	if( PAREXPR$1 != (struct $7ASTNODE*)0u ) goto label$41;
	{
		if( IS_OPT$1 == 0 ) goto label$43;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$23;
		}
		label$43:;
		label$42:;
		ERRREPORT( 9, 0, (uint8*)0u );
		HSKIPUNTIL( 41, -1, 0, 0 );
		struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$26;
		goto label$23;
	}
	label$41:;
	label$40:;
	int32 vr$27 = LEXGETTOKEN( 0 );
	if( vr$27 != 41 ) goto label$45;
	{
		LEXSKIPTOKEN( 0 );
		*(int32*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) + -1;
	}
	goto label$44;
	label$45:;
	{
		if( (-(IS_OPT$1 == 0) | -(*(int32*)((uint8*)&PARSER$ + 148) == 0)) == 0 ) goto label$47;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		label$47:;
		label$46:;
	}
	label$44:;
	fb$result$1 = PAREXPR$1;
	label$23:;
	return fb$result$1;
}

struct $7ASTNODE* CATOM( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$168:;
	int32 TK_CLASS$1;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$171;
	{
		int32 vr$1 = LEXGETCLASS( 0 );
		TK_CLASS$1 = vr$1;
	}
	goto label$170;
	label$171:;
	{
		TK_CLASS$1 = 0;
	}
	label$170:;
	{
		uint32 TMP$98$2;
		TMP$98$2 = (uint32)TK_CLASS$1;
		goto label$173;
		label$174:;
		{
			if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$176;
			{
				struct $10FBSYMCHAIN* vr$3 = CIDENTIFIER( &BASE_PARENT$1, 50 );
				CHAIN_$1 = vr$3;
			}
			label$176:;
			label$175:;
			struct $7ASTNODE* vr$4 = HCHECKID( BASE_PARENT$1, CHAIN_$1 );
			fb$result$1 = vr$4;
			goto label$169;
		}
		goto label$172;
		label$177:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$179;
			{
				struct $7ASTNODE* vr$7 = HCHECKID( BASE_PARENT$1, *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) );
				fb$result$1 = vr$7;
				goto label$169;
			}
			label$179:;
			label$178:;
		}
		goto label$172;
		label$180:;
		{
			struct $7ASTNODE* vr$8 = CNUMLITERAL( -1 );
			fb$result$1 = vr$8;
			goto label$169;
		}
		goto label$172;
		label$181:;
		{
			struct $7ASTNODE* vr$9 = CSTRLITERAL( -1 );
			fb$result$1 = vr$9;
			goto label$169;
		}
		goto label$172;
		label$182:;
		{
			int32 vr$10 = LEXGETTOKEN( 0 );
			if( vr$10 == 46 ) goto label$184;
			{
				fb$result$1 = (struct $7ASTNODE*)0u;
				goto label$169;
			}
			label$184:;
			label$183:;
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$186;
			{
				int32 vr$11 = LEXGETLOOKAHEAD( 1, 64 );
				if( vr$11 == 46 ) goto label$188;
				{
					struct $7ASTNODE* vr$14 = CWITHVARIABLE( -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0) );
					fb$result$1 = vr$14;
					goto label$169;
				}
				label$188:;
				label$187:;
			}
			label$186:;
			label$185:;
			struct $10FBSYMCHAIN* vr$16 = CIDENTIFIER( &BASE_PARENT$1, 50 );
			CHAIN_$1 = vr$16;
			if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$190;
			{
				struct $7ASTNODE* vr$17 = HFINDID( BASE_PARENT$1, CHAIN_$1, 0 );
				fb$result$1 = vr$17;
				goto label$169;
			}
			label$190:;
			label$189:;
		}
		goto label$172;
		label$173:;
		static const void* tmp$99[7] = {
			&&label$174,
			&&label$174,
			&&label$174,
			&&label$180,
			&&label$181,
			&&label$177,
			&&label$182,
		};
		if( TMP$98$2 > 6u ) goto label$172;
		goto *tmp$99[TMP$98$2 - 0u];
		label$172:;
	}
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$169:;
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

static struct $7ASTNODE* HFINDID_QB( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$48:;
	uint8* ID$1;
	uint8* vr$1 = LEXGETTEXT(  );
	ID$1 = vr$1;
	int32 SUFFIX$1;
	SUFFIX$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8);
	int32 DEFDTYPE$1;
	int32 vr$4 = SYMBGETDEFTYPE( (uint8*)ID$1 );
	DEFDTYPE$1 = vr$4;
	label$50:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		struct $8FBSYMBOL* VAR_SYM$2;
		VAR_SYM$2 = (struct $8FBSYMBOL*)0u;
		if( SUFFIX$1 != -2147483648u ) goto label$54;
		{
			label$55:;
			{
				int32 IS_MATCH$4;
				IS_MATCH$4 = -1;
				if( (*(int32*)((uint8*)SYM$2 + 4) & 1048576) == 0 ) goto label$59;
				{
					if( *(int32*)SYM$2 != 1 ) goto label$61;
					{
						if( DEFDTYPE$1 != 17 ) goto label$63;
						{
							{
								uint32 TMP$92$8;
								TMP$92$8 = (uint32)(*(int32*)((uint8*)SYM$2 + 28) & 511);
								goto label$65;
								label$66:;
								{
								}
								goto label$64;
								label$67:;
								{
									IS_MATCH$4 = 0;
								}
								goto label$64;
								label$65:;
								static const void* tmp$100[15] = {
									&&label$66,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$67,
									&&label$66,
									&&label$66,
								};
								if( (TMP$92$8 - 4u) > 14u ) goto label$67;
								goto *tmp$100[TMP$92$8 - 4u];
								label$64:;
							}
						}
						goto label$62;
						label$63:;
						{
							IS_MATCH$4 = -((*(int32*)((uint8*)SYM$2 + 28) & 511) == DEFDTYPE$1);
						}
						label$62:;
					}
					label$61:;
					label$60:;
				}
				label$59:;
				label$58:;
				if( IS_MATCH$4 == 0 ) goto label$69;
				{
					{
						uint32 TMP$93$6;
						TMP$93$6 = *(uint32*)SYM$2;
						goto label$71;
						label$72:;
						{
							struct $7ASTNODE* vr$15 = CCONSTANT( SYM$2 );
							fb$result$1 = vr$15;
							goto label$49;
						}
						goto label$70;
						label$73:;
						{
							if( (*(int32*)((uint8*)SYM$2 + 12) & 32) == 0 ) goto label$75;
							{
								IS_MATCH$4 = -((*(int32*)((uint8*)SYM$2 + 4) & 1048576) == 0);
							}
							label$75:;
							label$74:;
							if( IS_MATCH$4 == 0 ) goto label$77;
							{
								struct $7ASTNODE* vr$21 = CFUNCTIONEX( BASE_PARENT$1, SYM$2, 0 );
								fb$result$1 = vr$21;
								goto label$49;
							}
							label$77:;
							label$76:;
						}
						goto label$70;
						label$78:;
						{
							if( VAR_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$80;
							{
								int32 vr$22 = SYMBVARCHECKACCESS( SYM$2 );
								if( vr$22 == 0 ) goto label$82;
								{
									VAR_SYM$2 = SYM$2;
								}
								label$82:;
								label$81:;
							}
							label$80:;
							label$79:;
						}
						goto label$70;
						label$83:;
						{
							if( (*(int32*)((uint8*)SYM$2 + 4) & 1048576) != 0 ) goto label$85;
							{
								struct $7ASTNODE* vr$25 = CQUIRKFUNCTION( SYM$2 );
								fb$result$1 = vr$25;
								goto label$49;
							}
							label$85:;
							label$84:;
						}
						goto label$70;
						label$71:;
						static const void* tmp$101[6] = {
							&&label$78,
							&&label$72,
							&&label$73,
							&&label$70,
							&&label$70,
							&&label$83,
						};
						if( (TMP$93$6 - 1u) > 5u ) goto label$70;
						goto *tmp$101[TMP$93$6 - 1u];
						label$70:;
					}
				}
				label$69:;
				label$68:;
				SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
			}
			label$57:;
			if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$55;
			label$56:;
		}
		goto label$53;
		label$54:;
		{
			label$86:;
			{
				int32 IS_MATCH$4;
				if( SUFFIX$1 != 17 ) goto label$90;
				{
					{
						uint32 TMP$94$6;
						TMP$94$6 = (uint32)(*(int32*)((uint8*)SYM$2 + 28) & 511);
						goto label$92;
						label$93:;
						{
							IS_MATCH$4 = -1;
						}
						goto label$91;
						label$94:;
						{
							IS_MATCH$4 = 0;
						}
						goto label$91;
						label$92:;
						static const void* tmp$102[15] = {
							&&label$93,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$94,
							&&label$93,
							&&label$93,
						};
						if( (TMP$94$6 - 4u) > 14u ) goto label$94;
						goto *tmp$102[TMP$94$6 - 4u];
						label$91:;
					}
				}
				goto label$89;
				label$90:;
				{
					IS_MATCH$4 = -((*(int32*)((uint8*)SYM$2 + 28) & 511) == SUFFIX$1);
				}
				label$89:;
				if( IS_MATCH$4 == 0 ) goto label$96;
				{
					{
						uint32 TMP$95$6;
						TMP$95$6 = *(uint32*)SYM$2;
						goto label$98;
						label$99:;
						{
							struct $7ASTNODE* vr$33 = CCONSTANT( SYM$2 );
							fb$result$1 = vr$33;
							goto label$49;
						}
						goto label$97;
						label$100:;
						{
							struct $7ASTNODE* vr$34 = CFUNCTIONEX( BASE_PARENT$1, SYM$2, 0 );
							fb$result$1 = vr$34;
							goto label$49;
						}
						goto label$97;
						label$101:;
						{
							if( VAR_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$103;
							{
								int32 vr$35 = SYMBVARCHECKACCESS( SYM$2 );
								if( vr$35 == 0 ) goto label$105;
								{
									VAR_SYM$2 = SYM$2;
								}
								label$105:;
								label$104:;
							}
							label$103:;
							label$102:;
						}
						goto label$97;
						label$106:;
						{
							struct $7ASTNODE* vr$36 = CQUIRKFUNCTION( SYM$2 );
							fb$result$1 = vr$36;
							goto label$49;
						}
						goto label$97;
						label$98:;
						static const void* tmp$103[6] = {
							&&label$101,
							&&label$99,
							&&label$100,
							&&label$97,
							&&label$97,
							&&label$106,
						};
						if( (TMP$95$6 - 1u) > 5u ) goto label$97;
						goto *tmp$103[TMP$95$6 - 1u];
						label$97:;
					}
				}
				goto label$95;
				label$96:;
				{
					if( *(int32*)SYM$2 != 6 ) goto label$108;
					{
						if( *(int32*)((uint8*)SYM$2 + 56) != 478 ) goto label$110;
						{
							if( SUFFIX$1 != 17 ) goto label$112;
							{
								struct $7ASTNODE* vr$39 = CQUIRKFUNCTION( SYM$2 );
								fb$result$1 = vr$39;
								goto label$49;
							}
							label$112:;
							label$111:;
						}
						label$110:;
						label$109:;
					}
					label$108:;
					label$107:;
				}
				label$95:;
				SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
			}
			label$88:;
			if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$86;
			label$87:;
		}
		label$53:;
		if( VAR_SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$114;
		{
			struct $7ASTNODE* vr$43 = _Z11CVARIABLEEXP8FBSYMBOLl( VAR_SYM$2, -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0) );
			fb$result$1 = vr$43;
			goto label$49;
		}
		label$114:;
		label$113:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	label$52:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$50;
	label$51:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$49:;
	return fb$result$1;
}

static struct $7ASTNODE* HFINDID( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$115:;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$118;
	{
		struct $7ASTNODE* vr$1 = HFINDID_QB( BASE_PARENT$1, CHAIN_$1 );
		fb$result$1 = vr$1;
		goto label$116;
	}
	label$118:;
	label$117:;
	label$119:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$122:;
		{
			{
				uint32 TMP$96$4;
				TMP$96$4 = *(uint32*)SYM$2;
				goto label$126;
				label$127:;
				{
					struct $7ASTNODE* vr$4 = CCONSTANT( SYM$2 );
					fb$result$1 = vr$4;
					goto label$116;
				}
				goto label$125;
				label$128:;
				{
					struct $7ASTNODE* vr$5 = CFUNCTIONEX( BASE_PARENT$1, SYM$2, OPTIONS$1 );
					fb$result$1 = vr$5;
					goto label$116;
				}
				goto label$125;
				label$129:;
				{
					struct $7ASTNODE* vr$8 = _Z11CVARIABLEEXP10FBSYMCHAINl( CHAIN_$1, -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0) );
					fb$result$1 = vr$8;
					goto label$116;
				}
				goto label$125;
				label$130:;
				{
					struct $7ASTNODE* vr$11 = CIMPLICITDATAMEMBER( BASE_PARENT$1, CHAIN_$1, -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0), OPTIONS$1 );
					fb$result$1 = vr$11;
					goto label$116;
				}
				goto label$125;
				label$131:;
				{
					int32 vr$12 = LEXGETTOKEN( 0 );
					if( vr$12 != 353 ) goto label$133;
					{
						struct $7ASTNODE* vr$13 = HBASEMEMBERACCESS(  );
						fb$result$1 = vr$13;
						goto label$116;
					}
					goto label$132;
					label$133:;
					{
						struct $7ASTNODE* vr$14 = CQUIRKFUNCTION( SYM$2 );
						fb$result$1 = vr$14;
						goto label$116;
					}
					label$132:;
				}
				goto label$125;
				label$134:;
				{
					struct $8FBSYMBOL* vr$15 = SYMBGETCOMPCTORHEAD( SYM$2 );
					if( vr$15 == (struct $8FBSYMBOL*)0u ) goto label$136;
					{
						HCOMPLAINIFABSTRACTCLASS( 20, SYM$2 );
						LEXSKIPTOKEN( 2048 );
						struct $7ASTNODE* vr$16 = CCTORCALL( SYM$2 );
						struct $7ASTNODE* vr$17 = CSTRIDXORMEMBERDEREF( vr$16 );
						fb$result$1 = vr$17;
						goto label$116;
					}
					label$136:;
					label$135:;
				}
				goto label$125;
				label$137:;
				{
					int32 vr$18 = SYMBHASCTOR( SYM$2 );
					if( vr$18 == 0 ) goto label$139;
					{
						HCOMPLAINIFABSTRACTCLASS( 20, *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 32) );
						LEXSKIPTOKEN( 2048 );
						struct $7ASTNODE* vr$21 = CCTORCALL( *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 32) );
						struct $7ASTNODE* vr$22 = CSTRIDXORMEMBERDEREF( vr$21 );
						fb$result$1 = vr$22;
						goto label$116;
					}
					label$139:;
					label$138:;
				}
				goto label$125;
				label$140:;
				{
					ERRREPORT( 325, 0, (uint8*)0u );
				}
				goto label$125;
				label$126:;
				static const void* tmp$104[16] = {
					&&label$129,
					&&label$127,
					&&label$128,
					&&label$125,
					&&label$125,
					&&label$131,
					&&label$125,
					&&label$125,
					&&label$125,
					&&label$134,
					&&label$134,
					&&label$130,
					&&label$137,
					&&label$125,
					&&label$125,
					&&label$140,
				};
				if( (TMP$96$4 - 1u) > 15u ) goto label$125;
				goto *tmp$104[TMP$96$4 - 1u];
				label$125:;
			}
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		label$124:;
		if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$122;
		label$123:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	label$121:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$119;
	label$120:;
	fb$result$1 = (struct $7ASTNODE*)0u;
	label$116:;
	return fb$result$1;
}

static struct $7ASTNODE* HBASEMEMBERACCESS( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$141:;
	struct $8FBSYMBOL* PROC$1;
	PROC$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) != 0 ) goto label$144;
	{
		ERRREPORT( 294, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		fb$result$1 = vr$3;
		goto label$142;
	}
	label$144:;
	label$143:;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 144);
	struct $8FBSYMBOL* BASE_$1;
	BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96);
	label$145:;
	{
		if( BASE_$1 != (struct $8FBSYMBOL*)0u ) goto label$149;
		{
			ERRREPORT( 295, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$7;
			goto label$142;
		}
		label$149:;
		label$148:;
		LEXSKIPTOKEN( 2112 );
		int32 vr$8 = HMATCH( 46, 0 );
		if( vr$8 != 0 ) goto label$151;
		{
			ERRREPORT( 120, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			fb$result$1 = vr$9;
			goto label$142;
		}
		label$151:;
		label$150:;
		int32 vr$10 = LEXGETTOKEN( 0 );
		if( vr$10 == 353 ) goto label$153;
		{
			goto label$146;
		}
		label$153:;
		label$152:;
		BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 32) + 96);
	}
	label$147:;
	goto label$145;
	label$146:;
	struct $10FBSYMCHAIN CHAIN_$1;
	*(struct $8FBSYMBOL**)&CHAIN_$1 = BASE_$1;
	*(struct $10FBSYMCHAIN**)((uint8*)&CHAIN_$1 + 4) = (struct $10FBSYMCHAIN*)0u;
	*(int32*)((uint8*)&CHAIN_$1 + 8) = 0;
	__builtin_memset( (void*)((uint8*)&CHAIN_$1 + 12), 0, 12 );
	struct $7ASTNODE* vr$16 = HFINDID( *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 32), &CHAIN_$1, 2048 );
	fb$result$1 = vr$16;
	label$142:;
	return fb$result$1;
}

static struct $7ASTNODE* HCHECKID( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$154:;
	struct $7ASTNODE* EXPR$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$157;
	{
		struct $7ASTNODE* vr$1 = HFINDID( BASE_PARENT$1, CHAIN_$1, 0 );
		EXPR$1 = vr$1;
		if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$159;
		{
			fb$result$1 = EXPR$1;
			goto label$155;
		}
		label$159:;
		label$158:;
	}
	label$157:;
	label$156:;
	if( (*(int32*)((uint8*)&PARSER$ + 152) & 1024) == 0 ) goto label$161;
	{
		FBSTRING TMP$97$2;
		__builtin_memset( &TMP$97$2, 0, 12 );
		uint8* vr$4 = LEXGETTEXT(  );
		FBSTRING* vr$5 = fb_StrAllocTempDescZ( (uint8*)vr$4 );
		FBSTRING* vr$6 = fb_StrUcase2( (FBSTRING*)vr$5, 0 );
		fb_StrAssign( (void*)&TMP$97$2, -1, (void*)vr$6, -1, 0 );
		struct $7ASTNODE* vr$8 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&TMP$97$2 );
		EXPR$1 = vr$8;
		fb_StrDelete( (FBSTRING*)&TMP$97$2 );
		LEXSKIPTOKEN( 0 );
		fb$result$1 = EXPR$1;
		goto label$155;
	}
	label$161:;
	label$160:;
	if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$163;
	{
		int32 vr$10 = LEXGETCLASS( 0 );
		if( vr$10 == 0 ) goto label$165;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$155;
		}
		label$165:;
		label$164:;
	}
	label$163:;
	label$162:;
	goto label$167;
	{
		ERRREPORTNOTALLOWED( 2097152, 149, (uint8*)0u );
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$155;
	}
	label$167:;
	label$166:;
	struct $7ASTNODE* vr$13 = _Z11CVARIABLEEXP10FBSYMCHAINl( (struct $10FBSYMCHAIN*)0u, -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0) );
	fb$result$1 = vr$13;
	goto label$155;
	label$155:;
	return fb$result$1;
}
