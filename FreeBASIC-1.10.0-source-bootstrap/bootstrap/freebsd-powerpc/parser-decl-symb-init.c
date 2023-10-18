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
typedef int32 $9FB_INIOPT;
struct $10FB_INITCTX;
struct $10FB_INITCTX {
	struct $8FBSYMBOL* SYM;
	int32 DTYPE;
	struct $8FBSYMBOL* SUBTYPE;
	int32 DIMENSION;
	struct $7ASTNODE* TREE;
	$9FB_INIOPT OPTIONS;
	struct $7ASTNODE* INIT_EXPR;
	int32 REC_CNT;
	struct $10FB_INITCTX* LAST_CTX;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_INITCTX ) == 36 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $9FB_ERRMSG;
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
static void fb_ctor__parserzdeclzsymbzinit( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void ERRREPORT( int32, int32, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
typedef int32 $11AST_CONVOPT;
struct $7ASTNODE* ASTNEWCONV( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, $11AST_CONVOPT, int32* );
struct $7ASTNODE* ASTNEWCONSTI( int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWCONSTZ( int32, struct $8FBSYMBOL* );
int32 ASTCHECKASSIGNTOTYPE( int32, struct $8FBSYMBOL*, struct $7ASTNODE*, int32 );
struct $7ASTNODE* ASTTYPEINIBEGIN( int32, struct $8FBSYMBOL*, int32, int64 );
void ASTTYPEINIEND( struct $7ASTNODE*, int32 );
void ASTTYPEINIREMOVELASTNODE( struct $7ASTNODE* );
struct $7ASTNODE* ASTTYPEINIADDPAD( struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTTYPEINIADDASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, int32, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINIADDCTORCALL( struct $7ASTNODE*, struct $8FBSYMBOL*, struct $7ASTNODE*, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTTYPEINIADDCTORLIST( struct $7ASTNODE*, struct $8FBSYMBOL*, int64, int32, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTTYPEINISCOPEBEGIN( struct $7ASTNODE*, struct $8FBSYMBOL*, int32 );
struct $7ASTNODE* ASTTYPEINISCOPEEND( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTBUILDIMPLICITCTORCALLEX( struct $8FBSYMBOL*, struct $7ASTNODE*, $12FB_PARAMMODE, int32* );
void SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS( struct $8FBSYMBOL*, int32, int64 );
void SYMBMAYBEADDARRAYDESC( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int64 SYMBGETREALSIZE( struct $8FBSYMBOL* );
int64 SYMBCALCARRAYELEMENTS( struct $8FBSYMBOL*, int32 );
int32 SYMBCHECKARRAYSIZE( int32, struct $10FBARRAYDIM*, int64, int32 );
int32 SYMBHASCTOR( struct $8FBSYMBOL* );
int32 TYPEHASCTOR( int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDEFCTOR( struct $8FBSYMBOL* );
int32 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTINITABLEFIELD( struct $8FBSYMBOL* );
typedef int32 $8LEXCHECK;
int32 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int32 LEXGETLOOKAHEAD( int32, $8LEXCHECK );
int32 HMATCH( int32, $8LEXCHECK );
struct $7ASTNODE* CEXPRESSION( void );
$12FB_PARAMMODE CBYDESCARRAYARGPARENS( struct $7ASTNODE* );
void HSKIPUNTIL( int32, int32, $8LEXCHECK, int32 );
static int32 HUDTINIT( struct $10FB_INITCTX* );
static void HUPDATECONTEXTDTYPE( struct $10FB_INITCTX*, int32, struct $8FBSYMBOL* );
static int32 HDOASSIGN( struct $10FB_INITCTX*, struct $7ASTNODE*, int32 );
static int32 HELMINIT( struct $10FB_INITCTX*, int32 );
static int32 HARRAYINIT( struct $10FB_INITCTX*, int32 );
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
static struct $10FB_INITCTX* TOP_CTX$ = (struct $10FB_INITCTX*)0u;

struct $7ASTNODE* CINITIALIZER( struct $8FBSYMBOL* SYM$1, $9FB_INIOPT OPTIONS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	struct $7ASTNODE* TMP$94$1;
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$156:;
	int32 IS_LOCAL$1;
	int32 OK$1;
	struct $10FB_INITCTX CTX$1;
	fb$result$1 = (struct $7ASTNODE*)0u;
	if( (-((*(int32*)((uint8*)SYM$1 + 4) & 16388) != 0) | -((*(int32*)((uint8*)SYM$1 + 4) & 8) != 0)) == 0 ) goto label$159;
	{
		ERRREPORT( 75, -1, (uint8*)0u );
		goto label$157;
	}
	label$159:;
	label$158:;
	if( *(int32*)SYM$1 != 1 ) goto label$161;
	{
		IS_LOCAL$1 = -((*(int32*)((uint8*)SYM$1 + 4) & 128) != 0);
	}
	goto label$160;
	label$161:;
	{
		IS_LOCAL$1 = 0;
	}
	label$160:;
	*(struct $10FB_INITCTX**)((uint8*)&CTX$1 + 32) = TOP_CTX$;
	TOP_CTX$ = &CTX$1;
	*($9FB_INIOPT*)((uint8*)&CTX$1 + 20) = OPTIONS$1;
	*(struct $8FBSYMBOL**)&CTX$1 = SYM$1;
	*(int32*)((uint8*)&CTX$1 + 12) = -1;
	*(struct $7ASTNODE**)((uint8*)&CTX$1 + 24) = (struct $7ASTNODE*)0u;
	*(int32*)((uint8*)&CTX$1 + 28) = 0;
	HUPDATECONTEXTDTYPE( &CTX$1, DTYPE$1, SUBTYPE$1 );
	struct $7ASTNODE* vr$15 = ASTTYPEINIBEGIN( *(int32*)((uint8*)&CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)&CTX$1 + 8), IS_LOCAL$1, *(int64*)((uint8*)SYM$1 + 48) );
	*(struct $7ASTNODE**)((uint8*)&CTX$1 + 16) = vr$15;
	int32 vr$16 = TYPEHASCTOR( *(int32*)((uint8*)&CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)&CTX$1 + 8) );
	if( vr$16 == 0 ) goto label$163;
	{
		*($9FB_INIOPT*)((uint8*)&CTX$1 + 20) = *(int32*)((uint8*)&CTX$1 + 20) | 2;
	}
	label$163:;
	label$162:;
	if( (-(*(int32*)*(struct $8FBSYMBOL**)&CTX$1 == 1) | -(*(int32*)*(struct $8FBSYMBOL**)&CTX$1 == 12)) == 0 ) goto label$165;
	{
		int32 vr$24 = HARRAYINIT( &CTX$1, 0 );
		OK$1 = vr$24;
	}
	goto label$164;
	label$165:;
	{
		if( (*(int32*)((uint8*)&CTX$1 + 4) & 511) != 20 ) goto label$167;
		{
			int32 vr$27 = HUDTINIT( &CTX$1 );
			OK$1 = vr$27;
		}
		goto label$166;
		label$167:;
		{
			int32 vr$29 = HELMINIT( &CTX$1, 0 );
			OK$1 = vr$29;
		}
		label$166:;
	}
	label$164:;
	TOP_CTX$ = *(struct $10FB_INITCTX**)((uint8*)&CTX$1 + 32);
	ASTTYPEINIEND( *(struct $7ASTNODE**)((uint8*)&CTX$1 + 16), -((OPTIONS$1 & 1) != 0) );
	if( OK$1 == 0 ) goto label$168;
	TMP$94$1 = *(struct $7ASTNODE**)((uint8*)&CTX$1 + 16);
	goto label$169;
	label$168:;
	TMP$94$1 = (struct $7ASTNODE*)0u;
	label$169:;
	fb$result$1 = TMP$94$1;
	label$157:;
	return fb$result$1;
}

__attribute__(( constructor )) static void fb_ctor__parserzdeclzsymbzinit( void )
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

static void HUPDATECONTEXTDTYPE( struct $10FB_INITCTX* CTX$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$10:;
	if( DTYPE$1 != -2147483648u ) goto label$13;
	{
		*(int32*)((uint8*)CTX$1 + 4) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 28);
		*(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 32);
	}
	goto label$12;
	label$13:;
	{
		*(int32*)((uint8*)CTX$1 + 4) = DTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) = SUBTYPE$1;
	}
	label$12:;
	label$11:;
}

static int32 HDOASSIGN( struct $10FB_INITCTX* CTX$1, struct $7ASTNODE* EXPR$1, int32 NO_FAKE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$14:;
	int32 NO_UPCAST$1;
	int32 CHECK_UPCAST$1;
	CHECK_UPCAST$1 = 0;
	NO_UPCAST$1 = -((*(int32*)((uint8*)CTX$1 + 20) & 4) != 0);
	*(struct $7ASTNODE**)((uint8*)CTX$1 + 24) = EXPR$1;
	int32 vr$7 = ASTCHECKASSIGNTOTYPE( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8), EXPR$1, NO_UPCAST$1 );
	if( vr$7 != 0 ) goto label$17;
	{
		struct $7ASTNODE* vr$10 = ASTNEWCONV( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8), EXPR$1, 128, (int32*)0u );
		EXPR$1 = vr$10;
		if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$19;
		{
			if( NO_FAKE$1 == 0 ) goto label$21;
			{
				goto label$15;
			}
			label$21:;
			label$20:;
			ERRREPORT( 24, -1, (uint8*)0u );
			ASTDELTREE( EXPR$1 );
			struct $7ASTNODE* vr$13 = ASTNEWCONSTZ( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
			EXPR$1 = vr$13;
		}
		label$19:;
		label$18:;
	}
	goto label$16;
	label$17:;
	{
		CHECK_UPCAST$1 = -1;
	}
	label$16:;
	ASTTYPEINIADDASSIGN( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), EXPR$1, *(struct $8FBSYMBOL**)CTX$1, *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8), CHECK_UPCAST$1 );
	fb$result$1 = -1;
	label$15:;
	return fb$result$1;
}

static int32 HELMINIT( struct $10FB_INITCTX* CTX$1, int32 NO_FAKE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$22:;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* OLDSYM$1;
	int32 OLD_DTYPE$1;
	fb$result$1 = 0;
	OLDSYM$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160);
	OLD_DTYPE$1 = *(int32*)((uint8*)&PARSER$ + 156);
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = *(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 32);
	*(int32*)((uint8*)&PARSER$ + 156) = *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 28) & 511;
	struct $7ASTNODE* vr$6 = CEXPRESSION(  );
	EXPR$1 = vr$6;
	if( EXPR$1 != (struct $7ASTNODE*)0u ) goto label$25;
	{
		ERRREPORT( 9, 0, (uint8*)0u );
		HSKIPUNTIL( 44, 0, 0, 0 );
		struct $7ASTNODE* vr$9 = ASTNEWCONSTZ( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
		EXPR$1 = vr$9;
	}
	label$25:;
	label$24:;
	*(struct $7ASTNODE**)((uint8*)CTX$1 + 24) = EXPR$1;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = OLDSYM$1;
	*(int32*)((uint8*)&PARSER$ + 156) = OLD_DTYPE$1;
	int32 vr$11 = HDOASSIGN( CTX$1, EXPR$1, NO_FAKE$1 );
	fb$result$1 = vr$11;
	label$23:;
	return fb$result$1;
}

static int32 HARRAYINIT( struct $10FB_INITCTX* CTX$1, int32 NO_FAKE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$26:;
	int32 ELM_CNT$1;
	int64 ELEMENTS$1;
	int32 ISARRAY$1;
	fb$result$1 = 0;
	ISARRAY$1 = 0;
	int32 vr$1 = LEXGETTOKEN( 0 );
	if( vr$1 != 123 ) goto label$29;
	{
		LEXSKIPTOKEN( 0 );
		*(int32*)((uint8*)CTX$1 + 12) = *(int32*)((uint8*)CTX$1 + 12) + 1;
		ISARRAY$1 = -1;
		if( *(int32*)((uint8*)CTX$1 + 12) < *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 64) ) goto label$31;
		{
			$9FB_ERRMSG TMP$92$3;
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 64) <= 0 ) goto label$32;
			TMP$92$3 = 67;
			goto label$170;
			label$32:;
			TMP$92$3 = 63;
			label$170:;
			ERRREPORT( TMP$92$3, 0, (uint8*)0u );
			HSKIPUNTIL( 125, -1, 0, 0 );
			*(int32*)((uint8*)CTX$1 + 12) = *(int32*)((uint8*)CTX$1 + 12) + -1;
			goto label$27;
		}
		label$31:;
		label$30:;
	}
	goto label$28;
	label$29:;
	{
		if( *(int32*)((uint8*)CTX$1 + 12) >= (*(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 64) + -1) ) goto label$34;
		{
			ERRREPORT( 64, 0, (uint8*)0u );
			*(int32*)((uint8*)CTX$1 + 12) = *(int32*)((uint8*)CTX$1 + 12) + 1;
			ISARRAY$1 = -1;
		}
		label$34:;
		label$33:;
	}
	label$28:;
	if( ISARRAY$1 == 0 ) goto label$36;
	{
		ASTTYPEINISCOPEBEGIN( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1, -1 );
	}
	label$36:;
	label$35:;
	if( *(int32*)((uint8*)CTX$1 + 12) < 0 ) goto label$38;
	{
		if( *(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 68) + (*(int32*)((uint8*)CTX$1 + 12) << (4 & 31))) + 8) != -9223372036854775808ull ) goto label$40;
		{
			ELEMENTS$1 = -1ll;
		}
		goto label$39;
		label$40:;
		{
			ELEMENTS$1 = (*(int64*)((uint8*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 68) + (*(int32*)((uint8*)CTX$1 + 12) << (4 & 31))) + 8) - *(int64*)((uint8*)*(struct $10FBARRAYDIM**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 68) + (*(int32*)((uint8*)CTX$1 + 12) << (4 & 31)))) + 1ll;
		}
		label$39:;
	}
	goto label$37;
	label$38:;
	{
		ELEMENTS$1 = 1ll;
	}
	label$37:;
	ELM_CNT$1 = 0;
	label$41:;
	{
		if( *(int32*)((uint8*)CTX$1 + 12) >= (*(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 64) + -1) ) goto label$45;
		{
			int32 vr$44 = HARRAYINIT( CTX$1, 0 );
			if( vr$44 != 0 ) goto label$47;
			{
				goto label$27;
			}
			label$47:;
			label$46:;
		}
		goto label$44;
		label$45:;
		{
			if( (*(int32*)((uint8*)CTX$1 + 4) & 511) != 20 ) goto label$49;
			{
				if( ISARRAY$1 == 0 ) goto label$51;
				{
					$9FB_INIOPT OPTIONS$5;
					OPTIONS$5 = *($9FB_INIOPT*)((uint8*)CTX$1 + 20);
					*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = *(int32*)((uint8*)CTX$1 + 20) & -5;
					int32 OK$5;
					int32 vr$51 = HUDTINIT( CTX$1 );
					OK$5 = vr$51;
					*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = OPTIONS$5;
					if( OK$5 != 0 ) goto label$53;
					{
						goto label$27;
					}
					label$53:;
					label$52:;
				}
				goto label$50;
				label$51:;
				{
					int32 vr$53 = HUDTINIT( CTX$1 );
					if( vr$53 != 0 ) goto label$55;
					{
						goto label$27;
					}
					label$55:;
					label$54:;
				}
				label$50:;
			}
			goto label$48;
			label$49:;
			{
				int32 vr$54 = HELMINIT( CTX$1, NO_FAKE$1 );
				if( vr$54 != 0 ) goto label$57;
				{
					goto label$27;
				}
				label$57:;
				label$56:;
			}
			label$48:;
		}
		label$44:;
		ELM_CNT$1 = ELM_CNT$1 + 1;
		if( (-((int64)ELM_CNT$1 >= ELEMENTS$1) & -(ELEMENTS$1 != -1ll)) == 0 ) goto label$59;
		{
			goto label$42;
		}
		label$59:;
		label$58:;
	}
	label$43:;
	int32 vr$60 = HMATCH( 44, 0 );
	if( vr$60 != 0 ) goto label$41;
	label$42:;
	if( ELEMENTS$1 != -1ll ) goto label$61;
	{
		ELEMENTS$1 = (int64)ELM_CNT$1;
		SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS( *(struct $8FBSYMBOL**)CTX$1, *(int32*)((uint8*)CTX$1 + 12), ELEMENTS$1 );
		SYMBMAYBEADDARRAYDESC( *(struct $8FBSYMBOL**)CTX$1 );
		int32 vr$75 = SYMBCHECKARRAYSIZE( *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 64), *(struct $10FBARRAYDIM**)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 68), *(int64*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 40), -((*(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 4) & 3) == 0) );
		if( vr$75 != 0 ) goto label$63;
		{
			ERRREPORT( 50, 0, (uint8*)0u );
			SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS( *(struct $8FBSYMBOL**)CTX$1, *(int32*)((uint8*)CTX$1 + 12), 1ll );
		}
		label$63:;
		label$62:;
	}
	label$61:;
	label$60:;
	ELEMENTS$1 = ELEMENTS$1 - (int64)ELM_CNT$1;
	if( ELEMENTS$1 <= 0ll ) goto label$65;
	{
		int64 vr$83 = SYMBCALCARRAYELEMENTS( *(struct $8FBSYMBOL**)CTX$1, *(int32*)((uint8*)CTX$1 + 12) + 1 );
		ELEMENTS$1 = ELEMENTS$1 * vr$83;
		struct $8FBSYMBOL* CTOR$2;
		CTOR$2 = (struct $8FBSYMBOL*)0u;
		if( (*(int32*)((uint8*)CTX$1 + 20) & 2) == 0 ) goto label$67;
		{
			struct $8FBSYMBOL* vr$88 = SYMBGETCOMPDEFCTOR( *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
			CTOR$2 = vr$88;
			if( CTOR$2 != (struct $8FBSYMBOL*)0u ) goto label$69;
			{
				ERRREPORT( 183, 0, (uint8*)0u );
			}
			goto label$68;
			label$69:;
			{
				int32 vr$89 = SYMBCHECKACCESS( CTOR$2 );
				if( vr$89 != 0 ) goto label$71;
				{
					ERRREPORT( 204, 0, (uint8*)0u );
				}
				label$71:;
				label$70:;
			}
			label$68:;
		}
		label$67:;
		label$66:;
		if( CTOR$2 == (struct $8FBSYMBOL*)0u ) goto label$73;
		{
			ASTTYPEINIADDCTORLIST( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1, ELEMENTS$1, *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
		}
		goto label$72;
		label$73:;
		{
			int64 PAD_LGT$3;
			if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 4) & 262144) == 0 ) goto label$75;
			{
				PAD_LGT$3 = (int64)*(int32*)((uint8*)&ENV$ + 296);
			}
			goto label$74;
			label$75:;
			{
				{
					uint32 TMP$93$5;
					TMP$93$5 = (uint32)(*(int32*)((uint8*)CTX$1 + 4) & 511);
					goto label$77;
					label$78:;
					{
						PAD_LGT$3 = *(int64*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 40);
					}
					goto label$76;
					label$79:;
					{
						int64 vr$104 = SYMBCALCLEN( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
						PAD_LGT$3 = vr$104;
					}
					goto label$76;
					label$77:;
					static const void* tmp$95[15] = {
						&&label$78,
						&&label$79,
						&&label$79,
						&&label$78,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$79,
						&&label$78,
					};
					if( (TMP$93$5 - 4u) > 14u ) goto label$79;
					goto *tmp$95[TMP$93$5 - 4u];
					label$76:;
				}
			}
			label$74:;
			PAD_LGT$3 = PAD_LGT$3 * ELEMENTS$1;
			ASTTYPEINIADDPAD( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), PAD_LGT$3 );
			*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 24) = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 24) + PAD_LGT$3;
		}
		label$72:;
	}
	label$65:;
	label$64:;
	if( ISARRAY$1 == 0 ) goto label$81;
	{
		ASTTYPEINISCOPEEND( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1 );
		int32 vr$114 = LEXGETTOKEN( 0 );
		if( vr$114 == 125 ) goto label$83;
		{
			ERRREPORT( 65, 0, (uint8*)0u );
			HSKIPUNTIL( 125, -1, 0, 0 );
		}
		goto label$82;
		label$83:;
		{
			LEXSKIPTOKEN( 0 );
		}
		label$82:;
		*(int32*)((uint8*)CTX$1 + 12) = *(int32*)((uint8*)CTX$1 + 12) + -1;
	}
	label$81:;
	label$80:;
	fb$result$1 = -1;
	label$27:;
	return fb$result$1;
}

