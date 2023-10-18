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
struct $7TLISTTB;
struct $7TLISTTB {
	struct $7TLISTTB* NEXT;
	void* NODETB;
	int64 NODES;
};
#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
typedef int64 $12FB_SYMBCLASS;
typedef int64 $13FB_SYMBATTRIB;
typedef int64 $13FB_PROCATTRIB;
typedef int64 $12FB_SYMBSTATS;
struct $9FB_SYMBID {
	uint8* NAME;
	uint8* ALIAS;
	uint8* MANGLED;
};
__FB_STATIC_ASSERT( sizeof( struct $9FB_SYMBID ) == 24 );
typedef int64 $11FB_DATATYPE;
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
typedef int64 $10FB_SYMBOPT;
typedef int64 $11FB_MANGLING;
typedef int64 $8FB_TOKEN;
typedef int64 $19FB_CVA_LIST_TYPEDEF;
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
typedef int64 $13FB_WARNINGMSG;
typedef void (*tmp$42)( struct $8FBSYMBOL* );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
typedef int64 $16FB_SYMBLOOKUPOPT;
typedef int64 $22FB_OVLPROC_MATCH_SCORE;
void free( void* );
void* memset( void*, int32, uint64 );
FBSTRING* fb_StrInit( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_StrAllocTempResult( FBSTRING* );
FBSTRING* fb_LongintToStr( int64 );
int64 fb_StrLen( void*, int64 );
static void fb_ctor__symb( void ) __attribute__(( constructor ));
void* XALLOCATE( int32 );
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void HASHINIT( struct $5THASH*, int64, int64 );
void HASHEND( struct $5THASH* );
uint64 HASHHASH( uint8* );
void* HASHLOOKUPEX( struct $5THASH*, uint8*, uint64 );
struct $8HASHITEM* HASHADD( struct $5THASH*, uint8*, void*, uint64 );
void HASHDEL( struct $5THASH*, struct $8HASHITEM*, uint64 );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
void POOLINIT( struct $5TPOOL*, int64, int64, int64 );
void POOLEND( struct $5TPOOL* );
void* POOLNEWITEM( struct $5TPOOL*, int64 );
void POOLDELITEM( struct $5TPOOL*, void* );
void SYMBDATAINIT( void );
struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
int64 SYMBAREPROCMODESEQUAL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBGETDESCTYPEARRAYDTYPE( struct $8FBSYMBOL*, int64*, struct $8FBSYMBOL** );
int64 SYMBGETDESCTYPEDIMENSIONS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDARRAYDESCRIPTORTYPE( int64, int64, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBADDPROCPTRFROMFUNCTION( struct $8FBSYMBOL* );
int64 SYMBCALCPARAMLEN( int64, struct $8FBSYMBOL*, $12FB_PARAMMODE );
void SYMBADDTOFWDREF( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBREMOVEFROMFWDREF( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBDELSYMBOL( struct $8FBSYMBOL*, int64 );
int64 SYMBDELDEFINE( struct $8FBSYMBOL* );
void SYMBDELLABEL( struct $8FBSYMBOL* );
void SYMBDELVAR( struct $8FBSYMBOL*, int64 );
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
int64 SYMBCALCLEN( int64, struct $8FBSYMBOL* );
int64 TYPEHASCTOR( int64, struct $8FBSYMBOL* );
int64 TYPEHASDEFCTOR( int64, struct $8FBSYMBOL* );
int64 TYPEHASDTOR( int64, struct $8FBSYMBOL* );
$22FB_OVLPROC_MATCH_SCORE TYPECALCMATCH( int64, struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
void SYMBHASHLISTADD( struct $8FBHASHTB* );
void SYMBNAMESPACEREMOVE( struct $8FBSYMBOL*, int64 );
int64 SYMBCANDUPLICATE( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
FBSTRING* SYMBPROCPTRTOSTR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONECONST( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONEVAR( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONELABEL( struct $8FBSYMBOL* );
int64 SYMBVARCHECKACCESS( struct $8FBSYMBOL* );
int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64* );
int64 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64*, $13FB_WARNINGMSG* );
int64 SYMBGETUDTBASELEVEL( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBCLONESIMPLESTRUCT( struct $8FBSYMBOL* );
void SYMBPROCRECALCREALTYPE( struct $8FBSYMBOL* );
void HUCASE( uint8*, uint8* );
void SYMBDELGLOBALTB( void );
void SYMBKEYWORDINIT( void );
void SYMBDEFINEINIT( int64 );
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
static struct $10FBSYMCHAIN* HLOOKUPIMPORTLIST( struct $8FBSYMBOL*, uint8*, uint64, $16FB_SYMBLOOKUPOPT );
static struct $10FBSYMCHAIN* HSYMBLOOKUPNS( uint8*, $8FB_TOKEN*, $10FB_TKCLASS*, struct $8FBHASHTB*, uint64 );
static struct $10FBSYMCHAIN* HSYMBLOOKUPTYPENS( uint8*, $8FB_TOKEN*, $10FB_TKCLASS*, struct $8FBHASHTB*, uint64 );
static struct $10FBSYMCHAIN* HLOOKUPIMPORTHASH( struct $8FBSYMBOL*, uint8*, uint64 );
static int64 HSYMBCHECKACCESSPARENT( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
static int64 HSYMBCHECKCONSTASSIGNFUNCPTR( $11FB_DATATYPE, $11FB_DATATYPE, struct $8FBSYMBOL*, struct $8FBSYMBOL*, $12FB_PARAMMODE, int64*, $13FB_WARNINGMSG* );
static void HFOREACHGLOBAL( struct $8FBSYMBOL*, int64, tmp$42 );
struct $12AST_PROC_CTX {
	struct $7ASTNODE* HEAD;
	struct $7ASTNODE* TAIL;
	struct $7ASTNODE* CURR;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_PROC_CTX ) == 24 );
struct $12AST_CALL_CTX {
	struct $5TLIST TMPSTRLIST;
};
__FB_STATIC_ASSERT( sizeof( struct $12AST_CALL_CTX ) == 64 );
struct $16AST_GLOBINST_CTX {
	struct $5TLIST LIST;
	int64 CTORCNT;
	int64 DTORCNT;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_GLOBINST_CTX ) == 80 );
struct $16AST_DATASTMT_CTX {
	struct $8FBSYMBOL* DESC;
	struct $8FBSYMBOL* LASTSYM;
	struct $8FBSYMBOL* FIRSTSYM;
	struct $8FBSYMBOL* LASTLBL;
};
__FB_STATIC_ASSERT( sizeof( struct $16AST_DATASTMT_CTX ) == 32 );
struct $23AST_DTORLIST_SCOPESTACK {
	int64* COOKIES;
	int64 COUNT;
	int64 ROOM;
};
__FB_STATIC_ASSERT( sizeof( struct $23AST_DTORLIST_SCOPESTACK ) == 24 );
struct $6ASTCTX {
	struct $5TLIST ASTTB;
	struct $12AST_PROC_CTX PROC;
	struct $12AST_CALL_CTX CALL;
	struct $16AST_GLOBINST_CTX GLOBINST;
	struct $16AST_DATASTMT_CTX DATA;
	struct $7ASTNODE* CURRBLOCK;
	int64 DOEMIT;
	int64 TYPEINICOUNT;
	int64 BITFIELDCOUNT;
	struct $5TLIST DTORLIST;
	struct $23AST_DTORLIST_SCOPESTACK DTORLISTSCOPES;
	int64 DTORLISTCOOKIES;
	int64 FLUSHDTORLIST;
	struct $5TLIST ASMTOKLIST;
	int64 HIDEWARNINGSLEVEL;
};
__FB_STATIC_ASSERT( sizeof( struct $6ASTCTX ) == 472 );
extern struct $6ASTCTX AST$;
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
struct $16__FB_ARRAYDIMTB$ {
	int64 ELEMENTS;
	int64 LBOUND;
	int64 UBOUND;
};
__FB_STATIC_ASSERT( sizeof( struct $16__FB_ARRAYDIMTB$ ) == 24 );
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
struct $12FBHASHTBLIST {
	struct $8FBHASHTB* HEAD;
	struct $8FBHASHTB* TAIL;
};
__FB_STATIC_ASSERT( sizeof( struct $12FBHASHTBLIST ) == 16 );
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
struct $17SYMB_DEF_UNIQUEID {
	struct $5THASH DICT;
};
__FB_STATIC_ASSERT( sizeof( struct $17SYMB_DEF_UNIQUEID ) == 24 );
struct $14SYMB_DEF_PARAM {
	struct $8HASHITEM* ITEM;
	uint64 INDEX;
};
__FB_STATIC_ASSERT( sizeof( struct $14SYMB_DEF_PARAM ) == 16 );
struct $12SYMB_DEF_CTX {
	struct $5TLIST PARAMLIST;
	struct $5TLIST TOKLIST;
	struct $17SYMB_DEF_UNIQUEID UNIQUEID;
	int64 PARAM;
	struct $5THASH PARAMHASH;
	struct $14SYMB_DEF_PARAM HASH[32];
};
__FB_STATIC_ASSERT( sizeof( struct $12SYMB_DEF_CTX ) == 696 );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $15FB_GLOBCTORLIST {
	struct $20FB_GLOBCTORLIST_ITEM* HEAD;
	struct $20FB_GLOBCTORLIST_ITEM* TAIL;
	struct $5TLIST LIST;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_GLOBCTORLIST ) == 80 );
struct $10SYMB_OVLOP {
	struct $8FBSYMBOL* HEAD;
};
__FB_STATIC_ASSERT( sizeof( struct $10SYMB_OVLOP ) == 8 );
struct $10FB_RTTICTX {
	struct $8FBSYMBOL* FB_RTTI;
	struct $8FBSYMBOL* FB_OBJECT;
};
__FB_STATIC_ASSERT( sizeof( struct $10FB_RTTICTX ) == 16 );
struct $7SYMBCTX {
	int64 INITED;
	struct $5TLIST SYMLIST;
	struct $12FBHASHTBLIST HASHLIST;
	struct $10FBSYMCHAIN CHAINPOOL[4096];
	int64 CHAINPOOLHEAD;
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
	int64 FWDREFCNT;
	struct $12SYMB_DEF_CTX DEF;
	struct $8FBSYMBOL* LASTLBL;
	struct $15FB_GLOBCTORLIST GLOBCTORLIST;
	struct $15FB_GLOBCTORLIST GLOBDTORLIST;
	struct $10SYMB_OVLOP GLOBOPOVLTB[121];
	int64 FBARRAY_DATA;
	int64 FBARRAY_PTR;
	int64 FBARRAY_SIZE;
	int64 FBARRAY_DIMTB;
	struct $8FBSYMBOL* FBARRAYDIM;
	int64 FBARRAYDIM_LBOUND;
	int64 FBARRAYDIM_UBOUND;
	struct $10FB_RTTICTX RTTI;
};
__FB_STATIC_ASSERT( sizeof( struct $7SYMBCTX ) == 199248 );
extern struct $7SYMBCTX SYMB$;
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
static struct $8FBARRAY2IlE tmp$82$;
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
static int64 DEFTYPETB$[31];
static uint8* CLASSNAMESPRETTY$[17] = { (uint8*)"variable", (uint8*)"constant", (uint8*)"procedure", (uint8*)"parameter", (uint8*)"#define", (uint8*)"keyword", (uint8*)"label", (uint8*)"namespace", (uint8*)"enum", (uint8*)"type", (uint8*)"class", (uint8*)"field", (uint8*)"type alias", (uint8*)"forward reference", (uint8*)"scope", (uint8*)"reserved", (uint8*)"namespace import" };
struct $7SYMBCTX SYMB$;

void SYMBINITSYMBOLS( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll), 8000ll, 320ll, 6ll );
	POOLINIT( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), 1000ll, 17ll, 129ll );
	*(int64*)((uint8*)&SYMB$ + 196696ll) = 0ll;
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll), 500ll, 56ll, 7ll );
	*($12FB_SYMBCLASS*)((uint8*)&SYMB$ + 196704ll) = 8ll;
	*(uint16*)((uint8*)&SYMB$ + 196776ll) = (uint16)0u;
	{
		struct $13FBS_NAMESPACE* TMP$96$2;
		TMP$96$2 = (struct $13FBS_NAMESPACE*)((uint8*)&SYMB$ + 196800ll);
		*(struct $8FBSYMBOL**)TMP$96$2 = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll);
		*(struct $8FBSYMBOL**)((uint8*)TMP$96$2 + 8ll) = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)TMP$96$2 + 16ll) = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)TMP$96$2 + 24ll) = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll);
		*(struct $8FBHASHTB**)((uint8*)TMP$96$2 + 56ll) = (struct $8FBHASHTB*)0ull;
		*(struct $8FBHASHTB**)((uint8*)TMP$96$2 + 64ll) = (struct $8FBHASHTB*)0ull;
		{
			HASHINIT( (struct $5THASH*)((uint8*)TMP$96$2 + 32ll), 8000ll, 0ll );
		}
		goto label$12;
		label$13:;
		{
			memset( (void*)((uint8*)TMP$96$2 + 32ll), 0, 24ull );
		}
		label$12:;
		void* vr$17 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
		*(struct $13FBNAMESPC_EXT**)((uint8*)TMP$96$2 + 72ll) = (struct $13FBNAMESPC_EXT*)vr$17;
	}
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) = (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll);
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 196800ll);
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll) = (struct $8FBHASHTB*)((uint8*)&SYMB$ + 196824ll);
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 72ll) = (struct $8FBHASHTB*)0ull;
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll) = (struct $8FBHASHTB*)0ull;
	SYMBHASHLISTADD( *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll) );
	HASHINIT( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), 8000ll, 0ll );
	LISTINIT( (struct $5TLIST*)((uint8*)&SYMB$ + 197120ll), 4000ll, 48ll, 6ll );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 198040ll) = (struct $8FBSYMBOL*)0ull;
	SYMBDATAINIT(  );
	label$11:;
}

