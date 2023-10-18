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
		uint32* LITTEXTW;
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
typedef int64 (*tmp$33)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$33 CALLBACK;
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
		uint32* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$27)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint32* DATA;
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
typedef FBSTRING* (*tmp$28)( struct $11LEXPP_ARGTB*, int64* );
typedef uint32* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint32* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$27 DPROCZ;
		tmp$28 MPROCZ;
	};
	union {
		tmp$29 MPROCW;
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
typedef void (*tmp$41)( struct $8FBSYMBOL* );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint32 TEXTW[1025];
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
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 4176 );
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
			uint32* DEFPTRW;
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
			uint32* BUFFPTRW;
			uint32 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 49680 );
typedef void (*tmp$42)( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef int64 $15IRVREGTYPE_ENUM;
typedef int64 $12IR_REGFAMILY;
struct $6IRVREG;
struct $9IRTACVREG;
struct $9IRTACVREG {
	struct $6IRVREG* VREG;
	struct $6IRVREG* PARENT;
	struct $9IRTACVREG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9IRTACVREG ) == 24 );
struct $13IRTACVREG_GRP {
	struct $9IRTACVREG REG;
	struct $9IRTACVREG IDX;
	struct $9IRTACVREG AUX;
};
__FB_STATIC_ASSERT( sizeof( struct $13IRTACVREG_GRP ) == 72 );
struct $5IRTAC {
	int64 POS;
	$6AST_OP OP;
	struct $13IRTACVREG_GRP VR;
	struct $13IRTACVREG_GRP V1;
	struct $13IRTACVREG_GRP V2;
	struct $8FBSYMBOL* EX1;
	int64 EX2;
	uint8* EX3;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRTAC ) == 256 );
