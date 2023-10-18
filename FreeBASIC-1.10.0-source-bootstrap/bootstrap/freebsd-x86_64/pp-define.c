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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $9FB_ERRMSG;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
uint32* fb_WstrConcat( uint32*, uint32* );
int32 fb_StrCompare( void*, int64, void*, int64 );
int32 fb_WstrCompare( uint32*, uint32* );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( uint8* );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint32* );
FBSTRING* fb_CHR( int32, ... );
FBSTRING* fb_TRIM( FBSTRING* );
uint32* fb_WstrTrim( uint32* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__ppzdefine( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
struct $8FBSYMBOL* SYMBADDDEFINE( uint8*, uint8*, int64, int64, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEW( uint8*, uint32*, int64, int64, tmp$27, $15FB_DEFINE_FLAGS );
struct $8FBSYMBOL* SYMBADDDEFINEMACRO( uint8*, struct $9FB_DEFTOK*, int64, struct $11FB_DEFPARAM*, $15FB_DEFINE_FLAGS );
struct $11FB_DEFPARAM* SYMBADDDEFINEPARAM( struct $11FB_DEFPARAM*, uint8* );
struct $9FB_DEFTOK* SYMBADDDEFINETOK( struct $9FB_DEFTOK*, $14FB_DEFTOK_TYPE );
struct $9FB_DEFTOK* SYMBDELDEFINETOK( struct $9FB_DEFTOK* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
uint8* SYMBUNIQUELABEL( void );
int64 HISVALIDSYMBOLNAME( uint8* );
void ZSTRASSIGN( uint8**, uint8* );
void ZSTRCONCATASSIGN( uint8**, uint8* );
void WSTRASSIGN( uint32**, uint32* );
FBSTRING* HREPLACE( uint8*, uint8*, uint8* );
uint32* HREPLACEW( uint32*, uint32*, uint32* );
void DZSTRZERO( struct $8DZSTRING* );
void DZSTRASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRASSIGNW( struct $8DZSTRING*, uint32* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNW( struct $8DZSTRING*, uint32* );
void DWSTRZERO( struct $8DWSTRING* );
void DWSTRASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRASSIGNA( struct $8DWSTRING*, uint8* );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
void LEXNEXTTOKEN( struct $7FBTOKEN*, $8LEXCHECK );
uint64 LEXCURRENTCHAR( void );
void LEXEATCHAR( void );
int64 LEXEATWHITESPACE( void );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
uint8* PPREADLITERAL( int64 );
uint32* PPREADLITERALW( int64 );
static void HREPORTMACROERROR( struct $8FBSYMBOL*, int64 );
static int64 ISMACROALLOWED( struct $8FBSYMBOL* );
static int64 HLOADMACRO( struct $8FBSYMBOL* );
static int64 HLOADDEFINE( struct $8FBSYMBOL* );
static int64 HLOADMACROW( struct $8FBSYMBOL* );
static int64 HLOADDEFINEW( struct $8FBSYMBOL* );
static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK*, struct $9FB_DEFTOK* );
static struct $9FB_DEFTOK* HREADMACROTEXT( int64, struct $11FB_DEFPARAM*, int64 );
static void HREADDEFINETEXT( struct $8FBSYMBOL*, uint8*, int64, int64, int64 );
static int64 HMATCHPARAMELLIPSIS( void );
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int64 LEVEL;
	int64 SKIPPING;
	int64 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 408 );
extern struct $6PP_CTX PP$;

void PPDEFINEINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PP$ + 320ll), 8ll, 776ll, 6ll );
	label$11:;
}

void PPDEFINEEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
	label$13:;
}

int64 PPDEFINELOAD( struct $8FBSYMBOL* S$1, struct $8FBSYMBOL* CURRMACRO$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$326:;
	if( S$1 != CURRMACRO$1 ) goto label$329;
	{
		ERRREPORT( 89ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 62ll, 0ll );
		fb$result$1 = -1ll;
		goto label$327;
	}
	label$329:;
	label$328:;
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$331;
	{
		int64 vr$1 = HLOADDEFINE( S$1 );
		fb$result$1 = vr$1;
	}
	goto label$330;
	label$331:;
	{
		int64 vr$2 = HLOADDEFINEW( S$1 );
		fb$result$1 = vr$2;
	}
	label$330:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) <= 0ll ) goto label$333;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16776ll) != (struct $8FBSYMBOL*)0ull ) goto label$335;
		{
			*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16776ll) = S$1;
		}
		label$335:;
		label$334:;
	}
	label$333:;
	label$332:;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16728ll) = 18446744073709551615ull;
	label$327:;
	return fb$result$1;
}

