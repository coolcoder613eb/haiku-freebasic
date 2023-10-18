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
struct $11RANGEVALUES {
	int64 SMIN;
	int64 SMAX;
	uint64 UMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $11RANGEVALUES ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int32 ELEMENTS;
	int32 LBOUND;
	int32 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 12 );
struct $8FBARRAY1I11RANGEVALUESE {
	struct $11RANGEVALUES* DATA;
	struct $11RANGEVALUES* PTR;
	int32 SIZE;
	int32 ELEMENT_LEN;
	int32 DIMENSIONS;
	int32 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11RANGEVALUESE ) == 36 );
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
struct $19AMBIGIOUSSIZEOFINFO {
	struct $8FBSYMBOL* TYP;
	struct $8FBSYMBOL* NONTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $19AMBIGIOUSSIZEOFINFO ) == 8 );
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
typedef int32 $14FB_SYMBTYPEOPT;
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
typedef int32 $19FB_CVA_LIST_TYPEDEF;
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
int32 fb_StrCompare( void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__parserzdeclzsymbtype( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
typedef int32 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int32, uint8*, $12FB_ERRMSGOPT, uint8* );
int32 FBIS64BIT( void );
$19FB_CVA_LIST_TYPEDEF FBGETBACKENDVALISTTYPE( void );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* );
void ASTDTORLISTSCOPEBEGIN( int32 );
int32 ASTDTORLISTSCOPEEND( void );
void ASTDTORLISTSCOPEDELETE( int32 );
int64 ASTSIZEOF( struct $7ASTNODE*, int32* );
struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int32 );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
int32 TYPETOUNSIGNED( int32 );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
FBSTRING* SYMBDUMPPRETTYTOSTR( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
int32 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEADCLASS( int32, $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $7ASTNODE* CTYPEOREXPRESSION( int32, int32*, struct $8FBSYMBOL**, int64*, int32* );
void CTYPEOF( int32*, struct $8FBSYMBOL**, int64*, int32*, struct $8FBSYMBOL** );
int32 CSYMBOLTYPE( int32*, struct $8FBSYMBOL**, int64*, int32*, $14FB_SYMBTYPEOPT );
typedef int32 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void CPARAMETERS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int32, int32 );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int32 );
struct $7ASTNODE* CEQINPARENSONLYEXPR( void );
struct $7ASTNODE* CGTINPARENSONLYEXPR( void );
void CPROCRETTYPE( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, struct $8FBSYMBOL*, int32, int32*, struct $8FBSYMBOL** );
$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE, int32* );
void CBYREFATTRIBUTE( $13FB_PROCATTRIB*, int32 );
void CUDTTYPEMEMBER( int32*, struct $8FBSYMBOL**, int64*, int32*, struct $8FBSYMBOL** );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int32 );
int32 HISCONSTINRANGE( int32, int64, int32 );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64, int32 );
static struct $8FBSYMBOL* CSYMBOLTYPEFUNCPTR( int32 );
static FBSTRING* HGETTOKENDESCRIPTION( int32 );
void _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN( struct $19AMBIGIOUSSIZEOFINFO*, struct $10FBSYMCHAIN* );
void _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll( struct $19AMBIGIOUSSIZEOFINFO*, int32, int32 );
static int32 CMANGLEMODIFIER( int32*, struct $8FBSYMBOL** );
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int32 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 840080 );
extern struct $7LEX_CTX LEX$;
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

int64 CCONSTINTEXPR( struct $7ASTNODE* EXPR$1, int32 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$10:;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$13;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$1;
	}
	label$13:;
	label$12:;
	if( *(int32*)EXPR$1 == 16 ) goto label$15;
	{
		ERRREPORT( 11, 0, (uint8*)0u );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$3;
	}
	label$15:;
	label$14:;
	int64 vr$4 = ASTCONSTFLUSHTOINT( EXPR$1, DTYPE$1 );
	fb$result$1 = vr$4;
	label$11:;
	return fb$result$1;
}

