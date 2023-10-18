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
typedef int64 $8FB_IDOPT;
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
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
typedef int64 $8FB_TOKEN;
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
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
static void fb_ctor__parserzidentifier( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTUNDEF( int64, uint8* );
struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT );
int64 COPERATOR( int64 );
static void HSKIPSYMBOL( void );
static struct $10FBSYMCHAIN* HGLOBALID( $8FB_IDOPT, struct $8FBSYMBOL** );
static FBSTRING* HGETCHAINNAMES( struct $10FBSYMCHAIN* );
static int64 HCHECKDECL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, $8FB_IDOPT );
static int64 HISSTRUCTALLOWED( struct $8FBSYMBOL*, $8FB_IDOPT );
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

struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL** BASE_PARENT$1, $8FB_IDOPT OPTIONS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$88:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* PARENT$1;
	*BASE_PARENT$1 = (struct $8FBSYMBOL*)0ull;
	if( *(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) == (struct $10FBSYMCHAIN*)0ull ) goto label$91;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll);
		*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) = (struct $10FBSYMCHAIN*)0ull;
	}
	goto label$90;
	label$91:;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll);
	}
	label$90:;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 4ll) != 0ll ) goto label$93;
	{
		fb$result$1 = CHAIN_$1;
		goto label$89;
	}
	label$93:;
	label$92:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$95;
	{
		int64 vr$5 = LEXGETTOKEN( 0ll );
		if( vr$5 == 46ll ) goto label$97;
		{
			fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
			goto label$89;
		}
		label$97:;
		label$96:;
		struct $10FBSYMCHAIN* vr$6 = HGLOBALID( OPTIONS$1, BASE_PARENT$1 );
		CHAIN_$1 = vr$6;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$99;
		{
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$101;
			{
				uint8* vr$8 = LEXGETTEXT(  );
				ERRREPORTUNDEF( 8ll, vr$8 );
			}
			label$101:;
			label$100:;
			if( (OPTIONS$1 & 128ll) != 0ll ) goto label$103;
			{
				HSKIPSYMBOL(  );
			}
			label$103:;
			label$102:;
			fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
			goto label$89;
		}
		label$99:;
		label$98:;
	}
	label$95:;
	label$94:;
	PARENT$1 = (struct $8FBSYMBOL*)0ull;
	label$104:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		if( *BASE_PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$108;
		{
			label$109:;
			if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$110;
			{
				if( ((int64)-((*(int64*)((uint8*)SYM$2 + 8ll) & 128ll) != 0ll) & (int64)-(*(int64*)SYM$2 == 1ll)) == 0ll ) goto label$112;
				{
					SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 280ll);
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
			if( SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$114;
			{
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$116;
				{
					uint8* vr$21 = LEXGETTEXT(  );
					ERRREPORTUNDEF( 8ll, vr$21 );
				}
				goto label$115;
				label$116:;
				{
					HSKIPSYMBOL(  );
				}
				label$115:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
				goto label$89;
			}
			label$114:;
			label$113:;
		}
		label$108:;
		label$107:;
		{
			uint64 TMP$109$3;
			TMP$109$3 = *(uint64*)SYM$2;
			goto label$118;
			label$119:;
			{
			}
			goto label$117;
			label$120:;
			{
				int64 vr$23 = HISSTRUCTALLOWED( SYM$2, OPTIONS$1 );
				if( vr$23 != 0ll ) goto label$122;
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
					int64 TMP$110$5;
					TMP$110$5 = *(int64*)((uint8*)SYM$2 + 56ll) & 511ll;
					if( TMP$110$5 != 20ll ) goto label$125;
					label$126:;
					{
						SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 64ll);
						int64 vr$27 = HISSTRUCTALLOWED( SYM$2, OPTIONS$1 );
						if( vr$27 != 0ll ) goto label$128;
						{
							goto label$105;
						}
						label$128:;
						label$127:;
					}
					goto label$124;
					label$125:;
					if( TMP$110$5 != 10ll ) goto label$129;
					label$130:;
					{
						SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 64ll);
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
			static const void* tmp$113[6ll] = {
				&&label$119,
				&&label$119,
				&&label$120,
				&&label$119,
				&&label$132,
				&&label$123,
			};
			if( (TMP$109$3 - 8ull) > 5ull ) goto label$132;
			goto *tmp$113[TMP$109$3 - 8ull];
			label$117:;
		}
		if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$134;
		{
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$136;
			{
				int64 vr$30 = SYMBCHECKACCESS( SYM$2 );
				if( vr$30 != 0ll ) goto label$138;
				{
					ERRREPORT( 202ll, 0ll, (uint8*)0ull );
				}
				label$138:;
				label$137:;
			}
			label$136:;
			label$135:;
		}
		label$134:;
		label$133:;
		int64 vr$31 = LEXGETLOOKAHEAD( 1ll, 64ll );
		if( vr$31 == 46ll ) goto label$140;
		{
			if( *(int64*)SYM$2 != 8ll ) goto label$142;
			{
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$144;
				{
					LEXSKIPTOKEN( 2112ll );
					ERRREPORT( 120ll, 0ll, (uint8*)0ull );
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
		if( *(int64*)SYM$2 != 9ll ) goto label$146;
		{
			if( *(int64*)((uint8*)SYM$2 + 136ll) != 0ll ) goto label$148;
			{
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$150;
				{
					ERRREPORT( 257ll, 0ll, (uint8*)0ull );
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
		LEXSKIPTOKEN( 2112ll );
		LEXSKIPTOKEN( 64ll );
		PARENT$1 = SYM$2;
		if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$152;
		{
			*BASE_PARENT$1 = PARENT$1;
		}
		label$152:;
		label$151:;
		{
			uint64 TMP$111$3;
			int64 vr$39 = LEXGETCLASS( 0ll );
			TMP$111$3 = (uint64)vr$39;
			goto label$154;
			label$155:;
			{
			}
			goto label$153;
			label$156:;
			{
				if( (OPTIONS$1 & 520ll) == 0ll ) goto label$158;
				{
					goto label$105;
				}
				label$158:;
				label$157:;
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$160;
				{
					ERRREPORT( 14ll, 0ll, (uint8*)0ull );
				}
				label$160:;
				label$159:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
				goto label$89;
			}
			goto label$153;
			label$161:;
			{
				int64 vr$42 = LEXGETTOKEN( 0ll );
				if( vr$42 != 91ll ) goto label$163;
				{
					if( (OPTIONS$1 & 8ll) == 0ll ) goto label$165;
					{
						goto label$105;
					}
					label$165:;
					label$164:;
				}
				label$163:;
				label$162:;
				if( (OPTIONS$1 & 2ll) == 0ll ) goto label$167;
				{
					ERRREPORT( 14ll, 0ll, (uint8*)0ull );
				}
				label$167:;
				label$166:;
				fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
				goto label$89;
			}
			goto label$153;
			label$154:;
			static const void* tmp$114[6ll] = {
				&&label$155,
				&&label$156,
				&&label$155,
				&&label$161,
				&&label$161,
				&&label$156,
			};
			if( TMP$111$3 > 5ull ) goto label$161;
			goto *tmp$114[TMP$111$3 - 0ull];
			label$153:;
		}
		uint8* vr$45 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$46 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$45, 0ll, -1ll );
		CHAIN_$1 = vr$46;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$169;
		{
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$171;
			{
				uint8* vr$48 = LEXGETTEXT(  );
				ERRREPORTUNDEF( 8ll, vr$48 );
			}
			goto label$170;
			label$171:;
			{
				if( (OPTIONS$1 & 128ll) != 0ll ) goto label$173;
				{
					HSKIPSYMBOL(  );
				}
				label$173:;
				label$172:;
			}
			label$170:;
			fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
			goto label$89;
		}
		label$169:;
		label$168:;
		if( (OPTIONS$1 & 32ll) == 0ll ) goto label$175;
		{
			{
				$12FB_SYMBCLASS TMP$112$4;
				TMP$112$4 = *($12FB_SYMBCLASS*)PARENT$1;
				if( TMP$112$4 == 10ll ) goto label$178;
				label$179:;
				if( TMP$112$4 != 11ll ) goto label$177;
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
							if( *(int64*)SYM$6 != 12ll ) goto label$187;
							{
								ERRREPORT( 209ll, 0ll, (uint8*)0ull );
								goto label$181;
							}
							label$187:;
							label$186:;
							SYM$6 = *(struct $8FBSYMBOL**)((uint8*)SYM$6 + 280ll);
						}
						label$185:;
						if( SYM$6 != (struct $8FBSYMBOL*)0ull ) goto label$183;
						label$184:;
						ITER$5 = *(struct $10FBSYMCHAIN**)((uint8*)ITER$5 + 8ll);
					}
					label$182:;
					if( ITER$5 != (struct $10FBSYMCHAIN*)0ull ) goto label$180;
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
	int64 vr$57 = HCHECKDECL( *BASE_PARENT$1, PARENT$1, CHAIN_$1, OPTIONS$1 );
	if( vr$57 != 0ll ) goto label$189;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$190:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 4ll) != 0ll ) goto label$193;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$191;
	}
	label$193:;
	label$192:;
	SYM$1 = (struct $8FBSYMBOL*)0ull;
	BASE_PARENT$1 = (struct $8FBSYMBOL*)0ull;
	PARENT$1 = (struct $8FBSYMBOL*)0ull;
	CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll);
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$195;
	{
		int64 vr$4 = LEXGETTOKEN( 0ll );
		if( vr$4 != 46ll ) goto label$197;
		{
			struct $10FBSYMCHAIN* vr$6 = HGLOBALID( 2ll, &BASE_PARENT$1 );
			CHAIN_$1 = vr$6;
		}
		label$197:;
		label$196:;
	}
	label$195:;
	label$194:;
	if( BASE_PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$199;
	{
		PARENT$1 = BASE_PARENT$1;
	}
	label$199:;
	label$198:;
	label$200:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$201;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		{
			uint64 TMP$115$3;
			TMP$115$3 = *(uint64*)SYM$1;
			goto label$203;
			label$204:;
			{
			}
			goto label$202;
			label$205:;
			{
				int64 vr$9 = HISSTRUCTALLOWED( SYM$1, OPTIONS$1 );
				if( vr$9 != 0ll ) goto label$207;
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
					int64 TMP$116$5;
					TMP$116$5 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
					if( TMP$116$5 != 20ll ) goto label$210;
					label$211:;
					{
						SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
						int64 vr$13 = HISSTRUCTALLOWED( SYM$1, OPTIONS$1 );
						if( vr$13 != 0ll ) goto label$213;
						{
							SYM$1 = PARENT$1;
							goto label$201;
						}
						label$213:;
						label$212:;
					}
					goto label$209;
					label$210:;
					if( TMP$116$5 != 10ll ) goto label$214;
					label$215:;
					{
						SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll);
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
			static const void* tmp$118[6ll] = {
				&&label$204,
				&&label$204,
				&&label$205,
				&&label$204,
				&&label$217,
				&&label$208,
			};
			if( (TMP$115$3 - 8ull) > 5ull ) goto label$217;
			goto *tmp$118[TMP$115$3 - 8ull];
			label$202:;
		}
		if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$219;
		{
			if( (OPTIONS$1 & 256ll) != 0ll ) goto label$221;
			{
				int64 vr$16 = SYMBCHECKACCESS( SYM$1 );
				if( vr$16 != 0ll ) goto label$223;
				{
					ERRREPORT( 202ll, 0ll, (uint8*)0ull );
				}
				label$223:;
				label$222:;
			}
			label$221:;
			label$220:;
		}
		label$219:;
		label$218:;
		int64 vr$17 = LEXGETLOOKAHEAD( 1ll, 64ll );
		if( vr$17 == 46ll ) goto label$225;
		{
			LEXSKIPTOKEN( 64ll );
			if( (OPTIONS$1 & 1ll) == 0ll ) goto label$227;
			{
				goto label$201;
			}
			label$227:;
			label$226:;
			ERRREPORT( 120ll, 0ll, (uint8*)0ull );
			goto label$201;
		}
		label$225:;
		label$224:;
		if( *(int64*)SYM$1 != 9ll ) goto label$229;
		{
			if( *(int64*)((uint8*)SYM$1 + 136ll) != 0ll ) goto label$231;
			{
				ERRREPORT( 257ll, 0ll, (uint8*)0ull );
				goto label$201;
			}
			label$231:;
			label$230:;
		}
		label$229:;
		label$228:;
		LEXSKIPTOKEN( 2112ll );
		LEXSKIPTOKEN( 64ll );
		PARENT$1 = SYM$1;
		if( BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$233;
		{
			BASE_PARENT$1 = PARENT$1;
		}
		label$233:;
		label$232:;
		{
			uint64 TMP$117$3;
			int64 vr$21 = LEXGETCLASS( 0ll );
			TMP$117$3 = (uint64)vr$21;
			goto label$235;
			label$236:;
			{
			}
			goto label$234;
			label$237:;
			{
				if( (OPTIONS$1 & 520ll) == 0ll ) goto label$239;
				{
					goto label$201;
				}
				label$239:;
				label$238:;
				ERRREPORT( 14ll, 0ll, (uint8*)0ull );
				goto label$201;
			}
			goto label$234;
			label$240:;
			{
				int64 vr$23 = LEXGETTOKEN( 0ll );
				if( vr$23 != 91ll ) goto label$242;
				{
					if( (OPTIONS$1 & 8ll) == 0ll ) goto label$244;
					{
						goto label$201;
					}
					label$244:;
					label$243:;
				}
				label$242:;
				label$241:;
				ERRREPORT( 14ll, 0ll, (uint8*)0ull );
				goto label$201;
			}
			goto label$234;
			label$235:;
			static const void* tmp$119[6ll] = {
				&&label$236,
				&&label$237,
				&&label$236,
				&&label$240,
				&&label$240,
				&&label$237,
			};
			if( TMP$117$3 > 5ull ) goto label$240;
			goto *tmp$119[TMP$117$3 - 0ull];
			label$234:;
		}
		uint8* vr$25 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$26 = SYMBLOOKUPAT( SYM$1, (uint8*)vr$25, 0ll, -1ll );
		CHAIN_$1 = vr$26;
	}
	goto label$200;
	label$201:;
	int64 vr$27 = HCHECKDECL( BASE_PARENT$1, PARENT$1, CHAIN_$1, OPTIONS$1 );
	if( vr$27 != 0ll ) goto label$246;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
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
	struct $8FBSYMBOL* vr$0 = CPARENTID( 0ll );
	S$1 = vr$0;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$250;
	{
		goto label$248;
	}
	label$250:;
	label$249:;
	{
		$12FB_SYMBCLASS TMP$120$2;
		TMP$120$2 = *($12FB_SYMBCLASS*)S$1;
		if( TMP$120$2 != 8ll ) goto label$252;
		label$253:;
		{
			if( S$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) ) goto label$255;
			{
				ERRREPORT( 131ll, 0ll, (uint8*)0ull );
			}
			label$255:;
			label$254:;
		}
		goto label$251;
		label$252:;
		if( TMP$120$2 != 11ll ) goto label$256;
		label$257:;
		{
			if( S$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) ) goto label$259;
			{
				ERRREPORT( 158ll, 0ll, (uint8*)0ull );
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$260:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$263;
	{
		if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$265;
		{
			struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( BASE_PARENT$1, 664ll );
			CHAIN_$1 = vr$2;
		}
		goto label$264;
		label$265:;
		{
			uint8* vr$3 = LEXGETTEXT(  );
			struct $10FBSYMCHAIN* vr$5 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$3, 0ll, -1ll );
			CHAIN_$1 = vr$5;
			if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$267;
			{
				struct $8FBSYMBOL* TMP$121$4;
				TMP$121$4 = (struct $8FBSYMBOL*)0ull;
				struct $10FBSYMCHAIN* vr$7 = CIDENTIFIER( &TMP$121$4, 664ll );
				CHAIN_$1 = vr$7;
			}
			label$267:;
			label$266:;
		}
		label$264:;
	}
	label$263:;
	label$262:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$269;
	{
		LEXSKIPTOKEN( 0ll );
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$261;
	}
	label$269:;
	label$268:;
	if( *BASE_PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$271;
	{
		LEXSKIPTOKEN( 0ll );
		fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		goto label$261;
	}
	label$271:;
	label$270:;
	if( *(int64*)*BASE_PARENT$1 == 10ll ) goto label$273;
	{
		LEXSKIPTOKEN( 2048ll );
		fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		goto label$261;
	}
	label$273:;
	label$272:;
	{
		uint64 TMP$122$2;
		int64 vr$13 = LEXGETCLASS( 0ll );
		TMP$122$2 = (uint64)vr$13;
		goto label$275;
		label$276:;
		{
			LEXSKIPTOKEN( 0ll );
			fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			goto label$261;
		}
		goto label$274;
		label$277:;
		{
			struct $8FBSYMBOL* SYM$3;
			SYM$3 = (struct $8FBSYMBOL*)0ull;
			if( (*(int64*)((uint8*)*BASE_PARENT$1 + 24ll) & 262144ll) != 0ll ) goto label$279;
			{
				uint8* vr$18 = LEXGETTEXT(  );
				struct $10FBSYMCHAIN* vr$20 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$18, 0ll, -1ll );
				CHAIN_$1 = vr$20;
				LEXSKIPTOKEN( 0ll );
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$281;
				{
					fb$result$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
					goto label$261;
				}
				label$281:;
				label$280:;
				fb$result$1 = (struct $8FBSYMBOL*)0ull;
				goto label$261;
			}
			label$279:;
			label$278:;
			{
				uint64 TMP$123$4;
				int64 vr$22 = LEXGETTOKEN( 0ll );
				TMP$123$4 = (uint64)vr$22;
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
					struct $8FBSYMBOL* vr$28 = SYMBGETCOMPOPOVLHEAD( *BASE_PARENT$1, 0ll );
					SYM$3 = vr$28;
				}
				goto label$282;
				label$287:;
				{
					SYM$3 = *(struct $8FBSYMBOL**)((uint8*)*(struct $12FB_STRUCTEXT**)((uint8*)*BASE_PARENT$1 + 240ll) + 280ll);
				}
				goto label$282;
				label$283:;
				static const void* tmp$124[71ll] = {
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
				if( (TMP$123$4 - 347ull) > 70ull ) goto label$282;
				goto *tmp$124[TMP$123$4 - 347ull];
				label$282:;
			}
			LEXSKIPTOKEN( 0ll );
			fb$result$1 = SYM$3;
			goto label$261;
		}
		goto label$274;
		label$275:;
		static const void* tmp$125[3ll] = {
			&&label$276,
			&&label$277,
			&&label$276,
		};
		if( TMP$122$2 > 2ull ) goto label$274;
		goto *tmp$125[TMP$122$2 - 0ull];
		label$274:;
	}
	int64 vr$32 = LEXGETCLASS( 0ll );
	int64 vr$34 = LEXGETTOKEN( 0ll );
	if( ((int64)-(vr$32 == 5ll) | (int64)-(vr$34 == 91ll)) == 0ll ) goto label$289;
	{
		int64 OP$2;
		OP$2 = -1ll;
		int64 vr$37 = COPERATOR( -1ll );
		OP$2 = vr$37;
		if( OP$2 == -1ll ) goto label$291;
		{
			struct $8FBSYMBOL* vr$39 = SYMBGETCOMPOPOVLHEAD( *BASE_PARENT$1, OP$2 );
			fb$result$1 = vr$39;
			goto label$261;
		}
		label$291:;
		label$290:;
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$261;
	}
	label$289:;
	label$288:;
	LEXSKIPTOKEN( 0ll );
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	goto label$261;
	label$261:;
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

static void HSKIPSYMBOL( void )
{
	label$10:;
	label$12:;
	{
		LEXSKIPTOKEN( 64ll );
		int64 vr$0 = LEXGETTOKEN( 0ll );
		if( vr$0 == 46ll ) goto label$16;
		{
			goto label$13;
		}
		label$16:;
		label$15:;
		{
			uint64 TMP$93$3;
			int64 vr$1 = LEXGETCLASS( 0ll );
			TMP$93$3 = (uint64)vr$1;
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
			static const void* tmp$126[3ll] = {
				&&label$19,
				&&label$19,
				&&label$19,
			};
			if( TMP$93$3 > 2ull ) goto label$20;
			goto *tmp$126[TMP$93$3 - 0ull];
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$21:;
	fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
	int64 vr$1 = LEXGETLOOKAHEAD( 1ll, 64ll );
	if( vr$1 != 46ll ) goto label$24;
	{
		LEXSKIPTOKEN( 64ll );
	}
	goto label$23;
	label$24:;
	{
		if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) == (struct $13FB_CMPSTMTSTK*)0ull ) goto label$26;
		{
			goto label$22;
		}
		label$26:;
		label$25:;
	}
	label$23:;
	if( (OPTIONS$1 & 4ll) == 0ll ) goto label$28;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$30;
		{
			ERRREPORT( 131ll, 0ll, (uint8*)0ull );
		}
		label$30:;
		label$29:;
	}
	label$28:;
	label$27:;
	LEXSKIPTOKEN( 64ll );
	{
		int64 TMP$94$2;
		int64 vr$4 = LEXGETCLASS( 0ll );
		TMP$94$2 = vr$4;
		if( TMP$94$2 == 0ll ) goto label$33;
		label$34:;
		if( TMP$94$2 != 2ll ) goto label$32;
		label$33:;
		{
		}
		goto label$31;
		label$32:;
		{
			if( (OPTIONS$1 & 2ll) == 0ll ) goto label$37;
			{
				ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			}
			label$37:;
			label$36:;
			goto label$22;
		}
		label$35:;
		label$31:;
	}
	*BASE_PARENT$1 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll);
	uint8* vr$8 = LEXGETTEXT(  );
	struct $10FBSYMCHAIN* vr$10 = SYMBLOOKUPAT( *BASE_PARENT$1, (uint8*)vr$8, 0ll, -1ll );
	fb$result$1 = vr$10;
	label$22:;
	return fb$result$1;
}

static FBSTRING* HGETCHAINNAMES( struct $10FBSYMCHAIN* CHAIN_$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$38:;
	struct $8FBSYMBOL* NS$1;
	FBSTRING NAMES$1;
	__builtin_memset( &NAMES$1, 0, 24ll );
	label$40:;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 24ll );
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 248ll);
		label$43:;
		if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$44;
		{
			if( (*(int64*)((uint8*)NS$1 + 8ll) & 16777216ll) == 0ll ) goto label$46;
			{
				if( *(int64*)NS$1 != 9ll ) goto label$48;
				{
					FBSTRING TMP$96$5;
					__builtin_memset( &TMP$96$5, 0, 24ll );
					FBSTRING* vr$13 = fb_StrConcat( &TMP$96$5, (void*)"<enum>.", 8ll, (void*)&S$2, -1ll );
					fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$13, -1ll, 0 );
				}
				goto label$47;
				label$48:;
				{
					FBSTRING TMP$98$5;
					__builtin_memset( &TMP$98$5, 0, 24ll );
					FBSTRING* vr$18 = fb_StrConcat( &TMP$98$5, (void*)"<unknown>.", 11ll, (void*)&S$2, -1ll );
					fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$18, -1ll, 0 );
				}
				label$47:;
			}
			goto label$45;
			label$46:;
			{
				FBSTRING TMP$99$4;
				FBSTRING TMP$100$4;
				__builtin_memset( &TMP$99$4, 0, 24ll );
				FBSTRING* vr$24 = fb_StrConcat( &TMP$99$4, *(void**)((uint8*)NS$1 + 32ll), 0ll, (void*)".", 2ll );
				__builtin_memset( &TMP$100$4, 0, 24ll );
				FBSTRING* vr$27 = fb_StrConcat( &TMP$100$4, (void*)vr$24, -1ll, (void*)&S$2, -1ll );
				fb_StrAssign( (void*)&S$2, -1ll, (void*)vr$27, -1ll, 0 );
			}
			label$45:;
			if( *(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll) != (struct $8FBHASHTB*)0ull ) goto label$50;
			{
				goto label$44;
			}
			label$50:;
			label$49:;
			NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
		}
		goto label$43;
		label$44:;
		if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 8ll) & 16777216ll) == 0ll ) goto label$52;
		{
			fb_StrConcatAssign( (void*)&NAMES$1, -1ll, (void*)&S$2, -1ll, 0 );
			fb_StrConcatAssign( (void*)&NAMES$1, -1ll, (void*)"<unnamed>", 10ll, 0 );
		}
		goto label$51;
		label$52:;
		{
			FBSTRING TMP$102$3;
			FBSTRING TMP$103$3;
			__builtin_memset( &TMP$102$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$102$3, (void*)&S$2, -1ll, *(void**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 32ll), 0ll );
			__builtin_memset( &TMP$103$3, 0, 24ll );
			FBSTRING* vr$47 = fb_StrConcat( &TMP$103$3, (void*)&NAMES$1, -1ll, (void*)vr$43, -1ll );
			fb_StrAssign( (void*)&NAMES$1, -1ll, (void*)vr$47, -1ll, 0 );
		}
		label$51:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$54;
		{
			fb_StrDelete( (FBSTRING*)&S$2 );
			goto label$41;
		}
		label$54:;
		label$53:;
		fb_StrConcatAssign( (void*)&NAMES$1, -1ll, (void*)", ", 3ll, 0 );
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$42:;
	goto label$40;
	label$41:;
	fb_StrInit( (void*)&fb$result$1, -1ll, (void*)&NAMES$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&NAMES$1 );
	goto label$39;
	fb_StrDelete( (FBSTRING*)&NAMES$1 );
	label$39:;
	FBSTRING* vr$58 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$58;
}

