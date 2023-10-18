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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int32 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
typedef int32 $6AST_OP;
typedef int32 $13AST_NODECLASS;
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
typedef int32 $12FB_SYMBCLASS;
typedef int32 $13FB_SYMBATTRIB;
typedef int32 $13FB_PROCATTRIB;
typedef int32 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
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
struct $12FB_PROCOPOVL {
	$6AST_OP OP;
};
__FB_STATIC_ASSERT( sizeof( struct $12FB_PROCOPOVL ) == 4 );
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
struct $15FB_LETSTMT_NODE {
	struct $7ASTNODE* EXPR;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_LETSTMT_NODE ) == 4 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_IntToStr( int32 );
static void fb_ctor__parserzassignment( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
int32 ASTISCONSTANT( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int32, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int32, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTBUILDCALLRESULTUDT( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
typedef int32 $15FB_CMPSTMT_MASK;
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
int32 CASSIGNMENTORPTRCALLEX( struct $7ASTNODE* );
int32 HISASSIGNTOKEN( int32 );
int32 CASSIGNTOKEN( void );
int32 COPERATOR( int32 );
struct $7ASTNODE* CEXPRESSION( void );
typedef int32 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
int32 CMAYBEIGNORECALLRESULT( struct $7ASTNODE* );
void CASSIGNMENT( struct $7ASTNODE* );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static uint8* HCARD2ORD( int32 );
static void HREPORTLETERROR( int32, int32 );
static struct $7ASTNODE* HASSIGNFROMFIELD( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32 );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
typedef int32 $8FB_TOKEN;
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

void PARSERLETINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PARSER$ + 56), 16, 4, -1 );
	label$11:;
}

void PARSERLETEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PARSER$ + 56) );
	label$13:;
}

int32 HISASSIGNTOKEN( int32 TOKEN$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	fb$result$1 = -(TOKEN$1 == 299) | -(TOKEN$1 == 305);
	label$15:;
	return fb$result$1;
}

int32 CASSIGNTOKEN( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	int32 vr$1 = LEXGETTOKEN( 0 );
	int32 vr$2 = HISASSIGNTOKEN( vr$1 );
	if( vr$2 == 0 ) goto label$19;
	{
		LEXSKIPTOKEN( 0 );
		fb$result$1 = -1;
	}
	goto label$18;
	label$19:;
	{
		fb$result$1 = 0;
	}
	label$18:;
	label$17:;
	return fb$result$1;
}

