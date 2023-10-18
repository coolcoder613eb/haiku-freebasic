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
typedef int64 $11FB_DATATYPE;
typedef int64 $11FB_FUNCMODE;
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
struct $10FBSYMCHAIN {
	struct $8FBSYMBOL* SYM;
	struct $10FBSYMCHAIN* NEXT;
	int64 ISIMPORT;
	struct $10FBSYMCHAIN* PREV;
	struct $8HASHITEM* ITEM;
	struct $10FBSYMCHAIN* IMP_NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FBSYMCHAIN ) == 48 );
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
typedef FBSTRING* (*tmp$28)( void*, int64* );
typedef uint32* (*tmp$29)( void*, int64* );
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
typedef int64 $10FB_RTL_OPT;
struct $15FB_RTL_PARAMDEF {
	$11FB_DATATYPE DTYPE;
	$12FB_PARAMMODE MODE;
	int64 ISOPT;
	int64 OPTVAL;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_RTL_PARAMDEF ) == 32 );
struct $14FB_RTL_PROCDEF {
	uint8* NAME;
	uint8* ALIAS;
	$11FB_DATATYPE DTYPE;
	$11FB_FUNCMODE CALLCONV;
	tmp$33 CALLBACK;
	$10FB_RTL_OPT OPTIONS;
	int64 PARAMS;
	struct $15FB_RTL_PARAMDEF PARAMTB[16];
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_RTL_PROCDEF ) == 568 );
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
struct $11FB_CALL_ARG;
struct $11FB_CALL_ARG {
	struct $7ASTNODE* EXPR;
	$12FB_PARAMMODE MODE;
	struct $11FB_CALL_ARG* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $11FB_CALL_ARG ) == 24 );
