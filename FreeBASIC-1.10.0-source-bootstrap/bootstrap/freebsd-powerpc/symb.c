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
struct $5TPOOL {
	int32 CHUNKS;
	int32 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 12 );
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
typedef int32 $10FB_SYMBOPT;
typedef int32 $11FB_MANGLING;
typedef int32 $8FB_TOKEN;
typedef int32 $19FB_CVA_LIST_TYPEDEF;
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
typedef int32 $13FB_WARNINGMSG;
typedef void (*tmp$41)( struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int32 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 20 );
typedef int32 $16FB_SYMBLOOKUPOPT;
typedef int32 $22FB_OVLPROC_MATCH_SCORE;
int64 __divdi3( int64, int64 );
void free( void* );
void* memset( void*, int32, uint32 );
FBSTRING* fb_StrInit( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAssign( void*, int32, void*, int32, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int32, void*, int32 );
FBSTRING* fb_StrConcatAssign( void*, int32, void*, int32, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_LongintToStr( int64 );
int32 fb_StrLen( void*, int32 );
static void fb_ctor__symb( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int32, int32, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int32, int32 );
void HASHEND( struct $5THASH* );
uint32 HASHHASH( uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint32 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint32 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint32 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void POOLINIT( struct $5TPOOL*, int32, int32, int32 );
void POOLEND( struct $5TPOOL* );
void* POOLNEWITEM( struct $5TPOOL*, int32 );
void POOLDELITEM( struct $5TPOOL*, void* );
void SYMBDATAINIT( void );
struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int32, int32 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int32 );
int32 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL*, int32*, struct $8FBSYMBOL** );
int32 SYMBGETDESCTYPEDIMENSIONS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int32, int32, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* );
int64 SYMBCALCPARAMLEN( int32, struct $8FBSYMBOL*, $12FB_PARAMMODE );
void SYMBADDTOFWDREF( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBREMOVEFROMFWDREF( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBDELSYMBOL( struct $8FBSYMBOL*, int32 );
int32 SYMBDELDEFINE( struct $8FBSYMBOL* );
void SYMBDELLABEL( struct $8FBSYMBOL* );
void SYMBDELVAR( struct $8FBSYMBOL*, int32 );
void SYMBDELPROTOTYPE( struct $8FBSYMBOL* );
void SYMBDELENUM( struct $8FBSYMBOL* );
void SYMBDELSTRUCT( struct $8FBSYMBOL* );
void SYMBDELCONST( struct $8FBSYMBOL* );
void SYMBDELSCOPE( struct $8FBSYMBOL* );
void SYMBDELNAMESPACE( struct $8FBSYMBOL* );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_REMONLY( struct $8FBSYMBOL* );
void SYMBFREESYMBOL_UNLINKONLY( struct $8FBSYMBOL* );
void SYMBDELFROMHASH( struct $8FBSYMBOL* );
void SYMBDELFROMCHAINLIST( struct $8FBSYMBOL* );
void SYMBRECALCLEN( struct $8FBSYMBOL* );
int64 SYMBCALCLEN( int32, struct $8FBSYMBOL* );
int32 TYPEHASCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDEFCTOR( int32, struct $8FBSYMBOL* );
int32 TYPEHASDTOR( int32, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int32, struct $8FBSYMBOL*, int32, int32, struct $8FBSYMBOL* );
void SYMBHASHLISTADD( struct $8FBHASHTB* );
void SYMBNAMESPACEREMOVE( struct $8FBSYMBOL*, int32 );
int32 SYMBCANDUPLICATE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
FBSTRING* SYMBPROCPTRTOSTR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONECONST( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONEVAR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONELABEL( struct $8FBSYMBOL* );
int32 SYMBVARCHECKACCESS( struct $8FBSYMBOL* );
int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32* );
int32 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32*, $13FB_WARNINGMSG* );
int32 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONESIMPLESTRUCT( struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void SYMBDELGLOBALTB( void );
void SYMBKEYWORDINIT( void );
void SYMBDEFINEINIT( int32 );
void SYMBDEFINEEND( void );
void SYMBFWDREFINIT( void );
void SYMBFWDREFEND( void );
void SYMBVARINIT( void );
void SYMBVAREND( void );
void SYMBPROCINIT( void );
void SYMBPROCEND( void );
void SYMBMANGLEINIT( void );
void SYMBMANGLEEND( void );
void SYMBCOMPINIT( void );
void SYMBCOMPEND( void );
void SYMBCOMPRTTIINIT( void );
void SYMBCOMPRTTIEND( void );
void SYMBKEYWORDCONSTSINIT( void );
void SYMBKEYWORDTYPEINIT( void );
static FBSTRING* HGETNAMESPACEPREFIX( struct $8FBSYMBOL* );
void SYMBINITSYMBOLS( void );
static void HINITDEFTYPETB( void );
static struct $10FBSYMCHAIN* CHAINPOOLNEXT( void );
static struct $10FBSYMCHAIN* HLOOKUPIMPORTLIST( struct $8FBSYMBOL*, uint8*, uint32, $16FB_SYMBLOOKUPOPT );
static struct $10FBSYMCHAIN* HSYMBLOOKUPNS( uint8*, $8FB_TOKEN*, $10FB_TKCLASS*, struct $8FBHASHTB*, uint32 );
static struct $10FBSYMCHAIN* HSYMBLOOKUPTYPENS( uint8*, $8FB_TOKEN*, $10FB_TKCLASS*, struct $8FBHASHTB*, uint32 );
static struct $10FBSYMCHAIN* HLOOKUPIMPORTHASH( struct $8FBSYMBOL*, uint8*, uint32 );
static int32 HSYMBCHECKACCESSPARENT( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int32 HSYMBCHECKCONSTASSIGNFUNCPTR( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int32*, $13FB_WARNINGMSG* );
static void HFOREACHGLOBAL( struct $8FBSYMBOL*, int32, tmp$41 );
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
static int32 DEFTYPETB$[31];
static uint8* CLASSNAMESPRETTY$[17] = { (uint8*)"variable", (uint8*)"constant", (uint8*)"procedure", (uint8*)"parameter", (uint8*)"#define", (uint8*)"keyword", (uint8*)"label", (uint8*)"namespace", (uint8*)"enum", (uint8*)"type", (uint8*)"class", (uint8*)"field", (uint8*)"type alias", (uint8*)"forward reference", (uint8*)"scope", (uint8*)"reserved", (uint8*)"namespace import" };
struct $7SYMBCTX SYMB$;

void SYMBINITSYMBOLS( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 4), 8000, 184, 6 );
	POOLINIT( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), 1000, 17, 129 );
	*(int32*)((uint8*)&SYMB$ + 98348) = 0;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98660), 500, 28, 7 );
	*($12FB_SYMBCLASS*)((uint8*)&SYMB$ + 98352) = 8;
	*(uint16*)((uint8*)&SYMB$ + 98388) = (uint16)0u;
	{
		struct $13FBS_NAMESPACE* TMP$95$2;
		TMP$95$2 = (struct $13FBS_NAMESPACE*)((uint8*)&SYMB$ + 98408);
		*(struct $8FBSYMBOL**)TMP$95$2 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352);
		*(struct $8FBSYMBOL**)((uint8*)TMP$95$2 + 4) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)TMP$95$2 + 8) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)TMP$95$2 + 12) = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352);
		*(struct $8FBHASHTB**)((uint8*)TMP$95$2 + 28) = (struct $8FBHASHTB*)0u;
		*(struct $8FBHASHTB**)((uint8*)TMP$95$2 + 32) = (struct $8FBHASHTB*)0u;
		{
			HASHINIT( (struct $5THASH*)((uint8*)TMP$95$2 + 16), 8000, 0 );
		}
		goto label$12;
		label$13:;
		{
			memset( (void*)((uint8*)TMP$95$2 + 16), 0, 12u );
		}
		label$12:;
		void* vr$17 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98660) );
		*(struct $13FBNAMESPC_EXT**)((uint8*)TMP$95$2 + 36) = (struct $13FBNAMESPC_EXT*)vr$17;
	}
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352);
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 98408);
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 98540) = (struct $8FBHASHTB*)((uint8*)&SYMB$ + 98420);
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 36) = (struct $8FBHASHTB*)0u;
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40) = (struct $8FBHASHTB*)0u;
	SYMBHASHLISTADD( *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 98540) );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 98572), 8000, 0 );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 98584), 4000, 24, 6 );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 99044) = (struct $8FBSYMBOL*)0u;
	SYMBDATAINIT(  );
	label$11:;
}

void SYMBINIT( int32 ISMAIN$1 )
{
	label$22:;
	if( *(int32*)&SYMB$ == 0 ) goto label$25;
	{
		goto label$23;
	}
	label$25:;
	label$24:;
	SYMBINITSYMBOLS(  );
	SYMBCOMPINIT(  );
	SYMBMANGLEINIT(  );
	SYMBKEYWORDINIT(  );
	SYMBDEFINEINIT( ISMAIN$1 );
	SYMBFWDREFINIT(  );
	SYMBVARINIT(  );
	SYMBPROCINIT(  );
	HINITDEFTYPETB(  );
	SYMBCOMPRTTIINIT(  );
	SYMBKEYWORDCONSTSINIT(  );
	SYMBKEYWORDTYPEINIT(  );
	*(int32*)&SYMB$ = -1;
	label$23:;
}

void SYMBEND( void )
{
	label$26:;
	if( *(int32*)&SYMB$ != 0 ) goto label$29;
	{
		goto label$27;
	}
	label$29:;
	label$28:;
	SYMBDELGLOBALTB(  );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98412) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98416) = (struct $8FBSYMBOL*)0u;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544) = (struct $10FBSYMBOLTB*)0u;
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98584) );
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98572) );
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 98424) );
	SYMBCOMPRTTIEND(  );
	SYMBPROCEND(  );
	SYMBVAREND(  );
	SYMBFWDREFEND(  );
	SYMBDEFINEEND(  );
	SYMBMANGLEEND(  );
	SYMBCOMPEND(  );
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98660), *(void**)((uint8*)&SYMB$ + 98444) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 98660) );
	POOLEND( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 4) );
	*(int32*)&SYMB$ = 0;
	label$27:;
}