static int64 HCHECKDECL( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, $8FB_IDOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$55:;
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$58;
	{
		if( (OPTIONS$1 & 4ll) == 0ll ) goto label$60;
		{
			if( BASE_PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$62;
			{
				if( BASE_PARENT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$64;
				{
					if( *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)BASE_PARENT$1 + 288ll) == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) ) goto label$66;
					{
						ERRREPORT( 131ll, 0ll, (uint8*)0ull );
						fb$result$1 = 0ll;
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
			if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$68;
			{
				if( *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll) == (struct $10FBSYMCHAIN*)0ull ) goto label$70;
				{
					if( *(int64*)((uint8*)CHAIN_$1 + 16ll) == 0ll ) goto label$72;
					{
						int64 TMP$105$6;
						struct $8FBSYMBOL* NS$6;
						NS$6 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 248ll);
						struct $8FBSYMBOL* NS2$6;
						NS2$6 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll) + 248ll);
						if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$73;
						TMP$105$6 = (int64)-(NS$6 != PARENT$1);
						goto label$292;
						label$73:;
						TMP$105$6 = (int64)-(NS$6 != NS2$6);
						label$292:;
						if( TMP$105$6 == 0ll ) goto label$75;
						{
							FBSTRING TMP$107$7;
							FBSTRING TMP$108$7;
							__builtin_memset( &TMP$108$7, 0, 24ll );
							FBSTRING* vr$18 = HGETCHAINNAMES( CHAIN_$1 );
							__builtin_memset( &TMP$107$7, 0, 24ll );
							FBSTRING* vr$21 = fb_StrConcat( &TMP$107$7, (void*)" for ", 6ll, (void*)vr$18, -1ll );
							fb_StrAssign( (void*)&TMP$108$7, -1ll, (void*)vr$21, -1ll, 0 );
							ERRREPORT( 255ll, 0ll, (uint8*)*(uint8**)&TMP$108$7 );
							fb_StrDelete( (FBSTRING*)&TMP$108$7 );
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
	fb$result$1 = -1ll;
	label$56:;
	return fb$result$1;
}

static int64 HISSTRUCTALLOWED( struct $8FBSYMBOL* SYM$1, $8FB_IDOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$76:;
	if( (OPTIONS$1 & 16ll) != 0ll ) goto label$79;
	{
		fb$result$1 = 0ll;
		goto label$77;
	}
	label$79:;
	label$78:;
	if( ((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 262144ll) == 0ll ) goto label$81;
	{
		fb$result$1 = -1ll;
		goto label$77;
	}
	label$81:;
	label$80:;
	if( (OPTIONS$1 & 512ll) == 0ll ) goto label$83;
	{
		fb$result$1 = -1ll;
		goto label$77;
	}
	label$83:;
	label$82:;
	if( (*(int64*)((uint8*)SYM$1 + 24ll) & 262144ll) != 0ll ) goto label$85;
	{
		fb$result$1 = 0ll;
		goto label$77;
	}
	label$85:;
	label$84:;
	if( (OPTIONS$1 & 64ll) == 0ll ) goto label$87;
	{
		fb$result$1 = (int64)-(((int64)*(int32*)((uint8*)SYM$1 + 208ll) & 16384ll) != 0ll);
		goto label$77;
	}
	label$87:;
	label$86:;
	fb$result$1 = -1ll;
	label$77:;
	return fb$result$1;
}