struct $6IRVREG {
	$15IRVREGTYPE_ENUM TYP;
	$11FB_DATATYPE DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int64 REG;
	$12IR_REGFAMILY REGFAMILY;
	int64 VECTOR;
	union $7FBVALUE VALUE;
	struct $8FBSYMBOL* SYM;
	int64 OFS;
	int64 MULT;
	struct $6IRVREG* VIDX;
	struct $6IRVREG* VAUX;
	struct $9IRTACVREG* TACVHEAD;
	struct $9IRTACVREG* TACVTAIL;
	struct $5IRTAC* TACLAST;
};
__FB_STATIC_ASSERT( sizeof( struct $6IRVREG ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
static void fb_ctor__astznodezscope( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ASTSCOPEDESTROYVARS( struct $8FBSYMBOL* );
void ASTSCOPEALLOCLOCALS( struct $8FBSYMBOL* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTADDAFTER( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBRANCH( int64, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWDBG( int64, int64, uint8* );
struct $7ASTNODE* ASTNEWNODE( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( struct $8FBSYMBOL*, int64 );
void ASTREPLACESYMBOLONTREE( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void ASTDTORLISTADD( struct $8FBSYMBOL* );
void ASTDTORLISTDEL( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDSCOPE( struct $7ASTNODE* );
void SYMBDELSCOPETB( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_REMONLY( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_UNLINKONLY( struct $8FBSYMBOL* );
int64 SYMBGETVARHASCTOR( struct $8FBSYMBOL* );
int64 SYMBGETVARHASDTOR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONESYMBOL( struct $8FBSYMBOL* );
static int64 HCHECKBRANCH( struct $7ASTNODE*, struct $7ASTNODE* );
static void HDELLOCALS( struct $7ASTNODE*, int64 );
static void HADDTOBREAKLIST( struct $13AST_BREAKLIST*, struct $7ASTNODE* );
static void HBRANCHERROR( int64, struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HBRANCHWARNING( int64, struct $7ASTNODE*, struct $8FBSYMBOL* );
static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HCHECKCROSSING( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, int64 );
static void HCHECKSCOPELOCALS( struct $7ASTNODE*, struct $8FBSYMBOL* );
static void HDESTROYBLOCKLOCALS( struct $8FBSYMBOL*, int64, int64, struct $7ASTNODE* );
static void HDELBACKWARDLOCALS( struct $7ASTNODE* );
static int64 HISTARGETOUTSIDE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$37)( void );
typedef int64 (*tmp$38)( void );
typedef int64 $14IR_OPTIONVALUE;
typedef int64 (*tmp$39)( $14IR_OPTIONVALUE );
typedef int64 (*tmp$40)( int64, int64 );
typedef uint8* (*tmp$43)( void );
typedef void (*tmp$44)( struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$45)( int64 );
typedef void (*tmp$46)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
typedef void (*tmp$47)( struct $8FBSYMBOL*, struct $6IRVREG*, int64, int64, struct $6IRVREG* );
typedef void (*tmp$48)( struct $9ASTASMTOK* );
typedef void (*tmp$49)( uint8* );
typedef void (*tmp$50)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG*, struct $8FBSYMBOL* );
typedef void (*tmp$51)( int64, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$52)( struct $6IRVREG* );
typedef void (*tmp$53)( struct $8FBSYMBOL*, int64, struct $6IRVREG*, int64 );
typedef void (*tmp$54)( struct $8FBSYMBOL*, struct $6IRVREG*, struct $6IRVREG*, int64, int64 );
typedef void (*tmp$55)( int64, struct $8FBSYMBOL* );
typedef void (*tmp$56)( struct $6IRVREG*, struct $8FBSYMBOL*, uint64*, struct $8FBSYMBOL**, int64, struct $8FBSYMBOL*, uint64, uint64 );
typedef void (*tmp$57)( int64, struct $6IRVREG*, struct $6IRVREG*, int64 );
typedef void (*tmp$58)( int64, struct $6IRVREG*, struct $6IRVREG*, struct $6IRVREG* );
typedef void (*tmp$59)( int64, struct $8FBSYMBOL*, int64, uint8* );
typedef void (*tmp$60)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$61)( struct $8FBSYMBOL*, double );
typedef void (*tmp$62)( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef void (*tmp$63)( int64, uint8*, int64 );
typedef void (*tmp$64)( int64, uint32*, int64 );
typedef void (*tmp$65)( int64 );
typedef void (*tmp$66)( struct $8FBSYMBOL*, int64 );
typedef void (*tmp$67)( uint8* );
typedef struct $6IRVREG* (*tmp$68)( int64, struct $8FBSYMBOL* );
typedef struct $6IRVREG* (*tmp$69)( int64, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$70)( int64, struct $8FBSYMBOL*, double );
typedef struct $6IRVREG* (*tmp$71)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
typedef struct $6IRVREG* (*tmp$72)( int64, struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64, struct $6IRVREG* );
typedef struct $6IRVREG* (*tmp$73)( int64, struct $8FBSYMBOL*, int64, struct $6IRVREG* );
typedef void (*tmp$74)( struct $6IRVREG*, int64, struct $8FBSYMBOL* );
typedef uint64 (*tmp$75)( struct $6IRVREG* );
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
__FB_STATIC_ASSERT( sizeof( struct $7IR_VTBL ) == 544 );
typedef int64 $6IR_OPT;
struct $5IRCTX {
	struct $7IR_VTBL VTBL;
	$6IR_OPT OPTIONS;
};
__FB_STATIC_ASSERT( sizeof( struct $5IRCTX ) == 552 );
extern struct $5IRCTX IR$;
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$79$;
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 24 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 16 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int64 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 696 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 80 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 8 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 16 );
struct $7SYMBCTX {
	int64 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int64 CHAINPOOLHEAD;
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
	int64 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int64 FBARRAY_DATA;
	int64 FBARRAY_PTR;
	int64 FBARRAY_SIZE;
	int64 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int64 FBARRAYDIM_LBOUND;
	int64 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 199248 );
extern struct $7SYMBCTX SYMB$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$80$;
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
static struct $8FBARRAY2IlE tmp$81$;
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
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 844576 );
extern struct $7LEX_CTX LEX$;
typedef int64 $8FB_TOKEN;
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

struct $7ASTNODE* ASTSCOPEBEGIN( void )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	struct $7ASTNODE* N$1;
	struct $8FBSYMBOL* S$1;
	if( *(uint64*)((uint8*)&PARSER$ + 200ll) < 128ull ) goto label$13;
	{
		fb$result$1 = (struct $7ASTNODE*)0ull;
		goto label$11;
	}
	label$13:;
	label$12:;
	struct $7ASTNODE* vr$1 = ASTNEWNODE( 33ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$1;
	ASTADD( N$1 );
	struct $8FBSYMBOL* vr$2 = SYMBADDSCOPE( N$1 );
	S$1 = vr$2;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = S$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 40ll) = *(struct $7ASTNODE**)((uint8*)&AST$ + 264ll);
	*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	*(int64*)((uint8*)&PARSER$ + 56ll) = *(int64*)((uint8*)&PARSER$ + 56ll) + 1ll;
	*(uint64*)((uint8*)&PARSER$ + 200ll) = *(uint64*)((uint8*)&PARSER$ + 200ll) + 1ull;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = S$1;
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = N$1;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = (struct $10FBSYMBOLTB*)((uint8*)S$1 + 104ll);
	(*(tmp$41*)((uint8*)&IR$ + 88ll))( S$1 );
	struct $7ASTNODE* vr$10 = ASTNEWDBG( 115ll, (int64)S$1, (uint8*)0ull );
	ASTADD( vr$10 );
	fb$result$1 = N$1;
	label$11:;
	return fb$result$1;
}

void ASTSCOPEBREAK( struct $8FBSYMBOL* TARGET$1 )
{
	label$18:;
	struct $7ASTNODE* N$1;
	struct $7ASTNODE* vr$0 = ASTNEWNODE( 35ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$0;
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = TARGET$1;
	*(struct $7ASTNODE**)((uint8*)N$1 + 40ll) = *(struct $7ASTNODE**)((uint8*)&AST$ + 264ll);
	*(int64*)((uint8*)N$1 + 48ll) = *(int64*)((uint8*)&PARSER$ + 200ll);
	*(int64*)((uint8*)N$1 + 56ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16752ll);
	*(int64*)((uint8*)N$1 + 64ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	struct $7ASTNODE* vr$7 = ASTNEWBRANCH( 98ll, TARGET$1, (struct $7ASTNODE*)0ull );
	*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) = vr$7;
	ASTADD( *(struct $7ASTNODE**)((uint8*)N$1 + 112ll) );
	HADDTOBREAKLIST( (struct $13AST_BREAKLIST*)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 80ll), N$1 );
	label$19:;
}

void ASTSCOPEEND( struct $7ASTNODE* N$1 )
{
	label$20:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	*(int64*)((uint8*)&PARSER$ + 56ll) = *(int64*)((uint8*)&PARSER$ + 56ll) + 1ll;
	*(int64*)((uint8*)N$1 + 56ll) = *(int64*)((uint8*)&PARSER$ + 56ll);
	ASTSCOPEDESTROYVARS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 120ll) );
	SYMBDELSCOPETB( S$1 );
	(*(tmp$41*)((uint8*)&IR$ + 96ll))( S$1 );
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = *(struct $10FBSYMBOLTB**)((uint8*)S$1 + 288ll);
	*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) = *(struct $7ASTNODE**)((uint8*)N$1 + 40ll);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 264ll) + 24ll);
	*(uint64*)((uint8*)&PARSER$ + 200ll) = *(uint64*)((uint8*)&PARSER$ + 200ll) + 18446744073709551615ull;
	struct $7ASTNODE* vr$8 = ASTNEWDBG( 116ll, (int64)S$1, (uint8*)0ull );
	ASTADD( vr$8 );
	struct $7ASTNODE* vr$9 = ASTNEWNODE( 34ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	N$1 = vr$9;
	ASTADD( N$1 );
	*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) = S$1;
	label$21:;
}

int64 ASTSCOPEUPDBREAKLIST( struct $7ASTNODE* PROC$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$22:;
	struct $7ASTNODE* N$1;
	fb$result$1 = 0ll;
	N$1 = *(struct $7ASTNODE**)((uint8*)PROC$1 + 80ll);
	label$24:;
	if( N$1 == (struct $7ASTNODE*)0ull ) goto label$25;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) != *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 72ll) ) goto label$27;
		{
			HDELLOCALS( N$1, 0ll );
		}
		goto label$26;
		label$27:;
		{
			int64 vr$4 = HCHECKBRANCH( PROC$1, N$1 );
			if( vr$4 != 0ll ) goto label$29;
			{
				goto label$23;
			}
			label$29:;
			label$28:;
		}
		label$26:;
		N$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 136ll);
	}
	goto label$24;
	label$25:;
	fb$result$1 = -1ll;
	label$23:;
	return fb$result$1;
}