typedef int64 $9FB_ERRMSG;
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $7FBARRAYIP7ASTNODEE {
	struct $7ASTNODE** DATA;
	struct $7ASTNODE** PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[8];
};
__FB_STATIC_ASSERT( sizeof( struct $7FBARRAYIP7ASTNODEE ) == 240 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
void fb_WstrDelete( uint32* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_LongintToStr( int64 );
FBSTRING* fb_WstrToStr( uint32* );
uint32* fb_StrToWstr( uint8* );
int64 fb_StrLen( void*, int64 );
int64 fb_WstrLen( uint32* );
static void fb_ctor__rtlzstring( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
int64 ASTTRYOVLSTRINGCONV( struct $7ASTNODE** );
typedef int64 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int64, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int64* );
struct $7ASTNODE* ASTNEWCONSTSTR( uint8* );
struct $7ASTNODE* ASTNEWCONSTWSTR( uint32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
FBSTRING* ASTCONSTFLUSHTOSTR( struct $7ASTNODE* );
uint32* ASTCONSTFLUSHTOWSTR( struct $7ASTNODE* );
int64 ASTCONSTGETASINT64( struct $7ASTNODE* );
double ASTCONSTGETASDOUBLE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCALL( struct $8FBSYMBOL*, struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWARG( struct $7ASTNODE*, struct $7ASTNODE*, int64, int64 );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $8FBSYMBOL* ASTGETSTRLITSYMBOL( struct $7ASTNODE* );
struct $7ASTNODE* ASTBUILDTEMPVARCLEAR( struct $8FBSYMBOL* );
void ASTSETTYPE( struct $7ASTNODE*, int64, struct $8FBSYMBOL* );
typedef int64 $14FB_SYMBFINDOPT;
struct $8FBSYMBOL* SYMBFINDCLOSESTOVLPROC( struct $8FBSYMBOL*, int64, struct $11FB_CALL_ARG*, $9FB_ERRMSG*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBALLOCSTRCONST( uint8*, int64 );
struct $8FBSYMBOL* SYMBALLOCWSTRCONST( uint32*, int64 );
uint8* HUNESCAPE( uint8*, int64* );
uint32* HUNESCAPEW( uint32*, int64* );
void RTLADDINTRINSICPROCS( struct $14FB_RTL_PROCDEF* );
struct $8FBSYMBOL* RTLPROCLOOKUP( uint8*, int64 );
int64 RTLCALCSTRLEN( struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRCONCATWA( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRCONCATAW( struct $7ASTNODE*, int64, struct $7ASTNODE* );
struct $7ASTNODE* RTLWSTRASSIGNWA( struct $7ASTNODE*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRASSIGNAW( struct $7ASTNODE*, int64, struct $7ASTNODE*, int64 );
struct $7ASTNODE* RTLWSTRTOA( struct $7ASTNODE* );
struct $7ASTNODE* RTLATOWSTR( struct $7ASTNODE* );
static struct $8FBSYMBOL* HEVALASCCASE( struct $8FBSYMBOL*, int64 );
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
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
extern struct $13SYMB_DATATYPE SYMB_DTYPETB$[26];
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
static struct $14FB_RTL_PROCDEF FUNCDATA$[190] = { { (uint8*)"fb_StrInit", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_WstrAssignToA_Init", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrAssign", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_WstrAssign", (uint8*)0ull, 39ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrAssignFromA", (uint8*)0ull, 39ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrAssignToA", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_StrDelete", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_hStrDelTemp", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrDelete", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrConcat", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 17ll, 2ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrConcatByref", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_WstrConcat", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrConcatWA", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 1063ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrConcatAW", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrCompare", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrCompare", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrConcatAssign", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, -1ll, 1ll } } }, { (uint8*)"fb_WstrConcatAssign", (uint8*)0ull, 39ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrAllocTempResult", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_StrAllocTempDescF", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrAllocTempDescZ", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_StrAllocTempDescZEx", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1060ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrAlloc", (uint8*)0ull, 39ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_BoolToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 513ll, 1ll, 0ll } } }, { (uint8*)"fb_IntToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_IntToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_BoolToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 513ll, 1ll, 0ll } } }, { (uint8*)"fb_IntToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_UIntToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"fb_UIntToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"fb_UIntToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"fb_LongintToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 525ll, 1ll, 0ll } } }, { (uint8*)"fb_LongintToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 525ll, 1ll, 0ll } } }, { (uint8*)"fb_LongintToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 525ll, 1ll, 0ll } } }, { (uint8*)"fb_ULongintToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"fb_ULongintToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"fb_ULongintToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"fb_FloatToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_FloatToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_FloatToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_DoubleToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 528ll, 1ll, 0ll } } }, { (uint8*)"fb_DoubleToStrQB", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 256ll, 1ll, { { 528ll, 1ll, 0ll } } }, { (uint8*)"fb_DoubleToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 528ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrToStr", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrToWstr", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1060ll, 1ll, 0ll } } }, { (uint8*)"fb_StrMid", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrMid", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 1063ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrAssignMid", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 17ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrAssignMid", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 5ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrFill1", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrFill1", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_StrFill2", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrFill2", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrLen", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 512ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrLen", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrLset", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 17ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrLset", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 39ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrRset", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 1ll, 2ll, { { 17ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrRset", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 39ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_ASC", (uint8*)0ull, 12ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 520ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_WstrAsc", (uint8*)0ull, 12ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 520ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_CHR", (uint8*)0ull, 17ll, 3ll, (tmp$33)0ull, 0ll, 2ll, { { 523ll, 1ll, 0ll }, { 2147483648ll, 4ll, 0ll } } }, { (uint8*)"fb_WstrChr", (uint8*)0ull, 7ll, 3ll, (tmp$33)0ull, 0ll, 2ll, { { 523ll, 1ll, 0ll }, { 2147483648ll, 4ll, 0ll } } }, { (uint8*)"fb_StrInstr", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 520ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrInstr", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrInstrAny", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 520ll, 1ll, 0ll }, { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrInstrAny", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 520ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrInstrRev", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrInstrRev", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrInstrRevAny", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrInstrRevAny", (uint8*)0ull, 8ll, -1ll, (tmp$33)0ull, 0ll, 3ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_TRIM", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrTrim", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_TrimAny", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrTrimAny", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_TrimEx", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrTrimEx", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_RTRIM", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrRTrim", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_RTrimAny", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrRTrimAny", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_RTrimEx", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrRTrimEx", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_LTRIM", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrLTrim", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_LTrimAny", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrLTrimAny", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_LTrimEx", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_WstrLTrimEx", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 1063ll, 1ll, 0ll }, { 1063ll, 1ll, 0ll } } }, { (uint8*)"fb_StrSwap", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 6ll, { { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll }, { 0ll, 2ll, 0ll }, { 520ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_WstrSwap", (uint8*)0ull, 0ll, -1ll, (tmp$33)0ull, 0ll, 4ll, { { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll }, { 39ll, 1ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"val", (uint8*)"fb_VAL", 16ll, -1ll, (tmp$33)0ull, 1ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"val", (uint8*)"fb_WstrVal", 16ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"fb_VALBOOL", (uint8*)0ull, 1ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_VALBOOL", (uint8*)"fb_WstrValBool", 1ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"valint", (uint8*)"fb_VALINT", 11ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"valint", (uint8*)"fb_WstrValInt", 11ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"valuint", (uint8*)"fb_VALUINT", 12ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"valuint", (uint8*)"fb_WstrValUInt", 12ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"vallng", (uint8*)"fb_VALLNG", 13ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"vallng", (uint8*)"fb_WstrValLng", 13ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"valulng", (uint8*)"fb_VALULNG", 14ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"valulng", (uint8*)"fb_WstrValULng", 14ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 519ll, 2ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEX_b", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEX_s", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEX_i", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEX_l", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEX_p", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_b", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_s", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_i", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_l", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"hex", (uint8*)"fb_HEXEx_p", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHex_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"whex", (uint8*)"fb_WstrHexEx_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCT_b", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCT_s", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCT_i", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCT_l", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCT_p", 17ll, -1ll, (tmp$33)0ull, 65ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_b", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_s", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_i", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_l", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"oct", (uint8*)"fb_OCTEx_p", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOct_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"woct", (uint8*)"fb_WstrOctEx_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BIN_b", 17ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BIN_s", 17ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BIN_i", 17ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BIN_l", 17ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BIN_p", 17ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_b", 17ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_s", 17ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_i", 17ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_l", 17ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"bin", (uint8*)"fb_BINEx_p", 17ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 515ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 518ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 524ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 526ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBin_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 1ll, { { 1056ll, 1ll, 0ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_b", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 515ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_s", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 518ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_i", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 524ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_l", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 526ll, 1ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"wbin", (uint8*)"fb_WstrBinEx_p", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 1056ll, 1ll, 0ll, 0ll }, { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_MKD", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 528ll, 1ll, 0ll } } }, { (uint8*)"fb_MKS", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_MKSHORT", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 517ll, 1ll, 0ll } } }, { (uint8*)"fb_MKI", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_MKL", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_MKLONGINT", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 525ll, 1ll, 0ll } } }, { (uint8*)"left", (uint8*)"fb_LEFT", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"left", (uint8*)"fb_WstrLeft", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 519ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_LeftSelf", (uint8*)"fb_LEFTSELF", 0ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"right", (uint8*)"fb_RIGHT", 17ll, -1ll, (tmp$33)0ull, 65ll, 2ll, { { 529ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"right", (uint8*)"fb_WstrRight", 7ll, -1ll, (tmp$33)0ull, 129ll, 2ll, { { 519ll, 2ll, 0ll }, { 520ll, 1ll, 0ll } } }, { (uint8*)"space", (uint8*)"fb_SPACE", 17ll, -1ll, (tmp$33)0ull, 64ll, 1ll, { { 520ll, 1ll, 0ll } } }, { (uint8*)"wspace", (uint8*)"fb_WstrSpace", 7ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 520ll, 1ll, 0ll } } }, { (uint8*)"fb_StrLcase2", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_WstrLcase2", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 519ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_StrUcase2", (uint8*)0ull, 17ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 529ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_WstrUcase2", (uint8*)0ull, 7ll, -1ll, (tmp$33)0ull, 0ll, 2ll, { { 519ll, 2ll, 0ll }, { 523ll, 1ll, -1ll, 0ll } } }, { (uint8*)"fb_CVD", (uint8*)"fb_CVD", 16ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_CVS", (uint8*)"fb_CVS", 15ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_CVSHORT", (uint8*)"fb_CVSHORT", 5ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_CVL", (uint8*)0ull, 11ll, -1ll, (tmp$33)0ull, 0ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_CVLONGINT", (uint8*)"fb_CVLONGINT", 13ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 529ll, 2ll, 0ll } } }, { (uint8*)"fb_CVDFROMLONGINT", (uint8*)"fb_CVDFROMLONGINT", 16ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 525ll, 1ll, 0ll } } }, { (uint8*)"fb_CVSFROML", (uint8*)"fb_CVSFROML", 15ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 523ll, 1ll, 0ll } } }, { (uint8*)"fb_CVLFROMS", (uint8*)"fb_CVLFROMS", 11ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 527ll, 1ll, 0ll } } }, { (uint8*)"fb_CVLONGINTFROMD", (uint8*)"fb_CVLONGINTFROMD", 13ll, -1ll, (tmp$33)0ull, 128ll, 1ll, { { 528ll, 1ll, 0ll } } }, { (uint8*)0ull } };

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

struct $7ASTNODE* RTLSTRCOMPARE( struct $7ASTNODE* STR1$1, int64 SDTYPE1$1, struct $7ASTNODE* STR2$1, int64 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	int64 STR2LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrCompare", 6ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$17;
	{
		goto label$15;
	}
	label$17:;
	label$16:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( STR1LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$19;
	{
		goto label$15;
	}
	label$19:;
	label$18:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$21;
	{
		goto label$15;
	}
	label$21:;
	label$20:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( STR2LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$23;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$24:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrCompare", 81ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STR1$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$27;
	{
		goto label$25;
	}
	label$27:;
	label$26:;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, STR2$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$29;
	{
		goto label$25;
	}
	label$29:;
	label$28:;
	fb$result$1 = PROC$1;
	label$25:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCONCAT( struct $7ASTNODE* STR1$1, int64 SDTYPE1$1, struct $7ASTNODE* STR2$1, int64 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$30:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	int64 STR2LEN$1;
	struct $8FBSYMBOL* TMP$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrConcat", 4ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBADDTEMPVAR( 17ll, (struct $8FBSYMBOL*)0ull );
	TMP$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWVAR( TMP$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$5 = ASTBUILDTEMPVARCLEAR( TMP$1 );
	struct $7ASTNODE* vr$6 = ASTNEWLINK( vr$5, vr$4, 2ll );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$33;
	{
		goto label$31;
	}
	label$33:;
	label$32:;
	int64 vr$8 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$8;
	int64 vr$9 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$35;
	{
		goto label$31;
	}
	label$35:;
	label$34:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( STR1LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$37;
	{
		goto label$31;
	}
	label$37:;
	label$36:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$39;
	{
		goto label$31;
	}
	label$39:;
	label$38:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( STR2LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$41;
	{
		goto label$31;
	}
	label$41:;
	label$40:;
	fb$result$1 = PROC$1;
	label$31:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCATWA( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1, int64 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$42:;
	struct $7ASTNODE* PROC$1;
	int64 STR2LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatWA", 79ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STR1$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$45;
	{
		goto label$43;
	}
	label$45:;
	label$44:;
	int64 vr$4 = RTLCALCSTRLEN( STR2$1, SDTYPE2$1 );
	STR2LEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, STR2$1, SDTYPE2$1, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$47;
	{
		goto label$43;
	}
	label$47:;
	label$46:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( STR2LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$49;
	{
		goto label$43;
	}
	label$49:;
	label$48:;
	fb$result$1 = PROC$1;
	label$43:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCATAW( struct $7ASTNODE* STR1$1, int64 SDTYPE1$1, struct $7ASTNODE* STR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$50:;
	struct $7ASTNODE* PROC$1;
	int64 STR1LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatAW", 80ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( STR1$1, SDTYPE1$1 );
	STR1LEN$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, STR1$1, SDTYPE1$1, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$53;
	{
		goto label$51;
	}
	label$53:;
	label$52:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( STR1LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, vr$5, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$55;
	{
		goto label$51;
	}
	label$55:;
	label$54:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, STR2$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$57;
	{
		goto label$51;
	}
	label$57:;
	label$56:;
	fb$result$1 = PROC$1;
	label$51:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRCONCAT( struct $7ASTNODE* STR1$1, int64 SDTYPE1$1, struct $7ASTNODE* STR2$1, int64 SDTYPE2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$58:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( (SDTYPE1$1 & 511ll) == (SDTYPE2$1 & 511ll) ) goto label$61;
	{
		int64 TMP$289$2;
		if( (SDTYPE1$1 & 480ll) == 0ll ) goto label$62;
		TMP$289$2 = 24ll;
		goto label$69;
		label$62:;
		TMP$289$2 = SDTYPE1$1 & 31ll;
		label$69:;
		if( TMP$289$2 != 7ll ) goto label$64;
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
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcat", 78ll );
	struct $7ASTNODE* vr$8 = ASTNEWCALL( vr$7, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, STR1$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$66;
	{
		goto label$59;
	}
	label$66:;
	label$65:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, STR2$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$68;
	{
		goto label$59;
	}
	label$68:;
	label$67:;
	fb$result$1 = PROC$1;
	label$59:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCONCATASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int64 ISCONCATBYREF$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$70:;
	struct $7ASTNODE* PROC$1;
	int64 DDTYPE$1;
	int64 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( ISCONCATBYREF$1 == 0ll ) goto label$73;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrConcatByref", 5ll );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$2;
	}
	goto label$72;
	label$73:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrConcatAssign", 7ll );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$4;
	}
	label$72:;
	DDTYPE$1 = *(int64*)((uint8*)DST$1 + 8ll) & 511ll;
	int64 vr$7 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, DST$1, DDTYPE$1, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$75;
	{
		goto label$71;
	}
	label$75:;
	label$74:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$77;
	{
		goto label$71;
	}
	label$77:;
	label$76:;
	SDTYPE$1 = *(int64*)((uint8*)SRC$1 + 8ll) & 511ll;
	int64 vr$13 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	LGT$1 = vr$13;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, SRC$1, SDTYPE$1, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$79;
	{
		goto label$71;
	}
	label$79:;
	label$78:;
	struct $7ASTNODE* vr$15 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, vr$15, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$81;
	{
		goto label$71;
	}
	label$81:;
	label$80:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$83;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$84:;
	static struct $7ASTNODE* PROC$1;
	static int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrConcatAssign", 82ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( DST$1, 7ll );
	LGT$1 = vr$3;
	struct $7ASTNODE* vr$4 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$4 != (struct $7ASTNODE*)0ull ) goto label$87;
	{
		goto label$85;
	}
	label$87:;
	label$86:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, vr$5, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$89;
	{
		goto label$85;
	}
	label$89:;
	label$88:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$91;
	{
		goto label$85;
	}
	label$91:;
	label$90:;
	fb$result$1 = PROC$1;
	label$85:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGNWA( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int64 SDTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$92:;
	struct $7ASTNODE* PROC$1;
	int64 DSTLEN$1;
	int64 SRCLEN$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignFromA", 75ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 vr$3 = RTLCALCSTRLEN( DST$1, 7ll );
	DSTLEN$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	SRCLEN$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$95;
	{
		goto label$93;
	}
	label$95:;
	label$94:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( DSTLEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$97;
	{
		goto label$93;
	}
	label$97:;
	label$96:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$99;
	{
		goto label$93;
	}
	label$99:;
	label$98:;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( SRCLEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, vr$9, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$101;
	{
		goto label$93;
	}
	label$101:;
	label$100:;
	fb$result$1 = PROC$1;
	label$93:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGNAW( struct $7ASTNODE* DST$1, int64 DDTYPE$1, struct $7ASTNODE* SRC$1, int64 IS_INI$1 )
{
	struct $8FBSYMBOL* TMP$290$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$102:;
	struct $7ASTNODE* PROC$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( IS_INI$1 == 0ll ) goto label$104;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignToA_Init", 77ll );
	TMP$290$1 = vr$1;
	goto label$113;
	label$104:;
	struct $8FBSYMBOL* vr$2 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignToA", 76ll );
	TMP$290$1 = vr$2;
	label$113:;
	struct $7ASTNODE* vr$3 = ASTNEWCALL( TMP$290$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$3;
	int64 vr$4 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$4;
	struct $7ASTNODE* vr$5 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$5 != (struct $7ASTNODE*)0ull ) goto label$106;
	{
		goto label$103;
	}
	label$106:;
	label$105:;
	struct $7ASTNODE* vr$6 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, vr$6, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$108;
	{
		goto label$103;
	}
	label$108:;
	label$107:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$110;
	{
		goto label$103;
	}
	label$110:;
	label$109:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$112;
	{
		goto label$103;
	}
	label$112:;
	label$111:;
	fb$result$1 = PROC$1;
	label$103:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int64 IS_INI$1 )
{
	struct $8FBSYMBOL* TMP$291$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$114:;
	struct $7ASTNODE* PROC$1;
	int64 DDTYPE$1;
	int64 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DDTYPE$1 = *(int64*)((uint8*)DST$1 + 8ll) & 511ll;
	SDTYPE$1 = *(int64*)((uint8*)SRC$1 + 8ll) & 511ll;
	if( SDTYPE$1 != 7ll ) goto label$117;
	{
		struct $7ASTNODE* vr$5 = RTLWSTRASSIGNAW( DST$1, DDTYPE$1, SRC$1, IS_INI$1 );
		fb$result$1 = vr$5;
		goto label$115;
	}
	goto label$116;
	label$117:;
	if( DDTYPE$1 != 7ll ) goto label$118;
	{
		struct $7ASTNODE* vr$6 = RTLWSTRASSIGNWA( DST$1, SRC$1, SDTYPE$1 );
		fb$result$1 = vr$6;
		goto label$115;
	}
	label$118:;
	label$116:;
	if( IS_INI$1 == 0ll ) goto label$119;
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInit", 0ll );
	TMP$291$1 = vr$7;
	goto label$130;
	label$119:;
	struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_StrAssign", 3ll );
	TMP$291$1 = vr$8;
	label$130:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( TMP$291$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	int64 vr$10 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$10;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, DST$1, *(int64*)((uint8*)DST$1 + 8ll) & 511ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$121;
	{
		goto label$115;
	}
	label$121:;
	label$120:;
	struct $7ASTNODE* vr$14 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, vr$14, 2147483648ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$123;
	{
		goto label$115;
	}
	label$123:;
	label$122:;
	int64 vr$16 = RTLCALCSTRLEN( SRC$1, SDTYPE$1 );
	LGT$1 = vr$16;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$125;
	{
		goto label$115;
	}
	label$125:;
	label$124:;
	struct $7ASTNODE* vr$18 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, vr$18, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$127;
	{
		goto label$115;
	}
	label$127:;
	label$126:;
	struct $7ASTNODE* vr$21 = ASTNEWCONSTI( (int64)-(DDTYPE$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$22 = ASTNEWARG( PROC$1, vr$21, 2147483648ll, -1ll );
	if( vr$22 != (struct $7ASTNODE*)0ull ) goto label$129;
	{
		goto label$115;
	}
	label$129:;
	label$128:;
	ASTSETTYPE( PROC$1, 0ll, (struct $8FBSYMBOL*)0ull );
	fb$result$1 = PROC$1;
	label$115:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRASSIGN( struct $7ASTNODE* DST$1, struct $7ASTNODE* SRC$1, int64 IS_INI$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$131:;
	struct $7ASTNODE* PROC$1;
	int64 DDTYPE$1;
	int64 SDTYPE$1;
	int64 LGT$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DDTYPE$1 = *(int64*)((uint8*)DST$1 + 8ll) & 511ll;
	SDTYPE$1 = *(int64*)((uint8*)SRC$1 + 8ll) & 511ll;
	if( DDTYPE$1 == SDTYPE$1 ) goto label$134;
	{
		if( DDTYPE$1 != 7ll ) goto label$136;
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
	struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssign", 74ll );
	struct $7ASTNODE* vr$8 = ASTNEWCALL( vr$7, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$8;
	int64 vr$9 = RTLCALCSTRLEN( DST$1, DDTYPE$1 );
	LGT$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, DST$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		goto label$132;
	}
	label$138:;
	label$137:;
	struct $7ASTNODE* vr$11 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$140;
	{
		goto label$132;
	}
	label$140:;
	label$139:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, SRC$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$142;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$143:;
	struct $8FBSYMBOL* PROC$1;
	struct $7ASTNODE* CALL_$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	if( DTYPE$1 != 39ll ) goto label$146;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrDelete", 73ll );
		PROC$1 = vr$3;
	}
	goto label$145;
	label$146:;
	{
		if( *(int64*)EXPR$1 != 9ll ) goto label$148;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_hStrDelTemp", 2ll );
			PROC$1 = vr$5;
		}
		goto label$147;
		label$148:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_StrDelete", 1ll );
			PROC$1 = vr$6;
		}
		label$147:;
	}
	label$145:;
	struct $7ASTNODE* vr$7 = ASTNEWCALL( PROC$1, (struct $7ASTNODE*)0ull );
	CALL_$1 = vr$7;
	struct $7ASTNODE* vr$8 = ASTNEWARG( CALL_$1, EXPR$1, DTYPE$1, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$150;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$151:;
	static struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempResult", 8ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, STRG$1, 17ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$154;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$155:;
	struct $7ASTNODE* PROC$1;
	int64 DTYPE$1;
	int64 LGT$1;
	struct $8FBSYMBOL* LITSYM$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)STREXPR$1 + 8ll) & 511ll;
	{
		uint64 TMP$292$2;
		TMP$292$2 = (uint64)DTYPE$1;
		goto label$158;
		label$159:;
		{
			struct $8FBSYMBOL* vr$3 = ASTGETSTRLITSYMBOL( STREXPR$1 );
			LITSYM$1 = vr$3;
			if( LITSYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$161;
			{
				struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescZ", 10ll );
				struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
				PROC$1 = vr$5;
			}
			goto label$160;
			label$161:;
			{
				struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescZEx", 11ll );
				struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0ull );
				PROC$1 = vr$7;
			}
			label$160:;
			struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, STREXPR$1, 2147483648ll, -1ll );
			if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$163;
			{
				goto label$156;
			}
			label$163:;
			label$162:;
			if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$165;
			{
				LGT$1 = *(int64*)((uint8*)LITSYM$1 + 80ll) + -1ll;
				struct $7ASTNODE* vr$11 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
				struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, vr$11, 2147483648ll, -1ll );
				if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$167;
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
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_StrAllocTempDescF", 9ll );
			struct $7ASTNODE* vr$14 = ASTNEWCALL( vr$13, (struct $7ASTNODE*)0ull );
			PROC$1 = vr$14;
			int64 vr$15 = RTLCALCSTRLEN( STREXPR$1, DTYPE$1 );
			LGT$1 = vr$15;
			struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, STREXPR$1, 2147483648ll, -1ll );
			if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$170;
			{
				goto label$156;
			}
			label$170:;
			label$169:;
			struct $7ASTNODE* vr$17 = ASTNEWCONSTI( LGT$1, 8ll, (struct $8FBSYMBOL*)0ull );
			struct $7ASTNODE* vr$18 = ASTNEWARG( PROC$1, vr$17, 2147483648ll, -1ll );
			if( vr$18 != (struct $7ASTNODE*)0ull ) goto label$172;
			{
				goto label$156;
			}
			label$172:;
			label$171:;
		}
		goto label$157;
		label$158:;
		static const void* tmp$293[15ll] = {
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
		if( (TMP$292$2 - 4ull) > 14ull ) goto label$157;
		goto *tmp$293[TMP$292$2 - 4ull];
		label$157:;
	}
	fb$result$1 = PROC$1;
	label$156:;
	return fb$result$1;
}

struct $7ASTNODE* RTLWSTRALLOC( struct $7ASTNODE* LENEXPR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$173:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrAlloc", 72ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, LENEXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$176;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$177:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrToStr", 19ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$180;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$181:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrToWstr", 90ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$184;
	{
		goto label$182;
	}
	label$184:;
	label$183:;
	fb$result$1 = PROC$1;
	label$182:;
	return fb$result$1;
}

struct $7ASTNODE* RTLTOSTR( struct $7ASTNODE* EXPR$1, int64 PAD$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$185:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITSYM$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	if( *(int64*)EXPR$1 != 16ll ) goto label$188;
	{
		FBSTRING S$2;
		__builtin_memset( &S$2, 0, 24ll );
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 1ll ) goto label$190;
		{
		}
		goto label$189;
		label$190:;
		{
			if( PAD$1 == 0ll ) goto label$192;
			{
				int64 TMP$294$4;
				if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$193;
				TMP$294$4 = 24ll;
				goto label$239;
				label$193:;
				TMP$294$4 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
				label$239:;
				if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$294$4 * 56ll)) + 16ll) == 0ll ) goto label$195;
				{
					double vr$14 = ASTCONSTGETASDOUBLE( EXPR$1 );
					if( vr$14 < 0x0p+0 ) goto label$197;
					{
						fb_StrAssign( (void*)&S$2, -1ll, (void*)" ", 2ll, 0 );
					}
					label$197:;
					label$196:;
				}
				goto label$194;
				label$195:;
				{
					fb_StrAssign( (void*)&S$2, -1ll, (void*)" ", 2ll, 0 );
				}
				label$194:;
			}
			label$192:;
			label$191:;
		}
		label$189:;
		FBSTRING* vr$17 = ASTCONSTFLUSHTOSTR( EXPR$1 );
		fb_StrConcatAssign( (void*)&S$2, -1ll, (void*)vr$17, -1ll, 0 );
		struct $7ASTNODE* vr$19 = ASTNEWCONSTSTR( (uint8*)*(uint8**)&S$2 );
		fb$result$1 = vr$19;
		fb_StrDelete( (FBSTRING*)&S$2 );
		goto label$186;
		fb_StrDelete( (FBSTRING*)&S$2 );
	}
	label$188:;
	label$187:;
	if( DTYPE$1 != 7ll ) goto label$199;
	{
		struct $8FBSYMBOL* vr$22 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITSYM$1 = vr$22;
		if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$201;
		{
			if( *(int64*)((uint8*)&ENV$ + 576ll) == 0ll ) goto label$203;
			{
				FBSTRING TMP$296$4;
				__builtin_memset( &TMP$296$4, 0, 24ll );
				FBSTRING* vr$28 = fb_WstrToStr( (uint32*)*(uint32**)((uint8*)LITSYM$1 + 96ll) );
				fb_StrAssign( (void*)&TMP$296$4, -1ll, (void*)vr$28, -1ll, 0 );
				struct $8FBSYMBOL* vr$30 = SYMBALLOCSTRCONST( (uint8*)*(uint8**)&TMP$296$4, (*(int64*)((uint8*)LITSYM$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll );
				LITSYM$1 = vr$30;
				fb_StrDelete( (FBSTRING*)&TMP$296$4 );
				struct $7ASTNODE* vr$32 = ASTNEWVAR( LITSYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$32;
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
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	{
		int64 TMP$297$2;
		uint64 TMP$298$2;
		if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$204;
		TMP$297$2 = 24ll;
		goto label$240;
		label$204:;
		TMP$297$2 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
		label$240:;
		TMP$298$2 = *(uint64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$297$2 * 56ll));
		goto label$206;
		label$207:;
		{
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$209;
			{
				struct $7ASTNODE* vr$44 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
				EXPR$1 = vr$44;
				DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			}
			label$209:;
			label$208:;
			{
				if( DTYPE$1 != 4ll ) goto label$211;
				label$212:;
				{
					fb$result$1 = EXPR$1;
					goto label$186;
				}
				goto label$210;
				label$211:;
				if( DTYPE$1 != 7ll ) goto label$213;
				label$214:;
				{
					struct $7ASTNODE* vr$47 = RTLWSTRTOA( EXPR$1 );
					fb$result$1 = vr$47;
					goto label$186;
				}
				goto label$210;
				label$213:;
				if( DTYPE$1 != 1ll ) goto label$215;
				label$216:;
				{
					struct $8FBSYMBOL* vr$48 = RTLPROCLOOKUP( (uint8*)"fb_BoolToStr", 12ll );
					F$1 = vr$48;
				}
				goto label$210;
				label$215:;
				{
					{
						int64 TMP$299$6;
						uint64 TMP$300$6;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$218;
						TMP$299$6 = 24ll;
						goto label$241;
						label$218:;
						TMP$299$6 = DTYPE$1 & 31ll;
						label$241:;
						TMP$300$6 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$299$6 * 56ll)) + 40ll);
						goto label$220;
						label$221:;
						{
							struct $8FBSYMBOL* TMP$301$7;
							if( PAD$1 != 0ll ) goto label$222;
							struct $8FBSYMBOL* vr$52 = RTLPROCLOOKUP( (uint8*)"fb_LongintToStr", 15ll );
							TMP$301$7 = vr$52;
							goto label$242;
							label$222:;
							struct $8FBSYMBOL* vr$53 = RTLPROCLOOKUP( (uint8*)"fb_LongintToStrQB", 22ll );
							TMP$301$7 = vr$53;
							label$242:;
							F$1 = TMP$301$7;
						}
						goto label$219;
						label$223:;
						{
							struct $8FBSYMBOL* TMP$302$7;
							if( PAD$1 != 0ll ) goto label$224;
							struct $8FBSYMBOL* vr$54 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToStr", 16ll );
							TMP$302$7 = vr$54;
							goto label$243;
							label$224:;
							struct $8FBSYMBOL* vr$55 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToStrQB", 23ll );
							TMP$302$7 = vr$55;
							label$243:;
							F$1 = TMP$302$7;
						}
						goto label$219;
						label$225:;
						{
							struct $8FBSYMBOL* TMP$303$7;
							if( PAD$1 != 0ll ) goto label$226;
							struct $8FBSYMBOL* vr$56 = RTLPROCLOOKUP( (uint8*)"fb_UIntToStr", 14ll );
							TMP$303$7 = vr$56;
							goto label$244;
							label$226:;
							struct $8FBSYMBOL* vr$57 = RTLPROCLOOKUP( (uint8*)"fb_UIntToStrQB", 21ll );
							TMP$303$7 = vr$57;
							label$244:;
							F$1 = TMP$303$7;
						}
						goto label$219;
						label$227:;
						{
							struct $8FBSYMBOL* TMP$304$7;
							if( PAD$1 != 0ll ) goto label$228;
							struct $8FBSYMBOL* vr$58 = RTLPROCLOOKUP( (uint8*)"fb_IntToStr", 13ll );
							TMP$304$7 = vr$58;
							goto label$245;
							label$228:;
							struct $8FBSYMBOL* vr$59 = RTLPROCLOOKUP( (uint8*)"fb_IntToStrQB", 20ll );
							TMP$304$7 = vr$59;
							label$245:;
							F$1 = TMP$304$7;
						}
						goto label$219;
						label$220:;
						static const void* tmp$307[7ll] = {
							&&label$225,
							&&label$227,
							&&label$225,
							&&label$227,
							&&label$225,
							&&label$221,
							&&label$223,
						};
						if( (TMP$300$6 - 2ull) > 6ull ) goto label$227;
						goto *tmp$307[TMP$300$6 - 2ull];
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
			if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 15ll ) goto label$231;
			{
				struct $8FBSYMBOL* TMP$305$4;
				if( PAD$1 != 0ll ) goto label$232;
				struct $8FBSYMBOL* vr$62 = RTLPROCLOOKUP( (uint8*)"fb_FloatToStr", 17ll );
				TMP$305$4 = vr$62;
				goto label$246;
				label$232:;
				struct $8FBSYMBOL* vr$63 = RTLPROCLOOKUP( (uint8*)"fb_FloatToStrQB", 24ll );
				TMP$305$4 = vr$63;
				label$246:;
				F$1 = TMP$305$4;
			}
			goto label$230;
			label$231:;
			{
				struct $8FBSYMBOL* TMP$306$4;
				if( PAD$1 != 0ll ) goto label$233;
				struct $8FBSYMBOL* vr$64 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToStr", 18ll );
				TMP$306$4 = vr$64;
				goto label$247;
				label$233:;
				struct $8FBSYMBOL* vr$65 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToStrQB", 25ll );
				TMP$306$4 = vr$65;
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
			struct $7ASTNODE* vr$66 = ASTNEWCONV( 17ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
			fb$result$1 = vr$66;
			goto label$186;
		}
		goto label$205;
		label$236:;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$186;
		}
		goto label$205;
		label$206:;
		static const void* tmp$308[4ll] = {
			&&label$207,
			&&label$229,
			&&label$234,
			&&label$235,
		};
		if( TMP$298$2 > 3ull ) goto label$236;
		goto *tmp$308[TMP$298$2 - 0ull];
		label$205:;
	}
	struct $7ASTNODE* vr$67 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$67;
	struct $7ASTNODE* vr$68 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$68 != (struct $7ASTNODE*)0ull ) goto label$238;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$248:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITSYM$1;
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	fb$result$1 = (struct $7ASTNODE*)0ull;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	if( *(int64*)EXPR$1 != 16ll ) goto label$251;
	{
		uint32* vr$5 = ASTCONSTFLUSHTOWSTR( EXPR$1 );
		struct $7ASTNODE* vr$6 = ASTNEWCONSTWSTR( vr$5 );
		fb$result$1 = vr$6;
		goto label$249;
	}
	label$251:;
	label$250:;
	if( DTYPE$1 != 4ll ) goto label$253;
	{
		struct $8FBSYMBOL* vr$7 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITSYM$1 = vr$7;
		if( LITSYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$255;
		{
			if( *(int64*)((uint8*)&ENV$ + 576ll) == 0ll ) goto label$257;
			{
				uint32* TMP$309$4;
				uint32* vr$11 = fb_StrToWstr( (uint8*)*(uint8**)((uint8*)LITSYM$1 + 96ll) );
				TMP$309$4 = vr$11;
				struct $8FBSYMBOL* vr$12 = SYMBALLOCWSTRCONST( TMP$309$4, *(int64*)((uint8*)LITSYM$1 + 80ll) + -1ll );
				LITSYM$1 = vr$12;
				fb_WstrDelete( (uint32*)TMP$309$4 );
				struct $7ASTNODE* vr$13 = ASTNEWVAR( LITSYM$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
				fb$result$1 = vr$13;
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
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	{
		int64 TMP$310$2;
		uint64 TMP$311$2;
		if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$258;
		TMP$310$2 = 24ll;
		goto label$287;
		label$258:;
		TMP$310$2 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
		label$287:;
		TMP$311$2 = *(uint64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$310$2 * 56ll));
		goto label$260;
		label$261:;
		{
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$263;
			{
				struct $7ASTNODE* vr$25 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
				EXPR$1 = vr$25;
				DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			}
			label$263:;
			label$262:;
			{
				if( DTYPE$1 != 7ll ) goto label$265;
				label$266:;
				{
					fb$result$1 = EXPR$1;
					goto label$249;
				}
				goto label$264;
				label$265:;
				if( DTYPE$1 != 4ll ) goto label$267;
				label$268:;
				{
					struct $7ASTNODE* vr$28 = RTLATOWSTR( EXPR$1 );
					fb$result$1 = vr$28;
					goto label$249;
				}
				goto label$264;
				label$267:;
				if( DTYPE$1 != 1ll ) goto label$269;
				label$270:;
				{
					struct $8FBSYMBOL* vr$29 = RTLPROCLOOKUP( (uint8*)"fb_BoolToWstr", 83ll );
					F$1 = vr$29;
				}
				goto label$264;
				label$269:;
				{
					{
						int64 TMP$312$6;
						uint64 TMP$313$6;
						if( (DTYPE$1 & 480ll) == 0ll ) goto label$272;
						TMP$312$6 = 24ll;
						goto label$288;
						label$272:;
						TMP$312$6 = DTYPE$1 & 31ll;
						label$288:;
						TMP$313$6 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$312$6 * 56ll)) + 40ll);
						goto label$274;
						label$275:;
						{
							struct $8FBSYMBOL* vr$33 = RTLPROCLOOKUP( (uint8*)"fb_LongintToWstr", 86ll );
							F$1 = vr$33;
						}
						goto label$273;
						label$276:;
						{
							struct $8FBSYMBOL* vr$34 = RTLPROCLOOKUP( (uint8*)"fb_ULongintToWstr", 87ll );
							F$1 = vr$34;
						}
						goto label$273;
						label$277:;
						{
							struct $8FBSYMBOL* vr$35 = RTLPROCLOOKUP( (uint8*)"fb_UIntToWstr", 85ll );
							F$1 = vr$35;
						}
						goto label$273;
						label$278:;
						{
							struct $8FBSYMBOL* vr$36 = RTLPROCLOOKUP( (uint8*)"fb_IntToWstr", 84ll );
							F$1 = vr$36;
						}
						goto label$273;
						label$274:;
						static const void* tmp$314[7ll] = {
							&&label$277,
							&&label$278,
							&&label$277,
							&&label$278,
							&&label$277,
							&&label$275,
							&&label$276,
						};
						if( (TMP$313$6 - 2ull) > 6ull ) goto label$278;
						goto *tmp$314[TMP$313$6 - 2ull];
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
			if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 15ll ) goto label$281;
			{
				struct $8FBSYMBOL* vr$39 = RTLPROCLOOKUP( (uint8*)"fb_FloatToWstr", 88ll );
				F$1 = vr$39;
			}
			goto label$280;
			label$281:;
			{
				struct $8FBSYMBOL* vr$40 = RTLPROCLOOKUP( (uint8*)"fb_DoubleToWstr", 89ll );
				F$1 = vr$40;
			}
			label$280:;
		}
		goto label$259;
		label$282:;
		{
			struct $7ASTNODE* vr$41 = RTLATOWSTR( EXPR$1 );
			fb$result$1 = vr$41;
			goto label$249;
		}
		goto label$259;
		label$283:;
		{
			struct $7ASTNODE* vr$42 = ASTNEWCONV( 39ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
			fb$result$1 = vr$42;
			goto label$249;
		}
		goto label$259;
		label$284:;
		{
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$249;
		}
		goto label$259;
		label$260:;
		static const void* tmp$315[4ll] = {
			&&label$261,
			&&label$279,
			&&label$282,
			&&label$283,
		};
		if( TMP$311$2 > 3ull ) goto label$284;
		goto *tmp$315[TMP$311$2 - 0ull];
		label$259:;
	}
	struct $7ASTNODE* vr$43 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$43;
	struct $7ASTNODE* vr$44 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$44 != (struct $7ASTNODE*)0ull ) goto label$286;
	{
		goto label$249;
	}
	label$286:;
	label$285:;
	fb$result$1 = PROC$1;
	label$249:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRTOVAL( struct $7ASTNODE* EXPR$1, int64 TO_DTYPE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$289:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* S$1;
	struct $11FB_CALL_ARG ARG$1;
	$9FB_ERRMSG ERR_NUM$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$292;
	{
		struct $7ASTNODE* vr$2 = ASTNEWCONV( 9ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
		EXPR$1 = vr$2;
	}
	label$292:;
	label$291:;
	{
		int64 TMP$316$2;
		uint64 TMP$317$2;
		if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$293;
		TMP$316$2 = 24ll;
		goto label$312;
		label$293:;
		TMP$316$2 = TO_DTYPE$1 & 31ll;
		label$312:;
		TMP$317$2 = (uint64)TMP$316$2;
		goto label$295;
		label$296:;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"val", 31ll );
			F$1 = vr$5;
		}
		goto label$294;
		label$297:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_VALBOOL", 26ll );
			F$1 = vr$6;
		}
		goto label$294;
		label$298:;
		{
			{
				int64 TMP$318$4;
				uint64 TMP$319$4;
				if( (TO_DTYPE$1 & 480ll) == 0ll ) goto label$299;
				TMP$318$4 = 24ll;
				goto label$313;
				label$299:;
				TMP$318$4 = TO_DTYPE$1 & 31ll;
				label$313:;
				TMP$319$4 = *(uint64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$318$4 * 56ll)) + 40ll);
				goto label$301;
				label$302:;
				{
					struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"vallng", 29ll );
					F$1 = vr$10;
				}
				goto label$300;
				label$303:;
				{
					struct $8FBSYMBOL* vr$11 = RTLPROCLOOKUP( (uint8*)"valulng", 30ll );
					F$1 = vr$11;
				}
				goto label$300;
				label$304:;
				{
					struct $8FBSYMBOL* vr$12 = RTLPROCLOOKUP( (uint8*)"valint", 27ll );
					F$1 = vr$12;
				}
				goto label$300;
				label$305:;
				{
					struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"valuint", 28ll );
					F$1 = vr$13;
				}
				goto label$300;
				label$301:;
				static const void* tmp$320[8ll] = {
					&&label$304,
					&&label$305,
					&&label$304,
					&&label$305,
					&&label$304,
					&&label$305,
					&&label$302,
					&&label$303,
				};
				if( (TMP$319$4 - 1ull) > 7ull ) goto label$300;
				goto *tmp$320[TMP$319$4 - 1ull];
				label$300:;
			}
		}
		goto label$294;
		label$306:;
		{
			struct $7ASTNODE* vr$14 = ASTNEWCONV( TO_DTYPE$1, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
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
		static const void* tmp$321[24ll] = {
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
		if( (TMP$317$2 - 1ull) > 23ull ) goto label$307;
		goto *tmp$321[TMP$317$2 - 1ull];
		label$294:;
	}
	*(struct $7ASTNODE**)&ARG$1 = EXPR$1;
	*($12FB_PARAMMODE*)((uint8*)&ARG$1 + 8ll) = -1ll;
	*(struct $11FB_CALL_ARG**)((uint8*)&ARG$1 + 16ll) = (struct $11FB_CALL_ARG*)0ull;
	struct $8FBSYMBOL* vr$17 = SYMBFINDCLOSESTOVLPROC( F$1, 1ll, &ARG$1, &ERR_NUM$1, 0ll );
	F$1 = vr$17;
	if( F$1 != (struct $8FBSYMBOL*)0ull ) goto label$309;
	{
		goto label$290;
	}
	label$309:;
	label$308:;
	struct $7ASTNODE* vr$18 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$18;
	struct $7ASTNODE* vr$19 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$19 != (struct $7ASTNODE*)0ull ) goto label$311;
	{
		goto label$290;
	}
	label$311:;
	label$310:;
	struct $7ASTNODE* vr$20 = ASTNEWCONV( TO_DTYPE$1, (struct $8FBSYMBOL*)0ull, PROC$1, 0ll, (int64*)0ull );
	fb$result$1 = vr$20;
	label$290:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRMID( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1, struct $7ASTNODE* EXPR3$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$314:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &EXPR1$1 );
	if( (*(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll) == 7ll ) goto label$317;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrMid", 47ll );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$5;
	}
	goto label$316;
	label$317:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrMid", 91ll );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$7;
	}
	label$316:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, EXPR1$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$319;
	{
		goto label$315;
	}
	label$319:;
	label$318:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR2$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$321;
	{
		goto label$315;
	}
	label$321:;
	label$320:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, EXPR3$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$323;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$324:;
	struct $7ASTNODE* PROC$1;
	int64 DST_LEN$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &EXPR1$1 );
	if( (*(int64*)((uint8*)EXPR1$1 + 8ll) & 511ll) == 7ll ) goto label$327;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrAssignMid", 48ll );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$5;
		DST_LEN$1 = -1ll;
	}
	goto label$326;
	label$327:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrAssignMid", 92ll );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$7;
		int64 vr$8 = RTLCALCSTRLEN( EXPR1$1, 7ll );
		DST_LEN$1 = vr$8;
	}
	label$326:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, EXPR1$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$329;
	{
		goto label$325;
	}
	label$329:;
	label$328:;
	if( DST_LEN$1 == -1ll ) goto label$331;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONSTI( DST_LEN$1, 8ll, (struct $8FBSYMBOL*)0ull );
		struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
		if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$333;
		{
			goto label$325;
		}
		label$333:;
		label$332:;
	}
	label$331:;
	label$330:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, EXPR2$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$335;
	{
		goto label$325;
	}
	label$335:;
	label$334:;
	struct $7ASTNODE* vr$13 = ASTNEWARG( PROC$1, EXPR3$1, 2147483648ll, -1ll );
	if( vr$13 != (struct $7ASTNODE*)0ull ) goto label$337;
	{
		goto label$325;
	}
	label$337:;
	label$336:;
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, EXPR4$1, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$339;
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

int64 RTLSTRLRSET( struct $7ASTNODE* DSTEXPR$1, struct $7ASTNODE* SRCEXPR$1, int64 IS_RSET$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$340:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = 0ll;
	if( (*(int64*)((uint8*)DSTEXPR$1 + 8ll) & 511ll) == 7ll ) goto label$343;
	{
		struct $8FBSYMBOL* TMP$322$2;
		if( IS_RSET$1 == 0ll ) goto label$344;
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrRset", 53ll );
		TMP$322$2 = vr$3;
		goto label$350;
		label$344:;
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrLset", 52ll );
		TMP$322$2 = vr$4;
		label$350:;
		struct $7ASTNODE* vr$5 = ASTNEWCALL( TMP$322$2, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$5;
	}
	goto label$342;
	label$343:;
	{
		struct $8FBSYMBOL* TMP$323$2;
		if( IS_RSET$1 == 0ll ) goto label$345;
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrRset", 97ll );
		TMP$323$2 = vr$6;
		goto label$351;
		label$345:;
		struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_WstrLset", 96ll );
		TMP$323$2 = vr$7;
		label$351:;
		struct $7ASTNODE* vr$8 = ASTNEWCALL( TMP$323$2, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$8;
	}
	label$342:;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, DSTEXPR$1, 2147483648ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$347;
	{
		goto label$341;
	}
	label$347:;
	label$346:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, SRCEXPR$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$349;
	{
		goto label$341;
	}
	label$349:;
	label$348:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$341:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRFILL( struct $7ASTNODE* EXPR1$1, struct $7ASTNODE* EXPR2$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$352:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	{
		int64 TMP$324$2;
		TMP$324$2 = *(int64*)((uint8*)EXPR2$1 + 8ll) & 511ll;
		if( TMP$324$2 == 17ll ) goto label$356;
		label$357:;
		if( TMP$324$2 == 18ll ) goto label$356;
		label$358:;
		if( TMP$324$2 != 4ll ) goto label$355;
		label$356:;
		{
			struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_StrFill2", 50ll );
			F$1 = vr$3;
		}
		goto label$354;
		label$355:;
		{
			struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_StrFill1", 49ll );
			F$1 = vr$4;
		}
		label$359:;
		label$354:;
	}
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR1$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$361;
	{
		goto label$353;
	}
	label$361:;
	label$360:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, EXPR2$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$363;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$364:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( (*(int64*)((uint8*)EXPR2$1 + 8ll) & 511ll) != 7ll ) goto label$367;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrFill2", 94ll );
		F$1 = vr$3;
	}
	goto label$366;
	label$367:;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_WstrFill1", 93ll );
		F$1 = vr$4;
	}
	label$366:;
	struct $7ASTNODE* vr$5 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR1$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$369;
	{
		goto label$365;
	}
	label$369:;
	label$368:;
	struct $7ASTNODE* vr$7 = ASTNEWARG( PROC$1, EXPR2$1, 2147483648ll, -1ll );
	if( vr$7 != (struct $7ASTNODE*)0ull ) goto label$371;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$372:;
	struct $7ASTNODE* PROC$1;
	int64 LENGTH$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrLen", 51ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 vr$5 = RTLCALCSTRLEN( EXPR$1, *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll );
	LENGTH$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, EXPR$1, 17ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$375;
	{
		goto label$373;
	}
	label$375:;
	label$374:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( LENGTH$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$377;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$378:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrLen", 95ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	struct $7ASTNODE* vr$3 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$3 != (struct $7ASTNODE*)0ull ) goto label$381;
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
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$382:;
	struct $7ASTNODE* PROC$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &EXPR$1 );
	if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) == 7ll ) goto label$385;
	{
		struct $8FBSYMBOL* vr$4 = RTLPROCLOOKUP( (uint8*)"fb_ASC", 54ll );
		struct $7ASTNODE* vr$5 = ASTNEWCALL( vr$4, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$5;
	}
	goto label$384;
	label$385:;
	{
		struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrAsc", 98ll );
		struct $7ASTNODE* vr$7 = ASTNEWCALL( vr$6, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$7;
	}
	label$384:;
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$387;
	{
		goto label$383;
	}
	label$387:;
	label$386:;
	if( POSEXPR$1 != (struct $7ASTNODE*)0ull ) goto label$389;
	{
		struct $7ASTNODE* vr$9 = ASTNEWCONSTI( 1ll, 8ll, (struct $8FBSYMBOL*)0ull );
		POSEXPR$1 = vr$9;
	}
	label$389:;
	label$388:;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, POSEXPR$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$391;
	{
		goto label$383;
	}
	label$391:;
	label$390:;
	fb$result$1 = PROC$1;
	label$383:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRCHR( int64 ARGS$1, struct $7FBARRAYIP7ASTNODEE* EXPRTB$1, int64 IS_WSTR$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$392:;
	struct $7ASTNODE* PROC$1;
	struct $7ASTNODE* EXPR$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	if( IS_WSTR$1 != 0ll ) goto label$395;
	{
		struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_CHR", 55ll );
		struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$2;
	}
	goto label$394;
	label$395:;
	{
		struct $8FBSYMBOL* vr$3 = RTLPROCLOOKUP( (uint8*)"fb_WstrChr", 99ll );
		struct $7ASTNODE* vr$4 = ASTNEWCALL( vr$3, (struct $7ASTNODE*)0ull );
		PROC$1 = vr$4;
	}
	label$394:;
	struct $7ASTNODE* vr$5 = ASTNEWCONSTI( ARGS$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, vr$5, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$397;
	{
		goto label$393;
	}
	label$397:;
	label$396:;
	{
		int64 I$2;
		I$2 = 0ll;
		int64 TMP$325$2;
		TMP$325$2 = ARGS$1 + -1ll;
		goto label$398;
		label$401:;
		{
			int64 TMP$326$3;
			EXPR$1 = *(struct $7ASTNODE**)((I$2 << (3ll & 63ll)) + *(int64*)EXPRTB$1);
			DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			if( ((*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 480ll) == 0ll ) goto label$402;
			TMP$326$3 = 24ll;
			goto label$412;
			label$402:;
			TMP$326$3 = (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) & 31ll;
			label$412:;
			if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$326$3 * 56ll)) < 2ll ) goto label$404;
			{
				FBSTRING TMP$328$4;
				FBSTRING TMP$329$4;
				__builtin_memset( &TMP$329$4, 0, 24ll );
				FBSTRING* vr$22 = fb_LongintToStr( I$2 + 1ll );
				__builtin_memset( &TMP$328$4, 0, 24ll );
				FBSTRING* vr$25 = fb_StrConcat( &TMP$328$4, (void*)"at parameter: ", 15ll, (void*)vr$22, -1ll );
				fb_StrAssign( (void*)&TMP$329$4, -1ll, (void*)vr$25, -1ll, 0 );
				ERRREPORTEX( 58ll, (uint8*)*(uint8**)&TMP$329$4, 0ll, 1ll, (uint8*)0ull );
				fb_StrDelete( (FBSTRING*)&TMP$329$4 );
				goto label$393;
			}
			label$404:;
			label$403:;
			{
				uint64 TMP$330$4;
				TMP$330$4 = (uint64)DTYPE$1;
				goto label$406;
				label$407:;
				{
					FBSTRING TMP$331$5;
					FBSTRING TMP$332$5;
					__builtin_memset( &TMP$332$5, 0, 24ll );
					FBSTRING* vr$30 = fb_LongintToStr( I$2 + 1ll );
					__builtin_memset( &TMP$331$5, 0, 24ll );
					FBSTRING* vr$33 = fb_StrConcat( &TMP$331$5, (void*)"at parameter: ", 15ll, (void*)vr$30, -1ll );
					fb_StrAssign( (void*)&TMP$332$5, -1ll, (void*)vr$33, -1ll, 0 );
					ERRREPORTEX( 58ll, (uint8*)*(uint8**)&TMP$332$5, 0ll, 1ll, (uint8*)0ull );
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
					struct $7ASTNODE* vr$36 = ASTNEWCONV( 8ll, (struct $8FBSYMBOL*)0ull, EXPR$1, 0ll, (int64*)0ull );
					EXPR$1 = vr$36;
				}
				goto label$405;
				label$406:;
				static const void* tmp$333[5ll] = {
					&&label$407,
					&&label$409,
					&&label$409,
					&&label$407,
					&&label$408,
				};
				if( (TMP$330$4 - 4ull) > 4ull ) goto label$409;
				goto *tmp$333[TMP$330$4 - 4ull];
				label$405:;
			}
			struct $7ASTNODE* vr$37 = ASTNEWARG( PROC$1, EXPR$1, 8ll, -1ll );
			if( vr$37 != (struct $7ASTNODE*)0ull ) goto label$411;
			{
				goto label$393;
			}
			label$411:;
			label$410:;
		}
		label$399:;
		I$2 = I$2 + 1ll;
		label$398:;
		if( I$2 <= TMP$325$2 ) goto label$401;
		label$400:;
	}
	fb$result$1 = PROC$1;
	label$393:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRINSTR( struct $7ASTNODE* ND_START$1, struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int64 SEARCH_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$413:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$416;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$416:;
	label$415:;
	DTYPE$1 = *(int64*)((uint8*)ND_TEXT$1 + 8ll) & 511ll;
	if( SEARCH_ANY$1 == 0ll ) goto label$418;
	{
		if( DTYPE$1 == 7ll ) goto label$420;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrAny", 57ll );
			F$1 = vr$5;
		}
		goto label$419;
		label$420:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrAny", 101ll );
			F$1 = vr$6;
		}
		label$419:;
	}
	goto label$417;
	label$418:;
	{
		if( DTYPE$1 == 7ll ) goto label$422;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInstr", 56ll );
			F$1 = vr$7;
		}
		goto label$421;
		label$422:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstr", 100ll );
			F$1 = vr$8;
		}
		label$421:;
	}
	label$417:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, ND_START$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$424;
	{
		goto label$414;
	}
	label$424:;
	label$423:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, ND_TEXT$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$426;
	{
		goto label$414;
	}
	label$426:;
	label$425:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_PATTERN$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$428;
	{
		goto label$414;
	}
	label$428:;
	label$427:;
	fb$result$1 = PROC$1;
	label$414:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRINSTRREV( struct $7ASTNODE* ND_START$1, struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int64 SEARCH_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$429:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$432;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$432:;
	label$431:;
	DTYPE$1 = *(int64*)((uint8*)ND_TEXT$1 + 8ll) & 511ll;
	if( SEARCH_ANY$1 == 0ll ) goto label$434;
	{
		if( DTYPE$1 == 7ll ) goto label$436;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrRevAny", 59ll );
			F$1 = vr$5;
		}
		goto label$435;
		label$436:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrRevAny", 103ll );
			F$1 = vr$6;
		}
		label$435:;
	}
	goto label$433;
	label$434:;
	{
		if( DTYPE$1 == 7ll ) goto label$438;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_StrInstrRev", 58ll );
			F$1 = vr$7;
		}
		goto label$437;
		label$438:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrInstrRev", 102ll );
			F$1 = vr$8;
		}
		label$437:;
	}
	label$433:;
	struct $7ASTNODE* vr$9 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$9;
	struct $7ASTNODE* vr$10 = ASTNEWARG( PROC$1, ND_TEXT$1, 2147483648ll, -1ll );
	if( vr$10 != (struct $7ASTNODE*)0ull ) goto label$440;
	{
		goto label$430;
	}
	label$440:;
	label$439:;
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, ND_PATTERN$1, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$442;
	{
		goto label$430;
	}
	label$442:;
	label$441:;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_START$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$444;
	{
		goto label$430;
	}
	label$444:;
	label$443:;
	fb$result$1 = PROC$1;
	label$430:;
	return fb$result$1;
}

struct $7ASTNODE* RTLSTRTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int64 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$445:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$448;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$448:;
	label$447:;
	DTYPE$1 = *(int64*)((uint8*)ND_TEXT$1 + 8ll) & 511ll;
	if( IS_ANY$1 == 0ll ) goto label$450;
	{
		if( DTYPE$1 == 7ll ) goto label$452;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_TrimAny", 61ll );
			F$1 = vr$5;
		}
		goto label$451;
		label$452:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrimAny", 105ll );
			F$1 = vr$6;
		}
		label$451:;
	}
	goto label$449;
	label$450:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$453;
	{
		if( DTYPE$1 == 7ll ) goto label$455;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_TrimEx", 62ll );
			F$1 = vr$7;
		}
		goto label$454;
		label$455:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrimEx", 106ll );
			F$1 = vr$8;
		}
		label$454:;
	}
	goto label$449;
	label$453:;
	{
		if( DTYPE$1 == 7ll ) goto label$457;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_TRIM", 60ll );
			F$1 = vr$9;
		}
		goto label$456;
		label$457:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrTrim", 104ll );
			F$1 = vr$10;
		}
		label$456:;
	}
	label$449:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$459;
	{
		goto label$446;
	}
	label$459:;
	label$458:;
	if( ((int64)-(ND_PATTERN$1 != (struct $7ASTNODE*)0ull) | IS_ANY$1) == 0ll ) goto label$461;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, 2147483648ll, -1ll );
		if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$463;
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

