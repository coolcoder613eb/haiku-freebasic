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
typedef int32 $8FB_IDOPT;
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
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
static void fb_ctor__parserzidentifier( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTUNDEF( int32, uint8* );
struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT );
int32 COPERATOR( int32 );
static void HSKIPSYMBOL( void );
static struct $10FBSYMCHAIN* HGLOBALID( $8FB_IDOPT, struct $8FBSYMBOL** );
static FBSTRING* HGETCHAINNAMES( struct $10FBSYMCHAIN* );
static int32 HCHECKDECL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, $8FB_IDOPT );
static int32 HISSTRUCTALLOWED( struct $8FBSYMBOL*, $8FB_IDOPT );
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

struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL** BASE_PARENT$1, $8FB_IDOPT OPTIONS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$88:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* PARENT$1;
	*BASE_PARENT$1 = (struct $8FBSYMBOL*)0u;
	if( *(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) == (struct $10FBSYMCHAIN*)0u ) goto label$91;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92);
		*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) = (struct $10FBSYMCHAIN*)0u;
	}
	goto label$90;
	label$91:;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116);
	}
	label$90:;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 4) != 0 ) goto label$93;
	{
		fb$result$1 = CHAIN_$1;
		goto label$89;
	}
	label$93:;
	label$92:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$95;
	{
		int32 vr$5 = LEXGETTOKEN( 0 );
		if( vr$5 == 46 ) goto label$97;
		{
			fb$result$1 = (struct $10FBSYMCHAIN*)0u;
			goto label$89;
		}
		label$97:;
		label$96:;
		struct $10FBSYMCHAIN* vr$6 = HGLOBALID( OPTIONS$1, BASE_PARENT$1 );
		CHAIN_$1 = vr$6;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$99;
		{
			if( (OPTIONS$1 & 2) == 0 ) goto label$101;
			{
				uint8* vr$8 = LEXGETTEXT(  );
				ERRREPORTUNDEF( 8, vr$8 );
			}
			label$101:;
			label$100:;
			if( (OPTIONS$1 & 128) != 0 ) goto label$103;
			{
				HSKIPSYMBOL(  );
			}
			label$103:;
			label$102:;
			fb$result$1 = (struct $10FBSYMCHAIN*)0u;
			goto label$89;
		}
		label$99:;
		label$98:;
	}
	label$95:;
	label$94:;
	PARENT$1 = (struct $8FBSYMBOL*)0u;
	label$104:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		if( *BASE_PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$108;
		{
			label$109:;
			if( SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$110;
			{
				if( (-((*(int32*)((uint8*)SYM$2 + 4) & 128) != 0) & -(*(int32*)SYM$2 == 1)) == 0 ) goto label$112;
				{
					SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
				}
				goto label$111;
				label$112:;
				{
					struct $10FBSYMCHAIN* vr$19 = SYMBNEWCHAINPOOL( SYM$2 );
					CHAIN_$1 = vr$19;
					goto label$110;
				}
				label$111:;
			}
			goto label$109;
			label$110:;
			if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$114;
			{
				if( (OPTIONS$1 & 2) == 0 ) goto label$116;
				{
					uint8* vr$21 = LEXGETTEXT(  );
					ERRREPORTUNDEF( 8, vr$21 );
				}
				goto label$115;
				label$116:;
				{
					HSKIPSYMBOL(  );
				}
				label$115:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0u;
				goto label$89;
			}
			label$114:;
			label$113:;
		}
		label$108:;
		label$107:;
		{
			uint32 TMP$108$3;
			TMP$108$3 = *(uint32*)SYM$2;
			goto label$118;
			label$119:;
			{
			}
			goto label$117;
			label$120:;
			{
				int32 vr$23 = HISSTRUCTALLOWED( SYM$2, OPTIONS$1 );
				if( vr$23 != 0 ) goto label$122;
				{
					goto label$105;
				}
				label$122:;
				label$121:;
			}
			goto label$117;
			label$123:;
			{
				{
					int32 TMP$109$5;
					TMP$109$5 = *(int32*)((uint8*)SYM$2 + 28) & 511;
					if( TMP$109$5 != 20 ) goto label$125;
					label$126:;
					{
						SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 32);
						int32 vr$27 = HISSTRUCTALLOWED( SYM$2, OPTIONS$1 );
						if( vr$27 != 0 ) goto label$128;
						{
							goto label$105;
						}
						label$128:;
						label$127:;
					}
					goto label$124;
					label$125:;
					if( TMP$109$5 != 10 ) goto label$129;
					label$130:;
					{
						SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 32);
					}
					goto label$124;
					label$129:;
					{
						goto label$105;
					}
					label$131:;
					label$124:;
				}
			}
			goto label$117;
			label$132:;
			{
				goto label$105;
			}
			goto label$117;
			label$118:;
			static const void* tmp$112[6] = {
				&&label$119,
				&&label$119,
				&&label$120,
				&&label$119,
				&&label$132,
				&&label$123,
			};
			if( (TMP$108$3 - 8u) > 5u ) goto label$132;
			goto *tmp$112[TMP$108$3 - 8u];
			label$117:;
		}
		if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$134;
		{
			if( (OPTIONS$1 & 2) == 0 ) goto label$136;
			{
				int32 vr$30 = SYMBCHECKACCESS( SYM$2 );
				if( vr$30 != 0 ) goto label$138;
				{
					ERRREPORT( 202, 0, (uint8*)0u );
				}
				label$138:;
				label$137:;
			}
			label$136:;
			label$135:;
		}
		label$134:;
		label$133:;
		int32 vr$31 = LEXGETLOOKAHEAD( 1, 64 );
		if( vr$31 == 46 ) goto label$140;
		{
			if( *(int32*)SYM$2 != 8 ) goto label$142;
			{
				if( (OPTIONS$1 & 2) == 0 ) goto label$144;
				{
					LEXSKIPTOKEN( 2112 );
					ERRREPORT( 120, 0, (uint8*)0u );
				}
				label$144:;
				label$143:;
			}
			label$142:;
			label$141:;
			goto label$105;
		}
		label$140:;
		label$139:;
		if( *(int32*)SYM$2 != 9 ) goto label$146;
		{
			if( *(int32*)((uint8*)SYM$2 + 76) != 0 ) goto label$148;
			{
				if( (OPTIONS$1 & 2) == 0 ) goto label$150;
				{
					ERRREPORT( 257, 0, (uint8*)0u );
				}
				label$150:;
				label$149:;
				goto label$105;
			}
			label$148:;
			label$147:;
		}
		label$146:;
		label$145:;
		LEXSKIPTOKEN( 2112 );
		LEXSKIPTOKEN( 64 );
		PARENT$1 = SYM$2;
		if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$152;
		{
			*BASE_PARENT$1 = PARENT$1;
		}
		label$152:;
		label$151:;
		{
			uint32 TMP$110$3;
			int32 vr$39 = LEXGETCLASS( 0 );
			TMP$110$3 = (uint32)vr$39;
			goto label$154;
			label$155:;
			{
			}
			goto label$153;
			label$156:;
			{
				if( (OPTIONS$1 & 520) == 0 ) goto label$158;
				{
					goto label$105;
				}
				label$158:;
				label$157:;
				if( (OPTIONS$1 & 2) == 0 ) goto label$160;
				{
					ERRREPORT( 14, 0, (uint8*)0u );
				}
				label$160:;
				label$159:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0u;
				goto label$89;
			}
			goto label$153;
			label$161:;
			{
				int32 vr$42 = LEXGETTOKEN( 0 );
				if( vr$42 != 91 ) goto label$163;
				{
					if( (OPTIONS$1 & 8) == 0 ) goto label$165;
					{
						goto label$105;
					}
					label$165:;
					label$164:;
				}
				label$163:;
				label$162:;
				if( (OPTIONS$1 & 2) == 0 ) goto label$167;
				{
					ERRREPORT( 14, 0, (uint8*)0u );
				}
				label$167:;
				label$166:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0u;
				goto label$89;
			}
			goto label$153;
			label$154:;
			static const void* tmp$113[6] = {
				&&label$155,
				&&label$156,
				&&label$155,
				&&label$161,
				&&label$161,
				&&label$156,
			};
			if( TMP$110$3 > 5u ) goto label$161;
			goto *tmp$113[TMP$110$3 - 0u];
			label$153:;
		}
		uint8* vr$45 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$46 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$45, 0, -1 );
		CHAIN_$1 = vr$46;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$169;
		{
			if( (OPTIONS$1 & 2) == 0 ) goto label$171;
			{
				uint8* vr$48 = LEXGETTEXT(  );
				ERRREPORTUNDEF( 8, vr$48 );
			}
			goto label$170;
			label$171:;
			{
				if( (OPTIONS$1 & 128) != 0 ) goto label$173;
				{
					HSKIPSYMBOL(  );
				}
				label$173:;
				label$172:;
			}
			label$170:;
			fb$result$1 = (struct $10FBSYMCHAIN*)0u;
			goto label$89;
		}
		label$169:;
		label$168:;
		if( (OPTIONS$1 & 32) == 0 ) goto label$175;
		{
			{
				$12FB_SYMBCLASS TMP$111$4;
				TMP$111$4 = *($12FB_SYMBCLASS*)PARENT$1;
				if( TMP$111$4 == 10 ) goto label$178;
				label$179:;
				if( TMP$111$4 != 11 ) goto label$177;
				label$178:;
				{
					struct $10FBSYMCHAIN* ITER$5;
					ITER$5 = CHAIN_$1;
					label$180:;
					{
						struct $8FBSYMBOL* SYM$6;
						SYM$6 = *(struct $8FBSYMBOL**)ITER$5;
						label$183:;
						{
							if( *(int32*)SYM$6 != 12 ) goto label$187;
							{
								ERRREPORT( 209, 0, (uint8*)0u );
								goto label$181;
							}
							label$187:;
							label$186:;
							SYM$6 = *(struct $8FBSYMBOL**)((uint8*)SYM$6 + 160);
						}
						label$185:;
						if( SYM$6 != (struct $8FBSYMBOL*)0u ) goto label$183;
						label$184:;
						ITER$5 = *(struct $10FBSYMCHAIN**)((uint8*)ITER$5 + 4);
					}
					label$182:;
					if( ITER$5 != (struct $10FBSYMCHAIN*)0u ) goto label$180;
					label$181:;
				}
				label$177:;
				label$176:;
			}
		}
		label$175:;
		label$174:;
	}
	label$106:;
	goto label$104;
	label$105:;
	int32 vr$57 = HCHECKDECL( *BASE_PARENT$1, PARENT$1, CHAIN_$1, OPTIONS$1 );
	if( vr$57 != 0 ) goto label$189;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0u;
		goto label$89;
	}
	label$189:;
	label$188:;
	fb$result$1 = CHAIN_$1;
	label$89:;
	return fb$result$1;
}

struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT OPTIONS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$190:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 4) != 0 ) goto label$193;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$191;
	}
	label$193:;
	label$192:;
	SYM$1 = (struct $8FBSYMBOL*)0u;
	BASE_PARENT$1 = (struct $8FBSYMBOL*)0u;
	PARENT$1 = (struct $8FBSYMBOL*)0u;
	CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116);
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$195;
	{
		int32 vr$4 = LEXGETTOKEN( 0 );
		if( vr$4 != 46 ) goto label$197;
		{
			struct $10FBSYMCHAIN* vr$6 = HGLOBALID( 2, &BASE_PARENT$1 );
			CHAIN_$1 = vr$6;
		}
		label$197:;
		label$196:;
	}
	label$195:;
	label$194:;
	if( BASE_PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$199;
	{
		PARENT$1 = BASE_PARENT$1;
	}
	label$199:;
	label$198:;
	label$200:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$201;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		{
			uint32 TMP$114$3;
			TMP$114$3 = *(uint32*)SYM$1;
			goto label$203;
			label$204:;
			{
			}
			goto label$202;
			label$205:;
			{
				int32 vr$9 = HISSTRUCTALLOWED( SYM$1, OPTIONS$1 );
				if( vr$9 != 0 ) goto label$207;
				{
					SYM$1 = PARENT$1;
					goto label$201;
				}
				label$207:;
				label$206:;
			}
			goto label$202;
			label$208:;
			{
				{
					int32 TMP$115$5;
					TMP$115$5 = *(int32*)((uint8*)SYM$1 + 28) & 511;
					if( TMP$115$5 != 20 ) goto label$210;
					label$211:;
					{
						SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
						int32 vr$13 = HISSTRUCTALLOWED( SYM$1, OPTIONS$1 );
						if( vr$13 != 0 ) goto label$213;
						{
							SYM$1 = PARENT$1;
							goto label$201;
						}
						label$213:;
						label$212:;
					}
					goto label$209;
					label$210:;
					if( TMP$115$5 != 10 ) goto label$214;
					label$215:;
					{
						SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32);
					}
					goto label$209;
					label$214:;
					{
						SYM$1 = PARENT$1;
						goto label$201;
					}
					label$216:;
					label$209:;
				}
			}
			goto label$202;
			label$217:;
			{
				SYM$1 = PARENT$1;
				goto label$201;
			}
			goto label$202;
			label$203:;
			static const void* tmp$117[6] = {
				&&label$204,
				&&label$204,
				&&label$205,
				&&label$204,
				&&label$217,
				&&label$208,
			};
			if( (TMP$114$3 - 8u) > 5u ) goto label$217;
			goto *tmp$117[TMP$114$3 - 8u];
			label$202:;
		}
		if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$219;
		{
			if( (OPTIONS$1 & 256) != 0 ) goto label$221;
			{
				int32 vr$16 = SYMBCHECKACCESS( SYM$1 );
				if( vr$16 != 0 ) goto label$223;
				{
					ERRREPORT( 202, 0, (uint8*)0u );
				}
				label$223:;
				label$222:;
			}
			label$221:;
			label$220:;
		}
		label$219:;
		label$218:;
		int32 vr$17 = LEXGETLOOKAHEAD( 1, 64 );
		if( vr$17 == 46 ) goto label$225;
		{
			LEXSKIPTOKEN( 64 );
			if( (OPTIONS$1 & 1) == 0 ) goto label$227;
			{
				goto label$201;
			}
			label$227:;
			label$226:;
			ERRREPORT( 120, 0, (uint8*)0u );
			goto label$201;
		}
		label$225:;
		label$224:;
		if( *(int32*)SYM$1 != 9 ) goto label$229;
		{
			if( *(int32*)((uint8*)SYM$1 + 76) != 0 ) goto label$231;
			{
				ERRREPORT( 257, 0, (uint8*)0u );
				goto label$201;
			}
			label$231:;
			label$230:;
		}
		label$229:;
		label$228:;
		LEXSKIPTOKEN( 2112 );
		LEXSKIPTOKEN( 64 );
		PARENT$1 = SYM$1;
		if( BASE_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$233;
		{
			BASE_PARENT$1 = PARENT$1;
		}
		label$233:;
		label$232:;
		{
			uint32 TMP$116$3;
			int32 vr$21 = LEXGETCLASS( 0 );
			TMP$116$3 = (uint32)vr$21;
			goto label$235;
			label$236:;
			{
			}
			goto label$234;
			label$237:;
			{
				if( (OPTIONS$1 & 520) == 0 ) goto label$239;
				{
					goto label$201;
				}
				label$239:;
				label$238:;
				ERRREPORT( 14, 0, (uint8*)0u );
				goto label$201;
			}
			goto label$234;
			label$240:;
			{
				int32 vr$23 = LEXGETTOKEN( 0 );
				if( vr$23 != 91 ) goto label$242;
				{
					if( (OPTIONS$1 & 8) == 0 ) goto label$244;
					{
						goto label$201;
					}
					label$244:;
					label$243:;
				}
				label$242:;
				label$241:;
				ERRREPORT( 14, 0, (uint8*)0u );
				goto label$201;
			}
			goto label$234;
			label$235:;
			static const void* tmp$118[6] = {
				&&label$236,
				&&label$237,
				&&label$236,
				&&label$240,
				&&label$240,
				&&label$237,
			};
			if( TMP$116$3 > 5u ) goto label$240;
			goto *tmp$118[TMP$116$3 - 0u];
			label$234:;
		}
		uint8* vr$25 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$26 = SYMBLOOKUPAT( SYM$1, (uint8*)vr$25, 0, -1 );
		CHAIN_$1 = vr$26;
	}
	goto label$200;
	label$201:;
	int32 vr$27 = HCHECKDECL( BASE_PARENT$1, PARENT$1, CHAIN_$1, OPTIONS$1 );
	if( vr$27 != 0 ) goto label$246;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$191;
	}
	label$246:;
	label$245:;
	fb$result$1 = SYM$1;
	label$191:;
	return fb$result$1;
}

