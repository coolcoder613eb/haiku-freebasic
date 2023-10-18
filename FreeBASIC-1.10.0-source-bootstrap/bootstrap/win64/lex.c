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
typedef int64 $13AST_NODECLASS;
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
	int64 MULT;
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
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int64 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 48 );
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
typedef int64 $8FB_TOKEN;
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
void* fb_ErrorThrowAt( int32, uint8*, void*, void* );
int32 fb_FileGetStrLarge( int32, int64, void*, int64 );
int64 fb_FileTell( int32 );
int32 fb_FileSeekLarge( int32, int64 );
int32 fb_FileEof( int32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatByref( void*, int64, void*, int64, int32 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrAllocTempDescZEx( uint8*, int64 );
FBSTRING* fb_WstrToStr( uint16* );
FBSTRING* fb_StrMid( FBSTRING*, int64, int64 );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_LEFT( FBSTRING*, int64 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__lex( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $10FBSYMCHAIN* SYMBLOOKUP( uint8*, $8FB_TOKEN*, $10FB_TKCLASS* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
int64 TYPETOUNSIGNED( int64 );
void DZSTRALLOCATE( struct $8DZSTRING*, int64 );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNC( struct $8DZSTRING*, uint64 );
void DWSTRALLOCATE( struct $8DWSTRING*, int64 );
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXPPONLYEMITTOKEN( void );
void LEXSKIPTOKEN( $8LEXCHECK );
void LEXREADLINE( uint64, uint8*, int64 );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint64 LEXCURRENTCHAR( void );
uint64 LEXGETLOOKAHEADCHAR( void );
uint64 LEXGETLOOKAHEADCHAR2( void );
void LEXEATCHAR( void );
void LEXCHECKTOKEN( $8LEXCHECK );
void PPINIT( void );
void PPEND( void );
void PPCHECK( void );
int64 PPDEFINELOAD( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void LEXREADUTF8( void );
void LEXREADUTF16LE( void );
void LEXREADUTF16BE( void );
void LEXREADUTF32LE( void );
void LEXREADUTF32BE( void );
static void HMULTILINECOMMENT( void );
static void HSKIPCHAR( void );
static void HCOLLECTCHARFORDEBUGOUTPUT( uint64 );
static uint64 HREADCHAR( void );
static void HREADIDENTIFIER( uint8*, int64*, int64*, int64*, $8LEXCHECK );
static uint64 HREADNONDECNUMBER( uint8**, int64*, int64*, $8LEXCHECK );
static void HREADFLOATNUMBER( uint8**, struct $7FBTOKEN*, int64, $8LEXCHECK );
static void READNUMBERCHARS( struct $7FBTOKEN*, $8LEXCHECK*, uint8**, int64*, uint64* );
static void HREADNUMBER( struct $7FBTOKEN*, $8LEXCHECK );
static void HREADSTRING( struct $7FBTOKEN*, uint8*, $8LEXCHECK );
static void HREADWSTR( struct $7FBTOKEN*, uint16*, $8LEXCHECK );
static void HCHECKPERIODS( struct $7FBTOKEN*, $8LEXCHECK, struct $10FBSYMCHAIN* );
static int64 READID( struct $7FBTOKEN*, $8LEXCHECK );
static void HMOVEKDOWN( void );
static FBSTRING* LEXGETSTRLITTEXT( int64 );
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
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
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
typedef int64 $11FB_LANG_OPT;
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
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 16 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 24 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $10TSTACKNODE* TOS;
	int64 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 48 );
typedef int64 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int64 DTYPE;
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
	int64 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 152 );
struct $13FB_CMPSTMT_DO {
	int64 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 40 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 24 );
struct $13FB_CMPSTMT_IF {
	int64 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int64 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 32 );
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int64 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 32 );
struct $19FB_CMPSTMT_SELCONST {
	int64 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int64 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 32 );
struct $17FB_CMPSTMT_SELECT {
	int64 ISCONST;
	struct $8FBSYMBOL* SYM;
	int64 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 88 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int64 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 24 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int64 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 16 );
typedef int64 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 8 );
struct $16FB_CMPSTMT_SCOPE {
	int64 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 8 );
struct $13FB_CMPSTMTSTK {
	int64 ID;
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
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 176 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 64 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int64 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 176 );
typedef int64 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int64 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint64 STAGE;
	uint64 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int64 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int64 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int64 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 336 );
extern struct $9PARSERCTX PARSER$;
static FBSTRING PPONLY_LN$;
struct $7LEX_CTX LEX$;

void LEXPUSHCTX( void )
{
	label$10:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25104ll);
	label$11:;
}

void LEXPOPCTX( void )
{
	label$12:;
	if( *(int64*)((uint8*)&ENV$ + 1272ll) != 0ll ) goto label$15;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25072ll), 0ll );
	}
	label$15:;
	label$14:;
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$17;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), 0ll );
	}
	goto label$16;
	label$17:;
	{
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), 0ll );
	}
	label$16:;
	*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) = (struct $9LEX_TKCTX*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -25104ll);
	label$13:;
}

void LEXINIT( int64 ISINCLUDE$1, int64 IS_FB_EVAL$1 )
{
	label$18:;
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	struct $7FBTOKEN* N$1;
	__builtin_memset( &N$1, 0, 8ll );
	if( ((int64)-(*(int64*)((uint8*)&ENV$ + 1272ll) == 0ll) & (int64)-(IS_FB_EVAL$1 == 0ll)) == 0ll ) goto label$21;
	{
		*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) = (struct $9LEX_TKCTX*)&LEX$;
	}
	label$21:;
	label$20:;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) = 0ll;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = (struct $7FBTOKEN*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll);
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
	N$1 = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
	{
		I$1 = 0ll;
		label$25:;
		{
			*(struct $7FBTOKEN**)((uint8*)N$1 + 2120ll) = (struct $7FBTOKEN*)((uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + (I$1 * 2128ll)) + 2128ll);
			N$1 = *(struct $7FBTOKEN**)((uint8*)N$1 + 2120ll);
		}
		label$23:;
		I$1 = I$1 + 1ll;
		label$22:;
		if( I$1 <= 2ll ) goto label$25;
		label$24:;
	}
	*(struct $7FBTOKEN**)((uint8*)N$1 + 2120ll) = *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
	{
		I$1 = 0ll;
		label$29:;
		{
			*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + (I$1 * 2128ll)) = -1ll;
		}
		label$27:;
		I$1 = I$1 + 1ll;
		label$26:;
		if( I$1 <= 3ll ) goto label$29;
		label$28:;
	}
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = 18446744073709551615ull;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) = 18446744073709551615ull;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll) = 18446744073709551615ull;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8600ll) = IS_FB_EVAL$1;
	if( IS_FB_EVAL$1 == 0ll ) goto label$31;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -16544ll);
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -16528ll);
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8584ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -16520ll);
	}
	goto label$30;
	label$31:;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = 1ll;
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) = 0ll;
		*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8584ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$30:;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8568ll) = -1ll;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) = 0ll;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = 0ll;
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$33;
	{
		uint8* TMP$93$2;
		if( IS_FB_EVAL$1 == 0ll ) goto label$34;
		TMP$93$2 = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8664ll);
		goto label$41;
		label$34:;
		TMP$93$2 = (uint8*)0ull;
		label$41:;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) = TMP$93$2;
		*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = (uint8*)0ull;
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), 0ll );
	}
	goto label$32;
	label$33:;
	{
		*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) = (uint16*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8664ll);
		*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = (uint16*)0ull;
		DWSTRALLOCATE( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8624ll), 0ll );
	}
	label$32:;
	if( IS_FB_EVAL$1 == 0ll ) goto label$36;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25056ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -48ll);
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25064ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -40ll);
	}
	goto label$35;
	label$36:;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25056ll) = 0ll;
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25064ll) = 0ll;
	}
	label$35:;
	if( ((int64)-(*(int64*)((uint8*)&ENV$ + 1272ll) == 0ll) | (int64)-(IS_FB_EVAL$1 == -1ll)) == 0ll ) goto label$38;
	{
		DZSTRALLOCATE( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25072ll), 0ll );
		*(int64*)((uint8*)&LEX$ + 426776ll) = 0ll;
	}
	label$38:;
	label$37:;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25096ll) = 0ll;
	if( ((int64)-(ISINCLUDE$1 == 0ll) & (int64)-(IS_FB_EVAL$1 == 0ll)) == 0ll ) goto label$40;
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
	fb_StrAssign( (void*)&PPONLY_LN$, -1ll, (void*)"", 1ll, 0 );
	PPEND(  );
	label$43:;
}

void LEXEATCHAR( void )
{
	label$90:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) != 18446744073709551615ull ) goto label$93;
	{
		HSKIPCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = 18446744073709551615ull;
	}
	goto label$92;
	label$93:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll) != 18446744073709551615ull ) goto label$94;
	{
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll);
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) = 18446744073709551615ull;
	}
	goto label$92;
	label$94:;
	{
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll);
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll);
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll) = 18446744073709551615ull;
	}
	label$92:;
	label$91:;
}

int64 LEXEATWHITESPACE( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$95:;
	fb$result$1 = 0ll;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) != 18446744073709551615ull ) goto label$98;
	{
		uint64 vr$2 = HREADCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = vr$2;
	}
	label$98:;
	label$97:;
	label$99:;
	if( ((int64)-(*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) == 9ull) | (int64)-(*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) == 32ull)) == 0ll ) goto label$100;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25096ll) = -1ll;
		LEXEATCHAR(  );
		uint64 vr$10 = HREADCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = vr$10;
		fb$result$1 = -1ll;
	}
	goto label$99;
	label$100:;
	label$96:;
	return fb$result$1;
}

uint64 LEXCURRENTCHAR( void )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$112:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) != 18446744073709551615ull ) goto label$115;
	{
		uint64 vr$2 = HREADCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) = vr$2;
	}
	label$115:;
	label$114:;
	fb$result$1 = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll);
	label$113:;
	return fb$result$1;
}

uint64 LEXGETLOOKAHEADCHAR( void )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$116:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) != 18446744073709551615ull ) goto label$119;
	{
		HSKIPCHAR(  );
		uint64 vr$2 = HREADCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll) = vr$2;
	}
	label$119:;
	label$118:;
	fb$result$1 = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8544ll);
	label$117:;
	return fb$result$1;
}

uint64 LEXGETLOOKAHEADCHAR2( void )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$120:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll) != 18446744073709551615ull ) goto label$123;
	{
		HSKIPCHAR(  );
		uint64 vr$2 = HREADCHAR(  );
		*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll) = vr$2;
	}
	label$123:;
	label$122:;
	fb$result$1 = *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8552ll);
	label$121:;
	return fb$result$1;
}

