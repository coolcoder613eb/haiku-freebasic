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
typedef int64 $13AST_NODECLASS;
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
typedef int64 $11FB_DATATYPE;
struct $8FBSYMBOL;
struct $7ASTNODE;
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
		uint16* LITTEXTW;
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
typedef int64 $11FB_FUNCMODE;
typedef int64 $21FB_PROC_RETURN_METHOD;
typedef int64 (*tmp$34)( struct $8FBSYMBOL* );
struct $10FB_PROCRTL {
	tmp$34 CALLBACK;
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
		uint16* TEXTW;
		int64 PARAMNUM;
	};
	struct $9FB_DEFTOK* PREV;
	struct $9FB_DEFTOK* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_DEFTOK ) == 32 );
typedef int64 $15FB_DEFINE_FLAGS;
typedef FBSTRING* (*tmp$28)( void );
struct $8DZSTRING {
	uint8* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DZSTRING ) == 24 );
struct $8DWSTRING {
	uint16* DATA;
	int64 LEN;
	int64 SIZE;
};
__FB_STATIC_ASSERT( sizeof( struct $8DWSTRING ) == 24 );
struct $9LEXPP_ARG {
	union {
		struct $8DZSTRING TEXT;
		struct $8DWSTRING TEXTW;
	};
};
__FB_STATIC_ASSERT( sizeof( struct $9LEXPP_ARG ) == 24 );
struct $11LEXPP_ARGTB {
	struct $9LEXPP_ARG TB[32];
	int64 COUNT;
};
__FB_STATIC_ASSERT( sizeof( struct $11LEXPP_ARGTB ) == 776 );
typedef FBSTRING* (*tmp$29)( struct $11LEXPP_ARGTB*, int64* );
typedef uint16* (*tmp$30)( struct $11LEXPP_ARGTB*, int64* );
struct $10FBS_DEFINE {
	int64 PARAMS;
	struct $11FB_DEFPARAM* PARAMHEAD;
	union {
		struct $9FB_DEFTOK* TOKHEAD;
		uint8* TEXT;
		uint16* TEXTW;
	};
	int64 ISARGLESS;
	$15FB_DEFINE_FLAGS FLAGS;
	union {
		tmp$28 DPROCZ;
		tmp$29 MPROCZ;
	};
	union {
		tmp$30 MPROCW;
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
struct $11RANGEVALUES {
	int64 SMIN;
	int64 SMAX;
	uint64 UMAX;
};
__FB_STATIC_ASSERT( sizeof( struct $11RANGEVALUES ) == 24 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
struct $8FBARRAY1I11RANGEVALUESE {
	struct $11RANGEVALUES* DATA;
	struct $11RANGEVALUES* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[1];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY1I11RANGEVALUESE ) == 72 );
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
struct $19AMBIGIOUSSIZEOFINFO {
	struct $8FBSYMBOL* TYP;
	struct $8FBSYMBOL* NONTYPE;
};
__FB_STATIC_ASSERT( sizeof( struct $19AMBIGIOUSSIZEOFINFO ) == 16 );
struct $7FBTOKEN;
struct $7FBTOKEN {
	int64 ID;
	int64 CLASS;
	int64 DTYPE;
	union {
		uint8 TEXT[1025];
		uint16 TEXTW[1025];
	};
	int64 LEN;
	struct $10FBSYMCHAIN* SYM_CHAIN;
	union {
		int64 PRDPOS;
		int64 HASESC;
	};
	int64 SUFFIXCHAR;
	int64 AFTER_SPACE;
	struct $7FBTOKEN* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $7FBTOKEN ) == 2128 );
struct $9LEX_TKCTX {
	struct $7FBTOKEN TOKENTB[4];
	int64 K;
	struct $7FBTOKEN* HEAD;
	struct $7FBTOKEN* TAIL;
	uint64 CURRCHAR;
	uint64 LAHDCHAR1;
	uint64 LAHDCHAR2;
	int64 LINENUM;
	int64 LASTTK_ID;
	int64 RECLEVEL;
	struct $8FBSYMBOL* CURRMACRO;
	struct $8FBSYMBOL* KWDNS;
	int64 IS_FB_EVAL;
	int64 DEFLEN;
	union {
		struct {
			uint8* DEFPTR;
			struct $8DZSTRING DEFTEXT;
		};
		struct {
			uint16* DEFPTRW;
			struct $8DWSTRING DEFTEXTW;
		};
	};
	int64 BUFFLEN;
	union {
		struct {
			uint8* BUFFPTR;
			uint8 BUFF[8193];
		};
		struct {
			uint16* BUFFPTRW;
			uint16 BUFFW[8193];
		};
	};
	int64 FILEPOS;
	int64 LASTFILEPOS;
	struct $8DZSTRING CURRLINE;
	int64 AFTER_SPACE;
};
__FB_STATIC_ASSERT( sizeof( struct $9LEX_TKCTX ) == 25104 );
typedef int64 $14FB_SYMBTYPEOPT;
typedef int64 $15FB_CMPSTMT_MASK;
struct $17FB_CMPSTMT_FORELM {
	struct $8FBSYMBOL* SYM;
	union $7FBVALUE VALUE;
	int64 DTYPE;
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
	int64 EXPLICIT_STEP;
};
__FB_STATIC_ASSERT( sizeof( struct $14FB_CMPSTMT_FOR ) == 152 );
struct $13FB_CMPSTMT_DO {
	int64 ATTOP;
	struct $8FBSYMBOL* INILABEL;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_DO ) == 40 );
struct $16FB_CMPSTMT_WHILE {
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_WHILE ) == 24 );
struct $13FB_CMPSTMT_IF {
	int64 ISSINGLE;
	struct $8FBSYMBOL* NXTLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	int64 ELSECNT;
};
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMT_IF ) == 32 );
typedef int64 $8FB_TOKEN;
struct $15FB_CMPSTMT_PROC {
	$8FB_TOKEN TKN;
	int64 IS_NESTED;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_PROC ) == 32 );
struct $19FB_CMPSTMT_SELCONST {
	int64 BASE;
	struct $8FBSYMBOL* DEFLABEL;
	int64 DTYPE;
	uint64 BIAS;
};
__FB_STATIC_ASSERT( sizeof( struct $19FB_CMPSTMT_SELCONST ) == 32 );
struct $17FB_CMPSTMT_SELECT {
	int64 ISCONST;
	struct $8FBSYMBOL* SYM;
	int64 CASECNT;
	struct $19FB_CMPSTMT_SELCONST CONST_;
	struct $8FBSYMBOL* CMPLABEL;
	struct $8FBSYMBOL* ENDLABEL;
	struct $13FB_CMPSTMTSTK* LAST;
	struct $7ASTNODE* OUTERSCOPENODE;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_SELECT ) == 88 );
struct $15FB_CMPSTMT_WITH {
	struct $8FBSYMBOL* SYM;
	int64 IS_PTR;
	struct $13FB_CMPSTMTSTK* LAST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_CMPSTMT_WITH ) == 24 );
struct $20FB_CMPSTMT_NAMESPACE {
	struct $8FBSYMBOL* SYM;
	int64 LEVELS;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_CMPSTMT_NAMESPACE ) == 16 );
