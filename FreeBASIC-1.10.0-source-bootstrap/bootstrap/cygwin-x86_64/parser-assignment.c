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
typedef int64 $6AST_OP;
typedef int64 $13AST_NODECLASS;
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
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
struct $15FB_LETSTMT_NODE {
	struct $7ASTNODE* EXPR;
};
__FB_STATIC_ASSERT( sizeof( struct $15FB_LETSTMT_NODE ) == 8 );
struct $11TSTRSETITEM {
	FBSTRING S;
	int64 USERDATA;
	struct $8HASHITEM* HASHITEM;
};
__FB_STATIC_ASSERT( sizeof( struct $11TSTRSETITEM ) == 40 );
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
FBSTRING* fb_StrConcatAssign( void*, int64, void*, int64, int32 );
FBSTRING* fb_LongintToStr( int64 );
static void fb_ctor__parserzassignment( void ) __attribute__(( constructor ));
void LISTINIT( struct $5TLIST*, int64, int64, $10LIST_FLAGS );
void LISTEND( struct $5TLIST* );
void* LISTNEWNODE( struct $5TLIST* );
void LISTDELNODE( struct $5TLIST*, void* );
void* LISTGETHEAD( struct $5TLIST* );
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
void ASTDELTREE( struct $7ASTNODE* );
int64 ASTISCONSTANT( struct $7ASTNODE* );
struct $7ASTNODE* ASTADD( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWNOP( void );
struct $7ASTNODE* ASTNEWASSIGN( struct $7ASTNODE*, struct $7ASTNODE*, $9AST_OPOPT );
struct $7ASTNODE* ASTSKIPNOCONVCAST( struct $7ASTNODE* );
struct $7ASTNODE* ASTSKIPCASTS( struct $7ASTNODE* );
struct $7ASTNODE* ASTNEWBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWSELFBOP( int64, struct $7ASTNODE*, struct $7ASTNODE*, struct $8FBSYMBOL*, $9AST_OPOPT );
struct $7ASTNODE* ASTNEWCONSTI( int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWVAR( struct $8FBSYMBOL*, int64, int64, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWFIELD( struct $7ASTNODE*, struct $8FBSYMBOL* );
struct $7ASTNODE* ASTNEWDEREF( struct $7ASTNODE*, int64, struct $8FBSYMBOL*, int64 );
struct $7ASTNODE* ASTNEWADDROF( struct $7ASTNODE* );
typedef int64 $15AST_LINK_RETURN;
struct $7ASTNODE* ASTNEWLINK( struct $7ASTNODE*, struct $7ASTNODE*, $15AST_LINK_RETURN );
struct $7ASTNODE* _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( struct $8FBSYMBOL*, struct $7ASTNODE*, int64 );
struct $7ASTNODE* ASTBUILDCALLRESULTUDT( struct $7ASTNODE* );
struct $8FBSYMBOL* SYMBADDTEMPVAR( int64, struct $8FBSYMBOL* );
int64 SYMBCHECKACCESS( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETFIRSTFIELD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBUDTGETNEXTFIELD( struct $8FBSYMBOL* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 LEXGETLOOKAHEAD( int64, $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
typedef int64 $15FB_CMPSTMT_MASK;
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
int64 CASSIGNMENTORPTRCALLEX( struct $7ASTNODE* );
int64 HISASSIGNTOKEN( int64 );
int64 CASSIGNTOKEN( void );
int64 COPERATOR( int64 );
struct $7ASTNODE* CEXPRESSION( void );
typedef int64 $13FB_VAREXPROPT;
struct $7ASTNODE* CVARORDEREF( $13FB_VAREXPROPT );
int64 CMAYBEIGNORECALLRESULT( struct $7ASTNODE* );
void CASSIGNMENT( struct $7ASTNODE* );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
static uint8* HCARD2ORD( int64 );
static void HREPORTLETERROR( int64, int64 );
static struct $7ASTNODE* HASSIGNFROMFIELD( struct $8FBSYMBOL*, struct $7ASTNODE*, struct $8FBSYMBOL*, int64 );
extern struct $10AST_OPINFO AST_OPTB$[121];
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
typedef int64 $8FB_TOKEN;
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

void PARSERLETINIT( void )
{
	label$10:;
	LISTINIT( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll), 16ll, 8ll, 4294967295ll );
	label$11:;
}

void PARSERLETEND( void )
{
	label$12:;
	LISTEND( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll) );
	label$13:;
}

int64 HISASSIGNTOKEN( int64 TOKEN$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$14:;
	fb$result$1 = (int64)-(TOKEN$1 == 299ll) | (int64)-(TOKEN$1 == 305ll);
	label$15:;
	return fb$result$1;
}

int64 CASSIGNTOKEN( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$16:;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	int64 vr$2 = HISASSIGNTOKEN( vr$1 );
	if( vr$2 == 0ll ) goto label$19;
	{
		LEXSKIPTOKEN( 0ll );
		fb$result$1 = -1ll;
	}
	goto label$18;
	label$19:;
	{
		fb$result$1 = 0ll;
	}
	label$18:;
	label$17:;
	return fb$result$1;
}

int64 COPERATOR( int64 IS_OVERLOAD$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$20:;
	int64 OP$1;
	int64 TK$1;
	fb$result$1 = -1ll;
	OP$1 = -1ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	TK$1 = vr$1;
	{
		uint64 TMP$93$2;
		TMP$93$2 = (uint64)TK$1;
		goto label$23;
		label$24:;
		{
			OP$1 = 34ll;
		}
		goto label$22;
		label$25:;
		{
			OP$1 = 35ll;
		}
		goto label$22;
		label$26:;
		{
			OP$1 = 36ll;
		}
		goto label$22;
		label$27:;
		{
			OP$1 = 37ll;
		}
		goto label$22;
		label$28:;
		{
			OP$1 = 38ll;
		}
		goto label$22;
		label$29:;
		{
			OP$1 = 39ll;
		}
		goto label$22;
		label$30:;
		{
			OP$1 = 40ll;
		}
		goto label$22;
		label$31:;
		{
			OP$1 = 41ll;
		}
		goto label$22;
		label$32:;
		{
			OP$1 = 42ll;
		}
		goto label$22;
		label$33:;
		{
			OP$1 = 33ll;
		}
		goto label$22;
		label$34:;
		{
			OP$1 = 28ll;
		}
		goto label$22;
		label$35:;
		{
			OP$1 = 29ll;
		}
		goto label$22;
		label$36:;
		{
			OP$1 = 32ll;
		}
		goto label$22;
		label$37:;
		{
			OP$1 = 30ll;
		}
		goto label$22;
		label$38:;
		{
			OP$1 = 31ll;
		}
		goto label$22;
		label$39:;
		{
			OP$1 = 43ll;
		}
		goto label$22;
		label$40:;
		{
			OP$1 = 44ll;
		}
		goto label$22;
		label$41:;
		{
			if( IS_OVERLOAD$1 != 0ll ) goto label$43;
			{
				goto label$21;
			}
			label$43:;
			label$42:;
			LEXSKIPTOKEN( 2048ll );
			{
				uint64 TMP$94$4;
				TMP$94$4 = (uint64)TK$1;
				goto label$45;
				label$46:;
				{
					OP$1 = 45ll;
				}
				goto label$44;
				label$47:;
				{
					OP$1 = 46ll;
				}
				goto label$44;
				label$48:;
				{
					OP$1 = 47ll;
				}
				goto label$44;
				label$49:;
				{
					OP$1 = 48ll;
				}
				goto label$44;
				label$50:;
				{
					OP$1 = 50ll;
				}
				goto label$44;
				label$51:;
				{
					OP$1 = 49ll;
				}
				goto label$44;
				label$52:;
				{
					OP$1 = 0ll;
				}
				goto label$44;
				label$53:;
				{
					OP$1 = 52ll;
				}
				goto label$44;
				label$54:;
				{
					OP$1 = 27ll;
				}
				goto label$44;
				label$55:;
				{
					OP$1 = 56ll;
				}
				goto label$44;
				label$56:;
				{
					OP$1 = 57ll;
				}
				goto label$44;
				label$57:;
				{
					OP$1 = 71ll;
				}
				goto label$44;
				label$58:;
				{
					OP$1 = 72ll;
				}
				goto label$44;
				label$59:;
				{
					OP$1 = 70ll;
				}
				goto label$44;
				label$60:;
				{
					OP$1 = 69ll;
				}
				goto label$44;
				label$61:;
				{
					OP$1 = 68ll;
				}
				goto label$44;
				label$62:;
				{
					OP$1 = 58ll;
				}
				goto label$44;
				label$63:;
				{
					OP$1 = 59ll;
				}
				goto label$44;
				label$64:;
				{
					OP$1 = 60ll;
				}
				goto label$44;
				label$65:;
				{
					OP$1 = 61ll;
				}
				goto label$44;
				label$66:;
				{
					OP$1 = 62ll;
				}
				goto label$44;
				label$67:;
				{
					OP$1 = 63ll;
				}
				goto label$44;
				label$68:;
				{
					OP$1 = 65ll;
				}
				goto label$44;
				label$69:;
				{
					OP$1 = 73ll;
				}
				goto label$44;
				label$70:;
				{
					OP$1 = 22ll;
				}
				goto label$44;
				label$71:;
				{
					OP$1 = 77ll;
				}
				goto label$44;
				label$72:;
				{
					int64 vr$2 = HMATCH( 93ll, 0ll );
					if( vr$2 != 0ll ) goto label$74;
					{
						ERRREPORT( 66ll, 0ll, (uint8*)0ull );
					}
					label$74:;
					label$73:;
					OP$1 = 23ll;
				}
				goto label$44;
				label$75:;
				{
					int64 IS_NEW$5;
					IS_NEW$5 = (int64)-(TK$1 == 389ll);
					int64 vr$4 = HMATCH( 91ll, 0ll );
					if( vr$4 == 0ll ) goto label$77;
					{
						$6AST_OP TMP$95$6;
						int64 vr$5 = HMATCH( 93ll, 0ll );
						if( vr$5 != 0ll ) goto label$79;
						{
							ERRREPORT( 66ll, 0ll, (uint8*)0ull );
						}
						label$79:;
						label$78:;
						if( IS_NEW$5 == 0ll ) goto label$80;
						TMP$95$6 = 19ll;
						goto label$91;
						label$80:;
						TMP$95$6 = 21ll;
						label$91:;
						OP$1 = TMP$95$6;
					}
					goto label$76;
					label$77:;
					{
						$6AST_OP TMP$96$6;
						if( IS_NEW$5 == 0ll ) goto label$81;
						TMP$96$6 = 18ll;
						goto label$92;
						label$81:;
						TMP$96$6 = 20ll;
						label$92:;
						OP$1 = TMP$96$6;
					}
					label$76:;
				}
				goto label$44;
				label$82:;
				{
					OP$1 = 24ll;
				}
				goto label$44;
				label$83:;
				{
					OP$1 = 25ll;
				}
				goto label$44;
				label$84:;
				{
					OP$1 = 26ll;
				}
				goto label$44;
				label$85:;
				{
				}
				goto label$44;
				label$45:;
				static const void* tmp$97[402ll] = {
					&&label$70,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$72,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$82,
					&&label$83,
					&&label$84,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$53,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$46,
					&&label$47,
					&&label$48,
					&&label$49,
					&&label$50,
					&&label$51,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$75,
					&&label$75,
					&&label$52,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$71,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$54,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$55,
					&&label$56,
					&&label$57,
					&&label$58,
					&&label$62,
					&&label$63,
					&&label$64,
					&&label$65,
					&&label$66,
					&&label$67,
					&&label$68,
					&&label$61,
					&&label$60,
					&&label$59,
					&&label$85,
					&&label$85,
					&&label$85,
					&&label$69,
				};
				if( (TMP$94$4 - 64ull) > 401ull ) goto label$85;
				goto *tmp$97[TMP$94$4 - 64ull];
				label$44:;
			}
			fb$result$1 = OP$1;
			goto label$21;
		}
		goto label$22;
		label$86:;
		{
			goto label$21;
		}
		goto label$22;
		label$23:;
		static const void* tmp$98[428ll] = {
			&&label$40,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$37,
			&&label$34,
			&&label$86,
			&&label$35,
			&&label$86,
			&&label$38,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$36,
			&&label$86,
			&&label$39,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$24,
			&&label$25,
			&&label$26,
			&&label$27,
			&&label$28,
			&&label$29,
			&&label$30,
			&&label$41,
			&&label$33,
			&&label$31,
			&&label$32,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$41,
			&&label$86,
			&&label$86,
			&&label$86,
			&&label$41,
		};
		if( (TMP$93$2 - 38ull) > 427ull ) goto label$86;
		goto *tmp$98[TMP$93$2 - 38ull];
		label$22:;
	}
	LEXSKIPTOKEN( 2048ll );
	if( IS_OVERLOAD$1 != 0ll ) goto label$88;
	{
		fb$result$1 = OP$1;
		goto label$21;
	}
	label$88:;
	label$87:;
	int64 vr$6 = CASSIGNTOKEN(  );
	if( vr$6 == 0ll ) goto label$90;
	{
		OP$1 = *(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 24ll);
	}
	label$90:;
	label$89:;
	fb$result$1 = OP$1;
	label$21:;
	return fb$result$1;
}

void CASSIGNMENT( struct $7ASTNODE* L$1 )
{
	label$93:;
	int64 vr$0 = ASTISCONSTANT( L$1 );
	if( vr$0 == 0ll ) goto label$96;
	{
		ERRREPORT( 119ll, -1ll, (uint8*)0ull );
	}
	label$96:;
	label$95:;
	int64 OP$1;
	OP$1 = -1ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	int64 vr$2 = HISASSIGNTOKEN( vr$1 );
	if( vr$2 != 0ll ) goto label$98;
	{
		int64 vr$3 = COPERATOR( 0ll );
		OP$1 = vr$3;
		int64 vr$4 = LEXGETTOKEN( 0ll );
		int64 vr$5 = HISASSIGNTOKEN( vr$4 );
		if( vr$5 != 0ll ) goto label$100;
		{
			ERRREPORT( 10ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
			goto label$94;
		}
		label$100:;
		label$99:;
		OP$1 = *(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 24ll);
	}
	label$98:;
	label$97:;
	LEXSKIPTOKEN( 0ll );
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = *(struct $8FBSYMBOL**)((uint8*)L$1 + 16ll);
	*(int64*)((uint8*)&PARSER$ + 312ll) = *(int64*)((uint8*)L$1 + 8ll) & 511ll;
	struct $7ASTNODE* R$1;
	struct $7ASTNODE* vr$10 = CEXPRESSION(  );
	R$1 = vr$10;
	if( R$1 != (struct $7ASTNODE*)0ull ) goto label$102;
	{
		ERRREPORT( 9ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$94;
	}
	label$102:;
	label$101:;
	*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 320ll) = (struct $8FBSYMBOL*)0ull;
	*(int64*)((uint8*)&PARSER$ + 312ll) = 2147483648ll;
	if( OP$1 == -1ll ) goto label$104;
	{
		struct $7ASTNODE* vr$11 = ASTNEWSELFBOP( OP$1, L$1, R$1, (struct $8FBSYMBOL*)0ull, 2ll );
		L$1 = vr$11;
		if( L$1 == (struct $7ASTNODE*)0ull ) goto label$106;
		{
			ASTADD( L$1 );
		}
		goto label$105;
		label$106:;
		{
			ERRREPORT( 20ll, -1ll, (uint8*)0ull );
		}
		label$105:;
	}
	goto label$103;
	label$104:;
	{
		struct $7ASTNODE* vr$12 = ASTNEWASSIGN( L$1, R$1, 0ll );
		L$1 = vr$12;
		if( L$1 == (struct $7ASTNODE*)0ull ) goto label$108;
		{
			ASTADD( L$1 );
		}
		goto label$107;
		label$108:;
		{
			ERRREPORT( 181ll, -1ll, (uint8*)0ull );
		}
		label$107:;
	}
	label$103:;
	label$94:;
}

int64 CASSIGNMENTORPTRCALLEX( struct $7ASTNODE* EXPR$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$109:;
	fb$result$1 = 0ll;
	int64 vr$1 = CCOMPSTMTISALLOWED( 1ll );
	if( vr$1 != 0ll ) goto label$112;
	{
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$110;
	}
	label$112:;
	label$111:;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$114;
	{
		int64 vr$2 = CMAYBEIGNORECALLRESULT( EXPR$1 );
		if( vr$2 != 0ll ) goto label$116;
		{
			CASSIGNMENT( EXPR$1 );
		}
		label$116:;
		label$115:;
	}
	label$114:;
	label$113:;
	fb$result$1 = -1ll;
	label$110:;
	return fb$result$1;
}

int64 CASSIGNMENTORPTRCALL( void )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$139:;
	int64 ISMULT$1;
	ISMULT$1 = 0ll;
	struct $7ASTNODE* EXPR$1;
	struct $8FBSYMBOL* FLD$1;
	fb$result$1 = 0ll;
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 == 391ll ) goto label$142;
	{
		struct $7ASTNODE* vr$2 = CVARORDEREF( 2ll );
		EXPR$1 = vr$2;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$144;
		{
			goto label$140;
		}
		label$144:;
		label$143:;
		int64 vr$3 = CMAYBEIGNORECALLRESULT( EXPR$1 );
		if( vr$3 == 0ll ) goto label$146;
		{
			fb$result$1 = -1ll;
			goto label$140;
		}
		label$146:;
		label$145:;
		struct $7ASTNODE* vr$4 = ASTSKIPNOCONVCAST( EXPR$1 );
		struct $7ASTNODE* vr$5 = ASTSKIPCASTS( EXPR$1 );
		if( vr$4 == vr$5 ) goto label$148;
		{
			ERRREPORT( 24ll, 0ll, (uint8*)0ull );
			goto label$140;
		}
		label$148:;
		label$147:;
		int64 vr$6 = CASSIGNMENTORPTRCALLEX( EXPR$1 );
		fb$result$1 = vr$6;
		goto label$140;
	}
	label$142:;
	label$141:;
	if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 262144ll) != 0ll ) goto label$150;
	{
		int64 vr$8 = LEXGETLOOKAHEAD( 1ll, 0ll );
		if( vr$8 == 40ll ) goto label$152;
		{
			ERRREPORTNOTALLOWED( 262144ll, 146ll, (uint8*)0ull );
		}
		goto label$151;
		label$152:;
		{
			ISMULT$1 = -1ll;
			LEXSKIPTOKEN( 2048ll );
		}
		label$151:;
	}
	label$150:;
	label$149:;
	int64 vr$9 = CCOMPSTMTISALLOWED( 1ll );
	if( vr$9 != 0ll ) goto label$154;
	{
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$140;
	}
	label$154:;
	label$153:;
	LEXSKIPTOKEN( 2048ll );
	if( ISMULT$1 != 0ll ) goto label$156;
	{
		struct $7ASTNODE* vr$10 = CVARORDEREF( 0ll );
		EXPR$1 = vr$10;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$158;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		goto label$157;
		label$158:;
		{
			CASSIGNMENT( EXPR$1 );
		}
		label$157:;
		fb$result$1 = -1ll;
		goto label$140;
	}
	label$156:;
	label$155:;
	int64 EXPRCNT$1;
	EXPRCNT$1 = 0ll;
	label$159:;
	{
		struct $15FB_LETSTMT_NODE* NODE$2;
		void* vr$12 = LISTNEWNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll) );
		NODE$2 = (struct $15FB_LETSTMT_NODE*)vr$12;
		struct $7ASTNODE* vr$13 = CVARORDEREF( 0ll );
		*(struct $7ASTNODE**)NODE$2 = vr$13;
		if( *(struct $7ASTNODE**)NODE$2 == (struct $7ASTNODE*)0ull ) goto label$163;
		{
			int64 vr$17 = ASTISCONSTANT( *(struct $7ASTNODE**)NODE$2 );
			if( vr$17 == 0ll ) goto label$165;
			{
				ERRREPORT( 119ll, -1ll, (uint8*)0ull );
			}
			label$165:;
			label$164:;
			EXPRCNT$1 = EXPRCNT$1 + 1ll;
		}
		label$163:;
		label$162:;
		int64 vr$19 = LEXGETTOKEN( 0ll );
		if( vr$19 == 44ll ) goto label$167;
		{
			goto label$160;
		}
		label$167:;
		label$166:;
		LEXSKIPTOKEN( 0ll );
	}
	label$161:;
	goto label$159;
	label$160:;
	if( EXPRCNT$1 != 0ll ) goto label$169;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
	}
	label$169:;
	label$168:;
	int64 vr$20 = LEXGETTOKEN( 0ll );
	if( vr$20 == 41ll ) goto label$171;
	{
		ERRREPORT( 7ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( 41ll, 0ll, 0ll, 0ll );
	}
	goto label$170;
	label$171:;
	{
		LEXSKIPTOKEN( 0ll );
	}
	label$170:;
	int64 vr$21 = CASSIGNTOKEN(  );
	if( vr$21 != 0ll ) goto label$173;
	{
		ERRREPORT( 10ll, 0ll, (uint8*)0ull );
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		EXPR$1 = (struct $7ASTNODE*)0ull;
	}
	goto label$172;
	label$173:;
	{
		struct $7ASTNODE* vr$22 = CEXPRESSION(  );
		EXPR$1 = vr$22;
		if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$175;
		{
			ERRREPORT( 9ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		}
		label$175:;
		label$174:;
	}
	label$172:;
	if( EXPR$1 == (struct $7ASTNODE*)0ull ) goto label$177;
	{
		{
			int64 TMP$108$3;
			TMP$108$3 = *(int64*)((uint8*)EXPR$1 + 8ll) & 511ll;
			if( TMP$108$3 != 20ll ) goto label$179;
			label$180:;
			{
				if( ((int64)-(((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) + 208ll) & 1ll) != 0ll) | (int64)-(((int64)*(int32*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) + 208ll) & 8192ll) != 0ll)) == 0ll ) goto label$182;
				{
					ERRREPORT( 268ll, 0ll, (uint8*)0ull );
					ASTDELTREE( EXPR$1 );
					EXPR$1 = (struct $7ASTNODE*)0ull;
				}
				label$182:;
				label$181:;
			}
			goto label$178;
			label$179:;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				ASTDELTREE( EXPR$1 );
				EXPR$1 = (struct $7ASTNODE*)0ull;
			}
			label$183:;
			label$178:;
		}
	}
	label$177:;
	label$176:;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$185;
	{
		label$186:;
		{
			struct $15FB_LETSTMT_NODE* NODE$3;
			void* vr$37 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll) );
			NODE$3 = (struct $15FB_LETSTMT_NODE*)vr$37;
			if( NODE$3 != (struct $15FB_LETSTMT_NODE*)0ull ) goto label$190;
			{
				goto label$187;
			}
			label$190:;
			label$189:;
			LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll), (void*)NODE$3 );
		}
		label$188:;
		goto label$186;
		label$187:;
		goto label$140;
	}
	label$185:;
	label$184:;
	if( *(int64*)EXPR$1 != 9ll ) goto label$192;
	{
		struct $7ASTNODE* vr$40 = ASTBUILDCALLRESULTUDT( EXPR$1 );
		EXPR$1 = vr$40;
	}
	label$192:;
	label$191:;
	struct $8FBSYMBOL* TMP$1;
	TMP$1 = (struct $8FBSYMBOL*)0ull;
	struct $7ASTNODE* TREE$1;
	TREE$1 = (struct $7ASTNODE*)0ull;
	if( EXPRCNT$1 <= 0ll ) goto label$194;
	{
		struct $8FBSYMBOL* vr$55 = SYMBADDTEMPVAR( (((*(int64*)((uint8*)EXPR$1 + 8ll) & 31ll) | ((*(int64*)((uint8*)EXPR$1 + 8ll) & 480ll) + 32ll)) | ((*(int64*)((uint8*)EXPR$1 + 8ll) & 261632ll) << (1ll & 63ll))) | (*(int64*)((uint8*)EXPR$1 + 8ll) & 32505856ll), *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
		TMP$1 = vr$55;
		struct $7ASTNODE* vr$56 = ASTNEWADDROF( EXPR$1 );
		struct $7ASTNODE* vr$57 = _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl( TMP$1, vr$56, 64ll );
		TREE$1 = vr$57;
	}
	label$194:;
	label$193:;
	struct $8FBSYMBOL* vr$59 = SYMBUDTGETFIRSTFIELD( *(struct $8FBSYMBOL**)((uint8*)EXPR$1 + 16ll) );
	FLD$1 = vr$59;
	EXPRCNT$1 = 0ll;
	label$195:;
	{
		struct $15FB_LETSTMT_NODE* NODE$2;
		void* vr$61 = LISTGETHEAD( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll) );
		NODE$2 = (struct $15FB_LETSTMT_NODE*)vr$61;
		if( NODE$2 != (struct $15FB_LETSTMT_NODE*)0ull ) goto label$199;
		{
			goto label$196;
		}
		label$199:;
		label$198:;
		if( FLD$1 != (struct $8FBSYMBOL*)0ull ) goto label$201;
		{
			ERRREPORT( 266ll, 0ll, (uint8*)0ull );
		}
		goto label$200;
		label$201:;
		{
			EXPRCNT$1 = EXPRCNT$1 + 1ll;
			if( *(struct $7ASTNODE**)NODE$2 == (struct $7ASTNODE*)0ull ) goto label$203;
			{
				struct $7ASTNODE* vr$65 = HASSIGNFROMFIELD( FLD$1, *(struct $7ASTNODE**)NODE$2, TMP$1, EXPRCNT$1 );
				EXPR$1 = vr$65;
				if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$205;
				{
					goto label$140;
				}
				label$205:;
				label$204:;
				struct $7ASTNODE* vr$66 = ASTNEWLINK( TREE$1, EXPR$1, 0ll );
				TREE$1 = vr$66;
			}
			label$203:;
			label$202:;
			struct $8FBSYMBOL* vr$67 = SYMBUDTGETNEXTFIELD( FLD$1 );
			FLD$1 = vr$67;
		}
		label$200:;
		LISTDELNODE( (struct $5TLIST*)((uint8*)&PARSER$ + 112ll), (void*)NODE$2 );
	}
	label$197:;
	goto label$195;
	label$196:;
	ASTADD( TREE$1 );
	fb$result$1 = -1ll;
	label$140:;
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