void LEXNEXTTOKEN( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	label$576:;
	uint64 CHAR$1;
	int64 ISLINECONT$1;
	int64 LGT$1;
	*(int64*)((uint8*)T$1 + 2112ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25096ll);
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25096ll) = 0ll;
	label$578:;
	*(uint8*)((uint8*)T$1 + 24ll) = (uint8)0u;
	*(int64*)((uint8*)T$1 + 2080ll) = 0ll;
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) = (struct $10FBSYMCHAIN*)0ull;
	ISLINECONT$1 = 0ll;
	label$579:;
	{
		uint64 vr$6 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$6;
		{
			uint64 TMP$121$3;
			TMP$121$3 = CHAR$1;
			goto label$583;
			label$584:;
			{
				*(int64*)T$1 = 256ll;
				*(int64*)((uint8*)T$1 + 8ll) = 6ll;
				*(int64*)((uint8*)T$1 + 16ll) = 2147483648ll;
				*(int64*)((uint8*)T$1 + 2104ll) = 0ll;
				goto label$577;
			}
			goto label$582;
			label$585:;
			{
				if( ISLINECONT$1 == 0ll ) goto label$587;
				{
					LEXEATCHAR(  );
					goto label$581;
				}
				label$587:;
				label$586:;
				if( (FLAGS$1 & 1ll) != 0ll ) goto label$589;
				{
					{
						uint64 TMP$122$6;
						uint64 vr$12 = LEXGETLOOKAHEADCHAR(  );
						TMP$122$6 = vr$12;
						goto label$591;
						label$592:;
						{
							goto label$580;
						}
						goto label$590;
						label$593:;
						{
							uint64 vr$13 = LEXGETLOOKAHEADCHAR2(  );
							if( vr$13 != 35ull ) goto label$595;
							{
								goto label$580;
							}
							label$595:;
							label$594:;
						}
						goto label$590;
						label$591:;
						static const void* tmp$131[88ll] = {
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
						if( (TMP$122$6 - 35ull) > 87ull ) goto label$590;
						goto *tmp$131[TMP$122$6 - 35ull];
						label$590:;
					}
					LEXEATCHAR(  );
					ISLINECONT$1 = -1ll;
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
				if( CHAR$1 != 13ull ) goto label$598;
				{
					uint64 vr$14 = LEXCURRENTCHAR(  );
					if( vr$14 != 10ull ) goto label$600;
					{
						LEXEATCHAR(  );
					}
					label$600:;
					label$599:;
				}
				label$598:;
				label$597:;
				if( ISLINECONT$1 != 0ll ) goto label$602;
				{
					*(int64*)T$1 = 257ll;
					*(int64*)((uint8*)T$1 + 8ll) = 6ll;
					*(int64*)((uint8*)T$1 + 16ll) = 2147483648ll;
					*(int64*)((uint8*)T$1 + 2104ll) = 0ll;
					*(int64*)((uint8*)T$1 + 2080ll) = 1ll;
					*(uint8*)((uint8*)T$1 + 24ll) = (uint8)10u;
					*(uint8*)((uint8*)T$1 + 25ll) = (uint8)0u;
					goto label$577;
				}
				goto label$601;
				label$602:;
				{
					*(int64*)((uint8*)T$1 + 2112ll) = -1ll;
					if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) != 0ll ) goto label$604;
					{
						*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) + 1ll;
					}
					label$604:;
					label$603:;
					ISLINECONT$1 = 0ll;
					goto label$581;
				}
				label$601:;
			}
			goto label$582;
			label$605:;
			{
				*(int64*)((uint8*)T$1 + 2112ll) = -1ll;
				if( ISLINECONT$1 != 0ll ) goto label$607;
				{
					if( (FLAGS$1 & 4ll) == 0ll ) goto label$609;
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
				if( ISLINECONT$1 != 0ll ) goto label$612;
				{
					goto label$580;
				}
				label$612:;
				label$611:;
				LEXEATCHAR(  );
			}
			goto label$582;
			label$583:;
			static const void* tmp$132[96ll] = {
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
			if( TMP$121$3 > 95ull ) goto label$610;
			goto *tmp$132[TMP$121$3 - 0ull];
			label$582:;
		}
	}
	label$581:;
	goto label$579;
	label$580:;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25064ll) = (*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25056ll) + (*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) - (int64)(uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8664ll))) + -1ll;
	{
		uint64 TMP$123$2;
		TMP$123$2 = CHAR$1;
		goto label$614;
		label$615:;
		{
			if( (FLAGS$1 & 9ll) != 0ll ) goto label$617;
			{
				uint64 LACHAR$4;
				uint64 vr$38 = LEXGETLOOKAHEADCHAR(  );
				LACHAR$4 = vr$38;
				if( ((int64)-(LACHAR$4 >= 48ull) & (int64)-(LACHAR$4 <= 57ull)) == 0ll ) goto label$619;
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
				uint64 TMP$124$4;
				uint64 vr$42 = LEXGETLOOKAHEADCHAR(  );
				TMP$124$4 = vr$42;
				if( TMP$124$4 == 72ull ) goto label$624;
				label$625:;
				if( TMP$124$4 == 104ull ) goto label$624;
				label$626:;
				if( TMP$124$4 == 79ull ) goto label$624;
				label$627:;
				if( TMP$124$4 == 111ull ) goto label$624;
				label$628:;
				if( TMP$124$4 == 66ull ) goto label$624;
				label$629:;
				if( TMP$124$4 == 98ull ) goto label$624;
				label$630:;
				if( TMP$124$4 < 48ull ) goto label$623;
				if( TMP$124$4 > 55ull ) goto label$623;
				label$624:;
				{
					HREADNUMBER( T$1, FLAGS$1 );
				}
				goto label$622;
				label$623:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 5ll;
					*(int64*)T$1 = 38ll;
					*(int64*)((uint8*)T$1 + 16ll) = *(int64*)T$1;
					*(int64*)((uint8*)T$1 + 2080ll) = 1ll;
					*(uint8*)((uint8*)T$1 + 24ll) = (uint8)38u;
					*(uint8*)((uint8*)T$1 + 25ll) = (uint8)0u;
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
			int64 vr$50 = READID( T$1, FLAGS$1 );
			if( ~vr$50 == 0ll ) goto label$635;
			{
				goto label$578;
			}
			label$635:;
			label$634:;
		}
		goto label$613;
		label$636:;
		{
			$8FB_TOKEN TMP$125$3;
			*(int64*)((uint8*)T$1 + 8ll) = 4ll;
			if( *(int64*)((uint8*)&ENV$ + 1528ll) == 0ll ) goto label$637;
			TMP$125$3 = 263ll;
			goto label$693;
			label$637:;
			TMP$125$3 = 262ll;
			label$693:;
			*(int64*)T$1 = TMP$125$3;
			*(int64*)((uint8*)T$1 + 16ll) = 2147483648ll;
			if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$639;
			{
				HREADSTRING( T$1, (uint8*)((uint8*)T$1 + 24ll), FLAGS$1 );
			}
			goto label$638;
			label$639:;
			{
				HREADWSTR( T$1, (uint16*)((uint8*)T$1 + 24ll), FLAGS$1 );
			}
			label$638:;
		}
		goto label$613;
		label$640:;
		{
			$8FB_TOKEN TMP$126$3;
			uint64 vr$59 = LEXGETLOOKAHEADCHAR(  );
			if( vr$59 == 34ull ) goto label$642;
			{
				goto label$620;
			}
			label$642:;
			label$641:;
			LEXEATCHAR(  );
			*(int64*)((uint8*)T$1 + 8ll) = 4ll;
			if( CHAR$1 != 33ull ) goto label$643;
			TMP$126$3 = 263ll;
			goto label$694;
			label$643:;
			TMP$126$3 = 264ll;
			label$694:;
			*(int64*)T$1 = TMP$126$3;
			*(int64*)((uint8*)T$1 + 16ll) = 2147483648ll;
			if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$645;
			{
				uint8* PS$4;
				if( (FLAGS$1 & 16ll) != 0ll ) goto label$647;
				{
					PS$4 = (uint8*)((uint8*)T$1 + 24ll);
				}
				goto label$646;
				label$647:;
				{
					*(uint8*)((uint8*)T$1 + 24ll) = (uint8)CHAR$1;
					PS$4 = (uint8*)((uint8*)T$1 + 25ll);
				}
				label$646:;
				HREADSTRING( T$1, PS$4, FLAGS$1 );
			}
			goto label$644;
			label$645:;
			{
				uint16* PS$4;
				if( (FLAGS$1 & 16ll) != 0ll ) goto label$649;
				{
					PS$4 = (uint16*)((uint8*)T$1 + 24ll);
				}
				goto label$648;
				label$649:;
				{
					*(uint16*)((uint8*)T$1 + 24ll) = (uint16)CHAR$1;
					PS$4 = (uint16*)((uint8*)T$1 + 26ll);
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
			*(int64*)T$1 = (int64)CHAR$1;
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)T$1;
			*(int64*)((uint8*)T$1 + 2104ll) = 0ll;
			*(int64*)((uint8*)T$1 + 2080ll) = 1ll;
			*(uint8*)((uint8*)T$1 + 24ll) = (uint8)CHAR$1;
			*(uint8*)((uint8*)T$1 + 25ll) = (uint8)0u;
			LEXEATCHAR(  );
			{
				uint64 TMP$127$4;
				TMP$127$4 = CHAR$1;
				goto label$652;
				label$653:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 5ll;
					{
						if( CHAR$1 != 60ull ) goto label$655;
						label$656:;
						{
							{
								uint64 TMP$128$8;
								uint64 vr$86 = LEXCURRENTCHAR(  );
								TMP$128$8 = vr$86;
								if( TMP$128$8 != 61ull ) goto label$658;
								label$659:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)61u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) + 1ll) = (uint8)0u;
									*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
									*(int64*)T$1 = 303ll;
									LEXEATCHAR(  );
								}
								goto label$657;
								label$658:;
								if( TMP$128$8 != 62ull ) goto label$660;
								label$661:;
								{
									*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)62u;
									*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) + 1ll) = (uint8)0u;
									*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
									*(int64*)T$1 = 302ll;
									LEXEATCHAR(  );
								}
								goto label$657;
								label$660:;
								{
									*(int64*)T$1 = 301ll;
								}
								label$662:;
								label$657:;
							}
						}
						goto label$654;
						label$655:;
						if( CHAR$1 != 62ull ) goto label$663;
						label$664:;
						{
							int64 TMP$129$7;
							if( (*(int64*)((uint8*)&PARSER$ + 304ll) & 512ll) != 0ll ) goto label$665;
							uint64 vr$113 = LEXCURRENTCHAR(  );
							TMP$129$7 = (int64)-(vr$113 == 61ull);
							goto label$695;
							label$665:;
							TMP$129$7 = 0ll;
							label$695:;
							if( TMP$129$7 == 0ll ) goto label$667;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)61u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) + 1ll) = (uint8)0u;
								*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
								*(int64*)T$1 = 304ll;
								LEXEATCHAR(  );
							}
							goto label$666;
							label$667:;
							{
								*(int64*)T$1 = 300ll;
							}
							label$666:;
						}
						goto label$654;
						label$663:;
						if( CHAR$1 != 61ull ) goto label$668;
						label$669:;
						{
							uint64 vr$128 = LEXCURRENTCHAR(  );
							if( vr$128 != 62ull ) goto label$671;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)62u;
								*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) + 1ll) = (uint8)0u;
								*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
								*(int64*)T$1 = 305ll;
								LEXEATCHAR(  );
							}
							goto label$670;
							label$671:;
							{
								*(int64*)T$1 = 299ll;
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
					*(int64*)((uint8*)T$1 + 8ll) = 5ll;
				}
				goto label$651;
				label$673:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 5ll;
					uint64 vr$144 = LEXCURRENTCHAR(  );
					if( vr$144 != 62ull ) goto label$675;
					{
						*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)62u;
						*(uint8*)((uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) + 1ll) = (uint8)0u;
						*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
						*(int64*)T$1 = 400ll;
						LEXEATCHAR(  );
					}
					label$675:;
					label$674:;
				}
				goto label$651;
				label$676:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 5ll;
					if( (FLAGS$1 & 512ll) != 0ll ) goto label$678;
					{
						uint64 vr$159 = LEXCURRENTCHAR(  );
						if( vr$159 != 39ull ) goto label$680;
						{
							HMULTILINECOMMENT(  );
							*(int64*)((uint8*)T$1 + 2112ll) = -1ll;
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
					*(int64*)((uint8*)T$1 + 8ll) = 6ll;
					*(int64*)T$1 = 259ll;
				}
				goto label$651;
				label$682:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 6ll;
					*(int64*)T$1 = 258ll;
				}
				goto label$651;
				label$683:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 6ll;
				}
				goto label$651;
				label$684:;
				{
					*(int64*)((uint8*)T$1 + 8ll) = 6ll;
					*(int64*)T$1 = 32ll;
					label$685:;
					{
						{
							uint64 TMP$130$7;
							uint64 vr$168 = LEXCURRENTCHAR(  );
							TMP$130$7 = vr$168;
							goto label$689;
							label$690:;
							{
								LEXEATCHAR(  );
								*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)32u;
								*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
							}
							goto label$688;
							label$691:;
							{
								*(uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)) = (uint8)0u;
								goto label$686;
							}
							goto label$688;
							label$689:;
							static const void* tmp$133[24ll] = {
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
							if( (TMP$130$7 - 9ull) > 23ull ) goto label$691;
							goto *tmp$133[TMP$130$7 - 9ull];
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
					*(int64*)((uint8*)T$1 + 8ll) = 7ll;
				}
				goto label$651;
				label$652:;
				static const void* tmp$134[117ll] = {
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
				if( (TMP$127$4 - 9ull) > 116ull ) goto label$692;
				goto *tmp$134[TMP$127$4 - 9ull];
				label$651:;
			}
		}
		goto label$613;
		label$614:;
		static const void* tmp$135[90ll] = {
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
		if( (TMP$123$2 - 33ull) > 89ull ) goto label$650;
		goto *tmp$135[TMP$123$2 - 33ull];
		label$613:;
	}
	label$577:;
}

int64 LEXGETTOKEN( $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$721:;
	if( *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) != -1ll ) goto label$724;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll), FLAGS$1 );
		PPCHECK(  );
	}
	label$724:;
	label$723:;
	fb$result$1 = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
	label$722:;
	return fb$result$1;
}

int64 LEXGETCLASS( $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$725:;
	if( *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) != -1ll ) goto label$728;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll), FLAGS$1 );
		PPCHECK(  );
	}
	label$728:;
	label$727:;
	fb$result$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 8ll);
	label$726:;
	return fb$result$1;
}

int64 LEXGETLOOKAHEAD( int64 K$1, $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$729:;
	if( K$1 <= 3ll ) goto label$732;
	{
		goto label$730;
	}
	label$732:;
	label$731:;
	if( K$1 <= *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) ) goto label$734;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) + 2120ll);
	}
	label$734:;
	label$733:;
	if( *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) != -1ll ) goto label$736;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll), FLAGS$1 );
	}
	label$736:;
	label$735:;
	fb$result$1 = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll);
	label$730:;
	return fb$result$1;
}

int64 LEXGETLOOKAHEADCLASS( int64 K$1, $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$737:;
	if( K$1 <= 3ll ) goto label$740;
	{
		goto label$738;
	}
	label$740:;
	label$739:;
	if( K$1 <= *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) ) goto label$742;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) = K$1;
		*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) + 2120ll);
	}
	label$742:;
	label$741:;
	if( *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) != -1ll ) goto label$744;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll), FLAGS$1 );
	}
	label$744:;
	label$743:;
	fb$result$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8528ll) + 8ll);
	label$738:;
	return fb$result$1;
}

void LEXPPONLYEMITTOKEN( void )
{
	label$769:;
	{
		int64 TMP$144$2;
		int64 vr$0 = LEXGETTOKEN( 0ll );
		TMP$144$2 = vr$0;
		if( TMP$144$2 == 259ll ) goto label$773;
		label$774:;
		if( TMP$144$2 != 260ll ) goto label$772;
		label$773:;
		{
			goto label$770;
		}
		goto label$771;
		label$772:;
		if( TMP$144$2 == 256ll ) goto label$776;
		label$777:;
		if( TMP$144$2 != 257ll ) goto label$775;
		label$776:;
		{
			int64 vr$1 = fb_StrLen( (void*)&PPONLY_LN$, -1ll );
			if( vr$1 <= 0ll ) goto label$779;
			{
				int64 TMP$145$4;
				TMP$145$4 = *(int64*)((uint8*)&ENV$ + 1192ll);
				fb_PrintString( (int32)TMP$145$4, (FBSTRING*)&PPONLY_LN$, 1 );
				fb_StrAssign( (void*)&PPONLY_LN$, -1ll, (void*)"", 1ll, 0 );
			}
			goto label$778;
			label$779:;
			int64 vr$3 = LEXGETTOKEN( 0ll );
			if( vr$3 != 257ll ) goto label$780;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8568ll) != 257ll ) goto label$782;
				{
					int64 TMP$146$5;
					TMP$146$5 = *(int64*)((uint8*)&ENV$ + 1192ll);
					FBSTRING* vr$5 = fb_StrAllocTempDescZEx( (uint8*)"", 0ll );
					fb_PrintString( (int32)TMP$146$5, (FBSTRING*)vr$5, 1 );
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
	if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2112ll) == 0ll ) goto label$784;
	{
		fb_StrConcatAssign( (void*)&PPONLY_LN$, -1ll, (void*)" ", 2ll, 0 );
	}
	label$784:;
	label$783:;
	{
		int64 TMP$148$2;
		int64 vr$9 = LEXGETTOKEN( 0ll );
		TMP$148$2 = vr$9;
		if( TMP$148$2 == 262ll ) goto label$787;
		label$788:;
		if( TMP$148$2 == 263ll ) goto label$787;
		label$789:;
		if( TMP$148$2 != 264ll ) goto label$786;
		label$787:;
		{
			int64 vr$10 = LEXGETTOKEN( 0ll );
			FBSTRING* vr$11 = LEXGETSTRLITTEXT( vr$10 );
			fb_StrConcatAssign( (void*)&PPONLY_LN$, -1ll, (void*)vr$11, -1ll, 0 );
		}
		goto label$785;
		label$786:;
		{
			FBSTRING TMP$149$3;
			uint8* vr$12 = LEXGETTEXT(  );
			__builtin_memset( &TMP$149$3, 0, 24ll );
			FBSTRING* vr$15 = fb_StrConcat( &TMP$149$3, (void*)&PPONLY_LN$, -1ll, (void*)vr$12, 0ll );
			fb_StrAssign( (void*)&PPONLY_LN$, -1ll, (void*)vr$15, -1ll, 0 );
		}
		label$790:;
		label$785:;
	}
	label$770:;
}

