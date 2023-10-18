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
typedef int32 $12FB_PARAMMODE;
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
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 12 );
struct $16FB_CALL_ARG_LIST {
	int32 ARGS;
	struct $11FB_CALL_ARG* HEAD;
	struct $11FB_CALL_ARG* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CALL_ARG_LIST ) == 12 );
typedef int32 $12FB_PARSEROPT;
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
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzproccall( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTFINDFIRSTCODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVECASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
int32 ASTCHECKBYREFASSIGN( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIADDCTORCALL( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDVARFIELD( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTBUILDPROCRESULTVAR( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTPATCHCTORCALL( struct $7ASTNODE*, struct $7ASTNODE* );
struct $7ASTNODE* ASTCALLCTORTOCALL( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDIMPLICITCTORCALLEX( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, int32* );
int32 ASTISACCESSTOLOCAL( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDBYREFRESULTDEREF( struct $7ASTNODE* );
int32 ASTISBYREFRESULTDEREF( struct $7ASTNODE* );
struct $7ASTNODE* ASTREMOVEBYREFRESULTDEREF( struct $7ASTNODE* );
struct $7ASTNODE* ASTIGNORECALLRESULT( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32, int32, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
int32 SYMBISPROCOVERLOADOF( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 SYMBHASDEFCTOR( struct $8FBSYMBOL* );
int32 SYMBISARRAY( struct $8FBSYMBOL* );
int32 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
int32 SYMBVARCHECKACCESS( struct $8FBSYMBOL* );
struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST*, struct $16FB_CALL_ARG_LIST*, int32 );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $9FB_INIOPT;
struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL*, $9FB_INIOPT, int32, struct $8FBSYMBOL* );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
int32 CQUIRKSTMT( $8FB_TOKEN );
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
int32 CASSIGNMENTORPTRCALLEX( struct $7ASTNODE* );
int32 HISASSIGNTOKEN( int32 );
struct $7ASTNODE* CEXPRESSION( void );
struct $7ASTNODE* _Z11CVARIABLEEXP8FBSYMBOLl( struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* _Z11CVARIABLEEXP10FBSYMCHAINl( struct $10FBSYMCHAIN*, int32 );
struct $7ASTNODE* CWITHVARIABLE( int32 );
struct $7ASTNODE* CIMPLICITDATAMEMBER( struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, int32, $12FB_PARSEROPT );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
struct $7ASTNODE* CCONSTANT( struct $8FBSYMBOL* );
struct $7ASTNODE* CPROCARGLIST( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $16FB_CALL_ARG_LIST*, $12FB_PARSEROPT );
void HMETHODCALLADDINSTPTROVLARG( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $16FB_CALL_ARG_LIST*, $12FB_PARSEROPT* );
int32 CMAYBEIGNORECALLRESULT( struct $7ASTNODE* );
struct $7ASTNODE* CPROCCALL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE*, struct $7ASTNODE*, int32, $12FB_PARSEROPT );
struct $7ASTNODE* CCTORCALL( struct $8FBSYMBOL* );
struct $7ASTNODE* CSTRIDXORMEMBERDEREF( struct $7ASTNODE* );
void CASSIGNMENT( struct $7ASTNODE* );
$12FB_PARAMMODE CBYDESCARRAYARGPARENS( struct $7ASTNODE* );
int32 CASSIGNFUNCTRESULT( int32 );
void COPERATORDELETE( void );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static void HCTORCHAIN( void );
static void HBASEINIT( void );
static int32 HBASEMEMBERACCESS( void );
int32 HFORWARDCALL( void );
static int32 HLOOKSLIKEENDOFSTATEMENT( void );
static int32 HPROCSYMBOL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, $12FB_PARSEROPT );
static int32 HVARSYMBOL( struct $8FBSYMBOL*, int32 );
static int32 HMATCHESDEFDTYPE( struct $8FBSYMBOL*, int32 );
static int32 HASSIGNORCALL_QB( struct $10FBSYMCHAIN*, int32 );
static int32 HASSIGNORPTRCALL( struct $7ASTNODE*, int32 );
static int32 HASSIGNORCALL( struct $8FBSYMBOL*, struct $10FBSYMCHAIN*, int32, $12FB_PARSEROPT );
static int32 HPROCCALLORASSIGN_QB( void );
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 12 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 32 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int32 CTORCNT;
	int32 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 40 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 16 );
struct $23AST_DTORLIST_SCOPESTACK {
	int32* COOKIES;
	int32 COUNT;
	int32 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 12 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int32 DOEMIT;
	int32 TYPEINICOUNT;
	int32 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int32 DTORLISTCOOKIES;
	int32 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int32 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 236 );
extern struct $6ASTCTX AST$;
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

$12FB_PARAMMODE CBYDESCARRAYARGPARENS( struct $7ASTNODE* ARG$1 )
{
	$12FB_PARAMMODE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	fb$result$1 = -1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 40 ) goto label$13;
	{
		int32 vr$2 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$2 != 41 ) goto label$15;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12) == (struct $8FBSYMBOL*)0u ) goto label$17;
			{
				int32 vr$5 = SYMBISARRAY( *(struct $8FBSYMBOL**)((uint8*)ARG$1 + 12) );
				if( vr$5 == 0 ) goto label$19;
				{
					LEXSKIPTOKEN( 0 );
					LEXSKIPTOKEN( 0 );
					fb$result$1 = 3;
				}
				label$19:;
				label$18:;
			}
			label$17:;
			label$16:;
		}
		label$15:;
		label$14:;
	}
	label$13:;
	label$12:;
	label$11:;
	return fb$result$1;
}

