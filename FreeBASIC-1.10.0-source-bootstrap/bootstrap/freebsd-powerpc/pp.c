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
struct $7SYMBKWD {
	uint8* NAME;
	int32 ID;
	struct $8FBSYMBOL* SYM;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBKWD ) == 12 );
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
typedef int32 $7FB_LANG;
void* memset( void*, int32, uint32 );
void fb_PrintString( int32, FBSTRING*, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__pp( void ) __attribute__(( constructor ));
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRHIDEFURTHERERRORS( void );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int32, int32, uint8* );
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
typedef int32 $16FB_RESTART_FLAGS;
void FBRESTARTBEGINREQUEST( $16FB_RESTART_FLAGS );
void FBRESTARTACCEPTREQUEST( $16FB_RESTART_FLAGS );
int32 FBGETOPTION( int32 );
void FBCHANGEOPTION( int32, int32 );
void FBINCLUDEFILE( uint8*, int32 );
void FBOVERRIDEFILENAME( uint8* );
FBSTRING* FBGETLANGNAME( $7FB_LANG );
$7FB_LANG FBGETLANGID( uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWLIT( uint8* );
struct $8FBSYMBOL* SYMBADDKEYWORD( uint8*, int32, int32, struct $8FBHASHTB*, int32, $13FB_SYMBATTRIB );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
FBSTRING* SYMBTYPETOSTR( int32, struct $8FBSYMBOL*, int64, int32 );
void FBADDLIB( uint8* );
void FBADDLIBPATH( uint8* );
void DZSTRRESET( struct $8DZSTRING* );
void DZSTRCONCATASSIGN( struct $8DZSTRING*, uint8* );
void DZSTRCONCATASSIGNW( struct $8DZSTRING*, uint32* );
void DWSTRALLOCATE( struct $8DWSTRING*, int32 );
void DWSTRCONCATASSIGN( struct $8DWSTRING*, uint32* );
void DWSTRCONCATASSIGNA( struct $8DWSTRING*, uint8* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXEATTOKEN( uint8*, $8LEXCHECK );
void LEXPPONLYEMITTOKEN( void );
void LEXPPONLYEMITTEXT( FBSTRING* );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCHIDORKW( uint8*, $8LEXCHECK );
int32 CCOMMENT( $8LEXCHECK );
void CTYPEOF( int32*, struct $8FBSYMBOL**, int64*, int32*, struct $8FBSYMBOL** );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
void PPPARSE( void );
void PPDEFINEINIT( void );
void PPDEFINEEND( void );
void PPDEFINE( int32 );
void PPPRAGMAINIT( void );
void PPPRAGMAEND( void );
void PPPRAGMA( void );
FBSTRING* PPTYPEOF( void );
void PPCONDINIT( void );
void PPCONDEND( void );
void PPCONDIF( void );
void PPCONDELSE( void );
void PPCONDENDIF( void );
void PPASSERT( void );
uint8* PPREADLITERAL( int32 );
static void PPINCLUDE( void );
static void PPINCLIB( void );
static void PPLIBPATH( void );
static void PPLINE( void );
static void PPLANG( void );
static void PPCMDLINE( void );
static void HRTRIMMACROTEXT( struct $8DZSTRING* );
static void HRTRIMMACROTEXTW( struct $8DWSTRING* );
void FBCPARSEARGSFROMSTRING( uint8*, int32, int32 );
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
typedef int32 $8FB_TOKEN;
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
struct $6PP_CTX {
	struct $8FBSYMBOL KWDNS;
	struct $5TLIST ARGTBLIST;
	int32 LEVEL;
	int32 SKIPPING;
	int32 INVOKING;
};
__FB_STATIC_ASSERT( sizeof( struct $6PP_CTX ) == 232 );
extern struct $6PP_CTX PP$;
static struct $7SYMBKWD KWDTB$[24] = { { (uint8*)"IF", 266 }, { (uint8*)"IFDEF", 267 }, { (uint8*)"IFNDEF", 268 }, { (uint8*)"ELSE", 269 }, { (uint8*)"ELSEIF", 270 }, { (uint8*)"ENDIF", 271 }, { (uint8*)"DEFINE", 272 }, { (uint8*)"UNDEF", 273 }, { (uint8*)"MACRO", 274 }, { (uint8*)"ENDMACRO", 275 }, { (uint8*)"INCLUDE", 276 }, { (uint8*)"LIBPATH", 278 }, { (uint8*)"INCLIB", 277 }, { (uint8*)"PRAGMA", 279 }, { (uint8*)"PRINT", 280 }, { (uint8*)"ERROR", 281 }, { (uint8*)"LINE", 282 }, { (uint8*)"LANG", 283 }, { (uint8*)"ASSERT", 284 }, { (uint8*)"CMDLINE", 285 }, { (uint8*)"DUMP", 286 }, { (uint8*)"ODUMP", 287 }, { (uint8*)"LOOKUP", 288 }, { (uint8*)0u } };
struct $6PP_CTX PP$;

void PPINIT( void )
{
	label$10:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	*($12FB_SYMBCLASS*)&PP$ = 8;
	*(uint16*)((uint8*)&PP$ + 36) = (uint16)0u;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 56) = (struct $8FBSYMBOL*)&PP$;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 60) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 64) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&PP$ + 68) = (struct $8FBSYMBOL*)&PP$;
	*(struct $8FBHASHTB**)((uint8*)&PP$ + 84) = (struct $8FBHASHTB*)0u;
	*(struct $8FBHASHTB**)((uint8*)&PP$ + 88) = (struct $8FBHASHTB*)0u;
	{
		HASHINIT( (struct $5THASH*)((uint8*)&PP$ + 72), 24, 0 );
	}
	goto label$12;
	label$13:;
	{
		memset( (void*)((uint8*)&PP$ + 72), 0, 12u );
	}
	label$12:;
	void* vr$6 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98660) );
	*(struct $13FBNAMESPC_EXT**)((uint8*)&PP$ + 92) = (struct $13FBNAMESPC_EXT*)vr$6;
	{
		I$1 = 0;
		label$17:;
		{
			if( *(uint8**)((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) != (uint8*)0u ) goto label$19;
			{
				goto label$16;
			}
			label$19:;
			label$18:;
			struct $8FBSYMBOL* vr$11 = SYMBADDKEYWORD( *(uint8**)((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)), *(int32*)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 4), 1, (struct $8FBHASHTB*)((uint8*)&PP$ + 68), -2147483648u, 0 );
			*(struct $8FBSYMBOL**)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 8) = vr$11;
			if( *(struct $8FBSYMBOL**)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 8) != (struct $8FBSYMBOL*)0u ) goto label$21;
			{
				goto label$11;
			}
			label$21:;
			label$20:;
		}
		label$15:;
		I$1 = I$1 + 1;
		label$14:;
		if( I$1 <= 23 ) goto label$17;
		label$16:;
	}
	*(int32*)((uint8*)&PP$ + 220) = 0;
	PPDEFINEINIT(  );
	PPCONDINIT(  );
	PPPRAGMAINIT(  );
	label$11:;
}