void LEXPPONLYEMITTEXT( FBSTRING* S$1 )
{
	FBSTRING TMP$150$1;
	label$791:;
	__builtin_memset( &TMP$150$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrConcat( &TMP$150$1, (void*)&PPONLY_LN$, -1ll, (void*)S$1, -1ll );
	fb_StrAssign( (void*)&PPONLY_LN$, -1ll, (void*)vr$2, -1ll, 0 );
	label$792:;
}

void LEXSKIPTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$793:;
	LEXCHECKTOKEN( FLAGS$1 );
	FLAGS$1 = FLAGS$1 & -14337ll;
	if( *(int64*)((uint8*)&ENV$ + 1192ll) <= 0ll ) goto label$796;
	{
		if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8576ll) != 0ll ) goto label$798;
		{
			LEXPPONLYEMITTOKEN(  );
		}
		label$798:;
		label$797:;
	}
	label$796:;
	label$795:;
	{
		int64 TMP$151$2;
		TMP$151$2 = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
		if( TMP$151$2 != 257ll ) goto label$800;
		label$801:;
		{
			if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) != 0ll ) goto label$803;
			{
				*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) + 1ll;
			}
			label$803:;
			label$802:;
		}
		label$800:;
		label$799:;
	}
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8568ll) = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) != 0ll ) goto label$805;
	{
		LEXNEXTTOKEN( *(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll), FLAGS$1 );
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
	if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) == 7ll ) goto label$809;
	{
		fb_StrAssign( (void*)TOKEN$1, 0ll, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll), 1025ll, 0 );
	}
	goto label$808;
	label$809:;
	{
		FBSTRING* vr$8 = fb_WstrToStr( (uint16*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll) );
		fb_StrAssign( (void*)TOKEN$1, 0ll, (void*)vr$8, -1ll, 0 );
	}
	label$808:;
	LEXSKIPTOKEN( FLAGS$1 );
	label$807:;
}

uint8* LEXGETTEXT( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$810:;
	static uint8 TMPSTR$1[1025];
	if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) == 7ll ) goto label$813;
	{
		fb$result$1 = (uint8*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll);
	}
	goto label$812;
	label$813:;
	{
		FBSTRING* vr$9 = fb_WstrToStr( (uint16*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll) );
		fb_StrAssign( (void*)TMPSTR$1, 1025ll, (void*)vr$9, -1ll, 0 );
		fb$result$1 = (uint8*)TMPSTR$1;
	}
	label$812:;
	label$811:;
	return fb$result$1;
}

void LEXREADLINE( uint64 ENDCHAR$1, uint8* DST$1, int64 SKIPLINE$1 )
{
	label$814:;
	static uint64 CHAR$1;
	if( SKIPLINE$1 != 0ll ) goto label$817;
	{
		fb_StrAssign( (void*)DST$1, 0ll, (void*)"", 1ll, 0 );
	}
	label$817:;
	label$816:;
	label$818:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) <= 0ll ) goto label$819;
	{
		{
			int64 TMP$152$3;
			TMP$152$3 = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
			if( TMP$152$3 == 256ll ) goto label$822;
			label$823:;
			if( TMP$152$3 == 257ll ) goto label$822;
			label$824:;
			if( (uint64)TMP$152$3 != ENDCHAR$1 ) goto label$821;
			label$822:;
			{
				goto label$815;
			}
			goto label$820;
			label$821:;
			{
				if( SKIPLINE$1 != 0ll ) goto label$827;
				{
					FBSTRING TMP$153$5;
					__builtin_memset( &TMP$153$5, 0, 24ll );
					FBSTRING* vr$8 = fb_StrConcat( &TMP$153$5, (void*)DST$1, 0ll, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll), 1025ll );
					fb_StrAssign( (void*)DST$1, 0ll, (void*)vr$8, -1ll, 0 );
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
		int64 TMP$154$2;
		TMP$154$2 = *(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll);
		if( TMP$154$2 == 256ll ) goto label$830;
		label$831:;
		if( TMP$154$2 == 257ll ) goto label$830;
		label$832:;
		if( (uint64)TMP$154$2 != ENDCHAR$1 ) goto label$829;
		label$830:;
		{
			goto label$815;
		}
		goto label$828;
		label$829:;
		{
			if( SKIPLINE$1 != 0ll ) goto label$835;
			{
				FBSTRING TMP$155$4;
				__builtin_memset( &TMP$155$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$155$4, (void*)DST$1, 0ll, (void*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 24ll), 1025ll );
				fb_StrAssign( (void*)DST$1, 0ll, (void*)vr$16, -1ll, 0 );
			}
			label$835:;
			label$834:;
		}
		label$833:;
		label$828:;
	}
	label$836:;
	{
		uint64 vr$17 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$17;
		{
			uint64 TMP$156$3;
			TMP$156$3 = CHAR$1;
			goto label$840;
			label$841:;
			{
				*(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = 256ll;
				*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 8ll) = 6ll;
				goto label$815;
			}
			goto label$839;
			label$842:;
			{
				LEXEATCHAR(  );
				if( CHAR$1 != 13ull ) goto label$844;
				{
					uint64 vr$22 = LEXCURRENTCHAR(  );
					if( vr$22 != 10ull ) goto label$846;
					{
						LEXEATCHAR(  );
					}
					label$846:;
					label$845:;
				}
				label$844:;
				label$843:;
				*(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = 257ll;
				*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 8ll) = 6ll;
				goto label$815;
			}
			goto label$839;
			label$847:;
			{
				if( CHAR$1 != ENDCHAR$1 ) goto label$849;
				{
					*(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = (int64)ENDCHAR$1;
					*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 8ll) = 6ll;
					goto label$815;
				}
				label$849:;
				label$848:;
			}
			goto label$839;
			label$840:;
			static const void* tmp$158[14ll] = {
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
			if( TMP$156$3 > 13ull ) goto label$847;
			goto *tmp$158[TMP$156$3 - 0ull];
			label$839:;
		}
		LEXEATCHAR(  );
		if( SKIPLINE$1 != 0ll ) goto label$851;
		{
			FBSTRING TMP$157$3;
			FBSTRING* vr$31 = fb_CHR( 1, (int64)CHAR$1 );
			__builtin_memset( &TMP$157$3, 0, 24ll );
			FBSTRING* vr$34 = fb_StrConcat( &TMP$157$3, (void*)DST$1, 0ll, (void*)vr$31, -1ll );
			fb_StrAssign( (void*)DST$1, 0ll, (void*)vr$34, -1ll, 0 );
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
	LEXREADLINE( 18446744073709551615ull, (uint8*)0ull, -1ll );
	label$853:;
}

FBSTRING* LEXPEEKCURRENTLINE( FBSTRING* TOKEN_POS$1, int64 DO_TRIM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$854:;
	static uint8 BUFFER$1[1025];
	FBSTRING RES$1;
	__builtin_memset( &RES$1, 0, 24ll );
	int64 P$1;
	__builtin_memset( &P$1, 0, 8ll );
	int64 OLD_P$1;
	__builtin_memset( &OLD_P$1, 0, 8ll );
	int64 START$1;
	__builtin_memset( &START$1, 0, 8ll );
	int64 TOKEN_LEN$1;
	__builtin_memset( &TOKEN_LEN$1, 0, 8ll );
	uint8* C$1;
	__builtin_memset( &C$1, 0, 8ll );
	uint64 CHAR$1;
	__builtin_memset( &CHAR$1, 0, 8ll );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"", 1ll, 0 );
	if( *(int64*)((uint8*)&ENV$ + 888ll) == 0ll ) goto label$857;
	{
		fb_StrDelete( (FBSTRING*)&RES$1 );
		goto label$855;
	}
	label$857:;
	label$856:;
	int64 vr$11 = fb_FileTell( (int32)*(int64*)((uint8*)&ENV$ + 600ll) );
	OLD_P$1 = vr$11;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8600ll) == 0ll ) goto label$859;
	{
		P$1 = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + -40ll) + -512ll;
	}
	goto label$858;
	label$859:;
	{
		P$1 = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25064ll) + -512ll;
	}
	label$858:;
	START$1 = 512ll;
	if( P$1 >= 0ll ) goto label$861;
	{
		START$1 = START$1 + P$1;
		P$1 = 0ll;
	}
	label$861:;
	label$860:;
	int32 vr$20 = fb_FileGetStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 600ll), P$1 + 1ll, (void*)BUFFER$1, 1025ll );
	if( (int64)vr$20 == 0ll ) goto label$862;
	void* vr$22 = fb_ErrorThrowAt( 2450, (uint8*)"src/compiler/lex.bas", (void*)0ull, (void*)0ull );
	goto *vr$22;
	label$862:;
	int32 vr$24 = fb_FileSeekLarge( (int32)*(int64*)((uint8*)&ENV$ + 600ll), OLD_P$1 );
	if( (int64)vr$24 == 0ll ) goto label$863;
	void* vr$26 = fb_ErrorThrowAt( 2451, (uint8*)"src/compiler/lex.bas", (void*)0ull, (void*)0ull );
	goto *vr$26;
	label$863:;
	C$1 = (uint8*)((uint8*)BUFFER$1 + START$1);
	TOKEN_LEN$1 = 0ll;
	if( START$1 <= 0ll ) goto label$865;
	{
		C$1 = (uint8*)(C$1 + -1ll);
		label$866:;
		{
			CHAR$1 = (uint64)*C$1;
			{
				if( CHAR$1 == 13ull ) goto label$871;
				label$872:;
				if( CHAR$1 != 10ull ) goto label$870;
				label$871:;
				{
					goto label$867;
				}
				label$870:;
				label$869:;
			}
			if( START$1 > 0ll ) goto label$874;
			{
				goto label$867;
			}
			label$874:;
			label$873:;
			TOKEN_LEN$1 = TOKEN_LEN$1 + 1ll;
			C$1 = (uint8*)(C$1 + -1ll);
			START$1 = START$1 + -1ll;
		}
		label$868:;
		goto label$866;
		label$867:;
		C$1 = (uint8*)(C$1 + 1ll);
	}
	label$865:;
	label$864:;
	fb_StrAssign( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
	fb_StrAssign( (void*)TOKEN_POS$1, -1ll, (void*)"", 1ll, 0 );
	label$875:;
	{
		CHAR$1 = (uint64)*C$1;
		{
			if( CHAR$1 == 0ull ) goto label$880;
			label$881:;
			if( CHAR$1 == 13ull ) goto label$880;
			label$882:;
			if( CHAR$1 != 10ull ) goto label$879;
			label$880:;
			{
				goto label$876;
			}
			label$879:;
			label$878:;
		}
		FBSTRING* vr$38 = fb_CHR( 1, (int64)CHAR$1 );
		fb_StrConcatAssign( (void*)&RES$1, -1ll, (void*)vr$38, -1ll, 0 );
		if( TOKEN_LEN$1 <= 0ll ) goto label$884;
		{
			int64 TMP$160$3;
			if( CHAR$1 != 9ull ) goto label$885;
			TMP$160$3 = 9ll;
			goto label$910;
			label$885:;
			TMP$160$3 = 32ll;
			label$910:;
			FBSTRING* vr$40 = fb_CHR( 1, TMP$160$3 );
			fb_StrConcatByref( (void*)TOKEN_POS$1, -1ll, (void*)vr$40, -1ll, 0 );
			TOKEN_LEN$1 = TOKEN_LEN$1 + -1ll;
		}
		label$884:;
		label$883:;
		C$1 = (uint8*)(C$1 + 1ll);
	}
	label$877:;
	goto label$875;
	label$876:;
	if( DO_TRIM$1 == 0ll ) goto label$887;
	{
		int64 I$2;
		__builtin_memset( &I$2, 0, 8ll );
		{
			I$2 = 0ll;
			int64 TMP$161$3;
			int64 vr$45 = fb_StrLen( (void*)&RES$1, -1ll );
			TMP$161$3 = vr$45 + -1ll;
			goto label$888;
			label$891:;
			{
				{
					uint8 TMP$162$5;
					TMP$162$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int64)TMP$162$5 == 9ll ) goto label$894;
					label$895:;
					if( (int64)TMP$162$5 != 32ll ) goto label$893;
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
			I$2 = I$2 + 1ll;
			label$888:;
			if( I$2 <= TMP$161$3 ) goto label$891;
			label$890:;
		}
		int64 vr$52 = fb_StrLen( (void*)&RES$1, -1ll );
		if( I$2 >= vr$52 ) goto label$898;
		{
			FBSTRING* vr$55 = fb_StrMid( (FBSTRING*)&RES$1, I$2 + 1ll, -1ll );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$55, -1ll, 0 );
		}
		goto label$897;
		label$898:;
		{
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)"", 1ll, 0 );
		}
		label$897:;
		{
			int64 vr$59 = fb_StrLen( (void*)&RES$1, -1ll );
			I$2 = vr$59 + -1ll;
			goto label$899;
			label$902:;
			{
				{
					uint8 TMP$163$5;
					TMP$163$5 = *(uint8*)((uint8*)*(uint8**)&RES$1 + I$2);
					if( (int64)TMP$163$5 == 9ll ) goto label$905;
					label$906:;
					if( (int64)TMP$163$5 != 32ll ) goto label$904;
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
			I$2 = I$2 + -1ll;
			label$899:;
			if( I$2 >= 0ll ) goto label$902;
			label$901:;
		}
		if( I$2 <= 0ll ) goto label$909;
		{
			FBSTRING* vr$67 = fb_LEFT( (FBSTRING*)&RES$1, I$2 + 1ll );
			fb_StrAssign( (void*)&RES$1, -1ll, (void*)vr$67, -1ll, 0 );
		}
		label$909:;
		label$908:;
	}
	label$887:;
	label$886:;
	fb_StrConcatByref( (void*)TOKEN_POS$1, -1ll, (void*)"^", 2ll, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&RES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&RES$1 );
	label$855:;
	FBSTRING* vr$73 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$73;
}