void ASTSCOPEDESTROYVARS( struct $8FBSYMBOL* SYMTBTAIL$1 )
{
	label$152:;
	struct $8FBSYMBOL* S$1;
	S$1 = SYMTBTAIL$1;
	label$154:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$155;
	{
		if( *(int64*)S$1 != 1ll ) goto label$157;
		{
			int64 vr$1 = SYMBGETVARHASDTOR( S$1 );
			if( vr$1 == 0ll ) goto label$159;
			{
				struct $7ASTNODE* vr$2 = _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( S$1, -1ll );
				ASTADD( vr$2 );
			}
			label$159:;
			label$158:;
		}
		label$157:;
		label$156:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 304ll);
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
	if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$163;
	{
		label$164:;
		if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$165;
		{
			if( ((int64)-(*(int64*)S$1 == 1ll) & (int64)-((*(int64*)((uint8*)S$1 + 8ll) & 4096ll) != 0ll)) == 0ll ) goto label$167;
			{
				(*(tmp$41*)((uint8*)&IR$ + 328ll))( S$1 );
			}
			label$167:;
			label$166:;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
		}
		goto label$164;
		label$165:;
	}
	goto label$162;
	label$163:;
	{
		label$168:;
		if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$169;
		{
			if( ((int64)-(*(int64*)S$1 == 1ll) & (int64)-((*(int64*)((uint8*)S$1 + 8ll) & 3ll) == 0ll)) == 0ll ) goto label$171;
			{
				if( (*(int64*)((uint8*)S$1 + 8ll) & 114688ll) == 0ll ) goto label$173;
				{
					(*(tmp$42*)((uint8*)&IR$ + 64ll))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll), S$1 );
				}
				goto label$172;
				label$173:;
				{
					(*(tmp$42*)((uint8*)&IR$ + 72ll))( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll), S$1 );
				}
				label$172:;
			}
			label$171:;
			label$170:;
			S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$174:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	*(int64*)((uint8*)S$1 + 160ll) = *(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 208ll) + 16ll);
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$177;
	{
		(*(tmp$41*)((uint8*)&IR$ + 312ll))( S$1 );
		ASTSCOPEALLOCLOCALS( *(struct $8FBSYMBOL**)((uint8*)S$1 + 112ll) );
	}
	label$177:;
	label$176:;
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$175:;
	return fb$result$1;
}