void PPDEFINE( int64 ISMULTILINE$1 )
{
	label$435:;
	static uint8 DEFNAME$1[129];
	int64 PARAMS$1;
	int64 ISARGLESS$1;
	int64 FLAGS$1;
	struct $11FB_DEFPARAM* PARAMHEAD$1;
	struct $11FB_DEFPARAM* LASTPARAM$1;
	struct $8FBSYMBOL* SYM$1;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $9FB_DEFTOK* TOKHEAD$1;
	$15FB_DEFINE_FLAGS DEFINE_FLAGS$1;
	struct $10FBSYMCHAIN* vr$1 = CIDENTIFIER( &BASE_PARENT$1, 38ll );
	CHAIN_$1 = vr$1;
	FLAGS$1 = 62ll;
	if( ISMULTILINE$1 == 0ll ) goto label$438;
	{
		FLAGS$1 = FLAGS$1 & -5ll;
	}
	label$438:;
	label$437:;
	LEXEATTOKEN( (uint8*)DEFNAME$1, FLAGS$1 );
	int64 vr$3 = HISVALIDSYMBOLNAME( (uint8*)DEFNAME$1 );
	if( vr$3 != 0ll ) goto label$440;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		goto label$436;
	}
	label$440:;
	label$439:;
	int64 vr$4 = LEXGETTOKEN( FLAGS$1 );
	if( vr$4 != 46ll ) goto label$442;
	{
		ERRREPORT( 90ll, 0ll, (uint8*)0ull );
	}
	label$442:;
	label$441:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$444;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		if( *(int64*)SYM$1 == 5ll ) goto label$446;
		{
			if( (*(int64*)((uint8*)SYM$1 + 24ll) & 1048576ll) == 0ll ) goto label$448;
			{
				ERRREPORTWARN( 39ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				SYMBDELFROMHASH( SYM$1 );
				SYM$1 = (struct $8FBSYMBOL*)0ull;
			}
			goto label$447;
			label$448:;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
				uint8* vr$9 = SYMBUNIQUELABEL(  );
				fb_StrAssign( (void*)DEFNAME$1, 129ll, (void*)vr$9, 0ll, 0 );
			}
			label$447:;
		}
		label$446:;
		label$445:;
	}
	goto label$443;
	label$444:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$443:;
	PARAMS$1 = 0ll;
	PARAMHEAD$1 = (struct $11FB_DEFPARAM*)0ull;
	ISARGLESS$1 = 0ll;
	DEFINE_FLAGS$1 = 8ll;
	if( ISMULTILINE$1 == 0ll ) goto label$450;
	{
		int64 vr$10 = LEXGETTOKEN( FLAGS$1 );
		if( vr$10 != 63ll ) goto label$452;
		{
			LEXSKIPTOKEN( 2ll );
			DEFINE_FLAGS$1 = DEFINE_FLAGS$1 & -9ll;
		}
		label$452:;
		label$451:;
	}
	label$450:;
	label$449:;
	int64 vr$12 = LEXGETTOKEN( FLAGS$1 );
	if( vr$12 != 40ll ) goto label$454;
	{
		LEXSKIPTOKEN( 34ll );
		int64 vr$13 = LEXGETTOKEN( 34ll );
		if( vr$13 == 41ll ) goto label$456;
		{
			LASTPARAM$1 = (struct $11FB_DEFPARAM*)0ull;
			label$457:;
			{
				{
					uint64 TMP$143$5;
					int64 vr$14 = LEXGETCLASS( 0ll );
					TMP$143$5 = (uint64)vr$14;
					goto label$461;
					label$462:;
					{
						uint8* vr$15 = LEXGETTEXT(  );
						struct $11FB_DEFPARAM* vr$16 = SYMBADDDEFINEPARAM( LASTPARAM$1, (uint8*)vr$15 );
						LASTPARAM$1 = vr$16;
					}
					goto label$460;
					label$463:;
					{
						ERRREPORT( 14ll, 0ll, (uint8*)0ull );
						uint8* vr$17 = SYMBUNIQUELABEL(  );
						struct $11FB_DEFPARAM* vr$18 = SYMBADDDEFINEPARAM( LASTPARAM$1, (uint8*)vr$17 );
						LASTPARAM$1 = vr$18;
					}
					goto label$460;
					label$461:;
					static const void* tmp$144[3ll] = {
						&&label$462,
						&&label$462,
						&&label$462,
					};
					if( TMP$143$5 > 2ull ) goto label$463;
					goto *tmp$144[TMP$143$5 - 0ull];
					label$460:;
				}
				if( LASTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$465;
				{
					ERRREPORT( 4ll, 0ll, (uint8*)0ull );
				}
				label$465:;
				label$464:;
				LEXSKIPTOKEN( 34ll );
				PARAMS$1 = PARAMS$1 + 1ll;
				if( PARAMS$1 < 32ll ) goto label$467;
				{
					ERRREPORT( 79ll, 0ll, (uint8*)0ull );
					HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
					goto label$436;
				}
				label$467:;
				label$466:;
				if( PARAMHEAD$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$469;
				{
					PARAMHEAD$1 = LASTPARAM$1;
				}
				label$469:;
				label$468:;
				int64 vr$20 = LEXGETTOKEN( 34ll );
				if( vr$20 == 44ll ) goto label$471;
				{
					goto label$458;
				}
				label$471:;
				label$470:;
				LEXSKIPTOKEN( 34ll );
			}
			label$459:;
			goto label$457;
			label$458:;
			int64 vr$21 = HMATCHPARAMELLIPSIS(  );
			if( vr$21 == 0ll ) goto label$473;
			{
				DEFINE_FLAGS$1 = DEFINE_FLAGS$1 | 4ll;
			}
			label$473:;
			label$472:;
		}
		goto label$455;
		label$456:;
		{
			ISARGLESS$1 = -1ll;
		}
		label$455:;
		int64 vr$23 = LEXGETTOKEN( 62ll );
		if( vr$23 == 41ll ) goto label$475;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
		}
		goto label$474;
		label$475:;
		{
			LEXSKIPTOKEN( 58ll );
		}
		label$474:;
	}
	goto label$453;
	label$454:;
	{
		if( ISMULTILINE$1 != 0ll ) goto label$477;
		{
			int64 vr$24 = LEXGETTOKEN( 62ll );
			if( vr$24 != 32ll ) goto label$479;
			{
				LEXSKIPTOKEN( 58ll );
			}
			label$479:;
			label$478:;
		}
		label$477:;
		label$476:;
	}
	label$453:;
	if( PARAMS$1 != 0ll ) goto label$481;
	{
		HREADDEFINETEXT( SYM$1, (uint8*)DEFNAME$1, ISARGLESS$1, ISMULTILINE$1, DEFINE_FLAGS$1 );
		goto label$436;
	}
	label$481:;
	label$480:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$483;
	{
		ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
	}
	goto label$482;
	label$483:;
	{
		struct $9FB_DEFTOK* vr$25 = HREADMACROTEXT( PARAMS$1, PARAMHEAD$1, ISMULTILINE$1 );
		TOKHEAD$1 = vr$25;
		SYMBADDDEFINEMACRO( (uint8*)DEFNAME$1, TOKHEAD$1, PARAMS$1, PARAMHEAD$1, DEFINE_FLAGS$1 );
	}
	label$482:;
	label$436:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HREPORTMACROERROR( struct $8FBSYMBOL* S$1, int64 ERRNUM$1 )
{
	FBSTRING TMP$93$1;
	FBSTRING TMP$94$1;
	label$14:;
	__builtin_memset( &TMP$94$1, 0, 24ll );
	__builtin_memset( &TMP$93$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$93$1, (void*)"expanding: ", 12ll, *(void**)((uint8*)S$1 + 32ll), 0ll );
	fb_StrAssign( (void*)&TMP$94$1, -1ll, (void*)vr$4, -1ll, 0 );
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&TMP$94$1, 0ll, 1ll, (uint8*)0ull );
	fb_StrDelete( (FBSTRING*)&TMP$94$1 );
	label$15:;
}

static int64 ISMACROALLOWED( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	if( *(int64*)((uint8*)&PP$ + 392ll) != 0ll ) goto label$19;
	{
		if( (*(int64*)((uint8*)S$1 + 128ll) & 2ll) == 0ll ) goto label$21;
		{
			if( *(int64*)((uint8*)&ENV$ + 208ll) != 1ll ) goto label$23;
			{
				ERRREPORT( 286ll, 0ll, (uint8*)0ull );
				fb$result$1 = 0ll;
				goto label$17;
			}
			label$23:;
			label$22:;
		}
		label$21:;
		label$20:;
	}
	label$19:;
	label$18:;
	fb$result$1 = -1ll;
	goto label$17;
	label$17:;
	return fb$result$1;
}

