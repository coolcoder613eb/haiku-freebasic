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
typedef int64 $10FB_PROCOPT;
typedef int64 $11AST_OPFLAGS;
struct $10AST_OPINFO {
	$13AST_NODECLASS CLASS;
	$11AST_OPFLAGS FLAGS;
	uint8* ID;
	$6AST_OP SELFOP;
};
__FB_STATIC_ASSERT( sizeof( struct $10AST_OPINFO ) == 32 );
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
typedef int64 $14FB_SYMBFINDOPT;
typedef int64 $9FB_ERRMSG;
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
FBSTRING* fb_StrAssign( void*, int64, void*, int64, int32 );
void fb_StrDelete( FBSTRING* );
FBSTRING* fb_StrConcat( FBSTRING*, void*, int64, void*, int64 );
int32 fb_StrCompare( void*, int64, void*, int64 );
FBSTRING* fb_StrAllocTempDescZ( uint8* );
int64 fb_StrLen( void*, int64 );
FBSTRING* fb_TRIM( FBSTRING* );
int32 fb_VALINT( FBSTRING* );
FBSTRING* fb_StrUcase2( FBSTRING*, int32 );
static void fb_ctor__parserzproc( void ) __attribute__(( constructor ));
static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM*, struct $11TSTRSETITEM* );
typedef int64 $12FB_ERRMSGOPT;
void ERRREPORTEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORT( int64, int64, uint8* );
void ERRREPORTWARN( int64, uint8*, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTWARNEX( int64, uint8*, int64, $12FB_ERRMSGOPT, uint8* );
void ERRREPORTPARAM( struct $8FBSYMBOL*, int64, uint8*, int64 );
void ERRREPORTPARAMWARN( struct $8FBSYMBOL*, int64, uint8*, int64 );
typedef int64 $11FB_LANG_OPT;
void ERRREPORTNOTALLOWED( $11FB_LANG_OPT, int64, uint8* );
void FBSETOPTION( int64, int64 );
int64 FBIS64BIT( void );
int64 ASTISEQUALPARAMINIT( struct $7ASTNODE*, struct $7ASTNODE* );
void ASTPROCBEGIN( struct $8FBSYMBOL*, int64 );
int64 ASTPROCEND( int64 );
struct $10FBSYMCHAIN* SYMBLOOKUPAT( struct $8FBSYMBOL*, uint8*, int64, int64 );
struct $8FBSYMBOL* SYMBFINDBYCLASS( struct $10FBSYMCHAIN*, int64 );
struct $8FBSYMBOL* SYMBFINDOVERLOADPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL*, $14FB_SYMBFINDOPT );
struct $8FBSYMBOL* SYMBFINDOPOVLPROC( $6AST_OP, struct $8FBSYMBOL*, struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBFINDCTORPROC( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCCHECKOVERRIDDEN( struct $8FBSYMBOL*, int64 );
struct $8FBSYMBOL* SYMBPROCGETOVERRIDDEN( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETPROCRESULT( struct $8FBSYMBOL* );
typedef int64 $10FB_SYMBOPT;
struct $8FBSYMBOL* SYMBADDPROC( struct $8FBSYMBOL*, uint8*, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDOPERATOR( struct $8FBSYMBOL*, $6AST_OP, uint8*, int64, struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBADDCTOR( struct $8FBSYMBOL*, uint8*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64, $10FB_SYMBOPT );
struct $8FBSYMBOL* SYMBPREADDPROC( uint8* );
void SYMBADDPROCINSTANCEPARAM( struct $8FBSYMBOL*, struct $8FBSYMBOL* );
void SYMBPROCALLOCEXT( struct $8FBSYMBOL* );
void SYMBFREESYMBOL( struct $8FBSYMBOL* );
void SYMBNESTBEGIN( struct $8FBSYMBOL*, int64 );
void SYMBNESTEND( int64 );
uint8* SYMBUNIQUELABEL( void );
void SYMBSETNAME( struct $8FBSYMBOL*, uint8* );
int64 SYMBGETDEFTYPE( uint8* );
struct $8FBSYMBOL* SYMBGETCOMPCTORHEAD( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPDTOR1( struct $8FBSYMBOL* );
struct $8FBSYMBOL* SYMBGETCOMPOPOVLHEAD( struct $8FBSYMBOL*, $6AST_OP );
struct $20FB_GLOBCTORLIST_ITEM;
struct $20FB_GLOBCTORLIST_ITEM {
	struct $8FBSYMBOL* SYM;
	struct $20FB_GLOBCTORLIST_ITEM* NEXT;
};
__FB_STATIC_ASSERT( sizeof( struct $20FB_GLOBCTORLIST_ITEM ) == 16 );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALCTOR( struct $8FBSYMBOL* );
struct $20FB_GLOBCTORLIST_ITEM* SYMBADDGLOBALDTOR( struct $8FBSYMBOL* );
void FBADDLIB( uint8* );
typedef int64 $8LEXCHECK;
int64 LEXGETTOKEN( $8LEXCHECK );
int64 LEXGETCLASS( $8LEXCHECK );
uint8* LEXGETTEXT( void );
void LEXSKIPTOKEN( $8LEXCHECK );
int64 HMATCH( int64, $8LEXCHECK );
int64 PARSERISGLOBALASMKEYWORD( uint8* );
typedef int64 $14FB_SYMBTYPEOPT;
int64 CSYMBOLTYPE( int64*, struct $8FBSYMBOL**, int64*, int64*, $14FB_SYMBTYPEOPT );
typedef int64 $8FB_IDOPT;
struct $8FBSYMBOL* CPARENTID( $8FB_IDOPT );
struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, int64*, $10FB_PROCOPT, int64 );
void CPARAMETERS( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64, int64 );
struct $13FB_CMPSTMTSTK* CCOMPSTMTPUSH( $8FB_TOKEN, $15FB_CMPSTMT_MASK );
struct $13FB_CMPSTMTSTK* CCOMPSTMTGETTOS( $8FB_TOKEN, int64 );
void CCOMPSTMTPOP( struct $13FB_CMPSTMTSTK* );
int64 CCOMPSTMTISALLOWED( $15FB_CMPSTMT_MASK );
void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void HDISALLOWCONSTCTORDTOR( int64, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
int64 COPERATOR( int64 );
uint8* CALIASATTRIBUTE( void );
void CLIBATTRIBUTE( void );
void CMETHODATTRIBUTES( struct $8FBSYMBOL*, $13FB_SYMBATTRIB*, $13FB_PROCATTRIB* );
void CPROCRETTYPE( $13FB_SYMBATTRIB, $13FB_PROCATTRIB, struct $8FBSYMBOL*, int64, int64*, struct $8FBSYMBOL** );
$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE );
$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE, int64* );
void CBYREFATTRIBUTE( $13FB_PROCATTRIB*, int64 );
void HSKIPUNTIL( int64, int64, $8LEXCHECK, int64 );
void HSKIPCOMPOUND( int64, int64, $8LEXCHECK );
void HCOMPLAINIFABSTRACTCLASS( int64, struct $8FBSYMBOL* );
static void HPARAMERROR( struct $8FBSYMBOL*, int64, int64 );
static void HCHECKPROTOTYPE( struct $8FBSYMBOL*, struct $8FBSYMBOL*, uint8*, int64, struct $8FBSYMBOL*, int64 );
static void HCHECKATTRIBS( struct $8FBSYMBOL*, $13FB_SYMBATTRIB, $13FB_PROCATTRIB );
static int64 HCHECKIDTOKEN( int64 );
static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL*, uint8*, int64*, int64 );
static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* );
static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* );
static void HCHECKATTRIB( int64*, int64, int64 );
static int64 HCHECKOPOVLPARAMS( struct $8FBSYMBOL*, int64, struct $8FBSYMBOL* );
static int64 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL*, struct $8FBSYMBOL*, int64 );
static void HCHECKPROPPARAMS( struct $8FBSYMBOL*, int64 );
static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL*, int64, int64 );
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
struct $5TPOOL {
	int64 CHUNKS;
	int64 CHUNKSIZE;
	struct $5TLIST* CHUNKTB;
};
__FB_STATIC_ASSERT( sizeof( struct $5TPOOL ) == 24 );
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

uint8* CALIASATTRIBUTE( void )
{
	uint8* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$10:;
	static uint8 ALIASID$1[129];
	int64 vr$1 = LEXGETTOKEN( 0ll );
	if( vr$1 != 386ll ) goto label$13;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$2 = LEXGETCLASS( 0ll );
		if( vr$2 != 4ll ) goto label$15;
		{
			uint8* vr$3 = LEXGETTEXT(  );
			fb_StrAssign( (void*)ALIASID$1, 129ll, (void*)vr$3, 0ll, 0 );
			LEXSKIPTOKEN( 0ll );
			int64 vr$4 = fb_StrLen( (void*)ALIASID$1, 129ll );
			if( vr$4 <= 0ll ) goto label$17;
			{
				fb$result$1 = (uint8*)ALIASID$1;
			}
			goto label$16;
			label$17:;
			{
				ERRREPORT( 304ll, 0ll, (uint8*)0ull );
			}
			label$16:;
		}
		goto label$14;
		label$15:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$14:;
	}
	label$13:;
	label$12:;
	label$11:;
	return fb$result$1;
}

void CLIBATTRIBUTE( void )
{
	label$18:;
	uint8* LIBNAME$1;
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 387ll ) goto label$21;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$1 = LEXGETCLASS( 0ll );
		if( vr$1 != 4ll ) goto label$23;
		{
			uint8* vr$2 = LEXGETTEXT(  );
			LIBNAME$1 = vr$2;
			int64 vr$3 = fb_StrLen( (void*)LIBNAME$1, 0ll );
			if( vr$3 <= 0ll ) goto label$25;
			{
				FBADDLIB( LIBNAME$1 );
			}
			goto label$24;
			label$25:;
			{
				ERRREPORT( 305ll, 0ll, (uint8*)0ull );
			}
			label$24:;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$22;
		label$23:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$22:;
	}
	label$21:;
	label$20:;
	label$19:;
}