struct $6IRVREG* ASTLOADSCOPEEND( struct $7ASTNODE* N$1 )
{
	struct $6IRVREG* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$178:;
	struct $8FBSYMBOL* S$1;
	S$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	if( *(int64*)((uint8*)&AST$ + 272ll) == 0ll ) goto label$181;
	{
		(*(tmp$41*)((uint8*)&IR$ + 320ll))( S$1 );
	}
	label$181:;
	label$180:;
	*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 208ll) + 16ll) = *(int64*)((uint8*)S$1 + 160ll);
	fb$result$1 = (struct $6IRVREG*)0ull;
	label$179:;
	return fb$result$1;
}

struct $8FBSYMBOL* ASTTEMPSCOPEBEGIN( struct $8FBSYMBOL** LASTSCP$1, struct $7ASTNODE* BACKNODE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$182:;
	struct $8FBSYMBOL* SCP$1;
	struct $8FBSYMBOL* vr$1 = SYMBADDSCOPE( BACKNODE$1 );
	SCP$1 = vr$1;
	*LASTSCP$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll);
	*(uint64*)((uint8*)&PARSER$ + 200ll) = *(uint64*)((uint8*)&PARSER$ + 200ll) + 1ull;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = SCP$1;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = (struct $10FBSYMBOLTB*)((uint8*)SCP$1 + 104ll);
	fb$result$1 = SCP$1;
	label$183:;
	return fb$result$1;
}