void PPEND( void )
{
	label$22:;
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	PPPRAGMAEND(  );
	PPCONDEND(  );
	PPDEFINEEND(  );
	{
		I$1 = 0;
		label$27:;
		{
			if( *(struct $8FBSYMBOL**)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 8) != (struct $8FBSYMBOL*)0u ) goto label$29;
			{
				goto label$26;
			}
			label$29:;
			label$28:;
			SYMBFREESYMBOL( *(struct $8FBSYMBOL**)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 8) );
			*(struct $8FBSYMBOL**)(((int32)(struct $7SYMBKWD*)KWDTB$ + (I$1 * 12)) + 8) = (struct $8FBSYMBOL*)0u;
		}
		label$25:;
		I$1 = I$1 + 1;
		label$24:;
		if( I$1 <= 23 ) goto label$27;
		label$26:;
	}
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98660), *(void**)((uint8*)&PP$ + 92) );
	HASHEND( (struct $5THASH*)((uint8*)&PP$ + 72) );
	label$23:;
}

void PPCHECK( void )
{
	label$30:;
	if( *(int32*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) == 35 ) goto label$33;
	{
		goto label$31;
	}
	label$33:;
	label$32:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) == 0 ) goto label$35;
	{
		goto label$31;
	}
	label$35:;
	label$34:;
	if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16572) == 257 ) goto label$37;
	{
		if( *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16572) == -1 ) goto label$39;
		{
			goto label$31;
		}
		label$39:;
		label$38:;
	}
	label$37:;
	label$36:;
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + 1;
	*(struct $8FBSYMBOL**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16584) = (struct $8FBSYMBOL*)&PP$;
	LEXSKIPTOKEN( 256 );
	PPPARSE(  );
	*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) = *(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16576) + -1;
	label$31:;
}