typedef int64 $11FB_MANGLING;
struct $17FB_CMPSTMT_EXTERN {
	$11FB_MANGLING LASTMANG;
};
__FB_STATIC_ASSERT( sizeof( struct $17FB_CMPSTMT_EXTERN ) == 8 );
struct $16FB_CMPSTMT_SCOPE {
	int64 LASTIS_SCOPE;
};
__FB_STATIC_ASSERT( sizeof( struct $16FB_CMPSTMT_SCOPE ) == 8 );
struct $13FB_CMPSTMTSTK {
	int64 ID;
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
__FB_STATIC_ASSERT( sizeof( struct $13FB_CMPSTMTSTK ) == 176 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $19FB_CVA_LIST_TYPEDEF;
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
FBSTRING* fb_StrLcase2( FBSTRING*, int32 );
static void fb_ctor__parserzdeclzsymbtype( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
int64 FBIS64BIT( void );
$19FB_CVA_LIST_TYPEDEF FBGETBACKENDVALISTTYPE( void );
void ASTDELTREE( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
int64 ASTCONSTFLUSHTOINT( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTREMOVENIDXARRAY( struct $7ASTNODE* );
void ASTDTORLISTSCOPEBEGIN( int64 );
int64 ASTDTORLISTSCOPEEND( void );
void ASTDTORLISTSCOPEDELETE( int64 );
int64 ASTSIZEOF( struct $7ASTNODE*, int64* );
struct $8FBSYMBOL* SYMBADDPROCPTR( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64 );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
int64 TYPETOUNSIGNED( int64 );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
FBSTRING* SYMBDUMPPRETTYTOSTR( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEADCLASS( int64, $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
struct $7ASTNODE* CTYPEOREXPRESSION( int64, int64*, struct $8FBSYMBOL**, int64*, int64* );
void CTYPEOF( int64*, struct $8FBSYMBOL**, int64*, int64*, struct $8FBSYMBOL** );
int64 CSYMBOLTYPE( int64*, struct $8FBSYMBOL**, int64*, int64*, $14FB_SYMBTYPEOPT );
typedef int64 $8FB_IDOPT;
struct $10FBSYMCHAIN* CIDENTIFIER( struct $8FBSYMBOL**, $8FB_IDOPT );
void CPARAMETERS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64 );
struct $7ASTNODE* CEXPRESSIONWITHNIDXARRAY( int64 );
struct $7ASTNODE* CEQINPARENSONLYEXPR( void );
struct $7ASTNODE* CGTINPARENSONLYEXPR( void );
void CPROCRETTYPE( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, struct $8FBSYMBOL*, int64, int64*, struct $8FBSYMBOL** );
$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE, int64* );
void CBYREFATTRIBUTE( $13FB_PROCATTRIB*, int64 );
void CUDTTYPEMEMBER( int64*, struct $8FBSYMBOL**, int64*, int64*, struct $8FBSYMBOL** );
int64 CCONSTINTEXPR( struct $7ASTNODE*, int64 );
int64 HISCONSTINRANGE( int64, int64, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64, int64 );
static struct $8FBSYMBOL* CSYMBOLTYPEFUNCPTR( int64 );
static FBSTRING* HGETTOKENDESCRIPTION( int64 );
void _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN( struct $19AMBIGIOUSSIZEOFINFO*, struct $10FBSYMCHAIN* );
void _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEu7INTEGERS0_( struct $19AMBIGIOUSSIZEOFINFO*, int64, int64 );
static int64 CMANGLEMODIFIER( int64*, struct $8FBSYMBOL** );
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
static struct $8FBARRAY1I10AST_OPINFOE tmp$80$;
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
static struct $8FBARRAY1I13SYMB_DATATYPEE tmp$81$;
struct $8FBARRAY2Iu7INTEGERE {
	int64* DATA;
	int64* PTR;
	int64 SIZE;
	int64 ELEMENT_LEN;
	int64 DIMENSIONS;
	int64 FLAGS;
	struct $16__FB_ARRAYDIMTB$ DIMTB[2];
};
__FB_STATIC_ASSERT( sizeof( struct $8FBARRAY2Iu7INTEGERE ) == 96 );
static struct $8FBARRAY2Iu7INTEGERE tmp$82$;
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
struct $7LEX_CTX {
	struct $9LEX_TKCTX CTXTB[17];
	struct $9LEX_TKCTX* CTX;
	int64 INSIDEMACRO;
};
__FB_STATIC_ASSERT( sizeof( struct $7LEX_CTX ) == 426784 );
extern struct $7LEX_CTX LEX$;
struct $8TSTACKTB;
struct $10TSTACKNODE;
struct $10TSTACKNODE {
	struct $10TSTACKNODE* PREV;
	struct $10TSTACKNODE* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $10TSTACKNODE ) == 16 );
struct $8TSTACKTB {
	struct $8TSTACKTB* NEXT;
	struct $10TSTACKNODE* NODETB;
	int64 NODES;
};
__FB_STATIC_ASSERT( sizeof( struct $8TSTACKTB ) == 24 );
struct $6TSTACK {
	struct $8TSTACKTB* TBHEAD;
	struct $8TSTACKTB* TBTAIL;
	int64 NODES;
	int64 NODELEN;
	struct $10TSTACKNODE* TOS;
	int64 CLEAR;
};
__FB_STATIC_ASSERT( sizeof( struct $6TSTACK ) == 48 );
struct $17FBPARSER_STMT_LET {
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $17FBPARSER_STMT_LET ) == 64 );
struct $13FBPARSER_STMT {
	struct $6TSTACK STK;
	$8FB_TOKEN ID;
	int64 CNT;
	struct $13FB_CMPSTMTSTK* FOR;
	struct $13FB_CMPSTMTSTK* DO;
	struct $13FB_CMPSTMTSTK* WHILE;
	struct $13FB_CMPSTMTSTK* SELECT;
	struct $13FB_CMPSTMTSTK* PROC;
	struct $13FB_CMPSTMTSTK* WITH;
	struct $17FBPARSER_STMT_LET LET;
};
__FB_STATIC_ASSERT( sizeof( struct $13FBPARSER_STMT ) == 176 );
typedef int64 $12FB_PARSEROPT;
struct $9PARSERCTX {
	struct $13FBPARSER_STMT STMT;
	int64 NSPCREC;
	struct $10FBSYMCHAIN* NSPREFIX;
	uint64 STAGE;
	uint64 SCOPE;
	$11FB_MANGLING MANGLING;
	struct $8FBSYMBOL* CURRPROC;
	struct $8FBSYMBOL* CURRBLOCK;
	struct $5TLIST OVLARGLIST;
	int64 PRNTCNT;
	$12FB_PARSEROPT OPTIONS;
	int64 CTX_DTYPE;
	struct $8FBSYMBOL* CTXSYM;
	int64 HAVE_EQ_OUTSIDE_PARENS;
};
__FB_STATIC_ASSERT( sizeof( struct $9PARSERCTX ) == 336 );
extern struct $9PARSERCTX PARSER$;

int64 CCONSTINTEXPR( struct $7ASTNODE* EXPR$1, int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$13;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$1;
	}
	label$13:;
	label$12:;
	if( *(int64*)EXPR$1 == 16ll ) goto label$15;
	{
		ERRREPORT( 11ll, 0ll, (uint8*)0ull );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, DTYPE$1, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$3;
	}
	label$15:;
	label$14:;
	int64 vr$4 = ASTCONSTFLUSHTOINT( EXPR$1, DTYPE$1 );
	fb$result$1 = vr$4;
	label$11:;
	return fb$result$1;
}

int64 HISCONSTINRANGE( int64 DTYPE$1, int64 VALUE$1, int64 TODTYPE$1 )
{
	int64 TMP$95$1;
	int64 TMP$96$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	static struct $11RANGEVALUES RANGE$1[9] = { { -1ll, 0ll, 0ull }, { -128ll, 127ll, 127ull }, { 0ll, 127ll, 255ull }, { -32768ll, 32767ll, 32767ull }, { 0ll, 32767ll, 65535ull }, { -2147483648ll, 2147483647ll, 2147483647ull }, { 0ll, 2147483647ll, 4294967295ull }, { -9223372036854775808ull, 9223372036854775807ll, 9223372036854775807ull }, { 0ll, 9223372036854775807ll, 18446744073709551615ull } };
	static struct $8FBARRAY1I11RANGEVALUESE tmp$94$1 = { (struct $11RANGEVALUES*)RANGE$1, (struct $11RANGEVALUES*)RANGE$1, 216ll, 24ll, 1ll, 49ll, { { 9ll, 0ll, 8ll } } };
	struct $11RANGEVALUES* R$1;
	if( (TODTYPE$1 & 480ll) == 0ll ) goto label$18;
	TMP$95$1 = 24ll;
	goto label$36;
	label$18:;
	TMP$95$1 = TODTYPE$1 & 31ll;
	label$36:;
	R$1 = (struct $11RANGEVALUES*)((int64)(struct $11RANGEVALUES*)RANGE$1 + (*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$95$1 * 56ll)) + 40ll) * 24ll));
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$19;
	TMP$96$1 = 24ll;
	goto label$37;
	label$19:;
	TMP$96$1 = DTYPE$1 & 31ll;
	label$37:;
	if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$96$1 * 56ll)) + 16ll) == 0ll ) goto label$21;
	{
		int64 TMP$97$2;
		if( (TODTYPE$1 & 480ll) == 0ll ) goto label$22;
		TMP$97$2 = 24ll;
		goto label$38;
		label$22:;
		TMP$97$2 = TODTYPE$1 & 31ll;
		label$38:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$97$2 * 56ll)) + 16ll) == 0ll ) goto label$24;
		{
			fb$result$1 = (int64)-(VALUE$1 >= *(int64*)R$1) & (int64)-(VALUE$1 <= *(int64*)((uint8*)R$1 + 8ll));
		}
		goto label$23;
		label$24:;
		{
			int64 TMP$98$3;
			int64 TMP$99$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$25;
			TMP$98$3 = 24ll;
			goto label$39;
			label$25:;
			TMP$98$3 = DTYPE$1 & 31ll;
			label$39:;
			if( (TODTYPE$1 & 480ll) == 0ll ) goto label$26;
			TMP$99$3 = 24ll;
			goto label$40;
			label$26:;
			TMP$99$3 = TODTYPE$1 & 31ll;
			label$40:;
			if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$98$3 * 56ll)) + 40ll) == 7ll) & (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$99$3 * 56ll)) + 40ll) == 8ll)) == 0ll ) goto label$28;
			{
				fb$result$1 = (int64)-(VALUE$1 >= 0ll) & (int64)-((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 8ll));
			}
			goto label$27;
			label$28:;
			{
				fb$result$1 = (int64)-(VALUE$1 >= 0ll) & (int64)-((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16ll));
			}
			label$27:;
		}
		label$23:;
	}
	goto label$20;
	label$21:;
	{
		int64 TMP$100$2;
		if( (TODTYPE$1 & 480ll) == 0ll ) goto label$29;
		TMP$100$2 = 24ll;
		goto label$41;
		label$29:;
		TMP$100$2 = TODTYPE$1 & 31ll;
		label$41:;
		if( *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$100$2 * 56ll)) + 16ll) == 0ll ) goto label$31;
		{
			int64 TMP$101$3;
			int64 TMP$102$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$32;
			TMP$101$3 = 24ll;
			goto label$42;
			label$32:;
			TMP$101$3 = DTYPE$1 & 31ll;
			label$42:;
			if( (TODTYPE$1 & 480ll) == 0ll ) goto label$33;
			TMP$102$3 = 24ll;
			goto label$43;
			label$33:;
			TMP$102$3 = TODTYPE$1 & 31ll;
			label$43:;
			if( ((int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$101$3 * 56ll)) + 40ll) == 8ll) & (int64)-(*(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$102$3 * 56ll)) + 40ll) == 7ll)) == 0ll ) goto label$35;
			{
				fb$result$1 = (int64)-((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 8ll));
			}
			goto label$34;
			label$35:;
			{
				fb$result$1 = (int64)-((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16ll));
			}
			label$34:;
		}
		goto label$30;
		label$31:;
		{
			fb$result$1 = (int64)-((uint64)VALUE$1 <= *(uint64*)((uint8*)R$1 + 16ll));
		}
		label$30:;
	}
	label$20:;
	label$17:;
	return fb$result$1;
}