void ASTTEMPSCOPEEND( struct $8FBSYMBOL* SCP$1, struct $8FBSYMBOL* LASTSCP$1 )
{
	label$184:;
	struct $8FBSYMBOL* SYM$1;
	SYMBDELSCOPETB( SCP$1 );
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = *(struct $10FBSYMBOLTB**)((uint8*)SCP$1 + 288ll);
	SYMBFREESYMBOL_UNLINKONLY( SCP$1 );
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 224ll) = LASTSCP$1;
	*(uint64*)((uint8*)&PARSER$ + 200ll) = *(uint64*)((uint8*)&PARSER$ + 200ll) + 18446744073709551615ull;
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 112ll);
	label$186:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$187;
	{
		if( *(int64*)SYM$1 != 1ll ) goto label$189;
		{
			ASTDTORLISTDEL( SYM$1 );
		}
		label$189:;
		label$188:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
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
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 112ll);
	label$192:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$193;
	{
		struct $8FBSYMBOL* vr$1 = SYMBCLONESYMBOL( SYM$1 );
		CLONESYM$1 = vr$1;
		ASTREPLACESYMBOLONTREE( CLONETREE$1, SYM$1, CLONESYM$1 );
		if( *(int64*)CLONESYM$1 != 1ll ) goto label$195;
		{
			ASTDTORLISTADD( CLONESYM$1 );
		}
		label$195:;
		label$194:;
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
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
	SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SCP$1 + 112ll);
	label$198:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$199;
	{
		NXT$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HADDTOBREAKLIST( struct $13AST_BREAKLIST* LIST$1, struct $7ASTNODE* NODE$1 )
{
	label$14:;
	if( *(struct $7ASTNODE**)((uint8*)LIST$1 + 8ll) == (struct $7ASTNODE*)0ull ) goto label$17;
	{
		*(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)LIST$1 + 8ll) + 136ll) = NODE$1;
	}
	goto label$16;
	label$17:;
	{
		*(struct $7ASTNODE**)LIST$1 = NODE$1;
	}
	label$16:;
	*(struct $7ASTNODE**)((uint8*)NODE$1 + 128ll) = *(struct $7ASTNODE**)((uint8*)LIST$1 + 8ll);
	*(struct $7ASTNODE**)((uint8*)NODE$1 + 136ll) = (struct $7ASTNODE*)0ull;
	*(struct $7ASTNODE**)((uint8*)LIST$1 + 8ll) = NODE$1;
	label$15:;
}

static void HBRANCHERROR( int64 ERRNUM$1, struct $7ASTNODE* N$1, struct $8FBSYMBOL* S$1 )
{
	label$30:;
	static int64 SHOWERROR$1;
	static FBSTRING MSG$1;
	SHOWERROR$1 = *(int64*)((uint8*)&ENV$ + 384ll);
	*(int64*)((uint8*)&ENV$ + 384ll) = 0ll;
	if( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll) == (uint8*)0ull ) goto label$33;
	{
		FBSTRING TMP$93$2;
		__builtin_memset( &TMP$93$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$93$2, (void*)"to label: ", 11ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll), 0ll );
		fb_StrAssign( (void*)&MSG$1, -1ll, (void*)vr$6, -1ll, 0 );
		if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$35;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$35:;
		label$34:;
	}
	label$33:;
	label$32:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$37;
	{
		FBSTRING TMP$99$2;
		fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)"local ", 7ll, 0 );
		if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != 17ll ) goto label$39;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)"string: ", 9ll, 0 );
		}
		goto label$38;
		label$39:;
		if( *(int64*)((uint8*)S$1 + 104ll) == 0ll ) goto label$40;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)"array: ", 8ll, 0 );
		}
		goto label$38;
		label$40:;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)"object: ", 9ll, 0 );
		}
		label$38:;
		__builtin_memset( &TMP$99$2, 0, 24ll );
		FBSTRING* vr$13 = fb_StrConcat( &TMP$99$2, (void*)&MSG$1, -1ll, *(void**)((uint8*)S$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&MSG$1, -1ll, (void*)vr$13, -1ll, 0 );
	}
	label$37:;
	label$36:;
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&MSG$1, *(int64*)((uint8*)N$1 + 56ll), 1ll, (uint8*)0ull );
	*(int64*)((uint8*)&ENV$ + 384ll) = SHOWERROR$1;
	label$31:;
}