int32 CASSIGNFUNCTRESULT( int32 IS_RETURN$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	struct $8FBSYMBOL* RES$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $7ASTNODE* RHS$1;
	struct $7ASTNODE* EXPR$1;
	int32 HAS_CTOR$1;
	int32 HAS_DEFCTOR$1;
	int32 ASSIGNOPTIONS$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = SYMBGETPROCRESULT( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
	RES$1 = vr$1;
	if( RES$1 != (struct $8FBSYMBOL*)0u ) goto label$23;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$21;
	}
	label$23:;
	label$22:;
	int32 vr$2 = SYMBHASCTOR( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
	HAS_CTOR$1 = vr$2;
	int32 vr$3 = SYMBHASDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
	HAS_DEFCTOR$1 = vr$3;
	int32 RETURNS_BYREF$1;
	RETURNS_BYREF$1 = -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 2048) != 0);
	if( IS_RETURN$1 == 0 ) goto label$25;
	{
		if( (*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) & 2) == 0 ) goto label$27;
		{
			if( (HAS_DEFCTOR$1 & ~RETURNS_BYREF$1) == 0 ) goto label$29;
			{
				ERRREPORT( 178, 0, (uint8*)0u );
			}
			label$29:;
			label$28:;
		}
		label$27:;
		label$26:;
		*($12FB_PROCSTATS*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) | 1;
	}
	goto label$24;
	label$25:;
	{
		if( (*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) & 1) == 0 ) goto label$31;
		{
			if( (HAS_DEFCTOR$1 & ~RETURNS_BYREF$1) == 0 ) goto label$33;
			{
				ERRREPORT( 179, 0, (uint8*)0u );
			}
			label$33:;
			label$32:;
		}
		label$31:;
		label$30:;
		*($12FB_PROCSTATS*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) = *(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 48) | 2;
	}
	label$24:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 32);
	*(int32*)((uint8*)&PARSER$ + 156) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 511;
	int32 vr$30 = HMATCH( 319, 0 );
	if( (RETURNS_BYREF$1 & ~vr$30) == 0 ) goto label$35;
	{
		struct $7ASTNODE* vr$33 = CVARORDEREF( 4 );
		RHS$1 = vr$33;
		if( RHS$1 == (struct $7ASTNODE*)0u ) goto label$37;
		{
			int32 vr$34 = ASTISACCESSTOLOCAL( RHS$1 );
			if( vr$34 == 0 ) goto label$39;
			{
				ERRREPORT( 272, 0, (uint8*)0u );
			}
			label$39:;
			label$38:;
			int32 vr$37 = ASTCHECKBYREFASSIGN( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 32), RHS$1 );
			if( vr$37 == 0 ) goto label$41;
			{
				struct $7ASTNODE* vr$38 = ASTNEWADDROF( RHS$1 );
				RHS$1 = vr$38;
			}
			goto label$40;
			label$41:;
			{
				ERRREPORT( 318, 0, (uint8*)0u );
				ASTDELTREE( RHS$1 );
				struct $7ASTNODE* vr$53 = ASTNEWCONSTZ( (((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 31) | ((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 480) + 32)) | ((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 261632) << (1 & 31))) | (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 28) & 32505856), *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 32) );
				RHS$1 = vr$53;
			}
			label$40:;
		}
		label$37:;
		label$36:;
	}
	goto label$34;
	label$35:;
	{
		struct $7ASTNODE* vr$54 = CEXPRESSION(  );
		RHS$1 = vr$54;
	}
	label$34:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&PARSER$ + 156) = -2147483648u;
	if( RHS$1 != (struct $7ASTNODE*)0u ) goto label$43;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$21;
	}
	label$43:;
	label$42:;
	*($12FB_SYMBSTATS*)((uint8*)RES$1 + 12) = *(int32*)((uint8*)RES$1 + 12) | 2;
	ASSIGNOPTIONS$1 = 0;
	if( (IS_RETURN$1 & ~RETURNS_BYREF$1) == 0 ) goto label$45;
	{
		if( HAS_CTOR$1 == 0 ) goto label$47;
		{
			int32 IS_CTORCALL$3;
			$12FB_PARAMMODE vr$61 = CBYDESCARRAYARGPARENS( RHS$1 );
			struct $7ASTNODE* vr$62 = ASTBUILDIMPLICITCTORCALLEX( RES$1, RHS$1, vr$61, &IS_CTORCALL$3 );
			RHS$1 = vr$62;
			if( RHS$1 != (struct $7ASTNODE*)0u ) goto label$49;
			{
				goto label$21;
			}
			label$49:;
			label$48:;
			if( IS_CTORCALL$3 == 0 ) goto label$51;
			{
				struct $7ASTNODE* vr$63 = ASTBUILDPROCRESULTVAR( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), RES$1 );
				struct $7ASTNODE* vr$64 = ASTPATCHCTORCALL( RHS$1, vr$63 );
				ASTADD( vr$64 );
				fb$result$1 = -1;
				goto label$21;
			}
			label$51:;
			label$50:;
		}
		label$47:;
		label$46:;
		ASSIGNOPTIONS$1 = 64;
	}
	label$45:;
	label$44:;
	struct $7ASTNODE* vr$65 = ASTBUILDPROCRESULTVAR( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), RES$1 );
	struct $7ASTNODE* vr$66 = ASTNEWASSIGN( vr$65, RHS$1, ASSIGNOPTIONS$1 );
	EXPR$1 = vr$66;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$53;
	{
		ASTDELTREE( RHS$1 );
		ERRREPORT( 181, 0, (uint8*)0u );
	}
	goto label$52;
	label$53:;
	{
		ASTADD( EXPR$1 );
	}
	label$52:;
	fb$result$1 = -1;
	label$21:;
	return fb$result$1;
}

void HMETHODCALLADDINSTPTROVLARG( struct $8FBSYMBOL* PROC$1, struct $7ASTNODE* THISEXPR$1, struct $16FB_CALL_ARG_LIST* ARG_LIST$1, $12FB_PARSEROPT* OPTIONS$1 )
{
	int32 TMP$93$1;
	label$54:;
	if( THISEXPR$1 != (struct $7ASTNODE*)0u ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	struct $11FB_CALL_ARG* ARG$1;
	struct $11FB_CALL_ARG* vr$1 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), ARG_LIST$1, 0 );
	ARG$1 = vr$1;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)PROC$1 + 164);
	if( *(struct $8FBSYMBOL**)((uint8*)THISEXPR$1 + 8) == PARENT$1 ) goto label$59;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONV( *(int32*)((uint8*)PARENT$1 + 28) & 511, PARENT$1, THISEXPR$1, 0, (int32*)0u );
		THISEXPR$1 = vr$7;
	}
	label$59:;
	label$58:;
	*(struct $7ASTNODE**)ARG$1 = THISEXPR$1;
	if( *(int32*)THISEXPR$1 != 16 ) goto label$60;
	TMP$93$1 = 1;
	goto label$61;
	label$60:;
	TMP$93$1 = -1;
	label$61:;
	*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = TMP$93$1;
	*OPTIONS$1 = *(int32*)OPTIONS$1 | 64;
	label$55:;
}

int32 CMAYBEIGNORECALLRESULT( struct $7ASTNODE* EXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$72:;
	struct $7ASTNODE* T$1;
	struct $7ASTNODE* vr$1 = ASTSKIPCASTS( EXPR$1 );
	T$1 = vr$1;
	if( *(int32*)T$1 != 9 ) goto label$75;
	{
		struct $7ASTNODE* vr$3 = ASTREMOVECASTS( EXPR$1 );
		struct $7ASTNODE* vr$4 = ASTIGNORECALLRESULT( vr$3 );
		ASTADD( vr$4 );
		fb$result$1 = -1;
	}
	goto label$74;
	label$75:;
	int32 vr$5 = ASTISBYREFRESULTDEREF( T$1 );
	int32 vr$6 = HLOOKSLIKEENDOFSTATEMENT(  );
	if( (vr$5 & vr$6) == 0 ) goto label$76;
	{
		struct $7ASTNODE* vr$8 = ASTREMOVECASTS( EXPR$1 );
		struct $7ASTNODE* vr$9 = ASTREMOVEBYREFRESULTDEREF( vr$8 );
		struct $7ASTNODE* vr$10 = ASTIGNORECALLRESULT( vr$9 );
		ASTADD( vr$10 );
		fb$result$1 = -1;
	}
	goto label$74;
	label$76:;
	{
		fb$result$1 = 0;
	}
	label$74:;
	label$73:;
	return fb$result$1;
}