void CMETHODATTRIBUTES( struct $8FBSYMBOL* PARENT$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$26:;
	int64 vr$0 = HMATCH( 307ll, 2048ll );
	if( vr$0 == 0ll ) goto label$29;
	{
		*ATTRIB$1 = *(int64*)ATTRIB$1 | 2ll;
		goto label$27;
	}
	label$29:;
	label$28:;
	int64 vr$4 = HMATCH( 335ll, 2048ll );
	if( vr$4 == 0ll ) goto label$31;
	{
		*ATTRIB$1 = *(int64*)ATTRIB$1 | 2048ll;
	}
	label$31:;
	label$30:;
	{
		int64 TMP$94$2;
		int64 vr$8 = LEXGETTOKEN( 0ll );
		TMP$94$2 = vr$8;
		if( TMP$94$2 != 355ll ) goto label$33;
		label$34:;
		{
			*PATTRIB$1 = *(int64*)PATTRIB$1 | 768ll;
			if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$36;
			{
				if( (*(int64*)((uint8*)PARENT$1 + 24ll) & 4194304ll) != 0ll ) goto label$38;
				{
					ERRREPORT( 222ll, 0ll, (uint8*)0ull );
					*PATTRIB$1 = *(int64*)PATTRIB$1 & -769ll;
				}
				label$38:;
				label$37:;
			}
			label$36:;
			label$35:;
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$32;
		label$33:;
		if( TMP$94$2 != 354ll ) goto label$39;
		label$40:;
		{
			*PATTRIB$1 = *(int64*)PATTRIB$1 | 256ll;
			if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$42;
			{
				if( (*(int64*)((uint8*)PARENT$1 + 24ll) & 4194304ll) != 0ll ) goto label$44;
				{
					ERRREPORT( 221ll, 0ll, (uint8*)0ull );
					*PATTRIB$1 = *(int64*)PATTRIB$1 & -257ll;
				}
				label$44:;
				label$43:;
			}
			label$42:;
			label$41:;
			LEXSKIPTOKEN( 2048ll );
		}
		label$39:;
		label$32:;
	}
	label$27:;
}

void CPROCRETTYPE( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, struct $8FBSYMBOL* PROC$1, int64 IS_PROTO$1, int64* DTYPE$1, struct $8FBSYMBOL** SUBTYPE$1 )
{
	int64 TMP$101$1;
	int64 TMP$102$1;
	label$132:;
	int64 OPTIONS$1;
	LEXSKIPTOKEN( 2048ll );
	OPTIONS$1 = 1ll;
	if( (PATTRIB$1 & 2048ll) == 0ll ) goto label$135;
	{
		if( IS_PROTO$1 == 0ll ) goto label$137;
		{
			OPTIONS$1 = OPTIONS$1 | 2ll;
		}
		label$137:;
		label$136:;
		OPTIONS$1 = OPTIONS$1 & -2ll;
		OPTIONS$1 = OPTIONS$1 | 4ll;
	}
	label$135:;
	label$134:;
	if( IS_PROTO$1 == 0ll ) goto label$139;
	{
		OPTIONS$1 = OPTIONS$1 & -2ll;
	}
	label$139:;
	label$138:;
	TMP$102$1 = 0ll;
	TMP$101$1 = 0ll;
	int64 vr$7 = CSYMBOLTYPE( DTYPE$1, SUBTYPE$1, &TMP$101$1, &TMP$102$1, OPTIONS$1 );
	if( vr$7 != 0ll ) goto label$141;
	{
		ERRREPORT( 14ll, 0ll, (uint8*)0ull );
		*DTYPE$1 = 8ll;
		*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	}
	goto label$140;
	label$141:;
	{
		{
			int64 TMP$103$3;
			TMP$103$3 = *DTYPE$1 & 511ll;
			if( TMP$103$3 != 7ll ) goto label$143;
			label$144:;
			{
				if( ((int64)-((PATTRIB$1 & 2048ll) == 0ll) & (int64)-(IS_PROTO$1 == 0ll)) == 0ll ) goto label$146;
				{
					ERRREPORT( 55ll, 0ll, (uint8*)0ull );
					*DTYPE$1 = 17ll;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
				}
				label$146:;
				label$145:;
			}
			goto label$142;
			label$143:;
			if( TMP$103$3 == 18ll ) goto label$148;
			label$149:;
			if( TMP$103$3 != 4ll ) goto label$147;
			label$148:;
			{
				if( ((int64)-((PATTRIB$1 & 2048ll) == 0ll) | (int64)-((*DTYPE$1 & 511ll) == 18ll)) == 0ll ) goto label$151;
				{
					ERRREPORT( 55ll, 0ll, (uint8*)0ull );
					*DTYPE$1 = 17ll;
					*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
				}
				label$151:;
				label$150:;
			}
			goto label$142;
			label$147:;
			if( TMP$103$3 != 0ll ) goto label$152;
			label$153:;
			{
				ERRREPORT( 24ll, 0ll, (uint8*)0ull );
				*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
				*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
			}
			goto label$142;
			label$152:;
			if( TMP$103$3 != 20ll ) goto label$154;
			label$155:;
			{
				if( *SUBTYPE$1 == (struct $8FBSYMBOL*)0ull ) goto label$157;
				{
					{
						int64 TMP$104$6;
						TMP$104$6 = ((int64)*(int32*)((uint8*)*SUBTYPE$1 + 208ll) & 15728640ll) >> (20ll & 63ll);
						if( TMP$104$6 == 3ll ) goto label$160;
						label$161:;
						if( TMP$104$6 != 5ll ) goto label$159;
						label$160:;
						{
							if( ((int64)-((PATTRIB$1 & 2048ll) == 0ll) & (int64)-((*DTYPE$1 & 480ll) == 0ll)) == 0ll ) goto label$163;
							{
								ERRREPORT( 24ll, 0ll, (uint8*)0ull );
								*DTYPE$1 = (((*DTYPE$1 & 31ll) | ((*DTYPE$1 & 480ll) + 32ll)) | ((*DTYPE$1 & 261632ll) << (1ll & 63ll))) | (*DTYPE$1 & 32505856ll);
								*SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
							}
							label$163:;
							label$162:;
						}
						label$159:;
						label$158:;
					}
				}
				label$157:;
				label$156:;
			}
			label$154:;
			label$142:;
		}
		if( (PATTRIB$1 & 2048ll) != 0ll ) goto label$165;
		{
			HCOMPLAINIFABSTRACTCLASS( *DTYPE$1, *SUBTYPE$1 );
		}
		label$165:;
		label$164:;
	}
	label$140:;
	$21FB_PROC_RETURN_METHOD vr$72 = CPROCRETURNMETHOD( *($11FB_DATATYPE*)DTYPE$1 );
	*($21FB_PROC_RETURN_METHOD*)((uint8*)PROC$1 + 176ll) = vr$72;
	label$133:;
}

$21FB_PROC_RETURN_METHOD CPROCRETURNMETHOD( $11FB_DATATYPE DTYPE$1 )
{
	int64 TMP$105$1;
	$21FB_PROC_RETURN_METHOD fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$166:;
	FBSTRING RETURNMETHOD$1;
	__builtin_memset( &RETURNMETHOD$1, 0, 24ll );
	fb$result$1 = 2ll;
	if( (DTYPE$1 & 480ll) == 0ll ) goto label$168;
	TMP$105$1 = 24ll;
	goto label$182;
	label$168:;
	TMP$105$1 = DTYPE$1 & 31ll;
	label$182:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$105$1 * 56ll)) == 1ll ) goto label$170;
	{
		fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
		goto label$167;
		label$170:;
	}
	int64 vr$6 = LEXGETTOKEN( 0ll );
	if( vr$6 != 343ll ) goto label$172;
	{
		LEXSKIPTOKEN( 2048ll );
		int64 vr$7 = LEXGETTOKEN( 0ll );
		if( vr$7 == 40ll ) goto label$174;
		{
			ERRREPORT( 6ll, 0ll, (uint8*)0ull );
		}
		goto label$173;
		label$174:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$173:;
		int64 vr$8 = LEXGETCLASS( 0ll );
		if( vr$8 == 4ll ) goto label$176;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		goto label$175;
		label$176:;
		{
			uint8* vr$9 = LEXGETTEXT(  );
			FBSTRING* vr$10 = fb_StrAllocTempDescZ( (uint8*)vr$9 );
			FBSTRING* vr$11 = fb_StrUcase2( (FBSTRING*)vr$10, 0 );
			FBSTRING* vr$12 = fb_TRIM( (FBSTRING*)vr$11 );
			fb_StrAssign( (void*)&RETURNMETHOD$1, -1ll, (void*)vr$12, -1ll, 0 );
			int32 vr$15 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1ll, (void*)"SSE", 4ll );
			if( (int64)vr$15 != 0ll ) goto label$178;
			{
				fb$result$1 = 1ll;
			}
			goto label$177;
			label$178:;
			int32 vr$18 = fb_StrCompare( (void*)&RETURNMETHOD$1, -1ll, (void*)"FPU", 4ll );
			if( (int64)vr$18 != 0ll ) goto label$179;
			{
				fb$result$1 = 0ll;
			}
			label$179:;
			label$177:;
			LEXSKIPTOKEN( 0ll );
		}
		label$175:;
		int64 vr$20 = LEXGETTOKEN( 0ll );
		if( vr$20 == 41ll ) goto label$181;
		{
			ERRREPORT( 7ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( 41ll, -1ll, 0ll, 0ll );
		}
		goto label$180;
		label$181:;
		{
			LEXSKIPTOKEN( 0ll );
		}
		label$180:;
	}
	label$172:;
	label$171:;
	fb_StrDelete( (FBSTRING*)&RETURNMETHOD$1 );
	label$167:;
	return fb$result$1;
}

$11FB_FUNCMODE CPROCCALLINGCONV( $11FB_FUNCMODE DEFAULT$1, int64* IS_EXPLICIT$1 )
{
	$11FB_FUNCMODE fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$183:;
	*IS_EXPLICIT$1 = 0ll;
	if( DEFAULT$1 != -1ll ) goto label$186;
	{
		DEFAULT$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 552ll);
	}
	label$186:;
	label$185:;
	{
		uint64 TMP$108$2;
		int64 vr$2 = LEXGETTOKEN( 0ll );
		TMP$108$2 = (uint64)vr$2;
		goto label$188;
		label$189:;
		{
			*IS_EXPLICIT$1 = -1ll;
			fb$result$1 = 3ll;
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$187;
		label$190:;
		{
			*IS_EXPLICIT$1 = -1ll;
			fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 560ll);
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$187;
		label$191:;
		{
			fb$result$1 = 4ll;
			*IS_EXPLICIT$1 = -1ll;
			LEXSKIPTOKEN( 2048ll );
		}
		goto label$187;
		label$192:;
		{
			if( *(int64*)((uint8*)&ENV$ + 424ll) != 0ll ) goto label$194;
			{
				*IS_EXPLICIT$1 = -1ll;
				fb$result$1 = 5ll;
			}
			label$194:;
			label$193:;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$187;
		label$195:;
		{
			if( *(int64*)((uint8*)&ENV$ + 432ll) != 0ll ) goto label$197;
			{
				*IS_EXPLICIT$1 = -1ll;
				fb$result$1 = 6ll;
			}
			label$197:;
			label$196:;
			LEXSKIPTOKEN( 0ll );
		}
		goto label$187;
		label$188:;
		static const void* tmp$110[5ll] = {
			&&label$191,
			&&label$189,
			&&label$190,
			&&label$192,
			&&label$195,
		};
		if( (TMP$108$2 - 381ull) > 4ull ) goto label$187;
		goto *tmp$110[TMP$108$2 - 381ull];
		label$187:;
	}
	if( *IS_EXPLICIT$1 != 0ll ) goto label$199;
	{
		{
			uint64 TMP$109$3;
			TMP$109$3 = *(uint64*)((uint8*)&PARSER$ + 208ll);
			goto label$201;
			label$202:;
			{
				fb$result$1 = DEFAULT$1;
			}
			goto label$200;
			label$203:;
			{
				if( DEFAULT$1 != 5ll ) goto label$205;
				{
					fb$result$1 = DEFAULT$1;
				}
				goto label$204;
				label$205:;
				{
					fb$result$1 = 3ll;
				}
				label$204:;
			}
			goto label$200;
			label$206:;
			{
				fb$result$1 = *($11FB_FUNCMODE*)((uint8*)&ENV$ + 560ll);
			}
			goto label$200;
			label$207:;
			{
				fb$result$1 = 2ll;
			}
			goto label$200;
			label$201:;
			static const void* tmp$111[7ll] = {
				&&label$202,
				&&label$203,
				&&label$206,
				&&label$207,
				&&label$203,
				&&label$200,
				&&label$202,
			};
			if( TMP$109$3 > 6ull ) goto label$200;
			goto *tmp$111[TMP$109$3 - 0ull];
			label$200:;
		}
	}
	label$199:;
	label$198:;
	label$184:;
	return fb$result$1;
}

void CBYREFATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1, int64 IS_FUNC$1 )
{
	label$220:;
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 320ll ) goto label$223;
	{
		if( IS_FUNC$1 != 0ll ) goto label$225;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$225:;
		label$224:;
		LEXSKIPTOKEN( 2048ll );
		*PATTRIB$1 = *(int64*)PATTRIB$1 | 2048ll;
	}
	label$223:;
	label$222:;
	label$221:;
}

