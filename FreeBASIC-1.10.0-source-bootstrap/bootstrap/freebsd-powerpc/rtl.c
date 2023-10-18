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
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $7FBARRAYIvE {
	void* DATA;
	void* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIvE ) == 120 );
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
typedef int32 $9FB_ERRMSG;
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
int32 fb_ArrayClear( struct $7FBARRAYIvE* );
int64 __divdi3( int64, int64 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
static void fb_ctor__rtl( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTEX( int32, uint8*, int32, $12FB_ERRMSGOPT, uint8* );
int32 FBGETCPUFAMILY( void );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTF( double, int32 );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int32, int32 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
typedef int32 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int32, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBADDPROCPARAM( struct $8FBSYMBOL*, uint8*, int32, struct $8FBSYMBOL*, int32, int32, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
void SYMBMAKEPARAMOPTIONAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, struct $7ASTNODE* );
typedef int32 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32 );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
struct $11FB_CALL_ARG* SYMBALLOCOVLCALLARG( struct $5TLIST*, struct $16FB_CALL_ARG_LIST*, int32 );
void SYMBFREEOVLCALLARGS( struct $5TLIST*, struct $16FB_CALL_ARG_LIST* );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int32 );
void RTLARRAYMODINIT( void );
void RTLCONSOLEMODINIT( void );
void RTLDATAMODINIT( void );
void RTLERRORMODINIT( void );
void RTLFILEMODINIT( void );
void RTLGFXMODINIT( void );
void RTLMACROMODINIT( void );
void RTLMATHMODINIT( void );
void RTLMEMMODINIT( void );
void RTLPRINTMODINIT( void );
void RTLPROFILEMODINIT( void );
void RTLSTRINGMODINIT( void );
void RTLSYSTEMMODINIT( void );
void RTLGOSUBMODINIT( void );
void RTLOOPMODINIT( void );
void RTLARRAYMODEND( void );
void RTLCONSOLEMODEND( void );
void RTLDATAMODEND( void );
void RTLERRORMODEND( void );
void RTLFILEMODEND( void );
void RTLGFXMODEND( void );
void RTLMACROMODEND( void );
void RTLMATHMODEND( void );
void RTLMEMMODEND( void );
void RTLPRINTMODEND( void );
void RTLPROFILEMODEND( void );
void RTLSTRINGMODEND( void );
void RTLSYSTEMMODEND( void );
void RTLGOSUBMODEND( void );
void RTLOOPMODEND( void );
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
struct $6RTLCTX {
	struct $5TLIST ARGLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $6RTLCTX ) == 32 );
static struct $6RTLCTX CTX$;
static struct $8FBSYMBOL* RTLLOOKUPTB$[367];
struct $8FBARRAY1IP8FBSYMBOLE {
	struct $8FBSYMBOL** DATA;
	struct $8FBSYMBOL** PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1IP8FBSYMBOLE ) == 36 );
static struct $8FBARRAY1IP8FBSYMBOLE tmp$83$ = { (struct $8FBSYMBOL**)RTLLOOKUPTB$, (struct $8FBSYMBOL**)RTLLOOKUPTB$, 1468, 4, 1, 49, { { 367, 0, 366 } } };

void RTLINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)&CTX$, 32, 12, 6 );
	RTLARRAYMODINIT(  );
	RTLCONSOLEMODINIT(  );
	RTLDATAMODINIT(  );
	RTLERRORMODINIT(  );
	RTLFILEMODINIT(  );
	RTLGFXMODINIT(  );
	RTLMACROMODINIT(  );
	RTLMATHMODINIT(  );
	RTLMEMMODINIT(  );
	RTLPRINTMODINIT(  );
	RTLPROFILEMODINIT(  );
	RTLSTRINGMODINIT(  );
	RTLSYSTEMMODINIT(  );
	RTLGOSUBMODINIT(  );
	RTLOOPMODINIT(  );
	label$11:;
}

void RTLEND( void )
{
	label$12:;
	RTLOOPMODEND(  );
	RTLGOSUBMODEND(  );
	RTLSYSTEMMODEND(  );
	RTLSTRINGMODEND(  );
	RTLPROFILEMODEND(  );
	RTLPRINTMODEND(  );
	RTLMEMMODEND(  );
	RTLMATHMODEND(  );
	RTLMACROMODEND(  );
	RTLGFXMODEND(  );
	RTLFILEMODEND(  );
	RTLERRORMODEND(  );
	RTLDATAMODEND(  );
	RTLCONSOLEMODEND(  );
	RTLARRAYMODEND(  );
	LISTEND( (struct $5TLIST*)&CTX$ );
	fb_ArrayClear( (struct $7FBARRAYIvE*)&tmp$83$ );
	label$13:;
}