void CCURRENTPARENTID( void )
{
	label$247:;
	struct $8FBSYMBOL* S$1;
	struct $8FBSYMBOL* vr$0 = CPARENTID( 0 );
	S$1 = vr$0;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$250;
	{
		goto label$248;
	}
	label$250:;
	label$249:;
	{
		$12FB_SYMBCLASS TMP$119$2;
		TMP$119$2 = *($12FB_SYMBCLASS*)S$1;
		if( TMP$119$2 != 8 ) goto label$252;
		label$253:;
		{
			if( S$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$255;
			{
				ERRREPORT( 131, 0, (uint8*)0u );
			}
			label$255:;
			label$254:;
		}
		goto label$251;
		label$252:;
		if( TMP$119$2 != 11 ) goto label$256;
		label$257:;
		{
			if( S$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$259;
			{
				ERRREPORT( 158, 0, (uint8*)0u );
			}
			label$259:;
			label$258:;
		}
		label$256:;
		label$251:;
	}
	label$248:;
}

struct $8FBSYMBOL* CIDENTIFIERORUDTMEMBER( struct $8FBSYMBOL** BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$260:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$263;
	{
		if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$265;
		{
			struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( BASE_PARENT$1, 664 );
			CHAIN_$1 = vr$2;
		}
		goto label$264;
		label$265:;
		{
			uint8* vr$3 = LEXGETTEXT(  );
			struct $10FBSYMCHAIN* vr$5 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$3, 0, -1 );
			CHAIN_$1 = vr$5;
			if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$267;
			{
				struct $8FBSYMBOL* TMP$120$4;
				TMP$120$4 = (struct $8FBSYMBOL*)0u;
				struct $10FBSYMCHAIN* vr$7 = CIDENTIFIER( &TMP$120$4, 664 );
				CHAIN_$1 = vr$7;
			}
			label$267:;
			label$266:;
		}
		label$264:;
	}
	label$263:;
	label$262:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$269;
	{
		LEXSKIPTOKEN( 0 );
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$261;
	}
	label$269:;
	label$268:;
	if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$271;
	{
		LEXSKIPTOKEN( 0 );
		fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		goto label$261;
	}
	label$271:;
	label$270:;
	if( *(int32*)*BASE_PARENT$1 == 10 ) goto label$273;
	{
		LEXSKIPTOKEN( 2048 );
		fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		goto label$261;
	}
	label$273:;
	label$272:;
	{
		uint32 TMP$121$2;
		int32 vr$13 = LEXGETCLASS( 0 );
		TMP$121$2 = (uint32)vr$13;
		goto label$275;
		label$276:;
		{
			LEXSKIPTOKEN( 0 );
			fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			goto label$261;
		}
		goto label$274;
		label$277:;
		{
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = (struct $8FBSYMBOL*)0u;
			if( (*(int32*)((uint8*)*BASE_PARENT$1 + 12) & 262144) != 0 ) goto label$279;
			{
				uint8* vr$18 = LEXGETTEXT(  );
				struct $10FBSYMCHAIN* vr$20 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$18, 0, -1 );
				CHAIN_$1 = vr$20;
				LEXSKIPTOKEN( 0 );
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$281;
				{
					fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
					goto label$261;
				}
				label$281:;
				label$280:;
				fb$result$1 = (struct $8FBSYMBOL*)0u;
				goto label$261;
			}
			label$279:;
			label$278:;
			{
				uint32 TMP$122$4;
				int32 vr$22 = LEXGETTOKEN( 0 );
				TMP$122$4 = (uint32)vr$22;
				goto label$283;
				label$284:;
				{
					struct $8FBSYMBOL* vr$24 = SYMBGETCOMPCTORHEAD( *BASE_PARENT$1 );
					SYM$3 = vr$24;
				}
				goto label$282;
				label$285:;
				{
					struct $8FBSYMBOL* vr$26 = SYMBGETCOMPDTOR1( *BASE_PARENT$1 );
					SYM$3 = vr$26;
				}
				goto label$282;
				label$286:;
				{
					struct $8FBSYMBOL* vr$28 = SYMBGETCOMPOPOVLHEAD( *BASE_PARENT$1, 0 );
					SYM$3 = vr$28;
				}
				goto label$282;
				label$287:;
				{
					SYM$3 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)*BASE_PARENT$1 + 140) + 140);
				}
				goto label$282;
				label$283:;
				static const void* tmp$123[71] = {
					&&label$284,
					&&label$285,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$286,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$282,
					&&label$287,
				};
				if( (TMP$122$4 - 347u) > 70u ) goto label$282;
				goto *tmp$123[TMP$122$4 - 347u];
				label$282:;
			}
			LEXSKIPTOKEN( 0 );
			fb$result$1 = SYM$3;
			goto label$261;
		}
		goto label$274;
		label$275:;
		static const void* tmp$124[3] = {
			&&label$276,
			&&label$277,
			&&label$276,
		};
		if( TMP$121$2 > 2u ) goto label$274;
		goto *tmp$124[TMP$121$2 - 0u];
		label$274:;
	}
	int32 vr$32 = LEXGETCLASS( 0 );
	int32 vr$34 = LEXGETTOKEN( 0 );
	if( (-(vr$32 == 5) | -(vr$34 == 91)) == 0 ) goto label$289;
	{
		int32 OP$2;
		OP$2 = -1;
		int32 vr$37 = COPERATOR( -1 );
		OP$2 = vr$37;
		if( OP$2 == -1 ) goto label$291;
		{
			struct $8FBSYMBOL* vr$39 = SYMBGETCOMPOPOVLHEAD( *BASE_PARENT$1, OP$2 );
			fb$result$1 = vr$39;
			goto label$261;
		}
		label$291:;
		label$290:;
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$261;
	}
	label$289:;
	label$288:;
	LEXSKIPTOKEN( 0 );
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	goto label$261;
	label$261:;
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

