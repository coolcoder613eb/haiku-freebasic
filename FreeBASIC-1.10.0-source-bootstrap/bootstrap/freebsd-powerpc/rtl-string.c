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
typedef FBSTRING* (*tmp$28)( void*, int32* );
typedef uint32* (*tmp$29)( void*, int32* );
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
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 12 );
typedef int32 $9FB_ERRMSG;
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 120 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
int64 __divdi3( int64, int64 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_IntToStr( int32 );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( uint8* );
int32 fb_StrLen( void*, int32 );
int32 fb_WstrLen( uint32* );
static void fb_ctor__rtlzstring( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
int32 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTWSTR( uint32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
uint32* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
double ASTCONSTGETASDOUBLE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
typedef int32 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int32, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int32 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int32 );
uint8* HUNESCAPE( uint8*, int32* );
uint32* HUNESCAPEW( uint32*, int32* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int32 );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRCONCATWA( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRCONCATAW( struct $7ASTNODE*, int32, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRASSIGNWA( struct $7ASTNODE*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRASSIGNAW( struct $7ASTNODE*, int32, struct $7ASTNODE*, int32 );
struct $7ASTNODE* RTLWSTRTOA( struct $7ASTNODE* );
struct $7ASTNODE* RTLATOWSTR( struct $7ASTNODE* );
static struct $8FBSYMBOL* HEVALASCCASE( struct $8FBSYMBOL*, int32 );
typedef int32 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 16 );
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[190] = { { (uint8*)"fb_StrInit", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 5, { { 0, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_WstrAssignToA_Init", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 4, { { 0, 2, 0 }, { 520, 1, 0 }, { 1063, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_StrAssign", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 5, { { 0, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_WstrAssign", (uint8*)0u, 39, -1, (tmp$33)0u, 0, 3, { { 39, 1, 0 }, { 520, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_WstrAssignFromA", (uint8*)0u, 39, -1, (tmp$33)0u, 0, 4, { { 39, 1, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrAssignToA", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 4, { { 0, 2, 0 }, { 520, 1, 0 }, { 1063, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_StrDelete", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_hStrDelTemp", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_WstrDelete", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_StrConcat", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 5, { { 17, 2, 0 }, { 512, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_StrConcatByref", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 5, { { 0, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_WstrConcat", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_WstrConcatWA", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 3, { { 1063, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrConcatAW", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 3, { { 512, 2, 0 }, { 520, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrCompare", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 4, { { 512, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrCompare", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrConcatAssign", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 5, { { 0, 2, 0 }, { 520, 1, 0 }, { 512, 2, 0 }, { 520, 1, 0 }, { 523, 1, -1, 1 } } }, { (uint8*)"fb_WstrConcatAssign", (uint8*)0u, 39, -1, (tmp$33)0u, 0, 3, { { 39, 1, 0 }, { 520, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrAllocTempResult", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_StrAllocTempDescF", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_StrAllocTempDescZ", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 1060, 1, 0 } } }, { (uint8*)"fb_StrAllocTempDescZEx", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 1060, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrAlloc", (uint8*)0u, 39, -1, (tmp$33)0u, 0, 1, { { 520, 1, 0 } } }, { (uint8*)"fb_BoolToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 128, 1, { { 513, 1, 0 } } }, { (uint8*)"fb_IntToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_IntToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_BoolToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 513, 1, 0 } } }, { (uint8*)"fb_IntToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_UIntToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 524, 1, 0 } } }, { (uint8*)"fb_UIntToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 524, 1, 0 } } }, { (uint8*)"fb_UIntToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 524, 1, 0 } } }, { (uint8*)"fb_LongintToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 525, 1, 0 } } }, { (uint8*)"fb_LongintToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 525, 1, 0 } } }, { (uint8*)"fb_LongintToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 525, 1, 0 } } }, { (uint8*)"fb_ULongintToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 526, 1, 0 } } }, { (uint8*)"fb_ULongintToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 526, 1, 0 } } }, { (uint8*)"fb_ULongintToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 526, 1, 0 } } }, { (uint8*)"fb_FloatToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 527, 1, 0 } } }, { (uint8*)"fb_FloatToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 527, 1, 0 } } }, { (uint8*)"fb_FloatToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 527, 1, 0 } } }, { (uint8*)"fb_DoubleToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 528, 1, 0 } } }, { (uint8*)"fb_DoubleToStrQB", (uint8*)0u, 17, -1, (tmp$33)0u, 256, 1, { { 528, 1, 0 } } }, { (uint8*)"fb_DoubleToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 528, 1, 0 } } }, { (uint8*)"fb_WstrToStr", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_StrToWstr", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 1060, 1, 0 } } }, { (uint8*)"fb_StrMid", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 3, { { 529, 2, 0 }, { 520, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrMid", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 3, { { 1063, 1, 0 }, { 520, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_StrAssignMid", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 4, { { 17, 2, 0 }, { 520, 1, 0 }, { 520, 1, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrAssignMid", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 5, { { 39, 1, 0 }, { 520, 1, 0 }, { 520, 1, 0 }, { 520, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrFill1", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WstrFill1", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_StrFill2", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrFill2", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 520, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrLen", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 2, { { 512, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrLen", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_StrLset", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 17, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrLset", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 2, { { 39, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrRset", (uint8*)0u, 0, -1, (tmp$33)0u, 1, 2, { { 17, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrRset", (uint8*)0u, 0, -1, (tmp$33)0u, 129, 2, { { 39, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_ASC", (uint8*)0u, 12, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 520, 1, -1, 0 } } }, { (uint8*)"fb_WstrAsc", (uint8*)0u, 12, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 520, 1, -1, 0 } } }, { (uint8*)"fb_CHR", (uint8*)0u, 17, 3, (tmp$33)0u, 0, 2, { { 523, 1, 0 }, { -2147483648u, 4, 0 } } }, { (uint8*)"fb_WstrChr", (uint8*)0u, 7, 3, (tmp$33)0u, 0, 2, { { 523, 1, 0 }, { -2147483648u, 4, 0 } } }, { (uint8*)"fb_StrInstr", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 520, 1, 0 }, { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrInstr", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 520, 1, 0 }, { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrInstrAny", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 520, 1, 0 }, { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrInstrAny", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 520, 1, 0 }, { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrInstrRev", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 529, 2, 0 }, { 529, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrInstrRev", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 1063, 1, 0 }, { 1063, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_StrInstrRevAny", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 529, 2, 0 }, { 529, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_WstrInstrRevAny", (uint8*)0u, 8, -1, (tmp$33)0u, 0, 3, { { 1063, 1, 0 }, { 1063, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_TRIM", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_WstrTrim", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_TrimAny", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrTrimAny", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_TrimEx", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrTrimEx", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_RTRIM", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_WstrRTrim", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_RTrimAny", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrRTrimAny", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_RTrimEx", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrRTrimEx", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_LTRIM", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_WstrLTrim", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 1, { { 1063, 1, 0 } } }, { (uint8*)"fb_LTrimAny", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrLTrimAny", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_LTrimEx", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 529, 2, 0 } } }, { (uint8*)"fb_WstrLTrimEx", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 1063, 1, 0 }, { 1063, 1, 0 } } }, { (uint8*)"fb_StrSwap", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 6, { { 0, 2, 0 }, { 520, 1, 0 }, { 523, 1, 0 }, { 0, 2, 0 }, { 520, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_WstrSwap", (uint8*)0u, 0, -1, (tmp$33)0u, 0, 4, { { 39, 1, 0 }, { 520, 1, 0 }, { 39, 1, 0 }, { 520, 1, 0 } } }, { (uint8*)"val", (uint8*)"fb_VAL", 16, -1, (tmp$33)0u, 1, 1, { { 529, 2, 0 } } }, { (uint8*)"val", (uint8*)"fb_WstrVal", 16, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"fb_VALBOOL", (uint8*)0u, 1, -1, (tmp$33)0u, 129, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_VALBOOL", (uint8*)"fb_WstrValBool", 1, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"valint", (uint8*)"fb_VALINT", 11, -1, (tmp$33)0u, 129, 1, { { 529, 2, 0 } } }, { (uint8*)"valint", (uint8*)"fb_WstrValInt", 11, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"valuint", (uint8*)"fb_VALUINT", 12, -1, (tmp$33)0u, 129, 1, { { 529, 2, 0 } } }, { (uint8*)"valuint", (uint8*)"fb_WstrValUInt", 12, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"vallng", (uint8*)"fb_VALLNG", 13, -1, (tmp$33)0u, 129, 1, { { 529, 2, 0 } } }, { (uint8*)"vallng", (uint8*)"fb_WstrValLng", 13, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"valulng", (uint8*)"fb_VALULNG", 14, -1, (tmp$33)0u, 129, 1, { { 529, 2, 0 } } }, { (uint8*)"valulng", (uint8*)"fb_WstrValULng", 14, -1, (tmp$33)0u, 129, 1, { { 519, 2, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEX_b", 17, -1, (tmp$33)0u, 65, 1, { { 515, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEX_s", 17, -1, (tmp$33)0u, 65, 1, { { 518, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEX_i", 17, -1, (tmp$33)0u, 65, 1, { { 524, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEX_l", 17, -1, (tmp$33)0u, 65, 1, { { 526, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEX_p", 17, -1, (tmp$33)0u, 65, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_b", 17, -1, (tmp$33)0u, 65, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_s", 17, -1, (tmp$33)0u, 65, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_i", 17, -1, (tmp$33)0u, 65, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_l", 17, -1, (tmp$33)0u, 65, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_p", 17, -1, (tmp$33)0u, 65, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_b", 7, -1, (tmp$33)0u, 129, 1, { { 515, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_s", 7, -1, (tmp$33)0u, 129, 1, { { 518, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_i", 7, -1, (tmp$33)0u, 129, 1, { { 524, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_l", 7, -1, (tmp$33)0u, 129, 1, { { 526, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_p", 7, -1, (tmp$33)0u, 129, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_b", 7, -1, (tmp$33)0u, 129, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_s", 7, -1, (tmp$33)0u, 129, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_i", 7, -1, (tmp$33)0u, 129, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_l", 7, -1, (tmp$33)0u, 129, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_p", 7, -1, (tmp$33)0u, 129, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCT_b", 17, -1, (tmp$33)0u, 65, 1, { { 515, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCT_s", 17, -1, (tmp$33)0u, 65, 1, { { 518, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCT_i", 17, -1, (tmp$33)0u, 65, 1, { { 524, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCT_l", 17, -1, (tmp$33)0u, 65, 1, { { 526, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCT_p", 17, -1, (tmp$33)0u, 65, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_b", 17, -1, (tmp$33)0u, 65, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_s", 17, -1, (tmp$33)0u, 65, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_i", 17, -1, (tmp$33)0u, 65, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_l", 17, -1, (tmp$33)0u, 65, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_p", 17, -1, (tmp$33)0u, 65, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_b", 7, -1, (tmp$33)0u, 129, 1, { { 515, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_s", 7, -1, (tmp$33)0u, 129, 1, { { 518, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_i", 7, -1, (tmp$33)0u, 129, 1, { { 524, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_l", 7, -1, (tmp$33)0u, 129, 1, { { 526, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_p", 7, -1, (tmp$33)0u, 129, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_b", 7, -1, (tmp$33)0u, 129, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_s", 7, -1, (tmp$33)0u, 129, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_i", 7, -1, (tmp$33)0u, 129, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_l", 7, -1, (tmp$33)0u, 129, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_p", 7, -1, (tmp$33)0u, 129, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BIN_b", 17, -1, (tmp$33)0u, 129, 1, { { 515, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BIN_s", 17, -1, (tmp$33)0u, 129, 1, { { 518, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BIN_i", 17, -1, (tmp$33)0u, 129, 1, { { 524, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BIN_l", 17, -1, (tmp$33)0u, 129, 1, { { 526, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BIN_p", 17, -1, (tmp$33)0u, 129, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_b", 17, -1, (tmp$33)0u, 129, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_s", 17, -1, (tmp$33)0u, 129, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_i", 17, -1, (tmp$33)0u, 129, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_l", 17, -1, (tmp$33)0u, 129, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_p", 17, -1, (tmp$33)0u, 129, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_b", 7, -1, (tmp$33)0u, 129, 1, { { 515, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_s", 7, -1, (tmp$33)0u, 129, 1, { { 518, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_i", 7, -1, (tmp$33)0u, 129, 1, { { 524, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_l", 7, -1, (tmp$33)0u, 129, 1, { { 526, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_p", 7, -1, (tmp$33)0u, 129, 1, { { 1056, 1, 0, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_b", 7, -1, (tmp$33)0u, 129, 2, { { 515, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_s", 7, -1, (tmp$33)0u, 129, 2, { { 518, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_i", 7, -1, (tmp$33)0u, 129, 2, { { 524, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_l", 7, -1, (tmp$33)0u, 129, 2, { { 526, 1, 0 }, { 523, 1, 0 } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_p", 7, -1, (tmp$33)0u, 129, 2, { { 1056, 1, 0, 0 }, { 523, 1, 0 } } }, { (uint8*)"fb_MKD", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 528, 1, 0 } } }, { (uint8*)"fb_MKS", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 527, 1, 0 } } }, { (uint8*)"fb_MKSHORT", (uint8*)0u, 17, -1, (tmp$33)0u, 128, 1, { { 517, 1, 0 } } }, { (uint8*)"fb_MKI", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 520, 1, 0 } } }, { (uint8*)"fb_MKL", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_MKLONGINT", (uint8*)0u, 17, -1, (tmp$33)0u, 128, 1, { { 525, 1, 0 } } }, { (uint8*)"left", (uint8*)"fb_LEFT", 17, -1, (tmp$33)0u, 65, 2, { { 529, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"left", (uint8*)"fb_WstrLeft", 7, -1, (tmp$33)0u, 129, 2, { { 519, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"fb_LeftSelf", (uint8*)"fb_LEFTSELF", 0, -1, (tmp$33)0u, 129, 2, { { 529, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"right", (uint8*)"fb_RIGHT", 17, -1, (tmp$33)0u, 65, 2, { { 529, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"right", (uint8*)"fb_WstrRight", 7, -1, (tmp$33)0u, 129, 2, { { 519, 2, 0 }, { 520, 1, 0 } } }, { (uint8*)"space", (uint8*)"fb_SPACE", 17, -1, (tmp$33)0u, 64, 1, { { 520, 1, 0 } } }, { (uint8*)"wspace", (uint8*)"fb_WstrSpace", 7, -1, (tmp$33)0u, 128, 1, { { 520, 1, 0 } } }, { (uint8*)"fb_StrLcase2", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_WstrLcase2", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 519, 2, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_StrUcase2", (uint8*)0u, 17, -1, (tmp$33)0u, 0, 2, { { 529, 2, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_WstrUcase2", (uint8*)0u, 7, -1, (tmp$33)0u, 0, 2, { { 519, 2, 0 }, { 523, 1, -1, 0 } } }, { (uint8*)"fb_CVD", (uint8*)"fb_CVD", 16, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_CVS", (uint8*)"fb_CVS", 15, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_CVSHORT", (uint8*)"fb_CVSHORT", 5, -1, (tmp$33)0u, 128, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_CVL", (uint8*)0u, 11, -1, (tmp$33)0u, 0, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_CVLONGINT", (uint8*)"fb_CVLONGINT", 13, -1, (tmp$33)0u, 128, 1, { { 529, 2, 0 } } }, { (uint8*)"fb_CVDFROMLONGINT", (uint8*)"fb_CVDFROMLONGINT", 16, -1, (tmp$33)0u, 128, 1, { { 525, 1, 0 } } }, { (uint8*)"fb_CVSFROML", (uint8*)"fb_CVSFROML", 15, -1, (tmp$33)0u, 128, 1, { { 523, 1, 0 } } }, { (uint8*)"fb_CVLFROMS", (uint8*)"fb_CVLFROMS", 11, -1, (tmp$33)0u, 128, 1, { { 527, 1, 0 } } }, { (uint8*)"fb_CVLONGINTFROMD", (uint8*)"fb_CVLONGINTFROMD", 13, -1, (tmp$33)0u, 128, 1, { { 528, 1, 0 } } }, { (uint8*)0u } };

void RTLSTRINGMODINIT( void )
{
	label$10:;
	RTLADDINTRINSICPROCS( (struct $14FB_RTL_PROCDEF*)FUNCDATA$ );
	label$11:;
}

void RTLSTRINGMODEND( void )
{
	label$12:;
	label$13:;
}

struct $7ASTNODE* RTLSTRCOMPARE( struct $7ASTNODE* STR1$1, int32 SDTYPE1$1, struct $7ASTNODE* STR2$1, int32 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	int64 STR2LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrCompare", 6 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( STR1LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$19;
	{
		goto label$15;
	}
	label$19:;
	label$18:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$21;
	{
		goto label$15;
	}
	label$21:;
	label$20:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( STR2LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$23;
	{
		goto label$15;
	}
	label$23:;
	label$22:;
	fb$result$1 = PROC$1;
	label$15:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCOMPARE( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$24:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrCompare", 81 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STR1$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, STR2$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$29;
	{
		goto label$25;
	}
	label$29:;
	label$28:;
	fb$result$1 = PROC$1;
	label$25:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCONCAT( struct $7ASTNODE* STR1$1, int32 SDTYPE1$1, struct $7ASTNODE* STR2$1, int32 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	int64 STR2LEN$1;
	struct $8FBSYMBOL* TMP$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrConcat", 4 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBADDTEMPVAR( 17, (struct $8FBSYMBOL*)0u );
	TMP$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( TMP$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$5 = ASTBUILDTEMPVARCLEAR( TMP$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( vr$5, vr$4, 2 );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$33;
	{
		goto label$31;
	}
	label$33:;
	label$32:;
	int64 vr$8 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$8;
	int64 vr$9 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$35;
	{
		goto label$31;
	}
	label$35:;
	label$34:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( STR1LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$37;
	{
		goto label$31;
	}
	label$37:;
	label$36:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$39;
	{
		goto label$31;
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( STR2LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$41;
	{
		goto label$31;
	}
	label$41:;
	label$40:;
	fb$result$1 = PROC$1;
	label$31:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCATWA( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1, int32 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$42:;
	struct $7ASTNODE* PROC$1;
	int64 STR2LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatWA", 79 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STR1$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$45;
	{
		goto label$43;
	}
	label$45:;
	label$44:;
	int64 vr$4 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$47;
	{
		goto label$43;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( STR2LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$49;
	{
		goto label$43;
	}
	label$49:;
	label$48:;
	fb$result$1 = PROC$1;
	label$43:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCATAW( struct $7ASTNODE* STR1$1, int32 SDTYPE1$1, struct $7ASTNODE* STR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$50:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatAW", 80 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$53;
	{
		goto label$51;
	}
	label$53:;
	label$52:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( STR1LEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, vr$5, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$55;
	{
		goto label$51;
	}
	label$55:;
	label$54:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, STR2$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$57;
	{
		goto label$51;
	}
	label$57:;
	label$56:;
	fb$result$1 = PROC$1;
	label$51:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCAT( struct $7ASTNODE* STR1$1, int32 SDTYPE1$1, struct $7ASTNODE* STR2$1, int32 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$58:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (SDTYPE1$1 & 511) == (SDTYPE2$1 & 511) ) goto label$61;
	{
		int32 TMP$289$2;
		if( (SDTYPE1$1 & 480) == 0 ) goto label$62;
		TMP$289$2 = 24;
		goto label$69;
		label$62:;
		TMP$289$2 = SDTYPE1$1 & 31;
		label$69:;
		if( TMP$289$2 != 7 ) goto label$64;
		{
			struct $7ASTNODE* vr$5 = RTLWSTRCONCATWA( STR1$1, STR2$1, SDTYPE2$1 );
			fb$result$1 = vr$5;
			goto label$59;
		}
		goto label$63;
		label$64:;
		{
			struct $7ASTNODE* vr$6 = RTLWSTRCONCATAW( STR1$1, SDTYPE1$1, STR2$1 );
			fb$result$1 = vr$6;
			goto label$59;
		}
		label$63:;
	}
	label$61:;
	label$60:;
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcat", 78 );
	struct $7ASTNODE* vr$8 = ASTNEWCALL( vr$7, (struct $7ASTNODE*)0u );
	PROC$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, STR1$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$66;
	{
		goto label$59;
	}
	label$66:;
	label$65:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, STR2$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$68;
	{
		goto label$59;
	}
	label$68:;
	label$67:;
	fb$result$1 = PROC$1;
	label$59:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCONCATASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int32 ISCONCATBYREF$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$70:;
	struct $7ASTNODE* PROC$1;
	int32 DDTYPE$1;
	int32 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( ISCONCATBYREF$1 == 0 ) goto label$73;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrConcatByref", 5 );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
		PROC$1 = vr$2;
	}
	goto label$72;
	label$73:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrConcatAssign", 7 );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0u );
		PROC$1 = vr$4;
	}
	label$72:;
	DDTYPE$1 = *(int32*)((uint8*)DST$1 + 4) & 511;
	int64 vr$7 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, DST$1, DDTYPE$1, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$75;
	{
		goto label$71;
	}
	label$75:;
	label$74:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$77;
	{
		goto label$71;
	}
	label$77:;
	label$76:;
	SDTYPE$1 = *(int32*)((uint8*)SRC$1 + 4) & 511;
	int64 vr$13 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	LGT$1 = vr$13;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, SRC$1, SDTYPE$1, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$79;
	{
		goto label$71;
	}
	label$79:;
	label$78:;
	struct $7ASTNODE* vr$15 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$81;
	{
		goto label$71;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$19 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, vr$19, -2147483648u, -1 );
	if( vr$20 != (struct $7ASTNODE*)0u ) goto label$83;
	{
		goto label$71;
	}
	label$83:;
	label$82:;
	fb$result$1 = PROC$1;
	label$71:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCATASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$84:;
	static struct $7ASTNODE* PROC$1;
	static int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatAssign", 82 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( DST$1, 7 );
	LGT$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$4 != (struct $7ASTNODE*)0u ) goto label$87;
	{
		goto label$85;
	}
	label$87:;
	label$86:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, vr$5, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$89;
	{
		goto label$85;
	}
	label$89:;
	label$88:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$91;
	{
		goto label$85;
	}
	label$91:;
	label$90:;
	fb$result$1 = PROC$1;
	label$85:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGNWA( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int32 SDTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$92:;
	struct $7ASTNODE* PROC$1;
	int64 DSTLEN$1;
	int64 SRCLEN$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignFromA", 75 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( DST$1, 7 );
	DSTLEN$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	SRCLEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( DSTLEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$97;
	{
		goto label$93;
	}
	label$97:;
	label$96:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$99;
	{
		goto label$93;
	}
	label$99:;
	label$98:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( SRCLEN$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$101;
	{
		goto label$93;
	}
	label$101:;
	label$100:;
	fb$result$1 = PROC$1;
	label$93:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGNAW( struct $7ASTNODE* DST$1, int32 DDTYPE$1, struct $7ASTNODE* SRC$1, int32 IS_INI$1 )
{
	struct $8FBSYMBOL* TMP$290$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$102:;
	struct $7ASTNODE* PROC$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( IS_INI$1 == 0 ) goto label$104;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignToA_Init", 77 );
	TMP$290$1 = vr$1;
	goto label$113;
	label$104:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignToA", 76 );
	TMP$290$1 = vr$2;
	label$113:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$290$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$5 != (struct $7ASTNODE*)0u ) goto label$106;
	{
		goto label$103;
	}
	label$106:;
	label$105:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$108;
	{
		goto label$103;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$110;
	{
		goto label$103;
	}
	label$110:;
	label$109:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$112;
	{
		goto label$103;
	}
	label$112:;
	label$111:;
	fb$result$1 = PROC$1;
	label$103:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int32 IS_INI$1 )
{
	struct $8FBSYMBOL* TMP$291$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$114:;
	struct $7ASTNODE* PROC$1;
	int32 DDTYPE$1;
	int32 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DDTYPE$1 = *(int32*)((uint8*)DST$1 + 4) & 511;
	SDTYPE$1 = *(int32*)((uint8*)SRC$1 + 4) & 511;
	if( SDTYPE$1 != 7 ) goto label$117;
	{
		struct $7ASTNODE* vr$5 = RTLWSTRASSIGNAW( DST$1, DDTYPE$1, SRC$1, IS_INI$1 );
		fb$result$1 = vr$5;
		goto label$115;
	}
	goto label$116;
	label$117:;
	if( DDTYPE$1 != 7 ) goto label$118;
	{
		struct $7ASTNODE* vr$6 = RTLWSTRASSIGNWA( DST$1, SRC$1, SDTYPE$1 );
		fb$result$1 = vr$6;
		goto label$115;
	}
	label$118:;
	label$116:;
	if( IS_INI$1 == 0 ) goto label$119;
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInit", 0 );
	TMP$291$1 = vr$7;
	goto label$130;
	label$119:;
	struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_StrAssign", 3 );
	TMP$291$1 = vr$8;
	label$130:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( TMP$291$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	int64 vr$10 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$10;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DST$1, *(int32*)((uint8*)DST$1 + 4) & 511, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$121;
	{
		goto label$115;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$123;
	{
		goto label$115;
	}
	label$123:;
	label$122:;
	int64 vr$16 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	LGT$1 = vr$16;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$17 != (struct $7ASTNODE*)0u ) goto label$125;
	{
		goto label$115;
	}
	label$125:;
	label$124:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$127;
	{
		goto label$115;
	}
	label$127:;
	label$126:;
	struct $7ASTNODE* vr$22 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$23 = ASTNEWARG( PROC$1, vr$22, -2147483648u, -1 );
	if( vr$23 != (struct $7ASTNODE*)0u ) goto label$129;
	{
		goto label$115;
	}
	label$129:;
	label$128:;
	ASTSETTYPE( PROC$1, 0, (struct $8FBSYMBOL*)0u );
	fb$result$1 = PROC$1;
	label$115:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int32 IS_INI$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$131:;
	struct $7ASTNODE* PROC$1;
	int32 DDTYPE$1;
	int32 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DDTYPE$1 = *(int32*)((uint8*)DST$1 + 4) & 511;
	SDTYPE$1 = *(int32*)((uint8*)SRC$1 + 4) & 511;
	if( DDTYPE$1 == SDTYPE$1 ) goto label$134;
	{
		if( DDTYPE$1 != 7 ) goto label$136;
		{
			struct $7ASTNODE* vr$5 = RTLWSTRASSIGNWA( DST$1, SRC$1, SDTYPE$1 );
			fb$result$1 = vr$5;
			goto label$132;
		}
		goto label$135;
		label$136:;
		{
			struct $7ASTNODE* vr$6 = RTLWSTRASSIGNAW( DST$1, DDTYPE$1, SRC$1, IS_INI$1 );
			fb$result$1 = vr$6;
			goto label$132;
		}
		label$135:;
	}
	label$134:;
	label$133:;
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssign", 74 );
	struct $7ASTNODE* vr$8 = ASTNEWCALL( vr$7, (struct $7ASTNODE*)0u );
	PROC$1 = vr$8;
	int64 vr$9 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, DST$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$138;
	{
		goto label$132;
	}
	label$138:;
	label$137:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$140;
	{
		goto label$132;
	}
	label$140:;
	label$139:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, SRC$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$142;
	{
		goto label$132;
	}
	label$142:;
	label$141:;
	fb$result$1 = PROC$1;
	label$132:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRDELETE( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$143:;
	struct $8FBSYMBOL* PROC$1;
	struct $7ASTNODE* CALL_$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	if( DTYPE$1 != 39 ) goto label$146;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrDelete", 73 );
		PROC$1 = vr$3;
	}
	goto label$145;
	label$146:;
	{
		if( *(int32*)EXPR$1 != 9 ) goto label$148;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_hStrDelTemp", 2 );
			PROC$1 = vr$5;
		}
		goto label$147;
		label$148:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_StrDelete", 1 );
			PROC$1 = vr$6;
		}
		label$147:;
	}
	label$145:;
	struct $7ASTNODE* vr$7 = ASTNEWCALL( PROC$1, (struct $7ASTNODE*)0u );
	CALL_$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWARG( CALL_$1, EXPR$1, DTYPE$1, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$150;
	{
		goto label$144;
	}
	label$150:;
	label$149:;
	fb$result$1 = CALL_$1;
	label$144:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRALLOCTMPRESULT( struct $7ASTNODE* STRG$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$151:;
	static struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempResult", 8 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STRG$1, 17, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$154;
	{
		goto label$152;
	}
	label$154:;
	label$153:;
	fb$result$1 = PROC$1;
	label$152:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRALLOCTMPDESC( struct $7ASTNODE* STREXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$155:;
	struct $7ASTNODE* PROC$1;
	int32 DTYPE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* LITSYM$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)STREXPR$1 + 4) & 511;
	{
		uint32 TMP$292$2;
		TMP$292$2 = (uint32)DTYPE$1;
		goto label$158;
		label$159:;
		{
			struct $8FBSYMBOL* vr$3 = ASTGETSTRLITSYMBOL( STREXPR$1 );
			LITSYM$1 = vr$3;
			if( LITSYM$1 != (struct $8FBSYMBOL*)0u ) goto label$161;
			{
				struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescZ", 10 );
				struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
				PROC$1 = vr$5;
			}
			goto label$160;
			label$161:;
			{
				struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescZEx", 11 );
				struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0u );
				PROC$1 = vr$7;
			}
			label$160:;
			struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, STREXPR$1, -2147483648u, -1 );
			if( vr$8 != (struct $7ASTNODE*)0u ) goto label$163;
			{
				goto label$156;
			}
			label$163:;
			label$162:;
			if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$165;
			{
				LGT$1 = *(int64*)((uint8*)LITSYM$1 + 40) + -1ll;
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
				struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, -2147483648u, -1 );
				if( vr$12 != (struct $7ASTNODE*)0u ) goto label$167;
				{
					goto label$156;
				}
				label$167:;
				label$166:;
			}
			label$165:;
			label$164:;
		}
		goto label$157;
		label$168:;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescF", 9 );
			struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0u );
			PROC$1 = vr$14;
			int64 vr$15 = RTLCALCSTRLEN( STREXPR$1, DTYPE$1 );
			LGT$1 = vr$15;
			struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, STREXPR$1, -2147483648u, -1 );
			if( vr$16 != (struct $7ASTNODE*)0u ) goto label$170;
			{
				goto label$156;
			}
			label$170:;
			label$169:;
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( LGT$1, 8, (struct $8FBSYMBOL*)0u );
			struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, vr$17, -2147483648u, -1 );
			if( vr$18 != (struct $7ASTNODE*)0u ) goto label$172;
			{
				goto label$156;
			}
			label$172:;
			label$171:;
		}
		goto label$157;
		label$158:;
		static const void* tmp$293[15] = {
			&&label$159,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$157,
			&&label$168,
		};
		if( (TMP$292$2 - 4u) > 14u ) goto label$157;
		goto *tmp$293[TMP$292$2 - 4u];
		label$157:;
	}
	fb$result$1 = PROC$1;
	label$156:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRALLOC( struct $7ASTNODE* LENEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$173:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAlloc", 72 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, LENEXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$176;
	{
		goto label$174;
	}
	label$176:;
	label$175:;
	fb$result$1 = PROC$1;
	label$174:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRTOA( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$177:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrToStr", 19 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$180;
	{
		goto label$178;
	}
	label$180:;
	label$179:;
	fb$result$1 = PROC$1;
	label$178:;
	return fb$result$1;
}

struct $7ASTNODE* RTLATOWSTR( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$181:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrToWstr", 90 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$184;
	{
		goto label$182;
	}
	label$184:;
	label$183:;
	fb$result$1 = PROC$1;
	label$182:;
	return fb$result$1;
}

struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE* EXPR$1, int32 PAD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$185:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITSYM$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	if( *(int32*)EXPR$1 != 16 ) goto label$188;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 12 );
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 1 ) goto label$190;
		{
		}
		goto label$189;
		label$190:;
		{
			if( PAD$1 == 0 ) goto label$192;
			{
				int32 TMP$294$4;
				if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$193;
				TMP$294$4 = 24;
				goto label$239;
				label$193:;
				TMP$294$4 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
				label$239:;
				if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$294$4 * 28)) + 8) == 0 ) goto label$195;
				{
					double vr$14 = ASTCONSTGETASDOUBLE( EXPR$1 );
					if( vr$14 < 0x0p+0 ) goto label$197;
					{
						fb_StrAssign( (void*)&S$2, -1, (void*)" ", 2, 0 );
					}
					label$197:;
					label$196:;
				}
				goto label$194;
				label$195:;
				{
					fb_StrAssign( (void*)&S$2, -1, (void*)" ", 2, 0 );
				}
				label$194:;
			}
			label$192:;
			label$191:;
		}
		label$189:;
		FBSTRING* vr$17 = ASTCONSTFLUSHTOSTR( EXPR$1 );
		fb_StrConcatAssign( (void*)&S$2, -1, (void*)vr$17, -1, 0 );
		struct $7ASTNODE* vr$19 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&S$2 );
		fb$result$1 = vr$19;
		fb_StrDelete( (FBSTRING*)&S$2 );
		goto label$186;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$188:;
	label$187:;
	if( DTYPE$1 != 7 ) goto label$199;
	{
		struct $8FBSYMBOL* vr$22 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITSYM$1 = vr$22;
		if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$201;
		{
			if( *(int32*)((uint8*)&ENV$ + 288) == 0 ) goto label$203;
			{
				FBSTRING TMP$296$4;
				int64 vr$25 = __divdi3( *(int64*)((uint8*)LITSYM$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
				__builtin_memset( &TMP$296$4, 0, 12 );
				FBSTRING* vr$30 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)LITSYM$1 + 56) );
				fb_StrAssign( (void*)&TMP$296$4, -1, (void*)vr$30, -1, 0 );
				struct $8FBSYMBOL* vr$32 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$296$4, (int32)(vr$25 + -1ll) );
				LITSYM$1 = vr$32;
				fb_StrDelete( (FBSTRING*)&TMP$296$4 );
				struct $7ASTNODE* vr$34 = ASTNEWVAR( LITSYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$34;
				goto label$186;
			}
			label$203:;
			label$202:;
		}
		label$201:;
		label$200:;
	}
	label$199:;
	label$198:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	{
		int32 TMP$297$2;
		uint32 TMP$298$2;
		if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$204;
		TMP$297$2 = 24;
		goto label$240;
		label$204:;
		TMP$297$2 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
		label$240:;
		TMP$298$2 = *(uint32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$297$2 * 28));
		goto label$206;
		label$207:;
		{
			if( (DTYPE$1 & 480) == 0 ) goto label$209;
			{
				struct $7ASTNODE* vr$46 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
				EXPR$1 = vr$46;
				DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			}
			label$209:;
			label$208:;
			{
				if( DTYPE$1 != 4 ) goto label$211;
				label$212:;
				{
					fb$result$1 = EXPR$1;
					goto label$186;
				}
				goto label$210;
				label$211:;
				if( DTYPE$1 != 7 ) goto label$213;
				label$214:;
				{
					struct $7ASTNODE* vr$49 = RTLWSTRTOA( EXPR$1 );
					fb$result$1 = vr$49;
					goto label$186;
				}
				goto label$210;
				label$213:;
				if( DTYPE$1 != 1 ) goto label$215;
				label$216:;
				{
					struct $8FBSYMBOL* vr$50 = RTLPROCLOOKUP( (uint8*)"fb_BoolToStr", 12 );
					F$1 = vr$50;
				}
				goto label$210;
				label$215:;
				{
					{
						int32 TMP$299$6;
						uint32 TMP$300$6;
						if( (DTYPE$1 & 480) == 0 ) goto label$218;
						TMP$299$6 = 24;
						goto label$241;
						label$218:;
						TMP$299$6 = DTYPE$1 & 31;
						label$241:;
						TMP$300$6 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$299$6 * 28)) + 20);
						goto label$220;
						label$221:;
						{
							struct $8FBSYMBOL* TMP$301$7;
							if( PAD$1 != 0 ) goto label$222;
							struct $8FBSYMBOL* vr$54 = RTLPROCLOOKUP( (uint8*)"fb_LongintToStr", 15 );
							TMP$301$7 = vr$54;
							goto label$242;
							label$222:;
							struct $8FBSYMBOL* vr$55 = RTLPROCLOOKUP( (uint8*)"fb_LongintToStrQB", 22 );
							TMP$301$7 = vr$55;
							label$242:;
							F$1 = TMP$301$7;
						}
						goto label$219;
						label$223:;
						{
							struct $8FBSYMBOL* TMP$302$7;
							if( PAD$1 != 0 ) goto label$224;
							struct $8FBSYMBOL* vr$56 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToStr", 16 );
							TMP$302$7 = vr$56;
							goto label$243;
							label$224:;
							struct $8FBSYMBOL* vr$57 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToStrQB", 23 );
							TMP$302$7 = vr$57;
							label$243:;
							F$1 = TMP$302$7;
						}
						goto label$219;
						label$225:;
						{
							struct $8FBSYMBOL* TMP$303$7;
							if( PAD$1 != 0 ) goto label$226;
							struct $8FBSYMBOL* vr$58 = RTLPROCLOOKUP( (uint8*)"fb_UIntToStr", 14 );
							TMP$303$7 = vr$58;
							goto label$244;
							label$226:;
							struct $8FBSYMBOL* vr$59 = RTLPROCLOOKUP( (uint8*)"fb_UIntToStrQB", 21 );
							TMP$303$7 = vr$59;
							label$244:;
							F$1 = TMP$303$7;
						}
						goto label$219;
						label$227:;
						{
							struct $8FBSYMBOL* TMP$304$7;
							if( PAD$1 != 0 ) goto label$228;
							struct $8FBSYMBOL* vr$60 = RTLPROCLOOKUP( (uint8*)"fb_IntToStr", 13 );
							TMP$304$7 = vr$60;
							goto label$245;
							label$228:;
							struct $8FBSYMBOL* vr$61 = RTLPROCLOOKUP( (uint8*)"fb_IntToStrQB", 20 );
							TMP$304$7 = vr$61;
							label$245:;
							F$1 = TMP$304$7;
						}
						goto label$219;
						label$220:;
						static const void* tmp$307[7] = {
							&&label$225,
							&&label$227,
							&&label$225,
							&&label$227,
							&&label$225,
							&&label$221,
							&&label$223,
						};
						if( (TMP$300$6 - 2u) > 6u ) goto label$227;
						goto *tmp$307[TMP$300$6 - 2u];
						label$219:;
					}
				}
				label$217:;
				label$210:;
			}
		}
		goto label$205;
		label$229:;
		{
			if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 15 ) goto label$231;
			{
				struct $8FBSYMBOL* TMP$305$4;
				if( PAD$1 != 0 ) goto label$232;
				struct $8FBSYMBOL* vr$64 = RTLPROCLOOKUP( (uint8*)"fb_FloatToStr", 17 );
				TMP$305$4 = vr$64;
				goto label$246;
				label$232:;
				struct $8FBSYMBOL* vr$65 = RTLPROCLOOKUP( (uint8*)"fb_FloatToStrQB", 24 );
				TMP$305$4 = vr$65;
				label$246:;
				F$1 = TMP$305$4;
			}
			goto label$230;
			label$231:;
			{
				struct $8FBSYMBOL* TMP$306$4;
				if( PAD$1 != 0 ) goto label$233;
				struct $8FBSYMBOL* vr$66 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToStr", 18 );
				TMP$306$4 = vr$66;
				goto label$247;
				label$233:;
				struct $8FBSYMBOL* vr$67 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToStrQB", 25 );
				TMP$306$4 = vr$67;
				label$247:;
				F$1 = TMP$306$4;
			}
			label$230:;
		}
		goto label$205;
		label$234:;
		{
			fb$result$1 = EXPR$1;
			goto label$186;
		}
		goto label$205;
		label$235:;
		{
			struct $7ASTNODE* vr$68 = ASTNEWCONV( 17, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
			fb$result$1 = vr$68;
			goto label$186;
		}
		goto label$205;
		label$236:;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$186;
		}
		goto label$205;
		label$206:;
		static const void* tmp$308[4] = {
			&&label$207,
			&&label$229,
			&&label$234,
			&&label$235,
		};
		if( TMP$298$2 > 3u ) goto label$236;
		goto *tmp$308[TMP$298$2 - 0u];
		label$205:;
	}
	struct $7ASTNODE* vr$69 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$69;
	struct $7ASTNODE* vr$70 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$70 != (struct $7ASTNODE*)0u ) goto label$238;
	{
		goto label$186;
	}
	label$238:;
	label$237:;
	fb$result$1 = PROC$1;
	label$186:;
	return fb$result$1;
}

struct $7ASTNODE* RTLTOWSTR( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$248:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITSYM$1;
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	fb$result$1 = (struct $7ASTNODE*)0u;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	if( *(int32*)EXPR$1 != 16 ) goto label$251;
	{
		uint32* vr$5 = ASTCONSTFLUSHTOWSTR( EXPR$1 );
		struct $7ASTNODE* vr$6 = ASTNEWCONSTWSTR( vr$5 );
		fb$result$1 = vr$6;
		goto label$249;
	}
	label$251:;
	label$250:;
	if( DTYPE$1 != 4 ) goto label$253;
	{
		struct $8FBSYMBOL* vr$7 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITSYM$1 = vr$7;
		if( LITSYM$1 == (struct $8FBSYMBOL*)0u ) goto label$255;
		{
			if( *(int32*)((uint8*)&ENV$ + 288) == 0 ) goto label$257;
			{
				uint32* TMP$309$4;
				uint32* vr$12 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LITSYM$1 + 56) );
				TMP$309$4 = vr$12;
				struct $8FBSYMBOL* vr$13 = SYMBALLOCWSTRCONST( TMP$309$4, (int32)(*(int64*)((uint8*)LITSYM$1 + 40) + -1ll) );
				LITSYM$1 = vr$13;
				fb_WstrDelete( (uint32*)TMP$309$4 );
				struct $7ASTNODE* vr$14 = ASTNEWVAR( LITSYM$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
				fb$result$1 = vr$14;
				goto label$249;
			}
			label$257:;
			label$256:;
		}
		label$255:;
		label$254:;
	}
	label$253:;
	label$252:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	{
		int32 TMP$310$2;
		uint32 TMP$311$2;
		if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$258;
		TMP$310$2 = 24;
		goto label$287;
		label$258:;
		TMP$310$2 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
		label$287:;
		TMP$311$2 = *(uint32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$310$2 * 28));
		goto label$260;
		label$261:;
		{
			if( (DTYPE$1 & 480) == 0 ) goto label$263;
			{
				struct $7ASTNODE* vr$26 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
				EXPR$1 = vr$26;
				DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			}
			label$263:;
			label$262:;
			{
				if( DTYPE$1 != 7 ) goto label$265;
				label$266:;
				{
					fb$result$1 = EXPR$1;
					goto label$249;
				}
				goto label$264;
				label$265:;
				if( DTYPE$1 != 4 ) goto label$267;
				label$268:;
				{
					struct $7ASTNODE* vr$29 = RTLATOWSTR( EXPR$1 );
					fb$result$1 = vr$29;
					goto label$249;
				}
				goto label$264;
				label$267:;
				if( DTYPE$1 != 1 ) goto label$269;
				label$270:;
				{
					struct $8FBSYMBOL* vr$30 = RTLPROCLOOKUP( (uint8*)"fb_BoolToWstr", 83 );
					F$1 = vr$30;
				}
				goto label$264;
				label$269:;
				{
					{
						int32 TMP$312$6;
						uint32 TMP$313$6;
						if( (DTYPE$1 & 480) == 0 ) goto label$272;
						TMP$312$6 = 24;
						goto label$288;
						label$272:;
						TMP$312$6 = DTYPE$1 & 31;
						label$288:;
						TMP$313$6 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$312$6 * 28)) + 20);
						goto label$274;
						label$275:;
						{
							struct $8FBSYMBOL* vr$34 = RTLPROCLOOKUP( (uint8*)"fb_LongintToWstr", 86 );
							F$1 = vr$34;
						}
						goto label$273;
						label$276:;
						{
							struct $8FBSYMBOL* vr$35 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToWstr", 87 );
							F$1 = vr$35;
						}
						goto label$273;
						label$277:;
						{
							struct $8FBSYMBOL* vr$36 = RTLPROCLOOKUP( (uint8*)"fb_UIntToWstr", 85 );
							F$1 = vr$36;
						}
						goto label$273;
						label$278:;
						{
							struct $8FBSYMBOL* vr$37 = RTLPROCLOOKUP( (uint8*)"fb_IntToWstr", 84 );
							F$1 = vr$37;
						}
						goto label$273;
						label$274:;
						static const void* tmp$314[7] = {
							&&label$277,
							&&label$278,
							&&label$277,
							&&label$278,
							&&label$277,
							&&label$275,
							&&label$276,
						};
						if( (TMP$313$6 - 2u) > 6u ) goto label$278;
						goto *tmp$314[TMP$313$6 - 2u];
						label$273:;
					}
				}
				label$271:;
				label$264:;
			}
		}
		goto label$259;
		label$279:;
		{
			if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 15 ) goto label$281;
			{
				struct $8FBSYMBOL* vr$40 = RTLPROCLOOKUP( (uint8*)"fb_FloatToWstr", 88 );
				F$1 = vr$40;
			}
			goto label$280;
			label$281:;
			{
				struct $8FBSYMBOL* vr$41 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToWstr", 89 );
				F$1 = vr$41;
			}
			label$280:;
		}
		goto label$259;
		label$282:;
		{
			struct $7ASTNODE* vr$42 = RTLATOWSTR( EXPR$1 );
			fb$result$1 = vr$42;
			goto label$249;
		}
		goto label$259;
		label$283:;
		{
			struct $7ASTNODE* vr$43 = ASTNEWCONV( 39, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
			fb$result$1 = vr$43;
			goto label$249;
		}
		goto label$259;
		label$284:;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$249;
		}
		goto label$259;
		label$260:;
		static const void* tmp$315[4] = {
			&&label$261,
			&&label$279,
			&&label$282,
			&&label$283,
		};
		if( TMP$311$2 > 3u ) goto label$284;
		goto *tmp$315[TMP$311$2 - 0u];
		label$259:;
	}
	struct $7ASTNODE* vr$44 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$44;
	struct $7ASTNODE* vr$45 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$45 != (struct $7ASTNODE*)0u ) goto label$286;
	{
		goto label$249;
	}
	label$286:;
	label$285:;
	fb$result$1 = PROC$1;
	label$249:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRTOVAL( struct $7ASTNODE* EXPR$1, int32 TO_DTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$289:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* S$1;
	struct $11FB_CALL_ARG ARG$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (TO_DTYPE$1 & 480) == 0 ) goto label$292;
	{
		struct $7ASTNODE* vr$2 = ASTNEWCONV( 9, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
		EXPR$1 = vr$2;
	}
	label$292:;
	label$291:;
	{
		int32 TMP$316$2;
		uint32 TMP$317$2;
		if( (TO_DTYPE$1 & 480) == 0 ) goto label$293;
		TMP$316$2 = 24;
		goto label$312;
		label$293:;
		TMP$316$2 = TO_DTYPE$1 & 31;
		label$312:;
		TMP$317$2 = (uint32)TMP$316$2;
		goto label$295;
		label$296:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"val", 31 );
			F$1 = vr$5;
		}
		goto label$294;
		label$297:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_VALBOOL", 26 );
			F$1 = vr$6;
		}
		goto label$294;
		label$298:;
		{
			{
				int32 TMP$318$4;
				uint32 TMP$319$4;
				if( (TO_DTYPE$1 & 480) == 0 ) goto label$299;
				TMP$318$4 = 24;
				goto label$313;
				label$299:;
				TMP$318$4 = TO_DTYPE$1 & 31;
				label$313:;
				TMP$319$4 = *(uint32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$318$4 * 28)) + 20);
				goto label$301;
				label$302:;
				{
					struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"vallng", 29 );
					F$1 = vr$10;
				}
				goto label$300;
				label$303:;
				{
					struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"valulng", 30 );
					F$1 = vr$11;
				}
				goto label$300;
				label$304:;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"valint", 27 );
					F$1 = vr$12;
				}
				goto label$300;
				label$305:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"valuint", 28 );
					F$1 = vr$13;
				}
				goto label$300;
				label$301:;
				static const void* tmp$320[8] = {
					&&label$304,
					&&label$305,
					&&label$304,
					&&label$305,
					&&label$304,
					&&label$305,
					&&label$302,
					&&label$303,
				};
				if( (TMP$319$4 - 1u) > 7u ) goto label$300;
				goto *tmp$320[TMP$319$4 - 1u];
				label$300:;
			}
		}
		goto label$294;
		label$306:;
		{
			struct $7ASTNODE* vr$14 = ASTNEWCONV( TO_DTYPE$1, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
			fb$result$1 = vr$14;
			goto label$290;
		}
		goto label$294;
		label$307:;
		{
			goto label$290;
		}
		goto label$294;
		label$295:;
		static const void* tmp$321[24] = {
			&&label$297,
			&&label$298,
			&&label$298,
			&&label$307,
			&&label$298,
			&&label$298,
			&&label$307,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$298,
			&&label$296,
			&&label$296,
			&&label$307,
			&&label$307,
			&&label$307,
			&&label$306,
			&&label$307,
			&&label$307,
			&&label$307,
			&&label$298,
		};
		if( (TMP$317$2 - 1u) > 23u ) goto label$307;
		goto *tmp$321[TMP$317$2 - 1u];
		label$294:;
	}
	*(struct $7ASTNODE**)&ARG$1 = EXPR$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG$1 + 4) = -1;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $8FBSYMBOL* vr$17 = SYMBFINDCLOSESTOVLPROC( F$1, 1, &ARG$1, &ERR_NUM$1, 0 );
	F$1 = vr$17;
	if( F$1 != (struct $8FBSYMBOL*)0u ) goto label$309;
	{
		goto label$290;
	}
	label$309:;
	label$308:;
	struct $7ASTNODE* vr$18 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$18;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$19 != (struct $7ASTNODE*)0u ) goto label$311;
	{
		goto label$290;
	}
	label$311:;
	label$310:;
	struct $7ASTNODE* vr$20 = ASTNEWCONV( TO_DTYPE$1, (struct $8FBSYMBOL*)0u, PROC$1, 0, (int32*)0u );
	fb$result$1 = vr$20;
	label$290:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRMID( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1, struct $7ASTNODE* EXPR3$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$314:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &EXPR1$1 );
	if( (*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7 ) goto label$317;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrMid", 47 );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
		PROC$1 = vr$5;
	}
	goto label$316;
	label$317:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrMid", 91 );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0u );
		PROC$1 = vr$7;
	}
	label$316:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, EXPR1$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$319;
	{
		goto label$315;
	}
	label$319:;
	label$318:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR2$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$321;
	{
		goto label$315;
	}
	label$321:;
	label$320:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, EXPR3$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$323;
	{
		goto label$315;
	}
	label$323:;
	label$322:;
	fb$result$1 = PROC$1;
	label$315:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRASSIGNMID( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1, struct $7ASTNODE* EXPR3$1, struct $7ASTNODE* EXPR4$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$324:;
	struct $7ASTNODE* PROC$1;
	int64 DST_LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &EXPR1$1 );
	if( (*(int32*)((uint8*)EXPR1$1 + 4) & 511) == 7 ) goto label$327;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrAssignMid", 48 );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
		PROC$1 = vr$5;
		DST_LEN$1 = -1ll;
	}
	goto label$326;
	label$327:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignMid", 92 );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0u );
		PROC$1 = vr$7;
		int64 vr$8 = RTLCALCSTRLEN( EXPR1$1, 7 );
		DST_LEN$1 = vr$8;
	}
	label$326:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR1$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$329;
	{
		goto label$325;
	}
	label$329:;
	label$328:;
	if( DST_LEN$1 == -1ll ) goto label$331;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( DST_LEN$1, 8, (struct $8FBSYMBOL*)0u );
		struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, -2147483648u, -1 );
		if( vr$11 != (struct $7ASTNODE*)0u ) goto label$333;
		{
			goto label$325;
		}
		label$333:;
		label$332:;
	}
	label$331:;
	label$330:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, EXPR2$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$335;
	{
		goto label$325;
	}
	label$335:;
	label$334:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, EXPR3$1, -2147483648u, -1 );
	if( vr$13 != (struct $7ASTNODE*)0u ) goto label$337;
	{
		goto label$325;
	}
	label$337:;
	label$336:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, EXPR4$1, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$339;
	{
		goto label$325;
	}
	label$339:;
	label$338:;
	ASTADD( PROC$1 );
	fb$result$1 = PROC$1;
	label$325:;
	return fb$result$1;
}

int32 RTLSTRLRSET( struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* SRCEXPR$1, int32 IS_RSET$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$340:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0;
	if( (*(int32*)((uint8*)DSTEXPR$1 + 4) & 511) == 7 ) goto label$343;
	{
		struct $8FBSYMBOL* TMP$322$2;
		if( IS_RSET$1 == 0 ) goto label$344;
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrRset", 53 );
		TMP$322$2 = vr$3;
		goto label$350;
		label$344:;
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrLset", 52 );
		TMP$322$2 = vr$4;
		label$350:;
		struct $7ASTNODE* vr$5 = ASTNEWCALL( TMP$322$2, (struct $7ASTNODE*)0u );
		PROC$1 = vr$5;
	}
	goto label$342;
	label$343:;
	{
		struct $8FBSYMBOL* TMP$323$2;
		if( IS_RSET$1 == 0 ) goto label$345;
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrRset", 97 );
		TMP$323$2 = vr$6;
		goto label$351;
		label$345:;
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrLset", 96 );
		TMP$323$2 = vr$7;
		label$351:;
		struct $7ASTNODE* vr$8 = ASTNEWCALL( TMP$323$2, (struct $7ASTNODE*)0u );
		PROC$1 = vr$8;
	}
	label$342:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, DSTEXPR$1, -2147483648u, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$347;
	{
		goto label$341;
	}
	label$347:;
	label$346:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, SRCEXPR$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$349;
	{
		goto label$341;
	}
	label$349:;
	label$348:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$341:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRFILL( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$352:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	{
		int32 TMP$324$2;
		TMP$324$2 = *(int32*)((uint8*)EXPR2$1 + 4) & 511;
		if( TMP$324$2 == 17 ) goto label$356;
		label$357:;
		if( TMP$324$2 == 18 ) goto label$356;
		label$358:;
		if( TMP$324$2 != 4 ) goto label$355;
		label$356:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrFill2", 50 );
			F$1 = vr$3;
		}
		goto label$354;
		label$355:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrFill1", 49 );
			F$1 = vr$4;
		}
		label$359:;
		label$354:;
	}
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR1$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$361;
	{
		goto label$353;
	}
	label$361:;
	label$360:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, EXPR2$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$363;
	{
		goto label$353;
	}
	label$363:;
	label$362:;
	fb$result$1 = PROC$1;
	label$353:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRFILL( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$364:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (*(int32*)((uint8*)EXPR2$1 + 4) & 511) != 7 ) goto label$367;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrFill2", 94 );
		F$1 = vr$3;
	}
	goto label$366;
	label$367:;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_WstrFill1", 93 );
		F$1 = vr$4;
	}
	label$366:;
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR1$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$369;
	{
		goto label$365;
	}
	label$369:;
	label$368:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, EXPR2$1, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$371;
	{
		goto label$365;
	}
	label$371:;
	label$370:;
	fb$result$1 = PROC$1;
	label$365:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRLEN( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$372:;
	struct $7ASTNODE* PROC$1;
	int64 LENGTH$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrLen", 51 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 vr$5 = RTLCALCSTRLEN( EXPR$1, *(int32*)((uint8*)EXPR$1 + 4) & 511 );
	LENGTH$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR$1, 17, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$375;
	{
		goto label$373;
	}
	label$375:;
	label$374:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( LENGTH$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$377;
	{
		goto label$373;
	}
	label$377:;
	label$376:;
	fb$result$1 = PROC$1;
	label$373:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRLEN( struct $7ASTNODE* EXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$378:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrLen", 95 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$3 != (struct $7ASTNODE*)0u ) goto label$381;
	{
		goto label$379;
	}
	label$381:;
	label$380:;
	fb$result$1 = PROC$1;
	label$379:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRASC( struct $7ASTNODE* EXPR$1, struct $7ASTNODE* POSEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$382:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) == 7 ) goto label$385;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_ASC", 54 );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0u );
		PROC$1 = vr$5;
	}
	goto label$384;
	label$385:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrAsc", 98 );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0u );
		PROC$1 = vr$7;
	}
	label$384:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$387;
	{
		goto label$383;
	}
	label$387:;
	label$386:;
	if( POSEXPR$1 != (struct $7ASTNODE*)0u ) goto label$389;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 1ll, 8, (struct $8FBSYMBOL*)0u );
		POSEXPR$1 = vr$9;
	}
	label$389:;
	label$388:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, POSEXPR$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$391;
	{
		goto label$383;
	}
	label$391:;
	label$390:;
	fb$result$1 = PROC$1;
	label$383:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCHR( int32 ARGS$1, struct $7FBARRAYIP7ASTNODEE* EXPRTB$1, int32 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$392:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( IS_WSTR$1 != 0 ) goto label$395;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_CHR", 55 );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
		PROC$1 = vr$2;
	}
	goto label$394;
	label$395:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrChr", 99 );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0u );
		PROC$1 = vr$4;
	}
	label$394:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( (int64)ARGS$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, -2147483648u, -1 );
	if( vr$7 != (struct $7ASTNODE*)0u ) goto label$397;
	{
		goto label$393;
	}
	label$397:;
	label$396:;
	{
		int32 I$2;
		I$2 = 0;
		int32 TMP$325$2;
		TMP$325$2 = ARGS$1 + -1;
		goto label$398;
		label$401:;
		{
			int32 TMP$326$3;
			EXPR$1 = *(struct $7ASTNODE**)((I$2 << (2 & 31)) + *(int32*)EXPRTB$1);
			DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
			if( ((*(int32*)((uint8*)EXPR$1 + 4) & 511) & 480) == 0 ) goto label$402;
			TMP$326$3 = 24;
			goto label$412;
			label$402:;
			TMP$326$3 = (*(int32*)((uint8*)EXPR$1 + 4) & 511) & 31;
			label$412:;
			if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$326$3 * 28)) < 2 ) goto label$404;
			{
				FBSTRING TMP$328$4;
				FBSTRING TMP$329$4;
				__builtin_memset( &TMP$329$4, 0, 12 );
				FBSTRING* vr$23 = fb_IntToStr( I$2 + 1 );
				__builtin_memset( &TMP$328$4, 0, 12 );
				FBSTRING* vr$26 = fb_StrConcat( &TMP$328$4, (void*)"at parameter: ", 15, (void*)vr$23, -1 );
				fb_StrAssign( (void*)&TMP$329$4, -1, (void*)vr$26, -1, 0 );
				ERRREPORTEX( 58, (uint8*)*(uint8**)&TMP$329$4, 0, 1, (uint8*)0u );
				fb_StrDelete( (FBSTRING*)&TMP$329$4 );
				goto label$393;
			}
			label$404:;
			label$403:;
			{
				uint32 TMP$330$4;
				TMP$330$4 = (uint32)DTYPE$1;
				goto label$406;
				label$407:;
				{
					FBSTRING TMP$331$5;
					FBSTRING TMP$332$5;
					__builtin_memset( &TMP$332$5, 0, 12 );
					FBSTRING* vr$31 = fb_IntToStr( I$2 + 1 );
					__builtin_memset( &TMP$331$5, 0, 12 );
					FBSTRING* vr$34 = fb_StrConcat( &TMP$331$5, (void*)"at parameter: ", 15, (void*)vr$31, -1 );
					fb_StrAssign( (void*)&TMP$332$5, -1, (void*)vr$34, -1, 0 );
					ERRREPORTEX( 58, (uint8*)*(uint8**)&TMP$332$5, 0, 1, (uint8*)0u );
					fb_StrDelete( (FBSTRING*)&TMP$332$5 );
					goto label$393;
				}
				goto label$405;
				label$408:;
				{
				}
				goto label$405;
				label$409:;
				{
					struct $7ASTNODE* vr$37 = ASTNEWCONV( 8, (struct $8FBSYMBOL*)0u, EXPR$1, 0, (int32*)0u );
					EXPR$1 = vr$37;
				}
				goto label$405;
				label$406:;
				static const void* tmp$333[5] = {
					&&label$407,
					&&label$409,
					&&label$409,
					&&label$407,
					&&label$408,
				};
				if( (TMP$330$4 - 4u) > 4u ) goto label$409;
				goto *tmp$333[TMP$330$4 - 4u];
				label$405:;
			}
			struct $7ASTNODE* vr$38 = ASTNEWARG( PROC$1, EXPR$1, 8, -1 );
			if( vr$38 != (struct $7ASTNODE*)0u ) goto label$411;
			{
				goto label$393;
			}
			label$411:;
			label$410:;
		}
		label$399:;
		I$2 = I$2 + 1;
		label$398:;
		if( I$2 <= TMP$325$2 ) goto label$401;
		label$400:;
	}
	fb$result$1 = PROC$1;
	label$393:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRINSTR( struct $7ASTNODE* ND_START$1, struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int32 SEARCH_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$413:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$416;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$416:;
	label$415:;
	DTYPE$1 = *(int32*)((uint8*)ND_TEXT$1 + 4) & 511;
	if( SEARCH_ANY$1 == 0 ) goto label$418;
	{
		if( DTYPE$1 == 7 ) goto label$420;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrAny", 57 );
			F$1 = vr$5;
		}
		goto label$419;
		label$420:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrAny", 101 );
			F$1 = vr$6;
		}
		label$419:;
	}
	goto label$417;
	label$418:;
	{
		if( DTYPE$1 == 7 ) goto label$422;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInstr", 56 );
			F$1 = vr$7;
		}
		goto label$421;
		label$422:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstr", 100 );
			F$1 = vr$8;
		}
		label$421:;
	}
	label$417:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, ND_START$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$424;
	{
		goto label$414;
	}
	label$424:;
	label$423:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, ND_TEXT$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$426;
	{
		goto label$414;
	}
	label$426:;
	label$425:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_PATTERN$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$428;
	{
		goto label$414;
	}
	label$428:;
	label$427:;
	fb$result$1 = PROC$1;
	label$414:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRINSTRREV( struct $7ASTNODE* ND_START$1, struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int32 SEARCH_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$429:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$432;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$432:;
	label$431:;
	DTYPE$1 = *(int32*)((uint8*)ND_TEXT$1 + 4) & 511;
	if( SEARCH_ANY$1 == 0 ) goto label$434;
	{
		if( DTYPE$1 == 7 ) goto label$436;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrRevAny", 59 );
			F$1 = vr$5;
		}
		goto label$435;
		label$436:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrRevAny", 103 );
			F$1 = vr$6;
		}
		label$435:;
	}
	goto label$433;
	label$434:;
	{
		if( DTYPE$1 == 7 ) goto label$438;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrRev", 58 );
			F$1 = vr$7;
		}
		goto label$437;
		label$438:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrRev", 102 );
			F$1 = vr$8;
		}
		label$437:;
	}
	label$433:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, ND_TEXT$1, -2147483648u, -1 );
	if( vr$10 != (struct $7ASTNODE*)0u ) goto label$440;
	{
		goto label$430;
	}
	label$440:;
	label$439:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, ND_PATTERN$1, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$442;
	{
		goto label$430;
	}
	label$442:;
	label$441:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_START$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$444;
	{
		goto label$430;
	}
	label$444:;
	label$443:;
	fb$result$1 = PROC$1;
	label$430:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int32 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$445:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$448;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$448:;
	label$447:;
	DTYPE$1 = *(int32*)((uint8*)ND_TEXT$1 + 4) & 511;
	if( IS_ANY$1 == 0 ) goto label$450;
	{
		if( DTYPE$1 == 7 ) goto label$452;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_TrimAny", 61 );
			F$1 = vr$5;
		}
		goto label$451;
		label$452:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrimAny", 105 );
			F$1 = vr$6;
		}
		label$451:;
	}
	goto label$449;
	label$450:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$453;
	{
		if( DTYPE$1 == 7 ) goto label$455;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_TrimEx", 62 );
			F$1 = vr$7;
		}
		goto label$454;
		label$455:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrimEx", 106 );
			F$1 = vr$8;
		}
		label$454:;
	}
	goto label$449;
	label$453:;
	{
		if( DTYPE$1 == 7 ) goto label$457;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_TRIM", 60 );
			F$1 = vr$9;
		}
		goto label$456;
		label$457:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrim", 104 );
			F$1 = vr$10;
		}
		label$456:;
	}
	label$449:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$459;
	{
		goto label$446;
	}
	label$459:;
	label$458:;
	if( (-(ND_PATTERN$1 != (struct $7ASTNODE*)0u) | IS_ANY$1) == 0 ) goto label$461;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, -2147483648u, -1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$463;
		{
			goto label$446;
		}
		label$463:;
		label$462:;
	}
	label$461:;
	label$460:;
	fb$result$1 = PROC$1;
	label$446:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRRTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int32 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$464:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$467;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$467:;
	label$466:;
	DTYPE$1 = *(int32*)((uint8*)ND_TEXT$1 + 4) & 511;
	if( IS_ANY$1 == 0 ) goto label$469;
	{
		if( DTYPE$1 == 7 ) goto label$471;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_RTrimAny", 64 );
			F$1 = vr$5;
		}
		goto label$470;
		label$471:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrimAny", 108 );
			F$1 = vr$6;
		}
		label$470:;
	}
	goto label$468;
	label$469:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$472;
	{
		if( DTYPE$1 == 7 ) goto label$474;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_RTrimEx", 65 );
			F$1 = vr$7;
		}
		goto label$473;
		label$474:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrimEx", 109 );
			F$1 = vr$8;
		}
		label$473:;
	}
	goto label$468;
	label$472:;
	{
		if( DTYPE$1 == 7 ) goto label$476;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_RTRIM", 63 );
			F$1 = vr$9;
		}
		goto label$475;
		label$476:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrim", 107 );
			F$1 = vr$10;
		}
		label$475:;
	}
	label$468:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$478;
	{
		goto label$465;
	}
	label$478:;
	label$477:;
	if( (-(ND_PATTERN$1 != (struct $7ASTNODE*)0u) | IS_ANY$1) == 0 ) goto label$480;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, -2147483648u, -1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$482;
		{
			goto label$465;
		}
		label$482:;
		label$481:;
	}
	label$480:;
	label$479:;
	fb$result$1 = PROC$1;
	label$465:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRLTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int32 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$483:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int32 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$486;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$486:;
	label$485:;
	DTYPE$1 = *(int32*)((uint8*)ND_TEXT$1 + 4) & 511;
	if( IS_ANY$1 == 0 ) goto label$488;
	{
		if( DTYPE$1 == 7 ) goto label$490;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_LTrimAny", 67 );
			F$1 = vr$5;
		}
		goto label$489;
		label$490:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrimAny", 111 );
			F$1 = vr$6;
		}
		label$489:;
	}
	goto label$487;
	label$488:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0u ) goto label$491;
	{
		if( DTYPE$1 == 7 ) goto label$493;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_LTrimEx", 68 );
			F$1 = vr$7;
		}
		goto label$492;
		label$493:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrimEx", 112 );
			F$1 = vr$8;
		}
		label$492:;
	}
	goto label$487;
	label$491:;
	{
		if( DTYPE$1 == 7 ) goto label$495;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_LTRIM", 66 );
			F$1 = vr$9;
		}
		goto label$494;
		label$495:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrim", 110 );
			F$1 = vr$10;
		}
		label$494:;
	}
	label$487:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$497;
	{
		goto label$484;
	}
	label$497:;
	label$496:;
	if( (-(ND_PATTERN$1 != (struct $7ASTNODE*)0u) | IS_ANY$1) == 0 ) goto label$499;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, -2147483648u, -1 );
		if( vr$15 != (struct $7ASTNODE*)0u ) goto label$501;
		{
			goto label$484;
		}
		label$501:;
		label$500:;
	}
	label$499:;
	label$498:;
	fb$result$1 = PROC$1;
	label$484:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCASE( struct $7ASTNODE* EXPR$1, struct $7ASTNODE* MODE$1, int32 IS_LCASE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$524:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITERAL$1;
	if( MODE$1 == (struct $7ASTNODE*)0u ) goto label$527;
	{
		struct $8FBSYMBOL* vr$1 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITERAL$1 = vr$1;
		if( LITERAL$1 == (struct $8FBSYMBOL*)0u ) goto label$529;
		{
			if( *(int32*)MODE$1 != 16 ) goto label$531;
			{
				int64 vr$3 = ASTCONSTGETASINT64( MODE$1 );
				if( vr$3 != 1ll ) goto label$533;
				{
					struct $8FBSYMBOL* vr$4 = HEVALASCCASE( LITERAL$1, IS_LCASE$1 );
					LITERAL$1 = vr$4;
					if( LITERAL$1 == (struct $8FBSYMBOL*)0u ) goto label$535;
					{
						struct $7ASTNODE* vr$5 = ASTNEWVAR( LITERAL$1, 0ll, -2147483648u, (struct $8FBSYMBOL*)0u );
						fb$result$1 = vr$5;
						goto label$525;
					}
					label$535:;
					label$534:;
				}
				label$533:;
				label$532:;
			}
			label$531:;
			label$530:;
		}
		label$529:;
		label$528:;
	}
	label$527:;
	label$526:;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	if( IS_LCASE$1 == 0 ) goto label$537;
	{
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 7 ) goto label$539;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_WstrLcase2", 113 );
			F$1 = vr$9;
		}
		goto label$538;
		label$539:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_StrLcase2", 69 );
			F$1 = vr$10;
		}
		label$538:;
	}
	goto label$536;
	label$537:;
	{
		if( (*(int32*)((uint8*)EXPR$1 + 4) & 511) != 7 ) goto label$541;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_WstrUcase2", 114 );
			F$1 = vr$13;
		}
		goto label$540;
		label$541:;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_StrUcase2", 70 );
			F$1 = vr$14;
		}
		label$540:;
	}
	label$536:;
	struct $7ASTNODE* vr$15 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, EXPR$1, -2147483648u, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$543;
	{
		goto label$525;
	}
	label$543:;
	label$542:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MODE$1, -2147483648u, -1 );
	if( vr$17 != (struct $7ASTNODE*)0u ) goto label$545;
	{
		goto label$525;
	}
	label$545:;
	label$544:;
	fb$result$1 = PROC$1;
	label$525:;
	return fb$result$1;
}