struct $7ASTNODE* RTLSTRRTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int64 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$464:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$467;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$467:;
	label$466:;
	DTYPE$1 = *(int64*)((uint8*)ND_TEXT$1 + 8ll) & 511ll;
	if( IS_ANY$1 == 0ll ) goto label$469;
	{
		if( DTYPE$1 == 7ll ) goto label$471;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_RTrimAny", 64ll );
			F$1 = vr$5;
		}
		goto label$470;
		label$471:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrimAny", 108ll );
			F$1 = vr$6;
		}
		label$470:;
	}
	goto label$468;
	label$469:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$472;
	{
		if( DTYPE$1 == 7ll ) goto label$474;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_RTrimEx", 65ll );
			F$1 = vr$7;
		}
		goto label$473;
		label$474:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrimEx", 109ll );
			F$1 = vr$8;
		}
		label$473:;
	}
	goto label$468;
	label$472:;
	{
		if( DTYPE$1 == 7ll ) goto label$476;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_RTRIM", 63ll );
			F$1 = vr$9;
		}
		goto label$475;
		label$476:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrRTrim", 107ll );
			F$1 = vr$10;
		}
		label$475:;
	}
	label$468:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$478;
	{
		goto label$465;
	}
	label$478:;
	label$477:;
	if( ((int64)-(ND_PATTERN$1 != (struct $7ASTNODE*)0ull) | IS_ANY$1) == 0ll ) goto label$480;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, 2147483648ll, -1ll );
		if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$482;
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