int32 COPERATOR( int32 IS_OVERLOAD$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$20:;
	int32 OP$1;
	int32 TK$1;
	fb$result$1 = -1;
	OP$1 = -1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	TK$1 = vr$1;
	{
		uint32 TMP$92$2;
		TMP$92$2 = (uint32)TK$1;
		goto label$23;
		label$24:;
		{
			OP$1 = 34;
		}
		goto label$22;
		label$25:;
		{
			OP$1 = 35;
		}
		goto label$22;
		label$26:;
		{
			OP$1 = 36;
		}
		goto label$22;
		label$27:;
		{
			OP$1 = 37;
		}
		goto label$22;
		label$28:;
		{
			OP$1 = 38;
		}
		goto label$22;
		label$29:;
		{
			OP$1 = 39;
		}
		goto label$22;
		label$30:;
		{
			OP$1 = 40;
		}
		goto label$22;
		label$31:;
		{
			OP$1 = 41;
		}
		goto label$22;
		label$32:;
		{
			OP$1 = 42;
		}
		goto label$22;
		label$33:;
		{
			OP$1 = 33;
		}
		goto label$22;
		label$34:;
		{
			OP$1 = 28;
		}
		goto label$22;
		label$35:;
		{
			OP$1 = 29;
		}
		goto label$22;
		label$36:;
		{
			OP$1 = 32;
		}
		goto label$22;
		label$37:;
		{
			OP$1 = 30;
		}
		goto label$22;
		label$38:;
		{
			OP$1 = 31;
		}
		goto label$22;
		label$39:;
		{
			OP$1 = 43;
		}
		goto label$22;
		label$40:;
		{
			OP$1 = 44;
		}
		goto label$22;
		label$41:;
		{
			if( IS_OVERLOAD$1 != 0 ) goto label$43;
			{
				goto label$21;
			}
			label$43:;
			label$42:;
			LEXSKIPTOKEN( 2048 );
			{
				uint32 TMP$93$4;
				TMP$93$4 = (uint32)TK$1;
				goto label$45;
				label$46:;
				{
					OP$1 = 45;
				}
				goto label$44;
				label$47:;
				{
					OP$1 = 46;
				}
				goto label$44;
				label$48:;
				{
					OP$1 = 47;
				}
				goto label$44;
				label$49:;
				{
					OP$1 = 48;
				}
				goto label$44;
				label$50:;
				{
					OP$1 = 50;
				}
				goto label$44;
				label$51:;
				{
					OP$1 = 49;
				}
				goto label$44;
				label$52:;
				{
					OP$1 = 0;
				}
				goto label$44;
				label$53:;
				{
					OP$1 = 52;
				}
				goto label$44;
				label$54:;
				{
					OP$1 = 27;
				}
				goto label$44;
				label$55:;
				{
					OP$1 = 56;
				}
				goto label$44;
				label$56:;
				{
					OP$1 = 57;
				}
				goto label$44;
				label$57:;
				{
					OP$1 = 71;
				}
				goto label$44;
				label$58:;
				{
					OP$1 = 72;
				}
				goto label$44;
				label$59:;
				{
					OP$1 = 70;
				}
				goto label$44;
				label$60:;
				{
					OP$1 = 69;
				}
				goto label$44;
				label$61:;
				{
					OP$1 = 68;
				}
				goto label$44;
				label$62:;
				{
					OP$1 = 58;
				}
				goto label$44;
				label$63:;
				{
					OP$1 = 59;
				}
				goto label$44;
				label$64:;
				{
					OP$1 = 60;
				}
				goto label$44;
				label$65:;
				{
					OP$1 = 61;
				}
				goto label$44;
				label$66:;
				{
					OP$1 = 62;
				}
				goto label$44;
				label$67:;
				{
					OP$1 = 63;
				}
				goto label$44;
				label$68:;
				{
					OP$1 = 65;
				}
				goto label$44;
				label$69:;
				{
					OP$1 = 73;
				}
				goto label$44;
				label$70:;
				{
					OP$1 = 22;
				}
				goto label$44;
				label$71:;
				{
					OP$1 = 77;
				}
				goto label$44;
				label$72:;
				{
					int32 vr$2 = HMATCH( 93, 0 );
					if( vr$2 != 0 ) goto label$74;
					{
						ERRREPORT( 66, 0, (uint8*)0u );
					}
					label$74:;
					label$73:;
					OP$1 = 23;
				}
				goto label$44;
				label$75:;
				{
					int32 IS_NEW$5;
					IS_NEW$5 = -(TK$1 == 389);
					int32 vr$4 = HMATCH( 91, 0 );
					if( vr$4 == 0 ) goto label$77;
					{
						$6AST_OP TMP$94$6;
						int32 vr$5 = HMATCH( 93, 0 );
						if( vr$5 != 0 ) goto label$79;
						{
							ERRREPORT( 66, 0, (uint8*)0u );
						}
						label$79:;
						label$78:;
						if( IS_NEW$5 == 0 ) goto label$80;
						TMP$94$6 = 19;
						goto label$91;
						label$80:;
						TMP$94$6 = 21;
						label$91:;
						OP$1 = TMP$94$6;
					}
					goto label$76;
					label$77:;
					{
						$6AST_OP TMP$95$6;
						if( IS_NEW$5 == 0 ) goto label$81;
						TMP$95$6 = 18;
						goto label$92;
						label$81:;
						TMP$95$6 = 20;
						label$92:;
						OP$1 = TMP$95$6;
					}
					label$76:;
				}
				goto label$44;
				label$82:;
				{
					OP$1 = 24;
				}
				goto label$44;
				label$83:;
				{
					OP$1 = 25;
				}
				goto label$44;
				label$84:;
				{
					OP$1 = 26;
				}
				goto label$44;
				label$85:;
				{
				}
				goto label$44;
				label$45:;
				static const void* tmp$96[402] = {
					&&label$70,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$72,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$82,
					&&label$83,
					&&label$84,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$53,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$46,
					&&label$47,
					&&label$48,
					&&label$49,
					&&label$50,
					&&label$51,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$75,
					&&label$75,
					&&label$52,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$71,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$54,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$55,
					&&label$56,
					&&label$57,
					&&label$58,
					&&label$62,
					&&label$63,
					&&label$64,
					&&label$65,
					&&label$66,
					&&label$67,
					&&label$68,
					&&label$61,
					&&label$60,
					&&label$59,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$69,
				};
				if( (TMP$93$4 - 64u) > 401u ) goto label$85;
				goto *tmp$96[TMP$93$4 - 64u];
				label$44:;
			}
			fb$result$1 = OP$1;
			goto label$21;
		}
		goto label$22;
		label$86:;
		{
			goto label$21;
		}
		goto label$22;
		label$23:;
		static const void* tmp$97[428] = {
			&&label$40,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$37,
			&&label$34,
			&&label$86,
			&&label$35,
			&&label$86,
			&&label$38,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$36,
			&&label$86,
			&&label$39,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$24,
			&&label$25,
			&&label$26,
			&&label$27,
			&&label$28,
			&&label$29,
			&&label$30,
			&&label$41,
			&&label$33,
			&&label$31,
			&&label$32,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
		};
		if( (TMP$92$2 - 38u) > 427u ) goto label$86;
		goto *tmp$97[TMP$92$2 - 38u];
		label$22:;
	}
	LEXSKIPTOKEN( 2048 );
	if( IS_OVERLOAD$1 != 0 ) goto label$88;
	{
		fb$result$1 = OP$1;
		goto label$21;
	}
	label$88:;
	label$87:;
	int32 vr$6 = CASSIGNTOKEN(  );
	if( vr$6 == 0 ) goto label$90;
	{
		OP$1 = *(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 12);
	}
	label$90:;
	label$89:;
	fb$result$1 = OP$1;
	label$21:;
	return fb$result$1;
}

