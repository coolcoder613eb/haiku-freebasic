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
typedef int32 $10FB_PROCOPT;
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
typedef int32 $14FB_SYMBFINDOPT;
typedef int32 $9FB_ERRMSG;
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
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int32 fb_StrLen( void*, int32 );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzproc( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int32, uint8*, int32 );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int32, uint8*, int32 );
typedef int32 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int32, uint8* );
void FBSETOPTION( int32, int32 );
int32 FBIS64BIT( void );
int32 ASTISEQUALPARAMINIT( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTPROCBEGIN( struct $8FBSYMBOL*, int32 );
int32 ASTPROCEND( int32 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int32 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCTORPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL*, int32 );
struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL*, $6AST_OP, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL*, uint8*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int32 );
void SYMBNESTEND( int32 );
uint8* SYMBUNIQUELABEL( void );
void SYMBSETNAME( struct $8FBSYMBOL*, uint8* );
int32 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 8 );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* );
void FBADDLIB( uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
int32 PARSERISGLOBALASMKEYWORD( uint8* );
typedef int32 $14FB_SYMBTYPEOPT;
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
typedef int32 $8FB_IDOPT;
struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT );
struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32*, $10FB_PROCOPT, int32 );
void CPARAMETERS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, int32 );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int32 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int32 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWCONSTCTORDTOR( int32, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
int32 COPERATOR( int32 );
uint8* CALIASATTRIBUTE( void );
void CLIBATTRIBUTE( void );
void CMETHODATTRIBUTES( struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void CPROCRETTYPE( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, struct $8FBSYMBOL*, int32, int32*, struct $8FBSYMBOL** );
$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE );
$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE, int32* );
void CBYREFATTRIBUTE( $13FB_PROCATTRIB*, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void HSKIPCOMPOUND( int32, int32, $8LEXCHECK );
void HCOMPLAINIFABSTRACTCLASS( int32, struct $8FBSYMBOL* );
static void HPARAMERROR( struct $8FBSYMBOL*, int32, int32 );
static void HCHECKPROTOTYPE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32 );
static void HCHECKATTRIBS( struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
static int32 HCHECKIDTOKEN( int32 );
static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL*, uint8*, int32*, int32 );
static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* );
static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* );
static void HCHECKATTRIB( int32*, int32, int32 );
static int32 HCHECKOPOVLPARAMS( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL* );
static int32 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32 );
static void HCHECKPROPPARAMS( struct $8FBSYMBOL*, int32 );
static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL*, int32, int32 );
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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

uint8* CALIASATTRIBUTE( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$10:;
	static uint8 ALIASID$1[129];
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 386 ) goto label$13;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$2 = LEXGETCLASS( 0 );
		if( vr$2 != 4 ) goto label$15;
		{
			uint8* vr$3 = LEXGETTEXT(  );
			fb_StrAssign( (void*)ALIASID$1, 129, (void*)vr$3, 0, 0 );
			LEXSKIPTOKEN( 0 );
			int32 vr$4 = fb_StrLen( (void*)ALIASID$1, 129 );
			if( vr$4 <= 0 ) goto label$17;
			{
				fb$result$1 = (uint8*)ALIASID$1;
			}
			goto label$16;
			label$17:;
			{
				ERRREPORT( 304, 0, (uint8*)0u );
			}
			label$16:;
		}
		goto label$14;
		label$15:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$14:;
	}
	label$13:;
	label$12:;
	label$11:;
	return fb$result$1;
}

void CLIBATTRIBUTE( void )
{
	label$18:;
	uint8* LIBNAME$1;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 387 ) goto label$21;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$1 = LEXGETCLASS( 0 );
		if( vr$1 != 4 ) goto label$23;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			LIBNAME$1 = vr$2;
			int32 vr$3 = fb_StrLen( (void*)LIBNAME$1, 0 );
			if( vr$3 <= 0 ) goto label$25;
			{
				FBADDLIB( LIBNAME$1 );
			}
			goto label$24;
			label$25:;
			{
				ERRREPORT( 305, 0, (uint8*)0u );
			}
			label$24:;
			LEXSKIPTOKEN( 0 );
		}
		goto label$22;
		label$23:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$22:;
	}
	label$21:;
	label$20:;
	label$19:;
}

void CMETHODATTRIBUTES( struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$26:;
	int32 vr$0 = HMATCH( 307, 2048 );
	if( vr$0 == 0 ) goto label$29;
	{
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 2;
		goto label$27;
	}
	label$29:;
	label$28:;
	int32 vr$4 = HMATCH( 335, 2048 );
	if( vr$4 == 0 ) goto label$31;
	{
		*ATTRIB$1 = *(int32*)ATTRIB$1 | 2048;
	}
	label$31:;
	label$30:;
	{
		int32 TMP$93$2;
		int32 vr$8 = LEXGETTOKEN( 0 );
		TMP$93$2 = vr$8;
		if( TMP$93$2 != 355 ) goto label$33;
		label$34:;
		{
			*PATTRIB$1 = *(int32*)PATTRIB$1 | 768;
			if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$36;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 12) & 4194304) != 0 ) goto label$38;
				{
					ERRREPORT( 222, 0, (uint8*)0u );
					*PATTRIB$1 = *(int32*)PATTRIB$1 & -769;
				}
				label$38:;
				label$37:;
			}
			label$36:;
			label$35:;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$32;
		label$33:;
		if( TMP$93$2 != 354 ) goto label$39;
		label$40:;
		{
			*PATTRIB$1 = *(int32*)PATTRIB$1 | 256;
			if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$42;
			{
				if( (*(int32*)((uint8*)PARENT$1 + 12) & 4194304) != 0 ) goto label$44;
				{
					ERRREPORT( 221, 0, (uint8*)0u );
					*PATTRIB$1 = *(int32*)PATTRIB$1 & -257;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			LEXSKIPTOKEN( 2048 );
		}
		label$39:;
		label$32:;
	}
	label$27:;
}

void CPROCRETTYPE( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, struct $8FBSYMBOL* PROC$1, int32 IS_PROTO$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int64 TMP$100$1;
	int32 TMP$101$1;
	label$132:;
	int32 OPTIONS$1;
	LEXSKIPTOKEN( 2048 );
	OPTIONS$1 = 1;
	if( (PATTRIB$1 & 2048) == 0 ) goto label$135;
	{
		if( IS_PROTO$1 == 0 ) goto label$137;
		{
			OPTIONS$1 = OPTIONS$1 | 2;
		}
		label$137:;
		label$136:;
		OPTIONS$1 = OPTIONS$1 & -2;
		OPTIONS$1 = OPTIONS$1 | 4;
	}
	label$135:;
	label$134:;
	if( IS_PROTO$1 == 0 ) goto label$139;
	{
		OPTIONS$1 = OPTIONS$1 & -2;
	}
	label$139:;
	label$138:;
	TMP$101$1 = 0;
	TMP$100$1 = 0ll;
	int32 vr$7 = CSYMBOLTYPE( DTYPE$1, SUBTYPE$1, &TMP$100$1, &TMP$101$1, OPTIONS$1 );
	if( vr$7 != 0 ) goto label$141;
	{
		ERRREPORT( 14, 0, (uint8*)0u );
		*DTYPE$1 = 8;
		*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$140;
	label$141:;
	{
		{
			int32 TMP$102$3;
			TMP$102$3 = *DTYPE$1 & 511;
			if( TMP$102$3 != 7 ) goto label$143;
			label$144:;
			{
				if( (-((PATTRIB$1 & 2048) == 0) & -(IS_PROTO$1 == 0)) == 0 ) goto label$146;
				{
					ERRREPORT( 55, 0, (uint8*)0u );
					*DTYPE$1 = 17;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$146:;
				label$145:;
			}
			goto label$142;
			label$143:;
			if( TMP$102$3 == 18 ) goto label$148;
			label$149:;
			if( TMP$102$3 != 4 ) goto label$147;
			label$148:;
			{
				if( (-((PATTRIB$1 & 2048) == 0) | -((*DTYPE$1 & 511) == 18)) == 0 ) goto label$151;
				{
					ERRREPORT( 55, 0, (uint8*)0u );
					*DTYPE$1 = 17;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
				}
				label$151:;
				label$150:;
			}
			goto label$142;
			label$147:;
			if( TMP$102$3 != 0 ) goto label$152;
			label$153:;
			{
				ERRREPORT( 24, 0, (uint8*)0u );
				*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
				*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			}
			goto label$142;
			label$152:;
			if( TMP$102$3 != 20 ) goto label$154;
			label$155:;
			{
				if( *SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$157;
				{
					{
						int32 TMP$103$6;
						TMP$103$6 = (*(int32*)((uint8*)*SUBTYPE$1 + 120) & 15728640) >> (20 & 31);
						if( TMP$103$6 == 3 ) goto label$160;
						label$161:;
						if( TMP$103$6 != 5 ) goto label$159;
						label$160:;
						{
							if( (-((PATTRIB$1 & 2048) == 0) & -((*DTYPE$1 & 480) == 0)) == 0 ) goto label$163;
							{
								ERRREPORT( 24, 0, (uint8*)0u );
								*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
								*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
							}
							label$163:;
							label$162:;
						}
						label$159:;
						label$158:;
					}
				}
				label$157:;
				label$156:;
			}
			label$154:;
			label$142:;
		}
		if( (PATTRIB$1 & 2048) != 0 ) goto label$165;
		{
			HCOMPLAINIFABSTRACTCLASS( *DTYPE$1, *SUBTYPE$1 );
		}
		label$165:;
		label$164:;
	}
	label$140:;
	$21FB_PROC_RETURN_METHOD vr$71 = CPROCRETURNMETHOD( *($11FB_DATATYPE*)DTYPE$1 );
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 96) = vr$71;
	label$133:;
}

$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE DTYPE$1 )
{
	int32 TMP$104$1;
	$21FB_PROC_RETURN_METHOD fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$166:;
	FBSTRING RETURNMETHOD$1;
	__builtin_memset( &RETURNMETHOD$1, 0, 12 );
	fb$result$1 = 2;
	if( (DTYPE$1 & 480) == 0 ) goto label$168;
	TMP$104$1 = 24;
	goto label$182;
	label$168:;
	TMP$104$1 = DTYPE$1 & 31;
	label$182:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$104$1 * 28)) == 1 ) goto label$170;
	{
		fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
		goto label$167;
		label$170:;
	}
	int32 vr$6 = LEXGETTOKEN( 0 );
	if( vr$6 != 343 ) goto label$172;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$7 = LEXGETTOKEN( 0 );
		if( vr$7 == 40 ) goto label$174;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
		}
		goto label$173;
		label$174:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$173:;
		int32 vr$8 = LEXGETCLASS( 0 );
		if( vr$8 == 4 ) goto label$176;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$175;
		label$176:;
		{
			uint8* vr$9 = LEXGETTEXT(  );
			FBSTRING* vr$10 = fb_StrAllocTempDescZ( (uint8*)vr$9 );
			FBSTRING* vr$11 = fb_StrUcase2( (FBSTRING*)vr$10, 0 );
			FBSTRING* vr$12 = fb_TRIM( (FBSTRING*)vr$11 );
			fb_StrAssign( (void*)&RETURNMETHOD$1, -1, (void*)vr$12, -1, 0 );
			int32 vr$15 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1, (void*)"SSE", 4 );
			if( vr$15 != 0 ) goto label$178;
			{
				fb$result$1 = 1;
			}
			goto label$177;
			label$178:;
			int32 vr$17 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1, (void*)"FPU", 4 );
			if( vr$17 != 0 ) goto label$179;
			{
				fb$result$1 = 0;
			}
			label$179:;
			label$177:;
			LEXSKIPTOKEN( 0 );
		}
		label$175:;
		int32 vr$18 = LEXGETTOKEN( 0 );
		if( vr$18 == 41 ) goto label$181;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$180;
		label$181:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$180:;
	}
	label$172:;
	label$171:;
	fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
	label$167:;
	return fb$result$1;
}