struct $7ASTNODE* RTLSTRLTRIM( struct $7ASTNODE* ND_TEXT$1, struct $7ASTNODE* ND_PATTERN$1, int64 IS_ANY$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$483:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	int64 DTYPE$1;
	fb$result$1 = (struct $7ASTNODE*)0ull;
	ASTTRYOVLSTRINGCONV( &ND_TEXT$1 );
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$486;
	{
		ASTTRYOVLSTRINGCONV( &ND_PATTERN$1 );
	}
	label$486:;
	label$485:;
	DTYPE$1 = *(int64*)((uint8*)ND_TEXT$1 + 8ll) & 511ll;
	if( IS_ANY$1 == 0ll ) goto label$488;
	{
		if( DTYPE$1 == 7ll ) goto label$490;
		{
			struct $8FBSYMBOL* vr$5 = RTLPROCLOOKUP( (uint8*)"fb_LTrimAny", 67ll );
			F$1 = vr$5;
		}
		goto label$489;
		label$490:;
		{
			struct $8FBSYMBOL* vr$6 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrimAny", 111ll );
			F$1 = vr$6;
		}
		label$489:;
	}
	goto label$487;
	label$488:;
	if( ND_PATTERN$1 == (struct $7ASTNODE*)0ull ) goto label$491;
	{
		if( DTYPE$1 == 7ll ) goto label$493;
		{
			struct $8FBSYMBOL* vr$7 = RTLPROCLOOKUP( (uint8*)"fb_LTrimEx", 68ll );
			F$1 = vr$7;
		}
		goto label$492;
		label$493:;
		{
			struct $8FBSYMBOL* vr$8 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrimEx", 112ll );
			F$1 = vr$8;
		}
		label$492:;
	}
	goto label$487;
	label$491:;
	{
		if( DTYPE$1 == 7ll ) goto label$495;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_LTRIM", 66ll );
			F$1 = vr$9;
		}
		goto label$494;
		label$495:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_WstrLTrim", 110ll );
			F$1 = vr$10;
		}
		label$494:;
	}
	label$487:;
	struct $7ASTNODE* vr$11 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, ND_TEXT$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$497;
	{
		goto label$484;
	}
	label$497:;
	label$496:;
	if( ((int64)-(ND_PATTERN$1 != (struct $7ASTNODE*)0ull) | IS_ANY$1) == 0ll ) goto label$499;
	{
		struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, ND_PATTERN$1, 2147483648ll, -1ll );
		if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$501;
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