void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* PROCDEF$1 )
{
	label$14:;
	struct $8FBSYMBOL* PARAM$1;
	int32 CALLCONV$1;
	label$16:;
	{
		if( *(uint8**)PROCDEF$1 != (uint8*)0u ) goto label$20;
		{
			goto label$17;
		}
		label$20:;
		label$19:;
		CALLCONV$1 = *(int32*)((uint8*)PROCDEF$1 + 12);
		if( CALLCONV$1 != -1 ) goto label$22;
		{
			CALLCONV$1 = *(int32*)((uint8*)&ENV$ + 276);
		}
		label$22:;
		label$21:;
		int32 DOADD$2;
		DOADD$2 = -1;
		if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 4) == 0 ) goto label$24;
		{
			DOADD$2 = -((*(int32*)((uint8*)&ENV$ + 1040) & 1) != 0);
		}
		label$24:;
		label$23:;
		if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 16384) == 0 ) goto label$26;
		{
			int32 vr$8 = FBGETCPUFAMILY(  );
			DOADD$2 = DOADD$2 & -(vr$8 == 0);
		}
		label$26:;
		label$25:;
		if( DOADD$2 == 0 ) goto label$28;
		{
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 256) == 0 ) goto label$30;
			{
				DOADD$2 = -(*(int32*)((uint8*)&ENV$ + 136) == 3);
			}
			label$30:;
			label$29:;
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 1024) == 0 ) goto label$32;
			{
				DOADD$2 = -(*(int32*)((uint8*)&ENV$ + 136) == 0);
			}
			label$32:;
			label$31:;
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 512) == 0 ) goto label$34;
			{
				DOADD$2 = -(*(int32*)((uint8*)&ENV$ + 136) != 0);
			}
			label$34:;
			label$33:;
		}
		label$28:;
		label$27:;
		if( DOADD$2 == 0 ) goto label$36;
		{
			struct $8FBSYMBOL* PROC$3;
			struct $8FBSYMBOL* vr$20 = SYMBPREADDPROC( (uint8*)0u );
			PROC$3 = vr$20;
			{
				int32 I$4;
				I$4 = 0;
				int32 TMP$84$4;
				TMP$84$4 = *(int32*)((uint8*)PROCDEF$1 + 24) + -1;
				goto label$37;
				label$40:;
				{
					{
						int32 TMP$92$6;
						struct $15FB_RTL_PARAMDEF* TMP$85$6;
						TMP$85$6 = (struct $15FB_RTL_PARAMDEF*)((uint8*)((uint8*)PROCDEF$1 + (I$4 << (4 & 31))) + 28);
						struct $8FBSYMBOL* SUBTYPE$6;
						SUBTYPE$6 = (struct $8FBSYMBOL*)0u;
						int32 DTYPE$6;
						struct $7ASTNODE* PARAM_OPTVAL$6;
						if( *(int32*)((uint8*)TMP$85$6 + 8) == 0 ) goto label$42;
						{
							{
								uint32 TMP$86$8;
								TMP$86$8 = (uint32)(*(int32*)TMP$85$6 & 511);
								goto label$44;
								label$45:;
								{
									struct $7ASTNODE* vr$29 = ASTNEWCONSTSTR( (uint8*)"" );
									PARAM_OPTVAL$6 = vr$29;
								}
								goto label$43;
								label$46:;
								{
									struct $7ASTNODE* vr$33 = ASTNEWCONSTF( (double)*(int32*)((uint8*)TMP$85$6 + 12), *(int32*)TMP$85$6 );
									PARAM_OPTVAL$6 = vr$33;
								}
								goto label$43;
								label$47:;
								{
									struct $7ASTNODE* INNER_PARAM_OPTVAL$9;
									struct $8FBSYMBOL* INNER_PROC$9;
									struct $8FBSYMBOL* vr$34 = SYMBPREADDPROC( (uint8*)0u );
									INNER_PROC$9 = vr$34;
									{
										int32 FUNC_ARG$10;
										FUNC_ARG$10 = 0;
										int32 TMP$87$10;
										TMP$87$10 = *(int32*)((uint8*)TMP$85$6 + 12) + -1;
										goto label$48;
										label$51:;
										{
											I$4 = I$4 + 1;
											{
												int32 TMP$90$12;
												struct $15FB_RTL_PARAMDEF* TMP$88$12;
												TMP$88$12 = (struct $15FB_RTL_PARAMDEF*)((uint8*)((uint8*)PROCDEF$1 + (I$4 << (4 & 31))) + 28);
												if( *(int32*)((uint8*)TMP$88$12 + 8) == 0 ) goto label$53;
												{
													{
														uint32 TMP$89$14;
														TMP$89$14 = (uint32)(*(int32*)TMP$88$12 & 511);
														goto label$55;
														label$56:;
														{
															struct $7ASTNODE* vr$44 = ASTNEWCONSTSTR( (uint8*)"" );
															INNER_PARAM_OPTVAL$9 = vr$44;
														}
														goto label$54;
														label$57:;
														{
															struct $7ASTNODE* vr$48 = ASTNEWCONSTF( (double)*(int32*)((uint8*)TMP$88$12 + 12), *(int32*)TMP$88$12 );
															INNER_PARAM_OPTVAL$9 = vr$48;
														}
														goto label$54;
														label$58:;
														{
															struct $7ASTNODE* vr$52 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)TMP$88$12 + 12), *(int32*)TMP$88$12, (struct $8FBSYMBOL*)0u );
															INNER_PARAM_OPTVAL$9 = vr$52;
														}
														goto label$54;
														label$55:;
														static const void* tmp$95[3] = {
															&&label$57,
															&&label$57,
															&&label$56,
														};
														if( (TMP$89$14 - 15u) > 2u ) goto label$58;
														goto *tmp$95[TMP$89$14 - 15u];
														label$54:;
													}
												}
												goto label$52;
												label$53:;
												{
													INNER_PARAM_OPTVAL$9 = (struct $7ASTNODE*)0u;
												}
												label$52:;
												if( *(int32*)((uint8*)TMP$88$12 + 4) != 3 ) goto label$59;
												TMP$90$12 = -1;
												goto label$82;
												label$59:;
												TMP$90$12 = 0;
												label$82:;
												struct $8FBSYMBOL* vr$56 = SYMBADDPROCPARAM( INNER_PROC$9, (uint8*)0u, *(int32*)TMP$88$12, (struct $8FBSYMBOL*)0u, TMP$90$12, *(int32*)((uint8*)TMP$88$12 + 4), 0, 0 );
												PARAM$1 = vr$56;
												SYMBMAKEPARAMOPTIONAL( INNER_PROC$9, PARAM$1, INNER_PARAM_OPTVAL$9 );
											}
										}
										label$49:;
										FUNC_ARG$10 = FUNC_ARG$10 + 1;
										label$48:;
										if( FUNC_ARG$10 <= TMP$87$10 ) goto label$51;
										label$50:;
									}
									I$4 = I$4 + 1;
									{
										struct $15FB_RTL_PARAMDEF* TMP$91$10;
										TMP$91$10 = (struct $15FB_RTL_PARAMDEF*)((uint8*)((uint8*)PROCDEF$1 + (I$4 << (4 & 31))) + 28);
										struct $8FBSYMBOL* vr$63 = SYMBADDPROCPTR( INNER_PROC$9, *(int32*)TMP$91$10, (struct $8FBSYMBOL*)0u, 0, 0, *(int32*)((uint8*)&ENV$ + 276) );
										SUBTYPE$6 = vr$63;
									}
									PARAM_OPTVAL$6 = (struct $7ASTNODE*)0u;
								}
								goto label$43;
								label$60:;
								{
									struct $7ASTNODE* vr$67 = ASTNEWCONSTI( (int64)*(int32*)((uint8*)TMP$85$6 + 12), *(int32*)TMP$85$6, (struct $8FBSYMBOL*)0u );
									PARAM_OPTVAL$6 = vr$67;
								}
								goto label$43;
								label$44:;
								static const void* tmp$96[40] = {
									&&label$46,
									&&label$46,
									&&label$45,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$60,
									&&label$47,
								};
								if( (TMP$86$8 - 15u) > 39u ) goto label$60;
								goto *tmp$96[TMP$86$8 - 15u];
								label$43:;
							}
						}
						goto label$41;
						label$42:;
						{
							PARAM_OPTVAL$6 = (struct $7ASTNODE*)0u;
						}
						label$41:;
						DTYPE$6 = *(int32*)TMP$85$6;
						if( DTYPE$6 != -2147483648u ) goto label$62;
						{
							DTYPE$6 = 32;
						}
						label$62:;
						label$61:;
						if( *(int32*)((uint8*)TMP$85$6 + 4) != 3 ) goto label$63;
						TMP$92$6 = -1;
						goto label$83;
						label$63:;
						TMP$92$6 = 0;
						label$83:;
						struct $8FBSYMBOL* vr$71 = SYMBADDPROCPARAM( PROC$3, (uint8*)0u, DTYPE$6, SUBTYPE$6, TMP$92$6, *(int32*)((uint8*)TMP$85$6 + 4), 0, 0 );
						PARAM$1 = vr$71;
						SYMBMAKEPARAMOPTIONAL( PROC$3, PARAM$1, PARAM_OPTVAL$6 );
					}
				}
				label$38:;
				I$4 = I$4 + 1;
				label$37:;
				if( I$4 <= TMP$84$4 ) goto label$40;
				label$39:;
			}
			$13FB_SYMBATTRIB ATTRIB$3;
			ATTRIB$3 = 0;
			$13FB_PROCATTRIB PATTRIB$3;
			PATTRIB$3 = 0;
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 1) == 0 ) goto label$65;
			{
				PATTRIB$3 = 1;
			}
			label$65:;
			label$64:;
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 64) == 0 ) goto label$67;
			{
				ATTRIB$3 = ATTRIB$3 | 1048576;
			}
			label$67:;
			label$66:;
			uint8* PNAME$3;
			PNAME$3 = (uint8*)*(uint8**)PROCDEF$1;
			uint8* PALIAS$3;
			PALIAS$3 = (uint8*)*(uint8**)((uint8*)PROCDEF$1 + 4);
			if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 128) == 0 ) goto label$69;
			{
				if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$71;
				{
					FBSTRING TMP$94$5;
					if( PALIAS$3 != (uint8*)0u ) goto label$73;
					{
						static FBSTRING TMP_ALIAS$6;
						fb_StrAssign( (void*)&TMP_ALIAS$6, -1, (void*)PNAME$3, 0, 0 );
						PALIAS$3 = (uint8*)*(uint8**)&TMP_ALIAS$6;
					}
					label$73:;
					label$72:;
					static FBSTRING TMP_NAME$5;
					__builtin_memset( &TMP$94$5, 0, 12 );
					FBSTRING* vr$84 = fb_StrConcat( &TMP$94$5, (void*)"__", 3, (void*)PNAME$3, 0 );
					fb_StrAssign( (void*)&TMP_NAME$5, -1, (void*)vr$84, -1, 0 );
					PNAME$3 = (uint8*)*(uint8**)&TMP_NAME$5;
				}
				label$71:;
				label$70:;
			}
			label$69:;
			label$68:;
			if( PALIAS$3 != (uint8*)0u ) goto label$75;
			{
				PALIAS$3 = PNAME$3;
			}
			label$75:;
			label$74:;
			struct $8FBSYMBOL* vr$86 = SYMBADDPROC( PROC$3, PNAME$3, PALIAS$3, *(int32*)((uint8*)PROCDEF$1 + 8), (struct $8FBSYMBOL*)0u, ATTRIB$3, PATTRIB$3, CALLCONV$1, 20 );
			PROC$3 = vr$86;
			if( PROC$3 == (struct $8FBSYMBOL*)0u ) goto label$77;
			{
				*(tmp$33*)((uint8*)PROC$3 + 100) = (tmp$33)*(tmp$33*)((uint8*)PROCDEF$1 + 16);
				if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 2) == 0 ) goto label$79;
				{
					*($12FB_SYMBSTATS*)((uint8*)PROC$3 + 12) = *(int32*)((uint8*)PROC$3 + 12) | 64;
				}
				label$79:;
				label$78:;
				if( (*(int32*)((uint8*)PROCDEF$1 + 20) & 2048) == 0 ) goto label$81;
				{
					*($12FB_SYMBSTATS*)((uint8*)PROC$3 + 12) = *(int32*)((uint8*)PROC$3 + 12) | 524288;
				}
				label$81:;
				label$80:;
			}
			goto label$76;
			label$77:;
			{
				ERRREPORTEX( 4, *(uint8**)PROCDEF$1, 0, 1, (uint8*)0u );
			}
			label$76:;
		}
		label$36:;
		label$35:;
		PROCDEF$1 = (struct $14FB_RTL_PROCDEF*)((uint8*)PROCDEF$1 + 284);
	}
	label$18:;
	goto label$16;
	label$17:;
	label$15:;
}