int32 HISCONSTINRANGE( int32 DTYPE$1, int64 VALUE$1, int32 TODTYPE$1 )
{
	int32 TMP$94$1;
	int32 TMP$95$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$16:;
	static struct $11RANGEVALUES RANGE$1[9] = { { -1ll, 0ll, 0ull }, { -128ll, 127ll, 127ull }, { 0ll, 127ll, 255ull }, { -32768ll, 32767ll, 32767ull }, { 0ll, 32767ll, 65535ull }, { -2147483648ll, 2147483647ll, 2147483647ull }, { 0ll, 2147483647ll, 4294967295ull }, { -9223372036854775808ull, 9223372036854775807ll, 9223372036854775807ull }, { 0ll, 9223372036854775807ll, 18446744073709551615ull } };
	static struct $8FBARRAY1I11RANGEVALUESE tmp$93$1 = { (struct $11RANGEVALUES*)RANGE$1, (struct $11RANGEVALUES*)RANGE$1, 216, 24, 1, 49, { { 9, 0, 8 } } };
	struct $11RANGEVALUES* R$1;
	if( (TODTYPE$1 & 480) == 0 ) goto label$18;
	TMP$94$1 = 24;
	goto label$36;
	label$18:;
	TMP$94$1 = TODTYPE$1 & 31;
	label$36:;
	R$1 = (struct $11RANGEVALUES*)((int32)(struct $11RANGEVALUES*)RANGE$1 + (*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$94$1 * 28)) + 20) * 24));
	if( (DTYPE$1 & 480) == 0 ) goto label$19;
	TMP$95$1 = 24;
	goto label$37;
	label$19:;
	TMP$95$1 = DTYPE$1 & 31;
	label$37:;
	if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$1 * 28)) + 8) == 0 ) goto label$21;
	{
		int32 TMP$96$2;
		if( (TODTYPE$1 & 480) == 0 ) goto label$22;
		TMP$96$2 = 24;
		goto label$38;
		label$22:;
		TMP$96$2 = TODTYPE$1 & 31;
		label$38:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$2 * 28)) + 8) == 0 ) goto label$24;
		{
			fb$result$1 = -(VALUE$1 >= *(int64*)R$1) & -(VALUE$1 <= *(int64*)((uint8*)R$1 + 8));
		}
		goto label$23;
		label$24:;
		{
			int32 TMP$97$3;
			int32 TMP$98$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$25;
			TMP$97$3 = 24;
			goto label$39;
			label$25:;
			TMP$97$3 = DTYPE$1 & 31;
			label$39:;
			if( (TODTYPE$1 & 480) == 0 ) goto label$26;
			TMP$98$3 = 24;
			goto label$40;
			label$26:;
			TMP$98$3 = TODTYPE$1 & 31;
			label$40:;
			if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$3 * 28)) + 20) == 7) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$3 * 28)) + 20) == 8)) == 0 ) goto label$28;
			{
				fb$result$1 = -(VALUE$1 >= 0ll) & -((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 8));
			}
			goto label$27;
			label$28:;
			{
				fb$result$1 = -(VALUE$1 >= 0ll) & -((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16));
			}
			label$27:;
		}
		label$23:;
	}
	goto label$20;
	label$21:;
	{
		int32 TMP$99$2;
		if( (TODTYPE$1 & 480) == 0 ) goto label$29;
		TMP$99$2 = 24;
		goto label$41;
		label$29:;
		TMP$99$2 = TODTYPE$1 & 31;
		label$41:;
		if( *(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$2 * 28)) + 8) == 0 ) goto label$31;
		{
			int32 TMP$100$3;
			int32 TMP$101$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$32;
			TMP$100$3 = 24;
			goto label$42;
			label$32:;
			TMP$100$3 = DTYPE$1 & 31;
			label$42:;
			if( (TODTYPE$1 & 480) == 0 ) goto label$33;
			TMP$101$3 = 24;
			goto label$43;
			label$33:;
			TMP$101$3 = TODTYPE$1 & 31;
			label$43:;
			if( (-(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$3 * 28)) + 20) == 8) & -(*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$3 * 28)) + 20) == 7)) == 0 ) goto label$35;
			{
				fb$result$1 = -((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 8));
			}
			goto label$34;
			label$35:;
			{
				fb$result$1 = -((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16));
			}
			label$34:;
		}
		goto label$30;
		label$31:;
		{
			fb$result$1 = -((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16));
		}
		label$30:;
	}
	label$20:;
	label$17:;
	return fb$result$1;
}

int64 CCONSTINTEXPRRANGED( struct $7ASTNODE* EXPR$1, int32 TODTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$44:;
	int64 VALUE$1;
	int32 DTYPE$1;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$47;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, TODTYPE$1, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$1;
	}
	label$47:;
	label$46:;
	if( *(int32*)EXPR$1 == 16 ) goto label$49;
	{
		ERRREPORT( 11, 0, (uint8*)0u );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 13, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$3;
	}
	label$49:;
	label$48:;
	DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4) & 511;
	int64 vr$6 = ASTCONSTFLUSHTOINT( EXPR$1, 13 );
	VALUE$1 = vr$6;
	int32 vr$7 = HISCONSTINRANGE( DTYPE$1, VALUE$1, TODTYPE$1 );
	if( ~vr$7 == 0 ) goto label$51;
	{
		ERRREPORTWARN( 25, (uint8*)0u, 1, (uint8*)0u );
	}
	label$51:;
	label$50:;
	fb$result$1 = VALUE$1;
	label$45:;
	return fb$result$1;
}

void _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN( struct $19AMBIGIOUSSIZEOFINFO* THIS$1, struct $10FBSYMCHAIN* CHAIN_$1 )
{
	label$68:;
	label$70:;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$73:;
		{
			{
				$12FB_SYMBCLASS TMP$106$4;
				TMP$106$4 = *($12FB_SYMBCLASS*)SYM$2;
				if( TMP$106$4 == 10 ) goto label$78;
				label$79:;
				if( TMP$106$4 == 13 ) goto label$78;
				label$80:;
				if( TMP$106$4 != 14 ) goto label$77;
				label$78:;
				{
					if( *(struct $8FBSYMBOL**)THIS$1 != (struct $8FBSYMBOL*)0u ) goto label$82;
					{
						*(struct $8FBSYMBOL**)THIS$1 = SYM$2;
					}
					label$82:;
					label$81:;
				}
				goto label$76;
				label$77:;
				if( TMP$106$4 == 1 ) goto label$84;
				label$85:;
				if( TMP$106$4 != 2 ) goto label$83;
				label$84:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) != (struct $8FBSYMBOL*)0u ) goto label$87;
					{
						*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) = SYM$2;
					}
					label$87:;
					label$86:;
				}
				label$83:;
				label$76:;
			}
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		label$75:;
		if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$73;
		label$74:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	label$72:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$70;
	label$71:;
	label$69:;
}

void _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll( struct $19AMBIGIOUSSIZEOFINFO* THIS$1, int32 TK$1, int32 REFERS_TO_TYPE$1 )
{
	FBSTRING TMP$110$1;
	FBSTRING TMP$111$1;
	label$88:;
	if( (-(*(struct $8FBSYMBOL**)THIS$1 == (struct $8FBSYMBOL*)0u) | -(*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) == (struct $8FBSYMBOL*)0u)) == 0 ) goto label$91;
	{
		goto label$89;
		label$91:;
	}
	if( ((-(*(int32*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) == 1) & -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) + 28) & 511) == 20)) & -(*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4) + 32) == *(struct $8FBSYMBOL**)THIS$1)) == 0 ) goto label$93;
	{
		goto label$89;
	}
	label$93:;
	label$92:;
	struct $8FBSYMBOL* SYM1$1;
	SYM1$1 = *(struct $8FBSYMBOL**)THIS$1;
	struct $8FBSYMBOL* SYM2$1;
	SYM2$1 = *(struct $8FBSYMBOL**)((uint8*)THIS$1 + 4);
	if( REFERS_TO_TYPE$1 != 0 ) goto label$95;
	{
		{
			struct $8FBSYMBOL* TMP$107$3;
			TMP$107$3 = SYM1$1;
			SYM1$1 = SYM2$1;
			SYM2$1 = TMP$107$3;
		}
	}
	label$95:;
	label$94:;
	FBSTRING MSG$1;
	FBSTRING* vr$20 = HGETTOKENDESCRIPTION( TK$1 );
	__builtin_memset( &TMP$110$1, 0, 12 );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$110$1, (void*)"Ambigious ", 11, (void*)vr$20, -1 );
	__builtin_memset( &TMP$111$1, 0, 12 );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$111$1, (void*)vr$23, -1, (void*)"()", 3 );
	fb_StrInit( (void*)&MSG$1, -1, (void*)vr$26, -1, 0 );
	fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)", referring to ", 16, 0 );
	FBSTRING* vr$29 = SYMBDUMPPRETTYTOSTR( SYM1$1 );
	fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)vr$29, -1, 0 );
	fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)", instead of ", 14, 0 );
	FBSTRING* vr$32 = SYMBDUMPPRETTYTOSTR( SYM2$1 );
	fb_StrConcatAssign( (void*)&MSG$1, -1, (void*)vr$32, -1, 0 );
	ERRREPORTWARN( 37, (uint8*)0u, 1, (uint8*)*(uint8**)&MSG$1 );
	fb_StrDelete( (FBSTRING*)&MSG$1 );
	label$89:;
}