void CASSIGNMENT( struct $7ASTNODE* L$1 )
{
	label$93:;
	int32 vr$0 = ASTISCONSTANT( L$1 );
	if( vr$0 == 0 ) goto label$96;
	{
		ERRREPORT( 119, -1, (uint8*)0u );
	}
	label$96:;
	label$95:;
	int32 OP$1;
	OP$1 = -1;
	int32 vr$1 = LEXGETTOKEN( 0 );
	int32 vr$2 = HISASSIGNTOKEN( vr$1 );
	if( vr$2 != 0 ) goto label$98;
	{
		int32 vr$3 = COPERATOR( 0 );
		OP$1 = vr$3;
		int32 vr$4 = LEXGETTOKEN( 0 );
		int32 vr$5 = HISASSIGNTOKEN( vr$4 );
		if( vr$5 != 0 ) goto label$100;
		{
			ERRREPORT( 10, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$94;
		}
		label$100:;
		label$99:;
		OP$1 = *(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 12);
	}
	label$98:;
	label$97:;
	LEXSKIPTOKEN( 0 );
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = *(struct $8FBSYMBOL**)((uint8*)L$1 + 8);
	*(int32*)((uint8*)&PARSER$ + 156) = *(int32*)((uint8*)L$1 + 4) & 511;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* vr$10 = CEXPRESSION(  );
	R$1 = vr$10;
	if( R$1 != (struct $7ASTNODE*)0u ) goto label$102;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$94;
	}
	label$102:;
	label$101:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = (struct $8FBSYMBOL*)0u;
	*(int32*)((uint8*)&PARSER$ + 156) = -2147483648u;
	if( OP$1 == -1 ) goto label$104;
	{
		struct $7ASTNODE* vr$11 = ASTNEWSELFBOP( OP$1, L$1, R$1, (struct $8FBSYMBOL*)0u, 2 );
		L$1 = vr$11;
		if( L$1 == (struct $7ASTNODE*)0u ) goto label$106;
		{
			ASTADD( L$1 );
		}
		goto label$105;
		label$106:;
		{
			ERRREPORT( 20, -1, (uint8*)0u );
		}
		label$105:;
	}
	goto label$103;
	label$104:;
	{
		struct $7ASTNODE* vr$12 = ASTNEWASSIGN( L$1, R$1, 0 );
		L$1 = vr$12;
		if( L$1 == (struct $7ASTNODE*)0u ) goto label$108;
		{
			ASTADD( L$1 );
		}
		goto label$107;
		label$108:;
		{
			ERRREPORT( 181, -1, (uint8*)0u );
		}
		label$107:;
	}
	label$103:;
	label$94:;
}

int32 CASSIGNMENTORPTRCALLEX( struct $7ASTNODE* EXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$109:;
	fb$result$1 = 0;
	int32 vr$1 = CCOMPSTMTISALLOWED( 1 );
	if( vr$1 != 0 ) goto label$112;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$110;
	}
	label$112:;
	label$111:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$114;
	{
		int32 vr$2 = CMAYBEIGNORECALLRESULT( EXPR$1 );
		if( vr$2 != 0 ) goto label$116;
		{
			CASSIGNMENT( EXPR$1 );
		}
		label$116:;
		label$115:;
	}
	label$114:;
	label$113:;
	fb$result$1 = -1;
	label$110:;
	return fb$result$1;
}