struct $8FBSYMBOL* RTLPROCLOOKUP( uint8* PNAME$1, int32 PIDX$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$84:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	if( *(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31))) != (struct $8FBSYMBOL*)0u ) goto label$87;
	{
		struct $10FBSYMCHAIN* vr$3 = SYMBLOOKUPAT( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), PNAME$1, 0, 0 );
		CHAIN_$1 = vr$3;
		if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$89;
		{
			if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$91;
			{
				FBSTRING TMP$97$4;
				static FBSTRING TMP_NAME$4;
				__builtin_memset( &TMP$97$4, 0, 12 );
				FBSTRING* vr$6 = fb_StrConcat( &TMP$97$4, (void*)"__", 3, (void*)PNAME$1, 0 );
				fb_StrAssign( (void*)&TMP_NAME$4, -1, (void*)vr$6, -1, 0 );
				PNAME$1 = (uint8*)*(uint8**)&TMP_NAME$4;
				struct $10FBSYMCHAIN* vr$8 = SYMBLOOKUPAT( (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352), PNAME$1, 0, 0 );
				CHAIN_$1 = vr$8;
				if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$93;
				{
					ERRREPORTEX( 8, PNAME$1, 0, 1, (uint8*)0u );
					*(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31))) = (struct $8FBSYMBOL*)0u;
				}
				goto label$92;
				label$93:;
				{
					*(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31))) = *(struct $8FBSYMBOL**)CHAIN_$1;
				}
				label$92:;
			}
			goto label$90;
			label$91:;
			{
				ERRREPORTEX( 8, PNAME$1, 0, 1, (uint8*)0u );
				*(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31))) = (struct $8FBSYMBOL*)0u;
			}
			label$90:;
		}
		goto label$88;
		label$89:;
		{
			*(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31))) = *(struct $8FBSYMBOL**)CHAIN_$1;
		}
		label$88:;
	}
	label$87:;
	label$86:;
	fb$result$1 = *(struct $8FBSYMBOL**)((int32)(struct $8FBSYMBOL**)RTLLOOKUPTB$ + (PIDX$1 << (2 & 31)));
	label$85:;
	return fb$result$1;
}