$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE DEFAULT$1, int32* IS_EXPLICIT$1 )
{
	$11FB_FUNCMODE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$183:;
	*IS_EXPLICIT$1 = 0;
	if( DEFAULT$1 != -1 ) goto label$186;
	{
		DEFAULT$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 276);
	}
	label$186:;
	label$185:;
	{
		uint32 TMP$107$2;
		int32 vr$2 = LEXGETTOKEN( 0 );
		TMP$107$2 = (uint32)vr$2;
		goto label$188;
		label$189:;
		{
			*IS_EXPLICIT$1 = -1;
			fb$result$1 = 3;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$187;
		label$190:;
		{
			*IS_EXPLICIT$1 = -1;
			fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 280);
			LEXSKIPTOKEN( 2048 );
		}
		goto label$187;
		label$191:;
		{
			fb$result$1 = 4;
			*IS_EXPLICIT$1 = -1;
			LEXSKIPTOKEN( 2048 );
		}
		goto label$187;
		label$192:;
		{
			if( *(int32*)((uint8*)&ENV$ + 212) != 0 ) goto label$194;
			{
				*IS_EXPLICIT$1 = -1;
				fb$result$1 = 5;
			}
			label$194:;
			label$193:;
			LEXSKIPTOKEN( 0 );
		}
		goto label$187;
		label$195:;
		{
			if( *(int32*)((uint8*)&ENV$ + 216) != 0 ) goto label$197;
			{
				*IS_EXPLICIT$1 = -1;
				fb$result$1 = 6;
			}
			label$197:;
			label$196:;
			LEXSKIPTOKEN( 0 );
		}
		goto label$187;
		label$188:;
		static const void* tmp$109[5] = {
			&&label$191,
			&&label$189,
			&&label$190,
			&&label$192,
			&&label$195,
		};
		if( (TMP$107$2 - 381u) > 4u ) goto label$187;
		goto *tmp$109[TMP$107$2 - 381u];
		label$187:;
	}
	if( *IS_EXPLICIT$1 != 0 ) goto label$199;
	{
		{
			uint32 TMP$108$3;
			TMP$108$3 = *(uint32*)((uint8*)&PARSER$ + 104);
			goto label$201;
			label$202:;
			{
				fb$result$1 = DEFAULT$1;
			}
			goto label$200;
			label$203:;
			{
				if( DEFAULT$1 != 5 ) goto label$205;
				{
					fb$result$1 = DEFAULT$1;
				}
				goto label$204;
				label$205:;
				{
					fb$result$1 = 3;
				}
				label$204:;
			}
			goto label$200;
			label$206:;
			{
				fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 280);
			}
			goto label$200;
			label$207:;
			{
				fb$result$1 = 2;
			}
			goto label$200;
			label$201:;
			static const void* tmp$110[7] = {
				&&label$202,
				&&label$203,
				&&label$206,
				&&label$207,
				&&label$203,
				&&label$200,
				&&label$202,
			};
			if( TMP$108$3 > 6u ) goto label$200;
			goto *tmp$110[TMP$108$3 - 0u];
			label$200:;
		}
	}
	label$199:;
	label$198:;
	label$184:;
	return fb$result$1;
}

void CBYREFATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1, int32 IS_FUNC$1 )
{
	label$220:;
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 320 ) goto label$223;
	{
		if( IS_FUNC$1 != 0 ) goto label$225;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$225:;
		label$224:;
		LEXSKIPTOKEN( 2048 );
		*PATTRIB$1 = *(int32*)PATTRIB$1 | 2048;
	}
	label$223:;
	label$222:;
	label$221:;
}

struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int32* IS_NESTED$1, $10FB_PROCOPT OPTIONS$1, int32 TK$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$418:;
	static uint8 ID$1[129];
	uint8* PALIAS$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* PARAM$1;
	int32 DTYPE$1;
	int32 IS_OUTSIDE$1;
	int32 IS_MEMBERPROC$1;
	int32 MODE$1;
	int32 STATS$1;
	int32 OP$1;
	int32 IS_GET$1;
	int32 IS_INDEXED$1;
	int32 PRIORITY$1;
	int32 IDOPT$1;
	int32 MODE_IS_EXPLICIT$1;
	*IS_NESTED$1 = 0;
	IS_OUTSIDE$1 = 0;
	IS_MEMBERPROC$1 = 0;
	IS_GET$1 = 0;
	IS_INDEXED$1 = 0;
	DTYPE$1 = -2147483648u;
	SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	STATS$1 = 0;
	PRIORITY$1 = 0;
	MODE_IS_EXPLICIT$1 = 0;
	{
		if( TK$1 == 347 ) goto label$422;
		label$423:;
		if( TK$1 != 348 ) goto label$421;
		label$422:;
		{
			PATTRIB$1 = PATTRIB$1 | 2;
			if( TK$1 != 347 ) goto label$425;
			{
				PATTRIB$1 = PATTRIB$1 | 5;
			}
			goto label$424;
			label$425:;
			{
				PATTRIB$1 = PATTRIB$1 | 8;
			}
			label$424:;
		}
		goto label$420;
		label$421:;
		if( TK$1 != 349 ) goto label$426;
		label$427:;
		{
			PATTRIB$1 = PATTRIB$1 | 17;
		}
		goto label$420;
		label$426:;
		if( TK$1 != 350 ) goto label$428;
		label$429:;
		{
			PATTRIB$1 = PATTRIB$1 | 35;
		}
		label$428:;
		label$420:;
	}
	if( (OPTIONS$1 & 2) == 0 ) goto label$431;
	{
		PARENT$1 = (struct $8FBSYMBOL*)0u;
	}
	goto label$430;
	label$431:;
	{
		IDOPT$1 = 22;
		{
			if( TK$1 != 349 ) goto label$433;
			label$434:;
			{
				IDOPT$1 = IDOPT$1 | 8;
			}
			goto label$432;
			label$433:;
			if( TK$1 == 347 ) goto label$436;
			label$437:;
			if( TK$1 != 348 ) goto label$435;
			label$436:;
			{
				IDOPT$1 = IDOPT$1 | 1;
			}
			label$435:;
			label$432:;
		}
		if( (OPTIONS$1 & 1) != 0 ) goto label$439;
		{
			IDOPT$1 = IDOPT$1 | (IDOPT$1 | 256);
		}
		label$439:;
		label$438:;
		struct $8FBSYMBOL* vr$13 = CPARENTID( IDOPT$1 );
		PARENT$1 = vr$13;
	}
	label$430:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$441;
	{
		if( (OPTIONS$1 & 1) == 0 ) goto label$443;
		{
			ERRREPORT( 158, 0, (uint8*)0u );
			PARENT$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$442;
		label$443:;
		{
			IS_OUTSIDE$1 = -1;
		}
		label$442:;
	}
	goto label$440;
	label$441:;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$445;
		{
			PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
		}
		label$445:;
		label$444:;
	}
	label$440:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0u ) goto label$447;
	{
		IS_MEMBERPROC$1 = -(*(int32*)PARENT$1 == 10);
	}
	label$447:;
	label$446:;
	if( IS_MEMBERPROC$1 == 0 ) goto label$449;
	{
		if( (-((OPTIONS$1 & 1) != 0) & -((ATTRIB$1 & 2) == 0)) == 0 ) goto label$451;
		{
			PATTRIB$1 = PATTRIB$1 | 2;
		}
		label$451:;
		label$450:;
	}
	goto label$448;
	label$449:;
	{
		{
			if( TK$1 == 347 ) goto label$454;
			label$455:;
			if( TK$1 == 348 ) goto label$454;
			label$456:;
			if( TK$1 != 350 ) goto label$453;
			label$454:;
			{
				if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$458;
				{
					ERRREPORT( 160, 0, (uint8*)0u );
				}
				goto label$457;
				label$458:;
				if( *(int32*)PARENT$1 == 10 ) goto label$459;
				{
					ERRREPORT( 168, 0, (uint8*)0u );
				}
				label$459:;
				label$457:;
				if( (OPTIONS$1 & 1) == 0 ) goto label$461;
				{
					HSKIPUNTIL( -1, 0, 0, 0 );
				}
				goto label$460;
				label$461:;
				{
					HSKIPCOMPOUND( TK$1, -1, 0 );
				}
				label$460:;
				goto label$419;
			}
			label$453:;
			label$452:;
		}
		HCHECKATTRIB( (int32*)&ATTRIB$1, 2, 258 );
		HCHECKATTRIB( (int32*)&ATTRIB$1, 2048, 259 );
		HCHECKATTRIB( (int32*)&PATTRIB$1, 512, 260 );
		HCHECKATTRIB( (int32*)&PATTRIB$1, 256, 261 );
	}
	label$448:;
	{
		if( TK$1 == 347 ) goto label$464;
		label$465:;
		if( TK$1 != 348 ) goto label$463;
		label$464:;
		{
			struct $8FBSYMBOL* vr$30 = SYMBPREADDPROC( (uint8*)0u );
			PROC$1 = vr$30;
		}
		goto label$462;
		label$463:;
		if( TK$1 != 349 ) goto label$466;
		label$467:;
		{
			int32 vr$31 = COPERATOR( -1 );
			OP$1 = vr$31;
			{
				if( OP$1 == -1 ) goto label$470;
				label$471:;
				if( OP$1 == 36 ) goto label$470;
				label$472:;
				if( OP$1 == 9 ) goto label$470;
				label$473:;
				if( OP$1 == 37 ) goto label$470;
				label$474:;
				if( OP$1 != 10 ) goto label$469;
				label$470:;
				{
					ERRREPORT( 157, 0, (uint8*)0u );
					OP$1 = 28;
				}
				label$469:;
				label$468:;
			}
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$476;
			{
				if( IS_MEMBERPROC$1 != 0 ) goto label$478;
				{
					ERRREPORT( 152, -1, (uint8*)0u );
					OP$1 = 28;
				}
				label$478:;
				label$477:;
			}
			goto label$475;
			label$476:;
			{
				if( IS_MEMBERPROC$1 == 0 ) goto label$480;
				{
					ERRREPORT( 153, -1, (uint8*)" (TODO)" );
				}
				label$480:;
				label$479:;
			}
			label$475:;
			{
				uint32 TMP$132$4;
				TMP$132$4 = (uint32)OP$1;
				goto label$482;
				label$483:;
				{
					if( (PATTRIB$1 & 768) == 0 ) goto label$485;
					{
						ERRREPORT( 233, -1, (uint8*)0u );
						PATTRIB$1 = PATTRIB$1 & -769;
					}
					label$485:;
					label$484:;
					if( (ATTRIB$1 & 2048) == 0 ) goto label$487;
					{
						ERRREPORT( 234, -1, (uint8*)0u );
						ATTRIB$1 = ATTRIB$1 & -2049;
					}
					label$487:;
					label$486:;
					ATTRIB$1 = ATTRIB$1 | 2;
					PATTRIB$1 = PATTRIB$1 & -3;
				}
				goto label$481;
				label$488:;
				{
					if( IS_MEMBERPROC$1 == 0 ) goto label$490;
					{
						if( (ATTRIB$1 & 2) == 0 ) goto label$492;
						{
							ERRREPORT( 232, -1, (uint8*)0u );
							ATTRIB$1 = ATTRIB$1 & -3;
						}
						label$492:;
						label$491:;
						PATTRIB$1 = PATTRIB$1 | 2;
					}
					label$490:;
					label$489:;
				}
				goto label$481;
				label$482:;
				static const void* tmp$136[4] = {
					&&label$483,
					&&label$483,
					&&label$483,
					&&label$483,
				};
				if( (TMP$132$4 - 18u) > 3u ) goto label$488;
				goto *tmp$136[TMP$132$4 - 18u];
				label$481:;
			}
			struct $8FBSYMBOL* vr$43 = SYMBPREADDPROC( (uint8*)0u );
			PROC$1 = vr$43;
		}
		goto label$462;
		label$466:;
		{
			struct $8FBSYMBOL* vr$48 = HGETID( PARENT$1, (uint8*)ID$1, &DTYPE$1, -(TK$1 == 345) | -(TK$1 == 350) );
			HEAD_PROC$1 = vr$48;
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 8388608) == 0 ) goto label$495;
			{
				if( DTYPE$1 == -2147483648u ) goto label$497;
				{
					ATTRIB$1 = ATTRIB$1 | 1048576;
				}
				label$497:;
				label$496:;
			}
			label$495:;
			label$494:;
			struct $8FBSYMBOL* vr$51 = SYMBPREADDPROC( (uint8*)ID$1 );
			PROC$1 = vr$51;
		}
		label$493:;
		label$462:;
	}
	CNAKEDATTRIBUTE( &PATTRIB$1 );
	{
		if( TK$1 == 347 ) goto label$500;
		label$501:;
		if( TK$1 != 348 ) goto label$499;
		label$500:;
		{
			MODE$1 = 3;
		}
		goto label$498;
		label$499:;
		{
			MODE$1 = -1;
		}
		label$502:;
		label$498:;
	}
	if( IS_MEMBERPROC$1 == 0 ) goto label$504;
	{
		if( (ATTRIB$1 & 2) != 0 ) goto label$506;
		{
			if( *(int32*)((uint8*)&PARSER$ + 104) != 4 ) goto label$508;
			{
				if( *(int32*)((uint8*)&ENV$ + 108) != 0 ) goto label$510;
				{
					int32 vr$54 = FBIS64BIT(  );
					if( vr$54 != 0 ) goto label$512;
					{
						if( *(int32*)((uint8*)&ENV$ + 212) != 0 ) goto label$514;
						{
							MODE$1 = 5;
						}
						label$514:;
						label$513:;
					}
					label$512:;
					label$511:;
				}
				label$510:;
				label$509:;
			}
			label$508:;
			label$507:;
		}
		label$506:;
		label$505:;
	}
	label$504:;
	label$503:;
	$11FB_FUNCMODE vr$56 = CPROCCALLINGCONV( MODE$1, &MODE_IS_EXPLICIT$1 );
	MODE$1 = vr$56;
	int32 vr$57 = LEXGETTOKEN( 0 );
	if( vr$57 != 388 ) goto label$516;
	{
		if( (*(int32*)((uint8*)&ENV$ + 1040) & 16) != 0 ) goto label$518;
		{
			ERRREPORTNOTALLOWED( 16, 146, (uint8*)0u );
		}
		goto label$517;
		label$518:;
		{
			PATTRIB$1 = PATTRIB$1 | 1;
		}
		label$517:;
		LEXSKIPTOKEN( 2048 );
	}
	label$516:;
	label$515:;
	if( (OPTIONS$1 & 1) == 0 ) goto label$520;
	{
		CLIBATTRIBUTE(  );
	}
	label$520:;
	label$519:;
	uint8* vr$61 = CALIASATTRIBUTE(  );
	PALIAS$1 = vr$61;
	if( (-((OPTIONS$1 & 1) == 0) & -(PARENT$1 != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$522;
	{
		if( PARENT$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) ) goto label$524;
		{
			SYMBNESTBEGIN( PARENT$1, -1 );
			*IS_NESTED$1 = -1;
		}
		label$524:;
		label$523:;
	}
	label$522:;
	label$521:;
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 4) = ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 8) = PATTRIB$1;
	CPARAMETERS( PARENT$1, PROC$1, MODE$1, -((OPTIONS$1 & 1) != 0) );
	{
		if( TK$1 != 348 ) goto label$526;
		label$527:;
		{
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 1 ) goto label$529;
			{
				ERRREPORT( 159, 0, (uint8*)0u );
			}
			label$529:;
			label$528:;
			DTYPE$1 = 0;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$525;
		label$526:;
		if( TK$1 != 347 ) goto label$530;
		label$531:;
		{
			int32 vr$73 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
			if( vr$73 == 0 ) goto label$533;
			{
				ERRREPORT( 271, -1, (uint8*)0u );
				goto label$419;
			}
			label$533:;
			label$532:;
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) + 56) != 4 ) goto label$535;
			{
				HPARAMERROR( PROC$1, 0, 143 );
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80);
				*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172);
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172) == (struct $8FBSYMBOL*)0u ) goto label$537;
				{
					*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 172) + 176) = (struct $8FBSYMBOL*)0u;
				}
				label$537:;
				label$536:;
				*(int16*)((uint8*)PROC$1 + 68) = (int16)((int32)*(int16*)((uint8*)PROC$1 + 68) + -1);
				SYMBFREESYMBOL( PARAM$1 );
			}
			label$535:;
			label$534:;
			DTYPE$1 = 0;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$525;
		label$530:;
		if( TK$1 != 349 ) goto label$538;
		label$539:;
		{
			{
				if( OP$1 != 29 ) goto label$541;
				label$542:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$544;
					{
						OP$1 = 54;
					}
					label$544:;
					label$543:;
				}
				goto label$540;
				label$541:;
				if( OP$1 != 28 ) goto label$545;
				label$546:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$548;
					{
						OP$1 = 53;
					}
					label$548:;
					label$547:;
				}
				goto label$540;
				label$545:;
				if( OP$1 != 30 ) goto label$549;
				label$550:;
				{
					if( (int32)*(int16*)((uint8*)PROC$1 + 68) != 1 ) goto label$552;
					{
						OP$1 = 76;
					}
					label$552:;
					label$551:;
				}
				label$549:;
				label$540:;
			}
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 4) == 0 ) goto label$554;
			{
				DTYPE$1 = 0;
			}
			goto label$553;
			label$554:;
			{
				CBYREFATTRIBUTE( &PATTRIB$1, -1 );
				int32 vr$96 = LEXGETTOKEN( 0 );
				if( vr$96 != 376 ) goto label$556;
				{
					CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
				}
				goto label$555;
				label$556:;
				{
					ERRREPORT( 68, 0, (uint8*)0u );
					DTYPE$1 = 8;
				}
				label$555:;
			}
			label$553:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = SUBTYPE$1;
			SYMBPROCALLOCEXT( PROC$1 );
			*($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 40) = OP$1;
			if( OP$1 != 0 ) goto label$558;
			{
				int32 vr$105 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
				if( vr$105 == 0 ) goto label$560;
				{
					ERRREPORT( 271, -1, (uint8*)0u );
					goto label$419;
				}
				label$560:;
				label$559:;
			}
			label$558:;
			label$557:;
			int32 vr$106 = HCHECKOPOVLPARAMS( PARENT$1, OP$1, PROC$1 );
			if( vr$106 != 0 ) goto label$562;
			{
				goto label$419;
			}
			label$562:;
			label$561:;
		}
		goto label$525;
		label$538:;
		if( TK$1 != 350 ) goto label$563;
		label$564:;
		{
			CBYREFATTRIBUTE( &PATTRIB$1, -1 );
			int32 vr$108 = LEXGETTOKEN( 0 );
			if( vr$108 != 376 ) goto label$566;
			{
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
				IS_INDEXED$1 = -((int32)*(int16*)((uint8*)PROC$1 + 68) == 2);
				IS_GET$1 = -1;
			}
			goto label$565;
			label$566:;
			{
				if( (PATTRIB$1 & 2048) == 0 ) goto label$568;
				{
					ERRREPORT( 68, 0, (uint8*)0u );
					PATTRIB$1 = PATTRIB$1 & -2049;
				}
				label$568:;
				label$567:;
				DTYPE$1 = 0;
				IS_INDEXED$1 = -((int32)*(int16*)((uint8*)PROC$1 + 68) == 3);
			}
			label$565:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 28) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) = SUBTYPE$1;
			HCHECKPROPPARAMS( PROC$1, IS_GET$1 );
		}
		goto label$525;
		label$563:;
		{
			if( IS_MEMBERPROC$1 == 0 ) goto label$571;
			{
				int32 TMP$133$4;
				if( (int32)*(int16*)((uint8*)PROC$1 + 68) <= 0 ) goto label$572;
				TMP$133$4 = -(*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 80) + 56) != 4);
				goto label$696;
				label$572:;
				TMP$133$4 = -1;
				label$696:;
				if( TMP$133$4 == 0 ) goto label$574;
				{
					PATTRIB$1 = PATTRIB$1 | 1;
				}
				label$574:;
				label$573:;
			}
			label$571:;
			label$570:;
			CBYREFATTRIBUTE( &PATTRIB$1, -(TK$1 == 346) );
			int32 vr$131 = LEXGETTOKEN( 0 );
			if( vr$131 != 376 ) goto label$576;
			{
				if( (-(DTYPE$1 != -2147483648u) | -(TK$1 == 345)) == 0 ) goto label$578;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
				}
				label$578:;
				label$577:;
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -((OPTIONS$1 & 1) != 0), &DTYPE$1, &SUBTYPE$1 );
			}
			goto label$575;
			label$576:;
			{
				if( TK$1 != 346 ) goto label$580;
				{
					if( (*(int32*)((uint8*)&ENV$ + 1040) & 4194304) == 0 ) goto label$582;
					{
						if( DTYPE$1 != -2147483648u ) goto label$584;
						{
							int32 vr$140 = SYMBGETDEFTYPE( (uint8*)ID$1 );
							DTYPE$1 = vr$140;
						}
						label$584:;
						label$583:;
					}
					goto label$581;
					label$582:;
					{
						ERRREPORTNOTALLOWED( 4194304, 147, (uint8*)0u );
						DTYPE$1 = 8;
					}
					label$581:;
				}
				goto label$579;
				label$580:;
				{
					DTYPE$1 = 0;
				}
				label$579:;
			}
			label$575:;
		}
		label$569:;
		label$525:;
	}
	if( (OPTIONS$1 & 1) == 0 ) goto label$586;
	{
		{
			if( TK$1 == 347 ) goto label$589;
			label$590:;
			if( TK$1 != 348 ) goto label$588;
			label$589:;
			{
				struct $8FBSYMBOL* vr$142 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$142;
			}
			goto label$587;
			label$588:;
			if( TK$1 != 349 ) goto label$591;
			label$592:;
			{
				struct $8FBSYMBOL* vr$143 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$143;
			}
			goto label$587;
			label$591:;
			{
				struct $8FBSYMBOL* vr$144 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0 );
				PROC$1 = vr$144;
			}
			label$593:;
			label$587:;
		}
		if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$595;
		{
			ERRREPORT( 4, 0, (uint8*)0u );
			goto label$419;
		}
		label$595:;
		label$594:;
		if( (-((OPTIONS$1 & 2) != 0) & -(TK$1 != 347)) == 0 ) goto label$597;
		{
			COVERRIDEATTRIBUTE( PROC$1 );
		}
		label$597:;
		label$596:;
		if( TK$1 != 348 ) goto label$599;
		{
			if( (int32)*(int16*)((uint8*)PARENT$1 + 38) != 4 ) goto label$601;
			{
				struct $8FBSYMBOL* DTOR0$4;
				struct $8FBSYMBOL* vr$151 = SYMBPREADDPROC( (uint8*)0u );
				DTOR0$4 = vr$151;
				SYMBADDPROCINSTANCEPARAM( PARENT$1, DTOR0$4 );
				struct $8FBSYMBOL* vr$154 = SYMBADDCTOR( DTOR0$4, (uint8*)0u, ATTRIB$1, (PATTRIB$1 & -9) | 4096, MODE$1, 0 );
				DTOR0$4 = vr$154;
			}
			label$601:;
			label$600:;
		}
		label$599:;
		label$598:;
		if( TK$1 != 350 ) goto label$603;
		{
			HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
		}
		label$603:;
		label$602:;
		fb$result$1 = PROC$1;
		goto label$419;
	}
	label$586:;
	label$585:;
	{
		int32 TMP$134$2;
		int32 vr$155 = LEXGETTOKEN( 0 );
		TMP$134$2 = vr$155;
		if( TMP$134$2 == 347 ) goto label$606;
		label$607:;
		if( TMP$134$2 != 348 ) goto label$605;
		label$606:;
		{
			if( (-((PATTRIB$1 & 2) != 0) | -(TK$1 == 346)) == 0 ) goto label$609;
			{
				ERRREPORT( 17, -1, (uint8*)0u );
			}
			goto label$608;
			label$609:;
			if( (int32)*(int16*)((uint8*)PROC$1 + 68) == 0 ) goto label$610;
			{
				ERRREPORT( 1, -1, (uint8*)0u );
			}
			goto label$608;
			label$610:;
			{
				int32 vr$162 = LEXGETTOKEN( 0 );
				if( vr$162 != 347 ) goto label$612;
				{
					STATS$1 = STATS$1 | 65536;
				}
				goto label$611;
				label$612:;
				{
					STATS$1 = STATS$1 | 131072;
				}
				label$611:;
			}
			label$608:;
			LEXSKIPTOKEN( 2048 );
			int32 vr$165 = LEXGETCLASS( 0 );
			if( vr$165 != 3 ) goto label$614;
			{
				if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == 8 ) goto label$616;
				{
					ERRREPORT( 189, 0, (uint8*)0u );
					LEXSKIPTOKEN( 0 );
				}
				goto label$615;
				label$616:;
				{
					uint8* vr$168 = LEXGETTEXT(  );
					FBSTRING* vr$169 = fb_StrAllocTempDescZ( (uint8*)vr$168 );
					int32 vr$170 = fb_VALINT( (FBSTRING*)vr$169 );
					PRIORITY$1 = vr$170;
					if( (-(PRIORITY$1 < 101) | -(PRIORITY$1 > 65535)) == 0 ) goto label$618;
					{
						ERRREPORT( 189, 0, (uint8*)0u );
						LEXSKIPTOKEN( 0 );
					}
					goto label$617;
					label$618:;
					{
						PRIORITY$1 = PRIORITY$1 & 65535;
						LEXSKIPTOKEN( 0 );
					}
					label$617:;
				}
				label$615:;
			}
			label$614:;
			label$613:;
		}
		label$605:;
		label$604:;
	}
	int32 vr$175 = HMATCH( 307, 2048 );
	if( vr$175 == 0 ) goto label$620;
	{
		PATTRIB$1 = PATTRIB$1 | 64;
	}
	label$620:;
	label$619:;
	int32 vr$177 = LEXGETTOKEN( 0 );
	if( vr$177 != 341 ) goto label$622;
	{
		if( (STATS$1 & 196608) == 0 ) goto label$624;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$624:;
		label$623:;
		if( (ATTRIB$1 & 64) == 0 ) goto label$626;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			ATTRIB$1 = ATTRIB$1 & -65;
		}
		label$626:;
		label$625:;
		LEXSKIPTOKEN( 2048 );
		FBSETOPTION( 33, -1 );
		ATTRIB$1 = ATTRIB$1 | 288;
	}
	label$622:;
	label$621:;
	{
		if( TK$1 != 347 ) goto label$628;
		label$629:;
		{
			struct $8FBSYMBOL* vr$182 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			HEAD_PROC$1 = vr$182;
		}
		goto label$627;
		label$628:;
		if( TK$1 != 348 ) goto label$630;
		label$631:;
		{
			struct $8FBSYMBOL* vr$183 = SYMBGETCOMPDTOR1( PARENT$1 );
			HEAD_PROC$1 = vr$183;
		}
		goto label$627;
		label$630:;
		if( TK$1 != 349 ) goto label$632;
		label$633:;
		{
			struct $8FBSYMBOL* vr$184 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$1 );
			HEAD_PROC$1 = vr$184;
		}
		label$632:;
		label$627:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$635;
	{
		if( IS_OUTSIDE$1 == 0 ) goto label$637;
		{
			ERRREPORT( 158, 0, (uint8*)0u );
		}
		label$637:;
		label$636:;
		{
			if( TK$1 == 347 ) goto label$640;
			label$641:;
			if( TK$1 != 348 ) goto label$639;
			label$640:;
			{
				struct $8FBSYMBOL* vr$185 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$185;
			}
			goto label$638;
			label$639:;
			if( TK$1 != 349 ) goto label$642;
			label$643:;
			{
				struct $8FBSYMBOL* vr$186 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$186;
			}
			goto label$638;
			label$642:;
			{
				struct $8FBSYMBOL* vr$187 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				HEAD_PROC$1 = vr$187;
			}
			label$644:;
			label$638:;
		}
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$646;
		{
			ERRREPORT( 4, -1, (uint8*)0u );
			uint8* vr$188 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$189 = SYMBADDPROC( PROC$1, (uint8*)vr$188, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
			PROC$1 = vr$189;
		}
		goto label$645;
		label$646:;
		{
			PROC$1 = HEAD_PROC$1;
		}
		label$645:;
	}
	goto label$634;
	label$635:;
	{
		if( -((*(int32*)((uint8*)HEAD_PROC$1 + 8) & 32) != 0) == -(TK$1 == 350) ) goto label$648;
		{
			ERRREPORT( 4, -1, (uint8*)0u );
			uint8* vr$194 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$195 = SYMBADDPROC( PROC$1, (uint8*)vr$194, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
			fb$result$1 = vr$195;
			goto label$419;
		}
		label$648:;
		label$647:;
		if( (*(int32*)((uint8*)HEAD_PROC$1 + 8) & 1) <= 0 ) goto label$650;
		{
			{
				if( TK$1 != 347 ) goto label$652;
				label$653:;
				{
					struct $8FBSYMBOL* vr$198 = SYMBFINDCTORPROC( HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$198;
				}
				goto label$651;
				label$652:;
				if( TK$1 != 349 ) goto label$654;
				label$655:;
				{
					struct $8FBSYMBOL* vr$199 = SYMBFINDOPOVLPROC( OP$1, HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$199;
				}
				goto label$651;
				label$654:;
				{
					$14FB_SYMBFINDOPT TMP$135$5;
					if( IS_GET$1 == 0 ) goto label$657;
					TMP$135$5 = 1;
					goto label$697;
					label$657:;
					TMP$135$5 = 0;
					label$697:;
					struct $8FBSYMBOL* vr$200 = SYMBFINDOVERLOADPROC( HEAD_PROC$1, PROC$1, TMP$135$5 );
					HEAD_PROC$1 = vr$200;
				}
				label$656:;
				label$651:;
			}
			PATTRIB$1 = PATTRIB$1 | 1;
		}
		label$650:;
		label$649:;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$659;
		{
			if( IS_OUTSIDE$1 == 0 ) goto label$661;
			{
				ERRREPORT( 158, 0, (uint8*)0u );
			}
			label$661:;
			label$660:;
			{
				if( TK$1 == 347 ) goto label$664;
				label$665:;
				if( TK$1 != 348 ) goto label$663;
				label$664:;
				{
					struct $8FBSYMBOL* vr$202 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$202;
				}
				goto label$662;
				label$663:;
				if( TK$1 != 349 ) goto label$666;
				label$667:;
				{
					struct $8FBSYMBOL* vr$203 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$203;
				}
				goto label$662;
				label$666:;
				{
					struct $8FBSYMBOL* vr$204 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
					HEAD_PROC$1 = vr$204;
				}
				label$668:;
				label$662:;
			}
			if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$670;
			{
				ERRREPORT( 4, -1, (uint8*)0u );
				uint8* vr$205 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$206 = SYMBADDPROC( PROC$1, (uint8*)vr$205, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				fb$result$1 = vr$206;
				goto label$419;
			}
			label$670:;
			label$669:;
			PROC$1 = HEAD_PROC$1;
		}
		goto label$658;
		label$659:;
		{
			if( (*(int32*)((uint8*)HEAD_PROC$1 + 12) & 8) == 0 ) goto label$672;
			{
				ERRREPORT( 4, -1, (uint8*)0u );
				uint8* vr$209 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$210 = SYMBADDPROC( PROC$1, (uint8*)vr$209, (uint8*)0u, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4 );
				fb$result$1 = vr$210;
				goto label$419;
			}
			label$672:;
			label$671:;
			if( MODE_IS_EXPLICIT$1 != 0 ) goto label$674;
			{
				MODE$1 = *(int32*)((uint8*)HEAD_PROC$1 + 84);
				*($11FB_FUNCMODE*)((uint8*)PROC$1 + 84) = MODE$1;
			}
			label$674:;
			label$673:;
			HCHECKPROTOTYPE( HEAD_PROC$1, PROC$1, PALIAS$1, DTYPE$1, SUBTYPE$1, MODE$1 );
			PROC$1 = HEAD_PROC$1;
			HCHECKATTRIBS( PROC$1, ATTRIB$1, PATTRIB$1 );
			if( (STATS$1 & 196608) == 0 ) goto label$676;
			{
				if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$678;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
				}
				label$678:;
				label$677:;
			}
			label$676:;
			label$675:;
			*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 12) = *(int32*)((uint8*)PROC$1 + 12) | 8;
		}
		label$658:;
	}
	label$634:;
	if( PROC$1 == (struct $8FBSYMBOL*)0u ) goto label$680;
	{
		int32 IS_GLOBAL$2;
		IS_GLOBAL$2 = -((*(int32*)((uint8*)PROC$1 + 4) & 57) != 0);
		if( IS_GLOBAL$2 == 0 ) goto label$682;
		{
			int32 vr$222 = fb_StrLen( (void*)ID$1, 129 );
			if( (-(vr$222 > 0) & -(*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352))) == 0 ) goto label$684;
			{
				int32 vr$229 = PARSERISGLOBALASMKEYWORD( (uint8*)ID$1 );
				if( vr$229 == 0 ) goto label$686;
				{
					ERRREPORTWARNEX( 47, (uint8*)ID$1, *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568), 1, (uint8*)0u );
				}
				label$686:;
				label$685:;
			}
			label$684:;
			label$683:;
		}
		label$682:;
		label$681:;
	}
	label$680:;
	label$679:;
	if( (STATS$1 & 65536) == 0 ) goto label$688;
	{
		if( (*(int32*)((uint8*)PROC$1 + 4) & 6291456) == 0 ) goto label$690;
		{
			ERRREPORT( 205, -1, (uint8*)0u );
		}
		label$690:;
		label$689:;
		SYMBADDGLOBALCTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56) = PRIORITY$1;
	}
	goto label$687;
	label$688:;
	if( (STATS$1 & 131072) == 0 ) goto label$691;
	{
		if( (*(int32*)((uint8*)PROC$1 + 4) & 6291456) == 0 ) goto label$693;
		{
			ERRREPORT( 206, -1, (uint8*)0u );
		}
		label$693:;
		label$692:;
		SYMBADDGLOBALDTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int32*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 112) + 56) = PRIORITY$1;
	}
	label$691:;
	label$687:;
	if( TK$1 != 350 ) goto label$695;
	{
		HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
	}
	label$695:;
	label$694:;
	fb$result$1 = PROC$1;
	label$419:;
	return fb$result$1;
}