int32 SYMBCANDUPLICATE( struct $8FBSYMBOL* HEAD_SYM$1, struct $8FBSYMBOL* S$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$30:;
	fb$result$1 = 0;
	{
		uint32 TMP$96$2;
		TMP$96$2 = *(uint32*)S$1;
		goto label$33;
		label$34:;
		{
			goto label$31;
		}
		goto label$32;
		label$35:;
		{
			label$36:;
			{
				{
					uint32 TMP$97$5;
					TMP$97$5 = *(uint32*)HEAD_SYM$1;
					goto label$40;
					label$41:;
					{
						goto label$31;
					}
					goto label$39;
					label$40:;
					static const void* tmp$103[9] = {
						&&label$41,
						&&label$39,
						&&label$39,
						&&label$41,
						&&label$41,
						&&label$41,
						&&label$41,
						&&label$41,
						&&label$41,
					};
					if( (TMP$97$5 - 5u) > 8u ) goto label$39;
					goto *tmp$103[TMP$97$5 - 5u];
					label$39:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$38:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$36;
			label$37:;
		}
		goto label$32;
		label$42:;
		{
			label$43:;
			{
				{
					$12FB_SYMBCLASS TMP$98$5;
					TMP$98$5 = *($12FB_SYMBCLASS*)HEAD_SYM$1;
					if( TMP$98$5 == 5 ) goto label$48;
					label$49:;
					if( TMP$98$5 == 8 ) goto label$48;
					label$50:;
					if( TMP$98$5 == 14 ) goto label$48;
					label$51:;
					if( TMP$98$5 != 11 ) goto label$47;
					label$48:;
					{
						goto label$31;
					}
					goto label$46;
					label$47:;
					if( TMP$98$5 != 10 ) goto label$52;
					label$53:;
					{
						if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 262144) == 0 ) goto label$55;
						{
							goto label$31;
						}
						label$55:;
						label$54:;
					}
					label$52:;
					label$46:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$45:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$43;
			label$44:;
		}
		goto label$32;
		label$56:;
		{
			label$57:;
			{
				{
					uint32 TMP$99$5;
					TMP$99$5 = *(uint32*)HEAD_SYM$1;
					goto label$61;
					label$62:;
					{
					}
					goto label$60;
					label$63:;
					{
						if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 262144) == 0 ) goto label$65;
						{
							goto label$31;
						}
						label$65:;
						label$64:;
					}
					goto label$60;
					label$66:;
					{
						if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$68;
						{
							goto label$31;
						}
						label$68:;
						label$67:;
						if( *(int32*)HEAD_SYM$1 != 3 ) goto label$70;
						{
							if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 32) != 0 ) goto label$72;
							{
								goto label$31;
							}
							goto label$71;
							label$72:;
							{
								if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 32) == 0 ) goto label$74;
								{
									goto label$31;
								}
								label$74:;
								label$73:;
							}
							label$71:;
						}
						label$70:;
						label$69:;
						if( (*(int32*)((uint8*)S$1 + 4) & 1048576) == 0 ) goto label$76;
						{
							if( (*(int32*)((uint8*)S$1 + 28) & 511) != (*(int32*)((uint8*)HEAD_SYM$1 + 28) & 511) ) goto label$78;
							{
								goto label$31;
							}
							label$78:;
							label$77:;
						}
						goto label$75;
						label$76:;
						{
							if( (*(int32*)((uint8*)HEAD_SYM$1 + 28) & 511) == 17 ) goto label$80;
							{
								goto label$31;
							}
							label$80:;
							label$79:;
						}
						label$75:;
					}
					goto label$60;
					label$81:;
					{
						goto label$31;
					}
					goto label$60;
					label$61:;
					static const void* tmp$104[12] = {
						&&label$66,
						&&label$81,
						&&label$81,
						&&label$66,
						&&label$62,
						&&label$81,
						&&label$62,
						&&label$63,
						&&label$81,
						&&label$81,
						&&label$62,
						&&label$62,
					};
					if( (TMP$99$5 - 3u) > 11u ) goto label$81;
					goto *tmp$104[TMP$99$5 - 3u];
					label$60:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$59:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$57;
			label$58:;
		}
		goto label$32;
		label$82:;
		{
			label$83:;
			{
				{
					uint32 TMP$100$5;
					TMP$100$5 = *(uint32*)HEAD_SYM$1;
					goto label$87;
					label$88:;
					{
					}
					goto label$86;
					label$89:;
					{
						if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 262144) == 0 ) goto label$91;
						{
							goto label$31;
						}
						label$91:;
						label$90:;
					}
					goto label$86;
					label$92:;
					{
						if( *(int32*)((uint8*)&ENV$ + 136) == 3 ) goto label$94;
						{
							goto label$31;
						}
						label$94:;
						label$93:;
						if( *(int32*)HEAD_SYM$1 != 3 ) goto label$96;
						{
							if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 32) != 0 ) goto label$98;
							{
								goto label$31;
							}
							label$98:;
							label$97:;
						}
						label$96:;
						label$95:;
						if( (*(int32*)((uint8*)S$1 + 4) & 1048576) == 0 ) goto label$100;
						{
							if( (*(int32*)((uint8*)S$1 + 28) & 511) != (*(int32*)((uint8*)HEAD_SYM$1 + 28) & 511) ) goto label$102;
							{
								goto label$31;
							}
							label$102:;
							label$101:;
						}
						goto label$99;
						label$100:;
						{
							if( (*(int32*)((uint8*)HEAD_SYM$1 + 28) & 511) == 17 ) goto label$104;
							{
								goto label$31;
							}
							label$104:;
							label$103:;
						}
						label$99:;
					}
					goto label$86;
					label$105:;
					{
						if( (int32)*(uint16*)((uint8*)S$1 + 36) != (int32)*(uint16*)((uint8*)HEAD_SYM$1 + 36) ) goto label$107;
						{
							goto label$31;
						}
						label$107:;
						label$106:;
					}
					goto label$86;
					label$108:;
					{
						if( (int32)*(uint16*)((uint8*)S$1 + 36) != (int32)*(uint16*)((uint8*)HEAD_SYM$1 + 36) ) goto label$110;
						{
							if( *(int32*)((uint8*)&ENV$ + 136) != 0 ) goto label$112;
							{
								goto label$31;
							}
							label$112:;
							label$111:;
							if( (*(int32*)((uint8*)HEAD_SYM$1 + 28) & 511) != (*(int32*)((uint8*)S$1 + 28) & 511) ) goto label$114;
							{
								goto label$31;
							}
							label$114:;
							label$113:;
							if( (-((*(int32*)((uint8*)HEAD_SYM$1 + 4) & 1048576) == 0) & -((*(int32*)((uint8*)S$1 + 4) & 1048576) == 0)) == 0 ) goto label$116;
							{
								goto label$31;
							}
							label$116:;
							label$115:;
						}
						label$110:;
						label$109:;
					}
					goto label$86;
					label$117:;
					{
						goto label$31;
					}
					goto label$86;
					label$87:;
					static const void* tmp$105[16] = {
						&&label$108,
						&&label$117,
						&&label$92,
						&&label$117,
						&&label$117,
						&&label$92,
						&&label$88,
						&&label$117,
						&&label$88,
						&&label$89,
						&&label$117,
						&&label$105,
						&&label$88,
						&&label$88,
						&&label$117,
						&&label$108,
					};
					if( (TMP$100$5 - 1u) > 15u ) goto label$117;
					goto *tmp$105[TMP$100$5 - 1u];
					label$86:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$85:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$83;
			label$84:;
		}
		goto label$32;
		label$118:;
		{
			label$119:;
			{
				{
					uint32 TMP$101$5;
					TMP$101$5 = *(uint32*)HEAD_SYM$1;
					goto label$123;
					label$124:;
					{
						goto label$31;
					}
					goto label$122;
					label$125:;
					{
						if( (*(int32*)((uint8*)HEAD_SYM$1 + 12) & 262144) == 0 ) goto label$127;
						{
							goto label$31;
						}
						label$127:;
						label$126:;
					}
					goto label$122;
					label$123:;
					static const void* tmp$106[7] = {
						&&label$124,
						&&label$124,
						&&label$124,
						&&label$124,
						&&label$122,
						&&label$125,
						&&label$124,
					};
					if( (TMP$101$5 - 5u) > 6u ) goto label$122;
					goto *tmp$106[TMP$101$5 - 5u];
					label$122:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$121:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$119;
			label$120:;
		}
		goto label$32;
		label$128:;
		{
		}
		goto label$32;
		label$129:;
		{
			label$130:;
			{
				{
					uint32 TMP$102$5;
					TMP$102$5 = *(uint32*)HEAD_SYM$1;
					goto label$134;
					label$135:;
					{
						if( (-((int32)*(uint16*)((uint8*)S$1 + 36) == (int32)*(uint16*)((uint8*)HEAD_SYM$1 + 36)) & -(*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)S$1 + 144) == *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)HEAD_SYM$1 + 144))) == 0 ) goto label$137;
						{
							goto label$31;
						}
						label$137:;
						label$136:;
					}
					goto label$133;
					label$138:;
					{
						goto label$31;
					}
					goto label$133;
					label$134:;
					static const void* tmp$107[16] = {
						&&label$135,
						&&label$135,
						&&label$138,
						&&label$138,
						&&label$135,
						&&label$138,
						&&label$138,
						&&label$135,
						&&label$138,
						&&label$138,
						&&label$138,
						&&label$138,
						&&label$138,
						&&label$138,
						&&label$138,
						&&label$135,
					};
					if( (TMP$102$5 - 1u) > 15u ) goto label$138;
					goto *tmp$107[TMP$102$5 - 1u];
					label$133:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 160);
			}
			label$132:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$130;
			label$131:;
		}
		goto label$32;
		label$33:;
		static const void* tmp$108[16] = {
			&&label$82,
			&&label$56,
			&&label$56,
			&&label$128,
			&&label$34,
			&&label$34,
			&&label$118,
			&&label$34,
			&&label$35,
			&&label$35,
			&&label$34,
			&&label$34,
			&&label$35,
			&&label$42,
			&&label$32,
			&&label$129,
		};
		if( (TMP$96$2 - 1u) > 15u ) goto label$32;
		goto *tmp$108[TMP$96$2 - 1u];
		label$32:;
	}
	fb$result$1 = -1;
	label$31:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT OPTIONS$1, struct $8FBSYMBOL* S$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, $12FB_SYMBCLASS CLASS_$1, uint8* ID$1, uint8* ID_ALIAS$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	int32 TMP$109$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$139:;
	int32 SLEN$1;
	int32 DELOK$1;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	if( SYMTB$1 != (struct $10FBSYMBOLTB*)0u ) goto label$142;
	{
		SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 98544);
		if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1032) ) goto label$144;
		{
			if( *(uint32*)((uint8*)&PARSER$ + 100) != 0u ) goto label$146;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$148;
				{
					SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 98408);
				}
				label$148:;
				label$147:;
				ATTRIB$1 = ATTRIB$1 & -129;
			}
			goto label$145;
			label$146:;
			{
				ATTRIB$1 = ATTRIB$1 | 128;
			}
			label$145:;
		}
		goto label$143;
		label$144:;
		{
			ATTRIB$1 = ATTRIB$1 | 128;
		}
		label$143:;
	}
	label$142:;
	label$141:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0u ) goto label$150;
	{
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 98540);
	}
	label$150:;
	label$149:;
	DELOK$1 = 0;
	if( S$1 != (struct $8FBSYMBOL*)0u ) goto label$152;
	{
		DELOK$1 = -1;
		void* vr$7 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 4) );
		S$1 = (struct $8FBSYMBOL*)vr$7;
	}
	label$152:;
	label$151:;
	*($12FB_SYMBCLASS*)S$1 = CLASS_$1;
	*($13FB_SYMBATTRIB*)((uint8*)S$1 + 4) = ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)S$1 + 8) = PATTRIB$1;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 12) = 0;
	*(int16*)((uint8*)S$1 + 38) = (int16)*($11FB_MANGLING*)((uint8*)&PARSER$ + 104);
	*($11FB_DATATYPE*)((uint8*)S$1 + 28) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 32) = SUBTYPE$1;
	if( (OPTIONS$1 & 2) == 0 ) goto label$154;
	{
		if( (*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 12) & 12288) == 0 ) goto label$156;
		{
			*(uint16*)((uint8*)S$1 + 36) = (uint16)0u;
		}
		goto label$155;
		label$156:;
		{
			*(uint16*)((uint8*)S$1 + 36) = (uint16)((int32)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 108) + 36) + 1);
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	{
		*(uint16*)((uint8*)S$1 + 36) = (uint16)*(uint32*)((uint8*)&PARSER$ + 100);
	}
	label$153:;
	if( ID$1 == (uint8*)0u ) goto label$157;
	int32 vr$27 = fb_StrLen( (void*)ID$1, 0 );
	TMP$109$1 = vr$27;
	goto label$193;
	label$157:;
	TMP$109$1 = 0;
	label$193:;
	SLEN$1 = TMP$109$1;
	if( SLEN$1 <= 0 ) goto label$159;
	{
		void* vr$30 = POOLNEWITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), SLEN$1 + 1 );
		*(uint8**)((uint8*)S$1 + 16) = (uint8*)vr$30;
		if( (OPTIONS$1 & 1) != 0 ) goto label$161;
		{
			HUCASE( ID$1, *(uint8**)((uint8*)S$1 + 16) );
		}
		goto label$160;
		label$161:;
		{
			fb_StrAssign( *(void**)((uint8*)S$1 + 16), 0, (void*)ID$1, 0, 0 );
		}
		label$160:;
	}
	goto label$158;
	label$159:;
	{
		*(uint8**)((uint8*)S$1 + 16) = (uint8*)0u;
		OPTIONS$1 = OPTIONS$1 & -33;
	}
	label$158:;
	if( ID_ALIAS$1 == (uint8*)0u ) goto label$163;
	{
		int32 vr$37 = fb_StrLen( (void*)ID_ALIAS$1, 0 );
		void* vr$39 = XALLOCATE( vr$37 + 1 );
		*(uint8**)((uint8*)S$1 + 20) = (uint8*)vr$39;
		fb_StrAssign( *(void**)((uint8*)S$1 + 20), 0, (void*)ID_ALIAS$1, 0, 0 );
	}
	goto label$162;
	label$163:;
	{
		*(uint8**)((uint8*)S$1 + 20) = (uint8*)0u;
	}
	label$162:;
	*(uint8**)((uint8*)S$1 + 24) = (uint8*)0u;
	*(int64*)((uint8*)S$1 + 40) = 0ll;
	*(int64*)((uint8*)S$1 + 48) = 0ll;
	*(struct $8FBHASHTB**)((uint8*)S$1 + 144) = HASHTB$1;
	if( (OPTIONS$1 & 32) == 0 ) goto label$165;
	{
		struct $8FBSYMBOL* HEAD_SYM$2;
		uint32 vr$49 = HASHHASH( (uint8*)*(uint8**)((uint8*)S$1 + 16) );
		*(uint32*)((uint8*)S$1 + 152) = vr$49;
		void* vr$55 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)*(uint8**)((uint8*)S$1 + 16), *(uint32*)((uint8*)S$1 + 152) );
		HEAD_SYM$2 = (struct $8FBSYMBOL*)vr$55;
		if( HEAD_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$167;
		{
			struct $8HASHITEM* vr$60 = HASHADD( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)*(uint8**)((uint8*)S$1 + 16), (void*)S$1, *(uint32*)((uint8*)S$1 + 152) );
			*(struct $8HASHITEM**)((uint8*)S$1 + 148) = vr$60;
			*(struct $8FBSYMBOL**)((uint8*)S$1 + 156) = (struct $8FBSYMBOL*)0u;
			*(struct $8FBSYMBOL**)((uint8*)S$1 + 160) = (struct $8FBSYMBOL*)0u;
		}
		goto label$166;
		label$167:;
		{
			if( (OPTIONS$1 & 128) != 0 ) goto label$169;
			{
				int32 vr$65 = SYMBCANDUPLICATE( HEAD_SYM$2, S$1 );
				if( vr$65 != 0 ) goto label$171;
				{
					POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), *(void**)((uint8*)S$1 + 16) );
					if( *(uint8**)((uint8*)S$1 + 20) == (uint8*)0u ) goto label$173;
					{
						free( *(void**)((uint8*)S$1 + 20) );
					}
					label$173:;
					label$172:;
					if( *(uint8**)((uint8*)S$1 + 24) == (uint8*)0u ) goto label$175;
					{
						free( *(void**)((uint8*)S$1 + 24) );
					}
					label$175:;
					label$174:;
					if( DELOK$1 == 0 ) goto label$177;
					{
						LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 4), (void*)S$1 );
					}
					label$177:;
					label$176:;
					goto label$140;
				}
				label$171:;
				label$170:;
			}
			label$169:;
			label$168:;
			*(struct $8HASHITEM**)((uint8*)S$1 + 148) = *(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 148);
			if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$179;
			{
				struct $8FBSYMBOL* PREV$4;
				PREV$4 = (struct $8FBSYMBOL*)0u;
				label$180:;
				if( *(int32*)HEAD_SYM$2 != 6 ) goto label$181;
				{
					PREV$4 = HEAD_SYM$2;
					HEAD_SYM$2 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 160);
					if( HEAD_SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$183;
					{
						goto label$181;
					}
					label$183:;
					label$182:;
				}
				goto label$180;
				label$181:;
				if( PREV$4 != (struct $8FBSYMBOL*)0u ) goto label$185;
				{
					goto label$186;
				}
				label$185:;
				label$184:;
				*(struct $8FBSYMBOL**)((uint8*)PREV$4 + 160) = S$1;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 156) = PREV$4;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 160) = HEAD_SYM$2;
				if( HEAD_SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$188;
				{
					*(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 156) = S$1;
				}
				label$188:;
				label$187:;
			}
			goto label$178;
			label$179:;
			{
				label$186:;
				*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 148) + 4) = (void*)S$1;
				*(uint8**)*(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 148) = (uint8*)*(uint8**)((uint8*)S$1 + 16);
				*(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 156) = S$1;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 156) = (struct $8FBSYMBOL*)0u;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 160) = HEAD_SYM$2;
			}
			label$178:;
		}
		label$166:;
	}
	goto label$164;
	label$165:;
	{
		*(struct $8HASHITEM**)((uint8*)S$1 + 148) = (struct $8HASHITEM*)0u;
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 156) = (struct $8FBSYMBOL*)0u;
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 160) = (struct $8FBSYMBOL*)0u;
	}
	label$164:;
	if( *(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 8) == (struct $8FBSYMBOL*)0u ) goto label$190;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 8) + 176) = S$1;
	}
	goto label$189;
	label$190:;
	{
		*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 4) = S$1;
	}
	label$189:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 172) = *(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 8);
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 176) = (struct $8FBSYMBOL*)0u;
	*(struct $10FBSYMBOLTB**)((uint8*)S$1 + 164) = SYMTB$1;
	*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 8) = S$1;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 168) = (struct $8FBSYMBOL*)0u;
	if( (DTYPE$1 & 31) != 23 ) goto label$192;
	{
		SYMBADDTOFWDREF( SUBTYPE$1, S$1 );
	}
	label$192:;
	label$191:;
	fb$result$1 = S$1;
	label$140:;
	return fb$result$1;
}

