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
struct $8HASHITEM;
struct $8HASHITEM {
	uint8* NAME;
	void* DATA;
	struct $8HASHITEM* PREV;
	struct $8HASHITEM* NEXT;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $15ASMKEYWORDSINFO {
	int64 INITED;
	struct $5THASH HASH;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15ASMKEYWORDSINFO ) == 96 );
void* calloc( uint64, uint64 );
void free( void* );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_WstrAssignToA( void*, int64, uint32*, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
uint32* fb_WstrConcatAW( void*, int64, uint32* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__parserzinlineasm( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void* LISTGETHEAD( struct $5TLIST* );
void* LISTGETNEXT( void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
void* HASHLOOKUP( struct $5THASH*, uint8* );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
int64 FBGETCPUFAMILY( void );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLIT( uint8* );
struct $9ASTASMTOK* ASTASMAPPENDTEXT( struct $9ASTASMTOK*, uint8* );
struct $9ASTASMTOK* ASTASMAPPENDSYMB( struct $9ASTASMTOK*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWASM( struct $9ASTASMTOK* );
struct $7ASTNODE* ASTNEWDBG( int64, int64, uint8* );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
FBSTRING* SYMBGETCONSTVALUEASSTR( struct $8FBSYMBOL* );
void DZSTRRESET( struct $8DZSTRING* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 PARSERISGLOBALASMKEYWORD( uint8* );
int64 CCOMMENT( $8LEXCHECK );
int64 CSTMTSEPARATOR( $8LEXCHECK );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
typedef int64 $15FB_CMPSTMT_MASK;
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
typedef int64 $8FB_TOKEN;
struct $7ASTNODE* CTYPECONVEXPR( $8FB_TOKEN, int64 );
struct $7ASTNODE* CSTRLITERAL( int64 );
struct $7ASTNODE* CNUMLITERAL( int64 );
struct $7ASTNODE* CMATHFUNCT( $8FB_TOKEN, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
void HSKIPCOMPOUND( int64, int64, $8LEXCHECK );
static void HINITINLINEASMKEYWORDS( void );
static void HINITGLOBALASMKEYWORDS( void );
static void HASMKEYWORDSEND( struct $15ASMKEYWORDSINFO* );
static int64 HISINLINEASMKEYWORD( uint8* );
static void HADDASMKEYWORD( struct $15ASMKEYWORDSINFO*, uint8* );
void CASMCODE( void );
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
static uint8* INLINEASMKEYWORDSX86$[556] = { (uint8*)"byte", (uint8*)"ptr", (uint8*)"offset", (uint8*)"aaa", (uint8*)"aad", (uint8*)"aam", (uint8*)"aas", (uint8*)"adc", (uint8*)"add", (uint8*)"addpd", (uint8*)"addps", (uint8*)"addsd", (uint8*)"addss", (uint8*)"and", (uint8*)"andpd", (uint8*)"andps", (uint8*)"andnpd", (uint8*)"andnps", (uint8*)"arpl", (uint8*)"bound", (uint8*)"bsf", (uint8*)"bsr", (uint8*)"bswap", (uint8*)"bt", (uint8*)"btc", (uint8*)"btr", (uint8*)"bts", (uint8*)"call", (uint8*)"cbw", (uint8*)"cwde", (uint8*)"cdq", (uint8*)"clc", (uint8*)"cld", (uint8*)"clflush", (uint8*)"cli", (uint8*)"clts", (uint8*)"cmc", (uint8*)"cmova", (uint8*)"cmovae", (uint8*)"cmovb", (uint8*)"cmovbe", (uint8*)"cmovc", (uint8*)"cmove", (uint8*)"cmovg", (uint8*)"cmovge", (uint8*)"cmovl", (uint8*)"cmovle", (uint8*)"cmovna", (uint8*)"cmovnae", (uint8*)"cmovnb", (uint8*)"cmovnbe", (uint8*)"cmovnc", (uint8*)"cmovne", (uint8*)"cmovng", (uint8*)"cmovnge", (uint8*)"cmovnl", (uint8*)"cmovnle", (uint8*)"cmovno", (uint8*)"cmovnp", (uint8*)"cmovns", (uint8*)"cmovnz", (uint8*)"cmovo", (uint8*)"cmovp", (uint8*)"cmovpe", (uint8*)"cmovpe", (uint8*)"cmovpo", (uint8*)"cmovs", (uint8*)"cmovz", (uint8*)"cmp", (uint8*)"cmppd", (uint8*)"cmpps", (uint8*)"cmps", (uint8*)"cmpsb", (uint8*)"cmpsw", (uint8*)"cmpsd", (uint8*)"cmpss", (uint8*)"cmpxchg", (uint8*)"cmpxchg8b", (uint8*)"comisd", (uint8*)"comiss", (uint8*)"cpuid", (uint8*)"cvtdq2pd", (uint8*)"cvtdq2ps", (uint8*)"cvtpd2dq", (uint8*)"cvtpd2pi", (uint8*)"cvtpd2ps", (uint8*)"cvtpi2pd", (uint8*)"cvtpi2ps", (uint8*)"cvtps2dq", (uint8*)"cvtps2pd", (uint8*)"cvtps2pi", (uint8*)"cvtsd2si", (uint8*)"cvtsd2ss", (uint8*)"cvtsi2sd", (uint8*)"cvtsi2ss", (uint8*)"cvtss2sd", (uint8*)"cvtss2si", (uint8*)"cvttpd2pi", (uint8*)"cvttpd2dq", (uint8*)"cvttps2dq", (uint8*)"cvttps2pi", (uint8*)"cvttsd2si", (uint8*)"cvttss2si", (uint8*)"cwd", (uint8*)"daa", (uint8*)"das", (uint8*)"dec", (uint8*)"div", (uint8*)"divpd", (uint8*)"divps", (uint8*)"divss", (uint8*)"emms", (uint8*)"enter", (uint8*)"f2xm1", (uint8*)"fabs", (uint8*)"fadd", (uint8*)"faddp", (uint8*)"fiadd", (uint8*)"fbld", (uint8*)"fbstp", (uint8*)"fchs", (uint8*)"fclex", (uint8*)"fnclex", (uint8*)"fcmovb", (uint8*)"fcmove", (uint8*)"fcmovbe", (uint8*)"fcmovu", (uint8*)"fcmovnb", (uint8*)"fcmovne", (uint8*)"fcmovnbe", (uint8*)"fcmovnu", (uint8*)"fcom", (uint8*)"fcomp", (uint8*)"fcompp", (uint8*)"fcomi", (uint8*)"fcomip", (uint8*)"fucomi", (uint8*)"fucomip", (uint8*)"fcos", (uint8*)"fdecstp", (uint8*)"fdiv", (uint8*)"fdivp", (uint8*)"fidiv", (uint8*)"fdivr", (uint8*)"fdivrp", (uint8*)"fidivr", (uint8*)"ffree", (uint8*)"ficom", (uint8*)"ficomp", (uint8*)"fild", (uint8*)"fincstp", (uint8*)"finit", (uint8*)"fninit", (uint8*)"fist", (uint8*)"fistp", (uint8*)"fld", (uint8*)"fld1", (uint8*)"fldl2t", (uint8*)"fldl2e", (uint8*)"fldpi", (uint8*)"fldlg2", (uint8*)"fldln2", (uint8*)"fldz", (uint8*)"fldcw", (uint8*)"fldenv", (uint8*)"fmul", (uint8*)"fmulp", (uint8*)"fimul", (uint8*)"fnop", (uint8*)"fpatan", (uint8*)"fprem", (uint8*)"fprem1", (uint8*)"fptan", (uint8*)"frndint", (uint8*)"frstor", (uint8*)"fsave", (uint8*)"fnsave", (uint8*)"fscale", (uint8*)"fsin", (uint8*)"fsincos", (uint8*)"fsqrt", (uint8*)"fst", (uint8*)"fstp", (uint8*)"fstcw", (uint8*)"fnstcw", (uint8*)"fstenv", (uint8*)"fnstenv", (uint8*)"fstsw", (uint8*)"fnstsw", (uint8*)"fsub", (uint8*)"fsubp", (uint8*)"fisub", (uint8*)"fsubr", (uint8*)"fsubrp", (uint8*)"fisubr", (uint8*)"ftst", (uint8*)"fucom", (uint8*)"fucomp", (uint8*)"fucompp", (uint8*)"fwait", (uint8*)"fxam", (uint8*)"fxch", (uint8*)"fxrstor", (uint8*)"fxsave", (uint8*)"fxtract", (uint8*)"fyl2x", (uint8*)"fyl2xp1", (uint8*)"hlt", (uint8*)"idiv", (uint8*)"imul", (uint8*)"in", (uint8*)"inc", (uint8*)"ins", (uint8*)"insb", (uint8*)"insw", (uint8*)"insd", (uint8*)"int", (uint8*)"into", (uint8*)"invd", (uint8*)"invlpg", (uint8*)"iret", (uint8*)"iretd", (uint8*)"ja", (uint8*)"jae", (uint8*)"jb", (uint8*)"jbe", (uint8*)"jc", (uint8*)"jcxz", (uint8*)"jecxz", (uint8*)"je", (uint8*)"jg", (uint8*)"jge", (uint8*)"jl", (uint8*)"jle", (uint8*)"jna", (uint8*)"jnae", (uint8*)"jnb", (uint8*)"jnbe", (uint8*)"jnc", (uint8*)"jne", (uint8*)"jng", (uint8*)"jnge", (uint8*)"jnl", (uint8*)"jnle", (uint8*)"jno", (uint8*)"jnp", (uint8*)"jns", (uint8*)"jnz", (uint8*)"jo", (uint8*)"jp", (uint8*)"jpe", (uint8*)"jpo", (uint8*)"js", (uint8*)"jz", (uint8*)"jmp", (uint8*)"lahf", (uint8*)"lar", (uint8*)"ldmxcsr", (uint8*)"lds", (uint8*)"les", (uint8*)"lfs", (uint8*)"lgs", (uint8*)"lss", (uint8*)"lea", (uint8*)"leave", (uint8*)"lfence", (uint8*)"lgdt", (uint8*)"lidt", (uint8*)"lldt", (uint8*)"lmsw", (uint8*)"lock", (uint8*)"lods", (uint8*)"lodsb", (uint8*)"lodsw", (uint8*)"lodsd", (uint8*)"loop", (uint8*)"loope", (uint8*)"loopz", (uint8*)"loopne", (uint8*)"loopnz", (uint8*)"lsl", (uint8*)"ltr", (uint8*)"maskmovdqu", (uint8*)"maskmovq", (uint8*)"maxpd", (uint8*)"maxps", (uint8*)"maxsd", (uint8*)"maxss", (uint8*)"mfence", (uint8*)"minpd", (uint8*)"minps", (uint8*)"minsd", (uint8*)"minss", (uint8*)"mov", (uint8*)"movapd", (uint8*)"movaps", (uint8*)"movd", (uint8*)"movdqa", (uint8*)"movdqu", (uint8*)"movdq2q", (uint8*)"movhlps", (uint8*)"movhpd", (uint8*)"movhps", (uint8*)"movlhps", (uint8*)"movlpd", (uint8*)"movlps", (uint8*)"movmskpd", (uint8*)"movmskps", (uint8*)"movntdq", (uint8*)"movnti", (uint8*)"movntpd", (uint8*)"movntps", (uint8*)"movntq", (uint8*)"movq", (uint8*)"movq2dq", (uint8*)"movs", (uint8*)"movsb", (uint8*)"movsw", (uint8*)"movsd", (uint8*)"movss", (uint8*)"movsx", (uint8*)"movupd", (uint8*)"movups", (uint8*)"movzx", (uint8*)"mul", (uint8*)"mulpd", (uint8*)"mulps", (uint8*)"mulsd", (uint8*)"mulss", (uint8*)"neg", (uint8*)"nop", (uint8*)"not", (uint8*)"or", (uint8*)"orpd", (uint8*)"orps", (uint8*)"out", (uint8*)"outs", (uint8*)"outsb", (uint8*)"outsw", (uint8*)"outsd", (uint8*)"packsswb", (uint8*)"packssdw", (uint8*)"packuswb", (uint8*)"paddb", (uint8*)"paddw", (uint8*)"paddd", (uint8*)"paddq", (uint8*)"paddsb", (uint8*)"paddsw", (uint8*)"paddusb", (uint8*)"paddusw", (uint8*)"pand", (uint8*)"pandn", (uint8*)"pause", (uint8*)"pavgb", (uint8*)"pavgw", (uint8*)"pcmpeqb", (uint8*)"pcmpeqw", (uint8*)"pcmpeqd", (uint8*)"pcmpgtb", (uint8*)"pcmpgtw", (uint8*)"pcmpgtd", (uint8*)"pextrw", (uint8*)"pinsrw", (uint8*)"pmaddwd", (uint8*)"pmaxsw", (uint8*)"pmaxub", (uint8*)"pminsw", (uint8*)"pminub", (uint8*)"pmovmskb", (uint8*)"pmulhuv", (uint8*)"pmulhw", (uint8*)"pmullw", (uint8*)"pmuludq", (uint8*)"pop", (uint8*)"popa", (uint8*)"popad", (uint8*)"popf", (uint8*)"popfd", (uint8*)"por", (uint8*)"prefetcht0", (uint8*)"prefetcht1", (uint8*)"prefetcht2", (uint8*)"prefetchnta", (uint8*)"psadbw", (uint8*)"pshufd", (uint8*)"pshufhw", (uint8*)"pshuflw", (uint8*)"pshufw", (uint8*)"psllw", (uint8*)"pslld", (uint8*)"psllq", (uint8*)"psraw", (uint8*)"psrad", (uint8*)"psrldq", (uint8*)"psrlw", (uint8*)"psrld", (uint8*)"psrlq", (uint8*)"psubb", (uint8*)"psubw", (uint8*)"psubd", (uint8*)"psubq", (uint8*)"psubsb", (uint8*)"psubsw", (uint8*)"psubusb", (uint8*)"psubusw", (uint8*)"punpckhbw", (uint8*)"punpckhwd", (uint8*)"punpckhdq", (uint8*)"punpckhqdq", (uint8*)"punpcklbw", (uint8*)"punpcklwd", (uint8*)"punpckldq", (uint8*)"punpcklqdq", (uint8*)"push", (uint8*)"pusha", (uint8*)"pushad", (uint8*)"pushf", (uint8*)"pushfd", (uint8*)"pxor", (uint8*)"rcl", (uint8*)"rcr", (uint8*)"rol", (uint8*)"ror", (uint8*)"rcpps", (uint8*)"rcpss", (uint8*)"rdmsr", (uint8*)"rdpmc", (uint8*)"rdtsc", (uint8*)"rep", (uint8*)"repe", (uint8*)"repz", (uint8*)"repne", (uint8*)"repnz", (uint8*)"ret", (uint8*)"rsm", (uint8*)"rsqrtps", (uint8*)"rsqrtss", (uint8*)"sahf", (uint8*)"sal", (uint8*)"sar", (uint8*)"shl", (uint8*)"shr", (uint8*)"sbb", (uint8*)"scas", (uint8*)"scasb", (uint8*)"scasw", (uint8*)"scasd", (uint8*)"seta", (uint8*)"setae", (uint8*)"setb", (uint8*)"setbe", (uint8*)"setc", (uint8*)"sete", (uint8*)"setg", (uint8*)"setge", (uint8*)"setl", (uint8*)"setle", (uint8*)"setna", (uint8*)"setnae", (uint8*)"setnb", (uint8*)"setnbe", (uint8*)"setnc", (uint8*)"setne", (uint8*)"setng", (uint8*)"setnge", (uint8*)"setnl", (uint8*)"setnle", (uint8*)"setno", (uint8*)"setnp", (uint8*)"setns", (uint8*)"setnz", (uint8*)"seto", (uint8*)"setp", (uint8*)"setpe", (uint8*)"setpo", (uint8*)"sets", (uint8*)"setz", (uint8*)"sfence", (uint8*)"sgdt", (uint8*)"sidt", (uint8*)"shld", (uint8*)"shrd", (uint8*)"shufpd", (uint8*)"shufps", (uint8*)"sldt", (uint8*)"smsw", (uint8*)"sqrtpd", (uint8*)"sqrtps", (uint8*)"sqrtsd", (uint8*)"sqrtss", (uint8*)"stc", (uint8*)"std", (uint8*)"sti", (uint8*)"stmxcsr", (uint8*)"stos", (uint8*)"stosb", (uint8*)"stosw", (uint8*)"stosd", (uint8*)"str", (uint8*)"sub", (uint8*)"subpd", (uint8*)"subps", (uint8*)"subsd", (uint8*)"subss", (uint8*)"sysenter", (uint8*)"sysexit", (uint8*)"test", (uint8*)"ucomisd", (uint8*)"ucomiss", (uint8*)"ud2", (uint8*)"unpckhpd", (uint8*)"unpckhps", (uint8*)"unpcklpd", (uint8*)"unpcklps", (uint8*)"verr", (uint8*)"verw", (uint8*)"wait", (uint8*)"wbinvd", (uint8*)"wrmsr", (uint8*)"xadd", (uint8*)"xchg", (uint8*)"xlat", (uint8*)"xlatb", (uint8*)"xor", (uint8*)"xorpd", (uint8*)"xorps", (uint8*)"pavgusb", (uint8*)"pfadd", (uint8*)"pfsub", (uint8*)"pfsubr", (uint8*)"pfacc", (uint8*)"pfcmpge", (uint8*)"pfcmpgt", (uint8*)"pfcmpeq", (uint8*)"pfmin", (uint8*)"pfmax", (uint8*)"pi2fw", (uint8*)"pi2fd", (uint8*)"pf2iw", (uint8*)"pf2id", (uint8*)"pfrcp", (uint8*)"pfrsqrt", (uint8*)"pfmul", (uint8*)"pfrcpit1", (uint8*)"pfrsqit1", (uint8*)"pfrcpit2", (uint8*)"pmulhrw", (uint8*)"pswapw", (uint8*)"femms", (uint8*)"prefetch", (uint8*)"prefetchw", (uint8*)"pfnacc", (uint8*)"pfpnacc", (uint8*)"pswapd", (uint8*)"pmulhuw" };
static uint8* GLOBALASMKEYWORDSX86$[177] = { (uint8*)"dl", (uint8*)"di", (uint8*)"si", (uint8*)"cl", (uint8*)"bl", (uint8*)"al", (uint8*)"bp", (uint8*)"sp", (uint8*)"dx", (uint8*)"cx", (uint8*)"bx", (uint8*)"ax", (uint8*)"edx", (uint8*)"edi", (uint8*)"esi", (uint8*)"ecx", (uint8*)"ebx", (uint8*)"eax", (uint8*)"ebp", (uint8*)"esp", (uint8*)"st", (uint8*)"cs", (uint8*)"ds", (uint8*)"es", (uint8*)"fs", (uint8*)"gs", (uint8*)"ss", (uint8*)"mm0", (uint8*)"mm1", (uint8*)"mm2", (uint8*)"mm3", (uint8*)"mm4", (uint8*)"mm5", (uint8*)"mm6", (uint8*)"mm7", (uint8*)"xmm0", (uint8*)"xmm1", (uint8*)"xmm2", (uint8*)"xmm3", (uint8*)"xmm4", (uint8*)"xmm5", (uint8*)"xmm6", (uint8*)"xmm7", (uint8*)"xmm8", (uint8*)"xmm9", (uint8*)"xmm10", (uint8*)"xmm11", (uint8*)"xmm12", (uint8*)"xmm13", (uint8*)"xmm14", (uint8*)"xmm15", (uint8*)"word", (uint8*)"dword", (uint8*)"qword", (uint8*)"fword", (uint8*)"mmword", (uint8*)"oword", (uint8*)"r8", (uint8*)"r9", (uint8*)"r10", (uint8*)"r11", (uint8*)"r12", (uint8*)"r13", (uint8*)"r14", (uint8*)"r15", (uint8*)"r8w", (uint8*)"r9w", (uint8*)"r10w", (uint8*)"r11w", (uint8*)"r12w", (uint8*)"r13w", (uint8*)"r14w", (uint8*)"r15w", (uint8*)"rax", (uint8*)"rbp", (uint8*)"rbx", (uint8*)"rcx", (uint8*)"rdi", (uint8*)"rdx", (uint8*)"rsi", (uint8*)"rsp", (uint8*)"tbyte", (uint8*)"xmmword", (uint8*)"ymmword", (uint8*)"zmmword", (uint8*)"ah", (uint8*)"axl", (uint8*)"bh", (uint8*)"bpl", (uint8*)"bxl", (uint8*)"ch", (uint8*)"cxl", (uint8*)"dh", (uint8*)"dil", (uint8*)"dr0", (uint8*)"dr1", (uint8*)"dr2", (uint8*)"dr3", (uint8*)"dr4", (uint8*)"dr5", (uint8*)"dr6", (uint8*)"dr7", (uint8*)"dxl", (uint8*)"eip", (uint8*)"eq", (uint8*)"ge", (uint8*)"gt", (uint8*)"le", (uint8*)"lt", (uint8*)"ne", (uint8*)"r8b", (uint8*)"r9b", (uint8*)"r10b", (uint8*)"r11b", (uint8*)"r12b", (uint8*)"r13b", (uint8*)"r14b", (uint8*)"r15b", (uint8*)"r8d", (uint8*)"r9d", (uint8*)"r10d", (uint8*)"r11d", (uint8*)"r12d", (uint8*)"r13d", (uint8*)"r14d", (uint8*)"r15d", (uint8*)"rip", (uint8*)"sil", (uint8*)"spl", (uint8*)"ymm0", (uint8*)"ymm1", (uint8*)"ymm2", (uint8*)"ymm3", (uint8*)"ymm4", (uint8*)"ymm5", (uint8*)"ymm6", (uint8*)"ymm7", (uint8*)"ymm8", (uint8*)"ymm9", (uint8*)"ymm10", (uint8*)"ymm11", (uint8*)"ymm12", (uint8*)"ymm13", (uint8*)"ymm14", (uint8*)"ymm15", (uint8*)"zmm0", (uint8*)"zmm1", (uint8*)"zmm2", (uint8*)"zmm3", (uint8*)"zmm4", (uint8*)"zmm5", (uint8*)"zmm6", (uint8*)"zmm7", (uint8*)"zmm8", (uint8*)"zmm9", (uint8*)"zmm10", (uint8*)"zmm11", (uint8*)"zmm12", (uint8*)"zmm13", (uint8*)"zmm14", (uint8*)"zmm15", (uint8*)"zmm16", (uint8*)"zmm17", (uint8*)"zmm18", (uint8*)"zmm19", (uint8*)"zmm20", (uint8*)"zmm21", (uint8*)"zmm22", (uint8*)"zmm23", (uint8*)"zmm24", (uint8*)"zmm25", (uint8*)"zmm26", (uint8*)"zmm27", (uint8*)"zmm28", (uint8*)"zmm29", (uint8*)"zmm30", (uint8*)"zmm31" };
static struct $15ASMKEYWORDSINFO INLINEASMKEYWORDS$;
static struct $15ASMKEYWORDSINFO GLOBALASMKEYWORDS$;

int64 PARSERINLINEASMADDKEYWORD( uint8* ID$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$44:;
	static uint8 TEXT$1[1025];
	FBSTRING* vr$1 = fb_StrAllocTempDescZ( ID$1 );
	FBSTRING* vr$2 = fb_StrLcase2( (FBSTRING*)vr$1, 0 );
	fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$2, -1ll, 0 );
	HINITINLINEASMKEYWORDS(  );
	int64 vr$3 = HISINLINEASMKEYWORD( (uint8*)TEXT$1 );
	if( vr$3 == 0ll ) goto label$47;
	{
		fb$result$1 = 0ll;
		goto label$45;
	}
	label$47:;
	label$46:;
	HADDASMKEYWORD( &INLINEASMKEYWORDS$, (uint8*)TEXT$1 );
	fb$result$1 = -1ll;
	goto label$45;
	label$45:;
	return fb$result$1;
}

int64 PARSERGLOBALASMADDKEYWORD( uint8* ID$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$48:;
	static uint8 TEXT$1[1025];
	FBSTRING* vr$1 = fb_StrAllocTempDescZ( ID$1 );
	FBSTRING* vr$2 = fb_StrLcase2( (FBSTRING*)vr$1, 0 );
	fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$2, -1ll, 0 );
	int64 vr$3 = PARSERISGLOBALASMKEYWORD( (uint8*)TEXT$1 );
	if( vr$3 == 0ll ) goto label$51;
	{
		fb$result$1 = 0ll;
		goto label$49;
	}
	label$51:;
	label$50:;
	HADDASMKEYWORD( &GLOBALASMKEYWORDS$, (uint8*)TEXT$1 );
	fb$result$1 = -1ll;
	goto label$49;
	label$49:;
	return fb$result$1;
}

int64 PARSERISGLOBALASMKEYWORD( uint8* ID$1 )
{
	FBSTRING TMP$827$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$52:;
	__builtin_memset( &TMP$827$1, 0, 24ll );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( ID$1 );
	FBSTRING* vr$3 = fb_StrLcase2( (FBSTRING*)vr$2, 0 );
	fb_StrAssign( (void*)&TMP$827$1, -1ll, (void*)vr$3, -1ll, 0 );
	void* vr$6 = HASHLOOKUP( (struct $5THASH*)((uint8*)&GLOBALASMKEYWORDS$ + 8ll), (uint8*)*(uint8**)&TMP$827$1 );
	fb$result$1 = (int64)-(vr$6 != (void*)0ull);
	fb_StrDelete( (FBSTRING*)&TMP$827$1 );
	label$53:;
	return fb$result$1;
}

void PARSERASMINIT( void )
{
	label$54:;
	HINITGLOBALASMKEYWORDS(  );
	label$55:;
}

void PARSERASMEND( void )
{
	label$56:;
	HASMKEYWORDSEND( &GLOBALASMKEYWORDS$ );
	HASMKEYWORDSEND( &INLINEASMKEYWORDS$ );
	label$57:;
}

void CASMCODE( void )
{
	label$58:;
	static uint8 TEXT$1[1025];
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	struct $7ASTNODE* EXPR$1;
	struct $9ASTASMTOK* HEAD$1;
	struct $9ASTASMTOK* TAIL$1;
	int64 DOSKIP$1;
	int64 THISTOK$1;
	HEAD$1 = (struct $9ASTASMTOK*)0ull;
	TAIL$1 = (struct $9ASTASMTOK*)0ull;
	label$60:;
	{
		int64 vr$0 = LEXGETTOKEN( 1028ll );
		THISTOK$1 = vr$0;
		{
			uint64 TMP$828$3;
			TMP$828$3 = (uint64)THISTOK$1;
			goto label$64;
			label$65:;
			{
				goto label$61;
			}
			goto label$63;
			label$64:;
			static const void* tmp$837[85ll] = {
				&&label$65,
				&&label$65,
				&&label$63,
				&&label$65,
				&&label$65,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$63,
				&&label$65,
			};
			if( (TMP$828$3 - 256ull) > 84ull ) goto label$63;
			goto *tmp$837[TMP$828$3 - 256ull];
			label$63:;
		}
		uint8* vr$1 = LEXGETTEXT(  );
		fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$1, 0ll, 0 );
		SYM$1 = (struct $8FBSYMBOL*)0ull;
		DOSKIP$1 = 0ll;
		{
			uint64 TMP$829$3;
			int64 vr$2 = LEXGETCLASS( 1028ll );
			TMP$829$3 = (uint64)vr$2;
			goto label$67;
			label$68:;
			{
				FBSTRING TMP$830$4;
				int64 TMP$831$4;
				if( THISTOK$1 != 466ll ) goto label$70;
				{
					struct $7ASTNODE* vr$3 = CMATHFUNCT( THISTOK$1, -1ll );
					EXPR$1 = vr$3;
					if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$72;
					{
						if( *(int64*)EXPR$1 != 16ll ) goto label$74;
						{
							FBSTRING* vr$5 = ASTCONSTFLUSHTOSTR( EXPR$1 );
							fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$5, -1ll, 0 );
						}
						goto label$73;
						label$74:;
						{
							ERRREPORT( 11ll, 0ll, (uint8*)0ull );
							DOSKIP$1 = -1ll;
						}
						label$73:;
					}
					goto label$71;
					label$72:;
					{
						ERRREPORT( 17ll, 0ll, (uint8*)0ull );
						DOSKIP$1 = -1ll;
					}
					label$71:;
				}
				goto label$69;
				label$70:;
				__builtin_memset( &TMP$830$4, 0, 24ll );
				FBSTRING* vr$7 = fb_StrAllocTempDescZ( (uint8*)TEXT$1 );
				FBSTRING* vr$8 = fb_StrLcase2( (FBSTRING*)vr$7, 0 );
				fb_StrAssign( (void*)&TMP$830$4, -1ll, (void*)vr$8, -1ll, 0 );
				int64 vr$10 = HISINLINEASMKEYWORD( (uint8*)*(uint8**)&TMP$830$4 );
				TMP$831$4 = (int64)-(vr$10 == 0ll);
				fb_StrDelete( (FBSTRING*)&TMP$830$4 );
				if( TMP$831$4 == 0ll ) goto label$75;
				{
					struct $8FBSYMBOL* BASE_PARENT$5;
					struct $10FBSYMCHAIN* vr$14 = CIDENTIFIER( &BASE_PARENT$5, 34ll );
					CHAIN_$1 = vr$14;
					label$76:;
					if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$77;
					{
						struct $8FBSYMBOL* S$6;
						S$6 = *(struct $8FBSYMBOL**)CHAIN_$1;
						label$78:;
						{
							{
								$12FB_SYMBCLASS TMP$832$8;
								TMP$832$8 = *($12FB_SYMBCLASS*)S$6;
								if( TMP$832$8 == 3ll ) goto label$83;
								label$84:;
								if( TMP$832$8 != 7ll ) goto label$82;
								label$83:;
								{
									SYM$1 = S$6;
									goto label$77;
								}
								goto label$81;
								label$82:;
								if( TMP$832$8 != 2ll ) goto label$85;
								label$86:;
								{
									FBSTRING* vr$17 = SYMBGETCONSTVALUEASSTR( S$6 );
									fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$17, -1ll, 0 );
									goto label$77;
								}
								goto label$81;
								label$85:;
								if( TMP$832$8 != 1ll ) goto label$87;
								label$88:;
								{
									struct $8FBSYMBOL* vr$18 = SYMBFINDBYCLASS( CHAIN_$1, 1ll );
									SYM$1 = vr$18;
									if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$90;
									{
										*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 2ll;
									}
									label$90:;
									label$89:;
									goto label$77;
								}
								label$87:;
								label$81:;
							}
							S$6 = *(struct $8FBSYMBOL**)((uint8*)S$6 + 280ll);
						}
						label$80:;
						if( S$6 != (struct $8FBSYMBOL*)0ull ) goto label$78;
						label$79:;
						CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
					}
					goto label$76;
					label$77:;
				}
				label$75:;
				label$69:;
			}
			goto label$66;
			label$91:;
			{
				struct $7ASTNODE* vr$24 = CNUMLITERAL( 0ll );
				EXPR$1 = vr$24;
				if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$93;
				{
					FBSTRING* vr$25 = ASTCONSTFLUSHTOSTR( EXPR$1 );
					fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$25, -1ll, 0 );
				}
				label$93:;
				label$92:;
			}
			goto label$66;
			label$94:;
			{
				struct $7ASTNODE* vr$26 = CSTRLITERAL( 0ll );
				EXPR$1 = vr$26;
				if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$96;
				{
					struct $8FBSYMBOL* LITSYM$5;
					struct $8FBSYMBOL* vr$27 = ASTGETSTRLITSYMBOL( EXPR$1 );
					LITSYM$5 = vr$27;
					if( LITSYM$5 == (struct $8FBSYMBOL*)0ull ) goto label$98;
					{
						FBSTRING TMP$836$6;
						fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)"\x22", 2ll, 0 );
						if( (*(int64*)((uint8*)LITSYM$5 + 56ll) & 511ll) == 7ll ) goto label$100;
						{
							FBSTRING TMP$834$7;
							__builtin_memset( &TMP$834$7, 0, 24ll );
							FBSTRING* vr$33 = fb_StrConcat( &TMP$834$7, (void*)TEXT$1, 1025ll, *(void**)((uint8*)LITSYM$5 + 96ll), 0ll );
							fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$33, -1ll, 0 );
						}
						goto label$99;
						label$100:;
						{
							uint32* TMP$835$7;
							uint32* vr$35 = fb_WstrConcatAW( (void*)TEXT$1, 1025ll, (uint32*)*(uint32**)((uint8*)LITSYM$5 + 96ll) );
							TMP$835$7 = vr$35;
							fb_WstrAssignToA( (void*)TEXT$1, 1025ll, (uint32*)TMP$835$7, 0 );
							fb_WstrDelete( (uint32*)TMP$835$7 );
						}
						label$99:;
						__builtin_memset( &TMP$836$6, 0, 24ll );
						FBSTRING* vr$38 = fb_StrConcat( &TMP$836$6, (void*)TEXT$1, 1025ll, (void*)"\x22", 2ll );
						fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$38, -1ll, 0 );
					}
					label$98:;
					label$97:;
					ASTDELTREE( EXPR$1 );
				}
				label$96:;
				label$95:;
			}
			goto label$66;
			label$101:;
			{
				{
					if( THISTOK$1 != 346ll ) goto label$103;
					label$104:;
					{
						struct $8FBSYMBOL* vr$39 = SYMBGETPROCRESULT( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) );
						SYM$1 = vr$39;
						if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$106;
						{
							ERRREPORT( 17ll, 0ll, (uint8*)0ull );
							DOSKIP$1 = -1ll;
						}
						goto label$105;
						label$106:;
						{
							*($12FB_SYMBSTATS*)((uint8*)SYM$1 + 24ll) = *(int64*)((uint8*)SYM$1 + 24ll) | 2ll;
						}
						label$105:;
					}
					goto label$102;
					label$103:;
					if( THISTOK$1 != 406ll ) goto label$107;
					label$108:;
					{
						struct $7ASTNODE* vr$43 = CTYPECONVEXPR( THISTOK$1, -1ll );
						EXPR$1 = vr$43;
						if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$110;
						{
							if( *(int64*)EXPR$1 != 16ll ) goto label$112;
							{
								FBSTRING* vr$45 = ASTCONSTFLUSHTOSTR( EXPR$1 );
								fb_StrAssign( (void*)TEXT$1, 1025ll, (void*)vr$45, -1ll, 0 );
							}
							goto label$111;
							label$112:;
							{
								ERRREPORT( 11ll, 0ll, (uint8*)0ull );
								DOSKIP$1 = -1ll;
							}
							label$111:;
						}
						goto label$109;
						label$110:;
						{
							ERRREPORT( 17ll, 0ll, (uint8*)0ull );
							DOSKIP$1 = -1ll;
						}
						label$109:;
					}
					label$107:;
					label$102:;
				}
			}
			goto label$66;
			label$67:;
			static const void* tmp$838[5ll] = {
				&&label$68,
				&&label$101,
				&&label$68,
				&&label$91,
				&&label$94,
			};
			if( TMP$829$3 > 4ull ) goto label$66;
			goto *tmp$838[TMP$829$3 - 0ull];
			label$66:;
		}
		if( DOSKIP$1 != 0ll ) goto label$114;
		{
			if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$116;
			{
				struct $9ASTASMTOK* vr$46 = ASTASMAPPENDSYMB( TAIL$1, SYM$1 );
				TAIL$1 = vr$46;
			}
			goto label$115;
			label$116:;
			{
				struct $9ASTASMTOK* vr$47 = ASTASMAPPENDTEXT( TAIL$1, (uint8*)TEXT$1 );
				TAIL$1 = vr$47;
			}
			label$115:;
			if( HEAD$1 != (struct $9ASTASMTOK*)0ull ) goto label$118;
			{
				HEAD$1 = TAIL$1;
			}
			label$118:;
			label$117:;
		}
		label$114:;
		label$113:;
		LEXSKIPTOKEN( 1028ll );
	}
	label$62:;
	goto label$60;
	label$61:;
	if( HEAD$1 == (struct $9ASTASMTOK*)0ull ) goto label$120;
	{
		struct $7ASTNODE* vr$48 = ASTNEWASM( HEAD$1 );
		ASTADD( vr$48 );
	}
	label$120:;
	label$119:;
	label$59:;
}