struct $7ASTNODE* RTLSTRCASE( struct $7ASTNODE* EXPR$1, struct $7ASTNODE* MODE$1, int64 IS_LCASE$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$524:;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* F$1;
	struct $8FBSYMBOL* LITERAL$1;
	if( MODE$1 == (struct $7ASTNODE*)0ull ) goto label$527;
	{
		struct $8FBSYMBOL* vr$1 = ASTGETSTRLITSYMBOL( EXPR$1 );
		LITERAL$1 = vr$1;
		if( LITERAL$1 == (struct $8FBSYMBOL*)0ull ) goto label$529;
		{
			if( *(int64*)MODE$1 != 16ll ) goto label$531;
			{
				int64 vr$3 = ASTCONSTGETASINT64( MODE$1 );
				if( vr$3 != 1ll ) goto label$533;
				{
					struct $8FBSYMBOL* vr$4 = HEVALASCCASE( LITERAL$1, IS_LCASE$1 );
					LITERAL$1 = vr$4;
					if( LITERAL$1 == (struct $8FBSYMBOL*)0ull ) goto label$535;
					{
						struct $7ASTNODE* vr$5 = ASTNEWVAR( LITERAL$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
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
	if( IS_LCASE$1 == 0ll ) goto label$537;
	{
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 7ll ) goto label$539;
		{
			struct $8FBSYMBOL* vr$9 = RTLPROCLOOKUP( (uint8*)"fb_WstrLcase2", 113ll );
			F$1 = vr$9;
		}
		goto label$538;
		label$539:;
		{
			struct $8FBSYMBOL* vr$10 = RTLPROCLOOKUP( (uint8*)"fb_StrLcase2", 69ll );
			F$1 = vr$10;
		}
		label$538:;
	}
	goto label$536;
	label$537:;
	{
		if( (*(int64*)((uint8*)EXPR$1 + 8ll) & 511ll) != 7ll ) goto label$541;
		{
			struct $8FBSYMBOL* vr$13 = RTLPROCLOOKUP( (uint8*)"fb_WstrUcase2", 114ll );
			F$1 = vr$13;
		}
		goto label$540;
		label$541:;
		{
			struct $8FBSYMBOL* vr$14 = RTLPROCLOOKUP( (uint8*)"fb_StrUcase2", 70ll );
			F$1 = vr$14;
		}
		label$540:;
	}
	label$536:;
	struct $7ASTNODE* vr$15 = ASTNEWCALL( F$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$15;
	struct $7ASTNODE* vr$16 = ASTNEWARG( PROC$1, EXPR$1, 2147483648ll, -1ll );
	if( vr$16 != (struct $7ASTNODE*)0ull ) goto label$543;
	{
		goto label$525;
	}
	label$543:;
	label$542:;
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, MODE$1, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$545;
	{
		goto label$525;
	}
	label$545:;
	label$544:;
	fb$result$1 = PROC$1;
	label$525:;
	return fb$result$1;
}

int64 RTLSTRSWAP( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$546:;
	fb$result$1 = 0ll;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_StrSwap", 71ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 DTYPE1$1;
	DTYPE1$1 = *(int64*)((uint8*)STR1$1 + 8ll) & 511ll;
	int64 LENGTH1$1;
	int64 vr$5 = RTLCALCSTRLEN( STR1$1, DTYPE1$1 );
	LENGTH1$1 = vr$5;
	int64 DTYPE2$1;
	DTYPE2$1 = *(int64*)((uint8*)STR2$1 + 8ll) & 511ll;
	int64 LENGTH2$1;
	int64 vr$8 = RTLCALCSTRLEN( STR2$1, DTYPE2$1 );
	LENGTH2$1 = vr$8;
	struct $7ASTNODE* vr$9 = ASTNEWARG( PROC$1, STR1$1, 17ll, -1ll );
	if( vr$9 != (struct $7ASTNODE*)0ull ) goto label$549;
	{
		goto label$547;
	}
	label$549:;
	label$548:;
	struct $7ASTNODE* vr$10 = ASTNEWCONSTI( LENGTH1$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$11 = ASTNEWARG( PROC$1, vr$10, 2147483648ll, -1ll );
	if( vr$11 != (struct $7ASTNODE*)0ull ) goto label$551;
	{
		goto label$547;
	}
	label$551:;
	label$550:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( (int64)-(DTYPE1$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$553;
	{
		goto label$547;
	}
	label$553:;
	label$552:;
	struct $7ASTNODE* vr$15 = ASTNEWARG( PROC$1, STR2$1, 17ll, -1ll );
	if( vr$15 != (struct $7ASTNODE*)0ull ) goto label$555;
	{
		goto label$547;
	}
	label$555:;
	label$554:;
	struct $7ASTNODE* vr$16 = ASTNEWCONSTI( LENGTH2$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$17 = ASTNEWARG( PROC$1, vr$16, 2147483648ll, -1ll );
	if( vr$17 != (struct $7ASTNODE*)0ull ) goto label$557;
	{
		goto label$547;
	}
	label$557:;
	label$556:;
	struct $7ASTNODE* vr$19 = ASTNEWCONSTI( (int64)-(DTYPE2$1 == 18ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$20 = ASTNEWARG( PROC$1, vr$19, 2147483648ll, -1ll );
	if( vr$20 != (struct $7ASTNODE*)0ull ) goto label$559;
	{
		goto label$547;
	}
	label$559:;
	label$558:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
	label$547:;
	return fb$result$1;
}

int64 RTLWSTRSWAP( struct $7ASTNODE* STR1$1, struct $7ASTNODE* STR2$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$560:;
	fb$result$1 = 0ll;
	struct $7ASTNODE* PROC$1;
	struct $8FBSYMBOL* vr$1 = RTLPROCLOOKUP( (uint8*)"fb_WstrSwap", 115ll );
	struct $7ASTNODE* vr$2 = ASTNEWCALL( vr$1, (struct $7ASTNODE*)0ull );
	PROC$1 = vr$2;
	int64 LENGTH$1;
	int64 vr$5 = RTLCALCSTRLEN( STR1$1, *(int64*)((uint8*)STR1$1 + 8ll) & 511ll );
	LENGTH$1 = vr$5;
	struct $7ASTNODE* vr$6 = ASTNEWARG( PROC$1, STR1$1, 2147483648ll, -1ll );
	if( vr$6 != (struct $7ASTNODE*)0ull ) goto label$563;
	{
		goto label$561;
	}
	label$563:;
	label$562:;
	struct $7ASTNODE* vr$7 = ASTNEWCONSTI( LENGTH$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$8 = ASTNEWARG( PROC$1, vr$7, 2147483648ll, -1ll );
	if( vr$8 != (struct $7ASTNODE*)0ull ) goto label$565;
	{
		goto label$561;
	}
	label$565:;
	label$564:;
	int64 vr$11 = RTLCALCSTRLEN( STR2$1, *(int64*)((uint8*)STR2$1 + 8ll) & 511ll );
	LENGTH$1 = vr$11;
	struct $7ASTNODE* vr$12 = ASTNEWARG( PROC$1, STR2$1, 2147483648ll, -1ll );
	if( vr$12 != (struct $7ASTNODE*)0ull ) goto label$567;
	{
		goto label$561;
	}
	label$567:;
	label$566:;
	struct $7ASTNODE* vr$13 = ASTNEWCONSTI( LENGTH$1, 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$14 = ASTNEWARG( PROC$1, vr$13, 2147483648ll, -1ll );
	if( vr$14 != (struct $7ASTNODE*)0ull ) goto label$569;
	{
		goto label$561;
	}
	label$569:;
	label$568:;
	ASTADD( PROC$1 );
	fb$result$1 = -1ll;
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $8FBSYMBOL* HEVALASCCASE( struct $8FBSYMBOL* LITERAL$1, int64 IS_LCASE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$502:;
	uint32* W$1;
	uint8* Z$1;
	int64 REALLENGTH$1;
	int64 INTERNALLENGTH$1;
	int64 CHAR$1;
	int64 CHARA$1;
	int64 CHARZ$1;
	int64 CHARDIFF$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( IS_LCASE$1 == 0ll ) goto label$505;
	{
		CHARA$1 = 65ll;
		CHARZ$1 = 90ll;
		CHARDIFF$1 = 32ll;
	}
	goto label$504;
	label$505:;
	{
		CHARA$1 = 97ll;
		CHARZ$1 = 122ll;
		CHARDIFF$1 = -32ll;
	}
	label$504:;
	if( (*(int64*)((uint8*)LITERAL$1 + 56ll) & 511ll) != 7ll ) goto label$507;
	{
		int64 TMP$338$2;
		W$1 = *(uint32**)((uint8*)LITERAL$1 + 96ll);
		int64 vr$4 = fb_WstrLen( (uint32*)W$1 );
		INTERNALLENGTH$1 = vr$4;
		TMP$338$2 = 0ll;
		uint32* vr$6 = HUNESCAPEW( W$1, &TMP$338$2 );
		W$1 = vr$6;
		REALLENGTH$1 = (*(int64*)((uint8*)LITERAL$1 + 80ll) / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll)) + -1ll;
		if( INTERNALLENGTH$1 == REALLENGTH$1 ) goto label$509;
		{
			goto label$503;
		}
		label$509:;
		label$508:;
		{
			int64 I$3;
			I$3 = 0ll;
			int64 TMP$339$3;
			TMP$339$3 = REALLENGTH$1 + -1ll;
			goto label$510;
			label$513:;
			{
				CHAR$1 = (int64)*(uint32*)((uint8*)W$1 + (I$3 << (2ll & 63ll)));
				if( ((int64)-(CHAR$1 >= CHARA$1) & (int64)-(CHAR$1 <= CHARZ$1)) == 0ll ) goto label$515;
				{
					CHAR$1 = CHAR$1 + CHARDIFF$1;
				}
				label$515:;
				label$514:;
				*(uint32*)((uint8*)W$1 + (I$3 << (2ll & 63ll))) = (uint32)CHAR$1;
			}
			label$511:;
			I$3 = I$3 + 1ll;
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
		int64 TMP$340$2;
		Z$1 = *(uint8**)((uint8*)LITERAL$1 + 96ll);
		int64 vr$24 = fb_StrLen( (void*)Z$1, 0ll );
		INTERNALLENGTH$1 = vr$24;
		TMP$340$2 = 0ll;
		uint8* vr$26 = HUNESCAPE( Z$1, &TMP$340$2 );
		Z$1 = vr$26;
		REALLENGTH$1 = *(int64*)((uint8*)LITERAL$1 + 80ll) + -1ll;
		if( INTERNALLENGTH$1 == REALLENGTH$1 ) goto label$517;
		{
			goto label$503;
		}
		label$517:;
		label$516:;
		{
			int64 I$3;
			I$3 = 0ll;
			int64 TMP$341$3;
			TMP$341$3 = REALLENGTH$1 + -1ll;
			goto label$518;
			label$521:;
			{
				CHAR$1 = (int64)*(uint8*)((uint8*)Z$1 + I$3);
				if( ((int64)-(CHAR$1 >= CHARA$1) & (int64)-(CHAR$1 <= CHARZ$1)) == 0ll ) goto label$523;
				{
					CHAR$1 = CHAR$1 + CHARDIFF$1;
				}
				label$523:;
				label$522:;
				*(uint8*)((uint8*)Z$1 + I$3) = (uint8)CHAR$1;
			}
			label$519:;
			I$3 = I$3 + 1ll;
			label$518:;
			if( I$3 <= TMP$341$3 ) goto label$521;
			label$520:;
		}
		struct $8FBSYMBOL* vr$39 = SYMBALLOCSTRCONST( Z$1, REALLENGTH$1 );
		fb$result$1 = vr$39;
	}
	label$506:;
	label$503:;
	return fb$result$1;
}