void PPPARSE( void )
{
	label$40:;
	{
		uint32 TMP$116$2;
		int32 vr$0 = LEXGETTOKEN( 256 );
		TMP$116$2 = (uint32)vr$0;
		goto label$43;
		label$44:;
		{
			LEXSKIPTOKEN( 2050 );
			PPDEFINE( 0 );
		}
		goto label$42;
		label$45:;
		{
			LEXSKIPTOKEN( 2050 );
			PPDEFINE( -1 );
		}
		goto label$42;
		label$46:;
		{
			struct $10FBSYMCHAIN* CHAIN_$3;
			struct $8FBSYMBOL* BASE_PARENT$3;
			LEXSKIPTOKEN( 2050 );
			struct $10FBSYMCHAIN* vr$2 = CIDENTIFIER( &BASE_PARENT$3, 0 );
			CHAIN_$3 = vr$2;
			if( CHAIN_$3 == (struct $10FBSYMCHAIN*)0u ) goto label$48;
			{
				struct $8FBSYMBOL* SYM$4;
				SYM$4 = *(struct $8FBSYMBOL**)CHAIN_$3;
				if( *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$4 + 144) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$50;
				{
					ERRREPORT( 123, 0, (uint8*)0u );
				}
				goto label$49;
				label$50:;
				{
					if( (*(int32*)((uint8*)SYM$4 + 12) & 8388608) == 0 ) goto label$52;
					{
						ERRREPORT( 177, 0, (uint8*)0u );
					}
					goto label$51;
					label$52:;
					{
						if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$54;
						{
							if( *(int32*)SYM$4 == 5 ) goto label$56;
							{
								FBSTRING TMP$118$8;
								__builtin_memset( &TMP$118$8, 0, 12 );
								fb_StrAssign( (void*)&TMP$118$8, -1, (void*)"#undef", 7, 0 );
								LEXPPONLYEMITTEXT( &TMP$118$8 );
								fb_StrDelete( (FBSTRING*)&TMP$118$8 );
								LEXPPONLYEMITTOKEN(  );
							}
							label$56:;
							label$55:;
						}
						label$54:;
						label$53:;
						SYMBDELFROMHASH( SYM$4 );
					}
					label$51:;
				}
				label$49:;
			}
			label$48:;
			label$47:;
			LEXSKIPTOKEN( 0 );
		}
		goto label$42;
		label$57:;
		{
			PPCONDIF(  );
		}
		goto label$42;
		label$58:;
		{
			PPCONDELSE(  );
		}
		goto label$42;
		label$59:;
		{
			PPCONDENDIF(  );
		}
		goto label$42;
		label$60:;
		{
			LEXSKIPTOKEN( 2048 );
			PPASSERT(  );
		}
		goto label$42;
		label$61:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$42;
		label$62:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$42;
		label$63:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$42;
		label$64:;
		{
			LEXSKIPTOKEN( 2048 );
			uint8* vr$14 = PPREADLITERAL( 0 );
			FBSTRING* vr$15 = fb_StrAllocTempDescZ( (uint8*)vr$14 );
			fb_PrintString( 0, (FBSTRING*)vr$15, 1 );
		}
		goto label$42;
		label$65:;
		{
			LEXSKIPTOKEN( 2048 );
			uint8* vr$16 = PPREADLITERAL( 0 );
			ERRREPORTEX( -1, (uint8*)vr$16, 0, 1, (uint8*)0u );
			*(int32*)((uint8*)&PARSER$ + 28) = *(int32*)((uint8*)&PARSER$ + 28) + 1;
		}
		goto label$42;
		label$66:;
		{
			LEXSKIPTOKEN( 2048 );
			PPINCLUDE(  );
		}
		goto label$42;
		label$67:;
		{
			LEXSKIPTOKEN( 2048 );
			PPINCLIB(  );
		}
		goto label$42;
		label$68:;
		{
			LEXSKIPTOKEN( 2048 );
			PPLIBPATH(  );
		}
		goto label$42;
		label$69:;
		{
			LEXSKIPTOKEN( 2048 );
			PPPRAGMA(  );
		}
		goto label$42;
		label$70:;
		{
			LEXSKIPTOKEN( 2048 );
			PPLINE(  );
		}
		goto label$42;
		label$71:;
		{
			LEXSKIPTOKEN( 2048 );
			PPLANG(  );
		}
		goto label$42;
		label$72:;
		{
			LEXSKIPTOKEN( 2048 );
			PPCMDLINE(  );
		}
		goto label$42;
		label$73:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		goto label$42;
		label$43:;
		static const void* tmp$119[23] = {
			&&label$57,
			&&label$57,
			&&label$57,
			&&label$58,
			&&label$58,
			&&label$59,
			&&label$44,
			&&label$46,
			&&label$45,
			&&label$73,
			&&label$66,
			&&label$67,
			&&label$68,
			&&label$69,
			&&label$64,
			&&label$65,
			&&label$70,
			&&label$71,
			&&label$60,
			&&label$72,
			&&label$61,
			&&label$62,
			&&label$63,
		};
		if( (TMP$116$2 - 266u) > 22u ) goto label$73;
		goto *tmp$119[TMP$116$2 - 266u];
		label$42:;
	}
	CCOMMENT( 0 );
	if( *(int32*)((uint8*)&ENV$ + 148) == 0 ) goto label$75;
	{
		if( *(int32*)((uint8*)&ENV$ + 900) != 0 ) goto label$77;
		{
			struct $7ASTNODE* vr$19 = ASTNEWLIT( *(uint8**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400) );
			ASTADD( vr$19 );
			DZSTRRESET( (struct $8DZSTRING*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 49400) );
		}
		label$77:;
		label$76:;
	}
	label$75:;
	label$74:;
	int32 vr$22 = LEXGETTOKEN( 0 );
	if( vr$22 == 257 ) goto label$79;
	{
		int32 vr$23 = LEXGETTOKEN( 0 );
		if( vr$23 == 256 ) goto label$81;
		{
			ERRREPORT( 3, 0, (uint8*)0u );
			HSKIPUNTIL( 257, 0, 0, 0 );
		}
		label$81:;
		label$80:;
	}
	label$79:;
	label$78:;
	label$41:;
}