static int64 HLOADMACRO( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int64 PRNTCNT$1;
	int64 NUM$1;
	int64 REACHED_VARARG$1;
	int64 IS_VARIADIC$1;
	uint8* ARGTEXT$1;
	static FBSTRING TEXT$1;
	fb$result$1 = -1ll;
	int64 HASPARENS$1;
	HASPARENS$1 = 0ll;
	int64 HASWHITESPACE$1;
	int64 vr$1 = LEXEATWHITESPACE(  );
	HASWHITESPACE$1 = vr$1;
	uint64 vr$2 = LEXCURRENTCHAR(  );
	if( vr$2 != 40ull ) goto label$27;
	{
		HASPARENS$1 = -1ll;
	}
	label$27:;
	label$26:;
	if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) == 0ll ) goto label$29;
	{
		if( HASPARENS$1 != 0ll ) goto label$31;
		{
			goto label$25;
		}
		label$31:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		HASPARENS$1 = HASPARENS$1 & ~HASWHITESPACE$1;
	}
	label$28:;
	int64 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0ll ) goto label$33;
	{
		goto label$25;
	}
	label$33:;
	label$32:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + 1ll;
	if( HASPARENS$1 == 0ll ) goto label$35;
	{
		LEXEATCHAR(  );
	}
	label$35:;
	label$34:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$37;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$36;
	label$37:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0ull;
	}
	label$36:;
	PRNTCNT$1 = 1ll;
	REACHED_VARARG$1 = 0ll;
	IS_VARIADIC$1 = (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 4ll) != 0ll);
	int64 READDCHAR$1;
	READDCHAR$1 = -1ll;
	NUM$1 = 0ll;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$39;
	{
		*(int64*)((uint8*)ARGTB$1 + 768ll) = 0ll;
	}
	label$39:;
	label$38:;
	label$40:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$44;
		{
			DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
		}
		label$44:;
		label$43:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$46;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$46:;
		label$45:;
		label$47:;
		{
			LEXNEXTTOKEN( &T$1, 92ll );
			{
				uint64 TMP$95$4;
				TMP$95$4 = *(uint64*)&T$1;
				goto label$51;
				label$52:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1ll;
				}
				goto label$50;
				label$53:;
				{
					if( PRNTCNT$1 <= 0ll ) goto label$55;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1ll;
						if( PRNTCNT$1 != 0ll ) goto label$57;
						{
							if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll ) goto label$59;
							{
								if( HASPARENS$1 != 0ll ) goto label$61;
								{
									if( *(int64*)((uint8*)ARGTB$1 + 768ll) < *(int64*)((uint8*)S$1 + 96ll) ) goto label$63;
									{
										if( *(int64*)((uint8*)&PP$ + 400ll) <= 1ll ) goto label$65;
										{
											READDCHAR$1 = 41ll;
										}
										label$65:;
										label$64:;
									}
									label$63:;
									label$62:;
								}
								label$61:;
								label$60:;
							}
							label$59:;
							label$58:;
							goto label$48;
						}
						label$57:;
						label$56:;
					}
					label$55:;
					label$54:;
				}
				goto label$50;
				label$66:;
				{
					if( PRNTCNT$1 != 1ll ) goto label$68;
					{
						if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll ) goto label$70;
						{
							if( IS_VARIADIC$1 != 0ll ) goto label$72;
							{
								if( HASPARENS$1 != 0ll ) goto label$74;
								{
									if( *(int64*)((uint8*)ARGTB$1 + 768ll) < *(int64*)((uint8*)S$1 + 96ll) ) goto label$76;
									{
										if( *(int64*)((uint8*)&PP$ + 400ll) <= 1ll ) goto label$78;
										{
											READDCHAR$1 = 44ll;
										}
										label$78:;
										label$77:;
										PRNTCNT$1 = 0ll;
										goto label$48;
									}
									label$76:;
									label$75:;
								}
								label$74:;
								label$73:;
							}
							label$72:;
							label$71:;
						}
						label$70:;
						label$69:;
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$80;
						{
							if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$82;
							{
								*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
							}
							label$82:;
							label$81:;
							*(int64*)((uint8*)ARGTB$1 + 768ll) = *(int64*)((uint8*)ARGTB$1 + 768ll) + 1ll;
						}
						label$80:;
						label$79:;
						if( REACHED_VARARG$1 != 0ll ) goto label$84;
						{
							goto label$48;
						}
						label$84:;
						label$83:;
					}
					label$68:;
					label$67:;
				}
				goto label$50;
				label$85:;
				{
					if( ~HASPARENS$1 == 0ll ) goto label$87;
					{
						READDCHAR$1 = 58ll;
						PRNTCNT$1 = 0ll;
						goto label$48;
					}
					label$87:;
					label$86:;
				}
				goto label$50;
				label$88:;
				{
					if( HASPARENS$1 == 0ll ) goto label$90;
					{
						HREPORTMACROERROR( S$1, 7ll );
					}
					goto label$89;
					label$90:;
					{
						int64 TMP$96$6;
						if( *(int64*)&T$1 != 256ll ) goto label$91;
						TMP$96$6 = 0ll;
						goto label$484;
						label$91:;
						TMP$96$6 = 10ll;
						label$484:;
						READDCHAR$1 = TMP$96$6;
					}
					label$89:;
					PRNTCNT$1 = 0ll;
					goto label$48;
				}
				goto label$50;
				label$92:;
				{
				}
				goto label$50;
				label$93:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$95;
					{
						if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$97;
						{
							*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
						}
						label$97:;
						label$96:;
					}
					label$95:;
					label$94:;
				}
				goto label$50;
				label$51:;
				static const void* tmp$145[250ll] = {
					&&label$92,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$92,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$52,
					&&label$53,
					&&label$93,
					&&label$93,
					&&label$66,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$93,
					&&label$88,
					&&label$88,
					&&label$85,
				};
				if( (TMP$95$4 - 9ull) > 249ull ) goto label$93;
				goto *tmp$145[TMP$95$4 - 9ull];
				label$50:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$99;
			{
				if( *(int64*)((uint8*)&T$1 + 16ll) == 7ll ) goto label$101;
				{
					DZSTRCONCATASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)((uint8*)&T$1 + 24ll) );
				}
				goto label$100;
				label$101:;
				{
					DZSTRCONCATASSIGNW( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)((uint8*)&T$1 + 24ll) );
				}
				label$100:;
			}
			label$99:;
			label$98:;
		}
		label$49:;
		goto label$47;
		label$48:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$103;
		{
			{
				struct $9LEXPP_ARG* TMP$97$4;
				TMP$97$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
				if( *(uint8**)TMP$97$4 == (uint8*)0ull ) goto label$105;
				{
					int64 vr$57 = fb_StrLen( *(void**)TMP$97$4, 0ll );
					if( ((int64)-((int64)*(uint8*)*(uint8**)TMP$97$4 == 32ll) | (int64)-((int64)*(uint8*)((uint8*)((uint8*)*(uint8**)TMP$97$4 + vr$57) + -1ll) == 32ll)) == 0ll ) goto label$107;
					{
						FBSTRING TMP$98$6;
						__builtin_memset( &TMP$98$6, 0, 24ll );
						FBSTRING* vr$64 = fb_StrAllocTempDescZ( (uint8*)*(uint8**)TMP$97$4 );
						FBSTRING* vr$65 = fb_TRIM( (FBSTRING*)vr$64 );
						fb_StrAssign( (void*)&TMP$98$6, -1ll, (void*)vr$65, -1ll, 0 );
						DZSTRASSIGN( (struct $8DZSTRING*)TMP$97$4, (uint8*)*(uint8**)&TMP$98$6 );
						fb_StrDelete( (FBSTRING*)&TMP$98$6 );
					}
					label$107:;
					label$106:;
				}
				label$105:;
				label$104:;
			}
		}
		label$103:;
		label$102:;
		if( PRNTCNT$1 != 0ll ) goto label$109;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$111;
			{
				if( ((int64)-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 16ll) != (struct $11FB_DEFPARAM*)0ull) | ~IS_VARIADIC$1) == 0ll ) goto label$113;
				{
					HREPORTMACROERROR( S$1, 1ll );
				}
				label$113:;
				label$112:;
				label$114:;
				{
					NUM$1 = NUM$1 + 1ll;
					DZSTRZERO( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
				}
				label$116:;
				if( NUM$1 < (*(int64*)((uint8*)S$1 + 96ll) + -1ll) ) goto label$114;
				label$115:;
			}
			label$111:;
			label$110:;
			goto label$41;
		}
		label$109:;
		label$108:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$118;
		{
			HREPORTMACROERROR( S$1, 1ll );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
			goto label$41;
		}
		label$118:;
		label$117:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1ll;
	}
	label$42:;
	goto label$40;
	label$41:;
	fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)"", 1ll, 0 );
	if( *(tmp$28*)((uint8*)S$1 + 136ll) == (tmp$28)0ull ) goto label$120;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0ll;
		FBSTRING RES$2;
		FBSTRING* vr$83 = (*(tmp$28*)((uint8*)S$1 + 136ll))( ARGTB$1, (int64*)&ERRNUM$2 );
		fb_StrInit( (void*)&RES$2, -1ll, (void*)vr$83, -1ll, 0 );
		if( ERRNUM$2 != 0ll ) goto label$122;
		{
			fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)&RES$2, -1ll, 0 );
		}
		goto label$121;
		label$122:;
		{
			HREPORTMACROERROR( S$1, ERRNUM$2 );
		}
		label$121:;
		fb_StrDelete( (FBSTRING*)&RES$2 );
	}
	goto label$119;
	label$120:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$124;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
			label$125:;
			if( DT$1 == (struct $9FB_DEFTOK*)0ull ) goto label$126;
			{
				{
					uint64 TMP$99$5;
					TMP$99$5 = *(uint64*)DT$1;
					goto label$128;
					label$129:;
					{
						ARGTEXT$1 = *(uint8**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint8*)0ull ) goto label$131;
						{
							FBSTRING TMP$100$7;
							__builtin_memset( &TMP$100$7, 0, 24ll );
							FBSTRING* vr$95 = fb_StrConcat( &TMP$100$7, (void*)&TEXT$1, -1ll, (void*)ARGTEXT$1, 0ll );
							fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$95, -1ll, 0 );
						}
						label$131:;
						label$130:;
					}
					goto label$127;
					label$132:;
					{
						ARGTEXT$1 = *(uint8**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint8*)0ull ) goto label$134;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"$\x22", 3ll, 0 );
							FBSTRING* vr$99 = HREPLACE( ARGTEXT$1, (uint8*)"\x22", (uint8*)"\x22\x22" );
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)vr$99, -1ll, 0 );
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"\x22", 2ll, 0 );
						}
						goto label$133;
						label$134:;
						{
							fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)"\x22\x22", 3ll, 0 );
						}
						label$133:;
					}
					goto label$127;
					label$135:;
					{
						FBSTRING TMP$105$6;
						__builtin_memset( &TMP$105$6, 0, 24ll );
						FBSTRING* vr$103 = fb_StrConcat( &TMP$105$6, (void*)&TEXT$1, -1ll, *(void**)((uint8*)DT$1 + 8ll), 0ll );
						fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$103, -1ll, 0 );
					}
					goto label$127;
					label$136:;
					{
						FBSTRING TMP$106$6;
						FBSTRING* vr$105 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)DT$1 + 8ll) );
						__builtin_memset( &TMP$106$6, 0, 24ll );
						FBSTRING* vr$108 = fb_StrConcat( &TMP$106$6, (void*)&TEXT$1, -1ll, (void*)vr$105, -1ll );
						fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$108, -1ll, 0 );
					}
					goto label$127;
					label$128:;
					static const void* tmp$146[4ll] = {
						&&label$129,
						&&label$132,
						&&label$135,
						&&label$136,
					};
					if( TMP$99$5 > 3ull ) goto label$127;
					goto *tmp$146[TMP$99$5 - 0ull];
					label$127:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 24ll);
			}
			goto label$125;
			label$126:;
			label$137:;
			if( NUM$1 <= 0ll ) goto label$138;
			{
				NUM$1 = NUM$1 + -1ll;
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)0ull );
			}
			goto label$137;
			label$138:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll), (void*)ARGTB$1 );
		}
		label$124:;
		label$123:;
		if( READDCHAR$1 == -1ll ) goto label$140;
		{
			FBSTRING* vr$115 = fb_CHR( 1, READDCHAR$1 );
			fb_StrConcatAssign( (void*)&TEXT$1, -1ll, (void*)vr$115, -1ll, 0 );
		}
		label$140:;
		label$139:;
	}
	label$119:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$142;
	{
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TEXT$1 );
	}
	goto label$141;
	label$142:;
	{
		FBSTRING TMP$107$2;
		FBSTRING TMP$108$2;
		__builtin_memset( &TMP$108$2, 0, 24ll );
		__builtin_memset( &TMP$107$2, 0, 24ll );
		FBSTRING* vr$123 = fb_StrConcat( &TMP$107$2, (void*)&TEXT$1, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll), 0ll );
		fb_StrAssign( (void*)&TMP$108$2, -1ll, (void*)vr$123, -1ll, 0 );
		DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TMP$108$2 );
		fb_StrDelete( (FBSTRING*)&TMP$108$2 );
	}
	label$141:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + -1ll;
	int64 vr$129 = fb_StrLen( (void*)&TEXT$1, -1ll );
	fb$result$1 = vr$129;
	label$25:;
	return fb$result$1;
}