struct $8FBSYMBOL* CPROCHEADER( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1, int64* IS_NESTED$1, $10FB_PROCOPT OPTIONS$1, int64 TK$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$418:;
	static uint8 ID$1[129];
	uint8* PALIAS$1;
	struct $8FBSYMBOL* HEAD_PROC$1;
	struct $8FBSYMBOL* PROC$1;
	struct $8FBSYMBOL* PARENT$1;
	struct $8FBSYMBOL* SUBTYPE$1;
	struct $8FBSYMBOL* PARAM$1;
	int64 DTYPE$1;
	int64 IS_OUTSIDE$1;
	int64 IS_MEMBERPROC$1;
	int64 MODE$1;
	int64 STATS$1;
	int64 OP$1;
	int64 IS_GET$1;
	int64 IS_INDEXED$1;
	int64 PRIORITY$1;
	int64 IDOPT$1;
	int64 MODE_IS_EXPLICIT$1;
	*IS_NESTED$1 = 0ll;
	IS_OUTSIDE$1 = 0ll;
	IS_MEMBERPROC$1 = 0ll;
	IS_GET$1 = 0ll;
	IS_INDEXED$1 = 0ll;
	DTYPE$1 = 2147483648ll;
	SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
	STATS$1 = 0ll;
	PRIORITY$1 = 0ll;
	MODE_IS_EXPLICIT$1 = 0ll;
	{
		if( TK$1 == 347ll ) goto label$422;
		label$423:;
		if( TK$1 != 348ll ) goto label$421;
		label$422:;
		{
			PATTRIB$1 = PATTRIB$1 | 2ll;
			if( TK$1 != 347ll ) goto label$425;
			{
				PATTRIB$1 = PATTRIB$1 | 5ll;
			}
			goto label$424;
			label$425:;
			{
				PATTRIB$1 = PATTRIB$1 | 8ll;
			}
			label$424:;
		}
		goto label$420;
		label$421:;
		if( TK$1 != 349ll ) goto label$426;
		label$427:;
		{
			PATTRIB$1 = PATTRIB$1 | 17ll;
		}
		goto label$420;
		label$426:;
		if( TK$1 != 350ll ) goto label$428;
		label$429:;
		{
			PATTRIB$1 = PATTRIB$1 | 35ll;
		}
		label$428:;
		label$420:;
	}
	if( (OPTIONS$1 & 2ll) == 0ll ) goto label$431;
	{
		PARENT$1 = (struct $8FBSYMBOL*)0ull;
	}
	goto label$430;
	label$431:;
	{
		IDOPT$1 = 22ll;
		{
			if( TK$1 != 349ll ) goto label$433;
			label$434:;
			{
				IDOPT$1 = IDOPT$1 | 8ll;
			}
			goto label$432;
			label$433:;
			if( TK$1 == 347ll ) goto label$436;
			label$437:;
			if( TK$1 != 348ll ) goto label$435;
			label$436:;
			{
				IDOPT$1 = IDOPT$1 | 1ll;
			}
			label$435:;
			label$432:;
		}
		if( (OPTIONS$1 & 1ll) != 0ll ) goto label$439;
		{
			IDOPT$1 = IDOPT$1 | (IDOPT$1 | 256ll);
		}
		label$439:;
		label$438:;
		struct $8FBSYMBOL* vr$13 = CPARENTID( IDOPT$1 );
		PARENT$1 = vr$13;
	}
	label$430:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$441;
	{
		if( (OPTIONS$1 & 1ll) == 0ll ) goto label$443;
		{
			ERRREPORT( 158ll, 0ll, (uint8*)0ull );
			PARENT$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$442;
		label$443:;
		{
			IS_OUTSIDE$1 = -1ll;
		}
		label$442:;
	}
	goto label$440;
	label$441:;
	{
		if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$445;
		{
			PARENT$1 = *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll);
		}
		label$445:;
		label$444:;
	}
	label$440:;
	if( PARENT$1 == (struct $8FBSYMBOL*)0ull ) goto label$447;
	{
		IS_MEMBERPROC$1 = (int64)-(*(int64*)PARENT$1 == 10ll);
	}
	label$447:;
	label$446:;
	if( IS_MEMBERPROC$1 == 0ll ) goto label$449;
	{
		if( ((int64)-((OPTIONS$1 & 1ll) != 0ll) & (int64)-((ATTRIB$1 & 2ll) == 0ll)) == 0ll ) goto label$451;
		{
			PATTRIB$1 = PATTRIB$1 | 2ll;
		}
		label$451:;
		label$450:;
	}
	goto label$448;
	label$449:;
	{
		{
			if( TK$1 == 347ll ) goto label$454;
			label$455:;
			if( TK$1 == 348ll ) goto label$454;
			label$456:;
			if( TK$1 != 350ll ) goto label$453;
			label$454:;
			{
				if( PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$458;
				{
					ERRREPORT( 160ll, 0ll, (uint8*)0ull );
				}
				goto label$457;
				label$458:;
				if( *(int64*)PARENT$1 == 10ll ) goto label$459;
				{
					ERRREPORT( 168ll, 0ll, (uint8*)0ull );
				}
				label$459:;
				label$457:;
				if( (OPTIONS$1 & 1ll) == 0ll ) goto label$461;
				{
					HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
				}
				goto label$460;
				label$461:;
				{
					HSKIPCOMPOUND( TK$1, -1ll, 0ll );
				}
				label$460:;
				goto label$419;
			}
			label$453:;
			label$452:;
		}
		HCHECKATTRIB( (int64*)&ATTRIB$1, 2ll, 258ll );
		HCHECKATTRIB( (int64*)&ATTRIB$1, 2048ll, 259ll );
		HCHECKATTRIB( (int64*)&PATTRIB$1, 512ll, 260ll );
		HCHECKATTRIB( (int64*)&PATTRIB$1, 256ll, 261ll );
	}
	label$448:;
	{
		if( TK$1 == 347ll ) goto label$464;
		label$465:;
		if( TK$1 != 348ll ) goto label$463;
		label$464:;
		{
			struct $8FBSYMBOL* vr$30 = SYMBPREADDPROC( (uint8*)0ull );
			PROC$1 = vr$30;
		}
		goto label$462;
		label$463:;
		if( TK$1 != 349ll ) goto label$466;
		label$467:;
		{
			int64 vr$31 = COPERATOR( -1ll );
			OP$1 = vr$31;
			{
				if( OP$1 == -1ll ) goto label$470;
				label$471:;
				if( OP$1 == 36ll ) goto label$470;
				label$472:;
				if( OP$1 == 9ll ) goto label$470;
				label$473:;
				if( OP$1 == 37ll ) goto label$470;
				label$474:;
				if( OP$1 != 10ll ) goto label$469;
				label$470:;
				{
					ERRREPORT( 157ll, 0ll, (uint8*)0ull );
					OP$1 = 28ll;
				}
				label$469:;
				label$468:;
			}
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$476;
			{
				if( IS_MEMBERPROC$1 != 0ll ) goto label$478;
				{
					ERRREPORT( 152ll, -1ll, (uint8*)0ull );
					OP$1 = 28ll;
				}
				label$478:;
				label$477:;
			}
			goto label$475;
			label$476:;
			{
				if( IS_MEMBERPROC$1 == 0ll ) goto label$480;
				{
					ERRREPORT( 153ll, -1ll, (uint8*)" (TODO)" );
				}
				label$480:;
				label$479:;
			}
			label$475:;
			{
				uint64 TMP$133$4;
				TMP$133$4 = (uint64)OP$1;
				goto label$482;
				label$483:;
				{
					if( (PATTRIB$1 & 768ll) == 0ll ) goto label$485;
					{
						ERRREPORT( 233ll, -1ll, (uint8*)0ull );
						PATTRIB$1 = PATTRIB$1 & -769ll;
					}
					label$485:;
					label$484:;
					if( (ATTRIB$1 & 2048ll) == 0ll ) goto label$487;
					{
						ERRREPORT( 234ll, -1ll, (uint8*)0ull );
						ATTRIB$1 = ATTRIB$1 & -2049ll;
					}
					label$487:;
					label$486:;
					ATTRIB$1 = ATTRIB$1 | 2ll;
					PATTRIB$1 = PATTRIB$1 & -3ll;
				}
				goto label$481;
				label$488:;
				{
					if( IS_MEMBERPROC$1 == 0ll ) goto label$490;
					{
						if( (ATTRIB$1 & 2ll) == 0ll ) goto label$492;
						{
							ERRREPORT( 232ll, -1ll, (uint8*)0ull );
							ATTRIB$1 = ATTRIB$1 & -3ll;
						}
						label$492:;
						label$491:;
						PATTRIB$1 = PATTRIB$1 | 2ll;
					}
					label$490:;
					label$489:;
				}
				goto label$481;
				label$482:;
				static const void* tmp$137[4ll] = {
					&&label$483,
					&&label$483,
					&&label$483,
					&&label$483,
				};
				if( (TMP$133$4 - 18ull) > 3ull ) goto label$488;
				goto *tmp$137[TMP$133$4 - 18ull];
				label$481:;
			}
			struct $8FBSYMBOL* vr$43 = SYMBPREADDPROC( (uint8*)0ull );
			PROC$1 = vr$43;
		}
		goto label$462;
		label$466:;
		{
			struct $8FBSYMBOL* vr$48 = HGETID( PARENT$1, (uint8*)ID$1, &DTYPE$1, (int64)-(TK$1 == 345ll) | (int64)-(TK$1 == 350ll) );
			HEAD_PROC$1 = vr$48;
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 8388608ll) == 0ll ) goto label$495;
			{
				if( DTYPE$1 == 2147483648ll ) goto label$497;
				{
					ATTRIB$1 = ATTRIB$1 | 1048576ll;
				}
				label$497:;
				label$496:;
			}
			label$495:;
			label$494:;
			struct $8FBSYMBOL* vr$51 = SYMBPREADDPROC( (uint8*)ID$1 );
			PROC$1 = vr$51;
		}
		label$493:;
		label$462:;
	}
	CNAKEDATTRIBUTE( &PATTRIB$1 );
	{
		if( TK$1 == 347ll ) goto label$500;
		label$501:;
		if( TK$1 != 348ll ) goto label$499;
		label$500:;
		{
			MODE$1 = 3ll;
		}
		goto label$498;
		label$499:;
		{
			MODE$1 = -1ll;
		}
		label$502:;
		label$498:;
	}
	if( IS_MEMBERPROC$1 == 0ll ) goto label$504;
	{
		if( (ATTRIB$1 & 2ll) != 0ll ) goto label$506;
		{
			if( *(int64*)((uint8*)&PARSER$ + 208ll) != 4ll ) goto label$508;
			{
				if( *(int64*)((uint8*)&ENV$ + 216ll) != 0ll ) goto label$510;
				{
					int64 vr$54 = FBIS64BIT(  );
					if( vr$54 != 0ll ) goto label$512;
					{
						if( *(int64*)((uint8*)&ENV$ + 424ll) != 0ll ) goto label$514;
						{
							MODE$1 = 5ll;
						}
						label$514:;
						label$513:;
					}
					label$512:;
					label$511:;
				}
				label$510:;
				label$509:;
			}
			label$508:;
			label$507:;
		}
		label$506:;
		label$505:;
	}
	label$504:;
	label$503:;
	$11FB_FUNCMODE vr$56 = CPROCCALLINGCONV( MODE$1, &MODE_IS_EXPLICIT$1 );
	MODE$1 = vr$56;
	int64 vr$57 = LEXGETTOKEN( 0ll );
	if( vr$57 != 388ll ) goto label$516;
	{
		if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 16ll) != 0ll ) goto label$518;
		{
			ERRREPORTNOTALLOWED( 16ll, 146ll, (uint8*)0ull );
		}
		goto label$517;
		label$518:;
		{
			PATTRIB$1 = PATTRIB$1 | 1ll;
		}
		label$517:;
		LEXSKIPTOKEN( 2048ll );
	}
	label$516:;
	label$515:;
	if( (OPTIONS$1 & 1ll) == 0ll ) goto label$520;
	{
		CLIBATTRIBUTE(  );
	}
	label$520:;
	label$519:;
	uint8* vr$61 = CALIASATTRIBUTE(  );
	PALIAS$1 = vr$61;
	if( ((int64)-((OPTIONS$1 & 1ll) == 0ll) & (int64)-(PARENT$1 != (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$522;
	{
		if( PARENT$1 == *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) ) goto label$524;
		{
			SYMBNESTBEGIN( PARENT$1, -1ll );
			*IS_NESTED$1 = -1ll;
		}
		label$524:;
		label$523:;
	}
	label$522:;
	label$521:;
	*($13FB_SYMBATTRIB*)((uint8*)PROC$1 + 8ll) = ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROC$1 + 16ll) = PATTRIB$1;
	CPARAMETERS( PARENT$1, PROC$1, MODE$1, (int64)-((OPTIONS$1 & 1ll) != 0ll) );
	{
		if( TK$1 != 348ll ) goto label$526;
		label$527:;
		{
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) <= 1ll ) goto label$529;
			{
				ERRREPORT( 159ll, 0ll, (uint8*)0ull );
			}
			label$529:;
			label$528:;
			DTYPE$1 = 0ll;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$525;
		label$526:;
		if( TK$1 != 347ll ) goto label$530;
		label$531:;
		{
			int64 vr$73 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
			if( vr$73 == 0ll ) goto label$533;
			{
				ERRREPORT( 271ll, -1ll, (uint8*)0ull );
				goto label$419;
			}
			label$533:;
			label$532:;
			if( *(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll) + 96ll) != 4ll ) goto label$535;
			{
				HPARAMERROR( PROC$1, 0ll, 143ll );
				PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll);
				*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll);
				if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll) == (struct $8FBSYMBOL*)0ull ) goto label$537;
				{
					*(struct $8FBSYMBOL**)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 304ll) + 312ll) = (struct $8FBSYMBOL*)0ull;
				}
				label$537:;
				label$536:;
				*(int16*)((uint8*)PROC$1 + 120ll) = (int16)((int64)*(int16*)((uint8*)PROC$1 + 120ll) + -1ll);
				SYMBFREESYMBOL( PARAM$1 );
			}
			label$535:;
			label$534:;
			DTYPE$1 = 0ll;
			SUBTYPE$1 = (struct $8FBSYMBOL*)0ull;
		}
		goto label$525;
		label$530:;
		if( TK$1 != 349ll ) goto label$538;
		label$539:;
		{
			{
				if( OP$1 != 29ll ) goto label$541;
				label$542:;
				{
					if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 1ll ) goto label$544;
					{
						OP$1 = 54ll;
					}
					label$544:;
					label$543:;
				}
				goto label$540;
				label$541:;
				if( OP$1 != 28ll ) goto label$545;
				label$546:;
				{
					if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 1ll ) goto label$548;
					{
						OP$1 = 53ll;
					}
					label$548:;
					label$547:;
				}
				goto label$540;
				label$545:;
				if( OP$1 != 30ll ) goto label$549;
				label$550:;
				{
					if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) != 1ll ) goto label$552;
					{
						OP$1 = 76ll;
					}
					label$552:;
					label$551:;
				}
				label$549:;
				label$540:;
			}
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 4ll) == 0ll ) goto label$554;
			{
				DTYPE$1 = 0ll;
			}
			goto label$553;
			label$554:;
			{
				CBYREFATTRIBUTE( &PATTRIB$1, -1ll );
				int64 vr$96 = LEXGETTOKEN( 0ll );
				if( vr$96 != 376ll ) goto label$556;
				{
					CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, (int64)-((OPTIONS$1 & 1ll) != 0ll), &DTYPE$1, &SUBTYPE$1 );
				}
				goto label$555;
				label$556:;
				{
					ERRREPORT( 68ll, 0ll, (uint8*)0ull );
					DTYPE$1 = 8ll;
				}
				label$555:;
			}
			label$553:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 56ll) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) = SUBTYPE$1;
			SYMBPROCALLOCEXT( PROC$1 );
			*($6AST_OP*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 80ll) = OP$1;
			if( OP$1 != 0ll ) goto label$558;
			{
				int64 vr$105 = HCHECKISSELFCLONEBYVAL( PARENT$1, PROC$1, OPTIONS$1 );
				if( vr$105 == 0ll ) goto label$560;
				{
					ERRREPORT( 271ll, -1ll, (uint8*)0ull );
					goto label$419;
				}
				label$560:;
				label$559:;
			}
			label$558:;
			label$557:;
			int64 vr$106 = HCHECKOPOVLPARAMS( PARENT$1, OP$1, PROC$1 );
			if( vr$106 != 0ll ) goto label$562;
			{
				goto label$419;
			}
			label$562:;
			label$561:;
		}
		goto label$525;
		label$538:;
		if( TK$1 != 350ll ) goto label$563;
		label$564:;
		{
			CBYREFATTRIBUTE( &PATTRIB$1, -1ll );
			int64 vr$108 = LEXGETTOKEN( 0ll );
			if( vr$108 != 376ll ) goto label$566;
			{
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, (int64)-((OPTIONS$1 & 1ll) != 0ll), &DTYPE$1, &SUBTYPE$1 );
				IS_INDEXED$1 = (int64)-((int64)*(int16*)((uint8*)PROC$1 + 120ll) == 2ll);
				IS_GET$1 = -1ll;
			}
			goto label$565;
			label$566:;
			{
				if( (PATTRIB$1 & 2048ll) == 0ll ) goto label$568;
				{
					ERRREPORT( 68ll, 0ll, (uint8*)0ull );
					PATTRIB$1 = PATTRIB$1 & -2049ll;
				}
				label$568:;
				label$567:;
				DTYPE$1 = 0ll;
				IS_INDEXED$1 = (int64)-((int64)*(int16*)((uint8*)PROC$1 + 120ll) == 3ll);
			}
			label$565:;
			*($11FB_DATATYPE*)((uint8*)PROC$1 + 56ll) = DTYPE$1;
			*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) = SUBTYPE$1;
			HCHECKPROPPARAMS( PROC$1, IS_GET$1 );
		}
		goto label$525;
		label$563:;
		{
			if( IS_MEMBERPROC$1 == 0ll ) goto label$571;
			{
				int64 TMP$134$4;
				if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) <= 0ll ) goto label$572;
				TMP$134$4 = (int64)-(*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)PROC$1 + 144ll) + 96ll) != 4ll);
				goto label$696;
				label$572:;
				TMP$134$4 = -1ll;
				label$696:;
				if( TMP$134$4 == 0ll ) goto label$574;
				{
					PATTRIB$1 = PATTRIB$1 | 1ll;
				}
				label$574:;
				label$573:;
			}
			label$571:;
			label$570:;
			CBYREFATTRIBUTE( &PATTRIB$1, (int64)-(TK$1 == 346ll) );
			int64 vr$131 = LEXGETTOKEN( 0ll );
			if( vr$131 != 376ll ) goto label$576;
			{
				if( ((int64)-(DTYPE$1 != 2147483648ll) | (int64)-(TK$1 == 345ll)) == 0ll ) goto label$578;
				{
					ERRREPORT( 17ll, 0ll, (uint8*)0ull );
				}
				label$578:;
				label$577:;
				CPROCRETTYPE( ATTRIB$1, PATTRIB$1, PROC$1, (int64)-((OPTIONS$1 & 1ll) != 0ll), &DTYPE$1, &SUBTYPE$1 );
			}
			goto label$575;
			label$576:;
			{
				if( TK$1 != 346ll ) goto label$580;
				{
					if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 4194304ll) == 0ll ) goto label$582;
					{
						if( DTYPE$1 != 2147483648ll ) goto label$584;
						{
							int64 vr$140 = SYMBGETDEFTYPE( (uint8*)ID$1 );
							DTYPE$1 = vr$140;
						}
						label$584:;
						label$583:;
					}
					goto label$581;
					label$582:;
					{
						ERRREPORTNOTALLOWED( 4194304ll, 147ll, (uint8*)0ull );
						DTYPE$1 = 8ll;
					}
					label$581:;
				}
				goto label$579;
				label$580:;
				{
					DTYPE$1 = 0ll;
				}
				label$579:;
			}
			label$575:;
		}
		label$569:;
		label$525:;
	}
	if( (OPTIONS$1 & 1ll) == 0ll ) goto label$586;
	{
		{
			if( TK$1 == 347ll ) goto label$589;
			label$590:;
			if( TK$1 != 348ll ) goto label$588;
			label$589:;
			{
				struct $8FBSYMBOL* vr$142 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 0ll );
				PROC$1 = vr$142;
			}
			goto label$587;
			label$588:;
			if( TK$1 != 349ll ) goto label$591;
			label$592:;
			{
				struct $8FBSYMBOL* vr$143 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0ll );
				PROC$1 = vr$143;
			}
			goto label$587;
			label$591:;
			{
				struct $8FBSYMBOL* vr$144 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 0ll );
				PROC$1 = vr$144;
			}
			label$593:;
			label$587:;
		}
		if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$595;
		{
			ERRREPORT( 4ll, 0ll, (uint8*)0ull );
			goto label$419;
		}
		label$595:;
		label$594:;
		if( ((int64)-((OPTIONS$1 & 2ll) != 0ll) & (int64)-(TK$1 != 347ll)) == 0ll ) goto label$597;
		{
			COVERRIDEATTRIBUTE( PROC$1 );
		}
		label$597:;
		label$596:;
		if( TK$1 != 348ll ) goto label$599;
		{
			if( (int64)*(int16*)((uint8*)PARENT$1 + 74ll) != 4ll ) goto label$601;
			{
				struct $8FBSYMBOL* DTOR0$4;
				struct $8FBSYMBOL* vr$151 = SYMBPREADDPROC( (uint8*)0ull );
				DTOR0$4 = vr$151;
				SYMBADDPROCINSTANCEPARAM( PARENT$1, DTOR0$4 );
				struct $8FBSYMBOL* vr$154 = SYMBADDCTOR( DTOR0$4, (uint8*)0ull, ATTRIB$1, (PATTRIB$1 & -9ll) | 4096ll, MODE$1, 0ll );
				DTOR0$4 = vr$154;
			}
			label$601:;
			label$600:;
		}
		label$599:;
		label$598:;
		if( TK$1 != 350ll ) goto label$603;
		{
			HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
		}
		label$603:;
		label$602:;
		fb$result$1 = PROC$1;
		goto label$419;
	}
	label$586:;
	label$585:;
	{
		int64 TMP$135$2;
		int64 vr$155 = LEXGETTOKEN( 0ll );
		TMP$135$2 = vr$155;
		if( TMP$135$2 == 347ll ) goto label$606;
		label$607:;
		if( TMP$135$2 != 348ll ) goto label$605;
		label$606:;
		{
			if( ((int64)-((PATTRIB$1 & 2ll) != 0ll) | (int64)-(TK$1 == 346ll)) == 0ll ) goto label$609;
			{
				ERRREPORT( 17ll, -1ll, (uint8*)0ull );
			}
			goto label$608;
			label$609:;
			if( (int64)*(int16*)((uint8*)PROC$1 + 120ll) == 0ll ) goto label$610;
			{
				ERRREPORT( 1ll, -1ll, (uint8*)0ull );
			}
			goto label$608;
			label$610:;
			{
				int64 vr$162 = LEXGETTOKEN( 0ll );
				if( vr$162 != 347ll ) goto label$612;
				{
					STATS$1 = STATS$1 | 65536ll;
				}
				goto label$611;
				label$612:;
				{
					STATS$1 = STATS$1 | 131072ll;
				}
				label$611:;
			}
			label$608:;
			LEXSKIPTOKEN( 2048ll );
			int64 vr$165 = LEXGETCLASS( 0ll );
			if( vr$165 != 3ll ) goto label$614;
			{
				if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) == 8ll ) goto label$616;
				{
					ERRREPORT( 189ll, 0ll, (uint8*)0ull );
					LEXSKIPTOKEN( 0ll );
				}
				goto label$615;
				label$616:;
				{
					uint8* vr$168 = LEXGETTEXT(  );
					FBSTRING* vr$169 = fb_StrAllocTempDescZ( (uint8*)vr$168 );
					int32 vr$170 = fb_VALINT( (FBSTRING*)vr$169 );
					PRIORITY$1 = (int64)vr$170;
					if( ((int64)-(PRIORITY$1 < 101ll) | (int64)-(PRIORITY$1 > 65535ll)) == 0ll ) goto label$618;
					{
						ERRREPORT( 189ll, 0ll, (uint8*)0ull );
						LEXSKIPTOKEN( 0ll );
					}
					goto label$617;
					label$618:;
					{
						PRIORITY$1 = PRIORITY$1 & 65535ll;
						LEXSKIPTOKEN( 0ll );
					}
					label$617:;
				}
				label$615:;
			}
			label$614:;
			label$613:;
		}
		label$605:;
		label$604:;
	}
	int64 vr$176 = HMATCH( 307ll, 2048ll );
	if( vr$176 == 0ll ) goto label$620;
	{
		PATTRIB$1 = PATTRIB$1 | 64ll;
	}
	label$620:;
	label$619:;
	int64 vr$178 = LEXGETTOKEN( 0ll );
	if( vr$178 != 341ll ) goto label$622;
	{
		if( (STATS$1 & 196608ll) == 0ll ) goto label$624;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
		}
		label$624:;
		label$623:;
		if( (ATTRIB$1 & 64ll) == 0ll ) goto label$626;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			ATTRIB$1 = ATTRIB$1 & -65ll;
		}
		label$626:;
		label$625:;
		LEXSKIPTOKEN( 2048ll );
		FBSETOPTION( 33ll, -1ll );
		ATTRIB$1 = ATTRIB$1 | 288ll;
	}
	label$622:;
	label$621:;
	{
		if( TK$1 != 347ll ) goto label$628;
		label$629:;
		{
			struct $8FBSYMBOL* vr$183 = SYMBGETCOMPCTORHEAD( PARENT$1 );
			HEAD_PROC$1 = vr$183;
		}
		goto label$627;
		label$628:;
		if( TK$1 != 348ll ) goto label$630;
		label$631:;
		{
			struct $8FBSYMBOL* vr$184 = SYMBGETCOMPDTOR1( PARENT$1 );
			HEAD_PROC$1 = vr$184;
		}
		goto label$627;
		label$630:;
		if( TK$1 != 349ll ) goto label$632;
		label$633:;
		{
			struct $8FBSYMBOL* vr$185 = SYMBGETCOMPOPOVLHEAD( PARENT$1, OP$1 );
			HEAD_PROC$1 = vr$185;
		}
		label$632:;
		label$627:;
	}
	if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$635;
	{
		if( IS_OUTSIDE$1 == 0ll ) goto label$637;
		{
			ERRREPORT( 158ll, 0ll, (uint8*)0ull );
		}
		label$637:;
		label$636:;
		{
			if( TK$1 == 347ll ) goto label$640;
			label$641:;
			if( TK$1 != 348ll ) goto label$639;
			label$640:;
			{
				struct $8FBSYMBOL* vr$186 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
				HEAD_PROC$1 = vr$186;
			}
			goto label$638;
			label$639:;
			if( TK$1 != 349ll ) goto label$642;
			label$643:;
			{
				struct $8FBSYMBOL* vr$187 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
				HEAD_PROC$1 = vr$187;
			}
			goto label$638;
			label$642:;
			{
				struct $8FBSYMBOL* vr$188 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
				HEAD_PROC$1 = vr$188;
			}
			label$644:;
			label$638:;
		}
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$646;
		{
			ERRREPORT( 4ll, -1ll, (uint8*)0ull );
			uint8* vr$189 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$190 = SYMBADDPROC( PROC$1, (uint8*)vr$189, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
			PROC$1 = vr$190;
		}
		goto label$645;
		label$646:;
		{
			PROC$1 = HEAD_PROC$1;
		}
		label$645:;
	}
	goto label$634;
	label$635:;
	{
		if( (int64)-((*(int64*)((uint8*)HEAD_PROC$1 + 16ll) & 32ll) != 0ll) == (int64)-(TK$1 == 350ll) ) goto label$648;
		{
			ERRREPORT( 4ll, -1ll, (uint8*)0ull );
			uint8* vr$195 = SYMBUNIQUELABEL(  );
			struct $8FBSYMBOL* vr$196 = SYMBADDPROC( PROC$1, (uint8*)vr$195, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
			fb$result$1 = vr$196;
			goto label$419;
		}
		label$648:;
		label$647:;
		if( (*(int64*)((uint8*)HEAD_PROC$1 + 16ll) & 1ll) <= 0ll ) goto label$650;
		{
			{
				if( TK$1 != 347ll ) goto label$652;
				label$653:;
				{
					struct $8FBSYMBOL* vr$199 = SYMBFINDCTORPROC( HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$199;
				}
				goto label$651;
				label$652:;
				if( TK$1 != 349ll ) goto label$654;
				label$655:;
				{
					struct $8FBSYMBOL* vr$200 = SYMBFINDOPOVLPROC( OP$1, HEAD_PROC$1, PROC$1 );
					HEAD_PROC$1 = vr$200;
				}
				goto label$651;
				label$654:;
				{
					$14FB_SYMBFINDOPT TMP$136$5;
					if( IS_GET$1 == 0ll ) goto label$657;
					TMP$136$5 = 1ll;
					goto label$697;
					label$657:;
					TMP$136$5 = 0ll;
					label$697:;
					struct $8FBSYMBOL* vr$201 = SYMBFINDOVERLOADPROC( HEAD_PROC$1, PROC$1, TMP$136$5 );
					HEAD_PROC$1 = vr$201;
				}
				label$656:;
				label$651:;
			}
			PATTRIB$1 = PATTRIB$1 | 1ll;
		}
		label$650:;
		label$649:;
		if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$659;
		{
			if( IS_OUTSIDE$1 == 0ll ) goto label$661;
			{
				ERRREPORT( 158ll, 0ll, (uint8*)0ull );
			}
			label$661:;
			label$660:;
			{
				if( TK$1 == 347ll ) goto label$664;
				label$665:;
				if( TK$1 != 348ll ) goto label$663;
				label$664:;
				{
					struct $8FBSYMBOL* vr$203 = SYMBADDCTOR( PROC$1, PALIAS$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
					HEAD_PROC$1 = vr$203;
				}
				goto label$662;
				label$663:;
				if( TK$1 != 349ll ) goto label$666;
				label$667:;
				{
					struct $8FBSYMBOL* vr$204 = SYMBADDOPERATOR( PROC$1, OP$1, PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
					HEAD_PROC$1 = vr$204;
				}
				goto label$662;
				label$666:;
				{
					struct $8FBSYMBOL* vr$205 = SYMBADDPROC( PROC$1, (uint8*)ID$1, (uint8*)PALIAS$1, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
					HEAD_PROC$1 = vr$205;
				}
				label$668:;
				label$662:;
			}
			if( HEAD_PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$670;
			{
				ERRREPORT( 4ll, -1ll, (uint8*)0ull );
				uint8* vr$206 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$207 = SYMBADDPROC( PROC$1, (uint8*)vr$206, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
				fb$result$1 = vr$207;
				goto label$419;
			}
			label$670:;
			label$669:;
			PROC$1 = HEAD_PROC$1;
		}
		goto label$658;
		label$659:;
		{
			if( (*(int64*)((uint8*)HEAD_PROC$1 + 24ll) & 8ll) == 0ll ) goto label$672;
			{
				ERRREPORT( 4ll, -1ll, (uint8*)0ull );
				uint8* vr$210 = SYMBUNIQUELABEL(  );
				struct $8FBSYMBOL* vr$211 = SYMBADDPROC( PROC$1, (uint8*)vr$210, (uint8*)0ull, DTYPE$1, SUBTYPE$1, ATTRIB$1, PATTRIB$1, MODE$1, 4ll );
				fb$result$1 = vr$211;
				goto label$419;
			}
			label$672:;
			label$671:;
			if( MODE_IS_EXPLICIT$1 != 0ll ) goto label$674;
			{
				MODE$1 = *(int64*)((uint8*)HEAD_PROC$1 + 152ll);
				*($11FB_FUNCMODE*)((uint8*)PROC$1 + 152ll) = MODE$1;
			}
			label$674:;
			label$673:;
			HCHECKPROTOTYPE( HEAD_PROC$1, PROC$1, PALIAS$1, DTYPE$1, SUBTYPE$1, MODE$1 );
			PROC$1 = HEAD_PROC$1;
			HCHECKATTRIBS( PROC$1, ATTRIB$1, PATTRIB$1 );
			if( (STATS$1 & 196608ll) == 0ll ) goto label$676;
			{
				if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$678;
				{
					ERRREPORT( 17ll, -1ll, (uint8*)0ull );
				}
				label$678:;
				label$677:;
			}
			label$676:;
			label$675:;
			*($12FB_SYMBSTATS*)((uint8*)PROC$1 + 24ll) = *(int64*)((uint8*)PROC$1 + 24ll) | 8ll;
		}
		label$658:;
	}
	label$634:;
	if( PROC$1 == (struct $8FBSYMBOL*)0ull ) goto label$680;
	{
		int64 IS_GLOBAL$2;
		IS_GLOBAL$2 = (int64)-((*(int64*)((uint8*)PROC$1 + 8ll) & 57ll) != 0ll);
		if( IS_GLOBAL$2 == 0ll ) goto label$682;
		{
			int64 vr$223 = fb_StrLen( (void*)ID$1, 129ll );
			if( ((int64)-(vr$223 > 0ll) & (int64)-(*(struct $8FBSYMBOL**)*(struct $8FBHASHTB**)((uint8*)PROC$1 + 248ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll))) == 0ll ) goto label$684;
			{
				int64 vr$230 = PARSERISGLOBALASMKEYWORD( (uint8*)ID$1 );
				if( vr$230 == 0ll ) goto label$686;
				{
					ERRREPORTWARNEX( 47ll, (uint8*)ID$1, *(int64*)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8560ll), 1ll, (uint8*)0ull );
				}
				label$686:;
				label$685:;
			}
			label$684:;
			label$683:;
		}
		label$682:;
		label$681:;
	}
	label$680:;
	label$679:;
	if( (STATS$1 & 65536ll) == 0ll ) goto label$688;
	{
		if( (*(int64*)((uint8*)PROC$1 + 8ll) & 6291456ll) == 0ll ) goto label$690;
		{
			ERRREPORT( 205ll, -1ll, (uint8*)0ull );
		}
		label$690:;
		label$689:;
		SYMBADDGLOBALCTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 112ll) = PRIORITY$1;
	}
	goto label$687;
	label$688:;
	if( (STATS$1 & 131072ll) == 0ll ) goto label$691;
	{
		if( (*(int64*)((uint8*)PROC$1 + 8ll) & 6291456ll) == 0ll ) goto label$693;
		{
			ERRREPORT( 206ll, -1ll, (uint8*)0ull );
		}
		label$693:;
		label$692:;
		SYMBADDGLOBALDTOR( PROC$1 );
		SYMBPROCALLOCEXT( PROC$1 );
		*(int64*)((uint8*)*(struct $10FB_PROCEXT**)((uint8*)PROC$1 + 208ll) + 112ll) = PRIORITY$1;
	}
	label$691:;
	label$687:;
	if( TK$1 != 350ll ) goto label$695;
	{
		HSETUDTPROPERTYFLAGS( PARENT$1, IS_INDEXED$1, IS_GET$1 );
	}
	label$695:;
	label$694:;
	fb$result$1 = PROC$1;
	label$419:;
	return fb$result$1;
}

void HDISALLOWSTATICATTRIB( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$698:;
	if( (*(int64*)ATTRIB$1 & 2ll) == 0ll ) goto label$701;
	{
		ERRREPORT( 213ll, 0ll, (uint8*)0ull );
		*ATTRIB$1 = *(int64*)ATTRIB$1 & -3ll;
	}
	label$701:;
	label$700:;
	label$699:;
}

void HDISALLOWVIRTUALCTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$702:;
	if( (*(int64*)PATTRIB$1 & 768ll) == 0ll ) goto label$705;
	{
		if( (*(int64*)PATTRIB$1 & 512ll) == 0ll ) goto label$707;
		{
			ERRREPORT( 210ll, 0ll, (uint8*)0ull );
		}
		goto label$706;
		label$707:;
		{
			ERRREPORT( 211ll, 0ll, (uint8*)0ull );
		}
		label$706:;
		*PATTRIB$1 = *(int64*)PATTRIB$1 & -724ll;
	}
	label$705:;
	label$704:;
	label$703:;
}

void HDISALLOWABSTRACTDTOR( $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$708:;
	if( (*(int64*)PATTRIB$1 & 512ll) == 0ll ) goto label$711;
	{
		ERRREPORT( 212ll, 0ll, (uint8*)0ull );
		*PATTRIB$1 = *(int64*)PATTRIB$1 & -513ll;
	}
	label$711:;
	label$710:;
	label$709:;
}

void HDISALLOWCONSTCTORDTOR( int64 TK$1, $13FB_SYMBATTRIB* ATTRIB$1, $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$712:;
	if( (*(int64*)ATTRIB$1 & 2048ll) == 0ll ) goto label$715;
	{
		$9FB_ERRMSG TMP$138$2;
		if( TK$1 != 347ll ) goto label$716;
		TMP$138$2 = 314ll;
		goto label$717;
		label$716:;
		TMP$138$2 = 315ll;
		label$717:;
		ERRREPORT( TMP$138$2, 0ll, (uint8*)0ull );
		*ATTRIB$1 = *(int64*)ATTRIB$1 & -2049ll;
	}
	label$715:;
	label$714:;
	label$713:;
}

void CPROCSTMTBEGIN( $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$718:;
	int64 TKN$1;
	int64 IS_NESTED$1;
	struct $8FBSYMBOL* PROC$1;
	struct $13FB_CMPSTMTSTK* STK$1;
	if( (ATTRIB$1 & 96ll) != 0ll ) goto label$721;
	{
		if( *(int64*)((uint8*)&ENV$ + 1520ll) == 0ll ) goto label$723;
		{
			ATTRIB$1 = ATTRIB$1 | 32ll;
		}
		goto label$722;
		label$723:;
		{
			ATTRIB$1 = ATTRIB$1 | 64ll;
		}
		label$722:;
	}
	label$721:;
	label$720:;
	CMETHODATTRIBUTES( (struct $8FBSYMBOL*)0ull, &ATTRIB$1, &PATTRIB$1 );
	int64 vr$5 = LEXGETTOKEN( 0ll );
	TKN$1 = vr$5;
	{
		uint64 TMP$139$2;
		TMP$139$2 = (uint64)TKN$1;
		goto label$725;
		label$726:;
		{
		}
		goto label$724;
		label$727:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 64ll) != 0ll ) goto label$729;
			{
				ERRREPORTNOTALLOWED( 64ll, 146ll, (uint8*)0ull );
			}
			goto label$728;
			label$729:;
			{
				PATTRIB$1 = PATTRIB$1 | 4ll;
			}
			label$728:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWVIRTUALCTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$730:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 64ll) != 0ll ) goto label$732;
			{
				ERRREPORTNOTALLOWED( 64ll, 146ll, (uint8*)0ull );
			}
			goto label$731;
			label$732:;
			{
				PATTRIB$1 = PATTRIB$1 | 8ll;
			}
			label$731:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWABSTRACTDTOR( &ATTRIB$1, &PATTRIB$1 );
			HDISALLOWCONSTCTORDTOR( TKN$1, &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$733:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 32ll) != 0ll ) goto label$735;
			{
				ERRREPORTNOTALLOWED( 32ll, 146ll, (uint8*)0ull );
			}
			label$735:;
			label$734:;
		}
		goto label$724;
		label$736:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 64ll) != 0ll ) goto label$738;
			{
				ERRREPORTNOTALLOWED( 64ll, 146ll, (uint8*)0ull );
			}
			label$738:;
			label$737:;
			HDISALLOWSTATICATTRIB( &ATTRIB$1, &PATTRIB$1 );
		}
		goto label$724;
		label$739:;
		{
			ERRREPORT( 17ll, 0ll, (uint8*)0ull );
			HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
			goto label$719;
		}
		goto label$724;
		label$725:;
		static const void* tmp$140[6ll] = {
			&&label$726,
			&&label$726,
			&&label$727,
			&&label$730,
			&&label$733,
			&&label$736,
		};
		if( (TMP$139$2 - 345ull) > 5ull ) goto label$739;
		goto *tmp$140[TMP$139$2 - 345ull];
		label$724:;
	}
	int64 vr$26 = CCOMPSTMTISALLOWED( 2ll );
	if( vr$26 != 0ll ) goto label$741;
	{
		HSKIPCOMPOUND( TKN$1, -1ll, 0ll );
		goto label$719;
	}
	label$741:;
	label$740:;
	LEXSKIPTOKEN( 2048ll );
	struct $8FBSYMBOL* vr$28 = CPROCHEADER( ATTRIB$1, PATTRIB$1, &IS_NESTED$1, 0ll, TKN$1 );
	PROC$1 = vr$28;
	if( PROC$1 != (struct $8FBSYMBOL*)0ull ) goto label$743;
	{
		if( IS_NESTED$1 == 0ll ) goto label$745;
		{
			SYMBNESTEND( -1ll );
		}
		label$745:;
		label$744:;
		HSKIPCOMPOUND( TKN$1, -1ll, 0ll );
		goto label$719;
	}
	label$743:;
	label$742:;
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 512ll) == 0ll ) goto label$747;
	{
		ERRREPORT( 224ll, 0ll, (uint8*)0ull );
	}
	label$747:;
	label$746:;
	ASTPROCBEGIN( PROC$1, 0ll );
	struct $13FB_CMPSTMTSTK* vr$31 = CCOMPSTMTPUSH( 346ll, 33ll );
	STK$1 = vr$31;
	*($8FB_TOKEN*)((uint8*)STK$1 + 24ll) = TKN$1;
	*(int64*)((uint8*)STK$1 + 32ll) = IS_NESTED$1;
	*(struct $8FBSYMBOL**)((uint8*)STK$1 + 40ll) = *(struct $8FBSYMBOL**)((uint8*)*(struct $7ASTNODE**)((uint8*)&AST$ + 80ll) + 72ll);
	label$719:;
}