struct $7ASTNODE* CPROCCALL( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* PTREXPR$1, struct $7ASTNODE* THISEXPR$1, int32 CHECKPRNTS$1, $12FB_PARSEROPT OPTIONS$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$77:;
	int32 IS_PROPSET$1;
	IS_PROPSET$1 = 0;
	struct $7ASTNODE* PROCEXPR$1;
	struct $16FB_CALL_ARG_LIST ARG_LIST$1;
	*(int32*)&ARG_LIST$1 = 0;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 4) = (struct $11FB_CALL_ARG*)0u;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	fb$result$1 = (struct $7ASTNODE*)0u;
	HMETHODCALLADDINSTPTROVLARG( SYM$1, THISEXPR$1, &ARG_LIST$1, &OPTIONS$1 );
	if( (*(int32*)((uint8*)SYM$1 + 8) & 32) == 0 ) goto label$80;
	{
		int32 IS_INDEXED$2;
		IS_INDEXED$2 = 0;
		int32 vr$5 = LEXGETTOKEN( 0 );
		if( vr$5 != 40 ) goto label$82;
		{
			IS_INDEXED$2 = -1;
			LEXSKIPTOKEN( 0 );
			struct $7ASTNODE* EXPR$3;
			struct $7ASTNODE* vr$6 = CEXPRESSION(  );
			EXPR$3 = vr$6;
			if( EXPR$3 != (struct $7ASTNODE*)0u ) goto label$84;
			{
				ERRREPORT( 9, 0, (uint8*)0u );
				struct $7ASTNODE* vr$7 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
				EXPR$3 = vr$7;
			}
			label$84:;
			label$83:;
			struct $11FB_CALL_ARG* ARG$3;
			struct $11FB_CALL_ARG* vr$10 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), &ARG_LIST$1, 0 );
			ARG$3 = vr$10;
			*(struct $7ASTNODE**)ARG$3 = EXPR$3;
			*($12FB_PARAMMODE*)((uint8*)ARG$3 + 4) = -1;
			int32 vr$13 = LEXGETTOKEN( 0 );
			if( vr$13 == 41 ) goto label$86;
			{
				ERRREPORT( 7, 0, (uint8*)0u );
				HSKIPUNTIL( 41, -1, 0, 0 );
			}
			goto label$85;
			label$86:;
			{
				LEXSKIPTOKEN( 0 );
			}
			label$85:;
		}
		label$82:;
		label$81:;
		int32 vr$14 = LEXGETTOKEN( 0 );
		int32 vr$15 = HISASSIGNTOKEN( vr$14 );
		if( vr$15 == 0 ) goto label$88;
		{
			if( IS_INDEXED$2 == 0 ) goto label$90;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 164) + 120) & 1024) != 0 ) goto label$92;
				{
					ERRREPORT( 197, -1, (uint8*)0u );
					goto label$78;
				}
				label$92:;
				label$91:;
			}
			goto label$89;
			label$90:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 164) + 120) & 256) != 0 ) goto label$94;
				{
					ERRREPORT( 195, 0, (uint8*)0u );
					goto label$78;
				}
				label$94:;
				label$93:;
			}
			label$89:;
			LEXSKIPTOKEN( 0 );
			IS_PROPSET$1 = -1;
		}
		goto label$87;
		label$88:;
		{
			OPTIONS$1 = OPTIONS$1 | 128;
			if( IS_INDEXED$2 == 0 ) goto label$96;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 164) + 120) & 512) != 0 ) goto label$98;
				{
					ERRREPORT( 196, -1, (uint8*)0u );
					goto label$78;
				}
				label$98:;
				label$97:;
			}
			goto label$95;
			label$96:;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 164) + 120) & 128) != 0 ) goto label$100;
				{
					ERRREPORT( 194, 0, (uint8*)0u );
					goto label$78;
				}
				label$100:;
				label$99:;
			}
			label$95:;
		}
		label$87:;
		CHECKPRNTS$1 = 0;
	}
	goto label$79;
	label$80:;
	{
		if( CHECKPRNTS$1 != -1 ) goto label$102;
		{
			if( (int32)*(int16*)((uint8*)SYM$1 + 68) != 0 ) goto label$104;
			{
				CHECKPRNTS$1 = 0;
			}
			label$104:;
			label$103:;
		}
		goto label$101;
		label$102:;
		if( PTREXPR$1 == (struct $7ASTNODE*)0u ) goto label$105;
		{
			CHECKPRNTS$1 = -1;
		}
		label$105:;
		label$101:;
	}
	label$79:;
	if( CHECKPRNTS$1 == 0 ) goto label$107;
	{
		int32 vr$35 = HMATCH( 40, 0 );
		if( vr$35 != 0 ) goto label$109;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		label$109:;
		label$108:;
	}
	label$107:;
	label$106:;
	*(int32*)((uint8*)&PARSER$ + 148) = 0;
	if( ~CHECKPRNTS$1 == 0 ) goto label$111;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
	}
	goto label$110;
	label$111:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
	}
	label$110:;
	struct $7ASTNODE* vr$40 = CPROCARGLIST( BASE_PARENT$1, SYM$1, PTREXPR$1, &ARG_LIST$1, OPTIONS$1 );
	PROCEXPR$1 = vr$40;
	if( (CHECKPRNTS$1 | -(*(int32*)((uint8*)&PARSER$ + 148) > 0)) == 0 ) goto label$113;
	{
		*(int32*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) + -1;
		int32 vr$44 = HMATCH( 41, 0 );
		if( vr$44 != 0 ) goto label$115;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$114;
		label$115:;
		if( *(int32*)((uint8*)&PARSER$ + 148) <= 0 ) goto label$116;
		{
			label$117:;
			if( *(int32*)((uint8*)&PARSER$ + 148) <= 0 ) goto label$118;
			{
				HSKIPUNTIL( 41, -1, 0, 0 );
				*(int32*)((uint8*)&PARSER$ + 148) = *(int32*)((uint8*)&PARSER$ + 148) + -1;
			}
			goto label$117;
			label$118:;
		}
		label$116:;
		label$114:;
	}
	label$113:;
	label$112:;
	goto label$120;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) | 1;
	}
	goto label$119;
	label$120:;
	{
		*($12FB_PARSEROPT*)((uint8*)&PARSER$ + 152) = *(int32*)((uint8*)&PARSER$ + 152) & -2;
	}
	label$119:;
	if( IS_PROPSET$1 != 0 ) goto label$122;
	{
		struct $7ASTNODE* vr$48 = ASTBUILDBYREFRESULTDEREF( PROCEXPR$1 );
		PROCEXPR$1 = vr$48;
		struct $7ASTNODE* vr$49 = CSTRIDXORMEMBERDEREF( PROCEXPR$1 );
		PROCEXPR$1 = vr$49;
		if( PROCEXPR$1 != (struct $7ASTNODE*)0u ) goto label$124;
		{
			goto label$78;
		}
		label$124:;
		label$123:;
	}
	label$122:;
	label$121:;
	int32 vr$50 = CMAYBEIGNORECALLRESULT( PROCEXPR$1 );
	if( vr$50 == 0 ) goto label$126;
	{
		fb$result$1 = (struct $7ASTNODE*)0u;
	}
	goto label$125;
	label$126:;
	{
		fb$result$1 = PROCEXPR$1;
	}
	label$125:;
	label$78:;
	return fb$result$1;
}