void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$698:;
	if( (*(int32*)ATTRIB$1 & 2) == 0 ) goto label$701;
	{
		ERRREPORT( 213, 0, (uint8*)0u );
		*ATTRIB$1 = *(int32*)ATTRIB$1 & -3;
	}
	label$701:;
	label$700:;
	label$699:;
}

void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$702:;
	if( (*(int32*)PATTRIB$1 & 768) == 0 ) goto label$705;
	{
		if( (*(int32*)PATTRIB$1 & 512) == 0 ) goto label$707;
		{
			ERRREPORT( 210, 0, (uint8*)0u );
		}
		goto label$706;
		label$707:;
		{
			ERRREPORT( 211, 0, (uint8*)0u );
		}
		label$706:;
		*PATTRIB$1 = *(int32*)PATTRIB$1 & -724;
	}
	label$705:;
	label$704:;
	label$703:;
}

void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$708:;
	if( (*(int32*)PATTRIB$1 & 512) == 0 ) goto label$711;
	{
		ERRREPORT( 212, 0, (uint8*)0u );
		*PATTRIB$1 = *(int32*)PATTRIB$1 & -513;
	}
	label$711:;
	label$710:;
	label$709:;
}

void HDISALLOWCONSTCTORDTOR( int32 TK$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$712:;
	if( (*(int32*)ATTRIB$1 & 2048) == 0 ) goto label$715;
	{
		$9FB_ERRMSG TMP$137$2;
		if( TK$1 != 347 ) goto label$716;
		TMP$137$2 = 314;
		goto label$717;
		label$716:;
		TMP$137$2 = 315;
		label$717:;
		ERRREPORT( TMP$137$2, 0, (uint8*)0u );
		*ATTRIB$1 = *(int32*)ATTRIB$1 & -2049;
	}
	label$715:;
	label$714:;
	label$713:;
}