int32 CASSIGNMENTORPTRCALL( void )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	int32 ISMULT$1;
	ISMULT$1 = 0;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* FLD$1;
	fb$result$1 = 0;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 391 ) goto label$142;
	{
		struct $7ASTNODE* vr$2 = CVARORDEREF( 2 );
		EXPR$1 = vr$2;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$144;
		{
			goto label$140;
		}
		label$144:;
		label$143:;
		int32 vr$3 = CMAYBEIGNORECALLRESULT( EXPR$1 );
		if( vr$3 == 0 ) goto label$146;
		{
			fb$result$1 = -1;
			goto label$140;
		}
		label$146:;
		label$145:;
		struct $7ASTNODE* vr$4 = ASTSKIPNOCONVCAST( EXPR$1 );
		struct $7ASTNODE* vr$5 = ASTSKIPCASTS( EXPR$1 );
		if( vr$4 == vr$5 ) goto label$148;
		{
			ERRREPORT( 24, 0, (uint8*)0u );
			goto label$140;
		}
		label$148:;
		label$147:;
		int32 vr$6 = CASSIGNMENTORPTRCALLEX( EXPR$1 );
		fb$result$1 = vr$6;
		goto label$140;
	}
	label$142:;
	label$141:;
	if( (*(int32*)((uint8*)&ENV$ + 1040) & 262144) != 0 ) goto label$150;
	{
		int32 vr$8 = LEXGETLOOKAHEAD( 1, 0 );
		if( vr$8 == 40 ) goto label$152;
		{
			ERRREPORTNOTALLOWED( 262144, 146, (uint8*)0u );
		}
		goto label$151;
		label$152:;
		{
			ISMULT$1 = -1;
			LEXSKIPTOKEN( 2048 );
		}
		label$151:;
	}
	label$150:;
	label$149:;
	int32 vr$9 = CCOMPSTMTISALLOWED( 1 );
	if( vr$9 != 0 ) goto label$154;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$140;
	}
	label$154:;
	label$153:;
	LEXSKIPTOKEN( 2048 );
	if( ISMULT$1 != 0 ) goto label$156;
	{
		struct $7ASTNODE* vr$10 = CVARORDEREF( 0 );
		EXPR$1 = vr$10;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$158;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		goto label$157;
		label$158:;
		{
			CASSIGNMENT( EXPR$1 );
		}
		label$157:;
		fb$result$1 = -1;
		goto label$140;
	}
	label$156:;
	label$155:;
	int32 EXPRCNT$1;
	EXPRCNT$1 = 0;
	label$159:;
	{
		struct $15FB_LETSTMT_NODE* NODE$2;
		void* vr$12 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 56) );
		NODE$2 = (struct $15FB_LETSTMT_NODE*)vr$12;
		struct $7ASTNODE* vr$13 = CVARORDEREF( 0 );
		*(struct $7ASTNODE**)NODE$2 = vr$13;
		if( *(struct $7ASTNODE**)NODE$2 == (struct $7ASTNODE*)0u ) goto label$163;
		{
			int32 vr$17 = ASTISCONSTANT( *(struct $7ASTNODE**)NODE$2 );
			if( vr$17 == 0 ) goto label$165;
			{
				ERRREPORT( 119, -1, (uint8*)0u );
			}
			label$165:;
			label$164:;
			EXPRCNT$1 = EXPRCNT$1 + 1;
		}
		label$163:;
		label$162:;
		int32 vr$19 = LEXGETTOKEN( 0 );
		if( vr$19 == 44 ) goto label$167;
		{
			goto label$160;
		}
		label$167:;
		label$166:;
		LEXSKIPTOKEN( 0 );
	}
	label$161:;
	goto label$159;
	label$160:;
	if( EXPRCNT$1 != 0 ) goto label$169;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
	}
	label$169:;
	label$168:;
	int32 vr$20 = LEXGETTOKEN( 0 );
	if( vr$20 == 41 ) goto label$171;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, 0, 0, 0 );
	}
	goto label$170;
	label$171:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$170:;
	int32 vr$21 = CASSIGNTOKEN(  );
	if( vr$21 != 0 ) goto label$173;
	{
		ERRREPORT( 10, 0, (uint8*)0u );
		HSKIPUNTIL( -1, 0, 0, 0 );
		EXPR$1 = (struct $7ASTNODE*)0u;
	}
	goto label$172;
	label$173:;
	{
		struct $7ASTNODE* vr$22 = CEXPRESSION(  );
		EXPR$1 = vr$22;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$175;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
		}
		label$175:;
		label$174:;
	}
	label$172:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$177;
	{
		{
			int32 TMP$107$3;
			TMP$107$3 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			if( TMP$107$3 != 20 ) goto label$179;
			label$180:;
			{
				if( (-((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) + 120) & 1) != 0) | -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) + 120) & 8192) != 0)) == 0 ) goto label$182;
				{
					ERRREPORT( 268, 0, (uint8*)0u );
					ASTDELTREE( EXPR$1 );
					EXPR$1 = (struct $7ASTNODE*)0u;
				}
				label$182:;
				label$181:;
			}
			goto label$178;
			label$179:;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				ASTDELTREE( EXPR$1 );
				EXPR$1 = (struct $7ASTNODE*)0u;
			}
			label$183:;
			label$178:;
		}
	}
	label$177:;
	label$176:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$185;
	{
		label$186:;
		{
			struct $15FB_LETSTMT_NODE* NODE$3;
			void* vr$35 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&PARSER$ + 56) );
			NODE$3 = (struct $15FB_LETSTMT_NODE*)vr$35;
			if( NODE$3 != (struct $15FB_LETSTMT_NODE*)0u ) goto label$190;
			{
				goto label$187;
			}
			label$190:;
			label$189:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 56), (void*)NODE$3 );
		}
		label$188:;
		goto label$186;
		label$187:;
		goto label$140;
	}
	label$185:;
	label$184:;
	if( *(int32*)EXPR$1 != 9 ) goto label$192;
	{
		struct $7ASTNODE* vr$38 = ASTBUILDCALLRESULTUDT( EXPR$1 );
		EXPR$1 = vr$38;
	}
	label$192:;
	label$191:;
	struct $8FBSYMBOL* TMP$1;
	TMP$1 = (struct $8FBSYMBOL*)0u;
	struct $7ASTNODE* TREE$1;
	TREE$1 = (struct $7ASTNODE*)0u;
	if( EXPRCNT$1 <= 0 ) goto label$194;
	{
		struct $8FBSYMBOL* vr$53 = SYMBADDTEMPVAR( (((*(int32*)((uint8*)EXPR$1 + 4) & 31) | ((*(int32*)((uint8*)EXPR$1 + 4) & 480) + 32)) | ((*(int32*)((uint8*)EXPR$1 + 4) & 261632) << (1 & 31))) | (*(int32*)((uint8*)EXPR$1 + 4) & 32505856), *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
		TMP$1 = vr$53;
		struct $7ASTNODE* vr$54 = ASTNEWADDROF( EXPR$1 );
		struct $7ASTNODE* vr$55 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( TMP$1, vr$54, 64 );
		TREE$1 = vr$55;
	}
	label$194:;
	label$193:;
	struct $8FBSYMBOL* vr$57 = SYMBUDTGETFIRSTFIELD( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
	FLD$1 = vr$57;
	EXPRCNT$1 = 0;
	label$195:;
	{
		struct $15FB_LETSTMT_NODE* NODE$2;
		void* vr$59 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&PARSER$ + 56) );
		NODE$2 = (struct $15FB_LETSTMT_NODE*)vr$59;
		if( NODE$2 != (struct $15FB_LETSTMT_NODE*)0u ) goto label$199;
		{
			goto label$196;
		}
		label$199:;
		label$198:;
		if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$201;
		{
			ERRREPORT( 266, 0, (uint8*)0u );
		}
		goto label$200;
		label$201:;
		{
			EXPRCNT$1 = EXPRCNT$1 + 1;
			if( *(struct $7ASTNODE**)NODE$2 == (struct $7ASTNODE*)0u ) goto label$203;
			{
				struct $7ASTNODE* vr$63 = HASSIGNFROMFIELD( FLD$1, *(struct $7ASTNODE**)NODE$2, TMP$1, EXPRCNT$1 );
				EXPR$1 = vr$63;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$205;
				{
					goto label$140;
				}
				label$205:;
				label$204:;
				struct $7ASTNODE* vr$64 = ASTNEWLINK( TREE$1, EXPR$1, 0 );
				TREE$1 = vr$64;
			}
			label$203:;
			label$202:;
			struct $8FBSYMBOL* vr$65 = SYMBUDTGETNEXTFIELD( FLD$1 );
			FLD$1 = vr$65;
		}
		label$200:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 56), (void*)NODE$2 );
	}
	label$197:;
	goto label$195;
	label$196:;
	ASTADD( TREE$1 );
	fb$result$1 = -1;
	label$140:;
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