int32 CPROCCALLORASSIGN( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$247:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* BASE_PARENT$1;
	struct $7ASTNODE* EXPR$1;
	fb$result$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$250;
	{
		int32 vr$1 = HPROCCALLORASSIGN_QB(  );
		fb$result$1 = vr$1;
		goto label$248;
	}
	label$250:;
	label$249:;
	{
		uint32 TMP$100$2;
		int32 vr$2 = LEXGETCLASS( 0 );
		TMP$100$2 = (uint32)vr$2;
		goto label$252;
		label$253:;
		{
			struct $10FBSYMCHAIN* vr$4 = CIDENTIFIER( &BASE_PARENT$1, 50 );
			CHAIN_$1 = vr$4;
			int32 vr$5 = HASSIGNORCALL( BASE_PARENT$1, CHAIN_$1, 0, 0 );
			fb$result$1 = vr$5;
			goto label$248;
		}
		goto label$251;
		label$254:;
		{
			{
				uint32 TMP$101$4;
				int32 vr$6 = LEXGETTOKEN( 0 );
				TMP$101$4 = (uint32)vr$6;
				goto label$256;
				label$257:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$259;
					{
						ERRREPORT( 254, 0, (uint8*)0u );
						HSKIPUNTIL( -1, 0, 0, 0 );
						fb$result$1 = -1;
						goto label$248;
					}
					label$259:;
					label$258:;
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 16) == 0 ) goto label$261;
					{
						ERRREPORT( 157, 0, (uint8*)0u );
					}
					goto label$260;
					label$261:;
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 32) == 0 ) goto label$262;
					{
						ERRREPORT( 192, 0, (uint8*)0u );
					}
					label$262:;
					label$260:;
					LEXSKIPTOKEN( 2048 );
					LEXSKIPTOKEN( 0 );
					int32 vr$11 = CASSIGNFUNCTRESULT( 0 );
					fb$result$1 = vr$11;
					goto label$248;
				}
				goto label$255;
				label$263:;
				{
					if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 16) != 0 ) goto label$265;
					{
						ERRREPORT( 144, 0, (uint8*)0u );
						HSKIPUNTIL( -1, 0, 0, 0 );
						fb$result$1 = -1;
						goto label$248;
					}
					label$265:;
					label$264:;
					LEXSKIPTOKEN( 2048 );
					LEXSKIPTOKEN( 0 );
					int32 vr$14 = CASSIGNFUNCTRESULT( 0 );
					fb$result$1 = vr$14;
					goto label$248;
				}
				goto label$255;
				label$266:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$268;
					{
						ERRREPORT( 193, 0, (uint8*)0u );
						HSKIPUNTIL( -1, 0, 0, 0 );
						fb$result$1 = -1;
						goto label$248;
					}
					goto label$267;
					label$268:;
					{
						if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 32) != 0 ) goto label$270;
						{
							ERRREPORT( 193, 0, (uint8*)0u );
						}
						label$270:;
						label$269:;
					}
					label$267:;
					LEXSKIPTOKEN( 2048 );
					LEXSKIPTOKEN( 0 );
					int32 vr$17 = CASSIGNFUNCTRESULT( 0 );
					fb$result$1 = vr$17;
					goto label$248;
				}
				goto label$255;
				label$271:;
				{
					HCTORCHAIN(  );
					fb$result$1 = -1;
					goto label$248;
				}
				goto label$255;
				label$272:;
				{
					int32 vr$18 = LEXGETLOOKAHEAD( 1, 0 );
					if( vr$18 != 46 ) goto label$274;
					{
						int32 vr$19 = HBASEMEMBERACCESS(  );
						fb$result$1 = vr$19;
						goto label$248;
					}
					goto label$273;
					label$274:;
					{
						HBASEINIT(  );
						fb$result$1 = -1;
						goto label$248;
					}
					label$273:;
				}
				goto label$255;
				label$275:;
				{
					if( (*(int32*)((uint8*)&ENV$ + 1040) & 131072) != 0 ) goto label$277;
					{
						ERRREPORTNOTALLOWED( 131072, 146, (uint8*)0u );
						HSKIPUNTIL( -1, 0, 0, 0 );
						fb$result$1 = -1;
						goto label$248;
					}
					label$277:;
					label$276:;
					int32 vr$21 = CCOMPSTMTISALLOWED( 1 );
					if( vr$21 != 0 ) goto label$279;
					{
						HSKIPUNTIL( -1, 0, 0, 0 );
						fb$result$1 = -1;
						goto label$248;
					}
					label$279:;
					label$278:;
					LEXSKIPTOKEN( 2048 );
					struct $10FBSYMCHAIN* vr$23 = CIDENTIFIER( &BASE_PARENT$1, 34 );
					CHAIN_$1 = vr$23;
					if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$281;
					{
						int32 vr$24 = HASSIGNORCALL( BASE_PARENT$1, CHAIN_$1, -1, 0 );
						fb$result$1 = vr$24;
						goto label$248;
					}
					label$281:;
					label$280:;
					ERRREPORT( 14, 0, (uint8*)0u );
					fb$result$1 = -1;
					goto label$248;
				}
				goto label$255;
				label$256:;
				static const void* tmp$102[50] = {
					&&label$257,
					&&label$271,
					&&label$255,
					&&label$263,
					&&label$266,
					&&label$255,
					&&label$255,
					&&label$272,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$255,
					&&label$275,
				};
				if( (TMP$101$4 - 346u) > 49u ) goto label$255;
				goto *tmp$102[TMP$101$4 - 346u];
				label$255:;
			}
		}
		goto label$251;
		label$282:;
		{
			int32 vr$25 = LEXGETTOKEN( 0 );
			if( vr$25 != 390 ) goto label$284;
			{
				COPERATORDELETE(  );
				fb$result$1 = -1;
				goto label$248;
			}
			label$284:;
			label$283:;
		}
		goto label$251;
		label$285:;
		{
			int32 vr$26 = LEXGETTOKEN( 0 );
			if( vr$26 != 46 ) goto label$287;
			{
				if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$289;
				{
					int32 vr$27 = LEXGETLOOKAHEAD( 1, 64 );
					if( vr$27 == 46 ) goto label$291;
					{
						struct $7ASTNODE* vr$30 = CWITHVARIABLE( -((*(int32*)((uint8*)&PARSER$ + 152) & 2) != 0) );
						EXPR$1 = vr$30;
						if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$293;
						{
							goto label$248;
						}
						label$293:;
						label$292:;
						int32 vr$31 = CASSIGNMENTORPTRCALLEX( EXPR$1 );
						fb$result$1 = vr$31;
						goto label$248;
					}
					label$291:;
					label$290:;
				}
				label$289:;
				label$288:;
				struct $10FBSYMCHAIN* vr$33 = CIDENTIFIER( &BASE_PARENT$1, 50 );
				CHAIN_$1 = vr$33;
				if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$295;
				{
					int32 vr$34 = HASSIGNORCALL( BASE_PARENT$1, CHAIN_$1, 0, 0 );
					fb$result$1 = vr$34;
					goto label$248;
				}
				label$295:;
				label$294:;
			}
			label$287:;
			label$286:;
		}
		goto label$251;
		label$252:;
		static const void* tmp$103[7] = {
			&&label$253,
			&&label$254,
			&&label$253,
			&&label$251,
			&&label$251,
			&&label$282,
			&&label$285,
		};
		if( TMP$100$2 > 6u ) goto label$251;
		goto *tmp$103[TMP$100$2 - 0u];
		label$251:;
	}
	label$248:;
	return fb$result$1;
}