struct $7ASTNODE* CTYPEOREXPRESSION( int32 TK$1, int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int32* IS_FIXLENSTR$1 )
{
	int32 TMP$114$1;
	int32 TMP$115$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$96:;
	struct $7ASTNODE* EXPR$1;
	int32 MAYBE_TYPE$1;
	MAYBE_TYPE$1 = -1;
	struct $19AMBIGIOUSSIZEOFINFO AMBIGIOUSSIZEOF$1;
	__builtin_memset( &AMBIGIOUSSIZEOF$1, 0, 8 );
	int32 vr$2 = LEXGETTOKEN( 0 );
	int32 vr$4 = LEXGETLOOKAHEAD( 1, 64 );
	if( (-(vr$2 == 265) & -(vr$4 == 41)) == 0 ) goto label$99;
	{
		struct $10FBSYMCHAIN* CHAIN_$2;
		CHAIN_$2 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 840072) + 16548) + 4116);
		if( CHAIN_$2 == (struct $10FBSYMCHAIN*)0u ) goto label$101;
		{
			_ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN( &AMBIGIOUSSIZEOF$1, CHAIN_$2 );
		}
		label$101:;
		label$100:;
	}
	label$99:;
	label$98:;
	int32 vr$10 = LEXGETLOOKAHEADCLASS( 1, 0 );
	if( vr$10 != 5 ) goto label$102;
	int32 vr$11 = LEXGETLOOKAHEAD( 1, 0 );
	TMP$114$1 = -(vr$11 != 42);
	goto label$125;
	label$102:;
	TMP$114$1 = 0;
	label$125:;
	if( TMP$114$1 == 0 ) goto label$103;
	int32 vr$13 = LEXGETLOOKAHEAD( 1, 0 );
	TMP$115$1 = -(vr$13 != 301);
	goto label$126;
	label$103:;
	TMP$115$1 = 0;
	label$126:;
	if( TMP$115$1 == 0 ) goto label$105;
	{
		MAYBE_TYPE$1 = 0;
	}
	goto label$104;
	label$105:;
	{
		{
			int32 TMP$116$3;
			int32 vr$15 = LEXGETLOOKAHEAD( 1, 0 );
			TMP$116$3 = vr$15;
			if( TMP$116$3 != 91 ) goto label$107;
			label$108:;
			{
				MAYBE_TYPE$1 = 0;
			}
			goto label$106;
			label$107:;
			if( TMP$116$3 != 40 ) goto label$109;
			label$110:;
			{
				{
					int32 TMP$117$5;
					int32 vr$16 = LEXGETTOKEN( 0 );
					TMP$117$5 = vr$16;
					if( TMP$117$5 == 377 ) goto label$113;
					label$114:;
					if( TMP$117$5 == 345 ) goto label$113;
					label$115:;
					if( TMP$117$5 != 346 ) goto label$112;
					label$113:;
					{
					}
					goto label$111;
					label$112:;
					{
						MAYBE_TYPE$1 = 0;
					}
					label$116:;
					label$111:;
				}
			}
			label$109:;
			label$106:;
		}
	}
	label$104:;
	if( ((MAYBE_TYPE$1 & -(TK$1 == 465)) & -(*(int32*)((uint8*)&ENV$ + 136) == 3)) == 0 ) goto label$118;
	{
		MAYBE_TYPE$1 = 0;
	}
	label$118:;
	label$117:;
	if( MAYBE_TYPE$1 == 0 ) goto label$120;
	{
		int32 vr$21 = CSYMBOLTYPE( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, 8 );
		if( vr$21 == 0 ) goto label$122;
		{
			_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll( &AMBIGIOUSSIZEOF$1, TK$1, -1 );
			*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) = (struct $10FBSYMCHAIN*)0u;
			fb$result$1 = (struct $7ASTNODE*)0u;
			goto label$97;
		}
		label$122:;
		label$121:;
	}
	label$120:;
	label$119:;
	_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll( &AMBIGIOUSSIZEOF$1, TK$1, 0 );
	struct $7ASTNODE* vr$24 = CEXPRESSIONWITHNIDXARRAY( -1 );
	EXPR$1 = vr$24;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$124;
	{
		*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) = (struct $10FBSYMCHAIN*)0u;
		ERRREPORT( 9, 0, (uint8*)0u );
		struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
		EXPR$1 = vr$25;
	}
	label$124:;
	label$123:;
	fb$result$1 = EXPR$1;
	label$97:;
	return fb$result$1;
}