int64 CASMBLOCK( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$121:;
	int64 ISSINGLELINE$1;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 344ll ) goto label$124;
	{
		goto label$122;
	}
	label$124:;
	label$123:;
	int64 vr$2 = CCOMPSTMTISALLOWED( 1ll );
	if( vr$2 != 0ll ) goto label$126;
	{
		HSKIPCOMPOUND( 344ll, -1ll, 0ll );
		goto label$122;
	}
	label$126:;
	label$125:;
	LEXSKIPTOKEN( 2048ll );
	ISSINGLELINE$1 = 0ll;
	int64 vr$3 = CCOMMENT( 0ll );
	if( vr$3 == 0ll ) goto label$128;
	{
		if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$130;
		{
			if( *(int64*)((uint8*)&ENV$ + 1272ll) != 0ll ) goto label$132;
			{
				struct $7ASTNODE* vr$5 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 49648ll) );
				ASTADD( vr$5 );
				DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 49648ll) );
			}
			label$132:;
			label$131:;
		}
		label$130:;
		label$129:;
		int64 vr$8 = CSTMTSEPARATOR( 0ll );
		if( vr$8 != 0ll ) goto label$134;
		{
			ERRREPORT( 3ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 257ll, -1ll, 0ll, 0ll );
		}
		label$134:;
		label$133:;
	}
	goto label$127;
	label$128:;
	{
		int64 vr$9 = CSTMTSEPARATOR( 0ll );
		if( vr$9 != 0ll ) goto label$136;
		{
			ISSINGLELINE$1 = -1ll;
		}
		label$136:;
		label$135:;
	}
	label$127:;
	label$137:;
	{
		if( ISSINGLELINE$1 != 0ll ) goto label$141;
		{
			struct $7ASTNODE* vr$11 = ASTNEWDBG( 113ll, *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 16752ll), *(uint8**)((uint8*)&ENV$ + 872ll) );
			ASTADD( vr$11 );
		}
		label$141:;
		label$140:;
		CASMCODE(  );
		CCOMMENT( 1028ll );
		if( *(int64*)((uint8*)&ENV$ + 296ll) == 0ll ) goto label$143;
		{
			if( *(int64*)((uint8*)&ENV$ + 1272ll) != 0ll ) goto label$145;
			{
				struct $7ASTNODE* vr$13 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 49648ll) );
				ASTADD( vr$13 );
				DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 844560ll) + 49648ll) );
			}
			label$145:;
			label$144:;
		}
		label$143:;
		label$142:;
		{
			int64 TMP$839$3;
			int64 vr$16 = LEXGETTOKEN( 0ll );
			TMP$839$3 = vr$16;
			if( TMP$839$3 != 257ll ) goto label$147;
			label$148:;
			{
				if( ISSINGLELINE$1 == 0ll ) goto label$150;
				{
					goto label$138;
				}
				label$150:;
				label$149:;
				LEXSKIPTOKEN( 0ll );
			}
			goto label$146;
			label$147:;
			if( TMP$839$3 != 256ll ) goto label$151;
			label$152:;
			{
				goto label$138;
			}
			goto label$146;
			label$151:;
			if( TMP$839$3 != 340ll ) goto label$153;
			label$154:;
			{
				goto label$138;
			}
			goto label$146;
			label$153:;
			{
				ERRREPORT( 3ll, 0ll, (uint8*)0ull );
				HSKIPUNTIL( 257ll, -1ll, 0ll, 0ll );
			}
			label$155:;
			label$146:;
		}
		if( ISSINGLELINE$1 != 0ll ) goto label$157;
		{
			struct $7ASTNODE* vr$17 = ASTNEWDBG( 114ll, 0ll, (uint8*)0ull );
			ASTADD( vr$17 );
		}
		label$157:;
		label$156:;
	}
	label$139:;
	goto label$137;
	label$138:;
	if( ISSINGLELINE$1 != 0ll ) goto label$159;
	{
		int64 vr$18 = HMATCH( 340ll, 2048ll );
		if( vr$18 != 0ll ) goto label$161;
		{
			ERRREPORT( 45ll, 0ll, (uint8*)0ull );
		}
		goto label$160;
		label$161:;
		{
			int64 vr$19 = HMATCH( 344ll, 2048ll );
			if( vr$19 != 0ll ) goto label$163;
			{
				ERRREPORT( 45ll, 0ll, (uint8*)0ull );
			}
			label$163:;
			label$162:;
		}
		label$160:;
	}
	label$159:;
	label$158:;
	fb$result$1 = -1ll;
	label$122:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__parserzinlineasm( void )
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