void SYMBINIT( int64 ISMAIN$1 )
{
	label$22:;
	if( *(int64*)&SYMB$ == 0ll ) goto label$25;
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
	*(int64*)&SYMB$ = -1ll;
	label$23:;
}

void SYMBEND( void )
{
	label$26:;
	if( *(int64*)&SYMB$ != 0ll ) goto label$29;
	{
		goto label$27;
	}
	label$29:;
	label$28:;
	SYMBDELGLOBALTB(  );
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 196808ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 196816ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll) = (struct $10FBSYMBOLTB*)0ull;
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197120ll) );
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll) );
	HASHEND( (struct $5THASH*)((uint8*)&SYMB$ + 196832ll) );
	SYMBCOMPRTTIEND(  );
	SYMBPROCEND(  );
	SYMBVAREND(  );
	SYMBFWDREFEND(  );
	SYMBDEFINEEND(  );
	SYMBMANGLEEND(  );
	SYMBCOMPEND(  );
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll), *(void**)((uint8*)&SYMB$ + 196872ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 197272ll) );
	POOLEND( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll) );
	LISTEND( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll) );
	*(int64*)&SYMB$ = 0ll;
	label$27:;
}

int64 SYMBCANDUPLICATE( struct $8FBSYMBOL* HEAD_SYM$1, struct $8FBSYMBOL* S$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$30:;
	fb$result$1 = 0ll;
	{
		uint64 TMP$97$2;
		TMP$97$2 = *(uint64*)S$1;
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
					uint64 TMP$98$5;
					TMP$98$5 = *(uint64*)HEAD_SYM$1;
					goto label$40;
					label$41:;
					{
						goto label$31;
					}
					goto label$39;
					label$40:;
					static const void* tmp$104[9ll] = {
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
					if( (TMP$98$5 - 5ull) > 8ull ) goto label$39;
					goto *tmp$104[TMP$98$5 - 5ull];
					label$39:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$38:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$36;
			label$37:;
		}
		goto label$32;
		label$42:;
		{
			label$43:;
			{
				{
					$12FB_SYMBCLASS TMP$99$5;
					TMP$99$5 = *($12FB_SYMBCLASS*)HEAD_SYM$1;
					if( TMP$99$5 == 5ll ) goto label$48;
					label$49:;
					if( TMP$99$5 == 8ll ) goto label$48;
					label$50:;
					if( TMP$99$5 == 14ll ) goto label$48;
					label$51:;
					if( TMP$99$5 != 11ll ) goto label$47;
					label$48:;
					{
						goto label$31;
					}
					goto label$46;
					label$47:;
					if( TMP$99$5 != 10ll ) goto label$52;
					label$53:;
					{
						if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 262144ll) == 0ll ) goto label$55;
						{
							goto label$31;
						}
						label$55:;
						label$54:;
					}
					label$52:;
					label$46:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$45:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$43;
			label$44:;
		}
		goto label$32;
		label$56:;
		{
			label$57:;
			{
				{
					uint64 TMP$100$5;
					TMP$100$5 = *(uint64*)HEAD_SYM$1;
					goto label$61;
					label$62:;
					{
					}
					goto label$60;
					label$63:;
					{
						if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 262144ll) == 0ll ) goto label$65;
						{
							goto label$31;
						}
						label$65:;
						label$64:;
					}
					goto label$60;
					label$66:;
					{
						if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$68;
						{
							goto label$31;
						}
						label$68:;
						label$67:;
						if( *(int64*)HEAD_SYM$1 != 3ll ) goto label$70;
						{
							if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 32ll) != 0ll ) goto label$72;
							{
								goto label$31;
							}
							goto label$71;
							label$72:;
							{
								if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 32ll) == 0ll ) goto label$74;
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
						if( (*(int64*)((uint8*)S$1 + 8ll) & 1048576ll) == 0ll ) goto label$76;
						{
							if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != (*(int64*)((uint8*)HEAD_SYM$1 + 56ll) & 511ll) ) goto label$78;
							{
								goto label$31;
							}
							label$78:;
							label$77:;
						}
						goto label$75;
						label$76:;
						{
							if( (*(int64*)((uint8*)HEAD_SYM$1 + 56ll) & 511ll) == 17ll ) goto label$80;
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
					static const void* tmp$105[12ll] = {
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
					if( (TMP$100$5 - 3ull) > 11ull ) goto label$81;
					goto *tmp$105[TMP$100$5 - 3ull];
					label$60:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$59:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$57;
			label$58:;
		}
		goto label$32;
		label$82:;
		{
			label$83:;
			{
				{
					uint64 TMP$101$5;
					TMP$101$5 = *(uint64*)HEAD_SYM$1;
					goto label$87;
					label$88:;
					{
					}
					goto label$86;
					label$89:;
					{
						if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 262144ll) == 0ll ) goto label$91;
						{
							goto label$31;
						}
						label$91:;
						label$90:;
					}
					goto label$86;
					label$92:;
					{
						if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$94;
						{
							goto label$31;
						}
						label$94:;
						label$93:;
						if( *(int64*)HEAD_SYM$1 != 3ll ) goto label$96;
						{
							if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 32ll) != 0ll ) goto label$98;
							{
								goto label$31;
							}
							label$98:;
							label$97:;
						}
						label$96:;
						label$95:;
						if( (*(int64*)((uint8*)S$1 + 8ll) & 1048576ll) == 0ll ) goto label$100;
						{
							if( (*(int64*)((uint8*)S$1 + 56ll) & 511ll) != (*(int64*)((uint8*)HEAD_SYM$1 + 56ll) & 511ll) ) goto label$102;
							{
								goto label$31;
							}
							label$102:;
							label$101:;
						}
						goto label$99;
						label$100:;
						{
							if( (*(int64*)((uint8*)HEAD_SYM$1 + 56ll) & 511ll) == 17ll ) goto label$104;
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
						if( (int64)*(uint16*)((uint8*)S$1 + 72ll) != (int64)*(uint16*)((uint8*)HEAD_SYM$1 + 72ll) ) goto label$107;
						{
							goto label$31;
						}
						label$107:;
						label$106:;
					}
					goto label$86;
					label$108:;
					{
						if( (int64)*(uint16*)((uint8*)S$1 + 72ll) != (int64)*(uint16*)((uint8*)HEAD_SYM$1 + 72ll) ) goto label$110;
						{
							if( *(int64*)((uint8*)&ENV$ + 272ll) != 0ll ) goto label$112;
							{
								goto label$31;
							}
							label$112:;
							label$111:;
							if( (*(int64*)((uint8*)HEAD_SYM$1 + 56ll) & 511ll) != (*(int64*)((uint8*)S$1 + 56ll) & 511ll) ) goto label$114;
							{
								goto label$31;
							}
							label$114:;
							label$113:;
							if( ((int64)-((*(int64*)((uint8*)HEAD_SYM$1 + 8ll) & 1048576ll) == 0ll) & (int64)-((*(int64*)((uint8*)S$1 + 8ll) & 1048576ll) == 0ll)) == 0ll ) goto label$116;
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
					static const void* tmp$106[16ll] = {
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
					if( (TMP$101$5 - 1ull) > 15ull ) goto label$117;
					goto *tmp$106[TMP$101$5 - 1ull];
					label$86:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$85:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$83;
			label$84:;
		}
		goto label$32;
		label$118:;
		{
			label$119:;
			{
				{
					uint64 TMP$102$5;
					TMP$102$5 = *(uint64*)HEAD_SYM$1;
					goto label$123;
					label$124:;
					{
						goto label$31;
					}
					goto label$122;
					label$125:;
					{
						if( (*(int64*)((uint8*)HEAD_SYM$1 + 24ll) & 262144ll) == 0ll ) goto label$127;
						{
							goto label$31;
						}
						label$127:;
						label$126:;
					}
					goto label$122;
					label$123:;
					static const void* tmp$107[7ll] = {
						&&label$124,
						&&label$124,
						&&label$124,
						&&label$124,
						&&label$122,
						&&label$125,
						&&label$124,
					};
					if( (TMP$102$5 - 5ull) > 6ull ) goto label$122;
					goto *tmp$107[TMP$102$5 - 5ull];
					label$122:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$121:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$119;
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
					uint64 TMP$103$5;
					TMP$103$5 = *(uint64*)HEAD_SYM$1;
					goto label$134;
					label$135:;
					{
						if( ((int64)-((int64)*(uint16*)((uint8*)S$1 + 72ll) == (int64)*(uint16*)((uint8*)HEAD_SYM$1 + 72ll)) & (int64)-(*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)S$1 + 248ll) == *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)HEAD_SYM$1 + 248ll))) == 0ll ) goto label$137;
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
					static const void* tmp$108[16ll] = {
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
					if( (TMP$103$5 - 1ull) > 15ull ) goto label$138;
					goto *tmp$108[TMP$103$5 - 1ull];
					label$133:;
				}
				HEAD_SYM$1 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$1 + 280ll);
			}
			label$132:;
			if( HEAD_SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$130;
			label$131:;
		}
		goto label$32;
		label$33:;
		static const void* tmp$109[16ll] = {
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
		if( (TMP$97$2 - 1ull) > 15ull ) goto label$32;
		goto *tmp$109[TMP$97$2 - 1ull];
		label$32:;
	}
	fb$result$1 = -1ll;
	label$31:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBNEWSYMBOL( $10FB_SYMBOPT OPTIONS$1, struct $8FBSYMBOL* S$1, struct $10FBSYMBOLTB* SYMTB$1, struct $8FBHASHTB* HASHTB$1, $12FB_SYMBCLASS CLASS_$1, uint8* ID$1, uint8* ID_ALIAS$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	int64 TMP$110$1;
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$139:;
	int64 SLEN$1;
	int64 DELOK$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( SYMTB$1 != (struct $10FBSYMBOLTB*)0ull ) goto label$142;
	{
		SYMTB$1 = *(struct $10FBSYMBOLTB**)((uint8*)&SYMB$ + 197040ll);
		if( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) != *(struct $8FBSYMBOL**)((uint8*)&ENV$ + 1408ll) ) goto label$144;
		{
			if( *(uint64*)((uint8*)&PARSER$ + 200ll) != 0ull ) goto label$146;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$148;
				{
					SYMTB$1 = (struct $10FBSYMBOLTB*)((uint8*)&SYMB$ + 196800ll);
				}
				label$148:;
				label$147:;
				ATTRIB$1 = ATTRIB$1 & -129ll;
			}
			goto label$145;
			label$146:;
			{
				ATTRIB$1 = ATTRIB$1 | 128ll;
			}
			label$145:;
		}
		goto label$143;
		label$144:;
		{
			ATTRIB$1 = ATTRIB$1 | 128ll;
		}
		label$143:;
	}
	label$142:;
	label$141:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0ull ) goto label$150;
	{
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 197032ll);
	}
	label$150:;
	label$149:;
	DELOK$1 = 0ll;
	if( S$1 != (struct $8FBSYMBOL*)0ull ) goto label$152;
	{
		DELOK$1 = -1ll;
		void* vr$7 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll) );
		S$1 = (struct $8FBSYMBOL*)vr$7;
	}
	label$152:;
	label$151:;
	*($12FB_SYMBCLASS*)S$1 = CLASS_$1;
	*($13FB_SYMBATTRIB*)((uint8*)S$1 + 8ll) = ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)S$1 + 16ll) = PATTRIB$1;
	*($12FB_SYMBSTATS*)((uint8*)S$1 + 24ll) = 0ll;
	*(int16*)((uint8*)S$1 + 74ll) = (int16)*($11FB_MANGLING*)((uint8*)&PARSER$ + 208ll);
	*($11FB_DATATYPE*)((uint8*)S$1 + 56ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 64ll) = SUBTYPE$1;
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$154;
	{
		if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 24ll) & 12288ll) == 0ll ) goto label$156;
		{
			*(uint16*)((uint8*)S$1 + 72ll) = (uint16)0u;
		}
		goto label$155;
		label$156:;
		{
			*(uint16*)((uint8*)S$1 + 72ll) = (uint16)((int64)*(uint16*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 72ll) + 1ll);
		}
		label$155:;
	}
	goto label$153;
	label$154:;
	{
		*(uint16*)((uint8*)S$1 + 72ll) = (uint16)*(uint64*)((uint8*)&PARSER$ + 200ll);
	}
	label$153:;
	if( ID$1 == (uint8*)0ull ) goto label$157;
	int64 vr$27 = fb_StrLen( (void*)ID$1, 0ll );
	TMP$110$1 = vr$27;
	goto label$193;
	label$157:;
	TMP$110$1 = 0ll;
	label$193:;
	SLEN$1 = TMP$110$1;
	if( SLEN$1 <= 0ll ) goto label$159;
	{
		void* vr$30 = POOLNEWITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), SLEN$1 + 1ll );
		*(uint8**)((uint8*)S$1 + 32ll) = (uint8*)vr$30;
		if( (OPTIONS$1 & 1ll) != 0ll ) goto label$161;
		{
			HUCASE( ID$1, *(uint8**)((uint8*)S$1 + 32ll) );
		}
		goto label$160;
		label$161:;
		{
			fb_StrAssign( *(void**)((uint8*)S$1 + 32ll), 0ll, (void*)ID$1, 0ll, 0 );
		}
		label$160:;
	}
	goto label$158;
	label$159:;
	{
		*(uint8**)((uint8*)S$1 + 32ll) = (uint8*)0ull;
		OPTIONS$1 = OPTIONS$1 & -33ll;
	}
	label$158:;
	if( ID_ALIAS$1 == (uint8*)0ull ) goto label$163;
	{
		int64 vr$37 = fb_StrLen( (void*)ID_ALIAS$1, 0ll );
		void* vr$40 = XALLOCATE( (int32)(vr$37 + 1ll) );
		*(uint8**)((uint8*)S$1 + 40ll) = (uint8*)vr$40;
		fb_StrAssign( *(void**)((uint8*)S$1 + 40ll), 0ll, (void*)ID_ALIAS$1, 0ll, 0 );
	}
	goto label$162;
	label$163:;
	{
		*(uint8**)((uint8*)S$1 + 40ll) = (uint8*)0ull;
	}
	label$162:;
	*(uint8**)((uint8*)S$1 + 48ll) = (uint8*)0ull;
	*(int64*)((uint8*)S$1 + 80ll) = 0ll;
	*(int64*)((uint8*)S$1 + 88ll) = 0ll;
	*(struct $8FBHASHTB**)((uint8*)S$1 + 248ll) = HASHTB$1;
	if( (OPTIONS$1 & 32ll) == 0ll ) goto label$165;
	{
		struct $8FBSYMBOL* HEAD_SYM$2;
		uint64 vr$50 = HASHHASH( (uint8*)*(uint8**)((uint8*)S$1 + 32ll) );
		*(uint64*)((uint8*)S$1 + 264ll) = vr$50;
		void* vr$56 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)*(uint8**)((uint8*)S$1 + 32ll), *(uint64*)((uint8*)S$1 + 264ll) );
		HEAD_SYM$2 = (struct $8FBSYMBOL*)vr$56;
		if( HEAD_SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$167;
		{
			struct $8HASHITEM* vr$61 = HASHADD( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)*(uint8**)((uint8*)S$1 + 32ll), (void*)S$1, *(uint64*)((uint8*)S$1 + 264ll) );
			*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) = vr$61;
			*(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll) = (struct $8FBSYMBOL*)0ull;
			*(struct $8FBSYMBOL**)((uint8*)S$1 + 280ll) = (struct $8FBSYMBOL*)0ull;
		}
		goto label$166;
		label$167:;
		{
			if( (OPTIONS$1 & 128ll) != 0ll ) goto label$169;
			{
				int64 vr$66 = SYMBCANDUPLICATE( HEAD_SYM$2, S$1 );
				if( vr$66 != 0ll ) goto label$171;
				{
					POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), *(void**)((uint8*)S$1 + 32ll) );
					if( *(uint8**)((uint8*)S$1 + 40ll) == (uint8*)0ull ) goto label$173;
					{
						free( *(void**)((uint8*)S$1 + 40ll) );
					}
					label$173:;
					label$172:;
					if( *(uint8**)((uint8*)S$1 + 48ll) == (uint8*)0ull ) goto label$175;
					{
						free( *(void**)((uint8*)S$1 + 48ll) );
					}
					label$175:;
					label$174:;
					if( DELOK$1 == 0ll ) goto label$177;
					{
						LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll), (void*)S$1 );
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
			*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) = *(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 256ll);
			if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$179;
			{
				struct $8FBSYMBOL* PREV$4;
				PREV$4 = (struct $8FBSYMBOL*)0ull;
				label$180:;
				if( *(int64*)HEAD_SYM$2 != 6ll ) goto label$181;
				{
					PREV$4 = HEAD_SYM$2;
					HEAD_SYM$2 = *(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 280ll);
					if( HEAD_SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$183;
					{
						goto label$181;
					}
					label$183:;
					label$182:;
				}
				goto label$180;
				label$181:;
				if( PREV$4 != (struct $8FBSYMBOL*)0ull ) goto label$185;
				{
					goto label$186;
				}
				label$185:;
				label$184:;
				*(struct $8FBSYMBOL**)((uint8*)PREV$4 + 280ll) = S$1;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll) = PREV$4;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 280ll) = HEAD_SYM$2;
				if( HEAD_SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$188;
				{
					*(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 272ll) = S$1;
				}
				label$188:;
				label$187:;
			}
			goto label$178;
			label$179:;
			{
				label$186:;
				*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 256ll) + 8ll) = (void*)S$1;
				*(uint8**)*(struct $8HASHITEM**)((uint8*)HEAD_SYM$2 + 256ll) = (uint8*)*(uint8**)((uint8*)S$1 + 32ll);
				*(struct $8FBSYMBOL**)((uint8*)HEAD_SYM$2 + 272ll) = S$1;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll) = (struct $8FBSYMBOL*)0ull;
				*(struct $8FBSYMBOL**)((uint8*)S$1 + 280ll) = HEAD_SYM$2;
			}
			label$178:;
		}
		label$166:;
	}
	goto label$164;
	label$165:;
	{
		*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) = (struct $8HASHITEM*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll) = (struct $8FBSYMBOL*)0ull;
		*(struct $8FBSYMBOL**)((uint8*)S$1 + 280ll) = (struct $8FBSYMBOL*)0ull;
	}
	label$164:;
	if( *(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 16ll) == (struct $8FBSYMBOL*)0ull ) goto label$190;
	{
		*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 16ll) + 312ll) = S$1;
	}
	goto label$189;
	label$190:;
	{
		*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 8ll) = S$1;
	}
	label$189:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 304ll) = *(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 16ll);
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $10FBSYMBOLTB**)((uint8*)S$1 + 288ll) = SYMTB$1;
	*(struct $8FBSYMBOL**)((uint8*)SYMTB$1 + 16ll) = S$1;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 296ll) = (struct $8FBSYMBOL*)0ull;
	if( (DTYPE$1 & 31ll) != 23ll ) goto label$192;
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
	if( *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll) == (struct $8FBHASHTB*)0ull ) goto label$197;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll) + 40ll) = HASHTB$1;
	}
	goto label$196;
	label$197:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 72ll) = HASHTB$1;
	}
	label$196:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll) = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll);
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll) = (struct $8FBHASHTB*)0ull;
	*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll) = HASHTB$1;
	label$195:;
}