int32 RTLSTRSWAP( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$546:;
	fb$result$1 = 0;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrSwap", 71 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int32 DTYPE1$1;
	DTYPE1$1 = *(int32*)((uint8*)STR1$1 + 4) & 511;
	int64 LENGTH1$1;
	int64 vr$5 = RTLCALCSTRLEN( STR1$1, DTYPE1$1 );
	LENGTH1$1 = vr$5;
	int32 DTYPE2$1;
	DTYPE2$1 = *(int32*)((uint8*)STR2$1 + 4) & 511;
	int64 LENGTH2$1;
	int64 vr$8 = RTLCALCSTRLEN( STR2$1, DTYPE2$1 );
	LENGTH2$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, STR1$1, 17, -1 );
	if( vr$9 != (struct $7ASTNODE*)0u ) goto label$549;
	{
		goto label$547;
	}
	label$549:;
	label$548:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( LENGTH1$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, -2147483648u, -1 );
	if( vr$11 != (struct $7ASTNODE*)0u ) goto label$551;
	{
		goto label$547;
	}
	label$551:;
	label$550:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( (int64)-(DTYPE1$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, -2147483648u, -1 );
	if( vr$15 != (struct $7ASTNODE*)0u ) goto label$553;
	{
		goto label$547;
	}
	label$553:;
	label$552:;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, STR2$1, 17, -1 );
	if( vr$16 != (struct $7ASTNODE*)0u ) goto label$555;
	{
		goto label$547;
	}
	label$555:;
	label$554:;
	struct $7ASTNODE* vr$17 = ASTNEWCONSTI( LENGTH2$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, vr$17, -2147483648u, -1 );
	if( vr$18 != (struct $7ASTNODE*)0u ) goto label$557;
	{
		goto label$547;
	}
	label$557:;
	label$556:;
	struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)-(DTYPE2$1 == 18), 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, -2147483648u, -1 );
	if( vr$22 != (struct $7ASTNODE*)0u ) goto label$559;
	{
		goto label$547;
	}
	label$559:;
	label$558:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$547:;
	return fb$result$1;
}