void CTYPEOF( int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int32* IS_FIXLENSTR$1, struct $8FBSYMBOL** RET_SYM$1 )
{
	label$127:;
	struct $7ASTNODE* EXPR$1;
	int32 DTORLISTCOOKIE$1;
	*RET_SYM$1 = (struct $8FBSYMBOL*)0u;
	ASTDTORLISTSCOPEBEGIN( 0 );
	struct $7ASTNODE* vr$1 = CTYPEOREXPRESSION( 377, DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1 );
	EXPR$1 = vr$1;
	int32 vr$2 = ASTDTORLISTSCOPEEND(  );
	DTORLISTCOOKIE$1 = vr$2;
	ASTDTORLISTSCOPEDELETE( DTORLISTCOOKIE$1 );
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$130;
	{
		CUDTTYPEMEMBER( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, RET_SYM$1 );
		goto label$128;
	}
	label$130:;
	label$129:;
	struct $7ASTNODE* vr$3 = ASTREMOVENIDXARRAY( EXPR$1 );
	EXPR$1 = vr$3;
	*DTYPE$1 = *(int32*)((uint8*)EXPR$1 + 4);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 8);
	int64 vr$8 = ASTSIZEOF( EXPR$1, IS_FIXLENSTR$1 );
	*LGT$1 = vr$8;
	*RET_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 12);
	ASTDELTREE( EXPR$1 );
	label$128:;
}

$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64 BITSIZE$1, int32 IS_UNSIGNED$1 )
{
	$11FB_DATATYPE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$131:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	{
		if( BITSIZE$1 != 8ll ) goto label$134;
		label$135:;
		{
			DTYPE$1 = 2;
		}
		goto label$133;
		label$134:;
		if( BITSIZE$1 != 16ll ) goto label$136;
		label$137:;
		{
			DTYPE$1 = 5;
		}
		goto label$133;
		label$136:;
		if( BITSIZE$1 != 32ll ) goto label$138;
		label$139:;
		{
			DTYPE$1 = 11;
		}
		goto label$133;
		label$138:;
		if( BITSIZE$1 != 64ll ) goto label$140;
		label$141:;
		{
			DTYPE$1 = 13;
		}
		goto label$133;
		label$140:;
		{
			ERRREPORT( 310, -1, (uint8*)0u );
			DTYPE$1 = 8;
		}
		label$142:;
		label$133:;
	}
	if( IS_UNSIGNED$1 == 0 ) goto label$144;
	{
		int32 vr$2 = TYPETOUNSIGNED( DTYPE$1 );
		DTYPE$1 = vr$2;
	}
	label$144:;
	label$143:;
	fb$result$1 = DTYPE$1;
	goto label$132;
	label$132:;
	return fb$result$1;
}

