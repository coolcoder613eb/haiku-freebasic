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
typedef int32 $13FB_COMPTARGET;
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__rtlzprint( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
int32 FBRESTARTGETCOUNT( void );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWOVLCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
void FBADDLIB( uint8* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
struct $7ASTNODE* RTLERRORCHECK( struct $7ASTNODE* );
int32 RTLPRINTER_CB( struct $8FBSYMBOL* );
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[55] = { { (uint8*)"fb_PrintVoid", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 523, 1, -1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintBool", (uint8*)0u, 0, -1, (tmp$33)0u, 128, 3, { { 523, 1, -1, 0 }, { 513, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintByte", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 514, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUByte", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintShort", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 517, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUShort", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintInt", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUInt", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintLongint", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 525, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintULongint", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintSingle", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 527, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintDouble", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 528, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintString", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 529, 2, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintWstr", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 1063, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintVoid", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 2, { { 523, 1, -1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintBool", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 128, 3, { { 523, 1, -1, 0 }, { 513, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintByte", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 514, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintUByte", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintShort", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 517, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintUShort", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintInt", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintUInt", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintLongint", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 525, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintULongint", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintSingle", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 527, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintDouble", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 528, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintString", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 529, 2, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_LPrintWstr", (uint8*)0u, 0, -1, (tmp$33)&RTLPRINTER_CB, 0, 3, { { 523, 1, -1, 0 }, { 1063, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintSPC", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 523, 1, -1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_PrintTab", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 523, 1, -1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteVoid", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 523, 1, -1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteBool", (uint8*)0u, 0, -1, (tmp$33)0u, 128, 3, { { 523, 1, -1, 0 }, { 513, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteByte", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 514, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteUByte", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteShort", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 517, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteUShort", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteInt", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 523, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteUInt", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteLongint", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 525, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteULongint", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteSingle", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 527, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteDouble", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 528, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteString", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 529, 2, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WriteWstr", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 3, { { 523, 1, -1, 0 }, { 1063, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingInit", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_PrintUsingStr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 529, 2, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingWstr", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 1063, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingSingle", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 527, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingDouble", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 528, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingLongint", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 525, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingULongint", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingBoolean", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 3, { { 523, 1, 0 }, { 513, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_PrintUsingEnd", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_LPrintUsingInit", (uint8*)0u, 11, -1, (tmp$33)&RTLPRINTER_CB, 0, 1, { { 529, 2, 0 } } }, { (uint8*)0u } };

void RTLPRINTMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLPRINTMODEND( void )
{
	label$12:;
	label$13:;
}

int32 RTLPRINT( struct $7ASTNODE* FILEEXPR$1, int32 ISCOMMA$1, int32 ISSEMICOLON$1, struct $7ASTNODE* EXPR$1, int32 ISLPRINT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 MASK$1;
	fb$result$1 = 0;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$17;
	{
		if( ISLPRINT$1 == 0 ) goto label$19;
		{
			struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_LPrintVoid", 174 );
			F$1 = vr$1;
		}
		goto label$18;
		label$19:;
		{
			struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_PrintVoid", 160 );
			F$1 = vr$2;
		}
		label$18:;
	}
	goto label$16;
	label$17:;
	{
		ASTTRYOVLSTRINGCONV( &EXPR$1 );
		{
			int32 TMP$147$3;
			int32 TMP$148$3;
			if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$20;
			TMP$147$3 = 24;
			goto label$89;
			label$20:;
			TMP$147$3 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
			label$89:;
			TMP$148$3 = TMP$147$3;
			if( TMP$148$3 == 20 ) goto label$23;
			label$24:;
			if( TMP$148$3 != 10 ) goto label$22;
			label$23:;
			{
				struct $7ASTNODE* vr$10 = ASTNEWOVLCONV( 17, (struct $8FBSYMBOL*)0u, EXPR$1 );
				EXPR$1 = vr$10;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$26;
				{
					goto label$15;
				}
				label$26:;
				label$25:;
			}
			goto label$21;
			label$22:;
			{
				if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) == 0 ) goto label$29;
				{
					struct $7ASTNODE* vr$13 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
					EXPR$1 = vr$13;
				}
				label$29:;
				label$28:;
			}
			label$27:;
			label$21:;
		}
		{
			uint32 TMP$149$3;
			TMP$149$3 = (uint32)(*(int32*)((uint8*)EXPR$1 + 4) & 511);
			goto label$31;
			label$32:;
			{
				if( ISLPRINT$1 == 0 ) goto label$34;
				{
					struct $8FBSYMBOL* vr$16 = RTLPROCLOOKUP( (uint8*)"fb_LPrintString", 186 );
					F$1 = vr$16;
				}
				goto label$33;
				label$34:;
				{
					struct $8FBSYMBOL* vr$17 = RTLPROCLOOKUP( (uint8*)"fb_PrintString", 172 );
					F$1 = vr$17;
				}
				label$33:;
			}
			goto label$30;
			label$35:;
			{
				if( ISLPRINT$1 == 0 ) goto label$37;
				{
					struct $8FBSYMBOL* vr$18 = RTLPROCLOOKUP( (uint8*)"fb_LPrintWstr", 187 );
					F$1 = vr$18;
				}
				goto label$36;
				label$37:;
				{
					struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_PrintWstr", 173 );
					F$1 = vr$19;
				}
				label$36:;
			}
			goto label$30;
			label$38:;
			{
				if( ISLPRINT$1 == 0 ) goto label$40;
				{
					struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_LPrintBool", 175 );
					F$1 = vr$20;
				}
				goto label$39;
				label$40:;
				{
					struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_PrintBool", 161 );
					F$1 = vr$21;
				}
				label$39:;
			}
			goto label$30;
			label$41:;
			{
				{
					int32 TMP$150$5;
					uint32 TMP$151$5;
					if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) == 0 ) goto label$42;
					TMP$150$5 = 24;
					goto label$90;
					label$42:;
					TMP$150$5 = *(int32*)((uint8*)EXPR$1 + 4) & 31;
					label$90:;
					TMP$151$5 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$150$5 * 28)) + 20);
					goto label$44;
					label$45:;
					{
						if( ISLPRINT$1 == 0 ) goto label$47;
						{
							struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_LPrintByte", 176 );
							F$1 = vr$27;
						}
						goto label$46;
						label$47:;
						{
							struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_PrintByte", 162 );
							F$1 = vr$28;
						}
						label$46:;
					}
					goto label$43;
					label$48:;
					{
						if( ISLPRINT$1 == 0 ) goto label$50;
						{
							struct $8FBSYMBOL* vr$29 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUByte", 177 );
							F$1 = vr$29;
						}
						goto label$49;
						label$50:;
						{
							struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_PrintUByte", 163 );
							F$1 = vr$30;
						}
						label$49:;
					}
					goto label$43;
					label$51:;
					{
						if( ISLPRINT$1 == 0 ) goto label$53;
						{
							struct $8FBSYMBOL* vr$31 = RTLPROCLOOKUP( (uint8*)"fb_LPrintShort", 178 );
							F$1 = vr$31;
						}
						goto label$52;
						label$53:;
						{
							struct $8FBSYMBOL* vr$32 = RTLPROCLOOKUP( (uint8*)"fb_PrintShort", 164 );
							F$1 = vr$32;
						}
						label$52:;
					}
					goto label$43;
					label$54:;
					{
						if( ISLPRINT$1 == 0 ) goto label$56;
						{
							struct $8FBSYMBOL* vr$33 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUShort", 179 );
							F$1 = vr$33;
						}
						goto label$55;
						label$56:;
						{
							struct $8FBSYMBOL* vr$34 = RTLPROCLOOKUP( (uint8*)"fb_PrintUShort", 165 );
							F$1 = vr$34;
						}
						label$55:;
					}
					goto label$43;
					label$57:;
					{
						if( ISLPRINT$1 == 0 ) goto label$59;
						{
							struct $8FBSYMBOL* vr$35 = RTLPROCLOOKUP( (uint8*)"fb_LPrintInt", 180 );
							F$1 = vr$35;
						}
						goto label$58;
						label$59:;
						{
							struct $8FBSYMBOL* vr$36 = RTLPROCLOOKUP( (uint8*)"fb_PrintInt", 166 );
							F$1 = vr$36;
						}
						label$58:;
					}
					goto label$43;
					label$60:;
					{
						if( ISLPRINT$1 == 0 ) goto label$62;
						{
							struct $8FBSYMBOL* vr$37 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUInt", 181 );
							F$1 = vr$37;
						}
						goto label$61;
						label$62:;
						{
							struct $8FBSYMBOL* vr$38 = RTLPROCLOOKUP( (uint8*)"fb_PrintUInt", 167 );
							F$1 = vr$38;
						}
						label$61:;
					}
					goto label$43;
					label$63:;
					{
						if( ISLPRINT$1 == 0 ) goto label$65;
						{
							struct $8FBSYMBOL* vr$39 = RTLPROCLOOKUP( (uint8*)"fb_LPrintLongint", 182 );
							F$1 = vr$39;
						}
						goto label$64;
						label$65:;
						{
							struct $8FBSYMBOL* vr$40 = RTLPROCLOOKUP( (uint8*)"fb_PrintLongint", 168 );
							F$1 = vr$40;
						}
						label$64:;
					}
					goto label$43;
					label$66:;
					{
						if( ISLPRINT$1 == 0 ) goto label$68;
						{
							struct $8FBSYMBOL* vr$41 = RTLPROCLOOKUP( (uint8*)"fb_LPrintULongint", 183 );
							F$1 = vr$41;
						}
						goto label$67;
						label$68:;
						{
							struct $8FBSYMBOL* vr$42 = RTLPROCLOOKUP( (uint8*)"fb_PrintULongint", 169 );
							F$1 = vr$42;
						}
						label$67:;
					}
					goto label$43;
					label$44:;
					static const void* tmp$152[8] = {
						&&label$45,
						&&label$48,
						&&label$51,
						&&label$54,
						&&label$57,
						&&label$60,
						&&label$63,
						&&label$66,
					};
					if( (TMP$151$5 - 1u) > 7u ) goto label$43;
					goto *tmp$152[TMP$151$5 - 1u];
					label$43:;
				}
			}
			goto label$30;
			label$69:;
			{
				if( ISLPRINT$1 == 0 ) goto label$71;
				{
					struct $8FBSYMBOL* vr$43 = RTLPROCLOOKUP( (uint8*)"fb_LPrintSingle", 184 );
					F$1 = vr$43;
				}
				goto label$70;
				label$71:;
				{
					struct $8FBSYMBOL* vr$44 = RTLPROCLOOKUP( (uint8*)"fb_PrintSingle", 170 );
					F$1 = vr$44;
				}
				label$70:;
			}
			goto label$30;
			label$72:;
			{
				if( ISLPRINT$1 == 0 ) goto label$74;
				{
					struct $8FBSYMBOL* vr$45 = RTLPROCLOOKUP( (uint8*)"fb_LPrintDouble", 185 );
					F$1 = vr$45;
				}
				goto label$73;
				label$74:;
				{
					struct $8FBSYMBOL* vr$46 = RTLPROCLOOKUP( (uint8*)"fb_PrintDouble", 171 );
					F$1 = vr$46;
				}
				label$73:;
			}
			goto label$30;
			label$75:;
			{
				goto label$15;
			}
			goto label$30;
			label$31:;
			static const void* tmp$153[18] = {
				&&label$38,
				&&label$41,
				&&label$41,
				&&label$32,
				&&label$41,
				&&label$41,
				&&label$35,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$41,
				&&label$69,
				&&label$72,
				&&label$32,
				&&label$32,
			};
			if( (TMP$149$3 - 1u) > 17u ) goto label$75;
			goto *tmp$153[TMP$149$3 - 1u];
			label$30:;
		}
	}
	label$16:;
	struct $7ASTNODE* vr$47 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$47;
	struct $7ASTNODE* vr$48 = ASTNEWARG( PROC$1, FILEEXPR$1, -2147483648u, -1 );
	if( vr$48 != (struct $7ASTNODE*)0u ) goto label$77;
	{
		goto label$15;
	}
	label$77:;
	label$76:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$79;
	{
		struct $7ASTNODE* vr$49 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
		if( vr$49 != (struct $7ASTNODE*)0u ) goto label$81;
		{
			goto label$15;
		}
		label$81:;
		label$80:;
	}
	label$79:;
	label$78:;
	MASK$1 = 0;
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$83;
	{
		MASK$1 = MASK$1 | 16;
		label$83:;
	}
	if( ISCOMMA$1 == 0 ) goto label$85;
	{
		MASK$1 = MASK$1 | 2;
	}
	goto label$84;
	label$85:;
	if( ISSEMICOLON$1 != 0 ) goto label$86;
	{
		MASK$1 = MASK$1 | 1;
	}
	label$86:;
	label$84:;
	struct $7ASTNODE* vr$54 = ASTNEWCONSTI( (int64)MASK$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$55 = ASTNEWARG( PROC$1, vr$54, -2147483648u, -1 );
	if( vr$55 != (struct $7ASTNODE*)0u ) goto label$88;
	{
		goto label$15;
	}
	label$88:;
	label$87:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$15:;
	return fb$result$1;
}