static int64 HLOADDEFINE( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$143:;
	static FBSTRING TEXT$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)S$1 + 96ll) <= 0ll ) goto label$146;
	{
		int64 vr$2 = HLOADMACRO( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1ll ) goto label$148;
		{
			goto label$144;
		}
		label$148:;
		label$147:;
	}
	goto label$145;
	label$146:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 136ll) == (tmp$27)0ull ) goto label$150;
		{
			if( (*(int64*)((uint8*)S$1 + 128ll) & 1ll) == 0ll ) goto label$152;
			{
				FBSTRING TMP$109$4;
				FBSTRING TMP$110$4;
				FBSTRING* vr$6 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				__builtin_memset( &TMP$109$4, 0, 24ll );
				FBSTRING* vr$10 = fb_StrConcat( &TMP$109$4, (void*)"$\x22", 3ll, (void*)vr$6, -1ll );
				__builtin_memset( &TMP$110$4, 0, 24ll );
				FBSTRING* vr$13 = fb_StrConcat( &TMP$110$4, (void*)vr$10, -1ll, (void*)"\x22", 2ll );
				fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$13, -1ll, 0 );
			}
			goto label$151;
			label$152:;
			{
				FBSTRING* vr$14 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				fb_StrAssign( (void*)&TEXT$1, -1ll, (void*)vr$14, -1ll, 0 );
			}
			label$151:;
			if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$154;
			{
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TEXT$1 );
			}
			goto label$153;
			label$154:;
			{
				FBSTRING TMP$111$4;
				FBSTRING TMP$112$4;
				__builtin_memset( &TMP$112$4, 0, 24ll );
				__builtin_memset( &TMP$111$4, 0, 24ll );
				FBSTRING* vr$23 = fb_StrConcat( &TMP$111$4, (void*)&TEXT$1, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll), 0ll );
				fb_StrAssign( (void*)&TMP$112$4, -1ll, (void*)vr$23, -1ll, 0 );
				DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TMP$112$4 );
				fb_StrDelete( (FBSTRING*)&TMP$112$4 );
			}
			label$153:;
			int64 vr$28 = fb_StrLen( (void*)&TEXT$1, -1ll );
			LGT$1 = vr$28;
		}
		goto label$149;
		label$150:;
		{
			if( *(int64*)((uint8*)S$1 + 120ll) == 0ll ) goto label$156;
			{
				int64 HASPARENS$4;
				HASPARENS$4 = 0ll;
				int64 HASWHITESPACE$4;
				int64 vr$30 = LEXEATWHITESPACE(  );
				HASWHITESPACE$4 = vr$30;
				uint64 vr$31 = LEXCURRENTCHAR(  );
				if( vr$31 != 40ull ) goto label$158;
				{
					HASPARENS$4 = -1ll;
				}
				label$158:;
				label$157:;
				if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) == 0ll ) goto label$160;
				{
					if( HASPARENS$4 != 0ll ) goto label$162;
					{
						goto label$144;
					}
					label$162:;
					label$161:;
				}
				goto label$159;
				label$160:;
				{
					HASPARENS$4 = HASPARENS$4 & ~HASWHITESPACE$4;
				}
				label$159:;
				if( HASPARENS$4 == 0ll ) goto label$164;
				{
					LEXEATCHAR(  );
					LEXEATWHITESPACE(  );
					uint64 vr$36 = LEXCURRENTCHAR(  );
					if( vr$36 == 41ull ) goto label$166;
					{
						ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					}
					goto label$165;
					label$166:;
					{
						LEXEATCHAR(  );
					}
					label$165:;
				}
				label$164:;
				label$163:;
			}
			label$156:;
			label$155:;
			if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$168;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$170;
				{
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)((uint8*)S$1 + 112ll) );
				}
				goto label$169;
				label$170:;
				{
					FBSTRING TMP$113$5;
					FBSTRING TMP$114$5;
					__builtin_memset( &TMP$114$5, 0, 24ll );
					__builtin_memset( &TMP$113$5, 0, 24ll );
					FBSTRING* vr$48 = fb_StrConcat( &TMP$113$5, *(void**)((uint8*)S$1 + 112ll), 0ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll), 0ll );
					fb_StrAssign( (void*)&TMP$114$5, -1ll, (void*)vr$48, -1ll, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TMP$114$5 );
					fb_StrDelete( (FBSTRING*)&TMP$114$5 );
				}
				label$169:;
			}
			goto label$167;
			label$168:;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$172;
				{
					DZSTRASSIGNW( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)*(uint32**)((uint8*)S$1 + 112ll) );
				}
				goto label$171;
				label$172:;
				{
					FBSTRING TMP$115$5;
					FBSTRING TMP$116$5;
					__builtin_memset( &TMP$116$5, 0, 24ll );
					FBSTRING* vr$60 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)S$1 + 112ll) );
					__builtin_memset( &TMP$115$5, 0, 24ll );
					FBSTRING* vr$63 = fb_StrConcat( &TMP$115$5, (void*)vr$60, -1ll, *(void**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll), 0ll );
					fb_StrAssign( (void*)&TMP$116$5, -1ll, (void*)vr$63, -1ll, 0 );
					DZSTRASSIGN( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)&TMP$116$5 );
					fb_StrDelete( (FBSTRING*)&TMP$116$5 );
				}
				label$171:;
			}
			label$167:;
			LGT$1 = *(int64*)((uint8*)S$1 + 80ll);
		}
		label$149:;
	}
	label$145:;
	*(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) = *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll);
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) + LGT$1;
	*(uint64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16728ll) = 18446744073709551615ull;
	fb$result$1 = -1ll;
	label$144:;
	return fb$result$1;
}