int32 CSYMBOLTYPE( int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int32* IS_FIXLENSTR$1, $14FB_SYMBTYPEOPT OPTIONS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$189:;
	int32 ISUNSIGNED$1;
	int32 ISFUNCTION$1;
	fb$result$1 = 0;
	*DTYPE$1 = -2147483648u;
	*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	*LGT$1 = 0ll;
	*IS_FIXLENSTR$1 = 0;
	int32 IS_CONST$1;
	IS_CONST$1 = 0;
	int32 PTR_CNT$1;
	PTR_CNT$1 = 0;
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 != 377 ) goto label$192;
	{
		struct $8FBSYMBOL* TMP$127$2;
		LEXSKIPTOKEN( 2048 );
		int32 vr$6 = HMATCH( 40, 0 );
		if( vr$6 != 0 ) goto label$194;
		{
			ERRREPORT( 6, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		label$194:;
		label$193:;
		TMP$127$2 = (struct $8FBSYMBOL*)0u;
		CTYPEOF( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, &TMP$127$2 );
		int32 vr$8 = HMATCH( 41, 0 );
		if( vr$8 != 0 ) goto label$196;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		label$196:;
		label$195:;
	}
	goto label$191;
	label$192:;
	{
		int32 vr$9 = LEXGETTOKEN( 0 );
		if( vr$9 != 335 ) goto label$198;
		{
			LEXSKIPTOKEN( 2048 );
			IS_CONST$1 = -1;
		}
		label$198:;
		label$197:;
		int32 vr$10 = HMATCH( 375, 2048 );
		ISUNSIGNED$1 = vr$10;
		{
			uint32 TMP$128$3;
			int32 vr$11 = LEXGETTOKEN( 0 );
			TMP$128$3 = (uint32)vr$11;
			goto label$200;
			label$201:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 0;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$202:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 1;
			}
			goto label$199;
			label$203:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 2;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$204:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 3;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$205:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 5;
			}
			goto label$199;
			label$206:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 6;
			}
			goto label$199;
			label$207:;
			{
				LEXSKIPTOKEN( 2048 );
				int32 vr$18 = HMATCH( 301, 0 );
				if( vr$18 == 0 ) goto label$209;
				{
					struct $7ASTNODE* vr$19 = CGTINPARENSONLYEXPR(  );
					int64 vr$20 = CCONSTINTEXPR( vr$19, 8 );
					*LGT$1 = vr$20;
					$11FB_DATATYPE vr$23 = HINTEGERTYPEFROMBITSIZE( *LGT$1, 0 );
					*DTYPE$1 = vr$23;
					int32 vr$25 = HMATCH( 300, 0 );
					if( vr$25 != 0 ) goto label$211;
					{
						ERRREPORT( 309, -1, (uint8*)0u );
					}
					label$211:;
					label$210:;
				}
				goto label$208;
				label$209:;
				{
					*DTYPE$1 = *(int32*)((uint8*)&ENV$ + 1044);
				}
				label$208:;
			}
			goto label$199;
			label$212:;
			{
				LEXSKIPTOKEN( 2048 );
				int32 vr$27 = HMATCH( 301, 0 );
				if( vr$27 == 0 ) goto label$214;
				{
					struct $7ASTNODE* vr$28 = CGTINPARENSONLYEXPR(  );
					int64 vr$29 = CCONSTINTEXPR( vr$28, 8 );
					*LGT$1 = vr$29;
					$11FB_DATATYPE vr$32 = HINTEGERTYPEFROMBITSIZE( *LGT$1, -1 );
					*DTYPE$1 = vr$32;
					int32 vr$34 = HMATCH( 300, 0 );
					if( vr$34 != 0 ) goto label$216;
					{
						ERRREPORT( 309, -1, (uint8*)0u );
					}
					label$216:;
					label$215:;
				}
				goto label$213;
				label$214:;
				{
					*DTYPE$1 = 9;
				}
				label$213:;
			}
			goto label$199;
			label$217:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 11;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$218:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 12;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$219:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 13;
			}
			goto label$199;
			label$220:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 14;
			}
			goto label$199;
			label$221:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 15;
			}
			goto label$199;
			label$222:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 16;
			}
			goto label$199;
			label$223:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 17;
			}
			goto label$199;
			label$224:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 4;
			}
			goto label$199;
			label$225:;
			{
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 7;
			}
			goto label$199;
			label$226:;
			{
				int32 vr$45 = LEXGETTOKEN( 0 );
				ISFUNCTION$1 = -(vr$45 == 346);
				LEXSKIPTOKEN( 2048 );
				*DTYPE$1 = 54;
				PTR_CNT$1 = PTR_CNT$1 + 1;
				struct $8FBSYMBOL* vr$49 = CSYMBOLTYPEFUNCPTR( ISFUNCTION$1 );
				*SUBTYPE$1 = vr$49;
				if( *SUBTYPE$1 != (struct $8FBSYMBOL*)0u ) goto label$228;
				{
					goto label$190;
				}
				label$228:;
				label$227:;
			}
			goto label$199;
			label$200:;
			static const void* tmp$145[28] = {
				&&label$226,
				&&label$226,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$199,
				&&label$202,
				&&label$203,
				&&label$204,
				&&label$205,
				&&label$206,
				&&label$207,
				&&label$212,
				&&label$217,
				&&label$218,
				&&label$219,
				&&label$220,
				&&label$221,
				&&label$222,
				&&label$223,
				&&label$224,
				&&label$225,
				&&label$201,
			};
			if( (TMP$128$3 - 345u) > 27u ) goto label$199;
			goto *tmp$145[TMP$128$3 - 345u];
			label$199:;
		}
		if( *DTYPE$1 == -2147483648u ) goto label$230;
		{
			{
				int32 TMP$129$4;
				TMP$129$4 = *DTYPE$1 & 511;
				if( TMP$129$4 == 4 ) goto label$233;
				label$234:;
				if( TMP$129$4 != 7 ) goto label$232;
				label$233:;
				{
					*LGT$1 = 0ll;
				}
				goto label$231;
				label$232:;
				{
					int32 TMP$130$5;
					if( (*DTYPE$1 & 480) == 0 ) goto label$236;
					TMP$130$5 = 24;
					goto label$347;
					label$236:;
					TMP$130$5 = *DTYPE$1 & 31;
					label$347:;
					*LGT$1 = (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$130$5 * 28)) + 4);
				}
				label$235:;
				label$231:;
			}
		}
		goto label$229;
		label$230:;
		{
			struct $10FBSYMCHAIN* CHAIN_$3;
			CHAIN_$3 = (struct $10FBSYMCHAIN*)0u;
			struct $8FBSYMBOL* BASE_PARENT$3;
			int32 CHECK_ID$3;
			CHECK_ID$3 = -1;
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 52) == (struct $13FB_CMPSTMTSTK*)0u ) goto label$238;
			{
				int32 vr$63 = LEXGETTOKEN( 0 );
				if( vr$63 != 46 ) goto label$240;
				{
					int32 vr$64 = LEXGETLOOKAHEAD( 1, 64 );
					CHECK_ID$3 = -(vr$64 == 46);
				}
				label$240:;
				label$239:;
			}
			label$238:;
			label$237:;
			if( CHECK_ID$3 == 0 ) goto label$242;
			{
				int32 TMP$131$4;
				if( (OPTIONS$1 & 8) == 0 ) goto label$243;
				TMP$131$4 = 0;
				goto label$348;
				label$243:;
				TMP$131$4 = 50;
				label$348:;
				struct $10FBSYMCHAIN* vr$68 = CIDENTIFIER( &BASE_PARENT$3, TMP$131$4 );
				CHAIN_$3 = vr$68;
			}
			label$242:;
			label$241:;
			if( CHAIN_$3 == (struct $10FBSYMCHAIN*)0u ) goto label$245;
			{
				if( (OPTIONS$1 & 8) == 0 ) goto label$247;
				{
					{
						$12FB_SYMBCLASS TMP$132$6;
						TMP$132$6 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)CHAIN_$3;
						if( TMP$132$6 == 2 ) goto label$250;
						label$251:;
						if( TMP$132$6 == 1 ) goto label$250;
						label$252:;
						if( TMP$132$6 != 12 ) goto label$249;
						label$250:;
						{
							*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) = CHAIN_$3;
						}
						label$249:;
						label$248:;
					}
				}
				label$247:;
				label$246:;
				label$253:;
				{
					struct $8FBSYMBOL* SYM$5;
					SYM$5 = *(struct $8FBSYMBOL**)CHAIN_$3;
					label$256:;
					{
						{
							$12FB_SYMBCLASS TMP$133$7;
							TMP$133$7 = *($12FB_SYMBCLASS*)SYM$5;
							if( TMP$133$7 != 10 ) goto label$260;
							label$261:;
							{
								LEXSKIPTOKEN( 2048 );
								*DTYPE$1 = 20;
								*SUBTYPE$1 = SYM$5;
								*LGT$1 = *(int64*)((uint8*)SYM$5 + 40);
								CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
								goto label$254;
							}
							goto label$259;
							label$260:;
							if( TMP$133$7 != 9 ) goto label$262;
							label$263:;
							{
								LEXSKIPTOKEN( 2048 );
								*DTYPE$1 = 10;
								*SUBTYPE$1 = SYM$5;
								*LGT$1 = (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 284);
								goto label$254;
							}
							goto label$259;
							label$262:;
							if( TMP$133$7 != 13 ) goto label$264;
							label$265:;
							{
								int32 vr$82 = SYMBCHECKACCESS( SYM$5 );
								if( vr$82 != 0 ) goto label$267;
								{
									ERRREPORT( 202, 0, (uint8*)0u );
								}
								label$267:;
								label$266:;
								LEXSKIPTOKEN( 2048 );
								*DTYPE$1 = *(int32*)((uint8*)SYM$5 + 28);
								*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 32);
								*LGT$1 = *(int64*)((uint8*)SYM$5 + 40);
								*IS_FIXLENSTR$1 = -((*(int32*)((uint8*)SYM$5 + 12) & 2097152) != 0);
								PTR_CNT$1 = PTR_CNT$1 + ((*DTYPE$1 & 480) >> (5 & 31));
								goto label$254;
							}
							label$264:;
							label$259:;
						}
						SYM$5 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 160);
					}
					label$258:;
					if( SYM$5 != (struct $8FBSYMBOL*)0u ) goto label$256;
					label$257:;
					CHAIN_$3 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$3 + 4);
				}
				label$255:;
				if( CHAIN_$3 != (struct $10FBSYMCHAIN*)0u ) goto label$253;
				label$254:;
				if( (OPTIONS$1 & 8) == 0 ) goto label$269;
				{
					if( *DTYPE$1 == -2147483648u ) goto label$271;
					{
						*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 92) = (struct $10FBSYMCHAIN*)0u;
					}
					label$271:;
					label$270:;
				}
				label$269:;
				label$268:;
			}
			label$245:;
			label$244:;
		}
		label$229:;
		if( *DTYPE$1 != -2147483648u ) goto label$273;
		{
			if( ISUNSIGNED$1 == 0 ) goto label$275;
			{
				ERRREPORT( 17, 0, (uint8*)0u );
			}
			label$275:;
			label$274:;
			if( IS_CONST$1 == 0 ) goto label$277;
			{
				*DTYPE$1 = 512;
			}
			label$277:;
			label$276:;
			fb$result$1 = 0;
			goto label$190;
		}
		label$273:;
		label$272:;
		if( ISUNSIGNED$1 == 0 ) goto label$279;
		{
			{
				int32 TMP$134$4;
				uint32 TMP$135$4;
				if( (*DTYPE$1 & 480) == 0 ) goto label$280;
				TMP$134$4 = 24;
				goto label$349;
				label$280:;
				TMP$134$4 = *DTYPE$1 & 31;
				label$349:;
				TMP$135$4 = (uint32)TMP$134$4;
				goto label$282;
				label$283:;
				{
					if( (*DTYPE$1 & 32505856) == 0 ) goto label$285;
					{
						*DTYPE$1 = 4194307;
					}
					goto label$284;
					label$285:;
					{
						*DTYPE$1 = 3;
					}
					label$284:;
				}
				goto label$281;
				label$286:;
				{
					*DTYPE$1 = 6;
				}
				goto label$281;
				label$287:;
				{
					*DTYPE$1 = 9;
				}
				goto label$281;
				label$288:;
				{
					if( (*DTYPE$1 & 32505856) == 0 ) goto label$290;
					{
						*DTYPE$1 = 9437196;
					}
					goto label$289;
					label$290:;
					{
						*DTYPE$1 = 12;
					}
					label$289:;
				}
				goto label$281;
				label$291:;
				{
					*DTYPE$1 = 14;
				}
				goto label$281;
				label$292:;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
				}
				goto label$281;
				label$282:;
				static const void* tmp$146[12] = {
					&&label$283,
					&&label$292,
					&&label$292,
					&&label$286,
					&&label$292,
					&&label$292,
					&&label$287,
					&&label$292,
					&&label$292,
					&&label$288,
					&&label$292,
					&&label$291,
				};
				if( (TMP$135$4 - 2u) > 11u ) goto label$292;
				goto *tmp$146[TMP$135$4 - 2u];
				label$281:;
			}
		}
		label$279:;
		label$278:;
	}
	label$191:;
	int32 vr$118 = LEXGETTOKEN( 0 );
	if( vr$118 != 42 ) goto label$294;
	{
		LEXSKIPTOKEN( 0 );
		struct $7ASTNODE* vr$119 = CEQINPARENSONLYEXPR(  );
		int64 vr$120 = CCONSTINTEXPR( vr$119, 8 );
		*LGT$1 = vr$120;
		*IS_FIXLENSTR$1 = -1;
		{
			int32 TMP$136$3;
			uint32 TMP$137$3;
			if( (*DTYPE$1 & 480) == 0 ) goto label$295;
			TMP$136$3 = 24;
			goto label$350;
			label$295:;
			TMP$136$3 = *DTYPE$1 & 31;
			label$350:;
			TMP$137$3 = (uint32)TMP$136$3;
			goto label$297;
			label$298:;
			{
				*LGT$1 = *LGT$1 + 1ll;
				if( *LGT$1 > 1ll ) goto label$300;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
					*LGT$1 = 2ll;
				}
				label$300:;
				label$299:;
				*DTYPE$1 = 18;
			}
			goto label$296;
			label$301:;
			{
				int32 TMP$138$4;
				if( *LGT$1 >= 1ll ) goto label$303;
				{
					ERRREPORT( 17, -1, (uint8*)0u );
					*LGT$1 = 1ll;
				}
				label$303:;
				label$302:;
				if( (*DTYPE$1 & 480) == 0 ) goto label$304;
				TMP$138$4 = 24;
				goto label$351;
				label$304:;
				TMP$138$4 = *DTYPE$1 & 31;
				label$351:;
				if( TMP$138$4 != 7 ) goto label$306;
				{
					*LGT$1 = *LGT$1 * (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200);
				}
				label$306:;
				label$305:;
			}
			goto label$296;
			label$307:;
			{
				ERRREPORT( 17, -1, (uint8*)0u );
			}
			goto label$296;
			label$297:;
			static const void* tmp$147[14] = {
				&&label$301,
				&&label$307,
				&&label$307,
				&&label$301,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$307,
				&&label$298,
			};
			if( (TMP$137$3 - 4u) > 13u ) goto label$307;
			goto *tmp$147[TMP$137$3 - 4u];
			label$296:;
		}
		if( (OPTIONS$1 & 4) == 0 ) goto label$309;
		{
			ERRREPORT( 324, -1, (uint8*)0u );
		}
		label$309:;
		label$308:;
		if( IS_CONST$1 == 0 ) goto label$311;
		{
			*DTYPE$1 = *DTYPE$1 | 512;
		}
		label$311:;
		label$310:;
	}
	goto label$293;
	label$294:;
	{
		if( IS_CONST$1 == 0 ) goto label$313;
		{
			*DTYPE$1 = *DTYPE$1 | 512;
		}
		label$313:;
		label$312:;
		label$314:;
		{
			{
				uint32 TMP$139$4;
				int32 vr$150 = LEXGETTOKEN( 0 );
				TMP$139$4 = (uint32)vr$150;
				goto label$318;
				label$319:;
				{
					LEXSKIPTOKEN( 2048 );
					{
						int32 TMP$140$6;
						int32 vr$151 = LEXGETTOKEN( 0 );
						TMP$140$6 = vr$151;
						if( TMP$140$6 == 373 ) goto label$322;
						label$323:;
						if( TMP$140$6 != 374 ) goto label$321;
						label$322:;
						{
							if( PTR_CNT$1 < 8 ) goto label$325;
							{
								ERRREPORT( 274, 0, (uint8*)0u );
							}
							goto label$324;
							label$325:;
							{
								*DTYPE$1 = ((((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856)) | 512;
								PTR_CNT$1 = PTR_CNT$1 + 1;
							}
							label$324:;
							LEXSKIPTOKEN( 2048 );
						}
						goto label$320;
						label$321:;
						{
							ERRREPORT( 273, 0, (uint8*)0u );
							goto label$315;
						}
						label$326:;
						label$320:;
					}
				}
				goto label$317;
				label$327:;
				{
					if( PTR_CNT$1 < 8 ) goto label$329;
					{
						ERRREPORT( 274, 0, (uint8*)0u );
					}
					goto label$328;
					label$329:;
					{
						*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
						PTR_CNT$1 = PTR_CNT$1 + 1;
					}
					label$328:;
					LEXSKIPTOKEN( 2048 );
				}
				goto label$317;
				label$330:;
				{
					goto label$315;
				}
				goto label$317;
				label$318:;
				static const void* tmp$148[40] = {
					&&label$319,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$330,
					&&label$327,
					&&label$327,
				};
				if( (TMP$139$4 - 335u) > 39u ) goto label$330;
				goto *tmp$148[TMP$139$4 - 335u];
				label$317:;
			}
		}
		label$316:;
		goto label$314;
		label$315:;
	}
	label$293:;
	if( PTR_CNT$1 <= 0 ) goto label$332;
	{
		int32 TMP$141$2;
		if( (*DTYPE$1 & 480) == 0 ) goto label$333;
		TMP$141$2 = 24;
		goto label$352;
		label$333:;
		TMP$141$2 = *DTYPE$1 & 31;
		label$352:;
		*LGT$1 = (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$141$2 * 28)) + 4);
	}
	goto label$331;
	label$332:;
	{
		int32 TMP$142$2;
		if( (*DTYPE$1 & 480) == 0 ) goto label$334;
		TMP$142$2 = 24;
		goto label$353;
		label$334:;
		TMP$142$2 = *DTYPE$1 & 31;
		label$353:;
		if( TMP$142$2 != 23 ) goto label$336;
		{
			if( (OPTIONS$1 & 2) != 0 ) goto label$338;
			{
				ERRREPORT( 71, -1, (uint8*)0u );
				*DTYPE$1 = 32;
				*SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
			}
			label$338:;
			label$337:;
		}
		goto label$335;
		label$336:;
		if( *LGT$1 > 0ll ) goto label$339;
		{
			{
				int32 TMP$143$4;
				TMP$143$4 = *DTYPE$1 & 511;
				if( TMP$143$4 == 4 ) goto label$342;
				label$343:;
				if( TMP$143$4 != 7 ) goto label$341;
				label$342:;
				{
					int32 TMP$144$5;
					if( (OPTIONS$1 & 1) == 0 ) goto label$345;
					{
						ERRREPORT( 28, 0, (uint8*)0u );
						*DTYPE$1 = (((*DTYPE$1 & 31) | ((*DTYPE$1 & 480) + 32)) | ((*DTYPE$1 & 261632) << (1 & 31))) | (*DTYPE$1 & 32505856);
					}
					label$345:;
					label$344:;
					if( (*DTYPE$1 & 480) == 0 ) goto label$346;
					TMP$144$5 = 24;
					goto label$354;
					label$346:;
					TMP$144$5 = *DTYPE$1 & 31;
					label$354:;
					*LGT$1 = (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$144$5 * 28)) + 4);
				}
				label$341:;
				label$340:;
			}
		}
		label$339:;
		label$335:;
	}
	label$331:;
	fb$result$1 = -1;
	label$190:;
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