int32 RTLWSTRSWAP( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$560:;
	fb$result$1 = 0;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrSwap", 115 );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0u );
	PROC$1 = vr$2;
	int64 LENGTH$1;
	int64 vr$5 = RTLCALCSTRLEN( STR1$1, *(int32*)((uint8*)STR1$1 + 4) & 511 );
	LENGTH$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, STR1$1, -2147483648u, -1 );
	if( vr$6 != (struct $7ASTNODE*)0u ) goto label$563;
	{
		goto label$561;
	}
	label$563:;
	label$562:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( LENGTH$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, -2147483648u, -1 );
	if( vr$8 != (struct $7ASTNODE*)0u ) goto label$565;
	{
		goto label$561;
	}
	label$565:;
	label$564:;
	int64 vr$11 = RTLCALCSTRLEN( STR2$1, *(int32*)((uint8*)STR2$1 + 4) & 511 );
	LENGTH$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, STR2$1, -2147483648u, -1 );
	if( vr$12 != (struct $7ASTNODE*)0u ) goto label$567;
	{
		goto label$561;
	}
	label$567:;
	label$566:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( LENGTH$1, 8, (struct $8FBSYMBOL*)0u );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, -2147483648u, -1 );
	if( vr$14 != (struct $7ASTNODE*)0u ) goto label$569;
	{
		goto label$561;
	}
	label$569:;
	label$568:;
	ASTADD( PROC$1 );
	fb$result$1 = -1;
	label$561:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtlzstring( void )
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

