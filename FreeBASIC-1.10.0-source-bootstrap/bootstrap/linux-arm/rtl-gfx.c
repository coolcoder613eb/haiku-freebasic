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
typedef int32 $11FB_DATATYPE;
typedef int32 $11FB_FUNCMODE;
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
typedef int32 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int32 ISOPT;
	int32 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 16 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int32 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 284 );
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
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $13FB_COMPTARGET;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzgfx( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBRESTARTGETCOUNT( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $7ASTNODE* ASTBUILDPROCADDROF( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
int32 SYMBISSTRING( int32 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
static int32 HGFXLIB_CB( struct $8FBSYMBOL* );
static int32 HPORTS_CB( struct $8FBSYMBOL* );
static struct $7ASTNODE* HGETPUTTER( int32 );
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[71] = { { (uint8*)"fb_GfxPset", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 6, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_GfxPoint", (uint8*)0u, 12, -1, (tmp$33)&HGFXLIB_CB, 0, 3, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 } } }, { (uint8*)"fb_GfxLine", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 9, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 524, 1, 0 }, { 523, 1, 0 }, { 524, 1, -1, 65535 }, { 523, 1, 0 } } }, { (uint8*)"fb_GfxEllipse", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 10, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 524, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_GfxPaint", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 8, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 524, 1, 0 }, { 524, 1, 0 }, { 529, 2, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_GfxDraw", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 2, { { 32, 1, -1, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_GfxDrawString", (uint8*)0u, 8, -1, (tmp$33)&HGFXLIB_CB, 2, 11, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 523, 1, 0 }, { 529, 2, 0 }, { 524, 1, 0 }, { 1056, 1, -1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, -1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_GfxView", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 7, { { 523, 1, -1, -32768 }, { 523, 1, -1, -32768 }, { 523, 1, -1, -32768 }, { 523, 1, -1, -32768 }, { 524, 1, -1, 0 }, { 524, 1, -1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_GfxWindow", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 5, { { 527, 1, -1, 0 }, { 527, 1, -1, 0 }, { 527, 1, -1, 0 }, { 527, 1, -1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_GfxPalette", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 4, { { 523, 1, -1, -1 }, { 523, 1, -1, -1 }, { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"fb_GfxPaletteUsing", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 1, { { 1067, 1, 0 } } }, { (uint8*)"fb_GfxPaletteUsing64", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 1, { { 1069, 1, 0 } } }, { (uint8*)"fb_GfxPaletteGet", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 4, { { 523, 1, -1, -1 }, { 11, 2, 0 }, { 11, 2, 0 }, { 11, 2, 0 } } }, { (uint8*)"fb_GfxPaletteGet64", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 4, { { 523, 1, -1, -1 }, { 13, 2, 0 }, { 13, 2, 0 }, { 13, 2, 0 } } }, { (uint8*)"fb_GfxPaletteGetUsing", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 1, { { 43, 1, 0 } } }, { (uint8*)"fb_GfxPaletteGetUsing64", (uint8*)0u, 0, -1, (tmp$33)&HGFXLIB_CB, 0, 1, { { 45, 1, 0 } } }, { (uint8*)"fb_GfxPut", (uint8*)0u, 11, -1, (tmp$33)&HGFXLIB_CB, 2, 14, { { 32, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 1056, 1, 0 }, { 523, 1, -1, -65536 }, { 523, 1, -1, -65536 }, { 523, 1, -1, -65536 }, { 523, 1, -1, -65536 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 523, 1, -1, -1 }, { 32, 1, -1, 0 }, { 32, 1, -1, 0 } } }, { (uint8*)"fb_GfxGet", (uint8*)0u, 11, -1, (tmp$33)&HGFXLIB_CB, 1026, 8, { { 1056, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 32, 1, 0 }, { 523, 1, 0 }, { 512, 3, 0 } } }, { (uint8*)"fb_GfxGetQB", (uint8*)0u, 11, -1, (tmp$33)&HGFXLIB_CB, 514, 8, { { 1056, 1, -1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 527, 1, 0 }, { 32, 1, 0 }, { 523, 1, 0 }, { 0, 3, 0 } } }, { (uint8*)"fb_GfxScreen", (uint8*)0u, 11, -1, (tmp$33)&HGFXLIB_CB, 0, 5, { { 523, 1, 0 }, { 523, 1, -1, 8 }, { 523, 1, -1, 0 }, { 523, 1, -1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_GfxScreenQB", (uint8*)0u, 11, -1, (tmp$33)&HGFXLIB_CB, 0, 3, { { 523, 1, 0 }, { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"screenres", (uint8*)"fb_GfxScreenRes", 11, -1, (tmp$33)&HGFXLIB_CB, 130, 6, { { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, -1, 8 }, { 523, 1, -1, 1 }, { 523, 1, -1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"bload", (uint8*)"fb_GfxBload", 11, -1, (tmp$33)&HGFXLIB_CB, 1026, 3, { { 529, 2, 0 }, { 32, 1, -1, 0 }, { 32, 1, -1, 0 } } }, { (uint8*)"bload", (uint8*)"fb_GfxBloadQB", 11, -1, (tmp$33)&HGFXLIB_CB, 514, 3, { { 529, 2, 0 }, { 32, 1, -1, 0 }, { 32, 1, -1, 0 } } }, { (uint8*)"bsave", (uint8*)"fb_GfxBsave", 11, -1, (tmp$33)&HGFXLIB_CB, 3, 4, { { 529, 2, 0 }, { 1056, 1, 0 }, { 524, 1, -1, 0 }, { 1056, 1, -1, 0 } } }, { (uint8*)"bsave", (uint8*)"fb_GfxBsaveEx", 11, -1, (tmp$33)&HGFXLIB_CB, 3, 5, { { 529, 2, 0 }, { 1056, 1, 0 }, { 524, 1, -1, 0 }, { 1056, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"flip", (uint8*)"fb_GfxFlip", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 2, { { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"screencopy", (uint8*)"fb_GfxFlip", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 2, { { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"pointcoord", (uint8*)"fb_GfxCursor", 15, -1, (tmp$33)&HGFXLIB_CB, 128, 1, { { 523, 1, 0 } } }, { (uint8*)"pmap", (uint8*)"fb_GfxPMap", 15, -1, (tmp$33)&HGFXLIB_CB, 0, 2, { { 527, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"out", (uint8*)"fb_Out", 11, -1, (tmp$33)&HPORTS_CB, 2, 2, { { 518, 1, 0 }, { 515, 1, 0 } } }, { (uint8*)"inp", (uint8*)"fb_In", 11, -1, (tmp$33)&HPORTS_CB, 0, 1, { { 518, 1, 0 } } }, { (uint8*)"wait", (uint8*)"fb_Wait", 11, -1, (tmp$33)&HPORTS_CB, 2, 3, { { 518, 1, 0 }, { 523, 1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"screensync", (uint8*)"fb_GfxWaitVSync", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 0 }, { (uint8*)"screenset", (uint8*)"fb_GfxPageSet", 11, 3, (tmp$33)&HGFXLIB_CB, 128, 2, { { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"screenlock", (uint8*)"fb_GfxLock", 0, -1, (tmp$33)&HGFXLIB_CB, 128, 0 }, { (uint8*)"screenunlock", (uint8*)"fb_GfxUnlock", 0, -1, (tmp$33)&HGFXLIB_CB, 128, 2, { { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"screenptr", (uint8*)"fb_GfxScreenPtr", 32, -1, (tmp$33)&HGFXLIB_CB, 128, 0 }, { (uint8*)"windowtitle", (uint8*)"fb_GfxSetWindowTitle", 0, -1, (tmp$33)&HGFXLIB_CB, 128, 1, { { 529, 2, 0 } } }, { (uint8*)"multikey", (uint8*)"fb_Multikey", 11, -1, (tmp$33)0u, 128, 1, { { 523, 1, 0 } } }, { (uint8*)"getmouse", (uint8*)"fb_GetMouse", 11, -1, (tmp$33)0u, 129, 5, { { 11, 2, 0, 0 }, { 11, 2, 0, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 } } }, { (uint8*)"getmouse", (uint8*)"fb_GetMouse64", 11, -1, (tmp$33)0u, 129, 5, { { 13, 2, 0, 0 }, { 13, 2, 0, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 } } }, { (uint8*)"setmouse", (uint8*)"fb_SetMouse", 11, -1, (tmp$33)0u, 128, 4, { { 523, 1, -1, -2147483648u }, { 523, 1, -1, -2147483648u }, { 523, 1, -1, -1 }, { 523, 1, -1, -1 } } }, { (uint8*)"getjoystick", (uint8*)"fb_GfxGetJoystick", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 10, { { 523, 1, 0, 0 }, { 8, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 }, { 15, 2, -1, 0 } } }, { (uint8*)"stick", (uint8*)"fb_GfxStickQB", 11, -1, (tmp$33)&HGFXLIB_CB, 256, 1, { { 523, 1, 0 } } }, { (uint8*)"strig", (uint8*)"fb_GfxStrigQB", 11, -1, (tmp$33)&HGFXLIB_CB, 256, 1, { { 523, 1, 0 } } }, { (uint8*)"screeninfo", (uint8*)"fb_GfxScreenInfo32", 0, -1, (tmp$33)&HGFXLIB_CB, 129, 7, { { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 17, 2, -1, 0 } } }, { (uint8*)"screeninfo", (uint8*)"fb_GfxScreenInfo64", 0, -1, (tmp$33)&HGFXLIB_CB, 129, 7, { { 13, 2, 0 }, { 13, 2, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 }, { 17, 2, -1, 0 } } }, { (uint8*)"screenlist", (uint8*)"fb_GfxScreenList", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 1, { { 523, 1, -1, 0 } } }, { (uint8*)"fb_GfxImageCreate", (uint8*)0u, 32, -1, (tmp$33)&HGFXLIB_CB, 1024, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 524, 1, -1, 0 }, { 523, 1, -1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_GfxImageCreateQB", (uint8*)0u, 32, -1, (tmp$33)&HGFXLIB_CB, 128, 5, { { 523, 1, 0 }, { 523, 1, 0 }, { 524, 1, -1, 0 }, { 523, 1, -1, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"imagedestroy", (uint8*)"fb_GfxImageDestroy", 0, -1, (tmp$33)&HGFXLIB_CB, 128, 1, { { 1056, 1, 0 } } }, { (uint8*)"imageinfo", (uint8*)"fb_GfxImageInfo32", 11, -1, (tmp$33)&HGFXLIB_CB, 129, 7, { { 1056, 1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 11, 2, -1, 0 }, { 32, 2, -1, 0 }, { 11, 2, -1, 0 } } }, { (uint8*)"imageinfo", (uint8*)"fb_GfxImageInfo64", 11, -1, (tmp$33)&HGFXLIB_CB, 129, 7, { { 1056, 1, 0 }, { 13, 2, 0 }, { 13, 2, 0 }, { 13, 2, -1, 0 }, { 13, 2, -1, 0 }, { 32, 2, -1, 0 }, { 13, 2, -1, 0 } } }, { (uint8*)"imageconvertrow", (uint8*)"fb_GfxImageConvertRow", 0, -1, (tmp$33)&HGFXLIB_CB, 128, 6, { { 1056, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"screenevent", (uint8*)"fb_GfxEvent", 11, -1, (tmp$33)&HGFXLIB_CB, 128, 1, { { 32, 1, -1, 0 } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_s", 0, -1, (tmp$33)&HGFXLIB_CB, 129, 2, { { 523, 1, 0 }, { 17, 2 } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_i32", 0, -1, (tmp$33)&HGFXLIB_CB, 129, 5, { { 523, 1, 0 }, { 11, 2, -1, -2147483648u }, { 11, 2, -1, -2147483648u }, { 11, 2, -1, -2147483648u }, { 11, 2, -1, -2147483648u } } }, { (uint8*)"screencontrol", (uint8*)"fb_GfxControl_i64", 0, -1, (tmp$33)&HGFXLIB_CB, 129, 5, { { 523, 1, 0 }, { 13, 2, 0 }, { 13, 2, -1, -2147483648u }, { 13, 2, -1, -2147483648u }, { 13, 2, -1, -2147483648u } } }, { (uint8*)"screenglproc", (uint8*)"fb_GfxGetGLProcAddress", 32, -1, (tmp$33)&HGFXLIB_CB, 129, 1, { { 1060, 1, 0 } } }, { (uint8*)"fb_hPutTrans", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutPSet", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutPReset", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutAnd", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutOr", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutXor", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutAlpha", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutBlend", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutAdd", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)"fb_hPutCustom", (uint8*)0u, 0, 3, (tmp$33)&HGFXLIB_CB, 0, 9, { { 1059, 1, 0 }, { 35, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 523, 1, 0 }, { 32, 1, 0 }, { 32, 1, 0 } } }, { (uint8*)0u } };

void RTLGFXMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLGFXMODEND( void )
{
	label$12:;
	label$13:;
}

int32 RTLGFXPSET( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* CEXPR$1, int32 COORDTYPE$1, int32 ISPRESET$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$40:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPset", 301 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$43;
	{
		goto label$41;
	}
	label$43:;
	label$42:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$45;
	{
		goto label$41;
	}
	label$45:;
	label$44:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$47;
	{
		goto label$41;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$49;
	{
		goto label$41;
	}
	label$49:;
	label$48:;
	struct $7ASTNODE* vr$8 = ASTNEWCONSTI( (int64)COORDTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, vr$8, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$51;
	{
		goto label$41;
	}
	label$51:;
	label$50:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( (int64)ISPRESET$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$53;
	{
		goto label$41;
	}
	label$53:;
	label$52:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$41:;
	return fb$result$1;
}

struct $7ASTNODE* RTLGFXPOINT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$54:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPoint", 302 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$57;
	{
		goto label$55;
	}
	label$57:;
	label$56:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$59;
	{
		goto label$55;
	}
	label$59:;
	label$58:;
	if( YEXPR$1 != (struct $7ASTNODE*)0u ) goto label$61;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTF( -0x1.FFFFFCp+22, 15 );
		YEXPR$1 = vr$5;
	}
	label$61:;
	label$60:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$63;
	{
		goto label$55;
	}
	label$63:;
	label$62:;
	fb$result$1 = PROC$1;
	label$55:;
	return fb$result$1;
}

int32 RTLGFXLINE( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* CEXPR$1, int32 LINETYPE$1, struct $7ASTNODE* STYLEEXPR$1, int32 COORDTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$64:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxLine", 303 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$67;
	{
		goto label$65;
	}
	label$67:;
	label$66:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, X1EXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$69;
	{
		goto label$65;
	}
	label$69:;
	label$68:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, Y1EXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$71;
	{
		goto label$65;
	}
	label$71:;
	label$70:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, X2EXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$73;
	{
		goto label$65;
	}
	label$73:;
	label$72:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, Y2EXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$75;
	{
		goto label$65;
	}
	label$75:;
	label$74:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$77;
	{
		goto label$65;
	}
	label$77:;
	label$76:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)LINETYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$79;
	{
		goto label$65;
	}
	label$79:;
	label$78:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, STYLEEXPR$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$81;
	{
		goto label$65;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( (int64)COORDTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$83;
	{
		goto label$65;
	}
	label$83:;
	label$82:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$65:;
	return fb$result$1;
}

int32 RTLGFXCIRCLE( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* RADEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* ASPEXPR$1, struct $7ASTNODE* INIEXPR$1, struct $7ASTNODE* ENDEXPR$1, int32 FILLFLAG$1, int32 COORDTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$84:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxEllipse", 304 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$87;
	{
		goto label$85;
	}
	label$87:;
	label$86:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$89;
	{
		goto label$85;
	}
	label$89:;
	label$88:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$91;
	{
		goto label$85;
	}
	label$91:;
	label$90:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, RADEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$93;
	{
		goto label$85;
	}
	label$93:;
	label$92:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$95;
	{
		goto label$85;
	}
	label$95:;
	label$94:;
	if( ASPEXPR$1 != (struct $7ASTNODE*)0u ) goto label$97;
	{
		struct $7ASTNODE* vr$8 = ASTNEWCONSTF( 0x0p+0, 15 );
		ASPEXPR$1 = vr$8;
	}
	label$97:;
	label$96:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, ASPEXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$99;
	{
		goto label$85;
	}
	label$99:;
	label$98:;
	if( INIEXPR$1 != (struct $7ASTNODE*)0u ) goto label$101;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTF( 0x0p+0, 15 );
		INIEXPR$1 = vr$10;
	}
	label$101:;
	label$100:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, INIEXPR$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$103;
	{
		goto label$85;
	}
	label$103:;
	label$102:;
	if( ENDEXPR$1 != (struct $7ASTNODE*)0u ) goto label$105;
	{
		struct $7ASTNODE* vr$12 = ASTNEWCONSTF( 0x1.921FB82C2BD7Fp+2, 15 );
		ENDEXPR$1 = vr$12;
	}
	label$105:;
	label$104:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, ENDEXPR$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$107;
	{
		goto label$85;
	}
	label$107:;
	label$106:;
	struct $7ASTNODE* vr$15 = ASTNEWCONSTI( (int64)FILLFLAG$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$109;
	{
		goto label$85;
	}
	label$109:;
	label$108:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (int64)COORDTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$111;
	{
		goto label$85;
	}
	label$111:;
	label$110:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$85:;
	return fb$result$1;
}

int32 RTLGFXPAINT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* PEXPR$1, struct $7ASTNODE* BEXPR$1, int32 COORD_TYPE$1 )
{
	int32 TMP$195$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$112:;
	struct $7ASTNODE* PROC$1;
	int32 PATTERN$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaint", 305 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$115;
	{
		goto label$113;
	}
	label$115:;
	label$114:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$117;
	{
		goto label$113;
	}
	label$117:;
	label$116:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$119;
	{
		goto label$113;
	}
	label$119:;
	label$118:;
	int32 vr$8 = SYMBISSTRING( *(int32*)((uint8*)PEXPR$1 + 4) & 511 );
	if( vr$8 == 0 ) goto label$121;
	{
		PATTERN$1 = -1;
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( -65536ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
		if( vr$10 != (struct $7ASTNODE*)0u ) goto label$123;
		{
			goto label$113;
		}
		label$123:;
		label$122:;
	}
	goto label$120;
	label$121:;
	{
		PATTERN$1 = 0;
		struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, PEXPR$1, -2147483648u, -1 );
		if( vr$11 != (struct $7ASTNODE*)0u ) goto label$125;
		{
			goto label$113;
		}
		label$125:;
		label$124:;
	}
	label$120:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, BEXPR$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$127;
	{
		goto label$113;
	}
	label$127:;
	label$126:;
	if( PATTERN$1 == 0 ) goto label$129;
	{
		struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, PEXPR$1, -2147483648u, -1 );
		if( vr$13 != (struct $7ASTNODE*)0u ) goto label$131;
		{
			goto label$113;
		}
		label$131:;
		label$130:;
	}
	goto label$128;
	label$129:;
	{
		struct $8FBSYMBOL* vr$14 = SYMBALLOCSTRCONST( (uint8*)"", 0 );
		struct $7ASTNODE* vr$15 = ASTNEWVAR( vr$14, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, -2147483648u, -1 );
		if( vr$16 != (struct $7ASTNODE*)0u ) goto label$133;
		{
			goto label$113;
		}
		label$133:;
		label$132:;
	}
	label$128:;
	if( PATTERN$1 == 0 ) goto label$134;
	TMP$195$1 = 1;
	goto label$139;
	label$134:;
	TMP$195$1 = 0;
	label$139:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (int64)TMP$195$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$136;
	{
		goto label$113;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)COORD_TYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, -2147483648u, -1 );
	if( vr$22 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		goto label$113;
	}
	label$138:;
	label$137:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$113:;
	return fb$result$1;
}

int32 RTLGFXDRAW( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* CEXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$140:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxDraw", 306 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$143;
	{
		goto label$141;
	}
	label$143:;
	label$142:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$145;
	{
		goto label$141;
	}
	label$145:;
	label$144:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$141:;
	return fb$result$1;
}

int32 RTLGFXDRAWSTRING( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* SEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* FEXPR$1, int32 COORD_TYPE$1, int32 MODE$1, struct $7ASTNODE* ALPHAEXPR$1, struct $7ASTNODE* FUNCEXPR$1, struct $7ASTNODE* PARAMEXPR$1 )
{
	struct $7ASTNODE* TMP$196$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$146:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* PUTTER$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxDrawString", 307 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$149;
	{
		goto label$147;
	}
	label$149:;
	label$148:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$151;
	{
		goto label$147;
	}
	label$151:;
	label$150:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$153;
	{
		goto label$147;
	}
	label$153:;
	label$152:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( (int64)COORD_TYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$155;
	{
		goto label$147;
	}
	label$155:;
	label$154:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, SEXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$157;
	{
		goto label$147;
	}
	label$157:;
	label$156:;
	if( ALPHAEXPR$1 == (struct $7ASTNODE*)0u ) goto label$159;
	{
		CEXPR$1 = ALPHAEXPR$1;
	}
	label$159:;
	label$158:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$161;
	{
		goto label$147;
	}
	label$161:;
	label$160:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, FEXPR$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$163;
	{
		goto label$147;
	}
	label$163:;
	label$162:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( (int64)MODE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$165;
	{
		goto label$147;
	}
	label$165:;
	label$164:;
	if( FEXPR$1 == (struct $7ASTNODE*)0u ) goto label$166;
	struct $7ASTNODE* vr$15 = HGETPUTTER( MODE$1 );
	TMP$196$1 = vr$15;
	goto label$175;
	label$166:;
	struct $7ASTNODE* vr$16 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
	TMP$196$1 = vr$16;
	label$175:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, TMP$196$1, -2147483648u, -1 );
	if( vr$17 != (struct $7ASTNODE*)0u ) goto label$168;
	{
		goto label$147;
	}
	label$168:;
	label$167:;
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, FUNCEXPR$1, -2147483648u, -1 );
	if( vr$18 != (struct $7ASTNODE*)0u ) goto label$170;
	{
		goto label$147;
	}
	label$170:;
	label$169:;
	if( PARAMEXPR$1 != (struct $7ASTNODE*)0u ) goto label$172;
	{
		struct $7ASTNODE* vr$19 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		PARAMEXPR$1 = vr$19;
	}
	label$172:;
	label$171:;
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, PARAMEXPR$1, -2147483648u, -1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$174;
	{
		goto label$147;
	}
	label$174:;
	label$173:;
	struct $7ASTNODE* vr$21 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$21 );
	fb$result$1 = -1;
	label$147:;
	return fb$result$1;
}

int32 RTLGFXVIEW( struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* FILLEXPR$1, struct $7ASTNODE* BORDEXPR$1, int32 SCREENFLAG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$176:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxView", 308 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, X1EXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$179;
	{
		goto label$177;
	}
	label$179:;
	label$178:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, Y1EXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$181;
	{
		goto label$177;
	}
	label$181:;
	label$180:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, X2EXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$183;
	{
		goto label$177;
	}
	label$183:;
	label$182:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y2EXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$185;
	{
		goto label$177;
	}
	label$185:;
	label$184:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, FILLEXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$187;
	{
		goto label$177;
	}
	label$187:;
	label$186:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, BORDEXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$189;
	{
		goto label$177;
	}
	label$189:;
	label$188:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)SCREENFLAG$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$191;
	{
		goto label$177;
	}
	label$191:;
	label$190:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$177:;
	return fb$result$1;
}

int32 RTLGFXWINDOW( struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, int32 SCREENFLAG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$192:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxWindow", 309 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	if( X1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$195;
	{
		struct $7ASTNODE* vr$3 = ASTNEWCONSTF( 0x0p+0, 15 );
		X1EXPR$1 = vr$3;
	}
	label$195:;
	label$194:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, X1EXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$197;
	{
		goto label$193;
	}
	label$197:;
	label$196:;
	if( Y1EXPR$1 != (struct $7ASTNODE*)0u ) goto label$199;
	{
		struct $7ASTNODE* vr$5 = ASTNEWCONSTF( 0x0p+0, 15 );
		Y1EXPR$1 = vr$5;
	}
	label$199:;
	label$198:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y1EXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$201;
	{
		goto label$193;
	}
	label$201:;
	label$200:;
	if( X2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$203;
	{
		struct $7ASTNODE* vr$7 = ASTNEWCONSTF( 0x0p+0, 15 );
		X2EXPR$1 = vr$7;
	}
	label$203:;
	label$202:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, X2EXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$205;
	{
		goto label$193;
	}
	label$205:;
	label$204:;
	if( Y2EXPR$1 != (struct $7ASTNODE*)0u ) goto label$207;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTF( 0x0p+0, 15 );
		Y2EXPR$1 = vr$9;
	}
	label$207:;
	label$206:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, Y2EXPR$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$209;
	{
		goto label$193;
	}
	label$209:;
	label$208:;
	struct $7ASTNODE* vr$12 = ASTNEWCONSTI( (int64)SCREENFLAG$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, vr$12, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$211;
	{
		goto label$193;
	}
	label$211:;
	label$210:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$193:;
	return fb$result$1;
}

int32 RTLGFXPALETTE( struct $7ASTNODE* ATTEXPR$1, struct $7ASTNODE* REXPR$1, struct $7ASTNODE* GEXPR$1, struct $7ASTNODE* BEXPR$1, int32 ISGET$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$212:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 GBDEFVAL$1;
	int32 GBMODE$1;
	fb$result$1 = 0;
	if( ISGET$1 == 0 ) goto label$215;
	{
		int32 TMP$197$2;
		if( ((*(int32*)((uint8*)REXPR$1 + 4) & 511) & 480) == 0 ) goto label$216;
		TMP$197$2 = 24;
		goto label$233;
		label$216:;
		TMP$197$2 = (*(int32*)((uint8*)REXPR$1 + 4) & 511) & 31;
		label$233:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$197$2 * 28)) + 4) != 8 ) goto label$218;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGet64", 314 );
			F$1 = vr$8;
		}
		goto label$217;
		label$218:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGet", 313 );
			F$1 = vr$9;
		}
		label$217:;
	}
	goto label$214;
	label$215:;
	{
		struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_GfxPalette", 310 );
		F$1 = vr$10;
	}
	label$214:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ATTEXPR$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$220;
	{
		goto label$213;
	}
	label$220:;
	label$219:;
	if( REXPR$1 != (struct $7ASTNODE*)0u ) goto label$222;
	{
		struct $7ASTNODE* vr$13 = ASTNEWCONSTI( -1ll, 8, (struct $8FBSYMBOL*)0u );
		REXPR$1 = vr$13;
	}
	label$222:;
	label$221:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, REXPR$1, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$224;
	{
		goto label$213;
	}
	label$224:;
	label$223:;
	if( GEXPR$1 == (struct $7ASTNODE*)0u ) goto label$226;
	{
		GBMODE$1 = -1;
	}
	goto label$225;
	label$226:;
	{
		if( ISGET$1 == 0 ) goto label$228;
		{
			GBDEFVAL$1 = 0;
		}
		goto label$227;
		label$228:;
		{
			GBDEFVAL$1 = -1;
		}
		label$227:;
		struct $7ASTNODE* vr$16 = ASTNEWCONSTI( (int64)GBDEFVAL$1, 8, (struct $8FBSYMBOL*)0u );
		GEXPR$1 = vr$16;
		struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (int64)GBDEFVAL$1, 8, (struct $8FBSYMBOL*)0u );
		BEXPR$1 = vr$18;
		GBMODE$1 = 1;
	}
	label$225:;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, GEXPR$1, -2147483648u, GBMODE$1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$230;
	{
		goto label$213;
	}
	label$230:;
	label$229:;
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, BEXPR$1, -2147483648u, GBMODE$1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$232;
	{
		goto label$213;
	}
	label$232:;
	label$231:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$213:;
	return fb$result$1;
}

int32 RTLGFXPALETTEUSING( struct $7ASTNODE* ARRAYEXPR$1, int32 ISGET$1, int32 IS64BIT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$234:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = 0;
	if( IS64BIT$1 == 0 ) goto label$237;
	{
		if( ISGET$1 == 0 ) goto label$239;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGetUsing64", 316 );
			F$1 = vr$1;
		}
		goto label$238;
		label$239:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteUsing64", 312 );
			F$1 = vr$2;
		}
		label$238:;
	}
	goto label$236;
	label$237:;
	{
		if( ISGET$1 == 0 ) goto label$241;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteGetUsing", 315 );
			F$1 = vr$3;
		}
		goto label$240;
		label$241:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_GfxPaletteUsing", 311 );
			F$1 = vr$4;
		}
		label$240:;
	}
	label$236:;
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, ARRAYEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$243;
	{
		goto label$235;
	}
	label$243:;
	label$242:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$235:;
	return fb$result$1;
}

int32 RTLGFXPUT( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* XEXPR$1, struct $7ASTNODE* YEXPR$1, struct $7ASTNODE* ARRAYEXPR$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* Y2EXPR$1, int32 MODE$1, struct $7ASTNODE* ALPHAEXPR$1, struct $7ASTNODE* FUNCEXPR$1, struct $7ASTNODE* PARAMEXPR$1, int32 COORDTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$244:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxPut", 317 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$247;
	{
		goto label$245;
	}
	label$247:;
	label$246:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, XEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$249;
	{
		goto label$245;
	}
	label$249:;
	label$248:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, YEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$251;
	{
		goto label$245;
	}
	label$251:;
	label$250:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, ARRAYEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$253;
	{
		goto label$245;
	}
	label$253:;
	label$252:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, X1EXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$255;
	{
		goto label$245;
	}
	label$255:;
	label$254:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, X2EXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$257;
	{
		goto label$245;
	}
	label$257:;
	label$256:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, Y1EXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$259;
	{
		goto label$245;
	}
	label$259:;
	label$258:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, Y2EXPR$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$261;
	{
		goto label$245;
	}
	label$261:;
	label$260:;
	struct $7ASTNODE* vr$12 = ASTNEWCONSTI( (int64)COORDTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, vr$12, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$263;
	{
		goto label$245;
	}
	label$263:;
	label$262:;
	struct $7ASTNODE* vr$15 = ASTNEWCONSTI( (int64)MODE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$265;
	{
		goto label$245;
	}
	label$265:;
	label$264:;
	struct $7ASTNODE* vr$17 = HGETPUTTER( MODE$1 );
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, vr$17, -2147483648u, -1 );
	if( vr$18 != (struct $7ASTNODE*)0u ) goto label$267;
	{
		goto label$245;
	}
	label$267:;
	label$266:;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, ALPHAEXPR$1, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$269;
	{
		goto label$245;
	}
	label$269:;
	label$268:;
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, FUNCEXPR$1, -2147483648u, -1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$271;
	{
		goto label$245;
	}
	label$271:;
	label$270:;
	struct $7ASTNODE* vr$21 = ASTNEWARG( PROC$1, PARAMEXPR$1, -2147483648u, -1 );
	if( vr$21 != (struct $7ASTNODE*)0u ) goto label$273;
	{
		goto label$245;
	}
	label$273:;
	label$272:;
	struct $7ASTNODE* vr$22 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$22 );
	fb$result$1 = -1;
	label$245:;
	return fb$result$1;
}

int32 RTLGFXGET( struct $7ASTNODE* TARGET$1, struct $7ASTNODE* X1EXPR$1, struct $7ASTNODE* Y1EXPR$1, struct $7ASTNODE* X2EXPR$1, struct $7ASTNODE* Y2EXPR$1, struct $7ASTNODE* ARRAYEXPR$1, int32 COORDTYPE$1, struct $7ASTNODE* DESCEXPR$1 )
{
	struct $8FBSYMBOL* TMP$198$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$274:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 136) != 0 ) goto label$276;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxGet", 328 );
	TMP$198$1 = vr$1;
	goto label$297;
	label$276:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxGetQB", 329 );
	TMP$198$1 = vr$2;
	label$297:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$198$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, TARGET$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$278;
	{
		goto label$275;
	}
	label$278:;
	label$277:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, X1EXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$280;
	{
		goto label$275;
	}
	label$280:;
	label$279:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, Y1EXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$282;
	{
		goto label$275;
	}
	label$282:;
	label$281:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, X2EXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$284;
	{
		goto label$275;
	}
	label$284:;
	label$283:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, Y2EXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$286;
	{
		goto label$275;
	}
	label$286:;
	label$285:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, ARRAYEXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$288;
	{
		goto label$275;
	}
	label$288:;
	label$287:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( (int64)COORDTYPE$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$290;
	{
		goto label$275;
	}
	label$290:;
	label$289:;
	if( DESCEXPR$1 == (struct $7ASTNODE*)0u ) goto label$292;
	{
		struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DESCEXPR$1, -2147483648u, -1 );
		if( vr$13 != (struct $7ASTNODE*)0u ) goto label$294;
		{
			goto label$275;
		}
		label$294:;
		label$293:;
	}
	goto label$291;
	label$292:;
	{
		struct $7ASTNODE* vr$14 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, 1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$296;
		{
			goto label$275;
		}
		label$296:;
		label$295:;
	}
	label$291:;
	struct $7ASTNODE* vr$16 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$16 );
	fb$result$1 = -1;
	label$275:;
	return fb$result$1;
}

int32 RTLGFXSCREENSET( struct $7ASTNODE* MEXPR$1, struct $7ASTNODE* DEXPR$1, struct $7ASTNODE* PEXPR$1, struct $7ASTNODE* FEXPR$1, struct $7ASTNODE* REXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$298:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxScreen", 330 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, MEXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$301;
	{
		goto label$299;
	}
	label$301:;
	label$300:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, DEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$303;
	{
		goto label$299;
	}
	label$303:;
	label$302:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, PEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$305;
	{
		goto label$299;
	}
	label$305:;
	label$304:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, FEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$307;
	{
		goto label$299;
	}
	label$307:;
	label$306:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, REXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$309;
	{
		goto label$299;
	}
	label$309:;
	label$308:;
	struct $7ASTNODE* vr$8 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$8 );
	fb$result$1 = -1;
	label$299:;
	return fb$result$1;
}

int32 RTLGFXSCREENSETQB( struct $7ASTNODE* MODE$1, struct $7ASTNODE* ACTIVE$1, struct $7ASTNODE* VISIBLE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$310:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxScreenQB", 331 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, MODE$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$313;
	{
		goto label$311;
	}
	label$313:;
	label$312:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, ACTIVE$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$315;
	{
		goto label$311;
	}
	label$315:;
	label$314:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, VISIBLE$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$317;
	{
		goto label$311;
	}
	label$317:;
	label$316:;
	struct $7ASTNODE* vr$6 = RTLERRORCHECK( PROC$1 );
	ASTADD( vr$6 );
	fb$result$1 = -1;
	label$311:;
	return fb$result$1;
}

struct $7ASTNODE* RTLGFXIMAGECREATE( struct $7ASTNODE* WEXPR$1, struct $7ASTNODE* HEXPR$1, struct $7ASTNODE* CEXPR$1, struct $7ASTNODE* DEXPR$1, int32 FLAGS$1 )
{
	struct $8FBSYMBOL* TMP$199$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$318:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( *(int32*)((uint8*)&ENV$ + 136) != 0 ) goto label$320;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_GfxImageCreate", 332 );
	TMP$199$1 = vr$1;
	goto label$331;
	label$320:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_GfxImageCreateQB", 333 );
	TMP$199$1 = vr$2;
	label$331:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$199$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$322;
	{
		goto label$319;
	}
	label$322:;
	label$321:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, HEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$324;
	{
		goto label$319;
	}
	label$324:;
	label$323:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, CEXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$326;
	{
		goto label$319;
	}
	label$326:;
	label$325:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, DEXPR$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$328;
	{
		goto label$319;
	}
	label$328:;
	label$327:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( (int64)FLAGS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$330;
	{
		goto label$319;
	}
	label$330:;
	label$329:;
	fb$result$1 = PROC$1;
	label$319:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzgfx( void )
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

static int32 HPORTS_CB( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	static int32 RESTART_COUNT$1;
	static int32 LIBSADDED$1 = 0;
	int32 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$17;
	{
		int32 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0;
	}
	label$17:;
	label$16:;
	if( LIBSADDED$1 != 0 ) goto label$19;
	{
		LIBSADDED$1 = -1;
		{
			$13FB_COMPTARGET TMP$192$3;
			TMP$192$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
			if( TMP$192$3 == 0 ) goto label$22;
			label$23:;
			if( TMP$192$3 != 1 ) goto label$21;
			label$22:;
			{
				FBADDLIB( (uint8*)"advapi32" );
			}
			label$21:;
			label$20:;
		}
	}
	label$19:;
	label$18:;
	fb$result$1 = -1;
	label$15:;
	return fb$result$1;
}

static int32 HGFXLIB_CB( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	*(int32*)((uint8*)&ENV$ + 236) = -1;
	fb$result$1 = -1;
	label$25:;
	return fb$result$1;
}

static struct $7ASTNODE* HGETPUTTER( int32 MODE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$26:;
	struct $8FBSYMBOL* PROC$1;
	{
		uint32 TMP$194$2;
		TMP$194$2 = (uint32)MODE$1;
		goto label$29;
		label$30:;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_hPutTrans", 318 );
			PROC$1 = vr$1;
		}
		goto label$28;
		label$31:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_hPutPSet", 319 );
			PROC$1 = vr$2;
		}
		goto label$28;
		label$32:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_hPutPReset", 320 );
			PROC$1 = vr$3;
		}
		goto label$28;
		label$33:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_hPutAnd", 321 );
			PROC$1 = vr$4;
		}
		goto label$28;
		label$34:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_hPutOr", 322 );
			PROC$1 = vr$5;
		}
		goto label$28;
		label$35:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_hPutXor", 323 );
			PROC$1 = vr$6;
		}
		goto label$28;
		label$36:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_hPutAlpha", 324 );
			PROC$1 = vr$7;
		}
		goto label$28;
		label$37:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_hPutBlend", 325 );
			PROC$1 = vr$8;
		}
		goto label$28;
		label$38:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_hPutAdd", 326 );
			PROC$1 = vr$9;
		}
		goto label$28;
		label$39:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_hPutCustom", 327 );
			PROC$1 = vr$10;
		}
		goto label$28;
		label$29:;
		static const void* tmp$200[10] = {
			&&label$30,
			&&label$31,
			&&label$32,
			&&label$33,
			&&label$34,
			&&label$35,
			&&label$36,
			&&label$38,
			&&label$39,
			&&label$37,
		};
		if( TMP$194$2 > 9u ) goto label$39;
		goto *tmp$200[TMP$194$2 - 0u];
		label$28:;
	}
	struct $7ASTNODE* vr$11 = ASTBUILDPROCADDROF( PROC$1 );
	fb$result$1 = vr$11;
	label$27:;
	return fb$result$1;
}