void SYMBHASHLISTADDBEFORE( struct $8FBHASHTB* LASTTB$1, struct $8FBHASHTB* HASHTB$1 )
{
	label$198:;
	if( *(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 32ll) != (struct $8FBHASHTB*)0ull ) goto label$201;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 72ll) = HASHTB$1;
	}
	goto label$200;
	label$201:;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 32ll) + 40ll) = HASHTB$1;
	}
	label$200:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll) = *(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 32ll);
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll) = LASTTB$1;
	*(struct $8FBHASHTB**)((uint8*)LASTTB$1 + 32ll) = HASHTB$1;
	label$199:;
}

void SYMBHASHLISTDEL( struct $8FBHASHTB* HASHTB$1 )
{
	label$202:;
	if( *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll) == (struct $8FBHASHTB*)0ull ) goto label$205;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll) + 40ll) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll);
	}
	goto label$204;
	label$205:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 72ll) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll);
	}
	label$204:;
	if( *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll) == (struct $8FBHASHTB*)0ull ) goto label$207;
	{
		*(struct $8FBHASHTB**)((uint8*)*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll) + 32ll) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	goto label$206;
	label$207:;
	{
		*(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll) = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	label$206:;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll) = (struct $8FBHASHTB*)0ull;
	*(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 40ll) = (struct $8FBHASHTB*)0ull;
	label$203:;
}

void SYMBHASHLISTINSERTNAMESPACE( struct $8FBSYMBOL* NS$1, struct $8FBSYMBOL* SRC_HEAD$1 )
{
	label$208:;
	struct $10FBSYMCHAIN* IMP_HEAD$1;
	IMP_HEAD$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 40ll);
	struct $10FBSYMCHAIN* IMP_TAIL$1;
	IMP_TAIL$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 48ll);
	struct $8FBSYMBOL* S$1;
	S$1 = SRC_HEAD$1;
	label$210:;
	if( S$1 == (struct $8FBSYMBOL*)0ull ) goto label$211;
	{
		if( *(struct $8HASHITEM**)((uint8*)S$1 + 256ll) == (struct $8HASHITEM*)0ull ) goto label$213;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll) != (struct $8FBSYMBOL*)0ull ) goto label$215;
			{
				struct $10FBSYMCHAIN* CHAIN_$4;
				void* vr$7 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197120ll) );
				CHAIN_$4 = (struct $10FBSYMCHAIN*)vr$7;
				*(struct $8FBSYMBOL**)CHAIN_$4 = S$1;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 24ll) = (struct $10FBSYMCHAIN*)0ull;
				*(int64*)((uint8*)CHAIN_$4 + 16ll) = -1ll;
				struct $10FBSYMCHAIN* HEAD$4;
				void* vr$14 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), (uint8*)*(uint8**)((uint8*)S$1 + 32ll), *(uint64*)((uint8*)S$1 + 264ll) );
				HEAD$4 = (struct $10FBSYMCHAIN*)vr$14;
				if( HEAD$4 != (struct $10FBSYMCHAIN*)0ull ) goto label$217;
				{
					struct $8HASHITEM* vr$18 = HASHADD( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), (uint8*)*(uint8**)((uint8*)S$1 + 32ll), (void*)CHAIN_$4, *(uint64*)((uint8*)S$1 + 264ll) );
					*(struct $8HASHITEM**)((uint8*)CHAIN_$4 + 32ll) = vr$18;
					*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 8ll) = (struct $10FBSYMCHAIN*)0ull;
				}
				goto label$216;
				label$217:;
				{
					*(struct $8HASHITEM**)((uint8*)CHAIN_$4 + 32ll) = *(struct $8HASHITEM**)((uint8*)HEAD$4 + 32ll);
					*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)HEAD$4 + 32ll) + 8ll) = (void*)CHAIN_$4;
					*(struct $10FBSYMCHAIN**)((uint8*)HEAD$4 + 24ll) = CHAIN_$4;
					*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 8ll) = HEAD$4;
				}
				label$216:;
				if( IMP_TAIL$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$219;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)IMP_TAIL$1 + 40ll) = CHAIN_$4;
				}
				goto label$218;
				label$219:;
				{
					IMP_HEAD$1 = CHAIN_$4;
				}
				label$218:;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$4 + 40ll) = (struct $10FBSYMCHAIN*)0ull;
				IMP_TAIL$1 = CHAIN_$4;
			}
			label$215:;
			label$214:;
		}
		label$213:;
		label$212:;
		S$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
	}
	goto label$210;
	label$211:;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 40ll) = IMP_HEAD$1;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 48ll) = IMP_TAIL$1;
	label$209:;
}