int32 HFORWARDCALL( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$325:;
	fb$result$1 = 0;
	{
		int32 TMP$104$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$104$2 = vr$1;
		if( TMP$104$2 != 0 ) goto label$328;
		label$329:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 524288) == 0 ) goto label$331;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$333;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4120) <= 0 ) goto label$335;
					{
						ERRREPORT( 90, 0, (uint8*)0u );
					}
					label$335:;
					label$334:;
				}
				label$333:;
				label$332:;
			}
			label$331:;
			label$330:;
		}
		goto label$327;
		label$328:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			HSKIPUNTIL( 40, 0, 0, 0 );
			goto label$326;
		}
		label$336:;
		label$327:;
	}
	FBSTRING ID$1;
	uint8* vr$6 = LEXGETTEXT(  );
	fb_StrInit( (void*)&ID$1, -1, (void*)vr$6, 0, 0 );
	if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == -2147483648u ) goto label$338;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
	}
	label$338:;
	label$337:;
	LEXSKIPTOKEN( 0 );
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* vr$10 = SYMBPREADDPROC( (uint8*)*(uint8**)&ID$1 );
	PROC$1 = vr$10;
	int32 CHECK_PRNT$1;
	CHECK_PRNT$1 = 0;
	int32 vr$11 = LEXGETTOKEN( 0 );
	if( vr$11 != 40 ) goto label$340;
	{
		LEXSKIPTOKEN( 0 );
		CHECK_PRNT$1 = -1;
	}
	label$340:;
	label$339:;
	struct $16FB_CALL_ARG_LIST ARG_LIST$1;
	*(int32*)&ARG_LIST$1 = 0;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 4) = (struct $11FB_CALL_ARG*)0u;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	label$341:;
	{
		int32 TMP$106$2;
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$12 = CEXPRESSION(  );
		EXPR$2 = vr$12;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$345;
		{
			goto label$342;
		}
		label$345:;
		label$344:;
		$12FB_PARAMMODE MODE$2;
		MODE$2 = 2;
		int32 vr$13 = LEXGETTOKEN( 0 );
		if( vr$13 != 40 ) goto label$347;
		{
			int32 vr$14 = LEXGETLOOKAHEAD( 1, 0 );
			if( vr$14 != 41 ) goto label$349;
			{
				LEXSKIPTOKEN( 0 );
				LEXSKIPTOKEN( 0 );
				MODE$2 = 3;
			}
			label$349:;
			label$348:;
		}
		label$347:;
		label$346:;
		int32 DTYPE$2;
		DTYPE$2 = 0;
		{
			int32 TMP$105$3;
			TMP$105$3 = *(int32*)((uint8*)EXPR$2 + 4) & 511;
			if( TMP$105$3 == 17 ) goto label$352;
			label$353:;
			if( TMP$105$3 == 18 ) goto label$352;
			label$354:;
			if( TMP$105$3 == 4 ) goto label$352;
			label$355:;
			if( TMP$105$3 != 7 ) goto label$351;
			label$352:;
			{
				DTYPE$2 = 17;
			}
			label$351:;
			label$350:;
		}
		if( MODE$2 != 3 ) goto label$356;
		TMP$106$2 = -1;
		goto label$367;
		label$356:;
		TMP$106$2 = 0;
		label$367:;
		struct $8FBSYMBOL* vr$17 = SYMBADDPROCPARAM( PROC$1, (uint8*)0u, DTYPE$2, (struct $8FBSYMBOL*)0u, TMP$106$2, MODE$2, 0, 0 );
		if( vr$17 != (struct $8FBSYMBOL*)0u ) goto label$358;
		{
			goto label$342;
		}
		label$358:;
		label$357:;
		struct $11FB_CALL_ARG* ARG$2;
		struct $11FB_CALL_ARG* vr$20 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)((uint8*)&PARSER$ + 116), &ARG_LIST$1, 0 );
		ARG$2 = vr$20;
		*(struct $7ASTNODE**)ARG$2 = EXPR$2;
		*($12FB_PARAMMODE*)((uint8*)ARG$2 + 4) = -1;
		int32 vr$23 = LEXGETTOKEN( 0 );
		if( vr$23 == 44 ) goto label$360;
		{
			goto label$342;
		}
		label$360:;
		label$359:;
		LEXSKIPTOKEN( 0 );
	}
	label$343:;
	goto label$341;
	label$342:;
	if( CHECK_PRNT$1 == 0 ) goto label$362;
	{
		int32 vr$24 = LEXGETTOKEN( 0 );
		if( vr$24 == 41 ) goto label$364;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$363;
		label$364:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$363:;
	}
	label$362:;
	label$361:;
	struct $8FBSYMBOL* vr$25 = SYMBADDPROC( PROC$1, (uint8*)*(uint8**)&ID$1, (uint8*)0u, 0, (struct $8FBSYMBOL*)0u, 0, 0, *(int32*)((uint8*)&ENV$ + 276), 0 );
	PROC$1 = vr$25;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$366;
	{
		ERRREPORT( 4, -1, (uint8*)0u );
		fb_StrDelete( (FBSTRING*)&ID$1 );
		goto label$326;
	}
	label$366:;
	label$365:;
	struct $7ASTNODE* vr$28 = CPROCARGLIST( (struct $8FBSYMBOL*)0u, PROC$1, (struct $7ASTNODE*)0u, &ARG_LIST$1, 32 );
	ASTADD( vr$28 );
	fb$result$1 = -1;
	fb_StrDelete( (FBSTRING*)&ID$1 );
	label$326:;
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

static int32 HLOOKSLIKEENDOFSTATEMENT( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$62:;
	{
		int32 TMP$94$2;
		int32 vr$1 = LEXGETTOKEN( 0 );
		TMP$94$2 = vr$1;
		if( TMP$94$2 == 258 ) goto label$66;
		label$67:;
		if( TMP$94$2 == 257 ) goto label$66;
		label$68:;
		if( TMP$94$2 == 256 ) goto label$66;
		label$69:;
		if( TMP$94$2 == 259 ) goto label$66;
		label$70:;
		if( TMP$94$2 != 260 ) goto label$65;
		label$66:;
		{
			fb$result$1 = -1;
		}
		goto label$64;
		label$65:;
		{
			fb$result$1 = 0;
		}
		label$71:;
		label$64:;
	}
	label$63:;
	return fb$result$1;
}