uint8* PPREADLITERAL( int32 ISMULTILINE$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$123:;
	static struct $8DZSTRING TEXT$1;
	int32 NESTEDCNT$1;
	NESTEDCNT$1 = 0;
	DZSTRRESET( &TEXT$1 );
	label$125:;
	{
		{
			uint32 TMP$131$3;
			int32 vr$1 = LEXGETTOKEN( 62 );
			TMP$131$3 = (uint32)vr$1;
			goto label$129;
			label$130:;
			{
				if( ISMULTILINE$1 == 0 ) goto label$132;
				{
					ERRREPORT( 134, 0, (uint8*)0u );
				}
				label$132:;
				label$131:;
				goto label$126;
			}
			goto label$128;
			label$133:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$135;
				{
					goto label$126;
				}
				label$135:;
				label$134:;
				if( *(int32*)((uint8*)&TEXT$1 + 4) <= 0 ) goto label$137;
				{
					DZSTRCONCATASSIGN( &TEXT$1, (uint8*)"\x0A" );
				}
				label$137:;
				label$136:;
				LEXSKIPTOKEN( 62 );
				goto label$127;
			}
			goto label$128;
			label$138:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$140;
				{
					goto label$126;
				}
				label$140:;
				label$139:;
				label$141:;
				{
					LEXSKIPTOKEN( 63 );
					{
						int32 TMP$133$6;
						int32 vr$2 = LEXGETTOKEN( 62 );
						TMP$133$6 = vr$2;
						if( TMP$133$6 == 257 ) goto label$146;
						label$147:;
						if( TMP$133$6 != 256 ) goto label$145;
						label$146:;
						{
							goto label$142;
						}
						label$145:;
						label$144:;
					}
				}
				label$143:;
				goto label$141;
				label$142:;
				goto label$127;
			}
			goto label$128;
			label$148:;
			{
				{
					int32 TMP$134$5;
					int32 vr$3 = LEXGETLOOKAHEAD( 1, 314 );
					TMP$134$5 = vr$3;
					if( TMP$134$5 != 35 ) goto label$150;
					label$151:;
					{
						LEXSKIPTOKEN( 62 );
						LEXSKIPTOKEN( 63 );
						uint8* vr$4 = LEXGETTEXT(  );
						int32 vr$5 = fb_StrCompare( (void*)vr$4, 0, (void*)"_", 2 );
						if( vr$5 == 0 ) goto label$153;
						{
							DZSTRCONCATASSIGN( &TEXT$1, (uint8*)"##" );
						}
						label$153:;
						label$152:;
					}
					goto label$149;
					label$150:;
					if( TMP$134$5 != 274 ) goto label$154;
					label$155:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$157;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1;
						}
						label$157:;
						label$156:;
					}
					goto label$149;
					label$154:;
					if( TMP$134$5 != 275 ) goto label$158;
					label$159:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$161;
						{
							if( NESTEDCNT$1 != 0 ) goto label$163;
							{
								LEXSKIPTOKEN( 62 );
								LEXSKIPTOKEN( 0 );
								HRTRIMMACROTEXT( &TEXT$1 );
								goto label$126;
							}
							label$163:;
							label$162:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1;
						}
						label$161:;
						label$160:;
					}
					label$158:;
					label$149:;
				}
			}
			goto label$128;
			label$164:;
			{
				if( *(int32*)((uint8*)&TEXT$1 + 4) <= 0 ) goto label$166;
				{
					DZSTRCONCATASSIGN( &TEXT$1, (uint8*)" " );
				}
				label$166:;
				label$165:;
				LEXSKIPTOKEN( 62 );
				goto label$127;
			}
			goto label$128;
			label$167:;
			{
				FBSTRING TMP$138$4;
				__builtin_memset( &TMP$138$4, 0, 12 );
				FBSTRING* vr$9 = PPTYPEOF(  );
				fb_StrAssign( (void*)&TMP$138$4, -1, (void*)vr$9, -1, 0 );
				DZSTRCONCATASSIGN( &TEXT$1, (uint8*)*(uint8**)&TMP$138$4 );
				fb_StrDelete( (FBSTRING*)&TMP$138$4 );
				goto label$126;
			}
			goto label$128;
			label$129:;
			static const void* tmp$139[369] = {
				&&label$164,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$164,
				&&label$128,
				&&label$128,
				&&label$148,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$130,
				&&label$133,
				&&label$128,
				&&label$138,
				&&label$138,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$128,
				&&label$167,
			};
			if( (TMP$131$3 - 9u) > 368u ) goto label$128;
			goto *tmp$139[TMP$131$3 - 9u];
			label$128:;
		}
		if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) == 7 ) goto label$169;
		{
			uint8* vr$14 = LEXGETTEXT(  );
			DZSTRCONCATASSIGN( &TEXT$1, (uint8*)vr$14 );
		}
		goto label$168;
		label$169:;
		{
			DZSTRCONCATASSIGNW( &TEXT$1, (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12) );
		}
		label$168:;
		LEXSKIPTOKEN( 62 );
	}
	label$127:;
	goto label$125;
	label$126:;
	fb$result$1 = *(uint8**)&TEXT$1;
	label$124:;
	return fb$result$1;
}