void SYMBHASHLISTADD( struct $8FBHASHTB* HASHTB$1 )
{
	label$194:;
	if( *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40) == (struct $8FBHASHTB*)0u ) goto label$197;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40) + 20) = HASHTB$1;
	}
	goto label$196;
	label$197:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 36) = HASHTB$1;
	}
	label$196:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16) = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40);
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20) = (struct $8FBHASHTB*)0u;
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40) = HASHTB$1;
	label$195:;
}

void SYMBHASHLISTADDBEFORE( struct $8FBHASHTB* LASTTB$1, struct $8FBHASHTB* HASHTB$1 )
{
	label$198:;
	if( *(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 16) != (struct $8FBHASHTB*)0u ) goto label$201;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 36) = HASHTB$1;
	}
	goto label$200;
	label$201:;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 16) + 20) = HASHTB$1;
	}
	label$200:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16) = *(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 16);
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20) = LASTTB$1;
	*(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 16) = HASHTB$1;
	label$199:;
}

void SYMBHASHLISTDEL( struct $8FBHASHTB* HASHTB$1 )
{
	label$202:;
	if( *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16) == (struct $8FBHASHTB*)0u ) goto label$205;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16) + 20) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20);
	}
	goto label$204;
	label$205:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 36) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20);
	}
	label$204:;
	if( *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20) == (struct $8FBHASHTB*)0u ) goto label$207;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20) + 16) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	goto label$206;
	label$207:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	label$206:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16) = (struct $8FBHASHTB*)0u;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 20) = (struct $8FBHASHTB*)0u;
	label$203:;
}

void SYMBHASHLISTINSERTNAMESPACE( struct $8FBSYMBOL* NS$1, struct $8FBSYMBOL* SRC_HEAD$1 )
{
	label$208:;
	struct $10FBSYMCHAIN* IMP_HEAD$1;
	IMP_HEAD$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 20);
	struct $10FBSYMCHAIN* IMP_TAIL$1;
	IMP_TAIL$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 24);
	struct $8FBSYMBOL* S$1;
	S$1 = SRC_HEAD$1;
	label$210:;
	if( S$1 == (struct $8FBSYMBOL*)0u ) goto label$211;
	{
		if( *(struct $8HASHITEM**)((uint8*)S$1 + 148) == (struct $8HASHITEM*)0u ) goto label$213;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)S$1 + 156) != (struct $8FBSYMBOL*)0u ) goto label$215;
			{
				struct $10FBSYMCHAIN* CHAIN_$4;
				void* vr$7 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98584) );
				CHAIN_$4 = (struct $10FBSYMCHAIN*)vr$7;
				*(struct $8FBSYMBOL**)CHAIN_$4 = S$1;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 12) = (struct $10FBSYMCHAIN*)0u;
				*(int32*)((uint8*)CHAIN_$4 + 8) = -1;
				struct $10FBSYMCHAIN* HEAD$4;
				void* vr$14 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98572), (uint8*)*(uint8**)((uint8*)S$1 + 16), *(uint32*)((uint8*)S$1 + 152) );
				HEAD$4 = (struct $10FBSYMCHAIN*)vr$14;
				if( HEAD$4 != (struct $10FBSYMCHAIN*)0u ) goto label$217;
				{
					struct $8HASHITEM* vr$18 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 98572), (uint8*)*(uint8**)((uint8*)S$1 + 16), (void*)CHAIN_$4, *(uint32*)((uint8*)S$1 + 152) );
					*(struct $8HASHITEM**)((uint8*)CHAIN_$4 + 16) = vr$18;
					*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 4) = (struct $10FBSYMCHAIN*)0u;
				}
				goto label$216;
				label$217:;
				{
					*(struct $8HASHITEM**)((uint8*)CHAIN_$4 + 16) = *(struct $8HASHITEM**)((uint8*)HEAD$4 + 16);
					*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)HEAD$4 + 16) + 4) = (void*)CHAIN_$4;
					*(struct $10FBSYMCHAIN**)((uint8*)HEAD$4 + 12) = CHAIN_$4;
					*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 4) = HEAD$4;
				}
				label$216:;
				if( IMP_TAIL$1 == (struct $10FBSYMCHAIN*)0u ) goto label$219;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)IMP_TAIL$1 + 20) = CHAIN_$4;
				}
				goto label$218;
				label$219:;
				{
					IMP_HEAD$1 = CHAIN_$4;
				}
				label$218:;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 20) = (struct $10FBSYMCHAIN*)0u;
				IMP_TAIL$1 = CHAIN_$4;
			}
			label$215:;
			label$214:;
		}
		label$213:;
		label$212:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	}
	goto label$210;
	label$211:;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 20) = IMP_HEAD$1;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 24) = IMP_TAIL$1;
	label$209:;
}

void SYMBHASHLISTREMOVENAMESPACE( struct $8FBSYMBOL* NS$1 )
{
	label$220:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 20);
	label$222:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$223;
	{
		struct $10FBSYMCHAIN* PRV$2;
		struct $10FBSYMCHAIN* NXT$2;
		PRV$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 12);
		NXT$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		if( PRV$2 == (struct $10FBSYMCHAIN*)0u ) goto label$225;
		{
			*(struct $10FBSYMCHAIN**)((uint8*)PRV$2 + 4) = NXT$2;
			if( NXT$2 == (struct $10FBSYMCHAIN*)0u ) goto label$227;
			{
				*(struct $10FBSYMCHAIN**)((uint8*)NXT$2 + 12) = PRV$2;
			}
			label$227:;
			label$226:;
		}
		goto label$224;
		label$225:;
		{
			if( NXT$2 == (struct $10FBSYMCHAIN*)0u ) goto label$229;
			{
				*(struct $10FBSYMCHAIN**)((uint8*)NXT$2 + 12) = (struct $10FBSYMCHAIN*)0u;
				*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)CHAIN_$1 + 16) + 4) = (void*)NXT$2;
			}
			goto label$228;
			label$229:;
			{
				HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 98572), *(struct $8HASHITEM**)((uint8*)CHAIN_$1 + 16), *(uint32*)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 152) );
			}
			label$228:;
		}
		label$224:;
		NXT$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 20);
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 98584), (void*)CHAIN_$1 );
		CHAIN_$1 = NXT$2;
	}
	goto label$222;
	label$223:;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 20) = (struct $10FBSYMCHAIN*)0u;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) + 24) = (struct $10FBSYMCHAIN*)0u;
	label$221:;
}

struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* SYM$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$234:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* vr$1 = CHAINPOOLNEXT(  );
	CHAIN_$1 = vr$1;
	*(struct $8FBSYMBOL**)CHAIN_$1 = SYM$1;
	*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4) = (struct $10FBSYMCHAIN*)0u;
	*(int32*)((uint8*)CHAIN_$1 + 8) = 0;
	fb$result$1 = CHAIN_$1;
	goto label$235;
	label$235:;
	return fb$result$1;
}

struct $10FBSYMCHAIN* SYMBLOOKUP( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$307:;
	static uint8 SNAME$1[129];
	*TK$1 = 265;
	*TK_CLASS$1 = 0;
	HUCASE( (uint8*)ID$1, (uint8*)SNAME$1 );
	ID$1 = (uint8*)SNAME$1;
	uint32 INDEX$1;
	uint32 vr$3 = HASHHASH( (uint8*)ID$1 );
	INDEX$1 = vr$3;
	struct $8FBHASHTB* HASHTB$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40);
	label$309:;
	{
		struct $8FBSYMBOL* SYM$2;
		void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)ID$1, INDEX$1 );
		SYM$2 = (struct $8FBSYMBOL*)vr$6;
		label$312:;
		if( SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$313;
		{
			if( *(int32*)SYM$2 != 6 ) goto label$315;
			{
				*TK$1 = *($8FB_TOKEN*)((uint8*)SYM$2 + 56);
				*TK_CLASS$1 = *($10FB_TKCLASS*)((uint8*)SYM$2 + 60);
				if( *(int32*)TK_CLASS$1 == 2 ) goto label$317;
				{
					struct $10FBSYMCHAIN* vr$13 = SYMBNEWCHAINPOOL( SYM$2 );
					fb$result$1 = vr$13;
					goto label$308;
				}
				label$317:;
				label$316:;
			}
			label$315:;
			label$314:;
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		goto label$312;
		label$313:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	label$311:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0u ) goto label$309;
	label$310:;
	if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) == (struct $8FBSYMBOL*)0u ) goto label$319;
	{
		{
			$12FB_SYMBCLASS TMP$112$3;
			TMP$112$3 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
			if( TMP$112$3 == 10 ) goto label$322;
			label$323:;
			if( TMP$112$3 != 11 ) goto label$321;
			label$322:;
			{
				struct $10FBSYMCHAIN* vr$17 = HSYMBLOOKUPTYPENS( ID$1, TK$1, TK_CLASS$1, HASHTB$1, INDEX$1 );
				fb$result$1 = vr$17;
				goto label$308;
			}
			label$321:;
			label$320:;
		}
	}
	label$319:;
	label$318:;
	struct $10FBSYMCHAIN* vr$18 = HSYMBLOOKUPNS( ID$1, TK$1, TK_CLASS$1, HASHTB$1, INDEX$1 );
	fb$result$1 = vr$18;
	goto label$308;
	label$308:;
	return fb$result$1;
}

struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL* NS$1, uint8* ID$1, int32 PRESERVE_CASE$1, int32 SEARCH_IMPORTS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$338:;
	static uint8 SNAME$1[129];
	if( (-(*(int32*)NS$1 == 9) & -(*(int32*)((uint8*)NS$1 + 76) == 0)) == 0 ) goto label$341;
	{
		goto label$339;
	}
	label$341:;
	label$340:;
	if( PRESERVE_CASE$1 != 0 ) goto label$343;
	{
		HUCASE( ID$1, (uint8*)SNAME$1 );
		ID$1 = (uint8*)SNAME$1;
	}
	label$343:;
	label$342:;
	uint32 INDEX$1;
	uint32 vr$6 = HASHHASH( ID$1 );
	INDEX$1 = vr$6;
	struct $8FBSYMBOL* SYM$1;
	void* vr$9 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)NS$1 + 72), ID$1, INDEX$1 );
	SYM$1 = (struct $8FBSYMBOL*)vr$9;
	label$344:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$345;
	{
		if( (-((*(int32*)((uint8*)SYM$1 + 4) & 128) != 0) & -(*(int32*)SYM$1 == 1)) == 0 ) goto label$347;
		{
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
		}
		goto label$346;
		label$347:;
		{
			goto label$345;
		}
		label$346:;
	}
	goto label$344;
	label$345:;
	if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$349;
	{
		if( SEARCH_IMPORTS$1 != 0 ) goto label$351;
		{
			fb$result$1 = (struct $10FBSYMCHAIN*)0u;
			goto label$339;
		}
		label$351:;
		label$350:;
	}
	goto label$348;
	label$349:;
	{
		struct $10FBSYMCHAIN* CHAIN_$2;
		struct $10FBSYMCHAIN* vr$17 = SYMBNEWCHAINPOOL( SYM$1 );
		CHAIN_$2 = vr$17;
		fb$result$1 = CHAIN_$2;
		goto label$339;
	}
	label$348:;
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) != (struct $13FBNAMESPC_EXT*)0u ) goto label$353;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0u;
		goto label$339;
	}
	label$353:;
	label$352:;
	if( *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) != (struct $8FBSYMBOL*)0u ) goto label$355;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0u;
		goto label$339;
	}
	label$355:;
	label$354:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$357;
	{
		struct $10FBSYMCHAIN* vr$22 = HLOOKUPIMPORTHASH( NS$1, ID$1, INDEX$1 );
		fb$result$1 = vr$22;
		goto label$339;
	}
	label$357:;
	label$356:;
	{
		$12FB_SYMBCLASS TMP$113$2;
		TMP$113$2 = *($12FB_SYMBCLASS*)NS$1;
		if( TMP$113$2 == 10 ) goto label$360;
		label$361:;
		if( TMP$113$2 != 11 ) goto label$359;
		label$360:;
		{
			struct $10FBSYMCHAIN* vr$24 = HLOOKUPIMPORTLIST( NS$1, ID$1, INDEX$1, 1 );
			fb$result$1 = vr$24;
			goto label$339;
		}
		label$359:;
		label$358:;
	}
	struct $10FBSYMCHAIN* vr$25 = HLOOKUPIMPORTLIST( NS$1, ID$1, INDEX$1, 0 );
	fb$result$1 = vr$25;
	goto label$339;
	label$339:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL* NS$1, uint8* ID$1, int32 CLASS_$1, int32 PRESERVE_CASE$1, int32 SEARCH_IMPORTS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$362:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* vr$1 = SYMBLOOKUPAT( NS$1, ID$1, PRESERVE_CASE$1, SEARCH_IMPORTS$1 );
	CHAIN_$1 = vr$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$365;
	{
		struct $8FBSYMBOL* vr$2 = SYMBFINDBYCLASS( CHAIN_$1, CLASS_$1 );
		fb$result$1 = vr$2;
	}
	goto label$364;
	label$365:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
	}
	label$364:;
	label$363:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN* CHAIN_$1, int32 CLASS_$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$366:;
	struct $8FBSYMBOL* SYM$1;
	int32 MATCH$1;
	MATCH$1 = 0;
	label$368:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$369;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$370:;
		{
			if( *(int32*)SYM$1 != CLASS_$1 ) goto label$374;
			{
				MATCH$1 = -1;
				goto label$369;
			}
			label$374:;
			label$373:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
		}
		label$372:;
		if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$370;
		label$371:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	goto label$368;
	label$369:;
	if( MATCH$1 != 0 ) goto label$376;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
		goto label$367;
	}
	label$376:;
	label$375:;
	if( *(int32*)SYM$1 != 1 ) goto label$378;
	{
		int32 vr$6 = SYMBVARCHECKACCESS( SYM$1 );
		if( vr$6 == 0 ) goto label$380;
		{
			fb$result$1 = SYM$1;
			goto label$367;
		}
		goto label$379;
		label$380:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
			goto label$367;
		}
		label$379:;
	}
	label$378:;
	label$377:;
	fb$result$1 = SYM$1;
	label$367:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDVARBYSUFFIX( struct $10FBSYMCHAIN* CHAIN_$1, int32 SUFFIX$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$381:;
	struct $8FBSYMBOL* SYM$1;
	if( SUFFIX$1 != 17 ) goto label$384;
	{
		label$385:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$386;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$387:;
			{
				if( *(int32*)SYM$1 != 1 ) goto label$391;
				{
					{
						int32 TMP$114$6;
						TMP$114$6 = *(int32*)((uint8*)SYM$1 + 28) & 511;
						if( TMP$114$6 == 17 ) goto label$394;
						label$395:;
						if( TMP$114$6 == 18 ) goto label$394;
						label$396:;
						if( TMP$114$6 != 4 ) goto label$393;
						label$394:;
						{
							goto label$397;
						}
						label$393:;
						label$392:;
					}
				}
				label$391:;
				label$390:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
			}
			label$389:;
			if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$387;
			label$388:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		}
		goto label$385;
		label$386:;
	}
	goto label$383;
	label$384:;
	{
		label$398:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$399;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$400:;
			{
				if( *(int32*)SYM$1 != 1 ) goto label$404;
				{
					if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != SUFFIX$1 ) goto label$406;
					{
						goto label$397;
					}
					label$406:;
					label$405:;
				}
				label$404:;
				label$403:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
			}
			label$402:;
			if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$400;
			label$401:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		}
		goto label$398;
		label$399:;
	}
	label$383:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	goto label$382;
	label$397:;
	int32 vr$13 = SYMBVARCHECKACCESS( SYM$1 );
	if( vr$13 == 0 ) goto label$408;
	{
		fb$result$1 = SYM$1;
	}
	goto label$407;
	label$408:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
	}
	label$407:;
	label$382:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDVARBYDEFTYPE( struct $10FBSYMCHAIN* CHAIN_$1, int32 DEF_DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$409:;
	struct $8FBSYMBOL* SYM$1;
	if( DEF_DTYPE$1 != 17 ) goto label$412;
	{
		label$413:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$414;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$415:;
			{
				if( *(int32*)SYM$1 != 1 ) goto label$419;
				{
					if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$421;
					{
						{
							$11FB_DATATYPE TMP$115$7;
							TMP$115$7 = *($11FB_DATATYPE*)((uint8*)SYM$1 + 28);
							if( TMP$115$7 == 17 ) goto label$424;
							label$425:;
							if( TMP$115$7 == 18 ) goto label$424;
							label$426:;
							if( TMP$115$7 != 4 ) goto label$423;
							label$424:;
							{
								goto label$427;
							}
							label$423:;
							label$422:;
						}
					}
					goto label$420;
					label$421:;
					{
						goto label$427;
					}
					label$420:;
				}
				label$419:;
				label$418:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
			}
			label$417:;
			if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$415;
			label$416:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		}
		goto label$413;
		label$414:;
	}
	goto label$411;
	label$412:;
	{
		label$428:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$429;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$430:;
			{
				if( *(int32*)SYM$1 != 1 ) goto label$434;
				{
					if( (*(int32*)((uint8*)SYM$1 + 4) & 1048576) == 0 ) goto label$436;
					{
						if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != DEF_DTYPE$1 ) goto label$438;
						{
							goto label$427;
						}
						label$438:;
						label$437:;
					}
					goto label$435;
					label$436:;
					{
						goto label$427;
					}
					label$435:;
				}
				label$434:;
				label$433:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
			}
			label$432:;
			if( SYM$1 != (struct $8FBSYMBOL*)0u ) goto label$430;
			label$431:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		}
		goto label$428;
		label$429:;
	}
	label$411:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	goto label$410;
	label$427:;
	int32 vr$16 = SYMBVARCHECKACCESS( SYM$1 );
	if( vr$16 == 0 ) goto label$440;
	{
		fb$result$1 = SYM$1;
	}
	goto label$439;
	label$440:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0u;
	}
	label$439:;
	label$410:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBYCLASSANDTYPE( struct $10FBSYMCHAIN* CHAIN_$1, int32 SYMCLASS$1, int32 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$441:;
	fb$result$1 = (struct $8FBSYMBOL*)0u;
	label$443:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$444;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$445:;
		{
			if( (-(*(int32*)SYM$2 == SYMCLASS$1) & -(*(int32*)((uint8*)SYM$2 + 28) == DTYPE$1)) == 0 ) goto label$449;
			{
				if( SYMCLASS$1 != 1 ) goto label$451;
				{
					int32 vr$7 = SYMBVARCHECKACCESS( SYM$2 );
					if( vr$7 != 0 ) goto label$453;
					{
						goto label$442;
					}
					label$453:;
					label$452:;
				}
				label$451:;
				label$450:;
				fb$result$1 = SYM$2;
				goto label$442;
			}
			label$449:;
			label$448:;
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 160);
		}
		label$447:;
		if( SYM$2 != (struct $8FBSYMBOL*)0u ) goto label$445;
		label$446:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	goto label$443;
	label$444:;
	label$442:;
	return fb$result$1;
}

void SYMBDELFROMCHAINLIST( struct $8FBSYMBOL* S$1 )
{
	label$454:;
	struct $8FBSYMBOL* PRV$1;
	struct $8FBSYMBOL* NXT$1;
	PRV$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 156);
	NXT$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 160);
	if( PRV$1 == (struct $8FBSYMBOL*)0u ) goto label$457;
	{
		*(struct $8FBSYMBOL**)((uint8*)PRV$1 + 160) = NXT$1;
		if( NXT$1 == (struct $8FBSYMBOL*)0u ) goto label$459;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 156) = PRV$1;
		}
		label$459:;
		label$458:;
	}
	goto label$456;
	label$457:;
	{
		if( NXT$1 == (struct $8FBSYMBOL*)0u ) goto label$461;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 156) = (struct $8FBSYMBOL*)0u;
			*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)S$1 + 148) + 4) = (void*)NXT$1;
			*(uint8**)*(struct $8HASHITEM**)((uint8*)S$1 + 148) = (uint8*)*(uint8**)((uint8*)NXT$1 + 16);
		}
		goto label$460;
		label$461:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)*(struct $8FBHASHTB**)((uint8*)S$1 + 144) + 4), *(struct $8HASHITEM**)((uint8*)S$1 + 148), *(uint32*)((uint8*)S$1 + 152) );
		}
		label$460:;
	}
	label$456:;
	label$455:;
}

void SYMBDELFROMHASH( struct $8FBSYMBOL* S$1 )
{
	label$462:;
	if( *(struct $8HASHITEM**)((uint8*)S$1 + 148) != (struct $8HASHITEM*)0u ) goto label$465;
	{
		goto label$463;
	}
	label$465:;
	label$464:;
	SYMBDELFROMCHAINLIST( S$1 );
	*(struct $8HASHITEM**)((uint8*)S$1 + 148) = (struct $8HASHITEM*)0u;
	label$463:;
}

void SYMBFREESYMBOL( struct $8FBSYMBOL* S$1 )
{
	label$466:;
	if( (*(int32*)((uint8*)S$1 + 28) & 31) != 23 ) goto label$469;
	{
		SYMBREMOVEFROMFWDREF( *(struct $8FBSYMBOL**)((uint8*)S$1 + 32), S$1 );
	}
	label$469:;
	label$468:;
	SYMBDELFROMHASH( S$1 );
	SYMBFREESYMBOL_UNLINKONLY( S$1 );
	SYMBFREESYMBOL_REMONLY( S$1 );
	label$467:;
}