int64 CCONSTINTEXPRRANGED( struct $7ASTNODE* EXPR$1, int64 TODTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$44:;
	int64 VALUE$1;
	int64 DTYPE$1;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$47;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$1 = ASTNEWCONSTI( 0ll, TODTYPE$1, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$1;
	}
	label$47:;
	label$46:;
	if( *(int64*)EXPR$1 == 16ll ) goto label$49;
	{
		ERRREPORT( 11ll, 0ll, (uint8*)0ull );
		ASTDELTREE( EXPR$1 );
		struct $7ASTNODE* vr$3 = ASTNEWCONSTI( 0ll, 13ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$3;
	}
	label$49:;
	label$48:;
	DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
	int64 vr$6 = ASTCONSTFLUSHTOINT( EXPR$1, 13ll );
	VALUE$1 = vr$6;
	int64 vr$7 = HISCONSTINRANGE( DTYPE$1, VALUE$1, TODTYPE$1 );
	if( ~vr$7 == 0ll ) goto label$51;
	{
		ERRREPORTWARN( 25ll, (uint8*)0ull, 1ll, (uint8*)0ull );
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
				$12FB_SYMBCLASS TMP$107$4;
				TMP$107$4 = *($12FB_SYMBCLASS*)SYM$2;
				if( TMP$107$4 == 10ll ) goto label$78;
				label$79:;
				if( TMP$107$4 == 13ll ) goto label$78;
				label$80:;
				if( TMP$107$4 != 14ll ) goto label$77;
				label$78:;
				{
					if( *(struct $8FBSYMBOL**)THIS$1 != (struct $8FBSYMBOL*)0ull ) goto label$82;
					{
						*(struct $8FBSYMBOL**)THIS$1 = SYM$2;
					}
					label$82:;
					label$81:;
				}
				goto label$76;
				label$77:;
				if( TMP$107$4 == 1ll ) goto label$84;
				label$85:;
				if( TMP$107$4 != 2ll ) goto label$83;
				label$84:;
				{
					if( *(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) != (struct $8FBSYMBOL*)0ull ) goto label$87;
					{
						*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) = SYM$2;
					}
					label$87:;
					label$86:;
				}
				label$83:;
				label$76:;
			}
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 280ll);
		}
		label$75:;
		if( SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$73;
		label$74:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
	}
	label$72:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$70;
	label$71:;
	label$69:;
}