static int32 HUDTINIT( struct $10FB_INITCTX* CTX$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$84:;
	int32 ELM_CNT$1;
	int64 LGT$1;
	int64 BASEOFS$1;
	int64 PAD_LGT$1;
	struct $8FBSYMBOL* FLD$1;
	struct $8FBSYMBOL* FIRST$1;
	struct $8FBSYMBOL* OLDSUBTYPE$1;
	int32 OLDDTYPE$1;
	struct $10FB_INITCTX OLD_CTX$1;
	fb$result$1 = 0;
	if( (*(int32*)((uint8*)CTX$1 + 20) & 2) == 0 ) goto label$87;
	{
		struct $7ASTNODE* EXPR$2;
		OLDSUBTYPE$1 = *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160);
		OLDDTYPE$1 = *(int32*)((uint8*)&PARSER$ + 156);
		*(int32*)((uint8*)&PARSER$ + 156) = *(int32*)((uint8*)CTX$1 + 4);
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8);
		struct $7ASTNODE* vr$5 = CEXPRESSION(  );
		EXPR$2 = vr$5;
		*(int32*)((uint8*)&PARSER$ + 156) = OLDDTYPE$1;
		*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 160) = OLDSUBTYPE$1;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$89;
		{
			ERRREPORT( 9, 0, (uint8*)0u );
			struct $7ASTNODE* vr$6 = ASTNEWCONSTI( 0ll, 8, (struct $8FBSYMBOL*)0u );
			EXPR$2 = vr$6;
		}
		label$89:;
		label$88:;
		if( *(int32*)*(struct $8FBSYMBOL**)CTX$1 != 4 ) goto label$91;
		{
			if( *(int32*)((uint8*)*(struct $8FBSYMBOL**)CTX$1 + 56) != 2 ) goto label$93;
			{
				if( (-((*(int32*)((uint8*)EXPR$2 + 4) & 511) == (*(int32*)((uint8*)CTX$1 + 4) & 511)) & -(*(struct $8FBSYMBOL**)((uint8*)EXPR$2 + 8) == *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8))) == 0 ) goto label$95;
				{
					int32 vr$20 = HDOASSIGN( CTX$1, EXPR$2, 0 );
					fb$result$1 = vr$20;
					goto label$85;
				}
				label$95:;
				label$94:;
			}
			label$93:;
			label$92:;
		}
		label$91:;
		label$90:;
		int32 IS_CTORCALL$2;
		$12FB_PARAMMODE vr$22 = CBYDESCARRAYARGPARENS( EXPR$2 );
		struct $7ASTNODE* vr$24 = ASTBUILDIMPLICITCTORCALLEX( *(struct $8FBSYMBOL**)CTX$1, EXPR$2, vr$22, &IS_CTORCALL$2 );
		EXPR$2 = vr$24;
		if( EXPR$2 != (struct $7ASTNODE*)0u ) goto label$97;
		{
			goto label$85;
		}
		label$97:;
		label$96:;
		if( IS_CTORCALL$2 == 0 ) goto label$99;
		{
			struct $7ASTNODE* vr$29 = ASTTYPEINIADDCTORCALL( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1, EXPR$2, *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
			fb$result$1 = -(vr$29 != (struct $7ASTNODE*)0u);
			goto label$85;
		}
		label$99:;
		label$98:;
		int32 vr$31 = HDOASSIGN( CTX$1, EXPR$2, 0 );
		fb$result$1 = vr$31;
		goto label$85;
	}
	label$87:;
	label$86:;
	int32 PARENTH$1;
	PARENTH$1 = -1;
	int32 COMMA$1;
	COMMA$1 = 0;
	int32 vr$32 = LEXGETTOKEN( 0 );
	if( vr$32 == 40 ) goto label$101;
	{
		if( *(int32*)((uint8*)CTX$1 + 28) != 0 ) goto label$103;
		{
			int32 vr$34 = HELMINIT( CTX$1, 0 );
			fb$result$1 = vr$34;
			goto label$85;
		}
		label$103:;
		label$102:;
		int32 vr$35 = LEXGETLOOKAHEAD( 1, 0 );
		COMMA$1 = -(vr$35 == 44);
		PARENTH$1 = 0;
	}
	goto label$100;
	label$101:;
	{
		ASTTYPEINISCOPEBEGIN( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1, 0 );
		LEXSKIPTOKEN( 0 );
	}
	label$100:;
	struct $8FBSYMBOL* vr$40 = SYMBUDTGETFIRSTFIELD( *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
	FIRST$1 = vr$40;
	FLD$1 = FIRST$1;
	LGT$1 = 0ll;
	BASEOFS$1 = *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 24);
	__builtin_memcpy( &OLD_CTX$1, CTX$1, 36 );
	*(int32*)((uint8*)CTX$1 + 12) = -1;
	*(int32*)((uint8*)CTX$1 + 28) = *(int32*)((uint8*)CTX$1 + 28) + 1;
	label$104:;
	{
		if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$108;
		{
			ERRREPORT( 67, 0, (uint8*)0u );
			goto label$105;
		}
		label$108:;
		label$107:;
		if( LGT$1 <= 0ll ) goto label$110;
		{
			PAD_LGT$1 = *(int64*)((uint8*)FLD$1 + 48) - LGT$1;
			if( PAD_LGT$1 <= 0ll ) goto label$112;
			{
				ASTTYPEINIADDPAD( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), PAD_LGT$1 );
				LGT$1 = LGT$1 + PAD_LGT$1;
			}
			label$112:;
			label$111:;
		}
		label$110:;
		label$109:;
		*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 24) = BASEOFS$1 + *(int64*)((uint8*)FLD$1 + 48);
		int32 vr$56 = SYMBCHECKACCESS( FLD$1 );
		if( vr$56 != 0 ) goto label$114;
		{
			ERRREPORT( 202, 0, (uint8*)0u );
		}
		label$114:;
		label$113:;
		*(struct $8FBSYMBOL**)CTX$1 = FLD$1;
		HUPDATECONTEXTDTYPE( CTX$1, -2147483648u, (struct $8FBSYMBOL*)0u );
		*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = *(int32*)((uint8*)CTX$1 + 20) & -3;
		int32 vr$61 = SYMBHASCTOR( FLD$1 );
		if( vr$61 == 0 ) goto label$116;
		{
			*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = *(int32*)((uint8*)CTX$1 + 20) | 2;
		}
		label$116:;
		label$115:;
		int32 OK$2;
		OK$2 = 0;
		if( (*(int32*)((uint8*)CTX$1 + 20) & 4) != 0 ) goto label$118;
		{
			*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = *(int32*)((uint8*)CTX$1 + 20) | 4;
			int32 vr$70 = HARRAYINIT( CTX$1, -1 );
			OK$2 = vr$70;
			*($9FB_INIOPT*)((uint8*)CTX$1 + 20) = *(int32*)((uint8*)CTX$1 + 20) & -5;
		}
		goto label$117;
		label$118:;
		{
			int32 vr$74 = HARRAYINIT( CTX$1, -1 );
			OK$2 = vr$74;
		}
		label$117:;
		if( OK$2 != 0 ) goto label$120;
		{
			if( (-(FLD$1 != FIRST$1) | -(*(struct $7ASTNODE**)((uint8*)CTX$1 + 24) == (struct $7ASTNODE*)0u)) == 0 ) goto label$122;
			{
				ERRREPORT( 24, -1, (uint8*)0u );
				goto label$85;
			}
			label$122:;
			label$121:;
			int32 IS_CTORCALL$3;
			struct $7ASTNODE* EXPR$3;
			EXPR$3 = *(struct $7ASTNODE**)((uint8*)CTX$1 + 24);
			__builtin_memcpy( CTX$1, &OLD_CTX$1, 36 );
			struct $7ASTNODE* vr$83 = ASTBUILDIMPLICITCTORCALLEX( *(struct $8FBSYMBOL**)CTX$1, EXPR$3, -1, &IS_CTORCALL$3 );
			EXPR$3 = vr$83;
			if( EXPR$3 != (struct $7ASTNODE*)0u ) goto label$124;
			{
				goto label$85;
			}
			label$124:;
			label$123:;
			if( PARENTH$1 == 0 ) goto label$126;
			{
				int32 vr$84 = LEXGETTOKEN( 0 );
				if( vr$84 == 41 ) goto label$128;
				{
					ERRREPORT( 7, 0, (uint8*)0u );
					HSKIPUNTIL( 41, -1, 0, 0 );
				}
				goto label$127;
				label$128:;
				{
					LEXSKIPTOKEN( 0 );
					ASTTYPEINIREMOVELASTNODE( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16) );
				}
				label$127:;
			}
			label$126:;
			label$125:;
			if( IS_CTORCALL$3 == 0 ) goto label$130;
			{
				struct $7ASTNODE* vr$90 = ASTTYPEINIADDCTORCALL( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1, EXPR$3, *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
				fb$result$1 = -(vr$90 != (struct $7ASTNODE*)0u);
				goto label$85;
			}
			label$130:;
			label$129:;
			int32 vr$92 = HDOASSIGN( CTX$1, EXPR$3, -1 );
			fb$result$1 = vr$92;
			goto label$85;
		}
		label$120:;
		label$119:;
		if( *(int32*)((uint8*)FLD$1 + 116) <= 0 ) goto label$132;
		{
			int64 vr$94 = SYMBGETREALSIZE( FLD$1 );
			LGT$1 = LGT$1 + vr$94;
			struct $8FBSYMBOL* vr$96 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
			FLD$1 = vr$96;
		}
		goto label$131;
		label$132:;
		{
			label$133:;
			{
				int64 vr$97 = SYMBGETREALSIZE( FLD$1 );
				LGT$1 = LGT$1 + vr$97;
				struct $8FBSYMBOL* vr$99 = SYMBUDTGETNEXTINITABLEFIELD( FLD$1 );
				FLD$1 = vr$99;
				if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$137;
				{
					goto label$134;
				}
				label$137:;
				label$136:;
				if( (BASEOFS$1 + *(int64*)((uint8*)FLD$1 + 48)) < *(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 32) ) goto label$139;
				{
					goto label$134;
				}
				label$139:;
				label$138:;
			}
			label$135:;
			goto label$133;
			label$134:;
		}
		label$131:;
		if( *(int32*)((uint8*)CTX$1 + 28) <= 1 ) goto label$141;
		{
			if( FLD$1 != (struct $8FBSYMBOL*)0u ) goto label$143;
			{
				int32 vr$105 = LEXGETTOKEN( 0 );
				if( vr$105 != 44 ) goto label$145;
				{
					goto label$105;
				}
				label$145:;
				label$144:;
				if( COMMA$1 == 0 ) goto label$147;
				{
					goto label$105;
				}
				label$147:;
				label$146:;
			}
			label$143:;
			label$142:;
		}
		label$141:;
		label$140:;
		int32 vr$106 = HMATCH( 44, 0 );
		if( vr$106 != 0 ) goto label$149;
		{
			goto label$105;
		}
		label$149:;
		label$148:;
	}
	label$106:;
	goto label$104;
	label$105:;
	if( PARENTH$1 == 0 ) goto label$151;
	{
		int32 vr$107 = LEXGETTOKEN( 0 );
		if( vr$107 == 41 ) goto label$153;
		{
			ERRREPORT( 7, 0, (uint8*)0u );
			HSKIPUNTIL( 41, -1, 0, 0 );
		}
		goto label$152;
		label$153:;
		{
			LEXSKIPTOKEN( 0 );
			ASTTYPEINISCOPEEND( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), *(struct $8FBSYMBOL**)CTX$1 );
		}
		label$152:;
	}
	label$151:;
	label$150:;
	__builtin_memcpy( CTX$1, &OLD_CTX$1, 36 );
	int64 SYM_LEN$1;
	int64 vr$113 = SYMBCALCLEN( *(int32*)((uint8*)CTX$1 + 4), *(struct $8FBSYMBOL**)((uint8*)CTX$1 + 8) );
	SYM_LEN$1 = vr$113;
	PAD_LGT$1 = SYM_LEN$1 - LGT$1;
	if( PAD_LGT$1 <= 0ll ) goto label$155;
	{
		ASTTYPEINIADDPAD( *(struct $7ASTNODE**)((uint8*)CTX$1 + 16), PAD_LGT$1 );
	}
	label$155:;
	label$154:;
	*(int64*)((uint8*)*(struct $7ASTNODE**)((uint8*)CTX$1 + 16) + 24) = BASEOFS$1 + SYM_LEN$1;
	fb$result$1 = -1;
	label$85:;
	return fb$result$1;
}