static int32 HPROCSYMBOL( struct $8FBSYMBOL* BASE_PARENT$1, struct $8FBSYMBOL* SYM$1, int32 ISCALL$1, $12FB_PARSEROPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$127:;
	int32 DO_CALL$1;
	fb$result$1 = 0;
	int32 vr$1 = CCOMPSTMTISALLOWED( 1 );
	if( vr$1 != 0 ) goto label$130;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$128;
	}
	label$130:;
	label$129:;
	LEXSKIPTOKEN( 4096 );
	int32 vr$2 = LEXGETTOKEN( 0 );
	int32 vr$3 = HISASSIGNTOKEN( vr$2 );
	DO_CALL$1 = ~vr$3;
	if( DO_CALL$1 != 0 ) goto label$132;
	{
		if( (*(int32*)((uint8*)SYM$1 + 8) & 32) == 0 ) goto label$134;
		{
			DO_CALL$1 = -1;
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 32) == 0 ) goto label$136;
			{
				if( (int32)*(int16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 68) != 1 ) goto label$138;
				{
					int32 vr$11 = SYMBISPROCOVERLOADOF( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), SYM$1 );
					if( vr$11 == 0 ) goto label$140;
					{
						DO_CALL$1 = 0;
					}
					label$140:;
					label$139:;
				}
				label$138:;
				label$137:;
			}
			label$136:;
			label$135:;
		}
		label$134:;
		label$133:;
	}
	label$132:;
	label$131:;
	if( DO_CALL$1 == 0 ) goto label$142;
	{
		struct $7ASTNODE* EXPR$2;
		struct $7ASTNODE* vr$12 = CPROCCALL( BASE_PARENT$1, SYM$1, (struct $7ASTNODE*)0u, (struct $7ASTNODE*)0u, 0, OPTIONS$1 );
		EXPR$2 = vr$12;
		if( EXPR$2 == (struct $7ASTNODE*)0u ) goto label$144;
		{
			CASSIGNMENT( EXPR$2 );
		}
		label$144:;
		label$143:;
		fb$result$1 = -1;
		goto label$128;
	}
	label$142:;
	label$141:;
	if( ISCALL$1 == 0 ) goto label$146;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$128;
	}
	label$146:;
	label$145:;
	int32 vr$13 = SYMBISPROCOVERLOADOF( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108), SYM$1 );
	if( vr$13 != 0 ) goto label$148;
	{
		ERRREPORT( 317, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$128;
	}
	label$148:;
	label$147:;
	LEXSKIPTOKEN( 0 );
	int32 vr$14 = CASSIGNFUNCTRESULT( 0 );
	fb$result$1 = vr$14;
	label$128:;
	return fb$result$1;
}

static int32 HVARSYMBOL( struct $8FBSYMBOL* SYM$1, int32 ISCALL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$149:;
	struct $7ASTNODE* EXPR$1;
	fb$result$1 = 0;
	struct $7ASTNODE* vr$1 = _Z11CVARIABLEEXP8FBSYMBOLl( SYM$1, -1 );
	EXPR$1 = vr$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$152;
	{
		goto label$150;
	}
	label$152:;
	label$151:;
	if( ISCALL$1 == 0 ) goto label$154;
	{
		if( *(int32*)EXPR$1 == 9 ) goto label$156;
		{
			ASTDELTREE( EXPR$1 );
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$150;
		}
		label$156:;
		label$155:;
	}
	label$154:;
	label$153:;
	int32 vr$3 = CASSIGNMENTORPTRCALLEX( EXPR$1 );
	fb$result$1 = vr$3;
	label$150:;
	return fb$result$1;
}

static int32 HMATCHESDEFDTYPE( struct $8FBSYMBOL* SYM$1, int32 DEFDTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	if( DEFDTYPE$1 != 17 ) goto label$160;
	{
		{
			int32 TMP$95$3;
			TMP$95$3 = *(int32*)((uint8*)SYM$1 + 28) & 511;
			if( TMP$95$3 == 17 ) goto label$163;
			label$164:;
			if( TMP$95$3 == 18 ) goto label$163;
			label$165:;
			if( TMP$95$3 != 4 ) goto label$162;
			label$163:;
			{
				fb$result$1 = -1;
			}
			goto label$161;
			label$162:;
			{
				fb$result$1 = 0;
			}
			label$166:;
			label$161:;
		}
	}
	goto label$159;
	label$160:;
	{
		fb$result$1 = -((*(int32*)((uint8*)SYM$1 + 28) & 511) == DEFDTYPE$1);
	}
	label$159:;
	label$158:;
	return fb$result$1;
}