void CPROCSTMTEND( void )
{
	label$748:;
	struct $13FB_CMPSTMTSTK* STK$1;
	struct $8FBSYMBOL* PROC_RES$1;
	struct $13FB_CMPSTMTSTK* vr$0 = CCOMPSTMTGETTOS( 346ll, -1ll );
	STK$1 = vr$0;
	if( STK$1 != (struct $13FB_CMPSTMTSTK*)0ull ) goto label$751;
	{
		HSKIPUNTIL( -1ll, 0ll, 0ll, 0ll );
		goto label$749;
	}
	label$751:;
	label$750:;
	LEXSKIPTOKEN( 2048ll );
	int64 vr$2 = HMATCH( *(int64*)((uint8*)STK$1 + 24ll), 2048ll );
	if( vr$2 != 0ll ) goto label$753;
	{
		{
			$8FB_TOKEN TMP$141$3;
			TMP$141$3 = *($8FB_TOKEN*)((uint8*)STK$1 + 24ll);
			if( TMP$141$3 != 345ll ) goto label$755;
			label$756:;
			{
				ERRREPORT( 125ll, 0ll, (uint8*)0ull );
			}
			goto label$754;
			label$755:;
			if( TMP$141$3 != 346ll ) goto label$757;
			label$758:;
			{
				ERRREPORT( 126ll, 0ll, (uint8*)0ull );
			}
			goto label$754;
			label$757:;
			if( TMP$141$3 != 347ll ) goto label$759;
			label$760:;
			{
				ERRREPORT( 127ll, 0ll, (uint8*)0ull );
			}
			goto label$754;
			label$759:;
			if( TMP$141$3 != 348ll ) goto label$761;
			label$762:;
			{
				ERRREPORT( 128ll, 0ll, (uint8*)0ull );
			}
			goto label$754;
			label$761:;
			if( TMP$141$3 != 349ll ) goto label$763;
			label$764:;
			{
				ERRREPORT( 129ll, 0ll, (uint8*)0ull );
			}
			goto label$754;
			label$763:;
			if( TMP$141$3 != 350ll ) goto label$765;
			label$766:;
			{
				ERRREPORT( 130ll, 0ll, (uint8*)0ull );
			}
			label$765:;
			label$754:;
		}
	}
	label$753:;
	label$752:;
	struct $8FBSYMBOL* vr$4 = SYMBGETPROCRESULT( *(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) );
	PROC_RES$1 = vr$4;
	if( PROC_RES$1 == (struct $8FBSYMBOL*)0ull ) goto label$768;
	{
		if( (*(int64*)((uint8*)PROC_RES$1 + 24ll) & 2ll) != 0ll ) goto label$770;
		{
			if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 16ll) & 128ll) != 0ll ) goto label$772;
			{
				if( (*(int64*)((uint8*)*(struct $8FBSYMBOL**)((uint8*)&PARSER$ + 216ll) + 16ll) & 2048ll) == 0ll ) goto label$774;
				{
					ERRREPORT( 316ll, 0ll, (uint8*)0ull );
				}
				goto label$773;
				label$774:;
				{
					ERRREPORTWARN( 13ll, (uint8*)0ull, 1ll, (uint8*)0ull );
				}
				label$773:;
			}
			label$772:;
			label$771:;
		}
		label$770:;
		label$769:;
	}
	label$768:;
	label$767:;
	ASTPROCEND( 0ll );
	if( *(int64*)((uint8*)STK$1 + 32ll) == 0ll ) goto label$776;
	{
		SYMBNESTEND( -1ll );
	}
	label$776:;
	label$775:;
	CCOMPSTMTPOP( STK$1 );
	label$749:;
}