void SYMBFREESYMBOL_REMONLY( struct $8FBSYMBOL* S$1 )
{
	label$470:;
	POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 98616), *(void**)((uint8*)S$1 + 16) );
	if( *(uint8**)((uint8*)S$1 + 20) == (uint8*)0u ) goto label$473;
	{
		free( *(void**)((uint8*)S$1 + 20) );
	}
	label$473:;
	label$472:;
	if( *(uint8**)((uint8*)S$1 + 24) == (uint8*)0u ) goto label$475;
	{
		free( *(void**)((uint8*)S$1 + 24) );
	}
	label$475:;
	label$474:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 4), (void*)S$1 );
	label$471:;
}

void SYMBFREESYMBOL_UNLINKONLY( struct $8FBSYMBOL* S$1 )
{
	label$476:;
	struct $10FBSYMBOLTB* TB$1;
	struct $8FBSYMBOL* PRV$1;
	struct $8FBSYMBOL* NXT$1;
	TB$1 = *(struct $10FBSYMBOLTB**)((uint8*)S$1 + 164);
	PRV$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 172);
	NXT$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 176);
	if( PRV$1 == (struct $8FBSYMBOL*)0u ) goto label$479;
	{
		*(struct $8FBSYMBOL**)((uint8*)PRV$1 + 176) = NXT$1;
	}
	goto label$478;
	label$479:;
	{
		*(struct $8FBSYMBOL**)((uint8*)TB$1 + 4) = NXT$1;
	}
	label$478:;
	if( NXT$1 == (struct $8FBSYMBOL*)0u ) goto label$481;
	{
		*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 172) = PRV$1;
	}
	goto label$480;
	label$481:;
	{
		*(struct $8FBSYMBOL**)((uint8*)TB$1 + 8) = PRV$1;
	}
	label$480:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 172) = (struct $8FBSYMBOL*)0u;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 176) = (struct $8FBSYMBOL*)0u;
	label$477:;
}

void SYMBDELSYMBOL( struct $8FBSYMBOL* S$1, int32 IS_TBDEL$1 )
{
	label$482:;
	{
		uint32 TMP$116$2;
		TMP$116$2 = *(uint32*)S$1;
		goto label$485;
		label$486:;
		{
			SYMBDELVAR( S$1, IS_TBDEL$1 );
		}
		goto label$484;
		label$487:;
		{
			SYMBDELCONST( S$1 );
		}
		goto label$484;
		label$488:;
		{
			SYMBDELPROTOTYPE( S$1 );
		}
		goto label$484;
		label$489:;
		{
			SYMBDELDEFINE( S$1 );
		}
		goto label$484;
		label$490:;
		{
			SYMBDELLABEL( S$1 );
		}
		goto label$484;
		label$491:;
		{
			SYMBDELENUM( S$1 );
		}
		goto label$484;
		label$492:;
		{
			SYMBDELSTRUCT( S$1 );
		}
		goto label$484;
		label$493:;
		{
			SYMBDELSCOPE( S$1 );
		}
		goto label$484;
		label$494:;
		{
			SYMBDELNAMESPACE( S$1 );
		}
		goto label$484;
		label$495:;
		{
			SYMBNAMESPACEREMOVE( S$1, 0 );
		}
		goto label$484;
		label$496:;
		{
			SYMBFREESYMBOL( S$1 );
		}
		goto label$484;
		label$485:;
		static const void* tmp$117[17] = {
			&&label$486,
			&&label$487,
			&&label$488,
			&&label$496,
			&&label$489,
			&&label$496,
			&&label$490,
			&&label$494,
			&&label$491,
			&&label$492,
			&&label$496,
			&&label$486,
			&&label$496,
			&&label$496,
			&&label$493,
			&&label$496,
			&&label$495,
		};
		if( (TMP$116$2 - 1u) > 16u ) goto label$496;
		goto *tmp$117[TMP$116$2 - 1u];
		label$484:;
	}
	label$483:;
}

struct $8FBSYMBOL* SYMBCLONESYMBOL( struct $8FBSYMBOL* S$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$497:;
	int32 ARRAYDTYPE$1;
	struct $8FBSYMBOL* ARRAYSUBTYPE$1;
	{
		uint32 TMP$118$2;
		TMP$118$2 = *(uint32*)S$1;
		goto label$500;
		label$501:;
		{
			struct $8FBSYMBOL* vr$2 = SYMBADDPROCPTRFROMFUNCTION( S$1 );
			fb$result$1 = vr$2;
		}
		goto label$499;
		label$502:;
		{
			struct $8FBSYMBOL* vr$3 = SYMBCLONEVAR( S$1 );
			fb$result$1 = vr$3;
		}
		goto label$499;
		label$503:;
		{
			struct $8FBSYMBOL* vr$4 = SYMBCLONECONST( S$1 );
			fb$result$1 = vr$4;
		}
		goto label$499;
		label$504:;
		{
			struct $8FBSYMBOL* vr$5 = SYMBCLONELABEL( S$1 );
			fb$result$1 = vr$5;
		}
		goto label$499;
		label$505:;
		{
			if( (*(int32*)((uint8*)S$1 + 4) & 8192) == 0 ) goto label$507;
			{
				SYMBGETDESCTYPEARRAYDTYPE( S$1, &ARRAYDTYPE$1, &ARRAYSUBTYPE$1 );
				int32 vr$10 = SYMBGETDESCTYPEDIMENSIONS( S$1 );
				struct $8FBSYMBOL* vr$11 = SYMBADDARRAYDESCRIPTORTYPE( vr$10, ARRAYDTYPE$1, ARRAYSUBTYPE$1 );
				fb$result$1 = vr$11;
			}
			goto label$506;
			label$507:;
			{
				struct $8FBSYMBOL* vr$12 = SYMBCLONESIMPLESTRUCT( S$1 );
				fb$result$1 = vr$12;
			}
			label$506:;
		}
		goto label$499;
		label$508:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0u;
		}
		goto label$499;
		label$500:;
		static const void* tmp$119[10] = {
			&&label$502,
			&&label$503,
			&&label$501,
			&&label$508,
			&&label$508,
			&&label$508,
			&&label$504,
			&&label$508,
			&&label$508,
			&&label$505,
		};
		if( (TMP$118$2 - 1u) > 9u ) goto label$508;
		goto *tmp$119[TMP$118$2 - 1u];
		label$499:;
	}
	label$498:;
	return fb$result$1;
}

void SYMBDELGLOBALTB( void )
{
	label$509:;
	label$511:;
	{
		struct $8FBSYMBOL* S$2;
		S$2 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98416);
		if( S$2 != (struct $8FBSYMBOL*)0u ) goto label$515;
		{
			goto label$512;
		}
		label$515:;
		label$514:;
		SYMBDELSYMBOL( S$2, -1 );
	}
	label$513:;
	goto label$511;
	label$512:;
	label$510:;
}

void SYMBDELSYMBOLTB( struct $10FBSYMBOLTB* TB$1, int32 HASHONLY$1 )
{
	label$516:;
	if( HASHONLY$1 == 0 ) goto label$519;
	{
		struct $8FBSYMBOL* S$2;
		S$2 = *(struct $8FBSYMBOL**)((uint8*)TB$1 + 4);
		label$520:;
		if( S$2 == (struct $8FBSYMBOL*)0u ) goto label$521;
		{
			SYMBDELFROMHASH( S$2 );
			if( *(int32*)S$2 != 17 ) goto label$523;
			{
				SYMBNAMESPACEREMOVE( S$2, -1 );
			}
			label$523:;
			label$522:;
			S$2 = *(struct $8FBSYMBOL**)((uint8*)S$2 + 176);
		}
		goto label$520;
		label$521:;
	}
	goto label$518;
	label$519:;
	{
		label$524:;
		{
			struct $8FBSYMBOL* S$3;
			S$3 = *(struct $8FBSYMBOL**)((uint8*)TB$1 + 8);
			if( S$3 != (struct $8FBSYMBOL*)0u ) goto label$528;
			{
				goto label$525;
			}
			label$528:;
			label$527:;
			SYMBDELSYMBOL( S$3, -1 );
		}
		label$526:;
		goto label$524;
		label$525:;
	}
	label$518:;
	label$517:;
}

int32 SYMBHASCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$529:;
	int32 vr$3 = TYPEHASCTOR( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	fb$result$1 = vr$3;
	label$530:;
	return fb$result$1;
}

int32 SYMBHASDEFCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$531:;
	int32 vr$3 = TYPEHASDEFCTOR( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	fb$result$1 = vr$3;
	label$532:;
	return fb$result$1;
}

int32 SYMBHASDTOR( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$533:;
	int32 vr$3 = TYPEHASDTOR( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
	fb$result$1 = vr$3;
	label$534:;
	return fb$result$1;
}

int32 SYMBISDATADESC( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$535:;
	if( (*(int32*)((uint8*)SYM$1 + 28) & 511) != 20 ) goto label$538;
	{
		fb$result$1 = -(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) == *(struct $8FBSYMBOL**)((uint8*)&AST$ + 116));
	}
	label$538:;
	label$537:;
	label$536:;
	return fb$result$1;
}

int32 SYMBISARRAY( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$539:;
	{
		$12FB_SYMBCLASS TMP$120$2;
		TMP$120$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$120$2 == 1 ) goto label$543;
		label$544:;
		if( TMP$120$2 != 12 ) goto label$542;
		label$543:;
		{
			fb$result$1 = -(*(int32*)((uint8*)SYM$1 + 64) != 0);
		}
		goto label$541;
		label$542:;
		{
			fb$result$1 = 0;
		}
		label$545:;
		label$541:;
	}
	label$540:;
	return fb$result$1;
}

int32 SYMBISSTRING( int32 DTYPE$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$546:;
	{
		uint32 TMP$121$2;
		TMP$121$2 = (uint32)DTYPE$1;
		goto label$549;
		label$550:;
		{
			fb$result$1 = -1;
		}
		goto label$548;
		label$551:;
		{
			fb$result$1 = 0;
		}
		goto label$548;
		label$549:;
		static const void* tmp$122[15] = {
			&&label$550,
			&&label$551,
			&&label$551,
			&&label$550,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$551,
			&&label$550,
			&&label$550,
		};
		if( (TMP$121$2 - 4u) > 14u ) goto label$551;
		goto *tmp$122[TMP$121$2 - 4u];
		label$548:;
	}
	label$547:;
	return fb$result$1;
}

$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	$19FB_CVA_LIST_TYPEDEF fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$552:;
	fb$result$1 = 0;
	if( ((DTYPE$1 & 32505856) >> (20 & 31)) != 19 ) goto label$555;
	{
		{
			int32 TMP$123$3;
			TMP$123$3 = DTYPE$1 & 31;
			if( TMP$123$3 != 0 ) goto label$557;
			label$558:;
			{
				if( (DTYPE$1 & 480) == 0 ) goto label$560;
				{
					fb$result$1 = 2;
				}
				label$560:;
				label$559:;
			}
			goto label$556;
			label$557:;
			if( TMP$123$3 != 20 ) goto label$561;
			label$562:;
			{
				if( SUBTYPE$1 == (struct $8FBSYMBOL*)0u ) goto label$564;
				{
					fb$result$1 = (*(int32*)((uint8*)SUBTYPE$1 + 120) & 15728640) >> (20 & 31);
				}
				label$564:;
				label$563:;
			}
			goto label$556;
			label$561:;
			{
				int32 TMP$124$4;
				if( (DTYPE$1 & 480) == 0 ) goto label$566;
				TMP$124$4 = 24;
				goto label$571;
				label$566:;
				TMP$124$4 = DTYPE$1 & 31;
				label$571:;
				if( *(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$124$4 * 28)) != 0 ) goto label$568;
				{
					if( (DTYPE$1 & 480) == 0 ) goto label$570;
					{
						fb$result$1 = 1;
					}
					label$570:;
					label$569:;
				}
				label$568:;
				label$567:;
			}
			label$565:;
			label$556:;
		}
	}
	label$555:;
	label$554:;
	label$553:;
	return fb$result$1;
}