void SYMBHASHLISTREMOVENAMESPACE( struct $8FBSYMBOL* NS$1 )
{
	label$220:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 40ll);
	label$222:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$223;
	{
		struct $10FBSYMCHAIN* PRV$2;
		struct $10FBSYMCHAIN* NXT$2;
		PRV$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 24ll);
		NXT$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		if( PRV$2 == (struct $10FBSYMCHAIN*)0ull ) goto label$225;
		{
			*(struct $10FBSYMCHAIN**)((uint8*)PRV$2 + 8ll) = NXT$2;
			if( NXT$2 == (struct $10FBSYMCHAIN*)0ull ) goto label$227;
			{
				*(struct $10FBSYMCHAIN**)((uint8*)NXT$2 + 24ll) = PRV$2;
			}
			label$227:;
			label$226:;
		}
		goto label$224;
		label$225:;
		{
			if( NXT$2 == (struct $10FBSYMCHAIN*)0ull ) goto label$229;
			{
				*(struct $10FBSYMCHAIN**)((uint8*)NXT$2 + 24ll) = (struct $10FBSYMCHAIN*)0ull;
				*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)CHAIN_$1 + 32ll) + 8ll) = (void*)NXT$2;
			}
			goto label$228;
			label$229:;
			{
				HASHDEL( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), *(struct $8HASHITEM**)((uint8*)CHAIN_$1 + 32ll), *(uint64*)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 264ll) );
			}
			label$228:;
		}
		label$224:;
		NXT$2 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 40ll);
		LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 197120ll), (void*)CHAIN_$1 );
		CHAIN_$1 = NXT$2;
	}
	goto label$222;
	label$223:;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 40ll) = (struct $10FBSYMCHAIN*)0ull;
	*(struct $10FBSYMCHAIN**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) + 48ll) = (struct $10FBSYMCHAIN*)0ull;
	label$221:;
}

struct $10FBSYMCHAIN* SYMBNEWCHAINPOOL( struct $8FBSYMBOL* SYM$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$234:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* vr$1 = CHAINPOOLNEXT(  );
	CHAIN_$1 = vr$1;
	*(struct $8FBSYMBOL**)CHAIN_$1 = SYM$1;
	*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll) = (struct $10FBSYMCHAIN*)0ull;
	*(int64*)((uint8*)CHAIN_$1 + 16ll) = 0ll;
	fb$result$1 = CHAIN_$1;
	goto label$235;
	label$235:;
	return fb$result$1;
}