void _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEu7INTEGERS0_( struct $19AMBIGIOUSSIZEOFINFO* THIS$1, int64 TK$1, int64 REFERS_TO_TYPE$1 )
{
	FBSTRING TMP$111$1;
	FBSTRING TMP$112$1;
	label$88:;
	if( ((int64)-(*(struct $8FBSYMBOL**)THIS$1 == (struct $8FBSYMBOL*)0ull) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$91;
	{
		goto label$89;
		label$91:;
	}
	if( (((int64)-(*(int64*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) == 1ll) & (int64)-((*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) + 56ll) & 511ll) == 20ll)) & (int64)-(*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll) + 64ll) == *(struct $8FBSYMBOL**)THIS$1)) == 0ll ) goto label$93;
	{
		goto label$89;
	}
	label$93:;
	label$92:;
	struct $8FBSYMBOL* SYM1$1;
	SYM1$1 = *(struct $8FBSYMBOL**)THIS$1;
	struct $8FBSYMBOL* SYM2$1;
	SYM2$1 = *(struct $8FBSYMBOL**)((uint8*)THIS$1 + 8ll);
	if( REFERS_TO_TYPE$1 != 0ll ) goto label$95;
	{
		{
			struct $8FBSYMBOL* TMP$108$3;
			TMP$108$3 = SYM1$1;
			SYM1$1 = SYM2$1;
			SYM2$1 = TMP$108$3;
		}
	}
	label$95:;
	label$94:;
	FBSTRING MSG$1;
	FBSTRING* vr$20 = HGETTOKENDESCRIPTION( TK$1 );
	__builtin_memset( &TMP$111$1, 0, 24ll );
	FBSTRING* vr$23 = fb_StrConcat( &TMP$111$1, (void*)"Ambigious ", 11ll, (void*)vr$20, -1ll );
	__builtin_memset( &TMP$112$1, 0, 24ll );
	FBSTRING* vr$26 = fb_StrConcat( &TMP$112$1, (void*)vr$23, -1ll, (void*)"()", 3ll );
	fb_StrInit( (void*)&MSG$1, -1ll, (void*)vr$26, -1ll, 0 );
	fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)", referring to ", 16ll, 0 );
	FBSTRING* vr$29 = SYMBDUMPPRETTYTOSTR( SYM1$1 );
	fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)vr$29, -1ll, 0 );
	fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)", instead of ", 14ll, 0 );
	FBSTRING* vr$32 = SYMBDUMPPRETTYTOSTR( SYM2$1 );
	fb_StrConcatAssign( (void*)&MSG$1, -1ll, (void*)vr$32, -1ll, 0 );
	ERRREPORTWARN( 37ll, (uint8*)0ull, 1ll, (uint8*)*(uint8**)&MSG$1 );
	fb_StrDelete( (FBSTRING*)&MSG$1 );
	label$89:;
}

struct $7ASTNODE* CTYPEOREXPRESSION( int64 TK$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int64* IS_FIXLENSTR$1 )
{
	int64 TMP$115$1;
	int64 TMP$116$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$96:;
	struct $7ASTNODE* EXPR$1;
	int64 MAYBE_TYPE$1;
	MAYBE_TYPE$1 = -1ll;
	struct $19AMBIGIOUSSIZEOFINFO AMBIGIOUSSIZEOF$1;
	__builtin_memset( &AMBIGIOUSSIZEOF$1, 0, 16ll );
	int64 vr$2 = LEXGETTOKEN( 0ll );
	int64 vr$4 = LEXGETLOOKAHEAD( 1ll, 64ll );
	if( ((int64)-(vr$2 == 265ll) & (int64)-(vr$4 == 41ll)) == 0ll ) goto label$99;
	{
		struct $10FBSYMCHAIN* CHAIN_$2;
		CHAIN_$2 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll);
		if( CHAIN_$2 == (struct $10FBSYMCHAIN*)0ull ) goto label$101;
		{
			_ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN( &AMBIGIOUSSIZEOF$1, CHAIN_$2 );
		}
		label$101:;
		label$100:;
	}
	label$99:;
	label$98:;
	int64 vr$10 = LEXGETLOOKAHEADCLASS( 1ll, 0ll );
	if( vr$10 != 5ll ) goto label$102;
	int64 vr$11 = LEXGETLOOKAHEAD( 1ll, 0ll );
	TMP$115$1 = (int64)-(vr$11 != 42ll);
	goto label$125;
	label$102:;
	TMP$115$1 = 0ll;
	label$125:;
	if( TMP$115$1 == 0ll ) goto label$103;
	int64 vr$13 = LEXGETLOOKAHEAD( 1ll, 0ll );
	TMP$116$1 = (int64)-(vr$13 != 301ll);
	goto label$126;
	label$103:;
	TMP$116$1 = 0ll;
	label$126:;
	if( TMP$116$1 == 0ll ) goto label$105;
	{
		MAYBE_TYPE$1 = 0ll;
	}
	goto label$104;
	label$105:;
	{
		{
			int64 TMP$117$3;
			int64 vr$15 = LEXGETLOOKAHEAD( 1ll, 0ll );
			TMP$117$3 = vr$15;
			if( TMP$117$3 != 91ll ) goto label$107;
			label$108:;
			{
				MAYBE_TYPE$1 = 0ll;
			}
			goto label$106;
			label$107:;
			if( TMP$117$3 != 40ll ) goto label$109;
			label$110:;
			{
				{
					int64 TMP$118$5;
					int64 vr$16 = LEXGETTOKEN( 0ll );
					TMP$118$5 = vr$16;
					if( TMP$118$5 == 377ll ) goto label$113;
					label$114:;
					if( TMP$118$5 == 345ll ) goto label$113;
					label$115:;
					if( TMP$118$5 != 346ll ) goto label$112;
					label$113:;
					{
					}
					goto label$111;
					label$112:;
					{
						MAYBE_TYPE$1 = 0ll;
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
	if( ((MAYBE_TYPE$1 & (int64)-(TK$1 == 465ll)) & (int64)-(*(int64*)((uint8*)&ENV$ + 272ll) == 3ll)) == 0ll ) goto label$118;
	{
		MAYBE_TYPE$1 = 0ll;
	}
	label$118:;
	label$117:;
	if( MAYBE_TYPE$1 == 0ll ) goto label$120;
	{
		int64 vr$21 = CSYMBOLTYPE( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, 8ll );
		if( vr$21 == 0ll ) goto label$122;
		{
			_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEu7INTEGERS0_( &AMBIGIOUSSIZEOF$1, TK$1, -1ll );
			*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) = (struct $10FBSYMCHAIN*)0ull;
			fb$result$1 = (struct $7ASTNODE*)0ull;
			goto label$97;
		}
		label$122:;
		label$121:;
	}
	label$120:;
	label$119:;
	_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEu7INTEGERS0_( &AMBIGIOUSSIZEOF$1, TK$1, 0ll );
	struct $7ASTNODE* vr$24 = CEXPRESSIONWITHNIDXARRAY( -1ll );
	EXPR$1 = vr$24;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$124;
	{
		*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) = (struct $10FBSYMCHAIN*)0ull;
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		struct $7ASTNODE* vr$25 = ASTNEWCONSTI( 0ll, 8ll, (struct $8FBSYMBOL*)0ull );
		EXPR$1 = vr$25;
	}
	label$124:;
	label$123:;
	fb$result$1 = EXPR$1;
	label$97:;
	return fb$result$1;
}

void CTYPEOF( int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int64* IS_FIXLENSTR$1, struct $8FBSYMBOL** RET_SYM$1 )
{
	label$127:;
	struct $7ASTNODE* EXPR$1;
	int64 DTORLISTCOOKIE$1;
	*RET_SYM$1 = (struct $8FBSYMBOL*)0ull;
	ASTDTORLISTSCOPEBEGIN( 0ll );
	struct $7ASTNODE* vr$1 = CTYPEOREXPRESSION( 377ll, DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1 );
	EXPR$1 = vr$1;
	int64 vr$2 = ASTDTORLISTSCOPEEND(  );
	DTORLISTCOOKIE$1 = vr$2;
	ASTDTORLISTSCOPEDELETE( DTORLISTCOOKIE$1 );
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$130;
	{
		CUDTTYPEMEMBER( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, RET_SYM$1 );
		goto label$128;
	}
	label$130:;
	label$129:;
	struct $7ASTNODE* vr$3 = ASTREMOVENIDXARRAY( EXPR$1 );
	EXPR$1 = vr$3;
	*DTYPE$1 = *(int64*)((uint8*)EXPR$1 + 8ll);
	*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll);
	int64 vr$8 = ASTSIZEOF( EXPR$1, IS_FIXLENSTR$1 );
	*LGT$1 = vr$8;
	*RET_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 24ll);
	ASTDELTREE( EXPR$1 );
	label$128:;
}