void CPROCSTMTBEGIN( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$718:;
	int32 TKN$1;
	int32 IS_NESTED$1;
	struct $8FBSYMBOL* PROC$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	if( (ATTRIB$1 & 96) != 0 ) goto label$721;
	{
		if( *(int32*)((uint8*)&ENV$ + 1088) == 0 ) goto label$723;
		{
			ATTRIB$1 = ATTRIB$1 | 32;
		}
		goto label$722;
		label$723:;
		{
			ATTRIB$1 = ATTRIB$1 | 64;
		}
		label$722:;
	}
	label$721:;
	label$720:;
	CMETHODATTRIBUTES( (struct $8FBSYMBOL*)0u, &ATTRIB$1, &PATTRIB$1 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	TKN$1 = vr$5;
	{
		uint32 TMP$138$2;
		TMP$138$2 = (uint32)TKN$1;
		goto label$725;
		label$726:;
		{
		}
		goto label$724;
		label$727:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 64) != 0 ) goto label$729;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			goto label$728;
			label$729:;
			{
				PATTRIB$1 = PATTRIB$1 | 4;
			}
			label$728:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWVIRTUALCTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$730:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 64) != 0 ) goto label$732;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			goto label$731;
			label$732:;
			{
				PATTRIB$1 = PATTRIB$1 | 8;
			}
			label$731:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWABSTRACTDTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$733:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 32) != 0 ) goto label$735;
			{
				ERRREPORTNOTALLOWED( 32, 146, (uint8*)0u );
			}
			label$735:;
			label$734:;
		}
		goto label$724;
		label$736:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 64) != 0 ) goto label$738;
			{
				ERRREPORTNOTALLOWED( 64, 146, (uint8*)0u );
			}
			label$738:;
			label$737:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$739:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			HSKIPUNTIL( -1, 0, 0, 0 );
			goto label$719;
		}
		goto label$724;
		label$725:;
		static const void* tmp$139[6] = {
			&&label$726,
			&&label$726,
			&&label$727,
			&&label$730,
			&&label$733,
			&&label$736,
		};
		if( (TMP$138$2 - 345u) > 5u ) goto label$739;
		goto *tmp$139[TMP$138$2 - 345u];
		label$724:;
	}
	int32 vr$26 = CCOMPSTMTISALLOWED( 2 );
	if( vr$26 != 0 ) goto label$741;
	{
		HSKIPCOMPOUND( TKN$1, -1, 0 );
		goto label$719;
	}
	label$741:;
	label$740:;
	LEXSKIPTOKEN( 2048 );
	struct $8FBSYMBOL* vr$28 = CPROCHEADER( ATTRIB$1, PATTRIB$1, &IS_NESTED$1, 0, TKN$1 );
	PROC$1 = vr$28;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$743;
	{
		if( IS_NESTED$1 == 0 ) goto label$745;
		{
			SYMBNESTEND( -1 );
		}
		label$745:;
		label$744:;
		HSKIPCOMPOUND( TKN$1, -1, 0 );
		goto label$719;
	}
	label$743:;
	label$742:;
	if( (*(int32*)((uint8*)PROC$1 + 8) & 512) == 0 ) goto label$747;
	{
		ERRREPORT( 224, 0, (uint8*)0u );
	}
	label$747:;
	label$746:;
	ASTPROCBEGIN( PROC$1, 0 );
	struct $13FB_CMPSTMTSTK* vr$31 = CCOMPSTMTPUSH( 346, 33 );
	STK$1 = vr$31;
	*($8FB_TOKEN*)((uint8*)STK$1 + 16) = TKN$1;
	*(int32*)((uint8*)STK$1 + 20) = IS_NESTED$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 24) = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 40) + 40);
	label$719:;
}

void CPROCSTMTEND( void )
{
	label$748:;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $8FBSYMBOL* PROC_RES$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 346, -1 );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0u ) goto label$751;
	{
		HSKIPUNTIL( -1, 0, 0, 0 );
		goto label$749;
	}
	label$751:;
	label$750:;
	LEXSKIPTOKEN( 2048 );
	int32 vr$2 = HMATCH( *(int32*)((uint8*)STK$1 + 16), 2048 );
	if( vr$2 != 0 ) goto label$753;
	{
		{
			$8FB_TOKEN TMP$140$3;
			TMP$140$3 = *($8FB_TOKEN*)((uint8*)STK$1 + 16);
			if( TMP$140$3 != 345 ) goto label$755;
			label$756:;
			{
				ERRREPORT( 125, 0, (uint8*)0u );
			}
			goto label$754;
			label$755:;
			if( TMP$140$3 != 346 ) goto label$757;
			label$758:;
			{
				ERRREPORT( 126, 0, (uint8*)0u );
			}
			goto label$754;
			label$757:;
			if( TMP$140$3 != 347 ) goto label$759;
			label$760:;
			{
				ERRREPORT( 127, 0, (uint8*)0u );
			}
			goto label$754;
			label$759:;
			if( TMP$140$3 != 348 ) goto label$761;
			label$762:;
			{
				ERRREPORT( 128, 0, (uint8*)0u );
			}
			goto label$754;
			label$761:;
			if( TMP$140$3 != 349 ) goto label$763;
			label$764:;
			{
				ERRREPORT( 129, 0, (uint8*)0u );
			}
			goto label$754;
			label$763:;
			if( TMP$140$3 != 350 ) goto label$765;
			label$766:;
			{
				ERRREPORT( 130, 0, (uint8*)0u );
			}
			label$765:;
			label$754:;
		}
	}
	label$753:;
	label$752:;
	struct $8FBSYMBOL* vr$4 = SYMBGETPROCRESULT( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) );
	PROC_RES$1 = vr$4;
	if( PROC_RES$1 == (struct $8FBSYMBOL*)0u ) goto label$768;
	{
		if( (*(int32*)((uint8*)PROC_RES$1 + 12) & 2) != 0 ) goto label$770;
		{
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 128) != 0 ) goto label$772;
			{
				if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 8) & 2048) == 0 ) goto label$774;
				{
					ERRREPORT( 316, 0, (uint8*)0u );
				}
				goto label$773;
				label$774:;
				{
					ERRREPORTWARN( 13, (uint8*)0u, 1, (uint8*)0u );
				}
				label$773:;
			}
			label$772:;
			label$771:;
		}
		label$770:;
		label$769:;
	}
	label$768:;
	label$767:;
	ASTPROCEND( 0 );
	if( *(int32*)((uint8*)STK$1 + 20) == 0 ) goto label$776;
	{
		SYMBNESTEND( -1 );
	}
	label$776:;
	label$775:;
	CCOMPSTMTPOP( STK$1 );
	label$749:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void HPARAMERROR( struct $8FBSYMBOL* PROC$1, int32 ARGNUM$1, int32 ERRNUM$1 )
{
	label$45:;
	ERRREPORTPARAM( PROC$1, ARGNUM$1, (uint8*)0u, ERRNUM$1 );
	label$46:;
}