static void HBRANCHWARNING( int64 ERRNUM$1, struct $7ASTNODE* N$1, struct $8FBSYMBOL* S$1 )
{
	label$41:;
	static int64 SHOWERROR$1;
	static FBSTRING MSG$1;
	SHOWERROR$1 = *(int64*)((uint8*)&ENV$ + 384ll);
	*(int64*)((uint8*)&ENV$ + 384ll) = 0ll;
	if( *(uint8**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll) == (uint8*)0ull ) goto label$44;
	{
		FBSTRING TMP$100$2;
		__builtin_memset( &TMP$100$2, 0, 24ll );
		FBSTRING* vr$6 = fb_StrConcat( &TMP$100$2, (void*)"to label: ", 11ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 32ll), 0ll );
		fb_StrAssign( (void*)&MSG$1, -1ll, (void*)vr$6, -1ll, 0 );
		if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$46;
		{
			fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)", ", 3ll, 0 );
		}
		label$46:;
		label$45:;
	}
	label$44:;
	label$43:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$48;
	{
		FBSTRING TMP$102$2;
		fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)"variable: ", 11ll, 0 );
		__builtin_memset( &TMP$102$2, 0, 24ll );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$102$2, (void*)&MSG$1, -1ll, *(void**)((uint8*)S$1 + 32ll), 0ll );
		fb_StrAssign( (void*)&MSG$1, -1ll, (void*)vr$10, -1ll, 0 );
	}
	label$48:;
	label$47:;
	ERRREPORTWARNEX( ERRNUM$1, (uint8*)*(uint8**)&MSG$1, *(int64*)((uint8*)N$1 + 56ll), 1ll, (uint8*)0ull );
	*(int64*)((uint8*)&ENV$ + 384ll) = SHOWERROR$1;
	label$42:;
}

static struct $8FBSYMBOL* HFINDCOMMONPARENT( struct $7ASTNODE* BRANCH_PARENT$1, struct $8FBSYMBOL* LABEL_PARENT_SYM$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$49:;
	struct $7ASTNODE* LABEL_PARENT$1;
	LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT_SYM$1 + 96ll);
	int64 BRANCH_SCOPE$1;
	BRANCH_SCOPE$1 = (int64)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 24ll) + 72ll);
	int64 LABEL_SCOPE$1;
	LABEL_SCOPE$1 = (int64)*(uint16*)((uint8*)LABEL_PARENT_SYM$1 + 72ll);
	if( BRANCH_SCOPE$1 <= LABEL_SCOPE$1 ) goto label$52;
	{
		label$53:;
		{
			BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)BRANCH_PARENT$1 + 40ll);
			BRANCH_SCOPE$1 = (int64)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 24ll) + 72ll);
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
			LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 40ll);
			LABEL_SCOPE$1 = (int64)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)LABEL_PARENT$1 + 24ll) + 72ll);
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
		BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)BRANCH_PARENT$1 + 40ll);
		LABEL_PARENT$1 = *(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 40ll);
	}
	goto label$60;
	label$61:;
	fb$result$1 = *(struct $8FBSYMBOL**)((uint8*)BRANCH_PARENT$1 + 24ll);
	label$50:;
	return fb$result$1;
}