$11FB_DATATYPE HINTEGERTYPEFROMBITSIZE( int64 BITSIZE$1, int64 IS_UNSIGNED$1 )
{
	$11FB_DATATYPE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$131:;
	$11FB_DATATYPE DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	{
		if( BITSIZE$1 != 8ll ) goto label$134;
		label$135:;
		{
			DTYPE$1 = 2ll;
		}
		goto label$133;
		label$134:;
		if( BITSIZE$1 != 16ll ) goto label$136;
		label$137:;
		{
			DTYPE$1 = 5ll;
		}
		goto label$133;
		label$136:;
		if( BITSIZE$1 != 32ll ) goto label$138;
		label$139:;
		{
			DTYPE$1 = 11ll;
		}
		goto label$133;
		label$138:;
		if( BITSIZE$1 != 64ll ) goto label$140;
		label$141:;
		{
			DTYPE$1 = 13ll;
		}
		goto label$133;
		label$140:;
		{
			ERRREPORT( 310ll, -1ll, (uint8*)0ull );
			DTYPE$1 = 8ll;
		}
		label$142:;
		label$133:;
	}
	if( IS_UNSIGNED$1 == 0ll ) goto label$144;
	{
		int64 vr$2 = TYPETOUNSIGNED( DTYPE$1 );
		DTYPE$1 = vr$2;
	}
	label$144:;
	label$143:;
	fb$result$1 = DTYPE$1;
	goto label$132;
	label$132:;
	return fb$result$1;
}