static void _ZN11TSTRSETITEMaSERKS_( struct $11TSTRSETITEM* THIS$1, struct $11TSTRSETITEM* __FB_RHS__$1 )
{
	label$4:;
	fb_StrAssign( (void*)THIS$1, -1ll, (void*)__FB_RHS__$1, -1ll, 0 );
	*(int64*)((uint8*)THIS$1 + 24ll) = *(int64*)((uint8*)__FB_RHS__$1 + 24ll);
	*(struct $8HASHITEM**)((uint8*)THIS$1 + 32ll) = *(struct $8HASHITEM**)((uint8*)__FB_RHS__$1 + 32ll);
	label$5:;
}

static void HPARAMERROR( struct $8FBSYMBOL* PROC$1, int64 ARGNUM$1, int64 ERRNUM$1 )
{
	label$45:;
	ERRREPORTPARAM( PROC$1, ARGNUM$1, (uint8*)0ull, ERRNUM$1 );
	label$46:;
}

static void HCHECKPROTOTYPE( struct $8FBSYMBOL* PROTO$1, struct $8FBSYMBOL* PROC$1, uint8* PALIAS$1, int64 PROC_DTYPE$1, struct $8FBSYMBOL* PROC_SUBTYPE$1, int64 MODE$1 )
{
	label$47:;
	struct $8FBSYMBOL* PARAM$1;
	struct $8FBSYMBOL* PROTO_PARAM$1;
	int64 PARAMS$1;
	int64 PROTO_PARAMS$1;
	int64 I$1;
	if( ((int64)-(PALIAS$1 != (uint8*)0ull) & (int64)-((*(int64*)((uint8*)PROTO$1 + 24ll) & 512ll) != 0ll)) == 0ll ) goto label$50;
	{
		int32 vr$6 = fb_StrCompare( (void*)PALIAS$1, 0ll, *(void**)((uint8*)PROTO$1 + 40ll), 0ll );
		if( (int64)vr$6 == 0ll ) goto label$52;
		{
			FBSTRING TMP$96$3;
			FBSTRING TMP$97$3;
			FBSTRING TMP$98$3;
			__builtin_memset( &TMP$98$3, 0, 24ll );
			__builtin_memset( &TMP$96$3, 0, 24ll );
			FBSTRING* vr$11 = fb_StrConcat( &TMP$96$3, (void*)"\x22", 2ll, (void*)PALIAS$1, 0ll );
			__builtin_memset( &TMP$97$3, 0, 24ll );
			FBSTRING* vr$14 = fb_StrConcat( &TMP$97$3, (void*)vr$11, -1ll, (void*)"\x22", 2ll );
			fb_StrAssign( (void*)&TMP$98$3, -1ll, (void*)vr$14, -1ll, 0 );
			ERRREPORTEX( 311ll, (uint8*)*(uint8**)&TMP$98$3, 0ll, 1ll, (uint8*)0ull );
			fb_StrDelete( (FBSTRING*)&TMP$98$3 );
		}
		label$52:;
		label$51:;
	}
	label$50:;
	label$49:;
	if( ((int64)-(*(int64*)((uint8*)PROTO$1 + 56ll) != PROC_DTYPE$1) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 64ll) != PROC_SUBTYPE$1)) == 0ll ) goto label$54;
	{
		ERRREPORT( 40ll, -1ll, (uint8*)0ull );
	}
	label$54:;
	label$53:;
	if( ((int64)-(*(int64*)((uint8*)PROC$1 + 176ll) != 2ll) & (int64)-(*(int64*)((uint8*)PROTO$1 + 176ll) != *(int64*)((uint8*)PROC$1 + 176ll))) == 0ll ) goto label$56;
	{
		ERRREPORTWARN( 28ll, (uint8*)0ull, 1ll, (uint8*)0ull );
	}
	label$56:;
	label$55:;
	if( *(int64*)((uint8*)PROTO$1 + 152ll) == MODE$1 ) goto label$58;
	{
		ERRREPORT( 41ll, -1ll, (uint8*)0ull );
	}
	label$58:;
	label$57:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	if( (*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) == 0ll ) goto label$60;
	{
		PARAMS$1 = PARAMS$1 + -1ll;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	label$60:;
	label$59:;
	PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO$1 + 136ll);
	PROTO_PARAMS$1 = (int64)*(int16*)((uint8*)PROTO$1 + 120ll);
	if( (*(int64*)((uint8*)PROTO$1 + 16ll) & 2ll) == 0ll ) goto label$62;
	{
		PROTO_PARAMS$1 = PROTO_PARAMS$1 + -1ll;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 312ll);
	}
	label$62:;
	label$61:;
	if( PROTO_PARAMS$1 == PARAMS$1 ) goto label$64;
	{
		ERRREPORT( 1ll, -1ll, (uint8*)0ull );
	}
	label$64:;
	label$63:;
	I$1 = 1ll;
	label$65:;
	if( ((int64)-(I$1 <= PROTO_PARAMS$1) & (int64)-(I$1 <= PARAMS$1)) == 0ll ) goto label$66;
	{
		int64 TMP$99$2;
		int64 DTYPE$2;
		DTYPE$2 = *(int64*)((uint8*)PROTO_PARAM$1 + 56ll);
		if( (DTYPE$2 & 480ll) == 0ll ) goto label$67;
		TMP$99$2 = 24ll;
		goto label$777;
		label$67:;
		TMP$99$2 = DTYPE$2 & 31ll;
		label$777:;
		if( TMP$99$2 != 0ll ) goto label$69;
		{
			*($11FB_DATATYPE*)((uint8*)PROTO_PARAM$1 + 56ll) = *($11FB_DATATYPE*)((uint8*)PARAM$1 + 56ll);
			*(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 64ll) = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll);
		}
		goto label$68;
		label$69:;
		{
			if( *(int64*)((uint8*)PARAM$1 + 56ll) == DTYPE$2 ) goto label$71;
			{
				HPARAMERROR( PROC$1, I$1, 58ll );
			}
			goto label$70;
			label$71:;
			if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 64ll) ) goto label$72;
			{
				HPARAMERROR( PROC$1, I$1, 58ll );
			}
			label$72:;
			label$70:;
		}
		label$68:;
		if( *(int64*)((uint8*)PARAM$1 + 96ll) == *(int64*)((uint8*)PROTO_PARAM$1 + 96ll) ) goto label$74;
		{
			HPARAMERROR( PROC$1, I$1, 58ll );
		}
		label$74:;
		label$73:;
		if( *(int64*)((uint8*)PARAM$1 + 96ll) != 3ll ) goto label$76;
		{
			if( *(int64*)((uint8*)PARAM$1 + 120ll) == *(int64*)((uint8*)PROTO_PARAM$1 + 120ll) ) goto label$78;
			{
				HPARAMERROR( PROC$1, I$1, 58ll );
			}
			label$78:;
			label$77:;
		}
		label$76:;
		label$75:;
		if( *(int64*)((uint8*)PARAM$1 + 96ll) == 4ll ) goto label$80;
		{
			SYMBSETNAME( PROTO_PARAM$1, *(uint8**)((uint8*)PARAM$1 + 32ll) );
			if( (*(int64*)((uint8*)PARAM$1 + 8ll) & 1048576ll) == 0ll ) goto label$82;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 8ll) = *(int64*)((uint8*)PROTO_PARAM$1 + 8ll) | 1048576ll;
			}
			goto label$81;
			label$82:;
			{
				*($13FB_SYMBATTRIB*)((uint8*)PROTO_PARAM$1 + 8ll) = *(int64*)((uint8*)PROTO_PARAM$1 + 8ll) & -1048577ll;
			}
			label$81:;
		}
		label$80:;
		label$79:;
		if( ((int64)-(*(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull) & (int64)-(*(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull)) == 0ll ) goto label$84;
		{
			int64 vr$78 = ASTISEQUALPARAMINIT( *(struct $7ASTNODE**)((uint8*)PROTO_PARAM$1 + 112ll), *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) );
			if( vr$78 != 0ll ) goto label$86;
			{
				ERRREPORTPARAMWARN( PROC$1, I$1, (uint8*)0ull, 36ll );
			}
			label$86:;
			label$85:;
		}
		label$84:;
		label$83:;
		PROTO_PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROTO_PARAM$1 + 312ll);
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
		I$1 = I$1 + 1ll;
	}
	goto label$65;
	label$66:;
	label$48:;
}