static void HSKIPSYMBOL( void )
{
	label$10:;
	label$12:;
	{
		LEXSKIPTOKEN( 64 );
		int32 vr$0 = LEXGETTOKEN( 0 );
		if( vr$0 == 46 ) goto label$16;
		{
			goto label$13;
		}
		label$16:;
		label$15:;
		{
			uint32 TMP$92$3;
			int32 vr$1 = LEXGETCLASS( 0 );
			TMP$92$3 = (uint32)vr$1;
			goto label$18;
			label$19:;
			{
			}
			goto label$17;
			label$20:;
			{
				goto label$13;
			}
			goto label$17;
			label$18:;
			static const void* tmp$125[3] = {
				&&label$19,
				&&label$19,
				&&label$19,
			};
			if( TMP$92$3 > 2u ) goto label$20;
			goto *tmp$125[TMP$92$3 - 0u];
			label$17:;
		}
	}
	label$14:;
	goto label$12;
	label$13:;
	label$11:;
}

static struct $10FBSYMCHAIN* HGLOBALID( $8FB_IDOPT OPTIONS$1, struct $8FBSYMBOL** BASE_PARENT$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$21:;
	fb$result$1 = (struct $10FBSYMCHAIN*)0u;
	int32 vr$1 = LEXGETLOOKAHEAD( 1, 64 );
	if( vr$1 != 46 ) goto label$24;
	{
		LEXSKIPTOKEN( 64 );
	}
	goto label$23;
	label$24:;
	{
		if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$26;
		{
			goto label$22;
		}
		label$26:;
		label$25:;
	}
	label$23:;
	if( (OPTIONS$1 & 4) == 0 ) goto label$28;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$30;
		{
			ERRREPORT( 131, 0, (uint8*)0u );
		}
		label$30:;
		label$29:;
	}
	label$28:;
	label$27:;
	LEXSKIPTOKEN( 64 );
	{
		int32 TMP$93$2;
		int32 vr$4 = LEXGETCLASS( 0 );
		TMP$93$2 = vr$4;
		if( TMP$93$2 == 0 ) goto label$33;
		label$34:;
		if( TMP$93$2 != 2 ) goto label$32;
		label$33:;
		{
		}
		goto label$31;
		label$32:;
		{
			if( (OPTIONS$1 & 2) == 0 ) goto label$37;
			{
				ERRREPORT( 14, 0, (uint8*)0u );
			}
			label$37:;
			label$36:;
			goto label$22;
		}
		label$35:;
		label$31:;
	}
	*BASE_PARENT$1 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352);
	uint8* vr$8 = LEXGETTEXT(  );
	struct $10FBSYMCHAIN* vr$10 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$8, 0, -1 );
	fb$result$1 = vr$10;
	label$22:;
	return fb$result$1;
}