static uint8* HCARD2ORD( int32 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$117:;
	{
		if( NUM$1 != 1 ) goto label$120;
		label$121:;
		{
			fb$result$1 = (uint8*)"1st";
			goto label$118;
		}
		goto label$119;
		label$120:;
		if( NUM$1 != 2 ) goto label$122;
		label$123:;
		{
			fb$result$1 = (uint8*)"2nd";
			goto label$118;
		}
		goto label$119;
		label$122:;
		if( NUM$1 != 3 ) goto label$124;
		label$125:;
		{
			fb$result$1 = (uint8*)"3rd";
			goto label$118;
		}
		goto label$119;
		label$124:;
		{
			static FBSTRING TMP$3;
			FBSTRING* vr$1 = fb_IntToStr( NUM$1 );
			fb_StrAssign( (void*)&TMP$3, -1, (void*)vr$1, -1, 0 );
			fb_StrConcatAssign( (void*)&TMP$3, -1, (void*)"th", 3, 0 );
			fb$result$1 = (uint8*)*(uint8**)&TMP$3;
			goto label$118;
		}
		label$126:;
		label$119:;
	}
	label$118:;
	return fb$result$1;
}

static void HREPORTLETERROR( int32 ERRNUM$1, int32 ELMNUM$1 )
{
	FBSTRING TMP$104$1;
	FBSTRING TMP$105$1;
	FBSTRING TMP$106$1;
	label$127:;
	__builtin_memset( &TMP$106$1, 0, 12 );
	uint8* vr$1 = HCARD2ORD( ELMNUM$1 );
	__builtin_memset( &TMP$104$1, 0, 12 );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$104$1, (void*)"at the ", 8, (void*)vr$1, 0 );
	__builtin_memset( &TMP$105$1, 0, 12 );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$105$1, (void*)vr$4, -1, (void*)" element of LET()", 18 );
	fb_StrAssign( (void*)&TMP$106$1, -1, (void*)vr$7, -1, 0 );
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&TMP$106$1, 0, 1, (uint8*)0u );
	fb_StrDelete( (FBSTRING*)&TMP$106$1 );
	label$128:;
}