static void HCHECKPROTOTYPE( struct $8FBSYMBOL* PROTO$1, struct $8FBSYMBOL* PROC$1, uint8* PALIAS$1, int32 PROC_DTYPE$1, struct $8FBSYMBOL* PROC_SUBTYPE$1, int32 MODE$1 )
{
	label$47:;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* PROTO_PARAM$1;
	int32 PARAMS$1;
	int32 PROTO_PARAMS$1;
	int32 I$1;
	if( (-(PALIAS$1 != (uint8*)0u) & -((*(int32*)((uint8*)PROTO$1 + 12) & 512) != 0)) == 0 ) goto label$50;
	{
		int32 vr$6 = fb_StrCompare( (void*)PALIAS$1, 0, *(void**)((uint8*)PROTO$1 + 20), 0 );
		if( vr$6 == 0 ) goto label$52;
		{
			FBSTRING TMP$95$3;
			FBSTRING TMP$96$3;
			FBSTRING TMP$97$3;
			__builtin_memset( &TMP$97$3, 0, 12 );
			__builtin_memset( &TMP$95$3, 0, 12 );
			FBSTRING* vr$10 = fb_StrConcat( &TMP$95$3, (void*)"\x22", 2, (void*)PALIAS$1, 0 );
			__builtin_memset( &TMP$96$3, 0, 12 );
			FBSTRING* vr$13 = fb_StrConcat( &TMP$96$3, (void*)vr$10, -1, (void*)"\x22", 2 );
			fb_StrAssign( (void*)&TMP$97$3, -1, (void*)vr$13, -1, 0 );
			ERRREPORTEX( 311, (uint8*)*(uint8**)&TMP$97$3, 0, 1, (uint8*)0u );
			fb_StrDelete( (FBSTRING*)&TMP$97$3 );
		}
		label$52:;
		label$51:;
	}
	label$50:;
	label$49:;
	if( (-(*(int32*)((uint8*)PROTO$1 + 28) != PROC_DTYPE$1) | -(*(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 32) != PROC_SUBTYPE$1)) == 0 ) goto label$54;
	{
		ERRREPORT( 40, -1, (uint8*)0u );
	}
	label$54:;
	label$53:;
	if( (-(*(int32*)((uint8*)PROC$1 + 96) != 2) & -(*(int32*)((uint8*)PROTO$1 + 96) != *(int32*)((uint8*)PROC$1 + 96))) == 0 ) goto label$56;
	{
		ERRREPORTWARN( 28, (uint8*)0u, 1, (uint8*)0u );
	}
	label$56:;
	label$55:;
	if( *(int32*)((uint8*)PROTO$1 + 84) == MODE$1 ) goto label$58;
	{
		ERRREPORT( 41, -1, (uint8*)0u );
	}
	label$58:;
	label$57:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	if( (*(int32*)((uint8*)PROC$1 + 8) & 2) == 0 ) goto label$60;
	{
		PARAMS$1 = PARAMS$1 + -1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$60:;
	label$59:;
	PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 76);
	PROTO_PARAMS$1 = (int32)*(int16*)((uint8*)PROTO$1 + 68);
	if( (*(int32*)((uint8*)PROTO$1 + 8) & 2) == 0 ) goto label$62;
	{
		PROTO_PARAMS$1 = PROTO_PARAMS$1 + -1;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 176);
	}
	label$62:;
	label$61:;
	if( PROTO_PARAMS$1 == PARAMS$1 ) goto label$64;
	{
		ERRREPORT( 1, -1, (uint8*)0u );
	}
	label$64:;
	label$63:;
	I$1 = 1;
	label$65:;
	if( (-(I$1 <= PROTO_PARAMS$1) & -(I$1 <= PARAMS$1)) == 0 ) goto label$66;
	{
		int32 TMP$98$2;
		int32 DTYPE$2;
		DTYPE$2 = *(int32*)((uint8*)PROTO_PARAM$1 + 28);
		if( (DTYPE$2 & 480) == 0 ) goto label$67;
		TMP$98$2 = 24;
		goto label$777;
		label$67:;
		TMP$98$2 = DTYPE$2 & 31;
		label$777:;
		if( TMP$98$2 != 0 ) goto label$69;
		{
			*($11FB_DATATYPE*)((uint8*)PROTO_PARAM$1 + 28) = *($11FB_DATATYPE*)((uint8*)PARAM$1 + 28);
			*(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 32) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32);
		}
		goto label$68;
		label$69:;
		{
			if( *(int32*)((uint8*)PARAM$1 + 28) == DTYPE$2 ) goto label$71;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			goto label$70;
			label$71:;
			if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 32) ) goto label$72;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			label$72:;
			label$70:;
		}
		label$68:;
		if( *(int32*)((uint8*)PARAM$1 + 56) == *(int32*)((uint8*)PROTO_PARAM$1 + 56) ) goto label$74;
		{
			HPARAMERROR( PROC$1, I$1, 58 );
		}
		label$74:;
		label$73:;
		if( *(int32*)((uint8*)PARAM$1 + 56) != 3 ) goto label$76;
		{
			if( *(int32*)((uint8*)PARAM$1 + 68) == *(int32*)((uint8*)PROTO_PARAM$1 + 68) ) goto label$78;
			{
				HPARAMERROR( PROC$1, I$1, 58 );
			}
			label$78:;
			label$77:;
		}
		label$76:;
		label$75:;
		if( *(int32*)((uint8*)PARAM$1 + 56) == 4 ) goto label$80;
		{
			SYMBSETNAME( PROTO_PARAM$1, *(uint8**)((uint8*)PARAM$1 + 16) );
			if( (*(int32*)((uint8*)PARAM$1 + 4) & 1048576) == 0 ) goto label$82;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 4) = *(int32*)((uint8*)PROTO_PARAM$1 + 4) | 1048576;
			}
			goto label$81;
			label$82:;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 4) = *(int32*)((uint8*)PROTO_PARAM$1 + 4) & -1048577;
			}
			label$81:;
		}
		label$80:;
		label$79:;
		if( (-(*(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 64) != (struct $7ASTNODE*)0u) & -(*(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u)) == 0 ) goto label$84;
		{
			int32 vr$77 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 64), *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) );
			if( vr$77 != 0 ) goto label$86;
			{
				ERRREPORTPARAMWARN( PROC$1, I$1, (uint8*)0u, 36 );
			}
			label$86:;
			label$85:;
		}
		label$84:;
		label$83:;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 176);
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
		I$1 = I$1 + 1;
	}
	goto label$65;
	label$66:;
	label$48:;
}

static void HCHECKATTRIBS( struct $8FBSYMBOL* PROTO$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$87:;
	if( -((PATTRIB$1 & 2048) != 0) == -((*(int32*)((uint8*)PROTO$1 + 8) & 2048) != 0) ) goto label$90;
	{
		ERRREPORT( 20, -1, (uint8*)0u );
		if( (*(int32*)((uint8*)PROTO$1 + 8) & 2048) == 0 ) goto label$92;
		{
			PATTRIB$1 = PATTRIB$1 | 2048;
		}
		goto label$91;
		label$92:;
		{
			PATTRIB$1 = PATTRIB$1 & -2049;
		}
		label$91:;
	}
	label$90:;
	label$89:;
	if( ((ATTRIB$1 & 2) & -((*(int32*)((uint8*)PROTO$1 + 4) & 2) == 0)) == 0 ) goto label$94;
	{
		ERRREPORT( 217, 0, (uint8*)0u );
	}
	label$94:;
	label$93:;
	if( ((ATTRIB$1 & 2048) & -((*(int32*)((uint8*)PROTO$1 + 4) & 2048) == 0)) == 0 ) goto label$96;
	{
		ERRREPORT( 218, 0, (uint8*)0u );
	}
	label$96:;
	label$95:;
	if( ((PATTRIB$1 & 512) & -((*(int32*)((uint8*)PROTO$1 + 8) & 512) == 0)) == 0 ) goto label$98;
	{
		ERRREPORT( 220, 0, (uint8*)0u );
	}
	goto label$97;
	label$98:;
	if( ((PATTRIB$1 & 256) & -((*(int32*)((uint8*)PROTO$1 + 8) & 256) == 0)) == 0 ) goto label$99;
	{
		ERRREPORT( 219, 0, (uint8*)0u );
	}
	label$99:;
	label$97:;
	*($13FB_SYMBATTRIB*)((uint8*)PROTO$1 + 4) = *(int32*)((uint8*)PROTO$1 + 4) | ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROTO$1 + 8) = *(int32*)((uint8*)PROTO$1 + 8) | PATTRIB$1;
	label$88:;
}

static int32 HCHECKIDTOKEN( int32 HAS_PARENT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$100:;
	fb$result$1 = 0;
	{
		uint32 TMP$99$2;
		int32 vr$1 = LEXGETCLASS( 0 );
		TMP$99$2 = (uint32)vr$1;
		goto label$103;
		label$104:;
		{
			if( (*(int32*)((uint8*)&ENV$ + 1040) & 524288) == 0 ) goto label$106;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$108;
				{
					if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4120) <= 0 ) goto label$110;
					{
						ERRREPORT( 90, 0, (uint8*)0u );
					}
					label$110:;
					label$109:;
				}
				label$108:;
				label$107:;
			}
			label$106:;
			label$105:;
		}
		goto label$102;
		label$111:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$113;
			{
				if( (~HAS_PARENT$1 | -(*(uint32*)((uint8*)&PARSER$ + 100) > 0u)) == 0 ) goto label$115;
				{
					ERRREPORT( 4, 0, (uint8*)0u );
					goto label$101;
				}
				label$115:;
				label$114:;
			}
			label$113:;
			label$112:;
		}
		goto label$102;
		label$116:;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$118;
			{
				ERRREPORT( 4, 0, (uint8*)0u );
				goto label$101;
			}
			label$118:;
			label$117:;
		}
		goto label$102;
		label$119:;
		{
			ERRREPORT( 14, 0, (uint8*)0u );
			goto label$101;
		}
		goto label$102;
		label$103:;
		static const void* tmp$141[6] = {
			&&label$104,
			&&label$116,
			&&label$111,
			&&label$119,
			&&label$119,
			&&label$116,
		};
		if( TMP$99$2 > 5u ) goto label$119;
		goto *tmp$141[TMP$99$2 - 0u];
		label$102:;
	}
	fb$result$1 = -1;
	label$101:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int32* DTYPE$1, int32 IS_SUB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$120:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( PARENT$1 != (struct $8FBSYMBOL*)0u ) goto label$123;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116);
	}
	goto label$122;
	label$123:;
	{
		uint8* vr$3 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$4 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$3, 0, 0 );
		CHAIN_$1 = vr$4;
	}
	label$122:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$125;
	{
		struct $8FBSYMBOL* vr$5 = SYMBFINDBYCLASS( CHAIN_$1, 3 );
		SYM$1 = vr$5;
	}
	goto label$124;
	label$125:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0u;
	}
	label$124:;
	int32 vr$7 = HCHECKIDTOKEN( -(PARENT$1 != (struct $8FBSYMBOL*)0u) );
	if( vr$7 != 0 ) goto label$127;
	{
		uint8* vr$8 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)ID$1, 0, (void*)vr$8, 0, 0 );
		*DTYPE$1 = -2147483648u;
		HSKIPUNTIL( 40, 0, 0, 0 );
		goto label$121;
	}
	label$127:;
	label$126:;
	uint8* vr$10 = LEXGETTEXT(  );
	fb_StrAssign( (void*)ID$1, 0, (void*)vr$10, 0, 0 );
	*DTYPE$1 = *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8);
	if( IS_SUB$1 == 0 ) goto label$129;
	{
		if( *DTYPE$1 == -2147483648u ) goto label$131;
		{
			ERRREPORT( 25, 0, (uint8*)0u );
			*DTYPE$1 = -2147483648u;
			*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) = -2147483648u;
			*(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4124) = 0;
		}
		label$131:;
		label$130:;
	}
	label$129:;
	label$128:;
	LEXSKIPTOKEN( 4096 );
	fb$result$1 = SYM$1;
	label$121:;
	return fb$result$1;
}