static struct $8FBSYMBOL* CSYMBOLTYPEFUNCPTR( int32 IS_FUNC$1 )
{
	int32 TMP$102$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$52:;
	int32 DTYPE$1;
	int32 MODE$1;
	int32 ATTRIB$1;
	int32 PATTRIB$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	ATTRIB$1 = 0;
	PATTRIB$1 = 0;
	SUBTYPE$1 = (struct $8FBSYMBOL*)0u;
	TMP$102$1 = 0;
	$11FB_FUNCMODE vr$2 = CPROCCALLINGCONV( -1, &TMP$102$1 );
	MODE$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBPREADDPROC( (uint8*)0u );
	PROC$1 = vr$3;
	CPARAMETERS( (struct $8FBSYMBOL*)0u, PROC$1, MODE$1, -1 );
	CBYREFATTRIBUTE( ($13FB_PROCATTRIB*)&PATTRIB$1, IS_FUNC$1 );
	int32 vr$5 = LEXGETTOKEN( 0 );
	if( vr$5 != 376 ) goto label$55;
	{
		if( IS_FUNC$1 != 0 ) goto label$57;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
			DTYPE$1 = 0;
		}
		goto label$56;
		label$57:;
		{
			CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -1, &DTYPE$1, &SUBTYPE$1 );
		}
		label$56:;
	}
	goto label$54;
	label$55:;
	{
		if( IS_FUNC$1 == 0 ) goto label$59;
		{
			ERRREPORT( 68, 0, (uint8*)0u );
			DTYPE$1 = 8;
		}
		goto label$58;
		label$59:;
		{
			DTYPE$1 = 0;
		}
		label$58:;
	}
	label$54:;
	struct $8FBSYMBOL* vr$8 = SYMBADDPROCPTR( PROC$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1 );
	fb$result$1 = vr$8;
	label$53:;
	return fb$result$1;
}