static void HINITINLINEASMKEYWORDS( void )
{
	label$10:;
	if( *(int64*)&INLINEASMKEYWORDS$ != 0ll ) goto label$13;
	{
		LISTINIT( (struct $5TLIST*)((uint8*)&INLINEASMKEYWORDS$ + 32ll), 8ll, 8ll, 4294967295ll );
		HASHINIT( (struct $5THASH*)((uint8*)&INLINEASMKEYWORDS$ + 8ll), 800ll, 0ll );
		{
			int64 I$3;
			I$3 = 0ll;
			label$17:;
			{
				HASHADD( (struct $5THASH*)((uint8*)&INLINEASMKEYWORDS$ + 8ll), *(uint8**)((int64)(uint8**)INLINEASMKEYWORDSX86$ + (I$3 << (3ll & 63ll))), (void*)18446744073709551615ull, 18446744073709551615ull );
			}
			label$15:;
			I$3 = I$3 + 1ll;
			label$14:;
			if( I$3 <= 555ll ) goto label$17;
			label$16:;
		}
		{
			int64 I$3;
			I$3 = 0ll;
			label$21:;
			{
				HASHADD( (struct $5THASH*)((uint8*)&INLINEASMKEYWORDS$ + 8ll), *(uint8**)((int64)(uint8**)GLOBALASMKEYWORDSX86$ + (I$3 << (3ll & 63ll))), (void*)18446744073709551615ull, 18446744073709551615ull );
			}
			label$19:;
			I$3 = I$3 + 1ll;
			label$18:;
			if( I$3 <= 176ll ) goto label$21;
			label$20:;
		}
		*(int64*)&INLINEASMKEYWORDS$ = -1ll;
	}
	label$13:;
	label$12:;
	label$11:;
}