static int64 HLOADMACROW( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$173:;
	struct $11FB_DEFPARAM* PARAM$1;
	struct $11FB_DEFPARAM* NEXTPARAM$1;
	struct $9FB_DEFTOK* DT$1;
	struct $7FBTOKEN T$1;
	struct $11LEXPP_ARGTB* ARGTB$1;
	int64 PRNTCNT$1;
	int64 LGT$1;
	int64 NUM$1;
	int64 REACHED_VARARG$1;
	int64 IS_VARIADIC$1;
	uint32* ARGTEXT$1;
	static struct $8DWSTRING TEXT$1;
	fb$result$1 = -1ll;
	int64 HASPARENS$1;
	HASPARENS$1 = 0ll;
	int64 HASWHITESPACE$1;
	int64 vr$1 = LEXEATWHITESPACE(  );
	HASWHITESPACE$1 = vr$1;
	uint64 vr$2 = LEXCURRENTCHAR(  );
	if( vr$2 != 40ull ) goto label$176;
	{
		HASPARENS$1 = -1ll;
	}
	label$176:;
	label$175:;
	if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) == 0ll ) goto label$178;
	{
		if( HASPARENS$1 != 0ll ) goto label$180;
		{
			goto label$174;
		}
		label$180:;
		label$179:;
	}
	goto label$177;
	label$178:;
	{
		HASPARENS$1 = HASPARENS$1 & ~HASWHITESPACE$1;
	}
	label$177:;
	int64 vr$7 = ISMACROALLOWED( S$1 );
	if( vr$7 != 0ll ) goto label$182;
	{
		goto label$174;
	}
	label$182:;
	label$181:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + 1ll;
	if( HASPARENS$1 == 0ll ) goto label$184;
	{
		LEXEATCHAR(  );
	}
	label$184:;
	label$183:;
	PARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)S$1 + 104ll);
	if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$186;
	{
		void* vr$11 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll) );
		ARGTB$1 = (struct $11LEXPP_ARGTB*)vr$11;
	}
	goto label$185;
	label$186:;
	{
		ARGTB$1 = (struct $11LEXPP_ARGTB*)0ull;
	}
	label$185:;
	PRNTCNT$1 = 1ll;
	REACHED_VARARG$1 = 0ll;
	IS_VARIADIC$1 = (int64)-((*(int64*)((uint8*)S$1 + 128ll) & 4ll) != 0ll);
	int64 READDCHAR$1;
	READDCHAR$1 = -1ll;
	NUM$1 = 0ll;
	if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$188;
	{
		*(int64*)((uint8*)ARGTB$1 + 768ll) = 0ll;
	}
	label$188:;
	label$187:;
	label$189:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$193;
		{
			DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
		}
		label$193:;
		label$192:;
		NEXTPARAM$1 = *(struct $11FB_DEFPARAM**)((uint8*)PARAM$1 + 16ll);
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$195;
		{
			REACHED_VARARG$1 = IS_VARIADIC$1;
		}
		label$195:;
		label$194:;
		label$196:;
		{
			LEXNEXTTOKEN( &T$1, 92ll );
			{
				uint64 TMP$117$4;
				TMP$117$4 = *(uint64*)&T$1;
				goto label$200;
				label$201:;
				{
					PRNTCNT$1 = PRNTCNT$1 + 1ll;
				}
				goto label$199;
				label$202:;
				{
					if( PRNTCNT$1 <= 0ll ) goto label$204;
					{
						PRNTCNT$1 = PRNTCNT$1 + -1ll;
						if( PRNTCNT$1 != 0ll ) goto label$206;
						{
							if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll ) goto label$208;
							{
								if( HASPARENS$1 != 0ll ) goto label$210;
								{
									if( *(int64*)((uint8*)ARGTB$1 + 768ll) < *(int64*)((uint8*)S$1 + 96ll) ) goto label$212;
									{
										if( *(int64*)((uint8*)&PP$ + 400ll) <= 1ll ) goto label$214;
										{
											READDCHAR$1 = 41ll;
										}
										label$214:;
										label$213:;
									}
									label$212:;
									label$211:;
								}
								label$210:;
								label$209:;
							}
							label$208:;
							label$207:;
							goto label$197;
						}
						label$206:;
						label$205:;
					}
					label$204:;
					label$203:;
				}
				goto label$199;
				label$215:;
				{
					if( PRNTCNT$1 != 1ll ) goto label$217;
					{
						if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) != 0ll ) goto label$219;
						{
							if( IS_VARIADIC$1 != 0ll ) goto label$221;
							{
								if( HASPARENS$1 != 0ll ) goto label$223;
								{
									if( *(int64*)((uint8*)ARGTB$1 + 768ll) < *(int64*)((uint8*)S$1 + 96ll) ) goto label$225;
									{
										if( *(int64*)((uint8*)&PP$ + 400ll) <= 1ll ) goto label$227;
										{
											READDCHAR$1 = 44ll;
										}
										label$227:;
										label$226:;
										PRNTCNT$1 = 0ll;
										goto label$197;
									}
									label$225:;
									label$224:;
								}
								label$223:;
								label$222:;
							}
							label$221:;
							label$220:;
						}
						label$219:;
						label$218:;
						if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$229;
						{
							if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$231;
							{
								*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
							}
							label$231:;
							label$230:;
							*(int64*)((uint8*)ARGTB$1 + 768ll) = *(int64*)((uint8*)ARGTB$1 + 768ll) + 1ll;
						}
						label$229:;
						label$228:;
						if( REACHED_VARARG$1 != 0ll ) goto label$233;
						{
							goto label$197;
						}
						label$233:;
						label$232:;
					}
					label$217:;
					label$216:;
				}
				goto label$199;
				label$234:;
				{
					if( ~HASPARENS$1 == 0ll ) goto label$236;
					{
						READDCHAR$1 = 58ll;
						PRNTCNT$1 = 0ll;
						goto label$197;
					}
					label$236:;
					label$235:;
				}
				goto label$199;
				label$237:;
				{
					if( HASPARENS$1 == 0ll ) goto label$239;
					{
						HREPORTMACROERROR( S$1, 7ll );
					}
					goto label$238;
					label$239:;
					{
						int64 TMP$118$6;
						if( *(int64*)&T$1 != 256ll ) goto label$240;
						TMP$118$6 = 0ll;
						goto label$485;
						label$240:;
						TMP$118$6 = 10ll;
						label$485:;
						READDCHAR$1 = TMP$118$6;
					}
					label$238:;
					PRNTCNT$1 = 0ll;
					goto label$197;
				}
				goto label$199;
				label$241:;
				{
				}
				goto label$199;
				label$242:;
				{
					if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$244;
					{
						if( *(int64*)((uint8*)ARGTB$1 + 768ll) != 0ll ) goto label$246;
						{
							*(int64*)((uint8*)ARGTB$1 + 768ll) = 1ll;
						}
						label$246:;
						label$245:;
					}
					label$244:;
					label$243:;
				}
				goto label$199;
				label$200:;
				static const void* tmp$147[250ll] = {
					&&label$241,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$241,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$201,
					&&label$202,
					&&label$242,
					&&label$242,
					&&label$215,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$242,
					&&label$237,
					&&label$237,
					&&label$234,
				};
				if( (TMP$117$4 - 9ull) > 249ull ) goto label$242;
				goto *tmp$147[TMP$117$4 - 9ull];
				label$199:;
			}
			if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$248;
			{
				if( *(int64*)((uint8*)&T$1 + 16ll) == 7ll ) goto label$250;
				{
					DWSTRCONCATASSIGNA( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint8*)((uint8*)&T$1 + 24ll) );
				}
				goto label$249;
				label$250:;
				{
					DWSTRCONCATASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)((uint8*)&T$1 + 24ll) );
				}
				label$249:;
			}
			label$248:;
			label$247:;
		}
		label$198:;
		goto label$196;
		label$197:;
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$252;
		{
			{
				struct $9LEXPP_ARG* TMP$119$4;
				TMP$119$4 = (struct $9LEXPP_ARG*)((uint8*)ARGTB$1 + (NUM$1 * 24ll));
				if( *(uint32**)TMP$119$4 == (uint32*)0ull ) goto label$254;
				{
					int64 vr$57 = fb_WstrLen( (uint32*)*(uint32**)TMP$119$4 );
					if( ((int64)-((int64)*(uint32*)*(uint32**)TMP$119$4 == 32ll) | (int64)-((int64)*(uint32*)((uint8*)((uint8*)*(uint32**)TMP$119$4 + (vr$57 << (2ll & 63ll))) + -4ll) == 32ll)) == 0ll ) goto label$256;
					{
						uint32* TMP$120$6;
						uint32* vr$64 = fb_WstrTrim( (uint32*)*(uint32**)TMP$119$4 );
						TMP$120$6 = vr$64;
						DWSTRASSIGN( (struct $8DWSTRING*)TMP$119$4, (uint32*)TMP$120$6 );
						fb_WstrDelete( (uint32*)TMP$120$6 );
					}
					label$256:;
					label$255:;
				}
				label$254:;
				label$253:;
			}
		}
		label$252:;
		label$251:;
		if( PRNTCNT$1 != 0ll ) goto label$258;
		{
			if( NEXTPARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$260;
			{
				if( ((int64)-(*(struct $11FB_DEFPARAM**)((uint8*)NEXTPARAM$1 + 16ll) != (struct $11FB_DEFPARAM*)0ull) | ~IS_VARIADIC$1) == 0ll ) goto label$262;
				{
					HREPORTMACROERROR( S$1, 1ll );
				}
				label$262:;
				label$261:;
				label$263:;
				{
					NUM$1 = NUM$1 + 1ll;
					DWSTRZERO( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)) );
				}
				label$265:;
				if( NUM$1 < (*(int64*)((uint8*)S$1 + 96ll) + -1ll) ) goto label$263;
				label$264:;
			}
			label$260:;
			label$259:;
			goto label$190;
		}
		label$258:;
		label$257:;
		if( NEXTPARAM$1 != (struct $11FB_DEFPARAM*)0ull ) goto label$267;
		{
			HREPORTMACROERROR( S$1, 1ll );
			HSKIPUNTIL( 41ll, -1ll, 62ll, 0ll );
			goto label$190;
		}
		label$267:;
		label$266:;
		PARAM$1 = NEXTPARAM$1;
		NUM$1 = NUM$1 + 1ll;
	}
	label$191:;
	goto label$189;
	label$190:;
	DWSTRASSIGN( &TEXT$1, (uint32*)0ull );
	if( *(tmp$28*)((uint8*)S$1 + 136ll) == (tmp$28)0ull ) goto label$269;
	{
		$9FB_ERRMSG ERRNUM$2;
		ERRNUM$2 = 0ll;
		if( *(tmp$29*)((uint8*)S$1 + 144ll) == (tmp$29)0ull ) goto label$271;
		{
			uint32* RES$3;
			uint32* vr$81 = (*(tmp$29*)((uint8*)S$1 + 144ll))( ARGTB$1, (int64*)&ERRNUM$2 );
			RES$3 = vr$81;
			if( ERRNUM$2 != 0ll ) goto label$273;
			{
				DWSTRASSIGN( &TEXT$1, (uint32*)RES$3 );
			}
			goto label$272;
			label$273:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$272:;
		}
		goto label$270;
		label$271:;
		{
			FBSTRING RES$3;
			FBSTRING* vr$84 = (*(tmp$28*)((uint8*)S$1 + 136ll))( ARGTB$1, (int64*)&ERRNUM$2 );
			fb_StrInit( (void*)&RES$3, -1ll, (void*)vr$84, -1ll, 0 );
			if( ERRNUM$2 != 0ll ) goto label$275;
			{
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&RES$3 );
			}
			goto label$274;
			label$275:;
			{
				HREPORTMACROERROR( S$1, ERRNUM$2 );
			}
			label$274:;
			fb_StrDelete( (FBSTRING*)&RES$3 );
		}
		label$270:;
	}
	goto label$268;
	label$269:;
	{
		if( ARGTB$1 == (struct $11LEXPP_ARGTB*)0ull ) goto label$277;
		{
			DT$1 = *(struct $9FB_DEFTOK**)((uint8*)S$1 + 112ll);
			label$278:;
			if( DT$1 == (struct $9FB_DEFTOK*)0ull ) goto label$279;
			{
				{
					uint64 TMP$121$5;
					TMP$121$5 = *(uint64*)DT$1;
					goto label$281;
					label$282:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint32*)0ull ) goto label$284;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)ARGTEXT$1 );
						}
						label$284:;
						label$283:;
					}
					goto label$280;
					label$285:;
					{
						ARGTEXT$1 = *(uint32**)((uint8*)ARGTB$1 + (*(int64*)((uint8*)DT$1 + 8ll) * 24ll));
						if( ARGTEXT$1 == (uint32*)0ull ) goto label$287;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"$\x00000022" );
							uint32* vr$96 = HREPLACEW( ARGTEXT$1, (uint32*)L"\x00000022", (uint32*)L"\x00000022\x00000022" );
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)vr$96 );
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022" );
						}
						goto label$286;
						label$287:;
						{
							DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x00000022\x00000022" );
						}
						label$286:;
					}
					goto label$280;
					label$288:;
					{
						DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)*(uint8**)((uint8*)DT$1 + 8ll) );
					}
					goto label$280;
					label$289:;
					{
						DWSTRCONCATASSIGN( &TEXT$1, (uint32*)*(uint32**)((uint8*)DT$1 + 8ll) );
					}
					goto label$280;
					label$281:;
					static const void* tmp$148[4ll] = {
						&&label$282,
						&&label$285,
						&&label$288,
						&&label$289,
					};
					if( TMP$121$5 > 3ull ) goto label$280;
					goto *tmp$148[TMP$121$5 - 0ull];
					label$280:;
				}
				DT$1 = *(struct $9FB_DEFTOK**)((uint8*)DT$1 + 24ll);
			}
			goto label$278;
			label$279:;
			label$290:;
			if( NUM$1 <= 0ll ) goto label$291;
			{
				NUM$1 = NUM$1 + -1ll;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)ARGTB$1 + (NUM$1 * 24ll)), (uint32*)0ull );
			}
			goto label$290;
			label$291:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PP$ + 320ll), (void*)ARGTB$1 );
		}
		label$277:;
		label$276:;
	}
	label$268:;
	if( READDCHAR$1 == -1ll ) goto label$293;
	{
		FBSTRING TMP$125$2;
		__builtin_memset( &TMP$125$2, 0, 24ll );
		FBSTRING* vr$106 = fb_CHR( 1, READDCHAR$1 );
		fb_StrAssign( (void*)&TMP$125$2, -1ll, (void*)vr$106, -1ll, 0 );
		DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$125$2 );
		fb_StrDelete( (FBSTRING*)&TMP$125$2 );
	}
	label$293:;
	label$292:;
	if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$295;
	{
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)*(uint32**)&TEXT$1 );
	}
	goto label$294;
	label$295:;
	{
		uint32* TMP$126$2;
		uint32* vr$113 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) );
		TMP$126$2 = vr$113;
		DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)TMP$126$2 );
		fb_WstrDelete( (uint32*)TMP$126$2 );
	}
	label$294:;
	*(int64*)((uint8*)&PP$ + 400ll) = *(int64*)((uint8*)&PP$ + 400ll) + -1ll;
	int64 vr$117 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
	fb$result$1 = vr$117;
	label$174:;
	return fb$result$1;
}