int32 RTLPRINTSPCTAB( struct $7ASTNODE* FILEEXPR$1, struct $7ASTNODE* EXPR$1, int32 ISTAB$1, int32 ISLPRINT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$91:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	if( ISLPRINT$1 == 0 ) goto label$94;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0u );
	}
	label$94:;
	label$93:;
	if( ISTAB$1 == 0 ) goto label$96;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_PrintTab", 189 );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
		PROC$1 = vr$2;
	}
	goto label$95;
	label$96:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_PrintSPC", 188 );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0u );
		PROC$1 = vr$4;
	}
	label$95:;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, FILEEXPR$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$98;
	{
		goto label$92;
	}
	label$98:;
	label$97:;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$100;
	{
		goto label$92;
	}
	label$100:;
	label$99:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$92:;
	return fb$result$1;
}

int32 RTLWRITE( struct $7ASTNODE* FILEEXPR$1, int32 ISCOMMA$1, struct $7ASTNODE* EXPR$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$101:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 MASK$1;
	fb$result$1 = 0;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$104;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WriteVoid", 190 );
		F$1 = vr$1;
	}
	goto label$103;
	label$104:;
	{
		ASTTRYOVLSTRINGCONV( &EXPR$1 );
		{
			int32 TMP$154$3;
			TMP$154$3 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			if( TMP$154$3 == 20 ) goto label$107;
			label$108:;
			if( TMP$154$3 != 10 ) goto label$106;
			label$107:;
			{
				struct $7ASTNODE* vr$5 = ASTNEWOVLCONV( 17, (struct $8FBSYMBOL*)0u, EXPR$1 );
				EXPR$1 = vr$5;
				if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$110;
				{
					goto label$102;
				}
				label$110:;
				label$109:;
			}
			goto label$105;
			label$106:;
			{
				if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) == 0 ) goto label$113;
				{
					struct $7ASTNODE* vr$8 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
					EXPR$1 = vr$8;
				}
				label$113:;
				label$112:;
			}
			label$111:;
			label$105:;
		}
		{
			uint32 TMP$155$3;
			TMP$155$3 = (uint32)(*(int32*)((uint8*)EXPR$1 + 4) & 511);
			goto label$115;
			label$116:;
			{
				struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_WriteString", 202 );
				F$1 = vr$11;
			}
			goto label$114;
			label$117:;
			{
				struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_WriteWstr", 203 );
				F$1 = vr$12;
			}
			goto label$114;
			label$118:;
			{
				struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_WriteBool", 191 );
				F$1 = vr$13;
			}
			goto label$114;
			label$119:;
			{
				{
					int32 TMP$156$5;
					uint32 TMP$157$5;
					if( (*(int32*)((uint8*)EXPR$1 + 4) & 480) == 0 ) goto label$120;
					TMP$156$5 = 24;
					goto label$144;
					label$120:;
					TMP$156$5 = *(int32*)((uint8*)EXPR$1 + 4) & 31;
					label$144:;
					TMP$157$5 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$156$5 * 28)) + 20);
					goto label$122;
					label$123:;
					{
						struct $8FBSYMBOL* vr$19 = RTLPROCLOOKUP( (uint8*)"fb_WriteByte", 192 );
						F$1 = vr$19;
					}
					goto label$121;
					label$124:;
					{
						struct $8FBSYMBOL* vr$20 = RTLPROCLOOKUP( (uint8*)"fb_WriteUByte", 193 );
						F$1 = vr$20;
					}
					goto label$121;
					label$125:;
					{
						struct $8FBSYMBOL* vr$21 = RTLPROCLOOKUP( (uint8*)"fb_WriteShort", 194 );
						F$1 = vr$21;
					}
					goto label$121;
					label$126:;
					{
						struct $8FBSYMBOL* vr$22 = RTLPROCLOOKUP( (uint8*)"fb_WriteUShort", 195 );
						F$1 = vr$22;
					}
					goto label$121;
					label$127:;
					{
						struct $8FBSYMBOL* vr$23 = RTLPROCLOOKUP( (uint8*)"fb_WriteInt", 196 );
						F$1 = vr$23;
					}
					goto label$121;
					label$128:;
					{
						struct $8FBSYMBOL* vr$24 = RTLPROCLOOKUP( (uint8*)"fb_WriteUInt", 197 );
						F$1 = vr$24;
					}
					goto label$121;
					label$129:;
					{
						struct $8FBSYMBOL* vr$25 = RTLPROCLOOKUP( (uint8*)"fb_WriteLongint", 198 );
						F$1 = vr$25;
					}
					goto label$121;
					label$130:;
					{
						struct $8FBSYMBOL* vr$26 = RTLPROCLOOKUP( (uint8*)"fb_WriteULongint", 199 );
						F$1 = vr$26;
					}
					goto label$121;
					label$122:;
					static const void* tmp$158[8] = {
						&&label$123,
						&&label$124,
						&&label$125,
						&&label$126,
						&&label$127,
						&&label$128,
						&&label$129,
						&&label$130,
					};
					if( (TMP$157$5 - 1u) > 7u ) goto label$121;
					goto *tmp$158[TMP$157$5 - 1u];
					label$121:;
				}
			}
			goto label$114;
			label$131:;
			{
				struct $8FBSYMBOL* vr$27 = RTLPROCLOOKUP( (uint8*)"fb_WriteSingle", 200 );
				F$1 = vr$27;
			}
			goto label$114;
			label$132:;
			{
				struct $8FBSYMBOL* vr$28 = RTLPROCLOOKUP( (uint8*)"fb_WriteDouble", 201 );
				F$1 = vr$28;
			}
			goto label$114;
			label$133:;
			{
				goto label$102;
			}
			goto label$114;
			label$115:;
			static const void* tmp$159[18] = {
				&&label$118,
				&&label$119,
				&&label$119,
				&&label$116,
				&&label$119,
				&&label$119,
				&&label$117,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$119,
				&&label$131,
				&&label$132,
				&&label$116,
				&&label$116,
			};
			if( (TMP$155$3 - 1u) > 17u ) goto label$133;
			goto *tmp$159[TMP$155$3 - 1u];
			label$114:;
		}
	}
	label$103:;
	struct $7ASTNODE* vr$29 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$29;
	struct $7ASTNODE* vr$30 = ASTNEWARG( PROC$1, FILEEXPR$1, -2147483648u, -1 );
	if( vr$30 != (struct $7ASTNODE*)0u ) goto label$135;
	{
		goto label$102;
	}
	label$135:;
	label$134:;
	if( EXPR$1 == (struct $7ASTNODE*)0u ) goto label$137;
	{
		struct $7ASTNODE* vr$31 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
		if( vr$31 != (struct $7ASTNODE*)0u ) goto label$139;
		{
			goto label$102;
		}
		label$139:;
		label$138:;
	}
	label$137:;
	label$136:;
	MASK$1 = 0;
	if( ISCOMMA$1 == 0 ) goto label$141;
	{
		MASK$1 = MASK$1 | 2;
	}
	goto label$140;
	label$141:;
	{
		MASK$1 = MASK$1 | 1;
	}
	label$140:;
	struct $7ASTNODE* vr$35 = ASTNEWCONSTI( (int64)MASK$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$36 = ASTNEWARG( PROC$1, vr$35, -2147483648u, -1 );
	if( vr$36 != (struct $7ASTNODE*)0u ) goto label$143;
	{
		goto label$102;
	}
	label$143:;
	label$142:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$102:;
	return fb$result$1;
}

