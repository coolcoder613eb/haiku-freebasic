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
typedef int64 $8FB_TOKEN;
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
		uint16* LITTEXTW;
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
typedef int64 (*tmp$34)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$34 CALLBACK;
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
		uint16* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$28)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 24 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int64 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 776 );
typedef FBSTRING* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
typedef uint16* (*tmp$30)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint16* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$28 DPROCZ;
		tmp$29 MPROCZ;
	};
	union {
		tmp$30 MPROCW;
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
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint16 TEXTW[1025];
	};
	int64 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int64 PRDPOS;
		int64 HASESC;
	};
	int64 SUFFIXCHAR;
	int64 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 2128 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int64 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint64 CURRCHAR;
	uint64 LAHDCHAR1;
	uint64 LAHDCHAR2;
	int64 LINENUM;
	int64 LASTTK_ID;
	int64 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int64 IS_FB_EVAL;
	int64 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint16* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int64 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint16* BUFFPTRW;
			uint16 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 25104 );
typedef int64 $8LEXCHECK;
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
typedef int64 $10FBOPENKIND;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzquirkzfile( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
struct $7ASTNODE* ASTCLONETREE( struct $7ASTNODE* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMSIDEFX( struct $7ASTNODE** );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
int64 SYMBISARRAY( struct $8FBSYMBOL* );
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCHIDORKW( uint8*, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 CASSIGNTOKEN( void );
struct $7ASTNODE* CEXPRESSION( void );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
struct $7ASTNODE* HMATCHEXPR( int64 );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int64 );
int64 RTLPRINT( struct $7ASTNODE*, int64, int64, struct $7ASTNODE*, int64 );
int64 RTLPRINTSPCTAB( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLWRITE( struct $7ASTNODE*, int64, struct $7ASTNODE* );
int64 RTLPRINTUSINGINIT( struct $7ASTNODE*, int64 );
int64 RTLPRINTUSINGEND( struct $7ASTNODE*, int64 );
int64 RTLPRINTUSING( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64, int64 );
struct $7ASTNODE* RTLFILEOPEN( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, $10FBOPENKIND );
struct $7ASTNODE* RTLFILEOPENSHORT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILERENAME( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILECLOSE( struct $7ASTNODE*, int64 );
int64 RTLFILESEEK( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* RTLFILETELL( struct $7ASTNODE* );
struct $7ASTNODE* RTLFILEPUT( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEPUTARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEGET( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILEGETARRAY( struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLFILESTRINPUT( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
int64 RTLFILELINEINPUT( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLFILELINEINPUTWSTR( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
int64 RTLFILEINPUT( int64, struct $7ASTNODE*, int64, int64 );
int64 RTLFILEINPUTGET( struct $7ASTNODE* );
int64 RTLFILELOCK( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $7ASTNODE* );
static struct $7ASTNODE* HFILECLOSE( int64 );
static struct $7ASTNODE* HFILEPUT( int64 );
static struct $7ASTNODE* HFILEGET( int64 );
static struct $7ASTNODE* HFILEOPEN( int64 );
static struct $7ASTNODE* HFILERENAME( int64 );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
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
static struct $8FBARRAY2IlE tmp$82$;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int64 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 426784 );
extern struct $7LEX_CTX LEX$;

int64 CPRINTSTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* USINGEXPR$1;
	__builtin_memset( &USINGEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	int64 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 8ll );
	int64 ISSEMICOLON$1;
	__builtin_memset( &ISSEMICOLON$1, 0, 8ll );
	int64 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 8ll );
	int64 ISTAB$1;
	__builtin_memset( &ISTAB$1, 0, 8ll );
	int64 ISSPC$1;
	__builtin_memset( &ISSPC$1, 0, 8ll );
	int64 ISLPRINT$1;
	__builtin_memset( &ISLPRINT$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		if( TK$1 == 463ll ) goto label$14;
		label$15:;
		if( TK$1 != 63ll ) goto label$13;
		label$14:;
		{
			ISLPRINT$1 = 0ll;
		}
		goto label$12;
		label$13:;
		if( TK$1 != 464ll ) goto label$16;
		label$17:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 33554432ll) != 0ll ) goto label$19;
			{
				ERRREPORTNOTALLOWED( 33554432ll, 146ll, (uint8*)0ull );
			}
			goto label$18;
			label$19:;
			{
				ISLPRINT$1 = -1ll;
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
	LEXSKIPTOKEN( 2048ll );
	if( ISLPRINT$1 == 0ll ) goto label$22;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTI( -1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FILEXPR$1 = vr$12;
	}
	goto label$21;
	label$22:;
	{
		int64 vr$13 = HMATCH( 35ll, 0ll );
		if( vr$13 == 0ll ) goto label$24;
		{
			struct $7ASTNODE* vr$14 = CEXPRESSION(  );
			FILEXPR$1 = vr$14;
			if( FILEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$26;
			{
				ERRREPORT( 327ll, 0ll, (uint8*)0ull );
				goto label$28;
				{
					fb$result$1 = 0ll;
					goto label$11;
				}
				label$28:;
				label$27:;
				struct $7ASTNODE* vr$15 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
				FILEXPR$1 = vr$15;
			}
			label$26:;
			label$25:;
			int64 vr$16 = LEXGETTOKEN( 0ll );
			if( vr$16 == 44ll ) goto label$30;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$29;
			label$30:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$29:;
		}
		goto label$23;
		label$24:;
		{
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FILEXPR$1 = vr$17;
		}
		label$23:;
	}
	label$21:;
	if( *(int64*)FILEXPR$1 == 16ll ) goto label$32;
	{
		struct $7ASTNODE* vr$20 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$20 );
	}
	label$32:;
	label$31:;
	USINGEXPR$1 = (struct $7ASTNODE*)0ull;
	EXPRESSIONS$1 = 0ll;
	label$33:;
	{
		int64 vr$21 = HMATCH( 287ll, 2048ll );
		if( vr$21 == 0ll ) goto label$37;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$39;
			{
				ERRREPORT( 3ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$22 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$22;
				int64 vr$23 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
				if( vr$23 != 0ll ) goto label$41;
				{
					goto label$11;
				}
				label$41:;
				label$40:;
			}
			label$39:;
			label$38:;
			struct $7ASTNODE* vr$24 = HMATCHEXPR( 17ll );
			USINGEXPR$1 = vr$24;
			if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$43;
			{
				goto label$11;
			}
			label$43:;
			label$42:;
			int64 vr$25 = HMATCH( 59ll, 0ll );
			if( vr$25 != 0ll ) goto label$45;
			{
				ERRREPORT( 47ll, 0ll, (uint8*)0ull );
			}
			label$45:;
			label$44:;
			int64 vr$26 = RTLPRINTUSINGINIT( USINGEXPR$1, ISLPRINT$1 );
			if( vr$26 != 0ll ) goto label$47;
			{
				goto label$11;
			}
			label$47:;
			label$46:;
		}
		label$37:;
		label$36:;
		ISSPC$1 = 0ll;
		ISTAB$1 = 0ll;
		int64 vr$27 = HMATCH( 486ll, 4096ll );
		if( vr$27 == 0ll ) goto label$49;
		{
			ISSPC$1 = -1ll;
			int64 vr$28 = LEXGETTOKEN( 0ll );
			if( vr$28 == 40ll ) goto label$51;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$50;
			label$51:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$50:;
			struct $7ASTNODE* vr$29 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$29;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$53;
			{
				goto label$11;
			}
			label$53:;
			label$52:;
			int64 vr$30 = LEXGETTOKEN( 0ll );
			if( vr$30 == 41ll ) goto label$55;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$54;
			label$55:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$54:;
		}
		goto label$48;
		label$49:;
		int64 vr$31 = HMATCH( 487ll, 4096ll );
		if( vr$31 == 0ll ) goto label$56;
		{
			ISTAB$1 = -1ll;
			int64 vr$32 = LEXGETTOKEN( 0ll );
			if( vr$32 == 40ll ) goto label$58;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$57;
			label$58:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$57:;
			struct $7ASTNODE* vr$33 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$33;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$60;
			{
				goto label$11;
			}
			label$60:;
			label$59:;
			int64 vr$34 = LEXGETTOKEN( 0ll );
			if( vr$34 == 41ll ) goto label$62;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$61;
			label$62:;
			{
				LEXSKIPTOKEN( 0ll );
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
		ISCOMMA$1 = 0ll;
		ISSEMICOLON$1 = 0ll;
		int64 vr$36 = HMATCH( 44ll, 0ll );
		if( vr$36 == 0ll ) goto label$64;
		{
			if( USINGEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$66;
			{
				ERRREPORT( 47ll, 0ll, (uint8*)0ull );
			}
			label$66:;
			label$65:;
			ISCOMMA$1 = -1ll;
		}
		goto label$63;
		label$64:;
		int64 vr$37 = HMATCH( 59ll, 0ll );
		if( vr$37 == 0ll ) goto label$67;
		{
			ISSEMICOLON$1 = -1ll;
		}
		label$67:;
		label$63:;
		if( ((ISSPC$1 | ISTAB$1) & (int64)-(ISSEMICOLON$1 == 0ll)) == 0ll ) goto label$69;
		{
			ERRREPORT( 47ll, 0ll, (uint8*)0ull );
		}
		label$69:;
		label$68:;
		if( (((int64)-(ISCOMMA$1 == 0ll) & (int64)-(ISSEMICOLON$1 == 0ll)) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$71;
		{
			goto label$34;
		}
		label$71:;
		label$70:;
		if( (ISSPC$1 | ISTAB$1) == 0ll ) goto label$73;
		{
			struct $7ASTNODE* vr$47 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$47;
			int64 vr$48 = RTLPRINTSPCTAB( FILEXPRCOPY$1, EXPR$1, ISTAB$1, ISLPRINT$1 );
			if( vr$48 != 0ll ) goto label$75;
			{
				goto label$11;
			}
			label$75:;
			label$74:;
		}
		goto label$72;
		label$73:;
		{
			if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$77;
			{
				struct $7ASTNODE* vr$49 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$49;
				int64 vr$50 = RTLPRINT( FILEXPRCOPY$1, ISCOMMA$1, ISSEMICOLON$1, EXPR$1, ISLPRINT$1 );
				if( vr$50 != 0ll ) goto label$79;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				}
				label$79:;
				label$78:;
			}
			goto label$76;
			label$77:;
			{
				struct $7ASTNODE* vr$51 = ASTCLONETREE( FILEXPR$1 );
				FILEXPRCOPY$1 = vr$51;
				int64 vr$52 = RTLPRINTUSING( FILEXPRCOPY$1, EXPR$1, ISCOMMA$1, ISSEMICOLON$1, ISLPRINT$1 );
				if( vr$52 != 0ll ) goto label$81;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				}
				label$81:;
				label$80:;
			}
			label$76:;
		}
		label$72:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1ll;
	}
	label$35:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) != 0ll ) goto label$33;
	label$34:;
	if( USINGEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$83;
	{
		if( EXPRESSIONS$1 != 0ll ) goto label$85;
		{
			struct $7ASTNODE* vr$55 = ASTCLONETREE( FILEXPR$1 );
			FILEXPRCOPY$1 = vr$55;
			int64 vr$56 = RTLPRINT( FILEXPRCOPY$1, 0ll, 0ll, (struct $7ASTNODE*)0ull, ISLPRINT$1 );
			if( vr$56 != 0ll ) goto label$87;
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
		int64 vr$58 = RTLPRINTUSINGEND( FILEXPRCOPY$1, ISLPRINT$1 );
		if( vr$58 != 0ll ) goto label$89;
		{
			goto label$11;
		}
		label$89:;
		label$88:;
	}
	label$82:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1ll;
	label$11:;
	return fb$result$1;
}

int64 CWRITESTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$90:;
	struct $7ASTNODE* FILEXPR$1;
	__builtin_memset( &FILEXPR$1, 0, 8ll );
	struct $7ASTNODE* FILEXPRCOPY$1;
	__builtin_memset( &FILEXPRCOPY$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	int64 EXPRESSIONS$1;
	__builtin_memset( &EXPRESSIONS$1, 0, 8ll );
	int64 ISCOMMA$1;
	__builtin_memset( &ISCOMMA$1, 0, 8ll );
	fb$result$1 = 0ll;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$6 = HMATCH( 35ll, 0ll );
	if( vr$6 == 0ll ) goto label$93;
	{
		struct $7ASTNODE* vr$7 = CEXPRESSION(  );
		FILEXPR$1 = vr$7;
		if( FILEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$95;
		{
			ERRREPORT( 327ll, 0ll, (uint8*)0ull );
			goto label$97;
			{
				fb$result$1 = 0ll;
				goto label$91;
			}
			label$97:;
			label$96:;
			struct $7ASTNODE* vr$8 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
			FILEXPR$1 = vr$8;
		}
		label$95:;
		label$94:;
		int64 vr$9 = LEXGETTOKEN( 0ll );
		if( vr$9 == 44ll ) goto label$99;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$98;
		label$99:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$98:;
	}
	goto label$92;
	label$93:;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FILEXPR$1 = vr$10;
	}
	label$92:;
	if( *(int64*)FILEXPR$1 == 16ll ) goto label$101;
	{
		struct $7ASTNODE* vr$13 = ASTREMSIDEFX( &FILEXPR$1 );
		ASTADD( vr$13 );
	}
	label$101:;
	label$100:;
	EXPRESSIONS$1 = 0ll;
	label$102:;
	{
		struct $7ASTNODE* vr$14 = CEXPRESSION(  );
		EXPR$1 = vr$14;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$106;
		{
			EXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$106:;
		label$105:;
		ISCOMMA$1 = 0ll;
		int64 vr$15 = HMATCH( 44ll, 0ll );
		if( vr$15 == 0ll ) goto label$108;
		{
			ISCOMMA$1 = -1ll;
		}
		label$108:;
		label$107:;
		struct $7ASTNODE* vr$16 = ASTCLONETREE( FILEXPR$1 );
		FILEXPRCOPY$1 = vr$16;
		if( ((int64)-(ISCOMMA$1 == 0ll) & (int64)-(EXPR$1 == (struct $7ASTNODE*)0ull)) == 0ll ) goto label$110;
		{
			if( EXPRESSIONS$1 != 0ll ) goto label$112;
			{
				RTLWRITE( FILEXPRCOPY$1, 0ll, (struct $7ASTNODE*)0ull );
			}
			label$112:;
			label$111:;
			goto label$103;
		}
		label$110:;
		label$109:;
		int64 vr$20 = RTLWRITE( FILEXPRCOPY$1, ISCOMMA$1, EXPR$1 );
		if( vr$20 != 0ll ) goto label$114;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
		}
		label$114:;
		label$113:;
		EXPRESSIONS$1 = EXPRESSIONS$1 + 1ll;
	}
	label$104:;
	if( ISCOMMA$1 != 0ll ) goto label$102;
	label$103:;
	ASTDELTREE( FILEXPR$1 );
	fb$result$1 = -1ll;
	label$91:;
	return fb$result$1;
}

int64 CLINEINPUTSTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$115:;
	struct $7ASTNODE* FILESTREXPR$1;
	FILESTREXPR$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* DSTEXPR$1;
	DSTEXPR$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* MAXLENEXPR$1;
	MAXLENEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 ISFILE$1;
	ISFILE$1 = 0ll;
	int64 ADDNEWLINE$1;
	ADDNEWLINE$1 = 0ll;
	int64 ISSEP$1;
	ISSEP$1 = 0ll;
	int64 ADDQUESTION$1;
	ADDQUESTION$1 = 0ll;
	int64 DTYPE$1;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETLOOKAHEAD( 1ll, 0ll );
	if( vr$1 == 478ll ) goto label$118;
	{
		goto label$116;
	}
	label$118:;
	label$117:;
	LEXSKIPTOKEN( 2048ll );
	LEXSKIPTOKEN( 2048ll );
	int64 vr$2 = HMATCH( 59ll, 0ll );
	ADDNEWLINE$1 = (int64)-(vr$2 == 0ll);
	int64 vr$4 = HMATCH( 35ll, 0ll );
	if( vr$4 == 0ll ) goto label$120;
	{
		ISFILE$1 = -1ll;
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILESTREXPR$1 = vr$5;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$122;
		{
			ERRREPORT( 327ll, 0ll, (uint8*)0ull );
			goto label$124;
			{
				fb$result$1 = 0ll;
				goto label$116;
			}
			label$124:;
			label$123:;
			struct $7ASTNODE* vr$6 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
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
	int64 vr$8 = HMATCH( 44ll, 0ll );
	if( vr$8 != 0ll ) goto label$126;
	{
		int64 vr$9 = HMATCH( 59ll, 0ll );
		if( vr$9 != 0ll ) goto label$128;
		{
			if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$130;
			{
				if( ISFILE$1 == 0ll ) goto label$132;
				{
					ERRREPORT( 16ll, 0ll, (uint8*)0ull );
				}
				goto label$131;
				label$132:;
				{
					ERRREPORT( 326ll, 0ll, (uint8*)0ull );
				}
				label$131:;
			}
			label$130:;
			label$129:;
		}
		goto label$127;
		label$128:;
		{
			ADDQUESTION$1 = -1ll;
			ISSEP$1 = -1ll;
		}
		label$127:;
	}
	goto label$125;
	label$126:;
	{
		ISSEP$1 = -1ll;
	}
	label$125:;
	if( ISSEP$1 != -1ll ) goto label$134;
	{
		if( DSTEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$136;
		{
			FILESTREXPR$1 = DSTEXPR$1;
			DSTEXPR$1 = (struct $7ASTNODE*)0ull;
		}
		label$136:;
		label$135:;
	}
	label$134:;
	label$133:;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		struct $7ASTNODE* vr$10 = CVARORDEREF( 0ll );
		DSTEXPR$1 = vr$10;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$140;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
			fb$result$1 = -1ll;
			goto label$116;
		}
		label$140:;
		label$139:;
	}
	label$138:;
	label$137:;
	if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$142;
	{
		ERRREPORT( 119ll, 0ll, (uint8*)0ull );
	}
	goto label$141;
	label$142:;
	struct $8FBSYMBOL* vr$13 = ASTGETSTRLITSYMBOL( DSTEXPR$1 );
	if( vr$13 == (struct $8FBSYMBOL*)0ull ) goto label$143;
	{
		ERRREPORT( 14ll, -1ll, (uint8*)0ull );
	}
	label$143:;
	label$141:;
	int64 vr$16 = RTLCALCSTRLEN( DSTEXPR$1, *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll );
	if( vr$16 != 0ll ) goto label$145;
	{
		int64 vr$17 = HMATCH( 44ll, 0ll );
		if( vr$17 == 0ll ) goto label$147;
		{
			struct $7ASTNODE* vr$18 = CEXPRESSION(  );
			MAXLENEXPR$1 = vr$18;
			if( MAXLENEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$149;
			{
				ERRREPORT( 9ll, 0ll, (uint8*)0ull );
			}
			label$149:;
			label$148:;
		}
		goto label$146;
		label$147:;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		label$146:;
	}
	label$145:;
	label$144:;
	{
		int64 TMP$94$2;
		TMP$94$2 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
		if( TMP$94$2 == 17ll ) goto label$152;
		label$153:;
		if( TMP$94$2 == 18ll ) goto label$152;
		label$154:;
		if( TMP$94$2 != 4ll ) goto label$151;
		label$152:;
		{
			int64 vr$21 = RTLFILELINEINPUT( ISFILE$1, FILESTREXPR$1, DSTEXPR$1, MAXLENEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$21;
		}
		goto label$150;
		label$151:;
		if( TMP$94$2 != 7ll ) goto label$155;
		label$156:;
		{
			int64 vr$22 = RTLFILELINEINPUTWSTR( ISFILE$1, FILESTREXPR$1, DSTEXPR$1, MAXLENEXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
			fb$result$1 = vr$22;
		}
		goto label$150;
		label$155:;
		{
			ASTDELTREE( DSTEXPR$1 );
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			fb$result$1 = -1ll;
			goto label$116;
		}
		label$157:;
		label$150:;
	}
	label$116:;
	return fb$result$1;
}

int64 CINPUTSTMT( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$158:;
	struct $7ASTNODE* FILESTREXPR$1;
	FILESTREXPR$1 = (struct $7ASTNODE*)0ull;
	struct $7ASTNODE* DSTEXPR$1;
	DSTEXPR$1 = (struct $7ASTNODE*)0ull;
	int64 ISLAST$1;
	ISLAST$1 = 0ll;
	int64 ISFILE$1;
	ISFILE$1 = 0ll;
	int64 ADDNEWLINE$1;
	ADDNEWLINE$1 = 0ll;
	int64 ADDQUESTION$1;
	ADDQUESTION$1 = 0ll;
	fb$result$1 = 0ll;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$1 = HMATCH( 59ll, 0ll );
	ADDNEWLINE$1 = (int64)-(vr$1 == 0ll);
	int64 vr$3 = HMATCH( 35ll, 0ll );
	if( vr$3 == 0ll ) goto label$161;
	{
		ISFILE$1 = -1ll;
		struct $7ASTNODE* vr$4 = CEXPRESSION(  );
		FILESTREXPR$1 = vr$4;
		if( FILESTREXPR$1 != (struct $7ASTNODE*)0ull ) goto label$163;
		{
			ERRREPORT( 327ll, 0ll, (uint8*)0ull );
			goto label$165;
			{
				fb$result$1 = 0ll;
				goto label$159;
			}
			label$165:;
			label$164:;
			struct $7ASTNODE* vr$5 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
			FILESTREXPR$1 = vr$5;
		}
		label$163:;
		label$162:;
	}
	goto label$160;
	label$161:;
	{
		int64 vr$6 = LEXGETCLASS( 0ll );
		if( vr$6 != 4ll ) goto label$167;
		{
			uint8* vr$9 = LEXGETTEXT(  );
			struct $8FBSYMBOL* vr$10 = SYMBALLOCSTRCONST( vr$9, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2080ll) );
			struct $7ASTNODE* vr$11 = ASTNEWVAR( vr$10, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
			FILESTREXPR$1 = vr$11;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$166;
		label$167:;
		{
			FILESTREXPR$1 = (struct $7ASTNODE*)0ull;
			ADDQUESTION$1 = -1ll;
		}
		label$166:;
	}
	label$160:;
	if( (ISFILE$1 | (int64)-(FILESTREXPR$1 != (struct $7ASTNODE*)0ull)) == 0ll ) goto label$169;
	{
		int64 vr$14 = HMATCH( 44ll, 0ll );
		if( vr$14 != 0ll ) goto label$171;
		{
			int64 vr$15 = HMATCH( 59ll, 0ll );
			if( vr$15 != 0ll ) goto label$173;
			{
				if( ISFILE$1 == 0ll ) goto label$175;
				{
					ERRREPORT( 16ll, 0ll, (uint8*)0ull );
				}
				goto label$174;
				label$175:;
				{
					ERRREPORT( 326ll, 0ll, (uint8*)0ull );
				}
				label$174:;
			}
			goto label$172;
			label$173:;
			{
				ADDQUESTION$1 = -1ll;
			}
			label$172:;
		}
		label$171:;
		label$170:;
	}
	label$169:;
	label$168:;
	int64 vr$16 = RTLFILEINPUT( ISFILE$1, FILESTREXPR$1, ADDQUESTION$1, ADDNEWLINE$1 );
	if( vr$16 != 0ll ) goto label$177;
	{
		goto label$159;
	}
	label$177:;
	label$176:;
	label$178:;
	{
		struct $7ASTNODE* vr$17 = CVARORDEREF( 0ll );
		DSTEXPR$1 = vr$17;
		if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$182;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			DSTEXPR$1 = (struct $7ASTNODE*)0ull;
			HSKIPUNTIL( 44ll, 0ll, 0ll, 0ll );
		}
		label$182:;
		label$181:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$184;
		{
			if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$186;
			{
				ERRREPORT( 119ll, 0ll, (uint8*)0ull );
			}
			goto label$185;
			label$186:;
			struct $8FBSYMBOL* vr$20 = ASTGETSTRLITSYMBOL( DSTEXPR$1 );
			if( vr$20 == (struct $8FBSYMBOL*)0ull ) goto label$187;
			{
				ERRREPORT( 14ll, -1ll, (uint8*)0ull );
			}
			label$187:;
			label$185:;
		}
		label$184:;
		label$183:;
		int64 vr$21 = HMATCH( 44ll, 0ll );
		if( vr$21 == 0ll ) goto label$189;
		{
			ISLAST$1 = 0ll;
		}
		goto label$188;
		label$189:;
		{
			ISLAST$1 = -1ll;
		}
		label$188:;
		if( DSTEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$191;
		{
			int64 vr$22 = RTLFILEINPUTGET( DSTEXPR$1 );
			if( vr$22 != 0ll ) goto label$193;
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
	if( ISLAST$1 == 0ll ) goto label$178;
	label$179:;
	fb$result$1 = -1ll;
	label$159:;
	return fb$result$1;
}

int64 CFILESTMT( $8FB_TOKEN TK$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$516:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* EXPR1$1;
	__builtin_memset( &EXPR1$1, 0, 8ll );
	struct $7ASTNODE* EXPR2$1;
	__builtin_memset( &EXPR2$1, 0, 8ll );
	int64 ISLOCK$1;
	__builtin_memset( &ISLOCK$1, 0, 8ll );
	fb$result$1 = 0ll;
	{
		uint64 TMP$119$2;
		TMP$119$2 = (uint64)TK$1;
		goto label$519;
		label$520:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$5 = HFILEOPEN( 0ll );
			fb$result$1 = (int64)-(vr$5 != (struct $7ASTNODE*)0ull);
		}
		goto label$518;
		label$521:;
		{
			struct $7ASTNODE* vr$7 = HFILECLOSE( 0ll );
			fb$result$1 = (int64)-(vr$7 != (struct $7ASTNODE*)0ull);
		}
		goto label$518;
		label$522:;
		{
			LEXSKIPTOKEN( 2048ll );
			HMATCH( 35ll, 0ll );
			struct $7ASTNODE* vr$9 = CEXPRESSION(  );
			FILENUM$1 = vr$9;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$524;
			{
				ERRREPORT( 327ll, 0ll, (uint8*)0ull );
				goto label$526;
				{
					fb$result$1 = 0ll;
					goto label$517;
				}
				label$526:;
				label$525:;
				struct $7ASTNODE* vr$10 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$10;
			}
			label$524:;
			label$523:;
			int64 vr$11 = LEXGETTOKEN( 0ll );
			if( vr$11 == 44ll ) goto label$528;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$527;
			label$528:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$527:;
			struct $7ASTNODE* vr$12 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$12;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$530;
			{
				goto label$517;
			}
			label$530:;
			label$529:;
			int64 vr$13 = RTLFILESEEK( FILENUM$1, EXPR1$1 );
			fb$result$1 = vr$13;
		}
		goto label$518;
		label$531:;
		{
			int64 vr$14 = LEXGETLOOKAHEAD( 1ll, 0ll );
			if( vr$14 == 35ll ) goto label$533;
			{
				goto label$517;
			}
			label$533:;
			label$532:;
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$15 = HFILEPUT( 0ll );
			fb$result$1 = (int64)-(vr$15 != (struct $7ASTNODE*)0ull);
		}
		goto label$518;
		label$534:;
		{
			int64 vr$17 = LEXGETLOOKAHEAD( 1ll, 0ll );
			if( vr$17 == 35ll ) goto label$536;
			{
				goto label$517;
			}
			label$536:;
			label$535:;
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$18 = HFILEGET( 0ll );
			fb$result$1 = (int64)-(vr$18 != (struct $7ASTNODE*)0ull);
		}
		goto label$518;
		label$537:;
		{
			if( TK$1 != 477ll ) goto label$539;
			{
				ISLOCK$1 = -1ll;
			}
			goto label$538;
			label$539:;
			{
				ISLOCK$1 = 0ll;
			}
			label$538:;
			LEXSKIPTOKEN( 2048ll );
			HMATCH( 35ll, 0ll );
			struct $7ASTNODE* vr$20 = CEXPRESSION(  );
			FILENUM$1 = vr$20;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$541;
			{
				ERRREPORT( 327ll, 0ll, (uint8*)0ull );
				goto label$543;
				{
					fb$result$1 = 0ll;
					goto label$517;
				}
				label$543:;
				label$542:;
				struct $7ASTNODE* vr$21 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$21;
			}
			label$541:;
			label$540:;
			int64 vr$22 = LEXGETTOKEN( 0ll );
			if( vr$22 == 44ll ) goto label$545;
			{
				ERRREPORT( 16ll, 0ll, (uint8*)0ull );
			}
			goto label$544;
			label$545:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$544:;
			struct $7ASTNODE* vr$23 = HMATCHEXPR( 8ll );
			EXPR1$1 = vr$23;
			if( EXPR1$1 != (struct $7ASTNODE*)0ull ) goto label$547;
			{
				goto label$517;
			}
			label$547:;
			label$546:;
			int64 vr$24 = HMATCH( 284ll, 2048ll );
			if( vr$24 == 0ll ) goto label$549;
			{
				struct $7ASTNODE* vr$25 = HMATCHEXPR( 8ll );
				EXPR2$1 = vr$25;
				if( EXPR2$1 != (struct $7ASTNODE*)0ull ) goto label$551;
				{
					goto label$517;
				}
				label$551:;
				label$550:;
			}
			goto label$548;
			label$549:;
			{
				struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				EXPR2$1 = vr$26;
			}
			label$548:;
			int64 vr$27 = RTLFILELOCK( ISLOCK$1, FILENUM$1, EXPR1$1, EXPR2$1 );
			fb$result$1 = vr$27;
		}
		goto label$518;
		label$552:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$28 = HFILERENAME( 0ll );
			fb$result$1 = (int64)-(vr$28 != (struct $7ASTNODE*)0ull);
		}
		goto label$518;
		label$519:;
		static const void* tmp$120[21ll] = {
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
		if( (TMP$119$2 - 470ull) > 20ull ) goto label$518;
		goto *tmp$120[TMP$119$2 - 470ull];
		label$518:;
	}
	label$517:;
	return fb$result$1;
}

struct $7ASTNODE* CFILEFUNCT( $8FB_TOKEN TK$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$553:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* EXPR$1;
	__builtin_memset( &EXPR$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	{
		uint64 TMP$121$2;
		TMP$121$2 = (uint64)TK$1;
		goto label$556;
		label$557:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$3 = LEXGETTOKEN( 0ll );
			if( vr$3 == 40ll ) goto label$559;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$558;
			label$559:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$558:;
			struct $7ASTNODE* vr$4 = HMATCHEXPR( 8ll );
			FILENUM$1 = vr$4;
			if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$561;
			{
				goto label$554;
			}
			label$561:;
			label$560:;
			int64 vr$5 = LEXGETTOKEN( 0ll );
			if( vr$5 == 41ll ) goto label$563;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$562;
			label$563:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$562:;
			struct $7ASTNODE* vr$6 = RTLFILETELL( FILENUM$1 );
			fb$result$1 = vr$6;
		}
		goto label$555;
		label$564:;
		{
			$8LEXCHECK TMP$122$3;
			if( TK$1 != 478ll ) goto label$565;
			TMP$122$3 = 8192ll;
			goto label$591;
			label$565:;
			TMP$122$3 = 2048ll;
			label$591:;
			LEXSKIPTOKEN( TMP$122$3 );
			int64 vr$7 = LEXGETTOKEN( 0ll );
			if( vr$7 == 40ll ) goto label$567;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$566;
			label$567:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$566:;
			struct $7ASTNODE* vr$8 = HMATCHEXPR( 8ll );
			EXPR$1 = vr$8;
			if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$569;
			{
				goto label$554;
			}
			label$569:;
			label$568:;
			int64 vr$9 = HMATCH( 44ll, 0ll );
			if( vr$9 == 0ll ) goto label$571;
			{
				HMATCH( 35ll, 0ll );
				struct $7ASTNODE* vr$10 = CEXPRESSION(  );
				FILENUM$1 = vr$10;
				if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$573;
				{
					ERRREPORT( 327ll, 0ll, (uint8*)0ull );
					goto label$575;
					{
						fb$result$1 = (struct $7ASTNODE*)0ull;
						goto label$554;
					}
					label$575:;
					label$574:;
					struct $7ASTNODE* vr$11 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
					FILENUM$1 = vr$11;
				}
				label$573:;
				label$572:;
			}
			goto label$570;
			label$571:;
			{
				struct $7ASTNODE* vr$12 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$12;
			}
			label$570:;
			int64 vr$13 = LEXGETTOKEN( 0ll );
			if( vr$13 == 41ll ) goto label$577;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$576;
			label$577:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$576:;
			struct $7ASTNODE* vr$14 = RTLFILESTRINPUT( EXPR$1, FILENUM$1, TK$1 );
			fb$result$1 = vr$14;
		}
		goto label$555;
		label$578:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$15 = HFILEOPEN( -1ll );
			fb$result$1 = vr$15;
		}
		goto label$555;
		label$579:;
		{
			struct $7ASTNODE* vr$16 = HFILECLOSE( -1ll );
			fb$result$1 = vr$16;
		}
		goto label$555;
		label$580:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$17 = LEXGETTOKEN( 0ll );
			if( vr$17 == 40ll ) goto label$582;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$581;
			label$582:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$581:;
			struct $7ASTNODE* vr$18 = HFILEPUT( -1ll );
			fb$result$1 = vr$18;
			int64 vr$19 = LEXGETTOKEN( 0ll );
			if( vr$19 == 41ll ) goto label$584;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$583;
			label$584:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$583:;
		}
		goto label$555;
		label$585:;
		{
			LEXSKIPTOKEN( 2048ll );
			int64 vr$20 = LEXGETTOKEN( 0ll );
			if( vr$20 == 40ll ) goto label$587;
			{
				ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			}
			goto label$586;
			label$587:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$586:;
			struct $7ASTNODE* vr$21 = HFILEGET( -1ll );
			fb$result$1 = vr$21;
			int64 vr$22 = LEXGETTOKEN( 0ll );
			if( vr$22 == 41ll ) goto label$589;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$588;
			label$589:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$588:;
		}
		goto label$555;
		label$590:;
		{
			LEXSKIPTOKEN( 2048ll );
			struct $7ASTNODE* vr$23 = HFILERENAME( -1ll );
			fb$result$1 = vr$23;
		}
		goto label$555;
		label$556:;
		static const void* tmp$123[16ll] = {
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
		if( (TMP$121$2 - 470ull) > 15ull ) goto label$555;
		goto *tmp$123[TMP$121$2 - 470ull];
		label$555:;
	}
	label$554:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $7ASTNODE* HFILECLOSE( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$194:;
	int64 CNT$1;
	__builtin_memset( &CNT$1, 0, 8ll );
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* PROC$1;
	__builtin_memset( &PROC$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	LEXSKIPTOKEN( 2048ll );
	if( ISFUNC$1 == 0ll ) goto label$197;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( vr$4 == 40ll ) goto label$199;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$198;
		label$199:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$198:;
	}
	label$197:;
	label$196:;
	CNT$1 = 0ll;
	label$200:;
	{
		HMATCH( 35ll, 0ll );
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		FILENUM$1 = vr$5;
		if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$204;
		{
			if( CNT$1 != 0ll ) goto label$206;
			{
			}
			goto label$205;
			label$206:;
			{
				ERRREPORT( 327ll, 0ll, (uint8*)0ull );
				struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
				FILENUM$1 = vr$6;
			}
			label$205:;
		}
		label$204:;
		label$203:;
		struct $7ASTNODE* vr$7 = RTLFILECLOSE( FILENUM$1, ISFUNC$1 );
		PROC$1 = vr$7;
		if( PROC$1 != (struct $7ASTNODE*)0ull ) goto label$208;
		{
			goto label$195;
		}
		label$208:;
		label$207:;
		if( ISFUNC$1 == 0ll ) goto label$210;
		{
			goto label$201;
		}
		label$210:;
		label$209:;
		CNT$1 = CNT$1 + 1ll;
	}
	label$202:;
	int64 vr$9 = HMATCH( 44ll, 0ll );
	if( vr$9 != 0ll ) goto label$200;
	label$201:;
	if( ISFUNC$1 == 0ll ) goto label$212;
	{
		int64 vr$10 = LEXGETTOKEN( 0ll );
		if( vr$10 == 41ll ) goto label$214;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$213;
		label$214:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$213:;
	}
	label$212:;
	label$211:;
	fb$result$1 = PROC$1;
	label$195:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILEPUT( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$215:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 8ll );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 8ll );
	struct $7ASTNODE* SRCEXPR$1;
	__builtin_memset( &SRCEXPR$1, 0, 8ll );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 8ll );
	int64 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 8ll );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	int64 vr$7 = LEXGETTOKEN( 0ll );
	if( vr$7 != 35ll ) goto label$218;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$218:;
	label$217:;
	struct $7ASTNODE* vr$8 = CEXPRESSION(  );
	FILEEXPR$1 = vr$8;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$220;
	{
		ERRREPORT( 327ll, 0ll, (uint8*)0ull );
		goto label$222;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$216;
		}
		label$222:;
		label$221:;
		struct $7ASTNODE* vr$9 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
		FILEEXPR$1 = vr$9;
	}
	label$220:;
	label$219:;
	int64 vr$10 = LEXGETTOKEN( 0ll );
	if( vr$10 == 44ll ) goto label$224;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$223;
	label$224:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$223:;
	struct $7ASTNODE* vr$11 = CEXPRESSION(  );
	POSEXPR$1 = vr$11;
	if( POSEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$226;
	{
		POSEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$226:;
	label$225:;
	int64 vr$12 = LEXGETTOKEN( 0ll );
	if( vr$12 == 44ll ) goto label$228;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$227;
	label$228:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$227:;
	struct $7ASTNODE* vr$13 = HMATCHEXPR( 8ll );
	SRCEXPR$1 = vr$13;
	if( SRCEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$230;
	{
		goto label$216;
	}
	label$230:;
	label$229:;
	if( ((int64)-(*(int64*)SRCEXPR$1 == 16ll) | (int64)-(*(int64*)SRCEXPR$1 == 23ll)) == 0ll ) goto label$232;
	{
		ASTDELTREE( SRCEXPR$1 );
		ERRREPORT( 14ll, -1ll, (uint8*)0ull );
		if( ISFUNC$1 == 0ll ) goto label$234;
		{
			HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
		}
		goto label$233;
		label$234:;
		{
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$233:;
		struct $7ASTNODE* vr$19 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$19;
		goto label$216;
	}
	label$232:;
	label$231:;
	ISARRAY$1 = 0ll;
	int64 vr$20 = LEXGETTOKEN( 0ll );
	if( vr$20 != 40ll ) goto label$236;
	{
		int64 vr$21 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$21 != 41ll ) goto label$238;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)SRCEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$240;
			{
				int64 vr$23 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$23;
				if( ISARRAY$1 == 0ll ) goto label$242;
				{
					if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 17ll ) goto label$244;
					{
						ASTDELTREE( SRCEXPR$1 );
						ERRREPORT( 24ll, -1ll, (uint8*)0ull );
						if( ISFUNC$1 == 0ll ) goto label$246;
						{
							HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
						}
						goto label$245;
						label$246:;
						{
							HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
						}
						label$245:;
						struct $7ASTNODE* vr$26 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
						fb$result$1 = vr$26;
						goto label$216;
					}
					label$244:;
					label$243:;
					LEXSKIPTOKEN( 0ll );
					LEXSKIPTOKEN( 0ll );
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
	int64 vr$27 = HMATCH( 44ll, 0ll );
	if( vr$27 == 0ll ) goto label$248;
	{
		if( ISARRAY$1 == 0ll ) goto label$250;
		{
			ERRREPORT( 277ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$28 = CEXPRESSION(  );
			ELMEXPR$1 = vr$28;
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$252;
			{
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$252:;
			label$251:;
		}
		goto label$249;
		label$250:;
		{
			{
				int64 TMP$95$4;
				TMP$95$4 = *(int64*)((uint8*)SRCEXPR$1 + 8ll) & 511ll;
				if( TMP$95$4 == 17ll ) goto label$255;
				label$256:;
				if( TMP$95$4 != 18ll ) goto label$254;
				label$255:;
				{
					ERRREPORT( 277ll, 0ll, (uint8*)0ull );
					struct $7ASTNODE* vr$31 = CEXPRESSION(  );
					ELMEXPR$1 = vr$31;
					if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$258;
					{
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0ull;
					}
					label$258:;
					label$257:;
				}
				goto label$253;
				label$254:;
				{
					struct $7ASTNODE* vr$32 = CEXPRESSION(  );
					ELMEXPR$1 = vr$32;
					if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$261;
					{
						ERRREPORT( 9ll, 0ll, (uint8*)0ull );
					}
					label$261:;
					label$260:;
				}
				label$259:;
				label$253:;
			}
		}
		label$249:;
		if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$263;
		{
			if( ((*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$265;
			{
				ERRREPORTWARN( 2ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$265:;
			label$264:;
			if( (*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) == 8ll ) goto label$267;
			{
				struct $7ASTNODE* vr$38 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, ELMEXPR$1, 0ll, (int64*)0ull );
				ELMEXPR$1 = vr$38;
				if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$269;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
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
		ELMEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$247:;
	if( ISARRAY$1 != 0ll ) goto label$271;
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

static struct $7ASTNODE* HFILEGET( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$272:;
	struct $7ASTNODE* FILEEXPR$1;
	__builtin_memset( &FILEEXPR$1, 0, 8ll );
	struct $7ASTNODE* POSEXPR$1;
	__builtin_memset( &POSEXPR$1, 0, 8ll );
	struct $7ASTNODE* DSTEXPR$1;
	__builtin_memset( &DSTEXPR$1, 0, 8ll );
	struct $7ASTNODE* ELMEXPR$1;
	__builtin_memset( &ELMEXPR$1, 0, 8ll );
	struct $7ASTNODE* IOBEXPR$1;
	__builtin_memset( &IOBEXPR$1, 0, 8ll );
	int64 ISARRAY$1;
	__builtin_memset( &ISARRAY$1, 0, 8ll );
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	int64 vr$8 = LEXGETTOKEN( 0ll );
	if( vr$8 != 35ll ) goto label$275;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$275:;
	label$274:;
	struct $7ASTNODE* vr$9 = CEXPRESSION(  );
	FILEEXPR$1 = vr$9;
	if( FILEEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$277;
	{
		ERRREPORT( 327ll, 0ll, (uint8*)0ull );
		goto label$279;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$273;
		}
		label$279:;
		label$278:;
		struct $7ASTNODE* vr$10 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
		FILEEXPR$1 = vr$10;
	}
	label$277:;
	label$276:;
	int64 vr$11 = LEXGETTOKEN( 0ll );
	if( vr$11 == 44ll ) goto label$281;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$280;
	label$281:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$280:;
	struct $7ASTNODE* vr$12 = CEXPRESSION(  );
	POSEXPR$1 = vr$12;
	int64 vr$13 = LEXGETTOKEN( 0ll );
	if( vr$13 == 44ll ) goto label$283;
	{
		ERRREPORT( 16ll, 0ll, (uint8*)0ull );
	}
	goto label$282;
	label$283:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$282:;
	struct $7ASTNODE* vr$14 = CVARORDEREF( 0ll );
	DSTEXPR$1 = vr$14;
	if( DSTEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$285;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		if( ISFUNC$1 == 0ll ) goto label$287;
		{
			HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
		}
		goto label$286;
		label$287:;
		{
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$286:;
		struct $7ASTNODE* vr$15 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		fb$result$1 = vr$15;
		goto label$273;
	}
	label$285:;
	label$284:;
	ISARRAY$1 = 0ll;
	int64 vr$16 = LEXGETTOKEN( 0ll );
	if( vr$16 != 40ll ) goto label$289;
	{
		int64 vr$17 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$17 != 41ll ) goto label$291;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)DSTEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$293;
			{
				int64 vr$19 = SYMBISARRAY( S$1 );
				ISARRAY$1 = vr$19;
				if( ISARRAY$1 == 0ll ) goto label$295;
				{
					if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 17ll ) goto label$297;
					{
						ERRREPORT( 24ll, -1ll, (uint8*)0ull );
						if( ISFUNC$1 == 0ll ) goto label$299;
						{
							HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
						}
						goto label$298;
						label$299:;
						{
							HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
						}
						label$298:;
						struct $7ASTNODE* vr$22 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
						fb$result$1 = vr$22;
						goto label$273;
					}
					label$297:;
					label$296:;
					LEXSKIPTOKEN( 0ll );
					LEXSKIPTOKEN( 0ll );
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
	int64 vr$23 = HMATCH( 44ll, 0ll );
	if( vr$23 == 0ll ) goto label$301;
	{
		struct $7ASTNODE* vr$24 = CEXPRESSION(  );
		ELMEXPR$1 = vr$24;
		if( ISARRAY$1 == 0ll ) goto label$303;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$305;
			{
				ERRREPORT( 277ll, 0ll, (uint8*)0ull );
				ASTDELTREE( ELMEXPR$1 );
				ELMEXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$305:;
			label$304:;
		}
		goto label$302;
		label$303:;
		{
			if( ELMEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$307;
			{
				{
					int64 TMP$96$5;
					TMP$96$5 = *(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll;
					if( TMP$96$5 == 17ll ) goto label$310;
					label$311:;
					if( TMP$96$5 != 18ll ) goto label$309;
					label$310:;
					{
						ERRREPORT( 277ll, 0ll, (uint8*)0ull );
						ASTDELTREE( ELMEXPR$1 );
						ELMEXPR$1 = (struct $7ASTNODE*)0ull;
					}
					goto label$308;
					label$309:;
					{
						if( ((*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$314;
						{
							ERRREPORTWARN( 2ll, (uint8*)0ull, 1ll, (uint8*)0ull );
						}
						label$314:;
						label$313:;
						if( (*(int64*)((uint8*)ELMEXPR$1 + 8ll) & 511ll) == 8ll ) goto label$316;
						{
							struct $7ASTNODE* vr$32 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, ELMEXPR$1, 0ll, (int64*)0ull );
							ELMEXPR$1 = vr$32;
							if( ELMEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$318;
							{
								ERRREPORT( 17ll, -1ll, (uint8*)0ull );
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
		ELMEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$300:;
	int64 vr$33 = HMATCH( 44ll, 0ll );
	if( vr$33 == 0ll ) goto label$320;
	{
		struct $7ASTNODE* vr$34 = CVARORDEREF( 0ll );
		IOBEXPR$1 = vr$34;
		if( IOBEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$322;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)IOBEXPR$1 + 24ll);
			if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$324;
			{
				int64 TMP$97$4;
				int64 TMP$98$4;
				int64 DTYPE$4;
				DTYPE$4 = *(int64*)((uint8*)S$1 + 56ll) & 511ll;
				if( (DTYPE$4 & 480ll) == 0ll ) goto label$325;
				TMP$97$4 = 24ll;
				goto label$592;
				label$325:;
				TMP$97$4 = DTYPE$4 & 31ll;
				label$592:;
				if( (DTYPE$4 & 480ll) == 0ll ) goto label$326;
				TMP$98$4 = 24ll;
				goto label$593;
				label$326:;
				TMP$98$4 = DTYPE$4 & 31ll;
				label$593:;
				if( (((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$4 * 56ll)) + 8ll) != *(int64*)((uint8*)&ENV$ + 592ll)) | (int64)-(*(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$4 * 56ll)) != 0ll)) | (int64)-((DTYPE$4 & 480ll) != 0ll)) == 0ll ) goto label$328;
				{
					ERRREPORT( 24ll, 0ll, (uint8*)0ull );
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
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		}
		label$321:;
	}
	goto label$319;
	label$320:;
	{
		IOBEXPR$1 = (struct $7ASTNODE*)0ull;
	}
	label$319:;
	if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$330;
	{
		ERRREPORT( 119ll, 0ll, (uint8*)0ull );
	}
	label$330:;
	label$329:;
	if( IOBEXPR$1 == (struct $7ASTNODE*)0ull ) goto label$332;
	{
		if( (*(int64*)((uint8*)IOBEXPR$1 + 8ll) & 512ll) == 0ll ) goto label$334;
		{
			ERRREPORT( 119ll, 0ll, (uint8*)0ull );
		}
		label$334:;
		label$333:;
	}
	label$332:;
	label$331:;
	if( ISARRAY$1 != 0ll ) goto label$336;
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

static struct $7ASTNODE* HFILEOPEN( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$337:;
	struct $7ASTNODE* FILENUM$1;
	__builtin_memset( &FILENUM$1, 0, 8ll );
	struct $7ASTNODE* FILENAME$1;
	__builtin_memset( &FILENAME$1, 0, 8ll );
	struct $7ASTNODE* FMODE$1;
	__builtin_memset( &FMODE$1, 0, 8ll );
	struct $7ASTNODE* FACCESS$1;
	__builtin_memset( &FACCESS$1, 0, 8ll );
	struct $7ASTNODE* FLOCK$1;
	__builtin_memset( &FLOCK$1, 0, 8ll );
	struct $7ASTNODE* FLEN$1;
	__builtin_memset( &FLEN$1, 0, 8ll );
	struct $7ASTNODE* FENCODING$1;
	__builtin_memset( &FENCODING$1, 0, 8ll );
	int64 SHORT_FORM$1;
	__builtin_memset( &SHORT_FORM$1, 0, 8ll );
	int64 FILE_MODE$1;
	__builtin_memset( &FILE_MODE$1, 0, 8ll );
	int64 ACCESS_MODE$1;
	__builtin_memset( &ACCESS_MODE$1, 0, 8ll );
	int64 LOCK_MODE$1;
	__builtin_memset( &LOCK_MODE$1, 0, 8ll );
	int64 RECORD_LEN$1;
	__builtin_memset( &RECORD_LEN$1, 0, 8ll );
	$10FBOPENKIND OPEN_KIND$1;
	__builtin_memset( &OPEN_KIND$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	OPEN_KIND$1 = 0ll;
	SHORT_FORM$1 = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$340;
	{
		{
			FBSTRING TMP$99$3;
			uint8* vr$14 = LEXGETTEXT(  );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			FBSTRING* vr$16 = fb_StrUcase2( (FBSTRING*)vr$15, 0 );
			fb_StrInit( (void*)&TMP$99$3, -1ll, (void*)vr$16, -1ll, 0 );
			int32 vr$19 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"CONS", 5ll );
			if( (int64)vr$19 != 0ll ) goto label$342;
			label$343:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$345;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 1ll;
				}
				label$345:;
				label$344:;
			}
			goto label$341;
			label$342:;
			int32 vr$24 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"ERR", 4ll );
			if( (int64)vr$24 != 0ll ) goto label$346;
			label$347:;
			{
				LEXSKIPTOKEN( 2048ll );
				OPEN_KIND$1 = 2ll;
			}
			goto label$341;
			label$346:;
			int32 vr$27 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"PIPE", 5ll );
			if( (int64)vr$27 != 0ll ) goto label$348;
			label$349:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$351;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 3ll;
				}
				label$351:;
				label$350:;
			}
			goto label$341;
			label$348:;
			int32 vr$32 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"SCRN", 5ll );
			if( (int64)vr$32 != 0ll ) goto label$352;
			label$353:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$355;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 4ll;
				}
				label$355:;
				label$354:;
			}
			goto label$341;
			label$352:;
			int32 vr$37 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"LPT", 4ll );
			if( (int64)vr$37 != 0ll ) goto label$356;
			label$357:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$359;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 5ll;
				}
				label$359:;
				label$358:;
			}
			goto label$341;
			label$356:;
			int32 vr$42 = fb_StrCompare( (void*)&TMP$99$3, -1ll, (void*)"COM", 4ll );
			if( (int64)vr$42 != 0ll ) goto label$360;
			label$361:;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$363;
				{
					LEXSKIPTOKEN( 2048ll );
					OPEN_KIND$1 = 6ll;
				}
				label$363:;
				label$362:;
			}
			label$360:;
			label$341:;
			fb_StrDelete( (FBSTRING*)&TMP$99$3 );
		}
	}
	label$340:;
	label$339:;
	if( ISFUNC$1 == 0ll ) goto label$365;
	{
		int64 vr$47 = LEXGETTOKEN( 0ll );
		if( vr$47 == 40ll ) goto label$367;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$366;
		label$367:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$366:;
	}
	label$365:;
	label$364:;
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$369;
	{
		OPEN_KIND$1 = 7ll;
	}
	label$369:;
	label$368:;
	{
		uint64 TMP$106$2;
		TMP$106$2 = (uint64)OPEN_KIND$1;
		goto label$371;
		label$372:;
		{
			struct $7ASTNODE* vr$48 = HMATCHEXPR( 17ll );
			FILENAME$1 = vr$48;
			if( FILENAME$1 != (struct $7ASTNODE*)0ull ) goto label$374;
			{
				goto label$338;
			}
			label$374:;
			label$373:;
			if( ISFUNC$1 == 0ll ) goto label$376;
			{
				HMATCH( 44ll, 0ll );
			}
			label$376:;
			label$375:;
			{
				if( OPEN_KIND$1 == 0ll ) goto label$379;
				label$380:;
				if( OPEN_KIND$1 != 7ll ) goto label$378;
				label$379:;
				{
					if( ISFUNC$1 == 0ll ) goto label$382;
					{
						{
							int64 TMP$107$7;
							int64 vr$49 = LEXGETTOKEN( 0ll );
							TMP$107$7 = vr$49;
							if( TMP$107$7 == 281ll ) goto label$385;
							label$386:;
							if( TMP$107$7 == 475ll ) goto label$385;
							label$387:;
							if( TMP$107$7 != 376ll ) goto label$384;
							label$385:;
							{
							}
							goto label$383;
							label$384:;
							{
								SHORT_FORM$1 = -1ll;
							}
							label$388:;
							label$383:;
						}
					}
					goto label$381;
					label$382:;
					{
						int64 vr$50 = HMATCH( 44ll, 0ll );
						if( vr$50 == 0ll ) goto label$390;
						{
							SHORT_FORM$1 = -1ll;
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
			struct $7ASTNODE* vr$51 = ASTNEWCONSTSTR( (uint8*)"" );
			FILENAME$1 = vr$51;
		}
		goto label$370;
		label$371:;
		static const void* tmp$124[8ll] = {
			&&label$372,
			&&label$391,
			&&label$391,
			&&label$372,
			&&label$391,
			&&label$372,
			&&label$372,
			&&label$372,
		};
		if( TMP$106$2 > 7ull ) goto label$391;
		goto *tmp$124[TMP$106$2 - 0ull];
		label$370:;
	}
	if( SHORT_FORM$1 == 0ll ) goto label$393;
	{
		FMODE$1 = FILENAME$1;
		FILENAME$1 = (struct $7ASTNODE*)0ull;
		HMATCH( 35ll, 0ll );
		struct $7ASTNODE* vr$52 = CEXPRESSION(  );
		FILENUM$1 = vr$52;
		if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$395;
		{
			ERRREPORT( 327ll, 0ll, (uint8*)0ull );
			goto label$397;
			{
				fb$result$1 = (struct $7ASTNODE*)0ull;
				goto label$338;
			}
			label$397:;
			label$396:;
			struct $7ASTNODE* vr$53 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
			FILENUM$1 = vr$53;
		}
		label$395:;
		label$394:;
		int64 vr$54 = LEXGETTOKEN( 0ll );
		if( vr$54 == 44ll ) goto label$399;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$398;
		label$399:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$398:;
		struct $7ASTNODE* vr$55 = HMATCHEXPR( 17ll );
		FILENAME$1 = vr$55;
		if( FILENAME$1 != (struct $7ASTNODE*)0ull ) goto label$401;
		{
			goto label$338;
		}
		label$401:;
		label$400:;
		int64 vr$56 = HMATCH( 44ll, 0ll );
		if( vr$56 == 0ll ) goto label$403;
		{
			int64 vr$57 = LEXGETTOKEN( 0ll );
			if( vr$57 == 44ll ) goto label$405;
			{
				struct $7ASTNODE* vr$58 = HMATCHEXPR( 8ll );
				FLEN$1 = vr$58;
				if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$407;
				{
					goto label$338;
				}
				label$407:;
				label$406:;
			}
			label$405:;
			label$404:;
			int64 vr$59 = HMATCH( 44ll, 0ll );
			if( vr$59 == 0ll ) goto label$409;
			{
				int64 vr$60 = LEXGETTOKEN( 0ll );
				if( vr$60 == 44ll ) goto label$411;
				{
					struct $7ASTNODE* vr$61 = HMATCHEXPR( 17ll );
					FACCESS$1 = vr$61;
					if( FACCESS$1 != (struct $7ASTNODE*)0ull ) goto label$413;
					{
						goto label$338;
					}
					label$413:;
					label$412:;
				}
				label$411:;
				label$410:;
				int64 vr$62 = HMATCH( 44ll, 0ll );
				if( vr$62 == 0ll ) goto label$415;
				{
					struct $7ASTNODE* vr$63 = HMATCHEXPR( 17ll );
					FLOCK$1 = vr$63;
					if( FLOCK$1 != (struct $7ASTNODE*)0ull ) goto label$417;
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
		if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$419;
		{
			struct $7ASTNODE* vr$64 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FLEN$1 = vr$64;
		}
		label$419:;
		label$418:;
		if( FACCESS$1 != (struct $7ASTNODE*)0ull ) goto label$421;
		{
			struct $7ASTNODE* vr$65 = ASTNEWCONSTSTR( (uint8*)"" );
			FACCESS$1 = vr$65;
		}
		label$421:;
		label$420:;
		if( FLOCK$1 != (struct $7ASTNODE*)0ull ) goto label$423;
		{
			struct $7ASTNODE* vr$66 = ASTNEWCONSTSTR( (uint8*)"" );
			FLOCK$1 = vr$66;
		}
		label$423:;
		label$422:;
		if( ISFUNC$1 == 0ll ) goto label$425;
		{
			int64 vr$67 = LEXGETTOKEN( 0ll );
			if( vr$67 == 41ll ) goto label$427;
			{
				ERRREPORT( 7ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
			}
			goto label$426;
			label$427:;
			{
				LEXSKIPTOKEN( 0ll );
			}
			label$426:;
		}
		label$425:;
		label$424:;
		struct $7ASTNODE* vr$68 = RTLFILEOPENSHORT( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, ISFUNC$1 );
		fb$result$1 = vr$68;
		goto label$338;
	}
	label$393:;
	label$392:;
	int64 vr$69 = HMATCH( 281ll, 2048ll );
	if( vr$69 == 0ll ) goto label$429;
	{
		{
			FBSTRING TMP$108$3;
			uint8* vr$70 = LEXGETTEXT(  );
			FBSTRING* vr$71 = fb_StrAllocTempDescZ( (uint8*)vr$70 );
			FBSTRING* vr$72 = fb_StrUcase2( (FBSTRING*)vr$71, 0 );
			fb_StrInit( (void*)&TMP$108$3, -1ll, (void*)vr$72, -1ll, 0 );
			int32 vr$75 = fb_StrCompare( (void*)&TMP$108$3, -1ll, (void*)"INPUT", 6ll );
			if( (int64)vr$75 != 0ll ) goto label$431;
			label$432:;
			{
				FILE_MODE$1 = 2ll;
			}
			goto label$430;
			label$431:;
			int32 vr$78 = fb_StrCompare( (void*)&TMP$108$3, -1ll, (void*)"OUTPUT", 7ll );
			if( (int64)vr$78 != 0ll ) goto label$433;
			label$434:;
			{
				FILE_MODE$1 = 3ll;
			}
			goto label$430;
			label$433:;
			int32 vr$81 = fb_StrCompare( (void*)&TMP$108$3, -1ll, (void*)"BINARY", 7ll );
			if( (int64)vr$81 != 0ll ) goto label$435;
			label$436:;
			{
				FILE_MODE$1 = 0ll;
			}
			goto label$430;
			label$435:;
			int32 vr$84 = fb_StrCompare( (void*)&TMP$108$3, -1ll, (void*)"RANDOM", 7ll );
			if( (int64)vr$84 != 0ll ) goto label$437;
			label$438:;
			{
				FILE_MODE$1 = 1ll;
			}
			goto label$430;
			label$437:;
			int32 vr$87 = fb_StrCompare( (void*)&TMP$108$3, -1ll, (void*)"APPEND", 7ll );
			if( (int64)vr$87 != 0ll ) goto label$439;
			label$440:;
			{
				FILE_MODE$1 = 4ll;
			}
			goto label$430;
			label$439:;
			{
				fb_StrDelete( (FBSTRING*)&TMP$108$3 );
				goto label$338;
			}
			label$441:;
			label$430:;
			fb_StrDelete( (FBSTRING*)&TMP$108$3 );
		}
		LEXSKIPTOKEN( 2048ll );
	}
	goto label$428;
	label$429:;
	{
		FILE_MODE$1 = 1ll;
	}
	label$428:;
	struct $7ASTNODE* vr$91 = ASTNEWCONSTI( FILE_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FMODE$1 = vr$91;
	if( ISFUNC$1 == 0ll ) goto label$443;
	{
		HMATCH( 44ll, 0ll );
	}
	label$443:;
	label$442:;
	FENCODING$1 = (struct $7ASTNODE*)0ull;
	if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$445;
	{
		{
			if( FILE_MODE$1 == 2ll ) goto label$448;
			label$449:;
			if( FILE_MODE$1 == 3ll ) goto label$448;
			label$450:;
			if( FILE_MODE$1 != 4ll ) goto label$447;
			label$448:;
			{
				int64 vr$92 = HMATCH( 484ll, 2048ll );
				if( vr$92 == 0ll ) goto label$452;
				{
					struct $7ASTNODE* vr$93 = HMATCHEXPR( 17ll );
					FENCODING$1 = vr$93;
					if( FENCODING$1 != (struct $7ASTNODE*)0ull ) goto label$454;
					{
						goto label$338;
					}
					label$454:;
					label$453:;
					if( ISFUNC$1 == 0ll ) goto label$456;
					{
						HMATCH( 44ll, 0ll );
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
	int64 vr$94 = HMATCHIDORKW( (uint8*)"ACCESS", 2048ll );
	if( vr$94 == 0ll ) goto label$458;
	{
		int64 vr$95 = HMATCHIDORKW( (uint8*)"WRITE", 2048ll );
		if( vr$95 == 0ll ) goto label$460;
		{
			ACCESS_MODE$1 = 2ll;
		}
		goto label$459;
		label$460:;
		int64 vr$96 = HMATCHIDORKW( (uint8*)"READ", 2048ll );
		if( vr$96 == 0ll ) goto label$461;
		{
			int64 vr$97 = HMATCH( 476ll, 0ll );
			if( vr$97 == 0ll ) goto label$463;
			{
				ACCESS_MODE$1 = 3ll;
			}
			goto label$462;
			label$463:;
			{
				ACCESS_MODE$1 = 1ll;
			}
			label$462:;
		}
		label$461:;
		label$459:;
	}
	goto label$457;
	label$458:;
	{
		ACCESS_MODE$1 = 0ll;
	}
	label$457:;
	struct $7ASTNODE* vr$98 = ASTNEWCONSTI( ACCESS_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FACCESS$1 = vr$98;
	if( ISFUNC$1 == 0ll ) goto label$465;
	{
		HMATCH( 44ll, 0ll );
	}
	label$465:;
	label$464:;
	int64 vr$99 = HMATCH( 312ll, 2048ll );
	if( vr$99 == 0ll ) goto label$467;
	{
		LOCK_MODE$1 = 0ll;
	}
	goto label$466;
	label$467:;
	int64 vr$100 = HMATCHIDORKW( (uint8*)"LOCK", 2048ll );
	if( vr$100 == 0ll ) goto label$468;
	{
		int64 vr$101 = HMATCHIDORKW( (uint8*)"WRITE", 2048ll );
		if( vr$101 == 0ll ) goto label$470;
		{
			LOCK_MODE$1 = 2ll;
		}
		goto label$469;
		label$470:;
		int64 vr$102 = HMATCHIDORKW( (uint8*)"READ", 2048ll );
		if( vr$102 == 0ll ) goto label$471;
		{
			int64 vr$103 = HMATCH( 476ll, 2048ll );
			if( vr$103 == 0ll ) goto label$473;
			{
				LOCK_MODE$1 = 3ll;
			}
			goto label$472;
			label$473:;
			{
				LOCK_MODE$1 = 1ll;
			}
			label$472:;
		}
		label$471:;
		label$469:;
	}
	goto label$466;
	label$468:;
	{
		LOCK_MODE$1 = 0ll;
	}
	label$466:;
	struct $7ASTNODE* vr$104 = ASTNEWCONSTI( LOCK_MODE$1, 8ll, (struct $8FBSYMBOL*)0ull );
	FLOCK$1 = vr$104;
	if( ISFUNC$1 == 0ll ) goto label$475;
	{
		HMATCH( 44ll, 0ll );
	}
	label$475:;
	label$474:;
	int64 vr$105 = HMATCH( 376ll, 2048ll );
	if( vr$105 != 0ll ) goto label$477;
	{
		ERRREPORT( 5ll, 0ll, (uint8*)0ull );
	}
	label$477:;
	label$476:;
	HMATCH( 35ll, 0ll );
	struct $7ASTNODE* vr$106 = CEXPRESSION(  );
	FILENUM$1 = vr$106;
	if( FILENUM$1 != (struct $7ASTNODE*)0ull ) goto label$479;
	{
		ERRREPORT( 327ll, 0ll, (uint8*)0ull );
		goto label$481;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$338;
		}
		label$481:;
		label$480:;
		struct $7ASTNODE* vr$107 = ASTNEWCONSTZ( 8ll, (struct $8FBSYMBOL*)0ull );
		FILENUM$1 = vr$107;
	}
	label$479:;
	label$478:;
	if( ISFUNC$1 == 0ll ) goto label$483;
	{
		HMATCH( 44ll, 0ll );
	}
	label$483:;
	label$482:;
	int64 vr$108 = HMATCHIDORKW( (uint8*)"LEN", 2048ll );
	if( vr$108 == 0ll ) goto label$485;
	{
		int64 vr$109 = CASSIGNTOKEN(  );
		if( vr$109 != 0ll ) goto label$487;
		{
			ERRREPORT( 10ll, 0ll, (uint8*)0ull );
			struct $7ASTNODE* vr$110 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
			FLEN$1 = vr$110;
		}
		goto label$486;
		label$487:;
		{
			struct $7ASTNODE* vr$111 = HMATCHEXPR( 8ll );
			FLEN$1 = vr$111;
			if( FLEN$1 != (struct $7ASTNODE*)0ull ) goto label$489;
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
		struct $7ASTNODE* vr$112 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		FLEN$1 = vr$112;
	}
	label$484:;
	if( ISFUNC$1 == 0ll ) goto label$491;
	{
		int64 vr$113 = LEXGETTOKEN( 0ll );
		if( vr$113 == 41ll ) goto label$493;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$492;
		label$493:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$492:;
	}
	label$491:;
	label$490:;
	struct $7ASTNODE* vr$114 = RTLFILEOPEN( FILENAME$1, FMODE$1, FACCESS$1, FLOCK$1, FILENUM$1, FLEN$1, FENCODING$1, ISFUNC$1, OPEN_KIND$1 );
	fb$result$1 = vr$114;
	label$338:;
	return fb$result$1;
}

static struct $7ASTNODE* HFILERENAME( int64 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$494:;
	struct $7ASTNODE* FILENAME_OLD$1;
	__builtin_memset( &FILENAME_OLD$1, 0, 8ll );
	struct $7ASTNODE* FILENAME_NEW$1;
	__builtin_memset( &FILENAME_NEW$1, 0, 8ll );
	int64 MATCHPRNT$1;
	__builtin_memset( &MATCHPRNT$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ISFUNC$1 == 0ll ) goto label$497;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( vr$4 == 40ll ) goto label$499;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$498;
		label$499:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$498:;
	}
	goto label$496;
	label$497:;
	{
		int64 vr$5 = HMATCH( 40ll, 0ll );
		MATCHPRNT$1 = vr$5;
	}
	label$496:;
	struct $7ASTNODE* vr$6 = HMATCHEXPR( 17ll );
	FILENAME_OLD$1 = vr$6;
	if( FILENAME_OLD$1 != (struct $7ASTNODE*)0ull ) goto label$501;
	{
		goto label$495;
	}
	label$501:;
	label$500:;
	if( ISFUNC$1 == 0ll ) goto label$503;
	{
		int64 vr$7 = LEXGETTOKEN( 0ll );
		if( vr$7 == 44ll ) goto label$505;
		{
			ERRREPORT( 16ll, 0ll, (uint8*)0ull );
		}
		goto label$504;
		label$505:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$504:;
	}
	goto label$502;
	label$503:;
	{
		int64 vr$8 = HMATCH( 376ll, 2048ll );
		if( vr$8 != 0ll ) goto label$507;
		{
			int64 vr$9 = HMATCH( 44ll, 0ll );
			if( vr$9 != 0ll ) goto label$509;
			{
				ERRREPORT( 5ll, 0ll, (uint8*)0ull );
			}
			label$509:;
			label$508:;
		}
		label$507:;
		label$506:;
	}
	label$502:;
	struct $7ASTNODE* vr$10 = HMATCHEXPR( 17ll );
	FILENAME_NEW$1 = vr$10;
	if( FILENAME_NEW$1 != (struct $7ASTNODE*)0ull ) goto label$511;
	{
		goto label$495;
	}
	label$511:;
	label$510:;
	if( (ISFUNC$1 | MATCHPRNT$1) == 0ll ) goto label$513;
	{
		int64 vr$12 = LEXGETTOKEN( 0ll );
		if( vr$12 == 41ll ) goto label$515;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$514;
		label$515:;
		{
			LEXSKIPTOKEN( 0ll );
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