struct $10FBSYMCHAIN* SYMBLOOKUP( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$307:;
	static uint8 SNAME$1[129];
	*TK$1 = 265ll;
	*TK_CLASS$1 = 0ll;
	HUCASE( (uint8*)ID$1, (uint8*)SNAME$1 );
	ID$1 = (uint8*)SNAME$1;
	uint64 INDEX$1;
	uint64 vr$3 = HASHHASH( (uint8*)ID$1 );
	INDEX$1 = vr$3;
	struct $8FBHASHTB* HASHTB$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll);
	label$309:;
	{
		struct $8FBSYMBOL* SYM$2;
		void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)ID$1, INDEX$1 );
		SYM$2 = (struct $8FBSYMBOL*)vr$6;
		label$312:;
		if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$313;
		{
			if( *(int64*)SYM$2 != 6ll ) goto label$315;
			{
				*TK$1 = *($8FB_TOKEN*)((uint8*)SYM$2 + 96ll);
				*TK_CLASS$1 = *($10FB_TKCLASS*)((uint8*)SYM$2 + 104ll);
				if( *(int64*)TK_CLASS$1 == 2ll ) goto label$317;
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
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 280ll);
		}
		goto label$312;
		label$313:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	label$311:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0ull ) goto label$309;
	label$310:;
	if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)0ull ) goto label$319;
	{
		{
			$12FB_SYMBCLASS TMP$113$3;
			TMP$113$3 = *($12FB_SYMBCLASS*)*(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
			if( TMP$113$3 == 10ll ) goto label$322;
			label$323:;
			if( TMP$113$3 != 11ll ) goto label$321;
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

struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL* NS$1, uint8* ID$1, int64 PRESERVE_CASE$1, int64 SEARCH_IMPORTS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$338:;
	static uint8 SNAME$1[129];
	if( ((int64)-(*(int64*)NS$1 == 9ll) & (int64)-(*(int64*)((uint8*)NS$1 + 136ll) == 0ll)) == 0ll ) goto label$341;
	{
		goto label$339;
	}
	label$341:;
	label$340:;
	if( PRESERVE_CASE$1 != 0ll ) goto label$343;
	{
		HUCASE( ID$1, (uint8*)SNAME$1 );
		ID$1 = (uint8*)SNAME$1;
	}
	label$343:;
	label$342:;
	uint64 INDEX$1;
	uint64 vr$6 = HASHHASH( ID$1 );
	INDEX$1 = vr$6;
	struct $8FBSYMBOL* SYM$1;
	void* vr$9 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)NS$1 + 128ll), ID$1, INDEX$1 );
	SYM$1 = (struct $8FBSYMBOL*)vr$9;
	label$344:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$345;
	{
		if( ((int64)-((*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) != 0ll) & (int64)-(*(int64*)SYM$1 == 1ll)) == 0ll ) goto label$347;
		{
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
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
	if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$349;
	{
		if( SEARCH_IMPORTS$1 != 0ll ) goto label$351;
		{
			fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
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
	if( *(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull ) goto label$353;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
		goto label$339;
	}
	label$353:;
	label$352:;
	if( *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $8FBSYMBOL*)0ull ) goto label$355;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
		goto label$339;
	}
	label$355:;
	label$354:;
	if( NS$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$357;
	{
		struct $10FBSYMCHAIN* vr$22 = HLOOKUPIMPORTHASH( NS$1, ID$1, INDEX$1 );
		fb$result$1 = vr$22;
		goto label$339;
	}
	label$357:;
	label$356:;
	{
		$12FB_SYMBCLASS TMP$114$2;
		TMP$114$2 = *($12FB_SYMBCLASS*)NS$1;
		if( TMP$114$2 == 10ll ) goto label$360;
		label$361:;
		if( TMP$114$2 != 11ll ) goto label$359;
		label$360:;
		{
			struct $10FBSYMCHAIN* vr$24 = HLOOKUPIMPORTLIST( NS$1, ID$1, INDEX$1, 1ll );
			fb$result$1 = vr$24;
			goto label$339;
		}
		label$359:;
		label$358:;
	}
	struct $10FBSYMCHAIN* vr$25 = HLOOKUPIMPORTLIST( NS$1, ID$1, INDEX$1, 0ll );
	fb$result$1 = vr$25;
	goto label$339;
	label$339:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBLOOKUPBYNAMEANDCLASS( struct $8FBSYMBOL* NS$1, uint8* ID$1, int64 CLASS_$1, int64 PRESERVE_CASE$1, int64 SEARCH_IMPORTS$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$362:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* vr$1 = SYMBLOOKUPAT( NS$1, ID$1, PRESERVE_CASE$1, SEARCH_IMPORTS$1 );
	CHAIN_$1 = vr$1;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$365;
	{
		struct $8FBSYMBOL* vr$2 = SYMBFINDBYCLASS( CHAIN_$1, CLASS_$1 );
		fb$result$1 = vr$2;
	}
	goto label$364;
	label$365:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$364:;
	label$363:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN* CHAIN_$1, int64 CLASS_$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$366:;
	struct $8FBSYMBOL* SYM$1;
	int64 MATCH$1;
	MATCH$1 = 0ll;
	label$368:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$369;
	{
		SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$370:;
		{
			if( *(int64*)SYM$1 != CLASS_$1 ) goto label$374;
			{
				MATCH$1 = -1ll;
				goto label$369;
			}
			label$374:;
			label$373:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
		}
		label$372:;
		if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$370;
		label$371:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
	}
	goto label$368;
	label$369:;
	if( MATCH$1 != 0ll ) goto label$376;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
		goto label$367;
	}
	label$376:;
	label$375:;
	if( *(int64*)SYM$1 != 1ll ) goto label$378;
	{
		int64 vr$6 = SYMBVARCHECKACCESS( SYM$1 );
		if( vr$6 == 0ll ) goto label$380;
		{
			fb$result$1 = SYM$1;
			goto label$367;
		}
		goto label$379;
		label$380:;
		{
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
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

struct $8FBSYMBOL* SYMBFINDVARBYSUFFIX( struct $10FBSYMCHAIN* CHAIN_$1, int64 SUFFIX$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$381:;
	struct $8FBSYMBOL* SYM$1;
	if( SUFFIX$1 != 17ll ) goto label$384;
	{
		label$385:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$386;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$387:;
			{
				if( *(int64*)SYM$1 != 1ll ) goto label$391;
				{
					{
						int64 TMP$115$6;
						TMP$115$6 = *(int64*)((uint8*)SYM$1 + 56ll) & 511ll;
						if( TMP$115$6 == 17ll ) goto label$394;
						label$395:;
						if( TMP$115$6 == 18ll ) goto label$394;
						label$396:;
						if( TMP$115$6 != 4ll ) goto label$393;
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
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
			}
			label$389:;
			if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$387;
			label$388:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		goto label$385;
		label$386:;
	}
	goto label$383;
	label$384:;
	{
		label$398:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$399;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$400:;
			{
				if( *(int64*)SYM$1 != 1ll ) goto label$404;
				{
					if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != SUFFIX$1 ) goto label$406;
					{
						goto label$397;
					}
					label$406:;
					label$405:;
				}
				label$404:;
				label$403:;
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
			}
			label$402:;
			if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$400;
			label$401:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		goto label$398;
		label$399:;
	}
	label$383:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	goto label$382;
	label$397:;
	int64 vr$13 = SYMBVARCHECKACCESS( SYM$1 );
	if( vr$13 == 0ll ) goto label$408;
	{
		fb$result$1 = SYM$1;
	}
	goto label$407;
	label$408:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$407:;
	label$382:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDVARBYDEFTYPE( struct $10FBSYMCHAIN* CHAIN_$1, int64 DEF_DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$409:;
	struct $8FBSYMBOL* SYM$1;
	if( DEF_DTYPE$1 != 17ll ) goto label$412;
	{
		label$413:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$414;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$415:;
			{
				if( *(int64*)SYM$1 != 1ll ) goto label$419;
				{
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$421;
					{
						{
							$11FB_DATATYPE TMP$116$7;
							TMP$116$7 = *($11FB_DATATYPE*)((uint8*)SYM$1 + 56ll);
							if( TMP$116$7 == 17ll ) goto label$424;
							label$425:;
							if( TMP$116$7 == 18ll ) goto label$424;
							label$426:;
							if( TMP$116$7 != 4ll ) goto label$423;
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
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
			}
			label$417:;
			if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$415;
			label$416:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		goto label$413;
		label$414:;
	}
	goto label$411;
	label$412:;
	{
		label$428:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$429;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$430:;
			{
				if( *(int64*)SYM$1 != 1ll ) goto label$434;
				{
					if( (*(int64*)((uint8*)SYM$1 + 8ll) & 1048576ll) == 0ll ) goto label$436;
					{
						if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != DEF_DTYPE$1 ) goto label$438;
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
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
			}
			label$432:;
			if( SYM$1 != (struct $8FBSYMBOL*)0ull ) goto label$430;
			label$431:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		goto label$428;
		label$429:;
	}
	label$411:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	goto label$410;
	label$427:;
	int64 vr$16 = SYMBVARCHECKACCESS( SYM$1 );
	if( vr$16 == 0ll ) goto label$440;
	{
		fb$result$1 = SYM$1;
	}
	goto label$439;
	label$440:;
	{
		fb$result$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$439:;
	label$410:;
	return fb$result$1;
}

struct $8FBSYMBOL* SYMBFINDBYCLASSANDTYPE( struct $10FBSYMCHAIN* CHAIN_$1, int64 SYMCLASS$1, int64 DTYPE$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$441:;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	label$443:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$444;
	{
		struct $8FBSYMBOL* SYM$2;
		SYM$2 = *(struct $8FBSYMBOL**)CHAIN_$1;
		label$445:;
		{
			if( ((int64)-(*(int64*)SYM$2 == SYMCLASS$1) & (int64)-(*(int64*)((uint8*)SYM$2 + 56ll) == DTYPE$1)) == 0ll ) goto label$449;
			{
				if( SYMCLASS$1 != 1ll ) goto label$451;
				{
					int64 vr$7 = SYMBVARCHECKACCESS( SYM$2 );
					if( vr$7 != 0ll ) goto label$453;
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
			SYM$2 = *(struct $8FBSYMBOL**)((uint8*)SYM$2 + 280ll);
		}
		label$447:;
		if( SYM$2 != (struct $8FBSYMBOL*)0ull ) goto label$445;
		label$446:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
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
	PRV$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 272ll);
	NXT$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 280ll);
	if( PRV$1 == (struct $8FBSYMBOL*)0ull ) goto label$457;
	{
		*(struct $8FBSYMBOL**)((uint8*)PRV$1 + 280ll) = NXT$1;
		if( NXT$1 == (struct $8FBSYMBOL*)0ull ) goto label$459;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 272ll) = PRV$1;
		}
		label$459:;
		label$458:;
	}
	goto label$456;
	label$457:;
	{
		if( NXT$1 == (struct $8FBSYMBOL*)0ull ) goto label$461;
		{
			*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 272ll) = (struct $8FBSYMBOL*)0ull;
			*(void**)((uint8*)*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) + 8ll) = (void*)NXT$1;
			*(uint8**)*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) = (uint8*)*(uint8**)((uint8*)NXT$1 + 32ll);
		}
		goto label$460;
		label$461:;
		{
			HASHDEL( (struct $5THASH*)((uint8*)*(struct $8FBHASHTB**)((uint8*)S$1 + 248ll) + 8ll), *(struct $8HASHITEM**)((uint8*)S$1 + 256ll), *(uint64*)((uint8*)S$1 + 264ll) );
		}
		label$460:;
	}
	label$456:;
	label$455:;
}

void SYMBDELFROMHASH( struct $8FBSYMBOL* S$1 )
{
	label$462:;
	if( *(struct $8HASHITEM**)((uint8*)S$1 + 256ll) != (struct $8HASHITEM*)0ull ) goto label$465;
	{
		goto label$463;
	}
	label$465:;
	label$464:;
	SYMBDELFROMCHAINLIST( S$1 );
	*(struct $8HASHITEM**)((uint8*)S$1 + 256ll) = (struct $8HASHITEM*)0ull;
	label$463:;
}

void SYMBFREESYMBOL( struct $8FBSYMBOL* S$1 )
{
	label$466:;
	if( (*(int64*)((uint8*)S$1 + 56ll) & 31ll) != 23ll ) goto label$469;
	{
		SYMBREMOVEFROMFWDREF( *(struct $8FBSYMBOL**)((uint8*)S$1 + 64ll), S$1 );
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
	POOLDELITEM( (struct $5TPOOL*)((uint8*)&SYMB$ + 197184ll), *(void**)((uint8*)S$1 + 32ll) );
	if( *(uint8**)((uint8*)S$1 + 40ll) == (uint8*)0ull ) goto label$473;
	{
		free( *(void**)((uint8*)S$1 + 40ll) );
	}
	label$473:;
	label$472:;
	if( *(uint8**)((uint8*)S$1 + 48ll) == (uint8*)0ull ) goto label$475;
	{
		free( *(void**)((uint8*)S$1 + 48ll) );
	}
	label$475:;
	label$474:;
	LISTDELNODE( (struct $5TLIST*)((uint8*)&SYMB$ + 8ll), (void*)S$1 );
	label$471:;
}

void SYMBFREESYMBOL_UNLINKONLY( struct $8FBSYMBOL* S$1 )
{
	label$476:;
	struct $10FBSYMBOLTB* TB$1;
	struct $8FBSYMBOL* PRV$1;
	struct $8FBSYMBOL* NXT$1;
	TB$1 = *(struct $10FBSYMBOLTB**)((uint8*)S$1 + 288ll);
	PRV$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 304ll);
	NXT$1 = *(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll);
	if( PRV$1 == (struct $8FBSYMBOL*)0ull ) goto label$479;
	{
		*(struct $8FBSYMBOL**)((uint8*)PRV$1 + 312ll) = NXT$1;
	}
	goto label$478;
	label$479:;
	{
		*(struct $8FBSYMBOL**)((uint8*)TB$1 + 8ll) = NXT$1;
	}
	label$478:;
	if( NXT$1 == (struct $8FBSYMBOL*)0ull ) goto label$481;
	{
		*(struct $8FBSYMBOL**)((uint8*)NXT$1 + 304ll) = PRV$1;
	}
	goto label$480;
	label$481:;
	{
		*(struct $8FBSYMBOL**)((uint8*)TB$1 + 16ll) = PRV$1;
	}
	label$480:;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 304ll) = (struct $8FBSYMBOL*)0ull;
	*(struct $8FBSYMBOL**)((uint8*)S$1 + 312ll) = (struct $8FBSYMBOL*)0ull;
	label$477:;
}

void SYMBDELSYMBOL( struct $8FBSYMBOL* S$1, int64 IS_TBDEL$1 )
{
	label$482:;
	{
		uint64 TMP$117$2;
		TMP$117$2 = *(uint64*)S$1;
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
			SYMBNAMESPACEREMOVE( S$1, 0ll );
		}
		goto label$484;
		label$496:;
		{
			SYMBFREESYMBOL( S$1 );
		}
		goto label$484;
		label$485:;
		static const void* tmp$118[17ll] = {
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
		if( (TMP$117$2 - 1ull) > 16ull ) goto label$496;
		goto *tmp$118[TMP$117$2 - 1ull];
		label$484:;
	}
	label$483:;
}

struct $8FBSYMBOL* SYMBCLONESYMBOL( struct $8FBSYMBOL* S$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$497:;
	int64 ARRAYDTYPE$1;
	struct $8FBSYMBOL* ARRAYSUBTYPE$1;
	{
		uint64 TMP$119$2;
		TMP$119$2 = *(uint64*)S$1;
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
			if( (*(int64*)((uint8*)S$1 + 8ll) & 8192ll) == 0ll ) goto label$507;
			{
				SYMBGETDESCTYPEARRAYDTYPE( S$1, &ARRAYDTYPE$1, &ARRAYSUBTYPE$1 );
				int64 vr$10 = SYMBGETDESCTYPEDIMENSIONS( S$1 );
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
			fb$result$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$499;
		label$500:;
		static const void* tmp$120[10ll] = {
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
		if( (TMP$119$2 - 1ull) > 9ull ) goto label$508;
		goto *tmp$120[TMP$119$2 - 1ull];
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
		S$2 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 196816ll);
		if( S$2 != (struct $8FBSYMBOL*)0ull ) goto label$515;
		{
			goto label$512;
		}
		label$515:;
		label$514:;
		SYMBDELSYMBOL( S$2, -1ll );
	}
	label$513:;
	goto label$511;
	label$512:;
	label$510:;
}

void SYMBDELSYMBOLTB( struct $10FBSYMBOLTB* TB$1, int64 HASHONLY$1 )
{
	label$516:;
	if( HASHONLY$1 == 0ll ) goto label$519;
	{
		struct $8FBSYMBOL* S$2;
		S$2 = *(struct $8FBSYMBOL**)((uint8*)TB$1 + 8ll);
		label$520:;
		if( S$2 == (struct $8FBSYMBOL*)0ull ) goto label$521;
		{
			SYMBDELFROMHASH( S$2 );
			if( *(int64*)S$2 != 17ll ) goto label$523;
			{
				SYMBNAMESPACEREMOVE( S$2, -1ll );
			}
			label$523:;
			label$522:;
			S$2 = *(struct $8FBSYMBOL**)((uint8*)S$2 + 312ll);
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
			S$3 = *(struct $8FBSYMBOL**)((uint8*)TB$1 + 16ll);
			if( S$3 != (struct $8FBSYMBOL*)0ull ) goto label$528;
			{
				goto label$525;
			}
			label$528:;
			label$527:;
			SYMBDELSYMBOL( S$3, -1ll );
		}
		label$526:;
		goto label$524;
		label$525:;
	}
	label$518:;
	label$517:;
}

int64 SYMBHASCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$529:;
	int64 vr$3 = TYPEHASCTOR( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	fb$result$1 = vr$3;
	label$530:;
	return fb$result$1;
}

int64 SYMBHASDEFCTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$531:;
	int64 vr$3 = TYPEHASDEFCTOR( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	fb$result$1 = vr$3;
	label$532:;
	return fb$result$1;
}

int64 SYMBHASDTOR( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$533:;
	int64 vr$3 = TYPEHASDTOR( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
	fb$result$1 = vr$3;
	label$534:;
	return fb$result$1;
}

int64 SYMBISDATADESC( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$535:;
	if( (*(int64*)((uint8*)SYM$1 + 56ll) & 511ll) != 20ll ) goto label$538;
	{
		fb$result$1 = (int64)-(*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) == *(struct $8FBSYMBOL**)((uint8*)&AST$ + 232ll));
	}
	label$538:;
	label$537:;
	label$536:;
	return fb$result$1;
}

int64 SYMBISARRAY( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$539:;
	{
		$12FB_SYMBCLASS TMP$121$2;
		TMP$121$2 = *($12FB_SYMBCLASS*)SYM$1;
		if( TMP$121$2 == 1ll ) goto label$543;
		label$544:;
		if( TMP$121$2 != 12ll ) goto label$542;
		label$543:;
		{
			fb$result$1 = (int64)-(*(int64*)((uint8*)SYM$1 + 104ll) != 0ll);
		}
		goto label$541;
		label$542:;
		{
			fb$result$1 = 0ll;
		}
		label$545:;
		label$541:;
	}
	label$540:;
	return fb$result$1;
}

int64 SYMBISSTRING( int64 DTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$546:;
	{
		uint64 TMP$122$2;
		TMP$122$2 = (uint64)DTYPE$1;
		goto label$549;
		label$550:;
		{
			fb$result$1 = -1ll;
		}
		goto label$548;
		label$551:;
		{
			fb$result$1 = 0ll;
		}
		goto label$548;
		label$549:;
		static const void* tmp$123[15ll] = {
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
		if( (TMP$122$2 - 4ull) > 14ull ) goto label$551;
		goto *tmp$123[TMP$122$2 - 4ull];
		label$548:;
	}
	label$547:;
	return fb$result$1;
}

$19FB_CVA_LIST_TYPEDEF SYMBGETVALISTTYPE( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	$19FB_CVA_LIST_TYPEDEF fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$552:;
	fb$result$1 = 0ll;
	if( ((DTYPE$1 & 32505856ll) >> (20ll & 63ll)) != 19ll ) goto label$555;
	{
		{
			int64 TMP$124$3;
			TMP$124$3 = DTYPE$1 & 31ll;
			if( TMP$124$3 != 0ll ) goto label$557;
			label$558:;
			{
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$560;
				{
					fb$result$1 = 2ll;
				}
				label$560:;
				label$559:;
			}
			goto label$556;
			label$557:;
			if( TMP$124$3 != 20ll ) goto label$561;
			label$562:;
			{
				if( SUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$564;
				{
					fb$result$1 = ((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) & 15728640ll) >> (20ll & 63ll);
				}
				label$564:;
				label$563:;
			}
			goto label$556;
			label$561:;
			{
				int64 TMP$125$4;
				if( (DTYPE$1 & 480ll) == 0ll ) goto label$566;
				TMP$125$4 = 24ll;
				goto label$571;
				label$566:;
				TMP$125$4 = DTYPE$1 & 31ll;
				label$571:;
				if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$125$4 * 56ll)) != 0ll ) goto label$568;
				{
					if( (DTYPE$1 & 480ll) == 0ll ) goto label$570;
					{
						fb$result$1 = 1ll;
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

FBSTRING* SYMBTYPETOSTR( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, int64 LENGTH$1, int64 IS_FIXLENSTR$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$572:;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	if( DTYPE$1 != 2147483648ll ) goto label$575;
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
	int64 PTRCOUNT$1;
	PTRCOUNT$1 = (DTYPE$1 & 480ll) >> (5ll & 63ll);
	int64 DTYPEONLY$1;
	DTYPEONLY$1 = DTYPE$1 & 31ll;
	if( (DTYPE$1 & (1ll << ((PTRCOUNT$1 + 9ll) & 63ll))) == 0ll ) goto label$579;
	{
		fb_StrAssign( (void*)&S$1, -1ll, (void*)"const ", 7ll, 0 );
	}
	goto label$578;
	label$579:;
	{
		fb_StrAssign( (void*)&S$1, -1ll, (void*)"", 1ll, 0 );
	}
	label$578:;
	{
		uint64 TMP$127$2;
		TMP$127$2 = (uint64)DTYPEONLY$1;
		goto label$581;
		label$582:;
		{
			FBSTRING TMP$128$3;
			FBSTRING* vr$12 = HGETNAMESPACEPREFIX( SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$12, -1ll, 0 );
			__builtin_memset( &TMP$128$3, 0, 24ll );
			FBSTRING* vr$18 = fb_StrConcat( &TMP$128$3, (void*)&S$1, -1ll, *(void**)((uint8*)SUBTYPE$1 + 32ll), 0ll );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$18, -1ll, 0 );
		}
		goto label$580;
		label$583:;
		{
			FBSTRING TMP$129$3;
			__builtin_memset( &TMP$129$3, 0, 24ll );
			FBSTRING* vr$24 = fb_StrConcat( &TMP$129$3, (void*)&S$1, -1ll, *(void**)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 56ll)) + 48ll), 0ll );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$24, -1ll, 0 );
			if( (IS_FIXLENSTR$1 | (int64)-(LENGTH$1 != *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 56ll)) + 8ll))) == 0ll ) goto label$585;
			{
				{
					if( DTYPEONLY$1 != 18ll ) goto label$587;
					label$588:;
					{
						LENGTH$1 = LENGTH$1 + -1ll;
					}
					goto label$586;
					label$587:;
					if( DTYPEONLY$1 != 7ll ) goto label$589;
					label$590:;
					{
						LENGTH$1 = LENGTH$1 / *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + 400ll);
					}
					label$589:;
					label$586:;
				}
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" * ", 4ll, 0 );
				FBSTRING* vr$32 = fb_LongintToStr( LENGTH$1 );
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$32, -1ll, 0 );
			}
			label$585:;
			label$584:;
		}
		goto label$580;
		label$591:;
		{
			if( PTRCOUNT$1 <= 0ll ) goto label$593;
			{
				PTRCOUNT$1 = PTRCOUNT$1 + -1ll;
			}
			label$593:;
			label$592:;
			if( PTRCOUNT$1 <= 0ll ) goto label$595;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)"typeof(", 8ll, 0 );
			}
			label$595:;
			label$594:;
			FBSTRING* vr$36 = SYMBPROCPTRTOSTR( SUBTYPE$1 );
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)vr$36, -1ll, 0 );
			if( PTRCOUNT$1 <= 0ll ) goto label$597;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)")", 2ll, 0 );
			}
			label$597:;
			label$596:;
		}
		goto label$580;
		label$598:;
		{
			FBSTRING TMP$133$3;
			__builtin_memset( &TMP$133$3, 0, 24ll );
			FBSTRING* vr$43 = fb_StrConcat( &TMP$133$3, (void*)&S$1, -1ll, *(void**)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (DTYPEONLY$1 * 56ll)) + 48ll), 0ll );
			fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$43, -1ll, 0 );
		}
		goto label$580;
		label$581:;
		static const void* tmp$136[20ll] = {
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
		if( (TMP$127$2 - 4ull) > 19ull ) goto label$598;
		goto *tmp$136[TMP$127$2 - 4ull];
		label$580:;
	}
	{
		int64 I$2;
		I$2 = PTRCOUNT$1 + -1ll;
		goto label$599;
		label$602:;
		{
			if( (DTYPE$1 & (1ll << ((I$2 + 9ll) & 63ll))) == 0ll ) goto label$604;
			{
				fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" const", 7ll, 0 );
			}
			label$604:;
			label$603:;
			fb_StrConcatAssign( (void*)&S$1, -1ll, (void*)" ptr", 5ll, 0 );
		}
		label$600:;
		I$2 = I$2 + -1ll;
		label$599:;
		if( I$2 >= 0ll ) goto label$602;
		label$601:;
	}
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$573:;
	FBSTRING* vr$56 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$56;
}