static int64 HLOADDEFINEW( struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$296:;
	static struct $8DWSTRING TEXT$1;
	int64 LGT$1;
	fb$result$1 = 0ll;
	if( *(int64*)((uint8*)S$1 + 96ll) <= 0ll ) goto label$299;
	{
		int64 vr$2 = HLOADMACROW( S$1 );
		LGT$1 = vr$2;
		if( LGT$1 != -1ll ) goto label$301;
		{
			goto label$297;
		}
		label$301:;
		label$300:;
	}
	goto label$298;
	label$299:;
	{
		if( *(tmp$27*)((uint8*)S$1 + 136ll) == (tmp$27)0ull ) goto label$303;
		{
			if( (*(int64*)((uint8*)S$1 + 128ll) & 1ll) == 0ll ) goto label$305;
			{
				FBSTRING TMP$127$4;
				FBSTRING TMP$128$4;
				FBSTRING TMP$129$4;
				__builtin_memset( &TMP$129$4, 0, 24ll );
				FBSTRING* vr$7 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				__builtin_memset( &TMP$127$4, 0, 24ll );
				FBSTRING* vr$11 = fb_StrConcat( &TMP$127$4, (void*)"$\x22", 3ll, (void*)vr$7, -1ll );
				__builtin_memset( &TMP$128$4, 0, 24ll );
				FBSTRING* vr$14 = fb_StrConcat( &TMP$128$4, (void*)vr$11, -1ll, (void*)"\x22", 2ll );
				fb_StrAssign( (void*)&TMP$129$4, -1ll, (void*)vr$14, -1ll, 0 );
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$129$4 );
				fb_StrDelete( (FBSTRING*)&TMP$129$4 );
			}
			goto label$304;
			label$305:;
			{
				FBSTRING TMP$130$4;
				__builtin_memset( &TMP$130$4, 0, 24ll );
				FBSTRING* vr$18 = (*(tmp$27*)((uint8*)S$1 + 136ll))(  );
				fb_StrAssign( (void*)&TMP$130$4, -1ll, (void*)vr$18, -1ll, 0 );
				DWSTRASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$130$4 );
				fb_StrDelete( (FBSTRING*)&TMP$130$4 );
			}
			label$304:;
			if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$307;
			{
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)*(uint32**)&TEXT$1 );
			}
			goto label$306;
			label$307:;
			{
				uint32* TMP$131$4;
				uint32* vr$26 = fb_WstrConcat( (uint32*)*(uint32**)&TEXT$1, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) );
				TMP$131$4 = vr$26;
				DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)TMP$131$4 );
				fb_WstrDelete( (uint32*)TMP$131$4 );
			}
			label$306:;
			int64 vr$29 = fb_WstrLen( (uint32*)*(uint32**)&TEXT$1 );
			LGT$1 = vr$29;
		}
		goto label$302;
		label$303:;
		{
			if( *(int64*)((uint8*)S$1 + 120ll) == 0ll ) goto label$309;
			{
				int64 HASPARENS$4;
				HASPARENS$4 = 0ll;
				int64 HASWHITESPACE$4;
				int64 vr$31 = LEXEATWHITESPACE(  );
				HASWHITESPACE$4 = vr$31;
				uint64 vr$32 = LEXCURRENTCHAR(  );
				if( vr$32 != 40ull ) goto label$311;
				{
					HASPARENS$4 = -1ll;
				}
				label$311:;
				label$310:;
				if( (*(int64*)((uint8*)S$1 + 128ll) & 8ll) == 0ll ) goto label$313;
				{
					if( HASPARENS$4 != 0ll ) goto label$315;
					{
						goto label$297;
					}
					label$315:;
					label$314:;
				}
				goto label$312;
				label$313:;
				{
					HASPARENS$4 = HASPARENS$4 & ~HASWHITESPACE$4;
				}
				label$312:;
				if( HASPARENS$4 == 0ll ) goto label$317;
				{
					LEXEATCHAR(  );
					LEXEATWHITESPACE(  );
					uint64 vr$37 = LEXCURRENTCHAR(  );
					if( vr$37 == 41ull ) goto label$319;
					{
						ERRREPORT( 7ll, 0ll, (uint8*)0ull );
					}
					goto label$318;
					label$319:;
					{
						LEXEATCHAR(  );
					}
					label$318:;
				}
				label$317:;
				label$316:;
			}
			label$309:;
			label$308:;
			if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) == 7ll ) goto label$321;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$323;
				{
					DWSTRASSIGNA( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint8*)*(uint8**)((uint8*)S$1 + 112ll) );
				}
				goto label$322;
				label$323:;
				{
					uint32* TMP$132$5;
					uint32* TMP$133$5;
					uint32* vr$46 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)S$1 + 112ll) );
					TMP$132$5 = vr$46;
					uint32* vr$47 = fb_WstrConcat( (uint32*)TMP$132$5, (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) );
					TMP$133$5 = vr$47;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)TMP$133$5 );
					fb_WstrDelete( (uint32*)TMP$133$5 );
					fb_WstrDelete( (uint32*)TMP$132$5 );
				}
				label$322:;
			}
			goto label$320;
			label$321:;
			{
				if( *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) != 0ll ) goto label$325;
				{
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)*(uint32**)((uint8*)S$1 + 112ll) );
				}
				goto label$324;
				label$325:;
				{
					uint32* TMP$134$5;
					uint32* vr$56 = fb_WstrConcat( (uint32*)*(uint32**)((uint8*)S$1 + 112ll), (uint32*)*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) );
					TMP$134$5 = vr$56;
					DWSTRASSIGN( (struct $8DWSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll), (uint32*)TMP$134$5 );
					fb_WstrDelete( (uint32*)TMP$134$5 );
				}
				label$324:;
			}
			label$320:;
			LGT$1 = *(int64*)((uint8*)S$1 + 80ll);
		}
		label$302:;
	}
	label$298:;
	*(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16808ll) = *(uint32**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16816ll);
	*(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) = *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16800ll) + LGT$1;
	fb$result$1 = -1ll;
	label$297:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HRTRIMMACROTEXT( struct $9FB_DEFTOK* TOKHEAD$1, struct $9FB_DEFTOK* TOKTAIL$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$336:;
	label$338:;
	if( TOKTAIL$1 == (struct $9FB_DEFTOK*)0ull ) goto label$339;
	{
		if( *(int64*)TOKTAIL$1 == 2ll ) goto label$341;
		{
			goto label$339;
		}
		label$341:;
		label$340:;
		{
			uint64 TMP$135$3;
			TMP$135$3 = (uint64)*(uint8*)*(uint8**)((uint8*)TOKTAIL$1 + 8ll);
			goto label$343;
			label$344:;
			{
				struct $9FB_DEFTOK* vr$5 = SYMBDELDEFINETOK( TOKTAIL$1 );
				TOKTAIL$1 = vr$5;
			}
			goto label$342;
			label$345:;
			{
				goto label$339;
			}
			goto label$342;
			label$343:;
			static const void* tmp$149[24ll] = {
				&&label$344,
				&&label$344,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$345,
				&&label$344,
			};
			if( (TMP$135$3 - 9ull) > 23ull ) goto label$345;
			goto *tmp$149[TMP$135$3 - 9ull];
			label$342:;
		}
	}
	goto label$338;
	label$339:;
	if( TOKTAIL$1 != (struct $9FB_DEFTOK*)0ull ) goto label$347;
	{
		fb$result$1 = (struct $9FB_DEFTOK*)0ull;
	}
	goto label$346;
	label$347:;
	{
		fb$result$1 = TOKHEAD$1;
	}
	label$346:;
	label$337:;
	return fb$result$1;
}