uint32* PPREADLITERALW( int32 ISMULTILINE$1 )
{
	uint32* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$178:;
	static struct $8DWSTRING TEXT$1;
	int32 NESTEDCNT$1;
	NESTEDCNT$1 = 0;
	DWSTRALLOCATE( &TEXT$1, 0 );
	label$180:;
	{
		{
			uint32 TMP$141$3;
			int32 vr$1 = LEXGETTOKEN( 62 );
			TMP$141$3 = (uint32)vr$1;
			goto label$184;
			label$185:;
			{
				if( ISMULTILINE$1 == 0 ) goto label$187;
				{
					ERRREPORT( 134, 0, (uint8*)0u );
				}
				label$187:;
				label$186:;
				goto label$181;
			}
			goto label$183;
			label$188:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$190;
				{
					goto label$181;
				}
				label$190:;
				label$189:;
				if( *(int32*)((uint8*)&TEXT$1 + 4) <= 0 ) goto label$192;
				{
					DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L"\x0000000A" );
				}
				label$192:;
				label$191:;
				LEXSKIPTOKEN( 62 );
				goto label$182;
			}
			goto label$183;
			label$193:;
			{
				if( ISMULTILINE$1 != 0 ) goto label$195;
				{
					goto label$181;
				}
				label$195:;
				label$194:;
				label$196:;
				{
					LEXSKIPTOKEN( 63 );
					{
						int32 TMP$143$6;
						int32 vr$2 = LEXGETTOKEN( 62 );
						TMP$143$6 = vr$2;
						if( TMP$143$6 == 257 ) goto label$201;
						label$202:;
						if( TMP$143$6 != 256 ) goto label$200;
						label$201:;
						{
							goto label$197;
						}
						label$200:;
						label$199:;
					}
				}
				label$198:;
				goto label$196;
				label$197:;
				goto label$182;
			}
			goto label$183;
			label$203:;
			{
				{
					int32 TMP$144$5;
					int32 vr$3 = LEXGETLOOKAHEAD( 1, 314 );
					TMP$144$5 = vr$3;
					if( TMP$144$5 != 35 ) goto label$205;
					label$206:;
					{
						LEXSKIPTOKEN( 62 );
						LEXSKIPTOKEN( 63 );
						uint8* vr$4 = LEXGETTEXT(  );
						int32 vr$5 = fb_StrCompare( (void*)vr$4, 0, (void*)"_", 2 );
						if( vr$5 == 0 ) goto label$208;
						{
							DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)"##" );
						}
						label$208:;
						label$207:;
					}
					goto label$204;
					label$205:;
					if( TMP$144$5 != 274 ) goto label$209;
					label$210:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$212;
						{
							NESTEDCNT$1 = NESTEDCNT$1 + 1;
						}
						label$212:;
						label$211:;
					}
					goto label$204;
					label$209:;
					if( TMP$144$5 != 275 ) goto label$213;
					label$214:;
					{
						if( ISMULTILINE$1 == 0 ) goto label$216;
						{
							if( NESTEDCNT$1 != 0 ) goto label$218;
							{
								LEXSKIPTOKEN( 62 );
								LEXSKIPTOKEN( 0 );
								HRTRIMMACROTEXTW( &TEXT$1 );
								goto label$181;
							}
							label$218:;
							label$217:;
							NESTEDCNT$1 = NESTEDCNT$1 + -1;
						}
						label$216:;
						label$215:;
					}
					label$213:;
					label$204:;
				}
			}
			goto label$183;
			label$219:;
			{
				if( *(int32*)((uint8*)&TEXT$1 + 4) <= 0 ) goto label$221;
				{
					DWSTRCONCATASSIGN( &TEXT$1, (uint32*)L" " );
				}
				label$221:;
				label$220:;
				LEXSKIPTOKEN( 62 );
				goto label$182;
			}
			goto label$183;
			label$222:;
			{
				FBSTRING TMP$146$4;
				__builtin_memset( &TMP$146$4, 0, 12 );
				FBSTRING* vr$9 = PPTYPEOF(  );
				fb_StrAssign( (void*)&TMP$146$4, -1, (void*)vr$9, -1, 0 );
				DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)*(uint8**)&TMP$146$4 );
				fb_StrDelete( (FBSTRING*)&TMP$146$4 );
				goto label$181;
			}
			goto label$183;
			label$184:;
			static const void* tmp$147[369] = {
				&&label$219,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$219,
				&&label$183,
				&&label$183,
				&&label$203,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$185,
				&&label$188,
				&&label$183,
				&&label$193,
				&&label$193,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$183,
				&&label$222,
			};
			if( (TMP$141$3 - 9u) > 368u ) goto label$183;
			goto *tmp$147[TMP$141$3 - 9u];
			label$183:;
		}
		if( *(int32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 8) != 7 ) goto label$224;
		{
			DWSTRCONCATASSIGN( &TEXT$1, (uint32*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 12) );
		}
		goto label$223;
		label$224:;
		{
			uint8* vr$17 = LEXGETTEXT(  );
			DWSTRCONCATASSIGNA( &TEXT$1, (uint8*)vr$17 );
		}
		label$223:;
		LEXSKIPTOKEN( 62 );
	}
	label$182:;
	goto label$180;
	label$181:;
	fb$result$1 = *(uint32**)&TEXT$1;
	label$179:;
	return fb$result$1;
}