static uint8* HCARD2ORD( int64 NUM$1 )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$117:;
	{
		if( NUM$1 != 1ll ) goto label$120;
		label$121:;
		{
			fb$result$1 = (uint8*)"1st";
			goto label$118;
		}
		goto label$119;
		label$120:;
		if( NUM$1 != 2ll ) goto label$122;
		label$123:;
		{
			fb$result$1 = (uint8*)"2nd";
			goto label$118;
		}
		goto label$119;
		label$122:;
		if( NUM$1 != 3ll ) goto label$124;
		label$125:;
		{
			fb$result$1 = (uint8*)"3rd";
			goto label$118;
		}
		goto label$119;
		label$124:;
		{
			static FBSTRING TMP$3;
			FBSTRING* vr$1 = fb_LongintToStr( NUM$1 );
			fb_StrAssign( (void*)&TMP$3, -1ll, (void*)vr$1, -1ll, 0 );
			fb_StrConcatAssign( (void*)&TMP$3, -1ll, (void*)"th", 3ll, 0 );
			fb$result$1 = (uint8*)*(uint8**)&TMP$3;
			goto label$118;
		}
		label$126:;
		label$119:;
	}
	label$118:;
	return fb$result$1;
}

static void HREPORTLETERROR( int64 ERRNUM$1, int64 ELMNUM$1 )
{
	FBSTRING TMP$105$1;
	FBSTRING TMP$106$1;
	FBSTRING TMP$107$1;
	label$127:;
	__builtin_memset( &TMP$107$1, 0, 24ll );
	uint8* vr$1 = HCARD2ORD( ELMNUM$1 );
	__builtin_memset( &TMP$105$1, 0, 24ll );
	FBSTRING* vr$4 = fb_StrConcat( &TMP$105$1, (void*)"at the ", 8ll, (void*)vr$1, 0ll );
	__builtin_memset( &TMP$106$1, 0, 24ll );
	FBSTRING* vr$7 = fb_StrConcat( &TMP$106$1, (void*)vr$4, -1ll, (void*)" element of LET()", 18ll );
	fb_StrAssign( (void*)&TMP$107$1, -1ll, (void*)vr$7, -1ll, 0 );
	ERRREPORTEX( ERRNUM$1, (uint8*)*(uint8**)&TMP$107$1, 0ll, 1ll, (uint8*)0ull );
	fb_StrDelete( (FBSTRING*)&TMP$107$1 );
	label$128:;
}