static void HCHECKATTRIBS( struct $8FBSYMBOL* PROTO$1, $13FB_SYMBATTRIB ATTRIB$1, $13FB_PROCATTRIB PATTRIB$1 )
{
	label$87:;
	if( (int64)-((PATTRIB$1 & 2048ll) != 0ll) == (int64)-((*(int64*)((uint8*)PROTO$1 + 16ll) & 2048ll) != 0ll) ) goto label$90;
	{
		ERRREPORT( 20ll, -1ll, (uint8*)0ull );
		if( (*(int64*)((uint8*)PROTO$1 + 16ll) & 2048ll) == 0ll ) goto label$92;
		{
			PATTRIB$1 = PATTRIB$1 | 2048ll;
		}
		goto label$91;
		label$92:;
		{
			PATTRIB$1 = PATTRIB$1 & -2049ll;
		}
		label$91:;
	}
	label$90:;
	label$89:;
	if( ((ATTRIB$1 & 2ll) & (int64)-((*(int64*)((uint8*)PROTO$1 + 8ll) & 2ll) == 0ll)) == 0ll ) goto label$94;
	{
		ERRREPORT( 217ll, 0ll, (uint8*)0ull );
	}
	label$94:;
	label$93:;
	if( ((ATTRIB$1 & 2048ll) & (int64)-((*(int64*)((uint8*)PROTO$1 + 8ll) & 2048ll) == 0ll)) == 0ll ) goto label$96;
	{
		ERRREPORT( 218ll, 0ll, (uint8*)0ull );
	}
	label$96:;
	label$95:;
	if( ((PATTRIB$1 & 512ll) & (int64)-((*(int64*)((uint8*)PROTO$1 + 16ll) & 512ll) == 0ll)) == 0ll ) goto label$98;
	{
		ERRREPORT( 220ll, 0ll, (uint8*)0ull );
	}
	goto label$97;
	label$98:;
	if( ((PATTRIB$1 & 256ll) & (int64)-((*(int64*)((uint8*)PROTO$1 + 16ll) & 256ll) == 0ll)) == 0ll ) goto label$99;
	{
		ERRREPORT( 219ll, 0ll, (uint8*)0ull );
	}
	label$99:;
	label$97:;
	*($13FB_SYMBATTRIB*)((uint8*)PROTO$1 + 8ll) = *(int64*)((uint8*)PROTO$1 + 8ll) | ATTRIB$1;
	*($13FB_PROCATTRIB*)((uint8*)PROTO$1 + 16ll) = *(int64*)((uint8*)PROTO$1 + 16ll) | PATTRIB$1;
	label$88:;
}

static int64 HCHECKIDTOKEN( int64 HAS_PARENT$1 )
{
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$100:;
	fb$result$1 = 0ll;
	{
		uint64 TMP$100$2;
		int64 vr$1 = LEXGETCLASS( 0ll );
		TMP$100$2 = (uint64)vr$1;
		goto label$103;
		label$104:;
		{
			if( (*(int64*)((uint8*)&ENV$ + 1424ll) & 524288ll) == 0ll ) goto label$106;
			{
				if( *(struct $8FBSYMBOL**)((uint8*)&SYMB$ + 197024ll) == (struct $8FBSYMBOL*)((uint8*)&SYMB$ + 196704ll) ) goto label$108;
				{
					if( *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2096ll) <= 0ll ) goto label$110;
					{
						ERRREPORT( 90ll, 0ll, (uint8*)0ull );
					}
					label$110:;
					label$109:;
				}
				label$108:;
				label$107:;
			}
			label$106:;
			label$105:;
		}
		goto label$102;
		label$111:;
		{
			if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$113;
			{
				if( (~HAS_PARENT$1 | (int64)-(*(uint64*)((uint8*)&PARSER$ + 200ll) > 0ull)) == 0ll ) goto label$115;
				{
					ERRREPORT( 4ll, 0ll, (uint8*)0ull );
					goto label$101;
				}
				label$115:;
				label$114:;
			}
			label$113:;
			label$112:;
		}
		goto label$102;
		label$116:;
		{
			if( *(int64*)((uint8*)&ENV$ + 272ll) == 3ll ) goto label$118;
			{
				ERRREPORT( 4ll, 0ll, (uint8*)0ull );
				goto label$101;
			}
			label$118:;
			label$117:;
		}
		goto label$102;
		label$119:;
		{
			ERRREPORT( 14ll, 0ll, (uint8*)0ull );
			goto label$101;
		}
		goto label$102;
		label$103:;
		static const void* tmp$142[6ll] = {
			&&label$104,
			&&label$116,
			&&label$111,
			&&label$119,
			&&label$119,
			&&label$116,
		};
		if( TMP$100$2 > 5ull ) goto label$119;
		goto *tmp$142[TMP$100$2 - 0ull];
		label$102:;
	}
	fb$result$1 = -1ll;
	label$101:;
	return fb$result$1;
}