static struct $9FB_DEFTOK* HREADMACROTEXT( int64 ARGS$1, struct $11FB_DEFPARAM* PARAMHEAD$1, int64 ISMULTILINE$1 )
{
	struct $9FB_DEFTOK* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$348:;
	static uint8 ARG$1[129];
	struct $11FB_DEFPARAM* PARAM$1;
	struct $9FB_DEFTOK* TOKTAIL$1;
	TOKTAIL$1 = (struct $9FB_DEFTOK*)0ull;
	struct $9FB_DEFTOK* TOKHEAD$1;
	TOKHEAD$1 = (struct $9FB_DEFTOK*)0ull;
	int64 ADDQUOTES$1;
	int64 NESTEDCNT$1;
	NESTEDCNT$1 = 0ll;
	label$350:;
	{
		ADDQUOTES$1 = 0ll;
		{
			uint64 TMP$136$3;
			int64 vr$1 = LEXGETTOKEN( 62ll );
			TMP$136$3 = (uint64)vr$1;
			goto label$354;
			label$355:;
			{
				if( ISMULTILINE$1 == 0ll ) goto label$357;
				{
					ERRREPORT( 134ll, 0ll, (uint8*)0ull );
				}
				label$357:;
				label$356:;
				goto label$351;
			}
			goto label$353;
			label$358:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$360;
				{
					goto label$351;
				}
				label$360:;
				label$359:;
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0ull ) goto label$362;
				{
					struct $9FB_DEFTOK* vr$2 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$2;
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)"\x0A" );
				}
				label$362:;
				label$361:;
				LEXSKIPTOKEN( 62ll );
				goto label$352;
			}
			goto label$353;
			label$363:;
			{
				if( ISMULTILINE$1 != 0ll ) goto label$365;
				{
					goto label$351;
				}
				label$365:;
				label$364:;
				label$366:;
				{
					LEXSKIPTOKEN( 62ll );
					{
						int64 TMP$138$6;
						int64 vr$5 = LEXGETTOKEN( 62ll );
						TMP$138$6 = vr$5;
						if( TMP$138$6 == 257ll ) goto label$371;
						label$372:;
						if( TMP$138$6 != 256ll ) goto label$370;
						label$371:;
						{
							goto label$367;
						}
						label$370:;
						label$369:;
					}
				}
				label$368:;
				goto label$366;
				label$367:;
				goto label$352;
			}
			goto label$353;
			label$373:;
			{
				{
					int64 TMP$139$5;
					int64 vr$6 = LEXGETLOOKAHEAD( 1ll, 314ll );
					TMP$139$5 = vr$6;
					if( TMP$139$5 != 35ll ) goto label$375;
					label$376:;
					{
						LEXSKIPTOKEN( 62ll );
						LEXSKIPTOKEN( 63ll );
						goto label$352;
					}
					goto label$374;
					label$375:;
					if( TMP$139$5 != 274ll ) goto label$377;
					label$378:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$380;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1ll;
						}
						label$380:;
						label$379:;
					}
					goto label$374;
					label$377:;
					if( TMP$139$5 != 275ll ) goto label$381;
					label$382:;
					{
						if( ISMULTILINE$1 == 0ll ) goto label$384;
						{
							if( NESTEDCNT$1 != 0ll ) goto label$386;
							{
								LEXSKIPTOKEN( 62ll );
								LEXSKIPTOKEN( 0ll );
								struct $9FB_DEFTOK* vr$8 = HRTRIMMACROTEXT( TOKHEAD$1, TOKTAIL$1 );
								TOKHEAD$1 = vr$8;
								goto label$351;
							}
							label$386:;
							label$385:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1ll;
						}
						label$384:;
						label$383:;
					}
					goto label$374;
					label$381:;
					if( TMP$139$5 != 265ll ) goto label$387;
					label$388:;
					{
						LEXSKIPTOKEN( 62ll );
						ADDQUOTES$1 = -1ll;
					}
					label$387:;
					label$374:;
				}
			}
			goto label$353;
			label$389:;
			{
				if( TOKHEAD$1 == (struct $9FB_DEFTOK*)0ull ) goto label$391;
				{
					struct $9FB_DEFTOK* vr$10 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$10;
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)" " );
				}
				label$391:;
				label$390:;
				LEXSKIPTOKEN( 62ll );
				goto label$352;
			}
			goto label$353;
			label$354:;
			static const void* tmp$150[252ll] = {
				&&label$389,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$389,
				&&label$353,
				&&label$353,
				&&label$373,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$353,
				&&label$355,
				&&label$358,
				&&label$353,
				&&label$363,
				&&label$363,
			};
			if( (TMP$136$3 - 9ull) > 251ull ) goto label$353;
			goto *tmp$150[TMP$136$3 - 9ull];
			label$353:;
		}
		{
			uint64 TMP$141$3;
			int64 vr$13 = LEXGETCLASS( 62ll );
			TMP$141$3 = (uint64)vr$13;
			goto label$393;
			label$394:;
			{
				if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$396;
				{
					struct $9FB_DEFTOK* vr$14 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
					TOKTAIL$1 = vr$14;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$398;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$398:;
					label$397:;
					uint8* vr$15 = LEXGETTEXT(  );
					ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$15 );
				}
				goto label$395;
				label$396:;
				{
					struct $9FB_DEFTOK* vr$18 = SYMBADDDEFINETOK( TOKTAIL$1, 3ll );
					TOKTAIL$1 = vr$18;
					if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$400;
					{
						TOKHEAD$1 = TOKTAIL$1;
					}
					label$400:;
					label$399:;
					WSTRASSIGN( (uint32**)((uint8*)TOKTAIL$1 + 8ll), (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16712ll) + 24ll) );
				}
				label$395:;
				LEXSKIPTOKEN( 62ll );
			}
			goto label$392;
			label$401:;
			{
				struct $9FB_DEFTOK* vr$24 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
				TOKTAIL$1 = vr$24;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$403;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$403:;
				label$402:;
				uint8* vr$25 = LEXGETTEXT(  );
				FBSTRING* vr$26 = fb_StrAllocTempDescZ( (uint8*)vr$25 );
				FBSTRING* vr$27 = fb_StrUcase2( (FBSTRING*)vr$26, 0 );
				fb_StrAssign( (void*)ARG$1, 129ll, (void*)vr$27, -1ll, 0 );
				void* vr$29 = HASHLOOKUP( (struct $5THASH*)((uint8*)&SYMB$ + 197504ll), (uint8*)ARG$1 );
				PARAM$1 = (struct $11FB_DEFPARAM*)vr$29;
				if( PARAM$1 == (struct $11FB_DEFPARAM*)0ull ) goto label$405;
				{
					if( ADDQUOTES$1 != 0ll ) goto label$407;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 0ll;
					}
					goto label$406;
					label$407:;
					{
						*($14FB_DEFTOK_TYPE*)TOKTAIL$1 = 1ll;
					}
					label$406:;
					*(int64*)((uint8*)TOKTAIL$1 + 8ll) = *(int64*)((uint8*)PARAM$1 + 8ll);
				}
				goto label$404;
				label$405:;
				{
					if( ADDQUOTES$1 == 0ll ) goto label$409;
					{
						ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), (uint8*)"#" );
						uint8* vr$36 = LEXGETTEXT(  );
						ZSTRCONCATASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$36 );
					}
					goto label$408;
					label$409:;
					{
						uint8* vr$39 = LEXGETTEXT(  );
						ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$39 );
					}
					label$408:;
				}
				label$404:;
				LEXSKIPTOKEN( 62ll );
			}
			goto label$392;
			label$410:;
			{
				struct $9FB_DEFTOK* vr$42 = SYMBADDDEFINETOK( TOKTAIL$1, 2ll );
				TOKTAIL$1 = vr$42;
				if( TOKHEAD$1 != (struct $9FB_DEFTOK*)0ull ) goto label$412;
				{
					TOKHEAD$1 = TOKTAIL$1;
				}
				label$412:;
				label$411:;
				uint8* vr$43 = LEXGETTEXT(  );
				ZSTRASSIGN( (uint8**)((uint8*)TOKTAIL$1 + 8ll), vr$43 );
				LEXSKIPTOKEN( 62ll );
			}
			goto label$392;
			label$393:;
			static const void* tmp$151[5ll] = {
				&&label$401,
				&&label$401,
				&&label$401,
				&&label$410,
				&&label$394,
			};
			if( TMP$141$3 > 4ull ) goto label$410;
			goto *tmp$151[TMP$141$3 - 0ull];
			label$392:;
		}
	}
	label$352:;
	goto label$350;
	label$351:;
	fb$result$1 = TOKHEAD$1;
	label$349:;
	return fb$result$1;
}