int64 SYMBGETDEFTYPE( uint8* SYMBOL$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$605:;
	int64 C$1;
	int64 I$1;
	C$1 = (int64)*(uint8*)SYMBOL$1;
	if( ((int64)-((uint64)C$1 >= 97ull) & (int64)-((uint64)C$1 <= 122ull)) == 0ll ) goto label$608;
	{
		C$1 = (int64)((uint64)C$1 + 18446744073709551584ull);
	}
	label$608:;
	label$607:;
	I$1 = (int64)((uint64)C$1 + 18446744073709551551ull);
	if( ((int64)-(I$1 < 0ll) | (int64)-(I$1 > 30ll)) == 0ll ) goto label$610;
	{
		if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$612;
		{
			fb$result$1 = 15ll;
		}
		goto label$611;
		label$612:;
		{
			fb$result$1 = 8ll;
		}
		label$611:;
	}
	goto label$609;
	label$610:;
	{
		fb$result$1 = *(int64*)((int64)(int64*)DEFTYPETB$ + (I$1 << (3ll & 63ll)));
	}
	label$609:;
	label$606:;
	return fb$result$1;
}

void SYMBSETDEFTYPE( int64 ICHAR$1, int64 ECHAR$1, int64 DTYPE$1 )
{
	label$613:;
	int64 I$1;
	if( (uint64)ICHAR$1 >= 65ull ) goto label$616;
	{
		ICHAR$1 = 65ll;
	}
	goto label$615;
	label$616:;
	if( (uint64)ICHAR$1 <= 95ull ) goto label$617;
	{
		ICHAR$1 = 95ll;
	}
	label$617:;
	label$615:;
	if( (uint64)ECHAR$1 >= 65ull ) goto label$619;
	{
		ECHAR$1 = 65ll;
	}
	goto label$618;
	label$619:;
	if( (uint64)ECHAR$1 <= 95ull ) goto label$620;
	{
		ECHAR$1 = 95ll;
	}
	label$620:;
	label$618:;
	if( ICHAR$1 <= ECHAR$1 ) goto label$622;
	{
		{
			int64 TMP$139$3;
			TMP$139$3 = ICHAR$1;
			ICHAR$1 = ECHAR$1;
			ECHAR$1 = TMP$139$3;
		}
	}
	label$622:;
	label$621:;
	{
		I$1 = ICHAR$1;
		int64 TMP$140$2;
		TMP$140$2 = ECHAR$1;
		goto label$623;
		label$626:;
		{
			*(int64*)((int64)(int64*)DEFTYPETB$ + ((int64)((uint64)I$1 + 18446744073709551551ull) << (3ll & 63ll))) = DTYPE$1;
		}
		label$624:;
		I$1 = I$1 + 1ll;
		label$623:;
		if( I$1 <= TMP$140$2 ) goto label$626;
		label$625:;
	}
	label$614:;
}

void SYMBRECALCLEN( struct $8FBSYMBOL* SYM$1 )
{
	label$627:;
	if( *(int64*)SYM$1 != 4ll ) goto label$630;
	{
		int64 vr$4 = SYMBCALCPARAMLEN( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll), *($12FB_PARAMMODE*)((uint8*)SYM$1 + 96ll) );
		*(int64*)((uint8*)SYM$1 + 80ll) = vr$4;
	}
	goto label$629;
	label$630:;
	{
		int64 vr$8 = SYMBCALCLEN( *(int64*)((uint8*)SYM$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) );
		*(int64*)((uint8*)SYM$1 + 80ll) = vr$8;
	}
	label$629:;
	label$628:;
}

void SYMBSETTYPE( struct $8FBSYMBOL* SYM$1, int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	label$631:;
	*($11FB_DATATYPE*)((uint8*)SYM$1 + 56ll) = DTYPE$1;
	*(struct $8FBSYMBOL**)((uint8*)SYM$1 + 64ll) = SUBTYPE$1;
	SYMBRECALCLEN( SYM$1 );
	if( *(int64*)SYM$1 != 3ll ) goto label$634;
	{
		SYMBPROCRECALCREALTYPE( SYM$1 );
	}
	label$634:;
	label$633:;
	if( (DTYPE$1 & 31ll) != 23ll ) goto label$636;
	{
		SYMBADDTOFWDREF( SUBTYPE$1, SYM$1 );
	}
	label$636:;
	label$635:;
	label$632:;
}

int64 SYMBCALCLEN( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 TMP$141$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$637:;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$639;
	TMP$141$1 = 24ll;
	goto label$646;
	label$639:;
	TMP$141$1 = DTYPE$1 & 31ll;
	label$646:;
	DTYPE$1 = TMP$141$1;
	{
		uint64 TMP$142$2;
		TMP$142$2 = (uint64)DTYPE$1;
		goto label$641;
		label$642:;
		{
			fb$result$1 = 0ll;
		}
		goto label$640;
		label$643:;
		{
			fb$result$1 = *(int64*)((uint8*)SUBTYPE$1 + 80ll);
		}
		goto label$640;
		label$644:;
		{
			int64 TMP$143$3;
			if( (DTYPE$1 & 480ll) == 0ll ) goto label$645;
			TMP$143$3 = 24ll;
			goto label$647;
			label$645:;
			TMP$143$3 = DTYPE$1 & 31ll;
			label$647:;
			fb$result$1 = *(int64*)(((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$143$3 * 56ll)) + 8ll);
		}
		goto label$640;
		label$641:;
		static const void* tmp$144[3ll] = {
			&&label$642,
			&&label$644,
			&&label$643,
		};
		if( (TMP$142$2 - 18ull) > 2ull ) goto label$644;
		goto *tmp$144[TMP$142$2 - 18ull];
		label$640:;
	}
	label$638:;
	return fb$result$1;
}

int64 SYMBCALCDEREFLEN( int64 DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$648:;
	int64 LENGTH$1;
	int64 vr$11 = SYMBCALCLEN( (((DTYPE$1 & 31ll) | ((DTYPE$1 & 480ll) + -32ll)) | (((DTYPE$1 & 261632ll) >> (1ll & 63ll)) & 261632ll)) | (DTYPE$1 & 32505856ll), SUBTYPE$1 );
	LENGTH$1 = vr$11;
	if( LENGTH$1 != 0ll ) goto label$651;
	{
		if( DTYPE$1 != 32ll ) goto label$653;
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

int64 SYMBISPARENTNAMESPACE( $11FB_DATATYPE DTYPE$1, struct $8FBSYMBOL* SUBTYPE$1, struct $8FBSYMBOL* START_NS$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$654:;
	struct $8FBSYMBOL* CONTEXT$1;
	if( (DTYPE$1 & 511ll) == 20ll ) goto label$657;
	{
		fb$result$1 = 0ll;
		goto label$655;
	}
	label$657:;
	label$656:;
	if( SUBTYPE$1 != (struct $8FBSYMBOL*)0ull ) goto label$659;
	{
		fb$result$1 = 0ll;
		goto label$655;
	}
	label$659:;
	label$658:;
	if( START_NS$1 == (struct $8FBSYMBOL*)0ull ) goto label$661;
	{
		CONTEXT$1 = START_NS$1;
	}
	goto label$660;
	label$661:;
	{
		CONTEXT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
	}
	label$660:;
	if( ((int64)*(int32*)((uint8*)SUBTYPE$1 + 208ll) & 262144ll) != 0ll ) goto label$663;
	{
		fb$result$1 = (int64)-(CONTEXT$1 == SUBTYPE$1);
		goto label$655;
	}
	label$663:;
	label$662:;
	label$664:;
	if( CONTEXT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$665;
	{
		if( *(int64*)CONTEXT$1 != 10ll ) goto label$667;
		{
			if( CONTEXT$1 != SUBTYPE$1 ) goto label$669;
			{
				fb$result$1 = -1ll;
				goto label$655;
			}
			label$669:;
			label$668:;
		}
		label$667:;
		label$666:;
		CONTEXT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)CONTEXT$1 + 288ll);
	}
	goto label$664;
	label$665:;
	fb$result$1 = 0ll;
	goto label$655;
	label$655:;
	return fb$result$1;
}

int64 SYMBCHECKACCESS( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$682:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* CONTEXT$1;
	if( (*(int64*)((uint8*)SYM$1 + 8ll) & 6291456ll) != 0ll ) goto label$685;
	{
		fb$result$1 = -1ll;
		goto label$683;
	}
	label$685:;
	label$684:;
	PARENT$1 = SYM$1;
	label$686:;
	{
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 248ll);
	}
	label$688:;
	if( *(int64*)PARENT$1 != 10ll ) goto label$686;
	label$687:;
	int64 vr$6 = HSYMBCHECKACCESSPARENT( SYM$1, PARENT$1 );
	fb$result$1 = vr$6;
	label$683:;
	return fb$result$1;
}

int64 SYMBCHECKACCESSSTRUCT( struct $8FBSYMBOL* SYM$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$689:;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* CONTEXT$1;
	PARENT$1 = SYM$1;
	label$691:;
	{
		if( (*(int64*)((uint8*)PARENT$1 + 8ll) & 6291456ll) == 0ll ) goto label$695;
		{
			goto label$692;
		}
		label$695:;
		label$694:;
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 248ll);
		if( PARENT$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$697;
		{
			fb$result$1 = -1ll;
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
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 248ll);
	}
	label$700:;
	if( *(int64*)PARENT$1 != 10ll ) goto label$698;
	label$699:;
	label$701:;
	{
		int64 vr$9 = HSYMBCHECKACCESSPARENT( SYM$1, PARENT$1 );
		if( vr$9 == 0ll ) goto label$705;
		{
			fb$result$1 = -1ll;
			goto label$690;
		}
		label$705:;
		label$704:;
		PARENT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PARENT$1 + 248ll);
	}
	label$703:;
	if( PARENT$1 != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$701;
	label$702:;
	fb$result$1 = 0ll;
	label$690:;
	return fb$result$1;
}