FBSTRING* SYMBTYPETOSTR( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LENGTH$1, int32 IS_FIXLENSTR$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$572:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	if( DTYPE$1 != -2147483648u ) goto label$575;
	{
		fb_StrDelete( (FBSTRING*)&S$1 );
		goto label$573;
	}
	label$575:;
	label$574:;
	if( LENGTH$1 > 0ll ) goto label$577;
	{
		int64 vr$3 = SYMBCALCLEN( DTYPE$1, SUBTYPE$1 );
		LENGTH$1 = vr$3;
	}
	label$577:;
	label$576:;
	int32 PTRCOUNT$1;
	PTRCOUNT$1 = (DTYPE$1 & 480) >> (5 & 31);
	int32 DTYPEONLY$1;
	DTYPEONLY$1 = DTYPE$1 & 31;
	if( (DTYPE$1 & (1 << ((PTRCOUNT$1 + 9) & 31))) == 0 ) goto label$579;
	{
		fb_StrAssign( (void*)&S$1, -1, (void*)"const ", 7, 0 );
	}
	goto label$578;
	label$579:;
	{
		fb_StrAssign( (void*)&S$1, -1, (void*)"", 1, 0 );
	}
	label$578:;
	{
		uint32 TMP$126$2;
		TMP$126$2 = (uint32)DTYPEONLY$1;
		goto label$581;
		label$582:;
		{
			FBSTRING TMP$127$3;
			FBSTRING* vr$12 = HGETNAMESPACEPREFIX( SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$12, -1, 0 );
			__builtin_memset( &TMP$127$3, 0, 12 );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$127$3, (void*)&S$1, -1, *(void**)((uint8*)SUBTYPE$1 + 16), 0 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$18, -1, 0 );
		}
		goto label$580;
		label$583:;
		{
			FBSTRING TMP$128$3;
			__builtin_memset( &TMP$128$3, 0, 12 );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$128$3, (void*)&S$1, -1, *(void**)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 28)) + 24), 0 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$24, -1, 0 );
			if( (IS_FIXLENSTR$1 | -(LENGTH$1 != (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 28)) + 4))) == 0 ) goto label$585;
			{
				{
					if( DTYPEONLY$1 != 18 ) goto label$587;
					label$588:;
					{
						LENGTH$1 = LENGTH$1 + -1ll;
					}
					goto label$586;
					label$587:;
					if( DTYPEONLY$1 != 7 ) goto label$589;
					label$590:;
					{
						int64 vr$32 = __divdi3( LENGTH$1, (int64)*(int32*)((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 200) );
						LENGTH$1 = vr$32;
					}
					label$589:;
					label$586:;
				}
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)" * ", 4, 0 );
				FBSTRING* vr$34 = fb_LongintToStr( LENGTH$1 );
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$34, -1, 0 );
			}
			label$585:;
			label$584:;
		}
		goto label$580;
		label$591:;
		{
			if( PTRCOUNT$1 <= 0 ) goto label$593;
			{
				PTRCOUNT$1 = PTRCOUNT$1 + -1;
			}
			label$593:;
			label$592:;
			if( PTRCOUNT$1 <= 0 ) goto label$595;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)"typeof(", 8, 0 );
			}
			label$595:;
			label$594:;
			FBSTRING* vr$38 = SYMBPROCPTRTOSTR( SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)vr$38, -1, 0 );
			if( PTRCOUNT$1 <= 0 ) goto label$597;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)")", 2, 0 );
			}
			label$597:;
			label$596:;
		}
		goto label$580;
		label$598:;
		{
			FBSTRING TMP$132$3;
			__builtin_memset( &TMP$132$3, 0, 12 );
			FBSTRING* vr$45 = fb_StrConcat( &TMP$132$3, (void*)&S$1, -1, *(void**)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 28)) + 24), 0 );
			fb_StrAssign( (void*)&S$1, -1, (void*)vr$45, -1, 0 );
		}
		goto label$580;
		label$581:;
		static const void* tmp$135[20] = {
			&&label$583,
			&&label$598,
			&&label$598,
			&&label$583,
			&&label$598,
			&&label$598,
			&&label$582,
			&&label$598,
			&&label$598,
			&&label$598,
			&&label$598,
			&&label$598,
			&&label$598,
			&&label$598,
			&&label$583,
			&&label$598,
			&&label$582,
			&&label$598,
			&&label$591,
			&&label$582,
		};
		if( (TMP$126$2 - 4u) > 19u ) goto label$598;
		goto *tmp$135[TMP$126$2 - 4u];
		label$580:;
	}
	{
		int32 I$2;
		I$2 = PTRCOUNT$1 + -1;
		goto label$599;
		label$602:;
		{
			if( (DTYPE$1 & (1 << ((I$2 + 9) & 31))) == 0 ) goto label$604;
			{
				fb_StrConcatAssign( (void*)&S$1, -1, (void*)" const", 7, 0 );
			}
			label$604:;
			label$603:;
			fb_StrConcatAssign( (void*)&S$1, -1, (void*)" ptr", 5, 0 );
		}
		label$600:;
		I$2 = I$2 + -1;
		label$599:;
		if( I$2 >= 0 ) goto label$602;
		label$601:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$573:;
	FBSTRING* vr$58 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$58;
}

int32 SYMBGETDEFTYPE( uint8* SYMBOL$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$605:;
	int32 C$1;
	int32 I$1;
	C$1 = (int32)*(uint8*)SYMBOL$1;
	if( (-((uint32)C$1 >= 97u) & -((uint32)C$1 <= 122u)) == 0 ) goto label$608;
	{
		C$1 = (int32)((uint32)C$1 + 4294967264u);
	}
	label$608:;
	label$607:;
	I$1 = (int32)((uint32)C$1 + 4294967231u);
	if( (-(I$1 < 0) | -(I$1 > 30)) == 0 ) goto label$610;
	{
		if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$612;
		{
			fb$result$1 = 15;
		}
		goto label$611;
		label$612:;
		{
			fb$result$1 = 8;
		}
		label$611:;
	}
	goto label$609;
	label$610:;
	{
		fb$result$1 = *(int32*)((int32)(int32*)DEFTYPETB$ + (I$1 << (2 & 31)));
	}
	label$609:;
	label$606:;
	return fb$result$1;
}

void SYMBSETDEFTYPE( int32 ICHAR$1, int32 ECHAR$1, int32 DTYPE$1 )
{
	label$613:;
	int32 I$1;
	if( (uint32)ICHAR$1 >= 65u ) goto label$616;
	{
		ICHAR$1 = 65;
	}
	goto label$615;
	label$616:;
	if( (uint32)ICHAR$1 <= 95u ) goto label$617;
	{
		ICHAR$1 = 95;
	}
	label$617:;
	label$615:;
	if( (uint32)ECHAR$1 >= 65u ) goto label$619;
	{
		ECHAR$1 = 65;
	}
	goto label$618;
	label$619:;
	if( (uint32)ECHAR$1 <= 95u ) goto label$620;
	{
		ECHAR$1 = 95;
	}
	label$620:;
	label$618:;
	if( ICHAR$1 <= ECHAR$1 ) goto label$622;
	{
		{
			int32 TMP$138$3;
			TMP$138$3 = ICHAR$1;
			ICHAR$1 = ECHAR$1;
			ECHAR$1 = TMP$138$3;
		}
	}
	label$622:;
	label$621:;
	{
		I$1 = ICHAR$1;
		int32 TMP$139$2;
		TMP$139$2 = ECHAR$1;
		goto label$623;
		label$626:;
		{
			*(int32*)((int32)(int32*)DEFTYPETB$ + ((int32)((uint32)I$1 + 4294967231u) << (2 & 31))) = DTYPE$1;
		}
		label$624:;
		I$1 = I$1 + 1;
		label$623:;
		if( I$1 <= TMP$139$2 ) goto label$626;
		label$625:;
	}
	label$614:;
}

void SYMBRECALCLEN( struct $8FBSYMBOL* SYM$1 )
{
	label$627:;
	if( *(int32*)SYM$1 != 4 ) goto label$630;
	{
		int64 vr$4 = SYMBCALCPARAMLEN( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32), *($12FB_PARAMMODE*)((uint8*)SYM$1 + 56) );
		*(int64*)((uint8*)SYM$1 + 40) = vr$4;
	}
	goto label$629;
	label$630:;
	{
		int64 vr$8 = SYMBCALCLEN( *(int32*)((uint8*)SYM$1 + 28), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) );
		*(int64*)((uint8*)SYM$1 + 40) = vr$8;
	}
	label$629:;
	label$628:;
}

void SYMBSETTYPE( struct $8FBSYMBOL* SYM$1, int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$631:;
	*($11FB_DATATYPE*)((uint8*)SYM$1 + 28) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 32) = SUBTYPE$1;
	SYMBRECALCLEN( SYM$1 );
	if( *(int32*)SYM$1 != 3 ) goto label$634;
	{
		SYMBPROCRECALCREALTYPE( SYM$1 );
	}
	label$634:;
	label$633:;
	if( (DTYPE$1 & 31) != 23 ) goto label$636;
	{
		SYMBADDTOFWDREF( SUBTYPE$1, SYM$1 );
	}
	label$636:;
	label$635:;
	label$632:;
}

int64 SYMBCALCLEN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int32 TMP$140$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$637:;
	if( (DTYPE$1 & 480) == 0 ) goto label$639;
	TMP$140$1 = 24;
	goto label$646;
	label$639:;
	TMP$140$1 = DTYPE$1 & 31;
	label$646:;
	DTYPE$1 = TMP$140$1;
	{
		uint32 TMP$141$2;
		TMP$141$2 = (uint32)DTYPE$1;
		goto label$641;
		label$642:;
		{
			fb$result$1 = 0ll;
		}
		goto label$640;
		label$643:;
		{
			fb$result$1 = *(int64*)((uint8*)SUBTYPE$1 + 40);
		}
		goto label$640;
		label$644:;
		{
			int32 TMP$142$3;
			if( (DTYPE$1 & 480) == 0 ) goto label$645;
			TMP$142$3 = 24;
			goto label$647;
			label$645:;
			TMP$142$3 = DTYPE$1 & 31;
			label$647:;
			fb$result$1 = (int64)*(int32*)(((int32)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$142$3 * 28)) + 4);
		}
		goto label$640;
		label$641:;
		static const void* tmp$143[3] = {
			&&label$642,
			&&label$644,
			&&label$643,
		};
		if( (TMP$141$2 - 18u) > 2u ) goto label$644;
		goto *tmp$143[TMP$141$2 - 18u];
		label$640:;
	}
	label$638:;
	return fb$result$1;
}

int64 SYMBCALCDEREFLEN( int32 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8 );
	label$648:;
	int64 LENGTH$1;
	int64 vr$11 = SYMBCALCLEN( (((DTYPE$1 & 31) | ((DTYPE$1 & 480) + -32)) | (((DTYPE$1 & 261632) >> (1 & 31)) & 261632)) | (DTYPE$1 & 32505856), SUBTYPE$1 );
	LENGTH$1 = vr$11;
	if( LENGTH$1 != 0ll ) goto label$651;
	{
		if( DTYPE$1 != 32 ) goto label$653;
		{
			LENGTH$1 = 1ll;
		}
		label$653:;
		label$652:;
	}
	label$651:;
	label$650:;
	fb$result$1 = LENGTH$1;
	label$649:;
	return fb$result$1;
}

int32 SYMBISPARENTNAMESPACE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* START_NS$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$654:;
	struct $8FBSYMBOL* CONTEXT$1;
	if( (DTYPE$1 & 511) == 20 ) goto label$657;
	{
		fb$result$1 = 0;
		goto label$655;
	}
	label$657:;
	label$656:;
	if( SUBTYPE$1 != (struct $8FBSYMBOL*)0u ) goto label$659;
	{
		fb$result$1 = 0;
		goto label$655;
	}
	label$659:;
	label$658:;
	if( START_NS$1 == (struct $8FBSYMBOL*)0u ) goto label$661;
	{
		CONTEXT$1 = START_NS$1;
	}
	goto label$660;
	label$661:;
	{
		CONTEXT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
	}
	label$660:;
	if( (*(int32*)((uint8*)SUBTYPE$1 + 120) & 262144) != 0 ) goto label$663;
	{
		fb$result$1 = -(CONTEXT$1 == SUBTYPE$1);
		goto label$655;
	}
	label$663:;
	label$662:;
	label$664:;
	if( CONTEXT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$665;
	{
		if( *(int32*)CONTEXT$1 != 10 ) goto label$667;
		{
			if( CONTEXT$1 != SUBTYPE$1 ) goto label$669;
			{
				fb$result$1 = -1;
				goto label$655;
			}
			label$669:;
			label$668:;
		}
		label$667:;
		label$666:;
		CONTEXT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)CONTEXT$1 + 164);
	}
	goto label$664;
	label$665:;
	fb$result$1 = 0;
	goto label$655;
	label$655:;
	return fb$result$1;
}

int32 SYMBCHECKACCESS( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$682:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* CONTEXT$1;
	if( (*(int32*)((uint8*)SYM$1 + 4) & 6291456) != 0 ) goto label$685;
	{
		fb$result$1 = -1;
		goto label$683;
	}
	label$685:;
	label$684:;
	PARENT$1 = SYM$1;
	label$686:;
	{
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 144);
	}
	label$688:;
	if( *(int32*)PARENT$1 != 10 ) goto label$686;
	label$687:;
	int32 vr$6 = HSYMBCHECKACCESSPARENT( SYM$1, PARENT$1 );
	fb$result$1 = vr$6;
	label$683:;
	return fb$result$1;
}