static void HREADDEFINETEXT( struct $8FBSYMBOL* SYM$1, uint8* DEFNAME$1, int64 ISARGLESS$1, int64 ISMULTILINE$1, int64 FLAGS$1 )
{
	label$413:;
	uint8* TEXT$1;
	uint32* TEXTW$1;
	if( *(int64*)((uint8*)&ENV$ + 888ll) != 0ll ) goto label$416;
	{
		uint8* vr$0 = PPREADLITERAL( ISMULTILINE$1 );
		TEXT$1 = vr$0;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$418;
		{
			if( ((int64)-(*(int64*)((uint8*)SYM$1 + 96ll) > 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 4ll)) == 0ll ) goto label$420;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			goto label$419;
			label$420:;
			int32 vr$8 = fb_StrCompare( *(void**)((uint8*)SYM$1 + 112ll), 0ll, (void*)TEXT$1, 0ll );
			if( (int64)vr$8 == 0ll ) goto label$421;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			label$421:;
			label$419:;
		}
		goto label$417;
		label$418:;
		{
			int64 vr$10 = fb_StrLen( (void*)TEXT$1, 0ll );
			SYMBADDDEFINE( (uint8*)DEFNAME$1, TEXT$1, vr$10, ISARGLESS$1, (tmp$27)0ull, FLAGS$1 );
		}
		label$417:;
	}
	goto label$415;
	label$416:;
	{
		uint32* vr$11 = PPREADLITERALW( ISMULTILINE$1 );
		TEXTW$1 = vr$11;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$423;
		{
			if( ((int64)-(*(int64*)((uint8*)SYM$1 + 96ll) > 0ll) | (int64)-((*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 7ll)) == 0ll ) goto label$425;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			goto label$424;
			label$425:;
			int32 vr$19 = fb_WstrCompare( (uint32*)*(uint32**)((uint8*)SYM$1 + 112ll), (uint32*)TEXTW$1 );
			if( (int64)vr$19 == 0ll ) goto label$426;
			{
				ERRREPORTEX( 4ll, (uint8*)DEFNAME$1, 0ll, 1ll, (uint8*)0ull );
			}
			label$426:;
			label$424:;
		}
		goto label$422;
		label$423:;
		{
			int64 vr$21 = fb_WstrLen( (uint32*)TEXTW$1 );
			SYMBADDDEFINEW( DEFNAME$1, TEXTW$1, vr$21, ISARGLESS$1, (tmp$27)0ull, FLAGS$1 );
		}
		label$422:;
	}
	label$415:;
	label$414:;
}

static int64 HMATCHPARAMELLIPSIS( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$427:;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 34ll );
	if( vr$1 != 46ll ) goto label$430;
	{
		int64 vr$2 = LEXGETLOOKAHEAD( 1ll, 34ll );
		if( vr$2 != 46ll ) goto label$432;
		{
			int64 vr$3 = LEXGETLOOKAHEAD( 2ll, 34ll );
			if( vr$3 != 46ll ) goto label$434;
			{
				LEXSKIPTOKEN( 34ll );
				LEXSKIPTOKEN( 34ll );
				LEXSKIPTOKEN( 34ll );
				fb$result$1 = -1ll;
			}
			label$434:;
			label$433:;
		}
		label$432:;
		label$431:;
	}
	label$430:;
	label$429:;
	label$428:;
	return fb$result$1;
}