int64 SYMBCHECKCONSTASSIGNTOPLEVEL( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int64* MATCHES$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$706:;
	int64 I$1;
	int64 LCOUNT$1;
	int64 RCOUNT$1;
	int64 RMATCHES$1;
	int64 LCONST$1;
	int64 RCONST$1;
	fb$result$1 = 0ll;
	*MATCHES$1 = 0ll;
	if( ((LDTYPE$1 & 261632ll) | (RDTYPE$1 & 261632ll)) != 0ll ) goto label$709;
	{
		fb$result$1 = -1ll;
		goto label$707;
	}
	label$709:;
	label$708:;
	if( MODE$1 != 4ll ) goto label$711;
	{
		fb$result$1 = -1ll;
		goto label$707;
	}
	label$711:;
	label$710:;
	LCOUNT$1 = (LDTYPE$1 & 480ll) >> (5ll & 63ll);
	RCOUNT$1 = (RDTYPE$1 & 480ll) >> (5ll & 63ll);
	I$1 = 0ll;
	RMATCHES$1 = RCOUNT$1;
	{
		if( MODE$1 != 1ll ) goto label$713;
		label$714:;
		{
			I$1 = 1ll;
			*MATCHES$1 = RCOUNT$1 + 1ll;
			if( (LDTYPE$1 & 512ll) == 0ll ) goto label$716;
			{
				*MATCHES$1 = *MATCHES$1 + 1ll;
			}
			label$716:;
			label$715:;
		}
		goto label$712;
		label$713:;
		if( MODE$1 != 0ll ) goto label$717;
		label$718:;
		{
			I$1 = 1ll;
		}
		goto label$712;
		label$717:;
		{
			RMATCHES$1 = RMATCHES$1 + 1ll;
		}
		label$719:;
		label$712:;
	}
	label$720:;
	if( ((int64)-(I$1 <= LCOUNT$1) & (int64)-(I$1 <= RCOUNT$1)) == 0ll ) goto label$721;
	{
		LCONST$1 = (int64)-((LDTYPE$1 & (1ll << ((I$1 + 9ll) & 63ll))) != 0ll);
		RCONST$1 = (int64)-((RDTYPE$1 & (1ll << ((I$1 + 9ll) & 63ll))) != 0ll);
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
		if( (RCONST$1 & ~LCONST$1) == 0ll ) goto label$727;
		{
			goto label$707;
		}
		label$727:;
		label$726:;
		RMATCHES$1 = RMATCHES$1 + -1ll;
		I$1 = I$1 + 1ll;
	}
	goto label$720;
	label$721:;
	fb$result$1 = -1ll;
	label$707:;
	return fb$result$1;
}

int64 SYMBCHECKCONSTASSIGN( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int64* MATCHES$1, $13FB_WARNINGMSG* WRNMSG$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$743:;
	int64 RET$1;
	int64 vr$1 = SYMBCHECKCONSTASSIGNTOPLEVEL( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, MODE$1, MATCHES$1 );
	RET$1 = vr$1;
	if( RET$1 == 0ll ) goto label$746;
	{
		if( ((int64)-((LDTYPE$1 & 31ll) == 22ll) & (int64)-((RDTYPE$1 & 31ll) == 22ll)) == 0ll ) goto label$748;
		{
			int64 vr$7 = HSYMBCHECKCONSTASSIGNFUNCPTR( LDTYPE$1, RDTYPE$1, LSUBTYPE$1, RSUBTYPE$1, MODE$1, MATCHES$1, WRNMSG$1 );
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

void SYMBFOREACHGLOBAL( int64 SYMCLASS$1, tmp$42 CALLBACK$1 )
{
	label$762:;
	HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 196808ll), SYMCLASS$1, CALLBACK$1 );
	label$763:;
}

FBSTRING* SYMBDUMPPRETTYTOSTR( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING TMP$170$1;
	FBSTRING TMP$171$1;
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$772:;
	__builtin_memset( &TMP$170$1, 0, 24ll );
	FBSTRING* vr$6 = fb_StrConcat( &TMP$170$1, *(void**)(((int64)(uint8**)CLASSNAMESPRETTY$ + (*(int64*)SYM$1 << (3ll & 63ll))) + -8ll), 0ll, (void*)" ", 2ll );
	__builtin_memset( &TMP$171$1, 0, 24ll );
	FBSTRING* vr$9 = fb_StrConcat( &TMP$171$1, (void*)vr$6, -1ll, *(void**)((uint8*)SYM$1 + 32ll), 0ll );
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)vr$9, -1ll, 0 );
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
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HINITDEFTYPETB( void )
{
	label$14:;
	int64 DTYPE$1;
	__builtin_memset( &DTYPE$1, 0, 8ll );
	int64 I$1;
	__builtin_memset( &I$1, 0, 8ll );
	if( *(int64*)((uint8*)&ENV$ + 272ll) != 3ll ) goto label$17;
	{
		DTYPE$1 = 15ll;
	}
	goto label$16;
	label$17:;
	{
		DTYPE$1 = 8ll;
	}
	label$16:;
	{
		I$1 = 0ll;
		label$21:;
		{
			*(int64*)((int64)(int64*)DEFTYPETB$ + (I$1 << (3ll & 63ll))) = DTYPE$1;
		}
		label$19:;
		I$1 = I$1 + 1ll;
		label$18:;
		if( I$1 <= 30ll ) goto label$21;
		label$20:;
	}
	label$15:;
}

static struct $10FBSYMCHAIN* CHAINPOOLNEXT( void )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$230:;
	*(int64*)((uint8*)&SYMB$ + 196696ll) = *(int64*)((uint8*)&SYMB$ + 196696ll) + 1ll;
	if( *(int64*)((uint8*)&SYMB$ + 196696ll) < 4096ll ) goto label$233;
	{
		*(int64*)((uint8*)&SYMB$ + 196696ll) = 0ll;
	}
	label$233:;
	label$232:;
	fb$result$1 = (struct $10FBSYMCHAIN*)((uint8*)((uint8*)&SYMB$ + (*(int64*)((uint8*)&SYMB$ + 196696ll) * 48ll)) + 88ll);
	goto label$231;
	label$231:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HLOOKUPIMPORTLIST( struct $8FBSYMBOL* NS$1, uint8* ID$1, uint64 INDEX$1, $16FB_SYMBLOOKUPOPT OPTIONS$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$236:;
	struct $8FBSYMBOL* PARENT$1;
	struct $10FBSYMCHAIN* HEAD$1;
	HEAD$1 = (struct $10FBSYMCHAIN*)0ull;
	struct $10FBSYMCHAIN* TAIL$1;
	TAIL$1 = (struct $10FBSYMCHAIN*)0ull;
	struct $10FBSYMCHAIN* CHAIN_$1;
	int64 ADD$1;
	struct $8FBSYMBOL* IMP_$1;
	IMP_$1 = *(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll);
	label$238:;
	if( IMP_$1 == (struct $8FBSYMBOL*)0ull ) goto label$239;
	{
		struct $8FBSYMBOL* SYM$2;
		void* vr$6 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 96ll) + 128ll), ID$1, INDEX$1 );
		SYM$2 = (struct $8FBSYMBOL*)vr$6;
		if( SYM$2 == (struct $8FBSYMBOL*)0ull ) goto label$241;
		{
			struct $10FBSYMCHAIN* vr$7 = CHAINPOOLNEXT(  );
			CHAIN_$1 = vr$7;
			ADD$1 = 0ll;
			if( (OPTIONS$1 & 1ll) == 0ll ) goto label$243;
			{
				PARENT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$2 + 288ll);
				{
					int64 TMP$111$5;
					TMP$111$5 = *(int64*)((uint8*)PARENT$1 + 56ll) & 511ll;
					if( TMP$111$5 != 20ll ) goto label$245;
					label$246:;
					{
						int64 vr$13 = SYMBGETUDTBASELEVEL( NS$1, PARENT$1 );
						if( vr$13 <= 0ll ) goto label$248;
						{
							ADD$1 = -1ll;
						}
						label$248:;
						label$247:;
					}
					goto label$244;
					label$245:;
					if( TMP$111$5 != 10ll ) goto label$249;
					label$250:;
					{
						ADD$1 = -1ll;
					}
					label$249:;
					label$244:;
				}
			}
			goto label$242;
			label$243:;
			{
				ADD$1 = -1ll;
			}
			label$242:;
			if( ADD$1 != -1ll ) goto label$252;
			{
				*(struct $8FBSYMBOL**)CHAIN_$1 = SYM$2;
				*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll) = (struct $10FBSYMCHAIN*)0ull;
				*(int64*)((uint8*)CHAIN_$1 + 16ll) = -1ll;
				if( HEAD$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$254;
				{
					HEAD$1 = CHAIN_$1;
				}
				goto label$253;
				label$254:;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)TAIL$1 + 8ll) = CHAIN_$1;
				}
				label$253:;
				TAIL$1 = CHAIN_$1;
			}
			label$252:;
			label$251:;
		}
		label$241:;
		label$240:;
		IMP_$1 = *(struct $8FBSYMBOL**)((uint8*)IMP_$1 + 112ll);
	}
	goto label$238;
	label$239:;
	fb$result$1 = HEAD$1;
	goto label$237;
	label$237:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HSYMBLOOKUPNS( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1, struct $8FBHASHTB* HASHTB$1, uint64 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$255:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* FIRST_ANCESTOR$1;
	FIRST_ANCESTOR$1 = (struct $8FBSYMBOL*)0ull;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* IMP_CHAIN$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll);
	label$257:;
	{
		void* vr$3 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$3;
		label$260:;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$261;
		{
			if( *(struct $8FBSYMBOL**)HASHTB$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$263;
			{
				struct $10FBSYMCHAIN* vr$6 = SYMBNEWCHAINPOOL( SYM$1 );
				fb$result$1 = vr$6;
				goto label$256;
			}
			goto label$262;
			label$263:;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) != (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$265;
				{
					struct $10FBSYMCHAIN* vr$8 = SYMBNEWCHAINPOOL( SYM$1 );
					fb$result$1 = vr$8;
					goto label$256;
				}
				goto label$264;
				label$265:;
				{
					if( FIRST_ANCESTOR$1 != (struct $8FBSYMBOL*)0ull ) goto label$267;
					{
						FIRST_ANCESTOR$1 = SYM$1;
					}
					label$267:;
					label$266:;
				}
				label$264:;
			}
			label$262:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
		}
		goto label$260;
		label$261:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	label$259:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0ull ) goto label$257;
	label$258:;
	void* vr$12 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), (uint8*)ID$1, INDEX$1 );
	IMP_CHAIN$1 = (struct $10FBSYMCHAIN*)vr$12;
	if( IMP_CHAIN$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$269;
	{
		if( FIRST_ANCESTOR$1 == (struct $8FBSYMBOL*)0ull ) goto label$271;
		{
			struct $10FBSYMCHAIN* vr$13 = SYMBNEWCHAINPOOL( FIRST_ANCESTOR$1 );
			CHAIN_$1 = vr$13;
			*(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll) = IMP_CHAIN$1;
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
	if( FIRST_ANCESTOR$1 == (struct $8FBSYMBOL*)0ull ) goto label$273;
	{
		struct $10FBSYMCHAIN* vr$15 = SYMBNEWCHAINPOOL( FIRST_ANCESTOR$1 );
		fb$result$1 = vr$15;
		goto label$256;
	}
	label$273:;
	label$272:;
	fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
	goto label$256;
	label$256:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HSYMBLOOKUPTYPENS( uint8* ID$1, $8FB_TOKEN* TK$1, $10FB_TKCLASS* TK_CLASS$1, struct $8FBHASHTB* HASHTB$1, uint64 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$274:;
	struct $8FBSYMBOL* SYM$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* NS$1;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $10FBSYMCHAIN* IMP_CHAIN$1;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll);
	label$276:;
	{
		void* vr$3 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$3;
		label$279:;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$280;
		{
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll ) goto label$282;
			{
				struct $10FBSYMCHAIN* vr$6 = SYMBNEWCHAINPOOL( SYM$1 );
				fb$result$1 = vr$6;
				goto label$275;
			}
			label$282:;
			label$281:;
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
		}
		goto label$279;
		label$280:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	label$278:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0ull ) goto label$276;
	label$277:;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
	void* vr$11 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)NS$1 + 128ll), (uint8*)ID$1, INDEX$1 );
	SYM$1 = (struct $8FBSYMBOL*)vr$11;
	label$283:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$284;
	{
		if( (*(int64*)((uint8*)SYM$1 + 8ll) & 128ll) == 0ll ) goto label$286;
		{
			SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
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
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$288;
	{
		struct $10FBSYMCHAIN* vr$15 = SYMBNEWCHAINPOOL( SYM$1 );
		CHAIN_$1 = vr$15;
		fb$result$1 = CHAIN_$1;
		goto label$275;
	}
	label$288:;
	label$287:;
	NS$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
	if( ((int64)-(*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $13FBNAMESPC_EXT*)0ull) & (int64)-(*(struct $8FBSYMBOL**)*(struct $13FBNAMESPC_EXT**)((uint8*)NS$1 + 168ll) != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$290;
	{
		struct $10FBSYMCHAIN* vr$22 = HLOOKUPIMPORTLIST( NS$1, (uint8*)ID$1, INDEX$1, 0ll );
		CHAIN_$1 = vr$22;
		SYM$1 = (struct $8FBSYMBOL*)0ull;
		label$291:;
		if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$292;
		{
			SYM$1 = *(struct $8FBSYMBOL**)CHAIN_$1;
			label$293:;
			if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$294;
			{
				PARENT$1 = *(struct $8FBSYMBOL**)*(struct $10FBSYMBOLTB**)((uint8*)SYM$1 + 288ll);
				{
					int64 TMP$112$5;
					TMP$112$5 = *(int64*)((uint8*)PARENT$1 + 56ll) & 511ll;
					if( TMP$112$5 != 20ll ) goto label$296;
					label$297:;
					{
						int64 vr$28 = SYMBGETUDTBASELEVEL( NS$1, PARENT$1 );
						if( vr$28 <= 0ll ) goto label$299;
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
					if( TMP$112$5 != 10ll ) goto label$300;
					label$301:;
					{
					}
					label$300:;
					label$295:;
				}
				SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 280ll);
			}
			goto label$293;
			label$294:;
			CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
		}
		goto label$291;
		label$292:;
	}
	label$290:;
	label$289:;
	HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)&SYMB$ + 80ll);
	label$302:;
	{
		void* vr$35 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)HASHTB$1 + 8ll), (uint8*)ID$1, INDEX$1 );
		SYM$1 = (struct $8FBSYMBOL*)vr$35;
		if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$306;
		{
			struct $10FBSYMCHAIN* vr$36 = SYMBNEWCHAINPOOL( SYM$1 );
			fb$result$1 = vr$36;
			goto label$275;
		}
		label$306:;
		label$305:;
		HASHTB$1 = *(struct $8FBHASHTB**)((uint8*)HASHTB$1 + 32ll);
	}
	label$304:;
	if( HASHTB$1 != (struct $8FBHASHTB*)0ull ) goto label$302;
	label$303:;
	void* vr$39 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), (uint8*)ID$1, INDEX$1 );
	IMP_CHAIN$1 = (struct $10FBSYMCHAIN*)vr$39;
	fb$result$1 = IMP_CHAIN$1;
	goto label$275;
	label$275:;
	return fb$result$1;
}