static FBSTRING* HGETCHAINNAMES( struct $10FBSYMCHAIN* CHAIN_$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$38:;
	struct $8FBSYMBOL* NS$1;
	FBSTRING NAMES$1;
	__builtin_memset( &NAMES$1, 0, 12 );
	label$40:;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 12 );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 144);
		label$43:;
		if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$44;
		{
			if( (*(int32*)((uint8*)NS$1 + 4) & 16777216) == 0 ) goto label$46;
			{
				if( *(int32*)NS$1 != 9 ) goto label$48;
				{
					FBSTRING TMP$95$5;
					__builtin_memset( &TMP$95$5, 0, 12 );
					FBSTRING* vr$13 = fb_StrConcat( &TMP$95$5, (void*)"<enum>.", 8, (void*)&S$2, -1 );
					fb_StrAssign( (void*)&S$2, -1, (void*)vr$13, -1, 0 );
				}
				goto label$47;
				label$48:;
				{
					FBSTRING TMP$97$5;
					__builtin_memset( &TMP$97$5, 0, 12 );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$97$5, (void*)"<unknown>.", 11, (void*)&S$2, -1 );
					fb_StrAssign( (void*)&S$2, -1, (void*)vr$18, -1, 0 );
				}
				label$47:;
			}
			goto label$45;
			label$46:;
			{
				FBSTRING TMP$98$4;
				FBSTRING TMP$99$4;
				__builtin_memset( &TMP$98$4, 0, 12 );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$98$4, *(void**)((uint8*)NS$1 + 16), 0, (void*)".", 2 );
				__builtin_memset( &TMP$99$4, 0, 12 );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$99$4, (void*)vr$24, -1, (void*)&S$2, -1 );
				fb_StrAssign( (void*)&S$2, -1, (void*)vr$27, -1, 0 );
			}
			label$45:;
			if( *(struct $8FBHASHTB**)((uint8*)NS$1 + 144) != (struct $8FBHASHTB*)0u ) goto label$50;
			{
				goto label$44;
			}
			label$50:;
			label$49:;
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 144);
		}
		goto label$43;
		label$44:;
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 4) & 16777216) == 0 ) goto label$52;
		{
			fb_StrConcatAssign( (void*)&NAMES$1, -1, (void*)&S$2, -1, 0 );
			fb_StrConcatAssign( (void*)&NAMES$1, -1, (void*)"<unnamed>", 10, 0 );
		}
		goto label$51;
		label$52:;
		{
			FBSTRING TMP$101$3;
			FBSTRING TMP$102$3;
			__builtin_memset( &TMP$101$3, 0, 12 );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$101$3, (void*)&S$2, -1, *(void**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 16), 0 );
			__builtin_memset( &TMP$102$3, 0, 12 );
			FBSTRING* vr$47 = fb_StrConcat( &TMP$102$3, (void*)&NAMES$1, -1, (void*)vr$43, -1 );
			fb_StrAssign( (void*)&NAMES$1, -1, (void*)vr$47, -1, 0 );
		}
		label$51:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$54;
		{
			fb_StrDelete( (FBSTRING*)&S$2 );
			goto label$41;
		}
		label$54:;
		label$53:;
		fb_StrConcatAssign( (void*)&NAMES$1, -1, (void*)", ", 3, 0 );
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$42:;
	goto label$40;
	label$41:;
	fb_StrInit( (void*)&fb$result$1, -1, (void*)&NAMES$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&NAMES$1 );
	goto label$39;
	fb_StrDelete( (FBSTRING*)&NAMES$1 );
	label$39:;
	FBSTRING* vr$58 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$58;
}