void LEXCHECKTOKEN( $8LEXCHECK FLAGS$1 )
{
	label$911:;
	if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$914;
	{
		if( (FLAGS$1 & 14336ll) == 0ll ) goto label$916;
		{
			if( (FLAGS$1 & 2048ll) == 0ll ) goto label$918;
			{
				FBSTRING TMP$166$4;
				FBSTRING TMP$168$4;
				FBSTRING TMP$169$4;
				FBSTRING TMP$170$4;
				FBSTRING TMP$171$4;
				__builtin_memset( &TMP$171$4, 0, 24ll );
				if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$919;
				FBSTRING* vr$9 = fb_CHR( 1, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) );
				fb_StrInit( (void*)&TMP$166$4, -1ll, (void*)vr$9, -1ll, 0 );
				goto label$936;
				label$919:;
				fb_StrInit( (void*)&TMP$166$4, -1ll, (void*)"", 1ll, 0 );
				label$936:;
				uint8* vr$13 = LEXGETTEXT(  );
				__builtin_memset( &TMP$168$4, 0, 24ll );
				FBSTRING* vr$16 = fb_StrConcat( &TMP$168$4, (void*)"in '", 5ll, (void*)vr$13, 0ll );
				__builtin_memset( &TMP$169$4, 0, 24ll );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$169$4, (void*)vr$16, -1ll, (void*)&TMP$166$4, -1ll );
				__builtin_memset( &TMP$170$4, 0, 24ll );
				FBSTRING* vr$22 = fb_StrConcat( &TMP$170$4, (void*)vr$19, -1ll, (void*)"'", 2ll );
				fb_StrAssign( (void*)&TMP$171$4, -1ll, (void*)vr$22, -1ll, 0 );
				ERRREPORTWARN( 44ll, (uint8*)*(uint8**)&TMP$171$4, 0ll, (uint8*)0ull );
				fb_StrDelete( (FBSTRING*)&TMP$171$4 );
				fb_StrDelete( (FBSTRING*)&TMP$166$4 );
				*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) = 2147483648ll;
				*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) = 0ll;
			}
			goto label$917;
			label$918:;
			if( (FLAGS$1 & 4096ll) == 0ll ) goto label$920;
			{
				if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 8388608ll) != 0ll ) goto label$922;
				{
					FBSTRING TMP$172$5;
					FBSTRING TMP$173$5;
					FBSTRING TMP$174$5;
					FBSTRING TMP$175$5;
					FBSTRING TMP$176$5;
					__builtin_memset( &TMP$176$5, 0, 24ll );
					if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$923;
					FBSTRING* vr$37 = fb_CHR( 1, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) );
					fb_StrInit( (void*)&TMP$172$5, -1ll, (void*)vr$37, -1ll, 0 );
					goto label$937;
					label$923:;
					fb_StrInit( (void*)&TMP$172$5, -1ll, (void*)"", 1ll, 0 );
					label$937:;
					uint8* vr$41 = LEXGETTEXT(  );
					__builtin_memset( &TMP$173$5, 0, 24ll );
					FBSTRING* vr$44 = fb_StrConcat( &TMP$173$5, (void*)"in '", 5ll, (void*)vr$41, 0ll );
					__builtin_memset( &TMP$174$5, 0, 24ll );
					FBSTRING* vr$47 = fb_StrConcat( &TMP$174$5, (void*)vr$44, -1ll, (void*)&TMP$172$5, -1ll );
					__builtin_memset( &TMP$175$5, 0, 24ll );
					FBSTRING* vr$50 = fb_StrConcat( &TMP$175$5, (void*)vr$47, -1ll, (void*)"'", 2ll );
					fb_StrAssign( (void*)&TMP$176$5, -1ll, (void*)vr$50, -1ll, 0 );
					ERRREPORTWARN( 44ll, (uint8*)*(uint8**)&TMP$176$5, 0ll, (uint8*)0ull );
					fb_StrDelete( (FBSTRING*)&TMP$176$5 );
					fb_StrDelete( (FBSTRING*)&TMP$172$5 );
					*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) = 2147483648ll;
					*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) = 0ll;
				}
				label$922:;
				label$921:;
			}
			goto label$917;
			label$920:;
			if( (FLAGS$1 & 8192ll) == 0ll ) goto label$924;
			{
				if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 8388608ll) == 0ll ) goto label$926;
				{
					if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 36ll ) goto label$928;
					{
						FBSTRING TMP$177$6;
						FBSTRING TMP$178$6;
						FBSTRING TMP$179$6;
						FBSTRING TMP$180$6;
						FBSTRING TMP$181$6;
						__builtin_memset( &TMP$181$6, 0, 24ll );
						if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$929;
						FBSTRING* vr$67 = fb_CHR( 1, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) );
						fb_StrInit( (void*)&TMP$177$6, -1ll, (void*)vr$67, -1ll, 0 );
						goto label$938;
						label$929:;
						fb_StrInit( (void*)&TMP$177$6, -1ll, (void*)"", 1ll, 0 );
						label$938:;
						uint8* vr$71 = LEXGETTEXT(  );
						__builtin_memset( &TMP$178$6, 0, 24ll );
						FBSTRING* vr$74 = fb_StrConcat( &TMP$178$6, (void*)"in '", 5ll, (void*)vr$71, 0ll );
						__builtin_memset( &TMP$179$6, 0, 24ll );
						FBSTRING* vr$77 = fb_StrConcat( &TMP$179$6, (void*)vr$74, -1ll, (void*)&TMP$177$6, -1ll );
						__builtin_memset( &TMP$180$6, 0, 24ll );
						FBSTRING* vr$80 = fb_StrConcat( &TMP$180$6, (void*)vr$77, -1ll, (void*)"'", 2ll );
						fb_StrAssign( (void*)&TMP$181$6, -1ll, (void*)vr$80, -1ll, 0 );
						ERRREPORTWARN( 44ll, (uint8*)*(uint8**)&TMP$181$6, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$181$6 );
						fb_StrDelete( (FBSTRING*)&TMP$177$6 );
						*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) = 2147483648ll;
						*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) = 0ll;
					}
					label$928:;
					label$927:;
				}
				goto label$925;
				label$926:;
				{
					if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) != 36ll ) goto label$931;
					{
						if( (*(int64*)((uint8*)&ENV$ + 400ll) & 256ll) == 0ll ) goto label$933;
						{
							FBSTRING TMP$182$7;
							FBSTRING TMP$183$7;
							FBSTRING TMP$184$7;
							FBSTRING TMP$185$7;
							FBSTRING TMP$186$7;
							__builtin_memset( &TMP$186$7, 0, 24ll );
							if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$934;
							FBSTRING* vr$96 = fb_CHR( 1, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) );
							fb_StrInit( (void*)&TMP$182$7, -1ll, (void*)vr$96, -1ll, 0 );
							goto label$939;
							label$934:;
							fb_StrInit( (void*)&TMP$182$7, -1ll, (void*)"", 1ll, 0 );
							label$939:;
							uint8* vr$100 = LEXGETTEXT(  );
							__builtin_memset( &TMP$183$7, 0, 24ll );
							FBSTRING* vr$103 = fb_StrConcat( &TMP$183$7, (void*)"in '", 5ll, (void*)vr$100, 0ll );
							__builtin_memset( &TMP$184$7, 0, 24ll );
							FBSTRING* vr$106 = fb_StrConcat( &TMP$184$7, (void*)vr$103, -1ll, (void*)&TMP$182$7, -1ll );
							__builtin_memset( &TMP$185$7, 0, 24ll );
							FBSTRING* vr$109 = fb_StrConcat( &TMP$185$7, (void*)vr$106, -1ll, (void*)"'", 2ll );
							fb_StrAssign( (void*)&TMP$186$7, -1ll, (void*)vr$109, -1ll, 0 );
							ERRREPORTWARN( 44ll, (uint8*)*(uint8**)&TMP$186$7, 0ll, (uint8*)0ull );
							fb_StrDelete( (FBSTRING*)&TMP$186$7 );
							fb_StrDelete( (FBSTRING*)&TMP$182$7 );
						}
						label$933:;
						label$932:;
					}
					goto label$930;
					label$931:;
					{
						FBSTRING TMP$187$6;
						FBSTRING TMP$188$6;
						FBSTRING TMP$189$6;
						FBSTRING TMP$190$6;
						FBSTRING TMP$191$6;
						__builtin_memset( &TMP$191$6, 0, 24ll );
						if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) == 0ll ) goto label$935;
						FBSTRING* vr$118 = fb_CHR( 1, *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) );
						fb_StrInit( (void*)&TMP$187$6, -1ll, (void*)vr$118, -1ll, 0 );
						goto label$940;
						label$935:;
						fb_StrInit( (void*)&TMP$187$6, -1ll, (void*)"", 1ll, 0 );
						label$940:;
						uint8* vr$122 = LEXGETTEXT(  );
						__builtin_memset( &TMP$188$6, 0, 24ll );
						FBSTRING* vr$125 = fb_StrConcat( &TMP$188$6, (void*)"in '", 5ll, (void*)vr$122, 0ll );
						__builtin_memset( &TMP$189$6, 0, 24ll );
						FBSTRING* vr$128 = fb_StrConcat( &TMP$189$6, (void*)vr$125, -1ll, (void*)&TMP$187$6, -1ll );
						__builtin_memset( &TMP$190$6, 0, 24ll );
						FBSTRING* vr$131 = fb_StrConcat( &TMP$190$6, (void*)vr$128, -1ll, (void*)"'", 2ll );
						fb_StrAssign( (void*)&TMP$191$6, -1ll, (void*)vr$131, -1ll, 0 );
						ERRREPORTWARN( 44ll, (uint8*)*(uint8**)&TMP$191$6, 0ll, (uint8*)0ull );
						fb_StrDelete( (FBSTRING*)&TMP$191$6 );
						fb_StrDelete( (FBSTRING*)&TMP$187$6 );
					}
					label$930:;
					*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) = 2147483648ll;
					*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) = 0ll;
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

int64 HMATCHIDORKW( uint8* TXT$1, $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$941:;
	{
		int64 TMP$192$2;
		int64 vr$1 = LEXGETCLASS( 0ll );
		TMP$192$2 = vr$1;
		if( TMP$192$2 == 0ll ) goto label$945;
		label$946:;
		if( TMP$192$2 == 2ll ) goto label$945;
		label$947:;
		if( TMP$192$2 != 1ll ) goto label$944;
		label$945:;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			FBSTRING* vr$3 = fb_StrAllocTempDescZ( (uint8*)vr$2 );
			FBSTRING* vr$4 = fb_StrUcase2( (FBSTRING*)vr$3, 0 );
			int32 vr$5 = fb_StrCompare( (void*)vr$4, -1ll, (void*)TXT$1, 0ll );
			if( (int64)vr$5 != 0ll ) goto label$949;
			{
				LEXSKIPTOKEN( FLAGS$1 );
				fb$result$1 = -1ll;
				goto label$942;
			}
			label$949:;
			label$948:;
		}
		label$944:;
		label$943:;
	}
	fb$result$1 = 0ll;
	goto label$942;
	label$942:;
	return fb$result$1;
}

int64 HMATCH( int64 TOKEN$1, $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$950:;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != TOKEN$1 ) goto label$953;
	{
		LEXSKIPTOKEN( FLAGS$1 );
		fb$result$1 = -1ll;
	}
	goto label$952;
	label$953:;
	{
		fb$result$1 = 0ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HCOLLECTCHARFORDEBUGOUTPUT( uint64 CHAR$1 )
{
	label$44:;
	if( CHAR$1 >= 32ull ) goto label$47;
	{
		{
			uint64 TMP$94$3;
			TMP$94$3 = CHAR$1;
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
				CHAR$1 = 63ull;
			}
			goto label$48;
			label$49:;
			static const void* tmp$193[14ll] = {
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
			if( TMP$94$3 > 13ull ) goto label$52;
			goto *tmp$193[TMP$94$3 - 0ull];
			label$48:;
		}
	}
	goto label$46;
	label$47:;
	if( CHAR$1 <= 255ull ) goto label$53;
	{
		CHAR$1 = 63ull;
	}
	label$53:;
	label$46:;
	DZSTRCONCATASSIGNC( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25072ll), CHAR$1 );
	label$45:;
}