static struct $8FBSYMBOL* HGETID( struct $8FBSYMBOL* PARENT$1, uint8* ID$1, int64* DTYPE$1, int64 IS_SUB$1 )
{
	struct $8FBSYMBOL* fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$120:;
	struct $10FBSYMCHAIN* CHAIN_$1;
	struct $8FBSYMBOL* SYM$1;
	fb$result$1 = (struct $8FBSYMBOL*)0ull;
	if( PARENT$1 != (struct $8FBSYMBOL*)0ull ) goto label$123;
	{
		CHAIN_$1 = *(struct $10FBSYMCHAIN**)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2088ll);
	}
	goto label$122;
	label$123:;
	{
		uint8* vr$3 = LEXGETTEXT(  );
		struct $10FBSYMCHAIN* vr$4 = SYMBLOOKUPAT( PARENT$1, (uint8*)vr$3, 0ll, 0ll );
		CHAIN_$1 = vr$4;
	}
	label$122:;
	if( CHAIN_$1 == (struct $10FBSYMCHAIN*)0ull ) goto label$125;
	{
		struct $8FBSYMBOL* vr$5 = SYMBFINDBYCLASS( CHAIN_$1, 3ll );
		SYM$1 = vr$5;
	}
	goto label$124;
	label$125:;
	{
		SYM$1 = (struct $8FBSYMBOL*)0ull;
	}
	label$124:;
	int64 vr$7 = HCHECKIDTOKEN( (int64)-(PARENT$1 != (struct $8FBSYMBOL*)0ull) );
	if( vr$7 != 0ll ) goto label$127;
	{
		uint8* vr$8 = SYMBUNIQUELABEL(  );
		fb_StrAssign( (void*)ID$1, 0ll, (void*)vr$8, 0ll, 0 );
		*DTYPE$1 = 2147483648ll;
		HSKIPUNTIL( 40ll, 0ll, 0ll, 0ll );
		goto label$121;
	}
	label$127:;
	label$126:;
	uint8* vr$10 = LEXGETTEXT(  );
	fb_StrAssign( (void*)ID$1, 0ll, (void*)vr$10, 0ll, 0 );
	*DTYPE$1 = *(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll);
	if( IS_SUB$1 == 0ll ) goto label$129;
	{
		if( *DTYPE$1 == 2147483648ll ) goto label$131;
		{
			ERRREPORT( 25ll, 0ll, (uint8*)0ull );
			*DTYPE$1 = 2147483648ll;
			*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 16ll) = 2147483648ll;
			*(int64*)((uint8*)*(struct $7FBTOKEN**)((uint8*)*(struct $9LEX_TKCTX**)((uint8*)&LEX$ + 426768ll) + 8520ll) + 2104ll) = 0ll;
		}
		label$131:;
		label$130:;
	}
	label$129:;
	label$128:;
	LEXSKIPTOKEN( 4096ll );
	fb$result$1 = SYM$1;
	label$121:;
	return fb$result$1;
}

static void CNAKEDATTRIBUTE( $13FB_PROCATTRIB* PATTRIB$1 )
{
	label$208:;
	uint8* vr$0 = LEXGETTEXT(  );
	FBSTRING* vr$1 = fb_StrAllocTempDescZ( (uint8*)vr$0 );
	FBSTRING* vr$2 = fb_StrUcase2( (FBSTRING*)vr$1, 0 );
	int32 vr$3 = fb_StrCompare( (void*)vr$2, -1ll, (void*)"NAKED", 6ll );
	if( (int64)vr$3 != 0ll ) goto label$211;
	{
		LEXSKIPTOKEN( 2048ll );
		*PATTRIB$1 = *(int64*)PATTRIB$1 | 128ll;
	}
	label$211:;
	label$210:;
	label$209:;
}

static void COVERRIDEATTRIBUTE( struct $8FBSYMBOL* PROC$1 )
{
	label$212:;
	SYMBPROCCHECKOVERRIDDEN( PROC$1, 0ll );
	int64 vr$0 = LEXGETTOKEN( 0ll );
	if( vr$0 != 257ll ) goto label$215;
	{
		goto label$213;
	}
	label$215:;
	label$214:;
	uint8* vr$1 = LEXGETTEXT(  );
	FBSTRING* vr$2 = fb_StrAllocTempDescZ( (uint8*)vr$1 );
	FBSTRING* vr$3 = fb_StrUcase2( (FBSTRING*)vr$2, 0 );
	int32 vr$4 = fb_StrCompare( (void*)vr$3, -1ll, (void*)"OVERRIDE", 9ll );
	if( (int64)vr$4 != 0ll ) goto label$217;
	{
		struct $8FBSYMBOL* vr$6 = SYMBPROCGETOVERRIDDEN( PROC$1 );
		if( vr$6 != (struct $8FBSYMBOL*)0ull ) goto label$219;
		{
			ERRREPORT( 223ll, 0ll, (uint8*)0ull );
		}
		label$219:;
		label$218:;
		LEXSKIPTOKEN( 2048ll );
	}
	label$217:;
	label$216:;
	label$213:;
}

static void HCHECKATTRIB( int64* ATTRIB$1, int64 ATTR$1, int64 ERRMSG$1 )
{
	label$226:;
	if( (*ATTRIB$1 & ATTR$1) == 0ll ) goto label$229;
	{
		ERRREPORT( ERRMSG$1, -1ll, (uint8*)0ull );
		*ATTRIB$1 = *ATTRIB$1 & ~ATTR$1;
	}
	label$229:;
	label$228:;
	label$227:;
}