static int32 HASSIGNORCALL_QB( struct $10FBSYMCHAIN* CHAIN_$1, int32 ISCALL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$167:;
	fb$result$1 = 0;
	uint8* ID$1;
	uint8* vr$1 = LEXGETTEXT(  );
	ID$1 = vr$1;
	int32 SUFFIX$1;
	SUFFIX$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8);
	int32 DEFDTYPE$1;
	int32 vr$4 = SYMBGETDEFTYPE( (uint8*)ID$1 );
	DEFDTYPE$1 = vr$4;
	label$169:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$170;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		struct $8FBSYMBOL* VAR_SYM$2;
		VAR_SYM$2 = (struct $8FBSYMBOL*)0u;
		if( SUFFIX$1 != -2147483648u ) goto label$172;
		{
			label$173:;
			{
				int32 IS_MATCH$4;
				IS_MATCH$4 = -1;
				if( (*(int32*)((uint8*)SYM$2 + 4) & 1048576) == 0 ) goto label$177;
				{
					if( *(int32*)SYM$2 != 1 ) goto label$179;
					{
						int32 vr$9 = HMATCHESDEFDTYPE( SYM$2, DEFDTYPE$1 );
						IS_MATCH$4 = vr$9;
					}
					label$179:;
					label$178:;
				}
				label$177:;
				label$176:;
				if( IS_MATCH$4 == 0 ) goto label$181;
				{
					{
						uint32 TMP$96$6;
						TMP$96$6 = *(uint32*)SYM$2;
						goto label$183;
						label$184:;
						{
							if( (*(int32*)((uint8*)SYM$2 + 12) & 32) == 0 ) goto label$186;
							{
								IS_MATCH$4 = -((*(int32*)((uint8*)SYM$2 + 4) & 1048576) == 0);
							}
							label$186:;
							label$185:;
							if( IS_MATCH$4 == 0 ) goto label$188;
							{
								int32 vr$16 = HPROCSYMBOL( (struct $8FBSYMBOL*)0u, SYM$2, ISCALL$1, 0 );
								fb$result$1 = vr$16;
								goto label$168;
							}
							label$188:;
							label$187:;
						}
						goto label$182;
						label$189:;
						{
							if( VAR_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$191;
							{
								int32 vr$17 = SYMBVARCHECKACCESS( SYM$2 );
								if( vr$17 == 0 ) goto label$193;
								{
									VAR_SYM$2 = SYM$2;
								}
								label$193:;
								label$192:;
							}
							label$191:;
							label$190:;
						}
						goto label$182;
						label$194:;
						{
							if( (*(int32*)((uint8*)SYM$2 + 4) & 1048576) != 0 ) goto label$196;
							{
								int32 vr$21 = CQUIRKSTMT( *($8FB_TOKEN*)((uint8*)SYM$2 + 56) );
								fb$result$1 = vr$21;
								goto label$168;
							}
							label$196:;
							label$195:;
						}
						goto label$182;
						label$183:;
						static const void* tmp$107[6] = {
							&&label$189,
							&&label$182,
							&&label$184,
							&&label$182,
							&&label$182,
							&&label$194,
						};
						if( (TMP$96$6 - 1u) > 5u ) goto label$182;
						goto *tmp$107[TMP$96$6 - 1u];
						label$182:;
					}
				}
				label$181:;
				label$180:;
				SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
			}
			label$175:;
			if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$173;
			label$174:;
		}
		goto label$171;
		label$172:;
		{
			label$197:;
			{
				int32 vr$23 = HMATCHESDEFDTYPE( SYM$2, SUFFIX$1 );
				if( vr$23 == 0 ) goto label$201;
				{
					{
						uint32 TMP$97$6;
						TMP$97$6 = *(uint32*)SYM$2;
						goto label$203;
						label$204:;
						{
							int32 vr$25 = HPROCSYMBOL( (struct $8FBSYMBOL*)0u, SYM$2, ISCALL$1, 0 );
							fb$result$1 = vr$25;
							goto label$168;
						}
						goto label$202;
						label$205:;
						{
							if( VAR_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$207;
							{
								int32 vr$26 = SYMBVARCHECKACCESS( SYM$2 );
								if( vr$26 == 0 ) goto label$209;
								{
									VAR_SYM$2 = SYM$2;
								}
								label$209:;
								label$208:;
							}
							label$207:;
							label$206:;
						}
						goto label$202;
						label$210:;
						{
							int32 vr$28 = CQUIRKSTMT( *($8FB_TOKEN*)((uint8*)SYM$2 + 56) );
							fb$result$1 = vr$28;
							goto label$168;
						}
						goto label$202;
						label$203:;
						static const void* tmp$108[6] = {
							&&label$205,
							&&label$202,
							&&label$204,
							&&label$202,
							&&label$202,
							&&label$210,
						};
						if( (TMP$97$6 - 1u) > 5u ) goto label$202;
						goto *tmp$108[TMP$97$6 - 1u];
						label$202:;
					}
				}
				label$201:;
				label$200:;
				SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
			}
			label$199:;
			if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$197;
			label$198:;
		}
		label$171:;
		if( VAR_SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$212;
		{
			int32 vr$30 = HVARSYMBOL( VAR_SYM$2, ISCALL$1 );
			fb$result$1 = vr$30;
			goto label$168;
		}
		label$212:;
		label$211:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	goto label$169;
	label$170:;
	label$168:;
	return fb$result$1;
}

static int32 HASSIGNORPTRCALL( struct $7ASTNODE* EXPR$1, int32 ISCALL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$213:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$216;
	{
		goto label$214;
	}
	label$216:;
	label$215:;
	if( ISCALL$1 == 0 ) goto label$218;
	{
		if( *(int32*)EXPR$1 == 9 ) goto label$220;
		{
			ASTDELTREE( EXPR$1 );
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$214;
		}
		label$220:;
		label$219:;
	}
	label$218:;
	label$217:;
	int32 vr$2 = CASSIGNMENTORPTRCALLEX( EXPR$1 );
	fb$result$1 = vr$2;
	label$214:;
	return fb$result$1;
}

static int32 HASSIGNORCALL( struct $8FBSYMBOL* BASE_PARENT$1, struct $10FBSYMCHAIN* CHAIN_$1, int32 ISCALL$1, $12FB_PARSEROPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$221:;
	fb$result$1 = 0;
	label$223:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$224;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$225:;
		{
			{
				uint32 TMP$98$4;
				TMP$98$4 = *(uint32*)SYM$2;
				goto label$229;
				label$230:;
				{
					int32 vr$3 = HPROCSYMBOL( BASE_PARENT$1, SYM$2, ISCALL$1, OPTIONS$1 );
					fb$result$1 = vr$3;
					goto label$222;
				}
				goto label$228;
				label$231:;
				{
					struct $7ASTNODE* vr$4 = _Z11CVARIABLEEXP10FBSYMCHAINl( CHAIN_$1, -1 );
					int32 vr$5 = HASSIGNORPTRCALL( vr$4, ISCALL$1 );
					fb$result$1 = vr$5;
					goto label$222;
				}
				goto label$228;
				label$232:;
				{
					struct $7ASTNODE* vr$6 = CIMPLICITDATAMEMBER( BASE_PARENT$1, CHAIN_$1, -1, OPTIONS$1 );
					int32 vr$7 = HASSIGNORPTRCALL( vr$6, ISCALL$1 );
					fb$result$1 = vr$7;
					goto label$222;
				}
				goto label$228;
				label$233:;
				{
					struct $7ASTNODE* vr$8 = CCONSTANT( SYM$2 );
					int32 vr$9 = HASSIGNORPTRCALL( vr$8, ISCALL$1 );
					fb$result$1 = vr$9;
					goto label$222;
				}
				goto label$228;
				label$234:;
				{
					int32 vr$11 = CQUIRKSTMT( *($8FB_TOKEN*)((uint8*)SYM$2 + 56) );
					fb$result$1 = vr$11;
					goto label$222;
				}
				goto label$228;
				label$229:;
				static const void* tmp$109[12] = {
					&&label$231,
					&&label$233,
					&&label$230,
					&&label$228,
					&&label$228,
					&&label$234,
					&&label$228,
					&&label$228,
					&&label$228,
					&&label$228,
					&&label$228,
					&&label$232,
				};
				if( (TMP$98$4 - 1u) > 11u ) goto label$228;
				goto *tmp$109[TMP$98$4 - 1u];
				label$228:;
			}
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		label$227:;
		if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$225;
		label$226:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	goto label$223;
	label$224:;
	label$222:;
	return fb$result$1;
}

static int32 HPROCCALLORASSIGN_QB( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$235:;
	fb$result$1 = 0;
	{
		uint32 TMP$99$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$99$2 = (uint32)vr$1;
		goto label$238;
		label$239:;
		{
			int32 vr$4 = HASSIGNORCALL_QB( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116), 0 );
			fb$result$1 = vr$4;
			goto label$236;
		}
		goto label$237;
		label$240:;
		{
			int32 vr$5 = LEXGETTOKEN( 0 );
			if( vr$5 == 395 ) goto label$242;
			{
				int32 vr$8 = HASSIGNORCALL_QB( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116), 0 );
				fb$result$1 = vr$8;
				goto label$236;
			}
			label$242:;
			label$241:;
			int32 vr$9 = CCOMPSTMTISALLOWED( 1 );
			if( vr$9 != 0 ) goto label$244;
			{
				HSKIPUNTIL( -1, 0, 0, 0 );
				goto label$236;
			}
			label$244:;
			label$243:;
			LEXSKIPTOKEN( 2048 );
			if( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116) != (struct $10FBSYMCHAIN*)0u ) goto label$246;
			{
				int32 vr$12 = HFORWARDCALL(  );
				fb$result$1 = vr$12;
				goto label$236;
			}
			goto label$245;
			label$246:;
			{
				int32 vr$15 = HASSIGNORCALL_QB( *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116), -1 );
				fb$result$1 = vr$15;
				goto label$236;
			}
			label$245:;
		}
		goto label$237;
		label$238:;
		static const void* tmp$110[6] = {
			&&label$239,
			&&label$240,
			&&label$239,
			&&label$237,
			&&label$237,
			&&label$239,
		};
		if( TMP$99$2 > 5u ) goto label$237;
		goto *tmp$110[TMP$99$2 - 0u];
		label$237:;
	}
	label$236:;
	return fb$result$1;
}