int32 RTLPRINTUSINGINIT( struct $7ASTNODE* USINGEXPR$1, int32 ISLPRINT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$145:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = 0;
	if( ISLPRINT$1 == 0 ) goto label$148;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_LPrintUsingInit", 213 );
		F$1 = vr$1;
	}
	goto label$147;
	label$148:;
	{
		struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingInit", 204 );
		F$1 = vr$2;
	}
	label$147:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, USINGEXPR$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$150;
	{
		goto label$146;
	}
	label$150:;
	label$149:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$146:;
	return fb$result$1;
}

int32 RTLPRINTUSINGEND( struct $7ASTNODE* FILEEXPR$1, int32 ISLPRINT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$151:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	if( ISLPRINT$1 == 0 ) goto label$154;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0u );
	}
	label$154:;
	label$153:;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingEnd", 212 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, FILEEXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$156;
	{
		goto label$152;
	}
	label$156:;
	label$155:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$152:;
	return fb$result$1;
}

int32 RTLPRINTUSING( struct $7ASTNODE* FILEEXPR$1, struct $7ASTNODE* EXPR$1, int32 ISCOMMA$1, int32 ISSEMICOLON$1, int32 ISLPRINT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$157:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 MASK$1;
	fb$result$1 = 0;
	if( ISLPRINT$1 == 0 ) goto label$160;
	{
		RTLPRINTER_CB( (struct $8FBSYMBOL*)0u );
	}
	label$160:;
	label$159:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$162;
	{
		goto label$158;
	}
	label$162:;
	label$161:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	{
		int32 TMP$160$2;
		TMP$160$2 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
		if( TMP$160$2 == 20 ) goto label$165;
		label$166:;
		if( TMP$160$2 != 10 ) goto label$164;
		label$165:;
		{
			struct $7ASTNODE* vr$4 = ASTNEWOVLCONV( 16, (struct $8FBSYMBOL*)0u, EXPR$1 );
			EXPR$1 = vr$4;
			if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$168;
			{
				goto label$158;
			}
			label$168:;
			label$167:;
		}
		label$164:;
		label$163:;
	}
	{
		int32 TMP$161$2;
		TMP$161$2 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
		if( TMP$161$2 == 18 ) goto label$171;
		label$172:;
		if( TMP$161$2 == 17 ) goto label$171;
		label$173:;
		if( TMP$161$2 != 4 ) goto label$170;
		label$171:;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingStr", 205 );
			F$1 = vr$7;
		}
		goto label$169;
		label$170:;
		if( TMP$161$2 != 7 ) goto label$174;
		label$175:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingWstr", 206 );
			F$1 = vr$8;
		}
		goto label$169;
		label$174:;
		if( TMP$161$2 != 15 ) goto label$176;
		label$177:;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingSingle", 207 );
			F$1 = vr$9;
		}
		goto label$169;
		label$176:;
		if( TMP$161$2 == 13 ) goto label$179;
		label$180:;
		if( TMP$161$2 == 8 ) goto label$179;
		label$181:;
		if( TMP$161$2 == 11 ) goto label$179;
		label$182:;
		if( TMP$161$2 == 5 ) goto label$179;
		label$183:;
		if( TMP$161$2 != 2 ) goto label$178;
		label$179:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingLongint", 209 );
			F$1 = vr$10;
		}
		goto label$169;
		label$178:;
		if( TMP$161$2 == 14 ) goto label$185;
		label$186:;
		if( TMP$161$2 == 9 ) goto label$185;
		label$187:;
		if( TMP$161$2 == 12 ) goto label$185;
		label$188:;
		if( TMP$161$2 == 6 ) goto label$185;
		label$189:;
		if( TMP$161$2 != 3 ) goto label$184;
		label$185:;
		{
			struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingULongint", 210 );
			F$1 = vr$11;
		}
		goto label$169;
		label$184:;
		if( TMP$161$2 != 1 ) goto label$190;
		label$191:;
		{
			struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingBoolean", 211 );
			F$1 = vr$12;
		}
		goto label$169;
		label$190:;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_PrintUsingDouble", 208 );
			F$1 = vr$13;
		}
		label$192:;
		label$169:;
	}
	struct $7ASTNODE* vr$14 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, FILEEXPR$1, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$194;
	{
		goto label$158;
	}
	label$194:;
	label$193:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$196;
	{
		goto label$158;
	}
	label$196:;
	label$195:;
	if( (ISCOMMA$1 | ISSEMICOLON$1) == 0 ) goto label$198;
	{
		MASK$1 = 0;
	}
	goto label$197;
	label$198:;
	{
		MASK$1 = -2147483647;
	}
	label$197:;
	struct $7ASTNODE* vr$19 = ASTNEWCONSTI( (int64)MASK$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, vr$19, -2147483648u, -1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$200;
	{
		goto label$158;
	}
	label$200:;
	label$199:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$158:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWIDTHDEV( struct $7ASTNODE* DEVICE$1, struct $7ASTNODE* WIDTH_ARG$1, int32 ISFUNC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$201:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	RTLPRINTER_CB( (struct $8FBSYMBOL*)0u );
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WidthDev", 290 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, DEVICE$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$204;
	{
		goto label$202;
	}
	label$204:;
	label$203:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, WIDTH_ARG$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$206;
	{
		goto label$202;
	}
	label$206:;
	label$205:;
	if( ISFUNC$1 != 0 ) goto label$208;
	{
		struct $7ASTNODE* vr$5 = RTLERRORCHECK( PROC$1 );
		ASTADD( vr$5 );
	}
	label$208:;
	label$207:;
	fb$result$1 = PROC$1;
	label$202:;
	return fb$result$1;
}

int32 RTLPRINTER_CB( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$209:;
	static int32 RESTART_COUNT$1;
	static int32 LIBSADDED$1 = 0;
	int32 vr$1 = FBRESTARTGETCOUNT(  );
	if( RESTART_COUNT$1 == vr$1 ) goto label$212;
	{
		int32 vr$2 = FBRESTARTGETCOUNT(  );
		RESTART_COUNT$1 = vr$2;
		LIBSADDED$1 = 0;
	}
	label$212:;
	label$211:;
	if( LIBSADDED$1 != 0 ) goto label$214;
	{
		LIBSADDED$1 = -1;
		{
			$13FB_COMPTARGET TMP$163$3;
			TMP$163$3 = *($13FB_COMPTARGET*)((uint8*)&ENV$ + 108);
			if( TMP$163$3 == 0 ) goto label$217;
			label$218:;
			if( TMP$163$3 != 1 ) goto label$216;
			label$217:;
			{
				FBADDLIB( (uint8*)"winspool" );
				FBADDLIB( (uint8*)"gdi32" );
			}
			label$216:;
			label$215:;
		}
	}
	label$214:;
	label$213:;
	fb$result$1 = -1;
	label$210:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzprint( void )
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