static struct $7ASTNODE* HASSIGNFROMFIELD( struct $8FBSYMBOL* FLD$1, struct $7ASTNODE* LHS$1, struct $8FBSYMBOL* RHS$1, int32 NUM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$129:;
	if( *(int32*)FLD$1 == 12 ) goto label$132;
	{
		HREPORTLETERROR( 267, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$2 = ASTNEWNOP(  );
		fb$result$1 = vr$2;
		goto label$130;
	}
	label$132:;
	label$131:;
	int32 vr$3 = SYMBCHECKACCESS( FLD$1 );
	if( vr$3 != 0 ) goto label$134;
	{
		HREPORTLETERROR( 202, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$4 = ASTNEWNOP(  );
		fb$result$1 = vr$4;
		goto label$130;
	}
	label$134:;
	label$133:;
	if( *(int32*)((uint8*)FLD$1 + 64) == 0 ) goto label$136;
	{
		HREPORTLETERROR( 269, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$6 = ASTNEWNOP(  );
		fb$result$1 = vr$6;
		goto label$130;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$7 = ASTNEWVAR( RHS$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	EXPR$1 = vr$7;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 48), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWBOP( 28, EXPR$1, vr$9, (struct $8FBSYMBOL*)0u, 1 );
	EXPR$1 = vr$10;
	struct $7ASTNODE* vr$13 = ASTNEWDEREF( EXPR$1, *(int32*)((uint8*)FLD$1 + 28), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 32), 0ll );
	EXPR$1 = vr$13;
	struct $7ASTNODE* vr$14 = ASTNEWFIELD( EXPR$1, FLD$1 );
	EXPR$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWASSIGN( LHS$1, EXPR$1, 0 );
	EXPR$1 = vr$15;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		HREPORTLETERROR( 181, NUM$1 );
		struct $7ASTNODE* vr$16 = ASTNEWNOP(  );
		fb$result$1 = vr$16;
		goto label$130;
	}
	label$138:;
	label$137:;
	fb$result$1 = EXPR$1;
	label$130:;
	return fb$result$1;
}