static FBSTRING* HGETTOKENDESCRIPTION( int32 TK$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$60:;
	{
		if( TK$1 != 377 ) goto label$63;
		label$64:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"typeof", 7, 0 );
		}
		goto label$62;
		label$63:;
		if( TK$1 != 465 ) goto label$65;
		label$66:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"len", 4, 0 );
		}
		goto label$62;
		label$65:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1, (void*)"sizeof", 7, 0 );
		}
		label$67:;
		label$62:;
	}
	label$61:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static int32 CMANGLEMODIFIER( int32* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$145:;
	fb$result$1 = 0;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 386 ) goto label$148;
	{
		LEXSKIPTOKEN( 2048 );
		int32 vr$2 = LEXGETCLASS( 0 );
		if( vr$2 != 4 ) goto label$150;
		{
			{
				FBSTRING TMP$118$4;
				uint8* vr$3 = LEXGETTEXT(  );
				FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)vr$3 );
				FBSTRING* vr$5 = fb_StrLcase2( (FBSTRING*)vr$4, 0 );
				fb_StrInit( (void*)&TMP$118$4, -1, (void*)vr$5, -1, 0 );
				int32 vr$8 = fb_StrCompare( (void*)&TMP$118$4, -1, (void*)"long", 5 );
				if( vr$8 != 0 ) goto label$152;
				label$153:;
				{
					int32 vr$9 = FBIS64BIT(  );
					if( (vr$9 & -((*(int32*)((uint8*)&ENV$ + 284) & 1) == 0)) == 0 ) goto label$155;
					{
						{
							int32 TMP$120$7;
							TMP$120$7 = *DTYPE$1;
							if( TMP$120$7 != 11 ) goto label$157;
							label$158:;
							{
								*DTYPE$1 = (*DTYPE$1 & -32505857) | 8388608;
								fb$result$1 = -1;
							}
							goto label$156;
							label$157:;
							if( TMP$120$7 != 12 ) goto label$159;
							label$160:;
							{
								*DTYPE$1 = (*DTYPE$1 & -32505857) | 9437184;
								fb$result$1 = -1;
							}
							goto label$156;
							label$159:;
							{
								ERRREPORT( 17, 0, (uint8*)0u );
							}
							label$161:;
							label$156:;
						}
					}
					goto label$154;
					label$155:;
					{
						{
							int32 TMP$121$7;
							TMP$121$7 = *DTYPE$1;
							if( TMP$121$7 != 11 ) goto label$163;
							label$164:;
							{
							}
							goto label$162;
							label$163:;
							if( TMP$121$7 != 12 ) goto label$165;
							label$166:;
							{
							}
							goto label$162;
							label$165:;
							{
								ERRREPORT( 17, 0, (uint8*)0u );
							}
							label$167:;
							label$162:;
						}
					}
					label$154:;
				}
				goto label$151;
				label$152:;
				int32 vr$24 = fb_StrCompare( (void*)&TMP$118$4, -1, (void*)"char", 5 );
				if( vr$24 != 0 ) goto label$168;
				label$169:;
				{
					{
						int32 TMP$123$6;
						TMP$123$6 = *DTYPE$1;
						if( TMP$123$6 != 0 ) goto label$171;
						label$172:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857) | 4194304;
						}
						goto label$170;
						label$171:;
						if( TMP$123$6 == 2 ) goto label$174;
						label$175:;
						if( TMP$123$6 != 3 ) goto label$173;
						label$174:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857) | 4194304;
						}
						goto label$170;
						label$173:;
						{
							ERRREPORT( 17, 0, (uint8*)0u );
						}
						label$176:;
						label$170:;
					}
				}
				goto label$151;
				label$168:;
				int32 vr$35 = fb_StrCompare( (void*)&TMP$118$4, -1, (void*)"__builtin_va_list", 18 );
				if( vr$35 == 0 ) goto label$178;
				label$179:;
				int32 vr$37 = fb_StrCompare( (void*)&TMP$118$4, -1, (void*)"__builtin_va_list[]", 20 );
				if( vr$37 != 0 ) goto label$177;
				label$178:;
				{
					{
						int32 TMP$126$6;
						TMP$126$6 = *DTYPE$1;
						if( TMP$126$6 != 0 ) goto label$181;
						label$182:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857) | 19922944;
						}
						goto label$180;
						label$181:;
						if( TMP$126$6 != 20 ) goto label$183;
						label$184:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857) | 19922944;
							$19FB_CVA_LIST_TYPEDEF vr$49 = FBGETBACKENDVALISTTYPE(  );
							*(int32*)((uint8*)*SUBTYPE$1 + 120) = *(int32*)((uint8*)*SUBTYPE$1 + 120) | ((vr$49 << (20 & 31)) & 15728640);
						}
						goto label$180;
						label$183:;
						{
							ERRREPORT( 17, 0, (uint8*)0u );
						}
						label$185:;
						label$180:;
					}
				}
				goto label$151;
				label$177:;
				int32 vr$56 = fb_StrCompare( (void*)&TMP$118$4, -1, (void*)"", 1 );
				if( vr$56 != 0 ) goto label$186;
				label$187:;
				{
					ERRREPORT( 304, 0, (uint8*)0u );
				}
				goto label$151;
				label$186:;
				{
					ERRREPORT( 17, 0, (uint8*)0u );
				}
				label$188:;
				label$151:;
				fb_StrDelete( (FBSTRING*)&TMP$118$4 );
			}
			LEXSKIPTOKEN( 0 );
		}
		goto label$149;
		label$150:;
		{
			ERRREPORT( 17, 0, (uint8*)0u );
		}
		label$149:;
	}
	label$148:;
	label$147:;
	label$146:;
	return fb$result$1;
}