static void HINITGLOBALASMKEYWORDS( void )
{
	label$22:;
	if( *(int64*)&GLOBALASMKEYWORDS$ != 0ll ) goto label$25;
	{
		LISTINIT( (struct $5TLIST*)((uint8*)&GLOBALASMKEYWORDS$ + 32ll), 8ll, 8ll, 4294967295ll );
		HASHINIT( (struct $5THASH*)((uint8*)&GLOBALASMKEYWORDS$ + 8ll), 200ll, 0ll );
		{
			int64 TMP$826$3;
			int64 vr$2 = FBGETCPUFAMILY(  );
			TMP$826$3 = vr$2;
			if( TMP$826$3 == 0ll ) goto label$28;
			label$29:;
			if( TMP$826$3 != 1ll ) goto label$27;
			label$28:;
			{
				{
					int64 I$5;
					I$5 = 0ll;
					label$33:;
					{
						HASHADD( (struct $5THASH*)((uint8*)&GLOBALASMKEYWORDS$ + 8ll), *(uint8**)((int64)(uint8**)GLOBALASMKEYWORDSX86$ + (I$5 << (3ll & 63ll))), (void*)18446744073709551615ull, 18446744073709551615ull );
					}
					label$31:;
					I$5 = I$5 + 1ll;
					label$30:;
					if( I$5 <= 176ll ) goto label$33;
					label$32:;
				}
			}
			label$27:;
			label$26:;
		}
		*(int64*)&GLOBALASMKEYWORDS$ = -1ll;
	}
	label$25:;
	label$24:;
	label$23:;
}