static int32 HCHECKDECL( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, $8FB_IDOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$55:;
	if( (OPTIONS$1 & 2) == 0 ) goto label$58;
	{
		if( (OPTIONS$1 & 4) == 0 ) goto label$60;
		{
			if( BASE_PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$62;
			{
				if( BASE_PARENT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$64;
				{
					if( *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)BASE_PARENT$1 + 164) == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$66;
					{
						ERRREPORT( 131, 0, (uint8*)0u );
						fb$result$1 = 0;
						goto label$56;
					}
					label$66:;
					label$65:;
				}
				label$64:;
				label$63:;
			}
			label$62:;
			label$61:;
		}
		goto label$59;
		label$60:;
		{
			if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$68;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4) == (struct $10FBSYMCHAIN*)0u ) goto label$70;
				{
					if( *(int32*)((uint8*)CHAIN_$1 + 8) == 0 ) goto label$72;
					{
						int32 TMP$104$6;
						struct $8FBSYMBOL* NS$6;
						NS$6 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 144);
						struct $8FBSYMBOL* NS2$6;
						NS2$6 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4) + 144);
						if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$73;
						TMP$104$6 = -(NS$6 != PARENT$1);
						goto label$292;
						label$73:;
						TMP$104$6 = -(NS$6 != NS2$6);
						label$292:;
						if( TMP$104$6 == 0 ) goto label$75;
						{
							FBSTRING TMP$106$7;
							FBSTRING TMP$107$7;
							__builtin_memset( &TMP$107$7, 0, 12 );
							FBSTRING* vr$18 = HGETCHAINNAMES( CHAIN_$1 );
							__builtin_memset( &TMP$106$7, 0, 12 );
							FBSTRING* vr$21 = fb_StrConcat( &TMP$106$7, (void*)" for ", 6, (void*)vr$18, -1 );
							fb_StrAssign( (void*)&TMP$107$7, -1, (void*)vr$21, -1, 0 );
							ERRREPORT( 255, 0, (uint8*)*(uint8**)&TMP$107$7 );
							fb_StrDelete( (FBSTRING*)&TMP$107$7 );
						}
						label$75:;
						label$74:;
					}
					label$72:;
					label$71:;
				}
				label$70:;
				label$69:;
			}
			label$68:;
			label$67:;
		}
		label$59:;
	}
	label$58:;
	label$57:;
	fb$result$1 = -1;
	label$56:;
	return fb$result$1;
}

static int32 HISSTRUCTALLOWED( struct $8FBSYMBOL* SYM$1, $8FB_IDOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$76:;
	if( (OPTIONS$1 & 16) != 0 ) goto label$79;
	{
		fb$result$1 = 0;
		goto label$77;
	}
	label$79:;
	label$78:;
	if( (*(int32*)((uint8*)SYM$1 + 120) & 262144) == 0 ) goto label$81;
	{
		fb$result$1 = -1;
		goto label$77;
	}
	label$81:;
	label$80:;
	if( (OPTIONS$1 & 512) == 0 ) goto label$83;
	{
		fb$result$1 = -1;
		goto label$77;
	}
	label$83:;
	label$82:;
	if( (*(int32*)((uint8*)SYM$1 + 12) & 262144) != 0 ) goto label$85;
	{
		fb$result$1 = 0;
		goto label$77;
	}
	label$85:;
	label$84:;
	if( (OPTIONS$1 & 64) == 0 ) goto label$87;
	{
		fb$result$1 = -((*(int32*)((uint8*)SYM$1 + 120) & 16384) != 0);
		goto label$77;
	}
	label$87:;
	label$86:;
	fb$result$1 = -1;
	label$77:;
	return fb$result$1;
}