int64 CSYMBOLTYPE( int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1, int64* LGT$1, int64* IS_FIXLENSTR$1, $14FB_SYMBTYPEOPT OPTIONS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$189:;
	int64 ISUNSIGNED$1;
	int64 ISFUNCTION$1;
	fb$result$1 = 0ll;
	*DTYPE$1 = 2147483648ll;
	*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	*LGT$1 = 0ll;
	*IS_FIXLENSTR$1 = 0ll;
	int64 IS_CONST$1;
	IS_CONST$1 = 0ll;
	int64 PTR_CNT$1;
	PTR_CNT$1 = 0ll;
	int64 vr$5 = LEXGETTOKEN( 0ll );
	if( vr$5 != 377ll ) goto label$192;
	{
		struct $8FBSYMBOL* TMP$128$2;
		LEXSKIPTOKEN( 2048ll );
		int64 vr$6 = HMATCH( 40ll, 0ll );
		if( vr$6 != 0ll ) goto label$194;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		label$194:;
		label$193:;
		TMP$128$2 = (struct $8FBSYMBOL*)0ull;
		CTYPEOF( DTYPE$1, SUBTYPE$1, LGT$1, IS_FIXLENSTR$1, &TMP$128$2 );
		int64 vr$8 = HMATCH( 41ll, 0ll );
		if( vr$8 != 0ll ) goto label$196;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		label$196:;
		label$195:;
	}
	goto label$191;
	label$192:;
	{
		int64 vr$9 = LEXGETTOKEN( 0ll );
		if( vr$9 != 335ll ) goto label$198;
		{
			LEXSKIPTOKEN( 2048ll );
			IS_CONST$1 = -1ll;
		}
		label$198:;
		label$197:;
		int64 vr$10 = HMATCH( 375ll, 2048ll );
		ISUNSIGNED$1 = vr$10;
		{
			uint64 TMP$129$3;
			int64 vr$11 = LEXGETTOKEN( 0ll );
			TMP$129$3 = (uint64)vr$11;
			goto label$200;
			label$201:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 0ll;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$202:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 1ll;
			}
			goto label$199;
			label$203:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 2ll;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$204:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 3ll;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$205:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 5ll;
			}
			goto label$199;
			label$206:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 6ll;
			}
			goto label$199;
			label$207:;
			{
				LEXSKIPTOKEN( 2048ll );
				int64 vr$18 = HMATCH( 301ll, 0ll );
				if( vr$18 == 0ll ) goto label$209;
				{
					struct $7ASTNODE* vr$19 = CGTINPARENSONLYEXPR(  );
					int64 vr$20 = CCONSTINTEXPR( vr$19, 8ll );
					*LGT$1 = vr$20;
					$11FB_DATATYPE vr$23 = HINTEGERTYPEFROMBITSIZE( *LGT$1, 0ll );
					*DTYPE$1 = vr$23;
					int64 vr$25 = HMATCH( 300ll, 0ll );
					if( vr$25 != 0ll ) goto label$211;
					{
						ERRREPORT( 309ll, -1ll, (uint8*)0ull );
					}
					label$211:;
					label$210:;
				}
				goto label$208;
				label$209:;
				{
					*DTYPE$1 = *(int64*)((uint8*)&ENV$ + 1432ll);
				}
				label$208:;
			}
			goto label$199;
			label$212:;
			{
				LEXSKIPTOKEN( 2048ll );
				int64 vr$27 = HMATCH( 301ll, 0ll );
				if( vr$27 == 0ll ) goto label$214;
				{
					struct $7ASTNODE* vr$28 = CGTINPARENSONLYEXPR(  );
					int64 vr$29 = CCONSTINTEXPR( vr$28, 8ll );
					*LGT$1 = vr$29;
					$11FB_DATATYPE vr$32 = HINTEGERTYPEFROMBITSIZE( *LGT$1, -1ll );
					*DTYPE$1 = vr$32;
					int64 vr$34 = HMATCH( 300ll, 0ll );
					if( vr$34 != 0ll ) goto label$216;
					{
						ERRREPORT( 309ll, -1ll, (uint8*)0ull );
					}
					label$216:;
					label$215:;
				}
				goto label$213;
				label$214:;
				{
					*DTYPE$1 = 9ll;
				}
				label$213:;
			}
			goto label$199;
			label$217:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 11ll;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$218:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 12ll;
				CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
			}
			goto label$199;
			label$219:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 13ll;
			}
			goto label$199;
			label$220:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 14ll;
			}
			goto label$199;
			label$221:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 15ll;
			}
			goto label$199;
			label$222:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 16ll;
			}
			goto label$199;
			label$223:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 17ll;
			}
			goto label$199;
			label$224:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 4ll;
			}
			goto label$199;
			label$225:;
			{
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 7ll;
			}
			goto label$199;
			label$226:;
			{
				int64 vr$45 = LEXGETTOKEN( 0ll );
				ISFUNCTION$1 = (int64)-(vr$45 == 346ll);
				LEXSKIPTOKEN( 2048ll );
				*DTYPE$1 = 54ll;
				PTR_CNT$1 = PTR_CNT$1 + 1ll;
				struct $8FBSYMBOL* vr$49 = CSYMBOLTYPEFUNCPTR( ISFUNCTION$1 );
				*SUBTYPE$1 = vr$49;
				if( *SUBTYPE$1 != (struct $8FBSYMBOL*)0ull ) goto label$228;
				{
					goto label$190;
				}
				label$228:;
				label$227:;
			}
			goto label$199;
			label$200:;
			static const void* tmp$146[28ll] = {
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
			if( (TMP$129$3 - 345ull) > 27ull ) goto label$199;
			goto *tmp$146[TMP$129$3 - 345ull];
			label$199:;
		}
		if( *DTYPE$1 == 2147483648ll ) goto label$230;
		{
			{
				int64 TMP$130$4;
				TMP$130$4 = *DTYPE$1 & 511ll;
				if( TMP$130$4 == 4ll ) goto label$233;
				label$234:;
				if( TMP$130$4 != 7ll ) goto label$232;
				label$233:;
				{
					*LGT$1 = 0ll;
				}
				goto label$231;
				label$232:;
				{
					int64 TMP$131$5;
					if( (*DTYPE$1 & 480ll) == 0ll ) goto label$236;
					TMP$131$5 = 24ll;
					goto label$347;
					label$236:;
					TMP$131$5 = *DTYPE$1 & 31ll;
					label$347:;
					*LGT$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$131$5 * 56ll)) + 8ll);
				}
				label$235:;
				label$231:;
			}
		}
		goto label$229;
		label$230:;
		{
			struct $10FBSYMCHAIN* CHAIN_$3;
			CHAIN_$3 = (struct $10FBSYMCHAIN*)0ull;
			struct $8FBSYMBOL* BASE_PARENT$3;
			int64 CHECK_ID$3;
			CHECK_ID$3 = -1ll;
			if( *(struct $13FB_CMPSTMTSTK**)((uint8*)&PARSER$ + 104ll) == (struct $13FB_CMPSTMTSTK*)0ull ) goto label$238;
			{
				int64 vr$62 = LEXGETTOKEN( 0ll );
				if( vr$62 != 46ll ) goto label$240;
				{
					int64 vr$63 = LEXGETLOOKAHEAD( 1ll, 64ll );
					CHECK_ID$3 = (int64)-(vr$63 == 46ll);
				}
				label$240:;
				label$239:;
			}
			label$238:;
			label$237:;
			if( CHECK_ID$3 == 0ll ) goto label$242;
			{
				int64 TMP$132$4;
				if( (OPTIONS$1 & 8ll) == 0ll ) goto label$243;
				TMP$132$4 = 0ll;
				goto label$348;
				label$243:;
				TMP$132$4 = 50ll;
				label$348:;
				struct $10FBSYMCHAIN* vr$67 = CIDENTIFIER( &BASE_PARENT$3, TMP$132$4 );
				CHAIN_$3 = vr$67;
			}
			label$242:;
			label$241:;
			if( CHAIN_$3 == (struct $10FBSYMCHAIN*)0ull ) goto label$245;
			{
				if( (OPTIONS$1 & 8ll) == 0ll ) goto label$247;
				{
					{
						$12FB_SYMBCLASS TMP$133$6;
						TMP$133$6 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)CHAIN_$3;
						if( TMP$133$6 == 2ll ) goto label$250;
						label$251:;
						if( TMP$133$6 == 1ll ) goto label$250;
						label$252:;
						if( TMP$133$6 != 12ll ) goto label$249;
						label$250:;
						{
							*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) = CHAIN_$3;
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
							$12FB_SYMBCLASS TMP$134$7;
							TMP$134$7 = *($12FB_SYMBCLASS*)SYM$5;
							if( TMP$134$7 != 10ll ) goto label$260;
							label$261:;
							{
								LEXSKIPTOKEN( 2048ll );
								*DTYPE$1 = 20ll;
								*SUBTYPE$1 = SYM$5;
								*LGT$1 = *(int64*)((uint8*)SYM$5 + 80ll);
								CMANGLEMODIFIER( DTYPE$1, SUBTYPE$1 );
								goto label$254;
							}
							goto label$259;
							label$260:;
							if( TMP$134$7 != 9ll ) goto label$262;
							label$263:;
							{
								LEXSKIPTOKEN( 2048ll );
								*DTYPE$1 = 10ll;
								*SUBTYPE$1 = SYM$5;
								*LGT$1 = *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 568ll);
								goto label$254;
							}
							goto label$259;
							label$262:;
							if( TMP$134$7 != 13ll ) goto label$264;
							label$265:;
							{
								int64 vr$80 = SYMBCHECKACCESS( SYM$5 );
								if( vr$80 != 0ll ) goto label$267;
								{
									ERRREPORT( 202ll, 0ll, (uint8*)0ull );
								}
								label$267:;
								label$266:;
								LEXSKIPTOKEN( 2048ll );
								*DTYPE$1 = *(int64*)((uint8*)SYM$5 + 56ll);
								*SUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 64ll);
								*LGT$1 = *(int64*)((uint8*)SYM$5 + 80ll);
								*IS_FIXLENSTR$1 = (int64)-((*(int64*)((uint8*)SYM$5 + 24ll) & 2097152ll) != 0ll);
								PTR_CNT$1 = PTR_CNT$1 + ((*DTYPE$1 & 480ll) >> (5ll & 63ll));
								goto label$254;
							}
							label$264:;
							label$259:;
						}
						SYM$5 = *(struct $8FBSYMBOL**)((uint8*)SYM$5 + 280ll);
					}
					label$258:;
					if( SYM$5 != (struct $8FBSYMBOL*)0ull ) goto label$256;
					label$257:;
					CHAIN_$3 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$3 + 8ll);
				}
				label$255:;
				if( CHAIN_$3 != (struct $10FBSYMCHAIN*)0ull ) goto label$253;
				label$254:;
				if( (OPTIONS$1 & 8ll) == 0ll ) goto label$269;
				{
					if( *DTYPE$1 == 2147483648ll ) goto label$271;
					{
						*(struct $10FBSYMCHAIN**)((uint8*)&PARSER$ + 184ll) = (struct $10FBSYMCHAIN*)0ull;
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
		if( *DTYPE$1 != 2147483648ll ) goto label$273;
		{
			if( ISUNSIGNED$1 == 0ll ) goto label$275;
			{
				ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			}
			label$275:;
			label$274:;
			if( IS_CONST$1 == 0ll ) goto label$277;
			{
				*DTYPE$1 = 512ll;
			}
			label$277:;
			label$276:;
			fb$result$1 = 0ll;
			goto label$190;
		}
		label$273:;
		label$272:;
		if( ISUNSIGNED$1 == 0ll ) goto label$279;
		{
			{
				int64 TMP$135$4;
				uint64 TMP$136$4;
				if( (*DTYPE$1 & 480ll) == 0ll ) goto label$280;
				TMP$135$4 = 24ll;
				goto label$349;
				label$280:;
				TMP$135$4 = *DTYPE$1 & 31ll;
				label$349:;
				TMP$136$4 = (uint64)TMP$135$4;
				goto label$282;
				label$283:;
				{
					if( (*DTYPE$1 & 32505856ll) == 0ll ) goto label$285;
					{
						*DTYPE$1 = 4194307ll;
					}
					goto label$284;
					label$285:;
					{
						*DTYPE$1 = 3ll;
					}
					label$284:;
				}
				goto label$281;
				label$286:;
				{
					*DTYPE$1 = 6ll;
				}
				goto label$281;
				label$287:;
				{
					*DTYPE$1 = 9ll;
				}
				goto label$281;
				label$288:;
				{
					if( (*DTYPE$1 & 32505856ll) == 0ll ) goto label$290;
					{
						*DTYPE$1 = 9437196ll;
					}
					goto label$289;
					label$290:;
					{
						*DTYPE$1 = 12ll;
					}
					label$289:;
				}
				goto label$281;
				label$291:;
				{
					*DTYPE$1 = 14ll;
				}
				goto label$281;
				label$292:;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
				}
				goto label$281;
				label$282:;
				static const void* tmp$147[12ll] = {
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
				if( (TMP$136$4 - 2ull) > 11ull ) goto label$292;
				goto *tmp$147[TMP$136$4 - 2ull];
				label$281:;
			}
		}
		label$279:;
		label$278:;
	}
	label$191:;
	int64 vr$116 = LEXGETTOKEN( 0ll );
	if( vr$116 != 42ll ) goto label$294;
	{
		LEXSKIPTOKEN( 0ll );
		struct $7ASTNODE* vr$117 = CEQINPARENSONLYEXPR(  );
		int64 vr$118 = CCONSTINTEXPR( vr$117, 8ll );
		*LGT$1 = vr$118;
		*IS_FIXLENSTR$1 = -1ll;
		{
			int64 TMP$137$3;
			uint64 TMP$138$3;
			if( (*DTYPE$1 & 480ll) == 0ll ) goto label$295;
			TMP$137$3 = 24ll;
			goto label$350;
			label$295:;
			TMP$137$3 = *DTYPE$1 & 31ll;
			label$350:;
			TMP$138$3 = (uint64)TMP$137$3;
			goto label$297;
			label$298:;
			{
				*LGT$1 = *(int64*)LGT$1 + 1ll;
				if( *(int64*)LGT$1 > 1ll ) goto label$300;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
					*LGT$1 = 2ll;
				}
				label$300:;
				label$299:;
				*DTYPE$1 = 18ll;
			}
			goto label$296;
			label$301:;
			{
				int64 TMP$139$4;
				if( *(int64*)LGT$1 >= 1ll ) goto label$303;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
					*LGT$1 = 1ll;
				}
				label$303:;
				label$302:;
				if( (*DTYPE$1 & 480ll) == 0ll ) goto label$304;
				TMP$139$4 = 24ll;
				goto label$351;
				label$304:;
				TMP$139$4 = *DTYPE$1 & 31ll;
				label$351:;
				if( TMP$139$4 != 7ll ) goto label$306;
				{
					*LGT$1 = *(int64*)LGT$1 * *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll);
				}
				label$306:;
				label$305:;
			}
			goto label$296;
			label$307:;
			{
				ERRREPORT( 17ll, -1ll, (uint8*)0ull );
			}
			goto label$296;
			label$297:;
			static const void* tmp$148[14ll] = {
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
			if( (TMP$138$3 - 4ull) > 13ull ) goto label$307;
			goto *tmp$148[TMP$138$3 - 4ull];
			label$296:;
		}
		if( (OPTIONS$1 & 4ll) == 0ll ) goto label$309;
		{
			ERRREPORT( 324ll, -1ll, (uint8*)0ull );
		}
		label$309:;
		label$308:;
		if( IS_CONST$1 == 0ll ) goto label$311;
		{
			*DTYPE$1 = *DTYPE$1 | 512ll;
		}
		label$311:;
		label$310:;
	}
	goto label$293;
	label$294:;
	{
		if( IS_CONST$1 == 0ll ) goto label$313;
		{
			*DTYPE$1 = *DTYPE$1 | 512ll;
		}
		label$313:;
		label$312:;
		label$314:;
		{
			{
				uint64 TMP$140$4;
				int64 vr$147 = LEXGETTOKEN( 0ll );
				TMP$140$4 = (uint64)vr$147;
				goto label$318;
				label$319:;
				{
					LEXSKIPTOKEN( 2048ll );
					{
						int64 TMP$141$6;
						int64 vr$148 = LEXGETTOKEN( 0ll );
						TMP$141$6 = vr$148;
						if( TMP$141$6 == 373ll ) goto label$322;
						label$323:;
						if( TMP$141$6 != 374ll ) goto label$321;
						label$322:;
						{
							if( PTR_CNT$1 < 8ll ) goto label$325;
							{
								ERRREPORT( 274ll, 0ll, (uint8*)0ull );
							}
							goto label$324;
							label$325:;
							{
								*DTYPE$1 = ((((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll)) | 512ll;
								PTR_CNT$1 = PTR_CNT$1 + 1ll;
							}
							label$324:;
							LEXSKIPTOKEN( 2048ll );
						}
						goto label$320;
						label$321:;
						{
							ERRREPORT( 273ll, 0ll, (uint8*)0ull );
							goto label$315;
						}
						label$326:;
						label$320:;
					}
				}
				goto label$317;
				label$327:;
				{
					if( PTR_CNT$1 < 8ll ) goto label$329;
					{
						ERRREPORT( 274ll, 0ll, (uint8*)0ull );
					}
					goto label$328;
					label$329:;
					{
						*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
						PTR_CNT$1 = PTR_CNT$1 + 1ll;
					}
					label$328:;
					LEXSKIPTOKEN( 2048ll );
				}
				goto label$317;
				label$330:;
				{
					goto label$315;
				}
				goto label$317;
				label$318:;
				static const void* tmp$149[40ll] = {
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
				if( (TMP$140$4 - 335ull) > 39ull ) goto label$330;
				goto *tmp$149[TMP$140$4 - 335ull];
				label$317:;
			}
		}
		label$316:;
		goto label$314;
		label$315:;
	}
	label$293:;
	if( PTR_CNT$1 <= 0ll ) goto label$332;
	{
		int64 TMP$142$2;
		if( (*DTYPE$1 & 480ll) == 0ll ) goto label$333;
		TMP$142$2 = 24ll;
		goto label$352;
		label$333:;
		TMP$142$2 = *DTYPE$1 & 31ll;
		label$352:;
		*LGT$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$142$2 * 56ll)) + 8ll);
	}
	goto label$331;
	label$332:;
	{
		int64 TMP$143$2;
		if( (*DTYPE$1 & 480ll) == 0ll ) goto label$334;
		TMP$143$2 = 24ll;
		goto label$353;
		label$334:;
		TMP$143$2 = *DTYPE$1 & 31ll;
		label$353:;
		if( TMP$143$2 != 23ll ) goto label$336;
		{
			if( (OPTIONS$1 & 2ll) != 0ll ) goto label$338;
			{
				ERRREPORT( 71ll, -1ll, (uint8*)0ull );
				*DTYPE$1 = 32ll;
				*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
			}
			label$338:;
			label$337:;
		}
		goto label$335;
		label$336:;
		if( *(int64*)LGT$1 > 0ll ) goto label$339;
		{
			{
				int64 TMP$144$4;
				TMP$144$4 = *DTYPE$1 & 511ll;
				if( TMP$144$4 == 4ll ) goto label$342;
				label$343:;
				if( TMP$144$4 != 7ll ) goto label$341;
				label$342:;
				{
					int64 TMP$145$5;
					if( (OPTIONS$1 & 1ll) == 0ll ) goto label$345;
					{
						ERRREPORT( 28ll, 0ll, (uint8*)0ull );
						*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
					}
					label$345:;
					label$344:;
					if( (*DTYPE$1 & 480ll) == 0ll ) goto label$346;
					TMP$145$5 = 24ll;
					goto label$354;
					label$346:;
					TMP$145$5 = *DTYPE$1 & 31ll;
					label$354:;
					*LGT$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$145$5 * 56ll)) + 8ll);
				}
				label$341:;
				label$340:;
			}
		}
		label$339:;
		label$335:;
	}
	label$331:;
	fb$result$1 = -1ll;
	label$190:;
	return fb$result$1;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static struct $8FBSYMBOL* CSYMBOLTYPEFUNCPTR( int64 IS_FUNC$1 )
{
	int64 TMP$103$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$52:;
	int64 DTYPE$1;
	int64 MODE$1;
	int64 ATTRIB$1;
	int64 PATTRIB$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	ATTRIB$1 = 0ll;
	PATTRIB$1 = 0ll;
	SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	TMP$103$1 = 0ll;
	$11FB_FUNCMODE vr$2 = CPROCCALLINGCONV( -1ll, &TMP$103$1 );
	MODE$1 = vr$2;
	struct $8FBSYMBOL* vr$3 = SYMBPREADDPROC( (uint8*)0ull );
	PROC$1 = vr$3;
	CPARAMETERS( (struct $8FBSYMBOL*)0ull, PROC$1, MODE$1, -1ll );
	CBYREFATTRIBUTE( ($13FB_PROCATTRIB*)&PATTRIB$1, IS_FUNC$1 );
	int64 vr$5 = LEXGETTOKEN( 0ll );
	if( vr$5 != 376ll ) goto label$55;
	{
		if( IS_FUNC$1 != 0ll ) goto label$57;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			DTYPE$1 = 0ll;
		}
		goto label$56;
		label$57:;
		{
			CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, -1ll, &DTYPE$1, &SUBTYPE$1 );
		}
		label$56:;
	}
	goto label$54;
	label$55:;
	{
		if( IS_FUNC$1 == 0ll ) goto label$59;
		{
			ERRREPORT( 68ll, 0ll, (uint8*)0ull );
			DTYPE$1 = 8ll;
		}
		goto label$58;
		label$59:;
		{
			DTYPE$1 = 0ll;
		}
		label$58:;
	}
	label$54:;
	struct $8FBSYMBOL* vr$8 = SYMBADDPROCPTR( PROC$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1 );
	fb$result$1 = vr$8;
	label$53:;
	return fb$result$1;
}