static uint64 HREADCHAR( void )
{
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$54:;
	uint64 CHAR$1;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) <= 0ll ) goto label$57;
	{
		if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$59;
		{
			CHAR$1 = (uint64)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll));
		}
		goto label$58;
		label$59:;
		{
			CHAR$1 = (uint64)*(*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll));
		}
		label$58:;
		if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$61;
		{
			if( *(int64*)((uint8*)&ENV$ + 1272ll) != 0ll ) goto label$63;
			{
				if( *(int64*)((uint8*)&LEX$ + 426776ll) != 0ll ) goto label$65;
				{
					*(int64*)((uint8*)&LEX$ + 426776ll) = -1ll;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25072ll), (uint8*)" [Macro Expansion: " );
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
		if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) != 0ll ) goto label$67;
		{
			int32 vr$12 = fb_FileEof( (int32)*(int64*)((uint8*)&ENV$ + 600ll) );
			if( (int64)vr$12 != 0ll ) goto label$69;
			{
				int64 vr$15 = fb_FileTell( (int32)*(int64*)((uint8*)&ENV$ + 600ll) );
				*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25056ll) = vr$15;
				{
					uint64 TMP$97$5;
					TMP$97$5 = *(uint64*)((uint8*)&ENV$ + 888ll);
					goto label$71;
					label$72:;
					{
						int32 vr$20 = fb_FileGetStrLarge( (int32)*(int64*)((uint8*)&ENV$ + 600ll), 0ll, (void*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8664ll), 8193ll );
						if( (int64)vr$20 != 0ll ) goto label$74;
						{
							int64 vr$23 = fb_FileTell( (int32)*(int64*)((uint8*)&ENV$ + 600ll) );
							*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) = vr$23 - *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25056ll);
							*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) = (uint8*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8664ll);
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
					static const void* tmp$194[6ll] = {
						&&label$72,
						&&label$75,
						&&label$76,
						&&label$77,
						&&label$78,
						&&label$79,
					};
					if( TMP$97$5 > 5ull ) goto label$70;
					goto *tmp$194[TMP$97$5 - 0ull];
					label$70:;
				}
			}
			label$69:;
			label$68:;
		}
		label$67:;
		label$66:;
		if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) <= 0ll ) goto label$81;
		{
			if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$83;
			{
				CHAR$1 = (uint64)*(*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll));
			}
			goto label$82;
			label$83:;
			{
				CHAR$1 = (uint64)*(*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll));
			}
			label$82:;
		}
		goto label$80;
		label$81:;
		{
			CHAR$1 = 0ull;
		}
		label$80:;
		if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$85;
		{
			if( *(int64*)((uint8*)&ENV$ + 1272ll) != 0ll ) goto label$87;
			{
				if( *(int64*)((uint8*)&LEX$ + 426776ll) == 0ll ) goto label$89;
				{
					*(int64*)((uint8*)&LEX$ + 426776ll) = 0ll;
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 25072ll), (uint8*)" ] " );
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
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) <= 0ll ) goto label$104;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) + -1ll;
		if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$106;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) + 1ll);
		}
		goto label$105;
		label$106:;
		{
			*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) = (uint16*)((uint8*)*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8616ll) + 2ll);
		}
		label$105:;
		if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) != 0ll ) goto label$108;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8584ll) = (struct $8FBSYMBOL*)0ull;
		}
		label$108:;
		label$107:;
	}
	goto label$103;
	label$104:;
	if( *(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8536ll) == 0ull ) goto label$109;
	{
		*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8648ll) + -1ll;
		if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$111;
		{
			*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) = (uint8*)((uint8*)*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) + 1ll);
		}
		goto label$110;
		label$111:;
		{
			*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) = (uint16*)((uint8*)*(uint16**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8656ll) + 2ll);
		}
		label$110:;
	}
	label$109:;
	label$103:;
	label$102:;
}