static struct $8FBSYMBOL* HEVALASCCASE( struct $8FBSYMBOL* LITERAL$1, int32 IS_LCASE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$502:;
	uint32* W$1;
	uint8* Z$1;
	int32 REALLENGTH$1;
	int32 INTERNALLENGTH$1;
	int32 CHAR$1;
	int32 CHARA$1;
	int32 CHARZ$1;
	int32 CHARDIFF$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( IS_LCASE$1 == 0 ) goto label$505;
	{
		CHARA$1 = 65;
		CHARZ$1 = 90;
		CHARDIFF$1 = 32;
	}
	goto label$504;
	label$505:;
	{
		CHARA$1 = 97;
		CHARZ$1 = 122;
		CHARDIFF$1 = -32;
	}
	label$504:;
	if( (*(int32*)((uint8*)LITERAL$1 + 28) & 511) != 7 ) goto label$507;
	{
		int32 TMP$338$2;
		W$1 = *(uint32**)((uint8*)LITERAL$1 + 56);
		int32 vr$4 = fb_WstrLen( (uint32*)W$1 );
		INTERNALLENGTH$1 = vr$4;
		TMP$338$2 = 0;
		uint32* vr$6 = HUNESCAPEW( W$1, &TMP$338$2 );
		W$1 = vr$6;
		int64 vr$9 = __divdi3( *(int64*)((uint8*)LITERAL$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
		REALLENGTH$1 = (int32)(vr$9 + -1ll);
		if( INTERNALLENGTH$1 == REALLENGTH$1 ) goto label$509;
		{
			goto label$503;
		}
		label$509:;
		label$508:;
		{
			int32 I$3;
			I$3 = 0;
			int32 TMP$339$3;
			TMP$339$3 = REALLENGTH$1 + -1;
			goto label$510;
			label$513:;
			{
				CHAR$1 = *(int32*)((uint8*)W$1 + (I$3 << (2 & 31)));
				if( (-(CHAR$1 >= CHARA$1) & -(CHAR$1 <= CHARZ$1)) == 0 ) goto label$515;
				{
					CHAR$1 = CHAR$1 + CHARDIFF$1;
				}
				label$515:;
				label$514:;
				*(uint32*)((uint8*)W$1 + (I$3 << (2 & 31))) = (uint32)CHAR$1;
			}
			label$511:;
			I$3 = I$3 + 1;
			label$510:;
			if( I$3 <= TMP$339$3 ) goto label$513;
			label$512:;
		}
		struct $8FBSYMBOL* vr$22 = SYMBALLOCWSTRCONST( W$1, REALLENGTH$1 );
		fb$result$1 = vr$22;
	}
	goto label$506;
	label$507:;
	{
		int32 TMP$340$2;
		Z$1 = *(uint8**)((uint8*)LITERAL$1 + 56);
		int32 vr$24 = fb_StrLen( (void*)Z$1, 0 );
		INTERNALLENGTH$1 = vr$24;
		TMP$340$2 = 0;
		uint8* vr$26 = HUNESCAPE( Z$1, &TMP$340$2 );
		Z$1 = vr$26;
		REALLENGTH$1 = (int32)(*(int64*)((uint8*)LITERAL$1 + 40) + -1ll);
		if( INTERNALLENGTH$1 == REALLENGTH$1 ) goto label$517;
		{
			goto label$503;
		}
		label$517:;
		label$516:;
		{
			int32 I$3;
			I$3 = 0;
			int32 TMP$341$3;
			TMP$341$3 = REALLENGTH$1 + -1;
			goto label$518;
			label$521:;
			{
				CHAR$1 = (int32)*(uint8*)((uint8*)Z$1 + I$3);
				if( (-(CHAR$1 >= CHARA$1) & -(CHAR$1 <= CHARZ$1)) == 0 ) goto label$523;
				{
					CHAR$1 = CHAR$1 + CHARDIFF$1;
				}
				label$523:;
				label$522:;
				*(uint8*)((uint8*)Z$1 + I$3) = (uint8)CHAR$1;
			}
			label$519:;
			I$3 = I$3 + 1;
			label$518:;
			if( I$3 <= TMP$341$3 ) goto label$521;
			label$520:;
		}
		struct $8FBSYMBOL* vr$40 = SYMBALLOCSTRCONST( Z$1, REALLENGTH$1 );
		fb$result$1 = vr$40;
	}
	label$506:;
	label$503:;
	return fb$result$1;
}