static FBSTRING* HGETTOKENDESCRIPTION( int64 TK$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$60:;
	{
		if( TK$1 != 377ll ) goto label$63;
		label$64:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"typeof", 7ll, 0 );
		}
		goto label$62;
		label$63:;
		if( TK$1 != 465ll ) goto label$65;
		label$66:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"len", 4ll, 0 );
		}
		goto label$62;
		label$65:;
		{
			fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)"sizeof", 7ll, 0 );
		}
		label$67:;
		label$62:;
	}
	label$61:;
	FBSTRING* vr$5 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$5;
}

static int64 CMANGLEMODIFIER( int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$145:;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 386ll ) goto label$148;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$2 = LEXGETCLASS( 0ll );
		if( vr$2 != 4ll ) goto label$150;
		{
			{
				FBSTRING TMP$119$4;
				uint8* vr$3 = LEXGETTEXT(  );
				FBSTRING* vr$4 = fb_StrAllocTempDescZ( (uint8*)vr$3 );
				FBSTRING* vr$5 = fb_StrLcase2( (FBSTRING*)vr$4, 0 );
				fb_StrInit( (void*)&TMP$119$4, -1ll, (void*)vr$5, -1ll, 0 );
				int32 vr$8 = fb_StrCompare( (void*)&TMP$119$4, -1ll, (void*)"long", 5ll );
				if( (int64)vr$8 != 0ll ) goto label$152;
				label$153:;
				{
					int64 vr$10 = FBIS64BIT(  );
					if( (vr$10 & (int64)-((*(int64*)((uint8*)&ENV$ + 568ll) & 1ll) == 0ll)) == 0ll ) goto label$155;
					{
						{
							int64 TMP$121$7;
							TMP$121$7 = *DTYPE$1;
							if( TMP$121$7 != 11ll ) goto label$157;
							label$158:;
							{
								*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 8388608ll;
								fb$result$1 = -1ll;
							}
							goto label$156;
							label$157:;
							if( TMP$121$7 != 12ll ) goto label$159;
							label$160:;
							{
								*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 9437184ll;
								fb$result$1 = -1ll;
							}
							goto label$156;
							label$159:;
							{
								ERRREPORT( 17ll, 0ll, (uint8*)0ull );
							}
							label$161:;
							label$156:;
						}
					}
					goto label$154;
					label$155:;
					{
						{
							int64 TMP$122$7;
							TMP$122$7 = *DTYPE$1;
							if( TMP$122$7 != 11ll ) goto label$163;
							label$164:;
							{
							}
							goto label$162;
							label$163:;
							if( TMP$122$7 != 12ll ) goto label$165;
							label$166:;
							{
							}
							goto label$162;
							label$165:;
							{
								ERRREPORT( 17ll, 0ll, (uint8*)0ull );
							}
							label$167:;
							label$162:;
						}
					}
					label$154:;
				}
				goto label$151;
				label$152:;
				int32 vr$25 = fb_StrCompare( (void*)&TMP$119$4, -1ll, (void*)"char", 5ll );
				if( (int64)vr$25 != 0ll ) goto label$168;
				label$169:;
				{
					{
						int64 TMP$124$6;
						TMP$124$6 = *DTYPE$1;
						if( TMP$124$6 != 0ll ) goto label$171;
						label$172:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 4194304ll;
						}
						goto label$170;
						label$171:;
						if( TMP$124$6 == 2ll ) goto label$174;
						label$175:;
						if( TMP$124$6 != 3ll ) goto label$173;
						label$174:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 4194304ll;
						}
						goto label$170;
						label$173:;
						{
							ERRREPORT( 17ll, 0ll, (uint8*)0ull );
						}
						label$176:;
						label$170:;
					}
				}
				goto label$151;
				label$168:;
				int32 vr$37 = fb_StrCompare( (void*)&TMP$119$4, -1ll, (void*)"__builtin_va_list", 18ll );
				if( (int64)vr$37 == 0ll ) goto label$178;
				label$179:;
				int32 vr$40 = fb_StrCompare( (void*)&TMP$119$4, -1ll, (void*)"__builtin_va_list[]", 20ll );
				if( (int64)vr$40 != 0ll ) goto label$177;
				label$178:;
				{
					{
						int64 TMP$127$6;
						TMP$127$6 = *DTYPE$1;
						if( TMP$127$6 != 0ll ) goto label$181;
						label$182:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 19922944ll;
						}
						goto label$180;
						label$181:;
						if( TMP$127$6 != 20ll ) goto label$183;
						label$184:;
						{
							*DTYPE$1 = (*DTYPE$1 & -32505857ll) | 19922944ll;
							$19FB_CVA_LIST_TYPEDEF vr$54 = FBGETBACKENDVALISTTYPE(  );
							*(int32*)((uint8*)*SUBTYPE$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)*SUBTYPE$1 + 208ll) | ((vr$54 << (20ll & 63ll)) & 15728640ll));
						}
						goto label$180;
						label$183:;
						{
							ERRREPORT( 17ll, 0ll, (uint8*)0ull );
						}
						label$185:;
						label$180:;
					}
				}
				goto label$151;
				label$177:;
				int32 vr$62 = fb_StrCompare( (void*)&TMP$119$4, -1ll, (void*)"", 1ll );
				if( (int64)vr$62 != 0ll ) goto label$186;
				label$187:;
				{
					ERRREPORT( 304ll, 0ll, (uint8*)0ull );
				}
				goto label$151;
				label$186:;
				{
					ERRREPORT( 17ll, 0ll, (uint8*)0ull );
				}
				label$188:;
				label$151:;
				fb_StrDelete( (FBSTRING*)&TMP$119$4 );
			}
			LEXSKIPTOKEN( 0ll );
		}
		goto label$149;
		label$150:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$149:;
	}
	label$148:;
	label$147:;
	label$146:;
	return fb$result$1;
}