FBSTRING* PPTYPEOF( void )
{
	struct $8FBSYMBOL* TMP$148$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$225:;
	LEXSKIPTOKEN( 2048 );
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 == 40 ) goto label$228;
	{
		ERRREPORT( 6, 0, (uint8*)0u );
	}
	goto label$227;
	label$228:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$227:;
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	int32 IS_FIXLENSTR$1;
	__builtin_memset( &IS_FIXLENSTR$1, 0, 4 );
	int64 LGT$1;
	__builtin_memset( &LGT$1, 0, 8 );
	struct $8FBSYMBOL* SUBTYPE$1;
	__builtin_memset( &SUBTYPE$1, 0, 4 );
	TMP$148$1 = (struct $8FBSYMBOL*)0u;
	CTYPEOF( &DTYPE$1, &SUBTYPE$1, &LGT$1, &IS_FIXLENSTR$1, &TMP$148$1 );
	FBSTRING* vr$11 = SYMBTYPETOSTR( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1 );
	FBSTRING* vr$12 = fb_StrUcase2( (FBSTRING*)vr$11, 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$12, -1, 0 );
	int32 vr$14 = LEXGETTOKEN( 0 );
	if( vr$14 == 41 ) goto label$230;
	{
		ERRREPORT( 7, 0, (uint8*)0u );
		HSKIPUNTIL( 41, 0, 0, 0 );
	}
	goto label$229;
	label$230:;
	{
		LEXSKIPTOKEN( 0 );
	}
	label$229:;
	label$226:;
	FBSTRING* vr$16 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$16;
}

__attribute__(( constructor )) static void fb_ctor__pp( void )
{
	label$0:;
	label$1:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1, (void*)__FB_RHS__$1, -1, 0 );
	*(int32*)((uint8*)THIS$1 + 12) = *(int32*)((uint8*)__FB_RHS__$1 + 12);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 16) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 16);
	label$5:;
}

static void PPINCLUDE( void )
{
	label$82:;
	static uint8 INCFILE$1[261];
	int32 ISONCE$1;
	int32 vr$0 = HMATCHIDORKW( (uint8*)"ONCE", 2048 );
	ISONCE$1 = vr$0;
	int32 vr$1 = LEXGETCLASS( 0 );
	if( vr$1 == 4 ) goto label$85;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$83;
	}
	label$85:;
	label$84:;
	LEXEATTOKEN( (uint8*)INCFILE$1, 0 );
	FBINCLUDEFILE( (uint8*)INCFILE$1, ISONCE$1 );
	label$83:;
}

static void PPINCLIB( void )
{
	label$86:;
	int32 vr$0 = LEXGETCLASS( 0 );
	if( vr$0 == 4 ) goto label$89;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$87;
	}
	label$89:;
	label$88:;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$91;
	{
		FBSTRING TMP$122$2;
		__builtin_memset( &TMP$122$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$122$2, -1, (void*)"#inclib", 8, 0 );
		LEXPPONLYEMITTEXT( &TMP$122$2 );
		fb_StrDelete( (FBSTRING*)&TMP$122$2 );
		LEXPPONLYEMITTOKEN(  );
	}
	label$91:;
	label$90:;
	uint8* vr$5 = LEXGETTEXT(  );
	FBADDLIB( vr$5 );
	LEXSKIPTOKEN( 0 );
	label$87:;
}

static void PPLIBPATH( void )
{
	label$92:;
	int32 vr$0 = LEXGETCLASS( 0 );
	if( vr$0 == 4 ) goto label$95;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$93;
	}
	label$95:;
	label$94:;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$97;
	{
		FBSTRING TMP$124$2;
		__builtin_memset( &TMP$124$2, 0, 12 );
		fb_StrAssign( (void*)&TMP$124$2, -1, (void*)"#libpath", 9, 0 );
		LEXPPONLYEMITTEXT( &TMP$124$2 );
		fb_StrDelete( (FBSTRING*)&TMP$124$2 );
		LEXPPONLYEMITTOKEN(  );
	}
	label$97:;
	label$96:;
	uint8* vr$5 = LEXGETTEXT(  );
	FBADDLIBPATH( vr$5 );
	LEXSKIPTOKEN( 0 );
	label$93:;
}