struct $7ASTNODE* RTLOVLPROCCALL( struct $8FBSYMBOL* SYM$1, struct $7ASTNODE* PARAM1$1, struct $7ASTNODE* PARAM2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$94:;
	$9FB_ERRMSG ERR_NUM$1;
	int32 ARGS$1;
	ARGS$1 = 0;
	struct $16FB_CALL_ARG_LIST ARG_LIST$1;
	*(int32*)&ARG_LIST$1 = 0;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 4) = (struct $11FB_CALL_ARG*)0u;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 8) = (struct $11FB_CALL_ARG*)0u;
	struct $11FB_CALL_ARG* ARG$1;
	struct $11FB_CALL_ARG* vr$3 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)&CTX$, &ARG_LIST$1, 0 );
	ARG$1 = vr$3;
	*(struct $7ASTNODE**)ARG$1 = PARAM1$1;
	*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = 1;
	ARGS$1 = ARGS$1 + 1;
	if( PARAM2$1 == (struct $7ASTNODE*)0u ) goto label$97;
	{
		struct $11FB_CALL_ARG* vr$9 = SYMBALLOCOVLCALLARG( (struct $5TLIST*)&CTX$, &ARG_LIST$1, 0 );
		ARG$1 = vr$9;
		*(struct $7ASTNODE**)ARG$1 = PARAM2$1;
		*($12FB_PARAMMODE*)((uint8*)ARG$1 + 4) = 1;
		ARGS$1 = ARGS$1 + 1;
	}
	label$97:;
	label$96:;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* vr$14 = SYMBFINDCLOSESTOVLPROC( SYM$1, ARGS$1, *(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 4), &ERR_NUM$1, 0 );
	PROC$1 = vr$14;
	if( PROC$1 != (struct $8FBSYMBOL*)0u ) goto label$99;
	{
		SYMBFREEOVLCALLARGS( (struct $5TLIST*)&CTX$, &ARG_LIST$1 );
		fb$result$1 = (struct $7ASTNODE*)0u;
		goto label$95;
	}
	label$99:;
	label$98:;
	struct $7ASTNODE* PROCEXPR$1;
	struct $7ASTNODE* vr$17 = ASTNEWCALL( PROC$1, (struct $7ASTNODE*)0u );
	PROCEXPR$1 = vr$17;
	ARG$1 = *(struct $11FB_CALL_ARG**)((uint8*)&ARG_LIST$1 + 4);
	label$100:;
	if( ARG$1 == (struct $11FB_CALL_ARG*)0u ) goto label$101;
	{
		struct $11FB_CALL_ARG* NXT$2;
		NXT$2 = *(struct $11FB_CALL_ARG**)((uint8*)ARG$1 + 8);
		struct $7ASTNODE* vr$21 = ASTNEWARG( PROCEXPR$1, *(struct $7ASTNODE**)ARG$1, -2147483648u, *(int32*)((uint8*)ARG$1 + 4) );
		if( vr$21 != (struct $7ASTNODE*)0u ) goto label$103;
		{
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$95;
		}
		label$103:;
		label$102:;
		LISTDELNODE( (struct $5TLIST*)&CTX$, (void*)ARG$1 );
		ARG$1 = NXT$2;
	}
	goto label$100;
	label$101:;
	fb$result$1 = PROCEXPR$1;
	label$95:;
	return fb$result$1;
}