static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$208:;
	uint8* vr$0 = LEXGETTEXT(  );
	FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)vr$0 );
	FBSTRING* vr$2 = fb_StrUcase2( (FBSTRING*)vr$1, 0 );
	int32 vr$3 = fb_StrCompare( (void*)vr$2, -1, (void*)"NAKED", 6 );
	if( vr$3 != 0 ) goto label$211;
	{
		LEXSKIPTOKEN( 2048 );
		*PATTRIB$1 = *(int32*)PATTRIB$1 | 128;
	}
	label$211:;
	label$210:;
	label$209:;
}

static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* PROC$1 )
{
	label$212:;
	SYMBPROCCHECKOVERRIDDEN( PROC$1, 0 );
	int32 vr$0 = LEXGETTOKEN( 0 );
	if( vr$0 != 257 ) goto label$215;
	{
		goto label$213;
	}
	label$215:;
	label$214:;
	uint8* vr$1 = LEXGETTEXT(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
	FBSTRING* vr$3 = fb_StrUcase2( (FBSTRING*)vr$2, 0 );
	int32 vr$4 = fb_StrCompare( (void*)vr$3, -1, (void*)"OVERRIDE", 9 );
	if( vr$4 != 0 ) goto label$217;
	{
		struct $8FBSYMBOL* vr$5 = SYMBPROCGETOVERRIDDEN( PROC$1 );
		if( vr$5 != (struct $8FBSYMBOL*)0u ) goto label$219;
		{
			ERRREPORT( 223, 0, (uint8*)0u );
		}
		label$219:;
		label$218:;
		LEXSKIPTOKEN( 2048 );
	}
	label$217:;
	label$216:;
	label$213:;
}

static void HCHECKATTRIB( int32* ATTRIB$1, int32 ATTR$1, int32 ERRMSG$1 )
{
	label$226:;
	if( (*ATTRIB$1 & ATTR$1) == 0 ) goto label$229;
	{
		ERRREPORT( ERRMSG$1, -1, (uint8*)0u );
		*ATTRIB$1 = *ATTRIB$1 & ~ATTR$1;
	}
	label$229:;
	label$228:;
	label$227:;
}

static int32 HCHECKOPOVLPARAMS( struct $8FBSYMBOL* PARENT$1, int32 OP$1, struct $8FBSYMBOL* PROC$1 )
{
	int32 TMP$116$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$230:;
	int32 FOUND_MISMATCH$1;
	int32 IS_METHOD$1;
	IS_METHOD$1 = -((*(int32*)((uint8*)PROC$1 + 8) & 2) != 0);
	fb$result$1 = 0;
	int32 MIN_PARAMS$1;
	int32 MAX_PARAMS$1;
	{
		uint32 TMP$113$2;
		TMP$113$2 = *(uint32*)((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31)));
		goto label$233;
		label$234:;
		{
			int32 TMP$114$3;
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$235;
			TMP$114$3 = 0;
			goto label$778;
			label$235:;
			TMP$114$3 = 1;
			label$778:;
			MIN_PARAMS$1 = TMP$114$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$236:;
		{
			MIN_PARAMS$1 = 0;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$237:;
		{
			MIN_PARAMS$1 = 1;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$238:;
		{
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$240;
			{
				MIN_PARAMS$1 = 0;
				MAX_PARAMS$1 = 1;
				if( OP$1 != 26 ) goto label$242;
				{
					MIN_PARAMS$1 = MIN_PARAMS$1 + 1;
					MAX_PARAMS$1 = MAX_PARAMS$1 + 1;
				}
				label$242:;
				label$241:;
			}
			goto label$239;
			label$240:;
			{
				MIN_PARAMS$1 = 2;
				MAX_PARAMS$1 = MIN_PARAMS$1;
			}
			label$239:;
		}
		goto label$232;
		label$243:;
		{
			int32 TMP$115$3;
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$244;
			TMP$115$3 = 1;
			goto label$779;
			label$244:;
			TMP$115$3 = 2;
			label$779:;
			MIN_PARAMS$1 = TMP$115$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$233:;
		static const void* tmp$142[13] = {
			&&label$237,
			&&label$243,
			&&label$234,
			&&label$236,
			&&label$234,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$237,
			&&label$243,
			&&label$238,
		};
		if( (TMP$113$2 - 2u) > 12u ) goto label$243;
		goto *tmp$142[TMP$113$2 - 2u];
		label$232:;
	}
	int32 PARAMS$1;
	PARAMS$1 = (int32)*(int16*)((uint8*)PROC$1 + 68);
	int32 REAL_PARAMS$1;
	if( IS_METHOD$1 == 0 ) goto label$245;
	TMP$116$1 = 1;
	goto label$780;
	label$245:;
	TMP$116$1 = 0;
	label$780:;
	REAL_PARAMS$1 = PARAMS$1 - TMP$116$1;
	if( (-(REAL_PARAMS$1 < MIN_PARAMS$1) | -(REAL_PARAMS$1 > MAX_PARAMS$1)) == 0 ) goto label$247;
	{
		ERRREPORT( 1, -1, (uint8*)0u );
		goto label$231;
	}
	label$247:;
	label$246:;
	if( PARAMS$1 <= 0 ) goto label$249;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
		if( *(int32*)((uint8*)PARAM$2 + 56) != 4 ) goto label$251;
		{
			HPARAMERROR( PROC$1, 1, 143 );
			goto label$231;
		}
		label$251:;
		label$250:;
		if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 64) == (struct $7ASTNODE*)0u ) goto label$253;
		{
			HPARAMERROR( PROC$1, 1, 145 );
			goto label$231;
		}
		label$253:;
		label$252:;
		{
			uint32 TMP$117$3;
			TMP$117$3 = *(uint32*)((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31)));
			goto label$255;
			label$256:;
			{
				{
					int32 TMP$118$5;
					TMP$118$5 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
					if( TMP$118$5 == 20 ) goto label$259;
					label$260:;
					if( TMP$118$5 != 10 ) goto label$258;
					label$259:;
					{
					}
					goto label$257;
					label$258:;
					{
						HPARAMERROR( PROC$1, 1, 137 );
						goto label$231;
					}
					label$261:;
					label$257:;
				}
			}
			goto label$254;
			label$262:;
			{
				if( PARAMS$1 <= 1 ) goto label$264;
				{
					struct $8FBSYMBOL* NXTPARAM$5;
					NXTPARAM$5 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
					if( *(int32*)((uint8*)NXTPARAM$5 + 56) != 4 ) goto label$266;
					{
						HPARAMERROR( PROC$1, 2, 143 );
						goto label$231;
					}
					label$266:;
					label$265:;
					if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$5 + 64) == (struct $7ASTNODE*)0u ) goto label$268;
					{
						HPARAMERROR( PROC$1, 2, 145 );
						goto label$231;
					}
					label$268:;
					label$267:;
					{
						int32 TMP$119$6;
						TMP$119$6 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
						if( TMP$119$6 == 20 ) goto label$271;
						label$272:;
						if( TMP$119$6 != 10 ) goto label$270;
						label$271:;
						{
						}
						goto label$269;
						label$270:;
						{
							{
								int32 TMP$120$8;
								TMP$120$8 = *(int32*)((uint8*)NXTPARAM$5 + 28) & 511;
								if( TMP$120$8 == 20 ) goto label$276;
								label$277:;
								if( TMP$120$8 != 10 ) goto label$275;
								label$276:;
								{
								}
								goto label$274;
								label$275:;
								{
									HPARAMERROR( PROC$1, 2, 137 );
									goto label$231;
								}
								label$278:;
								label$274:;
							}
						}
						label$273:;
						label$269:;
					}
				}
				label$264:;
				label$263:;
			}
			goto label$254;
			label$279:;
			{
				{
					if( OP$1 == 18 ) goto label$282;
					label$283:;
					if( OP$1 != 19 ) goto label$281;
					label$282:;
					{
						int32 TMP$121$6;
						if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$284;
						TMP$121$6 = 24;
						goto label$781;
						label$284:;
						TMP$121$6 = (*(int32*)((uint8*)PARAM$2 + 28) & 511) & 31;
						label$781:;
						if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$121$6 * 28)) != 0 ) goto label$286;
						{
							int32 IS_INTEGER$7;
							IS_INTEGER$7 = -1;
							if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$288;
							{
								IS_INTEGER$7 = 0;
							}
							label$288:;
							label$287:;
							{
								int32 TMP$122$8;
								TMP$122$8 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
								if( TMP$122$8 == 4 ) goto label$291;
								label$292:;
								if( TMP$122$8 != 7 ) goto label$290;
								label$291:;
								{
									IS_INTEGER$7 = 0;
								}
								label$290:;
								label$289:;
							}
							if( IS_INTEGER$7 != 0 ) goto label$294;
							{
								HPARAMERROR( PROC$1, 1, 235 );
								goto label$231;
							}
							label$294:;
							label$293:;
						}
						goto label$285;
						label$286:;
						{
							HPARAMERROR( PROC$1, 1, 235 );
							goto label$231;
						}
						label$285:;
					}
					goto label$280;
					label$281:;
					{
						int32 TMP$123$6;
						if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) == 0 ) goto label$296;
						TMP$123$6 = 24;
						goto label$782;
						label$296:;
						TMP$123$6 = (*(int32*)((uint8*)PARAM$2 + 28) & 511) & 31;
						label$782:;
						if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$123$6 * 28)) != 0 ) goto label$298;
						{
							if( ((*(int32*)((uint8*)PARAM$2 + 28) & 511) & 480) != 0 ) goto label$300;
							{
								HPARAMERROR( PROC$1, 1, 236 );
								goto label$231;
							}
							label$300:;
							label$299:;
						}
						goto label$297;
						label$298:;
						{
							HPARAMERROR( PROC$1, 1, 236 );
							goto label$231;
						}
						label$297:;
					}
					label$295:;
					label$280:;
				}
			}
			goto label$254;
			label$301:;
			{
				{
					uint32 TMP$124$5;
					TMP$124$5 = (uint32)OP$1;
					goto label$303;
					label$304:;
					{
						if( PARAMS$1 <= 1 ) goto label$306;
						{
							struct $8FBSYMBOL* NXTPARAM$7;
							NXTPARAM$7 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
							if( *(int32*)((uint8*)NXTPARAM$7 + 56) != 4 ) goto label$308;
							{
								HPARAMERROR( PROC$1, 2, 143 );
								goto label$231;
							}
							label$308:;
							label$307:;
							if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$7 + 64) == (struct $7ASTNODE*)0u ) goto label$310;
							{
								HPARAMERROR( PROC$1, 2, 145 );
								goto label$231;
							}
							label$310:;
							label$309:;
							{
								int32 TMP$125$8;
								TMP$125$8 = *(int32*)((uint8*)PARAM$2 + 28) & 511;
								if( TMP$125$8 == 20 ) goto label$313;
								label$314:;
								if( TMP$125$8 != 10 ) goto label$312;
								label$313:;
								{
								}
								goto label$311;
								label$312:;
								{
									{
										int32 TMP$126$10;
										TMP$126$10 = *(int32*)((uint8*)NXTPARAM$7 + 28) & 511;
										if( TMP$126$10 == 20 ) goto label$318;
										label$319:;
										if( TMP$126$10 != 10 ) goto label$317;
										label$318:;
										{
										}
										goto label$316;
										label$317:;
										{
											HPARAMERROR( PROC$1, 2, 137 );
											goto label$231;
										}
										label$320:;
										label$316:;
									}
								}
								label$315:;
								label$311:;
							}
						}
						label$306:;
						label$305:;
					}
					goto label$302;
					label$321:;
					{
						if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$323;
						{
							if( PARAMS$1 <= 1 ) goto label$325;
							{
								if( IS_METHOD$1 == 0 ) goto label$327;
								{
									PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 176);
								}
								label$327:;
								label$326:;
								if( (-(PARAM$2 == (struct $8FBSYMBOL*)0u) | -(PARENT$1 == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$329;
								{
									HPARAMERROR( PROC$1, 1, 142 );
									goto label$231;
								}
								label$329:;
								label$328:;
								if( *(int32*)((uint8*)PARAM$2 + 56) != 4 ) goto label$331;
								{
									HPARAMERROR( PROC$1, 1, 143 );
									goto label$231;
								}
								label$331:;
								label$330:;
								if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 64) == (struct $7ASTNODE*)0u ) goto label$333;
								{
									HPARAMERROR( PROC$1, 1, 145 );
									goto label$231;
								}
								label$333:;
								label$332:;
								if( (-((*(int32*)((uint8*)PARAM$2 + 28) & 511) != (*(int32*)((uint8*)PARENT$1 + 28) & 511)) | -(*(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 32) != PARENT$1)) == 0 ) goto label$335;
								{
									HPARAMERROR( PROC$1, 1, 142 );
									goto label$231;
								}
								label$335:;
								label$334:;
							}
							label$325:;
							label$324:;
						}
						label$323:;
						label$322:;
					}
					goto label$302;
					label$336:;
					{
					}
					goto label$302;
					label$303:;
					static const void* tmp$143[27] = {
						&&label$321,
						&&label$321,
						&&label$321,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
					};
					if( (TMP$124$5 - 24u) > 26u ) goto label$336;
					goto *tmp$143[TMP$124$5 - 24u];
					label$302:;
				}
			}
			goto label$254;
			label$255:;
			static const void* tmp$144[12] = {
				&&label$262,
				&&label$256,
				&&label$256,
				&&label$256,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$279,
				&&label$254,
				&&label$301,
			};
			if( (TMP$117$3 - 3u) > 11u ) goto label$254;
			goto *tmp$144[TMP$117$3 - 3u];
			label$254:;
		}
	}
	label$249:;
	label$248:;
	FOUND_MISMATCH$1 = 0;
	{
		$13AST_NODECLASS TMP$127$2;
		TMP$127$2 = *($13AST_NODECLASS*)((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31)));
		if( TMP$127$2 != 5 ) goto label$338;
		label$339:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 32) != PARENT$1 ) goto label$341;
			{
				ERRREPORT( 140, -1, (uint8*)0u );
				goto label$231;
			}
			label$341:;
			label$340:;
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
		}
		goto label$337;
		label$338:;
		if( TMP$127$2 != 4 ) goto label$342;
		label$343:;
		{
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
		}
		goto label$337;
		label$342:;
		if( TMP$127$2 != 2 ) goto label$344;
		label$345:;
		{
			FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
		}
		goto label$337;
		label$344:;
		if( TMP$127$2 != 6 ) goto label$346;
		label$347:;
		{
			{
				if( OP$1 != 22 ) goto label$349;
				label$350:;
				{
					FOUND_MISMATCH$1 = -(((*(int32*)((uint8*)PROC$1 + 28) & 511) & 480) == 0);
				}
				goto label$348;
				label$349:;
				if( OP$1 != 77 ) goto label$351;
				label$352:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 20);
				}
				goto label$348;
				label$351:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
				}
				label$353:;
				label$348:;
			}
		}
		goto label$337;
		label$346:;
		if( TMP$127$2 != 12 ) goto label$354;
		label$355:;
		{
			{
				if( OP$1 == 18 ) goto label$358;
				label$359:;
				if( OP$1 != 19 ) goto label$357;
				label$358:;
				{
					FOUND_MISMATCH$1 = -(((*(int32*)((uint8*)PROC$1 + 28) & 511) & 480) == 0);
				}
				goto label$356;
				label$357:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
				}
				label$360:;
				label$356:;
			}
		}
		goto label$337;
		label$354:;
		if( TMP$127$2 != 3 ) goto label$361;
		label$362:;
		{
			{
				uint32 TMP$128$4;
				TMP$128$4 = (uint32)OP$1;
				goto label$364;
				label$365:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 8);
				}
				goto label$363;
				label$366:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
				}
				goto label$363;
				label$367:;
				{
					if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$369;
					{
						FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
					}
					goto label$368;
					label$369:;
					{
						FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
					}
					label$368:;
				}
				goto label$363;
				label$364:;
				static const void* tmp$145[28] = {
					&&label$366,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
				};
				if( (TMP$128$4 - 23u) > 27u ) goto label$367;
				goto *tmp$145[TMP$128$4 - 23u];
				label$363:;
			}
		}
		goto label$337;
		label$361:;
		if( TMP$127$2 != 14 ) goto label$370;
		label$371:;
		{
			if( (*(int32*)(((int32)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (4 & 31))) + 4) & 1) == 0 ) goto label$373;
			{
				if( OP$1 != 26 ) goto label$375;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 8);
				}
				goto label$374;
				label$375:;
				{
					FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) != 0);
				}
				label$374:;
			}
			goto label$372;
			label$373:;
			{
				FOUND_MISMATCH$1 = -((*(int32*)((uint8*)PROC$1 + 28) & 511) == 0);
			}
			label$372:;
		}
		label$370:;
		label$337:;
	}
	if( FOUND_MISMATCH$1 == 0 ) goto label$377;
	{
		ERRREPORT( 141, -1, (uint8*)0u );
		goto label$231;
	}
	label$377:;
	label$376:;
	fb$result$1 = -1;
	label$231:;
	return fb$result$1;
}