static void HCHECKCROSSING( struct $7ASTNODE* N$1, struct $8FBSYMBOL* BLK$1, int64 TOP_STMT$1, int64 BOT_STMT$1 )
{
	label$62:;
	struct $8FBSYMBOL* S$1;
	int64 STMT$1;
	if( *(int64*)BLK$1 != 15ll ) goto label$65;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 112ll);
	}
	goto label$64;
	label$65:;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 104ll);
	}
	label$64:;
	label$66:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$67;
	{
		if( *(int64*)S$1 != 1ll ) goto label$69;
		{
			STMT$1 = *(int64*)((uint8*)S$1 + 160ll);
			if( STMT$1 <= TOP_STMT$1 ) goto label$71;
			{
				if( STMT$1 >= BOT_STMT$1 ) goto label$73;
				{
					int64 vr$5 = SYMBGETVARHASCTOR( S$1 );
					if( vr$5 == 0ll ) goto label$75;
					{
						HBRANCHERROR( 105ll, N$1, S$1 );
					}
					goto label$74;
					label$75:;
					{
						if( (*(int64*)((uint8*)S$1 + 8ll) & 4099ll) != 0ll ) goto label$77;
						{
							if( (*(int64*)((uint8*)S$1 + 24ll) & 2048ll) != 0ll ) goto label$79;
							{
								HBRANCHWARNING( 14ll, N$1, S$1 );
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
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
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
	int64 LABEL_STMT$1;
	int64 BRANCH_STMT$1;
	if( TOP_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$83;
	{
		TOP_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 40ll) + 24ll);
	}
	label$83:;
	label$82:;
	BRANCH_STMT$1 = *(int64*)((uint8*)N$1 + 64ll);
	LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	LABEL_STMT$1 = *(int64*)((uint8*)LABEL$1 + 112ll);
	BLK$1 = *(struct $8FBSYMBOL**)((uint8*)LABEL$1 + 96ll);
	label$84:;
	{
		HCHECKCROSSING( N$1, BLK$1, 0ll, LABEL_STMT$1 );
		if( *(struct $10FBSYMBOLTB**)((uint8*)BLK$1 + 288ll) != (struct $10FBSYMBOLTB*)0ull ) goto label$88;
		{
			goto label$85;
		}
		label$88:;
		label$87:;
		BLK$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)BLK$1 + 288ll);
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

static void HDESTROYBLOCKLOCALS( struct $8FBSYMBOL* BLK$1, int64 TOP_STMT$1, int64 BOT_STMT$1, struct $7ASTNODE* BASE_EXPR$1 )
{
	label$93:;
	struct $8FBSYMBOL* S$1;
	struct $7ASTNODE* EXPR$1;
	int64 STMT$1;
	if( *(int64*)BLK$1 != 15ll ) goto label$96;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 120ll);
	}
	goto label$95;
	label$96:;
	{
		S$1 = *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 112ll);
	}
	label$95:;
	label$97:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$98;
	{
		if( *(int64*)S$1 != 1ll ) goto label$100;
		{
			STMT$1 = *(int64*)((uint8*)S$1 + 160ll);
			if( STMT$1 <= TOP_STMT$1 ) goto label$102;
			{
				if( STMT$1 >= BOT_STMT$1 ) goto label$104;
				{
					int64 vr$5 = SYMBGETVARHASDTOR( S$1 );
					if( vr$5 == 0ll ) goto label$106;
					{
						struct $7ASTNODE* vr$6 = _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl( S$1, -1ll );
						EXPR$1 = vr$6;
						if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$108;
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
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 304ll);
	}
	goto label$97;
	label$98:;
	label$94:;
}

static void HDELBACKWARDLOCALS( struct $7ASTNODE* N$1 )
{
	label$109:;
	HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 40ll) + 24ll), *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 112ll), *(int64*)((uint8*)N$1 + 64ll), *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 128ll) );
	label$110:;
}

static void HDELLOCALS( struct $7ASTNODE* N$1, int64 CHECK_BACKWARD$1 )
{
	label$111:;
	struct $8FBSYMBOL* S$1;
	int64 LABEL_STMT$1;
	int64 BRANCH_STMT$1;
	struct $7ASTNODE* BLK$1;
	LABEL_STMT$1 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll) + 112ll);
	BRANCH_STMT$1 = *(int64*)((uint8*)N$1 + 64ll);
	BLK$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 40ll);
	label$113:;
	{
		int64 TMP$103$2;
		HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 24ll), 0ll, BRANCH_STMT$1, *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 128ll) );
		BLK$1 = *(struct $7ASTNODE**)((uint8*)BLK$1 + 40ll);
		if( BLK$1 != (struct $7ASTNODE*)0ull ) goto label$117;
		{
			goto label$114;
		}
		label$117:;
		label$116:;
		if( LABEL_STMT$1 < *(int64*)((uint8*)BLK$1 + 48ll) ) goto label$118;
		TMP$103$2 = (int64)-(LABEL_STMT$1 < *(int64*)((uint8*)BLK$1 + 56ll));
		goto label$200;
		label$118:;
		TMP$103$2 = 0ll;
		label$200:;
		if( TMP$103$2 == 0ll ) goto label$120;
		{
			if( CHECK_BACKWARD$1 == 0ll ) goto label$122;
			{
				if( LABEL_STMT$1 > BRANCH_STMT$1 ) goto label$124;
				{
					HDESTROYBLOCKLOCALS( *(struct $8FBSYMBOL**)((uint8*)BLK$1 + 24ll), LABEL_STMT$1, BRANCH_STMT$1, *(struct $7ASTNODE**)((uint8*)*(struct $7ASTNODE**)((uint8*)N$1 + 112ll) + 128ll) );
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

static int64 HISTARGETOUTSIDE( struct $8FBSYMBOL* PROC$1, struct $8FBSYMBOL* LABEL$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$125:;
	if( (*(int64*)((uint8*)PROC$1 + 24ll) & 12288ll) == 0ll ) goto label$128;
	{
		fb$result$1 = (int64)-(*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)LABEL$1 + 288ll) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll));
	}
	goto label$127;
	label$128:;
	{
		fb$result$1 = (int64)-(*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)LABEL$1 + 288ll) != PROC$1);
	}
	label$127:;
	label$126:;
	return fb$result$1;
}