static void HASMKEYWORDSEND( struct $15ASMKEYWORDSINFO* INFO$1 )
{
	label$34:;
	if( *(int64*)INFO$1 == 0ll ) goto label$37;
	{
		HASHEND( (struct $5THASH*)((uint8*)INFO$1 + 8ll) );
		uint8** S$2;
		void* vr$5 = LISTGETHEAD( (struct $5TLIST*)((uint8*)INFO$1 + 32ll) );
		S$2 = (uint8**)vr$5;
		label$38:;
		if( S$2 == (uint8**)0ull ) goto label$39;
		{
			free( *(void**)S$2 );
			void* vr$7 = LISTGETNEXT( (void*)S$2 );
			S$2 = (uint8**)vr$7;
		}
		goto label$38;
		label$39:;
		LISTEND( (struct $5TLIST*)((uint8*)INFO$1 + 32ll) );
		*(int64*)INFO$1 = 0ll;
	}
	label$37:;
	label$36:;
	label$35:;
}

static int64 HISINLINEASMKEYWORD( uint8* ID$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$40:;
	HINITINLINEASMKEYWORDS(  );
	void* vr$2 = HASHLOOKUP( (struct $5THASH*)((uint8*)&INLINEASMKEYWORDS$ + 8ll), ID$1 );
	fb$result$1 = (int64)-(vr$2 != (void*)0ull);
	label$41:;
	return fb$result$1;
}

static void HADDASMKEYWORD( struct $15ASMKEYWORDSINFO* INFO$1, uint8* ID$1 )
{
	label$42:;
	uint8** S$1;
	void* vr$2 = LISTNEWNODE( (struct $5TLIST*)((uint8*)INFO$1 + 32ll) );
	S$1 = (uint8**)vr$2;
	int64 vr$3 = fb_StrLen( (void*)ID$1, 0ll );
	void* vr$5 = calloc( (uint64)(vr$3 + 1ll), 1ull );
	*S$1 = (uint8*)vr$5;
	fb_StrAssign( *(void**)S$1, 0ll, (void*)ID$1, 0ll, 0 );
	HASHADD( (struct $5THASH*)((uint8*)INFO$1 + 8ll), (uint8*)*S$1, (void*)18446744073709551615ull, 18446744073709551615ull );
	label$43:;
}