static void HREADIDENTIFIER( uint8* PID$1, int64* TLEN$1, int64* DTYPE$1, int64* SUFFIXCHAR$1, $8LEXCHECK FLAGS$1 )
{
	label$124:;
	int64 SKIPCHAR$1;
	uint64 vr$0 = LEXCURRENTCHAR(  );
	*PID$1 = (uint8)vr$0;
	PID$1 = (uint8*)((uint8*)PID$1 + 1ll);
	*TLEN$1 = *TLEN$1 + 1ll;
	*SUFFIXCHAR$1 = 0ll;
	LEXEATCHAR(  );
	SKIPCHAR$1 = 0ll;
	label$126:;
	{
		uint64 C$2;
		uint64 vr$8 = LEXCURRENTCHAR(  );
		C$2 = vr$8;
		{
			uint64 TMP$99$3;
			TMP$99$3 = C$2;
			goto label$130;
			label$131:;
			{
			}
			goto label$129;
			label$132:;
			{
				if( (FLAGS$1 & 128ll) != 0ll ) goto label$134;
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
			static const void* tmp$195[77ll] = {
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
			if( (TMP$99$3 - 46ull) > 76ull ) goto label$135;
			goto *tmp$195[TMP$99$3 - 46ull];
			label$129:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0ll ) goto label$137;
		{
			if( *TLEN$1 != 128ll ) goto label$139;
			{
				if( (FLAGS$1 & 1ll) != 0ll ) goto label$141;
				{
					FLAGS$1 = FLAGS$1 | 1ll;
					ERRREPORTWARN( 7ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$141:;
				label$140:;
				SKIPCHAR$1 = -1ll;
			}
			goto label$138;
			label$139:;
			{
				*PID$1 = (uint8)C$2;
				PID$1 = (uint8*)((uint8*)PID$1 + 1ll);
				*TLEN$1 = *TLEN$1 + 1ll;
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
	*DTYPE$1 = 2147483648ll;
	if( (FLAGS$1 & 8ll) != 0ll ) goto label$143;
	{
		{
			uint64 TMP$100$3;
			uint64 vr$22 = LEXCURRENTCHAR(  );
			TMP$100$3 = vr$22;
			goto label$145;
			label$146:;
			{
				*DTYPE$1 = *(int64*)((uint8*)&ENV$ + 1432ll);
				*SUFFIXCHAR$1 = 37ll;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$147:;
			{
				*DTYPE$1 = 11ll;
				*SUFFIXCHAR$1 = 38ll;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$148:;
			{
				*DTYPE$1 = 15ll;
				*SUFFIXCHAR$1 = 33ll;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$149:;
			{
				uint64 vr$29 = LEXGETLOOKAHEADCHAR(  );
				if( vr$29 == 35ull ) goto label$151;
				{
					*DTYPE$1 = 16ll;
					*SUFFIXCHAR$1 = 35ll;
					LEXEATCHAR(  );
				}
				label$151:;
				label$150:;
			}
			goto label$144;
			label$152:;
			{
				*DTYPE$1 = 17ll;
				*SUFFIXCHAR$1 = 36ll;
				LEXEATCHAR(  );
			}
			goto label$144;
			label$145:;
			static const void* tmp$196[6ll] = {
				&&label$148,
				&&label$144,
				&&label$149,
				&&label$152,
				&&label$146,
				&&label$147,
			};
			if( (TMP$100$3 - 33ull) > 5ull ) goto label$144;
			goto *tmp$196[TMP$100$3 - 33ull];
			label$144:;
		}
	}
	label$143:;
	label$142:;
	label$125:;
}

static uint64 HREADNONDECNUMBER( uint8** PNUM$1, int64* TLEN$1, int64* DTYPE$1, $8LEXCHECK FLAGS$1 )
{
	int64 TMP$105$1;
	uint64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$153:;
	uint64 VALUE$1;
	uint64 C$1;
	uint64 FIRST_C$1;
	uint64 VALUE64$1;
	int64 LGT$1;
	int64 HAVEDIGITS$1;
	int64 SKIPCHAR$1;
	VALUE$1 = 0ull;
	LGT$1 = 0ll;
	SKIPCHAR$1 = 0ll;
	HAVEDIGITS$1 = 0ll;
	uint64 vr$1 = LEXGETLOOKAHEADCHAR(  );
	C$1 = vr$1;
	{
		uint64 TMP$101$2;
		TMP$101$2 = C$1;
		goto label$156;
		label$157:;
		{
			C$1 = 79ull;
		}
		goto label$155;
		label$158:;
		{
			LEXEATCHAR(  );
		}
		goto label$155;
		label$156:;
		static const void* tmp$197[8ll] = {
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
		};
		if( (TMP$101$2 - 48ull) > 7ull ) goto label$158;
		goto *tmp$197[TMP$101$2 - 48ull];
		label$155:;
	}
	{
		uint64 TMP$102$2;
		TMP$102$2 = C$1;
		goto label$160;
		label$161:;
		{
			*(*PNUM$1) = (uint8)38u;
			*(uint8*)((uint8*)*PNUM$1 + 1ll) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2ll);
			*TLEN$1 = *TLEN$1 + 2ll;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9ll) != 0ll ) goto label$163;
			{
				label$164:;
				uint64 vr$14 = LEXCURRENTCHAR(  );
				if( vr$14 != 48ull ) goto label$165;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*TLEN$1 = *TLEN$1 + 1ll;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1ll;
				}
				goto label$164;
				label$165:;
			}
			label$163:;
			label$162:;
			label$166:;
			{
				uint64 vr$23 = LEXCURRENTCHAR(  );
				C$1 = vr$23;
				{
					if( C$1 < 97ull ) goto label$172;
					if( C$1 <= 102ull ) goto label$171;
					label$172:;
					if( C$1 < 65ull ) goto label$173;
					if( C$1 <= 70ull ) goto label$171;
					label$173:;
					if( C$1 < 48ull ) goto label$170;
					if( C$1 > 57ull ) goto label$170;
					label$171:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1ll;
						if( SKIPCHAR$1 != 0ll ) goto label$175;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
							*TLEN$1 = *TLEN$1 + 1ll;
							C$1 = C$1 + 18446744073709551568ull;
							if( C$1 <= 9ull ) goto label$177;
							{
								C$1 = C$1 + 18446744073709551609ull;
							}
							label$177:;
							label$176:;
							if( C$1 <= 16ull ) goto label$179;
							{
								C$1 = C$1 + 18446744073709551584ull;
							}
							label$179:;
							label$178:;
							LGT$1 = LGT$1 + 1ll;
							if( LGT$1 <= 8ll ) goto label$181;
							{
								if( LGT$1 != 9ll ) goto label$183;
								{
									*DTYPE$1 = 13ll;
									VALUE64$1 = (VALUE$1 << (4ull & 63ll)) + C$1;
								}
								goto label$182;
								label$183:;
								if( LGT$1 != 17ll ) goto label$184;
								{
									if( (FLAGS$1 & 1ll) != 0ll ) goto label$186;
									{
										ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
									}
									label$186:;
									label$185:;
									SKIPCHAR$1 = -1ll;
								}
								goto label$182;
								label$184:;
								{
									VALUE64$1 = (VALUE64$1 << (4ull & 63ll)) + C$1;
								}
								label$182:;
							}
							goto label$180;
							label$181:;
							{
								if( LGT$1 != 5ll ) goto label$188;
								{
									*DTYPE$1 = 11ll;
								}
								label$188:;
								label$187:;
								VALUE$1 = (VALUE$1 << (4ull & 63ll)) + C$1;
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
			*(uint8*)((uint8*)*PNUM$1 + 1ll) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2ll);
			*TLEN$1 = *TLEN$1 + 2ll;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9ll) != 0ll ) goto label$192;
			{
				label$193:;
				uint64 vr$58 = LEXCURRENTCHAR(  );
				if( vr$58 != 48ull ) goto label$194;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*TLEN$1 = *TLEN$1 + 1ll;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1ll;
				}
				goto label$193;
				label$194:;
			}
			label$192:;
			label$191:;
			uint64 vr$67 = LEXCURRENTCHAR(  );
			FIRST_C$1 = vr$67;
			label$195:;
			{
				uint64 vr$68 = LEXCURRENTCHAR(  );
				C$1 = vr$68;
				{
					if( C$1 < 48ull ) goto label$199;
					if( C$1 > 55ull ) goto label$199;
					label$200:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1ll;
						if( SKIPCHAR$1 != 0ll ) goto label$202;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
							*TLEN$1 = *TLEN$1 + 1ll;
							C$1 = C$1 + 18446744073709551568ull;
							LGT$1 = LGT$1 + 1ll;
							if( LGT$1 <= 10ll ) goto label$204;
							{
								{
									uint64 TMP$103$9;
									TMP$103$9 = (uint64)LGT$1;
									goto label$206;
									label$207:;
									{
										if( FIRST_C$1 <= 51ull ) goto label$209;
										{
											*DTYPE$1 = 13ll;
											VALUE64$1 = (VALUE$1 << (3ull & 63ll)) + C$1;
										}
										goto label$208;
										label$209:;
										{
											VALUE$1 = (VALUE$1 << (3ull & 63ll)) + C$1;
										}
										label$208:;
									}
									goto label$205;
									label$210:;
									{
										int64 TMP$104$10;
										if( (*DTYPE$1 & 480ll) == 0ll ) goto label$211;
										TMP$104$10 = 24ll;
										goto label$954;
										label$211:;
										TMP$104$10 = *DTYPE$1 & 31ll;
										label$954:;
										if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$10 * 56ll)) + 8ll) >= 8ll ) goto label$213;
										{
											*DTYPE$1 = 13ll;
											VALUE64$1 = VALUE$1;
										}
										label$213:;
										label$212:;
										VALUE64$1 = (VALUE64$1 << (3ull & 63ll)) + C$1;
									}
									goto label$205;
									label$214:;
									{
										if( FIRST_C$1 <= 49ull ) goto label$216;
										{
											if( (FLAGS$1 & 1ll) != 0ll ) goto label$218;
											{
												ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
											}
											label$218:;
											label$217:;
											SKIPCHAR$1 = -1ll;
										}
										goto label$215;
										label$216:;
										{
											VALUE64$1 = (VALUE64$1 << (3ull & 63ll)) + C$1;
										}
										label$215:;
									}
									goto label$205;
									label$219:;
									{
										if( (FLAGS$1 & 1ll) != 0ll ) goto label$221;
										{
											ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
										}
										label$221:;
										label$220:;
										SKIPCHAR$1 = -1ll;
									}
									goto label$205;
									label$222:;
									{
										VALUE64$1 = (VALUE64$1 << (3ull & 63ll)) + C$1;
									}
									goto label$205;
									label$206:;
									static const void* tmp$198[13ll] = {
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
									if( (TMP$103$9 - 11ull) > 12ull ) goto label$222;
									goto *tmp$198[TMP$103$9 - 11ull];
									label$205:;
								}
							}
							goto label$203;
							label$204:;
							{
								if( LGT$1 != 6ll ) goto label$224;
								{
									if( FIRST_C$1 <= 49ull ) goto label$226;
									{
										*DTYPE$1 = 11ll;
									}
									label$226:;
									label$225:;
								}
								goto label$223;
								label$224:;
								if( LGT$1 != 7ll ) goto label$227;
								{
									*DTYPE$1 = 11ll;
								}
								label$227:;
								label$223:;
								VALUE$1 = (VALUE$1 << (3ull & 63ll)) + C$1;
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
			*(uint8*)((uint8*)*PNUM$1 + 1ll) = (uint8)C$1;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 2ll);
			*TLEN$1 = *TLEN$1 + 2ll;
			LEXEATCHAR(  );
			if( (FLAGS$1 & 9ll) != 0ll ) goto label$231;
			{
				label$232:;
				uint64 vr$115 = LEXCURRENTCHAR(  );
				if( vr$115 != 48ull ) goto label$233;
				{
					*(*PNUM$1) = (uint8)48u;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*TLEN$1 = *TLEN$1 + 1ll;
					LEXEATCHAR(  );
					HAVEDIGITS$1 = -1ll;
				}
				goto label$232;
				label$233:;
			}
			label$231:;
			label$230:;
			label$234:;
			{
				uint64 vr$124 = LEXCURRENTCHAR(  );
				C$1 = vr$124;
				{
					if( C$1 == 48ull ) goto label$239;
					label$240:;
					if( C$1 != 49ull ) goto label$238;
					label$239:;
					{
						LEXEATCHAR(  );
						HAVEDIGITS$1 = -1ll;
						if( SKIPCHAR$1 != 0ll ) goto label$242;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
							*TLEN$1 = *TLEN$1 + 1ll;
							C$1 = C$1 + 18446744073709551568ull;
							LGT$1 = LGT$1 + 1ll;
							if( LGT$1 <= 32ll ) goto label$244;
							{
								if( LGT$1 != 33ll ) goto label$246;
								{
									*DTYPE$1 = 13ll;
									VALUE64$1 = (VALUE$1 << (1ull & 63ll)) + C$1;
								}
								goto label$245;
								label$246:;
								if( LGT$1 != 65ll ) goto label$247;
								{
									if( (FLAGS$1 & 1ll) != 0ll ) goto label$249;
									{
										ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
									}
									label$249:;
									label$248:;
									SKIPCHAR$1 = -1ll;
								}
								goto label$245;
								label$247:;
								{
									VALUE64$1 = (VALUE64$1 << (1ull & 63ll)) + C$1;
								}
								label$245:;
							}
							goto label$243;
							label$244:;
							{
								if( LGT$1 != 17ll ) goto label$251;
								{
									*DTYPE$1 = 11ll;
								}
								label$251:;
								label$250:;
								VALUE$1 = (VALUE$1 << (1ull & 63ll)) + C$1;
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
		static const void* tmp$199[46ll] = {
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
		if( (TMP$102$2 - 66ull) > 45ull ) goto label$253;
		goto *tmp$199[TMP$102$2 - 66ull];
		label$159:;
	}
	if( LGT$1 != 0ll ) goto label$255;
	{
		if( HAVEDIGITS$1 != 0ll ) goto label$257;
		{
			if( (FLAGS$1 & 9ll) != 0ll ) goto label$259;
			{
				ERRREPORTWARN( 48ll, (uint8*)0ull, 1ll, (uint8*)0ull );
			}
			label$259:;
			label$258:;
		}
		label$257:;
		label$256:;
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
		*TLEN$1 = *TLEN$1 + 1ll;
	}
	label$255:;
	label$254:;
	if( (*DTYPE$1 & 480ll) == 0ll ) goto label$260;
	TMP$105$1 = 24ll;
	goto label$955;
	label$260:;
	TMP$105$1 = *DTYPE$1 & 31ll;
	label$955:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$1 * 56ll)) + 8ll) >= 8ll ) goto label$262;
	{
		fb$result$1 = VALUE$1;
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

static void HREADFLOATNUMBER( uint8** PNUM$1, struct $7FBTOKEN* T$1, int64 HASDOT$1, $8LEXCHECK FLAGS$1 )
{
	int64 TMP$106$1;
	label$263:;
	uint64 C$1;
	int64 LLEN$1;
	int64 SKIPCHAR$1;
	*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1488ll);
	LLEN$1 = *(int64*)((uint8*)T$1 + 2080ll);
	SKIPCHAR$1 = 0ll;
	label$265:;
	{
		uint64 vr$2 = LEXCURRENTCHAR(  );
		C$1 = vr$2;
		{
			if( C$1 < 48ull ) goto label$269;
			if( C$1 > 57ull ) goto label$269;
			label$270:;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0ll ) goto label$272;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
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
		if( *(int64*)((uint8*)T$1 + 2080ll) != 64ll ) goto label$275;
		{
			if( SKIPCHAR$1 != 0ll ) goto label$277;
			{
				SKIPCHAR$1 = -1ll;
			}
			goto label$276;
			label$277:;
			{
				if( (FLAGS$1 & 1ll) != 0ll ) goto label$279;
				{
					FLAGS$1 = FLAGS$1 | 1ll;
					ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
	if( HASDOT$1 == 0ll ) goto label$280;
	TMP$106$1 = 1ll;
	goto label$956;
	label$280:;
	TMP$106$1 = 0ll;
	label$956:;
	if( *(int64*)((uint8*)T$1 + 2080ll) <= (TMP$106$1 + 7ll) ) goto label$282;
	{
		*(int64*)((uint8*)T$1 + 16ll) = 16ll;
	}
	label$282:;
	label$281:;
	uint64 vr$18 = LEXCURRENTCHAR(  );
	C$1 = vr$18;
	{
		uint64 TMP$107$2;
		TMP$107$2 = C$1;
		goto label$284;
		label$285:;
		{
			if( ((int64)-(C$1 == 100ull) | (int64)-(C$1 == 68ull)) == 0ll ) goto label$287;
			{
				*(int64*)((uint8*)T$1 + 16ll) = 16ll;
			}
			label$287:;
			label$286:;
			if( SKIPCHAR$1 != 0ll ) goto label$289;
			{
				if( FLAGS$1 != 0ll ) goto label$291;
				{
					C$1 = 101ull;
				}
				label$291:;
				label$290:;
				*(*PNUM$1) = (uint8)C$1;
				*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
				*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
			}
			label$289:;
			label$288:;
			LEXEATCHAR(  );
			uint64 vr$32 = LEXCURRENTCHAR(  );
			C$1 = vr$32;
			if( ((int64)-(C$1 == 43ull) | (int64)-(C$1 == 45ull)) == 0ll ) goto label$293;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0ll ) goto label$295;
				{
					*(*PNUM$1) = (uint8)C$1;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
				}
				label$295:;
				label$294:;
			}
			label$293:;
			label$292:;
			label$296:;
			{
				uint64 vr$45 = LEXCURRENTCHAR(  );
				C$1 = vr$45;
				{
					uint64 TMP$108$5;
					TMP$108$5 = C$1;
					goto label$300;
					label$301:;
					{
						LEXEATCHAR(  );
						if( SKIPCHAR$1 != 0ll ) goto label$303;
						{
							*(*PNUM$1) = (uint8)C$1;
							*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
							*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
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
					static const void* tmp$200[10ll] = {
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
					if( (TMP$108$5 - 48ull) > 9ull ) goto label$304;
					goto *tmp$200[TMP$108$5 - 48ull];
					label$299:;
				}
				if( *(int64*)((uint8*)T$1 + 2080ll) != 64ll ) goto label$306;
				{
					if( SKIPCHAR$1 != 0ll ) goto label$308;
					{
						SKIPCHAR$1 = -1ll;
					}
					goto label$307;
					label$308:;
					{
						if( (FLAGS$1 & 1ll) != 0ll ) goto label$310;
						{
							FLAGS$1 = FLAGS$1 | 1ll;
							ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
		static const void* tmp$201[34ll] = {
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
		if( (TMP$107$2 - 68ull) > 33ull ) goto label$283;
		goto *tmp$201[TMP$107$2 - 68ull];
		label$283:;
	}
	{
		uint64 TMP$109$2;
		uint64 vr$58 = LEXCURRENTCHAR(  );
		TMP$109$2 = vr$58;
		goto label$312;
		label$313:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = 15ll;
			if( (FLAGS$1 & 1032ll) != 0ll ) goto label$315;
			{
				LEXEATCHAR(  );
			}
			label$315:;
			label$314:;
		}
		goto label$311;
		label$316:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = 15ll;
			if( (FLAGS$1 & 8ll) != 0ll ) goto label$318;
			{
				LEXEATCHAR(  );
			}
			label$318:;
			label$317:;
		}
		goto label$311;
		label$319:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = 16ll;
			if( (FLAGS$1 & 8ll) != 0ll ) goto label$321;
			{
				LEXEATCHAR(  );
			}
			label$321:;
			label$320:;
		}
		goto label$311;
		label$312:;
		static const void* tmp$202[70ll] = {
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
		if( (TMP$109$2 - 33ull) > 69ull ) goto label$311;
		goto *tmp$202[TMP$109$2 - 33ull];
		label$311:;
	}
	if( FLAGS$1 != 0ll ) goto label$323;
	{
		if( (*(int64*)((uint8*)T$1 + 2080ll) - LLEN$1) != 0ll ) goto label$325;
		{
			*(*PNUM$1) = (uint8)48u;
			*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
			*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
		}
		label$325:;
		label$324:;
	}
	label$323:;
	label$322:;
	label$264:;
}

static void READNUMBERCHARS( struct $7FBTOKEN* T$1, $8LEXCHECK* FLAGS$1, uint8** PNUM$1, int64* SKIPCHAR$1, uint64* VALUE$1 )
{
	label$326:;
	int64 SAVE_FIRST_LEADING_ZERO$1;
	SAVE_FIRST_LEADING_ZERO$1 = (int64)-((*(int64*)FLAGS$1 & 9ll) != 0ll);
	uint64 VALUE_PREV$1;
	__builtin_memset( &VALUE_PREV$1, 0, 8ll );
	label$328:;
	{
		uint64 C$2;
		uint64 vr$4 = LEXCURRENTCHAR(  );
		C$2 = vr$4;
		{
			uint64 TMP$110$3;
			TMP$110$3 = C$2;
			goto label$332;
			label$333:;
			{
				LEXEATCHAR(  );
				if( ((((int64)-(C$2 != 48ull) | (int64)-(*(int64*)((uint8*)T$1 + 2080ll) > 0ll)) | SAVE_FIRST_LEADING_ZERO$1) & ~(*SKIPCHAR$1)) == 0ll ) goto label$335;
				{
					*(*PNUM$1) = (uint8)C$2;
					*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
					*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
					*VALUE$1 = (((*(uint64*)VALUE$1 << (3ll & 63ll)) + (*(uint64*)VALUE$1 << (1ll & 63ll))) + C$2) + 18446744073709551568ull;
				}
				label$335:;
				label$334:;
			}
			goto label$331;
			label$336:;
			{
				int64 HASDOT$4;
				HASDOT$4 = 0ll;
				if( C$2 != 46ull ) goto label$338;
				{
					LEXEATCHAR(  );
					if( *SKIPCHAR$1 != 0ll ) goto label$340;
					{
						*(*PNUM$1) = (uint8)46u;
						*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
						*(int64*)((uint8*)T$1 + 2080ll) = *(int64*)((uint8*)T$1 + 2080ll) + 1ll;
					}
					label$340:;
					label$339:;
					HASDOT$4 = -1ll;
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
			static const void* tmp$203[56ll] = {
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
			if( (TMP$110$3 - 46ull) > 55ull ) goto label$341;
			goto *tmp$203[TMP$110$3 - 46ull];
			label$331:;
		}
		if( (*(int64*)FLAGS$1 & 8ll) != 0ll ) goto label$343;
		{
			if( *SKIPCHAR$1 != 0ll ) goto label$345;
			{
				{
					uint64 TMP$111$5;
					TMP$111$5 = *(uint64*)((uint8*)T$1 + 2080ll);
					goto label$347;
					label$348:;
					{
						if( *(uint64*)VALUE$1 <= 32767ull ) goto label$350;
						{
							*(int64*)((uint8*)T$1 + 16ll) = 11ll;
						}
						label$350:;
						label$349:;
					}
					goto label$346;
					label$351:;
					{
						*(int64*)((uint8*)T$1 + 16ll) = 11ll;
					}
					goto label$346;
					label$352:;
					{
						if( *(uint64*)VALUE$1 <= 2147483647ull ) goto label$354;
						{
							if( *(uint64*)VALUE$1 <= 4294967295ull ) goto label$356;
							{
								*(int64*)((uint8*)T$1 + 16ll) = 13ll;
							}
							goto label$355;
							label$356:;
							{
								*(int64*)((uint8*)T$1 + 16ll) = 12ll;
							}
							label$355:;
						}
						label$354:;
						label$353:;
					}
					goto label$346;
					label$357:;
					{
						*(int64*)((uint8*)T$1 + 16ll) = 13ll;
					}
					goto label$346;
					label$358:;
					{
						if( *(uint64*)VALUE$1 <= 9223372036854775807ull ) goto label$360;
						{
							*(int64*)((uint8*)T$1 + 16ll) = 14ll;
						}
						label$360:;
						label$359:;
						VALUE_PREV$1 = *VALUE$1;
					}
					goto label$346;
					label$361:;
					{
						*(int64*)((uint8*)T$1 + 16ll) = 14ll;
						if( (*(int64*)FLAGS$1 & 1ll) != 0ll ) goto label$363;
						{
							if( ((int64)-(VALUE_PREV$1 > 1844674407370955161ull) | (int64)-((*(uint64*)VALUE$1 & 9223372036854775808ull) == 0ull)) == 0ll ) goto label$365;
							{
								ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
								*SKIPCHAR$1 = -1ll;
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
						if( (*(int64*)FLAGS$1 & 1ll) != 0ll ) goto label$368;
						{
							ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
							*SKIPCHAR$1 = -1ll;
						}
						label$368:;
						label$367:;
					}
					goto label$346;
					label$347:;
					static const void* tmp$204[17ll] = {
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
					if( (TMP$111$5 - 5ull) > 16ull ) goto label$346;
					goto *tmp$204[TMP$111$5 - 5ull];
					label$346:;
				}
				if( *(int64*)((uint8*)T$1 + 2080ll) != 64ll ) goto label$370;
				{
					if( *SKIPCHAR$1 != 0ll ) goto label$372;
					{
						*SKIPCHAR$1 = -1ll;
					}
					goto label$371;
					label$372:;
					{
						if( (*(int64*)FLAGS$1 & 1ll) != 0ll ) goto label$374;
						{
							*FLAGS$1 = *(int64*)FLAGS$1 | 1ll;
							ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
	if( *(int64*)((uint8*)T$1 + 2080ll) != 0ll ) goto label$376;
	{
		*(*PNUM$1) = (uint8)48u;
		*PNUM$1 = (uint8*)((uint8*)*PNUM$1 + 1ll);
		*(int64*)((uint8*)T$1 + 2080ll) = 1ll;
	}
	label$376:;
	label$375:;
	label$327:;
}

static void HREADNUMBER( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int64 TMP$114$1;
	label$377:;
	*(int64*)((uint8*)T$1 + 16ll) = 5ll;
	int64 HAVE_U_SUFFIX$1;
	HAVE_U_SUFFIX$1 = 0ll;
	int64 SKIPCHAR$1;
	SKIPCHAR$1 = 0ll;
	uint64 VALUE$1;
	__builtin_memset( &VALUE$1, 0, 8ll );
	uint8* PNUM$1;
	PNUM$1 = (uint8*)((uint8*)T$1 + 24ll);
	*PNUM$1 = (uint8)0u;
	*(int64*)((uint8*)T$1 + 2080ll) = 0ll;
	{
		uint64 TMP$112$2;
		uint64 vr$6 = LEXCURRENTCHAR(  );
		TMP$112$2 = vr$6;
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
			PNUM$1 = (uint8*)(PNUM$1 + 1ll);
			*(int64*)((uint8*)T$1 + 2080ll) = 1ll;
			HREADFLOATNUMBER( (uint8**)&PNUM$1, T$1, -1ll, FLAGS$1 );
		}
		goto label$379;
		label$383:;
		{
			*(int64*)((uint8*)T$1 + 2080ll) = 0ll;
			uint64 vr$21 = HREADNONDECNUMBER( (uint8**)&PNUM$1, (int64*)((uint8*)T$1 + 2080ll), (int64*)((uint8*)T$1 + 16ll), FLAGS$1 );
			VALUE$1 = vr$21;
		}
		goto label$379;
		label$380:;
		static const void* tmp$205[20ll] = {
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
		if( (TMP$112$2 - 38ull) > 19ull ) goto label$379;
		goto *tmp$205[TMP$112$2 - 38ull];
		label$379:;
	}
	*PNUM$1 = (uint8)0u;
	{
		int64 TMP$113$2;
		TMP$113$2 = *(int64*)((uint8*)T$1 + 16ll);
		if( TMP$113$2 != 5ll ) goto label$385;
		label$386:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1440ll);
		}
		goto label$384;
		label$385:;
		if( TMP$113$2 != 6ll ) goto label$387;
		label$388:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1448ll);
		}
		goto label$384;
		label$387:;
		if( TMP$113$2 != 11ll ) goto label$389;
		label$390:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1456ll);
		}
		goto label$384;
		label$389:;
		if( TMP$113$2 != 12ll ) goto label$391;
		label$392:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1464ll);
		}
		goto label$384;
		label$391:;
		if( TMP$113$2 != 13ll ) goto label$393;
		label$394:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1472ll);
		}
		goto label$384;
		label$393:;
		if( TMP$113$2 != 14ll ) goto label$395;
		label$396:;
		{
			*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1480ll);
		}
		label$395:;
		label$384:;
	}
	if( (*(int64*)((uint8*)T$1 + 16ll) & 480ll) == 0ll ) goto label$397;
	TMP$114$1 = 24ll;
	goto label$957;
	label$397:;
	TMP$114$1 = *(int64*)((uint8*)T$1 + 16ll) & 31ll;
	label$957:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$114$1 * 56ll)) == 1ll ) goto label$399;
	{
		if( (FLAGS$1 & 8ll) != 0ll ) goto label$401;
		{
			if( (FLAGS$1 & 1024ll) != 0ll ) goto label$403;
			{
				{
					uint64 TMP$115$5;
					uint64 vr$37 = LEXCURRENTCHAR(  );
					TMP$115$5 = vr$37;
					if( TMP$115$5 == 85ull ) goto label$406;
					label$407:;
					if( TMP$115$5 != 117ull ) goto label$405;
					label$406:;
					{
						LEXEATCHAR(  );
						int64 vr$39 = TYPETOUNSIGNED( *(int64*)((uint8*)T$1 + 16ll) );
						*(int64*)((uint8*)T$1 + 16ll) = vr$39;
						HAVE_U_SUFFIX$1 = -1ll;
					}
					label$405:;
					label$404:;
				}
			}
			label$403:;
			label$402:;
			{
				uint64 TMP$116$4;
				uint64 vr$41 = LEXCURRENTCHAR(  );
				TMP$116$4 = vr$41;
				goto label$409;
				label$410:;
				{
					if( (FLAGS$1 & 1024ll) != 0ll ) goto label$412;
					{
						LEXEATCHAR(  );
						uint64 C$6;
						uint64 vr$43 = LEXCURRENTCHAR(  );
						C$6 = vr$43;
						if( ((int64)-(C$6 == 76ull) | (int64)-(C$6 == 108ull)) == 0ll ) goto label$414;
						{
							$11FB_DATATYPE TMP$117$7;
							LEXEATCHAR(  );
							if( HAVE_U_SUFFIX$1 == 0ll ) goto label$415;
							TMP$117$7 = 14ll;
							goto label$958;
							label$415:;
							TMP$117$7 = 13ll;
							label$958:;
							*(int64*)((uint8*)T$1 + 16ll) = TMP$117$7;
						}
						goto label$413;
						label$414:;
						{
							$11FB_DATATYPE TMP$118$7;
							if( VALUE$1 <= 4294967295ull ) goto label$417;
							{
								if( SKIPCHAR$1 != 0ll ) goto label$419;
								{
									if( (FLAGS$1 & 1ll) != 0ll ) goto label$421;
									{
										ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
									}
									label$421:;
									label$420:;
								}
								label$419:;
								label$418:;
							}
							label$417:;
							label$416:;
							if( HAVE_U_SUFFIX$1 == 0ll ) goto label$422;
							TMP$118$7 = 12ll;
							goto label$959;
							label$422:;
							TMP$118$7 = 11ll;
							label$959:;
							*(int64*)((uint8*)T$1 + 16ll) = TMP$118$7;
						}
						label$413:;
					}
					label$412:;
					label$411:;
				}
				goto label$408;
				label$423:;
				{
					if( (FLAGS$1 & 1024ll) != 0ll ) goto label$425;
					{
						if( HAVE_U_SUFFIX$1 != 0ll ) goto label$427;
						{
							*(int64*)((uint8*)T$1 + 16ll) = 15ll;
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
					if( (FLAGS$1 & 1024ll) != 0ll ) goto label$430;
					{
						if( HAVE_U_SUFFIX$1 != 0ll ) goto label$432;
						{
							*(int64*)((uint8*)T$1 + 16ll) = 16ll;
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
					int64 WARN$5;
					WARN$5 = 0ll;
					{
						int64 TMP$119$6;
						int64 TMP$120$6;
						if( (*(int64*)((uint8*)&ENV$ + 1432ll) & 480ll) == 0ll ) goto label$434;
						TMP$119$6 = 24ll;
						goto label$960;
						label$434:;
						TMP$119$6 = *(int64*)((uint8*)&ENV$ + 1432ll) & 31ll;
						label$960:;
						TMP$120$6 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$119$6 * 56ll)) + 8ll);
						if( TMP$120$6 != 2ll ) goto label$436;
						label$437:;
						{
							WARN$5 = (int64)-(VALUE$1 > 65535ull);
						}
						goto label$435;
						label$436:;
						if( TMP$120$6 != 4ll ) goto label$438;
						label$439:;
						{
							WARN$5 = (int64)-(VALUE$1 > 4294967295ull);
						}
						label$438:;
						label$435:;
					}
					if( WARN$5 == 0ll ) goto label$441;
					{
						if( SKIPCHAR$1 != 0ll ) goto label$443;
						{
							if( (FLAGS$1 & 1ll) != 0ll ) goto label$445;
							{
								ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
							}
							label$445:;
							label$444:;
						}
						label$443:;
						label$442:;
					}
					label$441:;
					label$440:;
					*(int64*)((uint8*)T$1 + 16ll) = *(int64*)((uint8*)&ENV$ + 1432ll);
					LEXEATCHAR(  );
				}
				goto label$408;
				label$446:;
				{
					if( VALUE$1 <= 4294967295ull ) goto label$448;
					{
						if( SKIPCHAR$1 != 0ll ) goto label$450;
						{
							if( (FLAGS$1 & 1ll) != 0ll ) goto label$452;
							{
								ERRREPORTWARN( 8ll, (uint8*)0ull, 1ll, (uint8*)0ull );
							}
							label$452:;
							label$451:;
						}
						label$450:;
						label$449:;
					}
					label$448:;
					label$447:;
					*(int64*)((uint8*)T$1 + 16ll) = 11ll;
					LEXEATCHAR(  );
				}
				goto label$408;
				label$453:;
				{
					if( HAVE_U_SUFFIX$1 != 0ll ) goto label$455;
					{
						*(int64*)((uint8*)T$1 + 16ll) = 15ll;
						LEXEATCHAR(  );
					}
					label$455:;
					label$454:;
				}
				goto label$408;
				label$456:;
				{
					if( HAVE_U_SUFFIX$1 != 0ll ) goto label$458;
					{
						uint64 vr$64 = LEXGETLOOKAHEADCHAR(  );
						if( vr$64 == 35ull ) goto label$460;
						{
							*(int64*)((uint8*)T$1 + 16ll) = 16ll;
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
				static const void* tmp$206[76ll] = {
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
				if( (TMP$116$4 - 33ull) > 75ull ) goto label$408;
				goto *tmp$206[TMP$116$4 - 33ull];
				label$408:;
			}
		}
		label$401:;
		label$400:;
	}
	label$399:;
	label$398:;
	*(int64*)((uint8*)T$1 + 8ll) = 3ll;
	*(int64*)T$1 = *(int64*)((uint8*)T$1 + 16ll);
	label$378:;
}

static void HREADSTRING( struct $7FBTOKEN* TK$1, uint8* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$461:;
	int64 LGT$1;
	int64 HASESC$1;
	int64 ESCAPED$1;
	int64 SKIPCHAR$1;
	uint64 CHAR$1;
	*PS$1 = (uint8)0u;
	LGT$1 = 0ll;
	HASESC$1 = 0ll;
	ESCAPED$1 = (int64)-(*(int64*)TK$1 == 263ll);
	SKIPCHAR$1 = 0ll;
	if( (FLAGS$1 & 16ll) == 0ll ) goto label$464;
	{
		uint64 vr$4 = LEXCURRENTCHAR(  );
		*PS$1 = (uint8)vr$4;
		PS$1 = (uint8*)((uint8*)PS$1 + 1ll);
		LGT$1 = LGT$1 + 1ll;
	}
	label$464:;
	label$463:;
	LEXEATCHAR(  );
	label$465:;
	{
		uint64 vr$9 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$9;
		if( CHAR$1 != 34ull ) goto label$469;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16ll) == 0ll ) goto label$471;
			{
				if( SKIPCHAR$1 != 0ll ) goto label$473;
				{
					*PS$1 = (uint8)34u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$473:;
				label$472:;
			}
			label$471:;
			label$470:;
			uint64 vr$14 = LEXCURRENTCHAR(  );
			CHAR$1 = vr$14;
			if( CHAR$1 == 34ull ) goto label$475;
			{
				goto label$466;
				label$475:;
			}
		}
		goto label$468;
		label$469:;
		if( CHAR$1 != 27ull ) goto label$476;
		{
			if( (FLAGS$1 & 16ll) != 0ll ) goto label$478;
			{
				if( SKIPCHAR$1 != 0ll ) goto label$480;
				{
					*PS$1 = (uint8)27u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$480:;
				label$479:;
			}
			label$478:;
			label$477:;
		}
		goto label$468;
		label$476:;
		if( CHAR$1 != 92ull ) goto label$481;
		{
			HASESC$1 = -1ll;
			if( ESCAPED$1 == 0ll ) goto label$483;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0ll ) goto label$485;
				{
					*PS$1 = (uint8)92u;
					PS$1 = (uint8*)((uint8*)PS$1 + 1ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$485:;
				label$484:;
				uint64 vr$22 = LEXCURRENTCHAR(  );
				CHAR$1 = vr$22;
			}
			label$483:;
			label$482:;
		}
		label$481:;
		label$468:;
		{
			if( CHAR$1 == 0ull ) goto label$488;
			label$489:;
			if( CHAR$1 == 13ull ) goto label$488;
			label$490:;
			if( CHAR$1 != 10ull ) goto label$487;
			label$488:;
			{
				if( (FLAGS$1 & 9ll) != 0ll ) goto label$492;
				{
					ERRREPORTWARN( 12ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$492:;
				label$491:;
				goto label$466;
			}
			label$487:;
			label$486:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0ll ) goto label$494;
		{
			if( LGT$1 != 1024ll ) goto label$496;
			{
				if( (FLAGS$1 & 1ll) != 0ll ) goto label$498;
				{
					FLAGS$1 = FLAGS$1 | 1ll;
					ERRREPORTWARN( 9ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$498:;
				label$497:;
				SKIPCHAR$1 = -1ll;
			}
			goto label$495;
			label$496:;
			{
				*PS$1 = (uint8)CHAR$1;
				PS$1 = (uint8*)((uint8*)PS$1 + 1ll);
				LGT$1 = LGT$1 + 1ll;
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
	*(int64*)((uint8*)TK$1 + 16ll) = 4ll;
	*(int64*)((uint8*)TK$1 + 2080ll) = LGT$1;
	*(int64*)((uint8*)TK$1 + 2096ll) = HASESC$1;
	label$462:;
}

static void HREADWSTR( struct $7FBTOKEN* TK$1, uint16* PS$1, $8LEXCHECK FLAGS$1 )
{
	label$499:;
	int64 LGT$1;
	int64 HASESC$1;
	int64 ESCAPED$1;
	int64 SKIPCHAR$1;
	uint64 CHAR$1;
	*PS$1 = (uint16)(uint16)0u;
	LGT$1 = 0ll;
	HASESC$1 = 0ll;
	ESCAPED$1 = (int64)-(*(int64*)TK$1 == 263ll);
	SKIPCHAR$1 = 0ll;
	if( (FLAGS$1 & 16ll) == 0ll ) goto label$502;
	{
		uint64 vr$4 = LEXCURRENTCHAR(  );
		*PS$1 = (uint16)(uint16)vr$4;
		PS$1 = (uint16*)((uint8*)PS$1 + 2ll);
		LGT$1 = LGT$1 + 1ll;
	}
	label$502:;
	label$501:;
	LEXEATCHAR(  );
	label$503:;
	{
		uint64 vr$9 = LEXCURRENTCHAR(  );
		CHAR$1 = vr$9;
		if( CHAR$1 != 34ull ) goto label$507;
		{
			LEXEATCHAR(  );
			if( (FLAGS$1 & 16ll) == 0ll ) goto label$509;
			{
				if( SKIPCHAR$1 != 0ll ) goto label$511;
				{
					*PS$1 = (uint16)(uint16)34u;
					PS$1 = (uint16*)((uint8*)PS$1 + 2ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$511:;
				label$510:;
			}
			label$509:;
			label$508:;
			uint64 vr$14 = LEXCURRENTCHAR(  );
			CHAR$1 = vr$14;
			if( CHAR$1 == 34ull ) goto label$513;
			{
				goto label$504;
				label$513:;
			}
		}
		goto label$506;
		label$507:;
		if( CHAR$1 != 27ull ) goto label$514;
		{
			if( (FLAGS$1 & 16ll) != 0ll ) goto label$516;
			{
				if( SKIPCHAR$1 != 0ll ) goto label$518;
				{
					*PS$1 = (uint16)(uint16)27u;
					PS$1 = (uint16*)((uint8*)PS$1 + 2ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$518:;
				label$517:;
			}
			label$516:;
			label$515:;
		}
		goto label$506;
		label$514:;
		if( CHAR$1 != 92ull ) goto label$519;
		{
			HASESC$1 = -1ll;
			if( ESCAPED$1 == 0ll ) goto label$521;
			{
				LEXEATCHAR(  );
				if( SKIPCHAR$1 != 0ll ) goto label$523;
				{
					*PS$1 = (uint16)(uint16)92u;
					PS$1 = (uint16*)((uint8*)PS$1 + 2ll);
					LGT$1 = LGT$1 + 1ll;
				}
				label$523:;
				label$522:;
				uint64 vr$22 = LEXCURRENTCHAR(  );
				CHAR$1 = vr$22;
			}
			label$521:;
			label$520:;
		}
		label$519:;
		label$506:;
		{
			if( CHAR$1 == 0ull ) goto label$526;
			label$527:;
			if( CHAR$1 == 13ull ) goto label$526;
			label$528:;
			if( CHAR$1 != 10ull ) goto label$525;
			label$526:;
			{
				if( (FLAGS$1 & 9ll) != 0ll ) goto label$530;
				{
					ERRREPORTWARN( 12ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$530:;
				label$529:;
				goto label$504;
			}
			label$525:;
			label$524:;
		}
		LEXEATCHAR(  );
		if( SKIPCHAR$1 != 0ll ) goto label$532;
		{
			if( LGT$1 != 1024ll ) goto label$534;
			{
				if( (FLAGS$1 & 1ll) != 0ll ) goto label$536;
				{
					FLAGS$1 = FLAGS$1 | 1ll;
					ERRREPORTWARN( 9ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$536:;
				label$535:;
				SKIPCHAR$1 = -1ll;
			}
			goto label$533;
			label$534:;
			{
				*PS$1 = (uint16)(uint16)CHAR$1;
				PS$1 = (uint16*)((uint8*)PS$1 + 2ll);
				LGT$1 = LGT$1 + 1ll;
			}
			label$533:;
		}
		label$532:;
		label$531:;
	}
	label$505:;
	goto label$503;
	label$504:;
	*PS$1 = (uint16)(uint16)0u;
	*(int64*)((uint8*)TK$1 + 16ll) = 7ll;
	*(int64*)((uint8*)TK$1 + 2080ll) = LGT$1;
	*(int64*)((uint8*)TK$1 + 2096ll) = HASESC$1;
	label$500:;
}

static void HCHECKPERIODS( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	label$537:;
	int64 READFULLID$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$540;
	{
		READFULLID$1 = 0ll;
		uint64 vr$0 = LEXCURRENTCHAR(  );
		if( vr$0 != 46ull ) goto label$542;
		{
			if( *(int64*)*(struct $8FBSYMBOL**)CHAIN_$1 == 8ll ) goto label$544;
			{
				READFULLID$1 = -1ll;
				label$545:;
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$546;
				{
					struct $8FBSYMBOL* SYM$5;
					SYM$5 = *(struct $8FBSYMBOL**)CHAIN_$1;
					label$547:;
					{
						if( *(int64*)SYM$5 != 1ll ) goto label$551;
						{
							if( (*(int64*)((uint8*)SYM$5 + 56ll) & 511ll) != 20ll ) goto label$553;
							{
								goto label$538;
							}
							label$553:;
							label$552:;
						}
						label$551:;
						label$550:;
						SYM$5 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 280ll);
					}
					label$549:;
					if( SYM$5 != (struct $8FBSYMBOL*)0ull ) goto label$547;
					label$548:;
					CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
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
		uint64 vr$9 = LEXCURRENTCHAR(  );
		READFULLID$1 = (int64)-(vr$9 == 46ull);
	}
	label$539:;
	if( READFULLID$1 == 0ll ) goto label$555;
	{
		*(int64*)((uint8*)T$1 + 2096ll) = *(int64*)((uint8*)T$1 + 2080ll);
		HREADIDENTIFIER( (uint8*)((uint8*)((uint8*)T$1 + 24ll) + *(int64*)((uint8*)T$1 + 2080ll)), (int64*)((uint8*)T$1 + 2080ll), (int64*)((uint8*)T$1 + 16ll), (int64*)((uint8*)T$1 + 2104ll), FLAGS$1 | 128ll );
		struct $10FBSYMCHAIN* vr$30 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 24ll), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 8ll) );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) = vr$30;
	}
	label$555:;
	label$554:;
	label$538:;
}

static int64 READID( struct $7FBTOKEN* T$1, $8LEXCHECK FLAGS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$556:;
	struct $8FBSYMBOL* CURRMACRO$1;
	CURRMACRO$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8584ll);
	*(int64*)((uint8*)T$1 + 2080ll) = 0ll;
	*(int64*)((uint8*)T$1 + 2096ll) = 0ll;
	HREADIDENTIFIER( (uint8*)((uint8*)T$1 + 24ll), (int64*)((uint8*)T$1 + 2080ll), (int64*)((uint8*)T$1 + 16ll), (int64*)((uint8*)T$1 + 2104ll), FLAGS$1 );
	if( (FLAGS$1 & 256ll) == 0ll ) goto label$559;
	{
		struct $10FBSYMCHAIN* vr$16 = SYMBLOOKUPAT( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8592ll), (uint8*)((uint8*)T$1 + 24ll), 0ll, 0ll );
		*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) = vr$16;
		if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) != (struct $10FBSYMCHAIN*)0ull ) goto label$561;
		{
			*(int64*)T$1 = 265ll;
			*(int64*)((uint8*)T$1 + 8ll) = 0ll;
		}
		goto label$560;
		label$561:;
		{
			*(int64*)T$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) + 96ll);
			*(int64*)((uint8*)T$1 + 8ll) = *(int64*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) + 104ll);
		}
		label$560:;
		fb$result$1 = -1ll;
		goto label$557;
	}
	label$559:;
	label$558:;
	if( (FLAGS$1 & 32ll) == 0ll ) goto label$563;
	{
		*(int64*)T$1 = 265ll;
		*(int64*)((uint8*)T$1 + 8ll) = 0ll;
		fb$result$1 = -1ll;
		goto label$557;
	}
	label$563:;
	label$562:;
	struct $10FBSYMCHAIN* vr$38 = SYMBLOOKUP( (uint8*)((uint8*)T$1 + 24ll), ($8FB_TOKEN*)T$1, ($10FB_TKCLASS*)((uint8*)T$1 + 8ll) );
	*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) = vr$38;
	if( (FLAGS$1 & 2ll) == 0ll ) goto label$565;
	{
		fb$result$1 = -1ll;
		goto label$557;
	}
	label$565:;
	label$564:;
	if( *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) == (struct $10FBSYMCHAIN*)0ull ) goto label$567;
	{
		if( *(int64*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) != 5ll ) goto label$569;
		{
			int64 vr$47 = PPDEFINELOAD( *(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll), CURRMACRO$1 );
			if( vr$47 == 0ll ) goto label$571;
			{
				*(int64*)((uint8*)T$1 + 2112ll) = -1ll;
				fb$result$1 = 0ll;
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
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 524288ll) == 0ll ) goto label$573;
	{
		if( (FLAGS$1 & 64ll) != 0ll ) goto label$575;
		{
			HCHECKPERIODS( T$1, FLAGS$1, *(struct $10FBSYMCHAIN**)((uint8*)T$1 + 2088ll) );
		}
		label$575:;
		label$574:;
	}
	label$573:;
	label$572:;
	fb$result$1 = -1ll;
	goto label$557;
	label$557:;
	return fb$result$1;
}

static void HMULTILINECOMMENT( void )
{
	label$696:;
	static int64 CNT$1;
	LEXEATCHAR(  );
	CNT$1 = 0ll;
	label$698:;
	{
		{
			uint64 TMP$136$3;
			uint64 vr$0 = LEXCURRENTCHAR(  );
			TMP$136$3 = vr$0;
			goto label$702;
			label$703:;
			{
				ERRREPORTEX( 132ll, (uint8*)0ull, 0ll, 1ll, (uint8*)0ull );
				goto label$697;
			}
			goto label$701;
			label$704:;
			{
				LEXEATCHAR(  );
				uint64 vr$1 = LEXCURRENTCHAR(  );
				if( vr$1 != 10ull ) goto label$706;
				{
					LEXEATCHAR(  );
				}
				label$706:;
				label$705:;
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) != 0ll ) goto label$708;
				{
					*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) + 1ll;
				}
				label$708:;
				label$707:;
			}
			goto label$701;
			label$709:;
			{
				LEXEATCHAR(  );
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8608ll) != 0ll ) goto label$711;
				{
					*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll) + 1ll;
				}
				label$711:;
				label$710:;
			}
			goto label$701;
			label$712:;
			{
				LEXEATCHAR(  );
				uint64 vr$10 = LEXCURRENTCHAR(  );
				if( vr$10 != 39ull ) goto label$714;
				{
					LEXEATCHAR(  );
					CNT$1 = CNT$1 + 1ll;
				}
				label$714:;
				label$713:;
			}
			goto label$701;
			label$715:;
			{
				LEXEATCHAR(  );
				uint64 vr$12 = LEXCURRENTCHAR(  );
				if( vr$12 != 47ull ) goto label$717;
				{
					LEXEATCHAR(  );
					if( CNT$1 != 0ll ) goto label$719;
					{
						goto label$699;
					}
					label$719:;
					label$718:;
					CNT$1 = CNT$1 + -1ll;
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
			static const void* tmp$207[48ll] = {
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
			if( TMP$136$3 > 47ull ) goto label$720;
			goto *tmp$207[TMP$136$3 - 0ull];
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
	*(int64*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = -1ll;
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8512ll) + -1ll;
	*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) = *(struct $7FBTOKEN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2120ll);
	label$746:;
}

static FBSTRING* LEXGETSTRLITTEXT( int64 TK$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$747:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	int64 IS_ESCAPED$1;
	int64 SAW_BACKSLASH$1;
	uint8* P$1;
	{
		if( TK$1 != 262ll ) goto label$750;
		label$751:;
		{
			IS_ESCAPED$1 = 0ll;
		}
		goto label$749;
		label$750:;
		if( TK$1 != 263ll ) goto label$752;
		label$753:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"!", 2ll, 0 );
			IS_ESCAPED$1 = -1ll;
		}
		goto label$749;
		label$752:;
		if( TK$1 != 264ll ) goto label$754;
		label$755:;
		{
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"$", 2ll, 0 );
			IS_ESCAPED$1 = 0ll;
		}
		label$754:;
		label$749:;
	}
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x22", 2ll, 0 );
	SAW_BACKSLASH$1 = 0ll;
	uint8* vr$5 = LEXGETTEXT(  );
	P$1 = (uint8*)vr$5;
	label$756:;
	{
		{
			uint8 TMP$140$3;
			TMP$140$3 = *P$1;
			if( (int64)TMP$140$3 != 0ll ) goto label$760;
			label$761:;
			{
				goto label$757;
			}
			goto label$759;
			label$760:;
			if( (uint64)(int64)TMP$140$3 != 34ull ) goto label$762;
			label$763:;
			{
				if( SAW_BACKSLASH$1 == 0ll ) goto label$765;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x22", 2ll, 0 );
				}
				goto label$764;
				label$765:;
				{
					fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x22\x22", 3ll, 0 );
				}
				label$764:;
				SAW_BACKSLASH$1 = 0ll;
			}
			goto label$759;
			label$762:;
			if( (uint64)(int64)TMP$140$3 != 92ull ) goto label$766;
			label$767:;
			{
				SAW_BACKSLASH$1 = IS_ESCAPED$1;
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x5C", 2ll, 0 );
			}
			goto label$759;
			label$766:;
			{
				FBSTRING TMP$143$4;
				SAW_BACKSLASH$1 = 0ll;
				FBSTRING* vr$15 = fb_CHR( 1, (int64)*P$1 );
				__builtin_memset( &TMP$143$4, 0, 24ll );
				FBSTRING* vr$19 = fb_StrConcat( &TMP$143$4, (void*)&S$1, -1ll, (void*)vr$15, -1ll );
				fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$19, -1ll, 0 );
			}
			label$768:;
			label$759:;
		}
		P$1 = (uint8*)(P$1 + 1ll);
	}
	label$758:;
	goto label$756;
	label$757:;
	fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"\x22", 2ll, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$748:;
	FBSTRING* vr$27 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$27;
}