static int64 HCHECKBRANCH( struct $7ASTNODE* PROC$1, struct $7ASTNODE* N$1 )
{
	int64 TMP$104$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$129:;
	struct $7ASTNODE* BRANCH_PARENT$1;
	struct $8FBSYMBOL* LABEL$1;
	struct $8FBSYMBOL* LABEL_PARENT$1;
	int64 BRANCH_SCOPE$1;
	int64 LABEL_SCOPE$1;
	int64 BRANCH_STMT$1;
	int64 LABEL_STMT$1;
	int64 ISPARENT$1;
	fb$result$1 = 0ll;
	LABEL$1 = *(struct $8FBSYMBOL**)((uint8*)N$1 + 24ll);
	if( *(int64*)((uint8*)LABEL$1 + 104ll) != 0ll ) goto label$132;
	{
		HBRANCHERROR( 104ll, N$1, (struct $8FBSYMBOL*)0ull );
		goto label$130;
	}
	label$132:;
	label$131:;
	int64 vr$4 = HISTARGETOUTSIDE( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 24ll), LABEL$1 );
	if( vr$4 == 0ll ) goto label$134;
	{
		HBRANCHERROR( 104ll, N$1, (struct $8FBSYMBOL*)0ull );
		goto label$130;
	}
	label$134:;
	label$133:;
	LABEL_SCOPE$1 = (int64)*(uint16*)((uint8*)LABEL$1 + 72ll);
	LABEL_PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)LABEL$1 + 96ll);
	LABEL_STMT$1 = *(int64*)((uint8*)LABEL$1 + 112ll);
	BRANCH_SCOPE$1 = *(int64*)((uint8*)N$1 + 48ll);
	BRANCH_PARENT$1 = *(struct $7ASTNODE**)((uint8*)N$1 + 40ll);
	BRANCH_STMT$1 = *(int64*)((uint8*)N$1 + 64ll);
	if( LABEL_STMT$1 < *(int64*)((uint8*)BRANCH_PARENT$1 + 48ll) ) goto label$135;
	TMP$104$1 = (int64)-(LABEL_STMT$1 < *(int64*)((uint8*)BRANCH_PARENT$1 + 56ll));
	goto label$201;
	label$135:;
	TMP$104$1 = 0ll;
	label$201:;
	if( TMP$104$1 == 0ll ) goto label$137;
	{
		if( LABEL_SCOPE$1 <= BRANCH_SCOPE$1 ) goto label$139;
		{
			HCHECKSCOPELOCALS( N$1, (struct $8FBSYMBOL*)0ull );
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
		fb$result$1 = -1ll;
		goto label$130;
	}
	label$137:;
	label$136:;
	if( *(int64*)LABEL_PARENT$1 != 15ll ) goto label$145;
	{
		ISPARENT$1 = (int64)-(*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 96ll) + 48ll) <= *(int64*)((uint8*)BRANCH_PARENT$1 + 48ll)) & (int64)-(*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)LABEL_PARENT$1 + 96ll) + 56ll) >= *(int64*)((uint8*)BRANCH_PARENT$1 + 56ll));
		if( ISPARENT$1 != 0ll ) goto label$147;
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
		ISPARENT$1 = -1ll;
	}
	label$144:;
	if( ISPARENT$1 == 0ll ) goto label$149;
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
	HDELLOCALS( N$1, -1ll );
	fb$result$1 = -1ll;
	label$130:;
	return fb$result$1;
}