static int64 HCHECKOPOVLPARAMS( struct $8FBSYMBOL* PARENT$1, int64 OP$1, struct $8FBSYMBOL* PROC$1 )
{
	int64 TMP$117$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$230:;
	int64 FOUND_MISMATCH$1;
	int64 IS_METHOD$1;
	IS_METHOD$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 16ll) & 2ll) != 0ll);
	fb$result$1 = 0ll;
	int64 MIN_PARAMS$1;
	int64 MAX_PARAMS$1;
	{
		uint64 TMP$114$2;
		TMP$114$2 = *(uint64*)((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll)));
		goto label$233;
		label$234:;
		{
			int64 TMP$115$3;
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$235;
			TMP$115$3 = 0ll;
			goto label$778;
			label$235:;
			TMP$115$3 = 1ll;
			label$778:;
			MIN_PARAMS$1 = TMP$115$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$236:;
		{
			MIN_PARAMS$1 = 0ll;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$237:;
		{
			MIN_PARAMS$1 = 1ll;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$238:;
		{
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$240;
			{
				MIN_PARAMS$1 = 0ll;
				MAX_PARAMS$1 = 1ll;
				if( OP$1 != 26ll ) goto label$242;
				{
					MIN_PARAMS$1 = MIN_PARAMS$1 + 1ll;
					MAX_PARAMS$1 = MAX_PARAMS$1 + 1ll;
				}
				label$242:;
				label$241:;
			}
			goto label$239;
			label$240:;
			{
				MIN_PARAMS$1 = 2ll;
				MAX_PARAMS$1 = MIN_PARAMS$1;
			}
			label$239:;
		}
		goto label$232;
		label$243:;
		{
			int64 TMP$116$3;
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$244;
			TMP$116$3 = 1ll;
			goto label$779;
			label$244:;
			TMP$116$3 = 2ll;
			label$779:;
			MIN_PARAMS$1 = TMP$116$3;
			MAX_PARAMS$1 = MIN_PARAMS$1;
		}
		goto label$232;
		label$233:;
		static const void* tmp$143[13ll] = {
			&&label$237,
			&&label$243,
			&&label$234,
			&&label$236,
			&&label$234,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$243,
			&&label$237,
			&&label$243,
			&&label$238,
		};
		if( (TMP$114$2 - 2ull) > 12ull ) goto label$243;
		goto *tmp$143[TMP$114$2 - 2ull];
		label$232:;
	}
	int64 PARAMS$1;
	PARAMS$1 = (int64)*(int16*)((uint8*)PROC$1 + 120ll);
	int64 REAL_PARAMS$1;
	if( IS_METHOD$1 == 0ll ) goto label$245;
	TMP$117$1 = 1ll;
	goto label$780;
	label$245:;
	TMP$117$1 = 0ll;
	label$780:;
	REAL_PARAMS$1 = PARAMS$1 - TMP$117$1;
	if( ((int64)-(REAL_PARAMS$1 < MIN_PARAMS$1) | (int64)-(REAL_PARAMS$1 > MAX_PARAMS$1)) == 0ll ) goto label$247;
	{
		ERRREPORT( 1ll, -1ll, (uint8*)0ull );
		goto label$231;
	}
	label$247:;
	label$246:;
	if( PARAMS$1 <= 0ll ) goto label$249;
	{
		struct $8FBSYMBOL* PARAM$2;
		PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
		if( *(int64*)((uint8*)PARAM$2 + 96ll) != 4ll ) goto label$251;
		{
			HPARAMERROR( PROC$1, 1ll, 143ll );
			goto label$231;
		}
		label$251:;
		label$250:;
		if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$253;
		{
			HPARAMERROR( PROC$1, 1ll, 145ll );
			goto label$231;
		}
		label$253:;
		label$252:;
		{
			uint64 TMP$118$3;
			TMP$118$3 = *(uint64*)((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll)));
			goto label$255;
			label$256:;
			{
				{
					int64 TMP$119$5;
					TMP$119$5 = *(int64*)((uint8*)PARAM$2 + 56ll) & 511ll;
					if( TMP$119$5 == 20ll ) goto label$259;
					label$260:;
					if( TMP$119$5 != 10ll ) goto label$258;
					label$259:;
					{
					}
					goto label$257;
					label$258:;
					{
						HPARAMERROR( PROC$1, 1ll, 137ll );
						goto label$231;
					}
					label$261:;
					label$257:;
				}
			}
			goto label$254;
			label$262:;
			{
				if( PARAMS$1 <= 1ll ) goto label$264;
				{
					struct $8FBSYMBOL* NXTPARAM$5;
					NXTPARAM$5 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
					if( *(int64*)((uint8*)NXTPARAM$5 + 96ll) != 4ll ) goto label$266;
					{
						HPARAMERROR( PROC$1, 2ll, 143ll );
						goto label$231;
					}
					label$266:;
					label$265:;
					if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$5 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$268;
					{
						HPARAMERROR( PROC$1, 2ll, 145ll );
						goto label$231;
					}
					label$268:;
					label$267:;
					{
						int64 TMP$120$6;
						TMP$120$6 = *(int64*)((uint8*)PARAM$2 + 56ll) & 511ll;
						if( TMP$120$6 == 20ll ) goto label$271;
						label$272:;
						if( TMP$120$6 != 10ll ) goto label$270;
						label$271:;
						{
						}
						goto label$269;
						label$270:;
						{
							{
								int64 TMP$121$8;
								TMP$121$8 = *(int64*)((uint8*)NXTPARAM$5 + 56ll) & 511ll;
								if( TMP$121$8 == 20ll ) goto label$276;
								label$277:;
								if( TMP$121$8 != 10ll ) goto label$275;
								label$276:;
								{
								}
								goto label$274;
								label$275:;
								{
									HPARAMERROR( PROC$1, 2ll, 137ll );
									goto label$231;
								}
								label$278:;
								label$274:;
							}
						}
						label$273:;
						label$269:;
					}
				}
				label$264:;
				label$263:;
			}
			goto label$254;
			label$279:;
			{
				{
					if( OP$1 == 18ll ) goto label$282;
					label$283:;
					if( OP$1 != 19ll ) goto label$281;
					label$282:;
					{
						int64 TMP$122$6;
						if( ((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$284;
						TMP$122$6 = 24ll;
						goto label$781;
						label$284:;
						TMP$122$6 = (*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 31ll;
						label$781:;
						if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$122$6 * 56ll)) != 0ll ) goto label$286;
						{
							int64 IS_INTEGER$7;
							IS_INTEGER$7 = -1ll;
							if( ((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$288;
							{
								IS_INTEGER$7 = 0ll;
							}
							label$288:;
							label$287:;
							{
								int64 TMP$123$8;
								TMP$123$8 = *(int64*)((uint8*)PARAM$2 + 56ll) & 511ll;
								if( TMP$123$8 == 4ll ) goto label$291;
								label$292:;
								if( TMP$123$8 != 7ll ) goto label$290;
								label$291:;
								{
									IS_INTEGER$7 = 0ll;
								}
								label$290:;
								label$289:;
							}
							if( IS_INTEGER$7 != 0ll ) goto label$294;
							{
								HPARAMERROR( PROC$1, 1ll, 235ll );
								goto label$231;
							}
							label$294:;
							label$293:;
						}
						goto label$285;
						label$286:;
						{
							HPARAMERROR( PROC$1, 1ll, 235ll );
							goto label$231;
						}
						label$285:;
					}
					goto label$280;
					label$281:;
					{
						int64 TMP$124$6;
						if( ((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$296;
						TMP$124$6 = 24ll;
						goto label$782;
						label$296:;
						TMP$124$6 = (*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 31ll;
						label$782:;
						if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$124$6 * 56ll)) != 0ll ) goto label$298;
						{
							if( ((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) & 480ll) != 0ll ) goto label$300;
							{
								HPARAMERROR( PROC$1, 1ll, 236ll );
								goto label$231;
							}
							label$300:;
							label$299:;
						}
						goto label$297;
						label$298:;
						{
							HPARAMERROR( PROC$1, 1ll, 236ll );
							goto label$231;
						}
						label$297:;
					}
					label$295:;
					label$280:;
				}
			}
			goto label$254;
			label$301:;
			{
				{
					uint64 TMP$125$5;
					TMP$125$5 = (uint64)OP$1;
					goto label$303;
					label$304:;
					{
						if( PARAMS$1 <= 1ll ) goto label$306;
						{
							struct $8FBSYMBOL* NXTPARAM$7;
							NXTPARAM$7 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
							if( *(int64*)((uint8*)NXTPARAM$7 + 96ll) != 4ll ) goto label$308;
							{
								HPARAMERROR( PROC$1, 2ll, 143ll );
								goto label$231;
							}
							label$308:;
							label$307:;
							if( *(struct $7ASTNODE**)((uint8*)NXTPARAM$7 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$310;
							{
								HPARAMERROR( PROC$1, 2ll, 145ll );
								goto label$231;
							}
							label$310:;
							label$309:;
							{
								int64 TMP$126$8;
								TMP$126$8 = *(int64*)((uint8*)PARAM$2 + 56ll) & 511ll;
								if( TMP$126$8 == 20ll ) goto label$313;
								label$314:;
								if( TMP$126$8 != 10ll ) goto label$312;
								label$313:;
								{
								}
								goto label$311;
								label$312:;
								{
									{
										int64 TMP$127$10;
										TMP$127$10 = *(int64*)((uint8*)NXTPARAM$7 + 56ll) & 511ll;
										if( TMP$127$10 == 20ll ) goto label$318;
										label$319:;
										if( TMP$127$10 != 10ll ) goto label$317;
										label$318:;
										{
										}
										goto label$316;
										label$317:;
										{
											HPARAMERROR( PROC$1, 2ll, 137ll );
											goto label$231;
										}
										label$320:;
										label$316:;
									}
								}
								label$315:;
								label$311:;
							}
						}
						label$306:;
						label$305:;
					}
					goto label$302;
					label$321:;
					{
						if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$323;
						{
							if( PARAMS$1 <= 1ll ) goto label$325;
							{
								if( IS_METHOD$1 == 0ll ) goto label$327;
								{
									PARAM$2 = *(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 312ll);
								}
								label$327:;
								label$326:;
								if( ((int64)-(PARAM$2 == (struct $8FBSYMBOL*)0ull) | (int64)-(PARENT$1 == (struct $8FBSYMBOL*)0ull)) == 0ll ) goto label$329;
								{
									HPARAMERROR( PROC$1, 1ll, 142ll );
									goto label$231;
								}
								label$329:;
								label$328:;
								if( *(int64*)((uint8*)PARAM$2 + 96ll) != 4ll ) goto label$331;
								{
									HPARAMERROR( PROC$1, 1ll, 143ll );
									goto label$231;
								}
								label$331:;
								label$330:;
								if( *(struct $7ASTNODE**)((uint8*)PARAM$2 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$333;
								{
									HPARAMERROR( PROC$1, 1ll, 145ll );
									goto label$231;
								}
								label$333:;
								label$332:;
								if( ((int64)-((*(int64*)((uint8*)PARAM$2 + 56ll) & 511ll) != (*(int64*)((uint8*)PARENT$1 + 56ll) & 511ll)) | (int64)-(*(struct $8FBSYMBOL**)((uint8*)PARAM$2 + 64ll) != PARENT$1)) == 0ll ) goto label$335;
								{
									HPARAMERROR( PROC$1, 1ll, 142ll );
									goto label$231;
								}
								label$335:;
								label$334:;
							}
							label$325:;
							label$324:;
						}
						label$323:;
						label$322:;
					}
					goto label$302;
					label$336:;
					{
					}
					goto label$302;
					label$303:;
					static const void* tmp$144[27ll] = {
						&&label$321,
						&&label$321,
						&&label$321,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$336,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
						&&label$304,
					};
					if( (TMP$125$5 - 24ull) > 26ull ) goto label$336;
					goto *tmp$144[TMP$125$5 - 24ull];
					label$302:;
				}
			}
			goto label$254;
			label$255:;
			static const void* tmp$145[12ll] = {
				&&label$262,
				&&label$256,
				&&label$256,
				&&label$256,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$254,
				&&label$279,
				&&label$254,
				&&label$301,
			};
			if( (TMP$118$3 - 3ull) > 11ull ) goto label$254;
			goto *tmp$145[TMP$118$3 - 3ull];
			label$254:;
		}
	}
	label$249:;
	label$248:;
	FOUND_MISMATCH$1 = 0ll;
	{
		$13AST_NODECLASS TMP$128$2;
		TMP$128$2 = *($13AST_NODECLASS*)((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll)));
		if( TMP$128$2 != 5ll ) goto label$338;
		label$339:;
		{
			if( *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 64ll) != PARENT$1 ) goto label$341;
			{
				ERRREPORT( 140ll, -1ll, (uint8*)0ull );
				goto label$231;
			}
			label$341:;
			label$340:;
			FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
		}
		goto label$337;
		label$338:;
		if( TMP$128$2 != 4ll ) goto label$342;
		label$343:;
		{
			FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
		}
		goto label$337;
		label$342:;
		if( TMP$128$2 != 2ll ) goto label$344;
		label$345:;
		{
			FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll);
		}
		goto label$337;
		label$344:;
		if( TMP$128$2 != 6ll ) goto label$346;
		label$347:;
		{
			{
				if( OP$1 != 22ll ) goto label$349;
				label$350:;
				{
					FOUND_MISMATCH$1 = (int64)-(((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) & 480ll) == 0ll);
				}
				goto label$348;
				label$349:;
				if( OP$1 != 77ll ) goto label$351;
				label$352:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 20ll);
				}
				goto label$348;
				label$351:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
				}
				label$353:;
				label$348:;
			}
		}
		goto label$337;
		label$346:;
		if( TMP$128$2 != 12ll ) goto label$354;
		label$355:;
		{
			{
				if( OP$1 == 18ll ) goto label$358;
				label$359:;
				if( OP$1 != 19ll ) goto label$357;
				label$358:;
				{
					FOUND_MISMATCH$1 = (int64)-(((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) & 480ll) == 0ll);
				}
				goto label$356;
				label$357:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll);
				}
				label$360:;
				label$356:;
			}
		}
		goto label$337;
		label$354:;
		if( TMP$128$2 != 3ll ) goto label$361;
		label$362:;
		{
			{
				uint64 TMP$129$4;
				TMP$129$4 = (uint64)OP$1;
				goto label$364;
				label$365:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 8ll);
				}
				goto label$363;
				label$366:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
				}
				goto label$363;
				label$367:;
				{
					if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$369;
					{
						FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll);
					}
					goto label$368;
					label$369:;
					{
						FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
					}
					label$368:;
				}
				goto label$363;
				label$364:;
				static const void* tmp$146[28ll] = {
					&&label$366,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$367,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
					&&label$365,
				};
				if( (TMP$129$4 - 23ull) > 27ull ) goto label$367;
				goto *tmp$146[TMP$129$4 - 23ull];
				label$363:;
			}
		}
		goto label$337;
		label$361:;
		if( TMP$128$2 != 14ll ) goto label$370;
		label$371:;
		{
			if( (*(int64*)(((int64)(struct $10AST_OPINFO*)AST_OPTB$ + (OP$1 << (5ll & 63ll))) + 8ll) & 1ll) == 0ll ) goto label$373;
			{
				if( OP$1 != 26ll ) goto label$375;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 8ll);
				}
				goto label$374;
				label$375:;
				{
					FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) != 0ll);
				}
				label$374:;
			}
			goto label$372;
			label$373:;
			{
				FOUND_MISMATCH$1 = (int64)-((*(int64*)((uint8*)PROC$1 + 56ll) & 511ll) == 0ll);
			}
			label$372:;
		}
		label$370:;
		label$337:;
	}
	if( FOUND_MISMATCH$1 == 0ll ) goto label$377;
	{
		ERRREPORT( 141ll, -1ll, (uint8*)0ull );
		goto label$231;
	}
	label$377:;
	label$376:;
	fb$result$1 = -1ll;
	label$231:;
	return fb$result$1;
}

static int64 HCHECKISSELFCLONEBYVAL( struct $8FBSYMBOL* PARENT$1, struct $8FBSYMBOL* PROC$1, int64 OPTIONS$1 )
{
	int64 TMP$130$1;
	int64 fb$result$1;
	__builtin_memset( &fb$result$1, 0, 8ll );
	label$378:;
	fb$result$1 = 0ll;
	struct $8FBSYMBOL* PARAM$1;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	if( (OPTIONS$1 & 1ll) == 0ll ) goto label$381;
	{
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	label$381:;
	label$380:;
	if( PARAM$1 != (struct $8FBSYMBOL*)0ull ) goto label$383;
	{
		goto label$379;
	}
	label$383:;
	label$382:;
	if( (*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) == 20ll ) goto label$385;
	{
		goto label$379;
	}
	label$385:;
	label$384:;
	if( *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 64ll) == PARENT$1 ) goto label$387;
	{
		goto label$379;
	}
	label$387:;
	label$386:;
	if( *(int64*)((uint8*)PARAM$1 + 96ll) == 1ll ) goto label$389;
	{
		goto label$379;
	}
	label$389:;
	label$388:;
	if( ((*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$390;
	TMP$130$1 = 24ll;
	goto label$783;
	label$390:;
	TMP$130$1 = (*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) & 31ll;
	label$783:;
	if( *(int64*)((int64)(struct $13SYMB_DATATYPE*)SYMB_DTYPETB$ + (TMP$130$1 * 56ll)) != 0ll ) goto label$392;
	{
		if( ((*(int64*)((uint8*)PARAM$1 + 56ll) & 511ll) & 480ll) == 0ll ) goto label$394;
		{
			goto label$379;
		}
		label$394:;
		label$393:;
	}
	label$392:;
	label$391:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	label$395:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$396;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) != (struct $7ASTNODE*)0ull ) goto label$398;
		{
			goto label$379;
		}
		label$398:;
		label$397:;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$395;
	label$396:;
	fb$result$1 = -1ll;
	label$379:;
	return fb$result$1;
}

static void HCHECKPROPPARAMS( struct $8FBSYMBOL* PROC$1, int64 IS_GET$1 )
{
	label$399:;
	int64 MIN_PARAMS$1;
	int64 MAX_PARAMS$1;
	int64 I$1;
	struct $8FBSYMBOL* PARAM$1;
	if( IS_GET$1 == 0ll ) goto label$402;
	{
		MIN_PARAMS$1 = 0ll;
		MAX_PARAMS$1 = 1ll;
	}
	goto label$401;
	label$402:;
	{
		MIN_PARAMS$1 = 1ll;
		MAX_PARAMS$1 = 2ll;
	}
	label$401:;
	if( ((int64)-((int64)*(int16*)((uint8*)PROC$1 + 120ll) < (MIN_PARAMS$1 + 1ll)) | (int64)-((int64)*(int16*)((uint8*)PROC$1 + 120ll) > (MAX_PARAMS$1 + 1ll))) == 0ll ) goto label$404;
	{
		$9FB_ERRMSG TMP$131$2;
		if( IS_GET$1 == 0ll ) goto label$405;
		TMP$131$2 = 190ll;
		goto label$784;
		label$405:;
		TMP$131$2 = 191ll;
		label$784:;
		ERRREPORT( TMP$131$2, -1ll, (uint8*)0ull );
	}
	label$404:;
	label$403:;
	PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PROC$1 + 136ll);
	I$1 = 0ll;
	label$406:;
	if( PARAM$1 == (struct $8FBSYMBOL*)0ull ) goto label$407;
	{
		if( *(struct $7ASTNODE**)((uint8*)PARAM$1 + 112ll) == (struct $7ASTNODE*)0ull ) goto label$409;
		{
			HPARAMERROR( PROC$1, I$1 + 1ll, 145ll );
		}
		label$409:;
		label$408:;
		I$1 = I$1 + 1ll;
		PARAM$1 = *(struct $8FBSYMBOL**)((uint8*)PARAM$1 + 312ll);
	}
	goto label$406;
	label$407:;
	label$400:;
}

static void HSETUDTPROPERTYFLAGS( struct $8FBSYMBOL* PARENT$1, int64 IS_INDEXED$1, int64 IS_GET$1 )
{
	label$410:;
	if( IS_INDEXED$1 == 0ll ) goto label$413;
	{
		if( IS_GET$1 != 0ll ) goto label$415;
		{
			*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 1024ll);
		}
		goto label$414;
		label$415:;
		{
			*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 512ll);
		}
		label$414:;
	}
	goto label$412;
	label$413:;
	{
		if( IS_GET$1 != 0ll ) goto label$417;
		{
			*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 256ll);
		}
		goto label$416;
		label$417:;
		{
			*(int32*)((uint8*)PARENT$1 + 208ll) = (int32)((int64)*(int32*)((uint8*)PARENT$1 + 208ll) | 128ll);
		}
		label$416:;
	}
	label$412:;
	label$411:;
}