static struct $7ASTNODE* HASSIGNFROMFIELD( struct $8FBSYMBOL* FLD$1, struct $7ASTNODE* LHS$1, struct $8FBSYMBOL* RHS$1, int64 NUM$1 )
{
	struct $7ASTNODE* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$129:;
	if( *(int64*)FLD$1 == 12ll ) goto label$132;
	{
		HREPORTLETERROR( 267ll, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$2 = ASTNEWNOP(  );
		fb$result$1 = vr$2;
		goto label$130;
	}
	label$132:;
	label$131:;
	int64 vr$3 = SYMBCHECKACCESS( FLD$1 );
	if( vr$3 != 0ll ) goto label$134;
	{
		HREPORTLETERROR( 202ll, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$4 = ASTNEWNOP(  );
		fb$result$1 = vr$4;
		goto label$130;
	}
	label$134:;
	label$133:;
	if( *(int64*)((uint8*)FLD$1 + 104ll) == 0ll ) goto label$136;
	{
		HREPORTLETERROR( 269ll, NUM$1 );
		ASTDELTREE( LHS$1 );
		struct $7ASTNODE* vr$6 = ASTNEWNOP(  );
		fb$result$1 = vr$6;
		goto label$130;
	}
	label$136:;
	label$135:;
	struct $7ASTNODE* EXPR$1;
	struct $7ASTNODE* vr$7 = ASTNEWVAR( RHS$1, 0ll, 2147483648ll, (struct $8FBSYMBOL*)0ull );
	EXPR$1 = vr$7;
	struct $7ASTNODE* vr$9 = ASTNEWCONSTI( *(int64*)((uint8*)FLD$1 + 88ll), 8ll, (struct $8FBSYMBOL*)0ull );
	struct $7ASTNODE* vr$10 = ASTNEWBOP( 28ll, EXPR$1, vr$9, (struct $8FBSYMBOL*)0ull, 1ll );
	EXPR$1 = vr$10;
	struct $7ASTNODE* vr$13 = ASTNEWDEREF( EXPR$1, *(int64*)((uint8*)FLD$1 + 56ll), *(struct $8FBSYMBOL**)((uint8*)FLD$1 + 64ll), 0ll );
	EXPR$1 = vr$13;
	struct $7ASTNODE* vr$14 = ASTNEWFIELD( EXPR$1, FLD$1 );
	EXPR$1 = vr$14;
	struct $7ASTNODE* vr$15 = ASTNEWASSIGN( LHS$1, EXPR$1, 0ll );
	EXPR$1 = vr$15;
	if( EXPR$1 != (struct $7ASTNODE*)0ull ) goto label$138;
	{
		HREPORTLETERROR( 181ll, NUM$1 );
		struct $7ASTNODE* vr$16 = ASTNEWNOP(  );
		fb$result$1 = vr$16;
		goto label$130;
	}
	label$138:;
	label$137:;
	fb$result$1 = EXPR$1;
	label$130:;
	return fb$result$1;
}