int32 SYMBCHECKACCESSSTRUCT( struct $8FBSYMBOL* SYM$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$689:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* CONTEXT$1;
	PARENT$1 = SYM$1;
	label$691:;
	{
		if( (*(int32*)((uint8*)PARENT$1 + 4) & 6291456) == 0 ) goto label$695;
		{
			goto label$692;
		}
		label$695:;
		label$694:;
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 144);
		if( PARENT$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$697;
		{
			fb$result$1 = -1;
			goto label$690;
		}
		label$697:;
		label$696:;
	}
	label$693:;
	goto label$691;
	label$692:;
	PARENT$1 = SYM$1;
	label$698:;
	{
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 144);
	}
	label$700:;
	if( *(int32*)PARENT$1 != 10 ) goto label$698;
	label$699:;
	label$701:;
	{
		int32 vr$9 = HSYMBCHECKACCESSPARENT( SYM$1, PARENT$1 );
		if( vr$9 == 0 ) goto label$705;
		{
			fb$result$1 = -1;
			goto label$690;
		}
		label$705:;
		label$704:;
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 144);
	}
	label$703:;
	if( PARENT$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$701;
	label$702:;
	fb$result$1 = 0;
	label$690:;
	return fb$result$1;
}

int32 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int32* MATCHES$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$706:;
	int32 I$1;
	int32 LCOUNT$1;
	int32 RCOUNT$1;
	int32 RMATCHES$1;
	int32 LCONST$1;
	int32 RCONST$1;
	fb$result$1 = 0;
	*MATCHES$1 = 0;
	if( ((LDTYPE$1 & 261632) | (RDTYPE$1 & 261632)) != 0 ) goto label$709;
	{
		fb$result$1 = -1;
		goto label$707;
	}
	label$709:;
	label$708:;
	if( MODE$1 != 4 ) goto label$711;
	{
		fb$result$1 = -1;
		goto label$707;
	}
	label$711:;
	label$710:;
	LCOUNT$1 = (LDTYPE$1 & 480) >> (5 & 31);
	RCOUNT$1 = (RDTYPE$1 & 480) >> (5 & 31);
	I$1 = 0;
	RMATCHES$1 = RCOUNT$1;
	{
		if( MODE$1 != 1 ) goto label$713;
		label$714:;
		{
			I$1 = 1;
			*MATCHES$1 = RCOUNT$1 + 1;
			if( (LDTYPE$1 & 512) == 0 ) goto label$716;
			{
				*MATCHES$1 = *MATCHES$1 + 1;
			}
			label$716:;
			label$715:;
		}
		goto label$712;
		label$713:;
		if( MODE$1 != 0 ) goto label$717;
		label$718:;
		{
			I$1 = 1;
		}
		goto label$712;
		label$717:;
		{
			RMATCHES$1 = RMATCHES$1 + 1;
		}
		label$719:;
		label$712:;
	}
	label$720:;
	if( (-(I$1 <= LCOUNT$1) & -(I$1 <= RCOUNT$1)) == 0 ) goto label$721;
	{
		LCONST$1 = -((LDTYPE$1 & (1 << ((I$1 + 9) & 31))) != 0);
		RCONST$1 = -((RDTYPE$1 & (1 << ((I$1 + 9) & 31))) != 0);
		if( LCONST$1 != RCONST$1 ) goto label$723;
		{
			if( *MATCHES$1 >= RMATCHES$1 ) goto label$725;
			{
				*MATCHES$1 = RMATCHES$1;
			}
			label$725:;
			label$724:;
		}
		label$723:;
		label$722:;
		if( (RCONST$1 & ~LCONST$1) == 0 ) goto label$727;
		{
			goto label$707;
		}
		label$727:;
		label$726:;
		RMATCHES$1 = RMATCHES$1 + -1;
		I$1 = I$1 + 1;
	}
	goto label$720;
	label$721:;
	fb$result$1 = -1;
	label$707:;
	return fb$result$1;
}

int32 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int32* MATCHES$1, $13FB_WARNINGMSG* WRNMSG$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$743:;
	int32 RET$1;
	int32 vr$1 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, MODE$1, MATCHES$1 );
	RET$1 = vr$1;
	if( RET$1 == 0 ) goto label$746;
	{
		if( (-((LDTYPE$1 & 31) == 22) & -((RDTYPE$1 & 31) == 22)) == 0 ) goto label$748;
		{
			int32 vr$7 = HSYMBCHECKCONSTASSIGNFUNCPTR( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, MODE$1, MATCHES$1, WRNMSG$1 );
			RET$1 = RET$1 & vr$7;
		}
		label$748:;
		label$747:;
	}
	label$746:;
	label$745:;
	fb$result$1 = RET$1;
	label$744:;
	return fb$result$1;
}

void SYMBFOREACHGLOBAL( int32 SYMCLASS$1, tmp$41 CALLBACK$1 )
{
	label$762:;
	HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98412), SYMCLASS$1, CALLBACK$1 );
	label$763:;
}

FBSTRING* SYMBDUMPPRETTYTOSTR( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$169$1;
	FBSTRING TMP$170$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$772:;
	__builtin_memset( &TMP$169$1, 0, 12 );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$169$1, *(void**)(((int32)(uint8**)CLASSNAMESPRETTY$ + (*(int32*)SYM$1 << (2 & 31))) + -4), 0, (void*)" ", 2 );
	__builtin_memset( &TMP$170$1, 0, 12 );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$170$1, (void*)vr$6, -1, *(void**)((uint8*)SYM$1 + 16), 0 );
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)vr$9, -1, 0 );
	label$773:;
	FBSTRING* vr$12 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$12;
}

__attribute__(( constructor )) static void fb_ctor__symb( void )
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

static void HINITDEFTYPETB( void )
{
	label$14:;
	int32 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 4 );
	int32 I$1;
	__builtin_memset( &I$1, 0, 4 );
	if( *(int32*)((uint8*)&ENV$ + 136) != 3 ) goto label$17;
	{
		DTYPE$1 = 15;
	}
	goto label$16;
	label$17:;
	{
		DTYPE$1 = 8;
	}
	label$16:;
	{
		I$1 = 0;
		label$21:;
		{
			*(int32*)((int32)(int32*)DEFTYPETB$ + (I$1 << (2 & 31))) = DTYPE$1;
		}
		label$19:;
		I$1 = I$1 + 1;
		label$18:;
		if( I$1 <= 30 ) goto label$21;
		label$20:;
	}
	label$15:;
}

static struct $10FBSYMCHAIN* CHAINPOOLNEXT( void )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$230:;
	*(int32*)((uint8*)&SYMB$ + 98348) = *(int32*)((uint8*)&SYMB$ + 98348) + 1;
	if( *(int32*)((uint8*)&SYMB$ + 98348) < 4096 ) goto label$233;
	{
		*(int32*)((uint8*)&SYMB$ + 98348) = 0;
	}
	label$233:;
	label$232:;
	fb$result$1 = (struct $10FBSYMCHAIN*)((uint8*)((uint8*)&SYMB$ + (*(int32*)((uint8*)&SYMB$ + 98348) * 24)) + 44);
	goto label$231;
	label$231:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HLOOKUPIMPORTLIST( struct $8FBSYMBOL* NS$1, uint8* ID$1, uint32 INDEX$1, $16FB_SYMBLOOKUPOPT OPTIONS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$236:;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMCHAIN* HEAD$1;
	HEAD$1 = (struct $10FBSYMCHAIN*)0u;
	struct $10FBSYMCHAIN* TAIL$1;
	TAIL$1 = (struct $10FBSYMCHAIN*)0u;
	struct $10FBSYMCHAIN* CHAIN_$1;
	int32 ADD$1;
	struct $8FBSYMBOL* IMP_$1;
	IMP_$1 = *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92);
	label$238:;
	if( IMP_$1 == (struct $8FBSYMBOL*)0u ) goto label$239;
	{
		struct $8FBSYMBOL* SYM$2;
		void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 56) + 72), ID$1, INDEX$1 );
		SYM$2 = (struct $8FBSYMBOL*)vr$6;
		if( SYM$2 == (struct $8FBSYMBOL*)0u ) goto label$241;
		{
			struct $10FBSYMCHAIN* vr$7 = CHAINPOOLNEXT(  );
			CHAIN_$1 = vr$7;
			ADD$1 = 0;
			if( (OPTIONS$1 & 1) == 0 ) goto label$243;
			{
				PARENT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$2 + 164);
				{
					int32 TMP$110$5;
					TMP$110$5 = *(int32*)((uint8*)PARENT$1 + 28) & 511;
					if( TMP$110$5 != 20 ) goto label$245;
					label$246:;
					{
						int32 vr$13 = SYMBGETUDTBASELEVEL( NS$1, PARENT$1 );
						if( vr$13 <= 0 ) goto label$248;
						{
							ADD$1 = -1;
						}
						label$248:;
						label$247:;
					}
					goto label$244;
					label$245:;
					if( TMP$110$5 != 10 ) goto label$249;
					label$250:;
					{
						ADD$1 = -1;
					}
					label$249:;
					label$244:;
				}
			}
			goto label$242;
			label$243:;
			{
				ADD$1 = -1;
			}
			label$242:;
			if( ADD$1 != -1 ) goto label$252;
			{
				*(struct $8FBSYMBOL**)CHAIN_$1 = SYM$2;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4) = (struct $10FBSYMCHAIN*)0u;
				*(int32*)((uint8*)CHAIN_$1 + 8) = -1;
				if( HEAD$1 != (struct $10FBSYMCHAIN*)0u ) goto label$254;
				{
					HEAD$1 = CHAIN_$1;
				}
				goto label$253;
				label$254:;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)TAIL$1 + 4) = CHAIN_$1;
				}
				label$253:;
				TAIL$1 = CHAIN_$1;
			}
			label$252:;
			label$251:;
		}
		label$241:;
		label$240:;
		IMP_$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 64);
	}
	goto label$238;
	label$239:;
	fb$result$1 = HEAD$1;
	goto label$237;
	label$237:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HSYMBLOOKUPNS( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1, struct $8FBHASHTB* HASHTB$1, uint32 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$255:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* FIRST_ANCESTOR$1;
	FIRST_ANCESTOR$1 = (struct $8FBSYMBOL*)0u;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* IMP_CHAIN$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40);
	label$257:;
	{
		void* vr$3 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$3;
		label$260:;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$261;
		{
			if( *(struct $8FBSYMBOL**)HASHTB$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$263;
			{
				struct $10FBSYMCHAIN* vr$6 = SYMBNEWCHAINPOOL( SYM$1 );
				fb$result$1 = vr$6;
				goto label$256;
			}
			goto label$262;
			label$263:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$265;
				{
					struct $10FBSYMCHAIN* vr$8 = SYMBNEWCHAINPOOL( SYM$1 );
					fb$result$1 = vr$8;
					goto label$256;
				}
				goto label$264;
				label$265:;
				{
					if( FIRST_ANCESTOR$1 != (struct $8FBSYMBOL*)0u ) goto label$267;
					{
						FIRST_ANCESTOR$1 = SYM$1;
					}
					label$267:;
					label$266:;
				}
				label$264:;
			}
			label$262:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
		}
		goto label$260;
		label$261:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	label$259:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0u ) goto label$257;
	label$258:;
	void* vr$12 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98572), (uint8*)ID$1, INDEX$1 );
	IMP_CHAIN$1 = (struct $10FBSYMCHAIN*)vr$12;
	if( IMP_CHAIN$1 == (struct $10FBSYMCHAIN*)0u ) goto label$269;
	{
		if( FIRST_ANCESTOR$1 == (struct $8FBSYMBOL*)0u ) goto label$271;
		{
			struct $10FBSYMCHAIN* vr$13 = SYMBNEWCHAINPOOL( FIRST_ANCESTOR$1 );
			CHAIN_$1 = vr$13;
			*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4) = IMP_CHAIN$1;
			fb$result$1 = CHAIN_$1;
			goto label$256;
		}
		label$271:;
		label$270:;
		fb$result$1 = IMP_CHAIN$1;
		goto label$256;
	}
	label$269:;
	label$268:;
	if( FIRST_ANCESTOR$1 == (struct $8FBSYMBOL*)0u ) goto label$273;
	{
		struct $10FBSYMCHAIN* vr$15 = SYMBNEWCHAINPOOL( FIRST_ANCESTOR$1 );
		fb$result$1 = vr$15;
		goto label$256;
	}
	label$273:;
	label$272:;
	fb$result$1 = (struct $10FBSYMCHAIN*)0u;
	goto label$256;
	label$256:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HSYMBLOOKUPTYPENS( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1, struct $8FBHASHTB* HASHTB$1, uint32 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$274:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* NS$1;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* IMP_CHAIN$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40);
	label$276:;
	{
		void* vr$3 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$3;
		label$279:;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$280;
		{
			if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$282;
			{
				struct $10FBSYMCHAIN* vr$6 = SYMBNEWCHAINPOOL( SYM$1 );
				fb$result$1 = vr$6;
				goto label$275;
			}
			label$282:;
			label$281:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
		}
		goto label$279;
		label$280:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	label$278:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0u ) goto label$276;
	label$277:;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
	void* vr$11 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)NS$1 + 72), (uint8*)ID$1, INDEX$1 );
	SYM$1 = (struct $8FBSYMBOL*)vr$11;
	label$283:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$284;
	{
		if( (*(int32*)((uint8*)SYM$1 + 4) & 128) == 0 ) goto label$286;
		{
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
		}
		goto label$285;
		label$286:;
		{
			goto label$284;
		}
		label$285:;
	}
	goto label$283;
	label$284:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$288;
	{
		struct $10FBSYMCHAIN* vr$15 = SYMBNEWCHAINPOOL( SYM$1 );
		CHAIN_$1 = vr$15;
		fb$result$1 = CHAIN_$1;
		goto label$275;
	}
	label$288:;
	label$287:;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
	if( (-(*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) != (struct $13FBNAMESPC_EXT*)0u) & -(*(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 92) != (struct $8FBSYMBOL*)0u)) == 0 ) goto label$290;
	{
		struct $10FBSYMCHAIN* vr$22 = HLOOKUPIMPORTLIST( NS$1, (uint8*)ID$1, INDEX$1, 0 );
		CHAIN_$1 = vr$22;
		SYM$1 = (struct $8FBSYMBOL*)0u;
		label$291:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0u ) goto label$292;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$293:;
			if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$294;
			{
				PARENT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 164);
				{
					int32 TMP$111$5;
					TMP$111$5 = *(int32*)((uint8*)PARENT$1 + 28) & 511;
					if( TMP$111$5 != 20 ) goto label$296;
					label$297:;
					{
						int32 vr$28 = SYMBGETUDTBASELEVEL( NS$1, PARENT$1 );
						if( vr$28 <= 0 ) goto label$299;
						{
							struct $10FBSYMCHAIN* vr$30 = SYMBNEWCHAINPOOL( *(struct $8FBSYMBOL**)CHAIN_$1 );
							fb$result$1 = vr$30;
							goto label$275;
						}
						label$299:;
						label$298:;
					}
					goto label$295;
					label$296:;
					if( TMP$111$5 != 10 ) goto label$300;
					label$301:;
					{
					}
					label$300:;
					label$295:;
				}
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 160);
			}
			goto label$293;
			label$294:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
		}
		goto label$291;
		label$292:;
	}
	label$290:;
	label$289:;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 40);
	label$302:;
	{
		void* vr$35 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 4), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$35;
		if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$306;
		{
			struct $10FBSYMCHAIN* vr$36 = SYMBNEWCHAINPOOL( SYM$1 );
			fb$result$1 = vr$36;
			goto label$275;
		}
		label$306:;
		label$305:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 16);
	}
	label$304:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0u ) goto label$302;
	label$303:;
	void* vr$39 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98572), (uint8*)ID$1, INDEX$1 );
	IMP_CHAIN$1 = (struct $10FBSYMCHAIN*)vr$39;
	fb$result$1 = IMP_CHAIN$1;
	goto label$275;
	label$275:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HLOOKUPIMPORTHASH( struct $8FBSYMBOL* NS$1, uint8* ID$1, uint32 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$324:;
	struct $10FBSYMCHAIN* CHAIN_HEAD$1;
	void* vr$2 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 98572), ID$1, INDEX$1 );
	CHAIN_HEAD$1 = (struct $10FBSYMCHAIN*)vr$2;
	if( CHAIN_HEAD$1 != (struct $10FBSYMCHAIN*)0u ) goto label$327;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0u;
		goto label$325;
	}
	label$327:;
	label$326:;
	struct $10FBSYMCHAIN* HEAD$1;
	HEAD$1 = (struct $10FBSYMCHAIN*)0u;
	struct $10FBSYMCHAIN* TAIL$1;
	TAIL$1 = (struct $10FBSYMCHAIN*)0u;
	struct $10FBSYMCHAIN* CHAIN_$1;
	CHAIN_$1 = CHAIN_HEAD$1;
	label$328:;
	{
		struct $8FBSYMBOL* EXP_$2;
		EXP_$2 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 144) + 92) + 8);
		label$331:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)EXP_$2 + 68) != NS$1 ) goto label$335;
			{
				struct $10FBSYMCHAIN* NODE$4;
				struct $10FBSYMCHAIN* vr$9 = CHAINPOOLNEXT(  );
				NODE$4 = vr$9;
				*(struct $8FBSYMBOL**)NODE$4 = *(struct $8FBSYMBOL**)CHAIN_$1;
				*(struct $10FBSYMCHAIN**)((uint8*)NODE$4 + 4) = (struct $10FBSYMCHAIN*)0u;
				*(int32*)((uint8*)NODE$4 + 8) = -1;
				if( HEAD$1 != (struct $10FBSYMCHAIN*)0u ) goto label$337;
				{
					HEAD$1 = NODE$4;
				}
				goto label$336;
				label$337:;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)TAIL$1 + 4) = NODE$4;
				}
				label$336:;
				TAIL$1 = NODE$4;
			}
			label$335:;
			label$334:;
			EXP_$2 = *(struct $8FBSYMBOL**)((uint8*)EXP_$2 + 76);
		}
		label$333:;
		if( EXP_$2 != (struct $8FBSYMBOL*)0u ) goto label$331;
		label$332:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 4);
	}
	label$330:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0u ) goto label$328;
	label$329:;
	fb$result$1 = HEAD$1;
	goto label$325;
	label$325:;
	return fb$result$1;
}