static void PPLINE( void )
{
	label$98:;
	int32 vr$0 = LEXGETCLASS( 0 );
	if( vr$0 == 3 ) goto label$101;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		HSKIPUNTIL( 257, 0, 0, 0 );
	}
	goto label$100;
	label$101:;
	{
		uint8* vr$1 = LEXGETTEXT(  );
		FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
		int32 vr$3 = fb_VALINT( (FBSTRING*)vr$2 );
		*(int32*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16568) = vr$3;
		LEXSKIPTOKEN( 0 );
		int32 vr$5 = LEXGETCLASS( 0 );
		if( vr$5 != 4 ) goto label$103;
		{
			uint8* vr$6 = LEXGETTEXT(  );
			FBOVERRIDEFILENAME( vr$6 );
			LEXSKIPTOKEN( 0 );
		}
		label$103:;
		label$102:;
	}
	label$100:;
	label$99:;
}

static void PPLANG( void )
{
	label$104:;
	$7FB_LANG ID$1;
	int32 vr$0 = LEXGETCLASS( 0 );
	if( vr$0 == 4 ) goto label$107;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$105;
	}
	label$107:;
	label$106:;
	uint8* vr$1 = LEXGETTEXT(  );
	$7FB_LANG vr$2 = FBGETLANGID( vr$1 );
	ID$1 = vr$2;
	if( ID$1 != -1 ) goto label$109;
	{
		ERRREPORT( 279, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$105;
	}
	label$109:;
	label$108:;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$111;
	{
		FBSTRING TMP$127$2;
		FBSTRING TMP$128$2;
		FBSTRING TMP$129$2;
		__builtin_memset( &TMP$129$2, 0, 12 );
		FBSTRING* vr$4 = FBGETLANGNAME( ID$1 );
		__builtin_memset( &TMP$127$2, 0, 12 );
		FBSTRING* vr$7 = fb_StrConcat( &TMP$127$2, (void*)"#lang \x22", 8, (void*)vr$4, -1 );
		__builtin_memset( &TMP$128$2, 0, 12 );
		FBSTRING* vr$10 = fb_StrConcat( &TMP$128$2, (void*)vr$7, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$129$2, -1, (void*)vr$10, -1, 0 );
		LEXPPONLYEMITTEXT( &TMP$129$2 );
		fb_StrDelete( (FBSTRING*)&TMP$129$2 );
	}
	label$111:;
	label$110:;
	FBCHANGEOPTION( 10, ID$1 );
	LEXSKIPTOKEN( 0 );
	label$105:;
}

static void HRTRIMMACROTEXT( struct $8DZSTRING* TEXT$1 )
{
	label$112:;
	static uint8* P$1;
	if( TEXT$1 != (struct $8DZSTRING*)0u ) goto label$115;
	{
		goto label$113;
	}
	goto label$114;
	label$115:;
	if( *(uint8**)TEXT$1 != (uint8*)0u ) goto label$116;
	{
		goto label$113;
	}
	label$116:;
	label$114:;
	P$1 = (uint8*)((uint8*)((uint8*)*(uint8**)TEXT$1 + *(int32*)((uint8*)TEXT$1 + 4)) + -1);
	label$117:;
	if( P$1 <= *(uint8**)TEXT$1 ) goto label$118;
	{
		{
			uint32 TMP$130$3;
			TMP$130$3 = (uint32)*(uint8*)P$1;
			goto label$120;
			label$121:;
			{
				*(int32*)((uint8*)TEXT$1 + 4) = *(int32*)((uint8*)TEXT$1 + 4) + -1;
				*P$1 = (uint8)0u;
			}
			goto label$119;
			label$122:;
			{
				goto label$118;
			}
			goto label$119;
			label$120:;
			static const void* tmp$155[24] = {
				&&label$121,
				&&label$121,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$122,
				&&label$121,
			};
			if( (TMP$130$3 - 9u) > 23u ) goto label$122;
			goto *tmp$155[TMP$130$3 - 9u];
			label$119:;
		}
		P$1 = (uint8*)((uint8*)P$1 + -1);
	}
	goto label$117;
	label$118:;
	label$113:;
}

static void HRTRIMMACROTEXTW( struct $8DWSTRING* TEXT$1 )
{
	label$170:;
	static uint32* P$1;
	P$1 = (uint32*)((uint8*)((uint8*)*(uint32**)TEXT$1 + (*(int32*)((uint8*)TEXT$1 + 4) << (2 & 31))) + -4);
	label$172:;
	if( P$1 <= *(uint32**)TEXT$1 ) goto label$173;
	{
		{
			uint32 TMP$140$3;
			TMP$140$3 = *(uint32*)P$1;
			goto label$175;
			label$176:;
			{
				*(int32*)((uint8*)TEXT$1 + 4) = *(int32*)((uint8*)TEXT$1 + 4) + -1;
				*P$1 = (uint32)0u;
			}
			goto label$174;
			label$177:;
			{
				goto label$173;
			}
			goto label$174;
			label$175:;
			static const void* tmp$156[24] = {
				&&label$176,
				&&label$176,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$177,
				&&label$176,
			};
			if( (TMP$140$3 - 9u) > 23u ) goto label$177;
			goto *tmp$156[TMP$140$3 - 9u];
			label$174:;
		}
		P$1 = (uint32*)((uint8*)P$1 + -4);
	}
	goto label$172;
	label$173:;
	label$171:;
}