static int32 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1, int32 OPTIONS$1 )
{
	int32 TMP$129$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$378:;
	fb$result$1 = 0;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	if( (OPTIONS$1 & 1) == 0 ) goto label$381;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	label$381:;
	label$380:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0u ) goto label$383;
	{
		goto label$379;
	}
	label$383:;
	label$382:;
	if( (*(int32*)((uint8*)PARAM$1 + 28) & 511) == 20 ) goto label$385;
	{
		goto label$379;
	}
	label$385:;
	label$384:;
	if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 32) == PARENT$1 ) goto label$387;
	{
		goto label$379;
	}
	label$387:;
	label$386:;
	if( *(int32*)((uint8*)PARAM$1 + 56) == 1 ) goto label$389;
	{
		goto label$379;
	}
	label$389:;
	label$388:;
	if( ((*(int32*)((uint8*)PARAM$1 + 28) & 511) & 480) == 0 ) goto label$390;
	TMP$129$1 = 24;
	goto label$783;
	label$390:;
	TMP$129$1 = (*(int32*)((uint8*)PARAM$1 + 28) & 511) & 31;
	label$783:;
	if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$129$1 * 28)) != 0 ) goto label$392;
	{
		if( ((*(int32*)((uint8*)PARAM$1 + 28) & 511) & 480) == 0 ) goto label$394;
		{
			goto label$379;
		}
		label$394:;
		label$393:;
	}
	label$392:;
	label$391:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	label$395:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$396;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) != (struct $7ASTNODE*)0u ) goto label$398;
		{
			goto label$379;
		}
		label$398:;
		label$397:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$395;
	label$396:;
	fb$result$1 = -1;
	label$379:;
	return fb$result$1;
}

static void HCHECKPROPPARAMS( struct $8FBSYMBOL* PROC$1, int32 IS_GET$1 )
{
	label$399:;
	int32 MIN_PARAMS$1;
	int32 MAX_PARAMS$1;
	int32 I$1;
	struct $8FBSYMBOL* PARAM$1;
	if( IS_GET$1 == 0 ) goto label$402;
	{
		MIN_PARAMS$1 = 0;
		MAX_PARAMS$1 = 1;
	}
	goto label$401;
	label$402:;
	{
		MIN_PARAMS$1 = 1;
		MAX_PARAMS$1 = 2;
	}
	label$401:;
	if( (-((int32)*(int16*)((uint8*)PROC$1 + 68) < (MIN_PARAMS$1 + 1)) | -((int32)*(int16*)((uint8*)PROC$1 + 68) > (MAX_PARAMS$1 + 1))) == 0 ) goto label$404;
	{
		$9FB_ERRMSG TMP$130$2;
		if( IS_GET$1 == 0 ) goto label$405;
		TMP$130$2 = 190;
		goto label$784;
		label$405:;
		TMP$130$2 = 191;
		label$784:;
		ERRREPORT( TMP$130$2, -1, (uint8*)0u );
	}
	label$404:;
	label$403:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 76);
	I$1 = 0;
	label$406:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$407;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 64) == (struct $7ASTNODE*)0u ) goto label$409;
		{
			HPARAMERROR( PROC$1, I$1 + 1, 145 );
		}
		label$409:;
		label$408:;
		I$1 = I$1 + 1;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 176);
	}
	goto label$406;
	label$407:;
	label$400:;
}

static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL* PARENT$1, int32 IS_INDEXED$1, int32 IS_GET$1 )
{
	label$410:;
	if( IS_INDEXED$1 == 0 ) goto label$413;
	{
		if( IS_GET$1 != 0 ) goto label$415;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 1024;
		}
		goto label$414;
		label$415:;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 512;
		}
		label$414:;
	}
	goto label$412;
	label$413:;
	{
		if( IS_GET$1 != 0 ) goto label$417;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 256;
		}
		goto label$416;
		label$417:;
		{
			*(int32*)((uint8*)PARENT$1 + 120) = *(int32*)((uint8*)PARENT$1 + 120) | 128;
		}
		label$416:;
	}
	label$412:;
	label$411:;
}