int64 RTLCALCEXPRLEN( struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$104:;
	struct $8FBSYMBOL* S$1;
	int32 DTYPE$1;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	{
		uint32 TMP$98$2;
		TMP$98$2 = (uint32)DTYPE$1;
		goto label$107;
		label$108:;
		{
			int64 vr$3 = RTLCALCSTRLEN( EXPR$1, DTYPE$1 );
			fb$result$1 = vr$3;
		}
		goto label$106;
		label$109:;
		{
			int64 vr$5 = SYMBCALCLEN( DTYPE$1, *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8) );
			fb$result$1 = vr$5;
		}
		goto label$106;
		label$107:;
		static const void* tmp$99[15] = {
			&&label$108,
			&&label$109,
			&&label$109,
			&&label$108,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$109,
			&&label$108,
		};
		if( (TMP$98$2 - 4u) > 14u ) goto label$109;
		goto *tmp$99[TMP$98$2 - 4u];
		label$106:;
	}
	label$105:;
	return fb$result$1;
}

int64 RTLCALCSTRLEN( struct $7ASTNODE* EXPR$1, int32 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$110:;
	struct $8FBSYMBOL* S$1;
	__builtin_memset( &S$1, 0, 4 );
	{
		int32 TMP$100$2;
		uint32 TMP$101$2;
		if( (DTYPE$1 & 480) == 0 ) goto label$112;
		TMP$100$2 = 24;
		goto label$127;
		label$112:;
		TMP$100$2 = DTYPE$1 & 31;
		label$127:;
		TMP$101$2 = (uint32)TMP$100$2;
		goto label$114;
		label$115:;
		{
			fb$result$1 = 0ll;
		}
		goto label$113;
		label$116:;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12);
			if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$118;
			{
				fb$result$1 = 0ll;
			}
			goto label$117;
			label$118:;
			{
				if( (*(int32*)((uint8*)S$1 + 28) & 511) == (DTYPE$1 & 511) ) goto label$120;
				{
					fb$result$1 = 0ll;
				}
				goto label$119;
				label$120:;
				{
					fb$result$1 = *(int64*)((uint8*)S$1 + 40);
				}
				label$119:;
			}
			label$117:;
		}
		goto label$113;
		label$121:;
		{
			S$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12);
			if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$123;
			{
				fb$result$1 = 0ll;
			}
			goto label$122;
			label$123:;
			{
				if( (*(int32*)((uint8*)S$1 + 28) & 511) == (DTYPE$1 & 511) ) goto label$125;
				{
					fb$result$1 = 0ll;
				}
				goto label$124;
				label$125:;
				{
					int64 vr$15 = __divdi3( *(int64*)((uint8*)S$1 + 40), (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
					fb$result$1 = vr$15;
				}
				label$124:;
			}
			label$122:;
		}
		goto label$113;
		label$126:;
		{
			fb$result$1 = -1ll;
		}
		goto label$113;
		label$114:;
		static const void* tmp$102[17] = {
			&&label$115,
			&&label$115,
			&&label$116,
			&&label$126,
			&&label$126,
			&&label$121,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$126,
			&&label$116,
		};
		if( (TMP$101$2 - 2u) > 16u ) goto label$126;
		goto *tmp$102[TMP$101$2 - 2u];
		label$113:;
	}
	label$111:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__rtl( void )
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