static struct $10FBSYMCHAIN* HLOOKUPIMPORTHASH( struct $8FBSYMBOL* NS$1, uint8* ID$1, uint64 INDEX$1 )
{
	struct $10FBSYMCHAIN* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$324:;
	struct $10FBSYMCHAIN* CHAIN_HEAD$1;
	void* vr$2 = HASHLOOKUPEX( (struct $5THASH*)((uint8*)&SYMB$ + 197096ll), ID$1, INDEX$1 );
	CHAIN_HEAD$1 = (struct $10FBSYMCHAIN*)vr$2;
	if( CHAIN_HEAD$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$327;
	{
		fb$result$1 = (struct $10FBSYMCHAIN*)0ull;
		goto label$325;
	}
	label$327:;
	label$326:;
	struct $10FBSYMCHAIN* HEAD$1;
	HEAD$1 = (struct $10FBSYMCHAIN*)0ull;
	struct $10FBSYMCHAIN* TAIL$1;
	TAIL$1 = (struct $10FBSYMCHAIN*)0ull;
	struct $10FBSYMCHAIN* CHAIN_$1;
	CHAIN_$1 = CHAIN_HEAD$1;
	label$328:;
	{
		struct $8FBSYMBOL* EXP_$2;
		EXP_$2 = *(struct $8FBSYMBOL**)((uint8*)*(struct $13FBNAMESPC_EXT**)((uint8*)*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)*(struct $8FBSYMBOL**)CHAIN_$1 + 248ll) + 168ll) + 16ll);
		label$331:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)EXP_$2 + 120ll) != NS$1 ) goto label$335;
			{
				struct $10FBSYMCHAIN* NODE$4;
				struct $10FBSYMCHAIN* vr$9 = CHAINPOOLNEXT(  );
				NODE$4 = vr$9;
				*(struct $8FBSYMBOL**)NODE$4 = *(struct $8FBSYMBOL**)CHAIN_$1;
				*(struct $10FBSYMCHAIN**)((uint8*)NODE$4 + 8ll) = (struct $10FBSYMCHAIN*)0ull;
				*(int64*)((uint8*)NODE$4 + 16ll) = -1ll;
				if( HEAD$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$337;
				{
					HEAD$1 = NODE$4;
				}
				goto label$336;
				label$337:;
				{
					*(struct $10FBSYMCHAIN**)((uint8*)TAIL$1 + 8ll) = NODE$4;
				}
				label$336:;
				TAIL$1 = NODE$4;
			}
			label$335:;
			label$334:;
			EXP_$2 = *(struct $8FBSYMBOL**)((uint8*)EXP_$2 + 136ll);
		}
		label$333:;
		if( EXP_$2 != (struct $8FBSYMBOL*)0ull ) goto label$331;
		label$332:;
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)CHAIN_$1 + 8ll);
	}
	label$330:;
	if( CHAIN_$1 != (struct $10FBSYMCHAIN*)0ull ) goto label$328;
	label$329:;
	fb$result$1 = HEAD$1;
	goto label$325;
	label$325:;
	return fb$result$1;
}

static int64 HSYMBCHECKACCESSPARENT( struct $8FBSYMBOL* SYM$1, struct $8FBSYMBOL* PARENT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$670:;
	struct $8FBSYMBOL* CONTEXT$1;
	CONTEXT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
	label$672:;
	if( CONTEXT$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$673;
	{
		if( *(int64*)CONTEXT$1 != 10ll ) goto label$675;
		{
			if( CONTEXT$1 != PARENT$1 ) goto label$677;
			{
				fb$result$1 = -1ll;
				goto label$671;
			}
			label$677:;
			label$676:;
			if( (*(int64*)((uint8*)SYM$1 + 8ll) & 4194304ll) == 0ll ) goto label$679;
			{
				int64 vr$5 = SYMBGETUDTBASELEVEL( CONTEXT$1, PARENT$1 );
				if( vr$5 <= 0ll ) goto label$681;
				{
					fb$result$1 = -1ll;
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
		CONTEXT$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)CONTEXT$1 + 248ll);
	}
	goto label$672;
	label$673:;
	label$671:;
	return fb$result$1;
}

static int64 HSYMBCHECKCONSTASSIGNFUNCPTR( $11FB_DATATYPE LDTYPE$1, $11FB_DATATYPE RDTYPE$1, struct $8FBSYMBOL* LSUBTYPE$1, struct $8FBSYMBOL* RSUBTYPE$1, $12FB_PARAMMODE MODE$1, int64* MATCHES$1, $13FB_WARNINGMSG* WRNMSG$1 )
{
	$12FB_PARAMMODE TMP$145$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$728:;
	fb$result$1 = 0ll;
	$22FB_OVLPROC_MATCH_SCORE MATCH$1;
	if( (*(int64*)((uint8*)LSUBTYPE$1 + 16ll) & 2048ll) == 0ll ) goto label$730;
	TMP$145$1 = 2ll;
	goto label$774;
	label$730:;
	TMP$145$1 = 1ll;
	label$774:;
	$22FB_OVLPROC_MATCH_SCORE vr$7 = TYPECALCMATCH( *(int64*)((uint8*)LSUBTYPE$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)LSUBTYPE$1 + 64ll), TMP$145$1, *(int64*)((uint8*)RSUBTYPE$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)RSUBTYPE$1 + 64ll) );
	MATCH$1 = vr$7;
	if( MATCH$1 != 0ll ) goto label$732;
	{
		*WRNMSG$1 = 41ll;
		goto label$729;
	}
	label$732:;
	label$731:;
	if( (int64)-((*(int64*)((uint8*)LSUBTYPE$1 + 16ll) & 2048ll) != 0ll) == (int64)-((*(int64*)((uint8*)RSUBTYPE$1 + 16ll) & 2048ll) != 0ll) ) goto label$734;
	{
		*WRNMSG$1 = 28ll;
		goto label$729;
	}
	label$734:;
	label$733:;
	int64 vr$16 = SYMBAREPROCMODESEQUAL( LSUBTYPE$1, RSUBTYPE$1 );
	if( vr$16 != 0ll ) goto label$736;
	{
		*WRNMSG$1 = 42ll;
		goto label$729;
	}
	label$736:;
	label$735:;
	if( (int64)*(int16*)((uint8*)LSUBTYPE$1 + 120ll) == (int64)*(int16*)((uint8*)RSUBTYPE$1 + 120ll) ) goto label$738;
	{
		*WRNMSG$1 = 43ll;
		goto label$729;
	}
	label$738:;
	label$737:;
	struct $8FBSYMBOL* LPARAM$1;
	LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LSUBTYPE$1 + 136ll);
	struct $8FBSYMBOL* RPARAM$1;
	RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RSUBTYPE$1 + 136ll);
	label$739:;
	if( LPARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$740;
	{
		int64 TMP$146$2;
		$11FB_DATATYPE R$2;
		R$2 = *($11FB_DATATYPE*)((uint8*)LPARAM$1 + 56ll);
		$11FB_DATATYPE L$2;
		L$2 = *($11FB_DATATYPE*)((uint8*)RPARAM$1 + 56ll);
		struct $8FBSYMBOL* RS$2;
		RS$2 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 64ll);
		struct $8FBSYMBOL* LS$2;
		LS$2 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 64ll);
		$12FB_PARAMMODE M$2;
		M$2 = *($12FB_PARAMMODE*)((uint8*)LPARAM$1 + 96ll);
		TMP$146$2 = 0ll;
		int64 vr$31 = SYMBCHECKCONSTASSIGN( L$2, R$2, LS$2, RS$2, M$2, &TMP$146$2, WRNMSG$1 );
		if( vr$31 != 0ll ) goto label$742;
		{
			goto label$729;
		}
		label$742:;
		label$741:;
		LPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)LPARAM$1 + 312ll);
		RPARAM$1 = *(struct $8FBSYMBOL**)((uint8*)RPARAM$1 + 312ll);
	}
	goto label$739;
	label$740:;
	fb$result$1 = -1ll;
	label$729:;
	return fb$result$1;
}

static void HFOREACHGLOBAL( struct $8FBSYMBOL* SYM$1, int64 SYMCLASS$1, tmp$42 CALLBACK$1 )
{
	label$749:;
	label$751:;
	if( SYM$1 == (struct $8FBSYMBOL*)0ull ) goto label$752;
	{
		{
			$12FB_SYMBCLASS TMP$147$3;
			TMP$147$3 = *($12FB_SYMBCLASS*)SYM$1;
			if( TMP$147$3 != 8ll ) goto label$754;
			label$755:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$754:;
			if( TMP$147$3 != 10ll ) goto label$756;
			label$757:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 104ll), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$756:;
			if( TMP$147$3 != 15ll ) goto label$758;
			label$759:;
			{
				HFOREACHGLOBAL( *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 112ll), SYMCLASS$1, CALLBACK$1 );
			}
			goto label$753;
			label$758:;
			if( TMP$147$3 != SYMCLASS$1 ) goto label$760;
			label$761:;
			{
				(CALLBACK$1)( SYM$1 );
			}
			label$760:;
			label$753:;
		}
		SYM$1 = *(struct $8FBSYMBOL**)((uint8*)SYM$1 + 312ll);
	}
	goto label$751;
	label$752:;
	label$750:;
}

static FBSTRING* HGETNAMESPACEPREFIX( struct $8FBSYMBOL* SYM$1 )
{
	FBSTRING fb$result$1;
	__builtin_memset( &fb$result$1, 0, 24ll );
	label$764:;
	struct $8FBSYMBOL* NS$1;
	FBSTRING S$1;
	__builtin_memset( &S$1, 0, 24ll );
	if( *(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll) != (struct $8FBHASHTB*)0ull ) goto label$767;
	{
		fb_StrInit( (void*)&fb$result$1, -1ll, (void*)"<no hash tb>", 13ll, 0 );
		fb_StrDelete( (FBSTRING*)&S$1 );
		goto label$765;
	}
	label$767:;
	label$766:;
	NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)SYM$1 + 248ll);
	label$768:;
	if( NS$1 == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$769;
	{
		FBSTRING TMP$149$2;
		FBSTRING TMP$150$2;
		__builtin_memset( &TMP$149$2, 0, 24ll );
		FBSTRING* vr$12 = fb_StrConcat( &TMP$149$2, *(void**)((uint8*)NS$1 + 32ll), 0ll, (void*)".", 2ll );
		__builtin_memset( &TMP$150$2, 0, 24ll );
		FBSTRING* vr$15 = fb_StrConcat( &TMP$150$2, (void*)vr$12, -1ll, (void*)&S$1, -1ll );
		fb_StrAssign( (void*)&S$1, -1ll, (void*)vr$15, -1ll, 0 );
		if( *(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll) != (struct $8FBHASHTB*)0ull ) goto label$771;
		{
			goto label$769;
		}
		label$771:;
		label$770:;
		NS$1 = *(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)NS$1 + 248ll);
	}
	goto label$768;
	label$769:;
	fb_StrAssign( (void*)&fb$result$1, -1ll, (void*)&S$1, -1ll, 0 );
	fb_StrDelete( (FBSTRING*)&S$1 );
	label$765:;
	FBSTRING* vr$24 = fb_StrAllocTempResult( (FBSTRING*)&fb$result$1 );
	return vr$24;
}