static void HCTORCHAIN( void )
{
	label$296:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* THIS_$1;
	struct $8FBSYMBOL* CTOR_HEAD$1;
	struct $7ASTNODE* THIS_EXPR$1;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 4) != 0 ) goto label$299;
	{
		ERRREPORT( 165, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$297;
	}
	label$299:;
	label$298:;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 144);
	struct $7ASTNODE* vr$4 = ASTFINDFIRSTCODE( *(struct $7ASTNODE**)((uint8*)&AST$ + 40) );
	if( (-(vr$4 != (struct $7ASTNODE*)0u) | -(*(struct $7ASTNODE**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 64) != (struct $7ASTNODE*)0u)) == 0 ) goto label$301;
	{
		ERRREPORT( 169, 0, (uint8*)0u );
	}
	label$301:;
	label$300:;
	*($12FB_SYMBSTATS*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 12) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 12) | 4;
	LEXSKIPTOKEN( 2048 );
	struct $7ASTNODE* vr$15 = ASTBUILDVARFIELD( *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 76) + 60), (struct $8FBSYMBOL*)0u, 0ll );
	struct $8FBSYMBOL* vr$16 = SYMBGETCOMPCTORHEAD( PARENT$1 );
	CPROCCALL( (struct $8FBSYMBOL*)0u, vr$16, (struct $7ASTNODE*)0u, vr$15, 0, 0 );
	label$297:;
}

static void HBASEINIT( void )
{
	label$302:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* BASE_$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $7ASTNODE* INITREE$1;
	struct $7ASTNODE* CTORCALL$1;
	if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 4) != 0 ) goto label$305;
	{
		ERRREPORT( 165, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$303;
	}
	label$305:;
	label$304:;
	BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 144) + 96);
	if( BASE_$1 != (struct $8FBSYMBOL*)0u ) goto label$307;
	{
		ERRREPORT( 295, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$303;
	}
	label$307:;
	label$306:;
	struct $7ASTNODE* vr$5 = ASTFINDFIRSTCODE( *(struct $7ASTNODE**)((uint8*)&AST$ + 40) );
	if( (-(vr$5 != (struct $7ASTNODE*)0u) | -(*(struct $7ASTNODE**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 64) != (struct $7ASTNODE*)0u)) == 0 ) goto label$309;
	{
		ERRREPORT( 170, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$303;
	}
	label$309:;
	label$308:;
	LEXSKIPTOKEN( 2048 );
	SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 32);
	struct $8FBSYMBOL* vr$12 = SYMBGETCOMPCTORHEAD( SUBTYPE$1 );
	if( vr$12 == (struct $8FBSYMBOL*)0u ) goto label$311;
	{
		struct $7ASTNODE* vr$13 = CCTORCALL( SUBTYPE$1 );
		CTORCALL$1 = vr$13;
		struct $7ASTNODE* vr$14 = ASTCALLCTORTOCALL( CTORCALL$1 );
		CTORCALL$1 = vr$14;
		struct $7ASTNODE* vr$15 = ASTTYPEINIBEGIN( 20, SUBTYPE$1, -1, 0ll );
		INITREE$1 = vr$15;
		ASTTYPEINIADDCTORCALL( INITREE$1, BASE_$1, CTORCALL$1, -2147483648u, (struct $8FBSYMBOL*)0u );
		ASTTYPEINIEND( INITREE$1, -1 );
	}
	goto label$310;
	label$311:;
	{
		struct $7ASTNODE* vr$16 = CINITIALIZER( BASE_$1, 1, -2147483648u, (struct $8FBSYMBOL*)0u );
		INITREE$1 = vr$16;
	}
	label$310:;
	*(struct $7ASTNODE**)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 112) + 64) = INITREE$1;
	label$303:;
}

static int32 HBASEMEMBERACCESS( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$312:;
	struct $8FBSYMBOL* PROC$1;
	PROC$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) != 0 ) goto label$315;
	{
		ERRREPORT( 294, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		fb$result$1 = -1;
		goto label$313;
	}
	label$315:;
	label$314:;
	struct $8FBSYMBOL* PARENT$1;
	PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 144);
	struct $8FBSYMBOL* BASE_$1;
	BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)PARENT$1 + 96);
	label$316:;
	{
		if( BASE_$1 != (struct $8FBSYMBOL*)0u ) goto label$320;
		{
			ERRREPORT( 295, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$313;
		}
		label$320:;
		label$319:;
		LEXSKIPTOKEN( 2112 );
		LEXSKIPTOKEN( 0 );
		int32 vr$6 = LEXGETTOKEN( 0 );
		if( vr$6 == 353 ) goto label$322;
		{
			goto label$317;
		}
		label$322:;
		label$321:;
		int32 vr$7 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$7 == 46 ) goto label$324;
		{
			ERRREPORT( 120, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			fb$result$1 = -1;
			goto label$313;
		}
		label$324:;
		label$323:;
		BASE_$1 = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 32) + 96);
	}
	label$318:;
	goto label$316;
	label$317:;
	struct $10FBSYMCHAIN CHAIN_$1;
	*(struct $8FBSYMBOL**)&CHAIN_$1 = BASE_$1;
	*(struct $10FBSYMCHAIN**)((uint8*)&CHAIN_$1 + 4) = (struct $10FBSYMCHAIN*)0u;
	*(int32*)((uint8*)&CHAIN_$1 + 8) = 0;
	__builtin_memset( (void*)((uint8*)&CHAIN_$1 + 12), 0, 12 );
	int32 vr$13 = HASSIGNORCALL( *(struct $8FBSYMBOL**)((uint8*)BASE_$1 + 32), &CHAIN_$1, 0, 2048 );
	fb$result$1 = vr$13;
	label$313:;
	return fb$result$1;
}