static void PPCMDLINE( void )
{
	label$231:;
	uint8* ARGS$1;
	if( *(uint32*)((uint8*)&PARSER$ + 96) <= 0u ) goto label$234;
	{
		ERRREPORTWARN( 46, (uint8*)0u, 1, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$232;
	}
	label$234:;
	label$233:;
	int32 vr$0 = LEXGETCLASS( 0 );
	if( vr$0 == 4 ) goto label$236;
	{
		ERRREPORT( 17, 0, (uint8*)0u );
		LEXSKIPTOKEN( 0 );
		goto label$232;
	}
	label$236:;
	label$235:;
	uint8* vr$1 = LEXGETTEXT(  );
	ARGS$1 = vr$1;
	if( *(int32*)((uint8*)&ENV$ + 860) <= 0 ) goto label$238;
	{
		FBSTRING TMP$150$2;
		FBSTRING TMP$151$2;
		FBSTRING TMP$152$2;
		__builtin_memset( &TMP$152$2, 0, 12 );
		__builtin_memset( &TMP$150$2, 0, 12 );
		FBSTRING* vr$5 = fb_StrConcat( &TMP$150$2, (void*)"#cmdline \x22", 11, (void*)ARGS$1, 0 );
		__builtin_memset( &TMP$151$2, 0, 12 );
		FBSTRING* vr$8 = fb_StrConcat( &TMP$151$2, (void*)vr$5, -1, (void*)"\x22", 2 );
		fb_StrAssign( (void*)&TMP$152$2, -1, (void*)vr$8, -1, 0 );
		LEXPPONLYEMITTEXT( &TMP$152$2 );
		fb_StrDelete( (FBSTRING*)&TMP$152$2 );
	}
	label$238:;
	label$237:;
	if( *(uint32*)((uint8*)&PARSER$ + 100) == 0u ) goto label$240;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) == *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$242;
		{
			ERRREPORT( 61, 0, (uint8*)0u );
		}
		goto label$241;
		label$242:;
		{
			ERRREPORT( 96, 0, (uint8*)0u );
		}
		label$241:;
	}
	goto label$239;
	label$240:;
	if( *(int32*)((uint8*)&ENV$ + 1108) == 1 ) goto label$243;
	{
		ERRREPORTWARN( 46, (uint8*)0u, 1, (uint8*)0u );
	}
	goto label$239;
	label$243:;
	int32 vr$12 = FBGETOPTION( 42 );
	if( vr$12 == 0 ) goto label$244;
	{
		ERRREPORTWARN( 46, (uint8*)0u, 1, (uint8*)0u );
	}
	goto label$239;
	label$244:;
	if( (*(int32*)((uint8*)&ENV$ + 1120) & 10) == 0 ) goto label$245;
	{
	}
	goto label$239;
	label$245:;
	FBSTRING* vr$14 = fb_StrAllocTempDescZ( (uint8*)ARGS$1 );
	FBSTRING* vr$15 = fb_TRIM( (FBSTRING*)vr$14 );
	FBSTRING* vr$16 = fb_StrLcase2( (FBSTRING*)vr$15, 0 );
	int32 vr$17 = fb_StrCompare( (void*)vr$16, -1, (void*)"-end", 5 );
	if( vr$17 != 0 ) goto label$246;
	{
		FBRESTARTACCEPTREQUEST( 10 );
		ERRHIDEFURTHERERRORS(  );
	}
	goto label$239;
	label$246:;
	FBSTRING* vr$18 = fb_StrAllocTempDescZ( (uint8*)ARGS$1 );
	FBSTRING* vr$19 = fb_TRIM( (FBSTRING*)vr$18 );
	FBSTRING* vr$20 = fb_StrLcase2( (FBSTRING*)vr$19, 0 );
	int32 vr$21 = fb_StrCompare( (void*)vr$20, -1, (void*)"-restart", 9 );
	if( vr$21 != 0 ) goto label$247;
	{
		FBRESTARTBEGINREQUEST( 8 );
		FBRESTARTACCEPTREQUEST( 10 );
		ERRHIDEFURTHERERRORS(  );
	}
	goto label$239;
	label$247:;
	{
		FBCPARSEARGSFROMSTRING( ARGS$1, -1, 0 );
	}
	label$239:;
	LEXSKIPTOKEN( 0 );
	label$232:;
}