static int32 HSYMBCHECKACCESSPARENT( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PARENT$1 )
{
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$670:;
	struct $8FBSYMBOL* CONTEXT$1;
	CONTEXT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 98536);
	label$672:;
	if( CONTEXT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$673;
	{
		if( *(int32*)CONTEXT$1 != 10 ) goto label$675;
		{
			if( CONTEXT$1 != PARENT$1 ) goto label$677;
			{
				fb$result$1 = -1;
				goto label$671;
			}
			label$677:;
			label$676:;
			if( (*(int32*)((uint8*)SYM$1 + 4) & 4194304) == 0 ) goto label$679;
			{
				int32 vr$5 = SYMBGETUDTBASELEVEL( CONTEXT$1, PARENT$1 );
				if( vr$5 <= 0 ) goto label$681;
				{
					fb$result$1 = -1;
					goto label$671;
				}
				label$681:;
				label$680:;
			}
			label$679:;
			label$678:;
		}
		label$675:;
		label$674:;
		CONTEXT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)CONTEXT$1 + 144);
	}
	goto label$672;
	label$673:;
	label$671:;
	return fb$result$1;
}

static int32 HSYMBCHECKCONSTASSIGNFUNCPTR( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int32* MATCHES$1, $13FB_WARNINGMSG* WRNMSG$1 )
{
	$12FB_PARAMMODE TMP$144$1;
	int32 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 4 );
	label$728:;
	fb$result$1 = 0;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	if( (*(int32*)((uint8*)LSUBTYPE$1 + 8) & 2048) == 0 ) goto label$730;
	TMP$144$1 = 2;
	goto label$774;
	label$730:;
	TMP$144$1 = 1;
	label$774:;
	$22FB_OVLPROC_MATCH_SCORE vr$7 = TYPECALCMATCH( *(int32*)((uint8*)LSUBTYPE$1 + 28), *(struct $8FBSYMBOL**)((uint8*)LSUBTYPE$1 + 32), TMP$144$1, *(int32*)((uint8*)RSUBTYPE$1 + 28), *(struct $8FBSYMBOL**)((uint8*)RSUBTYPE$1 + 32) );
	MATCH$1 = vr$7;
	if( MATCH$1 != 0 ) goto label$732;
	{
		*WRNMSG$1 = 41;
		goto label$729;
	}
	label$732:;
	label$731:;
	if( -((*(int32*)((uint8*)LSUBTYPE$1 + 8) & 2048) != 0) == -((*(int32*)((uint8*)RSUBTYPE$1 + 8) & 2048) != 0) ) goto label$734;
	{
		*WRNMSG$1 = 28;
		goto label$729;
	}
	label$734:;
	label$733:;
	int32 vr$16 = SYMBAREPROCMODESEQUAL( LSUBTYPE$1, RSUBTYPE$1 );
	if( vr$16 != 0 ) goto label$736;
	{
		*WRNMSG$1 = 42;
		goto label$729;
	}
	label$736:;
	label$735:;
	if( (int32)*(int16*)((uint8*)LSUBTYPE$1 + 68) == (int32)*(int16*)((uint8*)RSUBTYPE$1 + 68) ) goto label$738;
	{
		*WRNMSG$1 = 43;
		goto label$729;
	}
	label$738:;
	label$737:;
	struct $8FBSYMBOL* LPARAM$1;
	LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LSUBTYPE$1 + 76);
	struct $8FBSYMBOL* RPARAM$1;
	RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RSUBTYPE$1 + 76);
	label$739:;
	if( LPARAM$1 == (struct $8FBSYMBOL*)0u ) goto label$740;
	{
		int32 TMP$145$2;
		$11FB_DATATYPE R$2;
		R$2 = *($11FB_DATATYPE*)((uint8*)LPARAM$1 + 28);
		$11FB_DATATYPE L$2;
		L$2 = *($11FB_DATATYPE*)((uint8*)RPARAM$1 + 28);
		struct $8FBSYMBOL* RS$2;
		RS$2 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 32);
		struct $8FBSYMBOL* LS$2;
		LS$2 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 32);
		$12FB_PARAMMODE M$2;
		M$2 = *($12FB_PARAMMODE*)((uint8*)LPARAM$1 + 56);
		TMP$145$2 = 0;
		int32 vr$31 = SYMBCHECKCONSTASSIGN( L$2, R$2, LS$2, RS$2, M$2, &TMP$145$2, WRNMSG$1 );
		if( vr$31 != 0 ) goto label$742;
		{
			goto label$729;
		}
		label$742:;
		label$741:;
		LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 176);
		RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 176);
	}
	goto label$739;
	label$740:;
	fb$result$1 = -1;
	label$729:;
	return fb$result$1;
}

static void HFOREACHGLOBAL( struct $8FBSYMBOL* SYM$1, int32 SYMCLASS$1, tmp$41 CALLBACK$1 )
{
	label$749:;
	label$751:;
	if( SYM$1 == (struct $8FBSYMBOL*)0u ) goto label$752;
	{
		{
			$12FB_SYMBCLASS TMP$146$3;
			TMP$146$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$146$3 != 8 ) goto label$754;
			label$755:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 60), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$754:;
			if( TMP$146$3 != 10 ) goto label$756;
			label$757:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 60), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$756:;
			if( TMP$146$3 != 15 ) goto label$758;
			label$759:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$758:;
			if( TMP$146$3 != SYMCLASS$1 ) goto label$760;
			label$761:;
			{
				(CALLBACK$1)( SYM$1 );
			}
			label$760:;
			label$753:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 176);
	}
	goto label$751;
	label$752:;
	label$750:;
}

static FBSTRING* HGETNAMESPACEPREFIX( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 12 );
	label$764:;
	struct $8FBSYMBOL* NS$1;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 12 );
	if( *(struct $8FBHASHTB**)((uint8*)SYM$1 + 144) != (struct $8FBHASHTB*)0u ) goto label$767;
	{
		fb_StrInit( (void*)&fb$result$1, -1, (void*)"<no hash tb>", 13, 0 );
		fb_StrDelete( (FBSTRING*)&S$1 );
		goto label$765;
	}
	label$767:;
	label$766:;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 144);
	label$768:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 98352) ) goto label$769;
	{
		FBSTRING TMP$148$2;
		FBSTRING TMP$149$2;
		__builtin_memset( &TMP$148$2, 0, 12 );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$148$2, *(void**)((uint8*)NS$1 + 16), 0, (void*)".", 2 );
		__builtin_memset( &TMP$149$2, 0, 12 );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$149$2, (void*)vr$12, -1, (void*)&S$1, -1 );
		fb_StrAssign( (void*)&S$1, -1, (void*)vr$15, -1, 0 );
		if( *(struct $8FBHASHTB**)((uint8*)NS$1 + 144) != (struct $8FBHASHTB*)0u ) goto label$771;
		{
			goto label$769;
		}
		label$771:;
		label$770:;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 144);
	}
	goto label$768;
	label$769:;
	fb_StrAssign( (void*)&fb$result$1, -1, (void*)&S$1, -1, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$765:;
	FBSTRING* vr$24 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$24;
}
